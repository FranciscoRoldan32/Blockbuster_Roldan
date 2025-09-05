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

CREATE VIEW peliculas_con_directores AS
SELECT 
    p.titulo AS Pelicula,
    p.anio AS Año,
    d.nombre AS Director
FROM peliculas p
INNER JOIN directores_y_peliculas dp ON p.id_pelicula = dp.id_pelicula
INNER JOIN directores d ON dp.id_director = d.id_directores
ORDER BY p.anio;

CREATE VIEW peliculas_con_idiomas as 
select 
	p.titulo,
    pa.idioma,
    if(pa.subtitulada= 1,'si','no') as subtitulo
    from idiomas_peliculas pa 
    inner join peliculas p on pa.id_pelicula = p.id_pelicula ;
    
CREATE OR REPLACE VIEW usuario_mas_activo AS
SELECT 
    u.id_usuario,
    u.nombre,
    u.apellido,
    COUNT(r.id_pelicula) AS cantidad_vistas
FROM usuarios u
JOIN reproducciones r ON u.id_usuario = r.id_usuario
GROUP BY u.id_usuario, u.nombre, u.apellido
ORDER BY cantidad_vistas DESC
LIMIT 1;