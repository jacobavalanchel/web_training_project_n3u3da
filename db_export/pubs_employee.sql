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
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `emp_id` char(9) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `minit` char(1) DEFAULT NULL,
  `lname` varchar(30) NOT NULL,
  `job_id` int NOT NULL DEFAULT '1',
  `job_lvl` int NOT NULL DEFAULT '10',
  `pub_id` char(4) NOT NULL DEFAULT '9952',
  `hire_date` char(8) NOT NULL DEFAULT '19950818',
  PRIMARY KEY (`emp_id`),
  KEY `job_id` (`job_id`),
  KEY `pub_id` (`pub_id`),
  CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`job_id`),
  CONSTRAINT `employee_ibfk_2` FOREIGN KEY (`pub_id`) REFERENCES `publishers` (`pub_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES ('A-R89858F','Annette','','Roulet',6,152,'9999','19900221'),('AMD15433F','Ann','M','Devon',3,200,'9952','19910716'),('ARD36773F','Anabela','R','Domingues',8,100,'0877','19930127'),('CFH28514M','Carlos','F','Hernadez',5,211,'9999','19890421'),('CGS88322F','Carine','G','Schmitt',13,64,'1389','19920707'),('DBT39435M','Daniel','B','Tonini',11,75,'0877','19900101'),('DWR65030M','Diego','W','Roel',6,192,'1389','19911216'),('ENL44273F','Elizabeth','N','Lincoln',14,35,'0877','19900724'),('F-C16315M','Francisco','','Chang',4,227,'9952','19901103'),('GHT50241M','Gary','H','Thomas',9,170,'0736','19880809'),('H-B39728F','Helen','','Bennett',12,35,'0877','19890921'),('HAN90777M','Helvetius','A','Nagy',7,120,'9999','19930319'),('HAS54740M','Howard','A','Snyder',12,100,'0736','19881119'),('JYL26161F','Janine','Y','Labrune',5,172,'9901','19910526'),('KFJ64308F','Karin','F','Josephs',14,100,'0736','19921017'),('KJJ92907F','Karla','J','Jablonski',9,170,'9999','19940311'),('L-B31947F','Lesley','','Brown',7,120,'0877','19910213'),('LAL21447M','Laurence','A','Lebihan',5,175,'0736','19900603'),('M-L67958F','Maria','','Larsson',7,135,'1389','19920327'),('M-P91209M','Manuel','','Pereira',8,101,'9999','19890109'),('M-R38834F','Martine','','Rance',9,75,'0877','19920205'),('MAP77183M','Miguel','A','Paolino',11,112,'1389','19921207'),('MAS70474F','Margaret','A','Smith',9,78,'1389','19880929'),('MFS52347M','Martin','F','Sommer',10,165,'0736','19900413'),('MGK44605M','Matti','G','Karttunen',6,220,'0736','19940501'),('MJP25939M','Maria','J','Pontes',5,246,'1756','19890301'),('MMS49649F','Mary','M','Saveley',8,175,'0736','19930629'),('PCM98509F','Patricia','C','McKenna',11,150,'9999','19890801'),('PDI47470M','Palle','D','Ibsen',7,195,'0736','19930509'),('PHF38899M','Peter','H','Franken',10,75,'0877','19920517'),('PMA42628M','Paolo','M','Accorti',13,35,'0877','19920827'),('POK93028M','Pirkko','O','Koskitalo',10,80,'9999','19931129'),('PSA89086M','Pedro','S','Afonso',14,89,'1389','19901224'),('PSP68661F','Paula','S','Parente',8,125,'1389','19940119'),('PTC11962M','Philip','T','Cramer',2,215,'9952','19891111'),('PXH22250M','Paul','X','Henriot',5,159,'0877','19930819'),('R-M53550M','Roland','','Mendel',11,150,'0736','19910905'),('RBM23061F','Rita','B','Muller',5,198,'1622','19931009'),('SKO22412M','Sven','K','Ottlieb',5,150,'1389','19910405'),('TPO55093M','Timothy','P','O\'Rourke',13,100,'0736','19880619'),('VPA30890F','Victoria','P','Ashworth',6,140,'0877','19900913'),('Y-L77953M','Yoshi','','Latimer',12,32,'1389','19890611');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
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
