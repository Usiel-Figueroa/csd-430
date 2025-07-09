-- MySQL dump 10.13  Distrib 8.0.40, for macos14 (x86_64)
--
-- Host: localhost    Database: CSD430
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `usiel_states_data`
--

DROP TABLE IF EXISTS `usiel_states_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usiel_states_data` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `abbreviation` char(2) DEFAULT NULL,
  `population` int DEFAULT NULL,
  `capital` varchar(50) DEFAULT NULL,
  `region` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_state_combo` (`name`,`abbreviation`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usiel_states_data`
--

LOCK TABLES `usiel_states_data` WRITE;
/*!40000 ALTER TABLE `usiel_states_data` DISABLE KEYS */;
INSERT INTO `usiel_states_data` VALUES (1,'California','CA',39538223,'Sacramento','West'),(2,'Oregon','OR',4237256,'Salem','West'),(3,'Washington','WA',7693612,'Olympia','West'),(4,'Nevada','NV',3104614,'Carson City','West'),(5,'Nebraska','NE',1961504,'Lincoln','Midwest'),(6,'Arizona','AZ',7151502,'Phoenix','West'),(7,'New Mexico','NM',2117522,'Santa Fe','West'),(8,'New York','NY',20201249,'Albany','Northeast'),(9,'Minnesota','MN',5706494,'Saint Paul','Midwest'),(10,'Maine','ME',1362359,'Augusta','Northeast'),(11,'Alaska','AK',733391,'Juneau','West (Pacific)'),(14,'Delaware','DE',989948,'Dover','South'),(15,'Hawaii','HI',1455271,'Honolulu','West'),(16,'Idaho','ID',1839106,'Boise','West');
/*!40000 ALTER TABLE `usiel_states_data` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-25  9:08:28
