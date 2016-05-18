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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add Cliente',7,'add_cliente'),(20,'Can change Cliente',7,'change_cliente'),(21,'Can delete Cliente',7,'delete_cliente'),(22,'Can add Contenedor',8,'add_contenedor'),(23,'Can change Contenedor',8,'change_contenedor'),(24,'Can delete Contenedor',8,'delete_contenedor'),(25,'Can add Cotización',9,'add_cotizacion'),(26,'Can change Cotización',9,'change_cotizacion'),(27,'Can delete Cotización',9,'delete_cotizacion'),(28,'Can add mueble de la cotización',10,'add_cotizacionmueble'),(29,'Can change mueble de la cotización',10,'change_cotizacionmueble'),(30,'Can delete mueble de la cotización',10,'delete_cotizacionmueble'),(31,'Can add Contenedor de la cotización',11,'add_cotizacioncontenedor'),(32,'Can change Contenedor de la cotización',11,'change_cotizacioncontenedor'),(33,'Can delete Contenedor de la cotización',11,'delete_cotizacioncontenedor'),(34,'Can add Mueble',12,'add_mueble'),(35,'Can change Mueble',12,'change_mueble'),(36,'Can delete Mueble',12,'delete_mueble'),(37,'Can add cors model',13,'add_corsmodel'),(38,'Can change cors model',13,'change_corsmodel'),(39,'Can delete cors model',13,'delete_corsmodel');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$20000$MoMlrVQvhAuP$uqWya0ZcRLnMo776ofj9pev4zE/06yv0k8AF/qr4FYo=','2016-05-17 19:39:44.833475',1,'admin','','','yusnelvy@gmail.com',1,1,'2016-05-17 19:39:25.202580');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente_cliente`
--

LOCK TABLES `cliente_cliente` WRITE;
/*!40000 ALTER TABLE `cliente_cliente` DISABLE KEYS */;
INSERT INTO `cliente_cliente` VALUES (1,'Cliente express','','','','activo');
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
  `siglas` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `unidad` int(11) NOT NULL,
  `punto` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contenedor_contenedor`
--

