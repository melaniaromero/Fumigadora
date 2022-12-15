--@Autor(es): JIMENEZ GARCIA RODRIGO GAUDENCIO
--            ROMERO PEDRAZA FRANCESCA MELANIA
--            SANTIAGO PEREZ DANIELA
--            CUELLAR URIBE FERNANDO.
--@Fecha creacion: 08/12/2022.
--@Descripción: INSERTANDO REGISTROS


-------------------------------------------------------------TABLA SUCURSAL-----------------------------------------------------------------------
--insert into sucursal(sucursal_id,calles,colonias,numeros,alcaldias,cps) values(sucursal_seq.nextval)
insert into sucursal (sucursal_id, calles, colonias, numeros, alcaldias, cps) values (sucursal_seq.nextval,'Calzada de Tlalpan', 'Sta. Ursula Coapa', '3032', 'Coyoacan', '04650');
insert into sucursal (sucursal_id, calles, colonias, numeros, alcaldias, cps) values (sucursal_seq.nextval,'Miguel Laurent', 'Portales Norte', '1060', 'Benito Juarez', '03700');
insert into sucursal (sucursal_id, calles, colonias, numeros, alcaldias, cps) values (sucursal_seq.nextval,'Educación Civica', 'Jaime Torres Bodet', '26', 'Tlahuac', '13549');
insert into sucursal (sucursal_id, calles, colonias, numeros, alcaldias, cps) values (sucursal_seq.nextval,'Cjon. Don Juanito', 'Plazuela del Pedregal', '80', 'Magdalena Contreras', '10830');
insert into sucursal (sucursal_id, calles, colonias, numeros, alcaldias, cps) values (sucursal_seq.nextval,'Trojes', 'Minerva', '119', 'Iztapalapa', '09810');
insert into sucursal (sucursal_id, calles, colonias, numeros, alcaldias, cps) values (sucursal_seq.nextval,'Damasco', 'Romero Rubio', '18', 'Venustiano Carranza', '15400');
insert into sucursal (sucursal_id, calles, colonias, numeros, alcaldias, cps) values (sucursal_seq.nextval,'Cardos', 'Manzana', '4', 'Miguel Hidalgo', '14250');
insert into sucursal (sucursal_id, calles, colonias, numeros, alcaldias, cps) values (sucursal_seq.nextval,'Luis G.Inclan', 'Toriello Guerra', '84', 'Tlalpan', '14050');
insert into sucursal (sucursal_id, calles, colonias, numeros, alcaldias, cps) values (sucursal_seq.nextval,'Guadalupe I. Ramirez', 'Tepepan', '119', 'Xochimilco', '16020');
insert into sucursal (sucursal_id, calles, colonias, numeros, alcaldias, cps) values (sucursal_seq.nextval,'Albahaca', 'Tlatilco', '48', 'Azcapotzalco', '02860');
insert into sucursal (sucursal_id, calles, colonias, numeros, alcaldias, cps) values (sucursal_seq.nextval,'Campanitas', 'Granjas Navidad', '4', 'Cuajimalpa', '05210');
insert into sucursal (sucursal_id, calles, colonias, numeros, alcaldias, cps) values (sucursal_seq.nextval,'Puebla', 'Roma Norte', '158', 'Cuauhtemoc', '06500');
insert into sucursal (sucursal_id, calles, colonias, numeros, alcaldias, cps) values (sucursal_seq.nextval,'Rosa Estrella', 'Molino de Rosas', '83', 'Alvaro Obregon', '01470');
insert into sucursal (sucursal_id, calles, colonias, numeros, alcaldias, cps) values (sucursal_seq.nextval,'Necaxa', 'Portales Norte', '168', 'Benito Juarez', '03300');
insert into sucursal (sucursal_id, calles, colonias, numeros, alcaldias, cps) values (sucursal_seq.nextval,'Corina', 'Del Carmen', '8', 'Benito Juarez', '04100');
insert into sucursal (sucursal_id, calles, colonias, numeros, alcaldias, cps) values (sucursal_seq.nextval,'Calzada de Tlalpan', 'La Joya', '5800', 'Iztapalapa', '14090');
insert into sucursal (sucursal_id, calles, colonias, numeros, alcaldias, cps) values (sucursal_seq.nextval,'San Isauro', 'Pedregal de Sta Ursula', '12', 'Coyoacan', '04600');
-------------------------------------------------------------TABLA TELSUCURSAL--------------------------------------------------------------------
--insert into telsucursal(sucursal_id,telefono) values();
insert into telsucursal (sucursal_id, telefono) values (1, 5618450202);
insert into telsucursal (sucursal_id, telefono) values (2, 5688733791);
insert into telsucursal (sucursal_id, telefono) values (3, 5648299300);
insert into telsucursal (sucursal_id, telefono) values (4, 5685728273);
insert into telsucursal (sucursal_id, telefono) values (5, 5627985581);
insert into telsucursal (sucursal_id, telefono) values (6, 5681728823);
insert into telsucursal (sucursal_id, telefono) values (7, 5573264974);
insert into telsucursal (sucursal_id, telefono) values (8, 5577544684);
insert into telsucursal (sucursal_id, telefono) values (9, 5567290672);
insert into telsucursal (sucursal_id, telefono) values (10, 5631916792);
insert into telsucursal (sucursal_id, telefono) values (11, 5669763934);
insert into telsucursal (sucursal_id, telefono) values (12, 5602514044);
insert into telsucursal (sucursal_id, telefono) values (13, 5611483304);
insert into telsucursal (sucursal_id, telefono) values (14, 5651842727);
insert into telsucursal (sucursal_id, telefono) values (15, 5630175075);
insert into telsucursal (sucursal_id, telefono) values (16, 5610936323);
insert into telsucursal (sucursal_id, telefono) values (17, 5615942068);


