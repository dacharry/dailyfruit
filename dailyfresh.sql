-- MySQL dump 10.13  Distrib 5.7.25, for Linux (x86_64)
--
-- Host: localhost    Database: dailyfresh
-- ------------------------------------------------------
-- Server version	5.7.25-0ubuntu0.16.04.2-log

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group__permission_id_6c4e6a540c1a9d4f_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group__permission_id_6c4e6a540c1a9d4f_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permission_group_id_477ab42d2a8d7ef3_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  CONSTRAINT `auth__content_type_id_4045c72b1d61ef7a_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add content type',4,'add_contenttype'),(11,'Can change content type',4,'change_contenttype'),(12,'Can delete content type',4,'delete_contenttype'),(13,'Can add session',5,'add_session'),(14,'Can change session',5,'change_session'),(15,'Can delete session',5,'delete_session'),(16,'Can add 用户',6,'add_user'),(17,'Can change 用户',6,'change_user'),(18,'Can delete 用户',6,'delete_user'),(19,'Can add 地址',7,'add_address'),(20,'Can change 地址',7,'change_address'),(21,'Can delete 地址',7,'delete_address'),(22,'Can add 商品种类',8,'add_goodstype'),(23,'Can change 商品种类',8,'change_goodstype'),(24,'Can delete 商品种类',8,'delete_goodstype'),(25,'Can add 商品',9,'add_goodssku'),(26,'Can change 商品',9,'change_goodssku'),(27,'Can delete 商品',9,'delete_goodssku'),(28,'Can add 商品SPU',10,'add_goods'),(29,'Can change 商品SPU',10,'change_goods'),(30,'Can delete 商品SPU',10,'delete_goods'),(31,'Can add 商品图片',11,'add_goodsimage'),(32,'Can change 商品图片',11,'change_goodsimage'),(33,'Can delete 商品图片',11,'delete_goodsimage'),(34,'Can add 首页轮播商品',12,'add_indexgoodsbanner'),(35,'Can change 首页轮播商品',12,'change_indexgoodsbanner'),(36,'Can delete 首页轮播商品',12,'delete_indexgoodsbanner'),(37,'Can add 主页分类展示商品',13,'add_indextypegoodsbanner'),(38,'Can change 主页分类展示商品',13,'change_indextypegoodsbanner'),(39,'Can delete 主页分类展示商品',13,'delete_indextypegoodsbanner'),(40,'Can add 主页促销活动',14,'add_indexpromotionbanner'),(41,'Can change 主页促销活动',14,'change_indexpromotionbanner'),(42,'Can delete 主页促销活动',14,'delete_indexpromotionbanner'),(43,'Can add 订单',15,'add_orderinfo'),(44,'Can change 订单',15,'change_orderinfo'),(45,'Can delete 订单',15,'delete_orderinfo'),(46,'Can add 订单商品',16,'add_ordergoods'),(47,'Can change 订单商品',16,'change_ordergoods'),(48,'Can delete 订单商品',16,'delete_ordergoods');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `df_address`
--

DROP TABLE IF EXISTS `df_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `df_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `receiver` varchar(20) NOT NULL,
  `addr` varchar(256) NOT NULL,
  `zip_code` varchar(6) DEFAULT NULL,
  `phone` varchar(11) NOT NULL,
  `is_default` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `df_address_user_id_5d22b5f64deffcf1_fk_df_user_id` (`user_id`),
  CONSTRAINT `df_address_user_id_5d22b5f64deffcf1_fk_df_user_id` FOREIGN KEY (`user_id`) REFERENCES `df_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `df_address`
--

