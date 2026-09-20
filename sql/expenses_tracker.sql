-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: localhost    Database: expense_tracker
-- ------------------------------------------------------
-- Server version	8.0.46

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
-- Table structure for table `expenses`
--

DROP TABLE IF EXISTS `expenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `expenses` (
  `expense_id` int NOT NULL AUTO_INCREMENT,
  `amount` decimal(10,2) NOT NULL,
  `description` varchar(255) NOT NULL,
  `category` varchar(20) NOT NULL,
  `expense_date` date NOT NULL,
  PRIMARY KEY (`expense_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expenses`
--

LOCK TABLES `expenses` WRITE;
/*!40000 ALTER TABLE `expenses` DISABLE KEYS */;
INSERT INTO `expenses` VALUES (1,85.00,'Chicken meal','Food','2026-09-01'),(2,45.00,'Jeep fare','Transport','2026-09-01'),(3,120.00,'School supplies','School','2026-09-02'),(4,65.00,'Milk tea','Food','2026-09-02'),(5,30.00,'Jeep fare','Transport','2026-09-03'),(6,150.00,'Lunch with classmates','Food','2026-09-03'),(7,75.00,'Printing','School','2026-09-04'),(8,50.00,'Bus fare','Transport','2026-09-04'),(9,95.00,'Burger meal','Food','2026-09-05'),(10,200.00,'Programming book','School','2026-09-05'),(11,40.00,'Jeep fare','Transport','2026-09-06'),(12,55.00,'Breakfast','Food','2026-09-06'),(13,35.00,'Photocopying','School','2026-09-07'),(14,110.00,'Lunch','Food','2026-09-07'),(15,60.00,'Train fare','Transport','2026-09-08'),(16,80.00,'Coffee','Food','2026-09-08'),(17,125.00,'Notebook and pens','School','2026-09-09'),(18,45.00,'Jeep fare','Transport','2026-09-09'),(19,90.00,'Fried chicken','Food','2026-09-10'),(20,70.00,'Printing project','School','2026-09-10'),(21,35.00,'Jeep fare','Transport','2026-09-11'),(22,130.00,'Dinner','Food','2026-09-11'),(23,250.00,'School project materials','School','2026-09-12'),(24,55.00,'Snacks','Food','2026-09-12'),(25,50.00,'Bus fare','Transport','2026-09-13'),(26,100.00,'Lunch','Food','2026-09-13'),(27,40.00,'Photocopying','School','2026-09-14'),(28,75.00,'Coffee and pastry','Food','2026-09-14'),(29,45.00,'Jeep fare','Transport','2026-09-15'),(30,180.00,'Textbook','School','2026-09-15'),(31,115.00,'Lunch','Food','2026-09-16'),(32,60.00,'Train fare','Transport','2026-09-16'),(33,70.00,'Printing and binding','School','2026-09-17'),(34,55.00,'Snacks','Food','2026-09-17'),(35,40.00,'Jeep fare','Transport','2026-09-18'),(36,140.00,'Dinner','Food','2026-09-18'),(37,90.00,'School supplies','School','2026-09-19'),(38,65.00,'Milk tea','Food','2026-09-19'),(39,50.00,'Jeep fare','Transport','2026-09-20'),(40,105.00,'Lunch','Food','2026-09-20');
/*!40000 ALTER TABLE `expenses` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-09-20 19:56:33
