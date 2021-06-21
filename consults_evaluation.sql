/* Listado nombre del videojuego + nombre de la distribuidora */

SELECT d.Nombre as 'Distribuidora',v.Nombre as 'Videojuego distribuido' from Distribuidora as d  
INNER JOIN  Videojuego as v
on d.id_distribuidora = v.id_distribuidora

/* Todas las compras de una persona, agrego los datos y después hago el JOIN para ver el las compras de esa persona */
insert into Compra (id_persona,id_videojuego,fecha_de_compra)
values ('3','5','2019-11-23')
insert into Compra (id_persona,id_videojuego,fecha_de_compra)
values ('3','4','2019-11-23')
insert into Compra (id_persona,id_videojuego,fecha_de_compra)
values ('3','7','2019-11-23')
insert into Compra (id_persona,id_videojuego,fecha_de_compra)
values ('3','3','2019-11-23')
insert into Compra (id_persona,id_videojuego,fecha_de_compra)
values ('3','10','2019-11-23')

SELECT p.Nombre as 'COMPRADOR',v.Nombre as 'Juego Comprado', v.precio,c.fecha_de_compra from Videojuego as v
INNER JOIN Compra as c 
ON v.id_videojuego = c.id_videojuego
INNER JOIN Persona as p
ON c.id_persona = p.id_persona WHERE c.id_persona = 3

/* Nombre de la distribuidora que comienze con P */

SELECT Nombre as 'Nombres con P' from Distribuidora
WHERE Nombre like 'P%'

SELECT Nombre from Distribuidora

/* Nombre del articulo + nombre de la distribuidora */

SELECT d.nombre as 'Distribuidora',a.nombre as 'Articulo distribuido' from distribuidora as d  
JOIN articulo as a
on d.id_distribuidora = a.id_distribuidora

/* Calcular el promedio de los precios*/
SELECT avg (precio) as 'promedio'
from articulo
