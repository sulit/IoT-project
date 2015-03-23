-- MySQL dump 10.11
--
-- Host: localhost    Database: classroom
-- ------------------------------------------------------
-- Server version	5.0.51b-community-nt-log

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
-- Table structure for table `a`
--

DROP TABLE IF EXISTS `a`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `a` (
  `a` int(11) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `a`
--

LOCK TABLES `a` WRITE;
/*!40000 ALTER TABLE `a` DISABLE KEYS */;
/*!40000 ALTER TABLE `a` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ab`
--

DROP TABLE IF EXISTS `ab`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `ab` (
  `d` date default NULL,
  `t` time default NULL
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `ab`
--

LOCK TABLES `ab` WRITE;
/*!40000 ALTER TABLE `ab` DISABLE KEYS */;
INSERT INTO `ab` VALUES ('2011-08-02','21:24:00');
/*!40000 ALTER TABLE `ab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `administrator`
--

DROP TABLE IF EXISTS `administrator`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `administrator` (
  `name` varchar(40) default NULL,
  `password` varchar(40) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `administrator`
--

LOCK TABLES `administrator` WRITE;
/*!40000 ALTER TABLE `administrator` DISABLE KEYS */;
INSERT INTO `administrator` VALUES ('admin','admin');
/*!40000 ALTER TABLE `administrator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `administrator_classroom_status`
--

DROP TABLE IF EXISTS `administrator_classroom_status`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `administrator_classroom_status` (
  `classroom_number` varchar(8) default NULL,
  `light` int(11) default NULL,
  `fan` int(11) default NULL,
  `hot` int(11) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `administrator_classroom_status`
--

LOCK TABLES `administrator_classroom_status` WRITE;
/*!40000 ALTER TABLE `administrator_classroom_status` DISABLE KEYS */;
INSERT INTO `administrator_classroom_status` VALUES ('101',1,0,1),('102',1,0,1),('103',1,0,1),('104',1,0,1),('105',1,0,1),('201',1,0,1),('202',1,0,1),('203',1,0,1),('204',1,0,1),('205',1,0,1),('301',1,0,1),('302',1,0,1),('303',1,0,1),('304',1,0,1),('305',1,0,1);
/*!40000 ALTER TABLE `administrator_classroom_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `administrator_message`
--

DROP TABLE IF EXISTS `administrator_message`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `administrator_message` (
  `username` varchar(50) default NULL,
  `time` int(11) default NULL,
  `head` varchar(50) default NULL,
  `content` varchar(100) default NULL,
  `state` int(11) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `administrator_message`
--

LOCK TABLES `administrator_message` WRITE;
/*!40000 ALTER TABLE `administrator_message` DISABLE KEYS */;
INSERT INTO `administrator_message` VALUES ('cendy',1315658229,'管理员你好','你好管理员，我是新注册的用户',0),('mrli',1315658875,'你好','你好管理员',0),('xiao',1315660660,'admin','系统很好',1),('liyang',1315660805,'很好','谢谢',1),('huhu',1315737797,'物品损坏','301教室',1);
/*!40000 ALTER TABLE `administrator_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `administrator_safe`
--

DROP TABLE IF EXISTS `administrator_safe`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `administrator_safe` (
  `room_number` varchar(8) default NULL,
  `fire_safe` int(11) default NULL,
  `gate_safe` int(11) default NULL,
  `counts` int(10) default NULL,
  `DTH` int(10) default NULL,
  `smoke` int(10) default NULL,
  `DTHs` varchar(2) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `administrator_safe`
--

LOCK TABLES `administrator_safe` WRITE;
/*!40000 ALTER TABLE `administrator_safe` DISABLE KEYS */;
INSERT INTO `administrator_safe` VALUES ('101',0,0,1,64,125,'k'),('102',0,0,NULL,NULL,NULL,NULL),('103',0,0,NULL,NULL,NULL,NULL),('104',0,0,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `administrator_safe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `administrator_suggest`
--

DROP TABLE IF EXISTS `administrator_suggest`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `administrator_suggest` (
  `name` varchar(40) default NULL,
  `time` int(11) default NULL,
  `suggest` varchar(100) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `administrator_suggest`
--

LOCK TABLES `administrator_suggest` WRITE;
/*!40000 ALTER TABLE `administrator_suggest` DISABLE KEYS */;
/*!40000 ALTER TABLE `administrator_suggest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_schedule_101`
--

DROP TABLE IF EXISTS `class_schedule_101`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `class_schedule_101` (
  `week` int(11) default NULL,
  `class1` varchar(40) default NULL,
  `class2` varchar(40) default NULL,
  `class3` varchar(40) default NULL,
  `class4` varchar(40) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `class_schedule_101`
--

LOCK TABLES `class_schedule_101` WRITE;
/*!40000 ALTER TABLE `class_schedule_101` DISABLE KEYS */;
INSERT INTO `class_schedule_101` VALUES (1,'','高等数学',NULL,NULL),(2,NULL,NULL,'计算机技术',NULL),(3,'Java','网络系统',NULL,'C'),(4,'英语','Java',NULL,NULL),(5,NULL,NULL,'数据结构','');
/*!40000 ALTER TABLE `class_schedule_101` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_schedule_102`
--

DROP TABLE IF EXISTS `class_schedule_102`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `class_schedule_102` (
  `week` int(11) default NULL,
  `class1` varchar(40) default NULL,
  `class2` varchar(40) default NULL,
  `class3` varchar(40) default NULL,
  `class4` varchar(40) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `class_schedule_102`
--

LOCK TABLES `class_schedule_102` WRITE;
/*!40000 ALTER TABLE `class_schedule_102` DISABLE KEYS */;
INSERT INTO `class_schedule_102` VALUES (1,'英语','数学',NULL,NULL),(2,NULL,NULL,'计算机',NULL),(3,'软件工程导论',NULL,NULL,'C语言'),(4,'英语',NULL,NULL,NULL),(5,NULL,NULL,'数学',NULL);
/*!40000 ALTER TABLE `class_schedule_102` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_schedule_103`
--

DROP TABLE IF EXISTS `class_schedule_103`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `class_schedule_103` (
  `week` int(11) default NULL,
  `class1` varchar(40) default NULL,
  `class2` varchar(40) default NULL,
  `class3` varchar(40) default NULL,
  `class4` varchar(40) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `class_schedule_103`
--

LOCK TABLES `class_schedule_103` WRITE;
/*!40000 ALTER TABLE `class_schedule_103` DISABLE KEYS */;
INSERT INTO `class_schedule_103` VALUES (1,'线性代数','数学',NULL,NULL),(2,NULL,NULL,'计算机',NULL),(3,'Java',NULL,NULL,'C语言'),(4,'英语',NULL,NULL,NULL),(5,NULL,NULL,'数学',NULL);
/*!40000 ALTER TABLE `class_schedule_103` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_schedule_104`
--

DROP TABLE IF EXISTS `class_schedule_104`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `class_schedule_104` (
  `week` int(11) default NULL,
  `class1` varchar(40) default NULL,
  `class2` varchar(40) default NULL,
  `class3` varchar(40) default NULL,
  `class4` varchar(40) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `class_schedule_104`
--

LOCK TABLES `class_schedule_104` WRITE;
/*!40000 ALTER TABLE `class_schedule_104` DISABLE KEYS */;
INSERT INTO `class_schedule_104` VALUES (1,'英语','数学',NULL,NULL),(2,NULL,NULL,'计算机',NULL),(3,'Java',NULL,NULL,'C语言'),(4,'英语',NULL,NULL,NULL),(5,NULL,NULL,'数学',NULL);
/*!40000 ALTER TABLE `class_schedule_104` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_schedule_105`
--

DROP TABLE IF EXISTS `class_schedule_105`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `class_schedule_105` (
  `week` int(11) default NULL,
  `class1` varchar(40) default NULL,
  `class2` varchar(40) default NULL,
  `class3` varchar(40) default NULL,
  `class4` varchar(40) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `class_schedule_105`
--

LOCK TABLES `class_schedule_105` WRITE;
/*!40000 ALTER TABLE `class_schedule_105` DISABLE KEYS */;
INSERT INTO `class_schedule_105` VALUES (1,'英语','数学',NULL,NULL),(2,NULL,NULL,'计算机',NULL),(3,'Java',NULL,NULL,'C语言'),(4,'英语',NULL,NULL,NULL),(5,NULL,NULL,'数学',NULL);
/*!40000 ALTER TABLE `class_schedule_105` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_schedule_201`
--

DROP TABLE IF EXISTS `class_schedule_201`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `class_schedule_201` (
  `week` int(11) default NULL,
  `class1` varchar(40) default NULL,
  `class2` varchar(40) default NULL,
  `class3` varchar(40) default NULL,
  `class4` varchar(40) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `class_schedule_201`
--

LOCK TABLES `class_schedule_201` WRITE;
/*!40000 ALTER TABLE `class_schedule_201` DISABLE KEYS */;
INSERT INTO `class_schedule_201` VALUES (1,'英语','数学',NULL,NULL),(2,NULL,NULL,'计算机',NULL),(3,'Java',NULL,NULL,'C语言'),(4,'英语',NULL,NULL,NULL),(5,NULL,NULL,'数学',NULL);
/*!40000 ALTER TABLE `class_schedule_201` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_schedule_202`
--

DROP TABLE IF EXISTS `class_schedule_202`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `class_schedule_202` (
  `week` int(11) default NULL,
  `class1` varchar(40) default NULL,
  `class2` varchar(40) default NULL,
  `class3` varchar(40) default NULL,
  `class4` varchar(40) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `class_schedule_202`
--

LOCK TABLES `class_schedule_202` WRITE;
/*!40000 ALTER TABLE `class_schedule_202` DISABLE KEYS */;
INSERT INTO `class_schedule_202` VALUES (1,'英语','数学',NULL,NULL),(2,NULL,NULL,'计算机',NULL),(3,'Java',NULL,NULL,'C语言'),(4,'英语',NULL,NULL,NULL),(5,NULL,NULL,'数学',NULL);
/*!40000 ALTER TABLE `class_schedule_202` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_schedule_203`
--

DROP TABLE IF EXISTS `class_schedule_203`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `class_schedule_203` (
  `week` int(11) default NULL,
  `class1` varchar(40) default NULL,
  `class2` varchar(40) default NULL,
  `class3` varchar(40) default NULL,
  `class4` varchar(40) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `class_schedule_203`
--

LOCK TABLES `class_schedule_203` WRITE;
/*!40000 ALTER TABLE `class_schedule_203` DISABLE KEYS */;
INSERT INTO `class_schedule_203` VALUES (1,'英语','数学',NULL,NULL),(2,NULL,NULL,'计算机',NULL),(3,'Java',NULL,NULL,'C语言'),(4,'数字逻辑',NULL,NULL,NULL),(5,NULL,NULL,'数学',NULL);
/*!40000 ALTER TABLE `class_schedule_203` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_schedule_204`
--

DROP TABLE IF EXISTS `class_schedule_204`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `class_schedule_204` (
  `week` int(11) default NULL,
  `class1` varchar(40) default NULL,
  `class2` varchar(40) default NULL,
  `class3` varchar(40) default NULL,
  `class4` varchar(40) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `class_schedule_204`
--

LOCK TABLES `class_schedule_204` WRITE;
/*!40000 ALTER TABLE `class_schedule_204` DISABLE KEYS */;
INSERT INTO `class_schedule_204` VALUES (1,'英语','数学',NULL,NULL),(2,NULL,NULL,'计算机',NULL),(3,'Java',NULL,NULL,'C语言'),(4,'英语',NULL,NULL,NULL),(5,NULL,NULL,'数学',NULL);
/*!40000 ALTER TABLE `class_schedule_204` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_schedule_205`
--

DROP TABLE IF EXISTS `class_schedule_205`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `class_schedule_205` (
  `week` int(11) default NULL,
  `class1` varchar(40) default NULL,
  `class2` varchar(40) default NULL,
  `class3` varchar(40) default NULL,
  `class4` varchar(40) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `class_schedule_205`
--

LOCK TABLES `class_schedule_205` WRITE;
/*!40000 ALTER TABLE `class_schedule_205` DISABLE KEYS */;
INSERT INTO `class_schedule_205` VALUES (1,'英语','数学',NULL,NULL),(2,NULL,NULL,'计算机',NULL),(3,'Java',NULL,NULL,'C语言'),(4,'英语',NULL,NULL,NULL),(5,NULL,NULL,'数学',NULL);
/*!40000 ALTER TABLE `class_schedule_205` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_schedule_301`
--

DROP TABLE IF EXISTS `class_schedule_301`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `class_schedule_301` (
  `week` int(11) default NULL,
  `class1` varchar(40) default NULL,
  `class2` varchar(40) default NULL,
  `class3` varchar(40) default NULL,
  `class4` varchar(40) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `class_schedule_301`
--

LOCK TABLES `class_schedule_301` WRITE;
/*!40000 ALTER TABLE `class_schedule_301` DISABLE KEYS */;
INSERT INTO `class_schedule_301` VALUES (1,'英语','数学',NULL,NULL),(2,NULL,NULL,'计算机',NULL),(3,'Java',NULL,NULL,'C语言'),(4,'英语',NULL,NULL,NULL),(5,NULL,NULL,'数学',NULL);
/*!40000 ALTER TABLE `class_schedule_301` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_schedule_302`
--

DROP TABLE IF EXISTS `class_schedule_302`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `class_schedule_302` (
  `week` int(11) default NULL,
  `class1` varchar(40) default NULL,
  `class2` varchar(40) default NULL,
  `class3` varchar(40) default NULL,
  `class4` varchar(40) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `class_schedule_302`
--

LOCK TABLES `class_schedule_302` WRITE;
/*!40000 ALTER TABLE `class_schedule_302` DISABLE KEYS */;
INSERT INTO `class_schedule_302` VALUES (1,'英语','数学',NULL,NULL),(2,NULL,NULL,'计算机',NULL),(3,'Java',NULL,NULL,'C语言'),(4,'英语',NULL,NULL,NULL),(5,NULL,NULL,'数学',NULL);
/*!40000 ALTER TABLE `class_schedule_302` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_schedule_303`
--

DROP TABLE IF EXISTS `class_schedule_303`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `class_schedule_303` (
  `week` int(11) default NULL,
  `class1` varchar(40) default NULL,
  `class2` varchar(40) default NULL,
  `class3` varchar(40) default NULL,
  `class4` varchar(40) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `class_schedule_303`
--

LOCK TABLES `class_schedule_303` WRITE;
/*!40000 ALTER TABLE `class_schedule_303` DISABLE KEYS */;
INSERT INTO `class_schedule_303` VALUES (1,'英语','数学',NULL,NULL),(2,NULL,NULL,'计算机',NULL),(3,'Java',NULL,NULL,'C语言'),(4,'英语',NULL,NULL,NULL),(5,NULL,NULL,'数学',NULL);
/*!40000 ALTER TABLE `class_schedule_303` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_schedule_304`
--

DROP TABLE IF EXISTS `class_schedule_304`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `class_schedule_304` (
  `week` int(11) default NULL,
  `class1` varchar(40) default NULL,
  `class2` varchar(40) default NULL,
  `class3` varchar(40) default NULL,
  `class4` varchar(40) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `class_schedule_304`
--

LOCK TABLES `class_schedule_304` WRITE;
/*!40000 ALTER TABLE `class_schedule_304` DISABLE KEYS */;
INSERT INTO `class_schedule_304` VALUES (1,'英语','数学',NULL,NULL),(2,NULL,NULL,'计算机',NULL),(3,'Java',NULL,NULL,'C语言'),(4,'英语',NULL,NULL,NULL),(5,NULL,NULL,'数学',NULL);
/*!40000 ALTER TABLE `class_schedule_304` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_schedule_305`
--

DROP TABLE IF EXISTS `class_schedule_305`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `class_schedule_305` (
  `week` int(11) default NULL,
  `class1` varchar(40) default NULL,
  `class2` varchar(40) default NULL,
  `class3` varchar(40) default NULL,
  `class4` varchar(40) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `class_schedule_305`
--

LOCK TABLES `class_schedule_305` WRITE;
/*!40000 ALTER TABLE `class_schedule_305` DISABLE KEYS */;
INSERT INTO `class_schedule_305` VALUES (1,'英语','shuxue',NULL,NULL),(2,NULL,NULL,'计算机',NULL),(3,'Java',NULL,NULL,'C语言'),(4,'英语',NULL,NULL,NULL),(5,NULL,NULL,'数学',NULL);
/*!40000 ALTER TABLE `class_schedule_305` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_table_401`
--

DROP TABLE IF EXISTS `class_table_401`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `class_table_401` (
  `week` int(11) default NULL,
  `class1` varchar(40) default NULL,
  `class2` varchar(40) default NULL,
  `class3` varchar(40) default NULL,
  `class4` varchar(40) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `class_table_401`
--

LOCK TABLES `class_table_401` WRITE;
/*!40000 ALTER TABLE `class_table_401` DISABLE KEYS */;
INSERT INTO `class_table_401` VALUES (1,'网络系统管理',NULL,'shuxue','高等数学'),(2,'大学英语','经济管理','计算机应用','经济管理'),(3,'组织培训',NULL,NULL,NULL),(4,'市场科技','服务市场',NULL,NULL),(5,'Marketing Techniques','Linear Algebra','PE Specialty','Basis of Computer Engineering');
/*!40000 ALTER TABLE `class_table_401` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_table_402`
--

DROP TABLE IF EXISTS `class_table_402`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `class_table_402` (
  `week` int(11) default NULL,
  `class1` varchar(40) default NULL,
  `class2` varchar(40) default NULL,
  `class3` varchar(40) default NULL,
  `class4` varchar(40) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `class_table_402`
--

LOCK TABLES `class_table_402` WRITE;
/*!40000 ALTER TABLE `class_table_402` DISABLE KEYS */;
INSERT INTO `class_table_402` VALUES (1,'数学',NULL,NULL,'高等数学'),(2,'大学英语','经营管理','计算机应用',NULL),(3,'组织能力科学',NULL,NULL,NULL),(4,'市场营销','服务市场',NULL,NULL),(5,NULL,'线性代数',NULL,'计算机工程基础');
/*!40000 ALTER TABLE `class_table_402` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_table_403`
--

DROP TABLE IF EXISTS `class_table_403`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `class_table_403` (
  `week` int(11) default NULL,
  `class1` varchar(40) default NULL,
  `class2` varchar(40) default NULL,
  `class3` varchar(40) default NULL,
  `class4` varchar(40) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `class_table_403`
--

LOCK TABLES `class_table_403` WRITE;
/*!40000 ALTER TABLE `class_table_403` DISABLE KEYS */;
INSERT INTO `class_table_403` VALUES (1,'市场营销',NULL,NULL,'高等数学'),(2,'大学英语','经营管理','计算机应用',NULL),(3,'组织能力科学',NULL,NULL,NULL),(4,'市场营销','服务市场',NULL,NULL),(5,NULL,'线性代数',NULL,'计算机工程基础');
/*!40000 ALTER TABLE `class_table_403` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_table_404`
--

DROP TABLE IF EXISTS `class_table_404`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `class_table_404` (
  `week` int(11) default NULL,
  `class1` varchar(40) default NULL,
  `class2` varchar(40) default NULL,
  `class3` varchar(40) default NULL,
  `class4` varchar(40) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `class_table_404`
--

LOCK TABLES `class_table_404` WRITE;
/*!40000 ALTER TABLE `class_table_404` DISABLE KEYS */;
INSERT INTO `class_table_404` VALUES (1,'市场营销',NULL,NULL,'高等数学'),(2,'大学英语','经营管理','计算机应用',NULL),(3,'组织能力科学',NULL,NULL,NULL),(4,'市场营销','服务市场',NULL,NULL),(5,NULL,'线性代数',NULL,'计算机工程基础');
/*!40000 ALTER TABLE `class_table_404` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_table_405`
--

DROP TABLE IF EXISTS `class_table_405`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `class_table_405` (
  `week` int(11) default NULL,
  `class1` varchar(40) default NULL,
  `class2` varchar(40) default NULL,
  `class3` varchar(40) default NULL,
  `class4` varchar(40) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `class_table_405`
--

LOCK TABLES `class_table_405` WRITE;
/*!40000 ALTER TABLE `class_table_405` DISABLE KEYS */;
INSERT INTO `class_table_405` VALUES (1,'市场营销',NULL,NULL,'高等数学'),(2,'大学英语','经营管理','计算机应用',NULL),(3,'组织能力科学',NULL,NULL,NULL),(4,'市场营销','服务市场',NULL,NULL),(5,NULL,'线性代数',NULL,'计算机工程基础');
/*!40000 ALTER TABLE `class_table_405` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classroom_status`
--

DROP TABLE IF EXISTS `classroom_status`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `classroom_status` (
  `classroom_number` varchar(4) default NULL,
  `total_seats` int(11) default NULL,
  `used_seats` int(11) default NULL,
  `temperature` float default NULL,
  `humility` float default NULL,
  `light` int(11) default NULL,
  `light_status` varchar(4) default NULL,
  `fan_status` varchar(4) default NULL,
  `hot_status` varchar(4) default NULL,
  `temperature_status` varchar(4) default NULL,
  `ctrl` varchar(4) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `classroom_status`
--

LOCK TABLES `classroom_status` WRITE;
/*!40000 ALTER TABLE `classroom_status` DISABLE KEYS */;
INSERT INTO `classroom_status` VALUES ('101',200,6,28,69,845,'o','o','o','o','o'),('102',200,6,28,69,845,'f','f','f','o','f'),('103',200,6,28,69,845,'f','f','f','o','f'),('104',200,6,28,69,845,'f','f','f','o','f'),('105',200,6,28,69,845,'f','f','f','o','f'),('201',200,6,28,69,845,'f','f','f','o','f'),('202',200,6,28,69,845,'f','f','f','o','f'),('203',200,6,28,69,845,'f','f','f','o','f'),('204',200,6,28,69,845,'f','f','f','o','f'),('205',200,6,28,69,845,'f','f','f','o','f'),('301',200,2,27,70,889,'f','f','f','o','f'),('302',200,6,28,69,845,'f','f','f','o','f'),('303',200,6,28,69,845,'f','f','f','o','f'),('304',200,6,28,69,845,'f','f','f','o','f'),('305',200,6,28,69,845,'f','f','f','o','f');
/*!40000 ALTER TABLE `classroom_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feng_message`
--

DROP TABLE IF EXISTS `feng_message`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `feng_message` (
  `time` int(11) default NULL,
  `_from` varchar(50) default NULL,
  `head` varchar(50) default NULL,
  `content` varchar(100) default NULL,
  `state` int(11) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=gb2312;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `feng_message`
--

LOCK TABLES `feng_message` WRITE;
/*!40000 ALTER TABLE `feng_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `feng_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `first_floor`
--

DROP TABLE IF EXISTS `first_floor`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `first_floor` (
  `classroom_number` varchar(8) default NULL,
  `total_seat` int(11) default NULL,
  `exist_person` int(11) default NULL,
  `T` float default NULL,
  `RH` float default NULL,
  `has_class` int(1) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `first_floor`
--

LOCK TABLES `first_floor` WRITE;
/*!40000 ALTER TABLE `first_floor` DISABLE KEYS */;
INSERT INTO `first_floor` VALUES ('101',300,36,27.3,0.49,2147483647),('102',300,12,27,0.48,1),('103',200,45,27,0.49,0),('104',200,13,28.1,0.46,0),('105',300,83,27.4,0.49,0);
/*!40000 ALTER TABLE `first_floor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huhu_message`
--

DROP TABLE IF EXISTS `huhu_message`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `huhu_message` (
  `time` int(11) default NULL,
  `_from` varchar(50) default NULL,
  `head` varchar(50) default NULL,
  `content` varchar(100) default NULL,
  `state` int(11) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=gb2312;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `huhu_message`
--

LOCK TABLES `huhu_message` WRITE;
/*!40000 ALTER TABLE `huhu_message` DISABLE KEYS */;
INSERT INTO `huhu_message` VALUES (1315737758,'huhu','发给自己','加油\r\n',0);
/*!40000 ALTER TABLE `huhu_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `j_message`
--

DROP TABLE IF EXISTS `j_message`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `j_message` (
  `time` int(11) default NULL,
  `_from` varchar(50) default NULL,
  `head` varchar(50) default NULL,
  `content` varchar(100) default NULL,
  `state` int(11) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=gb2312;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `j_message`
--

LOCK TABLES `j_message` WRITE;
/*!40000 ALTER TABLE `j_message` DISABLE KEYS */;
INSERT INTO `j_message` VALUES (1315616287,'nick','还好','可以用 成功 哈哈\r\n',0);
/*!40000 ALTER TABLE `j_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jia_message`
--

DROP TABLE IF EXISTS `jia_message`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `jia_message` (
  `time` int(11) default NULL,
  `_from` varchar(50) default NULL,
  `head` varchar(50) default NULL,
  `content` varchar(100) default NULL,
  `state` int(11) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=gb2312;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `jia_message`
--

LOCK TABLES `jia_message` WRITE;
/*!40000 ALTER TABLE `jia_message` DISABLE KEYS */;
INSERT INTO `jia_message` VALUES (1315617472,'administrator','<回复:jiamign>','haoaho',0),(1315617596,'administrator','<回复:jiamign>','jiajia',0);
/*!40000 ALTER TABLE `jia_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jsj3_message`
--

DROP TABLE IF EXISTS `jsj3_message`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `jsj3_message` (
  `time` int(11) default NULL,
  `_from` varchar(50) default NULL,
  `head` varchar(50) default NULL,
  `content` varchar(100) default NULL,
  `state` int(11) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=gb2312;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `jsj3_message`
--

LOCK TABLES `jsj3_message` WRITE;
/*!40000 ALTER TABLE `jsj3_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `jsj3_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likui_message`
--

DROP TABLE IF EXISTS `likui_message`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `likui_message` (
  `time` int(11) default NULL,
  `_from` varchar(50) default NULL,
  `head` varchar(50) default NULL,
  `content` varchar(100) default NULL,
  `state` int(11) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `likui_message`
--

LOCK TABLES `likui_message` WRITE;
/*!40000 ALTER TABLE `likui_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `likui_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likui_teach_table`
--

DROP TABLE IF EXISTS `likui_teach_table`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `likui_teach_table` (
  `week` int(11) default NULL,
  `class1` varchar(40) default NULL,
  `class2` varchar(40) default NULL,
  `class3` varchar(40) default NULL,
  `class4` varchar(40) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `likui_teach_table`
--

LOCK TABLES `likui_teach_table` WRITE;
/*!40000 ALTER TABLE `likui_teach_table` DISABLE KEYS */;
INSERT INTO `likui_teach_table` VALUES (1,'','数学',NULL,NULL),(2,NULL,NULL,'计算机',NULL),(3,'',NULL,NULL,NULL),(4,NULL,NULL,NULL,NULL),(5,NULL,NULL,'数学',NULL);
/*!40000 ALTER TABLE `likui_teach_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lili_message`
--

DROP TABLE IF EXISTS `lili_message`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `lili_message` (
  `time` int(11) default NULL,
  `_from` varchar(50) default NULL,
  `head` varchar(50) default NULL,
  `content` varchar(100) default NULL,
  `state` int(11) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=gb2312;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `lili_message`
--

LOCK TABLES `lili_message` WRITE;
/*!40000 ALTER TABLE `lili_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `lili_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lili_teach_table`
--

DROP TABLE IF EXISTS `lili_teach_table`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `lili_teach_table` (
  `week` int(11) default NULL,
  `class1` varchar(50) default NULL,
  `class2` varchar(50) default NULL,
  `class3` varchar(50) default NULL,
  `class4` varchar(50) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=gb2312;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `lili_teach_table`
--

LOCK TABLES `lili_teach_table` WRITE;
/*!40000 ALTER TABLE `lili_teach_table` DISABLE KEYS */;
INSERT INTO `lili_teach_table` VALUES (1,NULL,NULL,NULL,NULL),(2,NULL,NULL,NULL,NULL),(3,NULL,NULL,NULL,NULL),(4,NULL,NULL,NULL,NULL),(5,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `lili_teach_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lisir_message`
--

DROP TABLE IF EXISTS `lisir_message`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `lisir_message` (
  `time` int(11) default NULL,
  `_from` varchar(50) default NULL,
  `head` varchar(50) default NULL,
  `content` varchar(100) default NULL,
  `state` int(11) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=gb2312;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `lisir_message`
--

LOCK TABLES `lisir_message` WRITE;
/*!40000 ALTER TABLE `lisir_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `lisir_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lisir_teach_table`
--

DROP TABLE IF EXISTS `lisir_teach_table`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `lisir_teach_table` (
  `week` int(11) default NULL,
  `class1` varchar(50) default NULL,
  `class2` varchar(50) default NULL,
  `class3` varchar(50) default NULL,
  `class4` varchar(50) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=gb2312;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `lisir_teach_table`
--

LOCK TABLES `lisir_teach_table` WRITE;
/*!40000 ALTER TABLE `lisir_teach_table` DISABLE KEYS */;
INSERT INTO `lisir_teach_table` VALUES (1,NULL,NULL,NULL,NULL),(2,NULL,NULL,NULL,NULL),(3,NULL,NULL,NULL,NULL),(4,NULL,NULL,NULL,NULL),(5,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `lisir_teach_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `liuyang_message`
--

DROP TABLE IF EXISTS `liuyang_message`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `liuyang_message` (
  `time` int(11) default NULL,
  `_from` varchar(50) default NULL,
  `head` varchar(50) default NULL,
  `content` varchar(100) default NULL,
  `state` int(11) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=gb2312;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `liuyang_message`
--

LOCK TABLES `liuyang_message` WRITE;
/*!40000 ALTER TABLE `liuyang_message` DISABLE KEYS */;
INSERT INTO `liuyang_message` VALUES (1315656777,'liuyang','申请自修室回复','',0);
/*!40000 ALTER TABLE `liuyang_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `liuyang_teach_table`
--

DROP TABLE IF EXISTS `liuyang_teach_table`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `liuyang_teach_table` (
  `week` int(11) default NULL,
  `class1` varchar(50) default NULL,
  `class2` varchar(50) default NULL,
  `class3` varchar(50) default NULL,
  `class4` varchar(50) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=gb2312;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `liuyang_teach_table`
--

LOCK TABLES `liuyang_teach_table` WRITE;
/*!40000 ALTER TABLE `liuyang_teach_table` DISABLE KEYS */;
INSERT INTO `liuyang_teach_table` VALUES (1,'英语',NULL,NULL,NULL),(2,NULL,NULL,NULL,NULL),(3,NULL,NULL,NULL,NULL),(4,NULL,NULL,NULL,NULL),(5,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `liuyang_teach_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `liyang_message`
--

DROP TABLE IF EXISTS `liyang_message`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `liyang_message` (
  `time` int(11) default NULL,
  `_from` varchar(50) default NULL,
  `head` varchar(50) default NULL,
  `content` varchar(100) default NULL,
  `state` int(11) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `liyang_message`
--

LOCK TABLES `liyang_message` WRITE;
/*!40000 ALTER TABLE `liyang_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `liyang_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `liyang_teach_table`
--

DROP TABLE IF EXISTS `liyang_teach_table`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `liyang_teach_table` (
  `week` int(11) default NULL,
  `class1` varchar(50) default NULL,
  `class2` varchar(50) default NULL,
  `class3` varchar(50) default NULL,
  `class4` varchar(50) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `liyang_teach_table`
--

LOCK TABLES `liyang_teach_table` WRITE;
/*!40000 ALTER TABLE `liyang_teach_table` DISABLE KEYS */;
INSERT INTO `liyang_teach_table` VALUES (1,'数学',NULL,NULL,NULL),(2,NULL,'英语',NULL,'软件工程导论'),(3,NULL,NULL,'面向对象程序设计语言',NULL),(4,NULL,'数字逻辑',NULL,NULL),(5,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `liyang_teach_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `local_news`
--

DROP TABLE IF EXISTS `local_news`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `local_news` (
  `head` varchar(60) default NULL,
  `url` varchar(60) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `local_news`
--

LOCK TABLES `local_news` WRITE;
/*!40000 ALTER TABLE `local_news` DISABLE KEYS */;
/*!40000 ALTER TABLE `local_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mrli_message`
--

DROP TABLE IF EXISTS `mrli_message`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mrli_message` (
  `time` int(11) default NULL,
  `_from` varchar(50) default NULL,
  `head` varchar(50) default NULL,
  `content` varchar(100) default NULL,
  `state` int(11) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=gb2312;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mrli_message`
--

LOCK TABLES `mrli_message` WRITE;
/*!40000 ALTER TABLE `mrli_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `mrli_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mrli_teach_table`
--

DROP TABLE IF EXISTS `mrli_teach_table`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mrli_teach_table` (
  `week` int(11) default NULL,
  `class1` varchar(50) default NULL,
  `class2` varchar(50) default NULL,
  `class3` varchar(50) default NULL,
  `class4` varchar(50) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=gb2312;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mrli_teach_table`
--

LOCK TABLES `mrli_teach_table` WRITE;
/*!40000 ALTER TABLE `mrli_teach_table` DISABLE KEYS */;
INSERT INTO `mrli_teach_table` VALUES (1,NULL,NULL,NULL,NULL),(2,NULL,NULL,NULL,NULL),(3,NULL,NULL,NULL,NULL),(4,NULL,NULL,NULL,NULL),(5,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `mrli_teach_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_classroom`
--

DROP TABLE IF EXISTS `order_classroom`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `order_classroom` (
  `teacher` varchar(40) default NULL,
  `time` int(11) default NULL,
  `week` int(11) default NULL,
  `classroom_number` varchar(8) default NULL,
  `class` int(11) default NULL,
  `reason` varchar(80) default NULL,
  `subject` varchar(40) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `order_classroom`
--

LOCK TABLES `order_classroom` WRITE;
/*!40000 ALTER TABLE `order_classroom` DISABLE KEYS */;
INSERT INTO `order_classroom` VALUES ('mrli',1315658842,1,'101',1,'数学','申请数学教室'),('liyang',1315660770,2,'103',1,'软件','用于授课');
/*!40000 ALTER TABLE `order_classroom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repair_table`
--

DROP TABLE IF EXISTS `repair_table`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `repair_table` (
  `name` varchar(40) default NULL,
  `time` int(11) default NULL,
  `classroom_number` varchar(8) default NULL,
  `detail` varchar(80) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `repair_table`
--

LOCK TABLES `repair_table` WRITE;
/*!40000 ALTER TABLE `repair_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `repair_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rh_101`
--

DROP TABLE IF EXISTS `rh_101`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `rh_101` (
  `t_time` time default NULL,
  `RH` float default NULL
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `rh_101`
--

LOCK TABLES `rh_101` WRITE;
/*!40000 ALTER TABLE `rh_101` DISABLE KEYS */;
INSERT INTO `rh_101` VALUES ('01:00:00',0.500682),('01:15:00',0.499195),('01:30:00',0.504128),('01:45:00',0.497427),('02:00:00',0.504037),('02:15:00',0.496847),('02:30:00',0.502968),('02:45:00',0.496454),('03:00:00',0.500045),('03:15:00',0.497903),('03:30:00',0.496548),('03:45:00',0.495933),('04:00:00',0.500638),('04:15:00',0.496206),('04:30:00',0.501506),('04:45:00',0.49835),('05:00:00',0.49827),('05:15:00',0.497034),('05:30:00',0.503932),('05:45:00',0.498888),('06:00:00',0.499705),('06:15:00',0.498067),('06:30:00',0.500024),('06:45:00',0.498284),('07:00:00',0.503555),('07:15:00',0.50412),('07:30:00',0.500508),('07:45:00',0.499424),('08:00:00',0.501573),('08:15:00',0.495614),('08:30:00',0.498795),('08:45:00',0.497697),('09:00:00',0.503686),('09:15:00',0.50081),('09:30:00',0.502903),('09:45:00',0.495102),('10:00:00',0.496791),('10:15:00',0.501777),('10:30:00',0.501116),('10:45:00',0.49809),('11:00:00',0.497288),('11:15:00',0.504126),('11:30:00',0.501399),('11:45:00',0.499172),('12:00:00',0.497374),('12:15:00',0.500482),('12:30:00',0.504563),('12:45:00',0.502269),('13:00:00',0.495077),('13:15:00',0.497712),('13:30:00',0.501179),('13:45:00',0.501814),('14:00:00',0.498051),('14:15:00',0.497902),('14:30:00',0.502241),('14:45:00',0.495602),('15:00:00',0.501108),('15:15:00',0.503081),('15:30:00',0.503579),('15:45:00',0.501392),('16:00:00',0.497516),('16:15:00',0.503704),('16:30:00',0.504028),('16:45:00',0.497262),('17:00:00',0.504028),('17:15:00',0.500869),('17:30:00',0.497337),('17:45:00',0.495705),('18:00:00',0.499678),('18:15:00',0.502303),('18:30:00',0.497835),('18:45:00',0.501485),('19:00:00',0.49832),('19:15:00',0.502081),('19:30:00',0.499844),('19:45:00',0.503235),('20:00:00',0.504912),('20:15:00',0.504109),('20:30:00',0.500846),('20:45:00',0.498811),('21:00:00',0.49556),('21:15:00',0.499345),('21:30:00',0.498392),('21:45:00',0.504396),('22:00:00',0.501305),('22:15:00',0.496779),('22:30:00',0.500773),('22:45:00',0.497343),('23:00:00',0.495663),('23:15:00',0.498159),('23:30:00',0.501426),('23:45:00',0.502788),('24:00:00',0.495912),('24:15:00',0.496466),('24:30:00',0.497107),('24:45:00',0.50399);
/*!40000 ALTER TABLE `rh_101` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rh_102`
--

DROP TABLE IF EXISTS `rh_102`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `rh_102` (
  `t_time` time default NULL,
  `RH` float default NULL
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `rh_102`
--

LOCK TABLES `rh_102` WRITE;
/*!40000 ALTER TABLE `rh_102` DISABLE KEYS */;
INSERT INTO `rh_102` VALUES ('01:00:00',0.496594),('01:15:00',0.496392),('01:30:00',0.499121),('01:45:00',0.499958),('02:00:00',0.503206),('02:15:00',0.4976),('02:30:00',0.502786),('02:45:00',0.49833),('03:00:00',0.503209),('03:15:00',0.49865),('03:30:00',0.504113),('03:45:00',0.498934),('04:00:00',0.504382),('04:15:00',0.496421),('04:30:00',0.502013),('04:45:00',0.495154),('05:00:00',0.496695),('05:15:00',0.498155),('05:30:00',0.497917),('05:45:00',0.502165),('06:00:00',0.496412),('06:15:00',0.500251),('06:30:00',0.501759),('06:45:00',0.502598),('07:00:00',0.503942),('07:15:00',0.500798),('07:30:00',0.501696),('07:45:00',0.495949),('08:00:00',0.495436),('08:15:00',0.49587),('08:30:00',0.497591),('08:45:00',0.501753),('09:00:00',0.498148),('09:15:00',0.499561),('09:30:00',0.498233),('09:45:00',0.496485),('10:00:00',0.499525),('10:15:00',0.497774),('10:30:00',0.502321),('10:45:00',0.504238),('11:00:00',0.50007),('11:15:00',0.495763),('11:30:00',0.503183),('11:45:00',0.501124),('12:00:00',0.499934),('12:15:00',0.499421),('12:30:00',0.497259),('12:45:00',0.503449),('13:00:00',0.499274),('13:15:00',0.500317),('13:30:00',0.496322),('13:45:00',0.49962),('14:00:00',0.502352),('14:15:00',0.504488),('14:30:00',0.503459),('14:45:00',0.495811),('15:00:00',0.495385),('15:15:00',0.504973),('15:30:00',0.502796),('15:45:00',0.495379),('16:00:00',0.498151),('16:15:00',0.498112),('16:30:00',0.502973),('16:45:00',0.502025),('17:00:00',0.499336),('17:15:00',0.503573),('17:30:00',0.504373),('17:45:00',0.496709),('18:00:00',0.495637),('18:15:00',0.498149),('18:30:00',0.500098),('18:45:00',0.498317),('19:00:00',0.504617),('19:15:00',0.503295),('19:30:00',0.500693),('19:45:00',0.498071),('20:00:00',0.5013),('20:15:00',0.496417),('20:30:00',0.502627),('20:45:00',0.497695),('21:00:00',0.498529),('21:15:00',0.495911),('21:30:00',0.500515),('21:45:00',0.501328),('22:00:00',0.501064),('22:15:00',0.499951),('22:30:00',0.503099),('22:45:00',0.501191),('23:00:00',0.503431),('23:15:00',0.499031),('23:30:00',0.502971),('23:45:00',0.496996),('24:00:00',0.501533),('24:15:00',0.50225),('24:30:00',0.50005),('24:45:00',0.499116);
/*!40000 ALTER TABLE `rh_102` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rh_103`
--

DROP TABLE IF EXISTS `rh_103`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `rh_103` (
  `t_time` time default NULL,
  `RH` float default NULL
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `rh_103`
--

LOCK TABLES `rh_103` WRITE;
/*!40000 ALTER TABLE `rh_103` DISABLE KEYS */;
INSERT INTO `rh_103` VALUES ('01:00:00',0.504747),('01:15:00',0.504896),('01:30:00',0.49875),('01:45:00',0.50422),('02:00:00',0.500973),('02:15:00',0.504468),('02:30:00',0.495015),('02:45:00',0.498907),('03:00:00',0.498295),('03:15:00',0.500565),('03:30:00',0.5004),('03:45:00',0.502138),('04:00:00',0.500245),('04:15:00',0.495482),('04:30:00',0.497355),('04:45:00',0.503511),('05:00:00',0.497576),('05:15:00',0.502302),('05:30:00',0.498539),('05:45:00',0.496241),('06:00:00',0.495175),('06:15:00',0.503992),('06:30:00',0.500607),('06:45:00',0.498135),('07:00:00',0.502726),('07:15:00',0.496257),('07:30:00',0.501754),('07:45:00',0.496323),('08:00:00',0.499128),('08:15:00',0.504142),('08:30:00',0.502997),('08:45:00',0.49573),('09:00:00',0.500655),('09:15:00',0.502385),('09:30:00',0.503221),('09:45:00',0.501302),('10:00:00',0.502874),('10:15:00',0.499514),('10:30:00',0.497964),('10:45:00',0.50399),('11:00:00',0.496304),('11:15:00',0.495702),('11:30:00',0.501957),('11:45:00',0.500465),('12:00:00',0.495835),('12:15:00',0.504369),('12:30:00',0.495414),('12:45:00',0.496607),('13:00:00',0.503889),('13:15:00',0.497531),('13:30:00',0.504069),('13:45:00',0.50472),('14:00:00',0.497335),('14:15:00',0.504904),('14:30:00',0.502966),('14:45:00',0.504519),('15:00:00',0.498153),('15:15:00',0.496754),('15:30:00',0.504001),('15:45:00',0.497848),('16:00:00',0.49785),('16:15:00',0.500499),('16:30:00',0.497206),('16:45:00',0.497161),('17:00:00',0.495619),('17:15:00',0.501061),('17:30:00',0.495791),('17:45:00',0.497748),('18:00:00',0.500259),('18:15:00',0.504968),('18:30:00',0.504933),('18:45:00',0.503711),('19:00:00',0.495834),('19:15:00',0.498203),('19:30:00',0.504314),('19:45:00',0.497692),('20:00:00',0.501093),('20:15:00',0.497809),('20:30:00',0.504412),('20:45:00',0.504346),('21:00:00',0.502625),('21:15:00',0.497237),('21:30:00',0.496536),('21:45:00',0.497573),('22:00:00',0.501785),('22:15:00',0.495452),('22:30:00',0.496621),('22:45:00',0.501489),('23:00:00',0.495346),('23:15:00',0.49978),('23:30:00',0.502762),('23:45:00',0.495156),('24:00:00',0.499922),('24:15:00',0.502513),('24:30:00',0.496505),('24:45:00',0.501057);
/*!40000 ALTER TABLE `rh_103` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rh_104`
--

DROP TABLE IF EXISTS `rh_104`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `rh_104` (
  `t_time` time default NULL,
  `RH` float default NULL
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `rh_104`
--

LOCK TABLES `rh_104` WRITE;
/*!40000 ALTER TABLE `rh_104` DISABLE KEYS */;
INSERT INTO `rh_104` VALUES ('01:00:00',0.49713),('01:15:00',0.496077),('01:30:00',0.502682),('01:45:00',0.502617),('02:00:00',0.503745),('02:15:00',0.499414),('02:30:00',0.496288),('02:45:00',0.495282),('03:00:00',0.500481),('03:15:00',0.497997),('03:30:00',0.498361),('03:45:00',0.495935),('04:00:00',0.500763),('04:15:00',0.496007),('04:30:00',0.501341),('04:45:00',0.503223),('05:00:00',0.500502),('05:15:00',0.502188),('05:30:00',0.497043),('05:45:00',0.495844),('06:00:00',0.500322),('06:15:00',0.501766),('06:30:00',0.500764),('06:45:00',0.501338),('07:00:00',0.50153),('07:15:00',0.502105),('07:30:00',0.499133),('07:45:00',0.498626),('08:00:00',0.49585),('08:15:00',0.502129),('08:30:00',0.501711),('08:45:00',0.504298),('09:00:00',0.498896),('09:15:00',0.495481),('09:30:00',0.496345),('09:45:00',0.502653),('10:00:00',0.497397),('10:15:00',0.497437),('10:30:00',0.498268),('10:45:00',0.499488),('11:00:00',0.500179),('11:15:00',0.495573),('11:30:00',0.502952),('11:45:00',0.499637),('12:00:00',0.502884),('12:15:00',0.50418),('12:30:00',0.502707),('12:45:00',0.498259),('13:00:00',0.496453),('13:15:00',0.502421),('13:30:00',0.497035),('13:45:00',0.495879),('14:00:00',0.499351),('14:15:00',0.496253),('14:30:00',0.496731),('14:45:00',0.497176),('15:00:00',0.50354),('15:15:00',0.504088),('15:30:00',0.501734),('15:45:00',0.503521),('16:00:00',0.50421),('16:15:00',0.496204),('16:30:00',0.502729),('16:45:00',0.499269),('17:00:00',0.503255),('17:15:00',0.497914),('17:30:00',0.496498),('17:45:00',0.501794),('18:00:00',0.496496),('18:15:00',0.49648),('18:30:00',0.495023),('18:45:00',0.495283),('19:00:00',0.504662),('19:15:00',0.501771),('19:30:00',0.498334),('19:45:00',0.49827),('20:00:00',0.498113),('20:15:00',0.500683),('20:30:00',0.501117),('20:45:00',0.504928),('21:00:00',0.495319),('21:15:00',0.495303),('21:30:00',0.503058),('21:45:00',0.500108),('22:00:00',0.495086),('22:15:00',0.504818),('22:30:00',0.50295),('22:45:00',0.498128),('23:00:00',0.502531),('23:15:00',0.501184),('23:30:00',0.496544),('23:45:00',0.49531),('24:00:00',0.498813),('24:15:00',0.498539),('24:30:00',0.498145),('24:45:00',0.496273);
/*!40000 ALTER TABLE `rh_104` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rh_105`
--

DROP TABLE IF EXISTS `rh_105`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `rh_105` (
  `t_time` time default NULL,
  `RH` float default NULL
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `rh_105`
--

LOCK TABLES `rh_105` WRITE;
/*!40000 ALTER TABLE `rh_105` DISABLE KEYS */;
INSERT INTO `rh_105` VALUES ('01:00:00',0.50008),('01:15:00',0.497964),('01:30:00',0.499592),('01:45:00',0.498698),('02:00:00',0.496292),('02:15:00',0.502892),('02:30:00',0.495965),('02:45:00',0.504678),('03:00:00',0.50084),('03:15:00',0.498717),('03:30:00',0.501009),('03:45:00',0.497379),('04:00:00',0.499336),('04:15:00',0.504713),('04:30:00',0.500181),('04:45:00',0.495003),('05:00:00',0.497245),('05:15:00',0.498727),('05:30:00',0.500844),('05:45:00',0.503729),('06:00:00',0.499932),('06:15:00',0.504416),('06:30:00',0.499183),('06:45:00',0.496806),('07:00:00',0.496445),('07:15:00',0.502214),('07:30:00',0.500871),('07:45:00',0.497412),('08:00:00',0.497057),('08:15:00',0.504064),('08:30:00',0.49548),('08:45:00',0.495249),('09:00:00',0.504556),('09:15:00',0.501892),('09:30:00',0.504644),('09:45:00',0.4969),('10:00:00',0.49928),('10:15:00',0.499837),('10:30:00',0.50398),('10:45:00',0.499927),('11:00:00',0.49791),('11:15:00',0.500222),('11:30:00',0.498743),('11:45:00',0.500724),('12:00:00',0.496007),('12:15:00',0.503288),('12:30:00',0.503247),('12:45:00',0.496119),('13:00:00',0.504302),('13:15:00',0.500663),('13:30:00',0.504025),('13:45:00',0.498723),('14:00:00',0.498735),('14:15:00',0.502593),('14:30:00',0.496745),('14:45:00',0.496036),('15:00:00',0.504243),('15:15:00',0.498917),('15:30:00',0.496873),('15:45:00',0.503295),('16:00:00',0.502301),('16:15:00',0.503795),('16:30:00',0.504091),('16:45:00',0.500075),('17:00:00',0.502208),('17:15:00',0.504184),('17:30:00',0.500452),('17:45:00',0.500645),('18:00:00',0.49613),('18:15:00',0.502062),('18:30:00',0.502303),('18:45:00',0.498065),('19:00:00',0.497887),('19:15:00',0.500409),('19:30:00',0.495948),('19:45:00',0.502039),('20:00:00',0.495491),('20:15:00',0.502931),('20:30:00',0.497056),('20:45:00',0.500519),('21:00:00',0.497436),('21:15:00',0.497535),('21:30:00',0.50383),('21:45:00',0.495051),('22:00:00',0.502738),('22:15:00',0.50356),('22:30:00',0.503921),('22:45:00',0.499883),('23:00:00',0.504724),('23:15:00',0.502748),('23:30:00',0.49509),('23:45:00',0.504813),('24:00:00',0.498568),('24:15:00',0.503978),('24:30:00',0.499625),('24:45:00',0.501789);
/*!40000 ALTER TABLE `rh_105` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rh_201`
--

DROP TABLE IF EXISTS `rh_201`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `rh_201` (
  `t_time` time default NULL,
  `RH` float default NULL
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `rh_201`
--

LOCK TABLES `rh_201` WRITE;
/*!40000 ALTER TABLE `rh_201` DISABLE KEYS */;
INSERT INTO `rh_201` VALUES ('01:00:00',0.504069),('01:15:00',0.501735),('01:30:00',0.499988),('01:45:00',0.499021),('02:00:00',0.50263),('02:15:00',0.50151),('02:30:00',0.502788),('02:45:00',0.499742),('03:00:00',0.496591),('03:15:00',0.497567),('03:30:00',0.500761),('03:45:00',0.49934),('04:00:00',0.499332),('04:15:00',0.498119),('04:30:00',0.504648),('04:45:00',0.495167),('05:00:00',0.50045),('05:15:00',0.496078),('05:30:00',0.499863),('05:45:00',0.503832),('06:00:00',0.496106),('06:15:00',0.5041),('06:30:00',0.498717),('06:45:00',0.503108),('07:00:00',0.50313),('07:15:00',0.503367),('07:30:00',0.496396),('07:45:00',0.497595),('08:00:00',0.496872),('08:15:00',0.496128),('08:30:00',0.500688),('08:45:00',0.498141),('09:00:00',0.502801),('09:15:00',0.501992),('09:30:00',0.495457),('09:45:00',0.505),('10:00:00',0.50186),('10:15:00',0.497964),('10:30:00',0.497875),('10:45:00',0.504748),('11:00:00',0.499566),('11:15:00',0.502232),('11:30:00',0.499391),('11:45:00',0.500948),('12:00:00',0.49886),('12:15:00',0.501711),('12:30:00',0.500465),('12:45:00',0.498561),('13:00:00',0.496711),('13:15:00',0.503326),('13:30:00',0.499038),('13:45:00',0.502115),('14:00:00',0.504467),('14:15:00',0.49906),('14:30:00',0.502765),('14:45:00',0.497615),('15:00:00',0.501956),('15:15:00',0.504732),('15:30:00',0.504984),('15:45:00',0.498208),('16:00:00',0.495338),('16:15:00',0.502544),('16:30:00',0.504452),('16:45:00',0.503598),('17:00:00',0.498705),('17:15:00',0.497368),('17:30:00',0.498812),('17:45:00',0.503209),('18:00:00',0.499436),('18:15:00',0.496785),('18:30:00',0.501826),('18:45:00',0.503099),('19:00:00',0.497295),('19:15:00',0.504872),('19:30:00',0.504349),('19:45:00',0.496626),('20:00:00',0.497285),('20:15:00',0.499745),('20:30:00',0.499057),('20:45:00',0.49886),('21:00:00',0.496247),('21:15:00',0.504843),('21:30:00',0.498921),('21:45:00',0.504747),('22:00:00',0.503215),('22:15:00',0.503974),('22:30:00',0.499437),('22:45:00',0.501025),('23:00:00',0.503515),('23:15:00',0.500097),('23:30:00',0.504598),('23:45:00',0.501886),('24:00:00',0.496617),('24:15:00',0.497866),('24:30:00',0.496627),('24:45:00',0.498391);
/*!40000 ALTER TABLE `rh_201` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rh_202`
--

DROP TABLE IF EXISTS `rh_202`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `rh_202` (
  `t_time` time default NULL,
  `RH` float default NULL
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `rh_202`
--

LOCK TABLES `rh_202` WRITE;
/*!40000 ALTER TABLE `rh_202` DISABLE KEYS */;
INSERT INTO `rh_202` VALUES ('01:00:00',0.50166),('01:15:00',0.495633),('01:30:00',0.497806),('01:45:00',0.501754),('02:00:00',0.496528),('02:15:00',0.495101),('02:30:00',0.503444),('02:45:00',0.500503),('03:00:00',0.498303),('03:15:00',0.499914),('03:30:00',0.504775),('03:45:00',0.499697),('04:00:00',0.503435),('04:15:00',0.496877),('04:30:00',0.503238),('04:45:00',0.49717),('05:00:00',0.501804),('05:15:00',0.502601),('05:30:00',0.499819),('05:45:00',0.501524),('06:00:00',0.499883),('06:15:00',0.49886),('06:30:00',0.495086),('06:45:00',0.499354),('07:00:00',0.497657),('07:15:00',0.501687),('07:30:00',0.50298),('07:45:00',0.496222),('08:00:00',0.499286),('08:15:00',0.504229),('08:30:00',0.498354),('08:45:00',0.501384),('09:00:00',0.497513),('09:15:00',0.503349),('09:30:00',0.498264),('09:45:00',0.496269),('10:00:00',0.501837),('10:15:00',0.499973),('10:30:00',0.497002),('10:45:00',0.496705),('11:00:00',0.500421),('11:15:00',0.503198),('11:30:00',0.504892),('11:45:00',0.498894),('12:00:00',0.495758),('12:15:00',0.498138),('12:30:00',0.500826),('12:45:00',0.499138),('13:00:00',0.504085),('13:15:00',0.497528),('13:30:00',0.498552),('13:45:00',0.497319),('14:00:00',0.498546),('14:15:00',0.497077),('14:30:00',0.496714),('14:45:00',0.504122),('15:00:00',0.496109),('15:15:00',0.504567),('15:30:00',0.502643),('15:45:00',0.502013),('16:00:00',0.498226),('16:15:00',0.502705),('16:30:00',0.499894),('16:45:00',0.499967),('17:00:00',0.495251),('17:15:00',0.495726),('17:30:00',0.499533),('17:45:00',0.501942),('18:00:00',0.504601),('18:15:00',0.499744),('18:30:00',0.495182),('18:45:00',0.499106),('19:00:00',0.502671),('19:15:00',0.496851),('19:30:00',0.501802),('19:45:00',0.495816),('20:00:00',0.500501),('20:15:00',0.502974),('20:30:00',0.498236),('20:45:00',0.499341),('21:00:00',0.503182),('21:15:00',0.49947),('21:30:00',0.503496),('21:45:00',0.503343),('22:00:00',0.503032),('22:15:00',0.498484),('22:30:00',0.496803),('22:45:00',0.495097),('23:00:00',0.496499),('23:15:00',0.502045),('23:30:00',0.501375),('23:45:00',0.496476),('24:00:00',0.50483),('24:15:00',0.504922),('24:30:00',0.501969),('24:45:00',0.49867);
/*!40000 ALTER TABLE `rh_202` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rh_203`
--

DROP TABLE IF EXISTS `rh_203`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `rh_203` (
  `t_time` time default NULL,
  `RH` float default NULL
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `rh_203`
--

LOCK TABLES `rh_203` WRITE;
/*!40000 ALTER TABLE `rh_203` DISABLE KEYS */;
INSERT INTO `rh_203` VALUES ('01:00:00',0.498496),('01:15:00',0.500153),('01:30:00',0.500342),('01:45:00',0.500264),('02:00:00',0.497751),('02:15:00',0.502716),('02:30:00',0.49767),('02:45:00',0.500706),('03:00:00',0.499042),('03:15:00',0.497641),('03:30:00',0.503473),('03:45:00',0.495217),('04:00:00',0.504544),('04:15:00',0.502181),('04:30:00',0.503602),('04:45:00',0.499088),('05:00:00',0.504813),('05:15:00',0.499365),('05:30:00',0.497313),('05:45:00',0.502),('06:00:00',0.497263),('06:15:00',0.49616),('06:30:00',0.497613),('06:45:00',0.503062),('07:00:00',0.498396),('07:15:00',0.495389),('07:30:00',0.495365),('07:45:00',0.499598),('08:00:00',0.499775),('08:15:00',0.50139),('08:30:00',0.497138),('08:45:00',0.499691),('09:00:00',0.497751),('09:15:00',0.499434),('09:30:00',0.496812),('09:45:00',0.498465),('10:00:00',0.496942),('10:15:00',0.498885),('10:30:00',0.500924),('10:45:00',0.49813),('11:00:00',0.497458),('11:15:00',0.500119),('11:30:00',0.497774),('11:45:00',0.501767),('12:00:00',0.495876),('12:15:00',0.495184),('12:30:00',0.500274),('12:45:00',0.50087),('13:00:00',0.499969),('13:15:00',0.502218),('13:30:00',0.502552),('13:45:00',0.496635),('14:00:00',0.497182),('14:15:00',0.503607),('14:30:00',0.500301),('14:45:00',0.504996),('15:00:00',0.496857),('15:15:00',0.497906),('15:30:00',0.504882),('15:45:00',0.495417),('16:00:00',0.496212),('16:15:00',0.495498),('16:30:00',0.501176),('16:45:00',0.503429),('17:00:00',0.500064),('17:15:00',0.498012),('17:30:00',0.499183),('17:45:00',0.496922),('18:00:00',0.504312),('18:15:00',0.501482),('18:30:00',0.499379),('18:45:00',0.496182),('19:00:00',0.503157),('19:15:00',0.503265),('19:30:00',0.501809),('19:45:00',0.497679),('20:00:00',0.500079),('20:15:00',0.502707),('20:30:00',0.498948),('20:45:00',0.501607),('21:00:00',0.50257),('21:15:00',0.495549),('21:30:00',0.502296),('21:45:00',0.503176),('22:00:00',0.500602),('22:15:00',0.502101),('22:30:00',0.502731),('22:45:00',0.497647),('23:00:00',0.49886),('23:15:00',0.499148),('23:30:00',0.504612),('23:45:00',0.499122),('24:00:00',0.502716),('24:15:00',0.49562),('24:30:00',0.503632),('24:45:00',0.503083);
/*!40000 ALTER TABLE `rh_203` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rh_204`
--

DROP TABLE IF EXISTS `rh_204`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `rh_204` (
  `t_time` time default NULL,
  `RH` float default NULL
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `rh_204`
--

LOCK TABLES `rh_204` WRITE;
/*!40000 ALTER TABLE `rh_204` DISABLE KEYS */;
INSERT INTO `rh_204` VALUES ('01:00:00',0.495766),('01:15:00',0.504015),('01:30:00',0.497534),('01:45:00',0.500928),('02:00:00',0.504515),('02:15:00',0.498407),('02:30:00',0.496628),('02:45:00',0.502835),('03:00:00',0.495345),('03:15:00',0.497348),('03:30:00',0.502187),('03:45:00',0.49703),('04:00:00',0.495081),('04:15:00',0.500263),('04:30:00',0.502898),('04:45:00',0.504039),('05:00:00',0.503496),('05:15:00',0.496052),('05:30:00',0.495563),('05:45:00',0.501381),('06:00:00',0.49959),('06:15:00',0.49657),('06:30:00',0.498268),('06:45:00',0.498925),('07:00:00',0.501638),('07:15:00',0.503848),('07:30:00',0.497297),('07:45:00',0.497989),('08:00:00',0.500974),('08:15:00',0.501076),('08:30:00',0.497793),('08:45:00',0.50419),('09:00:00',0.49953),('09:15:00',0.497326),('09:30:00',0.498177),('09:45:00',0.504047),('10:00:00',0.50113),('10:15:00',0.496029),('10:30:00',0.498308),('10:45:00',0.495335),('11:00:00',0.496521),('11:15:00',0.497202),('11:30:00',0.501396),('11:45:00',0.501181),('12:00:00',0.50217),('12:15:00',0.503422),('12:30:00',0.499673),('12:45:00',0.497922),('13:00:00',0.502799),('13:15:00',0.499558),('13:30:00',0.503797),('13:45:00',0.496702),('14:00:00',0.497673),('14:15:00',0.496243),('14:30:00',0.496026),('14:45:00',0.498823),('15:00:00',0.500641),('15:15:00',0.497101),('15:30:00',0.497126),('15:45:00',0.504852),('16:00:00',0.503928),('16:15:00',0.499726),('16:30:00',0.497035),('16:45:00',0.497466),('17:00:00',0.495667),('17:15:00',0.500406),('17:30:00',0.49928),('17:45:00',0.498058),('18:00:00',0.501193),('18:15:00',0.502602),('18:30:00',0.499141),('18:45:00',0.497088),('19:00:00',0.498083),('19:15:00',0.499172),('19:30:00',0.495562),('19:45:00',0.498182),('20:00:00',0.50494),('20:15:00',0.498348),('20:30:00',0.496816),('20:45:00',0.495986),('21:00:00',0.503937),('21:15:00',0.503466),('21:30:00',0.499922),('21:45:00',0.497768),('22:00:00',0.497104),('22:15:00',0.496438),('22:30:00',0.503807),('22:45:00',0.498765),('23:00:00',0.496367),('23:15:00',0.50498),('23:30:00',0.496218),('23:45:00',0.501293),('24:00:00',0.497338),('24:15:00',0.50359),('24:30:00',0.504389),('24:45:00',0.497588);
/*!40000 ALTER TABLE `rh_204` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rh_205`
--

DROP TABLE IF EXISTS `rh_205`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `rh_205` (
  `t_time` time default NULL,
  `RH` float default NULL
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `rh_205`
--

LOCK TABLES `rh_205` WRITE;
/*!40000 ALTER TABLE `rh_205` DISABLE KEYS */;
INSERT INTO `rh_205` VALUES ('01:00:00',0.495539),('01:15:00',0.501595),('01:30:00',0.504803),('01:45:00',0.50339),('02:00:00',0.50106),('02:15:00',0.499406),('02:30:00',0.500086),('02:45:00',0.495739),('03:00:00',0.504031),('03:15:00',0.502844),('03:30:00',0.500301),('03:45:00',0.504811),('04:00:00',0.501288),('04:15:00',0.503994),('04:30:00',0.497749),('04:45:00',0.501346),('05:00:00',0.503652),('05:15:00',0.497729),('05:30:00',0.495299),('05:45:00',0.496548),('06:00:00',0.502537),('06:15:00',0.502998),('06:30:00',0.50487),('06:45:00',0.500246),('07:00:00',0.500295),('07:15:00',0.497864),('07:30:00',0.499652),('07:45:00',0.502811),('08:00:00',0.504324),('08:15:00',0.498295),('08:30:00',0.500084),('08:45:00',0.500816),('09:00:00',0.504913),('09:15:00',0.500702),('09:30:00',0.503584),('09:45:00',0.496457),('10:00:00',0.496849),('10:15:00',0.498228),('10:30:00',0.49802),('10:45:00',0.500709),('11:00:00',0.504766),('11:15:00',0.500787),('11:30:00',0.498941),('11:45:00',0.500248),('12:00:00',0.502247),('12:15:00',0.498854),('12:30:00',0.500552),('12:45:00',0.498108),('13:00:00',0.504674),('13:15:00',0.501003),('13:30:00',0.50044),('13:45:00',0.498098),('14:00:00',0.495835),('14:15:00',0.495197),('14:30:00',0.498053),('14:45:00',0.50297),('15:00:00',0.498267),('15:15:00',0.503824),('15:30:00',0.496921),('15:45:00',0.496324),('16:00:00',0.497364),('16:15:00',0.502492),('16:30:00',0.500639),('16:45:00',0.498282),('17:00:00',0.499229),('17:15:00',0.502562),('17:30:00',0.502591),('17:45:00',0.504894),('18:00:00',0.50227),('18:15:00',0.497441),('18:30:00',0.499424),('18:45:00',0.501308),('19:00:00',0.502557),('19:15:00',0.502621),('19:30:00',0.498281),('19:45:00',0.498679),('20:00:00',0.502921),('20:15:00',0.499463),('20:30:00',0.497769),('20:45:00',0.504838),('21:00:00',0.495805),('21:15:00',0.502743),('21:30:00',0.502693),('21:45:00',0.498701),('22:00:00',0.499868),('22:15:00',0.501938),('22:30:00',0.502528),('22:45:00',0.49844),('23:00:00',0.500336),('23:15:00',0.496263),('23:30:00',0.503649),('23:45:00',0.503388),('24:00:00',0.503099),('24:15:00',0.503462),('24:30:00',0.495305),('24:45:00',0.49971);
/*!40000 ALTER TABLE `rh_205` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rh_301`
--

DROP TABLE IF EXISTS `rh_301`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `rh_301` (
  `t_time` time default NULL,
  `RH` float default NULL
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `rh_301`
--

LOCK TABLES `rh_301` WRITE;
/*!40000 ALTER TABLE `rh_301` DISABLE KEYS */;
INSERT INTO `rh_301` VALUES ('01:00:00',0.496136),('01:15:00',0.50286),('01:30:00',0.502322),('01:45:00',0.50215),('02:00:00',0.495748),('02:15:00',0.495345),('02:30:00',0.49722),('02:45:00',0.495091),('03:00:00',0.495966),('03:15:00',0.495631),('03:30:00',0.502129),('03:45:00',0.498719),('04:00:00',0.496817),('04:15:00',0.497883),('04:30:00',0.49502),('04:45:00',0.503835),('05:00:00',0.501722),('05:15:00',0.498846),('05:30:00',0.496494),('05:45:00',0.502903),('06:00:00',0.496908),('06:15:00',0.499449),('06:30:00',0.496069),('06:45:00',0.503531),('07:00:00',0.504573),('07:15:00',0.500157),('07:30:00',0.502225),('07:45:00',0.495689),('08:00:00',0.4998),('08:15:00',0.500069),('08:30:00',0.496188),('08:45:00',0.502695),('09:00:00',0.501218),('09:15:00',0.499774),('09:30:00',0.499473),('09:45:00',0.495935),('10:00:00',0.495421),('10:15:00',0.497949),('10:30:00',0.495167),('10:45:00',0.50334),('11:00:00',0.49513),('11:15:00',0.501715),('11:30:00',0.502976),('11:45:00',0.501619),('12:00:00',0.501105),('12:15:00',0.500733),('12:30:00',0.498008),('12:45:00',0.502225),('13:00:00',0.497811),('13:15:00',0.495059),('13:30:00',0.503314),('13:45:00',0.501091),('14:00:00',0.502834),('14:15:00',0.496745),('14:30:00',0.496177),('14:45:00',0.502102),('15:00:00',0.50004),('15:15:00',0.495191),('15:30:00',0.498154),('15:45:00',0.504322),('16:00:00',0.496495),('16:15:00',0.496245),('16:30:00',0.498859),('16:45:00',0.502972),('17:00:00',0.503124),('17:15:00',0.495057),('17:30:00',0.503507),('17:45:00',0.504155),('18:00:00',0.499128),('18:15:00',0.502676),('18:30:00',0.5042),('18:45:00',0.503332),('19:00:00',0.500147),('19:15:00',0.496408),('19:30:00',0.504969),('19:45:00',0.497552),('20:00:00',0.500173),('20:15:00',0.503914),('20:30:00',0.500562),('20:45:00',0.501425),('21:00:00',0.497218),('21:15:00',0.501058),('21:30:00',0.49898),('21:45:00',0.496849),('22:00:00',0.502724),('22:15:00',0.503517),('22:30:00',0.497772),('22:45:00',0.496488),('23:00:00',0.504728),('23:15:00',0.502126),('23:30:00',0.504068),('23:45:00',0.500999),('24:00:00',0.504778),('24:15:00',0.501981),('24:30:00',0.498372),('24:45:00',0.500007);
/*!40000 ALTER TABLE `rh_301` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rh_302`
--

DROP TABLE IF EXISTS `rh_302`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `rh_302` (
  `t_time` time default NULL,
  `RH` float default NULL
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `rh_302`
--

LOCK TABLES `rh_302` WRITE;
/*!40000 ALTER TABLE `rh_302` DISABLE KEYS */;
INSERT INTO `rh_302` VALUES ('01:00:00',0.49731),('01:15:00',0.500183),('01:30:00',0.501422),('01:45:00',0.504529),('02:00:00',0.503278),('02:15:00',0.501069),('02:30:00',0.499327),('02:45:00',0.503675),('03:00:00',0.501662),('03:15:00',0.501662),('03:30:00',0.502945),('03:45:00',0.49556),('04:00:00',0.499357),('04:15:00',0.497949),('04:30:00',0.499392),('04:45:00',0.50466),('05:00:00',0.501292),('05:15:00',0.496659),('05:30:00',0.496962),('05:45:00',0.49793),('06:00:00',0.495151),('06:15:00',0.499667),('06:30:00',0.501726),('06:45:00',0.496085),('07:00:00',0.499853),('07:15:00',0.502165),('07:30:00',0.497883),('07:45:00',0.498644),('08:00:00',0.497777),('08:15:00',0.50457),('08:30:00',0.501862),('08:45:00',0.502718),('09:00:00',0.500742),('09:15:00',0.498196),('09:30:00',0.500176),('09:45:00',0.495547),('10:00:00',0.499729),('10:15:00',0.504659),('10:30:00',0.501017),('10:45:00',0.500793),('11:00:00',0.498357),('11:15:00',0.499048),('11:30:00',0.499617),('11:45:00',0.498573),('12:00:00',0.500115),('12:15:00',0.496835),('12:30:00',0.497341),('12:45:00',0.499257),('13:00:00',0.499336),('13:15:00',0.504542),('13:30:00',0.504542),('13:45:00',0.500996),('14:00:00',0.495921),('14:15:00',0.504153),('14:30:00',0.497166),('14:45:00',0.501023),('15:00:00',0.503818),('15:15:00',0.501278),('15:30:00',0.497095),('15:45:00',0.500681),('16:00:00',0.503249),('16:15:00',0.497069),('16:30:00',0.496259),('16:45:00',0.504219),('17:00:00',0.496685),('17:15:00',0.503883),('17:30:00',0.504478),('17:45:00',0.50133),('18:00:00',0.498574),('18:15:00',0.504694),('18:30:00',0.501071),('18:45:00',0.503438),('19:00:00',0.498816),('19:15:00',0.496261),('19:30:00',0.500202),('19:45:00',0.503739),('20:00:00',0.499992),('20:15:00',0.496038),('20:30:00',0.499986),('20:45:00',0.500988),('21:00:00',0.498337),('21:15:00',0.502843),('21:30:00',0.495337),('21:45:00',0.49704),('22:00:00',0.49847),('22:15:00',0.501266),('22:30:00',0.504571),('22:45:00',0.49814),('23:00:00',0.501869),('23:15:00',0.499838),('23:30:00',0.49976),('23:45:00',0.499957),('24:00:00',0.499098),('24:15:00',0.502943),('24:30:00',0.500829),('24:45:00',0.496381);
/*!40000 ALTER TABLE `rh_302` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rh_303`
--

DROP TABLE IF EXISTS `rh_303`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `rh_303` (
  `t_time` time default NULL,
  `RH` float default NULL
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `rh_303`
--

LOCK TABLES `rh_303` WRITE;
/*!40000 ALTER TABLE `rh_303` DISABLE KEYS */;
INSERT INTO `rh_303` VALUES ('01:00:00',0.498001),('01:15:00',0.496479),('01:30:00',0.499724),('01:45:00',0.495439),('02:00:00',0.498231),('02:15:00',0.50135),('02:30:00',0.504254),('02:45:00',0.499489),('03:00:00',0.497931),('03:15:00',0.503975),('03:30:00',0.495617),('03:45:00',0.50222),('04:00:00',0.498935),('04:15:00',0.504909),('04:30:00',0.49639),('04:45:00',0.499327),('05:00:00',0.502854),('05:15:00',0.498829),('05:30:00',0.49723),('05:45:00',0.496279),('06:00:00',0.503618),('06:15:00',0.504265),('06:30:00',0.496288),('06:45:00',0.499911),('07:00:00',0.503767),('07:15:00',0.497076),('07:30:00',0.502373),('07:45:00',0.503784),('08:00:00',0.504483),('08:15:00',0.497672),('08:30:00',0.501866),('08:45:00',0.497281),('09:00:00',0.499385),('09:15:00',0.501997),('09:30:00',0.499384),('09:45:00',0.498461),('10:00:00',0.502068),('10:15:00',0.496252),('10:30:00',0.502195),('10:45:00',0.500661),('11:00:00',0.497387),('11:15:00',0.49537),('11:30:00',0.498378),('11:45:00',0.502845),('12:00:00',0.496502),('12:15:00',0.495249),('12:30:00',0.498745),('12:45:00',0.503708),('13:00:00',0.495665),('13:15:00',0.49872),('13:30:00',0.502498),('13:45:00',0.499528),('14:00:00',0.498756),('14:15:00',0.49528),('14:30:00',0.496643),('14:45:00',0.495764),('15:00:00',0.503578),('15:15:00',0.504565),('15:30:00',0.499162),('15:45:00',0.502413),('16:00:00',0.501889),('16:15:00',0.50358),('16:30:00',0.495916),('16:45:00',0.503104),('17:00:00',0.503199),('17:15:00',0.497672),('17:30:00',0.501318),('17:45:00',0.497959),('18:00:00',0.5023),('18:15:00',0.495257),('18:30:00',0.502743),('18:45:00',0.500186),('19:00:00',0.500565),('19:15:00',0.496302),('19:30:00',0.498691),('19:45:00',0.496435),('20:00:00',0.500978),('20:15:00',0.504541),('20:30:00',0.500705),('20:45:00',0.5009),('21:00:00',0.49693),('21:15:00',0.503464),('21:30:00',0.499032),('21:45:00',0.503169),('22:00:00',0.504753),('22:15:00',0.496032),('22:30:00',0.502038),('22:45:00',0.499825),('23:00:00',0.500011),('23:15:00',0.498162),('23:30:00',0.499371),('23:45:00',0.499797),('24:00:00',0.497542),('24:15:00',0.495949),('24:30:00',0.498877),('24:45:00',0.503467);
/*!40000 ALTER TABLE `rh_303` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rh_304`
--

DROP TABLE IF EXISTS `rh_304`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `rh_304` (
  `t_time` time default NULL,
  `RH` float default NULL
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `rh_304`
--

LOCK TABLES `rh_304` WRITE;
/*!40000 ALTER TABLE `rh_304` DISABLE KEYS */;
INSERT INTO `rh_304` VALUES ('01:00:00',0.496701),('01:15:00',0.499644),('01:30:00',0.504121),('01:45:00',0.497706),('02:00:00',0.500067),('02:15:00',0.496883),('02:30:00',0.495464),('02:45:00',0.498639),('03:00:00',0.50325),('03:15:00',0.502582),('03:30:00',0.502146),('03:45:00',0.499059),('04:00:00',0.500641),('04:15:00',0.501489),('04:30:00',0.504004),('04:45:00',0.498757),('05:00:00',0.50214),('05:15:00',0.502977),('05:30:00',0.501092),('05:45:00',0.502944),('06:00:00',0.496012),('06:15:00',0.498576),('06:30:00',0.49841),('06:45:00',0.496671),('07:00:00',0.495486),('07:15:00',0.503273),('07:30:00',0.504378),('07:45:00',0.502989),('08:00:00',0.499107),('08:15:00',0.50054),('08:30:00',0.503066),('08:45:00',0.504868),('09:00:00',0.504837),('09:15:00',0.501129),('09:30:00',0.500168),('09:45:00',0.500854),('10:00:00',0.497908),('10:15:00',0.495614),('10:30:00',0.502729),('10:45:00',0.50449),('11:00:00',0.502423),('11:15:00',0.50067),('11:30:00',0.502622),('11:45:00',0.497474),('12:00:00',0.496708),('12:15:00',0.499124),('12:30:00',0.503775),('12:45:00',0.496579),('13:00:00',0.502411),('13:15:00',0.503735),('13:30:00',0.503147),('13:45:00',0.504312),('14:00:00',0.497358),('14:15:00',0.504736),('14:30:00',0.495453),('14:45:00',0.50333),('15:00:00',0.502149),('15:15:00',0.501125),('15:30:00',0.501646),('15:45:00',0.504606),('16:00:00',0.500517),('16:15:00',0.495703),('16:30:00',0.501134),('16:45:00',0.499341),('17:00:00',0.50342),('17:15:00',0.503861),('17:30:00',0.497766),('17:45:00',0.504626),('18:00:00',0.496903),('18:15:00',0.496121),('18:30:00',0.499556),('18:45:00',0.502861),('19:00:00',0.50369),('19:15:00',0.504425),('19:30:00',0.502155),('19:45:00',0.504915),('20:00:00',0.498543),('20:15:00',0.502173),('20:30:00',0.496082),('20:45:00',0.497043),('21:00:00',0.497359),('21:15:00',0.498015),('21:30:00',0.497701),('21:45:00',0.501546),('22:00:00',0.500022),('22:15:00',0.503384),('22:30:00',0.503945),('22:45:00',0.501191),('23:00:00',0.497009),('23:15:00',0.503794),('23:30:00',0.500793),('23:45:00',0.497368),('24:00:00',0.499735),('24:15:00',0.503869),('24:30:00',0.495497),('24:45:00',0.502012);
/*!40000 ALTER TABLE `rh_304` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rh_305`
--

DROP TABLE IF EXISTS `rh_305`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `rh_305` (
  `t_time` time default NULL,
  `RH` float default NULL
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `rh_305`
--

LOCK TABLES `rh_305` WRITE;
/*!40000 ALTER TABLE `rh_305` DISABLE KEYS */;
INSERT INTO `rh_305` VALUES ('01:00:00',0.499675),('01:15:00',0.502993),('01:30:00',0.49876),('01:45:00',0.501758),('02:00:00',0.495513),('02:15:00',0.501395),('02:30:00',0.497378),('02:45:00',0.500656),('03:00:00',0.495999),('03:15:00',0.498966),('03:30:00',0.503661),('03:45:00',0.502226),('04:00:00',0.501655),('04:15:00',0.496331),('04:30:00',0.495898),('04:45:00',0.501211),('05:00:00',0.500106),('05:15:00',0.503219),('05:30:00',0.501843),('05:45:00',0.498665),('06:00:00',0.501747),('06:15:00',0.496317),('06:30:00',0.501258),('06:45:00',0.501682),('07:00:00',0.499152),('07:15:00',0.500872),('07:30:00',0.502197),('07:45:00',0.496873),('08:00:00',0.500241),('08:15:00',0.496037),('08:30:00',0.50105),('08:45:00',0.497589),('09:00:00',0.495195),('09:15:00',0.503981),('09:30:00',0.496327),('09:45:00',0.5049),('10:00:00',0.497116),('10:15:00',0.502733),('10:30:00',0.496202),('10:45:00',0.50232),('11:00:00',0.496446),('11:15:00',0.502787),('11:30:00',0.499801),('11:45:00',0.504287),('12:00:00',0.499127),('12:15:00',0.497455),('12:30:00',0.502237),('12:45:00',0.498386),('13:00:00',0.498517),('13:15:00',0.496963),('13:30:00',0.503404),('13:45:00',0.501325),('14:00:00',0.501056),('14:15:00',0.49631),('14:30:00',0.500514),('14:45:00',0.498667),('15:00:00',0.495675),('15:15:00',0.496865),('15:30:00',0.504385),('15:45:00',0.498299),('16:00:00',0.496965),('16:15:00',0.501717),('16:30:00',0.499483),('16:45:00',0.497666),('17:00:00',0.502087),('17:15:00',0.504783),('17:30:00',0.497708),('17:45:00',0.504741),('18:00:00',0.501441),('18:15:00',0.503652),('18:30:00',0.495934),('18:45:00',0.502756),('19:00:00',0.503074),('19:15:00',0.496192),('19:30:00',0.4973),('19:45:00',0.498677),('20:00:00',0.500849),('20:15:00',0.500898),('20:30:00',0.496247),('20:45:00',0.495431),('21:00:00',0.496357),('21:15:00',0.500999),('21:30:00',0.497306),('21:45:00',0.497882),('22:00:00',0.504582),('22:15:00',0.5023),('22:30:00',0.49764),('22:45:00',0.502558),('23:00:00',0.503312),('23:15:00',0.504795),('23:30:00',0.503333),('23:45:00',0.501126),('24:00:00',0.496309),('24:15:00',0.498008),('24:30:00',0.499425),('24:45:00',0.497622);
/*!40000 ALTER TABLE `rh_305` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `second_floor`
--

DROP TABLE IF EXISTS `second_floor`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `second_floor` (
  `classroom_number` varchar(8) default NULL,
  `total_seat` int(11) default NULL,
  `exist_person` int(11) default NULL,
  `T` float default NULL,
  `RH` float default NULL,
  `has_class` int(1) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `second_floor`
--

LOCK TABLES `second_floor` WRITE;
/*!40000 ALTER TABLE `second_floor` DISABLE KEYS */;
INSERT INTO `second_floor` VALUES ('201',300,32,29.4,0.47,0),('202',300,53,29.7,0.46,1),('203',200,83,27.7,0.49,1),('204',200,58,27,0.5,0),('205',300,91,27.1,0.51,0);
/*!40000 ALTER TABLE `second_floor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_101`
--

DROP TABLE IF EXISTS `t_101`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `t_101` (
  `t_time` time default NULL,
  `T` float default NULL
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `t_101`
--

LOCK TABLES `t_101` WRITE;
/*!40000 ALTER TABLE `t_101` DISABLE KEYS */;
INSERT INTO `t_101` VALUES ('01:00:00',25.1668),('01:15:00',25.463),('01:30:00',27.0367),('01:45:00',28.0528),('02:00:00',27.664),('02:15:00',26.8306),('02:30:00',29.8276),('02:45:00',28.5461),('03:00:00',29.601),('03:15:00',25.8212),('03:30:00',29.5769),('03:45:00',26.1804),('04:00:00',26.9444),('04:15:00',28.9809),('04:30:00',28.1403),('04:45:00',28.2124),('05:00:00',29.2894),('05:15:00',26.6353),('05:30:00',29.1562),('05:45:00',29.2236),('06:00:00',28.8242),('06:15:00',26.3863),('06:30:00',29.823),('06:45:00',29.929),('07:00:00',29.9207),('07:15:00',27.2327),('07:30:00',28.302),('07:45:00',26.6106),('08:00:00',29.3486),('08:15:00',29.3169),('08:30:00',26.7439),('08:45:00',26.1755),('09:00:00',27.1158),('09:15:00',29.295),('09:30:00',29.9419),('09:45:00',26.8411),('10:00:00',27.9323),('10:15:00',26.3341),('10:30:00',29.6088),('10:45:00',29.4415),('11:00:00',28.3015),('11:15:00',28.7321),('11:30:00',29.2792),('11:45:00',29.3628),('12:00:00',29.2339),('12:15:00',26.1652),('12:30:00',29.8369),('12:45:00',29.1011),('13:00:00',29.5869),('13:15:00',27.5574),('13:30:00',25.6673),('13:45:00',26.4456),('14:00:00',25.031),('14:15:00',29.5782),('14:30:00',26.4348),('14:45:00',28.2883),('15:00:00',27.6376),('15:15:00',25.7626),('15:30:00',29.485),('15:45:00',25.0565),('16:00:00',26.0957),('16:15:00',26.2578),('16:30:00',27.8722),('16:45:00',25.7719),('17:00:00',26.5506),('17:15:00',28.1934),('17:30:00',29.0117),('17:45:00',28.7344),('18:00:00',29.0692),('18:15:00',26.6789),('18:30:00',28.9568),('18:45:00',27.8305),('19:00:00',29.7298),('19:15:00',26.4236),('19:30:00',27.3019),('19:45:00',29.4664),('20:00:00',28.3366),('20:15:00',28.9832),('20:30:00',27.709),('20:45:00',25.1273),('21:00:00',26.7603),('21:15:00',25.6306),('21:30:00',29.0608),('21:45:00',29.5609),('22:00:00',27.9022),('22:15:00',25.8528),('22:30:00',27.2372),('22:45:00',29.5854),('23:00:00',25.2844),('23:15:00',26.4706),('23:30:00',27.5188),('23:45:00',28.524),('24:00:00',28.2646),('24:15:00',26.3861),('24:30:00',27.6128),('24:45:00',26.2628),('12:29:19',27.3),('16:58:45',27.3);
/*!40000 ALTER TABLE `t_101` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_102`
--

DROP TABLE IF EXISTS `t_102`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `t_102` (
  `t_time` time default NULL,
  `T` float default NULL
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `t_102`
--

LOCK TABLES `t_102` WRITE;
/*!40000 ALTER TABLE `t_102` DISABLE KEYS */;
INSERT INTO `t_102` VALUES ('01:00:00',27.7223),('01:15:00',28.4805),('01:30:00',27.9762),('01:45:00',28.2578),('02:00:00',28.963),('02:15:00',29.812),('02:30:00',25.8464),('02:45:00',26.8939),('03:00:00',28.8304),('03:15:00',28.3698),('03:30:00',25.9299),('03:45:00',28.243),('04:00:00',29.422),('04:15:00',26.7784),('04:30:00',26.4496),('04:45:00',29.4507),('05:00:00',26.7419),('05:15:00',27.9312),('05:30:00',27.9245),('05:45:00',29.8367),('06:00:00',26.385),('06:15:00',26.4555),('06:30:00',29.1649),('06:45:00',25.1714),('07:00:00',29.845),('07:15:00',25.8029),('07:30:00',28.8937),('07:45:00',27.5781),('08:00:00',26.4481),('08:15:00',25.963),('08:30:00',27.993),('08:45:00',26.0609),('09:00:00',25.912),('09:15:00',26.8047),('09:30:00',27.3743),('09:45:00',27.6567),('10:00:00',26.5292),('10:15:00',27.0395),('10:30:00',26.4755),('10:45:00',29.2122),('11:00:00',28.9755),('11:15:00',28.8129),('11:30:00',27.3814),('11:45:00',29.787),('12:00:00',25.7439),('12:15:00',27.9179),('12:30:00',29.5703),('12:45:00',28.6806),('13:00:00',26.2029),('13:15:00',29.6358),('13:30:00',25.2841),('13:45:00',29.0843),('14:00:00',27.28),('14:15:00',25.2002),('14:30:00',25.526),('14:45:00',27.3596),('15:00:00',29.7708),('15:15:00',28.8878),('15:30:00',26.6798),('15:45:00',27.9395),('16:00:00',25.2722),('16:15:00',25.7326),('16:30:00',27.7574),('16:45:00',28.8559),('17:00:00',28.7411),('17:15:00',29.8656),('17:30:00',28.2692),('17:45:00',27.8931),('18:00:00',26.678),('18:15:00',28.4804),('18:30:00',26.7204),('18:45:00',29.3637),('19:00:00',25.9355),('19:15:00',26.4221),('19:30:00',29.7319),('19:45:00',26.5117),('20:00:00',28.1519),('20:15:00',26.4029),('20:30:00',26.7867),('20:45:00',29.5401),('21:00:00',29.81),('21:15:00',29.8418),('21:30:00',25.6007),('21:45:00',29.2622),('22:00:00',27.9205),('22:15:00',28.329),('22:30:00',28.119),('22:45:00',26.3802),('23:00:00',26.3309),('23:15:00',25.7161),('23:30:00',27.1371),('23:45:00',26.3866),('24:00:00',27.6581),('24:15:00',25.8311),('24:30:00',28.5464),('24:45:00',25.092);
/*!40000 ALTER TABLE `t_102` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_103`
--

DROP TABLE IF EXISTS `t_103`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `t_103` (
  `t_time` time default NULL,
  `T` float default NULL
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `t_103`
--

LOCK TABLES `t_103` WRITE;
/*!40000 ALTER TABLE `t_103` DISABLE KEYS */;
INSERT INTO `t_103` VALUES ('01:00:00',29.3762),('01:15:00',27.9179),('01:30:00',25.4057),('01:45:00',26.1205),('02:00:00',25.9187),('02:15:00',25.7121),('02:30:00',28.7509),('02:45:00',27.4741),('03:00:00',25.6163),('03:15:00',28.6191),('03:30:00',25.7909),('03:45:00',26.7346),('04:00:00',27.9311),('04:15:00',28.6557),('04:30:00',29.245),('04:45:00',29.74),('05:00:00',28.7372),('05:15:00',26.5111),('05:30:00',28.7427),('05:45:00',28.1393),('06:00:00',26.4728),('06:15:00',29.7307),('06:30:00',29.7878),('06:45:00',27.8891),('07:00:00',28.9177),('07:15:00',26.5247),('07:30:00',28.3487),('07:45:00',28.3737),('08:00:00',25.5949),('08:15:00',25.2013),('08:30:00',26.073),('08:45:00',27.1526),('09:00:00',25.7993),('09:15:00',29.2256),('09:30:00',26.1278),('09:45:00',25.33),('10:00:00',27.2485),('10:15:00',27.9033),('10:30:00',29.6637),('10:45:00',28.5524),('11:00:00',25.3615),('11:15:00',27.6892),('11:30:00',27.9056),('11:45:00',28.6288),('12:00:00',28.1601),('12:15:00',29.1203),('12:30:00',29.8669),('12:45:00',25.777),('13:00:00',26.7966),('13:15:00',29.3756),('13:30:00',25.6895),('13:45:00',26.4946),('14:00:00',26.7065),('14:15:00',25.4582),('14:30:00',25.6088),('14:45:00',27.0555),('15:00:00',29.3849),('15:15:00',28.0049),('15:30:00',29.5435),('15:45:00',27.6303),('16:00:00',29.79),('16:15:00',25.7196),('16:30:00',27.3099),('16:45:00',27.0331),('17:00:00',29.3697),('17:15:00',25.4317),('17:30:00',29.4629),('17:45:00',28.0922),('18:00:00',29.7136),('18:15:00',27.7798),('18:30:00',28.7596),('18:45:00',28.6461),('19:00:00',26.8317),('19:15:00',28.5204),('19:30:00',27.2501),('19:45:00',28.165),('20:00:00',26.0551),('20:15:00',25.4614),('20:30:00',28.9915),('20:45:00',29.9968),('21:00:00',27.5648),('21:15:00',26.0204),('21:30:00',28.3888),('21:45:00',29.2374),('22:00:00',27.5432),('22:15:00',25.4089),('22:30:00',29.1588),('22:45:00',26.2283),('23:00:00',29.9512),('23:15:00',25.4407),('23:30:00',28.9198),('23:45:00',25.6763),('24:00:00',28.9316),('24:15:00',28.9647),('24:30:00',29.408),('24:45:00',26.4001);
/*!40000 ALTER TABLE `t_103` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_104`
--

DROP TABLE IF EXISTS `t_104`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `t_104` (
  `t_time` time default NULL,
  `T` float default NULL
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `t_104`
--

LOCK TABLES `t_104` WRITE;
/*!40000 ALTER TABLE `t_104` DISABLE KEYS */;
INSERT INTO `t_104` VALUES ('01:00:00',26.2207),('01:15:00',28.5393),('01:30:00',25.5565),('01:45:00',27.1689),('02:00:00',26.8547),('02:15:00',27.4773),('02:30:00',27.896),('02:45:00',29.731),('03:00:00',28.0086),('03:15:00',25.6001),('03:30:00',29.9689),('03:45:00',27.3877),('04:00:00',25.1166),('04:15:00',26.6454),('04:30:00',29.6492),('04:45:00',26.3913),('05:00:00',27.569),('05:15:00',28.6523),('05:30:00',28.2484),('05:45:00',26.5445),('06:00:00',29.0828),('06:15:00',27.6155),('06:30:00',26.2004),('06:45:00',27.6649),('07:00:00',28.6978),('07:15:00',26.7612),('07:30:00',29.3689),('07:45:00',26.6756),('08:00:00',27.3976),('08:15:00',26.4502),('08:30:00',25.9816),('08:45:00',25.3197),('09:00:00',25.3563),('09:15:00',29.705),('09:30:00',29.1888),('09:45:00',28.4995),('10:00:00',29.809),('10:15:00',28.3623),('10:30:00',25.2469),('10:45:00',28.2426),('11:00:00',28.5475),('11:15:00',29.85),('11:30:00',27.3268),('11:45:00',28.291),('12:00:00',29.0428),('12:15:00',29.5901),('12:30:00',29.9477),('12:45:00',29.3155),('13:00:00',28.1898),('13:15:00',29.0253),('13:30:00',29.0358),('13:45:00',29.7565),('14:00:00',27.6793),('14:15:00',29.2722),('14:30:00',27.6076),('14:45:00',27.2884),('15:00:00',29.9931),('15:15:00',25.3978),('15:30:00',27.0787),('15:45:00',25.9093),('16:00:00',25.0266),('16:15:00',26.3225),('16:30:00',29.1975),('16:45:00',28.656),('17:00:00',27.3331),('17:15:00',25.3473),('17:30:00',28.6034),('17:45:00',25.9441),('18:00:00',28.9964),('18:15:00',26.3055),('18:30:00',26.0107),('18:45:00',29.5322),('19:00:00',28.1262),('19:15:00',25.3415),('19:30:00',27.0172),('19:45:00',27.1123),('20:00:00',27.9793),('20:15:00',28.3113),('20:30:00',26.5375),('20:45:00',27.5246),('21:00:00',26.7055),('21:15:00',28.8112),('21:30:00',28.8622),('21:45:00',26.5971),('22:00:00',27.719),('22:15:00',26.8297),('22:30:00',28.3408),('22:45:00',28.6105),('23:00:00',25.6944),('23:15:00',28.0247),('23:30:00',25.6905),('23:45:00',28.3881),('24:00:00',28.1879),('24:15:00',28.6264),('24:30:00',29.9303),('24:45:00',29.0109);
/*!40000 ALTER TABLE `t_104` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_105`
--

DROP TABLE IF EXISTS `t_105`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `t_105` (
  `t_time` time default NULL,
  `T` float default NULL
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `t_105`
--

LOCK TABLES `t_105` WRITE;
/*!40000 ALTER TABLE `t_105` DISABLE KEYS */;
INSERT INTO `t_105` VALUES ('01:00:00',27.2029),('01:15:00',26.8842),('01:30:00',29.1635),('01:45:00',29.1797),('02:00:00',28.9034),('02:15:00',29.7946),('02:30:00',26.7966),('02:45:00',25.2669),('03:00:00',26.9087),('03:15:00',26.4014),('03:30:00',27.8577),('03:45:00',25.0931),('04:00:00',27.5905),('04:15:00',25.6133),('04:30:00',28.7962),('04:45:00',28.3266),('05:00:00',29.1708),('05:15:00',26.31),('05:30:00',28.255),('05:45:00',27.8392),('06:00:00',25.0632),('06:15:00',25.2139),('06:30:00',28.2219),('06:45:00',27.89),('07:00:00',27.8371),('07:15:00',25.386),('07:30:00',25.8078),('07:45:00',27.9344),('08:00:00',28.8074),('08:15:00',25.3465),('08:30:00',25.648),('08:45:00',27.057),('09:00:00',28.2498),('09:15:00',28.8216),('09:30:00',27.9309),('09:45:00',29.0306),('10:00:00',26.2404),('10:15:00',25.114),('10:30:00',27.0491),('10:45:00',27.9997),('11:00:00',29.1203),('11:15:00',25.0998),('11:30:00',25.8774),('11:45:00',29.7891),('12:00:00',26.5863),('12:15:00',27.8484),('12:30:00',25.675),('12:45:00',28.8374),('13:00:00',29.4044),('13:15:00',27.8697),('13:30:00',26.6129),('13:45:00',25.7559),('14:00:00',27.7509),('14:15:00',27.9848),('14:30:00',28.9261),('14:45:00',25.5116),('15:00:00',25.1765),('15:15:00',27.8217),('15:30:00',29.6912),('15:45:00',26.2369),('16:00:00',28.1966),('16:15:00',27.937),('16:30:00',25.2283),('16:45:00',28.6615),('17:00:00',26.5056),('17:15:00',29.5618),('17:30:00',29.1287),('17:45:00',26.1726),('18:00:00',28.8173),('18:15:00',29.9724),('18:30:00',25.9076),('18:45:00',25.4979),('19:00:00',29.3295),('19:15:00',28.4871),('19:30:00',25.2802),('19:45:00',28.0138),('20:00:00',29.8137),('20:15:00',28.0867),('20:30:00',27.0656),('20:45:00',26.6795),('21:00:00',27.3303),('21:15:00',27.661),('21:30:00',26.7128),('21:45:00',28.5954),('22:00:00',27.5682),('22:15:00',29.8795),('22:30:00',26.454),('22:45:00',28.1868),('23:00:00',28.8095),('23:15:00',29.6877),('23:30:00',27.0818),('23:45:00',26.0123),('24:00:00',26.5196),('24:15:00',28.4282),('24:30:00',25.3505),('24:45:00',28.1978);
/*!40000 ALTER TABLE `t_105` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_201`
--

DROP TABLE IF EXISTS `t_201`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `t_201` (
  `t_time` time default NULL,
  `T` float default NULL
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `t_201`
--

LOCK TABLES `t_201` WRITE;
/*!40000 ALTER TABLE `t_201` DISABLE KEYS */;
INSERT INTO `t_201` VALUES ('01:00:00',26.1259),('01:15:00',26.0005),('01:30:00',25.9523),('01:45:00',25.6203),('02:00:00',27.4846),('02:15:00',29.6481),('02:30:00',27.2118),('02:45:00',29.1467),('03:00:00',27.7332),('03:15:00',28.347),('03:30:00',29.2603),('03:45:00',29.8068),('04:00:00',26.3611),('04:15:00',29.7351),('04:30:00',25.4181),('04:45:00',25.2003),('05:00:00',25.7683),('05:15:00',27.4429),('05:30:00',29.9924),('05:45:00',28.0103),('06:00:00',26.3245),('06:15:00',26.9321),('06:30:00',28.6484),('06:45:00',29.6558),('07:00:00',27.0518),('07:15:00',26.9608),('07:30:00',29.4052),('07:45:00',29.5692),('08:00:00',26.9345),('08:15:00',26.6737),('08:30:00',29.2577),('08:45:00',25.0989),('09:00:00',26.8517),('09:15:00',28.317),('09:30:00',26.4214),('09:45:00',27.0357),('10:00:00',27.1359),('10:15:00',25.5771),('10:30:00',28.2045),('10:45:00',25.766),('11:00:00',25.7576),('11:15:00',27.5471),('11:30:00',29.5042),('11:45:00',28.049),('12:00:00',27.1329),('12:15:00',28.3153),('12:30:00',26.9264),('12:45:00',29.4189),('13:00:00',26.5573),('13:15:00',27.1809),('13:30:00',28.5335),('13:45:00',27.2119),('14:00:00',25.2646),('14:15:00',29.4934),('14:30:00',29.214),('14:45:00',29.2195),('15:00:00',26.1101),('15:15:00',28.1174),('15:30:00',26.6798),('15:45:00',27.9648),('16:00:00',29.8798),('16:15:00',25.5228),('16:30:00',28.0867),('16:45:00',25.6053),('17:00:00',27.2229),('17:15:00',26.4995),('17:30:00',27.28),('17:45:00',29.4606),('18:00:00',26.212),('18:15:00',26.4969),('18:30:00',27.6669),('18:45:00',28.1642),('19:00:00',25.5251),('19:15:00',25.5894),('19:30:00',25.7115),('19:45:00',28.441),('20:00:00',28.2549),('20:15:00',28.0656),('20:30:00',25.0563),('20:45:00',27.5095),('21:00:00',26.3426),('21:15:00',27.6434),('21:30:00',26.268),('21:45:00',26.1098),('22:00:00',25.6363),('22:15:00',28.3102),('22:30:00',27.2093),('22:45:00',27.1548),('23:00:00',26.5742),('23:15:00',25.7872),('23:30:00',29.0343),('23:45:00',25.0089),('24:00:00',25.4942),('24:15:00',29.6191),('24:30:00',27.8096),('24:45:00',25.3891);
/*!40000 ALTER TABLE `t_201` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_202`
--

DROP TABLE IF EXISTS `t_202`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `t_202` (
  `t_time` time default NULL,
  `T` float default NULL
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `t_202`
--

LOCK TABLES `t_202` WRITE;
/*!40000 ALTER TABLE `t_202` DISABLE KEYS */;
INSERT INTO `t_202` VALUES ('01:00:00',27.9832),('01:15:00',27.3022),('01:30:00',27.7249),('01:45:00',25.267),('02:00:00',28.6871),('02:15:00',29.3254),('02:30:00',27.3491),('02:45:00',29.0343),('03:00:00',26.2035),('03:15:00',25.3596),('03:30:00',26.0146),('03:45:00',25.8492),('04:00:00',25.2724),('04:15:00',26.2984),('04:30:00',26.0643),('04:45:00',29.3811),('05:00:00',28.0806),('05:15:00',28.2109),('05:30:00',29.9736),('05:45:00',25.3021),('06:00:00',29.7894),('06:15:00',29.9019),('06:30:00',28.6902),('06:45:00',29.1577),('07:00:00',29.6867),('07:15:00',26.0942),('07:30:00',25.5988),('07:45:00',29.8631),('08:00:00',27.964),('08:15:00',26.2386),('08:30:00',26.1111),('08:45:00',28.8246),('09:00:00',28.1194),('09:15:00',28.9456),('09:30:00',27.8807),('09:45:00',29.6852),('10:00:00',29.9844),('10:15:00',27.0459),('10:30:00',26.6429),('10:45:00',28.696),('11:00:00',28.3768),('11:15:00',28.2729),('11:30:00',27.6793),('11:45:00',25.7123),('12:00:00',27.3772),('12:15:00',26.5714),('12:30:00',27.908),('12:45:00',25.8145),('13:00:00',25.2322),('13:15:00',29.0314),('13:30:00',28.5983),('13:45:00',26.5546),('14:00:00',29.8813),('14:15:00',28.4468),('14:30:00',28.7106),('14:45:00',25.8266),('15:00:00',25.1094),('15:15:00',26.4987),('15:30:00',28.8611),('15:45:00',25.3632),('16:00:00',27.3241),('16:15:00',27.5642),('16:30:00',25.9117),('16:45:00',29.8566),('17:00:00',27.9578),('17:15:00',28.1497),('17:30:00',28.1848),('17:45:00',26.705),('18:00:00',26.4954),('18:15:00',26.9501),('18:30:00',26.3036),('18:45:00',26.3831),('19:00:00',29.1267),('19:15:00',25.5315),('19:30:00',29.6559),('19:45:00',28.4383),('20:00:00',28.0232),('20:15:00',29.6407),('20:30:00',28.4853),('20:45:00',28.1125),('21:00:00',26.2411),('21:15:00',26.1383),('21:30:00',26.6048),('21:45:00',28.5873),('22:00:00',28.2484),('22:15:00',25.5573),('22:30:00',29.7375),('22:45:00',28.8554),('23:00:00',26.0767),('23:15:00',25.2869),('23:30:00',29.4814),('23:45:00',27.2171),('24:00:00',26.0994),('24:15:00',28.3806),('24:30:00',27.8979),('24:45:00',25.4005);
/*!40000 ALTER TABLE `t_202` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_203`
--

DROP TABLE IF EXISTS `t_203`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `t_203` (
  `t_time` time default NULL,
  `T` float default NULL
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `t_203`
--

LOCK TABLES `t_203` WRITE;
/*!40000 ALTER TABLE `t_203` DISABLE KEYS */;
INSERT INTO `t_203` VALUES ('01:00:00',25.8461),('01:15:00',25.6064),('01:30:00',25.3859),('01:45:00',26.4546),('02:00:00',29.3268),('02:15:00',25.5481),('02:30:00',28.7119),('02:45:00',28.8579),('03:00:00',27.8462),('03:15:00',26.0493),('03:30:00',28.3673),('03:45:00',25.7867),('04:00:00',28.0881),('04:15:00',29.4849),('04:30:00',27.587),('04:45:00',27.7266),('05:00:00',25.0084),('05:15:00',26.0661),('05:30:00',27.0471),('05:45:00',29.4351),('06:00:00',26.5813),('06:15:00',26.8701),('06:30:00',29.9251),('06:45:00',25.7834),('07:00:00',29.1701),('07:15:00',27.4907),('07:30:00',27.5819),('07:45:00',28.2202),('08:00:00',28.5237),('08:15:00',27.3164),('08:30:00',25.872),('08:45:00',26.8619),('09:00:00',26.3974),('09:15:00',29.4324),('09:30:00',27.0757),('09:45:00',28.2071),('10:00:00',27.7991),('10:15:00',26.1485),('10:30:00',27.4582),('10:45:00',28.4769),('11:00:00',28.86),('11:15:00',25.1511),('11:30:00',25.4539),('11:45:00',27.5797),('12:00:00',25.3317),('12:15:00',26.2799),('12:30:00',25.4739),('12:45:00',28.7004),('13:00:00',26.7062),('13:15:00',28.9316),('13:30:00',27.3401),('13:45:00',28.5164),('14:00:00',25.9624),('14:15:00',25.0861),('14:30:00',26.3441),('14:45:00',28.0359),('15:00:00',29.9374),('15:15:00',27.9596),('15:30:00',28.9299),('15:45:00',29.0643),('16:00:00',25.3226),('16:15:00',26.2813),('16:30:00',29.0036),('16:45:00',26.293),('17:00:00',25.2841),('17:15:00',29.196),('17:30:00',29.866),('17:45:00',25.0151),('18:00:00',26.7097),('18:15:00',26.7918),('18:30:00',26.772),('18:45:00',29.4638),('19:00:00',28.0798),('19:15:00',26.2521),('19:30:00',25.1135),('19:45:00',26.7792),('20:00:00',27.9626),('20:15:00',28.6328),('20:30:00',29.2285),('20:45:00',26.5964),('21:00:00',29.1368),('21:15:00',26.2646),('21:30:00',26.8346),('21:45:00',26.2616),('22:00:00',28.3359),('22:15:00',25.7814),('22:30:00',29.0872),('22:45:00',26.6708),('23:00:00',26.6208),('23:15:00',26.7708),('23:30:00',26.2639),('23:45:00',28.736),('24:00:00',25.3749),('24:15:00',26.053),('24:30:00',29.0721),('24:45:00',25.4736);
/*!40000 ALTER TABLE `t_203` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_204`
--

DROP TABLE IF EXISTS `t_204`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `t_204` (
  `t_time` time default NULL,
  `T` float default NULL
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `t_204`
--

LOCK TABLES `t_204` WRITE;
/*!40000 ALTER TABLE `t_204` DISABLE KEYS */;
INSERT INTO `t_204` VALUES ('01:00:00',26.8042),('01:15:00',29.3547),('01:30:00',25.4956),('01:45:00',29.5827),('02:00:00',25.174),('02:15:00',25.2861),('02:30:00',29.7929),('02:45:00',29.8102),('03:00:00',29.9324),('03:15:00',28.8882),('03:30:00',28.1728),('03:45:00',27.1332),('04:00:00',27.4452),('04:15:00',25.5536),('04:30:00',29.0813),('04:45:00',28.0649),('05:00:00',29.7768),('05:15:00',27.4622),('05:30:00',29.1925),('05:45:00',28.8261),('06:00:00',27.4055),('06:15:00',25.8279),('06:30:00',28.9363),('06:45:00',27.9042),('07:00:00',27.5633),('07:15:00',28.7695),('07:30:00',28.6502),('07:45:00',29.236),('08:00:00',28.2001),('08:15:00',29.807),('08:30:00',25.3571),('08:45:00',26.0168),('09:00:00',27.5745),('09:15:00',26.9821),('09:30:00',25.1672),('09:45:00',25.1344),('10:00:00',29.4679),('10:15:00',27.6048),('10:30:00',26.3057),('10:45:00',27.2264),('11:00:00',29.0248),('11:15:00',28.6247),('11:30:00',27.7647),('11:45:00',27.3654),('12:00:00',29.2174),('12:15:00',27.6265),('12:30:00',28.5815),('12:45:00',26.3661),('13:00:00',27.9352),('13:15:00',29.4513),('13:30:00',27.7399),('13:45:00',27.72),('14:00:00',25.7007),('14:15:00',28.4428),('14:30:00',29.6977),('14:45:00',25.1537),('15:00:00',29.0082),('15:15:00',26.3188),('15:30:00',25.5397),('15:45:00',25.8121),('16:00:00',29.2896),('16:15:00',25.666),('16:30:00',29.7543),('16:45:00',29.0671),('17:00:00',27.5032),('17:15:00',29.063),('17:30:00',27.6367),('17:45:00',25.952),('18:00:00',29.3497),('18:15:00',28.8242),('18:30:00',28.3153),('18:45:00',29.2189),('19:00:00',26.111),('19:15:00',27.3729),('19:30:00',28.4042),('19:45:00',29.023),('20:00:00',26.1157),('20:15:00',28.2361),('20:30:00',26.2814),('20:45:00',29.2313),('21:00:00',26.8291),('21:15:00',27.6663),('21:30:00',26.9904),('21:45:00',29.3555),('22:00:00',27.567),('22:15:00',26.8871),('22:30:00',27.7675),('22:45:00',27.1112),('23:00:00',27.8366),('23:15:00',29.9644),('23:30:00',29.1942),('23:45:00',26.6017),('24:00:00',26.3013),('24:15:00',27.303),('24:30:00',26.9751),('24:45:00',27.1257);
/*!40000 ALTER TABLE `t_204` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_205`
--

DROP TABLE IF EXISTS `t_205`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `t_205` (
  `t_time` time default NULL,
  `T` float default NULL
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `t_205`
--

LOCK TABLES `t_205` WRITE;
/*!40000 ALTER TABLE `t_205` DISABLE KEYS */;
INSERT INTO `t_205` VALUES ('01:00:00',25.9331),('01:15:00',26.5457),('01:30:00',29.1359),('01:45:00',27.9985),('02:00:00',29.2538),('02:15:00',25.7741),('02:30:00',27.9556),('02:45:00',26.4182),('03:00:00',26.9431),('03:15:00',25.2373),('03:30:00',25.0571),('03:45:00',28.4685),('04:00:00',27.1909),('04:15:00',29.6776),('04:30:00',25.4784),('04:45:00',27.1046),('05:00:00',25.7266),('05:15:00',26.1763),('05:30:00',29.5612),('05:45:00',28.9011),('06:00:00',25.2531),('06:15:00',29.3698),('06:30:00',27.6968),('06:45:00',27.0778),('07:00:00',25.5054),('07:15:00',27.2879),('07:30:00',25.6967),('07:45:00',25.1537),('08:00:00',28.9334),('08:15:00',27.8201),('08:30:00',25.7895),('08:45:00',26.2231),('09:00:00',27.0114),('09:15:00',25.8041),('09:30:00',28.241),('09:45:00',27.859),('10:00:00',27.1712),('10:15:00',25.7419),('10:30:00',28.6009),('10:45:00',27.6395),('11:00:00',25.3607),('11:15:00',25.1384),('11:30:00',25.5743),('11:45:00',29.3004),('12:00:00',29.2282),('12:15:00',28.4674),('12:30:00',29.5166),('12:45:00',29.5131),('13:00:00',26.9298),('13:15:00',26.7609),('13:30:00',26.5559),('13:45:00',25.2863),('14:00:00',26.5639),('14:15:00',27.8235),('14:30:00',28.338),('14:45:00',26.9936),('15:00:00',26.2296),('15:15:00',27.0734),('15:30:00',27.3984),('15:45:00',27.0256),('16:00:00',29.7098),('16:15:00',29.0059),('16:30:00',28.1575),('16:45:00',29.068),('17:00:00',27.7806),('17:15:00',29.2845),('17:30:00',28.5428),('17:45:00',28.0028),('18:00:00',25.1443),('18:15:00',27.4545),('18:30:00',27.2337),('18:45:00',25.4367),('19:00:00',27.9884),('19:15:00',25.2841),('19:30:00',26.5338),('19:45:00',25.8525),('20:00:00',27.1687),('20:15:00',25.7285),('20:30:00',25.8661),('20:45:00',28.3876),('21:00:00',27.0183),('21:15:00',27.5194),('21:30:00',25.8946),('21:45:00',29.2351),('22:00:00',29.7812),('22:15:00',25.3807),('22:30:00',28.2703),('22:45:00',29.6718),('23:00:00',25.6703),('23:15:00',25.8682),('23:30:00',26.002),('23:45:00',29.7107),('24:00:00',28.5521),('24:15:00',28.8338),('24:30:00',29.4528),('24:45:00',27.3779);
/*!40000 ALTER TABLE `t_205` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_301`
--

DROP TABLE IF EXISTS `t_301`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `t_301` (
  `t_time` time default NULL,
  `T` float default NULL
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `t_301`
--

LOCK TABLES `t_301` WRITE;
/*!40000 ALTER TABLE `t_301` DISABLE KEYS */;
INSERT INTO `t_301` VALUES ('01:00:00',26.5715),('01:15:00',28.636),('01:30:00',25.6487),('01:45:00',25.8205),('02:00:00',29.8695),('02:15:00',28.9172),('02:30:00',29.052),('02:45:00',29.8026),('03:00:00',26.8265),('03:15:00',29.5892),('03:30:00',28.3429),('03:45:00',26.9055),('04:00:00',29.2375),('04:15:00',29.2299),('04:30:00',25.0777),('04:45:00',27.7512),('05:00:00',28.0048),('05:15:00',28.7227),('05:30:00',29.7925),('05:45:00',26.7801),('06:00:00',28.0399),('06:15:00',28.1898),('06:30:00',29.7185),('06:45:00',29.4986),('07:00:00',28.791),('07:15:00',29.5514),('07:30:00',27.1217),('07:45:00',25.3484),('08:00:00',25.3958),('08:15:00',29.7078),('08:30:00',28.2678),('08:45:00',26.2039),('09:00:00',25.4578),('09:15:00',29.3497),('09:30:00',28.0119),('09:45:00',25.4927),('10:00:00',26.4496),('10:15:00',27.3911),('10:30:00',25.0133),('10:45:00',27.9419),('11:00:00',28.7401),('11:15:00',26.0274),('11:30:00',27.5757),('11:45:00',29.9492),('12:00:00',29.2464),('12:15:00',26.4197),('12:30:00',25.1115),('12:45:00',25.5786),('13:00:00',25.7114),('13:15:00',25.0034),('13:30:00',25.2324),('13:45:00',28.1824),('14:00:00',26.6061),('14:15:00',25.4208),('14:30:00',26.4633),('14:45:00',27.646),('15:00:00',26.6576),('15:15:00',26.0815),('15:30:00',26.5831),('15:45:00',28.2603),('16:00:00',27.9999),('16:15:00',28.344),('16:30:00',26.5887),('16:45:00',27.2169),('17:00:00',26.9528),('17:15:00',25.3256),('17:30:00',25.2855),('17:45:00',28.7297),('18:00:00',26.4235),('18:15:00',26.3358),('18:30:00',29.502),('18:45:00',28.7805),('19:00:00',28.9339),('19:15:00',26.9342),('19:30:00',29.929),('19:45:00',25.4907),('20:00:00',25.2733),('20:15:00',29.6152),('20:30:00',27.5861),('20:45:00',25.1167),('21:00:00',28.7756),('21:15:00',25.1154),('21:30:00',25.9096),('21:45:00',28.6717),('22:00:00',25.2214),('22:15:00',29.3483),('22:30:00',28.4686),('22:45:00',29.1714),('23:00:00',28.3656),('23:15:00',25.9622),('23:30:00',27.3047),('23:45:00',29.5052),('24:00:00',26.0898),('24:15:00',29.5239),('24:30:00',26.8964),('24:45:00',25.9319);
/*!40000 ALTER TABLE `t_301` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_302`
--

DROP TABLE IF EXISTS `t_302`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `t_302` (
  `t_time` time default NULL,
  `T` float default NULL
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `t_302`
--

LOCK TABLES `t_302` WRITE;
/*!40000 ALTER TABLE `t_302` DISABLE KEYS */;
INSERT INTO `t_302` VALUES ('01:00:00',28.9507),('01:15:00',25.2254),('01:30:00',26.7831),('01:45:00',27.2929),('02:00:00',27.6958),('02:15:00',29.2688),('02:30:00',28.2471),('02:45:00',29.711),('03:00:00',25.95),('03:15:00',28.8264),('03:30:00',27.3836),('03:45:00',26.7261),('04:00:00',27.643),('04:15:00',29.1872),('04:30:00',29.0964),('04:45:00',25.146),('05:00:00',29.9171),('05:15:00',27.6372),('05:30:00',25.3601),('05:45:00',27.399),('06:00:00',27.2502),('06:15:00',25.8632),('06:30:00',29.6541),('06:45:00',26.749),('07:00:00',26.2003),('07:15:00',27.9788),('07:30:00',27.0206),('07:45:00',28.1352),('08:00:00',25.7773),('08:15:00',29.1777),('08:30:00',29.7487),('08:45:00',29.6375),('09:00:00',28.439),('09:15:00',25.0104),('09:30:00',28.6827),('09:45:00',29.5653),('10:00:00',26.712),('10:15:00',26.2869),('10:30:00',25.1558),('10:45:00',29.1733),('11:00:00',25.4384),('11:15:00',29.604),('11:30:00',28.5487),('11:45:00',26.0008),('12:00:00',29.646),('12:15:00',28.4975),('12:30:00',29.4733),('12:45:00',27.8372),('13:00:00',28.0452),('13:15:00',25.2196),('13:30:00',28.5808),('13:45:00',27.3108),('14:00:00',27.1494),('14:15:00',28.1413),('14:30:00',25.9962),('14:45:00',27.1045),('15:00:00',26.0216),('15:15:00',29.7798),('15:30:00',26.3759),('15:45:00',25.7954),('16:00:00',26.6454),('16:15:00',25.4509),('16:30:00',29.592),('16:45:00',29.3193),('17:00:00',29.921),('17:15:00',27.5458),('17:30:00',27.0406),('17:45:00',28.0614),('18:00:00',27.2862),('18:15:00',25.434),('18:30:00',28.5754),('18:45:00',29.57),('19:00:00',27.963),('19:15:00',25.9906),('19:30:00',25.0664),('19:45:00',26.8974),('20:00:00',26.8277),('20:15:00',29.7487),('20:30:00',26.5833),('20:45:00',27.5641),('21:00:00',27.908),('21:15:00',27.6761),('21:30:00',26.2044),('21:45:00',28.1487),('22:00:00',28.5037),('22:15:00',28.5786),('22:30:00',29.4499),('22:45:00',29.503),('23:00:00',28.9326),('23:15:00',27.1266),('23:30:00',29.3405),('23:45:00',27.5919),('24:00:00',27.9019),('24:15:00',27.5078),('24:30:00',27.0816),('24:45:00',29.9577);
/*!40000 ALTER TABLE `t_302` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_303`
--

DROP TABLE IF EXISTS `t_303`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `t_303` (
  `t_time` time default NULL,
  `T` float default NULL
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `t_303`
--

LOCK TABLES `t_303` WRITE;
/*!40000 ALTER TABLE `t_303` DISABLE KEYS */;
INSERT INTO `t_303` VALUES ('01:00:00',28.0569),('01:15:00',27.346),('01:30:00',28.6003),('01:45:00',26.494),('02:00:00',28.5648),('02:15:00',25.7056),('02:30:00',25.7632),('02:45:00',27.0737),('03:00:00',26.3606),('03:15:00',29.1777),('03:30:00',26.6335),('03:45:00',25.1175),('04:00:00',26.7699),('04:15:00',28.1348),('04:30:00',28.4309),('04:45:00',27.7924),('05:00:00',25.289),('05:15:00',27.1779),('05:30:00',28.2639),('05:45:00',29.1019),('06:00:00',29.6758),('06:15:00',26.7589),('06:30:00',28.0312),('06:45:00',26.8198),('07:00:00',27.6645),('07:15:00',25.4254),('07:30:00',29.9498),('07:45:00',25.0482),('08:00:00',25.3052),('08:15:00',27.6929),('08:30:00',27.7066),('08:45:00',27.4022),('09:00:00',25.9291),('09:15:00',27.54),('09:30:00',28.2367),('09:45:00',25.8171),('10:00:00',29.7379),('10:15:00',27.5302),('10:30:00',29.1249),('10:45:00',29.9831),('11:00:00',29.0187),('11:15:00',28.5576),('11:30:00',26.6336),('11:45:00',27.4036),('12:00:00',28.9847),('12:15:00',25.2179),('12:30:00',29.3547),('12:45:00',29.0785),('13:00:00',29.2387),('13:15:00',26.8051),('13:30:00',27.4872),('13:45:00',25.8131),('14:00:00',25.8638),('14:15:00',28.9316),('14:30:00',27.7394),('14:45:00',25.1515),('15:00:00',29.1382),('15:15:00',25.7753),('15:30:00',28.8568),('15:45:00',28.9352),('16:00:00',26.8745),('16:15:00',27.95),('16:30:00',27.7734),('16:45:00',26.4873),('17:00:00',28.3856),('17:15:00',26.0022),('17:30:00',26.3899),('17:45:00',28.4198),('18:00:00',29.0732),('18:15:00',29.5309),('18:30:00',28.976),('18:45:00',26.0686),('19:00:00',25.6436),('19:15:00',26.9356),('19:30:00',25.1971),('19:45:00',26.5512),('20:00:00',26.9473),('20:15:00',25.7854),('20:30:00',28.7672),('20:45:00',28.4503),('21:00:00',25.4437),('21:15:00',28.8165),('21:30:00',26.7262),('21:45:00',28.1233),('22:00:00',29.2914),('22:15:00',25.5528),('22:30:00',29.3422),('22:45:00',26.6347),('23:00:00',25.062),('23:15:00',29.552),('23:30:00',25.6386),('23:45:00',27.3154),('24:00:00',26.0814),('24:15:00',26.2764),('24:30:00',29.5468),('24:45:00',28.9461);
/*!40000 ALTER TABLE `t_303` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_304`
--

DROP TABLE IF EXISTS `t_304`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `t_304` (
  `t_time` time default NULL,
  `T` float default NULL
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `t_304`
--

LOCK TABLES `t_304` WRITE;
/*!40000 ALTER TABLE `t_304` DISABLE KEYS */;
INSERT INTO `t_304` VALUES ('01:00:00',26.1464),('01:15:00',27.2711),('01:30:00',29.735),('01:45:00',29.2708),('02:00:00',29.0442),('02:15:00',25.4565),('02:30:00',28.4497),('02:45:00',25.3255),('03:00:00',25.3835),('03:15:00',26.517),('03:30:00',29.9214),('03:45:00',25.8687),('04:00:00',27.7383),('04:15:00',28.7636),('04:30:00',26.9028),('04:45:00',28.4886),('05:00:00',26.4764),('05:15:00',29.8193),('05:30:00',27.3911),('05:45:00',28.5532),('06:00:00',28.5675),('06:15:00',26.209),('06:30:00',28.7495),('06:45:00',26.6107),('07:00:00',27.0174),('07:15:00',28.5747),('07:30:00',27.4533),('07:45:00',26.4189),('08:00:00',25.9256),('08:15:00',27.5146),('08:30:00',29.4604),('08:45:00',28.596),('09:00:00',26.1703),('09:15:00',25.0491),('09:30:00',26.2083),('09:45:00',29.8987),('10:00:00',26.716),('10:15:00',26.7096),('10:30:00',26.2344),('10:45:00',28.1242),('11:00:00',26.5472),('11:15:00',29.2532),('11:30:00',27.4226),('11:45:00',27.6379),('12:00:00',27.2272),('12:15:00',29.0039),('12:30:00',29.8741),('12:45:00',25.5254),('13:00:00',26.0815),('13:15:00',25.816),('13:30:00',29.4035),('13:45:00',28.3699),('14:00:00',25.007),('14:15:00',27.6649),('14:30:00',26.6603),('14:45:00',29.6548),('15:00:00',29.9045),('15:15:00',25.8614),('15:30:00',26.8742),('15:45:00',27.7908),('16:00:00',25.7384),('16:15:00',25.8913),('16:30:00',25.2275),('16:45:00',29.7685),('17:00:00',27.2194),('17:15:00',28.8815),('17:30:00',27.8493),('17:45:00',25.435),('18:00:00',25.114),('18:15:00',28.6884),('18:30:00',28.4387),('18:45:00',27.3976),('19:00:00',28.1769),('19:15:00',29.6133),('19:30:00',25.509),('19:45:00',26.5495),('20:00:00',25.7111),('20:15:00',29.7429),('20:30:00',25.2605),('20:45:00',28.2237),('21:00:00',25.7498),('21:15:00',29.913),('21:30:00',25.0748),('21:45:00',28.9691),('22:00:00',28.8667),('22:15:00',28.2988),('22:30:00',27.6378),('22:45:00',28.9539),('23:00:00',27.6083),('23:15:00',25.6303),('23:30:00',25.6841),('23:45:00',29.9918),('24:00:00',26.553),('24:15:00',26.0313),('24:30:00',27.3692),('24:45:00',29.1954);
/*!40000 ALTER TABLE `t_304` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_305`
--

DROP TABLE IF EXISTS `t_305`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `t_305` (
  `t_time` time default NULL,
  `T` float default NULL
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `t_305`
--

LOCK TABLES `t_305` WRITE;
/*!40000 ALTER TABLE `t_305` DISABLE KEYS */;
INSERT INTO `t_305` VALUES ('01:00:00',26.205),('01:15:00',28.5417),('01:30:00',25.963),('01:45:00',26.7877),('02:00:00',26.2175),('02:15:00',25.8655),('02:30:00',27.867),('02:45:00',27.1841),('03:00:00',25.3349),('03:15:00',28.3194),('03:30:00',26.6022),('03:45:00',26.273),('04:00:00',28.5596),('04:15:00',25.35),('04:30:00',26.9028),('04:45:00',25.1248),('05:00:00',27.2862),('05:15:00',26.4632),('05:30:00',26.9559),('05:45:00',26.0704),('06:00:00',28.5793),('06:15:00',27.5327),('06:30:00',25.491),('06:45:00',29.3221),('07:00:00',25.0746),('07:15:00',27.7333),('07:30:00',29.4952),('07:45:00',25.2197),('08:00:00',25.5078),('08:15:00',27.1001),('08:30:00',27.5529),('08:45:00',27.1019),('09:00:00',25.8658),('09:15:00',29.7118),('09:30:00',28.8106),('09:45:00',29.8018),('10:00:00',26.1646),('10:15:00',27.4989),('10:30:00',27.5667),('10:45:00',28.7685),('11:00:00',27.8514),('11:15:00',29.6782),('11:30:00',28.4863),('11:45:00',29.8132),('12:00:00',26.8318),('12:15:00',27.8104),('12:30:00',27.4416),('12:45:00',29.48),('13:00:00',27.123),('13:15:00',26.4844),('13:30:00',27.9759),('13:45:00',26.042),('14:00:00',25.1297),('14:15:00',29.6255),('14:30:00',28.3942),('14:45:00',26.1227),('15:00:00',29.5477),('15:15:00',27.4294),('15:30:00',29.4772),('15:45:00',26.942),('16:00:00',26.891),('16:15:00',28.9201),('16:30:00',27.8223),('16:45:00',29.1867),('17:00:00',27.6434),('17:15:00',25.1344),('17:30:00',29.8071),('17:45:00',25.5078),('18:00:00',28.0367),('18:15:00',27.9297),('18:30:00',26.1806),('18:45:00',29.6404),('19:00:00',27.4527),('19:15:00',29.4182),('19:30:00',27.2766),('19:45:00',26.1505),('20:00:00',26.4505),('20:15:00',27.0247),('20:30:00',28.855),('20:45:00',25.8058),('21:00:00',25.4192),('21:15:00',29.1713),('21:30:00',28.5657),('21:45:00',26.5718),('22:00:00',28.8542),('22:15:00',26.5851),('22:30:00',28.0386),('22:45:00',25.2333),('23:00:00',25.2612),('23:15:00',29.2322),('23:30:00',25.5989),('23:45:00',29.6399),('24:00:00',27.6822),('24:15:00',28.8759),('24:30:00',29.606),('24:45:00',26.5771);
/*!40000 ALTER TABLE `t_305` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `teacher` (
  `username` varchar(50) default NULL,
  `password` varchar(50) default NULL,
  `realname` varchar(50) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `teacher`
--

LOCK TABLES `teacher` WRITE;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT INTO `teacher` VALUES ('liyang','liyang','李阳'),('liuyang','liuyang','刘阳'),('lisir','liser','lisir'),('mrli','mrli','mrli'),('lili','lili','lili');
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `third_floor`
--

DROP TABLE IF EXISTS `third_floor`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `third_floor` (
  `classroom_number` varchar(8) default NULL,
  `total_seat` int(11) default NULL,
  `exist_person` int(11) default NULL,
  `T` float default NULL,
  `RH` float default NULL,
  `has_class` int(1) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `third_floor`
--

LOCK TABLES `third_floor` WRITE;
/*!40000 ALTER TABLE `third_floor` DISABLE KEYS */;
INSERT INTO `third_floor` VALUES ('301',300,74,27.4,0.5,0),('302',300,28,28.9,0.49,0),('303',200,39,26.9,0.49,0),('304',200,22,27.2,0.5,0),('305',300,52,27.5,0.51,1);
/*!40000 ALTER TABLE `third_floor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `user` (
  `username` varchar(50) default NULL,
  `password` varchar(50) default NULL,
  `realname` varchar(50) default NULL,
  `email` varchar(100) default NULL,
  `photo` varchar(50) default NULL,
  `background` varchar(50) default NULL,
  `backmusic` varchar(50) default NULL,
  `sex` varchar(10) default NULL,
  `birthday` int(11) default NULL,
  `words` varchar(100) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('huhu','huhu','huyang','678383@163.com',NULL,NULL,NULL,'男',NULL,NULL),('jia','jia','jis','163@163.com',NULL,NULL,NULL,'男',NULL,NULL);
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

-- Dump completed on 2011-09-11  4:25:50
