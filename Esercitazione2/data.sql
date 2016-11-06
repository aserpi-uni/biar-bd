-- MySQL dump 10.16  Distrib 10.1.18-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: Esercitazione2
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
-- Table structure for table `Autore`
--

DROP TABLE IF EXISTS `Autore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Autore` (
  `codice` varchar(20) NOT NULL,
  `id` decimal(5,0) NOT NULL,
  PRIMARY KEY (`codice`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Autore`
--

LOCK TABLES `Autore` WRITE;
/*!40000 ALTER TABLE `Autore` DISABLE KEYS */;
INSERT INTO `Autore` VALUES ('100',1),('1300',11),('300',1),('300',2),('600',4),('700',2),('700',6);
/*!40000 ALTER TABLE `Autore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Programma`
--

DROP TABLE IF EXISTS `Programma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Programma` (
  `id` decimal(5,0) NOT NULL,
  `anno` decimal(4,0) NOT NULL,
  `linguaggio` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Programma`
--

LOCK TABLES `Programma` WRITE;
/*!40000 ALTER TABLE `Programma` DISABLE KEYS */;
INSERT INTO `Programma` VALUES (1,2003,'Java'),(2,2004,'Python'),(3,1999,'Dylan'),(4,2009,'Ruby'),(5,2010,'Java'),(6,2014,'Python'),(7,2012,'Java'),(8,2000,'Ruby'),(9,2004,'Dylan'),(10,2007,'Python'),(11,2010,'Prolog');
/*!40000 ALTER TABLE `Programma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Programmatore`
--

DROP TABLE IF EXISTS `Programmatore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Programmatore` (
  `codice` varchar(20) NOT NULL,
  `nome` varchar(20) NOT NULL,
  `categoria` decimal(2,0) NOT NULL,
  PRIMARY KEY (`codice`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Programmatore`
--

LOCK TABLES `Programmatore` WRITE;
/*!40000 ALTER TABLE `Programmatore` DISABLE KEYS */;
INSERT INTO `Programmatore` VALUES ('100','Grigi',10),('1000','Marroni',6),('1100','Bianchini',8),('1200','Neroni',5),('1300','Rosetti',4),('1400','Viola',1),('1500','Amaranto',2),('1600','Verdini',3),('200','Neri',10),('300','Bianchi',10),('500','Gialli',9),('600','Rossi',9),('700','Rosi',8),('800','Verdi',7),('900','Azzurri',7);
/*!40000 ALTER TABLE `Programmatore` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-06 13:16:18
