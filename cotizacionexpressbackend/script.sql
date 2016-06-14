CREATE DATABASE  IF NOT EXISTS `db_cotizacionexpress` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `db_cotizacionexpress`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: db_cotizacionexpress
-- ------------------------------------------------------
-- Server version 5.6.21-log

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
INSERT INTO `auth_group` VALUES (1,'Cotizador'),(2,'Telefonista');
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_4ffba17f_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permissi_permission_id_4ffba17f_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_4cb633db_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permissi_content_type_id_552c6ac8_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add Cliente',7,'add_cliente'),(20,'Can change Cliente',7,'change_cliente'),(21,'Can delete Cliente',7,'delete_cliente'),(22,'Can add Contenedor',8,'add_contenedor'),(23,'Can change Contenedor',8,'change_contenedor'),(24,'Can delete Contenedor',8,'delete_contenedor'),(25,'Can add Cotización',9,'add_cotizacion'),(26,'Can change Cotización',9,'change_cotizacion'),(27,'Can delete Cotización',9,'delete_cotizacion'),(28,'Can add mueble de la cotización',10,'add_cotizacionmueble'),(29,'Can change mueble de la cotización',10,'change_cotizacionmueble'),(30,'Can delete mueble de la cotización',10,'delete_cotizacionmueble'),(31,'Can add Contenedor de la cotización',11,'add_cotizacioncontenedor'),(32,'Can change Contenedor de la cotización',11,'change_cotizacioncontenedor'),(33,'Can delete Contenedor de la cotización',11,'delete_cotizacioncontenedor'),(34,'Can add Mueble',12,'add_mueble'),(35,'Can change Mueble',12,'change_mueble'),(36,'Can delete Mueble',12,'delete_mueble'),(37,'Can add cors model',13,'add_corsmodel'),(38,'Can change cors model',13,'change_corsmodel'),(39,'Can delete cors model',13,'delete_corsmodel'),(40,'Can add Bulto',14,'add_bulto'),(41,'Can change Bulto',14,'change_bulto'),(42,'Can delete Bulto',14,'delete_bulto'),(46,'Can add Tipo mueble',16,'add_tipomueble'),(47,'Can change Tipo mueble',16,'change_tipomueble'),(48,'Can delete Tipo mueble',16,'delete_tipomueble'),(49,'Can add material de la cotización',17,'add_cotizacionmaterial'),(50,'Can change material de la cotización',17,'change_cotizacionmaterial'),(51,'Can delete material de la cotización',17,'delete_cotizacionmaterial'),(52,'Can add Material',18,'add_material'),(53,'Can change Material',18,'change_material'),(54,'Can delete Material',18,'delete_material'),(55,'Can add Detalle contenedor',19,'add_detallecontenedor'),(56,'Can change Detalle contenedor',19,'change_detallecontenedor'),(57,'Can delete Detalle contenedor',19,'delete_detallecontenedor');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$20000$MoMlrVQvhAuP$uqWya0ZcRLnMo776ofj9pev4zE/06yv0k8AF/qr4FYo=','2016-06-02 18:49:28.246429',1,'admin','Admin','','yusnelvy@gmail.com',1,1,'2016-05-18 00:09:25.202580'),(2,'123',NULL,0,'ezequiel','Ezequiel','Carnevale','',0,0,'2016-05-27 18:36:12.000000'),(3,'123',NULL,0,'yanina','Yanina Romina','Marchetti','',0,0,'2016-05-27 14:09:15.000000'),(4,'123',NULL,0,'melisa','Melisa','Troche Villalba','',0,0,'2016-05-27 18:39:15.000000'),(5,'123',NULL,0,'pedro','Pedro','Oubiña','',0,0,'2016-05-27 14:12:07.000000'),(6,'123',NULL,0,'jose','José','Mendoza','',0,0,'2016-05-27 18:42:07.000000'),(7,'123',NULL,0,'federico','Federico','','',0,0,'2016-05-27 14:13:54.000000'),(8,'123',NULL,0,'emmanuel','Emmanuel','','',0,0,'2016-05-27 18:43:54.000000');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_513310df_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_513310df_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_2b2e6d00_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
INSERT INTO `auth_user_groups` VALUES (9,2,1),(10,2,2),(15,3,1),(16,3,2),(12,4,1),(13,4,2),(14,5,2),(6,6,1),(7,6,2),(11,7,1),(1,8,1);
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_perm_permission_id_47545fd7_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_user_perm_permission_id_47545fd7_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_5cd654d6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bulto_bulto`
--

DROP TABLE IF EXISTS `bulto_bulto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bulto_bulto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ancho` int(11) NOT NULL,
  `largo` int(11) NOT NULL,
  `alto` int(11) NOT NULL,
  `punto` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=901 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bulto_bulto`
--

