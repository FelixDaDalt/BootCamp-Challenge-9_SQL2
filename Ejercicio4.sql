CREATE DATABASE ClinicaEj4
GO
USE ClinicaEj4
GO

CREATE TABLE TipoEstudio
(
Id int identity,
Descripcion varchar(50),
FechaBaja DateTime,
PRIMARY KEY(Id),
)

CREATE TABLE TipoEmpleado
(
Id int identity,
Descripcion varchar(50),
FechaBaja DateTime,
PRIMARY KEY(Id),
)

CREATE TABLE Paciente
(
Id int identity,
Nombre varchar(150),
Apellido varchar(150),
DNI varchar(50),
Direccion varchar(250),
PRIMARY KEY(Id),
)

CREATE TABLE Empleado
(
Id int identity,
TipoEmpleadoId int,
Nombre varchar(150),
Apellido varchar(150),
DNI varchar(50),
Legajo varchar(50),
PRIMARY KEY(Id),
FOREIGN KEY (TipoEmpleadoId) REFERENCES TipoEmpleado(Id),
)

CREATE TABLE Estudio
(
Id int identity,
TipoEstudioId int,
EmpleadoId int,
Fecha Datetime,
Informe varchar(250),
PRIMARY KEY(Id),
FOREIGN KEY (TipoEstudioId) REFERENCES TipoEstudio(Id),
FOREIGN KEY (EmpleadoId) REFERENCES Empleado(Id),
)