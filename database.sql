CREATE DATABASE  IF NOT EXISTS `panel` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `panel`;
-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: localhost    Database: panel
-- ------------------------------------------------------
-- Server version	8.0.36-0ubuntu0.22.04.1

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
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobilenumber` bigint DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_4C62E638E7927C74` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES (17,'Jagadeesh',81722132131,'goodatavadijagadeesh@gmail.com','old two town police station chennai road'),(18,'revathi',7893028699,'goodalash@gmail.com','Tirupathi bypass'),(19,'Rakesh',7893020644,'goodalaveesh@gmail.com','kailasagiri colony'),(20,'lokesh',7548616113,'lokesh@gmail.com','lic colony, chennai road, srikalahasti, andhrapradesh, pincode-517644');
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctrine_migration_versions`
--

LOCK TABLES `doctrine_migration_versions` WRITE;
/*!40000 ALTER TABLE `doctrine_migration_versions` DISABLE KEYS */;
INSERT INTO `doctrine_migration_versions` VALUES ('DoctrineMigrations\\Version20240208074529','2024-02-08 13:17:16',108),('DoctrineMigrations\\Version20240208104225','2024-02-08 16:14:14',132),('DoctrineMigrations\\Version20240208123229','2024-02-08 18:02:46',224),('DoctrineMigrations\\Version20240208123944','2024-02-08 18:10:04',132),('DoctrineMigrations\\Version20240209105357','2024-02-09 16:27:56',93),('DoctrineMigrations\\Version20240209111027','2024-02-09 16:56:28',140);
/*!40000 ALTER TABLE `doctrine_migration_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'jagadeesh@gmail.com','[]','$argon2id$v=19$m=65536,t=4,p=1$ITIxRCGaOwWoLQ7Qc7TFgA$0hwyIgeT6TkoIKlwxI34Qh7yMpw97T/1XQRcEFBcZsc'),(3,'example@gmail.com','[]','$argon2id$v=19$m=65536,t=4,p=1$37QvsvFCIy6ALsfwMwVo3Q$GroQovpX9eK+As673Rbl/T0vSr9QUgbW8x7FGOTi+Os'),(4,'rakesh@gmail.com','[]','$argon2id$v=19$m=65536,t=4,p=1$Btbb/5afRAiXcxoRKrbOpA$WSBDaoA90b/pPwLSlVeNwoMGhMaYX7c8S2DPq8RI6qo'),(5,'dinesh@gmail.com','[]','$argon2id$v=19$m=65536,t=4,p=1$wypQKmPsFgan3FOAbBQ5Dw$cUjc5Z0TxoWRKEwlcjrYFEgFMsSBp08f+VaA1V4KkNY'),(6,'ddinesh@gmail.com','[]','$argon2id$v=19$m=65536,t=4,p=1$Nvp47h3aR53+Z99dl7y1+A$G37rfH6zyK+r3EdIXAm86NTy9i/4tTK4KPG6dDdggao'),(8,'dddinesh@gmail.com','[]','$argon2id$v=19$m=65536,t=4,p=1$hjtYqp2qMQUJe4Y/db82bg$LfYFffijWrpjuai86Ug6lf1eRmBRZpNk1T61YJJhKkY'),(9,'drddinesh@gmail.com','[]','$argon2id$v=19$m=65536,t=4,p=1$iuCBbosdegAh05Sb0smbzA$KlZvFRUsaUOJLv+JJhy6Wupd/BVrkXCYdgkL/CIMYZI'),(10,'draddinesh@gmail.com','[]','$argon2id$v=19$m=65536,t=4,p=1$S42eFSiIBDA7KfS6f2Rmpg$JOg8Pa8a5qMBL4/3P380mx3L9881f+qPk7uvmWfsvJI'),(11,'adraddinesh@gmail.com','[]','$argon2id$v=19$m=65536,t=4,p=1$Ii6U/Z0mSTgSHWaPm/B/9Q$H1rTUOoTx5UMNeNIfFnPFlt0CH0V4cZLfiNq6pakBdQ'),(12,'arrdraddinesh@gmail.com','[]','$argon2id$v=19$m=65536,t=4,p=1$sMqY793zioh5k2R4qyjEKw$IDqquPiZyZL6JCbvNIj07iFeo8gcO9bD2e1MTuij7ac'),(13,'rey@gmail.com','[]','$argon2id$v=19$m=65536,t=4,p=1$VUuSfg3JdE+NvEpbqfRCBQ$0fcmfxZQ4W7Jizysamy0K6ayg5c1wv7pID2PvgX/gVs'),(14,'dog@gmail.com','[]','$argon2id$v=19$m=65536,t=4,p=1$BvQ2LpU4NKacF1BbVx49eQ$gOAHp2J8865wy/KRYKdCJ3X3yOjWYbsiCuaZe71OP7g'),(15,'rakeshreddy@gmail.com','[]','$argon2id$v=19$m=65536,t=4,p=1$6ocmHwA6Z707Dhxfmcd8JQ$TD2L808M57BW1J+Pq29mS+k0BoZqzMMFVbe2HDkUWzA'),(16,'ramesh@gmail.com','[]','$argon2id$v=19$m=65536,t=4,p=1$GnpmbgVinrRXR3bvmk0YZQ$fWo56uzvD3xOslt+sT4esrKm+nWIyget+4kSxfgK/tE'),(17,'ram@gmail.com','[]','$argon2id$v=19$m=65536,t=4,p=1$IQIdkvWEAxSmpX/59OY4VA$UqBelXvvZrMMMIuw9BtLWUkszT2i+98w0C1js4RtYx4'),(18,'lokesh@gmail.com','[]','$argon2id$v=19$m=65536,t=4,p=1$rciYjUvaBDladjPJ3+1iMA$Y3tGlJRDPc8K6jngcrWMvGy7giT+9S0YukJp2s7hlBE');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-13 12:44:46
