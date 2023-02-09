# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.5.5-10.10.2-MariaDB-1:10.10.2+maria~ubu2204)
# Database: vinyl-collection
# Generation Time: 2023-02-09 14:37:34 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table vinyl-collection
# ------------------------------------------------------------

DROP TABLE IF EXISTS `vinyl-collection`;

CREATE TABLE `vinyl-collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(1000) NOT NULL DEFAULT '',
  `artist` varchar(30) NOT NULL DEFAULT '',
  `album` varchar(30) NOT NULL,
  `year` year(4) NOT NULL,
  `genre` varchar(30) NOT NULL DEFAULT '',
  `label-released` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `vinyl-collection` WRITE;
/*!40000 ALTER TABLE `vinyl-collection` DISABLE KEYS */;

INSERT INTO `vinyl-collection` (`id`, `image`, `artist`, `album`, `year`, `genre`, `label-released`)
VALUES
	(1,'anathema.png','Anathema','A Fine Day To Exit','2001','Prog Rock','Music For Nations'),
	(2,'katatonia.png','Katatonia','Tonight\'s Decision','2007','Goth Rock','Peaceville'),
	(3,'snot.png','Snot','Get Some','1996','Hardcore Punk','Geffen'),
	(4,'turasatana.png','Tura Satana','Relief Through Release','1997','Nu Metal','Noise'),
	(5,'prodigy.png','Prodigy','No Tourists','2018','Drum & Bass','BMG'),
	(6,'tipper.png','Tipper','Surrounded','2003','Ambient Prog','Myutopia'),
	(7,'sepultura.png','Sepultura','Chaos A.D','1993','Thrash','Roadrunner'),
	(8,'sunna.png','Sunna','One Minute Science','2000','Downtempo Hardcore','Astralwerks'),
	(9,'dubwar.png','Dub War','Pain','1995','Alternative Rock','Earache');

/*!40000 ALTER TABLE `vinyl-collection` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
