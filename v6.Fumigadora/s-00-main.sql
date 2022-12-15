--@Autor(es): JIMENEZ GARCIA RODRIGO GAUDENCIO
--            ROMERO PEDRAZA FRANCESCA MELANIA
--            SANTIAGO PEREZ DANIELA
--            CUELLAR URIBE FERNANDO.
--@Fecha creación: 29/11/2022.
--@Descripción: SCRIPT-PRINCIPAL.


connect sys/system as sysdba;


-------------------------------------------------------------------------------------------------------------
----------------------------------------------ELIMINACIÓN DE USUARIOS------------------------------------------------
-------------------------------------------------------------------------------------------------------------


set serveroutput on
declare
  v_count number(1,0);
begin 
  select count(*) into v_count
  from dba_users
  where username = 'JRSC_PROY_INVITADO' OR username = 'JRSC_PROY_ADMIN';
  if v_count > 0 then
    execute immediate 'drop user JRSC_PROY_INVITADO cascade';
    execute immediate 'drop user JRSC_PROY_ADMIN cascade';
    dbms_output.put_line('Usuarios eliminados'); 
  else
    dbms_output.put_line('Los usuarios no requieren ser eliminados');
  end if;

-------------------------------------------------------------------------------------------------------------
----------------------------------------------ELIMINACIÓN DE ROLES------------------------------------------------
-------------------------------------------------------------------------------------------------------------

  select count(*) into v_count
  from dba_roles
  where role = 'ROL_INVITADO' OR role = 'ROL_ADMIN';
  if v_count > 0 then
    execute immediate 'drop role ROL_INVITADO';
    execute immediate 'drop role ROL_ADMIN';
    dbms_output.put_line('Roles eliminados'); 
  else
    dbms_output.put_line('Los roles no requieren ser eliminados');
  end if;
end;
/
set serveroutput off

-------------------------------------------------------------------------------------------------------------
----------------------------------------------INVOCACIÓN DE SCRIPTS------------------------------------------------
-------------------------------------------------------------------------------------------------------------
Prompt ---------------------------------------------Creando usuarios
@@s-01-usuarios.sql
Prompt ---------------------------------------------Creando tablas
@@s-02-entidades.sql
Prompt ---------------------------------------------Creando secuencias
@@s-03-secuencias.sql
Prompt ---------------------------------------------Carga inicial 
@@s-04-carga-inicial.sql
Prompt --------------------Procedimiento 1. Calcula la edad del empleado a partir de su nacimiento.

Prompt Para verificar su funcionamiento ejecute
Prompt (exec edades('1');) 
Prompt (select * from edadE;)
@@s-05-p-calcEdad.sql
Prompt --------------------Procedimiento 2. Calcula aumento del sueldo

Prompt Para verificar su funcionamiento ejecute
Prompt (exec p_inc_sueldo(1, 'Zoraida');) 
Prompt (select * from inc_sueldo;)
@@s-06-p-inc-sueldo.sql
Prompt --------------------Trigger 1.

Prompt Almacena los datos de los vendedores que se den de baja, no se mostrara mensaje al eliminarlos porque funciona como auditoria
Prompt Para verificar su funcionamiento ejecute
Prompt (delete from vendedor where empleado_id= '1';)
Prompt (select * from vendedor_baja;)
@@s-07-tr-eliminar-empleado-vendedor
Prompt --------------------Trigger 2. 

Prompt Almacena los datos de un servicio en una tipo bitacora, si se hace un INSERT, UPDATE O DELETE.
Prompt Para verificar su funcionamiento ejecute 
Prompt (INSERT INTO realiza_servicio(servicio_id,herramienta_id,producto_id,fecha_IniSer,fecha_FinSer,precio,tipo_lugar,tipo_plaga,empleado_id) values (servicio_seq.nextval,10,10,to_date ('11/09/2021','dd/mm/yyyy'),to_date ('12/09/2021','dd/mm/yyyy'),2000.10,'RESTAURANTE','INSECTO',26);)
Prompt (delete from realiza_servicio where servicio_id='11';)
Prompt (update realiza_servicio set tipo_lugar='BODEGA' where servicio_id='1';)
Prompt (select * from bitacoraServicios;)
@@s-08-tr-bitacora-servicios.sql
prompt --------------------Vista 1. 

Prompt El departamento de tecnicos necesita saber la informacion de los autos reparados,conocer quien lo reparo y cuando.
Prompt Para probar el funcionamiento de esta vista
Prompt (select * from INFOREPARACION;)
@@s-09-v-info-autos.sql
prompt --------------------Vista 2. 

prompt Fumicity desea brindar a sus clientes informacion especifica sobre sus servicios de fumigacion en casas.
Prompt Para probar el funcionamiento de esta vista
Prompt (select * from INFOSERVICIOCASAS;)
@@s-10-v-info-servicio-restaurantes.sql
Prompt -------------------- Consultas con constrastes de agregacion   
@@s-11-ca-agregacion.sql
Prompt -------------------- Consultas algebra relacional 
@@s-12-c-algebra.sql
Prompt -------------------- Consultas join
@@s-13-c-join.sql


