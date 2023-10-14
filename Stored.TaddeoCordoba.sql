DELIMITER $$

-- SP 1 --
CREATE PROCEDURE sp_APELLIDO_alumno ()
BEGIN
	SELECT *
	FROM alumno
	ORDER BY APELLIDO DESC
	LIMIT 10;
END;
$$

-- SP 2 --
CREATE PROCEDURE sp_id_legajo_alumno (IN id_legajo INT) -- Añadido IN para especificar que es un parámetro de entrada
BEGIN
	DECLARE next_id_legajo INT; -- Declaración de una variable para almacenar el próximo ID_LEGAJO

	-- Obtener el próximo ID_LEGAJO
	SELECT IFNULL(MAX(id_legajo), 0) + 1 INTO next_id_legajo FROM alumno;

	-- Insertar un nuevo registro con el ID_LEGAJO proporcionado
	INSERT INTO alumno (ID_LEGAJO, id_DNI, APELLIDO, NOMBRE, DIRECCION, TELEFONO, MAIL, NACIONALIDAD)
	VALUES (id_legajo, :id_DNI, :APELLIDO, :NOMBRE, :DIRECCION, :TELFONO, :MAIL, :NACIONALIDAD);
END;
$$

DELIMITER ;
