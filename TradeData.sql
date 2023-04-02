-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: tradedata
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `agents`
--

DROP TABLE IF EXISTS `agents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `agents` (
  `certification_no` int NOT NULL AUTO_INCREMENT,
  `agent_name` varchar(100) NOT NULL,
  `office_location` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`certification_no`)
) ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agents`
--

LOCK TABLES `agents` WRITE;
/*!40000 ALTER TABLE `agents` DISABLE KEYS */;
INSERT INTO `agents` VALUES (1,'Asa.','Newark,NJ'),(2,'Averill.','Seattle, WA'),(3,'Baldwin.','Los Angeles, CA'),(4,'Campbell.','Austin,TX'),(5,'Christmas.','San Francisco,CA'),(6,'Denali.','Los Angeles,CA'),(7,'Dune.','Denver,CO'),(8,'Echo.','Boston,MA'),(9,'Ainsley','Atlanta,GA'),(10,'Blair','Detroit,MI'),(11,'Chase','Nerwark,NJ'),(12,'Charlie','Houston,TX'),(13,'Cameron','San diego,CA'),(14,'Casey','Dallas,TX'),(15,'Dakota','Washington, DC'),(16,'Drew','San Francisco,CA'),(17,'Devon','Huntsville,AL'),(18,'Dylan','Phoenix,Az'),(19,'Eden','Honolulu,HI'),(20,'Elliot','Honolulu,HI'),(21,'Hayden','Sacramento,CA'),(22,'Harley','Dallas,Texas'),(23,'Jayden','thellesse,FL'),(24,'Jordan','Jacksonville,FL'),(25,'Jo','Charleston,SC'),(26,'Jackie','Burlington,VT'),(27,'Jody','Waltham,MA'),(28,'Anne','Boston,MA'),(29,'Natalie','New York, NY'),(30,'Max','San Diego,CA');
/*!40000 ALTER TABLE `agents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `container`
--

DROP TABLE IF EXISTS `container`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `container` (
  `container_no` varchar(10) NOT NULL,
  `container_details` varchar(45) NOT NULL,
  `product_type` varchar(45) NOT NULL,
  `agent_id` int NOT NULL,
  PRIMARY KEY (`container_no`),
  KEY `agent_id_idx` (`agent_id`),
  CONSTRAINT `agent_id1` FOREIGN KEY (`agent_id`) REFERENCES `agents` (`certification_no`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `container`
--

LOCK TABLES `container` WRITE;
/*!40000 ALTER TABLE `container` DISABLE KEYS */;
INSERT INTO `container` VALUES ('65647','40â€² High Cube Dry Container','fragile',6),('65648','40â€² Refrigerated Container','fragile',14),('65649','45â€² High Cube Dry Container','not fragile',2),('65650','45â€² High Cube Dry Container','fragile',1),('65651','20â€² Standard Dry Container','not fragile',26),('65652','40â€² High Cube Refrigerated Container','not fragile',8),('65653','48â€² High Cube Dry Container','not fragile',18),('65654','53â€² High Cube Dry Container','fragile',29),('65655','40â€² High Cube Refrigerated Container','not fragile',3),('65656','20â€² Refrigerated Container	','fragile',4),('65657','40â€² Standard Dry Container','fragile',28),('65658','40â€² Refrigerated Container','fragile',19),('65659','53â€² High Cube Dry Container','not fragile',12),('65660','48â€² High Cube Dry Container','fragile',5),('65661','48â€² High Cube Dry Container','not fragile',8),('65662','20â€² Refrigerated Container','not fragile',22),('65663','20â€² Refrigerated Container	','not fragile',19),('65664','40â€² High Cube Dry Container','not fragile',11),('65665','53â€² High Cube Dry Container','fragile',10),('65666','48â€² High Cube Dry Container','not fragile',9),('65667','40â€² High Cube Refrigerated Container','fragile',17),('65668','45â€² High Cube Dry Container','fragile',7),('65669','53â€² High Cube Dry Container','not fragile',2),('65670','48â€² High Cube Dry Container','fragile',11),('65671','53â€² High Cube Dry Container','not fragile',17),('65672','20â€² Refrigerated Container	','fragile',4),('65673','40â€² Refrigerated Container','not fragile',23),('65674','40â€² High Cube Dry Container','fragile',15),('65675','20â€² Refrigerated Container	','fragile',30),('65676','20â€² Standard Dry Container','fragile',7),('65677','40â€² High Cube Refrigerated Container','not fragile',25),('65678','45â€² High Cube Dry Container','fragile',16),('65679','45â€² High Cube Dry Container','not fragile',13),('65680','20â€² Refrigerated Container	','not fragile',12),('65681','20â€² Standard Dry Container','not fragile',3),('65682','40â€² Standard Dry Container','not fragile',9),('65683','40â€² Refrigerated Container','not fragile',10),('65684','40â€² Refrigerated Container','not fragile',13),('65685','53â€² High Cube Dry Container','not fragile',21),('65686','48â€² High Cube Dry Container','fragile',20),('65687','20â€² Standard Dry Container','not fragile',16),('65688','40â€² Refrigerated Container','fragile',18),('65689','40â€² Standard Dry Container','fragile',5),('65690','40â€² High Cube Refrigerated Container','not fragile',27),('65691','20â€² Refrigerated Container','fragile',1),('65692','45â€² High Cube Dry Container','not fragile',15),('65693','40â€² High Cube Dry Container','fragile',6),('65694','40â€² Standard Dry Container','not fragile',24),('65695','40â€² High Cube Refrigerated Container','fragile',14);
/*!40000 ALTER TABLE `container` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract`
--

DROP TABLE IF EXISTS `contract`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contract` (
  `certification_no` int NOT NULL,
  `man_id` int NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `commition_in_per` int DEFAULT NULL,
  `termANDconditions` varchar(100) DEFAULT NULL,
  KEY `certification_no_idx` (`certification_no`),
  KEY `man_id_idx` (`man_id`),
  CONSTRAINT `certification_no` FOREIGN KEY (`certification_no`) REFERENCES `agents` (`certification_no`) ON UPDATE CASCADE,
  CONSTRAINT `man_id` FOREIGN KEY (`man_id`) REFERENCES `manufacturer` (`Id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract`
--

LOCK TABLES `contract` WRITE;
/*!40000 ALTER TABLE `contract` DISABLE KEYS */;
INSERT INTO `contract` VALUES (2,15,'2021-09-18','2026-02-01',11,'Contract before end date penalty vaild'),(3,51,'2021-03-16','2022-01-11',2,'Contract before end date penalty vaild'),(14,33,'2021-11-12','2023-03-16',3,'Defective product can be dicarded'),(25,21,'2022-06-17','2023-02-09',23,'Contract before end date penalty vaild'),(15,20,'2021-02-09','2023-12-29',3,'Defective product can be dicarded'),(6,4,'2021-11-12','2023-09-18',1,'Contract before end date penalty vaild'),(8,50,'2022-01-04','2025-06-17',2,'Illegal products will be seized'),(4,18,'2021-09-18','2023-04-02',31,'Illegal products will be seized'),(2,27,'2021-09-18','2023-11-12',1,'Contract before end date penalty vaild'),(8,32,'2021-04-02','2022-01-04',2,'Illegal products will be seized'),(17,48,'2021-03-16','2025-10-20',1,'Defective product can be dicarded'),(22,41,'2021-02-01','2025-08-04',4,'Illegal products will be seized'),(12,10,'2022-08-04','2024-02-01',5,'Contract before end date penalty vaild'),(2,52,'2021-03-16','2026-01-11',34,'Illegal products will be seized'),(23,35,'2021-01-11','2026-03-16',3,'Defective product can be dicarded'),(20,23,'2021-01-04','2026-02-09',2,'Issue verified certificate'),(28,54,'2021-03-16','2024-12-29',11,'Illegal products will be seized'),(29,1,'2021-02-01','2024-09-18',2,'Contract before end date penalty vaild'),(19,3,'2022-10-20','2025-06-17',3,'Illegal products will be seized'),(17,7,'2021-01-11','2024-04-02',23,'Defective product can be dicarded'),(14,36,'2021-04-02','2023-11-12',3,'Illegal products will be seized'),(12,19,'2022-08-04','2025-01-04',1,'Issue verified certificate'),(18,30,'2021-02-01','2025-10-20',2,'Contract before end date penalty vaild'),(29,25,'2021-09-18','2025-08-04',31,'Issue verified certificate'),(27,14,'2021-02-09','2023-02-01',1,'Illegal products will be seized'),(15,49,'2022-01-04','2025-01-11',2,'Defective product can be dicarded'),(12,44,'2022-06-17','2023-03-16',1,'Issue verified certificate'),(10,11,'2021-04-02','2023-02-09',4,'Contract dates can not be changed'),(8,42,'2022-10-20','2026-12-29',5,'Contract before end date penalty vaild'),(7,38,'2022-08-04','2023-09-18',34,'Contract dates can not be changed'),(16,28,'2022-06-17','2025-06-17',3,'Defective product can be dicarded'),(3,22,'2021-02-01','2025-04-02',2,'Contract dates can not be changed'),(18,31,'2021-12-29','2025-11-12',11,'Issue verified certificate'),(21,34,'2022-10-20','2025-01-04',2,'Defective product can be dicarded'),(28,40,'2021-02-09','2022-10-20',3,'Contract dates can not be changed'),(30,26,'2021-03-16','2025-08-04',23,'Defective product can be dicarded'),(1,8,'2021-12-29','2025-02-01',3,'Contract dates can not be changed'),(5,17,'2021-02-09','2025-01-11',1,'Defective product can be dicarded'),(8,55,'2021-01-11','2025-03-16',2,'Contract dates can not be changed'),(19,5,'2021-01-04','2026-02-09',31,'Defective product can be dicarded'),(20,29,'2021-01-11','2025-12-29',1,'Issue verified certificate'),(14,53,'2022-06-17','2025-09-18',2,'Defective product can be dicarded'),(11,43,'2021-12-29','2025-06-17',1,'Contract dates can not be changed'),(10,13,'2021-09-18','2025-04-02',4,'Defective product can be dicarded'),(3,24,'2021-11-12','2025-11-12',5,'Contract dates can not be changed'),(7,6,'2021-02-09','2025-01-04',34,'Defective product can be dicarded'),(16,9,'2021-04-02','2025-10-20',3,'Issue verified certificate'),(25,47,'2021-01-11','2025-08-04',2,'Contract dates can not be changed'),(3,39,'2022-10-20','2026-02-01',11,'Issue verified certificate'),(30,46,'2021-12-29','2025-01-11',2,'Issue verified certificate'),(21,16,'2022-06-17','2025-03-16',3,'Contract dates can not be changed'),(28,45,'2021-02-01','2025-02-09',23,'Defective product can be dicarded'),(4,12,'2021-11-12','2025-12-29',3,'Issue verified certificate'),(1,2,'2021-12-29','2025-09-18',1,'Contract dates can not be changed'),(10,37,'2022-08-04','2025-06-17',2,'Contract dates can not be changed');
/*!40000 ALTER TABLE `contract` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `distributer`
--

DROP TABLE IF EXISTS `distributer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `distributer` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `dis_name` varchar(45) NOT NULL,
  `address` varchar(50) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `distributer`
--

LOCK TABLES `distributer` WRITE;
/*!40000 ALTER TABLE `distributer` DISABLE KEYS */;
INSERT INTO `distributer` VALUES (1,'Asa ','London','UK'),(2,'Averill ','Nepal','Nepal'),(3,'Baldwin ','Chennai','India'),(4,'Campbell ','Shanghai','China'),(5,'Christmas ','Melbourne','UK'),(6,'Denali ','Kuala lumpur','Malasiya'),(7,'Dune ','Banglaru','India'),(8,'Echo ','Geneva','UK'),(9,'Ainsley','Amdaman','Sri lanka'),(10,'Blair','Dublin','Ireland'),(11,'Chase','Boksburg','South Africa'),(12,'Charlie','New Delhi','India'),(13,'Cameron','Tokyo','Japan'),(14,'Casey','Prague','UK'),(15,'Dakota','Washington','DC'),(16,'Drew','Bengaluru','India'),(17,'Devon','Mumbai','India'),(18,'Dylan','Toronto','Ontario'),(19,'Eden','London','England'),(20,'Elliot','Tallahassee','England'),(21,'Hayden','Malta','UK'),(22,'Harley','Texas','USA'),(23,'Jayden','Florida','USA'),(24,'Jordan','Chandigarh','India'),(25,'Jo','Canada','UK'),(26,'Jackie','Wayne County','MI'),(27,'Jody','Bondi Beach','Sydney'),(28,'Anne','New Jersey','United States'),(29,'Natalie','Hamilton','New Zealand'),(30,'Asasa ','Nelson','New Zealand'),(31,'Averilla ','Seattle','United States'),(32,'Baldwini ','Chennai','India'),(33,'Campbella ','Chicagoland','United States'),(34,'Chris','Melbourne','Canada'),(35,'Denalia ','Los Angeles','United States'),(36,'Dunei ','Banglaru','India'),(37,'Echoo ','Geneva','UK'),(38,'Ainsleya','Amdaman','Sri lanka'),(39,'Blaira','Dublin','UK'),(40,'Chasey','Boksburg','UK'),(41,'Charl','New Delhi','India'),(42,'Camerone','Paris','France'),(43,'Caseye','Prague','UK'),(44,'Dakotan','Washington','United States'),(45,'Drewi','Bengaluru','India'),(46,'Devonron','Mumbai','India'),(47,'Dylanan','Toronto','Canada'),(48,'Edena','London','UK'),(49,'Elli','Rome','United Kingdom'),(50,'Haydena','Bengaluru','India'),(51,'Harl','Mumbai','India'),(52,'Jaydena','Toronto','Canada'),(53,'Jordana','London','UK'),(54,'John','Tulum','Mexico'),(55,'Smith','Massachusetts','USA'),(56,'Jery','California','USA'),(57,'Krishna','Delhi','India'),(58,'Rajgopalam','Bengaluru','India');
/*!40000 ALTER TABLE `distributer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods`
--

DROP TABLE IF EXISTS `goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goods` (
  `good_code` int NOT NULL AUTO_INCREMENT,
  `good_name` varchar(30) NOT NULL,
  `good_type` varchar(15) DEFAULT 'Undecided',
  `quantity_in_tons` int DEFAULT NULL,
  `price_in$_perTons` int DEFAULT NULL,
  PRIMARY KEY (`good_code`),
  UNIQUE KEY `good_name_UNIQUE` (`good_name`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods`
--

LOCK TABLES `goods` WRITE;
/*!40000 ALTER TABLE `goods` DISABLE KEYS */;
INSERT INTO `goods` VALUES (22,'Fruits','Perishable',43,72),(23,'Beverage','Perishable',43,32423),(24,'Meat','Perishable',224,34532),(25,'Poultry','Perishable',42,43532),(29,'Vegetables','Perishable',232,43563),(30,'Pharmaceuticals','Perishable',867,32676),(31,'seafood','Perishable',657,453782),(32,'Jelly','Perishable',76,465),(35,'cooked leftovers','Perishable',87,43534),(38,'Corn','Perishable',98,3534),(39,'Breads','Perishable',98,64365),(42,'Cooked grains','Perishable',576,3456534),(43,'Cottage cheese','Perishable',56,456),(44,'Lunch meats','Perishable',45,5464),(45,'Stews','Perishable',43,43634),(46,'Sauces','Perishable',23,54365),(47,'Frosting','Perishable',78,65687),(50,'Sour cream','Perishable',96,45667),(52,'Whey','Perishable',46,578),(54,'Bakery','Perishable',86,4675),(57,'Pickles','Perishable',456,49384),(58,'Flour','Perishable',56,6676),(60,'Edibles','Perishable',75,43786),(63,'fried','Perishable',45,3532),(64,'chocolate','Perishable',56,453646),(65,'margarines','Perishable',75,6432),(67,' Instant food','Perishable',54,57678),(69,'fresh leaves','Perishable',567,67676),(75,'Dairy Products','Non Perishable',243,4345),(76,'Feed','Non Perishable',53,3534),(77,'Auto parts','Non Perishable',34,4532),(82,'Crude oil','Non Perishable',87,47868),(83,'car tires','Non Perishable',54,3485),(85,'Wheat','Non Perishable',856,53245),(86,'Rice','Non Perishable',45,46353),(89,'Cake Mixes','Non Perishable',87,4356),(90,'Powdered Milk','Non Perishable',867,5463),(97,'Tea Bags','Non Perishable',87,534675),(98,'Syrup','Non Perishable',48,4575),(100,'Baby Food & Cereal','Non Perishable',59,54645),(102,'Granola Bars','Non Perishable',85,897575),(104,'Cereal Bars','Non Perishable',975,4276),(105,'Granulated Sugar','Non Perishable',78,84785),(108,'Pancake mix','Non Perishable',46,7876),(110,'Nut butters','Non Perishable',86,43587),(111,'Dried fruits and vegetables','Non Perishable',56,345),(115,'dried soups','Non Perishable',54,34255),(117,'Freeze dried meals','Non Perishable',67,68876),(119,'nondairy milk','Non Perishable',57,878676);
/*!40000 ALTER TABLE `goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manufacturer`
--

DROP TABLE IF EXISTS `manufacturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manufacturer` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `man_name` varchar(50) NOT NULL,
  `man_address` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manufacturer`
--

LOCK TABLES `manufacturer` WRITE;
/*!40000 ALTER TABLE `manufacturer` DISABLE KEYS */;
INSERT INTO `manufacturer` VALUES (1,'Alliance Inc','2201  BUTTE POCATELLO ID 83201-1890 USA'),(2,'Assured Industries','1300  LEVIS WASHINGTON DC 20002-2925 USA'),(3,'Action Place','5900  EDEN POCATELLO ID 83202-2038 USA'),(4,'Abridge Inc','1100  CALCIONE HENDERSON NV 89011-3108 USA'),(5,'Manufacturing Facility Co.','54  BELL CHICOPEE MA 01013-3250 USA'),(6,'Man-units','1100  CALCIONE HENDERSON NV 89011-3108 USA'),(7,'Manufacturing Nation','9760 Central Dr. Coram, NY 11727'),(8,'The BaseManufacturing Company','1300 E 81ST LOS ANGELES CA 90001-3844 USA'),(9,'Total Manufacturing Co.','29  CLIFTON AGAWAM MA 01001-3329 USA'),(10,'Manufacturing Oriented','1600  PIERCE ALIQUIPPA PA 15001-1906 USA'),(11,'Volkswagen Group','13600  3RD HOPE ND 58046-9061 USA'),(12,'Toyota Group','2050 S MAGIC HENDERSON NV 89002-8646 USA'),(13,'Apple Electronics','4060  JENNIFER ARLINGTON HEIGHTS IL 60004-1059 USA'),(14,'Samsung Electronics','10505  CEDARVILLE BRANDYWINE MD 20613-7803 USA'),(15,'Daimler Automotive','1300 N CAUSEWAY METAIRIE LA 70001-4132 USA'),(16,'General Electric','2  BALSAM COVENTRY RI 02816-5617 USA'),(17,'Panasonic','1  KRUGER GRASS RANGE MT 59032-8074 USA'),(18,'Hewlett-Packard','1616  MARION WASHINGTON DC 20001-3419 USA'),(19,'Daimler','3420  EDENBORN METAIRIE LA 70002-7585 USA'),(20,'General Motors Automotive','1  9TH LISBON ND 58054-4216 USA'),(21,'Ford Automotive','1401  BRONCO BOULDER CITY NV 89005-3105 USA'),(22,'Hon Hai Precision Industry','135 W 29TH NEW YORK NY 10001-5151 USA'),(23,'General Electric Engineering','475  K WASHINGTON DC 20001-5254 USA'),(24,'Boeing Aerospace & Defense','1  PAJAK CHICOPEE MA 01013-1317 USA'),(25,'Siemens Engineering','131  MOUNT HOPE BRISTOL RI 02809-3535 USA'),(26,'iberton','601  5TH VALLEY CITY ND 58072-2019 USA'),(27,'StarEdge','300  LON BOONVILLE NC 27011-8946 USA'),(28,'Trumac Industrial Group','47  GOODING BRISTOL RI 02809-2622 USA'),(29,'Spiritofista Industrial Services','901 E 106TH LOS ANGELES CA 90002-3442 USA'),(30,'Celesten','8700  US 601 DOBSON NC 27017-7309 USA'),(31,'Industryarc','416 N CROW HARDIN MT 59034-1848 USA'),(32,'Industry Reactor','59  HULST AMHERST MA 01002-3534 USA'),(33,'Industry Forum','4655  PRESTANCIA WALDORF MD 20602-4106 USA'),(34,'Industry Globe','1  PAJAK CHICOPEE MA 01013-1317 USA'),(35,'PrimeEight','1285  LUTHER ARLINGTON HEIGHTS IL 60004-8152 USA'),(36,'Oak Park','1205 E HINTZ ARLINGTON HEIGHTS IL 60004-2757 USA'),(37,'Industry Backbone','1401  BRONCO BOULDER CITY NV 89005-3105 USA'),(38,'DeadFly Industrial Co.','9337 Lake View Dr.\nCockeysville, MD 21030'),(39,'Doculo.com','1  KRUGER GRASS RANGE MT 59032-8074 USA'),(40,'Tengent Solution','24 Broad St. Meriden, CT 06450'),(41,'Qubox','2404  CEDAR ALIQUIPPA PA 15001-2312 USA'),(42,'FeetZing Industrial Services','4060  JENNIFER ARLINGTON HEIGHTS IL 60004-1059 USA'),(43,'Pak Rite','446 W 93RD LOS ANGELES CA 90003-3973 USA'),(44,'ViaWave','1065  SWINFORD HENDERSON NV 89002-0510 USA'),(45,'Barefoot','6000  NEWHART MILL SEAFORD MD 19973-6064 USA'),(46,'Lucrado.com','2050 S MAGIC HENDERSON NV 89002-8646 USA'),(47,'Forginn Industrial Services','2200 N WALNUT ARLINGTON HEIGHTS IL 60004-3086 USA'),(48,'Industrylia','500  OCEANIC FISHERS ISLAND NY 06390-8001 USA'),(49,'Industry Intel','2300  GARRETT POCATELLO ID 83201-6124 USA'),(50,'String Industrial Co.','1285  LUTHER ARLINGTON HEIGHTS IL 60004-8152 USA'),(51,'Industry Central','3801  SIMONE GARDEN METAIRIE LA 70002-4517 USA'),(52,'Jorgenson Company','572 N VIRGIL LOS ANGELES CA 90004-2320 USA'),(53,'Zerrinn industrial','2  MOULTON FARM CAPE NEDDICK ME 03902-7949 USA'),(54,'Industrydeck','416 N CROW HARDIN MT 59034-1848 USA'),(55,'Radianta Industrial Group','1600  PIERCE ALIQUIPPA PA 15001-1906 USA');
/*!40000 ALTER TABLE `manufacturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `notice`
--

DROP TABLE IF EXISTS `notice`;
/*!50001 DROP VIEW IF EXISTS `notice`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `notice` AS SELECT 
 1 AS `certification_no`,
 1 AS `agent_name`,
 1 AS `office_location`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `payment_id` int NOT NULL AUTO_INCREMENT,
  `payment_date` date DEFAULT NULL,
  `total_payment($)` int NOT NULL,
  `payment_method` varchar(20) DEFAULT NULL,
  `dis_id` int NOT NULL,
  `purchase_id` int NOT NULL,
  PRIMARY KEY (`payment_id`),
  KEY `dis_id_idx` (`dis_id`),
  KEY `purchase_id_idx` (`purchase_id`),
  CONSTRAINT `dis_id1` FOREIGN KEY (`dis_id`) REFERENCES `distributer` (`Id`) ON UPDATE CASCADE,
  CONSTRAINT `purchase_id` FOREIGN KEY (`purchase_id`) REFERENCES `purchase_good` (`purchase_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1,'2021-02-03',32423,'Debit card',23,2),(2,'2022-12-15',43532,'Cash',54,4),(3,'2021-02-23',4345,'Check',24,5),(4,'2022-01-12',453782,'Debit card',35,10),(5,'2022-07-14',47868,'Cash',27,12),(6,'2022-01-01',53245,'Credit card',2,15),(7,'2021-02-03',64365,'Check',16,18),(8,'2022-02-02',4356,'Check',22,19),(9,'2021-02-03',5463,'Debit card',32,24),(10,'2022-12-02',3456534,'Credit card',52,28),(11,'2021-02-03',456,'Checks',1,31),(12,'2021-02-03',5464,'Credit card',21,29),(13,'2022-02-12',43634,'Cash',26,46),(14,'2022-05-17',534675,'Credit card',36,34),(15,'2021-02-03',4575,'Debit card',28,38),(16,'2021-02-03',45667,'Credit card',27,39),(17,'2022-08-02',578,'Debit card',48,41),(18,'2022-12-04',897575,'Check',45,42);
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase_good`
--

DROP TABLE IF EXISTS `purchase_good`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchase_good` (
  `purchase_id` int NOT NULL AUTO_INCREMENT,
  `good_code` int NOT NULL,
  `buy_date` date DEFAULT NULL,
  `quantity_in_tons` int DEFAULT NULL,
  `tax_perTons` int DEFAULT NULL,
  `dis_id` int NOT NULL,
  `agent_id` int NOT NULL,
  PRIMARY KEY (`purchase_id`),
  KEY `good_code_idx` (`good_code`),
  KEY `dis_id_idx` (`dis_id`),
  KEY `agent_id_idx` (`agent_id`),
  CONSTRAINT `agent_id` FOREIGN KEY (`agent_id`) REFERENCES `agents` (`certification_no`) ON UPDATE CASCADE,
  CONSTRAINT `dis_id` FOREIGN KEY (`dis_id`) REFERENCES `distributer` (`Id`) ON UPDATE CASCADE,
  CONSTRAINT `good_code1` FOREIGN KEY (`good_code`) REFERENCES `goods` (`good_code`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_good`
--

LOCK TABLES `purchase_good` WRITE;
/*!40000 ALTER TABLE `purchase_good` DISABLE KEYS */;
INSERT INTO `purchase_good` VALUES (2,82,'2021-02-03',43,2,23,9),(4,64,'2022-12-15',8,4,54,28),(5,83,'2021-02-23',44,1,24,10),(10,119,'2022-01-12',11,9,35,17),(12,30,'2022-07-14',27,8,27,9),(14,43,'2022-05-19',45,8,58,9),(15,23,'2022-01-01',28,2,2,2),(18,75,'2021-02-03',1,5,16,15),(19,25,'2022-02-02',17,2,22,4),(24,35,'2022-02-12',39,7,32,14),(28,98,'2021-02-03',29,4,52,26),(29,24,'2021-02-03',9,3,21,3),(31,22,'2022-08-02',20,8,1,1),(32,32,'2022-12-04',30,4,29,11),(34,115,'2021-02-03',22,2,36,18),(36,89,'2022-12-15',46,1,30,16),(38,31,'2021-02-03',23,7,28,10),(39,86,'2021-02-23',7,7,27,13),(40,85,'2022-12-15',40,6,26,12),(41,38,'2021-02-23',16,3,48,22),(42,100,'2022-01-12',21,9,45,19),(44,76,'2022-07-14',42,9,17,16),(46,29,'2022-05-19',32,7,26,8),(47,44,'2022-01-01',25,3,47,21),(48,77,'2022-02-10',34,7,18,17);
/*!40000 ALTER TABLE `purchase_good` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `reminder`
--

DROP TABLE IF EXISTS `reminder`;
/*!50001 DROP VIEW IF EXISTS `reminder`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `reminder` AS SELECT 
 1 AS `agent_name`,
 1 AS `man_name`,
 1 AS `start_date`,
 1 AS `end_date`,
 1 AS `duration_in_months`,
 1 AS `commition_in_per`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `supply_from`
--

DROP TABLE IF EXISTS `supply_from`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supply_from` (
  `good_code` int NOT NULL,
  `man_id` int NOT NULL,
  KEY `good_code_idx` (`good_code`),
  KEY `man_id_idx` (`man_id`),
  CONSTRAINT `good_code` FOREIGN KEY (`good_code`) REFERENCES `goods` (`good_code`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `man_id1` FOREIGN KEY (`man_id`) REFERENCES `manufacturer` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supply_from`
--

LOCK TABLES `supply_from` WRITE;
/*!40000 ALTER TABLE `supply_from` DISABLE KEYS */;
INSERT INTO `supply_from` VALUES (82,2),(64,4),(83,5),(119,10),(30,12),(43,14),(23,15),(75,18),(25,19),(35,24),(98,28),(24,29),(22,31),(32,32),(115,34),(89,36),(31,38),(86,39),(85,40),(38,41),(100,42),(76,44),(29,46),(44,47),(77,48);
/*!40000 ALTER TABLE `supply_from` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `notice`
--

/*!50001 DROP VIEW IF EXISTS `notice`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `notice` AS select `agents`.`certification_no` AS `certification_no`,`agents`.`agent_name` AS `agent_name`,`agents`.`office_location` AS `office_location` from `agents` where `agents`.`certification_no` in (select distinct `contract`.`certification_no` from `contract` where (`contract`.`commition_in_per` > 25)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `reminder`
--

/*!50001 DROP VIEW IF EXISTS `reminder`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `reminder` AS select `a`.`agent_name` AS `agent_name`,`m`.`man_name` AS `man_name`,`c`.`start_date` AS `start_date`,`c`.`end_date` AS `end_date`,ceiling(((to_days(`c`.`end_date`) - to_days(curdate())) / 30)) AS `duration_in_months`,`c`.`commition_in_per` AS `commition_in_per` from ((`contract` `c` join `agents` `a` on((`a`.`certification_no` = `c`.`certification_no`))) join `manufacturer` `m` on((`m`.`Id` = `c`.`man_id`))) where ((to_days(`c`.`end_date`) - to_days(curdate())) < 460) */;
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

-- Dump completed on 2021-12-12 17:12:37
