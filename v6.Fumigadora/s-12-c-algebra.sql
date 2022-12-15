--@Autor(es): JIMENEZ GARCIA RODRIGO GAUDENCIO
--            ROMERO PEDRAZA FRANCESCA MELANIA
--            SANTIAGO PEREZ DANIELA
--            CUELLAR URIBE FERNANDO.
--@Fecha creacion: 13/12/2022.
--@Descripcion: ALGEBRA RELACIONAL

prompt Consulta Algebra Relacional producto cartesiano - 1
prompt La fumigadora necesita el nombre y las veces que ha utilizado un auto del tecnico con mayor experiencia para hacerle un aumento del 5%

select e.empleado_id, e.nombrepie, e.ap_paternoe, aexp.anios_exp, cua.cant_usa_auto
from empleado e,
  (
  select empleado_id, anios_exp
  from tecnico
  where anios_exp =(select max(anios_exp) from tecnico)
  ) aexp,(
  select empleado_id,count(*) cant_usa_auto
  from usa u
  group by (u.empleado_id)
  ) cua
  where e.empleado_id = aexp.empleado_id
  and   e.empleado_id = cua.empleado_id;


prompt Consulta Algebra Relacional con subconsulta en el where y union- 2
prompt La fumigadora desea conocer al o los empleados con mayor salario y los empleados con menor salario
select empleado_id, nombrepie, ap_paternoe,salariomensual, tipo_empleado
  from empleado
  where salariomensual = (select max(salariomensual) from empleado)
union
select empleado_id, nombrepie, ap_paternoe,salariomensual, tipo_empleado
  from empleado
  where salariomensual = (select min(salariomensual) from empleado);


prompt Consulta Algebra Relacional -3  
prompt Se desea ver una tabla como propuesta para un aumento salarial del 2% para los mecanicos que vengan de la alcaldia coyoacan y no tengan su capacitacion a modo de incentivo por realizarla
select upper(nombrepie) Nombre, tipo_empleado, salariomensual, salariomensual*1.02 salario_propuesto
from
  (
    select * from empleado e, mecanico m where e.empleado_id = m.empleado_id
    intersect
    select * from empleado e, mecanico m where e.alcaldiae = 'Coyoacan' and m.capacitacion = 'NO'
  )
order by salario_propuesto;

prompt Consulta Algebra Relacional -4
prompt Se desea saber que empleados ganan entre 9246.92 y 17926.93 para subirles el sueldo
select empleado_id, nombrepie, ap_paternoe, ap_maternoe,salariomensual from empleado
where salariomensual<(SELECT salariomensual FROM empleado WHERE empleado_id ='2')
OR salariomensual<(SELECT salariomensual FROM empleado WHERE empleado_id ='6');

prompt Consulta Algebra Relacional -5
Prompt Se desea saber la informacion de los empleados tipo tecnico de la tabla de empleado

select nombrepie, ap_paternoe
from empleado
intersect
select nombrepie, ap_paternoe
from empleado
where tipo_empleado = 'T';

prompt Consulta Algebra Relacional -6
prompt consulta fecha de contratacion 
Prompt Se desea saber la informacion de aquellos vendedores empleados que hicieron contratatos durante 2018
select noContratacon, cliente_id, empleado_id, fecha_iCont
from CONTRATACON
where fecha_iCont between '01/01/2018' and '31/12/2018';