-------------------------------------------------------------TABLA DEPARTAMENTO--------------------------------------------------------------------
--insert into departamento(sucursal_id,departamento_id,tipo,emaild);
insert into departamento (sucursal_id, departamento_id, tipo, emaild) values (1,departamento_seq.nextval,'VENTAS', 'fumicity_vcoyoacan@gmail.com');
insert into departamento (sucursal_id, departamento_id, tipo, emaild) values (2,departamento_seq.nextval,'VENTAS', 'fumicity_vbenitojuarez@gmail.com');
insert into departamento (sucursal_id, departamento_id, tipo, emaild) values (3,departamento_seq.nextval,'APLICACION DE SERVICIOS', 'fumicity_astlahuac@gmail.com');
insert into departamento (sucursal_id, departamento_id, tipo, emaild) values (4,departamento_seq.nextval,'APLICACION DE SERVICIOS', 'fumicity_asmagdalena@gmail.com');
insert into departamento (sucursal_id, departamento_id, tipo, emaild) values (5,departamento_seq.nextval,'MECANICA', 'fumicity_miztapalapa@gmail.com');
insert into departamento (sucursal_id, departamento_id, tipo, emaild) values (6,departamento_seq.nextval,'MECANICA', 'fumicity_mvenustiano@gmail.com');
insert into departamento (sucursal_id, departamento_id, tipo, emaild) values (7,departamento_seq.nextval,'APLICACION DE SERVICIOS', 'fumicity_asmiguelhidalgo@gmail.com');
insert into departamento (sucursal_id, departamento_id, tipo, emaild) values (8,departamento_seq.nextval,'APLICACION DE SERVICIOS', 'fumicity_astlalpan@gmail.com');
insert into departamento (sucursal_id, departamento_id, tipo, emaild) values (9,departamento_seq.nextval,'MECANICA', 'fumicity_mxochimilco@gmail.com');
insert into departamento (sucursal_id, departamento_id, tipo, emaild) values (10,departamento_seq.nextval,'MECANICA', 'fumicity_mazcapotzalco@gmail.com');
insert into departamento (sucursal_id, departamento_id, tipo, emaild) values (11,departamento_seq.nextval,'MECANICA', 'fumicity_mcuajimalpa@gmail.com');
insert into departamento (sucursal_id, departamento_id, tipo, emaild) values (12,departamento_seq.nextval,'VENTAS', 'fumicity_vcuauhtemoc@gmail.com');
insert into departamento (sucursal_id, departamento_id, tipo, emaild) values (13,departamento_seq.nextval,'VENTAS', 'fumicity_valvaro@gmail.com');
insert into departamento (sucursal_id, departamento_id, tipo, emaild) values (14,departamento_seq.nextval,'APLICACION DE SERVICIOS', 'fumicity_asbenitojuarez@gmail.com');
insert into departamento (sucursal_id, departamento_id, tipo, emaild) values (15,departamento_seq.nextval,'MECANICA', 'fumicity_mbenitojaurez@gmail.com');
insert into departamento (sucursal_id, departamento_id, tipo, emaild) values (16,departamento_seq.nextval,'MECANICA', 'fumicity_miztapalapa@gmail.com');
insert into departamento (sucursal_id, departamento_id, tipo, emaild) values (17,departamento_seq.nextval,'VENTAS', 'fumicity_vcoyoacan@gmail.com');
insert into departamento (sucursal_id, departamento_id, tipo, emaild) values (17,departamento_seq.nextval,'APLICACION DE SERVICIOS', 'fumicity_ascoyoacan@gmail.com');
insert into departamento (sucursal_id, departamento_id, tipo, emaild) values (2,departamento_seq.nextval,'MECANICA', 'fumicity_mbenitojuarez@gmail.com');
insert into departamento (sucursal_id, departamento_id, tipo, emaild) values (6,departamento_seq.nextval,'VENTAS', 'fumicity_vvenustiano@gmail.com');
insert into departamento (sucursal_id, departamento_id, tipo, emaild) values (7,departamento_seq.nextval,'VENTAS', 'fumicity_vmiguelhidalgo@gmail.com');
insert into departamento (sucursal_id, departamento_id, tipo, emaild) values (8,departamento_seq.nextval,'VENTAS','fumicity_vtlalpan@gmail.com');
insert into departamento (sucursal_id, departamento_id, tipo, emaild) values (9,departamento_seq.nextval,'VENTAS', 'fumicity_vxochimilco@gmail.com');
insert into departamento (sucursal_id, departamento_id, tipo, emaild) values (10,departamento_seq.nextval,'APLICACION DE SERVICIOS', 'fumicity_asazcapotzalco@gmail.com');
insert into departamento (sucursal_id, departamento_id, tipo, emaild) values (12,departamento_seq.nextval,'MECANICA', 'fumicity_mcuauhtemoc@gmail.com');
insert into departamento (sucursal_id, departamento_id, tipo, emaild) values (13,departamento_seq.nextval,'APLICACION DE SERVICIOS', 'fumicity_asalvaro@gmail.com');
insert into departamento (sucursal_id, departamento_id, tipo, emaild) values (11,departamento_seq.nextval,'VENTAS', 'fumicity_vcuajimalpa@gmail.com');
insert into departamento (sucursal_id, departamento_id, tipo, emaild) values (15,departamento_seq.nextval,'APLICACION DE SERVICIOS', 'fumicity_ttlahuac@gmail.com');
insert into departamento (sucursal_id, departamento_id, tipo, emaild) values (4,departamento_seq.nextval,'MECANICA', 'fumicity_mmagdalena@gmail.com');
insert into departamento (sucursal_id, departamento_id, tipo, emaild) values (5,departamento_seq.nextval,'APLICACION DE SERVICIOS', 'fumicity_tiztapalapa@gmail.com');

