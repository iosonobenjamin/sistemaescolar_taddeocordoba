-- Creación de la tabla log_asistencia_cursada --
USE sistemaescolar_taddeocordoba;
CREATE TABLE IF NOT EXISTS log_asistencia_cursada (
  ID_LOG INT NOT NULL AUTO_INCREMENT,
  ACCION VARCHAR(45) NOT NULL,
  USUARIO VARCHAR(45) NOT NULL,
  DETALLE VARCHAR(100) NOT NULL,
  FECHA DATETIME NOT NULL,
  PRIMARY KEY (ID_LOG)
);

-- Creación del trigger para el log de auditoría de la tabla asistencia_cursada --
DELIMITER $$
CREATE TRIGGER log_after_insert_asistencia_cursada
AFTER INSERT ON asistencia_cursada
FOR EACH ROW
BEGIN
	INSERT INTO log_asistencia_cursada (ID_LOG, ACCION, USUARIO, DETALLE, FECHA)
	VALUES (NULL, 'INSERT', CURRENT_USER(), CONCAT('SE INGRESÓ LA ASISTENCIA PARA EL ALUMNO CON ID_LOG = ', NEW.ID_LOG), NOW());
END
$$
DELIMITER ;
