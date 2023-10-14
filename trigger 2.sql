-- Creación de la tabla log_alumno --
USE sistemaescolar_taddeocordoba;
CREATE TABLE IF NOT EXISTS log_alumno (
  ID_LOG INT NOT NULL AUTO_INCREMENT,
  ACCION VARCHAR(45) NOT NULL,
  USUARIO VARCHAR(45) NOT NULL,
  DETALLE VARCHAR(100) NOT NULL,
  FECHA DATETIME NOT NULL,
  PRIMARY KEY (ID_LOG)
);

-- Creación del trigger para el log de auditoría de eliminación de la tabla alumno --
DELIMITER $$
CREATE TRIGGER log_before_delete_alumno
BEFORE DELETE ON alumno
FOR EACH ROW
BEGIN
	INSERT INTO log_alumno (ID_LOG, ACCION, USUARIO, DETALLE, FECHA)
	VALUES (NULL, 'DELETE', CURRENT_USER(), CONCAT('SE ELIMINÓ EL ALUMNO CON ID_LEGAJO = ', OLD.ID_LEGAJO), NOW());
END
$$
DELIMITER ;