-------------------------------------------------------------TABLA EMPLEADO--------------------------------------------------------------------
insert into empleado (empleado_id, nombrepie, ap_paternoe, ap_maternoe, callee, coloniae,numeroe, alcaldiae ,cpe, rfc, telefonoe, salariomensual, fechanac, sucursal_id, departamento_id, empleadogeren_id,tipo_empleado) values (1, 'Zoraida', 'Alaniz', 'Linares', 'Estrella','Juarez','34','Benito Juarez','04567','AALZ88041123A', 5557191725, 28523.31,to_date('11/04/1988','dd/mm/yyyy'), 1,1,1,'V');
insert into empleado (empleado_id, nombrepie, ap_paternoe, ap_maternoe,callee, coloniae,numeroe, alcaldiae ,cpe, rfc, telefonoe, salariomensual, fechanac, sucursal_id, departamento_id, empleadogeren_id,tipo_empleado) values (2, 'Luis', 'Venegas', 'Ruvalcaba','Casas Grandes','Alicante','5','Xochimilco','03456', 'VERL91083092B', 5685108080, 9246.92,to_date('30/08/1991','dd/mm/yyyy'), 2, 2, 2,'V');
insert into empleado (empleado_id, nombrepie, ap_paternoe, ap_maternoe,callee, coloniae,numeroe, alcaldiae ,cpe, rfc, telefonoe, salariomensual, fechanac, sucursal_id, departamento_id, empleadogeren_id,tipo_empleado) values (3, 'Laura', 'Aragon', 'Salcido', 'Simon Bolivar','Galicia','45','Azcapotzalco','03567','ARSL94120934A', 5630253724, 22388.33,to_date('09/12/1994','dd/mm/yyyy'), 3, 3, 3,'T');
insert into empleado (empleado_id, nombrepie, ap_paternoe, ap_maternoe,callee, coloniae,numeroe, alcaldiae ,cpe, rfc, telefonoe, salariomensual, fechanac, sucursal_id, departamento_id, empleadogeren_id,tipo_empleado) values (4, 'Fermin', 'Guzman', 'Quintana','Xochicalco','Peten','1','Iztacalco','09873', 'GUQF94110230A', 5505929685, 27320.09,to_date('02/11/1994','dd/mm/yyyy'), 4, 4, 4,'T');
insert into empleado (empleado_id, nombrepie, ap_paternoe, ap_maternoe, callee, coloniae,numeroe, alcaldiae ,cpe, rfc, telefonoe, salariomensual, fechanac, sucursal_id, departamento_id, empleadogeren_id,tipo_empleado) values (5, 'Irma', 'Benitez', 'Duran','Tajin','C.Palenque','4','Cuauhtemoc','03456', 'BEDI870621HO9', 5699153429, 12360.44,to_date('01/06/1987','dd/mm/yyyy'), 5, 5, 5,'M');
insert into empleado (empleado_id, nombrepie, ap_paternoe, ap_maternoe,callee, coloniae,numeroe, alcaldiae ,cpe, rfc, telefonoe, salariomensual, fechanac, sucursal_id, departamento_id, empleadogeren_id,tipo_empleado) values (6, 'Raul', 'Tejeda', 'Jimenez','Teocelo','Misantla','124','Coyoacan','03454', 'TEJR890626IU9', 5568172669, 17926.93,to_date('26/06/1989','dd/mm/yyyy'), 6, 6, 6,'M');
insert into empleado (empleado_id, nombrepie, ap_paternoe, ap_maternoe,callee, coloniae,numeroe, alcaldiae ,cpe, rfc, telefonoe, salariomensual, fechanac, sucursal_id, departamento_id, empleadogeren_id,tipo_empleado) values (7, 'Leticia', 'Zarate', 'Moreno', 'Tehuantepec','Bajio','78','M.Contreras','03467','ZAML960617B00', 5644623140, 13845.57,to_date('17/06/1996','dd/mm/yyyy'), 7, 7, 7,'T');
insert into empleado (empleado_id, nombrepie, ap_paternoe, ap_maternoe,callee, coloniae,numeroe, alcaldiae ,cpe, rfc, telefonoe, salariomensual, fechanac, sucursal_id, departamento_id, empleadogeren_id,tipo_empleado) values (8, 'Victor', 'Garcia', 'Reyes','Laureles','Av. de los Colorines','23','Tlalpan','05678', 'GARV960110GOI', 5639707524, 10868.81,to_date('10/01/1996','dd/mm/yyyy'), 8, 8, 8,'T');
insert into empleado (empleado_id, nombrepie, ap_paternoe, ap_maternoe,callee, coloniae,numeroe, alcaldiae ,cpe, rfc, telefonoe, salariomensual, fechanac, sucursal_id, departamento_id, empleadogeren_id,tipo_empleado) values (9, 'Laura', 'Lopez', 'Sanchez','Tabachines','P.de Atizapan','54','Tlahuac','05789', 'LOSL870217UI2', 5571008257, 10023.23,to_date('17/02/1987','dd/mm/yyyy'), 9, 9, 9,'M');
insert into empleado (empleado_id, nombrepie, ap_paternoe, ap_maternoe,callee, coloniae,numeroe, alcaldiae ,cpe, rfc, telefonoe, salariomensual, fechanac, sucursal_id, departamento_id, empleadogeren_id,tipo_empleado) values (10, 'Rosa', 'Juarez', 'Bruna','Petrel','Petrel','6','Cuajimalpa','07812', 'JUBR900803B67', 5699508627, 21589.15,to_date('03/08/1990','dd/mm/yyyy'), 10, 10, 10,'M');
insert into empleado (empleado_id, nombrepie, ap_paternoe, ap_maternoe,callee, coloniae,numeroe, alcaldiae ,cpe, rfc, telefonoe, salariomensual, fechanac, sucursal_id, departamento_id, empleadogeren_id,tipo_empleado) values (11, 'Gerardo', 'Torres', 'Martinez', 'Milano','Arlequin','5','Venustiano Carranza','43','TOMG941106HO5', 5622188002, 20209.70,to_date('06/11/1994','dd/mm/yyyy'), 11, 11, 11,'M');
insert into empleado (empleado_id, nombrepie, ap_paternoe, ap_maternoe,callee, coloniae,numeroe, alcaldiae ,cpe, rfc, telefonoe, salariomensual, fechanac, sucursal_id, departamento_id, empleadogeren_id,tipo_empleado) values (12, 'Brenda', 'Robles', 'Corte', 'Sur 25','C.16','56','Iztapalapa','06789','ROCB000306FK3', 5661246064, 26926.74,to_date('06/03/2000','dd/mm/yyyy'), 12, 12, 12,'V');
insert into empleado (empleado_id, nombrepie, ap_paternoe, ap_maternoe,callee, coloniae,numeroe, alcaldiae ,cpe, rfc, telefonoe, salariomensual, fechanac, sucursal_id, departamento_id, empleadogeren_id,tipo_empleado) values (13, 'Daniel', 'Perez', 'Cortes','Sur 29','C.14','6','Iztapalapa','03455', 'PECD890525KO9', 5620843025, 26191.43,to_date('25/05/1989','dd/mm/yyyy'), 13, 13, 12,'V');
insert into empleado (empleado_id, nombrepie, ap_paternoe, ap_maternoe, callee, coloniae,numeroe, alcaldiae ,cpe, rfc, telefonoe, salariomensual, fechanac, sucursal_id, departamento_id, empleadogeren_id,tipo_empleado) values (14, 'Sandra', 'Ortega', 'Velareal', 'Guadalupe Victoria','Juan Aldama','9','Milpa Alta','02696','ORVS920301JU8', 5564425302, 25024.17,to_date('01/03/1992','dd/mm/yyyy'), 14, 14, 14,'T');
insert into empleado (empleado_id, nombrepie, ap_paternoe, ap_maternoe,callee, coloniae,numeroe, alcaldiae ,cpe, rfc, telefonoe, salariomensual, fechanac, sucursal_id, departamento_id, empleadogeren_id,tipo_empleado) values (15, 'Jessica', 'Luna', 'Caporal', 'B. de Silao','B.Tunas Blancas','21','Tlalpan','03467','LUCJ000906C45', 5532977816, 16962.42,to_date('06/09/2000','dd/mm/yyyy'), 15, 15,8,'M');
insert into empleado (empleado_id, nombrepie, ap_paternoe, ap_maternoe,callee, coloniae,numeroe, alcaldiae ,cpe, rfc, telefonoe, salariomensual, fechanac, sucursal_id, departamento_id, empleadogeren_id,tipo_empleado) values (16, 'Emilio', 'Tejada', 'Gaitan', 'Rio Nexapa','Rio Soto','34','Tlahuac','02345','TEGE920810JK9', 5663795771, 10661.83,to_date('10/08/1992','dd/mm/yyyy'), 16, 16, 9,'M');
insert into empleado (empleado_id, nombrepie, ap_paternoe, ap_maternoe,callee, coloniae,numeroe, alcaldiae ,cpe, rfc, telefonoe, salariomensual, fechanac, sucursal_id, departamento_id, empleadogeren_id,tipo_empleado) values (17, 'Alejandro', 'Paz', 'Suarez', 'Sur 171','Sur 165','67','Iztacalco','07867','PASA900903B56', 5697607503, 15311.86,to_date('03/09/1990','dd/mm/yyyy'), 17, 17, 4,'V');
insert into empleado (empleado_id, nombrepie, ap_paternoe, ap_maternoe,callee, coloniae,numeroe, alcaldiae ,cpe, rfc, telefonoe, salariomensual, fechanac, sucursal_id, departamento_id, empleadogeren_id,tipo_empleado) values (18, 'Jose', 'Martinez', 'Gomez', 'Sur 169','Ote.102','89','Iztapalapa','07867','MAGJ880512N56', 5557191885, 28523.31,to_date('12/05/1988','dd/mm/yyyy'), 17, 18,12,'T');
insert into empleado (empleado_id, nombrepie, ap_paternoe, ap_maternoe,callee, coloniae,numeroe, alcaldiae ,cpe, rfc, telefonoe, salariomensual, fechanac, sucursal_id, departamento_id, empleadogeren_id,tipo_empleado) values (19, 'Mariana', 'Torres', 'Palacios', 'Goma','Azafran','567','M.Contreras','02345','TOPM900415Y67', 5657194885, 28523.31,to_date('15/04/1990','dd/mm/yyyy'), 2, 19,7,'M');
insert into empleado (empleado_id, nombrepie, ap_paternoe, ap_maternoe,callee, coloniae,numeroe, alcaldiae ,cpe, rfc, telefonoe, salariomensual, fechanac, sucursal_id, departamento_id, empleadogeren_id,tipo_empleado) values (20, 'Luis', 'Morales', 'Garcia', 'Mesones','Mesones','456','Miguel Hidalgo','09898','MOGL890103J5K', 5657591983, 28523.31,to_date('03/01/1989','dd/mm/yyyy'), 6, 20,20,'V');
insert into empleado (empleado_id, nombrepie, ap_paternoe, ap_maternoe,callee, coloniae,numeroe, alcaldiae ,cpe, rfc, telefonoe, salariomensual, fechanac, sucursal_id, departamento_id, empleadogeren_id,tipo_empleado) values (21, 'Sabrina', 'Ruiz', 'Lopez','Regina','San Pedro','90','A.Obregon','01111', 'RULS951917JU8', 5505829686, 27320.09,to_date('17/10/1995','dd/mm/yyyy'), 7, 21,21,'V');
insert into empleado (empleado_id, nombrepie, ap_paternoe, ap_maternoe,callee, coloniae,numeroe, alcaldiae ,cpe, rfc, telefonoe, salariomensual, fechanac, sucursal_id, departamento_id, empleadogeren_id,tipo_empleado) values (22, 'Elizabeth', 'Flores', 'Gutierrez', 'Luis Moya','Ayuntamiento','98','Miguel Hidalgo','01345','FLGE971002KI8', 5595729684, 27320.09,to_date('02/10/1997','dd/mm/yyyy'), 8, 22,20,'V');
insert into empleado (empleado_id, nombrepie, ap_paternoe, ap_maternoe,callee, coloniae,numeroe, alcaldiae ,cpe, rfc, telefonoe, salariomensual, fechanac, sucursal_id, departamento_id, empleadogeren_id,tipo_empleado) values (23, 'Cesar', 'Moreno', 'Reyes','Independencia','Vizcainas','25','Miguel Hidalgo','06789', 'MORC931207HY7', 5534627656, 27320.09,to_date('07/12/1993','dd/mm/yyyy'), 9, 23,20,'V');
insert into empleado (empleado_id, nombrepie, ap_paternoe, ap_maternoe,callee, coloniae,numeroe, alcaldiae ,cpe, rfc, telefonoe, salariomensual, fechanac, sucursal_id, departamento_id, empleadogeren_id,tipo_empleado) values (24, 'Pedro', 'Cruz', 'Paz','Dr. Atl','Luis Colosio','90','V. Carranza','04567', 'CRPP890527GH7', 2467896532, 27320.09,to_date('27/05/1989','dd/mm/yyyy'), 10,24,11,'T');
insert into empleado (empleado_id, nombrepie, ap_paternoe, ap_maternoe,callee, coloniae,numeroe, alcaldiae ,cpe, rfc, telefonoe, salariomensual, fechanac, sucursal_id, departamento_id, empleadogeren_id,tipo_empleado) values (25, 'Mariana', 'Aguilar', 'Ruvalcaba', 'Hortensia','C.Cedro','67','A.Obregon','05678','AGRM850910HJ8', 5695108080, 9246.92,to_date('30/09/1985','dd/mm/yyyy'), 12, 25, 21,'M');
insert into empleado (empleado_id, nombrepie, ap_paternoe, ap_maternoe,callee, coloniae,numeroe, alcaldiae ,cpe, rfc, telefonoe, salariomensual, fechanac, sucursal_id, departamento_id, empleadogeren_id,tipo_empleado) values (26, 'Agustin', 'Perez', 'Rojas','Lirio','Adormidera','67','Benito Juarez','06789', 'PERA91127', 5505308070, 9246.92,to_date('27/11/1991','dd/mm/yyyy'), 13, 26, 1,'T');
insert into empleado (empleado_id, nombrepie, ap_paternoe, ap_maternoe,callee, coloniae,numeroe, alcaldiae ,cpe, rfc, telefonoe, salariomensual, fechanac, sucursal_id, departamento_id, empleadogeren_id,tipo_empleado) values (27, 'Patricio', 'Venegas', 'Juarez', 'Mar Azof','Mar Azof','8','Coyoacan','02348','VEJP850721F43', 5526107045, 9246.92,to_date('21/07/1985','dd/mm/yyyy'), 11, 27, 6,'V');
insert into empleado (empleado_id, nombrepie, ap_paternoe, ap_maternoe,callee, coloniae,numeroe, alcaldiae ,cpe, rfc, telefonoe, salariomensual, fechanac, sucursal_id, departamento_id, empleadogeren_id,tipo_empleado) values (28, 'Eduardo', 'Grant', 'Sanchez', 'Mar Blanco','Mar Blanco','45','Coyoacan','01322','GRSE920809B56', 5584151010, 9246.92,to_date('09/08/1992','dd/mm/yyyy'), 15, 28, 27,'T');
insert into empleado (empleado_id, nombrepie, ap_paternoe, ap_maternoe,callee, coloniae,numeroe, alcaldiae ,cpe, rfc, telefonoe, salariomensual, fechanac, sucursal_id, departamento_id, empleadogeren_id,tipo_empleado) values (29, 'Mario', 'Cortes', 'Rosas','Esperanza','Esperanza','67','Azcapotzalco','04567', 'CORM831205VF8', 5565401111, 9246.92,to_date('05/12/1983','dd/mm/yyyy'), 4, 29,3,'M');
insert into empleado (empleado_id, nombrepie, ap_paternoe, ap_maternoe,callee, coloniae,numeroe, alcaldiae ,cpe, rfc, telefonoe, salariomensual, fechanac, sucursal_id, departamento_id, empleadogeren_id,tipo_empleado) values (30, 'Juan', 'Garcia', 'Vazquez', 'Aztecas','Miguel Hidalgo','22','Coyoacan','03422','GAVJ900225JU5', 5584168212, 9246.92,to_date('25/02/1990','dd/mm/yyyy'), 5, 30, 27,'T');


