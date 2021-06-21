/* BASE DE DATOS COMPRA-VENTA DE VIDEOJUEGOS */

/* Creo la base de datos */

create database Compra_Venta_VIDEOJUEGOS;

/* Creo las TABLAS */

/* TABLA Persona (Seria el cliente a comprar el juego) */
create table Persona(
    id_persona int identity(1,1),
    Nombre varchar(20) not null,
    Apellido varchar(20) not null,
    Pais varchar(15) not null,
    Email varchar(30) not null,
    Fecha_de_nacimiento date not null,
    Telefono int not null,
    primary key(id_persona)
);

/* TABLA Compra (Aca se guardan los registros de compra) */
create table Compra(
  id_compra int identity(1,1),
  id_persona int not null,
  id_videojuego int not null,
  fecha_de_compra date not null,
  primary key(id_compra)
);

/* TABLA Distribuidora (Aca se guardan los registros del distribuidor del juego) */
create table Distribuidora(
    id_distribuidora int identity(1,1),
    Nombre varchar(20) not null UNIQUE,
    Email varchar(30) not null,
    Telefono int not null,
    primary key(id_distribuidora)
);

/* TABLA Videojuego (Aca se guardan los registros de los videojuegos a comprar) */
create table Videojuego(
    id_videojuego int identity(1,1),
    Nombre varchar(20) not null,
    Genero varchar(20) not null,
    Desarrollador varchar(20) not null,
    Pegi int not null,
    Plataforma varchar(15) not null,
    Precio float not null,
    id_distribuidora int not null,
    FOREIGN KEY (id_distribuidora) REFERENCES Distribuidora (id_distribuidora),
    primary key(id_videojuego)
);

/* Para eliminar las tablas */

drop table Compra;
drop table Persona;
drop table Distribuidora;
drop table Videojuego;

/* Ingreso los registros a cada tabla*/

/* Ingreso los registros de Persona*/

insert into Persona (Nombre,Apellido,Pais,Email,Fecha_de_nacimiento,Telefono)
values ('Juan','Castelli','Argentina','juanicaste@gmail.com','1998-10-23','615308')
insert into Persona (Nombre,Apellido,Pais,Email,Fecha_de_nacimiento,Telefono)
values ('Monica','Holowaty','Polonia','monbea@outlook.com','1963-05-05','612345')
insert into Persona (Nombre,Apellido,Pais,Email,Fecha_de_nacimiento,Telefono)
values ('Marcelo','Heine','Italia','marceok@gmail.com','1970-11-12','423434')
insert into Persona (Nombre,Apellido,Pais,Email,Fecha_de_nacimiento,Telefono)
values ('Nachin','Cardozo','Argentina','nachoo12@gmail.com','1993-05-17','485209')
insert into Persona (Nombre,Apellido,Pais,Email,Fecha_de_nacimiento,Telefono)
values ('Seba','Gomez','Colombia','sepaok@yahoo.com','2001-02-28','687234')
insert into Persona (Nombre,Apellido,Pais,Email,Fecha_de_nacimiento,Telefono)
values ('Santiago','Cordoba','Uruguay','santicor@hotmail.com','1999-07-29','489090')
insert into Persona (Nombre,Apellido,Pais,Email,Fecha_de_nacimiento,Telefono)
values ('Marcos','Castelli','Argentina','marcosgush@gmail.com','1963-05-07','493377')
insert into Persona (Nombre,Apellido,Pais,Email,Fecha_de_nacimiento,Telefono)
values ('Brenda','Santos','Brasil','brendu17@gmail.com','2000-11-17','518982')
insert into Persona (Nombre,Apellido,Pais,Email,Fecha_de_nacimiento,Telefono)
values ('Juan Pablo','Lopez','Uruguay','juanpablin@yahoo.com','2005-04-25','415672')
insert into Persona (Nombre,Apellido,Pais,Email,Fecha_de_nacimiento,Telefono)
values ('Franco','Castelli','Argentina','frankycaste@hotmail.com','2003-10-15','618245')

/* Ingreso los registros de Compra (aca deben ir las ids vistas en las anteriores tablas,*/
/* Dependiendo del juego a elegir y la persona que lo compre.*/

insert into Compra (id_persona,id_videojuego,fecha_de_compra)
values ('1','5','2019-11-23')
insert into Compra (id_persona,id_videojuego,fecha_de_compra)
values ('6','4','2019-11-23')
insert into Compra (id_persona,id_videojuego,fecha_de_compra)
values ('5','7','2019-11-23')
insert into Compra (id_persona,id_videojuego,fecha_de_compra)
values ('2','3','2019-11-23')
insert into Compra (id_persona,id_videojuego,fecha_de_compra)
values ('8','10','2019-11-23')
insert into Compra (id_persona,id_videojuego,fecha_de_compra)
values ('7','3','2019-11-23')
insert into Compra (id_persona,id_videojuego,fecha_de_compra)
values ('9','3','2019-11-23')
insert into Compra (id_persona,id_videojuego,fecha_de_compra)
values ('4','2','2019-11-23')
insert into Compra (id_persona,id_videojuego,fecha_de_compra)
values ('5','11','2019-11-23')
insert into Compra (id_persona,id_videojuego,fecha_de_compra)
values ('10','4','2019-11-23')

/* Ingreso los registros de Distribuidora*/

