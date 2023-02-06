# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.5.5-10.10.2-MariaDB-1:10.10.2+maria~ubu2204)
# Database: vinyl-collection
# Generation Time: 2023-02-06 13:58:54 +0000
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
	(1,'https://www.discogs.com/release/6907241-Anathema-A-Fine-Day-To-Exit-/image/SW1hZ2U6MTg5MDczNjA=','anathema','a fine day to exit','2001','prog rock','music for nations'),
	(2,'https://www.discogs.com/release/1346051-Katatonia-Tonights-Decision/image/SW1hZ2U6MTg5MjM3MQ==','katatonia','tonight\'s decision','2007','goth rock','peaceville'),
	(3,'https://www.discogs.com/master/158121-Snot-Get-Some/image/SW1hZ2U6MzU2MjA1OTM=','snot','get some','1996','hardcore punk','geffen'),
	(4,'https://www.discogs.com/master/276793-Tura-Satana-Relief-Through-Release/image/SW1hZ2U6MzAyOTk0Nw==','tura satana','relief through release','1997','nu metal','noise records'),
	(5,'https://www.discogs.com/master/1446149-The-Prodigy-No-Tourists/image/SW1hZ2U6MzcwMDc3ODc=','prodigy','no tourists','2018','drum & bass','bmg'),
	(6,'https://www.discogs.com/master/21087-Tipper-Surrounded/image/SW1hZ2U6Mjg1NDE0NDI=','tipper','surrounded','2003','ambient prog','myutopia recordings'),
	(7,'https://www.discogs.com/master/57960-Sepultura-Chaos-AD/image/SW1hZ2U6NTQyNzc4Nzk=','sepultura','chaos ad','1993','thrash','roadrunner records'),
	(8,'https://www.discogs.com/master/460256-Streetlight-Manifesto-99-Songs-Of-Revolution-Volume-One/image/SW1hZ2U6MTkyODM1ODY=','streetlight manefesto','99 songs of revolution vol 1','2010','ska punk','victory, pentimento'),
	(9,'https://www.discogs.com/master/51257-Dub-War-Pain/image/SW1hZ2U6MjA1NDc2MQ==','dub war','pain','1995','alternative rock','earache records');

/*!40000 ALTER TABLE `vinyl-collection` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
