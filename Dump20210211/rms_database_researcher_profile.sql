-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: rms_database
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `researcher_profile`
--

DROP TABLE IF EXISTS `researcher_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `researcher_profile` (
  `r_name` varchar(45) NOT NULL,
  `title` varchar(45) NOT NULL,
  `role` int NOT NULL,
  `r_username` varchar(45) NOT NULL,
  `r_gender` varchar(45) DEFAULT NULL,
  `r_bio` mediumtext,
  `r_followers` int DEFAULT NULL,
  `r_following` int DEFAULT NULL,
  `r_published` varchar(45) DEFAULT NULL,
  `r_project` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`r_name`),
  KEY `FK_researcher_profile_title` (`title`),
  KEY `FK_researcher_profile_role` (`role`),
  CONSTRAINT `FK_researcher_profile_role` FOREIGN KEY (`role`) REFERENCES `roles` (`role`),
  CONSTRAINT `FK_researcher_profile_title` FOREIGN KEY (`title`) REFERENCES `research` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `researcher_profile`
--

LOCK TABLES `researcher_profile` WRITE;
/*!40000 ALTER TABLE `researcher_profile` DISABLE KEYS */;
/*!40000 ALTER TABLE `researcher_profile` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-11  4:01:21
