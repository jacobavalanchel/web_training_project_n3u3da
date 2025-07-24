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
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales` (
  `stor_id` char(4) NOT NULL,
  `ord_num` varchar(20) NOT NULL,
  `ord_date` char(8) NOT NULL,
  `qty` smallint NOT NULL,
  `payterms` varchar(12) NOT NULL,
  `title_id` varchar(6) NOT NULL,
  PRIMARY KEY (`stor_id`,`ord_num`,`title_id`),
  KEY `title_id` (`title_id`),
  CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`title_id`) REFERENCES `titles` (`title_id`),
  CONSTRAINT `sales_ibfk_2` FOREIGN KEY (`stor_id`) REFERENCES `stores` (`stor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` VALUES ('6380','722a','19940913',3,'Net 60','PS2091'),('7066','A2976','19930524',50,'Net 30','PC8888'),('7066','QA7442.3','19940913',75,'ON invoice','PS2091'),('7067','D4482','19940914',10,'Net 60','PS2091'),('7067','P2121','19920615',40,'Net 30','TC3218'),('7131','N914008','19940914',20,'Net 30','PS2091'),('7131','P3087a','19930529',25,'Net 60','PS7777'),('7896','QQ2299','19931028',15,'Net 60','BU7832'),('8042','423LL922','19940914',15,'ON invoice','MC3021'),('8042','P723','19930311',25,'Net 30','BU1111');
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
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