insert into Distribuidora (Nombre,Email,Telefono)
values ('Steam','steamsupport@steam.com','0111414141')
insert into Distribuidora (Nombre,Email,Telefono)
values ('Battle Net','blizzsupport@battlenet.com','0111654721')
insert into Distribuidora (Nombre,Email,Telefono)
values ('Epic Games','epicsupport@epic.com','0111671231')
insert into Distribuidora (Nombre,Email,Telefono)
values ('PS Store','psnsupport@sony.com','0111321456')
insert into Distribuidora (Nombre,Email,Telefono)
values ('Wargaming','wotsupport@wargaming.com','0332414859')
insert into Distribuidora (Nombre,Email,Telefono)
values ('Microsoft Store','microsupport@microsoft.com','0111408715')
insert into Distribuidora (Nombre,Email,Telefono)
values ('Uplay','uplaysupport@ubisoft.com','0233141723')
insert into Distribuidora (Nombre,Email,Telefono)
values ('Origin','easupport@origin.com','0222618657')
insert into Distribuidora (Nombre,Email,Telefono)
values ('GOG','gogsupport@cdproyeckt.com','0333158960')
insert into Distribuidora (Nombre,Email,Telefono)
values ('Rockstar Store','rockstoresupport@rockstar.com','0111634545')

/* Ingreso los registros de Videojuego*/

insert into Videojuego (Nombre,Genero,Desarrollador,Pegi,Plataforma,Precio,id_distribuidora)
values ('God of War','Sandbox','Santa Monica','18','PS4','1999.99','4')
insert into Videojuego (Nombre,Genero,Desarrollador,Pegi,Plataforma,Precio,id_distribuidora)
values ('Fortnite','MMO','Epic Games','7','PC','120.00','3')
insert into Videojuego (Nombre,Genero,Desarrollador,Pegi,Plataforma,Precio,id_distribuidora)
values ('The Last of Us','Sandbox','Naugth Dog','18','PS4','699.99','4')
insert into Videojuego (Nombre,Genero,Desarrollador,Pegi,Plataforma,Precio,id_distribuidora)
values ('Counter Strike GO','Shooter','Valve','16','PC','230.99','1')
insert into Videojuego (Nombre,Genero,Desarrollador,Pegi,Plataforma,Precio,id_distribuidora)
values ('World of Warcraft','MMO','Blizzard','12','PC','898.50','2')
insert into Videojuego (Nombre,Genero,Desarrollador,Pegi,Plataforma,Precio,id_distribuidora)
values ('Warcraft III','Estrategia','Blizzard','12','PC','380.60','2')
insert into Videojuego (Nombre,Genero,Desarrollador,Pegi,Plataforma,Precio,id_distribuidora)
values ('Halo','Shooter','Bungie','16','XBOX ONE','2100.99','6')
insert into Videojuego (Nombre,Genero,Desarrollador,Pegi,Plataforma,Precio,id_distribuidora)
values ('The Witcher 3','Rol','CD Proyekt','18','PS4','599.99','9')
insert into Videojuego (Nombre,Genero,Desarrollador,Pegi,Plataforma,Precio,id_distribuidora)
values ('Battefield 4','Shooter','EA','16','PC','1599.99','8')
insert into Videojuego (Nombre,Genero,Desarrollador,Pegi,Plataforma,Precio,id_distribuidora)
values ('GTA V','Sandbox','Rockstar Games','18','PS4','399.99','10')
insert into Videojuego (Nombre,Genero,Desarrollador,Pegi,Plataforma,Precio,id_distribuidora)
values ('Assassins Creed','Sandbox','Ubisoft','16','PC','780.99','7')
insert into Videojuego (Nombre,Genero,Desarrollador,Pegi,Plataforma,Precio,id_distribuidora)
values ('World of Tanks','MMO','Wargaming Games','7','PC','0.00','5')
insert into Videojuego (Nombre,Genero,Desarrollador,Pegi,Plataforma,Precio,id_distribuidora)
values ('MASS EFFECT','Rol','Bioware','16','XBOX ONE','1110.50','8')

/* Para ingresar algun juego mas */
insert into Videojuego (Nombre,Genero,Desarrollador,Pegi,Plataforma,Precio,id_distribuidora)
values ('','','','','','','')

/* Para ingresar alguna compra mas */
insert into Compra (id_persona,id_videojuego,fecha_de_compra)
values ('','','')

/* COMPRAS */

/*Veo los juegos que han sido comprados*/

select v.Nombre,v.Genero,v.Plataforma,v.Precio from Videojuego as v 
join Compra as c 
on v.id_videojuego = c.id_videojuego

/*Veo los personas que han comprado dichos juegos*/

select p.Nombre,p.Fecha_de_nacimiento,p.Telefono from Persona as p 
join Compra as c
on p.id_persona = c.id_persona

/*Veo las distribuidoras de dichos juegos*/

select d.Nombre as 'Tienda',v.Nombre,d.Email,d.Telefono,v.Precio from Distribuidora as d  
join  Videojuego as v
on d.id_distribuidora = v.id_distribuidora

/* Veo todo lo anterior junto */

select p.Nombre as 'COMPRADOR',v.Nombre as 'Juego Comprado', v.precio,d.nombre as 'Distribuidora' from Persona as p
JOIN Compra as c 
ON c.id_persona = p.id_persona
JOIN Videojuego as v 
ON v.id_videojuego = c.id_videojuego
JOIN Distribuidora as d
ON d.id_distribuidora = v.id_distribuidora

/*Veo todas las tablas con sus datos*/

select * from Compra;
select * from Persona;
select * from Videojuego;
select * from Distribuidora;
