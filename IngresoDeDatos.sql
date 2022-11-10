-- =============================================
-- Seleccionar la Base de Datos
-- =============================================
USE Carreras;

go

-- Carga Datos a la tabla Evento
--------------------------------
INSERT INTO Evento(Fecha_evento)VALUES--3
('2022-10-12'),
('2022-12-12'),
('2022-12-14')



-- Carga Datos a la tabla Carrera
--------------------------------
INSERT INTO Carrera(Nombre_carrera,Pendiente,Culminada,Id_categoria,Id_Modalidad,Id_evento)VALUES--3
('FLASH',0,1,1,2,1),
('HERMES',1,0,2,1,2),
('OLIMPO',1,0,3,4,2),
('VALHALLA',1,0,5,4,2),
('ROCKSTAR',0,1,2,4,3)




INSERT INTO Financiamiento(Dinero,Suministro,Monto_dinero,Cantidad_suministro,Descripcion,Id_auspiciador,Id_carrera)VALUES--3
(1,0,1540.70,0,'Aporte en cheque',1,1),
(1,0,1320.70,0,'Aporte en efectivo',4,1),
(0,1,0,120,'Bebidas energeticas',10,1),
(0,1,0,70,'Camisetas',15,1),
(0,1,0,420,'Insignias',13,1),
(1,0,1890.40,0,'Aporte en efectivo',11,1),
(0,1,0,30,'Buzos deportivos',6,1)



-- Carga Datos a la tabla Atleta
---------------------------------
INSERT INTO Atleta(Nombre_atleta,Apellido_p,Apellido_m,NumDocumento,Fecha_nacimiento,Sexo) VALUES --3
('Juan','Quispe','Rojas','70159030','1993-06-22','M'),
('Pedro','Garcia','Rosales','42305278','1995-12-07','M'),
('Miguel','Ortiz','Zevallos','45305284','1996-06-24','M'),
('Juan','Infante','Fraidias','34417139','1987-12-14','M'),
('David','Serna','Balmori','52479077','1986-06-24','M'),
('Josefa','Pedraza','Travez','84277383','1994-12-16','F'),
('Jose Antonio','Belda','Leno','72702217','1993-05-18','M'),
('Jose Luis','Barragan','Usategui','75239553','1986-05-23','M'),
('Francisco Javier','Reig','Amills','81953461','1989-06-28','M'),
('Ana Maria','De Diego','Bocigas','18598553','1991-12-24','F'),
('Maria Dolores','Espino','Zamudio','15794042','1992-06-13','F'),
('Maria Pilar','Valderrama','Urquiaga','86245635','1986-12-23','F'),
('Miguel','Fuentes','Andreu','83153833','1994-05-10','M'),
('Maria Teresa','Pico','Zoyo','55710808','1989-03-15','F'),
('Ana','Andujar','Popovici','52041463','1993-05-18','F'),
('Rafael','Murcia','Petrov','81703794','1986-06-23','M'),
('Jose Manuel','Antolin','Diranzo','36742399','1992-04-26','M'),
('Pedro','Calderon','Domenech','33150418','1996-05-13','M'),
('Laura','Bueno','Sobreira','82285639','1997-01-01','F'),
('Francisca','Smith','Mafla','37497894','1995-04-25','F'),
('Antonia','Vara','Esarte','34744580','1996-07-23','F'),
('Dolores','Amoros','Cases','71976482','1994-05-25','F'),
('Antonio','Quero','Atienza','76471428','1988-04-16','M'),
('Jose','Valera','Bardal','57354131','1983-05-23','M'),
('Maria Carmen','Palacios','Cholvi','21841380','1986-04-17','F'),
('Maria','Lucena','Nebra','86751787','1991-05-01','F')



-- Carga Datos a la tabla Resultado
-----------------------------------

INSERT INTO Resultado(Participacion,Tiempo_alcanzado,Puesto_obtenido,Id_inscripcion)VALUES--3
(1,'2:20:00',3,2),  
(1,'2:48:00',10,7),
(1,'2:47:40',9,6),
(1,'2:46:53',8,5),
(1,'2:45:43',5,10),
(0,NULL,NULL,20),
(1,'2:16:20',1,23),
(1,'2:18:26',2,19),
(1,'2:58:43',18,14),
(1,'2:25:13',4,4),
(0,NULL,NULL,18),
(1,'2:50:13',11,3),
(1,'2:51:28',12,26),
(1,'2:46:14',6,25),
(1,'2:46:21',7,17),
(0,NULL,NULL,21),
(0,NULL,NULL,22),
(1,'2:53:21',15,24),
(1,'2:52:07',13,1),
(1,'2:52:41',14,8),
(1,'2:58:07',17,9),
(1,'2:57:27',16,11),
(1,'2:59:03',19,16),
(0,NULL,NULL,12),
(0,NULL,NULL,13),
(1,'2:59:37',20,15)


