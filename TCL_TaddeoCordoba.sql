-- TAREA 1 --

-- Consultar la tabla log_asistencia_cursada
SELECT * FROM sistemaescolar_taddeocordoba.log_asistencia_cursada;

-- Consultar el estado de autocommit
SELECT @@autocommit;

-- Desactivar el autocommit
SET @@autocommit = 0;

-- 1. Eliminación de registros, reversión con rollback, actualización con commit --
START TRANSACTION;
DELETE FROM log_asistencia_cursada WHERE id_log = '1';
DELETE FROM log_asistencia_cursada WHERE id_log = '2';

-- Validar la reversión de la transacción --
ROLLBACK;

-- Aplicar la transacción --
COMMIT;

-- Consultar la tabla log_asistencia_cursada --
SELECT * FROM sistemaescolar_taddeocordoba.log_asistencia_cursada;

-- TAREA 2 --

-- Consultar la tabla asignatura
SELECT * FROM sistemaescolar_taddeocordoba.asignatura;

-- Inserción de registros transaccionales con savepoint, reversión de savepoint --
BEGIN; -- Comenzar una nueva transacción

-- Primera inserción de registros con savepoint
SAVEPOINT actualizacion1;
INSERT INTO asignatura (ID_ASIGNATURA, NOMBREASIGNATURA) VALUES
    ('14FVT', 'FORMACIÓN PARA LA VIDA Y TRABAJO'),
    ('15EA', 'ECONOMÍA Y ADMINISTRACIÓN'),
    ('16LE', 'LENGUA'),
    ('17AM', 'ARTE - MÚSICA');

-- Segunda inserción de registros con savepoint
SAVEPOINT actualizacion2;
INSERT INTO asignatura (ID_ASIGNATURA, NOMBREASIGNATURA) VALUES
    ('18AAV', 'ARTE - ARTES VISUALES'),
    ('19AT', 'ARTE - TEATRO'),
    ('20AD', 'ARTE - DANZA'),
    ('21AMA', 'AGRO Y MEDIO AMBIENTE'),
    ('22TU', 'TURISMO');

-- Revertir a savepoint actualizacion1
ROLLBACK TO actualizacion1;

-- Consultar la tabla asignatura después de la reversión
SELECT * FROM sistemaescolar_taddeocordoba.asignatura;

COMMIT; -- Confirmar y aplicar la transacción
