-- MySQL dump 10.16  Distrib 10.1.18-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: Esercitazione1
-- ------------------------------------------------------
-- Server version	10.1.18-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Città`
--

DROP TABLE IF EXISTS `Città`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Città` (
  `Nome` varchar(45) NOT NULL,
  `Regione` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Nome`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Città`
--

LOCK TABLES `Città` WRITE;
/*!40000 ALTER TABLE `Città` DISABLE KEYS */;
INSERT INTO `Città` VALUES ('Ancona','Marche'),('Bari','Puglia'),('Bologna','EmiliaRomagna'),('Firenze','Toscana'),('Genova','Liguria'),('Livorno','Toscana'),('Lucca','Toscana'),('Mantova','Lombardia'),('Milano','Lombardia'),('Napoli','Campania'),('Roma','Lazio'),('Treviso','Veneto'),('Venezia','Veneto');
/*!40000 ALTER TABLE `Città` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Genia`
--

DROP TABLE IF EXISTS `Genia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Genia` (
  `Figlio` varchar(20) NOT NULL,
  `Genitore` varchar(20) NOT NULL,
  PRIMARY KEY (`Figlio`,`Genitore`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Genia`
--

LOCK TABLES `Genia` WRITE;
/*!40000 ALTER TABLE `Genia` DISABLE KEYS */;
INSERT INTO `Genia` VALUES ('Aldo','Franco'),('Aldo','Maria'),('Andrea','Franco'),('Andrea','Maria'),('AnnaMaria','Amelia'),('AnnaMaria','Michelangelo'),('AntonGiulio','Beatrice'),('AntonGiulio','Leonardo'),('Ezechiele','AnnaMaria'),('Ezechiele','AntonGiulio'),('Fabio','Beatrice'),('Filippo','Anna'),('Filippo','Luigi'),('Franco','Sergio'),('Giova','Maria'),('Luigi','Luisa'),('Maria','Luisa'),('Maurizio','Lio'),('Olga','Anna'),('Olga','Luigi');
/*!40000 ALTER TABLE `Genia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Persona`
--

DROP TABLE IF EXISTS `Persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Persona` (
  `Nome` varchar(20) NOT NULL,
  `Reddito` decimal(10,0) DEFAULT NULL,
  `Età` decimal(3,0) DEFAULT NULL,
  `Sesso` char(1) DEFAULT NULL,
  `CittàNascita` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Nome`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Persona`
--

LOCK TABLES `Persona` WRITE;
/*!40000 ALTER TABLE `Persona` DISABLE KEYS */;
INSERT INTO `Persona` VALUES ('Aldo',25,15,'M','Roma'),('Amelia',79,28,'F','Milano'),('Andrea',27,21,'M','Milano'),('Anna',50,29,'F','Napoli'),('AnnaMaria',41,30,'F','Bologna'),('AntonGiulio',44,40,'M','Roma'),('Beatrice',79,30,'F','Roma'),('Diana',90,23,'F','Firenze'),('Ezechiele',11,10,'M','Bari'),('Fabio',100,49,'M','Firenze'),('Filippo',26,30,'M','Genova'),('Franco',60,20,'M','Treviso'),('Giova',24,27,'M','Mantova'),('Leonardo',79,30,'M','Roma'),('Lio',100,59,'M','Lucca'),('Luigi',50,40,'M','Venezia'),('Luisa',75,87,'F','Napoli'),('Maria',55,42,'F','Livorno'),('Maurizio',19,19,'M','Pavia'),('Michelangelo',79,30,'M','Roma'),('Olga',30,41,'F','Ancona'),('Sergio',85,35,'M','Napoli');
/*!40000 ALTER TABLE `Persona` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-06 13:14:17
