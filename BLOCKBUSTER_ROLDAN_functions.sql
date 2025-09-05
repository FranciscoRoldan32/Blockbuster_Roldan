DELIMITER //

CREATE FUNCTION peliculas_por_actor(nombre_actor VARCHAR(100))
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE total INT;

    SELECT COUNT(DISTINCT pa.id_pelicula)
    INTO total
    FROM peliculas_y_actores pa
    JOIN actores a ON pa.id_actor = a.id_actor
    WHERE a.nombre_actor = nombre_actor;

    RETURN total;
END //

DELIMITER ;

DELIMITER //
CREATE FUNCTION peliculas_por_genero(genero_id INT)
RETURNS TEXT
DETERMINISTIC
BEGIN
    DECLARE lista TEXT;
    SELECT GROUP_CONCAT(titulo SEPARATOR ', ') INTO lista
    FROM peliculas
    WHERE genero = genero_id;
    RETURN lista;
END//
DELIMITER ;