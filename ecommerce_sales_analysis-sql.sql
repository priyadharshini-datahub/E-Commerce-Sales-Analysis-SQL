CREATE DATABASE  IF NOT EXISTS `ecommerce_analysis` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ecommerce_analysis`;
-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: localhost    Database: ecommerce_analysis
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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `category_id` int NOT NULL,
  `category_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Electronics'),(2,'Clothing'),(3,'Home Appliances'),(4,'Books'),(5,'Sports');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `customer_id` int NOT NULL,
  `customer_name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `signup_date` date DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Arun Kumar','arun@gmail.com','Chennai','2024-01-15'),(2,'Priya Sharma','priya@gmail.com','Coimbatore','2024-01-20'),(3,'Rahul Raj','rahul@gmail.com','Bangalore','2024-02-05'),(4,'Divya S','divya@gmail.com','Madurai','2024-02-18'),(5,'Karthik M','karthik@gmail.com','Salem','2024-03-10'),(6,'Sneha R','sneha@gmail.com','Chennai','2024-03-22'),(7,'Vijay Kumar','vijay@gmail.com','Coimbatore','2024-04-02'),(8,'Anjali P','anjali@gmail.com','Trichy','2024-04-15'),(9,'Suresh B','suresh@gmail.com','Bangalore','2024-05-01'),(10,'Meena K','meena@gmail.com','Erode','2024-05-18'),(11,'Naveen R','naveen@gmail.com','Chennai','2024-06-05'),(12,'Lakshmi V','lakshmi@gmail.com','Madurai','2024-06-20'),(13,'Ganesh P','ganesh@gmail.com','Salem','2024-07-08'),(14,'Aishwarya S','aishwarya@gmail.com','Coimbatore','2024-07-25'),(15,'Manoj K','manoj@gmail.com','Trichy','2024-08-10');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_items` (
  `order_item_id` int NOT NULL,
  `order_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  PRIMARY KEY (`order_item_id`),
  KEY `order_id` (`order_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_items`
--

LOCK TABLES `order_items` WRITE;
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;
INSERT INTO `order_items` VALUES (1,1001,101,1),(2,1001,103,2),(3,1002,102,1),(4,1002,104,1),(5,1003,105,3),(6,1003,106,1),(7,1004,101,1),(8,1004,115,1),(9,1005,109,1),(10,1005,110,2),(11,1006,107,1),(12,1007,102,1),(13,1007,103,1),(14,1008,111,2),(15,1008,112,1),(16,1009,107,2),(17,1009,108,1),(18,1010,114,1),(19,1010,110,1),(20,1011,102,1),(21,1011,104,1),(22,1012,115,2),(23,1012,103,1),(24,1013,105,2),(25,1013,106,1),(26,1014,109,1),(27,1014,114,1),(28,1015,111,1),(29,1015,112,2),(30,1016,110,2),(31,1016,109,1),(32,1017,113,1),(33,1017,107,1),(34,1018,108,2),(35,1018,113,1),(36,1019,101,1),(37,1019,102,1),(38,1020,114,1),(39,1021,101,1),(40,1021,104,1),(41,1022,103,2),(42,1022,115,1),(43,1023,107,1),(44,1023,113,1),(45,1024,102,1),(46,1024,115,1),(47,1025,105,3),(48,1025,111,1);
/*!40000 ALTER TABLE `order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `order_id` int NOT NULL,
  `customer_id` int DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `order_status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1001,1,'2024-01-25','Delivered'),(1002,2,'2024-02-02','Delivered'),(1003,3,'2024-02-15','Delivered'),(1004,1,'2024-03-05','Delivered'),(1005,4,'2024-03-12','Delivered'),(1006,5,'2024-03-20','Cancelled'),(1007,6,'2024-04-01','Delivered'),(1008,2,'2024-04-10','Delivered'),(1009,7,'2024-04-18','Delivered'),(1010,8,'2024-05-05','Delivered'),(1011,3,'2024-05-15','Delivered'),(1012,9,'2024-05-25','Delivered'),(1013,10,'2024-06-03','Delivered'),(1014,4,'2024-06-15','Delivered'),(1015,11,'2024-06-25','Delivered'),(1016,12,'2024-07-05','Delivered'),(1017,5,'2024-07-15','Delivered'),(1018,13,'2024-07-25','Delivered'),(1019,14,'2024-08-05','Delivered'),(1020,15,'2024-08-15','Pending'),(1021,1,'2024-09-01','Delivered'),(1022,6,'2024-09-10','Delivered'),(1023,7,'2024-09-20','Delivered'),(1024,9,'2024-10-05','Delivered'),(1025,10,'2024-10-15','Delivered');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `product_id` int NOT NULL,
  `product_name` varchar(100) DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`product_id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (101,'Laptop',1,55000.00),(102,'Smartphone',1,25000.00),(103,'Headphones',1,2500.00),(104,'Smart Watch',1,5000.00),(105,'T-Shirt',2,800.00),(106,'Jeans',2,1800.00),(107,'Running Shoes',5,3500.00),(108,'Football',5,1200.00),(109,'Mixer Grinder',3,4500.00),(110,'Electric Kettle',3,1800.00),(111,'Python Programming',4,900.00),(112,'Data Analytics Book',4,1200.00),(113,'Cricket Bat',5,2500.00),(114,'Air Fryer',3,6500.00),(115,'Bluetooth Speaker',1,3200.00);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-08-09 15:28:40
