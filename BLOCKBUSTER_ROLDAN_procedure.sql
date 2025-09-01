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