CREATE DATABASE VideoClubEj2
GO
USE VideoClubEj2
GO

CREATE TABLE Pelicula
(
Id int identity NOT NULL,
Titulo varchar(50),
Genero varchar(50),
FechaBaja DateTime,
PRIMARY KEY(Id),
)

CREATE TABLE Alquiler
(
Id int identity NOT NULL,
PeliculaID int,
Fecha DateTime,
Precio numeric(18,2),
PRIMARY KEY(Id),
FOREIGN KEY (PeliculaID) REFERENCES Pelicula(Id),
)