LOCK TABLES `contenedor_contenedor` WRITE;
/*!40000 ALTER TABLE `contenedor_contenedor` DISABLE KEYS */;
INSERT INTO `contenedor_contenedor` VALUES (1,'Caja 60x36x48','CA',1,1),(2,'Caja 60x36x48','CA',3,3),(3,'Caja 60x36x48','CA',5,5),(4,'Caja 60x36x48','CA',10,10),(5,'Caja 60x36x48','CA',20,20),(6,'Caja 60x36x48','CA',30,30),(7,'Caja 60x36x48','CA',40,40),(8,'Caja 60x36x48','CA',50,50),(9,'Canasto','CN',1,1),(10,'Canasto','CN',3,4),(11,'Canasto','CN',5,6),(12,'Canasto','CN',10,13),(13,'Canasto','CN',20,25),(14,'Canasto','CN',30,40),(15,'Canasto','CN',40,50),(16,'Canasto','CN',50,60),(17,'Canasto PC','PC',1,1),(18,'Canasto PC','PC',3,4),(19,'Canasto PC','PC',5,7),(20,'Canasto PC','PC',10,15),(21,'Canasto PC','PC',20,30),(22,'Canasto PC','PC',30,40),(23,'Canasto PC','PC',40,60),(24,'Canasto PC','PC',50,70),(25,'Bolsa / Bulto','BL',1,2),(26,'Bolsa / Bulto','BL',3,6),(27,'Bolsa / Bulto','BL',5,10),(28,'Bolsa / Bulto','BL',10,20),(29,'Bolsa / Bulto','BL',20,40),(30,'Bolsa / Bulto','BL',30,65),(31,'Bolsa / Bulto','BL',40,90),(32,'Bolsa / Bulto','BL',50,100),(33,'Ropero','RO',1,5),(34,'Ropero','RO',3,15),(35,'Ropero','RO',5,25),(36,'Ropero','RO',10,50),(37,'Ropero','RO',20,90),(38,'Ropero','RO',30,140),(39,'Ropero','RO',40,180),(40,'Ropero','RO',50,230);
/*!40000 ALTER TABLE `contenedor_contenedor` ENABLE KEYS */;
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
  `fecha_de_cotizacion` datetime(6) NOT NULL,
  `total_puntos` int(11) NOT NULL,
  `total_m3` decimal(7,2) NOT NULL,
  `estado` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `cliente_id` int(11) DEFAULT NULL,
  `responsable_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cotizacionexpress_coti_cliente_id_2398059a_fk_cliente_cliente_id` (`cliente_id`),
  KEY `cotizacionexpress_cotizacio_responsable_id_b20a4_fk_auth_user_id` (`responsable_id`),
  CONSTRAINT `cotizacionexpress_coti_cliente_id_2398059a_fk_cliente_cliente_id` FOREIGN KEY (`cliente_id`) REFERENCES `cliente_cliente` (`id`),
  CONSTRAINT `cotizacionexpress_cotizacio_responsable_id_b20a4_fk_auth_user_id` FOREIGN KEY (`responsable_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cotizacionexpress_cotizacion`
--

LOCK TABLES `cotizacionexpress_cotizacion` WRITE;
/*!40000 ALTER TABLE `cotizacionexpress_cotizacion` DISABLE KEYS */;
INSERT INTO `cotizacionexpress_cotizacion` VALUES (1,'ce-0001','2016-05-17 21:07:32.211824',0,0.00,'activo',NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cotizacionexpress_cotizacioncontenedor`
--

LOCK TABLES `cotizacionexpress_cotizacioncontenedor` WRITE;
/*!40000 ALTER TABLE `cotizacionexpress_cotizacioncontenedor` DISABLE KEYS */;
INSERT INTO `cotizacionexpress_cotizacioncontenedor` VALUES (1,'Canasto',11,14,'activo',1);
/*!40000 ALTER TABLE `cotizacionexpress_cotizacioncontenedor` ENABLE KEYS */;
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
  PRIMARY KEY (`id`),
  KEY `cotiza_cotizacion_id_59215a39_fk_cotizacionexpress_cotizacion_id` (`cotizacion_id`),
  CONSTRAINT `cotiza_cotizacion_id_59215a39_fk_cotizacionexpress_cotizacion_id` FOREIGN KEY (`cotizacion_id`) REFERENCES `cotizacionexpress_cotizacion` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cotizacionexpress_cotizacionmueble`
--

LOCK TABLES `cotizacionexpress_cotizacionmueble` WRITE;
/*!40000 ALTER TABLE `cotizacionexpress_cotizacionmueble` DISABLE KEYS */;
INSERT INTO `cotizacionexpress_cotizacionmueble` VALUES (1,'Cama 1 plaza','',90.00,198.00,102.00,1,13,'activo',1,0);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(7,'cliente','cliente'),(8,'contenedor','contenedor'),(5,'contenttypes','contenttype'),(13,'corsheaders','corsmodel'),(9,'cotizacionexpress','cotizacion'),(11,'cotizacionexpress','cotizacioncontenedor'),(10,'cotizacionexpress','cotizacionmueble'),(12,'mueble','mueble'),(6,'sessions','session');
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2016-05-17 19:30:20.592936'),(2,'auth','0001_initial','2016-05-17 19:30:30.844185'),(3,'admin','0001_initial','2016-05-17 19:30:34.181412'),(4,'contenttypes','0002_remove_content_type_name','2016-05-17 19:30:35.881370'),(5,'auth','0002_alter_permission_name_max_length','2016-05-17 19:30:36.823965'),(6,'auth','0003_alter_user_email_max_length','2016-05-17 19:30:37.969229'),(7,'auth','0004_alter_user_username_opts','2016-05-17 19:30:38.058011'),(8,'auth','0005_alter_user_last_login_null','2016-05-17 19:30:38.804492'),(9,'auth','0006_require_contenttypes_0002','2016-05-17 19:30:38.881275'),(10,'cliente','0001_initial','2016-05-17 19:30:39.397887'),(11,'contenedor','0001_initial','2016-05-17 19:30:39.902001'),(12,'cotizacionexpress','0001_initial','2016-05-17 19:30:44.406362'),(13,'sessions','0001_initial','2016-05-17 19:30:45.487782'),(14,'mueble','0001_initial','2016-05-17 20:19:10.995888'),(15,'contenedor','0002_auto_20160517_1624','2016-05-17 20:54:42.821926'),(16,'cotizacionexpress','0002_auto_20160518_1349','2016-05-18 18:19:14.438926');
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
INSERT INTO `django_session` VALUES ('g4g3spfskd0k9yk34qabjd7km03gb1ew','N2NmMjE3MTViMjNiMGMyYWU3NDBlMDhlMDY5ZTBlMmVlMDJmNjQ3ODp7Il9hdXRoX3VzZXJfaGFzaCI6ImQyZTJiZTAwMTdmMzE2YjFiNjgzNjEzZGI1NTJkMmIwZjVlZjkxMTkiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=','2016-05-31 19:39:44.964499');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
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
  `predefinido` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `descripcion` (`descripcion`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mueble_mueble`
--

LOCK TABLES `mueble_mueble` WRITE;
/*!40000 ALTER TABLE `mueble_mueble` DISABLE KEYS */;
INSERT INTO `mueble_mueble` VALUES (1,'Biblioteca 40 cms',40.00,25.00,180.00,2,1),(2,'Biblioteca 60 cms',60.00,25.00,180.00,6,1),(3,'Biblioteca 90 cms',90.00,25.00,180.00,8,1),(4,'Biblioteca 120 cms',120.00,25.00,180.00,10,1),(5,'Biblioteca 140 cms',120.00,25.00,180.00,12,1),(6,'Cama 1 plaza',90.00,198.00,102.00,13,1),(7,'Cama 1 1/2 plazas',90.00,198.00,110.00,15,1),(8,'Cama 2 plazas',200.00,150.00,120.00,23,1),(9,'Cama 2 1/2 plazas',250.00,150.00,120.00,30,1),(10,'Cama litera',90.00,230.00,155.00,25,1),(11,'Cómoda 90 cms',90.00,120.00,47.00,4,1),(12,'Cómoda 120 cms',120.00,120.00,47.00,5,1),(13,'Cómoda 150 cms',150.00,120.00,47.00,7,1),(14,'Cómoda 180 cms',180.00,120.00,47.00,8,1),(15,'Cómoda 210 cms',210.00,120.00,47.00,10,1);
/*!40000 ALTER TABLE `mueble_mueble` ENABLE KEYS */;
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

-- Dump completed on 2016-05-18 13:50:25
