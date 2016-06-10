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

-- Dump completed on 2016-06-10 13:42:34
