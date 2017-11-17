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
  `contactEmail` varchar(128) DEFAULT NULL,
  `calendarLink` varchar(1024) DEFAULT NULL,
  `rsoImage` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rsoInfo`
--

LOCK TABLES `rsoInfo` WRITE;
/*!40000 ALTER TABLE `rsoInfo` DISABLE KEYS */;
INSERT INTO `rsoInfo` VALUES ('ACM','Social','Medium','Evening',20,'High','New',0,0,'ACM at UIUC is a student chapter of the Association for Computing Machinery, a professional society dedicated to advancing human capabilities through information technology','IYC7tslSspQ','acm@gmail.com','google_calender_link','https://acm.illinois.edu/images/rp-2017-logo-min.png'),('Adventure Club','Sports','Low','Thursday Evening',15,'Low','New',1,1,'A competitive team oriented group that competes in weekly activities.','uT_WLW-zl14','adventure@gmail.com','google_calendar_link','https://i.kinja-img.com/gawker-media/image/upload/t_original/951820009082492817.jpg'),('Chemistry Club','Academics','Medium','Morning',10,'Low','New',1,0,'We just do chemistry','0Bt6RPP2ANI','chem@gmail.com','google_calender_link','https://www.creighton.edu/fileadmin/user/CCAS/departments/Chemistry/images/students/chemclub0515.jpg'),('Chess Club','Games','Low','Afternoon',10,'Low','New',0,0,'We play chess all the time','bfcaSNM72H4','chess@gmail.com','google_calender_link',' https://news.illinois.edu/blog/files/6367/237328/72519.jpg'),('Engineer\'s Without Borders','Academics','Low','Wednesday Evening',0,'Medium','Old',0,0,'We\'re engineers who don\'t believe in borders. We\'d be horrible hires to work on Donald Trump\'s wall...','r98yqbkcn6U','ewbUIUC@gmail.com','google_calendar_link','http://borgenproject.org/wp-content/uploads/Engineers_without_Borders.jpg'),('FIFA Watching','Sports','Low','Morning',20,'Low','New',0,0,'We are a soccer loving group and usually watch Premier League matches on the weekends.','tyW6tMQwSb8 ','fifa@gmail.com','google_calender_link','http://cdn.techpp.com/wp-content/uploads/2014/06/soccer-world-cup.jpg'),('Illi Tennis','Sports','Medium','Evening',50,'High','Old',0,1,'We play tennis all the time','UrhbtzqIjqY','tennis@gmail.com','google_calender_link','https://i.ytimg.com/vi/Wb7nfT2jMsc/maxresdefault.jpg'),('Illini Boxing','Sports','High','Morning',30,'High','Old',1,1,'We box all the time','XSpXsMYcveA','boxing@gillinois.edu','google_calender_link','https://pbs.twimg.com/media/Cfz1YRIXEAA4eqH.jpg'),('Illini Cycling','Sports','Medium','Afternoon',40,'High','Old',1,0,'We bike all the time','dWeBXj0luu0','xyz@gmail.com','google_calender_link',' http://www.lsu.edu/highlights/2010/07/images/CyclingClub2.jpg'),('Math Club','Academics','Medium','Morning',10,'Low','New',0,0,'We use read new research papers and try to replicate their findings.','-wkr_vf18cw','math@gmail.com','google_calender_link',' https://cosmos-production-assets.s3.amazonaws.com/file/spina/photo/10197/170501_CC_Bayes_theorum_P.jpg'),('Physics Club','Academics','Medium','Evening',20,'High','New',0,0,'We physics all the time','osjdfQllQD0','xyz@gmail.com','google_calender_link',' http://amse.vcs.net/uploaded/amse/page_photos/clubs_programs/physics_club/physics_club_01.jpg'),('The Social Club','Social','High','Evening',40,'High','Old',0,0,'We do it all - board games, bars, movie nights. Come and bring your friends and be social.','Z9eMk051dYg','social@gillinois.edu','google_calender_link','https://i2.wp.com/earzup-podcast.com/wp-content/uploads/2013/12/MSE.jpg'),('Video Game','Games','Low','Evening',0,'High','New',0,0,'We play games all the time','9iXqZJTw_dc','xyz@gmail.com','google_calender_link',' https://www.curry.edu/Images/interior/campusLife/Clubs%20and%20Orgs/LI_VideoGameClub.jpg'),('Zeta Psi Fraternity','Social','High','Monday Evening',500,'High','Old',1,1,'We are a social fraterntiy founded in 1847 in New York. Our school\'s chapter was founded in 1909. We like to focus on having a small tightknit brotherhood where you can be close with all the brothers.','qQhuchr1KRs','zetapsiAE@gmail.com','google_calendar_link','https://upload.wikimedia.org/wikipedia/commons/thumb/f/f7/Zeta_Psi_Fraternity_House%2C_Lafayette_College_01.JPG/1200px-Zeta_Psi_Fraternity_House%2C_Lafayette_College_01.JPG');
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

-- Dump completed on 2017-11-17 11:47:19
