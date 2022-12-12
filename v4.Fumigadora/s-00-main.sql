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
Prompt Creando usuarios
@@s-01-usuarios.sql
Prompt Creando tablas
@@s-02-entidades.sql
Prompt Creando secuencias
@@s-03-secuencias.sql
Prompt Carga inicial
@@s-04-carga-inicial.sql
