--@Autor(es): JIMENEZ GARCIA RODRIGO GAUDENCIO
--            ROMERO PEDRAZA FRANCESCA MELANIA
--            SANTIAGO PEREZ DANIELA
--            CUELLAR URIBE FERNANDO.
--@Fecha creaci n: 29/11/2022.
--@Descripci n: CREACION TABLAS DEL CASO DE ESTUDIO 

Prompt conectando con el usuario administrador.
connect jrsc_proy_admin/qwerty;

-------------------------------------------------------------------------------------------------------------
----------------------------------------CREANDO TABLA SUCURSAL-----------------------------------------------
-------------------------------------------------------------------------------------------------------------

CREATE TABLE SUCURSAL(
    sucursal_id        number(2,0)      not null,
    calles             varchar2(30)     not null,
    colonias           varchar2(30)     not null,
    numeros            number(5,0)      not null,
    alcaldias          varchar2(20)     not null,
    cps                varchar2(5)      not null,
    constraint sucursal_pk primary key (sucursal_id)
);

-------------------------------------------------------------------------------------------------------------
-------------------------------------CREANDO TABLA TELSUCURSAL-----------------------------------------------
-------------------------------------------------------------------------------------------------------------

CREATE TABLE TELSUCURSAL(
    sucursal_id         number(2,0)     not null,
    telefono            number(10,0)    not null constraint telsucursal_telefono_uk unique,
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
    emaild            varchar2(40)   not null,
    constraint departamento_pk primary key (sucursal_id,departamento_id),
    constraint departamento_sucursal_id_fk foreign key(sucursal_id)
      references sucursal(sucursal_id),
    constraint departamento_tipo_chk check(tipo in ('VENTAS', 'APLICACION DE SERVICIOS', 'MECANICA'))
);

-------------------------------------------------------------------------------------------------------------
--------------------------------------------CREANDO TABLA EMPLEADO-------------------------------------------
-------------------------------------------------------------------------------------------------------------

CREATE TABLE EMPLEADO(
    empleado_id         number(3,0)     not null,
    nombrepie           varchar2(40)    not null,
    ap_paternoe         varchar2(30)    not null,
    ap_maternoe         varchar2(30)    not null,
    callee              varchar2(30)    not null,
    coloniae            varchar2(30)    not null,
    numeroe             number(5,0)     not null,
    alcaldiae           varchar2(20)    not null,
    cpe                 varchar2(5)     not null,
    rfc                 varchar2(13)    not null constraint empleado_rfc_uk unique,
    telefonoe           number(10,0)    not null,
    salariomensual      number(7,2)     not null,
--  edad                number(2,0)     not null, columna virtual
    fechanac            date            not null,
    sucursal_id         number(2,0)     not null,
    departamento_id     number(2,0)     not null constraint empleado_departamento_id_uk unique,
    empleadogeren_id    number(3,0)     null,
    es_vendedor         numeric(1,0)     not null,
    es_tecnico          numeric(1,0)     not null,
    es_mecanico         numeric(1,0)     not null,
    constraint empleado_pk primary key (empleado_id),
    constraint empleado_sucursal_id_departamento_id_fk foreign key(sucursal_id,departamento_id) 
      references departamento(sucursal_id,departamento_id),
    constraint empleado_sucursal_id_departamento_id_uk UNIQUE(sucursal_id,departamento_id),
    constraint empleado_empleadogeren_id_fk foreign key(empleadogeren_id)
      references empleado(empleado_id),
    constraint empleado_es_chk check(
      (es_vendedor in (1) and es_tecnico in (0) and es_mecanico in (0)) or
      (es_vendedor in (0) and es_tecnico in (1) and es_mecanico in (0)) or
      (es_vendedor in (0) and es_tecnico in (0) and es_mecanico in (1))
    )
);

-------------------------------------------------------------------------------------------------------------
--------------------------------------------CREANDO TABLA VENDEDOR-------------------------------------------
-------------------------------------------------------------------------------------------------------------