LOCK TABLES `df_address` WRITE;
/*!40000 ALTER TABLE `df_address` DISABLE KEYS */;
INSERT INTO `df_address` VALUES (1,'2019-02-06 15:20:38.295203','2019-02-06 15:20:38.295310',0,'dawang','上海','0000','13333333333',1,1),(2,'2019-02-14 09:39:51.142879','2019-02-14 09:39:51.143071',0,'小明','太平街东三十巷7号','200000','13456789101',1,5),(3,'2019-02-15 10:15:54.664551','2019-02-15 10:15:54.664706',0,'老王','老王街','１０００００','13456789101',0,5),(4,'2019-02-15 10:16:51.130580','2019-02-15 10:16:51.130661',0,'小明','老王街一百好','517000','13467895555',0,5);
/*!40000 ALTER TABLE `df_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `df_goods`
--

DROP TABLE IF EXISTS `df_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `df_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `name` varchar(20) NOT NULL,
  `detail` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `df_goods`
--

LOCK TABLES `df_goods` WRITE;
/*!40000 ALTER TABLE `df_goods` DISABLE KEYS */;
INSERT INTO `df_goods` VALUES (1,'2019-02-12 08:27:27.181197','2019-02-14 13:47:07.792080',0,'猕猴桃','<p><img style=\"vertical-align: middle;\" src=\"https://img.alicdn.com/imgextra/i4/3015214310/O1CN011hi1VAl1igX3xKk_!!3015214310.jpg\" alt=\"猕猴桃\" width=\"790\" height=\"742\" /></p>'),(2,'2019-02-12 08:49:23.857624','2019-02-14 13:47:00.246325',0,'苹果','<p><img src=\"https://img.alicdn.com/imgextra/i1/2939922051/O1CN011R1OnaB8p7iPdK4_!!2939922051.jpg\" alt=\"苹果\" width=\"790\" height=\"527\" /></p>'),(3,'2019-02-14 13:48:30.766171','2019-02-14 13:48:30.766215',0,'芒果','<p><img src=\"https://img.alicdn.com/imgextra/i1/2939922051/O1CN011R1OnkqX523wkHp_!!2939922051.jpg\" alt=\"芒果\" width=\"790\" height=\"982\" /></p>'),(4,'2019-02-14 13:52:20.111585','2019-02-14 13:52:20.111711',0,'雪梨','<p><img style=\"vertical-align: middle;\" src=\"https://img.alicdn.com/imgextra/i2/4021294429/O1CN011iaWdcO5OhaY1xm_!!4021294429.jpg\" alt=\"xueli\" width=\"750\" height=\"909\" /></p>'),(5,'2019-02-14 13:53:24.421349','2019-02-14 13:53:24.421393',0,'柚子','<p><img style=\"vertical-align: middle;\" src=\"https://img.alicdn.com/imgextra/i1/3369505267/O1CN01KRTbrf1omKZdbIGdb_!!3369505267.jpg\" alt=\"柚子\" width=\"790\" height=\"766\" /></p>'),(6,'2019-02-14 13:54:15.536448','2019-02-14 13:54:15.536492',0,'橙子','<p><img style=\"vertical-align: middle;\" src=\"https://img.alicdn.com/imgextra/i2/3534803790/O1CN011drrY6kiKyeA4M6_!!3534803790.jpg\" alt=\"\" width=\"750\" height=\"620\" /></p>'),(7,'2019-02-14 14:06:23.553798','2019-02-14 14:06:23.553935',0,'橘子','<p><img src=\"https://img.alicdn.com/imgextra/i3/2939922051/O1CN01IUO0RB1R1OoH2ac1S_!!2939922051.jpg\" alt=\"丑橘\" width=\"790\" height=\"474\" /></p>');
/*!40000 ALTER TABLE `df_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `df_goods_image`
--

DROP TABLE IF EXISTS `df_goods_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `df_goods_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `image` varchar(100) NOT NULL,
  `sku_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `df_goods_image_22ad5bca` (`sku_id`),
  CONSTRAINT `df_goods_image_sku_id_6eb7fc06818e5759_fk_df_goods_sku_id` FOREIGN KEY (`sku_id`) REFERENCES `df_goods_sku` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `df_goods_image`
--

LOCK TABLES `df_goods_image` WRITE;
/*!40000 ALTER TABLE `df_goods_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `df_goods_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `df_goods_sku`
--

DROP TABLE IF EXISTS `df_goods_sku`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `df_goods_sku` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `name` varchar(20) NOT NULL,
  `desc` varchar(256) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `unite` varchar(20) NOT NULL,
  `image` varchar(100) NOT NULL,
  `stock` int(11) NOT NULL,
  `sales` int(11) NOT NULL,
  `status` smallint(6) NOT NULL,
  `goods_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `df_goods_sku_goods_id_6a5e6bdb0d6894f7_fk_df_goods_id` (`goods_id`),
  KEY `df_goods_sku_94757cae` (`type_id`),
  CONSTRAINT `df_goods_sku_goods_id_6a5e6bdb0d6894f7_fk_df_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `df_goods` (`id`),
  CONSTRAINT `df_goods_sku_type_id_22dd16f9304be85b_fk_df_goods_type_id` FOREIGN KEY (`type_id`) REFERENCES `df_goods_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `df_goods_sku`
--

LOCK TABLES `df_goods_sku` WRITE;
/*!40000 ALTER TABLE `df_goods_sku` DISABLE KEYS */;
INSERT INTO `df_goods_sku` VALUES (1,'2019-02-12 08:29:59.072912','2019-02-14 14:12:52.743622',0,'花果山猕猴桃','很好吃的猕猴桃',100.00,'500克','group1/M00/00/00/wKgAa1xld2SACMDHAACyIqkhWhw7745130',0,1,1,1,3),(2,'2019-02-12 08:53:44.333457','2019-02-12 08:53:44.333515',0,'红富士苹果','很好吃的红富士苹果',10.00,'500克','group1/M00/00/00/wKgAa1xiiZiASB3DAADN80inxaQ5027518',9,1,1,2,1),(3,'2019-02-14 13:59:02.366845','2019-02-14 13:59:02.366890',0,'新疆库尔勒香梨','当季新鲜孕妇水果 特产一级脆甜梨子 整箱5斤批发',45.00,'2.5kg','group1/M00/00/00/wKgAa1xldCaADNUeAADvLlA618s0874854',0,1,1,4,1),(4,'2019-02-14 14:01:49.183060','2019-02-14 14:01:49.183160',0,'秭归橙子脐橙','秭归橙子脐橙甜橙新鲜水果包邮10斤当季应季纽荷尔手剥橙赣南奉节',50.00,'5kg','group1/M00/00/00/wKgAa1xldM2AR2DkAAEqylZzy4E4029061',0,1,1,6,5),(5,'2019-02-14 14:08:12.435923','2019-02-14 14:08:12.436005',0,'四川丑橘','四川丑橘丑桔10斤水果新鲜包邮当季丑柑橘桔子薄皮',50.00,'5kg','group1/M00/00/00/wKgAa1xldkyAb81_AADv_IYzz-88551852',0,1,1,7,5),(6,'2019-02-16 02:58:07.196806','2019-02-16 02:58:07.196854',0,'越南进口玉芒','10斤芒果现摘越南进口玉芒青芒果10斤 当季新鲜水果青皮芒果香芒批发包邮',88.00,'5kg','group1/M00/00/00/wKgAa1xnfD-AQEVcAADI_s_cklY6026349',10,0,1,3,6);
/*!40000 ALTER TABLE `df_goods_sku` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `df_goods_type`
--

DROP TABLE IF EXISTS `df_goods_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `df_goods_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `name` varchar(20) NOT NULL,
  `logo` varchar(20) NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `df_goods_type`
--

LOCK TABLES `df_goods_type` WRITE;
/*!40000 ALTER TABLE `df_goods_type` DISABLE KEYS */;
INSERT INTO `df_goods_type` VALUES (1,'2019-02-07 03:39:39.809410','2019-02-15 12:21:56.262869',0,'仁果类','pomelo','group1/M00/00/00/wKgAa1xmruSAN74aAACSaO8gdfY2556384'),(2,'2019-02-07 09:35:30.014183','2019-02-15 12:21:46.795159',0,'核果类','drupe','group1/M00/00/00/wKgAa1xmrtqARXC-AACusCawjtI3053361'),(3,'2019-02-12 07:19:53.716441','2019-02-15 12:21:34.424147',0,'浆果类','berry','group1/M00/00/00/wKgAa1xmrs6ARMfuAACTrEUtOtM6935338'),(4,'2019-02-12 07:20:39.386078','2019-02-15 12:19:56.112713',0,'坚果类','nuts','group1/M00/00/00/wKgAa1xmrmyAH8oCAACQKEF1JnI2848370'),(5,'2019-02-12 07:21:50.491360','2019-02-15 12:19:48.594057',0,'柑果类','citrus_fruit','group1/M00/00/00/wKgAa1xmrmSAK-R3AACy4IBxcuM5503074'),(6,'2019-02-14 13:35:22.290969','2019-02-15 12:19:41.424829',0,'其他类','other','group1/M00/00/00/wKgAa1xmrl2ANhRzAADO0ZvYRFE4793031');
/*!40000 ALTER TABLE `df_goods_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `df_index_banner`
--

DROP TABLE IF EXISTS `df_index_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `df_index_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `image` varchar(100) NOT NULL,
  `index` smallint(6) NOT NULL,
  `sku_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `df_index_banner_sku_id_69fe9fd0be2a4b1c_fk_df_goods_sku_id` (`sku_id`),
  CONSTRAINT `df_index_banner_sku_id_69fe9fd0be2a4b1c_fk_df_goods_sku_id` FOREIGN KEY (`sku_id`) REFERENCES `df_goods_sku` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `df_index_banner`
--

LOCK TABLES `df_index_banner` WRITE;
/*!40000 ALTER TABLE `df_index_banner` DISABLE KEYS */;
INSERT INTO `df_index_banner` VALUES (1,'2019-02-12 08:33:55.267819','2019-02-13 09:39:57.652417',0,'group1/M00/00/00/wKgAa1xihPOAcJmZAACpB-LsCdE2280354',0,1),(2,'2019-02-12 08:41:07.255500','2019-02-16 02:58:32.046993',0,'group1/M00/00/00/wKgAa1xihqOARB9-AAC3B-z8J2c9465599',1,6),(3,'2019-02-12 09:02:20.083212','2019-02-16 02:21:54.521037',0,'group1/M00/00/00/wKgAa1xnc8KAanIoAAYssVb-wvw4529267',2,2);
/*!40000 ALTER TABLE `df_index_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `df_index_promotion`
--

DROP TABLE IF EXISTS `df_index_promotion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `df_index_promotion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `name` varchar(20) NOT NULL,
  `url` varchar(256) NOT NULL,
  `image` varchar(100) NOT NULL,
  `index` smallint(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `df_index_promotion`
--

LOCK TABLES `df_index_promotion` WRITE;
/*!40000 ALTER TABLE `df_index_promotion` DISABLE KEYS */;
INSERT INTO `df_index_promotion` VALUES (1,'2019-02-12 09:04:13.363560','2019-02-12 09:04:13.363604',0,'春节活动','/activities','group1/M00/00/00/wKgAa1xijA2ACffQAAA2pLUeB604140799',0),(2,'2019-02-12 09:05:19.531713','2019-02-12 09:05:19.531771',0,'夏日活动','/activities2','group1/M00/00/00/wKgAa1xijE-Acb7UAAA98yvCs1I7650311',1);
/*!40000 ALTER TABLE `df_index_promotion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `df_index_type_goods`
--

DROP TABLE IF EXISTS `df_index_type_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `df_index_type_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `display_type` smallint(6) NOT NULL,
  `index` smallint(6) NOT NULL,
  `sku_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `df_index_type_goods_sku_id_266af33a0115a6be_fk_df_goods_sku_id` (`sku_id`),
  KEY `df_index_type_goods_type_id_cac828343156e3c_fk_df_goods_type_id` (`type_id`),
  CONSTRAINT `df_index_type_goods_sku_id_266af33a0115a6be_fk_df_goods_sku_id` FOREIGN KEY (`sku_id`) REFERENCES `df_goods_sku` (`id`),
  CONSTRAINT `df_index_type_goods_type_id_cac828343156e3c_fk_df_goods_type_id` FOREIGN KEY (`type_id`) REFERENCES `df_goods_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `df_index_type_goods`
--

LOCK TABLES `df_index_type_goods` WRITE;
/*!40000 ALTER TABLE `df_index_type_goods` DISABLE KEYS */;
INSERT INTO `df_index_type_goods` VALUES (1,'2019-02-12 08:42:49.928114','2019-02-14 14:12:54.938980',0,1,0,1,3),(2,'2019-02-12 08:58:48.466671','2019-02-12 08:58:48.466723',0,1,0,2,1),(3,'2019-02-12 08:59:17.516855','2019-02-14 13:59:10.207845',0,1,1,3,1),(4,'2019-02-12 08:59:27.511628','2019-02-12 08:59:27.511673',0,1,2,2,1),(5,'2019-02-12 08:59:38.146929','2019-02-12 08:59:38.146980',0,1,3,2,1),(6,'2019-02-14 14:01:51.039789','2019-02-14 14:01:51.039832',0,1,0,4,5),(7,'2019-02-14 14:08:15.467374','2019-02-14 14:08:15.467421',0,1,0,5,5);
/*!40000 ALTER TABLE `df_index_type_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `df_order_goods`
--

DROP TABLE IF EXISTS `df_order_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `df_order_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `count` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `comment` varchar(256) NOT NULL,
  `order_id` varchar(128) NOT NULL,
  `sku_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `df_order_goods_69dfcb07` (`order_id`),
  KEY `df_order_goods_22ad5bca` (`sku_id`),
  CONSTRAINT `df_order_goo_order_id_3d8fbdf885f21601_fk_df_order_info_order_id` FOREIGN KEY (`order_id`) REFERENCES `df_order_info` (`order_id`),
  CONSTRAINT `df_order_goods_sku_id_1b245fc886ee435d_fk_df_goods_sku_id` FOREIGN KEY (`sku_id`) REFERENCES `df_goods_sku` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `df_order_goods`
--

LOCK TABLES `df_order_goods` WRITE;
/*!40000 ALTER TABLE `df_order_goods` DISABLE KEYS */;
INSERT INTO `df_order_goods` VALUES (1,'2019-02-15 04:52:39.444991','2019-02-15 14:25:10.100961',0,1,10.00,'很好吃','201902151252395',2),(2,'2019-02-15 12:37:53.221551','2019-02-15 12:37:53.221625',0,1,100.00,'','201902152037535',1),(3,'2019-02-15 12:37:53.240122','2019-02-15 12:37:53.240308',0,1,50.00,'','201902152037535',4),(4,'2019-02-15 12:37:53.266334','2019-02-15 12:37:53.266409',0,1,50.00,'','201902152037535',5),(5,'2019-02-15 12:37:53.299265','2019-02-15 12:37:53.299423',0,1,45.00,'','201902152037535',3);
/*!40000 ALTER TABLE `df_order_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `df_order_info`
--

DROP TABLE IF EXISTS `df_order_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `df_order_info` (
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `order_id` varchar(128) NOT NULL,
  `pay_method` smallint(6) NOT NULL,
  `total_count` int(11) NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `transit_price` decimal(10,2) NOT NULL,
  `order_status` smallint(6) NOT NULL,
  `trade_no` varchar(128) NOT NULL,
  `addr_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `df_order_info_90ccbf41` (`addr_id`),
  KEY `df_order_info_e8701ad4` (`user_id`),
  CONSTRAINT `df_order_info_addr_id_4fa64b659b8056d1_fk_df_address_id` FOREIGN KEY (`addr_id`) REFERENCES `df_address` (`id`),
  CONSTRAINT `df_order_info_user_id_1700ea521490e41a_fk_df_user_id` FOREIGN KEY (`user_id`) REFERENCES `df_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `df_order_info`
--

LOCK TABLES `df_order_info` WRITE;
/*!40000 ALTER TABLE `df_order_info` DISABLE KEYS */;
INSERT INTO `df_order_info` VALUES ('2019-02-15 04:52:39.127923','2019-02-15 14:25:10.107633',0,'201902151252395',3,1,10.00,10.00,5,'2019021522001461940500595619',2,5),('2019-02-15 12:37:53.128749','2019-02-15 12:37:53.303590',0,'201902152037535',1,4,245.00,10.00,1,'',3,5);
/*!40000 ALTER TABLE `df_order_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `df_user`
--

DROP TABLE IF EXISTS `df_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `df_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `df_user`
--

LOCK TABLES `df_user` WRITE;
/*!40000 ALTER TABLE `df_user` DISABLE KEYS */;
INSERT INTO `df_user` VALUES (1,'pbkdf2_sha256$20000$NG2GipsKyZms$B8K+LotXW909x65+53JwzqtgonPexPy7OxiL69GmgBE=','2019-02-06 15:27:05.189308',0,'admin','','','1105754592@qq.com',0,1,'2019-02-06 15:11:32.578965','2019-02-06 15:11:32.602528','2019-02-06 15:18:57.523217',0),(2,'pbkdf2_sha256$20000$rwQEDJvDa4Tl$0e5c/4hkz+KPh4/A29N4Jc0lDYRN+x5SjkodegdtLdc=',NULL,0,'admin2','','','1105754592@qq.com',0,0,'2019-02-06 15:22:00.302787','2019-02-06 15:22:00.326477','2019-02-06 15:22:00.639355',0),(3,'pbkdf2_sha256$20000$d8HJjBLmQU62$R5DqhyT3FJG1uRWgIQCvKiLs/XT0zaoa9xouJ0jI3Gg=',NULL,0,'admin3','','','1105754592@qq.com',0,0,'2019-02-06 15:23:27.900522','2019-02-06 15:23:27.922848','2019-02-06 15:23:28.047167',0),(4,'pbkdf2_sha256$20000$WFSVn6UDQ8pa$0Dw4bxtKCEFAhqHj7P1M8OpypGwT5JWIkUZy5VZbc1c=','2019-02-06 15:28:18.283782',0,'admin4','','','1105754592@qq.com',0,1,'2019-02-06 15:28:01.958465','2019-02-06 15:28:01.978578','2019-02-06 15:28:12.740858',0),(5,'pbkdf2_sha256$20000$cWYkowFku5Ps$N89QktYnTiMt3Pt1g+b5jazqlT3ARAv1xhxSuhDRQXo=','2019-02-16 03:04:28.583944',1,'admin1','','','admin@qq.com',1,1,'2019-02-07 02:07:39.005810','2019-02-07 02:07:39.038452','2019-02-07 02:07:39.038480',0),(6,'pbkdf2_sha256$20000$oM7Dvu5w51jY$JTW4d1IMf2UYZ6SEX3YAulJax0NUZ7DxRqgeuYZnWDk=',NULL,0,'admin11','','','1105754592@qq.com',0,0,'2019-02-12 03:15:06.486346','2019-02-12 03:15:06.592438','2019-02-12 03:15:08.348592',0),(7,'pbkdf2_sha256$20000$19xACp3cO4KS$xqaWFj4Re+GsKVnVh4YmrSqR6+Gj4cGyhZrdOq0yggo=','2019-02-16 01:34:00.623529',0,'python','','','1105754592@qq.com',0,1,'2019-02-15 14:55:11.447527','2019-02-15 14:55:11.501237','2019-02-15 14:57:45.615961',0),(8,'pbkdf2_sha256$20000$L4cTxeKVJPHB$VdG7WKUzSGKoCLiHV9p3dJqwsiGE0sRiS/mJunz+Ftc=','2019-02-15 14:58:50.344295',0,'python1','','','1105754592@qq.com',0,1,'2019-02-15 14:57:34.749689','2019-02-15 14:57:34.802414','2019-02-15 14:58:36.342042',0);
/*!40000 ALTER TABLE `df_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `df_user_groups`
--

DROP TABLE IF EXISTS `df_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `df_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `df_user_groups_group_id_d3c1be9fc418999_fk_auth_group_id` (`group_id`),
  CONSTRAINT `df_user_groups_group_id_d3c1be9fc418999_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `df_user_groups_user_id_e1bb899824a9151_fk_df_user_id` FOREIGN KEY (`user_id`) REFERENCES `df_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `df_user_groups`
--

LOCK TABLES `df_user_groups` WRITE;
/*!40000 ALTER TABLE `df_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `df_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `df_user_user_permissions`
--

DROP TABLE IF EXISTS `df_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `df_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `df_user_use_permission_id_1a8aa49bf44819aa_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `df_user_use_permission_id_1a8aa49bf44819aa_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `df_user_user_permissions_user_id_740a2344116fa8ca_fk_df_user_id` FOREIGN KEY (`user_id`) REFERENCES `df_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `df_user_user_permissions`
--

LOCK TABLES `df_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `df_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `df_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `djang_content_type_id_68bda0d5dd69abc9_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_5548c334d623fdcd_fk_df_user_id` (`user_id`),
  CONSTRAINT `djang_content_type_id_68bda0d5dd69abc9_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_5548c334d623fdcd_fk_df_user_id` FOREIGN KEY (`user_id`) REFERENCES `df_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2019-02-07 03:39:40.945403','1','apple',1,'',8,5),(2,'2019-02-07 09:35:30.312196','2','桃子',1,'',8,5),(3,'2019-02-12 03:37:29.925315','1','apple',2,'没有字段被修改。',8,5),(4,'2019-02-12 03:38:04.199000','1','苹果',2,'已修改 name 和 image 。',8,5),(5,'2019-02-12 03:38:58.501430','2','桃子',2,'已修改 image 。',8,5),(6,'2019-02-12 03:39:46.141165','1','苹果',2,'已修改 logo 。',8,5),(7,'2019-02-12 03:41:38.383701','2','桃子',2,'已修改 image 。',8,5),(8,'2019-02-12 03:41:58.569981','1','苹果',2,'已修改 image 。',8,5),(9,'2019-02-12 06:13:19.229588','2','桃子',2,'没有字段被修改。',8,5),(10,'2019-02-12 06:22:01.849012','2','桃子',2,'没有字段被修改。',8,5),(11,'2019-02-12 07:06:43.884669','2','桃子',2,'没有字段被修改。',8,5),(12,'2019-02-12 07:16:32.515973','2','桃子',2,'没有字段被修改。',8,5),(13,'2019-02-12 07:19:53.935446','3','浆果类',1,'',8,5),(14,'2019-02-12 07:20:39.419266','4','坚果类',1,'',8,5),(15,'2019-02-12 07:21:50.508781','5','柑果类',1,'',8,5),(16,'2019-02-12 08:27:27.255768','1','Goods object',1,'',10,5),(17,'2019-02-12 08:27:56.854590','1','Goods object',2,'已修改 name 。',10,5),(18,'2019-02-12 08:30:04.770231','1','GoodsSKU object',1,'',9,5),(19,'2019-02-12 08:33:55.661827','1','IndexGoodsBanner object',1,'',12,5),(20,'2019-02-12 08:39:08.452868','1','花果山猕猴桃',2,'没有字段被修改。',12,5),(21,'2019-02-12 08:41:07.284065','2','花果山猕猴桃',1,'',12,5),(22,'2019-02-12 08:42:50.171989','1','花果山猕猴桃',1,'',13,5),(23,'2019-02-12 08:49:23.866162','2','苹果',1,'',10,5),(24,'2019-02-12 08:53:47.610134','2','红富士苹果',1,'',9,5),(25,'2019-02-12 08:58:48.676885','2','红富士苹果',1,'',13,5),(26,'2019-02-12 08:59:17.528924','3','红富士苹果',1,'',13,5),(27,'2019-02-12 08:59:27.547870','4','红富士苹果',1,'',13,5),(28,'2019-02-12 08:59:38.193023','5','红富士苹果',1,'',13,5),(29,'2019-02-12 09:02:20.506282','3','红富士苹果',1,'',12,5),(30,'2019-02-12 09:04:13.410847','1','IndexPromotionBanner object',1,'',14,5),(31,'2019-02-12 09:05:19.844832','2','夏日活动',1,'',14,5),(32,'2019-02-13 09:34:03.793265','1','花果山猕猴桃',2,'没有字段被修改。',12,5),(33,'2019-02-13 09:39:58.399978','1','花果山猕猴桃',2,'没有字段被修改。',12,5),(34,'2019-02-13 13:21:33.662154','2','苹果',2,'已修改 detail 。',10,5),(35,'2019-02-13 13:39:44.360283','1','猕猴桃',2,'已修改 detail 。',10,5),(36,'2019-02-13 15:18:16.193733','1','仁果类',2,'已修改 name 。',8,5),(37,'2019-02-14 13:10:57.009626','2','核果类',2,'已修改 name 。',8,5),(38,'2019-02-14 13:13:15.596043','2','核果类',2,'已修改 logo 。',8,5),(39,'2019-02-14 13:14:09.054873','5','柑果类',2,'已修改 logo 。',8,5),(40,'2019-02-14 13:15:31.087121','4','坚果类',2,'已修改 logo 。',8,5),(41,'2019-02-14 13:16:21.989616','3','浆果类',2,'已修改 logo 。',8,5),(42,'2019-02-14 13:17:15.396693','1','仁果类',2,'已修改 logo 。',8,5),(43,'2019-02-14 13:17:46.946019','3','浆果类',2,'已修改 logo 。',8,5),(44,'2019-02-14 13:18:05.618824','4','坚果类',2,'已修改 logo 。',8,5),(45,'2019-02-14 13:18:13.667136','5','柑果类',2,'已修改 logo 。',8,5),(46,'2019-02-14 13:35:22.491083','6','其他',1,'',8,5),(47,'2019-02-14 13:42:49.757440','6','其他类',2,'已修改 name 。',8,5),(48,'2019-02-14 13:47:00.313879','2','苹果',2,'已修改 detail 。',10,5),(49,'2019-02-14 13:47:07.795165','1','猕猴桃',2,'没有字段被修改。',10,5),(50,'2019-02-14 13:48:30.814624','3','芒果',1,'',10,5),(51,'2019-02-14 13:52:20.152644','4','雪梨',1,'',10,5),(52,'2019-02-14 13:53:24.513653','5','柚子',1,'',10,5),(53,'2019-02-14 13:54:15.567745','6','橙子',1,'',10,5),(54,'2019-02-14 13:59:02.484509','3','新疆库尔勒香梨',1,'',9,5),(55,'2019-02-14 13:59:10.215566','3','新疆库尔勒香梨',2,'已修改 sku 。',13,5),(56,'2019-02-14 14:01:49.276139','4','秭归橙子脐橙',1,'',9,5),(57,'2019-02-14 14:01:51.046106','6','秭归橙子脐橙',1,'',13,5),(58,'2019-02-14 14:06:23.579096','7','橘子',1,'',10,5),(59,'2019-02-14 14:08:12.520564','5','四川丑橘',1,'',9,5),(60,'2019-02-14 14:08:15.578856','7','四川丑橘',1,'',13,5),(61,'2019-02-14 14:12:52.810899','1','花果山猕猴桃',2,'已修改 image 。',9,5),(62,'2019-02-14 14:12:54.949126','1','花果山猕猴桃',2,'没有字段被修改。',13,5),(63,'2019-02-14 15:18:31.015679','2','核果类',2,'已修改 image 。',8,5),(64,'2019-02-14 15:18:47.015623','1','仁果类',2,'已修改 image 。',8,5),(65,'2019-02-14 15:18:55.191748','5','柑果类',2,'已修改 image 。',8,5),(66,'2019-02-14 15:19:03.466555','4','坚果类',2,'已修改 image 。',8,5),(67,'2019-02-14 15:19:26.693656','6','其他类',2,'已修改 image 。',8,5),(68,'2019-02-15 12:18:07.678913','6','其他类',2,'已修改 image 。',8,5),(69,'2019-02-15 12:18:17.877713','5','柑果类',2,'已修改 image 。',8,5),(70,'2019-02-15 12:18:31.012161','4','坚果类',2,'已修改 image 。',8,5),(71,'2019-02-15 12:18:43.328215','3','浆果类',2,'已修改 image 。',8,5),(72,'2019-02-15 12:18:50.863773','2','核果类',2,'已修改 image 。',8,5),(73,'2019-02-15 12:18:50.964725','2','核果类',2,'已修改 image 。',8,5),(74,'2019-02-15 12:18:58.717103','1','仁果类',2,'已修改 image 。',8,5),(75,'2019-02-15 12:19:41.450725','6','其他类',2,'已修改 image 。',8,5),(76,'2019-02-15 12:19:48.632472','5','柑果类',2,'已修改 image 。',8,5),(77,'2019-02-15 12:19:56.144441','4','坚果类',2,'已修改 image 。',8,5),(78,'2019-02-15 12:21:34.443708','3','浆果类',2,'已修改 image 。',8,5),(79,'2019-02-15 12:21:46.818623','2','核果类',2,'已修改 image 。',8,5),(80,'2019-02-15 12:21:56.283160','1','仁果类',2,'已修改 image 。',8,5),(81,'2019-02-16 02:15:48.188589','3','红富士苹果',2,'已修改 image 。',12,5),(82,'2019-02-16 02:17:50.272421','3','红富士苹果',2,'已修改 image 。',12,5),(83,'2019-02-16 02:21:54.548855','3','红富士苹果',2,'已修改 image 。',12,5),(84,'2019-02-16 02:58:10.690475','6','越南进口玉芒',1,'',9,5),(85,'2019-02-16 02:58:32.061056','2','越南进口玉芒',2,'已修改 sku 。',12,5);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_2e88202ebe137157_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'contenttypes','contenttype'),(10,'goods','goods'),(11,'goods','goodsimage'),(9,'goods','goodssku'),(8,'goods','goodstype'),(12,'goods','indexgoodsbanner'),(14,'goods','indexpromotionbanner'),(13,'goods','indextypegoodsbanner'),(16,'order','ordergoods'),(15,'order','orderinfo'),(5,'sessions','session'),(7,'user','address'),(6,'user','user');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2019-02-06 09:36:20.455117'),(2,'contenttypes','0002_remove_content_type_name','2019-02-06 09:36:20.765162'),(3,'auth','0001_initial','2019-02-06 09:36:21.336530'),(4,'auth','0002_alter_permission_name_max_length','2019-02-06 09:36:21.400904'),(5,'auth','0003_alter_user_email_max_length','2019-02-06 09:36:21.429965'),(6,'auth','0004_alter_user_username_opts','2019-02-06 09:36:21.461933'),(7,'auth','0005_alter_user_last_login_null','2019-02-06 09:36:21.495930'),(8,'auth','0006_require_contenttypes_0002','2019-02-06 09:36:21.498986'),(9,'user','0001_initial','2019-02-06 09:36:21.740160'),(10,'admin','0001_initial','2019-02-06 09:36:21.944513'),(11,'goods','0001_initial','2019-02-06 09:36:22.789257'),(12,'goods','0002_auto_20190206_1736','2019-02-06 09:36:22.802531'),(13,'order','0001_initial','2019-02-06 09:36:22.852173'),(14,'order','0002_auto_20171113_1813','2019-02-06 09:36:24.251408'),(15,'order','0003_auto_20190206_1736','2019-02-06 09:36:24.347963'),(16,'sessions','0001_initial','2019-02-06 09:36:24.414182'),(17,'goods','0002_auto_20190210_2032','2019-02-10 12:32:40.412671'),(18,'order','0003_auto_20190210_2032','2019-02-10 12:32:40.675389');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-16 15:54:07
