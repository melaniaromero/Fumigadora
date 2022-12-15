--@Autor(es): JIMENEZ GARCIA RODRIGO GAUDENCIO
--            ROMERO PEDRAZA FRANCESCA MELANIA
--            SANTIAGO PEREZ DANIELA
--            CUELLAR URIBE FERNANDO.
--@Fecha creación: 29/11/2022.
--@Descripción: SCRIPT-USUARIOS-ROLES.

-------------------------------------------------------------------------------------------------------------
----------------------------------------------CREANDO USUARIO------------------------------------------------
-------------------------------------------------------------------------------------------------------------

Prompt crear usuario invitado
--drop user jrsc_proy_invitado cascade;
create user jrsc_proy_invitado identified by qwerty quota unlimited on users;

Prompt crear usuario invitado
--drop user jrsc_proy_admin cascade;
create user jrsc_proy_admin identified by qwerty quota unlimited on users;

-------------------------------------------------------------------------------------------------------------
-----------------------------------------------CREANDO ROLES-------------------------------------------------
-------------------------------------------------------------------------------------------------------------

Prompt creando rol_admin 

--drop role rol_admin;
create role rol_admin;
grant create session,create table,create sequence ,create synonym, create public synonym ,create view,create trigger, create procedure to rol_admin;
 
Prompt creando rol_invitado 

--drop role rol_invitado;
create role rol_invitado;
grant create session, create synonym to rol_invitado;
-------------------------------------------------------------------------------------------------------------
----------------------------------------------ASIGNANDO ROLES------------------------------------------------
-------------------------------------------------------------------------------------------------------------

grant rol_invitado to jrsc_proy_invitado;
grant read, write on directory tmp_dir to jrsc_proy_invitado;
grant rol_admin to jrsc_proy_admin;
grant read, write on directory tmp_dir to jrsc_proy_admin;

prompt creando directorio tmp_dir
create or replace directory tmp_dir as '/tmp/bd-unam/proy-final-csv';

prompt creando el directorio /tmp/bd-unam en caso de no existir
!mkdir -p /tmp/bases
