-- MySQL dump 10.13  Distrib 5.7.20, for osx10.12 (x86_64)
--
-- Host: localhost    Database: RSOsaurusDB
-- ------------------------------------------------------
-- Server version	5.7.20

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
-- Table structure for table `rsoInfo`
--

DROP TABLE IF EXISTS `rsoInfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rsoInfo` (
  `name` varchar(64) NOT NULL,
  `category` varchar(32) DEFAULT NULL,
  `timeCommit` varchar(16) DEFAULT NULL,
  `meetTime` varchar(24) DEFAULT NULL,
  `dues` int(10) unsigned DEFAULT NULL,
  `levelActivity` varchar(16) DEFAULT NULL,
  `longevity` varchar(8) DEFAULT NULL,
  `limitMember` tinyint(1) DEFAULT NULL,
  `recruitment` tinyint(1) DEFAULT NULL,
  `description` varchar(1024) DEFAULT NULL,
  `rsoVideo` varchar(1024) DEFAULT NULL,
  `member1Img` varchar(1024) DEFAULT NULL,
  `member1Info` varchar(1024) DEFAULT NULL,
  `member2Img` varchar(1024) DEFAULT NULL,
  `member3Img` varchar(1024) DEFAULT NULL,
  `member3Info` varchar(1024) DEFAULT NULL,
  `member4Img` varchar(1024) DEFAULT NULL,
  `member4Info` varchar(1024) DEFAULT NULL,
  `member5Img` varchar(1024) DEFAULT NULL,
  `member5Info` varchar(1024) DEFAULT NULL,
  `contactEmail` varchar(128) DEFAULT NULL,
  `calendarLink` varchar(1024) DEFAULT NULL,
  `member2Info` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rsoInfo`
--

LOCK TABLES `rsoInfo` WRITE;
/*!40000 ALTER TABLE `rsoInfo` DISABLE KEYS */;
INSERT INTO `rsoInfo` VALUES ('Adventure Club','Sports','Low','Thursday Evening',15,'Low','New',1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Engineer\'s Without Borders','Academics','Low','Wednesday Evening',0,'Medium','Old',0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Zeta Psi Fraternity','Academics','High','Monday Evening',500,'High','Old',1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `rsoInfo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-14 14:50:30
