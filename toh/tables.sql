-- MySQL dump 10.13  Distrib 5.5.41, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: toh
-- ------------------------------------------------------
-- Server version	5.5.41-0ubuntu0.12.04.1

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
-- Table structure for table `chap_char`
--

DROP TABLE IF EXISTS `chap_char`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chap_char` (
  `c_id` mediumint(8) unsigned NOT NULL,
  `ch_id` mediumint(8) unsigned NOT NULL,
  `descript` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chap_char`
--

LOCK TABLES `chap_char` WRITE;
/*!40000 ALTER TABLE `chap_char` DISABLE KEYS */;
/*!40000 ALTER TABLE `chap_char` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chap_image`
--

DROP TABLE IF EXISTS `chap_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chap_image` (
  `c_id` mediumint(8) unsigned NOT NULL,
  `i_id` mediumint(8) unsigned NOT NULL,
  `descript` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chap_image`
--

LOCK TABLES `chap_image` WRITE;
/*!40000 ALTER TABLE `chap_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `chap_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chap_plot`
--

DROP TABLE IF EXISTS `chap_plot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chap_plot` (
  `c_id` mediumint(8) unsigned NOT NULL,
  `p_id` mediumint(8) unsigned NOT NULL,
  `descript` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chap_plot`
--

LOCK TABLES `chap_plot` WRITE;
/*!40000 ALTER TABLE `chap_plot` DISABLE KEYS */;
/*!40000 ALTER TABLE `chap_plot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chap_settings`
--

DROP TABLE IF EXISTS `chap_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chap_settings` (
  `c_id` mediumint(8) unsigned NOT NULL,
  `s_id` mediumint(8) unsigned NOT NULL,
  `descript` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chap_settings`
--

LOCK TABLES `chap_settings` WRITE;
/*!40000 ALTER TABLE `chap_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `chap_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chapters`
--

DROP TABLE IF EXISTS `chapters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chapters` (
  `c_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `descript` text NOT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chapters`
--

LOCK TABLES `chapters` WRITE;
/*!40000 ALTER TABLE `chapters` DISABLE KEYS */;
/*!40000 ALTER TABLE `chapters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `characters`
--

DROP TABLE IF EXISTS `characters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `characters` (
  `ch_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `descript` text NOT NULL,
  PRIMARY KEY (`ch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `characters`
--

LOCK TABLES `characters` WRITE;
/*!40000 ALTER TABLE `characters` DISABLE KEYS */;
/*!40000 ALTER TABLE `characters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imagery`
--

DROP TABLE IF EXISTS `imagery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `imagery` (
  `i_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `descript` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`i_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imagery`
--

LOCK TABLES `imagery` WRITE;
/*!40000 ALTER TABLE `imagery` DISABLE KEYS */;
/*!40000 ALTER TABLE `imagery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `init_calam`
--

DROP TABLE IF EXISTS `init_calam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `init_calam` (
  `calam_id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `calam_name` varchar(48) DEFAULT NULL,
  `calam_note` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`calam_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `init_calam`
--

LOCK TABLES `init_calam` WRITE;
/*!40000 ALTER TABLE `init_calam` DISABLE KEYS */;
/*!40000 ALTER TABLE `init_calam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `init_char`
--

DROP TABLE IF EXISTS `init_char`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `init_char` (
  `char_id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `char_name` varchar(48) DEFAULT NULL,
  `char_note` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`char_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `init_char`
--

LOCK TABLES `init_char` WRITE;
/*!40000 ALTER TABLE `init_char` DISABLE KEYS */;
/*!40000 ALTER TABLE `init_char` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `init_film`
--

DROP TABLE IF EXISTS `init_film`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `init_film` (
  `film_id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `film_name` varchar(48) DEFAULT NULL,
  `film_note` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`film_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `init_film`
--

LOCK TABLES `init_film` WRITE;
/*!40000 ALTER TABLE `init_film` DISABLE KEYS */;
/*!40000 ALTER TABLE `init_film` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `init_inst`
--

DROP TABLE IF EXISTS `init_inst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `init_inst` (
  `inst_id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `inst_name` varchar(48) DEFAULT NULL,
  `inst` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`inst_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `init_inst`
--

LOCK TABLES `init_inst` WRITE;
/*!40000 ALTER TABLE `init_inst` DISABLE KEYS */;
/*!40000 ALTER TABLE `init_inst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `init_plot`
--

DROP TABLE IF EXISTS `init_plot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `init_plot` (
  `plot_id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `plot_name` varchar(48) DEFAULT NULL,
  `plot_note` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`plot_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `init_plot`
--

LOCK TABLES `init_plot` WRITE;
/*!40000 ALTER TABLE `init_plot` DISABLE KEYS */;
/*!40000 ALTER TABLE `init_plot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `init_review`
--

DROP TABLE IF EXISTS `init_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `init_review` (
  `review_id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `review_name` varchar(48) DEFAULT NULL,
  `review_note` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`review_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `init_review`
--

LOCK TABLES `init_review` WRITE;
/*!40000 ALTER TABLE `init_review` DISABLE KEYS */;
/*!40000 ALTER TABLE `init_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `init_theatre`
--

DROP TABLE IF EXISTS `init_theatre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `init_theatre` (
  `theatre_id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `theatre_name` varchar(48) DEFAULT NULL,
  `theatre_note` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`theatre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `init_theatre`
--

LOCK TABLES `init_theatre` WRITE;
/*!40000 ALTER TABLE `init_theatre` DISABLE KEYS */;
# INSERT INTO `init_theatre` VALUES (1,'Theatre of Prophets','\"\"'),(2,'Theatre of Tragedy','\"\"'),(3,'Theatre of Trivia','\"\"'),(4,'Theatre of Operations','\"\"'),(5,'Theatre of Eternity','\"\"'),(6,'Theatre of Crystal','\"\"'),(7,'Theatre of Curiosities','\"\"'),(8,'Theatre of Errata','\"\"'),(9,'Theatre of Speculation','\"\"'),(10,'Theatre of Flora','\"\"'),(11,'Theatre of the Deep',NULL);
/*!40000 ALTER TABLE `init_theatre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `init_theme`
--

DROP TABLE IF EXISTS `init_theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `init_theme` (
  `theme_id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `theme_name` varchar(48) DEFAULT NULL,
  `theme_note` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`theme_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `init_theme`
--

LOCK TABLES `init_theme` WRITE;
/*!40000 ALTER TABLE `init_theme` DISABLE KEYS */;
INSERT INTO `init_theme` VALUES (1,'name entry','n'),(2,'Myth of the Fall','One of the stories from the twelve prophets in Theatre of Hades. The Atlanteans were expert ship builders that expanded their floating nations by adding on to the ship. The nation threatened to overtake the sea, (Poseidon\'s domain) so Poseidon turned their notion of frredom of the seas into a project to build to the stars. The Atlanteans were experts of construction and start off on a might project, obsessed with reaching the stars -- only to have Poseidon strip it away with a wave to sink top heavy Atlantis. Atlantis in toh is a nation obsessed with the glory of its own technology, even as that technology is preparing them for doom. Ideas:\r\nThe Fall:obsession:glory:technology:sowing one\'s own destruction:prophecy');
/*!40000 ALTER TABLE `init_theme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plot`
--

DROP TABLE IF EXISTS `plot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plot` (
  `p_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `descript` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plot`
--

LOCK TABLES `plot` WRITE;
/*!40000 ALTER TABLE `plot` DISABLE KEYS */;
/*!40000 ALTER TABLE `plot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `s_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `descript` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `them_chap`
--

DROP TABLE IF EXISTS `them_chap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `them_chap` (
  `c_id` mediumint(8) unsigned NOT NULL,
  `t_id` mediumint(8) unsigned NOT NULL,
  `descript` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `them_chap`
--

LOCK TABLES `them_chap` WRITE;
/*!40000 ALTER TABLE `them_chap` DISABLE KEYS */;
/*!40000 ALTER TABLE `them_chap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `them_char`
--

DROP TABLE IF EXISTS `them_char`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `them_char` (
  `t_id` mediumint(8) unsigned NOT NULL,
  `ch_id` mediumint(8) unsigned NOT NULL,
  `descript` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `them_char`
--

LOCK TABLES `them_char` WRITE;
/*!40000 ALTER TABLE `them_char` DISABLE KEYS */;
/*!40000 ALTER TABLE `them_char` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `them_image`
--

DROP TABLE IF EXISTS `them_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `them_image` (
  `t_id` mediumint(8) unsigned NOT NULL,
  `i_id` mediumint(8) unsigned NOT NULL,
  `descript` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `them_image`
--

LOCK TABLES `them_image` WRITE;
/*!40000 ALTER TABLE `them_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `them_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `them_plot`
--

DROP TABLE IF EXISTS `them_plot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `them_plot` (
  `t_id` mediumint(8) unsigned NOT NULL,
  `p_id` mediumint(8) unsigned NOT NULL,
  `descript` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `them_plot`
--

LOCK TABLES `them_plot` WRITE;
/*!40000 ALTER TABLE `them_plot` DISABLE KEYS */;
/*!40000 ALTER TABLE `them_plot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `them_set`
--

DROP TABLE IF EXISTS `them_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `them_set` (
  `t_id` mediumint(8) unsigned NOT NULL,
  `s_id` mediumint(8) unsigned NOT NULL,
  `descript` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `them_set`
--

LOCK TABLES `them_set` WRITE;
/*!40000 ALTER TABLE `them_set` DISABLE KEYS */;
/*!40000 ALTER TABLE `them_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `themes`
--

DROP TABLE IF EXISTS `themes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `themes` (
  `t_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `descript` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`t_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `themes`
--

LOCK TABLES `themes` WRITE;
/*!40000 ALTER TABLE `themes` DISABLE KEYS */;
/*!40000 ALTER TABLE `themes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trope_calam`
--

DROP TABLE IF EXISTS `trope_calam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trope_calam` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `calamity` varchar(32) DEFAULT NULL,
  `illusion` varchar(32) DEFAULT NULL,
  `obsession` varchar(32) DEFAULT NULL,
  `monolith` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trope_calam`
--

LOCK TABLES `trope_calam` WRITE;
/*!40000 ALTER TABLE `trope_calam` DISABLE KEYS */;
/*!40000 ALTER TABLE `trope_calam` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-04-04 23:55:28
