-- MySQL dump 10.13  Distrib 5.6.17, for Win64 (x86_64)
--
-- Host: localhost    Database: OCPizza
-- ------------------------------------------------------
-- Server version	5.6.17-log

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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id_address` int(11) NOT NULL AUTO_INCREMENT,
  `street` varchar(100) DEFAULT NULL,
  `street_number` int(11) DEFAULT NULL,
  `city_name` varchar(50) DEFAULT NULL,
  `zip_code` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_address`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'rue de Collin',14,'Traore',48505),(2,'chemin de Leconte',15,'Sainte ChantalVille',44843),(3,'boulevard Anouk Garnier',12,'Joubert',42513);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `id_customer` int(11) NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(100) DEFAULT NULL,
  `customer_firstname` varchar(100) DEFAULT NULL,
  `email` varchar(500) DEFAULT NULL,
  `phone_number` varchar(50) DEFAULT NULL,
  `customer_login` varchar(50) DEFAULT NULL,
  `customer_password` varchar(100) DEFAULT NULL,
  `id_address_customer_fk` int(11) NOT NULL,
  PRIMARY KEY (`id_customer`),
  KEY `id_address_customer_fk` (`id_address_customer_fk`),
  CONSTRAINT `id_address_customer_fk` FOREIGN KEY (`id_address_customer_fk`) REFERENCES `address` (`id_address`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Colette','Bouchet','yvallee@lagarde.com','0662377670','S?bastien Marty','x9Ut5o09%c$MPu8S5bm9s)88V!rO3hNfv$ax0IbE',1),(2,'Roger','Roux','rene52@laposte.net','0413273588','Fr?d?ric Hardy','&giPcGriEHir_^V^xpfM_YkVG*UEgbLB@PmZx(7_',2),(3,'Nicolas','Fabre','paulette84@raymond.net','+33 (0)3 88 60 72 67','Bernadette Lopez','F(5NA4QJtY03GA14x_)fe$Hq#3aetU+lm$n*h724',3);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_order`
--

DROP TABLE IF EXISTS `customer_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_order` (
  `id_order` int(11) NOT NULL AUTO_INCREMENT,
  `id_customer_order_fk` int(11) NOT NULL,
  `pizza_name_order_fk` varchar(50) NOT NULL,
  `status` varchar(50) DEFAULT NULL,
  `payement_method` varchar(50) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `delivery_mode` varchar(50) DEFAULT NULL,
  `pizza_quantity` int(11) DEFAULT NULL,
  `id_address_order_fk` int(11) NOT NULL,
  PRIMARY KEY (`id_order`),
  KEY `id_customer_order_fk` (`id_customer_order_fk`),
  KEY `pizza_name_order_fk` (`pizza_name_order_fk`),
  KEY `id_address_order_fk` (`id_address_order_fk`),
  CONSTRAINT `id_address_order_fk` FOREIGN KEY (`id_address_order_fk`) REFERENCES `address` (`id_address`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `id_customer_order_fk` FOREIGN KEY (`id_customer_order_fk`) REFERENCES `customer` (`id_customer`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `pizza_name_order_fk` FOREIGN KEY (`pizza_name_order_fk`) REFERENCES `pizza` (`pizza_name`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_order`
--

LOCK TABLES `customer_order` WRITE;
/*!40000 ALTER TABLE `customer_order` DISABLE KEYS */;
INSERT INTO `customer_order` VALUES (1,1,'Margarita','En cours de pr?paration','Carte bancaire','1994-01-29 00:00:00','Chez le client',11,1),(2,2,'Nordique','En livraison','Esp?ces','1984-06-01 00:00:00','Retrait en pizzeria',9,2),(3,3,'V?g?tarienne','Livr?','Tickets restaurants','1999-05-20 00:00:00','Retrait en pizzeria',8,3);
/*!40000 ALTER TABLE `customer_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `id_employee_number` int(11) NOT NULL AUTO_INCREMENT,
  `employee_name` varchar(50) DEFAULT NULL,
  `employee_firstname` varchar(50) DEFAULT NULL,
  `employee_password` varchar(50) DEFAULT NULL,
  `id_address_employee_fk` int(11) NOT NULL,
  PRIMARY KEY (`id_employee_number`),
  KEY `id_address_employee_fk` (`id_address_employee_fk`),
  CONSTRAINT `id_address_employee_fk` FOREIGN KEY (`id_address_employee_fk`) REFERENCES `address` (`id_address`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Raymond-Fr?d?ric Reynaud','Bruneau','z@Refyo9(%TQ%lBxLk&FbCLh(G9yPW451FsP@VuU',1),(2,'?milie de Vaillant','Letellier','hb_eACKlcIc1nhv*x+My*25bF&B_NHD4ERKwk8Bs',2),(3,'Valentine Meyer','Chauvet','w!hDbNaD^4Op$oJ*#)tC&8XlIRwTeJ(z0^1zs6Q#',3);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingredient`
--

DROP TABLE IF EXISTS `ingredient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ingredient` (
  `ingredient_name` varchar(50) NOT NULL,
  `ingredient_inventory` int(11) DEFAULT NULL,
  `unit_ingredient` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ingredient_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredient`
--

LOCK TABLES `ingredient` WRITE;
/*!40000 ALTER TABLE `ingredient` DISABLE KEYS */;
INSERT INTO `ingredient` VALUES ('Caviar',18,'Litres'),('Haricots',67,'Grammes'),('Poulet',71,'Killogrammes');
/*!40000 ALTER TABLE `ingredient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pizza`
--

DROP TABLE IF EXISTS `pizza`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pizza` (
  `description` varchar(500) DEFAULT NULL,
  `pizza_price` float DEFAULT NULL,
  `pizza_name` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`pizza_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pizza`
--

LOCK TABLES `pizza` WRITE;
/*!40000 ALTER TABLE `pizza` DISABLE KEYS */;
INSERT INTO `pizza` VALUES ('Oncle faveur riche.',13,'Margarita'),('Tapis mon charger ?tudier.',8,'Nordique'),('Naissance composer arr?ter occasion go?t.',9,'V?g?tarienne');
/*!40000 ALTER TABLE `pizza` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipe`
--

DROP TABLE IF EXISTS `recipe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recipe` (
  `id_recipe` int(11) NOT NULL,
  `pizza_name_recipe_fk` varchar(50) NOT NULL,
  `ingredient_name_fk` varchar(50) NOT NULL,
  `cooking_time` varchar(50) DEFAULT NULL,
  `ingredient_quantity` int(11) DEFAULT NULL,
  `unit_recipe` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_recipe`),
  KEY `pizza_name_recipe_fk` (`pizza_name_recipe_fk`),
  KEY `ingredient_name_fk` (`ingredient_name_fk`),
  CONSTRAINT `ingredient_name_fk` FOREIGN KEY (`ingredient_name_fk`) REFERENCES `ingredient` (`ingredient_name`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `pizza_name_recipe_fk` FOREIGN KEY (`pizza_name_recipe_fk`) REFERENCES `pizza` (`pizza_name`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipe`
--

LOCK TABLES `recipe` WRITE;
/*!40000 ALTER TABLE `recipe` DISABLE KEYS */;
INSERT INTO `recipe` VALUES (0,'Margarita','Poulet','433',139,'Killogrammes'),(1,'Nordique','Haricots','517',121,'Grammes'),(2,'V?g?tarienne','Caviar','400',69,'Litres');
/*!40000 ALTER TABLE `recipe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurant`
--

DROP TABLE IF EXISTS `restaurant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `restaurant` (
  `id_restaurant_number` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `id_address_restaurant_fk` int(11) NOT NULL,
  `id_role_restaurant_fk` int(11) NOT NULL,
  PRIMARY KEY (`id_restaurant_number`),
  KEY `id_address_restaurant_fk` (`id_address_restaurant_fk`),
  KEY `id_role_restaurant_fk` (`id_role_restaurant_fk`),
  CONSTRAINT `id_address_restaurant_fk` FOREIGN KEY (`id_address_restaurant_fk`) REFERENCES `address` (`id_address`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `id_role_restaurant_fk` FOREIGN KEY (`id_role_restaurant_fk`) REFERENCES `role` (`id_role`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant`
--

LOCK TABLES `restaurant` WRITE;
/*!40000 ALTER TABLE `restaurant` DISABLE KEYS */;
INSERT INTO `restaurant` VALUES (1,'Pizzaria Alfredo',1,1),(2,'Pizzaria Tatie',2,2),(3,'Pizzaria Ovnie',3,3);
/*!40000 ALTER TABLE `restaurant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `id_role` int(11) NOT NULL,
  `employee_role` varchar(50) DEFAULT NULL,
  `id_employee_fk` int(11) NOT NULL,
  PRIMARY KEY (`id_role`),
  KEY `id_employee_fk` (`id_employee_fk`),
  CONSTRAINT `id_employee_fk` FOREIGN KEY (`id_employee_fk`) REFERENCES `employee` (`id_employee_number`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'Directeur',1),(2,'Livreur',2),(3,'Preparateur',3);
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-08 12:30:44
