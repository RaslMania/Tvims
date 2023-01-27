-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: privka
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `baby`
--

DROP TABLE IF EXISTS `baby`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `baby` (
  `id_baby` int NOT NULL AUTO_INCREMENT,
  `name_baby` varchar(100) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `allergy` varchar(100) DEFAULT NULL,
  `weight` varchar(100) DEFAULT NULL,
  `id_parents` int DEFAULT NULL,
  PRIMARY KEY (`id_baby`),
  KEY `id_parents` (`id_parents`),
  CONSTRAINT `baby_ibfk_1` FOREIGN KEY (`id_parents`) REFERENCES `parents` (`id_parents`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `baby`
--

LOCK TABLES `baby` WRITE;
/*!40000 ALTER TABLE `baby` DISABLE KEYS */;
INSERT INTO `baby` VALUES (1,'Огурцов Олег Искандерович','2021-11-20','Краснуха','2.5',1),(2,'Искрова Людмила Юрьевич','2022-10-03','Грипп','5.6',3),(3,'Игнатьева Марина Ивановна','2023-01-01','Столбняк','3.4',2);
/*!40000 ALTER TABLE `baby` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `journal_of_vaccinations`
--

DROP TABLE IF EXISTS `journal_of_vaccinations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `journal_of_vaccinations` (
  `id_jour` int NOT NULL AUTO_INCREMENT,
  `id_baby` int DEFAULT NULL,
  `id_privivka` int DEFAULT NULL,
  `id_personal` int DEFAULT NULL,
  PRIMARY KEY (`id_jour`),
  KEY `id_baby` (`id_baby`),
  KEY `id_privivka` (`id_privivka`),
  KEY `id_personal` (`id_personal`),
  CONSTRAINT `journal_of_vaccinations_ibfk_1` FOREIGN KEY (`id_baby`) REFERENCES `baby` (`id_baby`),
  CONSTRAINT `journal_of_vaccinations_ibfk_2` FOREIGN KEY (`id_privivka`) REFERENCES `privivka` (`id_privivka`),
  CONSTRAINT `journal_of_vaccinations_ibfk_3` FOREIGN KEY (`id_personal`) REFERENCES `personal` (`id_personal`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `journal_of_vaccinations`
--

LOCK TABLES `journal_of_vaccinations` WRITE;
/*!40000 ALTER TABLE `journal_of_vaccinations` DISABLE KEYS */;
INSERT INTO `journal_of_vaccinations` VALUES (1,1,2,1),(2,2,3,3),(3,3,1,2);
/*!40000 ALTER TABLE `journal_of_vaccinations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parents`
--

DROP TABLE IF EXISTS `parents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parents` (
  `id_parents` int NOT NULL AUTO_INCREMENT,
  `name_parents` varchar(100) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `phone` decimal(11,0) DEFAULT NULL,
  PRIMARY KEY (`id_parents`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parents`
--

LOCK TABLES `parents` WRITE;
/*!40000 ALTER TABLE `parents` DISABLE KEYS */;
INSERT INTO `parents` VALUES (1,'Огурцова Оксана  Александрова','1998-01-12',79276614560),(2,'Игнатьев Иван Олегович','1975-03-05',89634756630),(3,'Искрова Алёна Сергеевна','1985-08-23',89176632123);
/*!40000 ALTER TABLE `parents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal`
--

DROP TABLE IF EXISTS `personal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal` (
  `id_personal` int NOT NULL AUTO_INCREMENT,
  `name_personal` varchar(100) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `phone` decimal(11,0) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'null',
  `login` varchar(100) DEFAULT NULL,
  `passwords` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_personal`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal`
--

LOCK TABLES `personal` WRITE;
/*!40000 ALTER TABLE `personal` DISABLE KEYS */;
INSERT INTO `personal` VALUES (1,'Лотонов Леонид Аркадьевич','1975-06-12',89961596997,'Работает','qaz','123'),(2,'Арманов Степан Родионович','1992-07-15',89174564776,'Уволен','wsx','123'),(3,'Доров Денис Олегович','1985-09-17',8927654512,'Работает','edc','123');
/*!40000 ALTER TABLE `personal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `privivka`
--

DROP TABLE IF EXISTS `privivka`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `privivka` (
  `id_privivka` int NOT NULL AUTO_INCREMENT,
  `name_privivka` varchar(100) DEFAULT NULL,
  `count_privivka` int DEFAULT NULL,
  `date_post` date DEFAULT NULL,
  `regularity` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_privivka`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `privivka`
--

LOCK TABLES `privivka` WRITE;
/*!40000 ALTER TABLE `privivka` DISABLE KEYS */;
INSERT INTO `privivka` VALUES (1,'Столбняк',1,'2027-01-20','один'),(2,'Краснуха',2,'2027-01-20','два'),(3,'Грипп',3,'2027-01-20','три');
/*!40000 ALTER TABLE `privivka` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-27 11:47:23