LOCK TABLES `bulto_bulto` WRITE;
/*!40000 ALTER TABLE `bulto_bulto` DISABLE KEYS */;
INSERT INTO `bulto_bulto` VALUES (1,30,30,60,1),(2,30,30,70,1),(3,30,30,80,1),(4,30,30,90,1),(5,30,30,100,1),(6,30,30,110,1),(7,30,30,120,1),(8,30,30,130,1),(9,30,30,140,1),(10,30,30,150,1),(11,30,30,160,1),(12,30,30,170,2),(13,30,30,180,2),(14,30,30,190,2),(15,30,30,210,2),(16,30,30,220,2),(17,30,30,230,2),(18,30,30,240,2),(19,30,30,250,2),(20,30,30,260,2),(21,30,30,270,2),(22,30,30,280,3),(23,30,30,290,3),(24,30,30,300,3),(25,30,40,60,1),(26,30,40,70,1),(27,30,40,80,1),(28,30,40,90,1),(29,30,40,100,1),(30,30,40,110,1),(31,30,40,120,1),(32,30,40,130,2),(33,30,40,140,2),(34,30,40,150,2),(35,30,40,160,2),(36,30,40,170,2),(37,30,40,180,2),(38,30,40,190,2),(39,30,40,200,2),(40,30,40,210,3),(41,30,40,220,3),(42,30,40,230,3),(43,30,40,240,3),(44,30,40,250,3),(45,30,40,260,3),(46,30,40,270,3),(47,30,40,280,3),(48,30,40,290,3),(49,30,40,300,4),(50,30,50,60,1),(51,30,50,70,1),(52,30,50,80,1),(53,30,50,90,1),(54,30,50,100,2),(55,30,50,110,2),(56,30,50,120,2),(57,30,50,130,2),(58,30,50,140,2),(59,30,50,150,2),(60,30,50,160,2),(61,30,50,170,3),(62,30,50,180,3),(63,30,50,190,3),(64,30,50,200,3),(65,30,50,210,3),(66,30,50,220,3),(67,30,50,230,3),(68,30,50,240,4),(69,30,50,250,4),(70,30,50,260,4),(71,30,50,270,4),(72,30,50,280,4),(73,30,50,290,4),(74,30,50,300,5),(75,30,60,60,1),(76,30,60,70,1),(77,30,60,80,1),(78,30,60,90,2),(79,30,60,100,2),(80,30,60,110,2),(81,30,60,120,2),(82,30,60,130,2),(83,30,60,140,3),(84,30,60,150,3),(85,30,60,160,3),(86,30,60,170,3),(87,30,60,180,3),(88,30,60,190,3),(89,30,60,200,4),(90,30,60,210,4),(91,30,60,220,4),(92,30,60,230,4),(93,30,60,240,4),(94,30,60,250,5),(95,30,60,260,5),(96,30,60,270,5),(97,30,60,280,5),(98,30,60,290,5),(99,30,60,300,5),(100,30,70,60,1),(101,30,70,70,1),(102,30,70,80,2),(103,30,70,90,2),(104,30,70,100,2),(105,30,70,110,2),(106,30,70,120,3),(107,30,70,130,3),(108,30,70,140,3),(109,30,70,150,3),(110,30,70,160,3),(111,30,70,170,4),(112,30,70,180,4),(113,30,70,190,4),(114,30,70,200,4),(115,30,70,210,4),(116,30,70,220,5),(117,30,70,230,5),(118,30,70,240,5),(119,30,70,250,5),(120,30,70,260,5),(121,30,70,270,6),(122,30,70,280,6),(123,30,70,290,6),(124,30,70,300,6),(125,30,80,60,1),(126,30,80,70,2),(127,30,80,80,2),(128,30,80,90,2),(129,30,80,100,2),(130,30,80,110,3),(131,30,80,120,3),(132,30,80,130,3),(133,30,80,140,3),(134,30,80,150,4),(135,30,80,160,4),(136,30,80,170,4),(137,30,80,180,4),(138,30,80,190,5),(139,30,80,200,5),(140,30,80,210,5),(141,30,80,220,5),(142,30,80,230,6),(143,30,80,240,6),(144,30,80,250,6),(145,30,80,260,6),(146,30,80,270,6),(147,30,80,280,7),(148,30,80,290,7),(149,30,80,300,7),(150,30,90,60,2),(151,30,90,70,2),(152,30,90,80,2),(153,30,90,90,2),(154,30,90,100,3),(155,30,90,110,3),(156,30,90,120,3),(157,30,90,130,4),(158,30,90,140,4),(159,30,90,150,4),(160,30,90,160,4),(161,30,90,170,5),(162,30,90,180,5),(163,30,90,190,5),(164,30,90,200,5),(165,30,90,210,6),(166,30,90,220,6),(167,30,90,230,6),(168,30,90,240,6),(169,30,90,250,7),(170,30,90,260,7),(171,30,90,270,7),(172,30,90,280,8),(173,30,90,290,8),(174,30,90,300,8),(175,30,100,60,2),(176,30,100,70,2),(177,30,100,80,2),(178,30,100,90,3),(179,30,100,100,3),(180,30,100,110,3),(181,30,100,120,4),(182,30,100,130,4),(183,30,100,140,4),(184,30,100,150,5),(185,30,100,160,5),(186,30,100,170,5),(187,30,100,180,5),(188,30,100,190,6),(189,30,100,200,6),(190,30,100,210,6),(191,30,100,220,7),(192,30,100,230,7),(193,30,100,240,7),(194,30,100,250,8),(195,30,100,260,8),(196,30,100,270,8),(197,30,100,280,8),(198,30,100,290,9),(199,30,100,300,9),(200,40,40,60,1),(201,40,40,70,1),(202,40,40,80,1),(203,40,40,90,1),(204,40,40,100,2),(205,40,40,110,2),(206,40,40,120,2),(207,40,40,130,2),(208,40,40,140,2),(209,40,40,150,2),(210,40,40,160,3),(211,40,40,170,3),(212,40,40,180,3),(213,40,40,190,3),(214,40,40,200,3),(215,40,40,210,3),(216,40,40,220,4),(217,40,40,230,4),(218,40,40,240,4),(219,40,40,250,4),(220,40,40,260,4),(221,40,40,270,4),(222,40,40,280,4),(223,40,40,290,5),(224,40,40,300,5),(225,40,50,60,1),(226,40,50,70,1),(227,40,50,80,2),(228,40,50,90,2),(229,40,50,100,2),(230,40,50,110,2),(231,40,50,120,2),(232,40,50,130,3),(233,40,50,140,3),(234,40,50,150,3),(235,40,50,160,3),(236,40,50,170,3),(237,40,50,180,4),(238,40,50,190,4),(239,40,50,200,4),(240,40,50,210,4),(241,40,50,220,4),(242,40,50,230,5),(243,40,50,240,5),(244,40,50,250,5),(245,40,50,260,5),(246,40,50,270,5),(247,40,50,280,6),(248,40,50,290,6),(249,40,50,300,6),(250,40,60,60,1),(251,40,60,70,2),(252,40,60,80,2),(253,40,60,90,2),(254,40,60,100,2),(255,40,60,110,3),(256,40,60,120,3),(257,40,60,130,3),(258,40,60,140,3),(259,40,60,150,4),(260,40,60,160,4),(261,40,60,170,4),(262,40,60,180,4),(263,40,60,190,4),(264,40,60,200,5),(265,40,60,210,5),(266,40,60,220,5),(267,40,60,230,6),(268,40,60,240,6),(269,40,60,250,6),(270,40,60,260,6),(271,40,60,270,6),(272,40,60,280,7),(273,40,60,290,7),(274,40,60,300,7),(275,40,70,60,2),(276,40,70,70,2),(277,40,70,80,2),(278,40,70,90,3),(279,40,70,100,3),(280,40,70,110,3),(281,40,70,120,3),(282,40,70,130,4),(283,40,70,140,4),(284,40,70,150,4),(285,40,70,160,4),(286,40,70,170,5),(287,40,70,180,5),(288,40,70,190,5),(289,40,70,200,6),(290,40,70,210,6),(291,40,70,220,6),(292,40,70,230,6),(293,40,70,240,7),(294,40,70,250,7),(295,40,70,260,7),(296,40,70,270,8),(297,40,70,280,8),(298,40,70,290,8),(299,40,70,300,8),(300,40,80,60,2),(301,40,80,70,2),(302,40,80,80,3),(303,40,80,90,3),(304,40,80,100,3),(305,40,80,110,4),(306,40,80,120,4),(307,40,80,130,4),(308,40,80,140,4),(309,40,80,150,5),(310,40,80,160,5),(311,40,80,170,5),(312,40,80,180,6),(313,40,80,190,6),(314,40,80,200,6),(315,40,80,210,7),(316,40,80,220,7),(317,40,80,230,7),(318,40,80,240,8),(319,40,80,250,8),(320,40,80,260,8),(321,40,80,270,9),(322,40,80,280,9),(323,40,80,290,9),(324,40,80,300,10),(325,40,90,60,2),(326,40,90,70,3),(327,40,90,80,3),(328,40,90,90,3),(329,40,90,100,4),(330,40,90,110,4),(331,40,90,120,4),(332,40,90,130,5),(333,40,90,140,5),(334,40,90,150,5),(335,40,90,160,6),(336,40,90,170,6),(337,40,90,180,6),(338,40,90,190,7),(339,40,90,200,7),(340,40,90,210,8),(341,40,90,220,8),(342,40,90,230,8),(343,40,90,240,9),(344,40,90,250,9),(345,40,90,260,9),(346,40,90,270,10),(347,40,90,280,10),(348,40,90,290,10),(349,40,90,300,11),(350,40,100,60,2),(351,40,100,70,3),(352,40,100,80,3),(353,40,100,90,4),(354,40,100,100,4),(355,40,100,110,4),(356,40,100,120,5),(357,40,100,130,5),(358,40,100,140,6),(359,40,100,150,6),(360,40,100,160,6),(361,40,100,170,7),(362,40,100,180,7),(363,40,100,190,8),(364,40,100,200,8),(365,40,100,210,8),(366,40,100,220,9),(367,40,100,230,9),(368,40,100,240,10),(369,40,100,250,10),(370,40,100,260,10),(371,40,100,270,11),(372,40,100,280,11),(373,40,100,290,12),(374,40,100,300,12),(375,50,50,60,2),(376,50,50,70,2),(377,50,50,80,2),(378,50,50,90,2),(379,50,50,100,3),(380,50,50,110,3),(381,50,50,120,3),(382,50,50,130,3),(383,50,50,140,4),(384,50,50,150,4),(385,50,50,160,4),(386,50,50,170,4),(387,50,50,180,5),(388,50,50,190,5),(389,50,50,200,5),(390,50,50,210,5),(391,50,50,220,6),(392,50,50,230,6),(393,50,50,240,6),(394,50,50,250,6),(395,50,50,260,7),(396,50,50,270,7),(397,50,50,280,7),(398,50,50,290,7),(399,50,50,300,8),(400,50,60,60,2),(401,50,60,70,2),(402,50,60,80,2),(403,50,60,90,3),(404,50,60,100,3),(405,50,60,110,3),(406,50,60,120,4),(407,50,60,130,4),(408,50,60,140,4),(409,50,60,150,5),(410,50,60,160,5),(411,50,60,170,5),(412,50,60,180,5),(413,50,60,190,6),(414,50,60,200,6),(415,50,60,210,6),(416,50,60,220,7),(417,50,60,230,7),(418,50,60,240,7),(419,50,60,250,8),(420,50,60,260,8),(421,50,60,270,8),(422,50,60,280,8),(423,50,60,290,9),(424,50,60,300,9),(425,50,70,60,2),(426,50,70,70,2),(427,50,70,80,3),(428,50,70,90,3),(429,50,70,100,4),(430,50,70,110,4),(431,50,70,120,4),(432,50,70,130,5),(433,50,70,140,5),(434,50,70,150,5),(435,50,70,160,6),(436,50,70,170,6),(437,50,70,180,6),(438,50,70,190,7),(439,50,70,200,7),(440,50,70,210,7),(441,50,70,220,8),(442,50,70,230,8),(443,50,70,240,8),(444,50,70,250,9),(445,50,70,260,9),(446,50,70,270,9),(447,50,70,280,10),(448,50,70,290,10),(449,50,70,300,11),(450,50,80,60,2),(451,50,80,70,3),(452,50,80,80,3),(453,50,80,90,4),(454,50,80,100,4),(455,50,80,110,4),(456,50,80,120,5),(457,50,80,130,5),(458,50,80,140,6),(459,50,80,150,6),(460,50,80,160,6),(461,50,80,170,7),(462,50,80,180,7),(463,50,80,190,8),(464,50,80,200,8),(465,50,80,210,8),(466,50,80,220,9),(467,50,80,230,9),(468,50,80,240,10),(469,50,80,250,10),(470,50,80,260,10),(471,50,80,270,11),(472,50,80,280,11),(473,50,80,290,12),(474,50,80,300,12),(475,50,90,60,3),(476,50,90,70,3),(477,50,90,80,4),(478,50,90,90,4),(479,50,90,100,5),(480,50,90,110,5),(481,50,90,120,5),(482,50,90,130,6),(483,50,90,140,6),(484,50,90,150,7),(485,50,90,160,7),(486,50,90,170,8),(487,50,90,180,8),(488,50,90,190,9),(489,50,90,200,9),(490,50,90,210,9),(491,50,90,220,10),(492,50,90,230,10),(493,50,90,240,11),(494,50,90,250,11),(495,50,90,260,12),(496,50,90,270,12),(497,50,90,280,13),(498,50,90,290,13),(499,50,90,300,14),(500,50,100,60,3),(501,50,100,70,4),(502,50,100,80,4),(503,50,100,90,5),(504,50,100,100,5),(505,50,100,110,6),(506,50,100,120,6),(507,50,100,130,7),(508,50,100,140,7),(509,50,100,150,8),(510,50,100,160,8),(511,50,100,170,9),(512,50,100,180,9),(513,50,100,190,10),(514,50,100,200,10),(515,50,100,210,11),(516,50,100,220,11),(517,50,100,230,12),(518,50,100,240,12),(519,50,100,250,13),(520,50,100,260,13),(521,50,100,270,14),(522,50,100,280,14),(523,50,100,290,15),(524,50,100,300,15),(525,60,60,60,2),(526,60,60,70,3),(527,60,60,80,3),(528,60,60,90,4),(529,60,60,100,4),(530,60,60,110,4),(531,60,60,120,4),(532,60,60,130,5),(533,60,60,140,5),(534,60,60,150,5),(535,60,60,160,6),(536,60,60,170,6),(537,60,60,180,6),(538,60,60,190,7),(539,60,60,200,7),(540,60,60,210,8),(541,60,60,220,8),(542,60,60,230,8),(543,60,60,240,9),(544,60,60,250,9),(545,60,60,260,9),(546,60,60,270,10),(547,60,60,280,10),(548,60,60,290,10),(549,60,60,300,11),(550,60,70,60,3),(551,60,70,70,3),(552,60,70,80,3),(553,60,70,90,4),(554,60,70,100,4),(555,60,70,110,5),(556,60,70,120,5),(557,60,70,130,5),(558,60,70,140,6),(559,60,70,150,6),(560,60,70,160,7),(561,60,70,170,7),(562,60,70,180,8),(563,60,70,190,8),(564,60,70,200,8),(565,60,70,210,9),(566,60,70,220,9),(567,60,70,230,10),(568,60,70,240,10),(569,60,70,250,11),(570,60,70,260,11),(571,60,70,270,11),(572,60,70,280,12),(573,60,70,290,12),(574,60,70,300,13),(575,60,80,60,3),(576,60,80,70,3),(577,60,80,80,4),(578,60,80,90,4),(579,60,80,100,5),(580,60,80,110,5),(581,60,80,120,6),(582,60,80,130,6),(583,60,80,140,7),(584,60,80,150,7),(585,60,80,160,8),(586,60,80,170,8),(587,60,80,180,9),(588,60,80,190,9),(589,60,80,200,10),(590,60,80,210,10),(591,60,80,220,11),(592,60,80,230,11),(593,60,80,240,12),(594,60,80,250,12),(595,60,80,260,12),(596,60,80,270,13),(597,60,80,280,13),(598,60,80,290,14),(599,60,80,300,14),(600,60,90,60,3),(601,60,90,70,4),(602,60,90,80,4),(603,60,90,90,5),(604,60,90,100,5),(605,60,90,110,6),(606,60,90,120,6),(607,60,90,130,7),(608,60,90,140,8),(609,60,90,150,8),(610,60,90,160,9),(611,60,90,170,9),(612,60,90,180,10),(613,60,90,190,10),(614,60,90,200,11),(615,60,90,210,11),(616,60,90,220,12),(617,60,90,230,12),(618,60,90,240,13),(619,60,90,250,14),(620,60,90,260,14),(621,60,90,270,15),(622,60,90,280,15),(623,60,90,290,16),(624,60,90,300,16),(625,60,100,60,4),(626,60,100,70,4),(627,60,100,80,5),(628,60,100,90,5),(629,60,100,100,6),(630,60,100,110,7),(631,60,100,120,7),(632,60,100,130,8),(633,60,100,140,8),(634,60,100,150,9),(635,60,100,160,10),(636,60,100,170,10),(637,60,100,180,11),(638,60,100,190,11),(639,60,100,200,12),(640,60,100,210,13),(641,60,100,220,13),(642,60,100,230,14),(643,60,100,240,14),(644,60,100,250,15),(645,60,100,260,16),(646,60,100,270,16),(647,60,100,280,17),(648,60,100,290,17),(649,60,100,300,18),(650,70,70,60,3),(651,70,70,70,3),(652,70,70,80,4),(653,70,70,90,4),(654,70,70,100,5),(655,70,70,110,5),(656,70,70,120,6),(657,70,70,130,6),(658,70,70,140,7),(659,70,70,150,7),(660,70,70,160,8),(661,70,70,170,8),(662,70,70,180,9),(663,70,70,190,9),(664,70,70,200,10),(665,70,70,210,10),(666,70,70,220,11),(667,70,70,230,11),(668,70,70,240,12),(669,70,70,250,12),(670,70,70,260,13),(671,70,70,270,13),(672,70,70,280,14),(673,70,70,290,14),(674,70,70,300,15),(675,70,80,60,3),(676,70,80,70,4),(677,70,80,80,4),(678,70,80,90,5),(679,70,80,100,6),(680,70,80,110,6),(681,70,80,120,7),(682,70,80,130,7),(683,70,80,140,8),(684,70,80,150,8),(685,70,80,160,9),(686,70,80,170,10),(687,70,80,180,10),(688,70,80,190,11),(689,70,80,200,11),(690,70,80,210,12),(691,70,80,220,12),(692,70,80,230,13),(693,70,80,240,13),(694,70,80,250,14),(695,70,80,260,15),(696,70,80,270,15),(697,70,80,280,16),(698,70,80,290,16),(699,70,80,300,17),(700,70,90,60,4),(701,70,90,70,4),(702,70,90,80,5),(703,70,90,90,6),(704,70,90,100,6),(705,70,90,110,7),(706,70,90,120,8),(707,70,90,130,8),(708,70,90,140,9),(709,70,90,150,9),(710,70,90,160,10),(711,70,90,170,11),(712,70,90,180,11),(713,70,90,190,12),(714,70,90,200,13),(715,70,90,210,13),(716,70,90,220,14),(717,70,90,230,14),(718,70,90,240,15),(719,70,90,250,16),(720,70,90,260,16),(721,70,90,270,17),(722,70,90,280,18),(723,70,90,290,18),(724,70,90,300,19),(725,70,100,60,4),(726,70,100,70,5),(727,70,100,80,6),(728,70,100,90,6),(729,70,100,100,7),(730,70,100,110,8),(731,70,100,120,8),(732,70,100,130,9),(733,70,100,140,10),(734,70,100,150,11),(735,70,100,160,11),(736,70,100,170,12),(737,70,100,180,13),(738,70,100,190,13),(739,70,100,200,14),(740,70,100,210,15),(741,70,100,220,15),(742,70,100,230,16),(743,70,100,240,17),(744,70,100,250,18),(745,70,100,260,18),(746,70,100,270,19),(747,70,100,280,20),(748,70,100,290,20),(749,70,100,300,21),(750,80,80,60,4),(751,80,80,70,4),(752,80,80,80,5),(753,80,80,90,6),(754,80,80,100,6),(755,80,80,110,7),(756,80,80,120,8),(757,80,80,130,8),(758,80,80,140,9),(759,80,80,150,10),(760,80,80,160,10),(761,80,80,170,11),(762,80,80,180,12),(763,80,80,190,12),(764,80,80,200,13),(765,80,80,210,13),(766,80,80,220,14),(767,80,80,230,15),(768,80,80,240,15),(769,80,80,250,16),(770,80,80,260,17),(771,80,80,270,17),(772,80,80,280,18),(773,80,80,290,19),(774,80,80,300,19),(775,80,90,60,4),(776,80,90,70,5),(777,80,90,80,6),(778,80,90,90,6),(779,80,90,100,7),(780,80,90,110,8),(781,80,90,120,9),(782,80,90,130,9),(783,80,90,140,10),(784,80,90,150,11),(785,80,90,160,12),(786,80,90,170,12),(787,80,90,180,13),(788,80,90,190,14),(789,80,90,200,14),(790,80,90,210,15),(791,80,90,220,16),(792,80,90,230,17),(793,80,90,240,17),(794,80,90,250,18),(795,80,90,260,19),(796,80,90,270,19),(797,80,90,280,20),(798,80,90,290,21),(799,80,90,300,22),(800,80,100,60,5),(801,80,100,70,6),(802,80,100,80,6),(803,80,100,90,7),(804,80,100,100,8),(805,80,100,110,9),(806,80,100,120,10),(807,80,100,130,10),(808,80,100,140,11),(809,80,100,150,12),(810,80,100,160,13),(811,80,100,170,14),(812,80,100,180,14),(813,80,100,190,15),(814,80,100,200,16),(815,80,100,210,17),(816,80,100,220,18),(817,80,100,230,18),(818,80,100,240,19),(819,80,100,250,20),(820,80,100,260,21),(821,80,100,270,22),(822,80,100,280,22),(823,80,100,290,23),(824,80,100,300,24),(825,90,90,60,5),(826,90,90,70,6),(827,90,90,80,6),(828,90,90,90,7),(829,90,90,100,8),(830,90,90,110,9),(831,90,90,120,10),(832,90,90,130,11),(833,90,90,140,11),(834,90,90,150,12),(835,90,90,160,13),(836,90,90,170,14),(837,90,90,180,15),(838,90,90,190,15),(839,90,90,200,16),(840,90,90,210,17),(841,90,90,220,18),(842,90,90,230,19),(843,90,90,240,19),(844,90,90,250,20),(845,90,90,260,21),(846,90,90,270,22),(847,90,90,280,23),(848,90,90,290,23),(849,90,90,300,24),(850,90,100,60,5),(851,90,100,70,6),(852,90,100,80,7),(853,90,100,90,8),(854,90,100,100,9),(855,90,100,110,10),(856,90,100,120,11),(857,90,100,130,12),(858,90,100,140,13),(859,90,100,150,14),(860,90,100,160,14),(861,90,100,170,15),(862,90,100,180,16),(863,90,100,190,17),(864,90,100,200,18),(865,90,100,210,19),(866,90,100,220,20),(867,90,100,230,21),(868,90,100,240,22),(869,90,100,250,23),(870,90,100,260,23),(871,90,100,270,24),(872,90,100,280,25),(873,90,100,290,26),(874,90,100,300,27),(875,100,100,60,6),(876,100,100,70,7),(877,100,100,80,8),(878,100,100,90,9),(879,100,100,100,10),(880,100,100,110,11),(881,100,100,120,12),(882,100,100,130,13),(883,100,100,140,14),(884,100,100,150,15),(885,100,100,160,16),(886,100,100,170,17),(887,100,100,180,18),(888,100,100,190,19),(889,100,100,200,20),(890,100,100,210,21),(891,100,100,220,22),(892,100,100,230,23),(893,100,100,240,24),(894,100,100,250,25),(895,100,100,260,26),(896,100,100,270,27),(897,100,100,280,28),(898,100,100,290,29),(899,100,100,300,30),(900,30,30,200,2);
/*!40000 ALTER TABLE `bulto_bulto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente_cliente`
--

DROP TABLE IF EXISTS `cliente_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente_cliente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `direccion` longtext COLLATE utf8_unicode_ci NOT NULL,
  `telefono` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `estado` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente_cliente`
--

LOCK TABLES `cliente_cliente` WRITE;
/*!40000 ALTER TABLE `cliente_cliente` DISABLE KEYS */;
INSERT INTO `cliente_cliente` VALUES (1,'cliente express','','','','activo'),(2,'yusnel','','02909-0090','yusne@g.com','activo'),(3,'yusnelvy arrieche','','0414-0576077','yusnel@g.com','activo');
/*!40000 ALTER TABLE `cliente_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contenedor_contenedor`
--

DROP TABLE IF EXISTS `contenedor_contenedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contenedor_contenedor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contenedor` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `propuesto1` int(11) NOT NULL,
  `propuesto2` int(11) NOT NULL,
  `propuesto3` int(11) NOT NULL,
  `propuesto4` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `contenedor` (`contenedor`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contenedor_contenedor`
--

LOCK TABLES `contenedor_contenedor` WRITE;
/*!40000 ALTER TABLE `contenedor_contenedor` DISABLE KEYS */;
INSERT INTO `contenedor_contenedor` VALUES (1,'Cajas Nuevas',20,25,30,35),(2,'Cajas Reciclables',20,25,30,35),(3,'Canasto',15,20,25,30),(4,'Canasto PC',2,3,4,5),(5,'Bolsa',10,20,30,40),(6,'Ropero',3,5,7,9);
/*!40000 ALTER TABLE `contenedor_contenedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contenedor_detallecontenedor`
--

DROP TABLE IF EXISTS `contenedor_detallecontenedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contenedor_detallecontenedor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `siglas` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `cantidad` int(11) NOT NULL,
  `punto` int(11) NOT NULL,
  `contenedor_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `contenedor_de_contenedor_id_3e8b471d_fk_contenedor_contenedor_id` (`contenedor_id`),
  CONSTRAINT `contenedor_de_contenedor_id_3e8b471d_fk_contenedor_contenedor_id` FOREIGN KEY (`contenedor_id`) REFERENCES `contenedor_contenedor` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contenedor_detallecontenedor`
--

LOCK TABLES `contenedor_detallecontenedor` WRITE;
/*!40000 ALTER TABLE `contenedor_detallecontenedor` DISABLE KEYS */;
INSERT INTO `contenedor_detallecontenedor` VALUES (1,'CA',1,1,1),(2,'CA',3,3,1),(3,'CA',5,5,1),(4,'CA',10,10,1),(5,'CA',20,20,1),(6,'CA',30,30,1),(7,'CA',40,40,1),(8,'CA',50,50,1),(9,'CA',1,1,2),(10,'CA',3,3,2),(11,'CA',5,5,2),(12,'CA',10,10,2),(13,'CA',20,20,2),(14,'CA',30,30,2),(15,'CA',40,40,2),(16,'CA',50,50,2),(17,'CN',1,1,3),(18,'CN',3,4,3),(19,'CN',5,6,3),(20,'CN',10,13,3),(21,'CN',20,25,3),(22,'CN',30,40,3),(23,'CN',40,50,3),(24,'CN',50,60,3),(25,'PC',1,1,4),(26,'PC',3,4,4),(27,'PC',5,7,4),(28,'PC',10,15,4),(29,'PC',20,30,4),(30,'PC',30,40,4),(31,'PC',40,60,4),(32,'PC',50,70,4),(33,'BL',1,2,5),(34,'BL',3,6,5),(35,'BL',5,10,5),(36,'BL',10,20,5),(37,'BL',20,40,5),(38,'BL',30,65,5),(39,'BL',40,90,5),(40,'BL',50,100,5),(41,'RO',1,5,6),(42,'RO',3,15,6),(43,'RO',5,25,6),(44,'RO',10,50,6),(45,'RO',20,90,6),(46,'RO',30,140,6),(47,'RO',40,180,6),(48,'RO',50,230,6);
/*!40000 ALTER TABLE `contenedor_detallecontenedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `corsheaders_corsmodel`
--

DROP TABLE IF EXISTS `corsheaders_corsmodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `corsheaders_corsmodel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cors` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `corsheaders_corsmodel`
--

LOCK TABLES `corsheaders_corsmodel` WRITE;
/*!40000 ALTER TABLE `corsheaders_corsmodel` DISABLE KEYS */;
/*!40000 ALTER TABLE `corsheaders_corsmodel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cotizacionexpress_cotizacion`
--

DROP TABLE IF EXISTS `cotizacionexpress_cotizacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cotizacionexpress_cotizacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numero_cotizacion` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_de_cotizacion` date DEFAULT NULL,
  `total_cantidad` int(11) NOT NULL,
  `total_m3` decimal(7,2) NOT NULL,
  `estado` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `cliente_id` int(11) DEFAULT NULL,
  `cotizador_id` int(11) DEFAULT NULL,
  `ajuste` decimal(9,2) NOT NULL,
  `ambiente` int(11) NOT NULL,
  `barrio_provincia_destino` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `barrio_provincia_origen` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `cargo` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cp_pv` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `desarme_mueble` tinyint(1) NOT NULL,
  `desembalaje` decimal(9,2) NOT NULL,
  `direccion_destino` longtext COLLATE utf8_unicode_ci NOT NULL,
  `direccion_origen` longtext COLLATE utf8_unicode_ci,
  `embalaje` decimal(9,2) NOT NULL,
  `fecha_de_carga` date NOT NULL,
  `fecha_estimada_mudanza` date,
  `forma_pago` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `fuente` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `hora_de_carga` time(6) NOT NULL,
  `hora_de_cotizacion` time(6),
  `hora_estimada_mudanza` time(6),
  `iva` decimal(9,2) NOT NULL,
  `materiales` decimal(9,2) NOT NULL,
  `monto_km` decimal(9,2) NOT NULL,
  `mudanza` decimal(9,2) NOT NULL,
  `numero_ayudante` int(11) NOT NULL,
  `numero_camion` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `observacion` longtext COLLATE utf8_unicode_ci NOT NULL,
  `observacion_destino` longtext COLLATE utf8_unicode_ci NOT NULL,
  `observacion_origen` longtext COLLATE utf8_unicode_ci NOT NULL,
  `piano_cajafuerte` decimal(9,2) NOT NULL,
  `porcentaje_margen` decimal(7,2) NOT NULL,
  `precio_km` decimal(9,2) NOT NULL,
  `rampa` tinyint(1) NOT NULL,
  `recorrido_km` int(11) NOT NULL,
  `seguro` tinyint(1) NOT NULL,
  `soga` decimal(9,2) NOT NULL,
  `tiempo_de_carga` int(11) NOT NULL,
  `tiempo_de_descarga` int(11) NOT NULL,
  `total_margen` decimal(7,2) NOT NULL,
  `total_monto` decimal(9,2) NOT NULL,
  `tipo_cliente` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `porcentaje_ajuste` decimal(7,2) NOT NULL,
  `porcentaje_iva` decimal(7,2) NOT NULL,
  `subtotal1` decimal(7,2) NOT NULL,
  `subtotal2` decimal(7,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cotizacionexpress_coti_cliente_id_2398059a_fk_cliente_cliente_id` (`cliente_id`),
  KEY `cotizacionexpress_cotizaci_cotizador_id_47a33931_fk_auth_user_id` (`cotizador_id`),
  CONSTRAINT `cotizacionexpress_coti_cliente_id_2398059a_fk_cliente_cliente_id` FOREIGN KEY (`cliente_id`) REFERENCES `cliente_cliente` (`id`),
  CONSTRAINT `cotizacionexpress_cotizaci_cotizador_id_47a33931_fk_auth_user_id` FOREIGN KEY (`cotizador_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cotizacionexpress_cotizacion`
--

LOCK TABLES `cotizacionexpress_cotizacion` WRITE;
/*!40000 ALTER TABLE `cotizacionexpress_cotizacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `cotizacionexpress_cotizacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cotizacionexpress_cotizacioncontenedor`
--

DROP TABLE IF EXISTS `cotizacionexpress_cotizacioncontenedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cotizacionexpress_cotizacioncontenedor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cantidad` int(11) NOT NULL,
  `punto` int(11) NOT NULL,
  `estado` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `cotizacion_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cotiza_cotizacion_id_60006026_fk_cotizacionexpress_cotizacion_id` (`cotizacion_id`),
  CONSTRAINT `cotiza_cotizacion_id_60006026_fk_cotizacionexpress_cotizacion_id` FOREIGN KEY (`cotizacion_id`) REFERENCES `cotizacionexpress_cotizacion` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cotizacionexpress_cotizacioncontenedor`
--

LOCK TABLES `cotizacionexpress_cotizacioncontenedor` WRITE;
/*!40000 ALTER TABLE `cotizacionexpress_cotizacioncontenedor` DISABLE KEYS */;
/*!40000 ALTER TABLE `cotizacionexpress_cotizacioncontenedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cotizacionexpress_cotizacionmaterial`
--

DROP TABLE IF EXISTS `cotizacionexpress_cotizacionmaterial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cotizacionexpress_cotizacionmaterial` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `material` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio_unitario` decimal(9,2) NOT NULL,
  `total` decimal(9,2) NOT NULL,
  `estado` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `cotizacion_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cotizacionexpress_cotizacionmaterial_1b44b901` (`cotizacion_id`),
  CONSTRAINT `cotiza_cotizacion_id_50f39ebe_fk_cotizacionexpress_cotizacion_id` FOREIGN KEY (`cotizacion_id`) REFERENCES `cotizacionexpress_cotizacion` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cotizacionexpress_cotizacionmaterial`
--

LOCK TABLES `cotizacionexpress_cotizacionmaterial` WRITE;
/*!40000 ALTER TABLE `cotizacionexpress_cotizacionmaterial` DISABLE KEYS */;
/*!40000 ALTER TABLE `cotizacionexpress_cotizacionmaterial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cotizacionexpress_cotizacionmueble`
--

DROP TABLE IF EXISTS `cotizacionexpress_cotizacionmueble`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cotizacionexpress_cotizacionmueble` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mueble` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` longtext COLLATE utf8_unicode_ci NOT NULL,
  `ancho` decimal(7,2) NOT NULL,
  `largo` decimal(7,2) NOT NULL,
  `alto` decimal(7,2) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `punto` int(11) NOT NULL,
  `estado` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `cotizacion_id` int(11) NOT NULL,
  `total_punto` int(11) NOT NULL,
  `especificacion` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cotiza_cotizacion_id_59215a39_fk_cotizacionexpress_cotizacion_id` (`cotizacion_id`),
  CONSTRAINT `cotiza_cotizacion_id_59215a39_fk_cotizacionexpress_cotizacion_id` FOREIGN KEY (`cotizacion_id`) REFERENCES `cotizacionexpress_cotizacion` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cotizacionexpress_cotizacionmueble`
--

LOCK TABLES `cotizacionexpress_cotizacionmueble` WRITE;
/*!40000 ALTER TABLE `cotizacionexpress_cotizacionmueble` DISABLE KEYS */;
/*!40000 ALTER TABLE `cotizacionexpress_cotizacionmueble` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8_unicode_ci,
  `object_repr` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext COLLATE utf8_unicode_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin__content_type_id_473f84d5_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_14b10f4e_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin__content_type_id_473f84d5_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_14b10f4e_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2016-05-27 14:28:06.989735','1','Cotizador',1,'',3,1),(2,'2016-05-27 14:29:58.171242','2','Telefonista',1,'',3,1),(3,'2016-05-27 14:30:23.722018','8','emmanuel',2,'Changed groups.',4,1),(4,'2016-05-27 14:30:41.942764','2','ezequiel',2,'Changed groups.',4,1),(5,'2016-05-27 14:30:58.040243','7','federico',2,'Changed groups.',4,1),(6,'2016-05-27 14:31:13.029158','6','jose',2,'Changed groups.',4,1),(7,'2016-05-27 14:31:35.665162','2','ezequiel',2,'Changed groups.',4,1),(8,'2016-05-27 14:31:44.537934','2','ezequiel',2,'Changed groups.',4,1),(9,'2016-05-27 14:31:51.921685','7','federico',2,'Changed groups.',4,1),(10,'2016-05-27 14:32:08.937570','4','melisa',2,'Changed groups.',4,1),(11,'2016-05-27 14:32:21.591495','5','pedro',2,'Changed groups.',4,1),(12,'2016-05-27 14:32:38.056873','3','yanina',2,'Changed groups.',4,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_e70dc98_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(14,'bulto','bulto'),(7,'cliente','cliente'),(8,'contenedor','contenedor'),(19,'contenedor','detallecontenedor'),(5,'contenttypes','contenttype'),(13,'corsheaders','corsmodel'),(9,'cotizacionexpress','cotizacion'),(11,'cotizacionexpress','cotizacioncontenedor'),(17,'cotizacionexpress','cotizacionmaterial'),(10,'cotizacionexpress','cotizacionmueble'),(18,'material','material'),(12,'mueble','mueble'),(16,'mueble','tipomueble'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2016-05-17 19:30:20.592936'),(2,'auth','0001_initial','2016-05-17 19:30:30.844185'),(3,'admin','0001_initial','2016-05-17 19:30:34.181412'),(4,'contenttypes','0002_remove_content_type_name','2016-05-17 19:30:35.881370'),(5,'auth','0002_alter_permission_name_max_length','2016-05-17 19:30:36.823965'),(6,'auth','0003_alter_user_email_max_length','2016-05-17 19:30:37.969229'),(7,'auth','0004_alter_user_username_opts','2016-05-17 19:30:38.058011'),(8,'auth','0005_alter_user_last_login_null','2016-05-17 19:30:38.804492'),(9,'auth','0006_require_contenttypes_0002','2016-05-17 19:30:38.881275'),(10,'cliente','0001_initial','2016-05-17 19:30:39.397887'),(12,'cotizacionexpress','0001_initial','2016-05-17 19:30:44.406362'),(13,'sessions','0001_initial','2016-05-17 19:30:45.487782'),(14,'mueble','0001_initial','2016-05-17 20:19:10.995888'),(16,'cotizacionexpress','0002_auto_20160518_1349','2016-05-18 18:19:14.438926'),(17,'bulto','0001_initial','2016-05-19 13:39:42.316143'),(18,'cotizacionexpress','0003_auto_20160523_1149','2016-05-23 16:19:47.539279'),(19,'mueble','0002_auto_20160526_1112','2016-05-26 15:42:31.662729'),(20,'mueble','0002_auto_20160526_1115','2016-05-26 15:48:58.066846'),(21,'mueble','0003_mueble_tipo_mueble','2016-05-26 15:54:45.758178'),(22,'mueble','0004_auto_20160526_1405','2016-05-26 18:35:39.186240'),(23,'cotizacionexpress','0004_auto_20160527_0901','2016-05-27 13:34:41.349359'),(24,'cotizacionexpress','0005_cotizacionmueble_especificacion','2016-05-27 15:17:01.184761'),(25,'material','0001_initial','2016-05-27 15:17:01.800197'),(26,'cotizacionexpress','0006_auto_20160603_1210','2016-06-03 16:40:57.388853'),(27,'cotizacionexpress','0007_auto_20160606_0928','2016-06-06 13:58:29.035575'),(28,'contenedor','0001_initial','2016-06-14 14:32:41.396877'),(29,'material','0002_material_contenedor','2016-06-14 19:26:22.140304');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `session_data` longtext COLLATE utf8_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('g4g3spfskd0k9yk34qabjd7km03gb1ew','N2NmMjE3MTViMjNiMGMyYWU3NDBlMDhlMDY5ZTBlMmVlMDJmNjQ3ODp7Il9hdXRoX3VzZXJfaGFzaCI6ImQyZTJiZTAwMTdmMzE2YjFiNjgzNjEzZGI1NTJkMmIwZjVlZjkxMTkiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=','2016-05-31 19:39:44.964499'),('j90ypydnjhisls19lr02ntli8dk2upfc','M2YyODVjMDY3ODc3ZmVmNzEyMzRjOTgxYWEzNWRkMmI1NTYyMTcxODp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiJkMmUyYmUwMDE3ZjMxNmIxYjY4MzYxM2RiNTUyZDJiMGY1ZWY5MTE5In0=','2016-06-16 18:49:28.429551'),('kw6zbp0ol7s3o0v9jw4chw1cafd2pr5s','YjgzYWRjMDA2MTk2ZjJlZjg0NDViODIwNDkxODQ3MGVkZjczNTg5ODp7Il9hdXRoX3VzZXJfaGFzaCI6ImQyZTJiZTAwMTdmMzE2YjFiNjgzNjEzZGI1NTJkMmIwZjVlZjkxMTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-06-10 14:27:21.352065');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `material_material`
--

DROP TABLE IF EXISTS `material_material`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `material_material` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `precio` decimal(9,2) NOT NULL,
  `contenedor_id` int(11),
  PRIMARY KEY (`id`),
  KEY `material_material_b5b2cb6f` (`contenedor_id`),
  CONSTRAINT `material_mater_contenedor_id_22cd4eb_fk_contenedor_contenedor_id` FOREIGN KEY (`contenedor_id`) REFERENCES `contenedor_contenedor` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `material_material`
--

LOCK TABLES `material_material` WRITE;
/*!40000 ALTER TABLE `material_material` DISABLE KEYS */;
INSERT INTO `material_material` VALUES (1,'Cajas Nuevas',40.00,NULL),(2,'Cajas Reciclables',30.00,NULL),(3,'Streech',350.00,NULL),(4,'Pluriball',350.00,NULL),(5,'Corrugado',145.00,NULL),(6,'Cintas',41.00,NULL),(7,'Papel Sulfito',50.00,NULL),(8,'Bolsas',100.00,NULL);
/*!40000 ALTER TABLE `material_material` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mueble_mueble`
--

DROP TABLE IF EXISTS `mueble_mueble`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mueble_mueble` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ancho` decimal(7,2) NOT NULL,
  `largo` decimal(7,2) NOT NULL,
  `alto` decimal(7,2) NOT NULL,
  `punto` int(11) NOT NULL,
  `tipo_mueble_id` int(11) NOT NULL,
  `especificacion` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mueble_mueble_3cda6187` (`tipo_mueble_id`),
  CONSTRAINT `mueble_mueble_tipo_mueble_id_2694c00b_fk_mueble_tipomueble_id` FOREIGN KEY (`tipo_mueble_id`) REFERENCES `mueble_tipomueble` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mueble_mueble`
--

LOCK TABLES `mueble_mueble` WRITE;
/*!40000 ALTER TABLE `mueble_mueble` DISABLE KEYS */;
INSERT INTO `mueble_mueble` VALUES (1,'Biblioteca',40.00,30.00,150.00,2,11,'40 cms'),(2,'Biblioteca',60.00,50.00,180.00,6,11,'60 cms'),(3,'Biblioteca',90.00,50.00,180.00,8,11,'90 cms'),(4,'Biblioteca',120.00,50.00,180.00,10,11,'120 cms'),(5,'Biblioteca',120.00,50.00,180.00,12,11,'140 cms'),(6,'Cama',80.00,200.00,70.00,13,3,'1 plaza'),(7,'Cama',100.00,200.00,70.00,15,3,'1 1/2 plazas'),(8,'Cama',140.00,200.00,70.00,23,3,'2 plazas'),(9,'Cama',220.00,160.00,80.00,30,3,'2 1/2 plazas'),(10,'Cama',100.00,180.00,140.00,25,3,'Litera'),(11,'Cómoda',90.00,90.00,50.00,4,11,'90 cms'),(12,'Cómoda',120.00,90.00,50.00,5,11,'120 cms'),(13,'Cómoda',150.00,90.00,50.00,7,11,'150 cms'),(14,'Cómoda',180.00,90.00,50.00,8,11,'180 cms'),(15,'Cómoda',210.00,90.00,50.00,10,11,'210 cms'),(16,'Despensa bajo < 90',40.00,30.00,90.00,1,11,'40 cms'),(17,'Despensa bajo < 90',60.00,40.00,90.00,3,11,'60 cms'),(18,'Despensa bajo < 90',90.00,50.00,90.00,4,11,'90 cms'),(19,'Despensa bajo < 90',120.00,40.00,90.00,5,11,'120 cms'),(20,'Despensa bajo < 90',140.00,40.00,90.00,6,11,'140 cms'),(21,'Despensa alto > 90',40.00,30.00,1800.00,2,11,'40 cms'),(22,'Despensa alto > 90',60.00,40.00,180.00,6,1,'60 cms'),(23,'Despensa alto > 90',90.00,40.00,180.00,8,11,'90 cms'),(24,'Despensa alto > 90',120.00,40.00,180.00,10,11,'120 cms'),(25,'Despensa alto > 90',140.00,50.00,90.00,12,11,'140 cms'),(26,'Equipo de música',40.00,30.00,60.00,1,16,'40 cms'),(27,'Equipo de música',90.00,30.00,60.00,2,16,'90 cms'),(28,'Equipo de música',120.00,50.00,60.00,4,16,'120 cms'),(29,'Escritorio bajo < 90',90.00,75.00,55.00,4,1,'90 cms'),(30,'Escritorio bajo < 90',120.00,75.00,55.00,5,1,'120 cms'),(31,'Escritorio bajo < 90',150.00,75.00,60.00,7,1,'150 cms'),(32,'Escritorio bajo < 90',180.00,75.00,60.00,8,1,'180 cms'),(33,'Escritorio bajo < 90',210.00,75.00,60.00,10,1,'210 cms'),(34,'Escritorio alto > 90',90.00,150.00,55.00,8,1,'90 cms'),(35,'Escritorio alto > 90',120.00,150.00,55.00,10,1,'120 cms'),(36,'Escritorio alto > 90',150.00,150.00,60.00,14,1,'150 cms'),(37,'Escritorio alto > 90',180.00,150.00,60.00,16,1,'180 cms'),(38,'Escritorio alto > 90',210.00,150.00,60.00,20,1,'210 cms'),(39,'Heladera 1p',160.00,65.00,70.00,7,6,'Pequeña < 160'),(40,'Heladera 1p',200.00,65.00,70.00,9,6,'Grande > 160'),(41,'Heladera 2p',160.00,75.00,95.00,12,6,'Pequeña < 160'),(42,'Heladera 2p',200.00,75.00,95.00,15,6,'Grande > 160'),(43,'Microondas / Horno eléctrico',50.00,40.00,40.00,1,6,'Pequeño →50←'),(44,'Microondas / Horno eléctrico',70.00,50.00,50.00,2,6,'Grande ←50→'),(45,'Lavarropas / Lavavajillas / Secadora',50.00,70.00,85.00,3,6,'50 cms'),(46,'Lavarropas / Lavavajillas / Secadora',60.00,70.00,85.00,4,6,'60 cms'),(47,'Lavarropas / Lavavajillas / Secadora',90.00,70.00,85.00,6,6,'90 cms'),(48,'Mesa de apoyo / Mesa de luz',40.00,40.00,60.00,1,1,'40cms'),(49,'Mesa de apoyo / Mesa de luz',50.00,45.00,65.00,2,1,'50cms'),(50,'Mesa de apoyo / Mesa de luz',60.00,60.00,75.00,3,1,'60cms'),(51,'Mesa de apoyo / Mesa de luz',70.00,65.00,80.00,4,1,'70cms'),(52,'Mesa de apoyo',90.00,65.00,80.00,5,1,'90cms'),(53,'Mesa de comedor',80.00,85.00,80.00,6,1,'80cms'),(54,'Mesa de comedor',120.00,85.00,80.00,8,1,'120cms'),(55,'Mesa de comedor',160.00,85.00,90.00,12,1,'160 cms'),(56,'Mesa de comedor',200.00,85.00,90.00,16,1,'200 cms'),(57,'Mesa de comedor',240.00,85.00,120.00,24,1,'240 cms'),(58,'Mesa desayunador',60.00,35.00,85.00,2,1,'60 cms'),(59,'Mesa desayunador',80.00,40.00,85.00,3,1,'80 cms'),(60,'Mesa desayunador',100.00,45.00,85.00,4,1,'100 cms'),(61,'Mesa desayunador',120.00,50.00,85.00,5,1,'120 cms'),(62,'Mesa desayunador',140.00,50.00,85.00,6,1,'140 cms'),(63,'Mesa ratona',50.00,40.00,50.00,1,1,'50 cms'),(64,'Mesa ratona',70.00,70.00,50.00,3,1,'70 cms'),(65,'Mesa ratona',90.00,90.00,55.00,5,1,'90 cms'),(66,'Mesa ratona',120.00,120.00,55.00,8,1,'120 cms'),(67,'Mesa ratona',140.00,140.00,55.00,10,1,'140 cms'),(68,'Mueble de TV bajo < 90',120.00,45.00,90.00,5,11,'120 cms'),(69,'Mueble de TV bajo < 90',150.00,50.00,90.00,7,11,'150 cms'),(70,'Mueble de TV bajo < 90',180.00,50.00,90.00,8,11,'180 cms'),(71,'Mueble de TV bajo < 90',210.00,55.00,90.00,10,11,'210 cms'),(72,'Mueble de TV bajo < 90',240.00,55.00,90.00,12,11,'240 cms'),(73,'Mueble de TV alto > 90',120.00,50.00,160.00,10,11,'120 cms'),(74,'Mueble de TV alto > 90',150.00,50.00,180.00,14,11,'150 cms'),(75,'Mueble de TV alto > 90',180.00,50.00,180.00,16,11,'180 cms'),(76,'Mueble de TV alto > 90',210.00,55.00,180.00,20,6,'210 cms'),(77,'Mueble de TV alto > 90',240.00,55.00,180.00,24,11,'240 cms'),(78,'Sillas de comedor',60.00,60.00,80.00,3,12,'1 silla'),(79,'Sillas de comedor',110.00,110.00,80.00,10,12,'4 sillas'),(80,'Sillas de comedor',150.00,110.00,80.00,14,12,'6 sillas'),(81,'Sillas de comedor',150.00,160.00,80.00,20,12,'8 sillas'),(82,'Sillas de comedor',180.00,160.00,80.00,24,12,'10 sillas'),(83,'Sillón',50.00,70.00,80.00,3,12,'50 cms'),(84,'Sillón',70.00,70.00,80.00,4,12,'70 cms'),(85,'Sillón',90.00,80.00,80.00,6,12,'90 cms'),(86,'Sillón',120.00,80.00,80.00,8,12,'120 cms'),(87,'Sillón',160.00,80.00,90.00,12,12,'160 cms'),(88,'Sofá',90.00,80.00,90.00,7,5,'1 plaza'),(89,'Sofá',160.00,80.00,90.00,12,5,'2 plazas'),(90,'Sofá',210.00,80.00,90.00,15,5,'3 plazas'),(91,'Sofá',260.00,80.00,90.00,20,5,'4 plazas'),(92,'Sofá',350.00,90.00,110.00,35,5,'en L'),(93,'TV',85.00,60.00,20.00,1,16,'22\" - 46\" pulgadas'),(94,'TV',110.00,60.00,30.00,2,16,'50\" - 52\" pulgadas'),(95,'TV',140.00,80.00,35.00,4,16,'60\" - 65\" pulgadas'),(96,'Vajillero bajo < 90',120.00,45.00,90.00,5,11,'120 cms'),(97,'Vajillero bajo < 90',150.00,50.00,90.00,7,11,'150 cms'),(98,'Vajillero bajo < 90',180.00,50.00,90.00,8,11,'180 cms'),(99,'Vajillero bajo < 90',210.00,50.00,90.00,10,11,'210 cms'),(100,'Vajillero bajo < 90',240.00,55.00,90.00,12,11,'240 cms'),(101,'Vajillero alto > 90',120.00,45.00,180.00,10,11,'120 cms'),(102,'Vajillero alto > 90',150.00,50.00,180.00,14,11,'150 cms'),(103,'Vajillero alto > 90',180.00,50.00,180.00,16,11,'180 cms'),(104,'Vajillero alto > 90',210.00,50.00,180.00,20,11,'210 cms'),(105,'Vajillero alto > 90',240.00,55.00,180.00,24,11,'240 cms');
/*!40000 ALTER TABLE `mueble_mueble` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mueble_tipomueble`
--

DROP TABLE IF EXISTS `mueble_tipomueble`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mueble_tipomueble` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_mueble` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tipo_mueble` (`tipo_mueble`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mueble_tipomueble`
--

LOCK TABLES `mueble_tipomueble` WRITE;
/*!40000 ALTER TABLE `mueble_tipomueble` DISABLE KEYS */;
INSERT INTO `mueble_tipomueble` VALUES (16,'Adornos - Otros'),(8,'Adornos de pared'),(15,'Adornos de piso'),(10,'Armarios y roperos'),(20,'Bulto'),(3,'Camas'),(17,'Divisores de área'),(6,'Electrodomésticos'),(11,'Estanterias y gavinetes'),(19,'Gimnasio'),(18,'Jardinería'),(4,'Línea blanca'),(1,'Mesas y mesones'),(13,'Muebles de cocina'),(9,'Percheros y colgadores'),(12,'Sillas y sillones'),(14,'Sobre pisos'),(5,'Sofás');
/*!40000 ALTER TABLE `mueble_tipomueble` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'db_cotizacionexpress'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-06-14 14:59:13
