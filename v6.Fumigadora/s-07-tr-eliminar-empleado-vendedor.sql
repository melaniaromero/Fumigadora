--@Autor(es): JIMENEZ GARCIA RODRIGO GAUDENCIO
--            ROMERO PEDRAZA FRANCESCA MELANIA
--            SANTIAGO PEREZ DANIELA
--            CUELLAR URIBE FERNANDO.
--@Fecha creacion: 13/12/2022.
--@Descripcion: CREACION DE TRIGGER TIPO ROW LEVEL

--SE DESEA ALMACENAR LOS DATOS DE LOS VENDEDORES QUE SE DEN DE BAJA
--ASI COMO ALMACENAR LA FECHA EN QUE SE REALIZO Y EL USUARIO QUE LO HIZO
--NO DEBE MOSTRARSE NINGUN MENSAJE DEL DISPARO EXITOSO YA QUE ESTA TABLA 
--FUNCIONARA COMO AUDITORIA

create table VENDEDOR_BAJA(
    empleado_id         number(3,0),
    nombre              varchar2(40),
    ap_paterno          varchar2(30),
    ap_materno          varchar2(30),
    salario_mensual     number(7,2),
    usuario_da_baja     varchar2(30),
    fecha_baja          date
);

CREATE OR REPLACE TRIGGER tr_eliminar_empleado_vendedor
AFTER DELETE ON vendedor
FOR EACH ROW
DECLARE
    v_empleado_id empleado.empleado_id%type;
    v_nombre empleado.nombrepie%type;
    v_ap_paterno empleado.ap_paternoe%type;
    v_ap_materno empleado.ap_maternoe%type;
    v_salario_mensual empleado.salariomensual%type;
BEGIN
    select e.empleado_id, e.nombrepie,e.ap_paternoe, e.ap_maternoe, e.salariomensual
    into v_empleado_id, v_nombre, v_ap_paterno, v_ap_materno, v_salario_mensual
    from empleado e
    where e.empleado_id = :old.empleado_id;
    INSERT INTO vendedor_baja VALUES (v_empleado_id,v_nombre,v_ap_paterno, v_ap_materno, v_salario_mensual,USER, SYSDATE);
END tr_eliminar_empleado;
/
show errors;
commit;


--CONFIGURACIONES PARA SQLPLUS
set line 200
colum nombre      format a15
colum ap_paterno  format a10
colum ap_materno  format a10
colum usuario_da_baja format a15
colum fecha_baja      format a10


