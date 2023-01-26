-- CREAR BASE DE DATOS --
create database SISTEMAESCOLAR_TADDEOCORDOBA;

-- CREACION DE LAS TABLAS --
-- TABLA ALUMNO--

CREATE TABLE ALUMNO (
    ID_LEGAJO INTEGER NOT NULL,
    ID_DNI VARCHAR(20) NOT NULL,
    APELLIDO VARCHAR(50) NOT NULL,
    NOMBRE VARCHAR(50) NOT NULL,
    DIRECCION VARCHAR(200) NOT NULL,
    TELEFONO VARCHAR(60) NOT NULL,
    MAIL VARCHAR(200) NOT NULL,
    NACIONALIDAD VARCHAR(100) NOT NULL);

ALTER TABLE ALUMNO
ADD CONSTRAINT PK_ALUMNO
PRIMARY KEY (ID_LEGAJO);

-- TABLA ASISTENCIA --

CREATE TABLE ASISTENCIA (
    CODIGOTIPOASISTENCIA INTEGER NOT NULL,
    TIPOASISTENCIA VARCHAR(50) NOT NULL);

ALTER TABLE ASISTENCIA
ADD CONSTRAINT PK_ASISTENCIA
PRIMARY KEY (CODIGOTIPOASISTENCIA);

-- TABLA ASIGNATURA --
CREATE TABLE ASIGNATURA (
    ID_ASIGNATURA VARCHAR (50) NOT NULL,
    NOMBREASIGNATURA VARCHAR(100) NOT NULL
    );

ALTER TABLE ASIGNATURA
ADD CONSTRAINT PK_ASIGNATURA
PRIMARY KEY (ID_ASIGNATURA );

-- TABLA CURSADA --

CREATE TABLE IF NOT EXISTS `sistemaescolar_taddeocordoba`.`CURSADA` (
  `alumno_ID_LEGAJO` INT NOT NULL,
  `asignatura_ID_ASIGNATURA` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`alumno_ID_LEGAJO`, `asignatura_ID_ASIGNATURA`),
  INDEX `fk_alumno_has_asignatura_asignatura1_idx` (`asignatura_ID_ASIGNATURA` ASC) VISIBLE,
  INDEX `fk_alumno_has_asignatura_alumno_idx` (`alumno_ID_LEGAJO` ASC) VISIBLE,
  CONSTRAINT `fk_alumno_has_asignatura_alumno`
    FOREIGN KEY (`alumno_ID_LEGAJO`)
    REFERENCES `sistemaescolar_taddeocordoba`.`alumno` (`ID_LEGAJO`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_alumno_has_asignatura_asignatura1`
    FOREIGN KEY (`asignatura_ID_ASIGNATURA`)
    REFERENCES `sistemaescolar_taddeocordoba`.`asignatura` (`ID_ASIGNATURA`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

-- TABLA ASISTENCIA DEL ALUMNO --
CREATE TABLE IF NOT EXISTS `sistemaescolar_taddeocordoba`.`asistencia_del_alumno` (
  `alumno_ID_LEGAJO` INT NOT NULL,
  `asistencia_CODIGOTIPOASISTENCIA` INT NOT NULL,
  PRIMARY KEY (`alumno_ID_LEGAJO`, `asistencia_CODIGOTIPOASISTENCIA`),
  INDEX `fk_alumno_has_asistencia_asistencia1_idx` (`asistencia_CODIGOTIPOASISTENCIA` ASC) VISIBLE,
  INDEX `fk_alumno_has_asistencia_alumno1_idx` (`alumno_ID_LEGAJO` ASC) VISIBLE,
  CONSTRAINT `fk_alumno_has_asistencia_alumno1`
    FOREIGN KEY (`alumno_ID_LEGAJO`)
    REFERENCES `sistemaescolar_taddeocordoba`.`alumno` (`ID_LEGAJO`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_alumno_has_asistencia_asistencia1`
    FOREIGN KEY (`asistencia_CODIGOTIPOASISTENCIA`)
    REFERENCES `sistemaescolar_taddeocordoba`.`asistencia` (`CODIGOTIPOASISTENCIA`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

-- TABLA ASISTENCIA A LA CURSADA --

CREATE TABLE IF NOT EXISTS `sistemaescolar_taddeocordoba`.`asistencia_cursada` (
  `CURSADA_alumno_ID_LEGAJO` INT NOT NULL,
  `CURSADA_asignatura_ID_ASIGNATURA` VARCHAR(50) NOT NULL,
  `asistencia_del_alumno_alumno_ID_LEGAJO` INT NOT NULL,
  `asistencia_del_alumno_asistencia_CODIGOTIPOASISTENCIA` INT NOT NULL,
  `fecha` DATE NULL,
  PRIMARY KEY (`CURSADA_alumno_ID_LEGAJO`, `CURSADA_asignatura_ID_ASIGNATURA`, `asistencia_del_alumno_alumno_ID_LEGAJO`, `asistencia_del_alumno_asistencia_CODIGOTIPOASISTENCIA`),
  INDEX `fk_CURSADA_has_asistencia_del_alumno_asistencia_del_alumno1_idx` (`asistencia_del_alumno_alumno_ID_LEGAJO` ASC, `asistencia_del_alumno_asistencia_CODIGOTIPOASISTENCIA` ASC) VISIBLE,
  INDEX `fk_CURSADA_has_asistencia_del_alumno_CURSADA1_idx` (`CURSADA_alumno_ID_LEGAJO` ASC, `CURSADA_asignatura_ID_ASIGNATURA` ASC) VISIBLE,
  CONSTRAINT `fk_CURSADA_has_asistencia_del_alumno_CURSADA1`
    FOREIGN KEY (`CURSADA_alumno_ID_LEGAJO` , `CURSADA_asignatura_ID_ASIGNATURA`)
    REFERENCES `sistemaescolar_taddeocordoba`.`CURSADA` (`alumno_ID_LEGAJO` , `asignatura_ID_ASIGNATURA`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_CURSADA_has_asistencia_del_alumno_asistencia_del_alumno1`
    FOREIGN KEY (`asistencia_del_alumno_alumno_ID_LEGAJO` , `asistencia_del_alumno_asistencia_CODIGOTIPOASISTENCIA`)
    REFERENCES `sistemaescolar_taddeocordoba`.`asistencia_del_alumno` (`alumno_ID_LEGAJO` , `asistencia_CODIGOTIPOASISTENCIA`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);