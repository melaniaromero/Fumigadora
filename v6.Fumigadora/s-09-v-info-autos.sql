--@Autor(es): JIMENEZ GARCIA RODRIGO GAUDENCIO
--            ROMERO PEDRAZA FRANCESCA MELANIA
--            SANTIAGO PEREZ DANIELA
--            CUELLAR URIBE FERNANDO.
--@Fecha creacion: 13/12/2022.
--@Descripcion: Creacion de la primer vista

--El departamento de tecnicos necesita saber la informacion de los autos reparados,conocer quien lo reparo y cuando
create view INFOREPARACION as(
  select r.noRepara, m.empleado_id, a.auto_id, a.placa, a.modelo, r.fecha_rep
  from repara r inner join mecanico m
  on r.empleado_id = m.empleado_id
  inner join auto a on a.auto_id = r.auto_id);

