--@Autor(es): JIMENEZ GARCIA RODRIGO GAUDENCIO
--            ROMERO PEDRAZA FRANCESCA MELANIA
--            SANTIAGO PEREZ DANIELA
--            CUELLAR URIBE FERNANDO.
--@Fecha creacion: 13/12/2022.
--@Descripcion: CREACIÓN DE TRIGGER COMO BITÁCORA.

--Trigger que nos ayuda a guardar la informacion de un servicio 
--no importa si es insertado, eliminado o actualizado.

CREATE TABLE bitacoraServicios(
    fechaHoy date not null,
    usuario varchar(20),
    accion varchar (1),
    servicio_idA  number (4)   ,
    herramienta_idA  number(2)   ,
    producto_idA      number(2)  ,
    fecha_IniSerA     date       ,
    fecha_FinSerA     date        ,
    precioA           number(8,2)  ,
    tipo_lugarA       varchar(12)  ,
    tipo_plagaA      varchar(10)  ,
    empleadoA number(3,0),
    servicio_idD  number (4) ,
    herramienta_idD  number(2) ,
    producto_idD     number(2) ,
    fecha_IniSerD     date  ,
    fecha_FinSerD     date  ,
    precioD           number(8,2) ,
    tipo_lugarD       varchar(12) ,
    tipo_plagaD      varchar(10)  ,
    empleadoD number(3,0)
);

SET SERVEROUTPUT ON;
create or replace trigger entrega_servicio
before insert or update or delete on realiza_servicio
for each row
declare
accion CHAR(1);
BEGIN
    IF INSERTING THEN accion:='I';
    ELSIF UPDATING THEN accion:='U';
    ELSE 
        accion :='D';
    END IF;
INSERT INTO bitacoraServicios VALUES(SYSDATE, USER, accion, :OLD.servicio_id,
:OLD.herramienta_id,:OLD.producto_id, :OLD.fecha_IniSer, :OLD.fecha_FinSer, 
:OLD.precio, :OLD.tipo_lugar, :OLD.tipo_plaga, :old.empleado_id, :NEW.servicio_id,
:NEW.herramienta_id,:NEW.producto_id, :NEW.fecha_IniSer, :NEW.fecha_FinSer, 
:NEW.precio, :NEW.tipo_lugar, :NEW.tipo_plaga, :NEW.empleado_id);

dbms_OUTPUT.PUT_LINE('TRANSACCION REALIZADA: '|| SYSDATE);
END;
/
