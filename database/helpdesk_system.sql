-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: helpdesk
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `hd_departments`
--

DROP TABLE IF EXISTS `hd_departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `hd_departments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `user` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hd_departments`
--

LOCK TABLES `hd_departments` WRITE;
/*!40000 ALTER TABLE `hd_departments` DISABLE KEYS */;
/*!40000 ALTER TABLE `hd_departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hd_ticket_replies`
--

DROP TABLE IF EXISTS `hd_ticket_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `hd_ticket_replies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL,
  `text` text NOT NULL,
  `ticket_id` text NOT NULL,
  `date` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hd_ticket_replies`
--

LOCK TABLES `hd_ticket_replies` WRITE;
/*!40000 ALTER TABLE `hd_ticket_replies` DISABLE KEYS */;
INSERT INTO `hd_ticket_replies` VALUES (1,1,'This is fixed','1','1634829030'),(2,1,'Please check it.','1','1634829129'),(3,1,'The issue is fixed, you can check at your end. Thanks','2','1634829404'),(4,2,'fixed','2','1635515403'),(5,2,'this is fixed!','4','1635517083'),(6,1,'I am looking into this','5','1635519340'),(7,2,'ewtewt','6','1635519418');
/*!40000 ALTER TABLE `hd_ticket_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hd_tickets`
--

DROP TABLE IF EXISTS `hd_tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `hd_tickets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniqid` varchar(20) NOT NULL,
  `user` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `init_msg` text NOT NULL,
  `department` int(11) NOT NULL,
  `date` varchar(250) NOT NULL,
  `last_reply` int(11) NOT NULL,
  `user_read` int(11) NOT NULL,
  `admin_read` int(11) NOT NULL,
  `resolved` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hd_tickets`
--

LOCK TABLES `hd_tickets` WRITE;
/*!40000 ALTER TABLE `hd_tickets` DISABLE KEYS */;
INSERT INTO `hd_tickets` VALUES (1,'617181b83c1e7',1,'System is not working','System is not working',1,'1634828728',1,0,1,1),(2,'61718394c0ad5',2,'There are some issue!!!!','There are some issue!!',1,'1634829204',2,1,0,1),(3,'617bfaa5ce86d',1,'zfsafsaf','zfsafsaf',2,'1635515045',1,0,0,0),(4,'617bfc35a93af',2,'There some glitches','There some glitches',3,'1635515445',2,1,0,0),(5,'617c0a73661fd',1,'there are secirty glitches!!!','there are secirty glitches',1,'1635519091',1,0,1,0),(6,'617c0ba6d462b',2,'there some issues','there some issues',1,'1635519398',2,1,1,0);
/*!40000 ALTER TABLE `hd_tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hd_users`
--

DROP TABLE IF EXISTS `hd_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `hd_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(250) NOT NULL,
  `user_type` enum('admin','user') NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hd_users`
--

LOCK TABLES `hd_users` WRITE;
/*!40000 ALTER TABLE `hd_users` DISABLE KEYS */;
INSERT INTO `hd_users` VALUES (1,'admin@webdamn.com','202cb962ac59075b964b07152d234b70','2021-10-25 23:24:33','Kane Wiliam ','admin',1),(2,'smith@webdamn.com','202cb962ac59075b964b07152d234b70','2021-10-25 23:24:46','Jhon Smith','user',1),(5,'malisha.dissanayake@ebeyonds.com','7038896930411d90c3c08e9e3fcb34a2','2023-11-14 18:50:28','Malisha Dissnayake','admin',1);
/*!40000 ALTER TABLE `hd_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-14 22:58:51