CREATE TABLE VENDEDOR(
--Se tiene que validar todo antes de insertar datos con PROCEDURAL
    empleado_id         number(3,0)     not null,
    jornada             varchar2(30)    not null,
    turno               varchar2(30)    not null,
    vendeSuperv_id      number (3)      null,
    constraint vendedor_pk primary key (empleado_id),
    constraint vendedor_empleado_id_fk foreign key (empleado_id) 
      references empleado(empleado_id),
    constraint vendedor_jornada_ck check (jornada in('MATUTINO', 'VESPERTINO')),
    constraint vendedor_turno_ck check (turno in('MEDIO TURNO', 'TURNO COMPLETO')),
    constraint vendedor_vendeSuperv_id_fk foreign key(vendeSuperv_id) 
      references empleado(empleado_id)    
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
    constraint mecanico_empleado_id_fk foreign key (empleado_id) 
      references empleado(empleado_id),
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
    constraint tecnico_empleado_id_fk foreign key (empleado_id) 
      references empleado(empleado_id),
    constraint tecnico_alergia_ck check (alergia in('SI', 'NO'))
);

-------------------------------------------------------------------------------------------------------------
--------------------------------------------CREANDO TABLA HERRAMIENTA----------------------------------------
-------------------------------------------------------------------------------------------------------------

CREATE TABLE HERRAMIENTA(
   herramienta_id         number(2,0)     not null,
   nombreHerr             varchar2(30)    not null,
   tipo_herramienta       varchar2(16)    not null,
   constraint herramienta_pk primary key (herramienta_id),
   constraint herramienta_tipo_ck check (tipo_herramienta in('NEBULIZADOR', 'APLICADOR DE GEL','ASPERSOR'))
);

-------------------------------------------------------------------------------------------------------------
--------------------------------------------CREANDO TABLA PRODUCTO-------------------------------------------
-------------------------------------------------------------------------------------------------------------

CREATE TABLE PRODUCTO(
   producto_id            number(2,0)     not null,
   nombreProd             varchar2(30)    not null,
   descripcion            varchar2(200)    not null,
   tipo_producto          varchar2(10)    not null,
   constraint producto_pk primary key (producto_id),
   constraint producto_tipo_producto_ck check (tipo_producto in('GEL', 'LIQUIDO', 'AIRE'))
);

-------------------------------------------------------------------------------------------------------------
--------------------------------------------CREANDO TABLA REALIZA_SERVICIO-----------------------------------
-------------------------------------------------------------------------------------------------------------

CREATE TABLE REALIZA_SERVICIO(
   servicio_id      number (4)   not null,
   herramienta_id   number(2)    not null,
   producto_id      number(2)    not null,
   fecha_IniSer     date         not null,
   fecha_FinSer     date         not null,
   precio           number(8,2)  not null,
   tipo_lugar       varchar(12)  not null,
   tipo_plaga       varchar(10)  not null,
   empleado_id      number(3)    not null,
   constraint realiza_servicio_pk primary key (servicio_id),
   constraint realiza_servicio_empleado_id_fk foreign key (empleado_id) 
     references empleado (empleado_id),
   constraint realiza_servicio_herramienta_id_fk foreign key (herramienta_id) 
     references herramienta (herramienta_id),
   constraint realiza_servicio_producto_id_fk foreign key (producto_id) 
     references producto (producto_id),
   constraint realiza_servicio_subr_uk unique(herramienta_id,producto_id,fecha_IniSer),
   constraint realiza_servicio_tipo_plaga_ck check (tipo_plaga in ('INSECTO','ARACNIDO','ROEDOR')),
   constraint realiza_servicio_tipo_lugar_ck check 
     (tipo_lugar in ('RESTAURANTE','OFICINA', 'CASA','CAMION', 'BODEGA', 'CAJAS SECAS'))
);
    


-------------------------------------------------------------------------------------------------------------
--------------------------------------------CREANDO TABLA VENDE----------------------------------------------
-------------------------------------------------------------------------------------------------------------
CREATE TABLE VENDE(
   noVenta     number(4) not null,
   empleado_id number(3) not null,
   servicio_id number(4) not null,
   fechaVenta  date      not null,
   constraint vende_pk primary key (noVenta),
   constraint vende_empleado_id_fk foreign key (empleado_id) 
     references empleado(empleado_id),
   constraint vende_servicio_id_fk foreign key (servicio_id) 
     references realiza_servicio (servicio_id),
constraint vende_subr_uk unique (empleado_id, servicio_id, fechaVenta)
);
-------------------------------------------------------------------------------------------------------------
--------------------------------------------CREANDO TABLA AUTO-----------------------------------------------
-------------------------------------------------------------------------------------------------------------
CREATE TABLE AUTO(
    auto_id            number(2,0)     not null,
    placa              varchar2(7)     not null,
    modelo             varchar2(20)    not null,
    color              varchar2(10)    not null,
    constraint auto_pk primary key(auto_id),
    constraint auto_placa_uk unique (placa)
);

