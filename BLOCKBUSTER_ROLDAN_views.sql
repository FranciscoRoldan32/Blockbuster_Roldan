create view peliculas_con_genero as 
select 
	p.titulo, 
    g.nombre_genero as genero,
    p.anio
from peliculas p
join genero g on p.genero = id_genero;

CREATE VIEW peliculas_mas_vistas AS
SELECT 
    p.id_pelicula,
    p.titulo,
    g.nombre_genero AS genero,
    COUNT(r.id_reproduccion) AS total_reproducciones
FROM reproducciones r
JOIN peliculas p ON r.id_pelicula = p.id_pelicula
JOIN genero g ON p.genero = g.id_genero
GROUP BY p.id_pelicula, p.titulo, g.nombre_genero
ORDER BY total_reproducciones DESC;