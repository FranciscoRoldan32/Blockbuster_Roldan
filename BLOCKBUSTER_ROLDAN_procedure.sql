DELIMITER //

CREATE PROCEDURE registrar_reproduccion(
    IN p_id_usuario INT,
    IN p_id_pelicula INT,
    IN p_fecha DATE
)
BEGIN
    INSERT INTO reproducciones (id_usuario, id_pelicula, fecha_reproduccion)
    VALUES (p_id_usuario, p_id_pelicula, p_fecha);
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE agregar_pelicula (
    IN p_titulo VARCHAR(100),
    IN p_genero int,
    IN p_anio INT,
    IN p_tiempo INT
)
BEGIN
    INSERT INTO peliculas (titulo, genero, anio, tiempo)
    VALUES (p_titulo, p_genero, p_anio, p_tiempo);
END //

DELIMITER ;