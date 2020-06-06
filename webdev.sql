-- MySQL dump 10.13  Distrib 5.7.29, for Linux (x86_64)
--
-- Host: localhost    Database: webdev
-- ------------------------------------------------------
-- Server version	5.7.29-0ubuntu0.18.04.1

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
-- Table structure for table `cust_trips`
--

DROP TABLE IF EXISTS `cust_trips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cust_trips` (
  `DriverId` int(100) NOT NULL,
  `CustId` int(100) NOT NULL,
  `tripId` int(100) NOT NULL AUTO_INCREMENT,
  `start_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `stop_time` timestamp NULL DEFAULT NULL,
  `start_loclat` double NOT NULL,
  `start_loclong` double NOT NULL,
  `stop_loclat` double DEFAULT NULL,
  `stop_loclong` double DEFAULT NULL,
  PRIMARY KEY (`tripId`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cust_trips`
--

LOCK TABLES `cust_trips` WRITE;
/*!40000 ALTER TABLE `cust_trips` DISABLE KEYS */;
INSERT INTO `cust_trips` VALUES (127,136,9,'2020-04-17 14:20:06','2020-04-17 16:21:33',12.8870638,12.54,12.8914809,77.5417882),(127,136,12,'2020-04-17 16:01:51',NULL,12.8870638,12.54,12.8914809,77.5417882),(127,138,13,'2020-04-17 16:24:27','2020-04-17 16:28:11',12.8870638,12.54,12.8914809,77.5417882),(127,138,14,'2020-04-17 16:26:53',NULL,12.9254533,12.54,12.8914809,77.5417882),(127,142,15,'2020-04-17 17:06:15',NULL,12.9254533,12.54,12.8914809,77.5417882),(127,142,16,'2020-04-17 17:09:02',NULL,12.8914809,12.54,12.9254533,77.546757),(127,143,17,'2020-04-17 17:18:37',NULL,12.8914809,12.54,12.8914809,77.5417882),(127,142,18,'2020-04-17 17:21:08',NULL,12.9363552,12.54,12.9307735,77.5838302),(144,142,19,'2020-04-17 17:22:13',NULL,12.9363552,12.54,12.9307735,77.5838302),(144,142,20,'2020-04-17 17:23:23',NULL,12.8870638,12.54,12.8914809,77.5417882),(144,142,21,'2020-04-17 17:28:11',NULL,12.8870638,12.54,12.9307735,77.5838302);
/*!40000 ALTER TABLE `cust_trips` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `driver_trips`
--

DROP TABLE IF EXISTS `driver_trips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `driver_trips` (
  `DriverId` int(100) NOT NULL,
  `start_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `stop_time` datetime DEFAULT NULL,
  `start_loclat` double NOT NULL,
  `DriverTripId` int(100) NOT NULL AUTO_INCREMENT,
  `start_loclong` double NOT NULL,
  `stop_loclat` double DEFAULT NULL,
  `stop_loclong` double DEFAULT NULL,
  PRIMARY KEY (`DriverTripId`)
) ENGINE=InnoDB AUTO_INCREMENT=1244 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driver_trips`
--

LOCK TABLES `driver_trips` WRITE;
/*!40000 ALTER TABLE `driver_trips` DISABLE KEYS */;
INSERT INTO `driver_trips` VALUES (123,'2020-04-15 08:00:17','2020-04-16 07:58:56',0,1234,0,NULL,NULL),(124,'2020-04-17 14:13:49',NULL,12.4,1235,22.4,23.24,24.34),(125,'2020-04-17 14:15:41',NULL,12.8870638,1236,77.5433122,12.8914809,77.5417882),(126,'2020-04-17 15:59:02',NULL,12.8870638,1237,77.5433122,12.8914809,77.5417882),(125,'2020-04-17 22:27:13',NULL,12.8870638,1238,77.5433122,12.8914809,77.5417882),(125,'2020-04-17 22:27:25',NULL,12.9254533,1239,77.546757,12.8914809,77.5417882),(125,'2020-04-17 22:31:19',NULL,12.8870638,1240,77.5433122,12.8914809,77.5417882),(141,'2020-04-17 22:34:47',NULL,12.8870638,1241,77.5433122,12.8914809,77.5417882),(141,'2020-04-17 22:37:11',NULL,12.8914809,1242,77.5417882,12.9254533,77.546757),(144,'2020-04-17 22:50:19',NULL,12.9363552,1243,77.5835113,12.9307735,77.5838302);
/*!40000 ALTER TABLE `driver_trips` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_table`
--

DROP TABLE IF EXISTS `login_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login_table` (
  `name` varchar(100) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_table`
--

LOCK TABLES `login_table` WRITE;
/*!40000 ALTER TABLE `login_table` DISABLE KEYS */;
INSERT INTO `login_table` VALUES ('','','customer'),('cust1','cust1','customer'),('driver1','driver1','driver'),('driver2','driver2driver2','driver'),('driver5','driver5driver5','driver'),('guess it','qwertyukl','driver'),('guess it2','2134e5rt6yujkl.','customer'),('Guest1','password','customer'),('guest3','guest3guest3','customer'),('guest4','guest4guest4','customer');
/*!40000 ALTER TABLE `login_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trial_cust`
--

DROP TABLE IF EXISTS `trial_cust`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trial_cust` (
  `CustId` varchar(100) NOT NULL,
  `deiverid` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`CustId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trial_cust`
--

LOCK TABLES `trial_cust` WRITE;
/*!40000 ALTER TABLE `trial_cust` DISABLE KEYS */;
/*!40000 ALTER TABLE `trial_cust` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_table`
--

DROP TABLE IF EXISTS `user_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_table` (
  `name` varchar(100) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `license_number` varchar(100) DEFAULT NULL,
  `car_no` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `license` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `type` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_table`
--

LOCK TABLES `user_table` WRITE;
/*!40000 ALTER TABLE `user_table` DISABLE KEYS */;
INSERT INTO `user_table` VALUES ('xyz','',123,'123456789','12345','1234567','WIN_20200309_19_47_07_Pro.jpg','','',''),('bgvcdx','cfgvhbjnkl;',124,'WIN_20200309_19_47_07_Pro.jpg','vfcdsxaswd','dsdfg','gcdxsgvcd','dderfgtfd@fghjk.com','9363772733',''),('mbcjacda','qioudfbsf',125,'sxabijqo231','afwebwkfw23333','xfbzdnfg','dbvwREGEA','jdkfw@hjhda.com','9246821451',''),('fdsslsd','adckag',126,'fadkj34289','xliddoee89238','damlddd','jzkdkdsjk','kdAlsd@hjhda.com','9935171451',''),('$username','$password',127,'\".$fileName.\"','$vnum','$address','$lnum','$email','$mobile','val1'),('guess it','n fbmgkdv,l;s.',128,'Screenshot from 2020-02-25 18-32-57.png','paadaqqqq','adf','aedrfvgtr','jainil_parikh@hotmail.com','6234567890','type1'),('guess it','qesgfdgfk',129,'Screenshot from 2020-01-04 21-59-14.png','paadaqqqq','adf','aedrfvgtr','jainil_parikh@hotmail.com','6234567890','type1'),('guess it','qwserftgyhujkl',130,'Screenshot from 2020-01-21 22-27-36.png','paadaqqqq','adf','aedrfvgtr','jainil_parikh@hotmail.com','6234567890','type1'),('guess it','qwserftgyhujkl',131,'Screenshot from 2020-01-21 22-27-36.png','paadaqqqq','adf','aedrfvgtr','jainil_parikh@hotmail.com','6234567890','type1'),('guess it','qasdfghjkl;',132,'Screenshot from 2020-01-21 22-27-36.png','paadaqqqq','adf','aedrfvgtr','jainil_parikh@hotmail.com','6234567890','type1'),('guess it','qwertyukl',133,'Screenshot from 2020-01-21 22-27-36.png','paadaqqqq','adf','aedrfvgtr','jainil_parikh@hotmail.com','6234567890','type1'),('guess it','sdfghjkl;',134,'Screenshot from 2020-01-21 22-27-36.png','paadaqqqq','adf','aedrfvgtr','jainil_parikh@hotmail.com','6234567890','type1'),('guess it','qwertyuiol;',135,'','','','','jainil_parikh@hotmail.com','6234567890','customer'),('guess it2','2134e5rt6yujkl.',136,'','','','','jainil_parikh@hotmail.com','6234567890','customer'),('','',137,'','','','','','','customer'),('Guest1','password',138,'','','','','jainil_parikh@hotmail.com','6234567890','customer'),('driver1','driver1driver1',139,'Screenshot from 2019-01-06 17-33-21.png','paadaqqqq','adf','aedrfvgtr','jainil_parikh@hotmail.com','6234567890','driver'),('driver1','driver1driver1',140,'Screenshot from 2019-01-06 17-33-21.png','paadaqqqq','adf','aedrfvgtr','jainil_parikh@hotmail.com','6234567890','driver'),('driver2','driver2driver2',141,'Screenshot from 2019-01-06 17-33-21.png','paadaqqqq','adf','aedrfvgtr','jainil_parikh@hotmail.com','6234567890','driver'),('guest3','guest3guest3',142,'','','','','jainil_parikh@hotmail.com','6234567890','customer'),('guest4','guest4guest4',143,'','','','','jainil_parikh@hotmail.com','6234567890','customer'),('driver5','driver5driver5',144,'Screenshot from 2019-03-02 21-30-00.png','paadaqqqq','adf','aedrfvgtr','jainil_parikh@hotmail.com','6234567890','driver');
/*!40000 ALTER TABLE `user_table` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-17 23:09:22
