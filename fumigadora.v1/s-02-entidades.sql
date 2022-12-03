--@Autor(es): JIMENEZ GARCIA RODRIGO GAUDENCIO
--            ROMERO PEDRAZA FRANCESCA MELANIA
--            SANTIAGO PEREZ DANIELA
--            CUELLAR URIBE FERNANDO.
--@Fecha creación: 29/11/2022.
--@Descripción: CREACION TABLAS DEL CASO DE ESTUDIO 

Prompt conectando con el usuario administrador.
connect jrsc_proy_admin/qwerty;

-------------------------------------------------------------------------------------------------------------
----------------------------------------CREANDO TABLA SUCURSAL-----------------------------------------------
-------------------------------------------------------------------------------------------------------------

CREATE TABLE SUCURSAL(
    sucursal_id        number(2,0)      not null,
    calles             varchar2(30)     not null,
    colonias            varchar2(30)     not null,
    numeros            number(5,0)      not null,
    alcaldias          varchar2(20)     not null,
    cps                number(5,0)      not null,
    constraint sucursal_pk primary key (sucursal_id)
);

-------------------------------------------------------------------------------------------------------------
-------------------------------------CREANDO TABLA TELSUCURSAL-----------------------------------------------
-------------------------------------------------------------------------------------------------------------

CREATE TABLE TELSUCURSAL(
    sucursal_id         number(2,0)     not null,
    telefono            varchar2(12)    not null constraint telsucursal_telefono_uk unique,
    constraint telsucursal_pk primary key (sucursal_id,telefono),
    constraint telsucursal_sucursal_id_fk foreign key(sucursal_id)
      references sucursal(sucursal_id)
);

-------------------------------------------------------------------------------------------------------------
---------------------------------------CREANDO TABLA DEPARTAMENTO--------------------------------------------
-------------------------------------------------------------------------------------------------------------

CREATE TABLE DEPARTAMENTO(
    sucursal_id       number(2,0)    not null,
    departamento_id   number(2,0)    not null,
    tipo              varchar2(30)   not null,
    emaild            varchar2(40)  not null,
    constraint departamento_pk primary key (sucursal_id,departamento_id),
    constraint departamento_sucursal_id_fk foreign key(sucursal_id)
      references sucursal(sucursal_id),
    constraint departamento_tipo_chk check(tipo in ('VENTAS', 'APLICACIÓN DE SERVICIOS', 'MECÁNICA'))
);

-------------------------------------------------------------------------------------------------------------
--------------------------------------------CREANDO TABLA EMPLEADO-------------------------------------------
-------------------------------------------------------------------------------------------------------------

CREATE TABLE EMPLEADO(
    empleado_id         number(3,0)     not null,
    nombrepie           varchar2(40)    not null,
    ap_paternoe         varchar2(30)    not null,
    ap_maternoe         varchar2(30)    not null,
    rfc                 varchar2(13)    not null constraint empleado_rfc_uk unique,
    telefonoe           varchar2(12)    not null,
    salariomensual      number(7,2)     not null,
--  edad                number(2,0)     not null, columna virtual
    fechanac            date            not null,
    sucursal_id         number(2,0)     not null,
    departamento_id     number(2,0)     not null constraint empleado_departamento_id_uk unique,
    empleadogeren_id    number(3)       not null,
    constraint empleado_pk primary key (empleado_id),
    constraint empleado_sucursal_id_departamento_id_fk foreign key(sucursal_id,departamento_id) references departamento(sucursal_id,departamento_id),
   CONSTRAINT empleado_sucursal_id_departamento_id_UK UNIQUE(sucursal_id,departamento_id),
--[sucursal_id (FK) NUMBER (2), departamento_id (D) NUMBER(2)](FK)(U)(NN)
    constraint empleado_empleadogeren_id_fk foreign key(empleadogeren_id)
    references empleado(empleado_id)
--empleadoGeren_id NUMBER (3) (FK)(NN)
);

-------------------------------------------------------------------------------------------------------------
--------------------------------------------CREANDO TABLA VENDEDOR-------------------------------------------
-------------------------------------------------------------------------------------------------------------

CREATE TABLE VENDEDOR(
--Se tiene que validar todo antes de insertar datos con PROCEDURAL
    empleado_id         number(3,0)     not null,
    jornada             varchar2(30)    not null,
    turno               varchar2(30)    not null,
    vendeSuperv_id      number (3)      not null,
    constraint vendedor_pk primary key (empleado_id),
    constraint vendedor_empleado_id_fk foreign key (empleado_id) references empleado(empleado_id),
    constraint vendedor_jornada_ck check (jornada in('MATUTINO', 'VESPERTINO')),
    constraint vendedor_turno_ck check (turno in('MEDIO TURNO', 'TURNO COMPLETO')),
    constraint vendedor_vendeSuperv_id_fk foreign key(vendeSuperv_id) references empleado(empleado_id)    
);
-------------------------------------------------------------------------------------------------------------
--------------------------------------------CREANDO TABLA MECANICO-------------------------------------------
-------------------------------------------------------------------------------------------------------------