-------------------------------------------------------------TABLA VENDEDOR--------------------------------------------------------------------
--insert into vendedor(empleado_id, jornada, turno, vendeSuperv_id) values (empleado_id, jornada, turno, vendeSuperv_id);

insert into vendedor(empleado_id, jornada, turno, vendeSuperv_id) values (1,'MATUTINO','TURNO COMPLETO',1);
insert into vendedor(empleado_id, jornada, turno, vendeSuperv_id) values (2,'MATUTINO','TURNO COMPLETO',2);
insert into vendedor(empleado_id, jornada, turno, vendeSuperv_id) values (12,'MATUTINO','TURNO COMPLETO',12);
insert into vendedor(empleado_id, jornada, turno, vendeSuperv_id) values (13,'MATUTINO','TURNO COMPLETO',12);
insert into vendedor(empleado_id, jornada, turno, vendeSuperv_id) values (17,'MATUTINO','TURNO COMPLETO',17);
insert into vendedor(empleado_id, jornada, turno, vendeSuperv_id) values (20,'VESPERTINO','MEDIO TURNO',20);
insert into vendedor(empleado_id, jornada, turno, vendeSuperv_id) values (21,'VESPERTINO','MEDIO TURNO',21);
insert into vendedor(empleado_id, jornada, turno, vendeSuperv_id) values (22,'VESPERTINO','MEDIO TURNO',20);
insert into vendedor(empleado_id, jornada, turno, vendeSuperv_id) values (23,'VESPERTINO','MEDIO TURNO',20);
insert into vendedor(empleado_id, jornada, turno, vendeSuperv_id) values (27,'VESPERTINO','MEDIO TURNO',27);

-------------------------------------------------------------TABLA MECANICO--------------------------------------------------------------------

