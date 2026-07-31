-- MySQL dump 10.13  Distrib 8.0.21, for Linux (x86_64)
--
-- Host: localhost    Database: Test
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `Fortnite`
--

DROP TABLE IF EXISTS `Fortnite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Fortnite` (
  `Gamer_Tag` varchar(16) DEFAULT NULL,
  `Season_Total` int DEFAULT NULL,
  `Season_Elim` int DEFAULT NULL,
  `Season_Placement` int DEFAULT NULL,
  `Season_Appear` int DEFAULT NULL,
  `Seed_Score` float DEFAULT NULL,
  `Lifetime_Earnings` int DEFAULT NULL,
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fortnite`
--

LOCK TABLES `Fortnite` WRITE;
/*!40000 ALTER TABLE `Fortnite` DISABLE KEYS */;
INSERT INTO `Fortnite` VALUES ('Player1',1,1,1,1,1.1,1,1),('Player2',2,2,2,2,2.2,2,2),('Player3',3,3,3,3,3.3,3,3),('Player4',4,4,4,4,4.4,4,4),('Player5',5,5,5,5,5.5,5,5),('Player6',6,6,6,6,6.6,6,6),('Player7',7,7,7,7,7.7,8,7),('Player8',8,8,8,8,8.8,9,8),('Player9',9,9,9,9,9.9,10,9),('Player10',10,10,10,10,10.1,10,10);
/*!40000 ALTER TABLE `Fortnite` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-03 19:55:03
