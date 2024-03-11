create database UHFC
USE UFHC
create table Jugador
(id int,
 nombre varchar(50),
 edad int
 )

 create table entrenador
 (
 id int primary key identity (1,1),
 nombre varchar(50),
 titulos varchar(150)
 )
 --Ingreso jugadores registro

 insert into Jugador (id,nombre,edad) values (1, 'Kevin Chamorro',25)
 insert into Jugador (id,nombre,edad) values (1, 'Douglas Sequeira',22)

 --Consulta registro
 select id,nombre,edad from Jugador
 select nombre from Jugador
 select * from Jugador where edad=22

 select* from entrenador
 select * from Jugador

 --borrar un registro
 delete jugador where id=1

 --Actualizar un registro
 update Jugador set edad= 20 where id=2