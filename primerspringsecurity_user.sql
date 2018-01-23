CREATE DATABASE  IF NOT EXISTS `primerspringsecurity` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `primerspringsecurity`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: primerspringsecurity
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
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(16) NOT NULL,
  `password` varchar(255) NOT NULL,
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `role` enum('Dispatcher','Administrator') NOT NULL DEFAULT 'Dispatcher',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'uspeh','$2a$10$LlUxOT0vIebFlhJ6AuheWOsCXp4rJ0QirOYvrCRdwQEyo0.by60TC','2018-01-16 21:40:42','Administrator'),(6,'milan','$2a$10$CwpLU1bcpOXYN2pKtBr0XeOmSQABa3qGp.atM0ozYVekUViwHryuS',NULL,'Administrator'),(7,'srdjan','$2a$10$bomHH15mWfUAnhjSxHQi1.QEIS.H.6QgC7lzIwH14VOJuIIA4u00u',NULL,'Dispatcher'),(8,'bojan','$2a$10$EEbV5S905KyXiJoJ3K55..o6qhUWQHgeASAe5qWBiwzBXbsd5RMaK',NULL,'Administrator'),(9,'igor','$2a$10$7a/dnls9UAyQBmv2aeDm7.Dk8WMpz7/71hmzxfHxR9.EXifTGGn3C',NULL,'Administrator'),(10,'aleksandar','$2a$10$wlSSKZexqksEo4g0qKecu.mIP9pptZP9yjftlj1kk51S/hvyglSC2',NULL,'Dispatcher');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-17  0:02:26