--INSERT INTO MECANICO (empleado_id, fecha_ingreso, capacitacion) VALUES (empleado_id, fecha_ingreso, capacitacion);
INSERT INTO MECANICO (empleado_id, fecha_ingreso, capacitacion) VALUES (5,to_date('12/10/2018','dd/mm/yyyy'),'SI');
INSERT INTO MECANICO (empleado_id, fecha_ingreso, capacitacion) VALUES (6,to_date('10/11/2022','dd/mm/yyyy'),'NO');
INSERT INTO MECANICO (empleado_id, fecha_ingreso, capacitacion) VALUES (9,to_date('15/09/2019','dd/mm/yyyy'),'SI');
INSERT INTO MECANICO (empleado_id, fecha_ingreso, capacitacion) VALUES (10,to_date('07/06/2022','dd/mm/yyyy'),'NO');
INSERT INTO MECANICO (empleado_id, fecha_ingreso, capacitacion) VALUES (11,to_date('01/07/2022','dd/mm/yyyy'),'NO');
INSERT INTO MECANICO (empleado_id, fecha_ingreso, capacitacion) VALUES (15,to_date('25/05/2017','dd/mm/yyyy'),'SI');
INSERT INTO MECANICO (empleado_id, fecha_ingreso, capacitacion) VALUES (16,to_date('06/04/2017','dd/mm/yyyy'),'SI');
INSERT INTO MECANICO (empleado_id, fecha_ingreso, capacitacion) VALUES (19,to_date('07/12/2016','dd/mm/yyyy'),'SI');
INSERT INTO MECANICO (empleado_id, fecha_ingreso, capacitacion) VALUES (25,to_date('14/07/2019','dd/mm/yyyy'),'SI');
INSERT INTO MECANICO (empleado_id, fecha_ingreso, capacitacion) VALUES (29,to_date('13/09/2017','dd/mm/yyyy'),'SI');

-------------------------------------------------------------TABLA TECNICO --------------------------------------------------------------------

--INSERT INTO TECNICO (empleado_id, anios_exp, alergia) VALUES (empleado_id, 2, alergia);
INSERT INTO TECNICO (empleado_id, anios_exp, alergia) VALUES (3, 10, 'NO');
INSERT INTO TECNICO (empleado_id, anios_exp, alergia) VALUES (4, 6,'NO');
INSERT INTO TECNICO (empleado_id, anios_exp, alergia) VALUES (7, 7,'NO');
INSERT INTO TECNICO (empleado_id, anios_exp, alergia) VALUES (8, 8, 'NO');
INSERT INTO TECNICO (empleado_id, anios_exp, alergia) VALUES (14, 5, 'NO');
INSERT INTO TECNICO (empleado_id, anios_exp, alergia) VALUES (18, 7, 'NO');
INSERT INTO TECNICO (empleado_id, anios_exp, alergia) VALUES (24, 1, 'NO');
INSERT INTO TECNICO (empleado_id, anios_exp, alergia) VALUES (26, 7, 'NO');
INSERT INTO TECNICO (empleado_id, anios_exp, alergia) VALUES (28, 4, 'SI');
INSERT INTO TECNICO (empleado_id, anios_exp, alergia) VALUES (30, 2, 'SI');

-------------------------------------------------------------TABLA HERRAMIENTA -----------------------------------------------------------------

--INSERT INTO HERRAMIENTA (herramienta_id, nombreHerr, tipo_Herramienta) VALUES (herramienta_id, nombreHerr, tipo_Herramienta);
INSERT INTO HERRAMIENTA (herramienta_id, nombreHerr, tipo_Herramienta) VALUES (1,'ART FOG 360', 'NEBULIZADOR');
INSERT INTO HERRAMIENTA (herramienta_id, nombreHerr, tipo_Herramienta) VALUES (2,'IGEBA 4827', 'NEBULIZADOR');
INSERT INTO HERRAMIENTA (herramienta_id, nombreHerr, tipo_Herramienta) VALUES (3,'ULTRA 2848', 'NEBULIZADOR');
INSERT INTO HERRAMIENTA (herramienta_id, nombreHerr, tipo_Herramienta) VALUES (4,'KAWASHIMA AK3L', 'ASPERSOR');
INSERT INTO HERRAMIENTA (herramienta_id, nombreHerr, tipo_Herramienta) VALUES (5,'HYUNDAI','ASPERSOR');
INSERT INTO HERRAMIENTA (herramienta_id, nombreHerr, tipo_Herramienta) VALUES (6,'RAIKER','ASPERSOR');
INSERT INTO HERRAMIENTA (herramienta_id, nombreHerr, tipo_Herramienta) VALUES (7,'SANTUL','ASPERSOR');
INSERT INTO HERRAMIENTA (herramienta_id, nombreHerr, tipo_Herramienta) VALUES (8,'VECTOR GEL DH1','APLICADOR DE GEL');
INSERT INTO HERRAMIENTA (herramienta_id, nombreHerr, tipo_Herramienta) VALUES (9,'VECTOR GEL DH2','APLICADOR DE GEL');
INSERT INTO HERRAMIENTA (herramienta_id, nombreHerr, tipo_Herramienta) VALUES (10,'VECTOR GEL DH3','APLICADOR DE GEL');

-------------------------------------------------------------TABLA PRODUCTO -----------------------------------------------------------------
--INSERT INTO PRODUCTO (producto_id, nombreProd, descripcion, tipo_producto) VALUES (producto_seq.nextval,nombreProd, descripcion, tipo_producto);

