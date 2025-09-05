select * from idiomas_peliculas;
select * from reproducciones;
select * from usuarios;
select * from genero;
select * from peliculas;

select *from peliculas_con_idiomas;
select * from peliculas_mas_vistas;
select * from usuario_mas_activo;

select peliculas_por_actor('Tom Hanks');
select peliculas_por_genero(11);

CALL agregar_pelicula('Matrix', 11, 1999, 136);