/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.11.19-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: education8
-- ------------------------------------------------------
-- Server version	10.11.19-MariaDB-ubu2204

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `edu_tab_asistencias`
--

DROP TABLE IF EXISTS `edu_tab_asistencias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `edu_tab_asistencias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `id_estudiante` int(11) NOT NULL,
  `id_grad_docente` int(11) NOT NULL,
  `asistencia` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_edu_tab_asistencias_edu_tab_estudiantes1_idx` (`id_estudiante`),
  KEY `fk_edu_tab_asistencias_edu_tab_grad_docente1_idx` (`id_grad_docente`),
  CONSTRAINT `fk_edu_tab_asistencias_edu_tab_estudiantes1` FOREIGN KEY (`id_estudiante`) REFERENCES `edu_tab_estudiantes` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_edu_tab_asistencias_edu_tab_grad_docente1` FOREIGN KEY (`id_grad_docente`) REFERENCES `edu_tab_grad_docente` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=290 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `edu_tab_asistencias`
--

LOCK TABLES `edu_tab_asistencias` WRITE;
/*!40000 ALTER TABLE `edu_tab_asistencias` DISABLE KEYS */;
INSERT INTO `edu_tab_asistencias` VALUES
(241,'2021-07-04',71,17,'P'),
(242,'2021-07-04',33,17,'P'),
(243,'2021-07-04',13,17,'P'),
(244,'2021-07-04',151,17,'FJ'),
(245,'2021-07-04',387,17,'P'),
(246,'2021-07-04',17,17,'P'),
(247,'2021-07-04',27,17,'P'),
(248,'2021-07-04',15,17,'P'),
(249,'2021-07-04',25,17,'P'),
(250,'2021-07-04',21,17,'P'),
(251,'2021-07-04',5,17,'P'),
(252,'2021-07-04',45,17,'P'),
(253,'2021-07-04',278,17,'P'),
(254,'2021-07-04',41,17,'P'),
(255,'2021-07-04',3,17,'P'),
(256,'2021-07-04',29,17,'P'),
(257,'2021-07-04',272,17,'P'),
(258,'2021-07-04',49,17,'FJ'),
(259,'2021-07-04',451,17,'P'),
(260,'2021-07-04',37,17,'P'),
(261,'2021-07-04',333,17,'P'),
(262,'2021-07-04',1,17,'FG'),
(263,'2021-07-04',39,17,'P'),
(264,'2021-07-18',71,17,'FG'),
(265,'2021-07-18',33,17,'P'),
(266,'2021-07-18',13,17,'P'),
(267,'2021-07-18',151,17,'FJ'),
(268,'2021-07-18',387,17,'P'),
(269,'2021-07-18',17,17,'P'),
(270,'2021-07-18',27,17,'P'),
(271,'2021-07-18',15,17,'P'),
(272,'2021-07-18',25,17,'P'),
(273,'2021-07-18',21,17,'P'),
(274,'2021-07-18',5,17,'P'),
(275,'2021-07-18',45,17,'P'),
(276,'2021-07-18',278,17,'P'),
(277,'2021-07-18',41,17,'P'),
(278,'2021-07-18',3,17,'P'),
(279,'2021-07-18',29,17,'P'),
(280,'2021-07-18',272,17,'P'),
(281,'2021-07-18',49,17,'FI'),
(282,'2021-07-18',451,17,'P'),
(283,'2021-07-18',37,17,'P'),
(284,'2021-07-18',333,17,'P'),
(285,'2021-07-18',1,17,'P'),
(286,'2021-07-18',39,17,'FG'),
(287,'2021-07-18',4,23,'FG'),
(288,'2021-07-18',7,23,'FJ'),
(289,'2021-08-02',452,25,'FJ');
/*!40000 ALTER TABLE `edu_tab_asistencias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `edu_tab_docentes`
--

DROP TABLE IF EXISTS `edu_tab_docentes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `edu_tab_docentes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cedula` varchar(15) NOT NULL,
  `nombres` text NOT NULL,
  `apellidos` text NOT NULL,
  `genero` varchar(45) NOT NULL,
  `email` text DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `direccion` text DEFAULT NULL,
  `fecha_nacimiento` date NOT NULL,
  `usuario` text NOT NULL,
  `password` text NOT NULL,
  `rol` varchar(45) NOT NULL,
  `estado` int(11) DEFAULT NULL,
  `foto` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `edu_tab_docentes`
--

LOCK TABLES `edu_tab_docentes` WRITE;
/*!40000 ALTER TABLE `edu_tab_docentes` DISABLE KEYS */;
INSERT INTO `edu_tab_docentes` VALUES
(5,'1234567890','Pedro doc','Huertas doc','M','asdas@gmail.com','098 326-4974','TULCAN','1996-10-13','D-1234567890','$2y$10$EJoxLJxDcTpSvbakdCx9wuRASfKFC1Rtm4uWzBoGXNnnjvU8gCU/m','Docente',0,'VISTA/img/docentes/D-1234567890/786.jpg'),
(6,'0452852122','Juan','sdasd','M','asdasd@gmail.com','098 326-4974','Tulcan','1996-10-13','D-0452852122','$2y$10$ISifAg.GiU8gA7UybjdMeespWywWCxUSht.UeRgR8hqxUcsNSx8R6','Docente',0,'VISTA/img/docentes/D-0452852122/776.jpg'),
(8,'0401698276','David','Chiluisa','M','jchiluisa7@gmail.com','099 938-5481','Cdl. La Rioja','1995-06-04','D-0401698276','$2y$10$lqH2oMtJcMskqPDN6yM4Me1lqHUZmxc9Kibd0na73667TXlyHEcoG','Docente',1,'VISTA/img/docentes/D-0401698276/471.png'),
(9,'0402208181','Luis','Benavides','M','luis@gmail.com','099 123-4566','Tulcan','1990-07-15','D-0402208181','$2y$10$HRyIHFrZWrsMoR./wHF.weGWhG5ZnLOaIBfQmjljyfS8KEExZ4hj6','Docente',0,'VISTA/img/docentes/D-0402208181/444.jpg');
/*!40000 ALTER TABLE `edu_tab_docentes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `edu_tab_estudiantes`
--

DROP TABLE IF EXISTS `edu_tab_estudiantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `edu_tab_estudiantes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cedula` varchar(15) NOT NULL,
  `nombres` text NOT NULL,
  `apellidos` text NOT NULL,
  `genero` varchar(45) NOT NULL,
  `email` text DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `direccion` text DEFAULT NULL,
  `fecha_nacimiento` date NOT NULL,
  `id_representante` int(11) NOT NULL,
  `usuario` text NOT NULL,
  `password` text NOT NULL,
  `rol` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_edu_tab_estudiantes_edu_tab_representantes_idx` (`id_representante`),
  CONSTRAINT `fk_edu_tab_estudiantes_edu_tab_representantes` FOREIGN KEY (`id_representante`) REFERENCES `edu_tab_representantes` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=455 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `edu_tab_estudiantes`
--

LOCK TABLES `edu_tab_estudiantes` WRITE;
/*!40000 ALTER TABLE `edu_tab_estudiantes` DISABLE KEYS */;
INSERT INTO `edu_tab_estudiantes` VALUES
(1,'473548399','Lucian','Vincent Marsh','Suspendisse','ac@rutrum.edu','(643) 783-2209','Egestas Ligula Nullam LLP','2021-10-08',6,'Flynn','Mara','Allistair Hubbard'),
(3,'435305903','Xavier','Philip White','elit,','magna.a@Pellentesqueutipsum.edu','(605) 149-0297','Ipsum Leo Elementum Industries','2021-02-10',6,'Alvin','Hyacinth','Kasper Hill'),
(4,'1234567890','Alberto EST','Hurtado EST','M','correo@gmail.com','098 326-4974','Tulcan\r\nCASA','2020-12-10',6,'E-1234567890','$2y$10$dmw8TT1vulQnuZH5/H/ajeoDzmG90h2Ftb54/V67qeAJlzX.sga2m','Estudiante'),
(5,'185401987','Talon','Jamal Blevins','magnis','et.nunc@Nunclaoreetlectus.ca','(279) 845-3808','Ligula Donec Luctus Consulting','2021-06-29',6,'Chase','Hadley','Ulysses Douglas'),
(7,'253591420','Beck','Murphy Drake','Nulla','malesuada.vel@Integeraliquamadipiscing.org','(434) 530-9639','Erat Industries','2021-01-27',6,'Tarik','Vera','Maxwell Nguyen'),
(13,'263668855','Tate','Boris Stewart','sapien','dictum.placerat@vulputate.org','(845) 217-4723','Elit Pellentesque Ltd','2021-02-03',6,'Keegan','Mikayla','Blake Jordan'),
(15,'54514743','Seth','Hasad Hewitt','tincidunt','ornare.libero@pharetrased.edu','(925) 387-1763','Gravida Corporation','2020-10-29',6,'Cruz','Molly','Wang Saunders'),
(17,'171653185','Orson','Clark Carey','amet,','sociis.natoque@montes.net','(208) 606-5969','Aliquam Ornare Associates','2021-10-16',6,'Kasper','Whoopi','Camden Oneal'),
(19,'499654537','Louis','Stone Salazar','ultrices','Aenean@Quisqueimperdieterat.co.uk','(737) 454-6909','Ut Corporation','2022-03-25',6,'James','Maia','Theodore Lamb'),
(21,'390355319','Hayes','Ira Calhoun','diam','elit.elit@ultrices.net','(180) 945-1180','Nunc Pulvinar Arcu Foundation','2021-06-03',6,'Dean','Leslie','Jameson Curry'),
(25,'497344522','Ezekiel','Hoyt Reilly','tincidunt','nunc.interdum@maurisblanditmattis.ca','(558) 665-1476','Sit Amet Consectetuer Ltd','2021-05-14',6,'Brendan','Hilary','Honorato Thornton'),
(27,'143502414','Kasper','Daquan Velez','a,','Aliquam.auctor@Crasconvallisconvallis.net','(975) 246-3075','Phasellus Ornare Fusce Institute','2021-02-15',6,'Sylvester','Xyla','Hop Richard'),
(29,'467684965','Thane','Rafael Newman','a','Proin.ultrices.Duis@nuncsit.com','(856) 248-9691','Gravida Sit Industries','2022-05-03',6,'Alden','Rhea','Alec Gonzalez'),
(31,'134537582','Myles','Emery Stone','Class','vitae.sodales.at@Phasellus.com','(713) 709-2467','Fermentum Metus Aenean Inc.','2020-09-16',6,'Dominic','Nola','Hamish Rowland'),
(33,'163874873','Deacon','Asher Foley','justo','ac.ipsum@pretiumnequeMorbi.co.uk','(455) 384-3066','Accumsan Convallis Incorporated','2021-12-14',6,'Felix','Candace','Wade Powers'),
(37,'156472808','Benjamin','Ulric Dillard','commodo','purus@blanditNam.co.uk','(348) 710-3058','Integer Eu Institute','2021-04-02',6,'Oliver','Jemima','Bert King'),
(39,'464788166','Gray','Walter Hinton','Donec','nunc@erosNamconsequat.ca','(772) 540-5153','Eu Foundation','2020-12-12',6,'Rigel','Keiko','Arden Malone'),
(41,'43610815k','Myles','Lucian Hardin','ut','sodales@mollisDuis.edu','(521) 223-7755','Molestie Tortor Nibh Corporation','2021-01-08',6,'Patrick','Iliana','Noah Rodgers'),
(45,'104472893','Quinn','Keane Dorsey','Donec','Aliquam.tincidunt.nunc@Pellentesquehabitantmorbi.org','(210) 254-3535','Dolor Elit Pellentesque Corporation','2022-05-05',6,'Gray','Charissa','Mason Fisher'),
(47,'17025659k','Fuller','Gareth Benson','enim.','tincidunt.adipiscing@eratvolutpat.co.uk','(563) 207-8059','Erat Volutpat Nulla Incorporated','2021-12-25',6,'Stuart','Sharon','Kennedy Newton'),
(49,'339691835','Geoffrey','Slade Merrill','Aenean','Sed@purusaccumsan.com','(140) 647-4071','At Pretium Associates','2021-06-21',6,'Walker','Germane','Brett Meadows'),
(71,'480895010','Merrill','Arsenio Luna','Sed','mus@Proinnonmassa.org','(472) 364-3000','Amet Corporation','2021-01-27',6,'Brady','Hadley','Tate Freeman'),
(151,'253952849','Hunter','Bruce Barnes','egestas.','nonummy.ut@arcu.com','(590) 753-1406','Morbi Vehicula Pellentesque LLP','2021-03-02',6,'Blake','Belle','Hyatt Duffy'),
(191,'256184141','Clinton','Jarrod Burch','suscipit','Sed@musProin.org','(359) 339-7392','Euismod PC','2022-03-10',6,'Forrest','Skyler','Oren Perry'),
(251,'466673110','Hamilton','Craig Huber','tellus.','magnis@auctorquis.com','(773) 133-8374','Lacus Vestibulum Lorem Incorporated','2021-01-22',6,'Leroy','Willa','Gannon Browning'),
(272,'160884746','Noble','Ralph Campbell','Fusce','consectetuer.adipiscing.elit@massa.co.uk','(371) 935-4993','Ut Molestie Institute','2020-12-31',6,'Gavin','Phyllis','Erasmus Combs'),
(278,'489862654','Cade','Lewis Cervantes','Phasellus','in.consequat.enim@sit.net','(565) 763-5950','Eget Dictum Associates','2022-07-01',6,'Axel','Karina','Ezra Beard'),
(333,'278036723','Stewart','Vernon Sampson','ac','ipsum@aodio.ca','(524) 426-6512','In Consectetuer Ipsum Industries','2020-09-21',6,'Carl','Aiko','Alden Ingram'),
(387,'163416212','Gil','Carson Crane','dictum','est@molestie.net','(463) 871-3305','Fringilla Euismod LLC','2022-06-30',6,'Herrod','Lacota','Ray Chaney'),
(451,'284533356','Perry','Timon Chandler','nec','cursus.in.hendrerit@fringilla.edu','(220) 962-8782','Vulputate Nisi Limited','2020-12-14',6,'Amir','Kirestin','Amery Bass'),
(452,'0402112310','Paul','Reyes','M','paul@gmail.com','093 213-1231','Tulcan','2010-01-05',9,'E-0402112310','$2y$10$UoZY.tLTNDpZwhAmCjsfx.JX6f7QKtcMcnI0ssZHkG82y3LGRGoZS','Estudiante'),
(453,'2134567890','Pepe','Ruiz','M','pepe@gmail.com','033 231-3131','Tulcán','2020-03-22',10,'E-2134567890','$2y$10$fkF9lopL14sWvTFT9ncacuiMn51cFFzruA9i.T0dNNPekf72srGJC','Estudiante');
/*!40000 ALTER TABLE `edu_tab_estudiantes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `edu_tab_grad_docente`
--

DROP TABLE IF EXISTS `edu_tab_grad_docente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `edu_tab_grad_docente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_grado_docente` int(11) NOT NULL,
  `id_docente` int(11) NOT NULL,
  `observacion` text DEFAULT NULL,
  `estado` int(11) NOT NULL,
  `id_materia` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_edu_tab_grad_docente_edu_tab_grado_paralelo1_idx` (`id_grado_docente`),
  KEY `fk_edu_tab_grad_docente_edu_tab_docentes1_idx` (`id_docente`),
  KEY `fk_edu_tab_grad_docente_edu_tab_materias1_idx` (`id_materia`),
  CONSTRAINT `fk_edu_tab_grad_docente_edu_tab_docentes1` FOREIGN KEY (`id_docente`) REFERENCES `edu_tab_docentes` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_edu_tab_grad_docente_edu_tab_grado_paralelo1` FOREIGN KEY (`id_grado_docente`) REFERENCES `edu_tab_grado_paralelo` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_edu_tab_grad_docente_edu_tab_materias1` FOREIGN KEY (`id_materia`) REFERENCES `edu_tab_materias` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `edu_tab_grad_docente`
--

LOCK TABLES `edu_tab_grad_docente` WRITE;
/*!40000 ALTER TABLE `edu_tab_grad_docente` DISABLE KEYS */;
INSERT INTO `edu_tab_grad_docente` VALUES
(17,16,5,'',1,7),
(18,16,5,'',1,10),
(19,18,5,'',1,7),
(20,18,5,'',1,10),
(21,17,6,'',0,7),
(22,17,6,'',0,10),
(23,17,5,'',0,8),
(24,16,9,'',0,11),
(25,18,9,'',0,11),
(26,16,8,'',1,9);
/*!40000 ALTER TABLE `edu_tab_grad_docente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `edu_tab_grado`
--

DROP TABLE IF EXISTS `edu_tab_grado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `edu_tab_grado` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `observacion` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `edu_tab_grado`
--

LOCK TABLES `edu_tab_grado` WRITE;
/*!40000 ALTER TABLE `edu_tab_grado` DISABLE KEYS */;
INSERT INTO `edu_tab_grado` VALUES
(6,'Primero',''),
(7,'Segundo',''),
(8,'Tercero',''),
(9,'Cuarto',''),
(10,'Quinto',''),
(11,'Sexto',''),
(12,'septimo','');
/*!40000 ALTER TABLE `edu_tab_grado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `edu_tab_grado_paralelo`
--

DROP TABLE IF EXISTS `edu_tab_grado_paralelo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `edu_tab_grado_paralelo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_grado` int(11) NOT NULL,
  `id_paralelo` int(11) NOT NULL,
  `cupos` int(11) NOT NULL,
  `observacion` text NOT NULL,
  `estado` int(11) NOT NULL,
  `id_periodo` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_edu_tab_grado_paralelo_edu_tab_grado1_idx` (`id_grado`),
  KEY `fk_edu_tab_grado_paralelo_edu_tab_paralelos1_idx` (`id_paralelo`),
  KEY `fk_edu_tab_grado_paralelo_edu_tab_periodo1_idx` (`id_periodo`),
  CONSTRAINT `fk_edu_tab_grado_paralelo_edu_tab_grado1` FOREIGN KEY (`id_grado`) REFERENCES `edu_tab_grado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_edu_tab_grado_paralelo_edu_tab_paralelos1` FOREIGN KEY (`id_paralelo`) REFERENCES `edu_tab_paralelos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_edu_tab_grado_paralelo_edu_tab_periodo1` FOREIGN KEY (`id_periodo`) REFERENCES `edu_tab_periodo` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `edu_tab_grado_paralelo`
--

LOCK TABLES `edu_tab_grado_paralelo` WRITE;
/*!40000 ALTER TABLE `edu_tab_grado_paralelo` DISABLE KEYS */;
INSERT INTO `edu_tab_grado_paralelo` VALUES
(16,6,8,0,'',1,4),
(17,6,9,23,'',1,4),
(18,6,10,24,'',1,4),
(19,6,8,7,'yy',1,5),
(20,6,9,7,'yy',1,5),
(21,6,10,7,'yy',1,5),
(22,6,8,10,'',1,6),
(23,6,9,10,'',1,6),
(24,6,10,10,'',1,6);
/*!40000 ALTER TABLE `edu_tab_grado_paralelo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `edu_tab_materias`
--

DROP TABLE IF EXISTS `edu_tab_materias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `edu_tab_materias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `observacion` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `edu_tab_materias`
--

LOCK TABLES `edu_tab_materias` WRITE;
/*!40000 ALTER TABLE `edu_tab_materias` DISABLE KEYS */;
INSERT INTO `edu_tab_materias` VALUES
(7,'Ciencias Sociales',''),
(8,'Ciencias Naturales',''),
(9,'Matemática ',''),
(10,'Lenguaje',''),
(11,'Ingles','');
/*!40000 ALTER TABLE `edu_tab_materias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `edu_tab_materias_docentes`
--

DROP TABLE IF EXISTS `edu_tab_materias_docentes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `edu_tab_materias_docentes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `estado` varchar(45) DEFAULT NULL,
  `observacion` varchar(45) DEFAULT NULL,
  `id_materias` int(11) NOT NULL,
  `id_docentes` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `edu_tab_materias_docentes`
--

LOCK TABLES `edu_tab_materias_docentes` WRITE;
/*!40000 ALTER TABLE `edu_tab_materias_docentes` DISABLE KEYS */;
/*!40000 ALTER TABLE `edu_tab_materias_docentes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `edu_tab_matricula`
--

DROP TABLE IF EXISTS `edu_tab_matricula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `edu_tab_matricula` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` int(11) NOT NULL,
  `observacion` text DEFAULT NULL,
  `id_estudiante` int(11) NOT NULL,
  `id_grado_paralelo` int(11) NOT NULL,
  `id_periodo` int(11) NOT NULL,
  `fecha_matricula` timestamp NOT NULL DEFAULT current_timestamp(),
  `id_usuario` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_edu_tab_matricula_edu_tab_estudiantes1_idx` (`id_estudiante`),
  KEY `fk_edu_tab_matricula_edu_tab_grado_paralelo1_idx` (`id_grado_paralelo`),
  KEY `fk_edu_tab_matricula_edu_tab_periodo1_idx` (`id_periodo`),
  KEY `fk_edu_tab_matricula_edu_tab_usuarios1_idx` (`id_usuario`),
  CONSTRAINT `fk_edu_tab_matricula_edu_tab_estudiantes1` FOREIGN KEY (`id_estudiante`) REFERENCES `edu_tab_estudiantes` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_edu_tab_matricula_edu_tab_grado_paralelo1` FOREIGN KEY (`id_grado_paralelo`) REFERENCES `edu_tab_grado_paralelo` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_edu_tab_matricula_edu_tab_periodo1` FOREIGN KEY (`id_periodo`) REFERENCES `edu_tab_periodo` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_edu_tab_matricula_edu_tab_usuarios1` FOREIGN KEY (`id_usuario`) REFERENCES `edu_tab_usuarios` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `edu_tab_matricula`
--

LOCK TABLES `edu_tab_matricula` WRITE;
/*!40000 ALTER TABLE `edu_tab_matricula` DISABLE KEYS */;
INSERT INTO `edu_tab_matricula` VALUES
(8,3,'',3,16,4,'2021-07-02 22:33:47',24),
(9,4,'',1,16,4,'2021-07-02 22:34:04',24),
(10,5,'',5,16,4,'2021-07-02 22:34:26',24),
(11,6,'',272,16,4,'2021-07-02 22:34:47',24),
(12,7,'',17,16,4,'2021-07-02 22:34:59',24),
(13,8,'',387,16,4,'2021-07-02 22:35:18',24),
(14,9,'',451,16,4,'2021-07-02 22:35:30',24),
(15,10,'',278,16,4,'2021-07-02 22:35:56',24),
(16,11,'',151,16,4,'2021-07-02 22:36:22',24),
(17,12,'',29,16,4,'2021-07-02 22:36:33',24),
(18,13,'',13,16,4,'2021-07-02 22:36:56',24),
(19,14,'',333,16,4,'2021-07-02 22:37:10',24),
(20,15,'',37,16,4,'2021-07-02 22:37:27',24),
(21,16,'',15,16,4,'2021-07-02 22:37:50',24),
(22,17,'',71,16,4,'2021-07-02 22:38:33',24),
(23,18,'',49,16,4,'2021-07-02 22:38:52',24),
(24,19,'',25,16,4,'2021-07-02 22:39:30',24),
(25,20,'',45,16,4,'2021-07-02 22:39:49',24),
(26,21,'',21,16,4,'2021-07-02 22:40:20',24),
(27,22,'',41,16,4,'2021-07-02 22:41:00',24),
(28,23,'',39,16,4,'2021-07-02 22:41:15',24),
(29,24,'',33,16,4,'2021-07-02 22:41:55',24),
(30,25,'',27,16,4,'2021-07-02 22:42:24',24),
(31,26,'',4,17,4,'2021-07-02 22:52:02',24),
(32,27,'',7,17,4,'2021-07-02 22:52:20',24),
(33,28,'',452,18,4,'2021-08-02 20:50:19',24),
(35,29,'',453,22,6,'2026-01-20 23:11:48',25);
/*!40000 ALTER TABLE `edu_tab_matricula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `edu_tab_notas`
--

DROP TABLE IF EXISTS `edu_tab_notas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `edu_tab_notas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parcial1q1` decimal(4,2) NOT NULL,
  `parcial2q1` decimal(4,2) NOT NULL,
  `parcial3q1` decimal(4,2) NOT NULL,
  `examenq1` decimal(4,2) NOT NULL,
  `quimestre1` decimal(4,2) NOT NULL,
  `parcial1q2` decimal(4,2) NOT NULL,
  `parcial2q2` decimal(4,2) NOT NULL,
  `parcial3q2` decimal(4,2) NOT NULL,
  `examenq2` decimal(4,2) NOT NULL,
  `quimestre2` decimal(4,2) NOT NULL,
  `nota_final` decimal(4,2) NOT NULL,
  `id_estudiante` int(11) NOT NULL,
  `id_clases_doc` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_edu_tab_notas_edu_tab_estudiantes1_idx` (`id_estudiante`),
  KEY `fk_edu_tab_notas_edu_tab_grad_docente1_idx` (`id_clases_doc`),
  CONSTRAINT `fk_edu_tab_notas_edu_tab_estudiantes1` FOREIGN KEY (`id_estudiante`) REFERENCES `edu_tab_estudiantes` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_edu_tab_notas_edu_tab_grad_docente1` FOREIGN KEY (`id_clases_doc`) REFERENCES `edu_tab_grad_docente` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `edu_tab_notas`
--

LOCK TABLES `edu_tab_notas` WRITE;
/*!40000 ALTER TABLE `edu_tab_notas` DISABLE KEYS */;
INSERT INTO `edu_tab_notas` VALUES
(1,7.00,8.00,7.25,7.22,7.37,8.00,7.00,9.00,7.00,7.75,7.56,4,23),
(2,5.50,7.00,6.00,8.00,6.63,0.00,0.00,0.00,0.00,0.00,3.31,7,23),
(3,7.00,8.00,10.00,9.00,8.50,0.00,0.00,0.00,0.00,0.00,0.00,71,17),
(4,0.00,7.00,0.00,0.00,1.75,0.00,0.00,0.00,0.00,0.00,0.00,33,17),
(5,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,13,17),
(6,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,151,17),
(7,8.00,8.00,7.00,7.00,7.50,0.00,0.00,0.00,0.00,0.00,0.00,387,17),
(8,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,17,17),
(9,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,27,17),
(10,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,15,17),
(11,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,25,17),
(12,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,21,17),
(13,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,5,17),
(14,0.00,7.00,0.00,0.00,1.75,0.00,0.00,0.00,0.00,0.00,0.00,45,17),
(15,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,278,17),
(16,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,41,17),
(17,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,3,17),
(18,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,29,17),
(19,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,272,17),
(20,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,49,17),
(21,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,451,17),
(22,0.00,0.00,7.00,0.00,1.75,0.00,0.00,0.00,0.00,0.00,0.00,37,17),
(23,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,333,17),
(24,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,1,17),
(25,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,39,17),
(26,9.91,8.90,5.00,6.75,7.64,0.00,0.00,0.00,0.00,0.00,0.00,452,25);
/*!40000 ALTER TABLE `edu_tab_notas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `edu_tab_paralelos`
--

DROP TABLE IF EXISTS `edu_tab_paralelos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `edu_tab_paralelos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `observacion` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `edu_tab_paralelos`
--

LOCK TABLES `edu_tab_paralelos` WRITE;
/*!40000 ALTER TABLE `edu_tab_paralelos` DISABLE KEYS */;
INSERT INTO `edu_tab_paralelos` VALUES
(8,'A',''),
(9,'B',''),
(10,'C',''),
(11,'D','');
/*!40000 ALTER TABLE `edu_tab_paralelos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `edu_tab_periodo`
--

DROP TABLE IF EXISTS `edu_tab_periodo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `edu_tab_periodo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `observacion` text NOT NULL,
  `estado` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `edu_tab_periodo`
--

LOCK TABLES `edu_tab_periodo` WRITE;
/*!40000 ALTER TABLE `edu_tab_periodo` DISABLE KEYS */;
INSERT INTO `edu_tab_periodo` VALUES
(4,'2018-2019','',0),
(5,'2024-2025','',0),
(6,'2025-2026','',1);
/*!40000 ALTER TABLE `edu_tab_periodo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `edu_tab_representantes`
--

DROP TABLE IF EXISTS `edu_tab_representantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `edu_tab_representantes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cedula` varchar(15) NOT NULL,
  `nombres` text NOT NULL,
  `apellidos` text NOT NULL,
  `genero` varchar(45) NOT NULL,
  `email` text DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `direccion` text DEFAULT NULL,
  `usuario` text NOT NULL,
  `password` text NOT NULL,
  `rol` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `edu_tab_representantes`
--

LOCK TABLES `edu_tab_representantes` WRITE;
/*!40000 ALTER TABLE `edu_tab_representantes` DISABLE KEYS */;
INSERT INTO `edu_tab_representantes` VALUES
(6,'0425689710','Juan RE','Enriquez RE','M','correo@gmail.com','098 326-4974','tulcan','R-0425689710','$2y$10$vUlzV5ZNPlL8ajswqnVv1uJX/uS8YkH2X6yWrkJiUngOjYGwMb.AG','Representante'),
(7,'0123456789','Jorge','Chiluisa','M','jchiluisa7@gmail.com','099 938-5481','Tulcan','R-0123456789','$2y$10$npfnVdcevdl6LdBZg6HG9OlBPfsM9fAGYOeYzw43gqfw.wuBOGG4W','Representante'),
(8,'0425896347','David Re','Chiluisa Re','M','jchiluisa7@gmail.com','099 938-5481','Cdl. La Rioja','R-0425896347','$2y$10$aHjb/xs2ocfx8RYeqLuC5.UpzKUmw11xf4txkNAU0q9xIuy1NwYCu','Representante'),
(9,'0401234567','Raul','Reyes','M','raul@gmail.com','098 765-4321','Tulcan','R-0401234567','$2y$10$x89ZVO5SsWD93a1bq.Ypj.BhpjHYoOvsSVX1/ldSv9KPPj00wIbSG','Representante'),
(10,'0401698279',' David','Chiluisa','M','jchiluisa7@gmail.com','099 938-5481','Cdl. La Rioja','R-0401698279','$2y$10$b7KRmdSJfWpEwuk/FXsuBusBMI9DQMN0ATKLdSjbmv6oEkOhDze2C','Representante');
/*!40000 ALTER TABLE `edu_tab_representantes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `edu_tab_usuarios`
--

DROP TABLE IF EXISTS `edu_tab_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `edu_tab_usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` text NOT NULL,
  `usuario` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `rol` varchar(255) NOT NULL,
  `foto` text NOT NULL,
  `estado` int(11) NOT NULL,
  `ultimo_login` datetime NOT NULL,
  `fecha_creacion` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `edu_tab_usuarios`
--

LOCK TABLES `edu_tab_usuarios` WRITE;
/*!40000 ALTER TABLE `edu_tab_usuarios` DISABLE KEYS */;
INSERT INTO `edu_tab_usuarios` VALUES
(24,'admin','admin','$2y$10$hE08j3MkKzrTm5VMqvsY0u25Ed93d/zLAirvxxO8BJUL7qsnCptAi','Administrador','VISTA/dist/img/usuarios/admin/928.jpg',1,'2026-11-09 12:56:06','2026-11-09 17:56:06'),
(25,'secre','secre','$2y$10$KlROZhYCXvpEx86adkCljecXWoMz5.n8.Ap27vV3mxw8/AUIAGk1.','Secretaría','VISTA/dist/img/usuarios/secre/349.jpg',1,'2026-01-21 18:40:32','2026-01-21 23:40:32'),
(26,'juan','juan','$2y$10$OwWKwFQegpJAZC/LtcTPxOpxCen9kBUxnNY.MEBF9mcFKPXzt1N72','Administrador','VISTA/dist/img/usuarios/juan/479.jpg',1,'2021-08-02 15:40:05','2021-08-02 20:40:05');
/*!40000 ALTER TABLE `edu_tab_usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-11-09 17:59:54
