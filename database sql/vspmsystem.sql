-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: vspmsystem
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admins` (
  `admin_id` int NOT NULL AUTO_INCREMENT,
  `nic` varchar(15) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`admin_id`),
  UNIQUE KEY `nic` (`nic`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'123456789V','Martin Garrixs','martin@proparts.com','MARTIN123','2023-10-09 12:25:35'),(2,'987654321v','Sasindu Diluranga','sasi@proparts.com','SASINDU123','2023-10-09 12:25:35'),(5,'123456789012345','John Doe','john_admin','admin123','2023-10-15 13:51:28'),(6,'987654321098765','Jane Doe','jane_admin','admin456','2023-10-15 13:51:28'),(7,'555555555555555','Bob Smith','bob_admin','admin789','2023-10-15 13:51:28'),(8,'111111111111111','Alice Johnson','alice_admin','adminabc','2023-10-15 13:51:28'),(9,'999999999999999','Charlie Brown','charlie_admin','adminxyz','2023-10-15 13:51:28');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_info`
--

DROP TABLE IF EXISTS `contact_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_info`
--

LOCK TABLES `contact_info` WRITE;
/*!40000 ALTER TABLE `contact_info` DISABLE KEYS */;
INSERT INTO `contact_info` VALUES (1,'Sasindu','sasiofficial25@gmail.com','+94778231121','sadasd'),(2,'kasun wikrama','kasun@gamil.com','0775362212','im shop can i join with you ?'),(3,'Sasindu','sasiofficial25@gmail.com','+94778231121','hey im shop can i join ith you'),(4,'Sasindu','sasiofficial25@gmail.com','778231121','hello can i get an appointment ?'),(5,'chamithr@sdmusicrecordz','sir@gmail.com','0778564454','i cnt loging plz check\r\n'),(6,'dammika perera','dammika@gmail.com','0775362212','i want to change my password'),(7,'hemal perera','hemal@gmail.com','0775236648','i want to change my  password'),(8,'Tharangani','Tharangani@gmail.com','12236484849','I want to  add some item\r\n');
/*!40000 ALTER TABLE `contact_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `items` (
  `item_id` int NOT NULL AUTO_INCREMENT,
  `item_name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `description` text NOT NULL,
  `item_type` varchar(50) NOT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (1,'Spark Plug',5.99,'A spark plug for gasoline engines','Engine'),(2,'Oil Filter',7.99,'Standard oil filter for regular maintenance','Engine'),(3,'Air Filter',9.99,'High-efficiency air filter for better air intake','Engine'),(4,'Brake Pads',25.99,'Front brake pads for reliable stopping power','Brakes'),(5,'Brake Rotor',30.99,'Disc brake rotor for smooth braking','Brakes'),(6,'Transmission Fluid',12.99,'Automatic transmission fluid','Transmission'),(7,'Clutch Kit',55.99,'Complete clutch kit for manual transmissions','Transmission'),(8,'Radiator',45.99,'Aluminum radiator for efficient cooling','Cooling System'),(9,'Thermostat',8.99,'Engine thermostat for temperature control','Cooling System'),(10,'Battery',49.99,'12V car battery for reliable starting','Electrical'),(11,'Alternator',34.99,'Car alternator for electrical charging','Electrical'),(12,'Starter Motor',29.99,'Starter motor for engine cranking','Electrical'),(13,'Fuel Pump',19.99,'Electric fuel pump for fuel delivery','Fuel System'),(14,'Fuel Injector',15.99,'Fuel injector for efficient fuel injection','Fuel System'),(15,'Oxygen Sensor',11.99,'O2 sensor for precise air/fuel ratio measurement','Exhaust'),(16,'Catalytic Converter',39.99,'Catalytic converter for emissions control','Exhaust'),(17,'Tire',40.99,'All-season car tire for reliable traction','Tires'),(18,'Shock Absorber',14.99,'Front shock absorber for comfortable ride','Suspension'),(19,'Strut Assembly',21.99,'Complete strut assembly for suspension','Suspension'),(20,'Wheel Bearing',7.99,'Wheel bearing for smooth wheel rotation','Wheel & Axle'),(21,'Drive Belt',9.99,'Serpentine drive belt for engine accessories','Belts & Hoses'),(22,'Water Pump',24.99,'Engine water pump for cooling system','Cooling System'),(23,'Timing Belt',10.99,'Timing belt for engine timing','Belts & Hoses'),(24,'Motor Oil',8.99,'5W-30 motor oil for regular oil changes','Engine'),(25,'Power Steering Pump',18.99,'Power steering pump for steering assist','Steering'),(26,'Rack and Pinion',23.99,'Steering rack and pinion assembly','Steering'),(27,'Brake Caliper',22.99,'Front brake caliper for disc brakes','Brakes'),(28,'Distributor Cap',6.99,'Distributor cap for ignition system','Ignition'),(29,'Ignition Coil',9.99,'Ignition coil for spark generation','Ignition'),(30,'Spark Plug Wires',7.99,'Spark plug wires for electrical connection','Ignition'),(31,'Muffler',15.99,'Exhaust muffler for noise reduction','Exhaust'),(32,'Tailpipe',8.99,'Exhaust tailpipe for exhaust gases','Exhaust'),(33,'Fuel Tank',29.99,'Fuel tank for fuel storage','Fuel System'),(34,'Radiator Hose',4.99,'Radiator hose for coolant circulation','Belts & Hoses'),(35,'Wheel Hub Assembly',12.99,'Wheel hub assembly for wheel attachment','Wheel & Axle'),(36,'CV Joint',9.99,'CV joint for driveshaft connection','Wheel & Axle'),(37,'Axle Shaft',11.99,'Axle shaft for power transmission','Wheel & Axle'),(38,'Transmission Filter',6.99,'Transmission fluid filter for fluid cleaning','Transmission'),(39,'Battery Cable',4.99,'Battery cable for electrical connection','Electrical'),(40,'Brake Master Cylinder',15.99,'Master cylinder for brake fluid','Brakes'),(41,'Exhaust Manifold',17.99,'Exhaust manifold for exhaust gases','Exhaust'),(42,'Oil Pressure Switch',5.99,'Oil pressure switch for pressure sensing','Engine'),(43,'Wheel Lug Nut',0.99,'Lug nut for wheel attachment','Wheel & Axle'),(44,'Throttle Position Sensor',8.99,'Throttle position sensor for engine control','Engine'),(45,'new',200.00,'no','Belts & Hoses'),(46,'brake',299.00,'BMW car brake system ','Brakes'),(47,'mirror',299.00,'woxwagon win creen','other'),(48,'bike engine oil',65.00,'best bike oil by  ceat','Engine'),(49,'oil',20.00,'oli','Cooling System');
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shops`
--

DROP TABLE IF EXISTS `shops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shops` (
  `shop_id` int NOT NULL AUTO_INCREMENT,
  `shop_name` varchar(255) NOT NULL,
  `shop_address` varchar(255) NOT NULL,
  `shop_owner` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`shop_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shops`
--

LOCK TABLES `shops` WRITE;
/*!40000 ALTER TABLE `shops` DISABLE KEYS */;
INSERT INTO `shops` VALUES (25,'Electro World','123 Main St','John Smith','555-1234','info@electro.com','electro_shop','shop123'),(55,'zemba','sumal yasrathne','sumal yasrathne','0775232456','sumal@gmail.com','sumal@proparts.com','sumal123'),(61,'kasun new','kasun','kasun','0775234454','kasungmail.com','kasun','kasun123'),(66,'Benz Mart','24,duplication Rd,colombo 8.','dammika perera','011-558  4454','dammika@gmail.com','dP@Proparts.com','dp123'),(67,'Edirisinghe(pvt)ltd','23,Kandy RD.Kaduwela.','Kavindu Nipun','075 7894424','edirisinghe@gmail.com','edirisinghe@proparts.com','ediri123'),(75,'sombodyEvents','gunasena','gunasena','0777564454','gune@example.com','gune@proparts.com','gune123'),(76,'Yash enterpricess','21a,temple Rd,kuliyapitiya','Yashoda','0775642389','yash@gmail.com','Yash@proparts.com','yash123');
/*!40000 ALTER TABLE `shops` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suppliers` (
  `supplier_id` int NOT NULL AUTO_INCREMENT,
  `supplier_name` varchar(255) NOT NULL,
  `contact_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`supplier_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliers`
--

LOCK TABLES `suppliers` WRITE;
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
INSERT INTO `suppliers` VALUES (1,'Tech Suppliers Inc.','John Tech','john@techsuppliers.com','555-1234','tech_supplier','supplier123'),(2,'GO Distributors','Jane Fashion','jane@fashiondistributors.com','555-5678','fashion_supplier','supplier456'),(3,'garage Essentials Ltd.','Bob Home','bob@homeessentials.com','555-9876','home_supplier','supplier789'),(4,'Gadget World','Alice Gadgets','alice@gadgetworld.com','555-5555','gadget_supplier','supplierabc'),(5,'car Gear Co.','Charlie Sports','charlie@sportsgear.com','555-1111','sports_supplier','supplierxyz');
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wh_manager`
--

DROP TABLE IF EXISTS `wh_manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wh_manager` (
  `WM_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`WM_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wh_manager`
--

LOCK TABLES `wh_manager` WRITE;
/*!40000 ALTER TABLE `wh_manager` DISABLE KEYS */;
INSERT INTO `wh_manager` VALUES (1,'Shiham','shiham01','sh123'),(2,'John Doe','johndoe123','secret456'),(3,'Alice Smith','alice_smith','p@ssw0rd!'),(4,'Bob Johnson','bob.j','secure789'),(5,'Eve Brown','eveb','strongPassword');
/*!40000 ALTER TABLE `wh_manager` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-28  8:37:19
