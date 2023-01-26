-- TAREA 1 --
SELECT * FROM sistemaescolar_taddeocordoba.log_asistencia_cursada; 
-- consulto el autocommit en que estado esta --
select @@autocommit; 

-- actualizo el estado --
set  @@autocommit = FALSE; set @@autocommit = 0;

-- 1. Eliminacion de registros, reversion con rollback, actualizacion con commit -- 
start transaction
	delete from log_asistencia_cursada where id_log = '1';
    delete from log_asistencia_cursada where id_log = '2';

-- validar la reversion --
rollback; 

-- aplicar la transaccion --
commit; 

-- consulto la tabla log_asistencia_cursada --
select *  from log_asistencia_cursada

-- TAREA 2 --
SELECT * FROM sistemaescolar_taddeocordoba.asignatura;
-- insercion de registros transaccionales con savepoint, reversion de savepoint --
INSERT INTO `asignatura` (`ID_ASIGNATURA`, `NOMBREASIGNATURA`) VALUES
	('14FVT', 'FORMACION PARA LA VIDA Y TRABAJO'),
	('15EA', 'ECONIMIA Y ADMINISTRACION'),
	('16LE', 'LENGUA'),
	('17AM', 'ARTE - MUSICA');
savepoint actualizacion1;

INSERT INTO `asignatura` (`ID_ASIGNATURA`, `NOMBREASIGNATURA`) VALUES
	('18AAV', 'ARTE - ARTES VISUALES'),
	('19AT', 'ARTE  - TEATRO'),
	('20AD', 'ARTE - DANZA'),
	('21AMA', 'AGRO Y MEDIO AMBIENTE'),
	('22TU', 'TURISMO');
savepoint actualizacion2;

rollback to actualizacion1;

select * from asignatura;