--@Autor(es): JIMENEZ GARCIA RODRIGO GAUDENCIO
--            ROMERO PEDRAZA FRANCESCA MELANIA
--            SANTIAGO PEREZ DANIELA
--            CUELLAR URIBE FERNANDO.
--@Fecha creacion: 13/12/2022.
--@Descripcion: FUNCIONES DE AGREGACION


prompt Consulta agregacion COUNT - 1
Prompt Se requiere el numero de autos y modelos de la marca NISSAN para el control y compra de partes de reparacion de autos de dicha marca
select count(auto_id), modelo
    from auto
    where modelo like 'Nissan%'
    group by modelo;

prompt Consulta agregacion AVG - 2
prompt Se necesita saber el promedio de sueldos de los empleados por su tipo para el control de gastos en la empresa
select tipo_empleado, avg(salariomensual) PSalarios
  from empleado
  group by tipo_empleado;

prompt Consulta agregacion COUNT - 3
prompt Se desea saber el numero de empleados en cada sucursal
SELECT s.sucursal_id,count(e.alcaldiae)as cantidadEmpleados FROM sucursal s
join empleado e
ON s.sucursal_id=e.sucursal_id
GROUP BY s.sucursal_id
ORDER BY s.sucursal_id asc;

prompt Consulta agregacion COUNT - 4
prompt Se desea informar a los clientes cuantas sucursales se encuentran en cada alcaldia
select  s.alcaldias, count (s.sucursal_id) as cantidadSucursal 
from sucursal s
group by s.alcaldias
order by s.alcaldias asc;







