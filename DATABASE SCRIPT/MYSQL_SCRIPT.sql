CREATE DATABASE  IF NOT EXISTS `magnohardware_sales_and_inventory_system` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `magnohardware_sales_and_inventory_system`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: magnohardware_sales_and_inventory_system
-- ------------------------------------------------------
-- Server version	5.7.19-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tbl_categories`
--

DROP TABLE IF EXISTS `tbl_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_categories` (
  `Id` int(1) NOT NULL AUTO_INCREMENT,
  `Category` varchar(22) NOT NULL,
  `Date` date NOT NULL,
  `Time` varchar(11) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Category_UNIQUE` (`Category`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_categories`
--

LOCK TABLES `tbl_categories` WRITE;
/*!40000 ALTER TABLE `tbl_categories` DISABLE KEYS */;
INSERT INTO `tbl_categories` VALUES (1,'Marine Valves','2019-12-27','8:54:20 PM'),(2,'Fittings','2019-12-27','8:54:30 PM'),(3,'Forged Steel Valves','2019-12-27','8:54:40 PM'),(4,'Bronze Valves','2019-12-28','8:54:50 PM'),(5,'Stainless Steel Valves','2019-12-29','9:55:00 PM');
/*!40000 ALTER TABLE `tbl_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_inventory`
--

DROP TABLE IF EXISTS `tbl_inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_inventory` (
  `Id` int(6) NOT NULL AUTO_INCREMENT,
  `Product_Id` varchar(5) NOT NULL,
  `Status_Id` int(1) NOT NULL,
  `Unit_Id` int(1) NOT NULL,
  `Quantity` int(6) NOT NULL,
  `User_Id` int(1) NOT NULL,
  `Date` date NOT NULL,
  `Time` varchar(11) NOT NULL,
  `Is_Current` int(1) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `FK_tbl_inventory_tbl_status_Status_Id_idx` (`Status_Id`),
  KEY `FK_tbl_inventory_tbl_users_User_Id_idx` (`User_Id`),
  KEY `FK_tbl_products_tbl_units_Unit_Id_idx` (`Unit_Id`),
  KEY `FK_tbl_inventory_tbl_products_Product_Id_idx` (`Product_Id`),
  CONSTRAINT `FK_tbl_inventory_tbl_products_Product_Id` FOREIGN KEY (`Product_Id`) REFERENCES `tbl_products` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_tbl_inventory_tbl_status_Status_Id` FOREIGN KEY (`Status_Id`) REFERENCES `tbl_status` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_tbl_inventory_tbl_units_Unit_Id` FOREIGN KEY (`Unit_Id`) REFERENCES `tbl_units` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_tbl_inventory_tbl_users_User_Id` FOREIGN KEY (`User_Id`) REFERENCES `tbl_users` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_inventory`
--

LOCK TABLES `tbl_inventory` WRITE;
/*!40000 ALTER TABLE `tbl_inventory` DISABLE KEYS */;
INSERT INTO `tbl_inventory` VALUES (4,'00001',1,1,10,1,'2020-01-16','2:15:08 PM',0),(6,'00002',1,2,5,1,'2020-01-16','2:15:27 PM',0),(7,'00003',1,1,15,1,'2020-01-16','2:15:21 PM',0),(8,'00004',1,3,20,2,'2020-02-06','5:38:24 PM',0),(9,'00005',1,1,5,1,'2020-01-16','1:57:25 PM',1),(10,'00006',1,1,15,2,'2020-01-16','2:16:06 PM',0),(11,'00007',1,3,6,1,'2020-01-16','1:57:56 PM',1),(12,'00008',1,1,11,2,'2020-02-05','11:56:44 AM',0),(13,'00009',1,4,3,1,'2020-01-16','1:58:37 PM',1),(14,'00010',1,1,7,1,'2020-01-16','1:59:32 PM',1),(15,'00011',1,2,9,2,'2020-01-16','2:16:11 PM',0),(16,'00012',1,1,5,1,'2020-01-16','2:00:12 PM',1),(17,'00013',1,2,12,1,'2020-01-16','2:00:24 PM',1),(18,'00014',1,1,20,2,'2020-01-16','2:17:54 PM',0),(19,'00015',1,1,25,1,'2020-01-16','2:00:59 PM',1),(20,'00016',1,4,3,1,'2020-01-16','2:01:18 PM',1),(21,'00017',1,1,12,1,'2020-01-16','2:01:42 PM',1),(22,'00018',1,4,8,1,'2020-01-16','2:01:56 PM',1),(23,'00019',1,1,11,1,'2020-01-16','2:02:09 PM',1),(24,'00020',1,1,11,1,'2020-02-08','1:39:57 PM',1),(25,'00001',1,1,7,1,'2020-02-05','11:55:58 AM',0),(26,'00001',2,1,3,1,'2020-01-16','2:15:08 PM',0),(27,'00003',1,1,14,1,'2020-02-05','11:56:13 AM',0),(28,'00003',2,1,1,1,'2020-01-16','2:15:21 PM',0),(29,'00002',1,2,3,1,'2020-01-16','2:15:27 PM',1),(30,'00002',2,2,2,1,'2020-01-16','2:15:27 PM',0),(31,'00006',1,1,12,2,'2020-01-16','2:16:06 PM',1),(32,'00006',2,1,3,2,'2020-01-16','2:16:06 PM',0),(33,'00011',1,2,6,2,'2020-01-16','2:16:11 PM',1),(34,'00011',2,2,3,2,'2020-01-16','2:16:11 PM',0),(35,'00014',1,1,18,2,'2020-01-16','2:17:54 PM',1),(36,'00014',2,1,2,2,'2020-01-16','2:17:54 PM',0),(37,'00001',1,1,5,1,'2020-02-06','4:46:11 PM',0),(38,'00001',2,1,2,1,'2020-02-05','11:55:58 AM',0),(39,'00003',1,1,9,1,'2020-02-05','11:56:13 AM',1),(40,'00003',2,1,5,1,'2020-02-05','11:56:13 AM',0),(41,'00008',1,1,6,2,'2020-02-05','11:56:44 AM',1),(42,'00008',2,1,5,2,'2020-02-05','11:56:44 AM',0),(43,'00001',1,1,10,1,'2020-02-08','4:04:19 PM',0),(44,'00001',2,1,5,1,'2020-02-06','4:46:11 PM',0),(45,'00004',1,3,17,2,'2020-02-06','5:38:24 PM',1),(46,'00004',2,3,3,2,'2020-02-06','5:38:24 PM',0),(47,'00001',1,1,5,1,'2020-02-08','4:10:54 PM',1),(48,'00001',2,1,5,1,'2020-02-08','4:10:54 PM',0);
/*!40000 ALTER TABLE `tbl_inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_print_sales`
--

DROP TABLE IF EXISTS `tbl_print_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_print_sales` (
  `Id` int(6) NOT NULL AUTO_INCREMENT,
  `Account_Name` varchar(50) NOT NULL,
  `Sub_Total` decimal(10,2) NOT NULL,
  `Date` date NOT NULL,
  `Time` varchar(11) NOT NULL,
  `Total` varchar(9) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_print_sales`
--

LOCK TABLES `tbl_print_sales` WRITE;
/*!40000 ALTER TABLE `tbl_print_sales` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_print_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_products`
--

DROP TABLE IF EXISTS `tbl_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_products` (
  `Id` varchar(5) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Price` decimal(10,2) NOT NULL,
  `Category_Id` int(1) NOT NULL,
  `Supplier_Id` int(2) NOT NULL,
  `User_Id` int(1) NOT NULL,
  `Date` date NOT NULL,
  `Time` varchar(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `FK_tbl_products_tbl_categories_Category_Id_idx` (`Category_Id`),
  KEY `FK_tbl_products_tbl_suppliers_Supplier_Id_idx` (`Supplier_Id`),
  KEY `FK_tbl_products_tbl_users_User_Id_idx` (`User_Id`),
  CONSTRAINT `FK_tbl_products_tbl_categories_Category_Id` FOREIGN KEY (`Category_Id`) REFERENCES `tbl_categories` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_tbl_products_tbl_suppliers_Supplier_Id` FOREIGN KEY (`Supplier_Id`) REFERENCES `tbl_suppliers` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_tbl_products_tbl_users_User_Id` FOREIGN KEY (`User_Id`) REFERENCES `tbl_users` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_products`
--

LOCK TABLES `tbl_products` WRITE;
/*!40000 ALTER TABLE `tbl_products` DISABLE KEYS */;
INSERT INTO `tbl_products` VALUES ('00001','Torch',400.00,2,3,1,'2020-01-05','5:40:52 PM'),('00002','Globe Hose Valve',300.00,1,3,1,'2020-01-06','5:41:52 PM'),('00003','Globe Screw Down Valve',100.00,1,2,2,'2020-01-06','5:42:40 PM'),('00004','NRS Gate Valve',150.00,1,3,2,'2020-01-07','5:44:20 PM'),('00005','Air Vent Heads',250.00,1,4,2,'2020-01-16','1:39:50 PM'),('00006','Rubber Flexible Joint',350.00,1,5,2,'2020-01-16','1:40:30 PM'),('00007','Blind Flange',200.00,2,3,2,'2020-01-16','1:41:00 PM'),('00008','Lap Joint',400.00,2,4,2,'2020-01-16','1:41:20 PM'),('00009','Cap',200.00,2,4,2,'2020-01-16','1:41:44 PM'),('00010','Reducers',100.00,2,3,2,'2020-01-16','1:42:06 PM'),('00011','Plug',100.00,2,1,2,'2020-01-16','1:42:53 PM'),('00012','Supervisory Switch',500.00,4,5,2,'2020-01-16','1:43:26 PM'),('00013','Fire Hose',240.00,4,5,2,'2020-01-16','1:44:11 PM'),('00014','Hose Nipple',150.00,4,4,2,'2020-01-16','1:44:47 PM'),('00015','Water Flow Switch',100.00,4,5,2,'2020-01-16','1:45:34 PM'),('00016','Sprinkler Heads',300.00,4,4,2,'2020-01-16','1:46:41 PM'),('00017','Globe Valve',200.00,3,2,2,'2020-01-16','1:47:01 PM'),('00018','Check Valve',450.00,3,1,2,'2020-01-16','1:47:28 PM'),('00019','Y Strainers',300.00,5,2,2,'2020-01-16','1:47:53 PM'),('00020','Gate Valve Thread',240.00,5,1,2,'2020-01-16','1:48:20 PM');
/*!40000 ALTER TABLE `tbl_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_sales`
--

DROP TABLE IF EXISTS `tbl_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_sales` (
  `Id` int(6) NOT NULL AUTO_INCREMENT,
  `User_Id` int(1) NOT NULL,
  `Sub_Total` decimal(10,2) NOT NULL,
  `Date` date NOT NULL,
  `Time` varchar(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `FK_tbl_sales_tbl_users_User_Id_idx` (`User_Id`),
  CONSTRAINT `FK_tbl_sales_tbl_users_User_Id` FOREIGN KEY (`User_Id`) REFERENCES `tbl_users` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_sales`
--

LOCK TABLES `tbl_sales` WRITE;
/*!40000 ALTER TABLE `tbl_sales` DISABLE KEYS */;
INSERT INTO `tbl_sales` VALUES (3,1,1900.00,'2020-01-16','2:15:28 PM'),(4,2,1650.00,'2020-01-16','2:17:55 PM'),(5,1,1300.00,'2020-02-05','11:56:14 AM'),(6,2,2000.00,'2020-02-05','11:56:45 AM'),(7,1,2000.00,'2020-02-06','4:46:12 PM'),(8,2,450.00,'2020-02-06','5:38:25 PM'),(9,1,2000.00,'2020-02-08','4:10:54 PM');
/*!40000 ALTER TABLE `tbl_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_status`
--

DROP TABLE IF EXISTS `tbl_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_status` (
  `Id` int(1) NOT NULL AUTO_INCREMENT,
  `Status` varchar(3) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Status_UNIQUE` (`Status`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_status`
--

LOCK TABLES `tbl_status` WRITE;
/*!40000 ALTER TABLE `tbl_status` DISABLE KEYS */;
INSERT INTO `tbl_status` VALUES (1,'IN'),(2,'OUT');
/*!40000 ALTER TABLE `tbl_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_suppliers`
--

DROP TABLE IF EXISTS `tbl_suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_suppliers` (
  `Id` int(2) NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) NOT NULL,
  `Type_Id` int(1) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Contact_Number` varchar(45) NOT NULL,
  `Address` mediumtext NOT NULL,
  `User_Id` int(1) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `FK_tbl_suppliers_tbl_types_Type_Id_idx` (`Type_Id`),
  KEY `FK_tbl_suppliers_tbl_users_User_Id_idx` (`User_Id`),
  CONSTRAINT `FK_tbl_suppliers_tbl_types_Type_Id` FOREIGN KEY (`Type_Id`) REFERENCES `tbl_types` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_tbl_suppliers_tbl_users_User_Id` FOREIGN KEY (`User_Id`) REFERENCES `tbl_users` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_suppliers`
--

LOCK TABLES `tbl_suppliers` WRITE;
/*!40000 ALTER TABLE `tbl_suppliers` DISABLE KEYS */;
INSERT INTO `tbl_suppliers` VALUES (1,'Goldpeak Tools Hardware',1,'goldpeaktoolshardware@yahoo.com','09475613881','Blumentritt Rd, Sampaloc, Manila, Metro Manila',1),(2,'Ace Hardware',1,'Acehardware22@gmail.com','09432482948','1067 Fugoso St. Kusang loob Sta Cruz Manila',1),(3,'Johnny Hardware',2,'johnnyhardware10@yahoo.com','12434194','USA',1),(4,'Yales Hardware',1,'yale01@gmail.com','09846458558','MANILA TONDO MANILA',1),(5,'John Wicks Incorporation',2,'zoldyck@yahoo.com','09193456678 / 6673997','manila',2);
/*!40000 ALTER TABLE `tbl_suppliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_types`
--

DROP TABLE IF EXISTS `tbl_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_types` (
  `Id` int(1) NOT NULL AUTO_INCREMENT,
  `Type` varchar(13) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Type_UNIQUE` (`Type`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_types`
--

LOCK TABLES `tbl_types` WRITE;
/*!40000 ALTER TABLE `tbl_types` DISABLE KEYS */;
INSERT INTO `tbl_types` VALUES (2,'International'),(1,'Local');
/*!40000 ALTER TABLE `tbl_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_units`
--

DROP TABLE IF EXISTS `tbl_units`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_units` (
  `Id` int(1) NOT NULL AUTO_INCREMENT,
  `Unit` varchar(4) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Unit_UNIQUE` (`Unit`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_units`
--

LOCK TABLES `tbl_units` WRITE;
/*!40000 ALTER TABLE `tbl_units` DISABLE KEYS */;
INSERT INTO `tbl_units` VALUES (3,'DOZ'),(1,'PCS'),(4,'ROLL'),(2,'SET');
/*!40000 ALTER TABLE `tbl_units` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_users`
--

DROP TABLE IF EXISTS `tbl_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_users` (
  `Id` int(1) NOT NULL AUTO_INCREMENT,
  `Username` varchar(12) NOT NULL,
  `Password` char(76) NOT NULL,
  `Full_Name` varchar(50) NOT NULL,
  `Secret_Question` varchar(40) NOT NULL,
  `Secret_Answer` char(76) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Username_UNIQUE` (`Username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_users`
--

LOCK TABLES `tbl_users` WRITE;
/*!40000 ALTER TABLE `tbl_users` DISABLE KEYS */;
INSERT INTO `tbl_users` VALUES (1,'JCM','$2a$11$gRQi22bklGRrKzVrSThr4u0MR4bIqL0L8pNwtLi2i8A7G2SvAmFG6','Joshua C. Magoliman','What is your contact number?','$2a$11$mABkBnvadvD8lNoFvbHOs.OnkaP6Am3DDsfpBk3ARYU1YRkjutyEu'),(2,'QWE','$2a$11$iEFcvIqISJcITGejFGu.Ae/UEB.fqvS8bEacOpPqMM5x9nFeQNVdW','Joanna Mae C. Magoliman','What is your job?','$2a$11$a4/4SX7KYokkT6Fv1ovE0ervracIIoBQjjgRGjn6H17p3tBaGW2M6');
/*!40000 ALTER TABLE `tbl_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vw_getdata_accounts`
--

DROP TABLE IF EXISTS `vw_getdata_accounts`;
/*!50001 DROP VIEW IF EXISTS `vw_getdata_accounts`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_getdata_accounts` AS SELECT 
 1 AS `ID`,
 1 AS `USERNAME`,
 1 AS `PASSWORD`,
 1 AS `ACCOUNT NAME`,
 1 AS `SECRET QUESTION`,
 1 AS `SECRET ANSWER`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_getdata_inventory_in_currentavailable`
--

DROP TABLE IF EXISTS `vw_getdata_inventory_in_currentavailable`;
/*!50001 DROP VIEW IF EXISTS `vw_getdata_inventory_in_currentavailable`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_getdata_inventory_in_currentavailable` AS SELECT 
 1 AS `ID`,
 1 AS `PRODUCT NAME`,
 1 AS `STATUS`,
 1 AS `UNIT`,
 1 AS `QUANTITY`,
 1 AS `ACCOUNT NAME`,
 1 AS `DATE`,
 1 AS `TIME`,
 1 AS `IS CURRENT`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_getdata_inventory_in_history`
--

DROP TABLE IF EXISTS `vw_getdata_inventory_in_history`;
/*!50001 DROP VIEW IF EXISTS `vw_getdata_inventory_in_history`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_getdata_inventory_in_history` AS SELECT 
 1 AS `ID`,
 1 AS `PRODUCT NAME`,
 1 AS `STATUS`,
 1 AS `UNIT`,
 1 AS `QUANTITY`,
 1 AS `ACCOUNT NAME`,
 1 AS `DATE`,
 1 AS `TIME`,
 1 AS `IS CURRENT`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_getdata_inventory_in_manage`
--

DROP TABLE IF EXISTS `vw_getdata_inventory_in_manage`;
/*!50001 DROP VIEW IF EXISTS `vw_getdata_inventory_in_manage`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_getdata_inventory_in_manage` AS SELECT 
 1 AS `ID`,
 1 AS `PRODUCT NAME`,
 1 AS `STATUS`,
 1 AS `UNIT`,
 1 AS `QUANTITY`,
 1 AS `ACCOUNT NAME`,
 1 AS `DATE`,
 1 AS `TIME`,
 1 AS `IS CURRENT`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_getdata_inventory_out`
--

DROP TABLE IF EXISTS `vw_getdata_inventory_out`;
/*!50001 DROP VIEW IF EXISTS `vw_getdata_inventory_out`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_getdata_inventory_out` AS SELECT 
 1 AS `ID`,
 1 AS `PRODUCT NAME`,
 1 AS `STATUS`,
 1 AS `UNIT`,
 1 AS `QUANTITY`,
 1 AS `ACCOUNT NAME`,
 1 AS `DATE`,
 1 AS `TIME`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_getdata_products_manageproducts`
--

DROP TABLE IF EXISTS `vw_getdata_products_manageproducts`;
/*!50001 DROP VIEW IF EXISTS `vw_getdata_products_manageproducts`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_getdata_products_manageproducts` AS SELECT 
 1 AS `PRODUCT ID`,
 1 AS `NAME`,
 1 AS `PRICE`,
 1 AS `PRODUCT CATEGORY`,
 1 AS `SUPPLIER`,
 1 AS `ACCOUNT NAME`,
 1 AS `DATE`,
 1 AS `TIME`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_getdata_products_productcategories`
--

DROP TABLE IF EXISTS `vw_getdata_products_productcategories`;
/*!50001 DROP VIEW IF EXISTS `vw_getdata_products_productcategories`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_getdata_products_productcategories` AS SELECT 
 1 AS `ID`,
 1 AS `CATEGORY NAME`,
 1 AS `DATE`,
 1 AS `TIME`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_getdata_sales`
--

DROP TABLE IF EXISTS `vw_getdata_sales`;
/*!50001 DROP VIEW IF EXISTS `vw_getdata_sales`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_getdata_sales` AS SELECT 
 1 AS `ID`,
 1 AS `ACCOUNT NAME`,
 1 AS `SUB TOTAL`,
 1 AS `DATE`,
 1 AS `TIME`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_getdata_suppliers`
--

DROP TABLE IF EXISTS `vw_getdata_suppliers`;
/*!50001 DROP VIEW IF EXISTS `vw_getdata_suppliers`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_getdata_suppliers` AS SELECT 
 1 AS `ID`,
 1 AS `SUPPLIER NAME`,
 1 AS `TYPE`,
 1 AS `EMAIL`,
 1 AS `CONTACT NUMBER`,
 1 AS `ADDRESS`,
 1 AS `ACCOUNT NAME`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'magnohardware_sales_and_inventory_system'
--

--
-- Dumping routines for database 'magnohardware_sales_and_inventory_system'
--
/*!50003 DROP PROCEDURE IF EXISTS `sp_CreateNewProduct` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `sp_CreateNewProduct`(IN param_Id VARCHAR(5), IN param_Name VARCHAR(50),
IN param_Price DECIMAL(10,2), IN param_CategoryId INT(1) ,IN param_SupplierId INT(2),
IN param_UserId INT(1), IN param_Date date, IN param_Time VARCHAR(11)
)
BEGIN
INSERT INTO tbl_products (Id, Name, Price, Category_Id, Supplier_Id, User_Id, Date, Time)
VALUES (param_Id, param_Name, param_Price, param_CategoryId, param_SupplierId, 
param_UserId, param_Date, param_Time);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_CreateNewProductCategory` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `sp_CreateNewProductCategory`(IN param_CategoryName VARCHAR(22),
IN param_Date date, IN param_Time VARCHAR(11)
)
BEGIN
INSERT INTO tbl_categories (Category, Date, Time)
VALUES (param_CategoryName, param_Date, param_Time);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_CreateNewProductInInventory` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `sp_CreateNewProductInInventory`(IN param_ProductId VARCHAR(5),
IN param_StatusId INT(1), IN param_UnitId INT(1), IN param_Quantity INT(6), 
IN param_UserId INT(1), IN param_Date date, IN param_Time VARCHAR(11), IN param_IsCurrent INT(1)
)
BEGIN
INSERT INTO tbl_inventory (Product_Id, Status_Id, Unit_Id, Quantity, User_Id, Date, Time, Is_Current)
VALUES (param_ProductId, param_StatusId, param_UnitId, param_Quantity, param_UserId, param_Date, param_Time, param_IsCurrent);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_CreateNewProductOutInventory` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `sp_CreateNewProductOutInventory`(IN param_ProductId VARCHAR(5),
IN param_StatusId INT(1), IN param_UnitId INT(1), IN param_Quantity INT(6), 
IN param_UserId INT(1), IN param_Date date, IN param_Time VARCHAR(11), IN param_IsCurrent INT(1)
)
BEGIN
INSERT INTO tbl_inventory (Product_Id, Status_Id, Unit_Id, Quantity, User_Id, Date, Time, Is_Current)
VALUES (param_ProductId, param_StatusId, param_UnitId, param_Quantity, param_UserId, param_Date, param_Time, param_IsCurrent);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_CreateNewSupplier` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `sp_CreateNewSupplier`(IN param_Name VARCHAR(45),
IN param_TypeId INT(1), IN param_Email VARCHAR(50) ,IN param_ContactNumber VARCHAR(45),
IN param_Address MEDIUMTEXT, IN param_UserId INT(1))
BEGIN
INSERT INTO tbl_suppliers (Name, Type_Id, Email, Contact_Number, Address, User_Id)
VALUES (param_Name, param_TypeId, param_Email, param_ContactNumber, param_Address, param_UserId);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_CreateNewUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `sp_CreateNewUser`(IN param_Username varchar(12),IN param_Password CHAR(76),
IN param_FullName varchar(50), IN param_SecretQuestion varchar(40),IN param_SecretAnswer CHAR(76))
BEGIN
INSERT INTO tbl_Users (Username, Password, Full_Name, Secret_Question, Secret_Answer )
VALUES (param_Username, param_Password, param_FullName, param_SecretQuestion, param_SecretAnswer);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_DeleteExistingProduct` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `sp_DeleteExistingProduct`(IN param_Id INT(6)
)
BEGIN
DELETE FROM magnohardware_sales_and_inventory_system.tbl_inventory WHERE Id = param_Id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_DeleteExistingProductCategory` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `sp_DeleteExistingProductCategory`(IN param_Id int)
BEGIN
DELETE FROM magnohardware_sales_and_inventory_system.tbl_categories WHERE Id = param_Id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_DeleteExistingSupplier` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `sp_DeleteExistingSupplier`(IN param_Id int)
BEGIN
DELETE FROM magnohardware_sales_and_inventory_system.tbl_suppliers WHERE Id = param_Id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_GetProductByAccountName` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `sp_GetProductByAccountName`(IN param_AccountName VARCHAR(50))
BEGIN
   
    SELECT 
        `magnohardware_sales_and_inventory_system`.`tbl_products`.`Id` AS `PRODUCT ID`,
        `magnohardware_sales_and_inventory_system`.`tbl_products`.`Name` AS `NAME`,
        `magnohardware_sales_and_inventory_system`.`tbl_products`.`Price` AS `PRICE`,
        `magnohardware_sales_and_inventory_system`.`tbl_categories`.`Category` AS `PRODUCT CATEGORY`,
        `magnohardware_sales_and_inventory_system`.`tbl_suppliers`.`Name` AS `SUPPLIER`,
        `magnohardware_sales_and_inventory_system`.`tbl_users`.`Full_Name` AS `ACCOUNT NAME`,
        `magnohardware_sales_and_inventory_system`.`tbl_products`.`Date` AS `DATE`,
        `magnohardware_sales_and_inventory_system`.`tbl_products`.`Time` AS `TIME`
    FROM
        (((`magnohardware_sales_and_inventory_system`.`tbl_products`
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_categories` ON ((`magnohardware_sales_and_inventory_system`.`tbl_products`.`Category_Id` = `magnohardware_sales_and_inventory_system`.`tbl_categories`.`Id`)))
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_suppliers` ON ((`magnohardware_sales_and_inventory_system`.`tbl_products`.`Supplier_Id` = `magnohardware_sales_and_inventory_system`.`tbl_suppliers`.`Id`)))
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_users` ON ((`magnohardware_sales_and_inventory_system`.`tbl_products`.`User_Id` = `magnohardware_sales_and_inventory_system`.`tbl_users`.`Id`)))
   

    WHERE
        (`magnohardware_sales_and_inventory_system`.`tbl_users`.`Full_Name` LIKE param_AccountName)
      ORDER BY `magnohardware_sales_and_inventory_system`.`tbl_products`.`Id`;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_GetProductByDate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `sp_GetProductByDate`(IN param_Date VARCHAR(11))
BEGIN
   
    SELECT 
        `magnohardware_sales_and_inventory_system`.`tbl_products`.`Id` AS `PRODUCT ID`,
        `magnohardware_sales_and_inventory_system`.`tbl_products`.`Name` AS `NAME`,
        `magnohardware_sales_and_inventory_system`.`tbl_products`.`Price` AS `PRICE`,
        `magnohardware_sales_and_inventory_system`.`tbl_categories`.`Category` AS `PRODUCT CATEGORY`,
        `magnohardware_sales_and_inventory_system`.`tbl_suppliers`.`Name` AS `SUPPLIER`,
        `magnohardware_sales_and_inventory_system`.`tbl_users`.`Full_Name` AS `ACCOUNT NAME`,
        `magnohardware_sales_and_inventory_system`.`tbl_products`.`Date` AS `DATE`,
        `magnohardware_sales_and_inventory_system`.`tbl_products`.`Time` AS `TIME`
    FROM
        (((`magnohardware_sales_and_inventory_system`.`tbl_products`
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_categories` ON ((`magnohardware_sales_and_inventory_system`.`tbl_products`.`Category_Id` = `magnohardware_sales_and_inventory_system`.`tbl_categories`.`Id`)))
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_suppliers` ON ((`magnohardware_sales_and_inventory_system`.`tbl_products`.`Supplier_Id` = `magnohardware_sales_and_inventory_system`.`tbl_suppliers`.`Id`)))
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_users` ON ((`magnohardware_sales_and_inventory_system`.`tbl_products`.`User_Id` = `magnohardware_sales_and_inventory_system`.`tbl_users`.`Id`)))
   

    WHERE
        (`magnohardware_sales_and_inventory_system`.`tbl_products`.`Date` LIKE CONCAT("%",param_Date,"%"))
      ORDER BY `magnohardware_sales_and_inventory_system`.`tbl_products`.`Id`;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_GetProductByName` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `sp_GetProductByName`(IN sp_GetProductByName VARCHAR(50))
BEGIN
   
    SELECT 
        `magnohardware_sales_and_inventory_system`.`tbl_products`.`Id` AS `PRODUCT ID`,
        `magnohardware_sales_and_inventory_system`.`tbl_products`.`Name` AS `NAME`,
        `magnohardware_sales_and_inventory_system`.`tbl_products`.`Price` AS `PRICE`,
        `magnohardware_sales_and_inventory_system`.`tbl_categories`.`Category` AS `PRODUCT CATEGORY`,
        `magnohardware_sales_and_inventory_system`.`tbl_suppliers`.`Name` AS `SUPPLIER`,
        `magnohardware_sales_and_inventory_system`.`tbl_users`.`Full_Name` AS `ACCOUNT NAME`,
        `magnohardware_sales_and_inventory_system`.`tbl_products`.`Date` AS `DATE`,
        `magnohardware_sales_and_inventory_system`.`tbl_products`.`Time` AS `TIME`
    FROM
        (((`magnohardware_sales_and_inventory_system`.`tbl_products`
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_categories` ON ((`magnohardware_sales_and_inventory_system`.`tbl_products`.`Category_Id` = `magnohardware_sales_and_inventory_system`.`tbl_categories`.`Id`)))
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_suppliers` ON ((`magnohardware_sales_and_inventory_system`.`tbl_products`.`Supplier_Id` = `magnohardware_sales_and_inventory_system`.`tbl_suppliers`.`Id`)))
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_users` ON ((`magnohardware_sales_and_inventory_system`.`tbl_products`.`User_Id` = `magnohardware_sales_and_inventory_system`.`tbl_users`.`Id`)))
   

    WHERE
        (`magnohardware_sales_and_inventory_system`.`tbl_products`.`Name` LIKE sp_GetProductByName)
      ORDER BY `magnohardware_sales_and_inventory_system`.`tbl_products`.`Id`;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_GetProductByPrice` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `sp_GetProductByPrice`(IN param_Price VARCHAR(9))
BEGIN
   
    SELECT 
        `magnohardware_sales_and_inventory_system`.`tbl_products`.`Id` AS `PRODUCT ID`,
        `magnohardware_sales_and_inventory_system`.`tbl_products`.`Name` AS `NAME`,
        `magnohardware_sales_and_inventory_system`.`tbl_products`.`Price` AS `PRICE`,
        `magnohardware_sales_and_inventory_system`.`tbl_categories`.`Category` AS `PRODUCT CATEGORY`,
        `magnohardware_sales_and_inventory_system`.`tbl_suppliers`.`Name` AS `SUPPLIER`,
        `magnohardware_sales_and_inventory_system`.`tbl_users`.`Full_Name` AS `ACCOUNT NAME`,
        `magnohardware_sales_and_inventory_system`.`tbl_products`.`Date` AS `DATE`,
        `magnohardware_sales_and_inventory_system`.`tbl_products`.`Time` AS `TIME`
    FROM
        (((`magnohardware_sales_and_inventory_system`.`tbl_products`
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_categories` ON ((`magnohardware_sales_and_inventory_system`.`tbl_products`.`Category_Id` = `magnohardware_sales_and_inventory_system`.`tbl_categories`.`Id`)))
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_suppliers` ON ((`magnohardware_sales_and_inventory_system`.`tbl_products`.`Supplier_Id` = `magnohardware_sales_and_inventory_system`.`tbl_suppliers`.`Id`)))
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_users` ON ((`magnohardware_sales_and_inventory_system`.`tbl_products`.`User_Id` = `magnohardware_sales_and_inventory_system`.`tbl_users`.`Id`)))
   

    WHERE
        (`magnohardware_sales_and_inventory_system`.`tbl_products`.`Price` LIKE CONCAT("%",param_Price,"%"))
      ORDER BY `magnohardware_sales_and_inventory_system`.`tbl_products`.`Id`;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_GetProductByProductCategory` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `sp_GetProductByProductCategory`(IN param_ProductCategory VARCHAR(22))
BEGIN
   
    SELECT 
        `magnohardware_sales_and_inventory_system`.`tbl_products`.`Id` AS `PRODUCT ID`,
        `magnohardware_sales_and_inventory_system`.`tbl_products`.`Name` AS `NAME`,
        `magnohardware_sales_and_inventory_system`.`tbl_products`.`Price` AS `PRICE`,
        `magnohardware_sales_and_inventory_system`.`tbl_categories`.`Category` AS `PRODUCT CATEGORY`,
        `magnohardware_sales_and_inventory_system`.`tbl_suppliers`.`Name` AS `SUPPLIER`,
        `magnohardware_sales_and_inventory_system`.`tbl_users`.`Full_Name` AS `ACCOUNT NAME`,
        `magnohardware_sales_and_inventory_system`.`tbl_products`.`Date` AS `DATE`,
        `magnohardware_sales_and_inventory_system`.`tbl_products`.`Time` AS `TIME`
    FROM
        (((`magnohardware_sales_and_inventory_system`.`tbl_products`
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_categories` ON ((`magnohardware_sales_and_inventory_system`.`tbl_products`.`Category_Id` = `magnohardware_sales_and_inventory_system`.`tbl_categories`.`Id`)))
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_suppliers` ON ((`magnohardware_sales_and_inventory_system`.`tbl_products`.`Supplier_Id` = `magnohardware_sales_and_inventory_system`.`tbl_suppliers`.`Id`)))
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_users` ON ((`magnohardware_sales_and_inventory_system`.`tbl_products`.`User_Id` = `magnohardware_sales_and_inventory_system`.`tbl_users`.`Id`)))
   

    WHERE
        (`magnohardware_sales_and_inventory_system`.`tbl_categories`.`Category` LIKE param_ProductCategory)
      ORDER BY `magnohardware_sales_and_inventory_system`.`tbl_products`.`Id`;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_GetProductByProductId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `sp_GetProductByProductId`(IN param_ProductId VARCHAR(5))
BEGIN
   
    SELECT 
        `magnohardware_sales_and_inventory_system`.`tbl_products`.`Id` AS `PRODUCT ID`,
        `magnohardware_sales_and_inventory_system`.`tbl_products`.`Name` AS `NAME`,
        `magnohardware_sales_and_inventory_system`.`tbl_products`.`Price` AS `PRICE`,
        `magnohardware_sales_and_inventory_system`.`tbl_categories`.`Category` AS `PRODUCT CATEGORY`,
        `magnohardware_sales_and_inventory_system`.`tbl_suppliers`.`Name` AS `SUPPLIER`,
        `magnohardware_sales_and_inventory_system`.`tbl_users`.`Full_Name` AS `ACCOUNT NAME`,
        `magnohardware_sales_and_inventory_system`.`tbl_products`.`Date` AS `DATE`,
        `magnohardware_sales_and_inventory_system`.`tbl_products`.`Time` AS `TIME`
    FROM
        (((`magnohardware_sales_and_inventory_system`.`tbl_products`
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_categories` ON ((`magnohardware_sales_and_inventory_system`.`tbl_products`.`Category_Id` = `magnohardware_sales_and_inventory_system`.`tbl_categories`.`Id`)))
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_suppliers` ON ((`magnohardware_sales_and_inventory_system`.`tbl_products`.`Supplier_Id` = `magnohardware_sales_and_inventory_system`.`tbl_suppliers`.`Id`)))
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_users` ON ((`magnohardware_sales_and_inventory_system`.`tbl_products`.`User_Id` = `magnohardware_sales_and_inventory_system`.`tbl_users`.`Id`)))
   

    WHERE
        (`magnohardware_sales_and_inventory_system`.`tbl_products`.`Id` LIKE CONCAT("%",param_ProductId,"%"))
      ORDER BY `magnohardware_sales_and_inventory_system`.`tbl_products`.`Id`;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_GetProductBySupplier` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `sp_GetProductBySupplier`(IN param_Supplier VARCHAR(45))
BEGIN
   
    SELECT 
        `magnohardware_sales_and_inventory_system`.`tbl_products`.`Id` AS `PRODUCT ID`,
        `magnohardware_sales_and_inventory_system`.`tbl_products`.`Name` AS `NAME`,
        `magnohardware_sales_and_inventory_system`.`tbl_products`.`Price` AS `PRICE`,
        `magnohardware_sales_and_inventory_system`.`tbl_categories`.`Category` AS `PRODUCT CATEGORY`,
        `magnohardware_sales_and_inventory_system`.`tbl_suppliers`.`Name` AS `SUPPLIER`,
        `magnohardware_sales_and_inventory_system`.`tbl_users`.`Full_Name` AS `ACCOUNT NAME`,
        `magnohardware_sales_and_inventory_system`.`tbl_products`.`Date` AS `DATE`,
        `magnohardware_sales_and_inventory_system`.`tbl_products`.`Time` AS `TIME`
    FROM
        (((`magnohardware_sales_and_inventory_system`.`tbl_products`
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_categories` ON ((`magnohardware_sales_and_inventory_system`.`tbl_products`.`Category_Id` = `magnohardware_sales_and_inventory_system`.`tbl_categories`.`Id`)))
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_suppliers` ON ((`magnohardware_sales_and_inventory_system`.`tbl_products`.`Supplier_Id` = `magnohardware_sales_and_inventory_system`.`tbl_suppliers`.`Id`)))
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_users` ON ((`magnohardware_sales_and_inventory_system`.`tbl_products`.`User_Id` = `magnohardware_sales_and_inventory_system`.`tbl_users`.`Id`)))
   

    WHERE
        (`magnohardware_sales_and_inventory_system`.`tbl_suppliers`.`Name` LIKE param_Supplier)
      ORDER BY `magnohardware_sales_and_inventory_system`.`tbl_products`.`Id`;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_GetProductByTime` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `sp_GetProductByTime`(IN param_Time VARCHAR(11))
BEGIN
   
    SELECT 
        `magnohardware_sales_and_inventory_system`.`tbl_products`.`Id` AS `PRODUCT ID`,
        `magnohardware_sales_and_inventory_system`.`tbl_products`.`Name` AS `NAME`,
        `magnohardware_sales_and_inventory_system`.`tbl_products`.`Price` AS `PRICE`,
        `magnohardware_sales_and_inventory_system`.`tbl_categories`.`Category` AS `PRODUCT CATEGORY`,
        `magnohardware_sales_and_inventory_system`.`tbl_suppliers`.`Name` AS `SUPPLIER`,
        `magnohardware_sales_and_inventory_system`.`tbl_users`.`Full_Name` AS `ACCOUNT NAME`,
        `magnohardware_sales_and_inventory_system`.`tbl_products`.`Date` AS `DATE`,
        `magnohardware_sales_and_inventory_system`.`tbl_products`.`Time` AS `TIME`
    FROM
        (((`magnohardware_sales_and_inventory_system`.`tbl_products`
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_categories` ON ((`magnohardware_sales_and_inventory_system`.`tbl_products`.`Category_Id` = `magnohardware_sales_and_inventory_system`.`tbl_categories`.`Id`)))
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_suppliers` ON ((`magnohardware_sales_and_inventory_system`.`tbl_products`.`Supplier_Id` = `magnohardware_sales_and_inventory_system`.`tbl_suppliers`.`Id`)))
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_users` ON ((`magnohardware_sales_and_inventory_system`.`tbl_products`.`User_Id` = `magnohardware_sales_and_inventory_system`.`tbl_users`.`Id`)))
   

    WHERE
        (`magnohardware_sales_and_inventory_system`.`tbl_products`.`Time` LIKE param_Time)
      ORDER BY `magnohardware_sales_and_inventory_system`.`tbl_products`.`Id`;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_GetProductCategoryByCategoryName` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `sp_GetProductCategoryByCategoryName`(IN param_CategoryName VARCHAR(22))
BEGIN
     SELECT 
        `magnohardware_sales_and_inventory_system`.`tbl_categories`.`Id` AS `ID`,
        `magnohardware_sales_and_inventory_system`.`tbl_categories`.`Category` AS `CATEGORY NAME`,
        `magnohardware_sales_and_inventory_system`.`tbl_categories`.`Date` AS `DATE`,
        `magnohardware_sales_and_inventory_system`.`tbl_categories`.`Time` AS `TIME`
    FROM
        `magnohardware_sales_and_inventory_system`.`tbl_categories`

    WHERE
        (`magnohardware_sales_and_inventory_system`.`tbl_categories`.`Category` LIKE param_CategoryName)
     ORDER BY `magnohardware_sales_and_inventory_system`.`tbl_categories`.`Id`;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_GetProductCategoryByDate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `sp_GetProductCategoryByDate`(IN param_Date varchar(10))
BEGIN
     SELECT 
        `magnohardware_sales_and_inventory_system`.`tbl_categories`.`Id` AS `ID`,
        `magnohardware_sales_and_inventory_system`.`tbl_categories`.`Category` AS `CATEGORY NAME`,
        `magnohardware_sales_and_inventory_system`.`tbl_categories`.`Date` AS `DATE`,
        `magnohardware_sales_and_inventory_system`.`tbl_categories`.`Time` AS `TIME`
    FROM
        `magnohardware_sales_and_inventory_system`.`tbl_categories`

    WHERE
        (`magnohardware_sales_and_inventory_system`.`tbl_categories`.`Date` LIKE CONCAT("%",param_Date,"%"))
     ORDER BY `magnohardware_sales_and_inventory_system`.`tbl_categories`.`Id`;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_GetProductCategoryById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `sp_GetProductCategoryById`(IN param_Id int)
BEGIN
     SELECT 
        `magnohardware_sales_and_inventory_system`.`tbl_categories`.`Id` AS `ID`,
        `magnohardware_sales_and_inventory_system`.`tbl_categories`.`Category` AS `CATEGORY NAME`,
        `magnohardware_sales_and_inventory_system`.`tbl_categories`.`Date` AS `DATE`,
        `magnohardware_sales_and_inventory_system`.`tbl_categories`.`Time` AS `TIME`
    FROM
        `magnohardware_sales_and_inventory_system`.`tbl_categories`

    WHERE
        (`magnohardware_sales_and_inventory_system`.`tbl_categories`.`Id` LIKE CONCAT("%",param_Id,"%"))
     ORDER BY `magnohardware_sales_and_inventory_system`.`tbl_categories`.`Id`;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_GetProductCategoryByTime` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `sp_GetProductCategoryByTime`(IN param_Time VARCHAR(11))
BEGIN
     SELECT 
        `magnohardware_sales_and_inventory_system`.`tbl_categories`.`Id` AS `ID`,
        `magnohardware_sales_and_inventory_system`.`tbl_categories`.`Category` AS `CATEGORY NAME`,
        `magnohardware_sales_and_inventory_system`.`tbl_categories`.`Date` AS `DATE`,
        `magnohardware_sales_and_inventory_system`.`tbl_categories`.`Time` AS `TIME`
    FROM
        `magnohardware_sales_and_inventory_system`.`tbl_categories`

    WHERE
        (`magnohardware_sales_and_inventory_system`.`tbl_categories`.`Time` LIKE param_Time)
     ORDER BY `magnohardware_sales_and_inventory_system`.`tbl_categories`.`Id`;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_GetSupplierByAccountName` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `sp_GetSupplierByAccountName`(IN param_AccountName VARCHAR(50))
BEGIN
    SELECT 
        `magnohardware_sales_and_inventory_system`.`tbl_suppliers`.`Id` AS `ID`,
        `magnohardware_sales_and_inventory_system`.`tbl_suppliers`.`Name` AS `SUPPLIER NAME`,
        `magnohardware_sales_and_inventory_system`.`tbl_types`.`Type` AS `TYPE`,
        `magnohardware_sales_and_inventory_system`.`tbl_suppliers`.`Email` AS `EMAIL`,
        `magnohardware_sales_and_inventory_system`.`tbl_suppliers`.`Contact_Number` AS `CONTACT NUMBER`,
        `magnohardware_sales_and_inventory_system`.`tbl_suppliers`.`Address` AS `ADDRESS`,
        `magnohardware_sales_and_inventory_system`.`tbl_users`.`Full_Name` AS `ACCOUNT NAME`
    FROM
        ((`magnohardware_sales_and_inventory_system`.`tbl_suppliers`
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_types` ON ((`magnohardware_sales_and_inventory_system`.`tbl_suppliers`.`Type_Id` = `magnohardware_sales_and_inventory_system`.`tbl_types`.`Id`)))
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_users` ON ((`magnohardware_sales_and_inventory_system`.`tbl_suppliers`.`User_Id` = `magnohardware_sales_and_inventory_system`.`tbl_users`.`Id`)))
    WHERE
        (`magnohardware_sales_and_inventory_system`.`tbl_users`.`Full_Name` LIKE param_AccountName)
  ORDER BY `magnohardware_sales_and_inventory_system`.`tbl_suppliers`.`Id`;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_GetSupplierByAddress` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `sp_GetSupplierByAddress`(IN param_Address mediumtext)
BEGIN
    SELECT 
        `magnohardware_sales_and_inventory_system`.`tbl_suppliers`.`Id` AS `ID`,
        `magnohardware_sales_and_inventory_system`.`tbl_suppliers`.`Name` AS `SUPPLIER NAME`,
        `magnohardware_sales_and_inventory_system`.`tbl_types`.`Type` AS `TYPE`,
        `magnohardware_sales_and_inventory_system`.`tbl_suppliers`.`Email` AS `EMAIL`,
        `magnohardware_sales_and_inventory_system`.`tbl_suppliers`.`Contact_Number` AS `CONTACT NUMBER`,
        `magnohardware_sales_and_inventory_system`.`tbl_suppliers`.`Address` AS `ADDRESS`,
        `magnohardware_sales_and_inventory_system`.`tbl_users`.`Full_Name` AS `ACCOUNT NAME`
    FROM
        ((`magnohardware_sales_and_inventory_system`.`tbl_suppliers`
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_types` ON ((`magnohardware_sales_and_inventory_system`.`tbl_suppliers`.`Type_Id` = `magnohardware_sales_and_inventory_system`.`tbl_types`.`Id`)))
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_users` ON ((`magnohardware_sales_and_inventory_system`.`tbl_suppliers`.`User_Id` = `magnohardware_sales_and_inventory_system`.`tbl_users`.`Id`)))
    WHERE
        (`magnohardware_sales_and_inventory_system`.`tbl_suppliers`.`Address` LIKE param_Address)
  ORDER BY `magnohardware_sales_and_inventory_system`.`tbl_suppliers`.`Id`;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_GetSupplierByContactNumber` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `sp_GetSupplierByContactNumber`(IN param_ContactNumber VARCHAR(45))
BEGIN
    SELECT 
        `magnohardware_sales_and_inventory_system`.`tbl_suppliers`.`Id` AS `ID`,
        `magnohardware_sales_and_inventory_system`.`tbl_suppliers`.`Name` AS `SUPPLIER NAME`,
        `magnohardware_sales_and_inventory_system`.`tbl_types`.`Type` AS `TYPE`,
        `magnohardware_sales_and_inventory_system`.`tbl_suppliers`.`Email` AS `EMAIL`,
        `magnohardware_sales_and_inventory_system`.`tbl_suppliers`.`Contact_Number` AS `CONTACT NUMBER`,
        `magnohardware_sales_and_inventory_system`.`tbl_suppliers`.`Address` AS `ADDRESS`,
        `magnohardware_sales_and_inventory_system`.`tbl_users`.`Full_Name` AS `ACCOUNT NAME`
    FROM
        ((`magnohardware_sales_and_inventory_system`.`tbl_suppliers`
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_types` ON ((`magnohardware_sales_and_inventory_system`.`tbl_suppliers`.`Type_Id` = `magnohardware_sales_and_inventory_system`.`tbl_types`.`Id`)))
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_users` ON ((`magnohardware_sales_and_inventory_system`.`tbl_suppliers`.`User_Id` = `magnohardware_sales_and_inventory_system`.`tbl_users`.`Id`)))
    WHERE
        (`magnohardware_sales_and_inventory_system`.`tbl_suppliers`.`Contact_Number` LIKE param_ContactNumber)
  ORDER BY `magnohardware_sales_and_inventory_system`.`tbl_suppliers`.`Id`;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_GetSupplierByEmail` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `sp_GetSupplierByEmail`(IN param_Email VARCHAR(50))
BEGIN
    SELECT 
        `magnohardware_sales_and_inventory_system`.`tbl_suppliers`.`Id` AS `ID`,
        `magnohardware_sales_and_inventory_system`.`tbl_suppliers`.`Name` AS `SUPPLIER NAME`,
        `magnohardware_sales_and_inventory_system`.`tbl_types`.`Type` AS `TYPE`,
        `magnohardware_sales_and_inventory_system`.`tbl_suppliers`.`Email` AS `EMAIL`,
        `magnohardware_sales_and_inventory_system`.`tbl_suppliers`.`Contact_Number` AS `CONTACT NUMBER`,
        `magnohardware_sales_and_inventory_system`.`tbl_suppliers`.`Address` AS `ADDRESS`,
        `magnohardware_sales_and_inventory_system`.`tbl_users`.`Full_Name` AS `ACCOUNT NAME`
    FROM
        ((`magnohardware_sales_and_inventory_system`.`tbl_suppliers`
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_types` ON ((`magnohardware_sales_and_inventory_system`.`tbl_suppliers`.`Type_Id` = `magnohardware_sales_and_inventory_system`.`tbl_types`.`Id`)))
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_users` ON ((`magnohardware_sales_and_inventory_system`.`tbl_suppliers`.`User_Id` = `magnohardware_sales_and_inventory_system`.`tbl_users`.`Id`)))
    WHERE
        (`magnohardware_sales_and_inventory_system`.`tbl_suppliers`.`Email` LIKE param_Email)
  ORDER BY `magnohardware_sales_and_inventory_system`.`tbl_suppliers`.`Id`;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_GetSupplierById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `sp_GetSupplierById`(IN param_Id int)
BEGIN
    SELECT 
        `magnohardware_sales_and_inventory_system`.`tbl_suppliers`.`Id` AS `ID`,
        `magnohardware_sales_and_inventory_system`.`tbl_suppliers`.`Name` AS `SUPPLIER NAME`,
        `magnohardware_sales_and_inventory_system`.`tbl_types`.`Type` AS `TYPE`,
        `magnohardware_sales_and_inventory_system`.`tbl_suppliers`.`Email` AS `EMAIL`,
        `magnohardware_sales_and_inventory_system`.`tbl_suppliers`.`Contact_Number` AS `CONTACT NUMBER`,
        `magnohardware_sales_and_inventory_system`.`tbl_suppliers`.`Address` AS `ADDRESS`,
        `magnohardware_sales_and_inventory_system`.`tbl_users`.`Full_Name` AS `ACCOUNT NAME`
    FROM
        ((`magnohardware_sales_and_inventory_system`.`tbl_suppliers`
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_types` ON ((`magnohardware_sales_and_inventory_system`.`tbl_suppliers`.`Type_Id` = `magnohardware_sales_and_inventory_system`.`tbl_types`.`Id`)))
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_users` ON ((`magnohardware_sales_and_inventory_system`.`tbl_suppliers`.`User_Id` = `magnohardware_sales_and_inventory_system`.`tbl_users`.`Id`)))
    WHERE
        (`magnohardware_sales_and_inventory_system`.`tbl_suppliers`.`Id` LIKE CONCAT("%",param_Id,"%"))
  ORDER BY `magnohardware_sales_and_inventory_system`.`tbl_suppliers`.`Id`;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_GetSupplierByName` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `sp_GetSupplierByName`(IN param_Name VARCHAR(45))
BEGIN
    SELECT 
        `magnohardware_sales_and_inventory_system`.`tbl_suppliers`.`Id` AS `ID`,
        `magnohardware_sales_and_inventory_system`.`tbl_suppliers`.`Name` AS `SUPPLIER NAME`,
        `magnohardware_sales_and_inventory_system`.`tbl_types`.`Type` AS `TYPE`,
        `magnohardware_sales_and_inventory_system`.`tbl_suppliers`.`Email` AS `EMAIL`,
        `magnohardware_sales_and_inventory_system`.`tbl_suppliers`.`Contact_Number` AS `CONTACT NUMBER`,
        `magnohardware_sales_and_inventory_system`.`tbl_suppliers`.`Address` AS `ADDRESS`,
        `magnohardware_sales_and_inventory_system`.`tbl_users`.`Full_Name` AS `ACCOUNT NAME`
    FROM
        ((`magnohardware_sales_and_inventory_system`.`tbl_suppliers`
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_types` ON ((`magnohardware_sales_and_inventory_system`.`tbl_suppliers`.`Type_Id` = `magnohardware_sales_and_inventory_system`.`tbl_types`.`Id`)))
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_users` ON ((`magnohardware_sales_and_inventory_system`.`tbl_suppliers`.`User_Id` = `magnohardware_sales_and_inventory_system`.`tbl_users`.`Id`)))
    WHERE
        (`magnohardware_sales_and_inventory_system`.`tbl_suppliers`.`Name` LIKE param_Name)
  ORDER BY `magnohardware_sales_and_inventory_system`.`tbl_suppliers`.`Id`;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_GetSupplierByTypes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `sp_GetSupplierByTypes`(IN param_Types VARCHAR(13))
BEGIN
    SELECT 
        `magnohardware_sales_and_inventory_system`.`tbl_suppliers`.`Id` AS `ID`,
        `magnohardware_sales_and_inventory_system`.`tbl_suppliers`.`Name` AS `SUPPLIER NAME`,
        `magnohardware_sales_and_inventory_system`.`tbl_types`.`Type` AS `TYPE`,
        `magnohardware_sales_and_inventory_system`.`tbl_suppliers`.`Email` AS `EMAIL`,
        `magnohardware_sales_and_inventory_system`.`tbl_suppliers`.`Contact_Number` AS `CONTACT NUMBER`,
        `magnohardware_sales_and_inventory_system`.`tbl_suppliers`.`Address` AS `ADDRESS`,
        `magnohardware_sales_and_inventory_system`.`tbl_users`.`Full_Name` AS `ACCOUNT NAME`
    FROM
        ((`magnohardware_sales_and_inventory_system`.`tbl_suppliers`
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_types` ON ((`magnohardware_sales_and_inventory_system`.`tbl_suppliers`.`Type_Id` = `magnohardware_sales_and_inventory_system`.`tbl_types`.`Id`)))
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_users` ON ((`magnohardware_sales_and_inventory_system`.`tbl_suppliers`.`User_Id` = `magnohardware_sales_and_inventory_system`.`tbl_users`.`Id`)))
    WHERE
        (`magnohardware_sales_and_inventory_system`.`tbl_types`.`Type` LIKE param_Types)
  ORDER BY `magnohardware_sales_and_inventory_system`.`tbl_suppliers`.`Id`;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_Get_Inventory_In_CA_By_AccountName` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `sp_Get_Inventory_In_CA_By_AccountName`(IN param_AccountName VARCHAR(50))
SELECT 
        `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Id` AS `ID`,
        `magnohardware_sales_and_inventory_system`.`tbl_products`.`Name` AS `PRODUCT NAME`,
        `magnohardware_sales_and_inventory_system`.`tbl_status`.`Status` AS `STATUS`,
        `magnohardware_sales_and_inventory_system`.`tbl_units`.`Unit` AS `UNIT`,
        `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Quantity` AS `QUANTITY`,
        `magnohardware_sales_and_inventory_system`.`tbl_users`.`Full_Name` AS `ACCOUNT NAME`,
        `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Date` AS `DATE`,
        `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Time` AS `TIME`,
		`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Is_Current` AS `IS CURRENT`
    FROM
        ((((`magnohardware_sales_and_inventory_system`.`tbl_inventory`
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_products` ON ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Product_Id` = `magnohardware_sales_and_inventory_system`.`tbl_products`.`Id`)))
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_status` ON ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Status_Id` = `magnohardware_sales_and_inventory_system`.`tbl_status`.`Id`)))
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_units` ON ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Unit_Id` = `magnohardware_sales_and_inventory_system`.`tbl_units`.`Id`)))
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_users` ON ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`User_Id` = `magnohardware_sales_and_inventory_system`.`tbl_users`.`Id`)))
    WHERE
        ((`magnohardware_sales_and_inventory_system`.`tbl_users`.`Full_Name` LIKE param_AccountName)
           AND (`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Is_Current` = 1))
    ORDER BY `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Id` ASC ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_Get_Inventory_In_CA_By_Date` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `sp_Get_Inventory_In_CA_By_Date`(IN param_Date VARCHAR(10))
SELECT 
        `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Id` AS `ID`,
        `magnohardware_sales_and_inventory_system`.`tbl_products`.`Name` AS `PRODUCT NAME`,
        `magnohardware_sales_and_inventory_system`.`tbl_status`.`Status` AS `STATUS`,
        `magnohardware_sales_and_inventory_system`.`tbl_units`.`Unit` AS `UNIT`,
        `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Quantity` AS `QUANTITY`,
        `magnohardware_sales_and_inventory_system`.`tbl_users`.`Full_Name` AS `ACCOUNT NAME`,
        `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Date` AS `DATE`,
        `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Time` AS `TIME`,
		`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Is_Current` AS `IS CURRENT`
    FROM
        ((((`magnohardware_sales_and_inventory_system`.`tbl_inventory`
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_products` ON ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Product_Id` = `magnohardware_sales_and_inventory_system`.`tbl_products`.`Id`)))
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_status` ON ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Status_Id` = `magnohardware_sales_and_inventory_system`.`tbl_status`.`Id`)))
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_units` ON ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Unit_Id` = `magnohardware_sales_and_inventory_system`.`tbl_units`.`Id`)))
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_users` ON ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`User_Id` = `magnohardware_sales_and_inventory_system`.`tbl_users`.`Id`)))
    WHERE
        ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Date` LIKE CONCAT("%",param_Date,"%"))
           AND (`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Is_Current` = 1))
    ORDER BY `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Id` ASC ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_Get_Inventory_In_CA_By_ProductName` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `sp_Get_Inventory_In_CA_By_ProductName`(IN param_ProductName VARCHAR(50))
SELECT 
        `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Id` AS `ID`,
        `magnohardware_sales_and_inventory_system`.`tbl_products`.`Name` AS `PRODUCT NAME`,
        `magnohardware_sales_and_inventory_system`.`tbl_status`.`Status` AS `STATUS`,
        `magnohardware_sales_and_inventory_system`.`tbl_units`.`Unit` AS `UNIT`,
        `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Quantity` AS `QUANTITY`,
        `magnohardware_sales_and_inventory_system`.`tbl_users`.`Full_Name` AS `ACCOUNT NAME`,
        `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Date` AS `DATE`,
        `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Time` AS `TIME`,
		`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Is_Current` AS `IS CURRENT`
    FROM
        ((((`magnohardware_sales_and_inventory_system`.`tbl_inventory`
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_products` ON ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Product_Id` = `magnohardware_sales_and_inventory_system`.`tbl_products`.`Id`)))
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_status` ON ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Status_Id` = `magnohardware_sales_and_inventory_system`.`tbl_status`.`Id`)))
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_units` ON ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Unit_Id` = `magnohardware_sales_and_inventory_system`.`tbl_units`.`Id`)))
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_users` ON ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`User_Id` = `magnohardware_sales_and_inventory_system`.`tbl_users`.`Id`)))
    WHERE
        ((`magnohardware_sales_and_inventory_system`.`tbl_products`.`Name` LIKE param_ProductName)
           AND (`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Is_Current` = 1))
    ORDER BY `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Id` ASC ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_Get_Inventory_In_CA_By_Quantity` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `sp_Get_Inventory_In_CA_By_Quantity`(IN param_Quantity INT(6))
SELECT 
        `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Id` AS `ID`,
        `magnohardware_sales_and_inventory_system`.`tbl_products`.`Name` AS `PRODUCT NAME`,
        `magnohardware_sales_and_inventory_system`.`tbl_status`.`Status` AS `STATUS`,
        `magnohardware_sales_and_inventory_system`.`tbl_units`.`Unit` AS `UNIT`,
        `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Quantity` AS `QUANTITY`,
        `magnohardware_sales_and_inventory_system`.`tbl_users`.`Full_Name` AS `ACCOUNT NAME`,
        `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Date` AS `DATE`,
        `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Time` AS `TIME`,
		`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Is_Current` AS `IS CURRENT`
    FROM
        ((((`magnohardware_sales_and_inventory_system`.`tbl_inventory`
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_products` ON ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Product_Id` = `magnohardware_sales_and_inventory_system`.`tbl_products`.`Id`)))
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_status` ON ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Status_Id` = `magnohardware_sales_and_inventory_system`.`tbl_status`.`Id`)))
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_units` ON ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Unit_Id` = `magnohardware_sales_and_inventory_system`.`tbl_units`.`Id`)))
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_users` ON ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`User_Id` = `magnohardware_sales_and_inventory_system`.`tbl_users`.`Id`)))
    WHERE
        ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Quantity` LIKE CONCAT("%",param_Quantity,"%"))
           AND (`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Is_Current` = 1))
    ORDER BY `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Id` ASC ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_Get_Inventory_In_CA_By_Time` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `sp_Get_Inventory_In_CA_By_Time`(IN param_Time VARCHAR(11))
SELECT 
        `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Id` AS `ID`,
        `magnohardware_sales_and_inventory_system`.`tbl_products`.`Name` AS `PRODUCT NAME`,
        `magnohardware_sales_and_inventory_system`.`tbl_status`.`Status` AS `STATUS`,
        `magnohardware_sales_and_inventory_system`.`tbl_units`.`Unit` AS `UNIT`,
        `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Quantity` AS `QUANTITY`,
        `magnohardware_sales_and_inventory_system`.`tbl_users`.`Full_Name` AS `ACCOUNT NAME`,
        `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Date` AS `DATE`,
        `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Time` AS `TIME`,
		`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Is_Current` AS `IS CURRENT`
    FROM
        ((((`magnohardware_sales_and_inventory_system`.`tbl_inventory`
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_products` ON ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Product_Id` = `magnohardware_sales_and_inventory_system`.`tbl_products`.`Id`)))
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_status` ON ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Status_Id` = `magnohardware_sales_and_inventory_system`.`tbl_status`.`Id`)))
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_units` ON ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Unit_Id` = `magnohardware_sales_and_inventory_system`.`tbl_units`.`Id`)))
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_users` ON ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`User_Id` = `magnohardware_sales_and_inventory_system`.`tbl_users`.`Id`)))
    WHERE
        ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Time` LIKE CONCAT("%",param_Time,"%"))
           AND (`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Is_Current` = 1))
    ORDER BY `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Id` ASC ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_Get_Inventory_In_CA_By_Unit` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `sp_Get_Inventory_In_CA_By_Unit`(IN param_Unit VARCHAR(6))
SELECT 
        `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Id` AS `ID`,
        `magnohardware_sales_and_inventory_system`.`tbl_products`.`Name` AS `PRODUCT NAME`,
        `magnohardware_sales_and_inventory_system`.`tbl_status`.`Status` AS `STATUS`,
        `magnohardware_sales_and_inventory_system`.`tbl_units`.`Unit` AS `UNIT`,
        `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Quantity` AS `QUANTITY`,
        `magnohardware_sales_and_inventory_system`.`tbl_users`.`Full_Name` AS `ACCOUNT NAME`,
        `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Date` AS `DATE`,
        `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Time` AS `TIME`,
		`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Is_Current` AS `IS CURRENT`
    FROM
        ((((`magnohardware_sales_and_inventory_system`.`tbl_inventory`
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_products` ON ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Product_Id` = `magnohardware_sales_and_inventory_system`.`tbl_products`.`Id`)))
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_status` ON ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Status_Id` = `magnohardware_sales_and_inventory_system`.`tbl_status`.`Id`)))
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_units` ON ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Unit_Id` = `magnohardware_sales_and_inventory_system`.`tbl_units`.`Id`)))
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_users` ON ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`User_Id` = `magnohardware_sales_and_inventory_system`.`tbl_users`.`Id`)))
    WHERE
        ((`magnohardware_sales_and_inventory_system`.`tbl_Units`.`Unit` LIKE param_Unit)
           AND (`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Is_Current` = 1))
    ORDER BY `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Id` ASC ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_Get_Inventory_In_H_CA_By_AccountName` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `sp_Get_Inventory_In_H_CA_By_AccountName`(IN param_AccountName VARCHAR(50))
SELECT 
        `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Id` AS `ID`,
        `magnohardware_sales_and_inventory_system`.`tbl_products`.`Name` AS `PRODUCT NAME`,
        `magnohardware_sales_and_inventory_system`.`tbl_status`.`Status` AS `STATUS`,
        `magnohardware_sales_and_inventory_system`.`tbl_units`.`Unit` AS `UNIT`,
        `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Quantity` AS `QUANTITY`,
        `magnohardware_sales_and_inventory_system`.`tbl_users`.`Full_Name` AS `ACCOUNT NAME`,
        `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Date` AS `DATE`,
        `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Time` AS `TIME`,
		`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Is_Current` AS `IS CURRENT`
    FROM
        ((((`magnohardware_sales_and_inventory_system`.`tbl_inventory`
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_products` ON ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Product_Id` = `magnohardware_sales_and_inventory_system`.`tbl_products`.`Id`)))
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_status` ON ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Status_Id` = `magnohardware_sales_and_inventory_system`.`tbl_status`.`Id`)))
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_units` ON ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Unit_Id` = `magnohardware_sales_and_inventory_system`.`tbl_units`.`Id`)))
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_users` ON ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`User_Id` = `magnohardware_sales_and_inventory_system`.`tbl_users`.`Id`)))
    WHERE
        ((`magnohardware_sales_and_inventory_system`.`tbl_users`.`Full_Name` LIKE param_AccountName)
       AND (`magnohardware_sales_and_inventory_system`.`tbl_status`.`Status` = 'IN')
       AND (`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Is_Current` = 0))
    ORDER BY `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Id` DESC ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_Get_Inventory_In_H_CA_By_Date` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `sp_Get_Inventory_In_H_CA_By_Date`(IN param_Date VARCHAR(10))
SELECT 
        `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Id` AS `ID`,
        `magnohardware_sales_and_inventory_system`.`tbl_products`.`Name` AS `PRODUCT NAME`,
        `magnohardware_sales_and_inventory_system`.`tbl_status`.`Status` AS `STATUS`,
        `magnohardware_sales_and_inventory_system`.`tbl_units`.`Unit` AS `UNIT`,
        `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Quantity` AS `QUANTITY`,
        `magnohardware_sales_and_inventory_system`.`tbl_users`.`Full_Name` AS `ACCOUNT NAME`,
        `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Date` AS `DATE`,
        `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Time` AS `TIME`,
		`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Is_Current` AS `IS CURRENT`
    FROM
        ((((`magnohardware_sales_and_inventory_system`.`tbl_inventory`
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_products` ON ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Product_Id` = `magnohardware_sales_and_inventory_system`.`tbl_products`.`Id`)))
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_status` ON ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Status_Id` = `magnohardware_sales_and_inventory_system`.`tbl_status`.`Id`)))
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_units` ON ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Unit_Id` = `magnohardware_sales_and_inventory_system`.`tbl_units`.`Id`)))
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_users` ON ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`User_Id` = `magnohardware_sales_and_inventory_system`.`tbl_users`.`Id`)))
    WHERE
        ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Date` LIKE CONCAT("%",param_Date,"%"))
       AND (`magnohardware_sales_and_inventory_system`.`tbl_status`.`Status` = 'IN')
       AND (`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Is_Current` = 0))
    ORDER BY `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Id` DESC ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_Get_Inventory_In_H_CA_By_ProductName` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `sp_Get_Inventory_In_H_CA_By_ProductName`(IN param_ProductName VARCHAR(50))
SELECT 
        `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Id` AS `ID`,
        `magnohardware_sales_and_inventory_system`.`tbl_products`.`Name` AS `PRODUCT NAME`,
        `magnohardware_sales_and_inventory_system`.`tbl_status`.`Status` AS `STATUS`,
        `magnohardware_sales_and_inventory_system`.`tbl_units`.`Unit` AS `UNIT`,
        `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Quantity` AS `QUANTITY`,
        `magnohardware_sales_and_inventory_system`.`tbl_users`.`Full_Name` AS `ACCOUNT NAME`,
        `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Date` AS `DATE`,
        `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Time` AS `TIME`,
		`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Is_Current` AS `IS CURRENT`
    FROM
        ((((`magnohardware_sales_and_inventory_system`.`tbl_inventory`
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_products` ON ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Product_Id` = `magnohardware_sales_and_inventory_system`.`tbl_products`.`Id`)))
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_status` ON ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Status_Id` = `magnohardware_sales_and_inventory_system`.`tbl_status`.`Id`)))
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_units` ON ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Unit_Id` = `magnohardware_sales_and_inventory_system`.`tbl_units`.`Id`)))
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_users` ON ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`User_Id` = `magnohardware_sales_and_inventory_system`.`tbl_users`.`Id`)))
    WHERE
        ((`magnohardware_sales_and_inventory_system`.`tbl_products`.`Name` LIKE param_ProductName)
       AND (`magnohardware_sales_and_inventory_system`.`tbl_status`.`Status` = 'IN')
       AND (`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Is_Current` = 0))
    ORDER BY `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Id` DESC ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_Get_Inventory_In_H_CA_By_Quantity` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `sp_Get_Inventory_In_H_CA_By_Quantity`(IN param_Quantity INT(6))
SELECT 
        `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Id` AS `ID`,
        `magnohardware_sales_and_inventory_system`.`tbl_products`.`Name` AS `PRODUCT NAME`,
        `magnohardware_sales_and_inventory_system`.`tbl_status`.`Status` AS `STATUS`,
        `magnohardware_sales_and_inventory_system`.`tbl_units`.`Unit` AS `UNIT`,
        `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Quantity` AS `QUANTITY`,
        `magnohardware_sales_and_inventory_system`.`tbl_users`.`Full_Name` AS `ACCOUNT NAME`,
        `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Date` AS `DATE`,
        `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Time` AS `TIME`,
		`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Is_Current` AS `IS CURRENT`
    FROM
        ((((`magnohardware_sales_and_inventory_system`.`tbl_inventory`
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_products` ON ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Product_Id` = `magnohardware_sales_and_inventory_system`.`tbl_products`.`Id`)))
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_status` ON ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Status_Id` = `magnohardware_sales_and_inventory_system`.`tbl_status`.`Id`)))
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_units` ON ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Unit_Id` = `magnohardware_sales_and_inventory_system`.`tbl_units`.`Id`)))
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_users` ON ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`User_Id` = `magnohardware_sales_and_inventory_system`.`tbl_users`.`Id`)))
    WHERE
        ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Quantity` LIKE CONCAT("%",param_Quantity,"%"))
       AND (`magnohardware_sales_and_inventory_system`.`tbl_status`.`Status` = 'IN')
       AND (`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Is_Current` = 0))
    ORDER BY `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Id` DESC ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_Get_Inventory_In_H_CA_By_Time` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `sp_Get_Inventory_In_H_CA_By_Time`(IN param_Time VARCHAR(11))
SELECT 
        `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Id` AS `ID`,
        `magnohardware_sales_and_inventory_system`.`tbl_products`.`Name` AS `PRODUCT NAME`,
        `magnohardware_sales_and_inventory_system`.`tbl_status`.`Status` AS `STATUS`,
        `magnohardware_sales_and_inventory_system`.`tbl_units`.`Unit` AS `UNIT`,
        `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Quantity` AS `QUANTITY`,
        `magnohardware_sales_and_inventory_system`.`tbl_users`.`Full_Name` AS `ACCOUNT NAME`,
        `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Date` AS `DATE`,
        `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Time` AS `TIME`,
		`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Is_Current` AS `IS CURRENT`
    FROM
        ((((`magnohardware_sales_and_inventory_system`.`tbl_inventory`
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_products` ON ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Product_Id` = `magnohardware_sales_and_inventory_system`.`tbl_products`.`Id`)))
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_status` ON ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Status_Id` = `magnohardware_sales_and_inventory_system`.`tbl_status`.`Id`)))
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_units` ON ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Unit_Id` = `magnohardware_sales_and_inventory_system`.`tbl_units`.`Id`)))
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_users` ON ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`User_Id` = `magnohardware_sales_and_inventory_system`.`tbl_users`.`Id`)))
    WHERE
        ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Time` LIKE CONCAT("%",param_Time,"%"))
       AND (`magnohardware_sales_and_inventory_system`.`tbl_status`.`Status` = 'IN')
       AND (`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Is_Current` = 0))
    ORDER BY `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Id` DESC ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_Get_Inventory_In_H_CA_By_Unit` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `sp_Get_Inventory_In_H_CA_By_Unit`(IN param_Unit VARCHAR(6))
SELECT 
        `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Id` AS `ID`,
        `magnohardware_sales_and_inventory_system`.`tbl_products`.`Name` AS `PRODUCT NAME`,
        `magnohardware_sales_and_inventory_system`.`tbl_status`.`Status` AS `STATUS`,
        `magnohardware_sales_and_inventory_system`.`tbl_units`.`Unit` AS `UNIT`,
        `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Quantity` AS `QUANTITY`,
        `magnohardware_sales_and_inventory_system`.`tbl_users`.`Full_Name` AS `ACCOUNT NAME`,
        `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Date` AS `DATE`,
        `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Time` AS `TIME`,
		`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Is_Current` AS `IS CURRENT`
    FROM
        ((((`magnohardware_sales_and_inventory_system`.`tbl_inventory`
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_products` ON ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Product_Id` = `magnohardware_sales_and_inventory_system`.`tbl_products`.`Id`)))
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_status` ON ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Status_Id` = `magnohardware_sales_and_inventory_system`.`tbl_status`.`Id`)))
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_units` ON ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Unit_Id` = `magnohardware_sales_and_inventory_system`.`tbl_units`.`Id`)))
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_users` ON ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`User_Id` = `magnohardware_sales_and_inventory_system`.`tbl_users`.`Id`)))
    WHERE
        ((`magnohardware_sales_and_inventory_system`.`tbl_Units`.`Unit` LIKE param_Unit)
       AND (`magnohardware_sales_and_inventory_system`.`tbl_status`.`Status` = 'IN')
       AND (`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Is_Current` = 0))
    ORDER BY `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Id` DESC ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_Get_Inventory_In_M_CA_By_AccountName` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `sp_Get_Inventory_In_M_CA_By_AccountName`(IN param_AccountName VARCHAR(50))
SELECT 
        `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Id` AS `ID`,
        `magnohardware_sales_and_inventory_system`.`tbl_products`.`Name` AS `PRODUCT NAME`,
        `magnohardware_sales_and_inventory_system`.`tbl_status`.`Status` AS `STATUS`,
        `magnohardware_sales_and_inventory_system`.`tbl_units`.`Unit` AS `UNIT`,
        `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Quantity` AS `QUANTITY`,
        `magnohardware_sales_and_inventory_system`.`tbl_users`.`Full_Name` AS `ACCOUNT NAME`,
        `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Date` AS `DATE`,
        `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Time` AS `TIME`,
		`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Is_Current` AS `IS CURRENT`
    FROM
        ((((`magnohardware_sales_and_inventory_system`.`tbl_inventory`
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_products` ON ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Product_Id` = `magnohardware_sales_and_inventory_system`.`tbl_products`.`Id`)))
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_status` ON ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Status_Id` = `magnohardware_sales_and_inventory_system`.`tbl_status`.`Id`)))
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_units` ON ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Unit_Id` = `magnohardware_sales_and_inventory_system`.`tbl_units`.`Id`)))
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_users` ON ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`User_Id` = `magnohardware_sales_and_inventory_system`.`tbl_users`.`Id`)))
    WHERE
        ((`magnohardware_sales_and_inventory_system`.`tbl_users`.`Full_Name` LIKE param_AccountName)
           AND (`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Is_Current` = 1))
    ORDER BY `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Id` ASC ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_Get_Inventory_In_M_CA_By_Date` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `sp_Get_Inventory_In_M_CA_By_Date`(IN param_Date VARCHAR(10))
SELECT 
        `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Id` AS `ID`,
        `magnohardware_sales_and_inventory_system`.`tbl_products`.`Name` AS `PRODUCT NAME`,
        `magnohardware_sales_and_inventory_system`.`tbl_status`.`Status` AS `STATUS`,
        `magnohardware_sales_and_inventory_system`.`tbl_units`.`Unit` AS `UNIT`,
        `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Quantity` AS `QUANTITY`,
        `magnohardware_sales_and_inventory_system`.`tbl_users`.`Full_Name` AS `ACCOUNT NAME`,
        `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Date` AS `DATE`,
        `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Time` AS `TIME`,
		`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Is_Current` AS `IS CURRENT`
    FROM
        ((((`magnohardware_sales_and_inventory_system`.`tbl_inventory`
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_products` ON ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Product_Id` = `magnohardware_sales_and_inventory_system`.`tbl_products`.`Id`)))
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_status` ON ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Status_Id` = `magnohardware_sales_and_inventory_system`.`tbl_status`.`Id`)))
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_units` ON ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Unit_Id` = `magnohardware_sales_and_inventory_system`.`tbl_units`.`Id`)))
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_users` ON ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`User_Id` = `magnohardware_sales_and_inventory_system`.`tbl_users`.`Id`)))
    WHERE
        ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Date` LIKE CONCAT("%",param_Date,"%"))
           AND (`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Is_Current` = 1))
    ORDER BY `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Id` ASC ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_Get_Inventory_In_M_CA_By_ProductName` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `sp_Get_Inventory_In_M_CA_By_ProductName`(IN param_ProductName VARCHAR(50))
SELECT 
        `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Id` AS `ID`,
        `magnohardware_sales_and_inventory_system`.`tbl_products`.`Name` AS `PRODUCT NAME`,
        `magnohardware_sales_and_inventory_system`.`tbl_status`.`Status` AS `STATUS`,
        `magnohardware_sales_and_inventory_system`.`tbl_units`.`Unit` AS `UNIT`,
        `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Quantity` AS `QUANTITY`,
        `magnohardware_sales_and_inventory_system`.`tbl_users`.`Full_Name` AS `ACCOUNT NAME`,
        `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Date` AS `DATE`,
        `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Time` AS `TIME`,
		`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Is_Current` AS `IS CURRENT`
    FROM
        ((((`magnohardware_sales_and_inventory_system`.`tbl_inventory`
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_products` ON ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Product_Id` = `magnohardware_sales_and_inventory_system`.`tbl_products`.`Id`)))
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_status` ON ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Status_Id` = `magnohardware_sales_and_inventory_system`.`tbl_status`.`Id`)))
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_units` ON ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Unit_Id` = `magnohardware_sales_and_inventory_system`.`tbl_units`.`Id`)))
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_users` ON ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`User_Id` = `magnohardware_sales_and_inventory_system`.`tbl_users`.`Id`)))
    WHERE
        ((`magnohardware_sales_and_inventory_system`.`tbl_products`.`Name` LIKE param_ProductName)
           AND (`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Is_Current` = 1))
    ORDER BY `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Id` ASC ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_Get_Inventory_In_M_CA_By_Quantity` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `sp_Get_Inventory_In_M_CA_By_Quantity`(IN param_Quantity INT(6))
SELECT 
        `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Id` AS `ID`,
        `magnohardware_sales_and_inventory_system`.`tbl_products`.`Name` AS `PRODUCT NAME`,
        `magnohardware_sales_and_inventory_system`.`tbl_status`.`Status` AS `STATUS`,
        `magnohardware_sales_and_inventory_system`.`tbl_units`.`Unit` AS `UNIT`,
        `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Quantity` AS `QUANTITY`,
        `magnohardware_sales_and_inventory_system`.`tbl_users`.`Full_Name` AS `ACCOUNT NAME`,
        `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Date` AS `DATE`,
        `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Time` AS `TIME`,
		`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Is_Current` AS `IS CURRENT`
    FROM
        ((((`magnohardware_sales_and_inventory_system`.`tbl_inventory`
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_products` ON ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Product_Id` = `magnohardware_sales_and_inventory_system`.`tbl_products`.`Id`)))
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_status` ON ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Status_Id` = `magnohardware_sales_and_inventory_system`.`tbl_status`.`Id`)))
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_units` ON ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Unit_Id` = `magnohardware_sales_and_inventory_system`.`tbl_units`.`Id`)))
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_users` ON ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`User_Id` = `magnohardware_sales_and_inventory_system`.`tbl_users`.`Id`)))
    WHERE
        ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Quantity` LIKE CONCAT("%",param_Quantity,"%"))
           AND (`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Is_Current` = 1))
    ORDER BY `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Id` ASC ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_Get_Inventory_In_M_CA_By_Time` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `sp_Get_Inventory_In_M_CA_By_Time`(IN param_Time VARCHAR(11))
SELECT 
        `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Id` AS `ID`,
        `magnohardware_sales_and_inventory_system`.`tbl_products`.`Name` AS `PRODUCT NAME`,
        `magnohardware_sales_and_inventory_system`.`tbl_status`.`Status` AS `STATUS`,
        `magnohardware_sales_and_inventory_system`.`tbl_units`.`Unit` AS `UNIT`,
        `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Quantity` AS `QUANTITY`,
        `magnohardware_sales_and_inventory_system`.`tbl_users`.`Full_Name` AS `ACCOUNT NAME`,
        `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Date` AS `DATE`,
        `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Time` AS `TIME`,
		`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Is_Current` AS `IS CURRENT`
    FROM
        ((((`magnohardware_sales_and_inventory_system`.`tbl_inventory`
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_products` ON ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Product_Id` = `magnohardware_sales_and_inventory_system`.`tbl_products`.`Id`)))
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_status` ON ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Status_Id` = `magnohardware_sales_and_inventory_system`.`tbl_status`.`Id`)))
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_units` ON ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Unit_Id` = `magnohardware_sales_and_inventory_system`.`tbl_units`.`Id`)))
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_users` ON ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`User_Id` = `magnohardware_sales_and_inventory_system`.`tbl_users`.`Id`)))
    WHERE
        ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Time` LIKE CONCAT("%",param_Time,"%"))
           AND (`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Is_Current` = 1))
    ORDER BY `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Id` ASC ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_Get_Inventory_In_M_CA_By_Unit` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `sp_Get_Inventory_In_M_CA_By_Unit`(IN param_Unit VARCHAR(6))
SELECT 
        `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Id` AS `ID`,
        `magnohardware_sales_and_inventory_system`.`tbl_products`.`Name` AS `PRODUCT NAME`,
        `magnohardware_sales_and_inventory_system`.`tbl_status`.`Status` AS `STATUS`,
        `magnohardware_sales_and_inventory_system`.`tbl_units`.`Unit` AS `UNIT`,
        `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Quantity` AS `QUANTITY`,
        `magnohardware_sales_and_inventory_system`.`tbl_users`.`Full_Name` AS `ACCOUNT NAME`,
        `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Date` AS `DATE`,
        `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Time` AS `TIME`,
		`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Is_Current` AS `IS CURRENT`
    FROM
        ((((`magnohardware_sales_and_inventory_system`.`tbl_inventory`
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_products` ON ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Product_Id` = `magnohardware_sales_and_inventory_system`.`tbl_products`.`Id`)))
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_status` ON ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Status_Id` = `magnohardware_sales_and_inventory_system`.`tbl_status`.`Id`)))
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_units` ON ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Unit_Id` = `magnohardware_sales_and_inventory_system`.`tbl_units`.`Id`)))
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_users` ON ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`User_Id` = `magnohardware_sales_and_inventory_system`.`tbl_users`.`Id`)))
    WHERE
        ((`magnohardware_sales_and_inventory_system`.`tbl_Units`.`Unit` LIKE param_Unit)
           AND (`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Is_Current` = 1))
    ORDER BY `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Id` ASC ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_Get_Inventory_Out_By_AccountName` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `sp_Get_Inventory_Out_By_AccountName`(IN param_AccountName VARCHAR(50))
SELECT 
        `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Id` AS `ID`,
        `magnohardware_sales_and_inventory_system`.`tbl_products`.`Name` AS `PRODUCT NAME`,
        `magnohardware_sales_and_inventory_system`.`tbl_status`.`Status` AS `STATUS`,
        `magnohardware_sales_and_inventory_system`.`tbl_units`.`Unit` AS `UNIT`,
        `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Quantity` AS `QUANTITY`,
        `magnohardware_sales_and_inventory_system`.`tbl_users`.`Full_Name` AS `ACCOUNT NAME`,
        `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Date` AS `DATE`,
        `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Time` AS `TIME`,
		`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Is_Current` AS `IS CURRENT`
    FROM
        ((((`magnohardware_sales_and_inventory_system`.`tbl_inventory`
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_products` ON ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Product_Id` = `magnohardware_sales_and_inventory_system`.`tbl_products`.`Id`)))
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_status` ON ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Status_Id` = `magnohardware_sales_and_inventory_system`.`tbl_status`.`Id`)))
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_units` ON ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Unit_Id` = `magnohardware_sales_and_inventory_system`.`tbl_units`.`Id`)))
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_users` ON ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`User_Id` = `magnohardware_sales_and_inventory_system`.`tbl_users`.`Id`)))
    WHERE
        ((`magnohardware_sales_and_inventory_system`.`tbl_users`.`Full_Name` LIKE param_AccountName)
          AND (`magnohardware_sales_and_inventory_system`.`tbl_status`.`Status` = 'OUT')
       AND (`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Is_Current` = 0))
    ORDER BY `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Id` ASC ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_Get_Inventory_Out_By_Date` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `sp_Get_Inventory_Out_By_Date`(IN param_Date VARCHAR(10))
SELECT 
        `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Id` AS `ID`,
        `magnohardware_sales_and_inventory_system`.`tbl_products`.`Name` AS `PRODUCT NAME`,
        `magnohardware_sales_and_inventory_system`.`tbl_status`.`Status` AS `STATUS`,
        `magnohardware_sales_and_inventory_system`.`tbl_units`.`Unit` AS `UNIT`,
        `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Quantity` AS `QUANTITY`,
        `magnohardware_sales_and_inventory_system`.`tbl_users`.`Full_Name` AS `ACCOUNT NAME`,
        `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Date` AS `DATE`,
        `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Time` AS `TIME`,
		`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Is_Current` AS `IS CURRENT`
    FROM
        ((((`magnohardware_sales_and_inventory_system`.`tbl_inventory`
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_products` ON ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Product_Id` = `magnohardware_sales_and_inventory_system`.`tbl_products`.`Id`)))
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_status` ON ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Status_Id` = `magnohardware_sales_and_inventory_system`.`tbl_status`.`Id`)))
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_units` ON ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Unit_Id` = `magnohardware_sales_and_inventory_system`.`tbl_units`.`Id`)))
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_users` ON ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`User_Id` = `magnohardware_sales_and_inventory_system`.`tbl_users`.`Id`)))
    WHERE
        ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Date` LIKE CONCAT("%",param_Date,"%"))
       AND (`magnohardware_sales_and_inventory_system`.`tbl_status`.`Status` = 'OUT')
       AND (`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Is_Current` = 0))
    ORDER BY `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Id` ASC ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_Get_Inventory_Out_By_ProductName` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `sp_Get_Inventory_Out_By_ProductName`(IN param_ProductName VARCHAR(50))
SELECT 
        `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Id` AS `ID`,
        `magnohardware_sales_and_inventory_system`.`tbl_products`.`Name` AS `PRODUCT NAME`,
        `magnohardware_sales_and_inventory_system`.`tbl_status`.`Status` AS `STATUS`,
        `magnohardware_sales_and_inventory_system`.`tbl_units`.`Unit` AS `UNIT`,
        `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Quantity` AS `QUANTITY`,
        `magnohardware_sales_and_inventory_system`.`tbl_users`.`Full_Name` AS `ACCOUNT NAME`,
        `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Date` AS `DATE`,
        `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Time` AS `TIME`,
		`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Is_Current` AS `IS CURRENT`
    FROM
        ((((`magnohardware_sales_and_inventory_system`.`tbl_inventory`
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_products` ON ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Product_Id` = `magnohardware_sales_and_inventory_system`.`tbl_products`.`Id`)))
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_status` ON ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Status_Id` = `magnohardware_sales_and_inventory_system`.`tbl_status`.`Id`)))
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_units` ON ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Unit_Id` = `magnohardware_sales_and_inventory_system`.`tbl_units`.`Id`)))
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_users` ON ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`User_Id` = `magnohardware_sales_and_inventory_system`.`tbl_users`.`Id`)))
    WHERE
        ((`magnohardware_sales_and_inventory_system`.`tbl_products`.`Name` LIKE param_ProductName)
       AND (`magnohardware_sales_and_inventory_system`.`tbl_status`.`Status` = 'OUT')
       AND (`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Is_Current` = 0))
    ORDER BY `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Id` ASC ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_Get_Inventory_Out_By_Quantity` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `sp_Get_Inventory_Out_By_Quantity`(IN param_Quantity INT(6))
SELECT 
        `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Id` AS `ID`,
        `magnohardware_sales_and_inventory_system`.`tbl_products`.`Name` AS `PRODUCT NAME`,
        `magnohardware_sales_and_inventory_system`.`tbl_status`.`Status` AS `STATUS`,
        `magnohardware_sales_and_inventory_system`.`tbl_units`.`Unit` AS `UNIT`,
        `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Quantity` AS `QUANTITY`,
        `magnohardware_sales_and_inventory_system`.`tbl_users`.`Full_Name` AS `ACCOUNT NAME`,
        `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Date` AS `DATE`,
        `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Time` AS `TIME`,
		`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Is_Current` AS `IS CURRENT`
    FROM
        ((((`magnohardware_sales_and_inventory_system`.`tbl_inventory`
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_products` ON ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Product_Id` = `magnohardware_sales_and_inventory_system`.`tbl_products`.`Id`)))
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_status` ON ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Status_Id` = `magnohardware_sales_and_inventory_system`.`tbl_status`.`Id`)))
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_units` ON ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Unit_Id` = `magnohardware_sales_and_inventory_system`.`tbl_units`.`Id`)))
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_users` ON ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`User_Id` = `magnohardware_sales_and_inventory_system`.`tbl_users`.`Id`)))
    WHERE
        ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Quantity` LIKE CONCAT("%",param_Quantity,"%"))
       AND (`magnohardware_sales_and_inventory_system`.`tbl_status`.`Status` = 'OUT')
       AND (`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Is_Current` = 0))
    ORDER BY `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Id` ASC ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_Get_Inventory_Out_By_Time` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `sp_Get_Inventory_Out_By_Time`(IN param_Time VARCHAR(11))
SELECT 
        `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Id` AS `ID`,
        `magnohardware_sales_and_inventory_system`.`tbl_products`.`Name` AS `PRODUCT NAME`,
        `magnohardware_sales_and_inventory_system`.`tbl_status`.`Status` AS `STATUS`,
        `magnohardware_sales_and_inventory_system`.`tbl_units`.`Unit` AS `UNIT`,
        `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Quantity` AS `QUANTITY`,
        `magnohardware_sales_and_inventory_system`.`tbl_users`.`Full_Name` AS `ACCOUNT NAME`,
        `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Date` AS `DATE`,
        `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Time` AS `TIME`,
		`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Is_Current` AS `IS CURRENT`
    FROM
        ((((`magnohardware_sales_and_inventory_system`.`tbl_inventory`
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_products` ON ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Product_Id` = `magnohardware_sales_and_inventory_system`.`tbl_products`.`Id`)))
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_status` ON ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Status_Id` = `magnohardware_sales_and_inventory_system`.`tbl_status`.`Id`)))
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_units` ON ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Unit_Id` = `magnohardware_sales_and_inventory_system`.`tbl_units`.`Id`)))
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_users` ON ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`User_Id` = `magnohardware_sales_and_inventory_system`.`tbl_users`.`Id`)))
    WHERE
        ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Time` LIKE CONCAT("%",param_Time,"%"))
       AND (`magnohardware_sales_and_inventory_system`.`tbl_status`.`Status` = 'OUT')
       AND (`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Is_Current` = 0))
    ORDER BY `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Id` ASC ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_Get_Inventory_Out_By_Unit` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `sp_Get_Inventory_Out_By_Unit`(IN param_Unit VARCHAR(6))
SELECT 
        `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Id` AS `ID`,
        `magnohardware_sales_and_inventory_system`.`tbl_products`.`Name` AS `PRODUCT NAME`,
        `magnohardware_sales_and_inventory_system`.`tbl_status`.`Status` AS `STATUS`,
        `magnohardware_sales_and_inventory_system`.`tbl_units`.`Unit` AS `UNIT`,
        `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Quantity` AS `QUANTITY`,
        `magnohardware_sales_and_inventory_system`.`tbl_users`.`Full_Name` AS `ACCOUNT NAME`,
        `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Date` AS `DATE`,
        `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Time` AS `TIME`,
		`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Is_Current` AS `IS CURRENT`
    FROM
        ((((`magnohardware_sales_and_inventory_system`.`tbl_inventory`
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_products` ON ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Product_Id` = `magnohardware_sales_and_inventory_system`.`tbl_products`.`Id`)))
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_status` ON ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Status_Id` = `magnohardware_sales_and_inventory_system`.`tbl_status`.`Id`)))
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_units` ON ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Unit_Id` = `magnohardware_sales_and_inventory_system`.`tbl_units`.`Id`)))
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_users` ON ((`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`User_Id` = `magnohardware_sales_and_inventory_system`.`tbl_users`.`Id`)))
    WHERE
        ((`magnohardware_sales_and_inventory_system`.`tbl_Units`.`Unit` LIKE param_Unit)
       AND (`magnohardware_sales_and_inventory_system`.`tbl_status`.`Status` = 'OUT')
       AND (`magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Is_Current` = 0))
    ORDER BY `magnohardware_sales_and_inventory_system`.`tbl_inventory`.`Id` ASC ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_Get_Sales_By_AccountName` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `sp_Get_Sales_By_AccountName`(IN param_AccountName VARCHAR(50))
BEGIN
    SELECT 
        `magnohardware_sales_and_inventory_system`.`tbl_sales`.`Id` AS `ID`,
        `magnohardware_sales_and_inventory_system`.`tbl_users`.`Full_Name` AS `ACCOUNT NAME`,
        `magnohardware_sales_and_inventory_system`.`tbl_sales`.`Sub_Total` AS `SUB TOTAL`,
        `magnohardware_sales_and_inventory_system`.`tbl_sales`.`Date` AS `DATE`,
        `magnohardware_sales_and_inventory_system`.`tbl_sales`.`Time` AS `TIME`
    FROM
        (`magnohardware_sales_and_inventory_system`.`tbl_sales`
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_users` ON ((`magnohardware_sales_and_inventory_system`.`tbl_sales`.`User_Id` = `magnohardware_sales_and_inventory_system`.`tbl_users`.`Id`)))
    WHERE
        (`magnohardware_sales_and_inventory_system`.`tbl_users`.`Full_Name` LIKE param_AccountName)
    ORDER BY `magnohardware_sales_and_inventory_system`.`tbl_sales`.`Id` DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_Get_Sales_By_Date` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `sp_Get_Sales_By_Date`(IN param_Date VARCHAR(11))
BEGIN
    SELECT 
        `magnohardware_sales_and_inventory_system`.`tbl_sales`.`Id` AS `ID`,
        `magnohardware_sales_and_inventory_system`.`tbl_users`.`Full_Name` AS `ACCOUNT NAME`,
        `magnohardware_sales_and_inventory_system`.`tbl_sales`.`Sub_Total` AS `SUB TOTAL`,
        `magnohardware_sales_and_inventory_system`.`tbl_sales`.`Date` AS `DATE`,
        `magnohardware_sales_and_inventory_system`.`tbl_sales`.`Time` AS `TIME`
    FROM
        (`magnohardware_sales_and_inventory_system`.`tbl_sales`
        JOIN `magnohardware_sales_and_inventory_system`.`tbl_users` ON ((`magnohardware_sales_and_inventory_system`.`tbl_sales`.`User_Id` = `magnohardware_sales_and_inventory_system`.`tbl_users`.`Id`)))
    WHERE
        (`magnohardware_sales_and_inventory_system`.`tbl_sales`.`Date` LIKE CONCAT("%",param_Date,"%"))
    ORDER BY `magnohardware_sales_and_inventory_system`.`tbl_sales`.`Id` DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_Login` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `sp_Login`(IN param_Username varchar(12))
BEGIN
SELECT * FROM tbl_Users WHERE Username = param_Username;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_Reset_AutoIncrement_ProductCategory` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `sp_Reset_AutoIncrement_ProductCategory`()
BEGIN
ALTER TABLE magnohardware_sales_and_inventory_system.tbl_categories AUTO_INCREMENT = 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_Reset_AutoIncrement_Supplier` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `sp_Reset_AutoIncrement_Supplier`()
BEGIN
ALTER TABLE magnohardware_sales_and_inventory_system.tbl_suppliers AUTO_INCREMENT = 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_UpdateExistingProduct` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `sp_UpdateExistingProduct`(IN param_UnitId VARCHAR(5),
IN param_Quantity INT(6), IN param_UserId INT(1), IN param_Date DATE, 
IN param_Time VARCHAR(11), IN param_Id INT(6)
)
BEGIN
UPDATE tbl_inventory SET Unit_Id = param_UnitId, Quantity = param_Quantity, User_Id = param_UserId, Date = param_Date, Time = param_Time
WHERE Id = param_Id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_UpdateExistingProductCategory` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `sp_UpdateExistingProductCategory`(IN param_CategoryName VARCHAR(22),
IN param_Date date, IN param_Time VARCHAR(11), IN param_Id INT(2)
)
BEGIN
UPDATE tbl_categories SET Category = param_CategoryName, Date = param_Date, Time = param_Time
WHERE Id = param_Id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_UpdateExistingSupplier` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `sp_UpdateExistingSupplier`(IN param_Name VARCHAR(45),
IN param_TypeId INT(1), IN param_Email VARCHAR(50) ,IN param_ContactNumber VARCHAR(45),
IN param_Address MEDIUMTEXT, IN param_UserId INT(1), IN param_Id INT(2))
BEGIN
UPDATE tbl_suppliers SET Name = param_Name, Type_Id = param_TypeId, Email = param_Email,
Contact_Number = param_ContactNumber, Address = param_Address, User_Id = param_UserId
WHERE Id = param_Id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `vw_getdata_accounts`
--

/*!50001 DROP VIEW IF EXISTS `vw_getdata_accounts`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_getdata_accounts` AS select `tbl_users`.`Id` AS `ID`,`tbl_users`.`Username` AS `USERNAME`,`tbl_users`.`Password` AS `PASSWORD`,`tbl_users`.`Full_Name` AS `ACCOUNT NAME`,`tbl_users`.`Secret_Question` AS `SECRET QUESTION`,`tbl_users`.`Secret_Answer` AS `SECRET ANSWER` from `tbl_users` order by `tbl_users`.`Id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_getdata_inventory_in_currentavailable`
--

/*!50001 DROP VIEW IF EXISTS `vw_getdata_inventory_in_currentavailable`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_getdata_inventory_in_currentavailable` AS select `tbl_inventory`.`Id` AS `ID`,`tbl_products`.`Name` AS `PRODUCT NAME`,`tbl_status`.`Status` AS `STATUS`,`tbl_units`.`Unit` AS `UNIT`,`tbl_inventory`.`Quantity` AS `QUANTITY`,`tbl_users`.`Full_Name` AS `ACCOUNT NAME`,`tbl_inventory`.`Date` AS `DATE`,`tbl_inventory`.`Time` AS `TIME`,`tbl_inventory`.`Is_Current` AS `IS CURRENT` from ((((`tbl_inventory` join `tbl_products` on((`tbl_inventory`.`Product_Id` = `tbl_products`.`Id`))) join `tbl_status` on((`tbl_inventory`.`Status_Id` = `tbl_status`.`Id`))) join `tbl_units` on((`tbl_inventory`.`Unit_Id` = `tbl_units`.`Id`))) join `tbl_users` on((`tbl_inventory`.`User_Id` = `tbl_users`.`Id`))) where ((`tbl_status`.`Status` = 'IN') and (`tbl_inventory`.`Is_Current` = 1)) order by `tbl_products`.`Id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_getdata_inventory_in_history`
--

/*!50001 DROP VIEW IF EXISTS `vw_getdata_inventory_in_history`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_getdata_inventory_in_history` AS select `tbl_inventory`.`Id` AS `ID`,`tbl_products`.`Name` AS `PRODUCT NAME`,`tbl_status`.`Status` AS `STATUS`,`tbl_units`.`Unit` AS `UNIT`,`tbl_inventory`.`Quantity` AS `QUANTITY`,`tbl_users`.`Full_Name` AS `ACCOUNT NAME`,`tbl_inventory`.`Date` AS `DATE`,`tbl_inventory`.`Time` AS `TIME`,`tbl_inventory`.`Is_Current` AS `IS CURRENT` from ((((`tbl_inventory` join `tbl_products` on((`tbl_inventory`.`Product_Id` = `tbl_products`.`Id`))) join `tbl_status` on((`tbl_inventory`.`Status_Id` = `tbl_status`.`Id`))) join `tbl_units` on((`tbl_inventory`.`Unit_Id` = `tbl_units`.`Id`))) join `tbl_users` on((`tbl_inventory`.`User_Id` = `tbl_users`.`Id`))) where ((`tbl_status`.`Status` = 'IN') and (`tbl_inventory`.`Date` = curdate()) and (`tbl_inventory`.`Is_Current` = 0)) order by `tbl_inventory`.`Id` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_getdata_inventory_in_manage`
--

/*!50001 DROP VIEW IF EXISTS `vw_getdata_inventory_in_manage`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_getdata_inventory_in_manage` AS select `tbl_inventory`.`Id` AS `ID`,`tbl_products`.`Name` AS `PRODUCT NAME`,`tbl_status`.`Status` AS `STATUS`,`tbl_units`.`Unit` AS `UNIT`,`tbl_inventory`.`Quantity` AS `QUANTITY`,`tbl_users`.`Full_Name` AS `ACCOUNT NAME`,`tbl_inventory`.`Date` AS `DATE`,`tbl_inventory`.`Time` AS `TIME`,`tbl_inventory`.`Is_Current` AS `IS CURRENT` from ((((`tbl_inventory` join `tbl_products` on((`tbl_inventory`.`Product_Id` = `tbl_products`.`Id`))) join `tbl_status` on((`tbl_inventory`.`Status_Id` = `tbl_status`.`Id`))) join `tbl_units` on((`tbl_inventory`.`Unit_Id` = `tbl_units`.`Id`))) join `tbl_users` on((`tbl_inventory`.`User_Id` = `tbl_users`.`Id`))) where ((`tbl_status`.`Status` = 'IN') and (`tbl_inventory`.`Is_Current` = 1)) order by `tbl_products`.`Id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_getdata_inventory_out`
--

/*!50001 DROP VIEW IF EXISTS `vw_getdata_inventory_out`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_getdata_inventory_out` AS select `tbl_inventory`.`Id` AS `ID`,`tbl_products`.`Name` AS `PRODUCT NAME`,`tbl_status`.`Status` AS `STATUS`,`tbl_units`.`Unit` AS `UNIT`,`tbl_inventory`.`Quantity` AS `QUANTITY`,`tbl_users`.`Full_Name` AS `ACCOUNT NAME`,`tbl_inventory`.`Date` AS `DATE`,`tbl_inventory`.`Time` AS `TIME` from ((((`tbl_inventory` join `tbl_products` on((`tbl_inventory`.`Product_Id` = `tbl_products`.`Id`))) join `tbl_status` on((`tbl_inventory`.`Status_Id` = `tbl_status`.`Id`))) join `tbl_units` on((`tbl_inventory`.`Unit_Id` = `tbl_units`.`Id`))) join `tbl_users` on((`tbl_inventory`.`User_Id` = `tbl_users`.`Id`))) where ((`tbl_status`.`Status` = 'OUT') and (`tbl_inventory`.`Date` = curdate())) order by `tbl_inventory`.`Id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_getdata_products_manageproducts`
--

/*!50001 DROP VIEW IF EXISTS `vw_getdata_products_manageproducts`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_getdata_products_manageproducts` AS select `tbl_products`.`Id` AS `PRODUCT ID`,`tbl_products`.`Name` AS `NAME`,`tbl_products`.`Price` AS `PRICE`,`tbl_categories`.`Category` AS `PRODUCT CATEGORY`,`tbl_suppliers`.`Name` AS `SUPPLIER`,`tbl_users`.`Full_Name` AS `ACCOUNT NAME`,`tbl_products`.`Date` AS `DATE`,`tbl_products`.`Time` AS `TIME` from (((`tbl_products` join `tbl_categories` on((`tbl_products`.`Category_Id` = `tbl_categories`.`Id`))) join `tbl_suppliers` on((`tbl_products`.`Supplier_Id` = `tbl_suppliers`.`Id`))) join `tbl_users` on((`tbl_products`.`User_Id` = `tbl_users`.`Id`))) order by `tbl_products`.`Id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_getdata_products_productcategories`
--

/*!50001 DROP VIEW IF EXISTS `vw_getdata_products_productcategories`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_getdata_products_productcategories` AS select `tbl_categories`.`Id` AS `ID`,`tbl_categories`.`Category` AS `CATEGORY NAME`,`tbl_categories`.`Date` AS `DATE`,`tbl_categories`.`Time` AS `TIME` from `tbl_categories` order by `tbl_categories`.`Id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_getdata_sales`
--

/*!50001 DROP VIEW IF EXISTS `vw_getdata_sales`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_getdata_sales` AS select `tbl_sales`.`Id` AS `ID`,`tbl_users`.`Full_Name` AS `ACCOUNT NAME`,`tbl_sales`.`Sub_Total` AS `SUB TOTAL`,`tbl_sales`.`Date` AS `DATE`,`tbl_sales`.`Time` AS `TIME` from (`tbl_sales` join `tbl_users` on((`tbl_sales`.`User_Id` = `tbl_users`.`Id`))) where (`tbl_sales`.`Date` = curdate()) order by `tbl_sales`.`Id` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_getdata_suppliers`
--

/*!50001 DROP VIEW IF EXISTS `vw_getdata_suppliers`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_getdata_suppliers` AS select `tbl_suppliers`.`Id` AS `ID`,`tbl_suppliers`.`Name` AS `SUPPLIER NAME`,`tbl_types`.`Type` AS `TYPE`,`tbl_suppliers`.`Email` AS `EMAIL`,`tbl_suppliers`.`Contact_Number` AS `CONTACT NUMBER`,`tbl_suppliers`.`Address` AS `ADDRESS`,`tbl_users`.`Full_Name` AS `ACCOUNT NAME` from ((`tbl_suppliers` join `tbl_types` on((`tbl_suppliers`.`Type_Id` = `tbl_types`.`Id`))) join `tbl_users` on((`tbl_suppliers`.`User_Id` = `tbl_users`.`Id`))) order by `tbl_suppliers`.`Id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-08 16:31:54
