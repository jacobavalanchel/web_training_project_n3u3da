-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: pubs
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `titleauthor`
--

DROP TABLE IF EXISTS `titleauthor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `titleauthor` (
  `au_id` varchar(11) NOT NULL,
  `title_id` varchar(6) NOT NULL,
  `au_ord` tinyint DEFAULT NULL,
  `royaltyper` int DEFAULT NULL,
  PRIMARY KEY (`au_id`,`title_id`),
  KEY `title_id` (`title_id`),
  CONSTRAINT `titleauthor_ibfk_1` FOREIGN KEY (`title_id`) REFERENCES `titles` (`title_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `titleauthor`
--

LOCK TABLES `titleauthor` WRITE;
/*!40000 ALTER TABLE `titleauthor` DISABLE KEYS */;
INSERT INTO `titleauthor` VALUES ('172-32-1176','PS3333',1,100),('213-46-8915','BU2075',1,100),('238-95-7766','PC1035',1,100),('267-41-2394','BU1111',2,40),('267-41-2394','TC7777',2,30),('274-80-9391','BU7832',1,100),('409-56-7008','BU1032',1,60),('427-17-2319','PC8888',1,50),('472-27-2349','TC7777',3,30),('648-92-1872','TC4203',1,100),('672-71-3249','TC7777',1,40),('712-45-1867','MC2222',1,100),('722-51-5454','MC3021',1,75),('724-80-9391','PS1372',2,25),('756-30-7391','PS1372',1,75),('807-91-6654','TC3218',1,100),('846-92-7186','PC8888',2,50),('899-46-2035','MC3021',2,25),('998-72-3567','PS2091',1,50);
/*!40000 ALTER TABLE `titleauthor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-24  2:25:37
