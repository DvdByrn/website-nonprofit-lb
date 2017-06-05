-- S8-Zipper MySQL Dump
-- http://sideways8.com

--
-- Host: 10.136.21.218	Database: limmudboston
-- ------------------------------------------------------
-- Server version 	5.5.5-10.0.25-MariaDB-0ubuntu0.16.04.1
-- Date: Sun, 04 Jun 2017 00:05:36 +0000

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
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `wp_users` VALUES (1,'turnkeywp','$P$BY6pmS29/nUjru98s/UbMsQHmfVYNq0','turnkeywp','wpsite@turnkeywp.com','','2017-05-02 16:19:28','',0,'turnkeywp'),(2,'support','$P$B9K1CP6SIVn7nUZ9sqIdyAamRYfsMu0','support','support@48in48.org','','2017-05-02 16:19:32','',0,'GoWP'),(3,'limmudboston','$P$BstAyhkjpxZiYANWwssdoGPiPyOTdP1','limmudboston','steffi@LimmudBoston.org','','2017-05-03 15:03:15','',0,'Steffi Aronson Karp'),(4,'dbyrne','$P$BHMDYlDCFG1VEeqevbOr4pmOj0DHIU.','dbyrne','dbyrne@davidbyrne.site','http://limmudboston.48in48sites.org','2017-05-22 18:34:13','',0,'David Byrne'),(5,'nlau','$P$BwjxyA.fGUrOXlCcWpqMmlTSmB9.Ap0','nlau','nellau77@gmail.com','','2017-06-01 16:04:48','',0,'Nelson Lau'),(6,'rhegde','$P$B9bn83Mal.JJju6lissFkFepNVTzaP/','rhegde','radhika.hegde13@gmail.com','','2017-06-01 16:05:32','',0,'Radhika Hegde'),(7,'test1','$P$Bps.vv65A04A21kRr5eltjYd4q3c7V.','test1','dbyrne@pyramidtechnology.com','','2017-06-01 16:06:34','',0,'Test1 User');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on: Sun, 04 Jun 2017 00:05:36 +0000
