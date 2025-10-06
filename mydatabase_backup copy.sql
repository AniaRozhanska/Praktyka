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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Asterojid`
--

LOCK TABLES `Asterojid` WRITE;
/*!40000 ALTER TABLE `Asterojid` DISABLE KEYS */;
INSERT INTO `Asterojid` VALUES (1,'Ceres',9.39e20,946,1),(2,'Pallas',2.11e20,512,2),(3,'Vesta',2.59e20,525,3),(4,'Hygiea',8.32e19,434,4),(5,'Interamnia',3.9e19,350,5),(6,'Eunomia',2.72e19,255,6),(7,'Davida',3.42e19,326,7),(8,'Sylvia',1.48e19,271,8),(9,'Juno',2.67e19,233,9),(10,'Psyche',2.72e19,226,10);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Galaktyka`
--

LOCK TABLES `Galaktyka` WRITE;
/*!40000 ALTER TABLE `Galaktyka` DISABLE KEYS */;
INSERT INTO `Galaktyka` VALUES (1,'Milky Way',100000,0,1),(2,'Andromeda',220000,2537000,2),(3,'Triangulum',60000,3000000,3),(4,'Whirlpool',60000,23000000,4),(5,'Sombrero',50000,29000000,5),(6,'Pinwheel',170000,21000000,6),(7,'Messier 81',90000,12000000,7),(8,'Messier 82',37000,12000000,7),(9,'Centaurus A',60000,13000000,8),(10,'NGC 1300',110000,61000000,9);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Kometa`
--

LOCK TABLES `Kometa` WRITE;
/*!40000 ALTER TABLE `Kometa` DISABLE KEYS */;
INSERT INTO `Kometa` VALUES (1,'Halley',75,'Elliptical',24,'Ice, dust, gas',1),(2,'Encke',3.3,'Elliptical',16,'Ice, dust',1),(3,'Hale-Bopp',2533,'Parabolic',60,'Ice, dust, gas',2),(4,'Tempel 1',5.5,'Elliptical',7.6,'Ice, dust',2),(5,'Borrelly',6.9,'Elliptical',8,'Ice, dust',3),(6,'Wild 2',6.4,'Elliptical',8,'Ice, dust',3),(7,'Lovejoy',8.5,'Elliptical',15,'Ice, dust, gas',4),(8,'Neowise',4400,'Parabolic',50,'Ice, dust, gas',5),(9,'Ikeya-Seki',880,'Parabolic',30,'Ice, dust, gas',6),(10,'Hyakutake',70,'Elliptical',20,'Ice, dust, gas',7);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Kosmichna_stancija`
--

LOCK TABLES `Kosmichna_stancija` WRITE;
/*!40000 ALTER TABLE `Kosmichna_stancija` DISABLE KEYS */;
INSERT INTO `Kosmichna_stancija` VALUES (1,'ISS','International','1998-11-20',7),(2,'Mir','USSR','1986-02-20',6),(3,'Tiangong-1','China','2011-09-29',3),(4,'Tiangong-2','China','2016-09-15',2),(5,'Skylab','USA','1973-05-14',3),(6,'Salyut 1','USSR','1971-04-19',3),(7,'Salyut 6','USSR','1977-09-29',2),(8,'Salyut 7','USSR','1982-04-19',2),(9,'Freedom Station','USA','1992-03-15',4),(10,'Almaz','USSR','1973-03-03',2);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Planeta`
--

LOCK TABLES `Planeta` WRITE;
/*!40000 ALTER TABLE `Planeta` DISABLE KEYS */;
INSERT INTO `Planeta` VALUES (1,'Earth',6371,5.97e24,1),(2,'Mars',3389,6.39e23,2),(3,'Venus',6051,4.87e24,0),(4,'Mercury',2439,3.3e23,0),(5,'Jupiter',69911,1.9e27,95),(6,'Saturn',58232,5.68e26,83),(7,'Uranus',25362,8.68e25,27),(8,'Neptune',24622,1.02e26,14),(9,'Kepler-22b',26000,2.38e25,0),(10,'Proxima b',7150,7e24,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Suputnyk`
--

LOCK TABLES `Suputnyk` WRITE;
/*!40000 ALTER TABLE `Suputnyk` DISABLE KEYS */;
INSERT INTO `Suputnyk` VALUES (1,'Moon',3474,27.3,'Earth',1),(2,'Phobos',22.2,0.3,'Mars',2),(3,'Deimos',12.4,1.3,'Mars',2),(4,'Io',3643,1.8,'Jupiter',5),(5,'Europa',3122,3.6,'Jupiter',5),(6,'Ganymede',5268,7.2,'Jupiter',5),(7,'Callisto',4821,16.7,'Jupiter',5),(8,'Titan',5150,15.9,'Saturn',6),(9,'Rhea',1528,4.5,'Saturn',6),(10,'Oberon',1523,13.5,'Uranus',7);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Teleskop`
--

LOCK TABLES `Teleskop` WRITE;
/*!40000 ALTER TABLE `Teleskop` DISABLE KEYS */;
INSERT INTO `Teleskop` VALUES (1,'Hubble','Optical',2.4,1),(2,'James Webb','Infrared',6.5,1),(3,'Kepler','Optical',0.95,1),(4,'Spitzer','Infrared',0.85,1),(5,'Chandra','X-ray',1.2,1),(6,'Herschel','Infrared',3.5,1),(7,'TESS','Optical',0.4,1),(8,'Arecibo','Radio',305,2),(9,'FAST','Radio',500,3),(10,'ALMA','Radio',12,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Zoria`
--

LOCK TABLES `Zoria` WRITE;
/*!40000 ALTER TABLE `Zoria` DISABLE KEYS */;
INSERT INTO `Zoria` VALUES (1,'Sun',1,4600,5778,1,1),(2,'Sirius',2.02,242,9940,25.4,2),(3,'Betelgeuse',11.6,10,3500,126000,2),(4,'Rigel',18,8,12100,120000,3),(5,'Proxima Centauri',0.12,4500,3042,0.0017,1),(6,'Vega',2.1,455,9602,40.12,4),(7,'Altair',1.79,1000,7550,10.6,4),(8,'Deneb',19,10,8525,196000,5),(9,'Polaris',5.4,70,6015,2200,5),(10,'Antares',12.4,12,3500,75000,6);
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

-- Dump completed on 2025-10-06 12:23:14
