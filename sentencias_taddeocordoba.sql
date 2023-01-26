CREATE USER 'user1'@'localhost' IDENTIFIED BY 'user1'; -- creacion usuario1 --
CREATE USER 'user2'@'localhost' IDENTIFIED BY 'user2'; -- creacion usuario2 --

SHOW GRANTS FOR 'user1'@'localhost'; -- muestra permisos del usuario1 --
SHOW GRANTS FOR 'user2'@'localhost'; -- muestra permisos del usuario2 --

GRANT SELECT ON sistemaescolar_taddeocordoba.* TO 'user1'@'localhost'; -- se otorgan permiso de lectura las tablas de la DB --
GRANT SELECT, INSERT, UPDATE ON sistemaescolar_taddeocordoba.* TO 'user2'@'localhost'; -- se otorgan  permiso de lectura, insertar y modificar las tablas de la DB --
-- en el comando del gran select ya se exeptua el permiso DELETE en ambos usuarios --

REVOKE DELETE ON sistemaescolar_taddeocordoba.* FROM 'user1'@'localhost','user2'@'localhost'; -- se revoca el permiso de eliminacion de registros en las tablas de la DB --