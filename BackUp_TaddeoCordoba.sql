CREATE DATABASE  IF NOT EXISTS `sistemaescolar_taddeocordoba` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `sistemaescolar_taddeocordoba`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: sistemaescolar_taddeocordoba
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `alumno`
--

DROP TABLE IF EXISTS `alumno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alumno` (
  `ID_LEGAJO` int NOT NULL,
  `ID_DNI` varchar(20) NOT NULL,
  `APELLIDO` varchar(50) NOT NULL,
  `NOMBRE` varchar(50) NOT NULL,
  `DIRECCION` varchar(200) NOT NULL,
  `TELEFONO` varchar(60) NOT NULL,
  `MAIL` varchar(200) NOT NULL,
  `NACIONALIDAD` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_LEGAJO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumno`
--

LOCK TABLES `alumno` WRITE;
/*!40000 ALTER TABLE `alumno` DISABLE KEYS */;
INSERT INTO `alumno` VALUES (1,'28223389','TADDEO CORDOBA','LUCIANO BENJAMIN','SUIPACHA 1352','3516102244','LTADDEOCORDOBA@ICLOUD.COM','ARGENTINA'),(2,'32555222','CORDOBA','NICOLAS','THAMES 458','3515432254','CORDOBANICOLAS@HOTMAIL.COM','ARGENTINA'),(3,'92542365','PEREZ','SIMON','GUEMES 5845','3515254545','PEREZSIMON95@GMAIL.COM','ARGENTINA'),(4,'42333333','PEREZ','MARIANA','LAPRIDA 280','3512191621','MARUPEZ9@GMAIL.COM','ARGENTINA'),(5,'52457825','SOTELO','FACUNDO','VIAMONTE 256','3516413972','FACOSOTE@HOTMAIL.COM','ARGENTINA'),(6,'39515222','COSTA','FABIAN','PJE HOLMBERG 1780','3512846793','FABICOSTA@GMAIL.COM','CHILENA'),(7,'40125445','CORTEZ','HERNAN','ENTRE RIOS 350','3517946132','hercort99@gmail.com','URUGUAYO'),(8,'38656565','FIGUROA','MARIA PAULA','QUEVEDO 5874','3516497858','paula19992000@gmail.com','ARGENTINA'),(9,'32659856','MUSSO','PABLO','JACINTO RIOS 254','3515587589','pabmuss1@gmail.com','ARGENTINA'),(10,'32784525','ZARZA','PABLO ARIEL','COLALGO 8547','3516552846','pablosoloz@gmail.com','ARGENTINA');
/*!40000 ALTER TABLE `alumno` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `log_before_delete_alumno` BEFORE DELETE ON `alumno` FOR EACH ROW BEGIN
	INSERT INTO log_alumno (id_log, accion, usuario, detalle, fecha)
	VALUES (NULL, 'DELETE', SYSTEM_USER(), CONCAT ('SE ELIMINÓ EL ALUMNO', ID_LOG, 'PARA EL ALUMNO'), NOW());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `asignatura`
--

DROP TABLE IF EXISTS `asignatura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asignatura` (
  `ID_ASIGNATURA` varchar(50) NOT NULL,
  `NOMBREASIGNATURA` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_ASIGNATURA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asignatura`
--

LOCK TABLES `asignatura` WRITE;
/*!40000 ALTER TABLE `asignatura` DISABLE KEYS */;
INSERT INTO `asignatura` VALUES ('10IF','INSTRODUCCION  A LA FISICA'),('11GE','GEOGRAFIA'),('12HI','HISTORIA'),('13LI','LITERATURA'),('1CC','CONSTRUCCION DE CIUDADANIA'),('2CN','CIENCIAS NATURALES'),('3CS','CIENCIAS SOCIALES'),('4AR','ARTISTICA'),('5EF','EDUCACION FISICA'),('6IN','INGLES'),('7MA','MATEMATICAS'),('8PL','PRACTICAS DEL LENGUAJE'),('9BI','BIOLOGIA');
/*!40000 ALTER TABLE `asignatura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asistencia`
--

DROP TABLE IF EXISTS `asistencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asistencia` (
  `CODIGOTIPOASISTENCIA` int NOT NULL,
  `TIPOASISTENCIA` varchar(50) NOT NULL,
  PRIMARY KEY (`CODIGOTIPOASISTENCIA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asistencia`
--

LOCK TABLES `asistencia` WRITE;
/*!40000 ALTER TABLE `asistencia` DISABLE KEYS */;
INSERT INTO `asistencia` VALUES (1,'PRESENTE'),(2,'AUSENTE'),(3,'AUSENTE JUSTIFICADO'),(4,'AUSENTE INJUSTIFICADO');
/*!40000 ALTER TABLE `asistencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asistencia_cursada`
--

DROP TABLE IF EXISTS `asistencia_cursada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asistencia_cursada` (
  `CURSADA_alumno_ID_LEGAJO` int NOT NULL,
  `CURSADA_asignatura_ID_ASIGNATURA` varchar(50) NOT NULL,
  `asistencia_del_alumno_alumno_ID_LEGAJO` int NOT NULL,
  `asistencia_del_alumno_asistencia_CODIGOTIPOASISTENCIA` int NOT NULL,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`CURSADA_alumno_ID_LEGAJO`,`CURSADA_asignatura_ID_ASIGNATURA`,`asistencia_del_alumno_alumno_ID_LEGAJO`,`asistencia_del_alumno_asistencia_CODIGOTIPOASISTENCIA`),
  KEY `fk_CURSADA_has_asistencia_del_alumno_asistencia_del_alumno1_idx` (`asistencia_del_alumno_alumno_ID_LEGAJO`,`asistencia_del_alumno_asistencia_CODIGOTIPOASISTENCIA`),
  KEY `fk_CURSADA_has_asistencia_del_alumno_CURSADA1_idx` (`CURSADA_alumno_ID_LEGAJO`,`CURSADA_asignatura_ID_ASIGNATURA`),
  CONSTRAINT `fk_CURSADA_has_asistencia_del_alumno_asistencia_del_alumno1` FOREIGN KEY (`asistencia_del_alumno_alumno_ID_LEGAJO`, `asistencia_del_alumno_asistencia_CODIGOTIPOASISTENCIA`) REFERENCES `asistencia_del_alumno` (`alumno_ID_LEGAJO`, `asistencia_CODIGOTIPOASISTENCIA`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_CURSADA_has_asistencia_del_alumno_CURSADA1` FOREIGN KEY (`CURSADA_alumno_ID_LEGAJO`, `CURSADA_asignatura_ID_ASIGNATURA`) REFERENCES `cursada` (`alumno_ID_LEGAJO`, `asignatura_ID_ASIGNATURA`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asistencia_cursada`
--

LOCK TABLES `asistencia_cursada` WRITE;
/*!40000 ALTER TABLE `asistencia_cursada` DISABLE KEYS */;
INSERT INTO `asistencia_cursada` VALUES (1,'10IF',1,1,'2020-03-10'),(1,'11GE',1,1,'2020-03-11'),(1,'12HI',1,1,'2020-03-21'),(1,'13LI',1,1,'2020-03-31'),(1,'1CC',1,1,'2020-03-01'),(1,'2CN',1,1,'2020-03-02'),(1,'3CS',1,1,'2020-03-03'),(1,'4AR',1,1,'2020-03-04'),(1,'5EF',1,1,'2020-03-05'),(1,'6IN',1,1,'2020-03-06'),(1,'7MA',1,1,'2020-03-07'),(1,'8PL',1,1,'2020-03-08'),(1,'9BI',1,1,'2020-03-09'),(2,'10IF',2,1,'2020-03-10'),(2,'11GE',2,2,'2020-03-12'),(2,'12HI',2,1,'2020-03-22'),(2,'13LI',2,2,'2020-04-01'),(2,'1CC',2,2,'2020-03-01'),(2,'2CN',2,1,'2020-03-02'),(2,'3CS',2,2,'2020-03-03'),(2,'4AR',2,1,'2020-03-04'),(2,'5EF',2,2,'2020-03-05'),(2,'6IN',2,1,'2020-03-06'),(2,'7MA',2,2,'2020-03-07'),(2,'8PL',2,1,'2020-03-08'),(2,'9BI',2,2,'2020-03-09'),(3,'10IF',3,1,'2020-03-10'),(3,'11GE',3,3,'2020-03-13'),(3,'12HI',3,1,'2020-03-23'),(3,'13LI',3,3,'2020-04-02'),(3,'1CC',3,3,'2020-03-01'),(3,'2CN',3,1,'2020-03-02'),(3,'3CS',3,3,'2020-03-03'),(3,'4AR',3,1,'2020-03-04'),(3,'5EF',3,3,'2020-03-05'),(3,'6IN',3,1,'2020-03-06'),(3,'7MA',3,3,'2020-03-07'),(3,'8PL',3,1,'2020-03-08'),(3,'9BI',3,3,'2020-03-09'),(4,'10IF',4,1,'2020-03-10'),(4,'11GE',4,4,'2020-03-14'),(4,'12HI',4,1,'2020-03-24'),(4,'13LI',4,4,'2020-04-03'),(4,'1CC',4,4,'2020-03-01'),(4,'2CN',4,1,'2020-03-02'),(4,'3CS',4,4,'2020-03-03'),(4,'4AR',4,1,'2020-03-04'),(4,'5EF',4,4,'2020-03-05'),(4,'6IN',4,1,'2020-03-06'),(4,'7MA',4,4,'2020-03-07'),(4,'8PL',4,1,'2020-03-08'),(4,'9BI',4,4,'2020-03-09'),(5,'10IF',5,1,'2020-03-10'),(5,'11GE',5,1,'2020-03-15'),(5,'12HI',5,1,'2020-03-25'),(5,'13LI',5,1,'2020-04-04'),(5,'1CC',5,1,'2020-03-01'),(5,'2CN',5,1,'2020-03-02'),(5,'3CS',5,1,'2020-03-03'),(5,'4AR',5,1,'2020-03-04'),(5,'5EF',5,1,'2020-03-05'),(5,'6IN',5,1,'2020-03-06'),(5,'7MA',5,1,'2020-03-07'),(5,'8PL',5,1,'2020-03-08'),(5,'9BI',5,1,'2020-03-09'),(6,'10IF',6,1,'2020-03-10'),(6,'11GE',6,1,'2020-03-16'),(6,'12HI',6,1,'2020-03-26'),(6,'13LI',6,1,'2020-04-05'),(6,'1CC',6,1,'2020-03-01'),(6,'2CN',6,1,'2020-03-02'),(6,'3CS',6,1,'2020-03-03'),(6,'4AR',6,1,'2020-03-04'),(6,'5EF',6,1,'2020-03-05'),(6,'6IN',6,1,'2020-03-06'),(6,'7MA',6,1,'2020-03-07'),(6,'8PL',6,1,'2020-03-08'),(6,'9BI',6,1,'2020-03-09'),(7,'10IF',7,1,'2020-03-10'),(7,'11GE',7,1,'2020-03-17'),(7,'12HI',7,1,'2020-03-27'),(7,'13LI',7,1,'2020-04-06'),(7,'1CC',7,1,'2020-03-01'),(7,'2CN',7,1,'2020-03-02'),(7,'3CS',7,1,'2020-03-03'),(7,'4AR',7,1,'2020-03-04'),(7,'5EF',7,1,'2020-03-05'),(7,'6IN',7,1,'2020-03-06'),(7,'7MA',7,1,'2020-03-07'),(7,'8PL',7,1,'2020-03-08'),(7,'9BI',7,1,'2020-03-09'),(8,'10IF',8,1,'2020-03-10'),(8,'11GE',8,1,'2020-03-18'),(8,'12HI',8,1,'2020-03-28'),(8,'13LI',8,1,'2020-04-07'),(8,'1CC',8,1,'2020-03-01'),(8,'2CN',8,1,'2020-03-02'),(8,'3CS',8,1,'2020-03-03'),(8,'4AR',8,1,'2020-03-04'),(8,'5EF',8,1,'2020-03-05'),(8,'6IN',8,1,'2020-03-06'),(8,'7MA',8,1,'2020-03-07'),(8,'8PL',8,1,'2020-03-08'),(8,'9BI',8,1,'2020-03-09'),(9,'10IF',9,1,'2020-03-10'),(9,'11GE',9,1,'2020-03-19'),(9,'12HI',9,1,'2020-03-29'),(9,'13LI',9,1,'2020-04-08'),(9,'1CC',9,1,'2020-03-01'),(9,'2CN',9,1,'2020-03-02'),(9,'3CS',9,1,'2020-03-03'),(9,'4AR',9,1,'2020-03-04'),(9,'5EF',9,1,'2020-03-05'),(9,'6IN',9,1,'2020-03-06'),(9,'7MA',9,1,'2020-03-07'),(9,'8PL',9,1,'2020-03-08'),(9,'9BI',9,1,'2020-03-09'),(10,'10IF',10,1,'2020-03-10'),(10,'11GE',10,1,'2020-03-20'),(10,'12HI',10,1,'2020-03-30'),(10,'13LI',10,1,'2020-04-09'),(10,'1CC',10,1,'2020-03-01'),(10,'2CN',10,1,'2020-03-02'),(10,'3CS',10,1,'2020-03-03'),(10,'4AR',10,1,'2020-03-04'),(10,'5EF',10,1,'2020-03-05'),(10,'6IN',10,1,'2020-03-06'),(10,'7MA',10,1,'2020-03-07'),(10,'8PL',10,1,'2020-03-08'),(10,'9BI',10,1,'2020-03-09');
/*!40000 ALTER TABLE `asistencia_cursada` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `LOG_ASISTENCIA_CURSADA` AFTER INSERT ON `asistencia_cursada` FOR EACH ROW BEGIN
	INSERT INTO LOG_ASISTENCIA_CURSADA (ID_LOG, ACCION, USUARIO, DETALLE, FECHA)
    VALUES
    (NULL, 'INSERT', SYSTEM_USER(), CONCAT ('SE INGRESO LA ASISTENCIA', ID_LOG, 'PARA EL ALUMNO'), NOW());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `asistencia_del_alumno`
--

DROP TABLE IF EXISTS `asistencia_del_alumno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asistencia_del_alumno` (
  `alumno_ID_LEGAJO` int NOT NULL,
  `asistencia_CODIGOTIPOASISTENCIA` int NOT NULL,
  PRIMARY KEY (`alumno_ID_LEGAJO`,`asistencia_CODIGOTIPOASISTENCIA`),
  KEY `fk_alumno_has_asistencia_asistencia1_idx` (`asistencia_CODIGOTIPOASISTENCIA`),
  KEY `fk_alumno_has_asistencia_alumno1_idx` (`alumno_ID_LEGAJO`),
  CONSTRAINT `fk_alumno_has_asistencia_alumno1` FOREIGN KEY (`alumno_ID_LEGAJO`) REFERENCES `alumno` (`ID_LEGAJO`),
  CONSTRAINT `fk_alumno_has_asistencia_asistencia1` FOREIGN KEY (`asistencia_CODIGOTIPOASISTENCIA`) REFERENCES `asistencia` (`CODIGOTIPOASISTENCIA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asistencia_del_alumno`
--

LOCK TABLES `asistencia_del_alumno` WRITE;
/*!40000 ALTER TABLE `asistencia_del_alumno` DISABLE KEYS */;
INSERT INTO `asistencia_del_alumno` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(1,2),(2,2),(3,2),(4,2),(5,2),(6,2),(7,2),(8,2),(9,2),(10,2),(1,3),(2,3),(3,3),(4,3),(5,3),(6,3),(7,3),(8,3),(9,3),(10,3),(1,4),(2,4),(3,4),(4,4),(5,4),(6,4),(7,4),(8,4),(9,4),(10,4);
/*!40000 ALTER TABLE `asistencia_del_alumno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cursada`
--

DROP TABLE IF EXISTS `cursada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cursada` (
  `alumno_ID_LEGAJO` int NOT NULL,
  `asignatura_ID_ASIGNATURA` varchar(50) NOT NULL,
  PRIMARY KEY (`alumno_ID_LEGAJO`,`asignatura_ID_ASIGNATURA`),
  KEY `fk_alumno_has_asignatura_asignatura1_idx` (`asignatura_ID_ASIGNATURA`),
  KEY `fk_alumno_has_asignatura_alumno_idx` (`alumno_ID_LEGAJO`),
  CONSTRAINT `fk_alumno_has_asignatura_alumno` FOREIGN KEY (`alumno_ID_LEGAJO`) REFERENCES `alumno` (`ID_LEGAJO`),
  CONSTRAINT `fk_alumno_has_asignatura_asignatura1` FOREIGN KEY (`asignatura_ID_ASIGNATURA`) REFERENCES `asignatura` (`ID_ASIGNATURA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cursada`
--

LOCK TABLES `cursada` WRITE;
/*!40000 ALTER TABLE `cursada` DISABLE KEYS */;
INSERT INTO `cursada` VALUES (1,'10IF'),(1,'11GE'),(1,'12HI'),(1,'13LI'),(1,'1CC'),(1,'2CN'),(1,'3CS'),(1,'4AR'),(1,'5EF'),(1,'6IN'),(1,'7MA'),(1,'8PL'),(1,'9BI'),(2,'10IF'),(2,'11GE'),(2,'12HI'),(2,'13LI'),(2,'1CC'),(2,'2CN'),(2,'3CS'),(2,'4AR'),(2,'5EF'),(2,'6IN'),(2,'7MA'),(2,'8PL'),(2,'9BI'),(3,'10IF'),(3,'11GE'),(3,'12HI'),(3,'13LI'),(3,'1CC'),(3,'2CN'),(3,'3CS'),(3,'4AR'),(3,'5EF'),(3,'6IN'),(3,'7MA'),(3,'8PL'),(3,'9BI'),(4,'10IF'),(4,'11GE'),(4,'12HI'),(4,'13LI'),(4,'1CC'),(4,'2CN'),(4,'3CS'),(4,'4AR'),(4,'5EF'),(4,'6IN'),(4,'7MA'),(4,'8PL'),(4,'9BI'),(5,'10IF'),(5,'11GE'),(5,'12HI'),(5,'13LI'),(5,'1CC'),(5,'2CN'),(5,'3CS'),(5,'4AR'),(5,'5EF'),(5,'6IN'),(5,'7MA'),(5,'8PL'),(5,'9BI'),(6,'10IF'),(6,'11GE'),(6,'12HI'),(6,'13LI'),(6,'1CC'),(6,'2CN'),(6,'3CS'),(6,'4AR'),(6,'5EF'),(6,'6IN'),(6,'7MA'),(6,'8PL'),(6,'9BI'),(7,'10IF'),(7,'11GE'),(7,'12HI'),(7,'13LI'),(7,'1CC'),(7,'2CN'),(7,'3CS'),(7,'4AR'),(7,'5EF'),(7,'6IN'),(7,'7MA'),(7,'8PL'),(7,'9BI'),(8,'10IF'),(8,'11GE'),(8,'12HI'),(8,'13LI'),(8,'1CC'),(8,'2CN'),(8,'3CS'),(8,'4AR'),(8,'5EF'),(8,'6IN'),(8,'7MA'),(8,'8PL'),(8,'9BI'),(9,'10IF'),(9,'11GE'),(9,'12HI'),(9,'13LI'),(9,'1CC'),(9,'2CN'),(9,'3CS'),(9,'4AR'),(9,'5EF'),(9,'6IN'),(9,'7MA'),(9,'8PL'),(9,'9BI'),(10,'10IF'),(10,'11GE'),(10,'12HI'),(10,'13LI'),(10,'1CC'),(10,'2CN'),(10,'3CS'),(10,'4AR'),(10,'5EF'),(10,'6IN'),(10,'7MA'),(10,'8PL'),(10,'9BI');
/*!40000 ALTER TABLE `cursada` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_alumno`
--

DROP TABLE IF EXISTS `log_alumno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_alumno` (
  `ID_LOG` int NOT NULL AUTO_INCREMENT,
  `ACCION` varchar(45) NOT NULL,
  `USUARIO` varchar(45) NOT NULL,
  `DETALLE` varchar(45) NOT NULL,
  `FECHA` datetime NOT NULL,
  PRIMARY KEY (`ID_LOG`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_alumno`
--

LOCK TABLES `log_alumno` WRITE;
/*!40000 ALTER TABLE `log_alumno` DISABLE KEYS */;
INSERT INTO `log_alumno` VALUES (2,'DELETE','root@localhost','SE ELIMINÓ EL ALUMNO0PARA EL ALUMNO','2023-01-26 01:43:57');
/*!40000 ALTER TABLE `log_alumno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_asistencia_cursada`
--

DROP TABLE IF EXISTS `log_asistencia_cursada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_asistencia_cursada` (
  `id_log` int NOT NULL AUTO_INCREMENT,
  `accion` varchar(45) NOT NULL,
  `usuario` varchar(45) NOT NULL,
  `detalle` varchar(45) NOT NULL,
  `fecha` datetime DEFAULT NULL,
  PRIMARY KEY (`id_log`)
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_asistencia_cursada`
--

LOCK TABLES `log_asistencia_cursada` WRITE;
/*!40000 ALTER TABLE `log_asistencia_cursada` DISABLE KEYS */;
INSERT INTO `log_asistencia_cursada` VALUES (1,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-17 08:47:20'),(2,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-18 20:20:07'),(3,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(4,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(5,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(6,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(7,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(8,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(9,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(10,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(11,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(12,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(13,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(14,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(15,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(16,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(17,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(18,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(19,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(20,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(21,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(22,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(23,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(24,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(25,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(26,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(27,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(28,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(29,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(30,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(31,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(32,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(33,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(34,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(35,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(36,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(37,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(38,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(39,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(40,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(41,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(42,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(43,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(44,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(45,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(46,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(47,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(48,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(49,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(50,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(51,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(52,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(53,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(54,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(55,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(56,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(57,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(58,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(59,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(60,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(61,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(62,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(63,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(64,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(65,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(66,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(67,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(68,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(69,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(70,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(71,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(72,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(73,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(74,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(75,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(76,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(77,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(78,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(79,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(80,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(81,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(82,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(83,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(84,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(85,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(86,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(87,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(88,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(89,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(90,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(91,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(92,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(93,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(94,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(95,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(96,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(97,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(98,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(99,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(100,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(101,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(102,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(103,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(104,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(105,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(106,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(107,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(108,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(109,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(110,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(111,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(112,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(113,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(114,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(115,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(116,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(117,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(118,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(119,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(120,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(121,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(122,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(123,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(124,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(125,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(126,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(127,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(128,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(129,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(130,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(131,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17'),(132,'INSERT','root@localhost','SE INGRESO LA ASISTENCIA0PARA EL ALUMNO','2023-01-25 21:31:17');
/*!40000 ALTER TABLE `log_asistencia_cursada` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `new_view1`
--

DROP TABLE IF EXISTS `new_view1`;
/*!50001 DROP VIEW IF EXISTS `new_view1`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `new_view1` AS SELECT 
 1 AS `ID_LEGAJO`,
 1 AS `ID_DNI`,
 1 AS `APELLIDO`,
 1 AS `NOMBRE`,
 1 AS `DIRECCION`,
 1 AS `TELEFONO`,
 1 AS `MAIL`,
 1 AS `NACIONALIDAD`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `new_view2`
--

DROP TABLE IF EXISTS `new_view2`;
/*!50001 DROP VIEW IF EXISTS `new_view2`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `new_view2` AS SELECT 
 1 AS `CODIGOTIPOASISTENCIA`,
 1 AS `TIPOASISTENCIA`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `new_view3`
--

DROP TABLE IF EXISTS `new_view3`;
/*!50001 DROP VIEW IF EXISTS `new_view3`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `new_view3` AS SELECT 
 1 AS `COUNT(asistencia_del_alumno_asistencia_CODIGOTIPOASISTENCIA)`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `new_view4`
--

DROP TABLE IF EXISTS `new_view4`;
/*!50001 DROP VIEW IF EXISTS `new_view4`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `new_view4` AS SELECT 
 1 AS `LCASE (NOMBREASIGNATURA)`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `new_view5`
--

DROP TABLE IF EXISTS `new_view5`;
/*!50001 DROP VIEW IF EXISTS `new_view5`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `new_view5` AS SELECT 
 1 AS `ID_LEGAJO`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'sistemaescolar_taddeocordoba'
--
/*!50003 DROP FUNCTION IF EXISTS `new_function1` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `new_function1`(
	id_legajo INT
) RETURNS varchar(15) CHARSET utf8mb4
    NO SQL
BEGIN
	
	RETURN 'PAULA';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `new_function2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `new_function2`(p_DNI varchar (20)) RETURNS varchar(100) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
	DECLARE v_mail varchar (100);

	SELECT mail
    INTO v_mail
    FROM alumno
	WHERE 
		ID_DNI = p_DNI;
	RETURN v_mail;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_APELLIDO_alumno` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_APELLIDO_alumno`()
BEGIN

	SELECT

		 *

	FROM alumno

	ORDER BY APELLIDO DESC LIMIT 10;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_incrementa_id_legajo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_incrementa_id_legajo`(
		inout id_legajo int)
BEGIN
	set id_legajo = id_legajo + 1 ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `new_view1`
--

/*!50001 DROP VIEW IF EXISTS `new_view1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `new_view1` AS select `alumno`.`ID_LEGAJO` AS `ID_LEGAJO`,`alumno`.`ID_DNI` AS `ID_DNI`,`alumno`.`APELLIDO` AS `APELLIDO`,`alumno`.`NOMBRE` AS `NOMBRE`,`alumno`.`DIRECCION` AS `DIRECCION`,`alumno`.`TELEFONO` AS `TELEFONO`,`alumno`.`MAIL` AS `MAIL`,`alumno`.`NACIONALIDAD` AS `NACIONALIDAD` from `alumno` where (`alumno`.`APELLIDO` like '%A') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `new_view2`
--

/*!50001 DROP VIEW IF EXISTS `new_view2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `new_view2` AS select `asistencia`.`CODIGOTIPOASISTENCIA` AS `CODIGOTIPOASISTENCIA`,`asistencia`.`TIPOASISTENCIA` AS `TIPOASISTENCIA` from `asistencia` where (`asistencia`.`CODIGOTIPOASISTENCIA` <> 2) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `new_view3`
--

/*!50001 DROP VIEW IF EXISTS `new_view3`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `new_view3` AS select count(`asistencia_cursada`.`asistencia_del_alumno_asistencia_CODIGOTIPOASISTENCIA`) AS `COUNT(asistencia_del_alumno_asistencia_CODIGOTIPOASISTENCIA)` from `asistencia_cursada` where ((`asistencia_cursada`.`asistencia_del_alumno_alumno_ID_LEGAJO` = 1) and (`asistencia_cursada`.`fecha` <> 0) and (`asistencia_cursada`.`asistencia_del_alumno_asistencia_CODIGOTIPOASISTENCIA` = 2)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `new_view4`
--

/*!50001 DROP VIEW IF EXISTS `new_view4`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `new_view4` AS select lower(`asignatura`.`NOMBREASIGNATURA`) AS `LCASE (NOMBREASIGNATURA)` from `asignatura` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `new_view5`
--

/*!50001 DROP VIEW IF EXISTS `new_view5`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `new_view5` AS select `alumno`.`ID_LEGAJO` AS `ID_LEGAJO` from (`alumno` join `cursada` on((`alumno`.`ID_LEGAJO` = `cursada`.`asignatura_ID_ASIGNATURA`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-26 19:04:00
