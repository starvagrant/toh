-- MySQL dump 10.13  Distrib 5.5.43, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: toh
-- ------------------------------------------------------
-- Server version	5.5.43-0ubuntu0.12.04.1

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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-06-09 22:12:32
