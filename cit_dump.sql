-- MySQL dump 10.13  Distrib 8.0.40, for Linux (x86_64)
--
-- Host: localhost    Database: cit
-- ------------------------------------------------------
-- Server version	8.0.40-0ubuntu0.24.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Complication`
--

DROP TABLE IF EXISTS `Complication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Complication` (
  `ComplicationID` int NOT NULL,
  `MotherID` int DEFAULT NULL,
  `Occurrence` varchar(50) DEFAULT NULL,
  `Description` text,
  PRIMARY KEY (`ComplicationID`),
  KEY `MotherID` (`MotherID`),
  CONSTRAINT `Complication_ibfk_1` FOREIGN KEY (`MotherID`) REFERENCES `Mother` (`MotherID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Exercise`
--

DROP TABLE IF EXISTS `Exercise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Exercise` (
  `MotherID` int DEFAULT NULL,
  `Frequency` int DEFAULT NULL,
  `Duration` int DEFAULT NULL,
  KEY `MotherID` (`MotherID`),
  CONSTRAINT `Exercise_ibfk_1` FOREIGN KEY (`MotherID`) REFERENCES `Mother` (`MotherID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Hospital`
--

DROP TABLE IF EXISTS `Hospital`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Hospital` (
  `HospitalID` int NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `TotalBirths` int DEFAULT NULL,
  `TotalComplications` int DEFAULT NULL,
  PRIMARY KEY (`HospitalID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `MedicalVisit`
--

DROP TABLE IF EXISTS `MedicalVisit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MedicalVisit` (
  `VisitID` int NOT NULL,
  `MotherID` int DEFAULT NULL,
  `VisitDate` date DEFAULT NULL,
  `Field` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`VisitID`),
  KEY `MotherID` (`MotherID`),
  CONSTRAINT `MedicalVisit_ibfk_1` FOREIGN KEY (`MotherID`) REFERENCES `Mother` (`MotherID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Mother`
--

DROP TABLE IF EXISTS `Mother`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Mother` (
  `MotherID` int NOT NULL,
  `HospitalID` int DEFAULT NULL,
  `Birthdate` date DEFAULT NULL,
  `PregnancyDuration` int DEFAULT NULL,
  `Ethnicity` varchar(50) DEFAULT NULL,
  `FamilyHistory` text,
  PRIMARY KEY (`MotherID`),
  KEY `HospitalID` (`HospitalID`),
  CONSTRAINT `Mother_ibfk_1` FOREIGN KEY (`HospitalID`) REFERENCES `Hospital` (`HospitalID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Socialization`
--

DROP TABLE IF EXISTS `Socialization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Socialization` (
  `MotherID` int DEFAULT NULL,
  `Frequency` int DEFAULT NULL,
  `Duration` int DEFAULT NULL,
  `PeopleCount` int DEFAULT NULL,
  `Setting` varchar(50) DEFAULT NULL,
  KEY `MotherID` (`MotherID`),
  CONSTRAINT `Socialization_ibfk_1` FOREIGN KEY (`MotherID`) REFERENCES `Mother` (`MotherID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-19 13:59:25
