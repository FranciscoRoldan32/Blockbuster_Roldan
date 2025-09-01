-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: blockbuster_roldan
-- ------------------------------------------------------
-- Server version	8.0.42

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `actores`
--

DROP TABLE IF EXISTS `actores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actores` (
  `id_actor` int NOT NULL AUTO_INCREMENT,
  `nombre_actor` varchar(50) NOT NULL,
  PRIMARY KEY (`id_actor`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actores`
--

LOCK TABLES `actores` WRITE;
/*!40000 ALTER TABLE `actores` DISABLE KEYS */;
INSERT INTO `actores` VALUES (1,'Arnold Schwarzenegger'),(2,'Sam Neill'),(3,'Tom Hanks'),(4,'Jim Carrey'),(5,'Al Pacino'),(6,'Viggo Mortensen'),(7,'Vera Farmiga'),(8,'Ryan Gosling'),(9,'Brad Pitt'),(10,'Leonardo Di Caprio'),(11,'Matthew McConaughey'),(12,'Robert De Niro'),(13,'Clint Eastwood');
/*!40000 ALTER TABLE `actores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genero`
--

DROP TABLE IF EXISTS `genero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genero` (
  `id_genero` int NOT NULL AUTO_INCREMENT,
  `nombre_genero` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_genero`),
  UNIQUE KEY `nombre_genero` (`nombre_genero`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genero`
--

LOCK TABLES `genero` WRITE;
/*!40000 ALTER TABLE `genero` DISABLE KEYS */;
INSERT INTO `genero` VALUES (1,'Acción'),(3,'Animación'),(2,'Aventura'),(11,'Ciencia Ficción'),(4,'Comedia'),(5,'Crimen'),(13,'Deporte'),(6,'Drama'),(7,'Fantasía'),(14,'Guerra'),(8,'Horror'),(9,'Misterio'),(10,'Romance'),(12,'Thriller'),(15,'Western');
/*!40000 ALTER TABLE `genero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `peliculas`
--

DROP TABLE IF EXISTS `peliculas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `peliculas` (
  `id_pelicula` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) NOT NULL,
  `genero` int DEFAULT NULL,
  `anio` year DEFAULT NULL,
  `tiempo` int DEFAULT NULL,
  PRIMARY KEY (`id_pelicula`),
  KEY `fk_peliculas_generos` (`genero`),
  CONSTRAINT `fk_peliculas_generos` FOREIGN KEY (`genero`) REFERENCES `genero` (`id_genero`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `peliculas`
--

LOCK TABLES `peliculas` WRITE;
/*!40000 ALTER TABLE `peliculas` DISABLE KEYS */;
INSERT INTO `peliculas` VALUES (17,'Terminator 2: Judgment Day',1,1991,137),(18,'Jurassic Park',2,1993,127),(19,'Toy Story',3,1995,81),(20,'The Mask',4,1994,101),(21,'The Godfather',5,1972,175),(22,'Forrest Gump',6,1994,142),(23,'The Lord of the Rings: The Fellowship of the Ring',7,2001,178),(24,'The Conjuring',8,2013,112),(25,'La La Land',10,2016,128),(26,'Se7en',9,1995,127),(27,'Titanic',10,1997,195),(28,'Interstellar',11,2014,169),(29,'Inception',11,2010,148),(30,'Raging Bull',13,1980,129),(31,'Saving Private Ryan',14,1998,169),(32,'The Good, the Bad and the Ugly',15,1966,178);
/*!40000 ALTER TABLE `peliculas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `peliculas_con_genero`
--

DROP TABLE IF EXISTS `peliculas_con_genero`;
/*!50001 DROP VIEW IF EXISTS `peliculas_con_genero`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `peliculas_con_genero` AS SELECT 
 1 AS `titulo`,
 1 AS `genero`,
 1 AS `anio`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `peliculas_mas_vistas`
--

DROP TABLE IF EXISTS `peliculas_mas_vistas`;
/*!50001 DROP VIEW IF EXISTS `peliculas_mas_vistas`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `peliculas_mas_vistas` AS SELECT 
 1 AS `id_pelicula`,
 1 AS `titulo`,
 1 AS `genero`,
 1 AS `total_reproducciones`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `peliculas_y_actores`
--

DROP TABLE IF EXISTS `peliculas_y_actores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `peliculas_y_actores` (
  `id_actor` int DEFAULT NULL,
  `id_pelicula` int DEFAULT NULL,
  KEY `id_actor` (`id_actor`),
  KEY `id_pelicula` (`id_pelicula`),
  CONSTRAINT `peliculas_y_actores_ibfk_1` FOREIGN KEY (`id_actor`) REFERENCES `actores` (`id_actor`),
  CONSTRAINT `peliculas_y_actores_ibfk_2` FOREIGN KEY (`id_pelicula`) REFERENCES `peliculas` (`id_pelicula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `peliculas_y_actores`
--

LOCK TABLES `peliculas_y_actores` WRITE;
/*!40000 ALTER TABLE `peliculas_y_actores` DISABLE KEYS */;
INSERT INTO `peliculas_y_actores` VALUES (1,17),(2,18),(3,19),(3,22),(3,31),(4,20),(5,21),(6,23),(7,24),(8,25),(9,26),(10,27),(11,28),(11,29),(12,30),(13,32);
/*!40000 ALTER TABLE `peliculas_y_actores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reproducciones`
--

DROP TABLE IF EXISTS `reproducciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reproducciones` (
  `id_reproduccion` int NOT NULL AUTO_INCREMENT,
  `id_usuario` int DEFAULT NULL,
  `id_pelicula` int DEFAULT NULL,
  `fecha_reproduccion` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_reproduccion`),
  KEY `id_usuario` (`id_usuario`),
  KEY `id_pelicula` (`id_pelicula`),
  CONSTRAINT `reproducciones_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`),
  CONSTRAINT `reproducciones_ibfk_2` FOREIGN KEY (`id_pelicula`) REFERENCES `peliculas` (`id_pelicula`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reproducciones`
--

LOCK TABLES `reproducciones` WRITE;
/*!40000 ALTER TABLE `reproducciones` DISABLE KEYS */;
INSERT INTO `reproducciones` VALUES (1,1,17,'2023-01-15 00:00:00'),(2,2,18,'2023-02-20 00:00:00'),(3,3,19,'2023-03-10 00:00:00'),(4,4,20,'2023-04-05 00:00:00'),(5,5,21,'2023-05-12 00:00:00'),(6,6,22,'2023-06-18 00:00:00'),(7,1,23,'2023-07-25 00:00:00'),(8,2,24,'2023-08-30 00:00:00'),(9,3,25,'2023-09-14 00:00:00'),(10,4,26,'2023-10-21 00:00:00'),(11,5,27,'2023-11-03 00:00:00'),(12,6,28,'2023-12-19 00:00:00'),(13,1,29,'2024-01-08 00:00:00'),(14,2,30,'2024-02-17 00:00:00'),(15,3,31,'2024-03-22 00:00:00'),(16,4,32,'2024-04-09 00:00:00'),(17,5,17,'2024-05-15 00:00:00'),(18,6,18,'2024-06-28 00:00:00'),(19,1,19,'2024-07-13 00:00:00'),(20,2,27,'2024-08-05 00:00:00'),(21,3,28,'2024-09-11 00:00:00'),(22,4,29,'2024-10-23 00:00:00'),(23,5,30,'2024-11-07 00:00:00'),(24,6,31,'2024-12-01 00:00:00'),(25,1,32,'2024-12-20 00:00:00'),(26,1,17,'2024-09-01 00:00:00'),(27,1,17,'2024-09-01 00:00:00');
/*!40000 ALTER TABLE `reproducciones` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `validacion_reproduccion` BEFORE INSERT ON `reproducciones` FOR EACH ROW BEGIN
    IF (NEW.id_usuario IS NULL OR NEW.id_pelicula IS NULL) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Usuario o película inválido';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id_usuario` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`id_usuario`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Lucas','Fernández','lucas.fernandez@mail.com'),(2,'María','Gómez','maria.gomez@mail.com'),(3,'Julián','Martínez','julian.martinez@mail.com'),(4,'Carla','López','carla.lopez@mail.com'),(5,'Diego','Ramírez','diego.ramirez@mail.com'),(6,'Sofía','Pérez','sofia.perez@mail.com');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'blockbuster_roldan'
--

--
-- Dumping routines for database 'blockbuster_roldan'
--
/*!50003 DROP FUNCTION IF EXISTS `peliculas_por_actor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `peliculas_por_actor`(nombre_actor VARCHAR(100)) RETURNS int
    DETERMINISTIC
BEGIN
    DECLARE total INT;

    SELECT COUNT(DISTINCT pa.id_pelicula)
    INTO total
    FROM peliculas_y_actores pa
    JOIN actores a ON pa.id_actor = a.id_actor
    WHERE a.nombre_actor = nombre_actor;

    RETURN total;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `registrar_reproduccion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `registrar_reproduccion`(
    IN p_id_usuario INT,
    IN p_id_pelicula INT,
    IN p_fecha DATE
)
BEGIN
    INSERT INTO reproducciones (id_usuario, id_pelicula, fecha_reproduccion)
    VALUES (p_id_usuario, p_id_pelicula, p_fecha);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `peliculas_con_genero`
--

/*!50001 DROP VIEW IF EXISTS `peliculas_con_genero`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `peliculas_con_genero` AS select `p`.`titulo` AS `titulo`,`g`.`nombre_genero` AS `genero`,`p`.`anio` AS `anio` from (`peliculas` `p` join `genero` `g` on((`p`.`genero` = `g`.`id_genero`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `peliculas_mas_vistas`
--

/*!50001 DROP VIEW IF EXISTS `peliculas_mas_vistas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `peliculas_mas_vistas` AS select `p`.`id_pelicula` AS `id_pelicula`,`p`.`titulo` AS `titulo`,`g`.`nombre_genero` AS `genero`,count(`r`.`id_reproduccion`) AS `total_reproducciones` from ((`reproducciones` `r` join `peliculas` `p` on((`r`.`id_pelicula` = `p`.`id_pelicula`))) join `genero` `g` on((`p`.`genero` = `g`.`id_genero`))) group by `p`.`id_pelicula`,`p`.`titulo`,`g`.`nombre_genero` order by `total_reproducciones` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-01  0:50:06
