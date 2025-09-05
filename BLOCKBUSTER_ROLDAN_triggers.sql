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

DELIMITER //
create trigger validacion_pelicula_repetida
before insert on peliculas
for each row 
	BEGIN
    IF EXISTS (SELECT 1 FROM peliculas WHERE titulo = NEW.titulo) THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Ya existe una película con ese título';
    END IF;
END //

DELIMITER ;