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
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS `authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authors` (
  `au_id` varchar(11) NOT NULL,
  `au_lname` varchar(40) NOT NULL,
  `au_fname` varchar(20) NOT NULL,
  `phone` char(12) NOT NULL DEFAULT 'UNKNOWN',
  `address` varchar(40) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `state` char(2) DEFAULT NULL,
  `zip` char(5) DEFAULT NULL,
  `contract` bit(1) NOT NULL,
  PRIMARY KEY (`au_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors`
--

LOCK TABLES `authors` WRITE;
/*!40000 ALTER TABLE `authors` DISABLE KEYS */;
INSERT INTO `authors` VALUES ('172-32-1176','White','Johnson','408 496-7223','10932 Bigge Rd.','Menlo Park','CA','94025',_binary ''),('213-46-8915','Green','Marjorie','415 986-7020','309 63rd St. #411','Oakland','CA','94618',_binary ''),('238-95-7766','Carson','Cheryl','415 548-7723','589 Darwin Ln.','Berkeley','CA','94705',_binary ''),('267-41-2394','O\'Leary','Michael','408 286-2428','22 Cleveland Av. #14','San Jose','CA','95128',_binary ''),('274-80-9391','Straight','Dean','415 834-2919','5420 College Av.','Oakland','CA','94609',_binary ''),('341-22-1782','Smith','Meander','913 843-0462','10 Mississippi Dr.','Lawrence','KS','66044',_binary '\0'),('409-56-7008','Bennet','Abraham','415 658-9932','6223 Bateman St.','Berkeley','CA','94705',_binary ''),('427-17-2319','Dull','Ann','415 836-7128','3410 Blonde St.','Palo Alto','CA','94301',_binary ''),('472-27-2349','Gringlesby','Burt','707 938-6445','PO Box 792','Covelo','CA','95428',_binary ''),('486-29-1786','Locksley','Charlene','415 585-4620','18 Broadway Av.','San Francisco','CA','94130',_binary ''),('527-72-3111','Greene','Heather','615 290-2763','22 Graybar House Rd.','Nashville','TN','37215',_binary '\0'),('527-72-3246','Greene','Morningstar','615 297-2723','22 Graybar House Rd.','Nashville','TN','37215',_binary '\0'),('648-92-1872','Blotchet-Halls','Reginald','503 745-6402','55 Hillsdale Bl.','Corvallis','OR','97330',_binary ''),('672-71-3249','Yokomoto','Akiko','415 935-4228','3 Silver Ct.','Walnut Creek','CA','94595',_binary ''),('712-45-1867','del Castillo','Innes','615 996-8275','2286 Cram Pl. #86','Ann Arbor','MI','48105',_binary ''),('722-51-5454','DeFrance','Michel','219 547-9982','3 Balding Pl.','Gary','IN','46403',_binary ''),('724-08-9931','Stringer','Dirk','415 843-2991','5420 Telegraph Av.','Oakland','CA','94609',_binary '\0'),('724-80-9391','MacFeather','Stearns','415 354-7128','44 Upland Hts.','Oakland','CA','94612',_binary ''),('756-30-7391','Karsen','Livia','415 534-9219','5720 McAuley St.','Oakland','CA','94609',_binary ''),('807-91-6654','Panteley','Sylvia','301 946-8853','1956 Arlington Pl.','Rockville','MD','20853',_binary ''),('846-92-7186','Hunter','Sheryl','415 836-7128','3410 Blonde St.','Palo Alto','CA','94301',_binary ''),('893-72-1158','McBadden','Heather','707 448-4982','301 Putnam','Vacaville','CA','95688',_binary '\0'),('899-46-2035','Ringer','Anne','801 826-0752','67 Seventh Av.','Salt Lake City','UT','84152',_binary ''),('998-72-3567','Ringer','Albert','801 826-0752','67 Seventh Av.','Salt Lake City','UT','84152',_binary '');
/*!40000 ALTER TABLE `authors` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-24  2:25:36
