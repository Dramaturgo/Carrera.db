
-- =============================================
-- Seleccionar la Base de Datos
-- =============================================

USE Carreras;
go

-- Si las tablas existen, hay que eliminarlas
---------------------------------------------

IF OBJECT_ID('Evento') IS NOT NULL
DROP TABLE Evento

go

IF OBJECT_ID('Carrera') IS NOT NULL
DROP TABLE Carrera

go

IF OBJECT_ID('Categoria') IS NOT NULL
DROP TABLE Categoria

go

IF OBJECT_ID('Modalidad') IS NOT NULL
DROP TABLE Modalidad

go

IF OBJECT_ID('Via') IS NOT NULL
DROP TABLE Via

go

IF OBJECT_ID('Auspiciador') IS NOT NULL
DROP TABLE Auspiciador

go

IF OBJECT_ID('Financiamiento') IS NOT NULL
DROP TABLE Financiamiento

go

IF OBJECT_ID('Atleta') IS NOT NULL
DROP TABLE Atleta

go

IF OBJECT_ID('Inscripcion') IS NOT NULL
DROP TABLE Inscripcion

go

IF OBJECT_ID('Resultado') IS NOT NULL
DROP TABLE Resultado

go

IF OBJECT_ID('Recorrido') IS NOT NULL
DROP TABLE Recorrido

go

IF OBJECT_ID('Gasto') IS NOT NULL
DROP TABLE Gasto

go


--creación de tablas


CREATE TABLE Evento(
Id_evento INT IDENTITY (1,1) NOT NULL,
Fecha_evento DATE 
)

CREATE TABLE Carrera(
Id_carrera INT IDENTITY (1,1) NOT NULL,
Codigo_carrera AS ('C'+ RIGHT('0000'+  CONVERT(VARCHAR,Id_carrera),(4))),
Nombre_carrera VARCHAR(60) NOT NULL,
Pendiente BIT,
Culminada BIT,
Id_categoria INT NOT NULL,
Id_Modalidad INT NOT NULL,
Id_evento INT NOT NULL
)

go

CREATE TABLE Categoria(
Id_categoria INT IDENTITY(1,1) NOT NULL,
Nombre_categoria VARCHAR(30) NOT NULL,
Precio_categoria FLOAT NOT NULL,
Edad_maxima TINYINT NOT NULL,
Edad_minima TINYINT NOT NULL
) 

go

CREATE TABLE Modalidad(
Id_modalidad INT IDENTITY(1,1) NOT NULL,
Nombre_modalidad VARCHAR(30) NOT NULL,
Distancia DECIMAL(2,1) NOT NULL
)

go

CREATE TABLE Via(
Id_via INT IDENTITY(1,1) NOT NULL,
Codigo_via AS ('V'+RIGHT('0000'+ CONVERT(VARCHAR,Id_Via),(4))),
Nombre_via VARCHAR(30)NOT NULL,
Longitud DECIMAL(4,2)NOT NULL,
)

go

CREATE TABLE Auspiciador(
Id_auspiciador INT IDENTITY(1,1) NOT NULL,
Razon_social VARCHAR(50) NOT NULL UNIQUE,
Ruc CHAR(11) NOT NULL,
Giro_de_negocio VARCHAR(40)
)

go

CREATE TABLE Financiamiento(
Id_financiamiento INT IDENTITY(1,1) NOT NULL,
Dinero BIT,
Suministro BIT,
Monto_dinero MONEY,
Cantidad_suministro INT,
Descripcion NTEXT,
Id_auspiciador INT NOT NULL,
Id_carrera INT NOT NULL
)


CREATE TABLE Atleta(
Id_atleta INT IDENTITY(1,1) NOT NULL,
Nombre_atleta VARCHAR(30) NOT NULL,
Apellido_p VARCHAR(20) NOT NULL,
Apellido_m VARCHAR(20)NOT NULL,
NumDocumento VARCHAR(10) NOT NULL,
Fecha_nacimiento DATE NOT NULL,
Sexo CHAR(1) NOT NULL
)

go

CREATE TABLE Inscripcion (
Id_Inscripcion INT IDENTITY NOT NULL,
Id_atleta INT NOT NULL,
Id_carrera INT NOT NULL,
Fecha_de_inscripcion DATE NOT NULL
)

go


CREATE TABLE Recorrido(
Id_recorrido INT IDENTITY(1,1) NOT NULL,
Tramo DECIMAL(2,1) NOT NULL,
Id_via INT NOT NULL,
Id_modalidad INT NOT NULL
)

go

CREATE TABLE Resultado(
Id_inscipcion INT NOT NULL,
Participacion BIT NOT NULL,
Tiempo_alcanzado TIME(0),
Puesto_obtenido INT
)

go

CREATE TABLE Gasto(
Id_gasto INT IDENTITY(1,1)NOT NULL,
Fecha_gasto DATE NOT NULL,
Rubro VARCHAR(30)NOT NULL,
Monto_gasto MONEY NOT NULL,
Id_carrera INT NOT NULL
)

go



