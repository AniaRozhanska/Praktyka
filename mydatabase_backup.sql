-- MySQL dump 10.13  Distrib 9.4.0, for macos26.0 (arm64)
--
-- Host: localhost    Database: SPACE
-- ------------------------------------------------------
-- Server version	9.4.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Asterojid`
--

DROP TABLE IF EXISTS `Asterojid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Asterojid` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `nazva` varchar(150) NOT NULL,
  `masa` float NOT NULL,
  `diametr` float NOT NULL,
  `zoria_id` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `zoria_id` (`zoria_id`),
  CONSTRAINT `asterojid_ibfk_1` FOREIGN KEY (`zoria_id`) REFERENCES `Zoria` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Asterojid`
--

LOCK TABLES `Asterojid` WRITE;
/*!40000 ALTER TABLE `Asterojid` DISABLE KEYS */;
/*!40000 ALTER TABLE `Asterojid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Galaktyka`
--

DROP TABLE IF EXISTS `Galaktyka`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Galaktyka` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `nazva` varchar(150) NOT NULL,
  `diametr` float NOT NULL,
  `vidstan` float NOT NULL,
  `teleskop_id` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `teleskop_id` (`teleskop_id`),
  CONSTRAINT `galaktyka_ibfk_1` FOREIGN KEY (`teleskop_id`) REFERENCES `Teleskop` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Galaktyka`
--

LOCK TABLES `Galaktyka` WRITE;
/*!40000 ALTER TABLE `Galaktyka` DISABLE KEYS */;
/*!40000 ALTER TABLE `Galaktyka` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Kometa`
--

DROP TABLE IF EXISTS `Kometa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Kometa` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `nazva` varchar(150) NOT NULL,
  `period_obertania` float NOT NULL,
  `orbita` char(150) NOT NULL,
  `dovzhyna_chvosta` float NOT NULL,
  `sklad_jadra` varchar(150) NOT NULL,
  `galaktyka_id` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `galaktyka_id` (`galaktyka_id`),
  CONSTRAINT `kometa_ibfk_1` FOREIGN KEY (`galaktyka_id`) REFERENCES `Galaktyka` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Kometa`
--

LOCK TABLES `Kometa` WRITE;
/*!40000 ALTER TABLE `Kometa` DISABLE KEYS */;
/*!40000 ALTER TABLE `Kometa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Kosmichna_stancija`
--

DROP TABLE IF EXISTS `Kosmichna_stancija`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Kosmichna_stancija` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `nazva` varchar(150) NOT NULL,
  `krajina` char(150) NOT NULL,
  `rik_zapusku` date NOT NULL,
  `kilkist_ekiparzu` int NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Kosmichna_stancija`
--

LOCK TABLES `Kosmichna_stancija` WRITE;
/*!40000 ALTER TABLE `Kosmichna_stancija` DISABLE KEYS */;
/*!40000 ALTER TABLE `Kosmichna_stancija` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Planeta`
--

DROP TABLE IF EXISTS `Planeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Planeta` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nazva` varchar(150) NOT NULL,
  `radius` float NOT NULL,
  `masa` float NOT NULL,
  `kilkist_suputnykiv` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Planeta`
--

LOCK TABLES `Planeta` WRITE;
/*!40000 ALTER TABLE `Planeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `Planeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Suputnyk`
--

DROP TABLE IF EXISTS `Suputnyk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Suputnyk` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `nazva` varchar(150) NOT NULL,
  `rozmir` float NOT NULL,
  `period_obertania` float NOT NULL,
  `planeta_nosij` char(150) NOT NULL,
  `planeta_id` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `planeta_id` (`planeta_id`),
  CONSTRAINT `suputnyk_ibfk_1` FOREIGN KEY (`planeta_id`) REFERENCES `Planeta` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Suputnyk`
--

LOCK TABLES `Suputnyk` WRITE;
/*!40000 ALTER TABLE `Suputnyk` DISABLE KEYS */;
/*!40000 ALTER TABLE `Suputnyk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Teleskop`
--

DROP TABLE IF EXISTS `Teleskop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Teleskop` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `nazva` varchar(150) NOT NULL,
  `typ` char(150) NOT NULL,
  `diametr_dzerkala` float NOT NULL,
  `kosmichna_stancija_id` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `kosmichna_stancija_id` (`kosmichna_stancija_id`),
  CONSTRAINT `teleskop_ibfk_1` FOREIGN KEY (`kosmichna_stancija_id`) REFERENCES `Kosmichna_stancija` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Teleskop`
--

LOCK TABLES `Teleskop` WRITE;
/*!40000 ALTER TABLE `Teleskop` DISABLE KEYS */;
/*!40000 ALTER TABLE `Teleskop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Zoria`
--

DROP TABLE IF EXISTS `Zoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Zoria` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `nazva` varchar(150) NOT NULL,
  `masa` float NOT NULL,
  `vik` int NOT NULL,
  `temperatura` float NOT NULL,
  `svitnist` float NOT NULL,
  `galaktyka_id` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `galaktyka_id` (`galaktyka_id`),
  CONSTRAINT `zoria_ibfk_1` FOREIGN KEY (`galaktyka_id`) REFERENCES `Galaktyka` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Zoria`
--

LOCK TABLES `Zoria` WRITE;
/*!40000 ALTER TABLE `Zoria` DISABLE KEYS */;
/*!40000 ALTER TABLE `Zoria` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-06 10:13:42
