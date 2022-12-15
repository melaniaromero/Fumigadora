--@Autor(es): JIMENEZ GARCIA RODRIGO GAUDENCIO
--            ROMERO PEDRAZA FRANCESCA MELANIA
--            SANTIAGO PEREZ DANIELA
--            CUELLAR URIBE FERNANDO.
--@Fecha creacion: 13/12/2022.
--@Descripcion: Creacion de la segunda view

--Fumicity desea brindar a sus clientes informacion especifica sobre sus servicios de fumigacion en restaurantes.
create view INFOSERVICIOCASAS as(
  select cc.cliente_id,rs.servicio_id, rs.tipo_lugar,rs.producto_id, rs.precio , v.empleado_id as vendedor, rs.empleado_id as tecnico 
  from realiza_servicio rs
  inner join vende v
  on rs.servicio_id=v.servicio_id 
  join contratacon cc
  on v.empleado_id= cc.empleado_id
  WHERE rs.tipo_lugar = 'RESTAURANTE');





