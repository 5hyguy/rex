-- MySQL dump 10.13  Distrib 8.0.17, for macos10.14 (x86_64)
--
-- Host: 127.0.0.1    Database: rex
-- ------------------------------------------------------
-- Server version	8.0.19

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
  `employeeid` int NOT NULL AUTO_INCREMENT,
  `employee_name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`employeeid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Reto Fanzen','reto.fanzen@no-reply.rexx-systems.com'),(2,'Reto Fanzen','reto.fanzen@no-reply.rexx-systems.com'),(3,'Leandro Bußmann','leandro.bussmann@no-reply.rexx-systems.com'),(4,'Hans Schäfer','hans.schaefer@no-reply.rexx-systems.com'),(5,'Mia Wyss','mia.wyss@no-reply.rexx-systems.com'),(6,'Mia Wyss','mia.wyss@no-reply.rexx-systems.com'),(7,'Reto Fanzen','reto.fanzen@no-reply.rexx-systems.com'),(8,'Hans Schäfer','hans.schaefer@no-reply.rexx-systems.com');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `events` (
  `event_name` varchar(45) DEFAULT NULL,
  `event_id` int NOT NULL,
  `event_date` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES ('PHP 7 crash course',1,'2019-09-04'),('International PHP Conference',2,'2019-10-21'),('International PHP Conference',2,'2019-10-21'),('PHP 7 crash course',1,'2019-09-04'),('PHP 7 crash course',1,'2019-09-04'),('International PHP Conference',2,'2019-10-21 08:00:00'),('code.talks',3,'2019-10-24'),('code.talks',3,'2019-10-24');
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `participants`
--

DROP TABLE IF EXISTS `participants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `participants` (
  `participation_id` varchar(45) DEFAULT NULL,
  `participation_fee` varchar(45) DEFAULT NULL,
  `employee_id` varchar(45) DEFAULT NULL,
  `eventid` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participants`
--

LOCK TABLES `participants` WRITE;
/*!40000 ALTER TABLE `participants` DISABLE KEYS */;
INSERT INTO `participants` VALUES ('1','0','reto.fanzen@no-reply.rexx-systems.com','1'),('2','1485.99','reto.fanzen@no-reply.rexx-systems.com','2'),('3','657.50','leandro.bussmann@no-reply.rexx-systems.com','2'),('4','0','hans.schaefer@no-reply.rexx-systems.com','1'),('5','0','mia.wyss@no-reply.rexx-systems.com','1'),('6','657.50','mia.wyss@no-reply.rexx-systems.com','2'),('7','474.81','reto.fanzen@no-reply.rexx-systems.com','3'),('8','534.31','hans.schaefer@no-reply.rexx-systems.com','3');
/*!40000 ALTER TABLE `participants` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-17 17:49:11
