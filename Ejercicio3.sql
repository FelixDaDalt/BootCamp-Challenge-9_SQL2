CREATE DATABASE ConcesionariaEj3
GO
USE ConcesionariaEj3
GO

CREATE TABLE Vehiculo
(
Id int identity NOT NULL,
Marca varchar(50),
Modelo varchar(50),
Importe varchar(50),
FechaBaja DateTime,
PRIMARY KEY(Id),
)

CREATE TABLE Cliente
(
Id int identity NOT NULL,
Nombre varchar(50),
Apellido varchar(50),
DNI varchar(50),
Direccion varchar(50),
PRIMARY KEY(Id),
)

CREATE TABLE Vendedor
(
Id int identity NOT NULL,
Nombre varchar(50),
Apellido varchar(50),
DNI INT,
PRIMARY KEY (Id)
)

CREATE TABLE Venta
(
Id int identity NOT NULL,
VehiculoID int,
ClienteID int,
VendedorID int,
Importe numeric(18,2),
Descuento numeric(18,2),
Fecha Datetime,
PRIMARY KEY(Id),
FOREIGN KEY (VehiculoID) REFERENCES Vehiculo(Id),
FOREIGN KEY (ClienteID) REFERENCES Cliente(Id),
FOREIGN KEY (VendedorID) REFERENCES Vendedor(Id),
)