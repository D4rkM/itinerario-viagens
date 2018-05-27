-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: db_list
-- ------------------------------------------------------
-- Server version	5.7.18-log

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
-- Table structure for table `pacote de viagem`
--

DROP TABLE IF EXISTS `pacote de viagem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pacote de viagem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pacote de viagem`
--

LOCK TABLES `pacote de viagem` WRITE;
/*!40000 ALTER TABLE `pacote de viagem` DISABLE KEYS */;
INSERT INTO `pacote de viagem` VALUES (1,'São Paulo x Rio de Janeiro'),(2,'Paraná x São Paulo'),(3,'Rio de Janeiro x São Paulo'),(4,'Paraná x Espirito Santo');
/*!40000 ALTER TABLE `pacote de viagem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parada`
--

DROP TABLE IF EXISTS `parada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parada` (
  `idparada` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idparada`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parada`
--

LOCK TABLES `parada` WRITE;
/*!40000 ALTER TABLE `parada` DISABLE KEYS */;
INSERT INTO `parada` VALUES (1,'Rodoviária Tiete'),(2,'Rodoviária Curitiba'),(3,'Rodoviária Rio'),(4,'Rodoviária Espirito Santo'),(5,'Graall KM18'),(6,'Rodoviária Osasco'),(7,'Rodoviária Jundiaí'),(8,'Graal BR 118'),(9,'Graal BR 116'),(10,'Frangão BR 213'),(11,'Rodoviária Jabaquara');
/*!40000 ALTER TABLE `parada` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `viagem`
--

DROP TABLE IF EXISTS `viagem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `viagem` (
  `idviagem` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  `id_pacote` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idviagem`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viagem`
--

LOCK TABLES `viagem` WRITE;
/*!40000 ALTER TABLE `viagem` DISABLE KEYS */;
INSERT INTO `viagem` VALUES (1,'Rio x São Paulo','3'),(2,'Paraná x Espirito Santo','4');
/*!40000 ALTER TABLE `viagem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `viagem_parada`
--

DROP TABLE IF EXISTS `viagem_parada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `viagem_parada` (
  `idviagem_parada` int(11) NOT NULL AUTO_INCREMENT,
  `id_viagem` int(11) DEFAULT NULL,
  `id_parada` int(11) DEFAULT NULL,
  `ordem` int(11) DEFAULT NULL,
  PRIMARY KEY (`idviagem_parada`),
  KEY `fk_viagem_idx` (`id_viagem`),
  KEY `fk_parada_idx` (`id_parada`),
  CONSTRAINT `fk_parada` FOREIGN KEY (`id_parada`) REFERENCES `parada` (`idparada`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_viagem` FOREIGN KEY (`id_viagem`) REFERENCES `viagem` (`idviagem`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viagem_parada`
--

LOCK TABLES `viagem_parada` WRITE;
/*!40000 ALTER TABLE `viagem_parada` DISABLE KEYS */;
INSERT INTO `viagem_parada` VALUES (74,2,6,0),(75,2,7,1),(76,2,10,2),(77,2,11,3),(78,2,3,4),(86,1,1,0),(87,1,3,1),(88,1,5,2),(89,1,8,3),(90,1,11,4),(91,1,6,5);
/*!40000 ALTER TABLE `viagem_parada` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'db_list'
--

--
-- Dumping routines for database 'db_list'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-27 16:37:40
