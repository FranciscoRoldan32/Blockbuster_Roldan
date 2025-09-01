
INSERT INTO genero (nombre_genero) VALUES
('Acción'),
('Aventura'),
('Animación'),
('Comedia'),
('Crimen'),
('Drama'),
('Fantasía'),
('Horror'),
('Misterio'),
('Romance'),
('Ciencia Ficción'),
('Thriller'),
('Deporte'),
('Guerra'),
('Western');

INSERT INTO usuarios (nombre, apellido, email) VALUES
('Lucas', 'Fernández', 'lucas.fernandez@mail.com'),
('María', 'Gómez', 'maria.gomez@mail.com'),
('Julián', 'Martínez', 'julian.martinez@mail.com'),
('Carla', 'López', 'carla.lopez@mail.com'),
('Diego', 'Ramírez', 'diego.ramirez@mail.com'),
('Sofía', 'Pérez', 'sofia.perez@mail.com');

INSERT INTO peliculas (titulo, genero, anio, tiempo) VALUES
('Terminator 2: Judgment Day', 1, 1991, 137),   -- Acción
('Jurassic Park',2, 1993, 127),                -- Aventura
('Toy Story', 3, 1995, 81),                     -- Animación
('The Mask', 4, 1994, 101),                     -- Comedia
('The Godfather', 5, 1972, 175),                -- Crimen
('Forrest Gump', 6, 1994, 142),                 -- Drama
('The Lord of the Rings: The Fellowship of the Ring', 7, 2001, 178), -- Fantasía
('The Conjuring', 8, 2013, 112),               -- Horror
('La La Land', 10, 2016, 128),                  -- Musical
('Se7en', 9, 1995, 127),                       -- Misterio
('Titanic', 10, 1997, 195),                     -- Romance
('Interstellar', 11, 2014, 169),                -- Ciencia Ficción
('Inception', 11, 2010, 148),                   -- Thriller
('Raging Bull', 13, 1980, 129),                 -- Deporte
('Saving Private Ryan', 14, 1998, 169),         -- Guerra
('The Good, the Bad and the Ugly', 15, 1966, 178); -- Western

insert INTO actores(nombre_actor) values
('Arnold Schwarzenegger'),
('Sam Neill'),
('Tom Hanks'),
('Jim Carrey'),
('Al Pacino'),
('Viggo Mortensen'),
('Vera Farmiga'),
('Ryan Gosling'),
('Brad Pitt'),
('Leonardo Di Caprio'),
('Matthew McConaughey'),
('Robert De Niro'),
('Clint Eastwood');

insert into peliculas_y_actores (id_actor, id_pelicula ) values
(1,17),
(2,18),
(3,19),
(3,22),
(3,31),
(4,20),
(5,21),
(6,23),
(7,24),
(8,25),
(9,26),
(10,27),
(11,28),
(11,29),
(12,30),
(13,32);

INSERT INTO reproducciones (id_usuario, id_pelicula, fecha_reproduccion) VALUES
(1, 17, '2023-01-15'),
(2, 18, '2023-02-20'),
(3, 19, '2023-03-10'),
(4, 20, '2023-04-05'),
(5, 21, '2023-05-12'),
(6, 22, '2023-06-18'),
(1, 23, '2023-07-25'),
(2, 24, '2023-08-30'),
(3, 25, '2023-09-14'),
(4, 26, '2023-10-21'),
(5, 27, '2023-11-03'),
(6, 28, '2023-12-19'),
(1, 29, '2024-01-08'),
(2, 30, '2024-02-17'),
(3, 31, '2024-03-22'),
(4, 32, '2024-04-09'),
(5, 17, '2024-05-15'),
(6, 18, '2024-06-28'),
(1, 19, '2024-07-13'),
(2, 27, '2024-08-05'),
(3, 28, '2024-09-11'),
(4, 29, '2024-10-23'),
(5, 30, '2024-11-07'),
(6, 31, '2024-12-01'),
(1, 32, '2024-12-20');



