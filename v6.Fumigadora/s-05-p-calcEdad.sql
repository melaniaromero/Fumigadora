--@Autor(es): JIMENEZ GARCIA RODRIGO GAUDENCIO
--            ROMERO PEDRAZA FRANCESCA MELANIA
--            SANTIAGO PEREZ DANIELA
--            CUELLAR URIBE FERNANDO.
--@Fecha creacion: 13/12/2022.
--@Descripcion: CREACION DE TRIGGER TIPO ROW LEVEL
--PROCEDIMIENTO CON UN CURSOR IMPLICITO Y UNA FUNCION 
--QUE CALCULA LA EDAD DE DETERMINADO EMPLEADO, 
--EL PROCEDIMIENTO MANDA ESTA EDAD A LA TABLA edadE


--CREAMOS TABLA
CREATE TABLE edadE(
empleadoE_id number(3,0) not null,
edades number(2,0) not null
);
--FUNCION
create or replace function anios(vempleado_id in NUMBER)
RETURN NUMBER
IS
vFechaNac empleado.fechaNac%TYPE ;
vanios NUMBER;
BEGIN 
    SELECT fechaNac INTO vFechaNac FROM empleado 
    WHERE empleado_id =vempleado_id;
    vanios:= trunc((sysdate - TO_DATE(vfechanac))/365.25);
RETURN (vanios);
end;
/
--PROCEDIMIENTO
SET SERVEROUTPUT ON;
CREATE OR REPLACE procedure edades(vempleado_id edadE.empleadoE_id%type)
as
 vanios number;
 vempleado_i edadE.empleadoE_id%type;
 v_fechaNac empleado.fechanac%type;
BEGIN
vanios := anios(vempleado_id);
 SELECT vempleado_id INTO vempleado_i FROM edadE
 WHERE empleadoE_id=vempleado_id;
   IF (SQL%FOUND) THEN
        dbms_output.put_line('Ya se ha insertado al empleado: '||vempleado_id);
   END IF;
   EXCEPTION 
   WHEN NO_DATA_FOUND THEN
       dbms_output.put_line('Ha sido insertada correctamente la edad del empleado '||vempleado_id);
       INSERT INTO edadE(empleadoE_id , edades ) VALUES (vempleado_id, vanios);
       COMMIT;
        dbms_output.put_line('INSERTADO');
END;
/
show errors;
commit;

--CONFIGURACIONES PARA SQLPLUS
set line 180