-------------------------------------------------------------------------------------------------------------
--------------------------------------------CREANDO TABLA REPARA---------------------------------------------
-------------------------------------------------------------------------------------------------------------

CREATE TABLE REPARA(
    noRepara    number(3,0) not null,
    empleado_id number(3,0) not null,
    auto_id     number(2,0) not null,
    fecha_rep   date      not null,
    constraint repara_pk primary key (noRepara),
    constraint repara_empleado_id_fk foreign key (empleado_id) 
      references empleado (empleado_id),
    constraint repara_auto_id_fk foreign key (auto_id) 
      references auto (auto_id),
    constraint repara_subr_uk unique (empleado_id, auto_id,fecha_rep)
);  

-------------------------------------------------------------------------------------------------------------
------------------------------------------CREANDO TABLA CLIENTE---------------------------------------
-------------------------------------------------------------------------------------------------------------

CREATE TABLE CLIENTE(
   cliente_id         number(4,0)      not null,
   callec             varchar2(30)     not null,
   coloniac           varchar2(30)     not null,
   numeroc            number(5,0)      not null,
   alcaldiac          varchar2(20)     not null,
   cpc                varchar2(5)      not null,
   forma_pago         varchar2(10)     not null,
   es_empresa         numeric(1,0)     not null,
   es_persona         numeric(1,0)     not null,
   constraint cliente_pk primary key (cliente_id),
   constraint cliente_forma_pago_ck check (forma_pago in('EFECTIVO', 'TARJETA')),
   constraint cliente_es_chk check(
    (es_empresa in (1) and es_persona in (0)) or
    (es_empresa in (0) and es_persona in (1))
   )
);

-------------------------------------------------------------------------------------------------------------
----------------------------------------------CREANDO EMPRESA---------------------------------------------
-------------------------------------------------------------------------------------------------------------

CREATE TABLE EMPRESA(
    cliente_id         number(4,0)      not null,
    rfcEmpr            varchar2(13)     not null,
    nombre_empresa     varchar2(40)     not null,
    constraint empresa_pk primary key (cliente_id),
    constraint empresa_rfcEmpr_uk unique (rfcEmpr),
    constraint empresa_cliente_id_fk foreign key (cliente_id) 
      references cliente(cliente_id)
);

-------------------------------------------------------------------------------------------------------------
-----------------------------------------CREANDO TABLA PERSONA-----------------------------------------------
-------------------------------------------------------------------------------------------------------------

CREATE TABLE PERSONA(
    cliente_id         number(4,0)      not null,
    nombrepiper        varchar2(30)     not null,
    ap_paternoPiper    varchar2(20)     not null,
    ap_maternoPiper    varchar2(20)     not null,
    emailP             varchar2(40)     not null,
    constraint persona_pk primary key (cliente_id),
    constraint persona_cliente_id_fk foreign key (cliente_id) 
      references cliente(cliente_id)
);


-------------------------------------------------------------------------------------------------------------
--------------------------------------------CREANDO TABLA USA------------------------------------------------
-------------------------------------------------------------------------------------------------------------
CREATE TABLE USA(
    usoAuto_id   number(3,0) not null,
    empleado_id  number(3,0) not null,
    auto_id      number(2,0) not null,
    fecha_uso    date      not null,
    constraint usa_pk primary key (usoAuto_id),
    constraint usa_empleado_id_fk foreign key (empleado_id) 
      references empleado (empleado_id),
    constraint usa_auto_id_fk foreign key (auto_id) 
      references auto (auto_id),
    constraint usa_subr_uk unique (empleado_id, auto_id, fecha_uso)
);


-------------------------------------------------------------------------------------------------------------
------------------------------------------CREANDO TABLA CONTRATACON----------------------------------------
-------------------------------------------------------------------------------------------------------------
CREATE TABLE CONTRATACON(
    noContratacon     number(4,0)     not null,
    cliente_id         number(4,0)     not null,
    empleado_id        number(3,0)     not null,
    fecha_iCont        date            not null,
    constraint contrataCon_pk primary key (noContrataCon),
    constraint contrataCon_cliente_id_fk foreign key (cliente_id) 
      references cliente(cliente_id),
    constraint contrataCon_empleado_id_fk foreign key (empleado_id) 
      references empleado(empleado_id),
    constraint contrataCon_subr_uk unique (cliente_id,empleado_id,fecha_iCont)
);
