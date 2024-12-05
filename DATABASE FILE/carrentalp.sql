-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: carrentalp
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

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
-- Table structure for table `cars`
--

DROP TABLE IF EXISTS `cars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cars` (
  `car_id` int(20) NOT NULL AUTO_INCREMENT,
  `car_name` varchar(50) NOT NULL,
  `car_nameplate` varchar(50) NOT NULL,
  `car_img` varchar(50) DEFAULT 'NA',
  `ac_price` float NOT NULL,
  `non_ac_price` float NOT NULL,
  `ac_price_per_day` float NOT NULL,
  `non_ac_price_per_day` float NOT NULL,
  `car_availability` varchar(10) NOT NULL,
  PRIMARY KEY (`car_id`),
  UNIQUE KEY `car_nameplate` (`car_nameplate`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cars`
--

LOCK TABLES `cars` WRITE;
/*!40000 ALTER TABLE `cars` DISABLE KEYS */;
INSERT INTO `cars` VALUES (1,'Audi A4','GA3KA6969','assets/img/cars/audi-a4.jpg',36,26,5200,2600,'no'),(2,'Hyundai Creta','BA2CH2020','assets/img/cars/creta.jpg',22,12,2900,1400,'no'),(3,'BMW 6-Series','BA10PA5555','assets/img/cars/bmw6.jpg',39,30,6950,5999,'yes'),(4,'Mercedes-Benz E-Class','BA10CH6009','assets/img/cars/mcec.jpg',45,30,7200,5200,'yes'),(6,'Ford EcoSport','GA4PA2587','assets/img/cars/ecosport.png',21,13,3890,2600,'yes'),(7,'Honda Amaze','PJ16YX8820','assets/img/cars/amaze.png',14,12,2800,2400,'no'),(8,'Land Rover Range Rover Sport','GA5KH9669','assets/img/cars/rangero.jpg',36,26,6000,4600,'yes'),(9,'MG Hector','GA6PA6666','assets/img/cars/mghector.jpg',20,12,2900,1400,'yes'),(10,'Honda CR-V','TN17MS1997','assets/img/cars/hondacr.jpg',22,15,2850,1400,'yes'),(11,'Mahindra XUV 500','KA12EX1883','assets/img/cars/Mahindra XUV.jpg',15,13,3000,2600,'yes'),(12,'Toyota Fortuner','GA08MX1997','assets/img/cars/Fortuner.png',16,14,3200,2800,'yes'),(13,'Hyundai Veloster','BA20PA5685','assets/img/cars/hyundai0.png',23,15,4500,3500,'yes'),(14,'Jaguar XF','GA8KH8866','assets/img/cars/jaguarxf.jpg',39,29,6100,4380,'yes');
/*!40000 ALTER TABLE `cars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientcars`
--

DROP TABLE IF EXISTS `clientcars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientcars` (
  `car_id` int(20) NOT NULL,
  `client_username` varchar(50) NOT NULL,
  PRIMARY KEY (`car_id`),
  KEY `client_username` (`client_username`),
  CONSTRAINT `clientcars_ibfk_1` FOREIGN KEY (`client_username`) REFERENCES `clients` (`client_username`),
  CONSTRAINT `clientcars_ibfk_2` FOREIGN KEY (`car_id`) REFERENCES `cars` (`car_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientcars`
--

LOCK TABLES `clientcars` WRITE;
/*!40000 ALTER TABLE `clientcars` DISABLE KEYS */;
INSERT INTO `clientcars` VALUES (11,'Andres'),(8,'Augusto'),(9,'Feliz'),(12,'Harry'),(10,'Jennifer'),(14,'Jenny'),(7,'Juan'),(4,'Juana'),(2,'Maria'),(13,'Noemi'),(1,'Pablo'),(6,'Paula'),(3,'Pedro');
/*!40000 ALTER TABLE `clientcars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clients` (
  `client_username` varchar(50) NOT NULL,
  `client_name` varchar(50) NOT NULL,
  `client_phone` varchar(15) NOT NULL,
  `client_email` varchar(25) NOT NULL,
  `client_address` varchar(50) CHARACTER SET utf8 COLLATE utf8_estonian_ci NOT NULL,
  `client_password` varchar(20) NOT NULL,
  PRIMARY KEY (`client_username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES ('andres','Andres Rojas','8096666666','andres@gmail.com','Calle 6 #678','andres123'),('augusto','Augusto Ramirez','8094444444','augusto@gmail.com','Calle 4 #456','augusto123'),('employee','Daniel Polanco','8095970626','employee@gmial.com','Calle Jardines Del Sur. Res. Yinnet 1','12345'),('feliz','Feliz Lopez','8095555555','feliz@gmail.com','Calle 5 #567','feliz123'),('harry','Harry Den','8097777777','harryden@gmail.com','Calle 7 #789','harry123'),('jennifer','Jennifer Lopez','8292222222','jennifer@gmail.com','Calle 11 #234','jennifer123'),('jenny','Jenny Vargas','8294444444','jenny@gmail.com','Calle 13 #456','jenny123'),('juan','Juan Perez','8093333333','juan@gmail.com','Calle 3 #345','juan123'),('juana','Juana Reyes','8099999999','juana@gmail.com','Calle 9 #901','juana123'),('maria','Maria Fernandez','8098888888','maria@gmail.com','Calle 8 #890','maria123'),('noemi','Noemi Torres','8293333333','noemi@gmail.com','Calle 12 #345','noemi123'),('pablo','Pablo Martinez','8091111111','pablo@gmail.com','Calle 1 #123','pablo123'),('paula','Paula Jimenez','8291111111','paula@gmail.com','Calle 10 #123','paula123'),('pedro','Pedro Gomez','8092222222','pedro@gmail.com','Calle 2 #234','pedro123');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `customer_username` varchar(50) NOT NULL,
  `customer_name` varchar(50) NOT NULL,
  `customer_phone` varchar(15) NOT NULL,
  `customer_email` varchar(25) NOT NULL,
  `customer_address` varchar(50) NOT NULL,
  `customer_password` varchar(20) NOT NULL,
  PRIMARY KEY (`customer_username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES ('customer','Juan Polanco','8492770147','customer@gmail.com','Autopista De San Isidro. El Rosal. Calle Jardines ','12345');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `driver`
--

DROP TABLE IF EXISTS `driver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `driver` (
  `driver_id` int(20) NOT NULL AUTO_INCREMENT,
  `driver_name` varchar(50) NOT NULL,
  `dl_number` varchar(50) NOT NULL,
  `driver_phone` varchar(15) NOT NULL,
  `driver_address` varchar(50) NOT NULL,
  `driver_gender` varchar(10) NOT NULL,
  `client_username` varchar(50) NOT NULL,
  `driver_availability` varchar(10) NOT NULL,
  PRIMARY KEY (`driver_id`),
  UNIQUE KEY `dl_number` (`dl_number`),
  KEY `client_username` (`client_username`),
  CONSTRAINT `driver_ibfk_1` FOREIGN KEY (`client_username`) REFERENCES `clients` (`client_username`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driver`
--

LOCK TABLES `driver` WRITE;
/*!40000 ALTER TABLE `driver` DISABLE KEYS */;
/*!40000 ALTER TABLE `driver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback` (
  `name` varchar(20) NOT NULL,
  `e_mail` varchar(30) NOT NULL,
  `message` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES ('Nikhil','nikhil@gmail.com','Hope this works.');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rentedcars`
--

DROP TABLE IF EXISTS `rentedcars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rentedcars` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `customer_username` varchar(50) NOT NULL,
  `car_id` int(20) NOT NULL,
  `driver_id` int(20) NOT NULL,
  `booking_date` date NOT NULL,
  `rent_start_date` date NOT NULL,
  `rent_end_date` date NOT NULL,
  `car_return_date` date DEFAULT NULL,
  `fare` double NOT NULL,
  `charge_type` varchar(25) NOT NULL DEFAULT 'days',
  `distance` double DEFAULT NULL,
  `no_of_days` int(50) DEFAULT NULL,
  `total_amount` double DEFAULT NULL,
  `return_status` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_username` (`customer_username`),
  KEY `car_id` (`car_id`),
  KEY `driver_id` (`driver_id`),
  CONSTRAINT `rentedcars_ibfk_1` FOREIGN KEY (`customer_username`) REFERENCES `customers` (`customer_username`),
  CONSTRAINT `rentedcars_ibfk_2` FOREIGN KEY (`car_id`) REFERENCES `cars` (`car_id`),
  CONSTRAINT `rentedcars_ibfk_3` FOREIGN KEY (`driver_id`) REFERENCES `driver` (`driver_id`)
) ENGINE=InnoDB AUTO_INCREMENT=574681263 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rentedcars`
--

LOCK TABLES `rentedcars` WRITE;
/*!40000 ALTER TABLE `rentedcars` DISABLE KEYS */;
/*!40000 ALTER TABLE `rentedcars` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-04 19:03:37