-- Carga Datos a la tabla Auspiciador
-------------------------------------

INSERT INTO Auspiciador(Razon_social,Ruc,Giro_de_negocio)VALUES --3
('Bugati corp','20603805373','Automotriz'),
('Gloria srl','20556468487','Alimentos'),
('Spartan sac','20603858043','Deportes'),
('Gatorade sac','20605275223','Deportes'),
('Puma sport','20504502105','Deportes'),
('Quinua Max srl','20492589846','Alimentos'),
('NutriMix saa','20207548344','Alimentos'),
('Adidas sac','20536800469','Deportes'),
('Pido deport sac','20605396942','Comunicacion'),
('Palomo Msn sac','20524321115','Comunicacion'),
('Barcelona sport','20519481228','Deportes'),
('Rustica sac','20535783650','Alimentos'),
('Luisiana sport','20520611569','Deportes'),
('Capsule corp','20603339399','Tecnologia'),
('Umbrella corp','20504208410','Tecnologia'),
('Popeyes Food','20100922640','Alimentos'),
('Bolt sac','20605239839','Deportes'),
('Medic Sport','20555447605','Tecnologia'),
('Texas saa','20382984537','Deportes')


-- Carga Datos a la tabla Inscripcion
-------------------------------------
INSERT INTO Inscripcion(Id_atleta,Id_carrera,Fecha_de_inscripcion)VALUES--3
(1,1,'2022-09-03'),
(2,1,'2022-10-02'),
(3,1,'2022-10-02'),
(4,1,'2022-10-02'),
(5,1,'2022-10-02'),
(6,1,'2022-10-02'),
(7,1,'2022-10-03'),
(8,1,'2022-10-03'),
(9,1,'2022-10-03'),
(10,1,'2022-10-03'),
(11,1,'2022-10-04'),
(12,1,'2022-10-04'),
(13,1,'2022-10-04'),
(14,1,'2022-10-04'),
(15,1,'2022-10-04'),
(16,1,'2022-10-04'),
(17,1,'2022-10-05'),
(18,1,'2022-10-05'),
(19,1,'2022-10-05'),
(20,1,'2022-10-05'),
(21,1,'2022-10-06'),
(22,1,'2022-10-07'),
(23,1,'2022-10-07'),
(24,1,'2022-10-07'),
(25,1,'2022-10-08'),
(26,1,'2022-10-10')



-- Carga Datos a la tabla Categoria
-----------------------------------
INSERT INTO Categoria(Nombre_categoria,Precio_categoria,Edad_maxima,Edad_minima)VALUES
('Junior',50.40,17,15),
('Adulto',120.50,29,18),
('Senior',111.20,39,30),
('Super senior',73.20,49,40),
('Veteranos',68.40,59,50),
('Super veteranos',89.40,69,60)



-- Carga Datos a la tabla Via
-----------------------------
INSERT INTO Via(Nombre_via,Longitud)VALUES--3
('Av Javier Prado',16.7),
('Paseo la Republica',18.3),
('Paseo Colon',17.7),
('Ovalo Sta Anita',19.2),
('Ovalo Huarochiri',18.4),
('Av Castilla la nueva',13.4),
('Paradero los alamos',15.2),
('Ovalo los condores',16.4)


-- Carga Datos a la tabla Recorrido
-----------------------------------
INSERT INTO Recorrido(Tramo,Id_via,Id_modalidad)VALUES
--5.3
(2.3,1,1),
(1.2,2,1),
(1.8,1,1),
--8.7
(3.4,3,2),
(3.1,4,2),
(2.2,5,2),
--4.3
(2.2,7,3),
(2.1,8,3),
--6.5
(3.3,8,4),
(3.2,1,4),
--7.8
(2.4,3,5),
(2.8,4,5),
(2.6,3,5)



-- Carga Datos a la tabla Modalidad
-----------------------------------

INSERT INTO Modalidad(Nombre_modalidad,Distancia)VALUES--3
('Media distancia',5.3),
('Larga distancia',8.7),
('Obstaculos',4.3),
('Puntos',6.5),
('Eliminacion',7.8)



-- Carga Datos a la tabla Gasto
-------------------------------
INSERT INTO Gasto(Fecha_gasto,Rubro,Monto_gasto,Id_carrera)VALUES
('2022-10-10','Papeleria',170.50,1),
('2022-10-10','Promocion',535.20,1),
('2022-10-12','Seguridad',1180.3,1)