INSERT INTO PRODUCTO (producto_id, nombreProd, descripcion, tipo_producto) VALUES (producto_seq.nextval,'BIOTHRINE','Insecticida de baja irritacion gracias a su formulacion con solventes de origen vegetal para el control de insectos. Con solventes no aromaticos y aceites vegetales','AIRE');
INSERT INTO PRODUCTO (producto_id, nombreProd, descripcion, tipo_producto) VALUES (producto_seq.nextval,'MAXFORCE FLY BAYT','Es un cebo insecticida con atrayente a base de imidacloprid al 0.5%','AIRE');
INSERT INTO PRODUCTO (producto_id, nombreProd, descripcion, tipo_producto) VALUES (producto_seq.nextval,'AQUA RESLIN SUPER','Insecticida especifico para nebulizacion o termonebulizacion en base acuosa','AIRE');
INSERT INTO PRODUCTO (producto_id, nombreProd, descripcion, tipo_producto) VALUES (producto_seq.nextval,'DDVP 20','Derribo y control desde la primera aplicacion. Baja residualidad que previene resistencias','LIQUIDO');
INSERT INTO PRODUCTO (producto_id, nombreProd, descripcion, tipo_producto) VALUES (producto_seq.nextval,'FORMITION','Efectivo plaguicida granulado que actua por ingestion y contacto, con un muy bajo olor.','LIQUIDO');
INSERT INTO PRODUCTO (producto_id, nombreProd, descripcion, tipo_producto) VALUES (producto_seq.nextval,'ELEGY','Insecticida de rapido efecto inicial a base de cipermetrina. Su uso esta indicado para el control de plagas voladoras y rastreras.','LIQUIDO');
INSERT INTO PRODUCTO (producto_id, nombreProd, descripcion, tipo_producto) VALUES (producto_seq.nextval,'TERMIDOR CE','Basado en el ingrediente activo Fipronil Termidor, elimina las plagas tanto por contacto como por ingestion.Termidor es un insecticida no repelente e indetectable para la plaga','LIQUIDO');
INSERT INTO PRODUCTO (producto_id, nombreProd, descripcion, tipo_producto) VALUES (producto_seq.nextval,'MAXORCE GEL','Su ingrediente activo, de accion retardada, es capaz de controlar las cepas resistentes a los insecticidas convencionales.','GEL');
INSERT INTO PRODUCTO (producto_id, nombreProd, descripcion, tipo_producto) VALUES (producto_seq.nextval,'OPTIGARDANT','Contiene Bitrex','GEL');
INSERT INTO PRODUCTO (producto_id, nombreProd, descripcion, tipo_producto) VALUES (producto_seq.nextval,'ANTEX GEL','Elaborado a base de abamectina 
sustancia derivada de un hongo natural del suelo, seguro a personas y animales domesticos.','GEL');


------------------------------------------------------------TABLA REALIZA SERVICIO----------------------------------------------------------------

insert into realiza_servicio (servicio_id,herramienta_id,producto_id,fecha_IniSer,fecha_FinSer,precio,tipo_lugar,tipo_plaga,empleado_id) values (servicio_seq.nextval,1,1,to_date ('23/02/2021','dd/mm/yyyy'),to_date ('24/02/2021','dd/mm/yyyy'),2567.67,'RESTAURANTE','ARACNIDO',3);
insert into realiza_servicio (servicio_id,herramienta_id,producto_id,fecha_IniSer,fecha_FinSer,precio,tipo_lugar,tipo_plaga,empleado_id) values (servicio_seq.nextval,2,2,to_date ('16/03/2022','dd/mm/yyyy'),to_date ('18/12/2022','dd/mm/yyyy'),5678.54,'OFICINA','ROEDOR',4);
insert into realiza_servicio (servicio_id,herramienta_id,producto_id,fecha_IniSer,fecha_FinSer,precio,tipo_lugar,tipo_plaga,empleado_id) values (servicio_seq.nextval,3,3,to_date ('21/04/2020','dd/mm/yyyy'),to_date ('25/04/2020','dd/mm/yyyy'),4567.32,'CAMION','INSECTO',7);
insert into realiza_servicio (servicio_id,herramienta_id,producto_id,fecha_IniSer,fecha_FinSer,precio,tipo_lugar,tipo_plaga,empleado_id) values (servicio_seq.nextval,4,4,to_date ('30/11/2021','dd/mm/yyyy'),to_date ('02/12/2021','dd/mm/yyyy'),9845.98,'RESTAURANTE','ARACNIDO',8);
insert into realiza_servicio (servicio_id,herramienta_id,producto_id,fecha_IniSer,fecha_FinSer,precio,tipo_lugar,tipo_plaga,empleado_id) values (servicio_seq.nextval,5,5,to_date ('02/01/2022','dd/mm/yyyy'),to_date ('05/02/2022','dd/mm/yyyy'),2345.45,'BODEGA','ARACNIDO',14);
insert into realiza_servicio (servicio_id,herramienta_id,producto_id,fecha_IniSer,fecha_FinSer,precio,tipo_lugar,tipo_plaga,empleado_id) values (servicio_seq.nextval,6,6,to_date ('14/06/2018','dd/mm/yyyy'),to_date ('15/06/2018','dd/mm/yyyy'),5603.33,'RESTAURANTE','INSECTO',18);
insert into realiza_servicio (servicio_id,herramienta_id,producto_id,fecha_IniSer,fecha_FinSer,precio,tipo_lugar,tipo_plaga,empleado_id) values (servicio_seq.nextval,7,7,to_date ('05/07/2021','dd/mm/yyyy'),to_date ('09/07/2021','dd/mm/yyyy'),1045.29,'CAMION','ARACNIDO',24);
insert into realiza_servicio (servicio_id,herramienta_id,producto_id,fecha_IniSer,fecha_FinSer,precio,tipo_lugar,tipo_plaga,empleado_id) values (servicio_seq.nextval,8,8,to_date ('09/08/2017','dd/mm/yyyy'),to_date ('11/08/2018','dd/mm/yyyy'),4386.81,'BODEGA','ROEDOR',26);
insert into realiza_servicio (servicio_id,herramienta_id,producto_id,fecha_IniSer,fecha_FinSer,precio,tipo_lugar,tipo_plaga,empleado_id) values (servicio_seq.nextval,9,9,to_date ('13/08/2022','dd/mm/yyyy'),to_date ('15/08/2022','dd/mm/yyyy'),3478.99,'OFICINA','ARACNIDO',28);
insert into realiza_servicio (servicio_id,herramienta_id,producto_id,fecha_IniSer,fecha_FinSer,precio,tipo_lugar,tipo_plaga,empleado_id) values (servicio_seq.nextval,10,10,to_date ('10/09/2021','dd/mm/yyyy'),to_date ('04/10/2021','dd/mm/yyyy'),2984.14,'OFICINA','ROEDOR',30);

------------------------------------------------------TABLA VENDE-----------------------------------------------------------------------

insert into vende (noVenta, empleado_id, servicio_id, fechaVenta) values (vende_seq.nextval,1,1, to_date ('02/03/2019','dd/mm/yyyy'));
insert into vende (noVenta, empleado_id, servicio_id, fechaVenta) values (vende_seq.nextval,2,2, to_date ('04/04/2018','dd/mm/yyyy'));
insert into vende (noVenta, empleado_id, servicio_id, fechaVenta) values (vende_seq.nextval,2,3,  to_date ('03/12/2015','dd/mm/yyyy'));
insert into vende (noVenta, empleado_id, servicio_id, fechaVenta) values (vende_seq.nextval,12,4, to_date ('21/11/2019','dd/mm/yyyy'));
insert into vende (noVenta, empleado_id, servicio_id, fechaVenta) values (vende_seq.nextval,2,5, to_date ('08/08/2020','dd/mm/yyyy'));
insert into vende (noVenta, empleado_id, servicio_id, fechaVenta) values (vende_seq.nextval,20,6, to_date ('23/05/2021','dd/mm/yyyy'));
insert into vende (noVenta, empleado_id, servicio_id, fechaVenta) values (vende_seq.nextval,21,7, to_date ('30/09/2022','dd/mm/yyyy'));
insert into vende (noVenta, empleado_id, servicio_id, fechaVenta) values (vende_seq.nextval,22,8, to_date ('23/06/2022','dd/mm/yyyy'));
insert into vende (noVenta, empleado_id, servicio_id, fechaVenta) values (vende_seq.nextval,23,9, to_date ('10/10/2021','dd/mm/yyyy'));
insert into vende (noVenta, empleado_id, servicio_id, fechaVenta) values (vende_seq.nextval,27,10, to_date ('11/01/2018','dd/mm/yyyy'));


----------------------------------------TABLA AUTO----------------------------------------------------------------------------------------------

insert into auto (auto_id,placa,modelo,color) values (1,'620NHA','Kia Soul','ROJO');
insert into auto (auto_id,placa,modelo,color) values (2,'458GBH','Nissan Versa','NEGRO');
insert into auto (auto_id,placa,modelo,color) values (3,'HJK897','Nissan March','BLANCO');
insert into auto (auto_id,placa,modelo,color) values (4,'GBI986','Suzuki Ignis','AZUL');
insert into auto (auto_id,placa,modelo,color) values (5,'2S23DC','Wolskwagen Gol','GRIS');
insert into auto (auto_id,placa,modelo,color) values (6,'IKJ843','Fiat Mobi','AZUL');
insert into auto (auto_id,placa,modelo,color) values (7,'NZF456','Hyundai Creta','BLANCO');
insert into auto (auto_id,placa,modelo,color) values (8,'NEK876','Chevrolet Aveo','VERDE');
insert into auto (auto_id,placa,modelo,color) values (9,'SEC3HC','SEAT Ibiza','NEGRO');
insert into auto (auto_id,placa,modelo,color) values (10,'RFG678','Honda City','ROJO');

-------------------------------------------TABLA REPARA------------------------------------------------------------  
insert into repara (noRepara,empleado_id,auto_id,fecha_rep) values (repara_seq.nextval,5,1,to_date('10/11/2021','dd/mm/yyyy'));
insert into repara (noRepara,empleado_id,auto_id,fecha_rep) values (repara_seq.nextval,6,2,to_date('11/12/2022','dd/mm/yyyy'));
insert into repara (noRepara,empleado_id,auto_id,fecha_rep) values (repara_seq.nextval,9,3,to_date('21/10/2020','dd/mm/yyyy'));
insert into repara (noRepara,empleado_id,auto_id,fecha_rep) values (repara_seq.nextval,10,4,to_date('23/12/2019','dd/mm/yyyy'));
insert into repara (noRepara,empleado_id,auto_id,fecha_rep) values (repara_seq.nextval,11,5,to_date('09/01/2018','dd/mm/yyyy'));
insert into repara (noRepara,empleado_id,auto_id,fecha_rep) values (repara_seq.nextval,15,6,to_date('05/12/2017','dd/mm/yyyy'));
insert into repara (noRepara,empleado_id,auto_id,fecha_rep) values (repara_seq.nextval,16,7,to_date('03/08/2016','dd/mm/yyyy'));
insert into repara (noRepara,empleado_id,auto_id,fecha_rep) values (repara_seq.nextval,19,8,to_date('15/06/2017','dd/mm/yyyy'));
insert into repara (noRepara,empleado_id,auto_id,fecha_rep) values (repara_seq.nextval,25,9,to_date('13/07/2020','dd/mm/yyyy'));
insert into repara (noRepara,empleado_id,auto_id,fecha_rep) values (repara_seq.nextval,29,10,to_date('29/09/2019','dd/mm/yyyy'));



-----------------------------------------TABLA USA-------------------------------------------------------------------------------------------

insert into usa (usoAuto_id,empleado_id,auto_id,fecha_uso) values (usa_seq.nextval,3,1,to_date ('12/06/2018','dd/mm/yyyy'));
insert into usa (usoAuto_id,empleado_id,auto_id,fecha_uso) values (usa_seq.nextval,3,2,to_date ('15/06/2017','dd/mm/yyyy'));
insert into usa (usoAuto_id,empleado_id,auto_id,fecha_uso) values (usa_seq.nextval,4,3,to_date ('12/10/2020','dd/mm/yyyy'));
insert into usa (usoAuto_id,empleado_id,auto_id,fecha_uso) values (usa_seq.nextval,7,4,to_date ('18/11/2021','dd/mm/yyyy'));
insert into usa (usoAuto_id,empleado_id,auto_id,fecha_uso) values (usa_seq.nextval,8,5,to_date ('19/09/2018','dd/mm/yyyy'));
insert into usa (usoAuto_id,empleado_id,auto_id,fecha_uso) values (usa_seq.nextval,14,6,to_date ('13/03/2019','dd/mm/yyyy'));
insert into usa (usoAuto_id,empleado_id,auto_id,fecha_uso) values (usa_seq.nextval,18,7,to_date ('18/10/2017','dd/mm/yyyy'));
insert into usa (usoAuto_id,empleado_id,auto_id,fecha_uso) values (usa_seq.nextval,24,8,to_date ('30/11/2018','dd/mm/yyyy'));
insert into usa (usoAuto_id,empleado_id,auto_id,fecha_uso) values (usa_seq.nextval,26,9,to_date ('03/03/2022','dd/mm/yyyy'));
insert into usa (usoAuto_id,empleado_id,auto_id,fecha_uso) values (usa_seq.nextval,28,10,to_date ('02/01/2021','dd/mm/yyyy'));
insert into usa (usoAuto_id,empleado_id,auto_id,fecha_uso) values (usa_seq.nextval,30,10,to_date ('02/01/2021','dd/mm/yyyy'));


------------------------------------------------TABLA CLIENTE-----------------------------------------------------------------------------
insert into cliente (cliente_id,callec,coloniac,numeroc,alcaldiac,cpc,forma_pago,tipo_cliente) values(cliente_seq.nextval,'Plutarco Elias Calles','Centro',2510,'Iztalapalapa','09020','TARJETA','E');
insert into cliente (cliente_id,callec,coloniac,numeroc,alcaldiac,cpc,forma_pago,tipo_cliente) values(cliente_seq.nextval,'Armada de Mexico','Emiliano Zapata',1446,'Coyoacan','04919','EFECTIVO','E');
insert into cliente (cliente_id,callec,coloniac,numeroc,alcaldiac,cpc,forma_pago,tipo_cliente) values
(cliente_seq.nextval,'22 de febrero','Centro de Azcapotzalco',82,'Azcapotzalco','02000','EFECTIVO','E');
insert into cliente (cliente_id,callec,coloniac,numeroc,alcaldiac,cpc,forma_pago,tipo_cliente) values (cliente_seq.nextval,'Jose Toribio Medina','Algarin',50,'Cuauhtemoc','06880','TARJETA','E');
insert into cliente (cliente_id,callec,coloniac,numeroc,alcaldiac,cpc,forma_pago,tipo_cliente) values (cliente_seq.nextval,'Peralvillo','Morelos',95,'Cuauhtemoc','06200','TARJETA','E');
insert into cliente (cliente_id,callec,coloniac,numeroc,alcaldiac,cpc,forma_pago,tipo_cliente) values 
(cliente_seq.nextval,'San Juan de Aragon','IV Seccion',19,'Gustavo A.Madero','07979','EFECTIVO','E');
insert into cliente (cliente_id,callec,coloniac,numeroc,alcaldiac,cpc,forma_pago,tipo_cliente) values (cliente_seq.nextval,'Amsterdam','Roma',16,'Coyoacan','03400','TARJETA','E');
insert into cliente (cliente_id,callec,coloniac,numeroc,alcaldiac,cpc,forma_pago,tipo_cliente) values (cliente_seq.nextval,'Jose J. Jasso','Moctezuma',2,'Venustiano Carranza',15500,'EFECTIVO','E');
insert into cliente (cliente_id,callec,coloniac,numeroc,alcaldiac,cpc,forma_pago,tipo_cliente) values (cliente_seq.nextval,'Mexico','Barrio San Marcos',6285,'Xochimilco',16050,'TARJETA','E');
insert into cliente (cliente_id,callec,coloniac,numeroc,alcaldiac,cpc,forma_pago,tipo_cliente) values (cliente_seq.nextval,'Sta. Lucia','Olivar del Conde',23,'Alvaro Obregon','01400','EFECTIVO','E');
insert into cliente (cliente_id,callec,coloniac,numeroc,alcaldiac,cpc,forma_pago,tipo_cliente) values (cliente_seq.nextval,'Jardines de Morales','Jardines de Morales',297,'Cuauhtemoc','06300','TARJETA','P');
insert into cliente (cliente_id,callec,coloniac,numeroc,alcaldiac,cpc,forma_pago,tipo_cliente) values (cliente_seq.nextval,'Benito Miranda','Independencia',1,'Iztapalapa','09750','EFECTIVO','P');
insert into cliente (cliente_id,callec,coloniac,numeroc,alcaldiac,cpc,forma_pago,tipo_cliente) values (cliente_seq.nextval,'Rcda. de Jesus','Centro Historico',7,'Cuauhtemoc','06000','EFECTIVO','P');
insert into cliente (cliente_id,callec,coloniac,numeroc,alcaldiac,cpc,forma_pago,tipo_cliente) values (cliente_seq.nextval,'Rio San Angel','San Angel',86,'Alvaro Obregon','01020','TARJETA','P');
insert into cliente (cliente_id,callec,coloniac,numeroc,alcaldiac,cpc,forma_pago,tipo_cliente) values (cliente_seq.nextval,'Union de colonias','Tepipilli',16450,'Xochimilco','16450','TARJETA','P');
insert into cliente (cliente_id,callec,coloniac,numeroc,alcaldiac,cpc,forma_pago,tipo_cliente) values (cliente_seq.nextval,'Cto Interior','Rio Churubusco',242,'Iztacalco','08400','EFECTIVO','P');
insert into cliente (cliente_id,callec,coloniac,numeroc,alcaldiac,cpc,forma_pago,tipo_cliente) values (cliente_seq.nextval,'Calzada Vallejo','Nueva Vallejo',1361,'Gustavo A. Madero','07700','TARJETA','P');
insert into cliente (cliente_id,callec,coloniac,numeroc,alcaldiac,cpc,forma_pago,tipo_cliente) values (cliente_seq.nextval,'Rosarinas','El Cuernito',63,'Alvaro Obregon','01220','EFECTIVO','P');
insert into cliente (cliente_id,callec,coloniac,numeroc,alcaldiac,cpc,forma_pago,tipo_cliente) values (cliente_seq.nextval,'Rio Churubusco','Rio Churubusco',8,'Coyoacan','04220','TARJETA','P');
insert into cliente (cliente_id,callec,coloniac,numeroc,alcaldiac,cpc,forma_pago,tipo_cliente) values (cliente_seq.nextval,'Maza','Maza',6,'Cuauhtemoc','06270','EFECTIVO','P');

----------------------------------------------TABLA EMPRESA--------------------------------------------------------------------------------

insert into empresa (cliente_id,rfcEmpr,nombre_empresa) values (1,'MXD45HM8323DS','SONORA GRILL');
insert into empresa (cliente_id,rfcEmpr,nombre_empresa) values (2,'KJL9F4S27F9KJ','BANXICO');
insert into empresa (cliente_id,rfcEmpr,nombre_empresa) values (3,'JKC485KM02IJK','PETCO');
insert into empresa (cliente_id,rfcEmpr,nombre_empresa) values (4,'S84MMC73SNDC7','VIPS');
insert into empresa (cliente_id,rfcEmpr,nombre_empresa) values (5,'GH4C8TH93XN4F','OXXO');
insert into empresa (cliente_id,rfcEmpr,nombre_empresa) values (6,'N94NG72SZM4FC','LITTLE CAESARS');
insert into empresa (cliente_id,rfcEmpr,nombre_empresa) values (7,'DD89MCV73S9C7','HERSHEYS');
insert into empresa (cliente_id,rfcEmpr,nombre_empresa) values (8,'C94FM6HZ2S8V4','SABRITAS');
insert into empresa (cliente_id,rfcEmpr,nombre_empresa) values (9,'F07V9C49B71ZX','BIMBO');
insert into empresa (cliente_id,rfcEmpr,nombre_empresa) values (10,'Y6MX74X8439DZ','BANORTE');




---------------------------------------------TABLA PERSONA---------------------------------------------------------------------------------

insert into persona (cliente_id,nombrePiPer,ap_paternoPiper,ap_maternoPiper,emailP) values (11,'Marcos','Martinez','Robles','marcosmar@gmail.com');
insert into persona (cliente_id,nombrePiPer,ap_paternoPiper,ap_maternoPiper,emailP) values (12,'Anahi','Rodriguez','Sanchez','anahi2021@gmail.com');
insert into persona (cliente_id,nombrePiPer,ap_paternoPiper,ap_maternoPiper,emailP) values (13,'Andrea','Fuentes','Angulo','andr8989@gmail.com');
insert into persona (cliente_id,nombrePiPer,ap_paternoPiper,ap_maternoPiper,emailP) values (14,'Fernando','Uribe','Bacile','ferurib@gmail.com');
insert into persona (cliente_id,nombrePiPer,ap_paternoPiper,ap_maternoPiper,emailP) values (15,'Ramiro','Gonzalez','Keller','ramiro_gonzalez21@gmail.com');
insert into persona (cliente_id,nombrePiPer,ap_paternoPiper,ap_maternoPiper,emailP) values (16,'Renata','Perez','Hernandez','renataper21@gmail.com');
insert into persona (cliente_id,nombrePiPer,ap_paternoPiper,ap_maternoPiper,emailP) values (17,'Ariadna','Arreola','Cardenas','arihoney@gmail.com');
insert into persona (cliente_id,nombrePiPer,ap_paternoPiper,ap_maternoPiper,emailP) values (18,'Luis','Hernandez','Romero','luisdanielh_hd@gmail.com');
insert into persona (cliente_id,nombrePiPer,ap_paternoPiper,ap_maternoPiper,emailP) values (19,'Leonardo','Bucio','Cortes','leobucio2323@gmail.com');
insert into persona (cliente_id,nombrePiPer,ap_paternoPiper,ap_maternoPiper,emailP) values (20,'Juan','Jimenez','Ramirez','juanjimfer@gmail.com')



----------------------------------------TABLA CONTRATACON------------------------------------------------------------------------------------

insert into contratacon (noContrataCon,cliente_id,empleado_id,fecha_iCont) values (contratacon_seq.nextval,1,1,to_date('13/06/2021','dd/mm/yyyy'));
insert into contratacon (noContrataCon,cliente_id,empleado_id,fecha_iCont) values (contratacon_seq.nextval,2,2,to_date('22/05/2021','dd/mm/yyyy'));
insert into contratacon (noContrataCon,cliente_id,empleado_id,fecha_iCont) values (contratacon_seq.nextval,3,2,to_date('04/06/2019','dd/mm/yyyy'));
insert into contratacon (noContrataCon,cliente_id,empleado_id,fecha_iCont) values (contratacon_seq.nextval,4,12,to_date('03/02/2018','dd/mm/yyyy'));
insert into contratacon (noContrataCon,cliente_id,empleado_id,fecha_iCont) values (contratacon_seq.nextval,5,2,to_date('02/01/2021','dd/mm/yyyy'));
insert into contratacon (noContrataCon,cliente_id,empleado_id,fecha_iCont) values (contratacon_seq.nextval,6,20,to_date('09/10/2017','dd/mm/yyyy'));
insert into contratacon (noContrataCon,cliente_id,empleado_id,fecha_iCont) values (contratacon_seq.nextval,7,21,to_date('12/12/2021','dd/mm/yyyy'));
insert into contratacon (noContrataCon,cliente_id,empleado_id,fecha_iCont) values (contratacon_seq.nextval,8,22,to_date('23/04/2020','dd/mm/yyyy'));
insert into contratacon (noContrataCon,cliente_id,empleado_id,fecha_iCont) values (contratacon_seq.nextval,9,23,to_date('15/09/2018','dd/mm/yyyy'));
insert into contratacon (noContrataCon,cliente_id,empleado_id,fecha_iCont) values (contratacon_seq.nextval,10,27,to_date('30/10/2021','dd/mm/yyyy'));





