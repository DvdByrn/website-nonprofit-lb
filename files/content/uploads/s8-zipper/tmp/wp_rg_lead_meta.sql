-- S8-Zipper MySQL Dump
-- http://sideways8.com

--
-- Host: 10.136.21.218	Database: limmudboston
-- ------------------------------------------------------
-- Server version 	5.5.5-10.0.25-MariaDB-0ubuntu0.16.04.1
-- Date: Sun, 04 Jun 2017 00:05:20 +0000

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
-- Table structure for table `wp_rg_lead_meta`
--

DROP TABLE IF EXISTS `wp_rg_lead_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_rg_lead_meta` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `lead_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `meta_key` (`meta_key`(191)),
  KEY `lead_id` (`lead_id`),
  KEY `form_id_meta_key` (`form_id`,`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_rg_lead_meta`
--

LOCK TABLES `wp_rg_lead_meta` WRITE;
/*!40000 ALTER TABLE `wp_rg_lead_meta` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `wp_rg_lead_meta` VALUES (2,1,1,'partial_entry_percent',''),(3,1,1,'required_fields_percent_complete',''),(7,1,1,'gravityformspartialentries_is_fulfilled','1'),(8,1,1,'processed_feeds','a:1:{s:26:\"gravityformspartialentries\";a:1:{i:0;s:1:\"1\";}}'),(9,2,2,'partial_entry_id','7a69df24d6a9476980d9328b1263a4fd'),(10,2,2,'partial_entry_percent','8'),(11,2,2,'required_fields_percent_complete','10'),(12,2,2,'resume_token',''),(13,2,2,'resume_url','?gf_token'),(14,2,3,'partial_entry_id','280e86569e974914a9473f112124ec44'),(15,2,3,'partial_entry_percent','8'),(16,2,3,'required_fields_percent_complete','10'),(17,2,3,'resume_token',''),(18,2,3,'resume_url','?gf_token'),(19,2,4,'partial_entry_id','b6840dfdfc7242788b2afe7f483760fc'),(20,2,4,'partial_entry_percent','8'),(21,2,4,'required_fields_percent_complete','10'),(22,2,4,'resume_token',''),(23,2,4,'resume_url','?gf_token'),(24,2,5,'partial_entry_id','622346a54fb5478da1f03c8be923f494'),(25,2,5,'partial_entry_percent','8'),(26,2,5,'required_fields_percent_complete','10'),(27,2,5,'resume_token',''),(28,2,5,'resume_url','?gf_token'),(29,2,6,'partial_entry_id','64b29361c65c4522a5ac717551eb5f42'),(30,2,6,'partial_entry_percent','8'),(31,2,6,'required_fields_percent_complete','10'),(32,2,6,'resume_token',''),(33,2,6,'resume_url','?gf_token'),(34,2,7,'partial_entry_id','cca9cb9ee52a4782b61ca832d1c648b6'),(35,2,7,'partial_entry_percent','8'),(36,2,7,'required_fields_percent_complete','10'),(37,2,7,'resume_token',''),(38,2,7,'resume_url','?gf_token'),(39,2,8,'partial_entry_id','28422f4c6b9244bf92bfd0aed4a76a1c'),(40,2,8,'partial_entry_percent','8'),(41,2,8,'required_fields_percent_complete','10'),(42,2,8,'resume_token',''),(43,2,8,'resume_url','?gf_token');
/*!40000 ALTER TABLE `wp_rg_lead_meta` ENABLE KEYS */;
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

-- Dump completed on: Sun, 04 Jun 2017 00:05:20 +0000
