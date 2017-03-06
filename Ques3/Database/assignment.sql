# MySQL-Front 5.1  (Build 1.5)

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40101 SET SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;
/*!40103 SET SQL_NOTES='ON' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;


# Host: localhost    Database: assignment
# ------------------------------------------------------
# Server version 5.0.22-community-nt

DROP DATABASE IF EXISTS `assignment`;
CREATE DATABASE `assignment` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `assignment`;

#
# Source for table department
#

CREATE TABLE `department` (
  `DeptNo` int(11) NOT NULL default '0',
  `Dname` varchar(255) default NULL,
  `Location` varchar(255) default NULL,
  PRIMARY KEY  (`DeptNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Dumping data for table department
#
LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;

INSERT INTO `department` VALUES (1,'Software Developer','Pune');
INSERT INTO `department` VALUES (2,'HR','Pune');
INSERT INTO `department` VALUES (3,'Mechanical Engineer','Nashik');
INSERT INTO `department` VALUES (4,'Sales','Mumbai');
INSERT INTO `department` VALUES (5,'Manufacturing','Nashik');
INSERT INTO `department` VALUES (6,'Quality Control','Mumbai');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table employee
#

CREATE TABLE `employee` (
  `EmpNo` int(11) NOT NULL default '0',
  `Ename` varchar(255) default NULL,
  `Job` varchar(255) default NULL,
  `MGR` varchar(255) default NULL,
  `Hiredate` date default NULL,
  `Salary` double default NULL,
  `DeptNo` int(11) default NULL,
  PRIMARY KEY  (`EmpNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Dumping data for table employee
#
LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;

INSERT INTO `employee` VALUES (101,'Nupur Sonawane','Software Developer','Kiran Sonawane','2014-01-06',30000,1);
INSERT INTO `employee` VALUES (102,'Aniket Suryawanshi','Mechanical Engineer','Chetan Pagar','2014-08-04',50000,3);
INSERT INTO `employee` VALUES (103,'Aditi Rawal','HR','Manisha Wagh','2015-06-15',25000,2);
INSERT INTO `employee` VALUES (104,'Mandar Sonawane','Manufacturing','Ajinkya Jadhav','2015-09-21',40000,5);
INSERT INTO `employee` VALUES (105,'Neha Abbad','Quality Control','Sneha Shah','2016-02-15',18000,6);
INSERT INTO `employee` VALUES (106,'Pooja Bhandari','Software Developer','Kiran Sonawane','2016-02-15',20000,1);
INSERT INTO `employee` VALUES (107,'Anand Namjoshi','Sales','Saurabh Joshi','2016-03-14',25000,4);
INSERT INTO `employee` VALUES (108,'Peeush Malik','Mechanical Engineer','Chetan Pagar','2016-06-27',35000,3);
INSERT INTO `employee` VALUES (109,'Ashok Pomnar','Manufacturing','Ajinkya Jadhav','2017-01-09',28000,5);
INSERT INTO `employee` VALUES (110,'Anjali Sonar','Sales','Saurabh Joshi','2017-03-06',20000,4);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
