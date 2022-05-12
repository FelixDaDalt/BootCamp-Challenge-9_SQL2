CREATE DATABASE KioscoEj1
GO
USE KioscoEj1
GO
CREATE TABLE Producto
(
	Id INT identity,
	Nombre varchar(50),
	Categoria varchar(50),
	FechaBaja DateTime,
	PRIMARY KEY(Id)

)

CREATE TABLE Caracteristicas
(
	Id int identity,
	ProductoID int,
	Precio numeric(18,2),
	Ancho numeric(18,2),
	Largo numeric(18,2),
	Peso numeric(18,2),
	PRIMARY KEY(Id),
	FOREIGN KEY (ProductoID) REFERENCES Producto(Id)

)