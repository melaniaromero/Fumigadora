--@Autor(es): JIMENEZ GARCIA RODRIGO GAUDENCIO
--            ROMERO PEDRAZA FRANCESCA MELANIA
--            SANTIAGO PEREZ DANIELA
--            CUELLAR URIBE FERNANDO.
--@Fecha creacion: 13/12/2022.
--@Descripcion: CREACION DE PROCEDIMIENTO QUE CALCULA EL AUMENTO DE SALARIO DE UN EMPLEADO
create table INC_SUELDO(
    empleado_id number(2,0),
    salario_mensual_ant number(7,2),
    salario_mensual_act number(7,2),
    usuario_cambio      varchar(20),
    fecha_cambio        date
);

set serveroutput on
CREATE OR REPLACE PROCEDURE p_inc_sueldo(
  vid_empleado in number,
  vnombre_empleado in varchar2
  )
AS
 vsalario_min empleado.salariomensual%type;
 vsalariomensual empleado.salariomensual%type;
 v_nombre empleado.nombrepie%type;
 v_id empleado.empleado_id%type;
BEGIN
 SELECT empleado_id,salariomensual, nombrepie
 INTO v_id, vsalario_min, v_nombre
 FROM empleado 
 WHERE empleado_id=vid_empleado;
   IF (v_nombre = vnombre_empleado) THEN
      vsalariomensual:=vsalario_min*1.05;
      UPDATE empleado SET salariomensual=vsalariomensual
      where empleado_id=vid_empleado;
      INSERT INTO inc_sueldo VALUES (vid_empleado,vsalario_min,vsalariomensual,user,sysdate);
      commit;
   ELSE
     dbms_output.put_line('El empleado con el id '||vid_empleado||' de nombre '||vnombre_empleado||' ingresado no existe');
   END IF;
   EXCEPTION 
   WHEN NO_DATA_FOUND THEN
      dbms_output.put_line('El empleado con el id '||vid_empleado||' ingresado no existe');
END;
/

--exec p_inc_sueldo(1, 'Zoraida')