CREATE TABLE MECANICO(
  --Se tiene que validar todo antes de insertar datos con PROCEDURAL
    empleado_id         number(3,0)     not null,
    fecha_ingreso       date            not null,
    capacitacion        varchar2(3)    not null,
    constraint mecanico_pk primary key (empleado_id),
    constraint mecanico_empleado_id_fk foreign key (empleado_id) references empleado(empleado_id),
    constraint mecanico_capacitacion_ck check (capacitacion in('SI', 'NO'))
);

-------------------------------------------------------------------------------------------------------------
--------------------------------------------CREANDO TABLA TECNICO--------------------------------------------
-------------------------------------------------------------------------------------------------------------

CREATE TABLE TECNICO(
     --Se tiene que validar todo antes de insertar datos con PROCEDURAL
    empleado_id         number(3,0)     not null,
    anios_exp           number (2,0)    not null,
    alergia             varchar2(3)     not null,
    constraint tecnico_pk primary key (empleado_id),
    constraint tecnico_empleado_id_fk foreign key (empleado_id) references empleado(empleado_id),
    constraint tecnico_alergia_ck check (alergia in('SI', 'NO'))
);

-------------------------------------------------------------------------------------------------------------
--------------------------------------------CREANDO TABLA HERRAMIENTA----------------------------------------
-------------------------------------------------------------------------------------------------------------

CREATE TABLE HERRAMIENTA(
   herramienta_id         number(2,0)     not null,
   nombreHerr             varchar2(30)    not null,
   tipo_herramienta       varchar2(15)    not null,
   constraint herramienta_id_pk primary key (herramienta_id),
   constraint herramienta_tipo_ck check (tipo_herramienta in('NEBULIZADORES', 'APLICADOR DE GEL','ASPERSOR'))
);

-------------------------------------------------------------------------------------------------------------
--------------------------------------------CREANDO TABLA PRODUCTO-------------------------------------------
-------------------------------------------------------------------------------------------------------------

CREATE TABLE PRODUCTO(
   producto_id            number(2,0)     not null,
   nombreProd             varchar2(30)    not null,
   descripcion            varchar2(40)    not null,
   tipo_producto          varchar2(15)    not null,
   constraint producto_id_pk primary key (producto_id),
   constraint producto_tipo_ck check (tipo_producto in('GEL', 'LÍQUIDO', 'AIRE'))
);

-------------------------------------------------------------------------------------------------------------
--------------------------------------------CREANDO TABLA REALIZA_SERVICIO-----------------------------------
-------------------------------------------------------------------------------------------------------------

--CREATE TABLE REALIZA_SERVICIO(
    
--);

-------------------------------------------------------------------------------------------------------------
--------------------------------------------CREANDO TABLA VENDE----------------------------------------------
-------------------------------------------------------------------------------------------------------------

--CREATE TABLE VENDE(
    
--);

-------------------------------------------------------------------------------------------------------------
--------------------------------------------CREANDO TABLA AUTO-----------------------------------------------
-------------------------------------------------------------------------------------------------------------

--CREATE TABLE AUTO(
    
--);

-------------------------------------------------------------------------------------------------------------
--------------------------------------------CREANDO TABLA REPARA---------------------------------------------
-------------------------------------------------------------------------------------------------------------

--CREATE TABLE REPARA(
    
--);

-------------------------------------------------------------------------------------------------------------
--------------------------------------------CREANDO TABLA USA------------------------------------------------
-------------------------------------------------------------------------------------------------------------

--CREATE TABLE USA(
    
--);

-------------------------------------------------------------------------------------------------------------
------------------------------------------CREANDO TABLA CONTRATACION----------------------------------------
-------------------------------------------------------------------------------------------------------------

--CREATE TABLE CONTRATACION(
    
--);

-------------------------------------------------------------------------------------------------------------
------------------------------------------CREANDO TABLA CLIENTE---------------------------------------
-------------------------------------------------------------------------------------------------------------

CREATE TABLE CLIENTE(
   cliente_id         number(4,0)      not null,
   callec             varchar2(30)     not null,
   coloniac           varchar2(30)     not null,
   numeroc            number(5,0)      not null,
   alcaldiac          varchar2(20)     not null,
   cpc                number(5,0)      not null,
   forma_pago         varchar2(10)     not null,
   constraint cliente_id_pk primary key (cliente_id),
   constraint cliente_pago_ck check (forma_pago in('EFECTIVO', 'TARJETA'))
);

-------------------------------------------------------------------------------------------------------------
----------------------------------------------CREANDO EMPRESA---------------------------------------------
-------------------------------------------------------------------------------------------------------------

--CREATE TABLE EMPRESA(
    
--);

-------------------------------------------------------------------------------------------------------------
-----------------------------------------CREANDO TABLA PERSONA-----------------------------------------------
-------------------------------------------------------------------------------------------------------------

--CREATE TABLE PERSONA(
    
--);


