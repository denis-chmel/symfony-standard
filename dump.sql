-- MySQL dump 10.13  Distrib 5.5.24, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: advanced_form
-- ------------------------------------------------------
-- Server version	5.5.24-0ubuntu0.12.04.1

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
-- Table structure for table `_obb_country`
--

DROP TABLE IF EXISTS `_obb_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_obb_country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `iso_code_2` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `iso_code_3` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `call_prefix` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_zip_required` tinyint(1) NOT NULL,
  `is_enabled` tinyint(1) NOT NULL,
  `address_format_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=240 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_obb_country`
--

LOCK TABLES `_obb_country` WRITE;
/*!40000 ALTER TABLE `_obb_country` DISABLE KEYS */;
INSERT INTO `_obb_country` VALUES (1,'Afghanistan','AF','AFG',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(2,'Albania','AL','ALB',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(3,'Algeria','DZ','DZA',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(4,'American Samoa','AS','ASM',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(5,'Andorra','AD','AND',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(6,'Angola','AO','AGO',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(7,'Anguilla','AI','AIA',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(8,'Antarctica','AQ','ATA',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(9,'Antigua and Barbuda','AG','ATG',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(10,'Argentina','AR','ARG',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(11,'Armenia','AM','ARM',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(12,'Aruba','AW','ABW',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(13,'Australia','AU','AUS',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(14,'Austria','AT','AUT',NULL,0,1,5,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(15,'Azerbaijan','AZ','AZE',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(16,'Bahamas','BS','BHS',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(17,'Bahrain','BH','BHR',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(18,'Bangladesh','BD','BGD',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(19,'Barbados','BB','BRB',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(20,'Belarus','BY','BLR',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(21,'Belgium','BE','BEL',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(22,'Belize','BZ','BLZ',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(23,'Benin','BJ','BEN',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(24,'Bermuda','BM','BMU',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(25,'Bhutan','BT','BTN',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(26,'Bolivia','BO','BOL',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(27,'Bosnia and Herzegowina','BA','BIH',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(28,'Botswana','BW','BWA',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(29,'Bouvet Island','BV','BVT',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(30,'Brazil','BR','BRA',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(31,'British Indian Ocean Territory','IO','IOT',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(32,'Brunei Darussalam','BN','BRN',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(33,'Bulgaria','BG','BGR',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(34,'Burkina Faso','BF','BFA',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(35,'Burundi','BI','BDI',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(36,'Cambodia','KH','KHM',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(37,'Cameroon','CM','CMR',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(38,'Canada','CA','CAN',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(39,'Cape Verde','CV','CPV',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(40,'Cayman Islands','KY','CYM',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(41,'Central African Republic','CF','CAF',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(42,'Chad','TD','TCD',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(43,'Chile','CL','CHL',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(44,'China','CN','CHN',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(45,'Christmas Island','CX','CXR',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(46,'Cocos (Keeling) Islands','CC','CCK',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(47,'Colombia','CO','COL',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(48,'Comoros','KM','COM',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(49,'Congo','CG','COG',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(50,'Cook Islands','CK','COK',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(51,'Costa Rica','CR','CRI',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(52,'Cote D\'Ivoire','CI','CIV',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(53,'Croatia','HR','HRV',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(54,'Cuba','CU','CUB',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(55,'Cyprus','CY','CYP',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(56,'Czech Republic','CZ','CZE',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(57,'Denmark','DK','DNK',NULL,0,1,5,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(58,'Djibouti','DJ','DJI',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(59,'Dominica','DM','DMA',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(60,'Dominican Republic','DO','DOM',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(61,'East Timor','TP','TMP',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(62,'Ecuador','EC','ECU',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(63,'Egypt','EG','EGY',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(64,'El Salvador','SV','SLV',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(65,'Equatorial Guinea','GQ','GNQ',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(66,'Eritrea','ER','ERI',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(67,'Estonia','EE','EST',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(68,'Ethiopia','ET','ETH',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(69,'Falkland Islands (Malvinas)','FK','FLK',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(70,'Faroe Islands','FO','FRO',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(71,'Fiji','FJ','FJI',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(72,'Finland','FI','FIN',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(73,'France','FR','FRA',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(74,'France, Metropolitan','FX','FXX',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(75,'French Guiana','GF','GUF',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(76,'French Polynesia','PF','PYF',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(77,'French Southern Territories','TF','ATF',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(78,'Gabon','GA','GAB',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(79,'Gambia','GM','GMB',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(80,'Georgia','GE','GEO',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(81,'Germany','DE','DEU',NULL,0,1,5,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(82,'Ghana','GH','GHA',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(83,'Gibraltar','GI','GIB',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(84,'Greece','GR','GRC',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(85,'Greenland','GL','GRL',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(86,'Grenada','GD','GRD',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(87,'Guadeloupe','GP','GLP',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(88,'Guam','GU','GUM',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(89,'Guatemala','GT','GTM',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(90,'Guinea','GN','GIN',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(91,'Guinea-bissau','GW','GNB',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(92,'Guyana','GY','GUY',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(93,'Haiti','HT','HTI',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(94,'Heard and Mc Donald Islands','HM','HMD',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(95,'Honduras','HN','HND',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(96,'Hong Kong','HK','HKG',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(97,'Hungary','HU','HUN',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(98,'Iceland','IS','ISL',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(99,'India','IN','IND',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(100,'Indonesia','ID','IDN',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(101,'Iran (Islamic Republic of)','IR','IRN',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(102,'Iraq','IQ','IRQ',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(103,'Ireland','IE','IRL',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(104,'Israel','IL','ISR',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(105,'Italy','IT','ITA',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(106,'Jamaica','JM','JAM',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(107,'Japan','JP','JPN',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(108,'Jordan','JO','JOR',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(109,'Kazakhstan','KZ','KAZ',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(110,'Kenya','KE','KEN',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(111,'Kiribati','KI','KIR',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(112,'Korea, Democratic People\'s Republic of','KP','PRK',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(113,'Korea, Republic of','KR','KOR',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(114,'Kuwait','KW','KWT',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(115,'Kyrgyzstan','KG','KGZ',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(116,'Lao People\'s Democratic Republic','LA','LAO',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(117,'Latvia','LV','LVA',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(118,'Lebanon','LB','LBN',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(119,'Lesotho','LS','LSO',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(120,'Liberia','LR','LBR',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(121,'Libyan Arab Jamahiriya','LY','LBY',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(122,'Liechtenstein','LI','LIE',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(123,'Lithuania','LT','LTU',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(124,'Luxembourg','LU','LUX',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(125,'Macau','MO','MAC',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(126,'Macedonia, The Former Yugoslav Republic of','MK','MKD',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(127,'Madagascar','MG','MDG',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(128,'Malawi','MW','MWI',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(129,'Malaysia','MY','MYS',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(130,'Maldives','MV','MDV',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(131,'Mali','ML','MLI',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(132,'Malta','MT','MLT',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(133,'Marshall Islands','MH','MHL',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(134,'Martinique','MQ','MTQ',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(135,'Mauritania','MR','MRT',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(136,'Mauritius','MU','MUS',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(137,'Mayotte','YT','MYT',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(138,'Mexico','MX','MEX',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(139,'Micronesia, Federated States of','FM','FSM',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(140,'Moldova, Republic of','MD','MDA',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(141,'Monaco','MC','MCO',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(142,'Mongolia','MN','MNG',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(143,'Montserrat','MS','MSR',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(144,'Morocco','MA','MAR',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(145,'Mozambique','MZ','MOZ',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(146,'Myanmar','MM','MMR',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(147,'Namibia','NA','NAM',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(148,'Nauru','NR','NRU',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(149,'Nepal','NP','NPL',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(150,'Netherlands','NL','NLD',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(151,'Netherlands Antilles','AN','ANT',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(152,'New Caledonia','NC','NCL',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(153,'New Zealand','NZ','NZL',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(154,'Nicaragua','NI','NIC',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(155,'Niger','NE','NER',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(156,'Nigeria','NG','NGA',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(157,'Niue','NU','NIU',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(158,'Norfolk Island','NF','NFK',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(159,'Northern Mariana Islands','MP','MNP',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(160,'Norway','NO','NOR',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(161,'Oman','OM','OMN',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(162,'Pakistan','PK','PAK',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(163,'Palau','PW','PLW',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(164,'Panama','PA','PAN',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(165,'Papua New Guinea','PG','PNG',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(166,'Paraguay','PY','PRY',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(167,'Peru','PE','PER',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(168,'Philippines','PH','PHL',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(169,'Pitcairn','PN','PCN',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(170,'Poland','PL','POL',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(171,'Portugal','PT','PRT',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(172,'Puerto Rico','PR','PRI',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(173,'Qatar','QA','QAT',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(174,'Reunion','RE','REU',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(175,'Romania','RO','ROM',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(176,'Russian Federation','RU','RUS',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(177,'Rwanda','RW','RWA',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(178,'Saint Kitts and Nevis','KN','KNA',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(179,'Saint Lucia','LC','LCA',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(180,'Saint Vincent and the Grenadines','VC','VCT',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(181,'Samoa','WS','WSM',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(182,'San Marino','SM','SMR',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(183,'Sao Tome and Principe','ST','STP',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(184,'Saudi Arabia','SA','SAU',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(185,'Senegal','SN','SEN',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(186,'Seychelles','SC','SYC',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(187,'Sierra Leone','SL','SLE',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(188,'Singapore','SG','SGP',NULL,0,1,4,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(189,'Slovakia (Slovak Republic)','SK','SVK',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(190,'Slovenia','SI','SVN',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(191,'Solomon Islands','SB','SLB',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(192,'Somalia','SO','SOM',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(193,'South Africa','ZA','ZAF',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(194,'South Georgia and the South Sandwich Islands','GS','SGS',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(195,'Spain','ES','ESP',NULL,0,1,3,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(196,'Sri Lanka','LK','LKA',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(197,'St. Helena','SH','SHN',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(198,'St. Pierre and Miquelon','PM','SPM',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(199,'Sudan','SD','SDN',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(200,'Suriname','SR','SUR',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(201,'Svalbard and Jan Mayen Islands','SJ','SJM',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(202,'Swaziland','SZ','SWZ',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(203,'Sweden','SE','SWE',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(204,'Switzerland','CH','CHE',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(205,'Syrian Arab Republic','SY','SYR',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(206,'Taiwan','TW','TWN',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(207,'Tajikistan','TJ','TJK',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(208,'Tanzania, United Republic of','TZ','TZA',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(209,'Thailand','TH','THA',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(210,'Togo','TG','TGO',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(211,'Tokelau','TK','TKL',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(212,'Tonga','TO','TON',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(213,'Trinidad and Tobago','TT','TTO',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(214,'Tunisia','TN','TUN',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(215,'Turkey','TR','TUR',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(216,'Turkmenistan','TM','TKM',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(217,'Turks and Caicos Islands','TC','TCA',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(218,'Tuvalu','TV','TUV',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(219,'Uganda','UG','UGA',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(220,'Ukraine','UA','UKR',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(221,'United Arab Emirates','AE','ARE',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(222,'United Kingdom','GB','GBR',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(223,'United States','US','USA',NULL,0,1,2,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(224,'United States Minor Outlying Islands','UM','UMI',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(225,'Uruguay','UY','URY',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(226,'Uzbekistan','UZ','UZB',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(227,'Vanuatu','VU','VUT',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(228,'Vatican City State (Holy See)','VA','VAT',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(229,'Venezuela','VE','VEN',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(230,'Viet Nam','VN','VNM',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(231,'Virgin Islands (British)','VG','VGB',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(232,'Virgin Islands (U.S.)','VI','VIR',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(233,'Wallis and Futuna Islands','WF','WLF',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(234,'Western Sahara','EH','ESH',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(235,'Yemen','YE','YEM',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(236,'Yugoslavia','YU','YUG',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(237,'Zaire','ZR','ZAR',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(238,'Zambia','ZM','ZMB',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(239,'Zimbabwe','ZW','ZWE',NULL,0,1,1,'2012-07-10 13:21:53','2012-07-10 13:21:53');
/*!40000 ALTER TABLE `_obb_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_obb_country_state`
--

DROP TABLE IF EXISTS `_obb_country_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_obb_country_state` (
  `country_state_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) DEFAULT NULL,
  `title` longtext COLLATE utf8_unicode_ci NOT NULL,
  `code` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  PRIMARY KEY (`country_state_id`),
  KEY `IDX_9EEC81E8F92F3E70` (`country_id`),
  CONSTRAINT `FK_9EEC81E8F92F3E70` FOREIGN KEY (`country_id`) REFERENCES `_obb_country` (`country_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2077 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_obb_country_state`
--

LOCK TABLES `_obb_country_state` WRITE;
/*!40000 ALTER TABLE `_obb_country_state` DISABLE KEYS */;
INSERT INTO `_obb_country_state` VALUES (2012,223,'Alabama','AL','2012-07-10 13:21:53','2012-07-10 13:21:53'),(2013,223,'Alaska','AK','2012-07-10 13:21:53','2012-07-10 13:21:53'),(2014,223,'American Samoa','AS','2012-07-10 13:21:53','2012-07-10 13:21:53'),(2015,223,'Arizona','AZ','2012-07-10 13:21:53','2012-07-10 13:21:53'),(2016,223,'Arkansas','AR','2012-07-10 13:21:53','2012-07-10 13:21:53'),(2017,223,'Armed Forces Africa','AF','2012-07-10 13:21:53','2012-07-10 13:21:53'),(2018,223,'Armed Forces Americas','AA','2012-07-10 13:21:53','2012-07-10 13:21:53'),(2019,223,'Armed Forces Canada','AC','2012-07-10 13:21:53','2012-07-10 13:21:53'),(2020,223,'Armed Forces Europe','AE','2012-07-10 13:21:53','2012-07-10 13:21:53'),(2021,223,'Armed Forces Middle East','AM','2012-07-10 13:21:53','2012-07-10 13:21:53'),(2022,223,'Armed Forces Pacific','AP','2012-07-10 13:21:53','2012-07-10 13:21:53'),(2023,223,'California','CA','2012-07-10 13:21:53','2012-07-10 13:21:53'),(2024,223,'Colorado','CO','2012-07-10 13:21:53','2012-07-10 13:21:53'),(2025,223,'Connecticut','CT','2012-07-10 13:21:53','2012-07-10 13:21:53'),(2026,223,'Delaware','DE','2012-07-10 13:21:53','2012-07-10 13:21:53'),(2027,223,'District of Columbia','DC','2012-07-10 13:21:53','2012-07-10 13:21:53'),(2028,223,'Federated States Of Micronesia','FM','2012-07-10 13:21:53','2012-07-10 13:21:53'),(2029,223,'Florida','FL','2012-07-10 13:21:53','2012-07-10 13:21:53'),(2030,223,'Georgia','GA','2012-07-10 13:21:53','2012-07-10 13:21:53'),(2031,223,'Guam','GU','2012-07-10 13:21:53','2012-07-10 13:21:53'),(2032,223,'Hawaii','HI','2012-07-10 13:21:53','2012-07-10 13:21:53'),(2033,223,'Idaho','ID','2012-07-10 13:21:53','2012-07-10 13:21:53'),(2034,223,'Illinois','IL','2012-07-10 13:21:53','2012-07-10 13:21:53'),(2035,223,'Indiana','IN','2012-07-10 13:21:53','2012-07-10 13:21:53'),(2036,223,'Iowa','IA','2012-07-10 13:21:53','2012-07-10 13:21:53'),(2037,223,'Kansas','KS','2012-07-10 13:21:53','2012-07-10 13:21:53'),(2038,223,'Kentucky','KY','2012-07-10 13:21:53','2012-07-10 13:21:53'),(2039,223,'Louisiana','LA','2012-07-10 13:21:53','2012-07-10 13:21:53'),(2040,223,'Maine','ME','2012-07-10 13:21:53','2012-07-10 13:21:53'),(2041,223,'Marshall Islands','MH','2012-07-10 13:21:53','2012-07-10 13:21:53'),(2042,223,'Maryland','MD','2012-07-10 13:21:53','2012-07-10 13:21:53'),(2043,223,'Massachusetts','MA','2012-07-10 13:21:53','2012-07-10 13:21:53'),(2044,223,'Michigan','MI','2012-07-10 13:21:53','2012-07-10 13:21:53'),(2045,223,'Minnesota','MN','2012-07-10 13:21:53','2012-07-10 13:21:53'),(2046,223,'Mississippi','MS','2012-07-10 13:21:53','2012-07-10 13:21:53'),(2047,223,'Missouri','MO','2012-07-10 13:21:53','2012-07-10 13:21:53'),(2048,223,'Montana','MT','2012-07-10 13:21:53','2012-07-10 13:21:53'),(2049,223,'Nebraska','NE','2012-07-10 13:21:53','2012-07-10 13:21:53'),(2050,223,'Nevada','NV','2012-07-10 13:21:53','2012-07-10 13:21:53'),(2051,223,'New Hampshire','NH','2012-07-10 13:21:53','2012-07-10 13:21:53'),(2052,223,'New Jersey','NJ','2012-07-10 13:21:53','2012-07-10 13:21:53'),(2053,223,'New Mexico','NM','2012-07-10 13:21:53','2012-07-10 13:21:53'),(2054,223,'New York','NY','2012-07-10 13:21:53','2012-07-10 13:21:53'),(2055,223,'North Carolina','NC','2012-07-10 13:21:53','2012-07-10 13:21:53'),(2056,223,'North Dakota','ND','2012-07-10 13:21:53','2012-07-10 13:21:53'),(2057,223,'Northern Mariana Islands','MP','2012-07-10 13:21:53','2012-07-10 13:21:53'),(2058,223,'Ohio','OH','2012-07-10 13:21:53','2012-07-10 13:21:53'),(2059,223,'Oklahoma','OK','2012-07-10 13:21:53','2012-07-10 13:21:53'),(2060,223,'Oregon','OR','2012-07-10 13:21:53','2012-07-10 13:21:53'),(2061,223,'Palau','PW','2012-07-10 13:21:53','2012-07-10 13:21:53'),(2062,223,'Pennsylvania','PA','2012-07-10 13:21:53','2012-07-10 13:21:53'),(2063,223,'Puerto Rico','PR','2012-07-10 13:21:53','2012-07-10 13:21:53'),(2064,223,'Rhode Island','RI','2012-07-10 13:21:53','2012-07-10 13:21:53'),(2065,223,'South Carolina','SC','2012-07-10 13:21:53','2012-07-10 13:21:53'),(2066,223,'South Dakota','SD','2012-07-10 13:21:53','2012-07-10 13:21:53'),(2067,223,'Tennessee','TN','2012-07-10 13:21:53','2012-07-10 13:21:53'),(2068,223,'Texas','TX','2012-07-10 13:21:53','2012-07-10 13:21:53'),(2069,223,'Utah','UT','2012-07-10 13:21:53','2012-07-10 13:21:53'),(2070,223,'Vermont','VT','2012-07-10 13:21:53','2012-07-10 13:21:53'),(2071,223,'Virgin Islands','VI','2012-07-10 13:21:53','2012-07-10 13:21:53'),(2072,223,'Virginia','VA','2012-07-10 13:21:53','2012-07-10 13:21:53'),(2073,223,'Washington','WA','2012-07-10 13:21:53','2012-07-10 13:21:53'),(2074,223,'West Virginia','WV','2012-07-10 13:21:53','2012-07-10 13:21:53'),(2075,223,'Wisconsin','WI','2012-07-10 13:21:53','2012-07-10 13:21:53'),(2076,223,'Wyoming','WY','2012-07-10 13:21:53','2012-07-10 13:21:53');
/*!40000 ALTER TABLE `_obb_country_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_obb_customer_type`
--

DROP TABLE IF EXISTS `_obb_customer_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_obb_customer_type` (
  `customer_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `footer_invoice` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_enabled` tinyint(1) NOT NULL,
  `is_vat` tinyint(1) NOT NULL,
  `is_ean` tinyint(1) NOT NULL,
  `scan_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  PRIMARY KEY (`customer_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_obb_customer_type`
--

LOCK TABLES `_obb_customer_type` WRITE;
/*!40000 ALTER TABLE `_obb_customer_type` DISABLE KEYS */;
INSERT INTO `_obb_customer_type` VALUES (1,'Private','',1,0,0,NULL,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(2,'Company','',1,0,0,NULL,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(4,'Government institutions','',1,0,0,NULL,'2012-07-10 13:21:53','2012-07-10 13:21:53');
/*!40000 ALTER TABLE `_obb_customer_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_obb_tax_class`
--

DROP TABLE IF EXISTS `_obb_tax_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_obb_tax_class` (
  `tax_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  PRIMARY KEY (`tax_class_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_obb_tax_class`
--

LOCK TABLES `_obb_tax_class` WRITE;
/*!40000 ALTER TABLE `_obb_tax_class` DISABLE KEYS */;
INSERT INTO `_obb_tax_class` VALUES (1,'VAT','All items are subject to VAT','2003-08-05 14:27:38','0000-00-00 00:00:00'),(2,'Russia VAT','Russia VAT','2012-05-15 17:13:49','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `_obb_tax_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_obb_tax_class_rule`
--

DROP TABLE IF EXISTS `_obb_tax_class_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_obb_tax_class_rule` (
  `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_type_id` int(11) DEFAULT NULL,
  `tax_class_id` int(11) NOT NULL,
  `country_id` int(11) DEFAULT NULL,
  `country_state_id` int(11) DEFAULT NULL,
  `title1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rate1` double NOT NULL,
  `title2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rate2` double DEFAULT NULL,
  `is_compound` tinyint(1) NOT NULL,
  `zip_codes` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  PRIMARY KEY (`tax_rule_id`),
  KEY `IDX_EDC9BEA1D991282D` (`customer_type_id`),
  KEY `IDX_EDC9BEA1A94AAAE` (`tax_class_id`),
  KEY `IDX_EDC9BEA1F92F3E70` (`country_id`),
  KEY `IDX_EDC9BEA136126D7C` (`country_state_id`),
  CONSTRAINT `FK_EDC9BEA136126D7C` FOREIGN KEY (`country_state_id`) REFERENCES `_obb_country_state` (`country_state_id`) ON DELETE CASCADE,
  CONSTRAINT `FK_EDC9BEA1A94AAAE` FOREIGN KEY (`tax_class_id`) REFERENCES `_obb_tax_class` (`tax_class_id`) ON DELETE CASCADE,
  CONSTRAINT `FK_EDC9BEA1D991282D` FOREIGN KEY (`customer_type_id`) REFERENCES `_obb_customer_type` (`customer_type_id`) ON DELETE CASCADE,
  CONSTRAINT `FK_EDC9BEA1F92F3E70` FOREIGN KEY (`country_id`) REFERENCES `_obb_country` (`country_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_obb_tax_class_rule`
--

LOCK TABLES `_obb_tax_class_rule` WRITE;
/*!40000 ALTER TABLE `_obb_tax_class_rule` DISABLE KEYS */;
INSERT INTO `_obb_tax_class_rule` VALUES (1,NULL,1,14,NULL,'25% VAT is',0.25,NULL,NULL,0,NULL,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(2,NULL,1,21,NULL,'25% VAT is',0.25,NULL,NULL,0,NULL,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(3,NULL,1,33,NULL,'25% VAT is',0.25,NULL,NULL,0,NULL,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(4,NULL,1,55,NULL,'25% VAT is',0.25,NULL,NULL,0,NULL,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(5,NULL,1,56,NULL,'25% VAT is',0.25,NULL,NULL,0,NULL,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(6,NULL,1,57,NULL,'25% VAT is',0.25,NULL,NULL,0,NULL,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(7,NULL,1,67,NULL,'25% VAT is',0.25,NULL,NULL,0,NULL,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(8,NULL,1,72,NULL,'25% VAT is',0.25,NULL,NULL,0,NULL,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(9,NULL,1,73,NULL,'25% VAT is',0.25,NULL,NULL,0,NULL,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(10,NULL,1,74,NULL,'25% VAT is',0.25,NULL,NULL,0,NULL,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(11,NULL,1,81,NULL,'25% VAT is',0.25,NULL,NULL,0,NULL,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(12,NULL,1,84,NULL,'25% VAT is',0.25,NULL,NULL,0,NULL,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(13,NULL,1,97,NULL,'25% VAT is',0.25,NULL,NULL,0,NULL,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(14,NULL,1,103,NULL,'25% VAT is',0.25,NULL,NULL,0,NULL,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(15,NULL,1,105,NULL,'25% VAT is',0.25,NULL,NULL,0,NULL,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(16,NULL,1,117,NULL,'25% VAT is',0.25,NULL,NULL,0,NULL,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(17,NULL,1,123,NULL,'25% VAT is',0.25,NULL,NULL,0,NULL,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(18,NULL,1,124,NULL,'25% VAT is',0.25,NULL,NULL,0,NULL,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(19,NULL,1,132,NULL,'25% VAT is',0.25,NULL,NULL,0,NULL,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(20,NULL,1,150,NULL,'25% VAT is',0.25,NULL,NULL,0,NULL,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(21,NULL,1,170,NULL,'25% VAT is',0.25,NULL,NULL,0,NULL,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(22,NULL,1,171,NULL,'25% VAT is',0.25,NULL,NULL,0,NULL,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(23,NULL,1,189,NULL,'25% VAT is',0.25,NULL,NULL,0,NULL,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(24,NULL,1,190,NULL,'25% VAT is',0.25,NULL,NULL,0,NULL,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(25,NULL,1,195,NULL,'25% VAT is',0.25,NULL,NULL,0,NULL,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(26,NULL,1,203,NULL,'25% VAT is',0.25,NULL,NULL,0,NULL,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(27,NULL,1,222,NULL,'25% VAT is',0.25,NULL,NULL,0,NULL,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(28,NULL,1,NULL,NULL,'No VAT included',111,NULL,NULL,0,NULL,'2012-07-10 13:21:53','2012-07-10 13:21:53'),(29,NULL,2,NULL,NULL,'Russia VAT Rule',0.2,'',0,0,'','2012-07-10 13:21:53','2012-07-10 13:21:53');
/*!40000 ALTER TABLE `_obb_tax_class_rule` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-07-11 15:53:07
