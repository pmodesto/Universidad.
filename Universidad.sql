/*
pamela modesto
isamar
javier
*/

create database universidadDB
go

use universidadDB
go

create table aula
(
	id int identity(1,1) not null primary key,
	lugar varchar(50)
);

go

create table profesor
(
	id int identity(1,1) not null primary key,
	nombre varchar(50)
);

go

create table materia
(
	id int identity(1,1) not null primary key,
	nombre varchar(50),
	profesorID int foreign key references profesor(id)
);

go

insert into aula
values
('0230'),
('0503'),
('0218'),
('0334'),
('0123'),
('0415'),
('0235'),
('0128'),
('0528'),
('0536');

go

insert into profesor
values
('pedro'),
('juan'),
('jose'),
('lucas'),
('maria'),
('josefa'),
('carla'),
('rose'),
('rafael'),
('samuel');

go

insert into materia
values
('matematica',1),
('sociales',2),
('fisica',3),
('quimica',4),
('deporte',5),
('electricidad',6),
('circuitos',7),
('base de datos',8),
('logica',9),
('calculo',10);