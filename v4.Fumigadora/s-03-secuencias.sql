--@Autor(es): JIMENEZ GARCIA RODRIGO GAUDENCIO
--            ROMERO PEDRAZA FRANCESCA MELANIA
--            SANTIAGO PEREZ DANIELA
--            CUELLAR URIBE FERNANDO.
--@Fecha creacion: 08/12/2022.
--@Descripción: CREACION DE SECUENCIAS

--Utilizaremos las secuencias para generar tosdos los id de forma unica y consecutiva.

connect jrsc_proy_admin/qwerty
----------------------------------------------------------------------------------------------------------------------------
----------------------------------------------CREACION DE SECUENCIA PARA SUCURSAL--------------------------------------------
----------------------------------------------------------------------------------------------------------------------------

CREATE SEQUENCE sucursal_seq
  start WITH 1   --La secuencia iniciara en 1.
  increment by 1 --La secuencia incrementa de 1 en 1.
  nominvalue     --No se necesita un valor minimo ya que la secuencia no es ciclica.
  nomaxvalue     --No se establece un valor maximo para la secuencia.
  nocycle        --La secuencia no se repetira al alcanzar un valor maximo
  cache 10       --Se almacenan 10 valores de la secuencia en memoria (para mejor desempeño en una carga "masiva" de datos)
  order          --Se garantiza que los valores se generen en el orden solicitado
;

----------------------------------------------------------------------------------------------------------------------------
----------------------------------------------CREACION DE SECUENCIA PARA DEPARTAMENTO---------------------------------------
----------------------------------------------------------------------------------------------------------------------------

CREATE SEQUENCE departamento_seq
  start WITH 1   
  increment by 1 
  nominvalue     
  nomaxvalue     
  nocycle        
  cache 10       
  order          
;

----------------------------------------------------------------------------------------------------------------------------
----------------------------------------------CREACION DE SECUENCIA PARA EMPLEADO--------------------------------------------
----------------------------------------------------------------------------------------------------------------------------

CREATE SEQUENCE empleado_seq
  start WITH 1   
  increment by 1 
  nominvalue     
  nomaxvalue     
  nocycle        
  cache 10       
  order          
;

----------------------------------------------------------------------------------------------------------------------------
----------------------------------------------CREACION DE SECUENCIA PARA HERRAMIENTA----------------------------------------
----------------------------------------------------------------------------------------------------------------------------

CREATE SEQUENCE herramienta_seq
  start WITH 1   
  increment by 1 
  nominvalue     
  nomaxvalue     
  nocycle        
  cache 10       
  order          
;

----------------------------------------------------------------------------------------------------------------------------
----------------------------------------------CREACION DE SECUENCIA PARA PRODUCTO-------------------------------------------
----------------------------------------------------------------------------------------------------------------------------
CREATE SEQUENCE producto_seq
  start WITH 1   
  increment by 1 
  nominvalue     
  nomaxvalue     
  nocycle        
  cache 10       
  order          
;

----------------------------------------------------------------------------------------------------------------------------
----------------------------------------------CREACION DE SECUENCIA PARA REALIZA_SERVICIO-----------------------------------
----------------------------------------------------------------------------------------------------------------------------
CREATE SEQUENCE servicio_seq
  start WITH 1   
  increment by 1 
  nominvalue     
  nomaxvalue     
  nocycle        
  cache 10       
  order          
;

----------------------------------------------------------------------------------------------------------------------------
----------------------------------------------CREACION DE SECUENCIA PARA VENDE----------------------------------------------
----------------------------------------------------------------------------------------------------------------------------
CREATE SEQUENCE vende_seq
  start WITH 1   
  increment by 1 
  nominvalue     
  nomaxvalue     
  nocycle        
  cache 10       
  order          
;

----------------------------------------------------------------------------------------------------------------------------
----------------------------------------------CREACION DE SECUENCIA PARA AUTO-----------------------------------------------
----------------------------------------------------------------------------------------------------------------------------
CREATE SEQUENCE auto_seq
  start WITH 1   
  increment by 1 
  nominvalue     
  nomaxvalue     
  nocycle        
  cache 10       
  order          
;

----------------------------------------------------------------------------------------------------------------------------
----------------------------------------------CREACION DE SECUENCIA PARA REPARA---------------------------------------------
----------------------------------------------------------------------------------------------------------------------------
CREATE SEQUENCE repara_seq
  start WITH 1   
  increment by 1 
  nominvalue     
  nomaxvalue     
  nocycle        
  cache 10       
  order          
;


----------------------------------------------------------------------------------------------------------------------------
----------------------------------------------CREACION DE SECUENCIA PARA CLIENTE-------------------------------------------
----------------------------------------------------------------------------------------------------------------------------
CREATE SEQUENCE cliente_seq
  start WITH 1   
  increment by 1 
  nominvalue     
  nomaxvalue     
  nocycle        
  cache 10       
  order          
;

----------------------------------------------------------------------------------------------------------------------------
----------------------------------------------CREACION DE SECUENCIA PARA USA-------------------------------------------
----------------------------------------------------------------------------------------------------------------------------
CREATE SEQUENCE usa_seq
  start WITH 1   
  increment by 1 
  nominvalue     
  nomaxvalue     
  nocycle        
  cache 10       
  order          
;

----------------------------------------------------------------------------------------------------------------------------
----------------------------------------------CREACION DE SECUENCIA PARA CONTRATACON-------------------------------------------
----------------------------------------------------------------------------------------------------------------------------
CREATE SEQUENCE contratacon_seq
  start WITH 1   
  increment by 1 
  nominvalue     
  nomaxvalue     
  nocycle        
  cache 10       
  order          
;
