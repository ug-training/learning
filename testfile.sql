-- MySQL dump 10.13  Distrib 5.5.49, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: firstsqln
-- ------------------------------------------------------
-- Server version	5.5.49-0ubuntu0.12.04.1

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
-- Table structure for table `empondet`
--

DROP TABLE IF EXISTS `empondet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empondet` (
  `empid` int(6) NOT NULL DEFAULT '0',
  `empnum` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`empid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empondet`
--

LOCK TABLES `empondet` WRITE;
/*!40000 ALTER TABLE `empondet` DISABLE KEYS */;
INSERT INTO `empondet` VALUES (126738,8311928819),(126739,7715568818),(126740,7745668833),(126742,7744568833),(126743,7744534673),(126744,7744534673);
/*!40000 ALTER TABLE `empondet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `firsttab`
--

DROP TABLE IF EXISTS `firsttab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `firsttab` (
  `empno` int(6) NOT NULL DEFAULT '0',
  `empname` char(20) DEFAULT NULL,
  `empsal` varchar(6) DEFAULT '15000',
  `empdept` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`empno`),
  UNIQUE KEY `empdetl` (`empno`,`empname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `firsttab`
--

LOCK TABLES `firsttab` WRITE;
/*!40000 ALTER TABLE `firsttab` DISABLE KEYS */;
INSERT INTO `firsttab` VALUES (126738,'nagajothi','11000','IT'),(126739,'vanadhi','10000','ece'),(126740,'karthika','10000','eee'),(126742,'arthi','12000','ece'),(126743,'durga','12200','ece'),(126744,'hemanth','15000','mech'),(126745,'priya','10000','btech');
/*!40000 ALTER TABLE `firsttab` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-07-19 11:49:28
