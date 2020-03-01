-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: lol_data
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `Champions`
--

DROP TABLE IF EXISTS `Champions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Champions` (
  `Champ_id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `Role` varchar(255) NOT NULL,
  `Species` varchar(255) NOT NULL,
  `Lane` varchar(255) NOT NULL,
  PRIMARY KEY (`Champ_id`)
) ENGINE=InnoDB DEFAULT COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Champions`
--

LOCK TABLES `Champions` WRITE;
/*!40000 ALTER TABLE `Champions` DISABLE KEYS */;
INSERT INTO `Champions` VALUES (1, 'Aatrox', 'Fighter', 'RUNETERRA', 'TOP'), (2, 'Ahri', 'Mage', 'VASTAYA', 'MID'), (3, 'Graves', 'Marksma', 'BILGEWATER', 'JUNGLE'), (4, 'Jinx', 'Marksman', 'ZAUN', 'BOT'), (5, 'Leona', 'Tank', 'TARGON', 'BOT');
/*!40000 ALTER TABLE `Champions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Spells`
--

DROP TABLE IF EXISTS `Spells`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Spells` (
  `Spell_id` int NOT NULL AUTO_INCREMENT,
  `Q` varchar(255) NOT NULL,
  `W` varchar(255) NOT NULL,
  `E` varchar(255) NOT NULL,
  `R` varchar(255) NOT NULL,
  `Levels_id` int DEFAULT NULL, 
  `Champs_id` int DEFAULT NULL,
  PRIMARY KEY (`Spell_id`),
  CONSTRAINT fk_spells_levels_level_id FOREIGN KEY (`Levels_id`) REFERENCES `Levels` (`Level_id`),
  CONSTRAINT fk_spells_champs_champ_id FOREIGN KEY (`Champs_id`) REFERENCES `Champions` (`Champ_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Spells`
--

LOCK TABLES `Spells` WRITE;
/*!40000 ALTER TABLE `Spells` DISABLE KEYS */;
INSERT INTO `Spells` VALUES (1,'Dark Blade', 'Infernal Chains', 'Umbral Dash', 'World Ender', 1, 1),(2,'Deception Orb', 'Fox-Fire', 'Charm', 'Spirit Rush', 2, 2),(3, 'The Line End', 'Smoke Screen', 'Quickdraw', 'Collateral Damage', 3, 3),(4, 'Switcheroo', 'Zap', 'Flame Chompers', 'Super Mega Death Rocket', 4, 4),(5, 'Daybreak Shield', 'Eclipse', 'Zenith Blade', 'Solar Flare', 5, 5);
/*!40000 ALTER TABLE `Spells` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Items`
--

DROP TABLE IF EXISTS `Items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Items` (
  `Item_id` int NOT NULL AUTO_INCREMENT,
  `Item_name` varchar(255) NOT NULL,
  `Defense` int NOT NULL,
  `Attack` int NOT NULL,
  `Magic` int NOT NULL,
  `Movement` int NOT NULL,
  `Champs_id` int DEFAULT NULL,
  PRIMARY KEY (`Item_id`),
  CONSTRAINT fk_items_levels_level_id FOREIGN KEY (`Champs_id`) REFERENCES `Champions` (`Champ_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Items`
--

LOCK TABLES `Items` WRITE;
/*!40000 ALTER TABLE `Items` DISABLE KEYS */;
INSERT INTO `Items` VALUES (1, 'Chain Vest', 40, 0, 0, 0, 2),(2, 'Amplifying Tome', 0, 0, 20, 0, 2),(3, 'BF Sword', 0, 40, 0, 0, 1),(4, 'Boots', 0, 0, 0, 25, 4);
/*!40000 ALTER TABLE `Items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Levels`
--

DROP TABLE IF EXISTS `Levels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Levels` (
  `Level_id` int NOT NULL AUTO_INCREMENT,
  `Spell_upgrade` int NOT NULL,
  `Health_upgrade` int NOT NULL,
  `Damage_upgrade` int NOT NULL,
  `Spells_id` int NOT NULL,
  PRIMARY KEY (`Level_id`),
  CONSTRAINT fk_levels_spells_spell_id FOREIGN KEY (`Spells_id`) REFERENCES `Spells` (`Spell_id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Levels`
--

LOCK TABLES `Levels` WRITE;
/*!40000 ALTER TABLE `Levels` DISABLE KEYS */;
INSERT INTO `Levels` VALUES (1, 10, 8, 15, 1), (2, 20, 16, 30, 1);
/*!40000 ALTER TABLE `Levels` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-18 20:36:01
