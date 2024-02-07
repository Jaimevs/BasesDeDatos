CREATE DATABASE  IF NOT EXISTS `bd_hospital_220100` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bd_hospital_220100`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: bd_hospital_220100
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `tb_usuarios`
--

DROP TABLE IF EXISTS `tb_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_usuarios` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `Persona_ID` int unsigned NOT NULL,
  `username` varchar(80) NOT NULL,
  `password_not_encrypted` varchar(45) NOT NULL,
  `password_MD5` varchar(45) DEFAULT NULL,
  `password_AES_Simetrico` blob,
  `password_AES_Asimetrico` blob,
  `password_SHA1` varchar(250) DEFAULT NULL,
  `password_SHA2` varchar(250) DEFAULT NULL,
  `estatus` bit(1) NOT NULL DEFAULT b'1',
  `Fecha_Creacion` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Fecha_Actualizacion` datetime DEFAULT NULL,
  `Ultima_Conexion` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`,`Fecha_Creacion`),
  KEY `fk_personaIDpasswd` (`Persona_ID`),
  CONSTRAINT `fk_personaIDpasswd` FOREIGN KEY (`Persona_ID`) REFERENCES `tbb_personas` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_usuarios`
--

LOCK TABLES `tb_usuarios` WRITE;
/*!40000 ALTER TABLE `tb_usuarios` DISABLE KEYS */;
INSERT INTO `tb_usuarios` VALUES (1,1,'Jaime','4321','d93591bdf7860e1e4ee2fca799911215',_binary '\Ú;¡w\Ì\á\Í&Ü«w©¶R\í',_binary '\ç¡Ïœ%Ri!{şrœlu','d5f12e53a182c062b6bf30c1445153faff12269a','fe2592b42a727e977f055947385b709cc82b16b9a87f88c6abf3900d65d0cdc3',_binary '','2023-08-14 15:12:54',NULL,NULL),(2,2,'\'Alejandro\'','4321','d93591bdf7860e1e4ee2fca799911215',_binary '\Ú;¡w\Ì\á\Í&Ü«w©¶R\í',_binary 'ƒõ‚³S\Åc)‰fÕ”^','d5f12e53a182c062b6bf30c1445153faff12269a','fe2592b42a727e977f055947385b709cc82b16b9a87f88c6abf3900d65d0cdc3',_binary '','2023-08-14 15:12:56',NULL,NULL),(3,3,'Neftali','4321','d93591bdf7860e1e4ee2fca799911215',_binary '\Ú;¡w\Ì\á\Í&Ü«w©¶R\í',_binary '1DÚ¤ô0÷\×0\á>»6','d5f12e53a182c062b6bf30c1445153faff12269a','fe2592b42a727e977f055947385b709cc82b16b9a87f88c6abf3900d65d0cdc3',_binary '','2023-08-14 15:12:57',NULL,NULL),(4,4,'Mariano','041229','fd7b4ecd93a140fe14fad0a8b063bf13',_binary '\Ú;¡w\Ì\á\Í&Ü«w©¶R\í',_binary '}ŒŞ®Ô–[¿.ZÅT–\Æ','d5f12e53a182c062b6bf30c1445153faff12269a','fe2592b42a727e977f055947385b709cc82b16b9a87f88c6abf3900d65d0cdc3',_binary '','2023-08-14 15:12:59',NULL,NULL),(5,5,'Octavio','nw29t','a94be4855c2cdc4041bbf88f34427be9',_binary '!&\Ë\Î (Úµ²¤~\Şô\Ş)',_binary 'g|\\w}\Ø8UŸ\ï\ër’·\Õ','fe54aa02f716671e759b26fffa4c5a20edd2087a','6f01977664713364eba93c06d1d0e49db6d4359b71b003847e14cec40429a30d',_binary '','2023-08-14 15:13:00',NULL,NULL),(6,6,'Marti\'','j09kw','67858aa83767d3e1f7ff1e75946377c5',_binary 'Eq\Ìkó\é\0\ë†\Ú9\ë',_binary 'x•³¤²\ïš6­›0\é','9933a6a407e57e1d81048e2784399dd366a72af6','fc97eb9f01574d8615a6f74a96f116b6f398c119730ab85dbe584fc4aac2c327',_binary '','2023-08-14 15:13:01',NULL,NULL),(7,7,'Leslie','pos109','c21717dd7399c0e4e50eb198d8e05927',_binary 'Kt\ÉÉ€\"q\åGµ\Ğ\Ì\èJ',_binary '\æ\ä \rb¤ş\ï\Ô%÷°®&','7d24e9b3f439fdf76b4f58377f6c23e7ee9e8f62','eee930fe0057b0ac40407c631f2a5bae439942ae2fdd3088c974fbf092c960d7',_binary '','2023-08-14 15:13:03',NULL,NULL),(8,8,'Yulissa','r02s9s','06305b7e8887dca05bbe00405539bbe0',_binary 'Í¶\Ê\"$\Úx»)\Éa±«$}',_binary '‡\İs;?´#M§Ù¢W~X\á','48f26badbc1eb930faff7c6b90630579073ebfaa','646ec859670eaef76bc7645f938a1b22df50e2b664191697226852f343bba622',_binary '','2023-08-14 15:13:23',NULL,NULL),(9,9,'Carolina','022124','5acf9c52dbab7f864923a38fda0b9df1',_binary '\Äÿ‰F/eÁ\İ\ìşU\Î\Ú:',_binary '”»\Éğ#\ãŞ\Ã\ÖT\Ó','106f30555222f402633acf69c48b55fe1bce2eae','463576f8f350101d387d55cb5869c1b6760d4d73d25b101850f7ccdddec77fb4',_binary '','2023-08-14 15:13:24',NULL,NULL),(10,10,'Alejandro','i230las','281b5754399943a184d77084dfc69579',_binary 'o<™N‰¼\Ù-óq\ë\r\Ì\Û\á',_binary '\Õ\ZÀ^‘‰O\Ìyb\Âda(','6917e3a6daa4481e5e841ae6c8d7daac1f64a067','a00eaf7d169e8fb6c035837b0683073f2f5b9eb7ce07a3124ce677f15ab17aea',_binary '','2023-08-14 15:13:49',NULL,NULL);
/*!40000 ALTER TABLE `tb_usuarios` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tb_usuarios_BEFORE_INSERT` BEFORE INSERT ON `tb_usuarios` FOR EACH ROW BEGIN
	DECLARE DYNAMIC_AES_KEY VARCHAR(50) DEFAULT CONCAT("BDHOSPITAL$220100/", new.persona_id, "#Nefta", SUBSTRING(NOW(),-2,2) );
    
     SET new.PASSWORD_AES_Asimetrico = aes_encrypt(NEW.PASSWORD_NOT_ENCRYPTED, DYNAMIC_AES_KEY);
    
    IF (SELECT COUNT(*) FROM hospital_security_220100.tb_keyring WHERE user_id = new.persona_ID) THEN
		UPDATE hospital_security_220100.tb_keyring SET current_key = DYNAMIC_AES_KEY WHERE user_id = NEW.persona_id;
	ELSE
		INSERT INTO hospital_security_220100.tb_keyring VALUES ( new.Persona_ID, DYNAMIC_AES_KEY);
    END IF;
    
   
    
    
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tb_usuarios_BEFORE_UPDATE` BEFORE UPDATE ON `tb_usuarios` FOR EACH ROW BEGIN
		DECLARE DYNAMIC_AES_KEY VARCHAR(50) DEFAULT CONCAT("BDHOSPITAL$220100/", new.persona_id, "#Nefta", SUBSTRING(NOW(),-2,2) );
    
     SET new.PASSWORD_AES_Asimetrico = aes_encrypt(NEW.PASSWORD_NOT_ENCRYPTED, DYNAMIC_AES_KEY);
    
    IF (SELECT COUNT(*) FROM hospital_security_220100.tb_keyring WHERE user_id = new.persona_ID) THEN
		UPDATE hospital_security_220100.tb_keyring SET current_key = DYNAMIC_AES_KEY WHERE user_id = NEW.persona_id;
	ELSE
		INSERT INTO hospital_security_220100.tb_keyring VALUES ( new.Persona_ID, DYNAMIC_AES_KEY);
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `tbb_areas`
--

DROP TABLE IF EXISTS `tbb_areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbb_areas` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  `DescripciÃƒÂ³n` text,
  `Responsable_ID` int unsigned NOT NULL,
  `Area_Superior_ID` int unsigned DEFAULT NULL,
  `Estatus` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`ID`),
  KEY `fk_responsable_id` (`Responsable_ID`),
  KEY `fk_area_superior_id` (`Area_Superior_ID`),
  CONSTRAINT `tbb_areas_ibfk_1` FOREIGN KEY (`Responsable_ID`) REFERENCES `tbb_personal_medico` (`Persona_ID`),
  CONSTRAINT `tbb_areas_ibfk_2` FOREIGN KEY (`Area_Superior_ID`) REFERENCES `tbb_areas` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbb_areas`
--

LOCK TABLES `tbb_areas` WRITE;
/*!40000 ALTER TABLE `tbb_areas` DISABLE KEYS */;
INSERT INTO `tbb_areas` VALUES (2,'Pediatria',NULL,1,NULL,_binary ''),(3,'Psicologia',NULL,2,NULL,_binary ''),(4,'Patologia',NULL,3,NULL,_binary ''),(5,'Traumatologia',NULL,4,NULL,_binary ''),(6,'Rehabilitacion',NULL,5,NULL,_binary ''),(7,'Farmacia',NULL,6,NULL,_binary '');
/*!40000 ALTER TABLE `tbb_areas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbb_citas`
--

DROP TABLE IF EXISTS `tbb_citas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbb_citas` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `Medico_ID` int unsigned NOT NULL,
  `Paciente_ID` int unsigned NOT NULL,
  `Fecha` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Fecha_Registro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Espacio_ID` int unsigned NOT NULL,
  `Estatus` enum('Programada','Cancelada','Atendida') NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `Medico_ID` (`Medico_ID`),
  KEY `Paciente_ID` (`Paciente_ID`),
  KEY `fk_espacio_id` (`Espacio_ID`),
  CONSTRAINT `fk_espacio_id` FOREIGN KEY (`Espacio_ID`) REFERENCES `tbb_espacios` (`ID`),
  CONSTRAINT `tbb_citas_ibfk_1` FOREIGN KEY (`Medico_ID`) REFERENCES `tbb_personal_medico` (`Persona_ID`),
  CONSTRAINT `tbb_citas_ibfk_2` FOREIGN KEY (`Paciente_ID`) REFERENCES `tbb_pacientes` (`Persona_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbb_citas`
--

LOCK TABLES `tbb_citas` WRITE;
/*!40000 ALTER TABLE `tbb_citas` DISABLE KEYS */;
INSERT INTO `tbb_citas` VALUES (1,1,11,'2023-08-12 07:45:28','2023-08-12 07:45:28',18,'Programada'),(2,2,12,'2023-08-12 07:45:28','2023-08-12 07:45:28',19,'Programada'),(3,3,13,'2023-08-12 07:45:28','2023-08-12 07:45:28',20,'Programada'),(4,4,14,'2023-08-12 07:45:28','2023-08-12 07:45:28',21,'Programada'),(5,5,15,'2023-08-12 07:45:28','2023-08-12 07:45:28',22,'Programada'),(6,6,16,'2023-08-12 07:45:28','2023-08-12 07:45:28',23,'Programada'),(7,7,17,'2023-08-12 07:45:28','2023-08-12 07:45:28',24,'Programada'),(8,8,18,'2023-08-12 07:45:28','2023-08-12 07:45:28',24,'Programada'),(9,9,19,'2023-08-12 07:45:28','2023-08-12 07:45:28',24,'Programada'),(10,10,20,'2023-08-12 07:45:28','2023-08-12 07:45:28',24,'Programada');
/*!40000 ALTER TABLE `tbb_citas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbb_diagnosticos`
--

DROP TABLE IF EXISTS `tbb_diagnosticos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbb_diagnosticos` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `Cita_ID` int unsigned NOT NULL,
  `Enfermedad_ID` int unsigned NOT NULL,
  `Observaciones` text NOT NULL,
  `Estatus` bit(1) NOT NULL DEFAULT b'1',
  `Fecha` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `fk_enfermedad` (`Enfermedad_ID`),
  KEY `fk_cita` (`Cita_ID`),
  CONSTRAINT `fk_cita` FOREIGN KEY (`Cita_ID`) REFERENCES `tbb_citas` (`ID`),
  CONSTRAINT `fk_enfermedad` FOREIGN KEY (`Enfermedad_ID`) REFERENCES `tbb_enfermedades` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbb_diagnosticos`
--

LOCK TABLES `tbb_diagnosticos` WRITE;
/*!40000 ALTER TABLE `tbb_diagnosticos` DISABLE KEYS */;
INSERT INTO `tbb_diagnosticos` VALUES (11,1,1,'Peligro',_binary '','2023-08-12 07:47:26'),(12,2,2,'Atencion',_binary '','2023-08-12 07:47:26'),(13,3,3,'Obervacion',_binary '','2023-08-12 07:47:26'),(14,4,4,'Diagnostico',_binary '','2023-08-12 07:47:26'),(15,5,5,'Exposicion Extensa',_binary '','2023-08-12 07:47:26'),(16,6,6,'Observaciones',_binary '','2023-08-12 07:47:26'),(17,7,7,'Observaciones',_binary '','2023-08-12 07:47:26'),(18,8,8,'Observaciones',_binary '','2023-08-12 07:47:26'),(19,9,9,'Observaciones',_binary '','2023-08-12 07:47:26'),(20,10,10,'Observaciones',_binary '','2023-08-12 07:47:26');
/*!40000 ALTER TABLE `tbb_diagnosticos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbb_enfermedades`
--

DROP TABLE IF EXISTS `tbb_enfermedades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbb_enfermedades` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  `Tipo` enum('Degenerativa','CrÃƒÂ³nica') NOT NULL,
  `Descripcion` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbb_enfermedades`
--

LOCK TABLES `tbb_enfermedades` WRITE;
/*!40000 ALTER TABLE `tbb_enfermedades` DISABLE KEYS */;
INSERT INTO `tbb_enfermedades` VALUES (1,'COVID','CrÃƒÂ³nica','Enfermedad Mala'),(2,'Lepra','CrÃƒÂ³nica','Enfermedad Mala'),(3,'Evola','CrÃƒÂ³nica','Enfermedad Mala'),(4,'VIH','Degenerativa','Enfermedad Mala'),(5,'Tos','CrÃƒÂ³nica','Enfermedad Mala'),(6,'Gripa','CrÃƒÂ³nica','Enfermedad Mala'),(7,'Fiebre','CrÃƒÂ³nica','Enfermedad Mala'),(8,'Infeccion','CrÃƒÂ³nica','Enfermedad Mala'),(9,'Esclerosis','Degenerativa','Enfermedad Mala'),(10,'Hernia','Degenerativa','Enfermedad Mala');
/*!40000 ALTER TABLE `tbb_enfermedades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbb_espacios`
--

DROP TABLE IF EXISTS `tbb_espacios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbb_espacios` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  `Tipo` enum('Edificio','Consultorio','Sala de OperaciÃƒÂ³n','Cunero','Laboratorio','Sala de Espera','Morge','Oficina Administrativa','Farmacia','HabitaciÃƒÂ³n','Estacionamiento','Bodega') NOT NULL DEFAULT 'Edificio',
  `Area_ID` int unsigned NOT NULL,
  `Estatus` enum('Disponible','No Disponible') NOT NULL,
  `Espacio_Padre_ID` int unsigned DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_area_id` (`Area_ID`),
  KEY `fk_espacio_id` (`Espacio_Padre_ID`),
  CONSTRAINT `tbb_espacios_ibfk_1` FOREIGN KEY (`Area_ID`) REFERENCES `tbb_areas` (`ID`),
  CONSTRAINT `tbb_espacios_ibfk_2` FOREIGN KEY (`Espacio_Padre_ID`) REFERENCES `tbb_espacios` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbb_espacios`
--

LOCK TABLES `tbb_espacios` WRITE;
/*!40000 ALTER TABLE `tbb_espacios` DISABLE KEYS */;
INSERT INTO `tbb_espacios` VALUES (18,'Lab1','Laboratorio',2,'Disponible',NULL),(19,'Lab2','Laboratorio',3,'Disponible',NULL),(20,'Lab3','Laboratorio',4,'Disponible',NULL),(21,'Sala1','Sala de OperaciÃƒÂ³n',5,'Disponible',NULL),(22,'Sala2','Sala de OperaciÃƒÂ³n',6,'Disponible',NULL),(23,'Sala3','Sala de OperaciÃƒÂ³n',7,'Disponible',NULL),(24,'Sala4','Sala de OperaciÃƒÂ³n',7,'Disponible',NULL);
/*!40000 ALTER TABLE `tbb_espacios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbb_pacientes`
--

DROP TABLE IF EXISTS `tbb_pacientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbb_pacientes` (
  `Persona_ID` int unsigned NOT NULL,
  `Numero_Expediente` varchar(20) NOT NULL,
  `Tipo_Sangre` enum('O+','O-','A+','A-','B+','B-','AB-','AB+') NOT NULL,
  `NSS` varchar(13) DEFAULT NULL,
  `Estatus` enum('Vivo','Finado') NOT NULL DEFAULT 'Vivo',
  `Altura` decimal(3,2) NOT NULL,
  `Peso` decimal(5,2) NOT NULL,
  UNIQUE KEY `Numero_Expediente` (`Numero_Expediente`),
  KEY `fk_persona_id` (`Persona_ID`),
  CONSTRAINT `fk_persona_id` FOREIGN KEY (`Persona_ID`) REFERENCES `tbb_personas` (`ID`),
  CONSTRAINT `altura_valida` CHECK (((`Altura` > 0.24) and (`Altura` < 2.51))),
  CONSTRAINT `peso_valido` CHECK (((`Peso` > 0.21) and (`Peso` < 594)))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbb_pacientes`
--

LOCK TABLES `tbb_pacientes` WRITE;
/*!40000 ALTER TABLE `tbb_pacientes` DISABLE KEYS */;
INSERT INTO `tbb_pacientes` VALUES (15,'123451','A-',NULL,'Vivo',1.71,88.21),(20,'1234512','A-',NULL,'Vivo',1.55,58.21),(16,'123452','AB-',NULL,'Vivo',1.41,48.21),(17,'123453','B+',NULL,'Vivo',1.78,98.21),(18,'123454','B-',NULL,'Vivo',1.68,88.21),(19,'123455','B+',NULL,'Vivo',2.01,68.21),(11,'123456','O+',NULL,'Vivo',1.52,58.21),(12,'123457','A+',NULL,'Vivo',1.92,58.21),(13,'123458','AB+',NULL,'Vivo',2.00,68.21),(14,'123459','B-',NULL,'Vivo',1.60,78.21);
/*!40000 ALTER TABLE `tbb_pacientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbb_personal_medico`
--

DROP TABLE IF EXISTS `tbb_personal_medico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbb_personal_medico` (
  `Persona_ID` int unsigned NOT NULL,
  `Cedula_Profesional` varchar(20) NOT NULL,
  `Especialidad` varchar(80) NOT NULL,
  `Tipo` enum('MÃƒÂ©dico','Auxiliar de EnfermerÃƒÂ­a','Administrativo','ParamÃƒÂ©dico') NOT NULL,
  `Area_Adscripcion` int unsigned DEFAULT NULL,
  `Fecha_Contratacion` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  KEY `fk_persona_id2` (`Persona_ID`),
  KEY `fk_area_adscripcion` (`Area_Adscripcion`),
  CONSTRAINT `fk_area_adscripcion` FOREIGN KEY (`Area_Adscripcion`) REFERENCES `tbb_areas` (`ID`),
  CONSTRAINT `fk_persona_id2` FOREIGN KEY (`Persona_ID`) REFERENCES `tbb_personas` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbb_personal_medico`
--

LOCK TABLES `tbb_personal_medico` WRITE;
/*!40000 ALTER TABLE `tbb_personal_medico` DISABLE KEYS */;
INSERT INTO `tbb_personal_medico` VALUES (1,'123456','General','MÃƒÂ©dico',NULL,'2023-08-10 08:20:21'),(2,'123456','General','MÃƒÂ©dico',NULL,'2023-08-10 08:37:18'),(2,'123456','Tecnico','Auxiliar de EnfermerÃƒÂ­a',NULL,'2023-08-10 08:42:52'),(3,'123456','Pasante','Auxiliar de EnfermerÃƒÂ­a',NULL,'2023-08-10 08:42:53'),(4,'123456','Otorrinolarringologo','MÃƒÂ©dico',NULL,'2023-08-10 08:42:54'),(5,'123456','Pediatra','MÃƒÂ©dico',NULL,'2023-08-10 08:42:55'),(6,'123456','Gastrointerologo','MÃƒÂ©dico',NULL,'2023-08-10 08:43:17'),(7,'123456','General','MÃƒÂ©dico',NULL,'2023-08-10 08:43:18'),(8,'123456','Conductor','ParamÃƒÂ©dico',NULL,'2023-08-10 08:43:19'),(9,'123456','Auxiliar','ParamÃƒÂ©dico',NULL,'2023-08-10 08:43:20'),(9,'123456','Auxiliar','ParamÃƒÂ©dico',NULL,'2023-08-10 08:43:21'),(10,'123456','Auxiliar','ParamÃƒÂ©dico',NULL,'2023-08-10 08:43:22');
/*!40000 ALTER TABLE `tbb_personal_medico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbb_personas`
--

DROP TABLE IF EXISTS `tbb_personas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbb_personas` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(150) NOT NULL,
  `Primer_Apellido` varchar(150) NOT NULL,
  `Segundo_Apellido` varchar(150) NOT NULL,
  `Genero` enum('M','F','N/B') NOT NULL,
  `Fecha_Nacimiento` date NOT NULL,
  `Estatus` bit(1) DEFAULT b'1',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbb_personas`
--

LOCK TABLES `tbb_personas` WRITE;
/*!40000 ALTER TABLE `tbb_personas` DISABLE KEYS */;
INSERT INTO `tbb_personas` VALUES (1,'Jaime','Estrada','Jimenez','F','2003-12-27',_binary ''),(2,'Alejandro','Briones','Romero','M','2003-12-27',_binary ''),(3,'Neftali','Jimene','Sampayo','M','2003-12-27',_binary ''),(4,'Mariano','Fajardo','Islas','M','2003-12-27',_binary ''),(5,'Octavio','Lopez','Martinez','M','2003-12-27',_binary ''),(6,'Martin','Fajardo','Lopez','M','2003-12-27',_binary ''),(7,'Leslie','Juarez','Martinez','F','2003-12-27',_binary ''),(8,'Yulissa','Romero','Briones','M','2003-12-27',_binary ''),(9,'Carolina','Arias','Reyes','M','2003-12-27',_binary ''),(10,'Alejandro','Romero','Islas','F','2003-12-27',_binary ''),(11,'Octavia','Lopez','Lopez','F','2003-12-27',_binary ''),(12,'Marcelo','Lopez','Martinez','M','2003-12-27',_binary ''),(13,'Jose','Vazquez','Ortega','M','2003-12-27',_binary ''),(14,'Abdiel','Rivera','Maya','M','2003-12-27',_binary ''),(15,'Mariano','Rivers','jacob','F','2003-12-27',_binary ''),(16,'Raul','Paraiso','Lopez','F','2003-12-27',_binary ''),(17,'Monica','Karol','G','M','2003-12-27',_binary ''),(18,'Randolfo','Jimenez','Dominguez','F','2003-12-27',_binary ''),(19,'Esau','Vargas','Alvarez','M','2003-12-27',_binary ''),(20,'Jesus','Briones','Santiago','F','2003-12-27',_binary ''),(21,'Carlos','Biones','Juarez','M','2003-12-27',_binary ''),(22,'Diego','League','Legends','M','2003-12-27',_binary ''),(23,'Martin','Romero','Lopez','M','2003-12-27',_binary ''),(24,'Edgar','Cruz','Vargas','M','2003-12-27',_binary ''),(25,'Jaime','Santiago','Vargas','M','2003-12-27',_binary ''),(26,'Karla','Ortega','P','F','2003-12-27',_binary ''),(27,'Ana','del','Kraken','F','2003-12-27',_binary ''),(28,'Paulina','Soto','salgado','F','2003-12-27',_binary ''),(29,'Siquem','Salgado','Dominguez','F','2003-12-27',_binary ''),(30,'Diana','Romero','Vargas','F','2003-12-27',_binary '');
/*!40000 ALTER TABLE `tbb_personas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbb_tratamientos`
--

DROP TABLE IF EXISTS `tbb_tratamientos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbb_tratamientos` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `Cita_ID` int unsigned NOT NULL,
  `Diagnostico_ID` int unsigned NOT NULL,
  `Medicamento_ID` int unsigned NOT NULL,
  `Dosis` decimal(50,2) NOT NULL,
  `Estatus` bit(1) NOT NULL DEFAULT b'1',
  `Indicaciones_Medicas` text,
  `Fecha_Inicio` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Fecha_Fin` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_medicamento_id` (`Medicamento_ID`),
  KEY `fk_cita_ID_idx` (`Cita_ID`),
  KEY `fk_diagnostico_id_idx` (`Diagnostico_ID`),
  CONSTRAINT `fk_cita_ID` FOREIGN KEY (`Cita_ID`) REFERENCES `tbb_citas` (`ID`),
  CONSTRAINT `fk_diagnostico_id` FOREIGN KEY (`Diagnostico_ID`) REFERENCES `tbb_diagnosticos` (`ID`),
  CONSTRAINT `fk_medicamento_id` FOREIGN KEY (`Medicamento_ID`) REFERENCES `tbc_medicamentos` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbb_tratamientos`
--

LOCK TABLES `tbb_tratamientos` WRITE;
/*!40000 ALTER TABLE `tbb_tratamientos` DISABLE KEYS */;
INSERT INTO `tbb_tratamientos` VALUES (15,1,20,5,500.00,_binary '','Una por dÃƒÂ­a','2023-08-12 07:51:20',NULL),(16,2,19,6,0.40,_binary '','Dos por dÃƒÂ­a','2023-08-12 07:51:20',NULL),(17,3,18,7,800.00,_binary '','cada 8 horas','2023-08-12 07:51:20',NULL),(18,4,17,8,500.00,_binary '','cada 12 horas','2023-08-12 07:51:20',NULL),(19,5,16,9,0.50,_binary '','despues de comer','2023-08-12 07:51:20',NULL),(20,6,15,10,0.05,_binary '','Una por dÃƒÂ­a','2023-08-12 07:51:20',NULL),(21,7,14,9,200.00,_binary '','Una por dÃƒÂ­a','2023-08-12 07:51:20',NULL),(22,8,13,8,100.00,_binary '','Una por dÃƒÂ­a','2023-08-12 07:51:20',NULL),(23,9,12,7,150.00,_binary '','Una por dÃƒÂ­a','2023-08-12 07:51:20',NULL),(24,10,11,6,50.00,_binary '','Una por dÃƒÂ­a','2023-08-12 07:51:20',NULL),(25,1,19,10,500.00,_binary '','cada 12 horas','2023-08-12 07:53:07',NULL),(26,1,18,9,250.00,_binary '','Dos por dÃƒÂ­a','2023-08-12 07:53:07',NULL),(27,1,17,8,150.00,_binary '','cada 8 horas','2023-08-12 07:53:07',NULL),(28,1,16,7,0.40,_binary '','despues de comer','2023-08-12 07:53:07',NULL);
/*!40000 ALTER TABLE `tbb_tratamientos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbc_medicamentos`
--

DROP TABLE IF EXISTS `tbc_medicamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbc_medicamentos` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `Nombre_Comercial` varchar(250) NOT NULL,
  `Nombre_Quimico` varchar(250) NOT NULL,
  `Tipo` enum('SuspensiÃƒÂ³n','Capsula','Intravenoso','Intramuscular','IntradÃƒÂ©rmico','Comprimido','Spray') NOT NULL,
  `Estatus` bit(1) NOT NULL DEFAULT b'1',
  `Fecha_Caducacion` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbc_medicamentos`
--

LOCK TABLES `tbc_medicamentos` WRITE;
/*!40000 ALTER TABLE `tbc_medicamentos` DISABLE KEYS */;
INSERT INTO `tbc_medicamentos` VALUES (5,'Omeprazol','Oxido Ribonucleico','Capsula',_binary '','2023-08-11 15:10:35'),(6,'Paracetamol','Acido AcetilAcetilico','Capsula',_binary '','2023-08-11 15:10:35'),(7,'Zimeton','Pancreatina','Capsula',_binary '','2023-08-11 15:10:35'),(8,'Loperamida','Loperamida','Capsula',_binary '','2023-08-11 15:10:35'),(9,'Clembuterol','Creatina','SuspensiÃƒÂ³n',_binary '','2023-08-11 15:10:35'),(10,'LM6','Fenilfrina','Capsula',_binary '','2023-08-11 15:10:35');
/*!40000 ALTER TABLE `tbc_medicamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vw_receta`
--

DROP TABLE IF EXISTS `vw_receta`;
/*!50001 DROP VIEW IF EXISTS `vw_receta`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_receta` AS SELECT 
 1 AS `ID`,
 1 AS `Cita_ID`,
 1 AS `Medico_ID`,
 1 AS `Paciente_ID`,
 1 AS `Medicamento_ID`,
 1 AS `Nombre_Comercial`,
 1 AS `Nombre_Quimico`,
 1 AS `Dosis`,
 1 AS `Indicaciones_Medicas`,
 1 AS `Fecha_Inicio`,
 1 AS `Fecha_Fin`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'bd_hospital_220100'
--

--
-- Dumping routines for database 'bd_hospital_220100'
--

--
-- Final view structure for view `vw_receta`
--

/*!50001 DROP VIEW IF EXISTS `vw_receta`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_receta` AS select 1 AS `ID`,1 AS `Cita_ID`,1 AS `Medico_ID`,1 AS `Paciente_ID`,1 AS `Medicamento_ID`,1 AS `Nombre_Comercial`,1 AS `Nombre_Quimico`,1 AS `Dosis`,1 AS `Indicaciones_Medicas`,1 AS `Fecha_Inicio`,1 AS `Fecha_Fin` */;
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

-- Dump completed on 2023-10-22 18:57:27
