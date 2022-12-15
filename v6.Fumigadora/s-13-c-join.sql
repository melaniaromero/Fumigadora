--@Autor(es): JIMENEZ GARCIA RODRIGO GAUDENCIO
--            ROMERO PEDRAZA FRANCESCA MELANIA
--            SANTIAGO PEREZ DANIELA
--            CUELLAR URIBE FERNANDO.
--@Fecha creacion: 08/12/2022.
--@Descripción: CONSULTAS JOIN

prompt Consulta con join - 1
prompt Se desea saber el RFC de la empresa que contrato servicios para asuntos fiscales.
select distinct e.cliente_id, c.tipo_cliente, e.rfcEmpr, e.nombre_empresa
from cliente c
inner join contratacon cc
on c.cliente_id=cc.cliente_id
inner join empresa e
on cc.cliente_id=cc.cliente_id
order by e.cliente_id asc ;

prompt Consulta con join - 2
prompt Se desea saber el id y el tipo de clientes que no tienen contrato por ahora
select c.cliente_id, c.tipo_cliente from contratacon cc
full outer join cliente c
on cc.cliente_id=c.cliente_id
WHERE cc.cliente_id IS NULL
OR c.cliente_id is NULL;

  
prompt Consulta con join - 3
prompt La fumigadora quiere ver a todos los vendedores que empiece su apellido paterno con V que hayan realizado almenos una venta con una empresa
select v.empleado_id,ev.ap_paternoe ap_paterno, count(*) as cant_ventas
from contratacon co
join cliente cl
  on co.cliente_id = cl.cliente_id
join vendedor v
  on co.empleado_id = v.empleado_id
join (
  select empleado_id, ap_paternoe from empleado where tipo_empleado = 'V'
  and ap_paternoe like 'V%') ev
  on v.empleado_id = ev.empleado_id
where tipo_cliente = 'E'
group by (v.empleado_id,ev.ap_paternoe)
having count(*)>=1;

