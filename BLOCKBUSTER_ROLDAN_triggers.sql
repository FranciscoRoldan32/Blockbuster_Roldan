DELIMITER //

CREATE TRIGGER validacion_reproduccion
BEFORE INSERT ON reproducciones
FOR EACH ROW
BEGIN
    IF (NEW.id_usuario IS NULL OR NEW.id_pelicula IS NULL) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Usuario o película inválido';
    END IF;
END //

DELIMITER ;