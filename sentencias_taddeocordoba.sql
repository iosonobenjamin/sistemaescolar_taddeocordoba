-- Creación de usuario1 y usuario2 --
CREATE USER 'user1'@'localhost' IDENTIFIED BY 'user1';
CREATE USER 'user2'@'localhost' IDENTIFIED BY 'user2';

-- Mostrar permisos del usuario1 y usuario2 --
SHOW GRANTS FOR 'user1'@'localhost';
SHOW GRANTS FOR 'user2'@'localhost';

-- Otorgar permisos a usuario1 y usuario2 --
GRANT SELECT ON sistemaescolar_taddeocordoba.* TO 'user1'@'localhost';
GRANT SELECT, INSERT, UPDATE ON sistemaescolar_taddeocordoba.* TO 'user2'@'localhost';

-- Revocar permiso DELETE a usuario1 y usuario2 --
REVOKE DELETE ON sistemaescolar_taddeocordoba.* FROM 'user1'@'localhost', 'user2'@'localhost';
