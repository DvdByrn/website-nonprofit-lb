-- S8-Zipper MySQL Dump
-- http://sideways8.com

--
-- Host: 10.136.21.218	Database: limmudboston
-- ------------------------------------------------------
-- Server version 	5.5.5-10.0.25-MariaDB-0ubuntu0.16.04.1
-- Date: Sun, 04 Jun 2017 00:05:17 +0000

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
-- Table structure for table `wp_rg_lead`
--

DROP TABLE IF EXISTS `wp_rg_lead`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_rg_lead` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` mediumint(8) unsigned NOT NULL,
  `post_id` bigint(20) unsigned DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `is_starred` tinyint(1) NOT NULL DEFAULT '0',
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `ip` varchar(39) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_agent` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `currency` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_date` datetime DEFAULT NULL,
  `payment_amount` decimal(19,2) DEFAULT NULL,
  `payment_method` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_fulfilled` tinyint(1) DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `transaction_type` tinyint(1) DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_rg_lead`
--

LOCK TABLES `wp_rg_lead` WRITE;
/*!40000 ALTER TABLE `wp_rg_lead` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `wp_rg_lead` VALUES (1,1,NULL,'2017-05-15 20:41:03',0,1,'73.100.18.13','http://limmudboston.48in48sites.org/wp/wp-admin/admin-ajax.php','Mozilla/5.0 (Windows NT 10.0; WOW64; rv:53.0) Gecko/20100101 Firefox/53.0','USD',NULL,NULL,NULL,'',NULL,NULL,3,NULL,'active'),(2,2,NULL,'2017-06-01 15:52:30',0,1,'146.115.44.212','http://limmudboston.48in48sites.org/wp/wp-admin/admin-ajax.php','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:46.0) Gecko/20100101 Firefox/46.0','USD',NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,'active'),(3,2,NULL,'2017-06-01 15:54:32',0,1,'146.115.44.212','http://limmudboston.48in48sites.org/wp/wp-admin/admin-ajax.php','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:46.0) Gecko/20100101 Firefox/46.0','USD',NULL,NULL,NULL,'',NULL,NULL,4,NULL,'active'),(4,2,NULL,'2017-06-01 16:50:12',0,1,'146.115.44.212','http://limmudboston.48in48sites.org/wp/wp-admin/admin-ajax.php','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:46.0) Gecko/20100101 Firefox/46.0','USD',NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,'active'),(5,2,NULL,'2017-06-03 01:36:36',0,0,'69.46.230.2','http://limmudboston.48in48sites.org/wp/wp-admin/admin-ajax.php','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:46.0) Gecko/20100101 Firefox/46.0','USD',NULL,NULL,NULL,'',NULL,NULL,4,NULL,'active'),(6,2,NULL,'2017-06-03 06:34:35',0,0,'69.46.230.2','http://limmudboston.48in48sites.org/wp/wp-admin/admin-ajax.php','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','USD',NULL,NULL,NULL,'',NULL,NULL,6,NULL,'active'),(7,2,NULL,'2017-06-03 02:14:26',0,0,'69.46.230.2','http://limmudboston.48in48sites.org/wp/wp-admin/admin-ajax.php','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:46.0) Gecko/20100101 Firefox/46.0','USD',NULL,NULL,NULL,'',NULL,NULL,4,NULL,'active'),(8,2,NULL,'2017-06-03 15:53:42',0,0,'69.46.230.2','http://limmudboston.48in48sites.org/wp/wp-admin/admin-ajax.php','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:46.0) Gecko/20100101 Firefox/46.0','USD',NULL,NULL,NULL,'',NULL,NULL,4,NULL,'active');
/*!40000 ALTER TABLE `wp_rg_lead` ENABLE KEYS */;
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

-- Dump completed on: Sun, 04 Jun 2017 00:05:17 +0000
