-- MySQL dump 10.12
--
-- Host: localhost    Database: rest
-- ------------------------------------------------------
-- Server version	6.0.0-alpha-community-nt-debug

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `admin_id` int(11) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `mobile` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'Abhay Agarwal','abhay.ag@gmail.com','aa','9410607612'),(2,'Abhay Agarwal','a1@gmail.com','123','9410607612');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agents`
--

DROP TABLE IF EXISTS `agents`;
CREATE TABLE `agents` (
  `agent_id` int(11) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `mobile` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agents`
--

LOCK TABLES `agents` WRITE;
/*!40000 ALTER TABLE `agents` DISABLE KEYS */;
INSERT INTO `agents` VALUES (1,'Varun Anand','varun.an@gmail.com','heyv','9855762589'),(2,'Kapil Anand','kapil.an@gmail.com','heyk','9855785989'),(3,'Raj Singh','raj.si@gmail.com','heyraj','9855796329');
/*!40000 ALTER TABLE `agents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emi`
--

DROP TABLE IF EXISTS `emi`;
CREATE TABLE `emi` (
  `flat_no` varchar(10) NOT NULL,
  `installment` int(11) DEFAULT NULL,
  `date` varchar(10) DEFAULT NULL,
  `via` varchar(20) DEFAULT NULL,
  `chq_no` varchar(20) DEFAULT NULL,
  `bank_no` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emi`
--

LOCK TABLES `emi` WRITE;
/*!40000 ALTER TABLE `emi` DISABLE KEYS */;
INSERT INTO `emi` VALUES ('52',12000,'26-02-2018',NULL,NULL,NULL),('52',18000,'26-03-2018',NULL,NULL,NULL),('88',18000,'28-03-2018',NULL,NULL,NULL),('88',18000,'18-04-2018',NULL,NULL,NULL),('52',13250,'19-06-2018',NULL,NULL,NULL),('52',12321,'06-08-2018',NULL,NULL,NULL),('88',1000,'13-09-2018',NULL,NULL,NULL),('88',1200,'20-10-2018',NULL,NULL,NULL);
/*!40000 ALTER TABLE `emi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owner`
--

DROP TABLE IF EXISTS `owner`;
CREATE TABLE `owner` (
  `flat_no` varchar(10) NOT NULL DEFAULT '',
  `p_address` varchar(70) DEFAULT NULL,
  `aadhar` varchar(12) DEFAULT NULL,
  `mobile` varchar(10) DEFAULT NULL,
  `cost` int(11) DEFAULT NULL,
  `net_cost` int(50) DEFAULT NULL,
  `paid` int(11) DEFAULT NULL,
  `due` int(11) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `t_via_ch` varchar(50) DEFAULT NULL,
  `t_via_cash` varchar(50) DEFAULT NULL,
  `discount` int(50) DEFAULT NULL,
  `via_chq` int(50) DEFAULT NULL,
  `via_cash` int(50) DEFAULT NULL,
  PRIMARY KEY (`flat_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `owner`
--

LOCK TABLES `owner` WRITE;
/*!40000 ALTER TABLE `owner` DISABLE KEYS */;
INSERT INTO `owner` VALUES ('32','Shimla enterprises','458965896522','9632587412',625897,738558,425896,200001,'Nirmal Singh',NULL,NULL,NULL,NULL,NULL),('52','56,I-Tech Vasant Vihar ,Delhi','852289664588','8965237412',325698,384324,128108,256216,'Sanchit kapoor',NULL,NULL,NULL,NULL,NULL),('78','dehradun enclave','753698523658','6589752123',423658,499916,258965,164693,'Akshay',NULL,NULL,NULL,NULL,NULL),('88','58,ATS services,Indrajeet Enclave,Delhi','753698741236','9512369874',258964,305577,128095,130869,'Ajay Rathi',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `owner` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-02  8:21:46
