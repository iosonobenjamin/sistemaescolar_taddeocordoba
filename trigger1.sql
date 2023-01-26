-- creacion tabla log --

USE sistemaescolar_taddeocordoba

-- creacion de la tabla log --

CREATE TABLE `sistemaescolar_taddeocordoba`.`log_asistencia_cursada` (
  `ID_LOG` INT NOT NULL AUTO_INCREMENT,
  `ACCION` VARCHAR(45) NOT NULL,
  `USUARIO` VARCHAR(45) NOT NULL,
  `DETALLE` VARCHAR(45) NOT NULL,
  `FECHA` DATETIME NOT NULL,
  PRIMARY KEY (`ID_LOG`));

-- creacion del log de auditoria de la tabala asistencia_cursada --

DELIMITER $$
CREATE TRIGGER LOG_ASISTENCIA_CURSADA
AFTER INSERT ON asistencia_cursada
FOR EACH ROW
BEGIN
	INSERT INTO LOG_ASISTENCIA_CURSADA (ID_LOG, ACCION, USUARIO, DETALLE, FECHA)
    VALUES
    (NULL, 'INSERT', SYSTEM_USER(), CONCAT ('SE INGRESO LA ASISTENCIA', ID_LOG, 'PARA EL ALUMNO'), NOW());
END $$
DELIMITER ;




