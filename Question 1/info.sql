# MySQL-Front 5.1  (Build 1.5)

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40101 SET SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;
/*!40103 SET SQL_NOTES='ON' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;


# Host: localhost    Database: final
# ------------------------------------------------------
# Server version 5.0.27-community-nt

DROP DATABASE IF EXISTS `final`;
CREATE DATABASE `final` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `final`;

#
# Source for table info
#

CREATE TABLE `info` (
  `First_Name` varchar(11) NOT NULL default '',
  `Last_Name` varchar(255) NOT NULL default '',
  `email` varchar(255) NOT NULL default '',
  `Phone` varchar(255) NOT NULL default '',
  `location` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`First_Name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Dumping data for table info
#
LOCK TABLES `info` WRITE;
/*!40000 ALTER TABLE `info` DISABLE KEYS */;

INSERT INTO `info` VALUES ('Ketan','Ingale','ketaningale@yahoo.com','7845963215','Nasik');
INSERT INTO `info` VALUES ('Mayur','Kalandhe','mayurkalandhe@hotmail.com','9898785642','Lonavala');
INSERT INTO `info` VALUES ('Rohit','Gautam','rohitgAUTAM12@GMAIL.COM','4512368975','Pune');
INSERT INTO `info` VALUES ('Tarang','Malvaniya','malvaniyatarang1995@gmail.com','8140875153','Pune');
/*!40000 ALTER TABLE `info` ENABLE KEYS */;
UNLOCK TABLES;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
