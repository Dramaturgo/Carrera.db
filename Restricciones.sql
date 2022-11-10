-- =============================================
-- Seleccionar la Base de Datos
-- =============================================

USE Carreras;
go

-- PRIMARY KEY
--------------

ALTER TABLE Evento--1
	ADD CONSTRAINT pk_Evento
	PRIMARY KEY (Id_evento)
go

ALTER TABLE Atleta--1
	ADD CONSTRAINT pk_Atleta
	PRIMARY KEY (Id_Atleta)
go

ALTER TABLE Resultado--1
	ADD CONSTRAINT pk_Resultado
	PRIMARY KEY (Id_inscripcion)
go

ALTER TABLE Auspiciador--1
	ADD CONSTRAINT pk_Auspiciador
	PRIMARY KEY (Id_auspiciador)
go

ALTER TABLE Financiamiento--1
	ADD CONSTRAINT pk_Financiamiento
	PRIMARY KEY (Id_financiamiento)
go


ALTER TABLE Categoria--1
	ADD CONSTRAINT pk_Categoria
	PRIMARY KEY (Id_categoria)
go

ALTER TABLE Modalidad--1
	ADD CONSTRAINT pk_Modalidad
	PRIMARY KEY (Id_modalidad)
go

ALTER TABLE Carrera--1
	ADD CONSTRAINT pk_Carrera
	PRIMARY KEY (Id_carrera)
go

ALTER TABLE Inscripcion--1
	ADD CONSTRAINT pk_Inscripcion
	PRIMARY KEY (Id_inscripcion)
go

ALTER TABLE Via--1
	ADD CONSTRAINT pk_Via
	PRIMARY KEY (Id_via)
go

ALTER TABLE Recorrido--1
	ADD CONSTRAINT pk_Recorrido
	PRIMARY KEY (Id_recorrido)
go

ALTER TABLE Gasto--1
	ADD CONSTRAINT pk_Gasto
	PRIMARY KEY (Id_gasto)
go

-- FOREIGN KEY
--------------

--Financiamiento-Auspiciador
ALTER TABLE Financiamiento --2
    ADD CONSTRAINT fk_Auspiciador
	FOREIGN KEY (Id_auspiciador)REFERENCES Auspiciador(Id_auspiciador)
go
--Financiamiento-Carrera
ALTER TABLE Financiamiento
    ADD CONSTRAINT fk_Carrera2 --2
	FOREIGN KEY(Id_carrera)REFERENCES Carrera(Id_carrera)
go

--Carrera-Categoria
ALTER TABLE Carrera --2
    ADD CONSTRAINT fk_Categoria 
	FOREIGN KEY (Id_categoria)REFERENCES Categoria(Id_categoria)
go
--Carrera-Modalidad
ALTER TABLE Carrera 
    ADD CONSTRAINT fk_Modalidad --2
	FOREIGN KEY (Id_modalidad)REFERENCES Modalidad(Id_modalidad)
go

--Carrera-Evento
ALTER TABLE Carrera 
    ADD CONSTRAINT fk_Evento --2
	FOREIGN KEY (Id_evento)REFERENCES Evento(Id_evento)
go


--Inscripcion-Carrera
ALTER TABLE Inscripcion 
    ADD CONSTRAINT fk_Carrera --2
	FOREIGN KEY (Id_carrera)REFERENCES Carrera(Id_carrera)
go
--Inscripcion-Atleta
ALTER TABLE Inscripcion 
    ADD CONSTRAINT fk_Atleta 
	FOREIGN KEY (Id_atleta)REFERENCES Atleta(Id_atleta)
go
--Recorrido-Via
ALTER TABLE Recorrido 
    ADD CONSTRAINT fk_Via--2 
	FOREIGN KEY(Id_via)REFERENCES VIA(Id_via)
go
--Recorrido-Modalidad
ALTER TABLE Recorrido 
    ADD CONSTRAINT fk_Modalidad2 --2
	FOREIGN KEY (Id_modalidad)REFERENCES Modalidad(Id_modalidad)

--Resultado-Inscripcion
ALTER TABLE Resultado
    ADD CONSTRAINT fk_Inscripcion2--2
	FOREIGN KEY (Id_inscripcion)REFERENCES Inscripcion(Id_inscripcion)




--Inscripcion-Atleta
ALTER TABLE Inscripcion
    ADD CONSTRAINT fk_Atleta2--2
	FOREIGN KEY (Id_atleta)REFERENCES Atleta(Id_atleta)

--Inscripcion-Carrera

ALTER TABLE Inscripcion
    ADD CONSTRAINT fk_Carrera4--2
	FOREIGN KEY (Id_carrera)REFERENCES Carrera(Id_carrera)

--Gasto-Carrera

ALTER TABLE Gasto
    ADD CONSTRAINT fk_Carrera3 --2
	FOREIGN KEY (Id_carrera)REFERENCES Carrera(Id_carrera)












