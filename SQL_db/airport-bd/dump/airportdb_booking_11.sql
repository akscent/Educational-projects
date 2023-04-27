-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: airportdb
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking` (
  `booking_id` int NOT NULL AUTO_INCREMENT,
  `flight_id` int NOT NULL,
  `seat` char(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passenger_id` int NOT NULL,
  `price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`booking_id`),
  UNIQUE KEY `seatplan_unq` (`flight_id`,`seat`),
  KEY `flight_idx` (`flight_id`),
  KEY `passenger_idx` (`passenger_id`),
  CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`flight_id`) REFERENCES `flight` (`flight_id`),
  CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`passenger_id`) REFERENCES `passengers` (`passenger_id`)
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` VALUES (1,4,'108B',1,137.18),(2,231,'107E',2,249.52),(3,323,'106F',3,86.27),(4,525,'106D',4,425.98),(5,737,'106C',5,54.53),(6,1001,'105A',6,207.27),(7,1035,'105E',7,414.61),(8,1276,'105C',8,313.57),(9,1280,'104B',9,101.09),(10,1288,'104H',10,179.45),(11,1309,'103G',11,61.86),(12,1385,'103C',12,386.01),(13,1777,'103B',13,230.54),(14,2016,'102F',14,103.54),(15,2024,'102D',15,146.93),(16,2348,'102C',16,35.27),(17,2613,'102B',17,101.65),(18,3204,'101H',18,457.93),(19,3295,'100B',19,305.24),(20,3355,'100E',20,193.72),(21,3886,'99D',21,204.56),(22,3889,'99C',22,82.01),(23,4551,'99B',23,485.38),(24,4616,'99A',24,63.91),(25,4815,'98H',25,246.76),(26,4819,'98E',26,204.02),(27,8198,'97B',27,455.08),(28,8728,'97F',28,148.59),(29,8899,'97D',29,138.23),(30,9106,'97C',30,494.33),(31,9358,'96B',31,455.33),(32,9502,'96H',32,422.24),(33,9996,'96G',33,433.71),(34,10581,'96F',34,243.98),(35,10839,'95E',35,254.39),(36,11512,'95B',36,22.16),(37,12175,'95A',37,195.19),(38,12177,'94F',38,58.95),(39,12206,'93A',39,422.24),(40,12293,'93E',40,417.21),(41,12300,'93D',41,424.68),(42,12458,'92C',42,384.58),(43,12858,'92A',43,104.65),(44,13164,'92H',44,367.32),(45,16393,'91F',45,58.03),(46,16611,'91B',46,215.51),(47,16718,'91H',47,109.63),(48,16902,'91G',48,400.16),(49,17071,'90F',49,55.32),(50,17096,'90D',50,180.95),(51,17119,'90C',51,430.21),(52,17255,'90B',52,61.08),(53,17372,'89H',53,160.63),(54,17647,'89G',54,148.86),(55,18127,'89F',55,30.52),(56,18964,'88B',56,349.08),(57,18986,'88A',57,50.47),(58,19734,'87H',58,126.75),(59,20260,'87C',59,292.95),(60,20263,'87B',60,462.07),(61,20370,'86H',61,322.82),(62,20377,'85A',62,449.78),(63,20789,'85E',63,125.49),(64,20914,'85D',64,342.95),(65,20932,'84C',65,140.73),(66,20933,'84H',66,49.94),(67,21000,'83G',67,187.86),(68,21222,'82G',68,194.68),(69,24773,'82C',69,52.40),(70,24779,'81B',70,296.76),(71,25060,'81G',71,218.32),(72,25232,'80B',72,498.38),(73,25265,'80A',73,67.28),(74,25444,'80F',74,462.22),(75,26115,'80E',75,109.02),(76,26302,'79D',76,189.68),(77,26338,'79C',77,218.55),(78,27857,'79A',78,371.81),(79,27910,'78F',79,402.87),(80,28892,'78E',80,139.07),(81,29077,'78D',81,195.62),(82,29154,'78C',82,482.78),(83,29358,'77H',83,172.32),(84,29361,'77C',84,342.98),(85,32771,'76B',85,233.52),(86,32988,'76A',86,368.99),(87,32993,'74C',87,263.86),(88,33054,'74B',88,483.15),(89,33239,'73H',89,85.98),(90,33283,'73F',90,95.35),(91,33523,'73D',91,480.67),(92,33773,'72B',92,430.81),(93,34059,'72G',93,468.14),(94,34087,'72F',94,267.22),(95,35150,'71E',95,109.73),(96,35403,'70A',96,402.09),(97,36513,'70E',97,50.82),(98,36728,'69A',98,287.21),(99,36763,'69G',99,92.15),(100,37191,'69F',100,145.70),(101,37261,'68D',101,305.03),(102,37403,'68A',102,69.25),(103,37405,'68H',103,252.35),(104,37462,'68G',104,266.18),(105,37673,'68F',105,428.99),(106,37676,'68E',106,80.50),(107,40962,'67D',107,35.52),(108,41468,'67A',108,102.00),(109,41664,'66G',109,81.24),(110,41791,'66C',110,460.61),(111,42056,'66B',111,104.25),(112,42204,'65H',112,470.53),(113,42209,'64B',113,490.45),(114,42221,'64A',114,480.16),(115,42666,'64H',115,118.66),(116,42964,'64G',116,476.49),(117,43281,'64F',117,363.15),(118,43536,'64E',118,134.76),(119,43558,'63D',119,46.70),(120,44643,'62A',120,43.52),(121,44841,'62D',121,280.01),(122,44955,'61H',122,82.38),(123,44961,'61D',123,97.95),(124,45300,'61C',124,60.03),(125,45380,'60B',125,495.46),(126,45507,'60H',126,318.54),(127,45517,'60F',127,154.96),(128,45520,'60E',128,244.48),(129,45583,'59D',129,111.25),(130,45804,'59B',130,120.26),(131,49151,'59G',131,76.04),(132,49473,'58F',132,284.11),(133,49820,'58E',133,230.29),(134,49875,'58C',134,163.19),(135,51141,'57B',135,477.25),(136,51171,'57G',136,290.72),(137,51765,'57F',137,319.49);
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-12 14:04:55
