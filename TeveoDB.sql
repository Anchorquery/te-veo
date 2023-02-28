-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--

-- ------------------------------------------------------
-- Server version	5.7.39-google-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

/*SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*//* '0bf115d8-2028-11ed-85e6-42010a9e006c:1-1283445,
3dbf5040-cee6-11ea-938e-42010a9e0061:1-12080073,
5b30bb3e-7eb5-11ea-9ce2-42010a9e0017:1-1765800,
af553496-5561-11ed-9323-42010a9e003d:1-1951516';*/

--
-- Table structure for table `category_products`
--

DROP TABLE IF EXISTS `category_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category_products` (
  `id_category` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id_category`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_products`
--

LOCK TABLES `category_products` WRITE;
/*!40000 ALTER TABLE `category_products` DISABLE KEYS */;
INSERT INTO `category_products` VALUES (1,' Productos y Otros',NULL,1,NULL,NULL),(2,'Vehiculos',NULL,1,NULL,NULL),(3,'Servicios',NULL,1,NULL,NULL),(4,'Inmuebles',NULL,1,NULL,NULL),(5,'Asesoria',' ',0,'2022-08-06 19:40:56','2022-08-06 19:40:56');
/*!40000 ALTER TABLE `category_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chat` (
  `id_chat` int(11) NOT NULL AUTO_INCREMENT,
  `id_groups` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `message` text,
  `status` int(11) DEFAULT NULL,
  `message_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_chat`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (1,1,7,'75ad35622bc425e7049c55b6a85ae149a83312e569dbaad3e1a0f16d27e061ab17f6dc9019eefd99ec60c019db069d3d83ddc5177dbbe8264e0116bcf768e5d9e1bea79338e9c7f9341a9cf7e8ffb3b38da7c593e8fff990eecedc382bd9ead5a9f0748ca0d89a7d998c4cfeac47cd28ab0bd6dffb1bfdda8cc37a961abf6b6b199e197fb20128ce6295cfb3aab7fffdc93a67bc00cfed31f372d37423d97b99cf3591d524f85d017d51891de0dd902cc05909ef845ae06ad5b1111fc71b7d61129eb7b4417c27543e22f195d75595ea1f1518b559bd74aa5d67d31cd63d38c9294ba2aa14b80afb482de5d1d38d74ab5d0c7fb05d97def68f0a859f9e58e067a8f9de47aef8165e49404d974890ab8d1b478ceb48d041249abcd0270276518224134ed4b4a453b6f5800833595b51007b27f580f9624bf831bf891a914fbb52a9525356c2934c33db0216e184cacb0545e41cb751d3d9d738181f647f122264473bd0df4579e11ef00d544767dde4a8325fd613a582beb9a5e71e775f74fc1495255dd35121dde690bef280d331000a5ef263bb122cf5196f6fa5f755f96518cc0f1b17be62c3544d356e43d52cb82a80d3e3be793263f4c660d9ab74a62d3d8ba52bb64ee8a48d20fce17a125b57570fb9bbac4fc39fca7dc9ba03c1930e6a4397f4937ab2872edb448c851af4a193f02d3b3efbbf4086514dca72c4aca589d2b639e89d251b722e15c2c84ab8faf741207aeda68bac52fac3f1aefaffd2f60dc0d6efb4453dae4de177df2cd5f4ab393c2c0112412bd248288e61b780cda403f9e688050e000811d48449cbdd313de82428ce424d7194',0,'2022-07-22 13:00:58'),(2,1,2,'75ad35622bc425e7049c55b6a85ae149a83312e569dbaad3e1a0f16d27e061ab17f6dc9019eefd99ec60c019db069d3d83ddc5177dbbe8264e0116bcf768e5d9e1bea79338e9c7f9341a9cf7e8ffb3b38da7c593e8fff990eecedc382bd9ead5a9f0748ca0d89a7d998c4cfeac47cd28ab0bd6dffb1bfdda8cc37a961abf6b6b199e197fb20128ce6295cfb3aab7fffdc93a67bc00cfed31f372d37423d97b99cf3591d524f85d017d51891de0dd902cc05909ef845ae06ad5b1111fc71b7d61129eb7b4417c27543e22f195d75595ea1f1518b559bd74aa5d67d31cd63d38c9294ba2aa14b80afb482de5d1d38d74ab5d0c7fb05d97def68f0a859f9e58e067a8f9de47aef8165e49404d974890ab8d1b478ceb48d041249abcd0270276518224134ed4b4a453b6f5800833595b51007b27f580f9624bf831bf891a914fbb52a9525356c2934c33db0216e184cacb0545e41cb751d3d9d738181f647f122264473bd0df4579e11ef00d544767dde4a8325fd613a582beb9a5e71e775f74fc1495255dd35121dde690bef280d331000a5ef263bb122cf5196f6fa5f755f96518cc0f1b17be62c3544d356e43d52cb82a80d3e3be793263f4c660d9ab74a62d3d8ba52bb64ee8a48d20fce17a125b57570fb9bbac4fc39fca7dc9ba03c1930e6a4397f4937ab2872edb448c851af4a193f02d3b3efbbf4086514dca72c4aca589d2b639e89d251b722e15c2c84ab8faf741207aeda68bac52fac3f1aefaffd2f60dc0d6efb4453dae4de177df2cd5f4ab393c2c0112412bd248288e61b780cda403f9e688050e000811d48449cbdd313de82428ce424d7194',1,'2022-07-22 13:01:58'),(3,1,7,'75ad35622bc425e7049c55b6a85ae149a83312e569dbaad3e1a0f16d27e061ab17f6dc9019eefd99ec60c019db069d3d83ddc5177dbbe8264e0116bcf768e5d9e1bea79338e9c7f9341a9cf7e8ffb3b38da7c593e8fff990eecedc382bd9ead5a9f0748ca0d89a7d998c4cfeac47cd28ab0bd6dffb1bfdda8cc37a961abf6b6b199e197fb20128ce6295cfb3aab7fffdc93a67bc00cfed31f372d37423d97b99cf3591d524f85d017d51891de0dd902cc05909ef845ae06ad5b1111fc71b7d61129eb7b4417c27543e22f195d75595ea1f1518b559bd74aa5d67d31cd63d38c9294ba2aa14b80afb482de5d1d38d74ab5d0c7fb05d97def68f0a859f9e58e067a8f9de47aef8165e49404d974890ab8d1b478ceb48d041249abcd0270276518224134ed4b4a453b6f5800833595b51007b27f580f9624bf831bf891a914fbb52a9525356c2934c33db0216e184cacb0545e41cb751d3d9d738181f647f122264473bd0df4579e11ef00d544767dde4a8325fd613a582beb9a5e71e775f74fc1495255dd35121dde690bef280d331000a5ef263bb122cf5196f6fa5f755f96518cc0f1b17be62c3544d356e43d52cb82a80d3e3be793263f4c660d9ab74a62d3d8ba52bb64ee8a48d20fce17a125b57570fb9bbac4fc39fca7dc9ba03c1930e6a4397f4937ab2872edb448c851af4a193f02d3b3efbbf4086514dca72c4aca589d2b639e89d251b722e15c2c84ab8faf741207aeda68bac52fac3f1aefaffd2f60dc0d6efb4453dae4de177df2cd5f4ab393c2c0112412bd248288e61b780cda403f9e688050e000811d48449cbdd313de82428ce424d7194',1,'2022-07-22 13:02:58'),(4,1,2,'75ad35622bc425e7049c55b6a85ae149a83312e569dbaad3e1a0f16d27e061ab17f6dc9019eefd99ec60c019db069d3d83ddc5177dbbe8264e0116bcf768e5d9e1bea79338e9c7f9341a9cf7e8ffb3b38da7c593e8fff990eecedc382bd9ead5a9f0748ca0d89a7d998c4cfeac47cd28ab0bd6dffb1bfdda8cc37a961abf6b6b199e197fb20128ce6295cfb3aab7fffdc93a67bc00cfed31f372d37423d97b99cf3591d524f85d017d51891de0dd902cc05909ef845ae06ad5b1111fc71b7d61129eb7b4417c27543e22f195d75595ea1f1518b559bd74aa5d67d31cd63d38c9294ba2aa14b80afb482de5d1d38d74ab5d0c7fb05d97def68f0a859f9e58e067a8f9de47aef8165e49404d974890ab8d1b478ceb48d041249abcd0270276518224134ed4b4a453b6f5800833595b51007b27f580f9624bf831bf891a914fbb52a9525356c2934c33db0216e184cacb0545e41cb751d3d9d738181f647f122264473bd0df4579e11ef00d544767dde4a8325fd613a582beb9a5e71e775f74fc1495255dd35121dde690bef280d331000a5ef263bb122cf5196f6fa5f755f96518cc0f1b17be62c3544d356e43d52cb82a80d3e3be793263f4c660d9ab74a62d3d8ba52bb64ee8a48d20fce17a125b57570fb9bbac4fc39fca7dc9ba03c1930e6a4397f4937ab2872edb448c851af4a193f02d3b3efbbf4086514dca72c4aca589d2b639e89d251b722e15c2c84ab8faf741207aeda68bac52fac3f1aefaffd2f60dc0d6efb4453dae4de177df2cd5f4ab393c2c0112412bd248288e61b780cda403f9e688050e000811d48449cbdd313de82428ce424d7194',1,'2022-07-22 13:03:58'),(5,1,7,'75ad35622bc425e7049c55b6a85ae149a83312e569dbaad3e1a0f16d27e061ab17f6dc9019eefd99ec60c019db069d3d83ddc5177dbbe8264e0116bcf768e5d9e1bea79338e9c7f9341a9cf7e8ffb3b38da7c593e8fff990eecedc382bd9ead5a9f0748ca0d89a7d998c4cfeac47cd28ab0bd6dffb1bfdda8cc37a961abf6b6b199e197fb20128ce6295cfb3aab7fffdc93a67bc00cfed31f372d37423d97b99cf3591d524f85d017d51891de0dd902cc05909ef845ae06ad5b1111fc71b7d61129eb7b4417c27543e22f195d75595ea1f1518b559bd74aa5d67d31cd63d38c9294ba2aa14b80afb482de5d1d38d74ab5d0c7fb05d97def68f0a859f9e58e067a8f9de47aef8165e49404d974890ab8d1b478ceb48d041249abcd0270276518224134ed4b4a453b6f5800833595b51007b27f580f9624bf831bf891a914fbb52a9525356c2934c33db0216e184cacb0545e41cb751d3d9d738181f647f122264473bd0df4579e11ef00d544767dde4a8325fd613a582beb9a5e71e775f74fc1495255dd35121dde690bef280d331000a5ef263bb122cf5196f6fa5f755f96518cc0f1b17be62c3544d356e43d52cb82a80d3e3be793263f4c660d9ab74a62d3d8ba52bb64ee8a48d20fce17a125b57570fb9bbac4fc39fca7dc9ba03c1930e6a4397f4937ab2872edb448c851af4a193f02d3b3efbbf4086514dca72c4aca589d2b639e89d251b722e15c2c84ab8faf741207aeda68bac52fac3f1aefaffd2f60dc0d6efb4453dae4de177df2cd5f4ab393c2c0112412bd248288e61b780cda403f9e688050e000811d48449cbdd313de82428ce424d7194',1,'2022-07-22 13:04:58'),(6,1,2,'75ad35622bc425e7049c55b6a85ae149a83312e569dbaad3e1a0f16d27e061ab17f6dc9019eefd99ec60c019db069d3d83ddc5177dbbe8264e0116bcf768e5d9e1bea79338e9c7f9341a9cf7e8ffb3b38da7c593e8fff990eecedc382bd9ead5a9f0748ca0d89a7d998c4cfeac47cd28ab0bd6dffb1bfdda8cc37a961abf6b6b199e197fb20128ce6295cfb3aab7fffdc93a67bc00cfed31f372d37423d97b99cf3591d524f85d017d51891de0dd902cc05909ef845ae06ad5b1111fc71b7d61129eb7b4417c27543e22f195d75595ea1f1518b559bd74aa5d67d31cd63d38c9294ba2aa14b80afb482de5d1d38d74ab5d0c7fb05d97def68f0a859f9e58e067a8f9de47aef8165e49404d974890ab8d1b478ceb48d041249abcd0270276518224134ed4b4a453b6f5800833595b51007b27f580f9624bf831bf891a914fbb52a9525356c2934c33db0216e184cacb0545e41cb751d3d9d738181f647f122264473bd0df4579e11ef00d544767dde4a8325fd613a582beb9a5e71e775f74fc1495255dd35121dde690bef280d331000a5ef263bb122cf5196f6fa5f755f96518cc0f1b17be62c3544d356e43d52cb82a80d3e3be793263f4c660d9ab74a62d3d8ba52bb64ee8a48d20fce17a125b57570fb9bbac4fc39fca7dc9ba03c1930e6a4397f4937ab2872edb448c851af4a193f02d3b3efbbf4086514dca72c4aca589d2b639e89d251b722e15c2c84ab8faf741207aeda68bac52fac3f1aefaffd2f60dc0d6efb4453dae4de177df2cd5f4ab393c2c0112412bd248288e61b780cda403f9e688050e000811d48449cbdd313de82428ce424d7194',1,'2022-07-22 13:09:58'),(7,1,7,'75ad35622bc425e7049c55b6a85ae149a83312e569dbaad3e1a0f16d27e061ab17f6dc9019eefd99ec60c019db069d3d83ddc5177dbbe8264e0116bcf768e5d9e1bea79338e9c7f9341a9cf7e8ffb3b38da7c593e8fff990eecedc382bd9ead5a9f0748ca0d89a7d998c4cfeac47cd28ab0bd6dffb1bfdda8cc37a961abf6b6b199e197fb20128ce6295cfb3aab7fffdc93a67bc00cfed31f372d37423d97b99cf3591d524f85d017d51891de0dd902cc05909ef845ae06ad5b1111fc71b7d61129eb7b4417c27543e22f195d75595ea1f1518b559bd74aa5d67d31cd63d38c9294ba2aa14b80afb482de5d1d38d74ab5d0c7fb05d97def68f0a859f9e58e067a8f9de47aef8165e49404d974890ab8d1b478ceb48d041249abcd0270276518224134ed4b4a453b6f5800833595b51007b27f580f9624bf831bf891a914fbb52a9525356c2934c33db0216e184cacb0545e41cb751d3d9d738181f647f122264473bd0df4579e11ef00d544767dde4a8325fd613a582beb9a5e71e775f74fc1495255dd35121dde690bef280d331000a5ef263bb122cf5196f6fa5f755f96518cc0f1b17be62c3544d356e43d52cb82a80d3e3be793263f4c660d9ab74a62d3d8ba52bb64ee8a48d20fce17a125b57570fb9bbac4fc39fca7dc9ba03c1930e6a4397f4937ab2872edb448c851af4a193f02d3b3efbbf4086514dca72c4aca589d2b639e89d251b722e15c2c84ab8faf741207aeda68bac52fac3f1aefaffd2f60dc0d6efb4453dae4de177df2cd5f4ab393c2c0112412bd248288e61b780cda403f9e688050e000811d48449cbdd313de82428ce424d7194',1,'2022-11-26 15:43:23'),(8,1,7,'9aa48a85f20377d85a9dd2be6305d1e4ec673ab15697431b34a2027a8c7a575f51ec18e73cb32ae5e468caa54c20e74508de7d6b87f1d7fe592622de70972e8349421a724c064713191529f8f8e37da5ba4a09f2905fdc4202d3a6ac83b4ea605ccb3c5a',1,'2023-01-20 16:01:01');
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat_participants`
--

DROP TABLE IF EXISTS `chat_participants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chat_participants` (
  `id_chatparticipants` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) DEFAULT NULL,
  `id_groups` int(11) DEFAULT NULL,
  `id_type` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT '1',
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_date` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_chatparticipants`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat_participants`
--

LOCK TABLES `chat_participants` WRITE;
/*!40000 ALTER TABLE `chat_participants` DISABLE KEYS */;
INSERT INTO `chat_participants` VALUES (1,7,1,1,1,'2022-11-26 12:59:49','2022-11-26 12:59:54'),(2,2,1,2,1,'2022-11-26 12:59:49','2022-11-26 13:00:05'),(3,7,3,2,1,'2022-11-26 12:59:49','2022-11-26 13:08:14'),(4,2,2,1,1,'2022-11-26 12:59:49','2022-11-26 13:00:07'),(5,7,2,2,1,'2022-11-26 12:59:49','2022-11-26 13:00:08'),(6,2,3,2,1,'2022-11-26 12:59:49','2022-11-26 13:08:17'),(7,21,1,1,0,'2022-11-26 13:24:51','2022-11-26 13:58:37');
/*!40000 ALTER TABLE `chat_participants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `groups` (
  `id_groups` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `id_produc` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_date` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_groups`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` VALUES (1,'Venta de Producto 1',1,1,'2022-11-24 17:03:49','2022-11-24 17:15:50'),(2,'Venta de Producto 2',2,1,'2022-11-24 17:15:25','2022-11-24 17:16:00'),(3,'Venta de Producto 3',5,1,'2022-11-24 17:31:46','2022-11-26 13:25:49');
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master`
--

DROP TABLE IF EXISTS `master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `master` (
  `code` char(5) NOT NULL,
  `symbol` char(20) DEFAULT NULL,
  `sub_code` char(20) DEFAULT NULL,
  `description` char(250) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master`
--

LOCK TABLES `master` WRITE;
/*!40000 ALTER TABLE `master` DISABLE KEYS */;
/*!40000 ALTER TABLE `master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `membership`
--

DROP TABLE IF EXISTS `membership`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `membership` (
  `id_membership` int(11) NOT NULL AUTO_INCREMENT,
  `id_plans` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_product` int(11) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `day_end` datetime DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `create_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_membership`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membership`
--

LOCK TABLES `membership` WRITE;
/*!40000 ALTER TABLE `membership` DISABLE KEYS */;
INSERT INTO `membership` VALUES (1,NULL,1,1,NULL,NULL,1,NULL,NULL);
/*!40000 ALTER TABLE `membership` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu` (
  `id_menu` int(11) NOT NULL AUTO_INCREMENT,
  `id_power_menu` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `post_link` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id_menu`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,0,'Mapa',NULL,NULL,1,NULL,NULL),(2,0,'Perfil',NULL,NULL,1,NULL,NULL),(3,0,'Contacto',NULL,NULL,1,NULL,NULL);
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_perfil`
--

DROP TABLE IF EXISTS `menu_perfil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_perfil` (
  `id_mepe` int(11) NOT NULL AUTO_INCREMENT,
  `id_menu` int(11) DEFAULT NULL,
  `id_perfil` int(11) DEFAULT NULL,
  `p_view` int(11) DEFAULT NULL,
  `p_add` int(11) DEFAULT NULL,
  `p_delete` int(11) DEFAULT NULL,
  `p_update` int(11) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_mepe`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_perfil`
--

LOCK TABLES `menu_perfil` WRITE;
/*!40000 ALTER TABLE `menu_perfil` DISABLE KEYS */;
INSERT INTO `menu_perfil` VALUES (1,1,1,1,0,0,0,NULL,NULL,NULL),(2,2,1,1,0,0,0,NULL,NULL,NULL),(3,3,1,1,0,0,0,NULL,NULL,NULL);
/*!40000 ALTER TABLE `menu_perfil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perfil`
--

DROP TABLE IF EXISTS `perfil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `perfil` (
  `id_perfil` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) DEFAULT NULL,
  `document` text,
  `first_name` text,
  `last_name` text,
  `email` text,
  `phone` text,
  PRIMARY KEY (`id_perfil`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perfil`
--

LOCK TABLES `perfil` WRITE;
/*!40000 ALTER TABLE `perfil` DISABLE KEYS */;
INSERT INTO `perfil` VALUES (8,1,'789456123','User','1','test1@gmail.com','911345678'),(12,7,'789456123','Admin','root','Test@test.es','911345678'),(15,21,'789456123','User','2','test2@gmail.com','911345678'),(46,56,'12345678','Carlos','Sandoval','carlossmetal@gmail.com','+50243928951'),(47,57,'12345678','Andres','David','andazura@yopmail.con','+573004325652'),(62,63,'123345666','Johan Fran','Rojas Nuñez','JohanRojasn21@gmail.com','956973863'),(64,66,'12345678','andres','ramos','anda@yopmail.com','+573004325652'),(65,67,'12345678','andres','ramos','anda1@yopmail.com','+573004325652'),(66,68,'12345678','andres','da','anda2@yopmail.com','+573004325652'),(67,69,'12345678','andres','da','anda3@yopmail.com','+573004325652'),(68,65,'123345666','Johan Fran','Rojas Nuñez','anda4@yopmail.com','956973863'),(69,70,'12345678','andres','da','anda5@yopmail.com','+573004325652'),(70,71,'12345678','andres','da','anda6@yopmail.com','+573004325652'),(71,72,'12345678','andres','da','anda7@yopmail.com','+573004325652'),(72,73,'12345678','andres','da','anda8@yopmail.com','+573004325652'),(73,74,'12345678','andres','da','anda9@yopmail.com','+573004325652'),(74,75,'12345678','andres','da','anda10@yopmail.com','+573004325652'),(75,76,'12345678','juan','juan','anda11@yopmail.com','+573004325652'),(76,77,'12345678','juan','juan','anda12@yopmail.com','+573004325652'),(77,78,'12345678','dabuel','twhwjwjw','daniel@adaki.net','+15288856'),(78,80,'12345678','Daniel','Sherry ','jdherrera95@gmail.com','+112134546'),(79,82,'12345678','andres','david','and12@yopmail.com','+244300432565'),(80,83,'12345678','andres','david','and13@yopmail.com','+244300432565'),(81,84,'12345678','daniel','hernandes','daniel@adaki.com','+16465465465');
/*!40000 ALTER TABLE `perfil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plans`
--

DROP TABLE IF EXISTS `plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plans` (
  `id_plans` int(11) NOT NULL AUTO_INCREMENT,
  `name_plan` text,
  `price_plan` double(12,2) DEFAULT NULL,
  `discount_plan` varchar(45) DEFAULT '0%',
  `state` int(11) DEFAULT '1',
  `create_plan` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_plan` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_plans`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plans`
--

LOCK TABLES `plans` WRITE;
/*!40000 ALTER TABLE `plans` DISABLE KEYS */;
/*!40000 ALTER TABLE `plans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id_product` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) DEFAULT NULL,
  `id_subcategory` int(11) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `photos_file` json DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` double(10,2) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `x_latitude` varchar(50) DEFAULT NULL,
  `y_latitude` varchar(50) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `create_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_product`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,1,2,'Tortas','Tortas','[1, 2, 3]',1,10.00,1,'-99999888','-255558877',1,'2022-11-16 12:01:26','2022-11-24 12:03:19'),(2,1,2,'Cholates','Ricos Choloates','[1, 2, 3]',1,10.60,2,'-99999888','-255558877',1,'2022-11-16 12:01:32','2022-11-24 12:03:15'),(5,1,2,'Gaseosa','Venta por mayor','[1, 2, 3, 4, 5]',99,1.50,1,'-54.99','-25.99',1,'2022-11-24 12:20:55','2022-11-24 14:10:28'),(6,7,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2023-02-13 01:31:52','2023-02-13 01:40:38'),(7,7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2023-02-13 01:37:12','2023-02-13 01:37:12');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `id_role` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_role`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'Vendedor',NULL,NULL,1),(2,'Comprador',NULL,NULL,1),(3,'Administrador',NULL,NULL,1);
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop`
--

DROP TABLE IF EXISTS `shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shop` (
  `id_shop` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) DEFAULT NULL,
  `id_product` int(11) DEFAULT NULL,
  `price` double(12,2) DEFAULT NULL,
  `amount_shop` int(11) DEFAULT NULL,
  `subTotal` double(12,2) DEFAULT NULL,
  `Total` double(12,2) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `create_shop` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop`
--

LOCK TABLES `shop` WRITE;
/*!40000 ALTER TABLE `shop` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_category_products`
--

DROP TABLE IF EXISTS `sub_category_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sub_category_products` (
  `id_subcategory` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_category` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id_subcategory`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_category_products`
--

LOCK TABLES `sub_category_products` WRITE;
/*!40000 ALTER TABLE `sub_category_products` DISABLE KEYS */;
INSERT INTO `sub_category_products` VALUES (1,1,'Agricolas',NULL,1,NULL,NULL),(2,1,'Bodegas',NULL,1,NULL,NULL),(3,2,'Autos de Coleccion',NULL,1,NULL,NULL),(4,2,'Autos y Camionetas',NULL,1,NULL,NULL),(5,3,'Belleza',NULL,1,NULL,NULL),(6,3,'Clases Cursos y Capacitaciones',NULL,1,NULL,NULL),(7,3,'Fiestas y Eventos',NULL,1,NULL,NULL);
/*!40000 ALTER TABLE `sub_category_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id_user` bigint(20) NOT NULL AUTO_INCREMENT,
  `user` text,
  `pass` text,
  `type_user` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `code` varchar(4) DEFAULT '0000',
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin3','$2a$08$JddL68t6LV/GnRKSKjGEwuv3PRusYHW2hmtGqwq3FsBibSqpF2v0y',1,1,'0000','2022-07-21 09:40:56','2022-07-21 09:40:58'),(2,'admin2','$2a$08$JddL68t6LV/GnRKSKjGEwuv3PRusYHW2hmtGqwq3FsBibSqpF2v0y',1,1,'0000','2022-07-21 09:40:56','2022-07-21 09:40:58'),(7,'admin','$2a$08$JddL68t6LV/GnRKSKjGEwuv3PRusYHW2hmtGqwq3FsBibSqpF2v0y',3,1,'0000','2022-08-12 18:53:43','2022-08-12 18:53:43'),(56,'carlossmetal@gmail.com','$2a$08$RE0Sf8BjchWsCIKbdo2Ad.vU0IxrDUSzIqzscSf.7VyDJt1ec912.',1,1,'0000','2023-01-06 16:30:35','2023-01-06 16:30:35'),(57,'andazura@yopmail.con','$2a$08$riP7pOZCqVpKVR5HMJatPeFePQClGQXjgQXBJkIs6vO9zuv.9VJhi',1,1,'0000','2023-02-06 13:22:01','2023-02-06 13:22:01'),(65,'Johan','$2a$08$Mrz/R0tBNxO/InO/FKoOUurilulSOH0muz/4WzYepVjU4XN1lroSq',1,1,'0000','2023-02-06 13:22:01','2023-02-06 13:22:01'),(66,'anda@yopmail.com','$2a$08$ziD0j.1m8Og4qDCiZpgQmOKz7mJcEwgj8whgcmA0LtBw.iQURyMVa',1,2,'GGCH','2023-02-09 20:23:29','2023-02-09 20:23:29'),(67,'anda1@yopmail.com','$2a$08$PCHALk7HFNe3fBafR9pKuuuwDHh7DoBDwK6AniSHBkXhVDJ7Y9pRe',1,1,'0000','2023-02-09 20:45:35','2023-02-09 20:45:35'),(68,'anda2@yopmail.com','$2a$08$XLK/zH.qdzDHjfQK6MF7f.tszS8QSG/IQiLaHdgpvoASj7kzw75Pe',1,1,'0000','2023-02-09 21:32:29','2023-02-09 21:32:29'),(69,'anda3@yopmail.com','$2a$08$Ci1lguuxmkCK3cGYFYFime54KllIV8gSGh6UY14045uBQvAhtLT3C',1,2,'BI5W','2023-02-09 21:35:54','2023-02-09 21:35:54'),(70,'anda5@yopmail.com','$2a$08$0/fPjuRmOrremSzCrK.Ma.yI3T37Z/CK0zBCiqXeCHn6zZY9gqwJG',1,2,'TCFT','2023-02-09 21:53:02','2023-02-09 21:53:02'),(71,'anda6@yopmail.com','$2a$08$2EPtFaf5yPAcCC2Wjn77Fe2i3ko1cKlILPExAMoru6ybT6VccnbS2',1,2,'BEIR','2023-02-09 21:58:57','2023-02-09 21:58:57'),(72,'anda7@yopmail.com','$2a$08$AekuOpP13IbjjX41WxCQae/iDUzTKM.SkOwstHkwY8Db0zQiYft5K',1,2,'XQ06','2023-02-09 22:02:37','2023-02-09 22:02:37'),(73,'anda8@yopmail.com','$2a$08$.GAt1hj3PQMUifkjovSeleTeJTmzEoCX0B5983nfnncgAKntjdTYa',1,2,'F3KE','2023-02-09 22:09:30','2023-02-09 22:09:30'),(74,'anda9@yopmail.com','$2a$08$bNGTl6gQb0qj5dKMVlNo5.tXMhc2zHOiXhVzxOMwVkVw/rLGda9iK',1,2,'9NCN','2023-02-09 22:15:16','2023-02-09 22:15:16'),(75,'anda10@yopmail.com','$2a$08$mvYeZsBd2WhrOFvZXt.Hn.XwWdnsXbM4.gZiuHHdnZy2kPffYmi8a',1,2,'AOOY','2023-02-09 22:18:10','2023-02-09 22:18:10'),(76,'anda11@yopmail.com','$2a$08$Q1iAjuorubq2Q3tuqrp5lOdtXgbz298XLLAJD0nr8ZpRdhSMAfSd6',1,2,'GE1X','2023-02-09 22:23:01','2023-02-09 22:23:01'),(77,'anda12@yopmail.com','$2a$08$Xc8smT55KRaEwDohegjTReJEv7B2Phk.ufIawlTALX1pw8ULTe6Ky',1,1,'0000','2023-02-09 22:23:58','2023-02-09 22:23:58'),(78,'daniel@adaki.net','$2a$08$Avuv3YOm.qM7amQAAlLUyeuYt.kg1PZ3fw4AGu3xvZ./tvPntHN3e',1,2,'HFIS','2023-02-13 22:55:46','2023-02-13 22:55:46'),(79,'anchorquery@gmail.com','$2a$08$Z5Mwh2TGzFbAaGdrSXEqDexRpl4t5HXQEYWrzboWDEIpJZrASqCd2',1,2,'5R1R','2023-02-13 23:03:12','2023-02-13 23:03:12'),(80,'jdherrera95@gmail.com','$2a$08$C3D0ab6ZaBHKaThN06Q67OEp6p3vEH0T.CKNTB1byaCQGYQk5msvW',1,2,'KRTU','2023-02-14 00:19:21','2023-02-14 00:19:21'),(81,'jdherrera952@gmail.com','$2a$08$JvNB5JRWLwgZgOpr7f6i/eEv9vilEA2Zj9JO7qBvjjej3fRm2qfya',1,2,'FSC1','2023-02-13 23:03:12','2023-02-13 23:03:12'),(82,'and12@yopmail.com','$2a$08$dKtkU4JNoRMF0RpCZ5t6QeFLEYHx3qjeDKN0XudicpEXpwSmRM3wS',1,2,'VKWC','2023-02-15 12:08:47','2023-02-15 12:08:47'),(83,'and13@yopmail.com','$2a$08$FIq5g9LnQA.t0o5WhbQH..EsuiHvBxNWWRfXC.cMp72FYu1MEHEG2',1,2,'PYNR','2023-02-15 12:10:53','2023-02-15 12:10:53'),(84,'daniel@adaki.com','$2a$08$PNXoUbGVdy9XmBCrkhE0muzEonDmdpO6qWI.hCKFmvSPFxpHLRsZS',1,2,'2NTK','2023-02-15 17:47:40','2023-02-15 17:47:40');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_session`
--

DROP TABLE IF EXISTS `user_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_session` (
  `id_user_token` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) DEFAULT NULL,
  `user_session` text,
  PRIMARY KEY (`id_user_token`)
) ENGINE=InnoDB AUTO_INCREMENT=366 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_session`
--

LOCK TABLES `user_session` WRITE;
/*!40000 ALTER TABLE `user_session` DISABLE KEYS */;
INSERT INTO `user_session` VALUES (174,7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjcsInN0YXR1cyI6MSwicGFzcyI6IiQyYSQwOCRKZGRMNjh0NkxWL0duUktTS2pHRXd1djNQUnVzWUhXMmhtdEdxd3EzRnNCaWJTcXBGMnYweSJ9LCJpYXQiOjE2NjEwMjI3MDMsImV4cCI6MTY2MTA1ODcwM30.53HiqndVXEcYruD_Ctcf01Y7tU_VuncD_M7AjAGaPaE'),(175,7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjcsInN0YXR1cyI6MSwicGFzcyI6IiQyYSQwOCRKZGRMNjh0NkxWL0duUktTS2pHRXd1djNQUnVzWUhXMmhtdEdxd3EzRnNCaWJTcXBGMnYweSJ9LCJpYXQiOjE2NjEwMjI3NjIsImV4cCI6MTY2MTA1ODc2Mn0.GLIhpDt6fW9zza3bs-PaeTzZ-iNHqbhhDQfcE6GRglc'),(176,7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjcsInN0YXR1cyI6MSwicGFzcyI6IiQyYSQwOCRKZGRMNjh0NkxWL0duUktTS2pHRXd1djNQUnVzWUhXMmhtdEdxd3EzRnNCaWJTcXBGMnYweSJ9LCJpYXQiOjE2NjEwMjI3OTcsImV4cCI6MTY2MTA1ODc5N30.eT5KbeumkUkrsSdtWuvFGuTTdY-TunrmXvGLBtfjtZQ'),(177,7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjcsInN0YXR1cyI6MSwicGFzcyI6IiQyYSQwOCRKZGRMNjh0NkxWL0duUktTS2pHRXd1djNQUnVzWUhXMmhtdEdxd3EzRnNCaWJTcXBGMnYweSJ9LCJpYXQiOjE2NjEwMjI4OTEsImV4cCI6MTY2MTA1ODg5MX0.L-0hr-cK1ymwjodXyibbRejlWtBvPasYddu4itf3PmI'),(178,7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjcsInN0YXR1cyI6MSwicGFzcyI6IiQyYSQwOCRKZGRMNjh0NkxWL0duUktTS2pHRXd1djNQUnVzWUhXMmhtdEdxd3EzRnNCaWJTcXBGMnYweSJ9LCJpYXQiOjE2NjEwMjI5MTEsImV4cCI6MTY2MTA1ODkxMX0.F4ZwdGenagRZYfWBKkh3IAdBvNgXKhnupNFC5jo2NaE'),(179,2,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjIsInN0YXR1cyI6MSwicGFzcyI6IiQyYSQwOCRKZGRMNjh0NkxWL0duUktTS2pHRXd1djNQUnVzWUhXMmhtdEdxd3EzRnNCaWJTcXBGMnYweSJ9LCJpYXQiOjE2NjEwMjI5MjIsImV4cCI6MTY2MTA1ODkyMn0.ZNax0PXmbD9OIrweRec16oo9zftl2kPgIfJX46FINnM'),(180,1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjEsInN0YXR1cyI6MSwicGFzcyI6IiQyYSQwOCRKZGRMNjh0NkxWL0duUktTS2pHRXd1djNQUnVzWUhXMmhtdEdxd3EzRnNCaWJTcXBGMnYweSJ9LCJpYXQiOjE2NjEwMjI5MzAsImV4cCI6MTY2MTA1ODkzMH0.NujaTFek5H8OgexkX00FFeb1LucbPaPP2sQohYDKRNs'),(181,7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjcsInN0YXR1cyI6MSwicGFzcyI6IiQyYSQwOCRKZGRMNjh0NkxWL0duUktTS2pHRXd1djNQUnVzWUhXMmhtdEdxd3EzRnNCaWJTcXBGMnYweSJ9LCJpYXQiOjE2NjEwMjI5MzcsImV4cCI6MTY2MTA1ODkzN30.i47BLgYWBsVU8jBRcObMNVfV0pYg4JYoljsKSG4OkPY'),(182,7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjcsInN0YXR1cyI6MSwicGFzcyI6IiQyYSQwOCRKZGRMNjh0NkxWL0duUktTS2pHRXd1djNQUnVzWUhXMmhtdEdxd3EzRnNCaWJTcXBGMnYweSJ9LCJpYXQiOjE2NjEwMjUyMTEsImV4cCI6MTY2MTA2MTIxMX0.hTvHaNBQmDSczr9PXzwVQC3Lw-QrtonffzHxYNQd45U'),(183,7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjcsInN0YXR1cyI6MSwicGFzcyI6IiQyYSQwOCRKZGRMNjh0NkxWL0duUktTS2pHRXd1djNQUnVzWUhXMmhtdEdxd3EzRnNCaWJTcXBGMnYweSJ9LCJpYXQiOjE2NjEwMjUzOTMsImV4cCI6MTY2MTA2MTM5M30.mYbd5yok2tsJLWjt85ukVAlK3Wa3S5V57s21S_ntxKw'),(184,7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjcsInN0YXR1cyI6MSwicGFzcyI6IiQyYSQwOCRKZGRMNjh0NkxWL0duUktTS2pHRXd1djNQUnVzWUhXMmhtdEdxd3EzRnNCaWJTcXBGMnYweSJ9LCJpYXQiOjE2NjEwMjU0MDgsImV4cCI6MTY2MTA2MTQwOH0.crbAChhamgWJJvbQC7-cOjTnLgcpxLIAlecpww-coLQ'),(185,7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjcsInN0YXR1cyI6MSwicGFzcyI6IiQyYSQwOCRKZGRMNjh0NkxWL0duUktTS2pHRXd1djNQUnVzWUhXMmhtdEdxd3EzRnNCaWJTcXBGMnYweSJ9LCJpYXQiOjE2NjEwMjU0MzgsImV4cCI6MTY2MTA2MTQzOH0.3Mw3MVL4S-ruKlzoX9JY_d8HLU5qKOqBb0XM3iZnaps'),(186,7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjcsInN0YXR1cyI6MSwicGFzcyI6IiQyYSQwOCRKZGRMNjh0NkxWL0duUktTS2pHRXd1djNQUnVzWUhXMmhtdEdxd3EzRnNCaWJTcXBGMnYweSJ9LCJpYXQiOjE2NjEwMjU1NTgsImV4cCI6MTY2MTA2MTU1OH0.gQWiHwyNROQ_P_IQKLvvyG3iT4O37NcwXBhTKO9DpDU'),(187,7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjcsInN0YXR1cyI6MSwicGFzcyI6IiQyYSQwOCRKZGRMNjh0NkxWL0duUktTS2pHRXd1djNQUnVzWUhXMmhtdEdxd3EzRnNCaWJTcXBGMnYweSJ9LCJpYXQiOjE2NjEwMjU1NjUsImV4cCI6MTY2MTA2MTU2NX0.KcAsvXwORyRiBs1FbjEP8Wgd8NcWicv4o3lCa1HjMX8'),(188,7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjcsInN0YXR1cyI6MSwicGFzcyI6IiQyYSQwOCRKZGRMNjh0NkxWL0duUktTS2pHRXd1djNQUnVzWUhXMmhtdEdxd3EzRnNCaWJTcXBGMnYweSJ9LCJpYXQiOjE2NjEwMjYwMTAsImV4cCI6MTY2MTA2MjAxMH0.-aYBtpZ7u1xO3smiOBDKlGb7J9PXgHdyo65h6ytgo4c'),(189,22,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjIyLCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkWnpwZi9yM3UyNm9OVnhtYjBKb1IzdTJFa3VsbmpyYlc3NFRMTllNdTd4YXg3NHZjc2JKQWEifSwiaWF0IjoxNjYxMDQzMjU2LCJleHAiOjE2NjEwNzkyNTZ9.5cdDIEhqkJvBq00jeZ-qYwh0f9ac8uSXVvgYA5h8780'),(190,7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjcsInN0YXR1cyI6MSwicGFzcyI6IiQyYSQwOCRKZGRMNjh0NkxWL0duUktTS2pHRXd1djNQUnVzWUhXMmhtdEdxd3EzRnNCaWJTcXBGMnYweSJ9LCJpYXQiOjE2NjEwNDM5MzQsImV4cCI6MTY2MTA3OTkzNH0.W56kLppt2KP_SmBOWL76lhmrmhnDQsF7jByi_bvZTz8'),(191,7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjcsInN0YXR1cyI6MSwicGFzcyI6IiQyYSQwOCRKZGRMNjh0NkxWL0duUktTS2pHRXd1djNQUnVzWUhXMmhtdEdxd3EzRnNCaWJTcXBGMnYweSJ9LCJpYXQiOjE2NjEwNDQxMjQsImV4cCI6MTY2MTA4MDEyNH0.qNo63dpDs146Gf3h57lmJ1CH_QKWXGrSkLttS_U6wDE'),(192,7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjcsInN0YXR1cyI6MSwicGFzcyI6IiQyYSQwOCRKZGRMNjh0NkxWL0duUktTS2pHRXd1djNQUnVzWUhXMmhtdEdxd3EzRnNCaWJTcXBGMnYweSJ9LCJpYXQiOjE2NjEwNDQxNzAsImV4cCI6MTY2MTA4MDE3MH0.tD6_o7FbPBidfbQY8BNCwJR4-nRUa8G3FRUmnUur3Wc'),(193,7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjcsInN0YXR1cyI6MSwicGFzcyI6IiQyYSQwOCRKZGRMNjh0NkxWL0duUktTS2pHRXd1djNQUnVzWUhXMmhtdEdxd3EzRnNCaWJTcXBGMnYweSJ9LCJpYXQiOjE2NjEwNDQyOTMsImV4cCI6MTY2MTA4MDI5M30.5v9wXqOAavUx98vNApN_98fbVNiFNs_Pedin_kNswGk'),(194,7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjcsInN0YXR1cyI6MSwicGFzcyI6IiQyYSQwOCRKZGRMNjh0NkxWL0duUktTS2pHRXd1djNQUnVzWUhXMmhtdEdxd3EzRnNCaWJTcXBGMnYweSJ9LCJpYXQiOjE2NjEwNDQ3NTksImV4cCI6MTY2MTA4MDc1OX0.4U4VhVBqjj2CyzK-VUYEicMpCBZ4Z2VHmEPL2cwmWQI'),(195,23,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjIzLCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkODQ3eVRVRkYvS0tRbVBMTFpWaUFCdVRLei5NWnZMMTh1UGNRWDNaWnpOTi5NSFo4TVZyNHEifSwiaWF0IjoxNjYxMDQ0ODIwLCJleHAiOjE2NjEwODA4MjB9.1JLHw98Yb1cjg5u92gCkDqvWF_lJW0fFPZ_vniB-wOQ'),(196,24,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjI0LCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkZFlrL0pMUTdHeTc0VkJCMkpjRHlFLmpCaEJ5NHY5eURiaklITzdyLnVjL1hyOXFjR1VhS3UifSwiaWF0IjoxNjYxMDQ0OTUyLCJleHAiOjE2NjEwODA5NTJ9.rHaJguvrI7pdxmhIdHY2_7AF_DY_PeLSbMM_vBAHcpA'),(197,7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjcsInN0YXR1cyI6MSwicGFzcyI6IiQyYSQwOCRKZGRMNjh0NkxWL0duUktTS2pHRXd1djNQUnVzWUhXMmhtdEdxd3EzRnNCaWJTcXBGMnYweSJ9LCJpYXQiOjE2NjEwNDQ5NzksImV4cCI6MTY2MTA4MDk3OX0.0_YFA9NKOA56lubeNxZHsQk_SSQyWI2uYcl5_P8oKO8'),(198,7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjcsInN0YXR1cyI6MSwicGFzcyI6IiQyYSQwOCRKZGRMNjh0NkxWL0duUktTS2pHRXd1djNQUnVzWUhXMmhtdEdxd3EzRnNCaWJTcXBGMnYweSJ9LCJpYXQiOjE2NjEwNDUzMTUsImV4cCI6MTY2MTA4MTMxNX0.ZxbtjoOtAb4H9YnrjFRewKruY46nSa4nTIgrmMaCOSY'),(199,25,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjI1LCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkSkJpNXlwSm12SE81QVVpTHhYNndDLkQ4aTcvRUNNelV3SzhDdUV2VzZpNjNiT2lTYjA1MXkifSwiaWF0IjoxNjYxMDQ1Mzc2LCJleHAiOjE2NjEwODEzNzZ9.9offMjDNSU2lnGFp8WBcz1TFza4lxtI3wGB16VU5j-M'),(200,7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjcsInN0YXR1cyI6MSwicGFzcyI6IiQyYSQwOCRKZGRMNjh0NkxWL0duUktTS2pHRXd1djNQUnVzWUhXMmhtdEdxd3EzRnNCaWJTcXBGMnYweSJ9LCJpYXQiOjE2NjEwNDc2MzMsImV4cCI6MTY2MTA4MzYzM30.TSrs4pXAK4cCl1dlKu1AhVFFmouSazJhXnszTAA-sN8'),(201,7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjcsInN0YXR1cyI6MSwicGFzcyI6IiQyYSQwOCRKZGRMNjh0NkxWL0duUktTS2pHRXd1djNQUnVzWUhXMmhtdEdxd3EzRnNCaWJTcXBGMnYweSJ9LCJpYXQiOjE2NjEyMDQyNDAsImV4cCI6MTY2MTI0MDI0MH0.SgfTorNeeMT28Fn8JBiGqe2YVFdRa1LMb08dvp2PZ2U'),(202,26,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjI2LCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkak01ZWFaNXlJSG14a3BrdThKV2dXT3R0NE9PWU5iZEJDTFRGeEpkcWtwanR0NkpKUy8xREsifSwiaWF0IjoxNjYxMjA1MzM0LCJleHAiOjE2NjEyNDEzMzR9.bxD6xjVb1bP0Tuso-zGBr1yl_CP3yWuYuJYMciqtbkQ'),(203,7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjcsInN0YXR1cyI6MSwicGFzcyI6IiQyYSQwOCRKZGRMNjh0NkxWL0duUktTS2pHRXd1djNQUnVzWUhXMmhtdEdxd3EzRnNCaWJTcXBGMnYweSJ9LCJpYXQiOjE2NjE1NTA5NjgsImV4cCI6MTY2MTU4Njk2OH0.9jdoO6B1EvbKg_Lz6RA4-n4NRZKr-vb1O5Zt-DAsVgQ'),(204,2,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjIsInN0YXR1cyI6MSwicGFzcyI6IiQyYSQwOCRKZGRMNjh0NkxWL0duUktTS2pHRXd1djNQUnVzWUhXMmhtdEdxd3EzRnNCaWJTcXBGMnYweSJ9LCJpYXQiOjE2NjQxMTQ2MTEsImV4cCI6MTY2NDE1MDYxMX0.OK0fZpHcDnJq2bI9D90VrDIPzvwAwxzS5MT_3i97avI'),(205,7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjcsInN0YXR1cyI6MSwicGFzcyI6IiQyYSQwOCRKZGRMNjh0NkxWL0duUktTS2pHRXd1djNQUnVzWUhXMmhtdEdxd3EzRnNCaWJTcXBGMnYweSJ9LCJpYXQiOjE2NjQxMTQ2MjEsImV4cCI6MTY2NDE1MDYyMX0.1XRKGqAkRDF1yOujOJW4c66Mki_8FoCROxUYye7CF0w'),(206,28,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjI4LCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkS294WW1ub1g0bWtsZjBSWEU5OFA1LnFJSldqUFhMWlM0L1ZyRERYMy4zYnFheUZrdnhhNG0ifSwiaWF0IjoxNjY0NzM0OTgzLCJleHAiOjE2NjQ3NzA5ODN9.yyjnOeVRmWJYLIRDrnhb_dKM-hm83iA9zB5Q5WHbzZ8'),(207,28,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjI4LCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkS294WW1ub1g0bWtsZjBSWEU5OFA1LnFJSldqUFhMWlM0L1ZyRERYMy4zYnFheUZrdnhhNG0ifSwiaWF0IjoxNjY0NzUwOTk0LCJleHAiOjE2NjQ3ODY5OTR9.NEsDuPmeBzgaKLRC8aWZAsx1jTekxmtaDNJcBXPUiQ8'),(208,28,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjI4LCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkS294WW1ub1g0bWtsZjBSWEU5OFA1LnFJSldqUFhMWlM0L1ZyRERYMy4zYnFheUZrdnhhNG0ifSwiaWF0IjoxNjY0NzUzMjc3LCJleHAiOjE2NjQ3ODkyNzd9.eH9-xDxeU2K8V9JvbT0sL1LRr9oKKg4bQFzuBquqEvg'),(209,28,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjI4LCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkS294WW1ub1g0bWtsZjBSWEU5OFA1LnFJSldqUFhMWlM0L1ZyRERYMy4zYnFheUZrdnhhNG0ifSwiaWF0IjoxNjY0NzUzNjM1LCJleHAiOjE2NjQ3ODk2MzV9.Ach8IFBLAlNHcwzVFqzq184DkLd-Ye5rNDpV7-dJzpQ'),(210,28,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjI4LCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkS294WW1ub1g0bWtsZjBSWEU5OFA1LnFJSldqUFhMWlM0L1ZyRERYMy4zYnFheUZrdnhhNG0ifSwiaWF0IjoxNjY0NzU2MzMyLCJleHAiOjE2NjQ3OTIzMzJ9.a1T4ko9Sj6QnBzFVT9lpR4hqvRbP2Vmds3r_nsAu8Pk'),(211,28,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjI4LCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkS294WW1ub1g0bWtsZjBSWEU5OFA1LnFJSldqUFhMWlM0L1ZyRERYMy4zYnFheUZrdnhhNG0ifSwiaWF0IjoxNjY0NzU4NTYxLCJleHAiOjE2NjQ3OTQ1NjF9.EaE0Javfcot_lDFtJCLzLcfMk7nGm_AbTPrgWJditOw'),(212,28,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjI4LCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkS294WW1ub1g0bWtsZjBSWEU5OFA1LnFJSldqUFhMWlM0L1ZyRERYMy4zYnFheUZrdnhhNG0ifSwiaWF0IjoxNjY0NzU5ODk2LCJleHAiOjE2NjQ3OTU4OTZ9.iQQMH2tu-MDUZC5DX_CZ_YPDjFHMWSSesfyR61MFgyk'),(213,28,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjI4LCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkS294WW1ub1g0bWtsZjBSWEU5OFA1LnFJSldqUFhMWlM0L1ZyRERYMy4zYnFheUZrdnhhNG0ifSwiaWF0IjoxNjY0NzYwNjUwLCJleHAiOjE2NjQ3OTY2NTB9.d6F7ZPTm_nP-hwUtGJvklVnmUu0tINU0FapnZM3u1Rk'),(214,28,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjI4LCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkS294WW1ub1g0bWtsZjBSWEU5OFA1LnFJSldqUFhMWlM0L1ZyRERYMy4zYnFheUZrdnhhNG0ifSwiaWF0IjoxNjY0ODA3OTYzLCJleHAiOjE2NjQ4NDM5NjN9.WNLd4OyOb1XGd0CTnXNF7qY24LxqfZp1IP4H91eQMTQ'),(215,28,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjI4LCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkS294WW1ub1g0bWtsZjBSWEU5OFA1LnFJSldqUFhMWlM0L1ZyRERYMy4zYnFheUZrdnhhNG0ifSwiaWF0IjoxNjY0ODA4MjA0LCJleHAiOjE2NjQ4NDQyMDR9.YYTzsyZ6zj54Ss-FPMg6iBxLqas7ow5xCoB2dGWPuNQ'),(216,28,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjI4LCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkS294WW1ub1g0bWtsZjBSWEU5OFA1LnFJSldqUFhMWlM0L1ZyRERYMy4zYnFheUZrdnhhNG0ifSwiaWF0IjoxNjY0ODA4Nzc3LCJleHAiOjE2NjQ4NDQ3Nzd9.4XAZDF3lzV1YOfq3_EOdkA8eULdTEJh6xQmG7WB0YrY'),(217,28,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjI4LCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkS294WW1ub1g0bWtsZjBSWEU5OFA1LnFJSldqUFhMWlM0L1ZyRERYMy4zYnFheUZrdnhhNG0ifSwiaWF0IjoxNjY0ODA4ODQzLCJleHAiOjE2NjQ4NDQ4NDN9.goV4mphXz2KKdlDiNX_JP23rBWvvBoOVSCagoJy6g5A'),(218,28,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjI4LCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkS294WW1ub1g0bWtsZjBSWEU5OFA1LnFJSldqUFhMWlM0L1ZyRERYMy4zYnFheUZrdnhhNG0ifSwiaWF0IjoxNjY0ODA4ODkzLCJleHAiOjE2NjQ4NDQ4OTN9.UzSKoTrsjR4p-6OEEAOdEAktniC8l1D-EuSDHYUZLMc'),(219,28,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjI4LCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkS294WW1ub1g0bWtsZjBSWEU5OFA1LnFJSldqUFhMWlM0L1ZyRERYMy4zYnFheUZrdnhhNG0ifSwiaWF0IjoxNjY0ODA5MTQ3LCJleHAiOjE2NjQ4NDUxNDd9.vLaMgRrNuZ9_ViMwL06EjVdBBc2_C_gsEL7ann5ZvfM'),(220,28,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjI4LCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkS294WW1ub1g0bWtsZjBSWEU5OFA1LnFJSldqUFhMWlM0L1ZyRERYMy4zYnFheUZrdnhhNG0ifSwiaWF0IjoxNjY0ODA5NzE5LCJleHAiOjE2NjQ4NDU3MTl9.rMgmfZajA5pg57YYEhexQpJA5JQqITDdwCGIi4hoA2o'),(221,28,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjI4LCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkS294WW1ub1g0bWtsZjBSWEU5OFA1LnFJSldqUFhMWlM0L1ZyRERYMy4zYnFheUZrdnhhNG0ifSwiaWF0IjoxNjY0ODA5ODc2LCJleHAiOjE2NjQ4NDU4NzZ9.tV3qHT0DOxemdj4O2GFMEwuJrGgD0XDE-b8P1A8Vw80'),(222,28,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjI4LCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkS294WW1ub1g0bWtsZjBSWEU5OFA1LnFJSldqUFhMWlM0L1ZyRERYMy4zYnFheUZrdnhhNG0ifSwiaWF0IjoxNjY0ODEwMDEwLCJleHAiOjE2NjQ4NDYwMTB9.EdKghQ1AjCkAZNb9WFHTuJ4TaeKOzyuBP7dZNzxmdrw'),(223,28,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjI4LCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkS294WW1ub1g0bWtsZjBSWEU5OFA1LnFJSldqUFhMWlM0L1ZyRERYMy4zYnFheUZrdnhhNG0ifSwiaWF0IjoxNjY0ODEwOTY5LCJleHAiOjE2NjQ4NDY5Njl9.3wC1lAJV9mtfStRyhAQ-guXMCTqUBoU7z1D2gc40D-0'),(224,28,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjI4LCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkS294WW1ub1g0bWtsZjBSWEU5OFA1LnFJSldqUFhMWlM0L1ZyRERYMy4zYnFheUZrdnhhNG0ifSwiaWF0IjoxNjY0ODEyMzg0LCJleHAiOjE2NjQ4NDgzODR9.viYdxjvqrSDAPwF4pxR7FPIZrUFim6UZ29KB2I5QAho'),(225,28,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjI4LCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkS294WW1ub1g0bWtsZjBSWEU5OFA1LnFJSldqUFhMWlM0L1ZyRERYMy4zYnFheUZrdnhhNG0ifSwiaWF0IjoxNjY0ODEyNDIwLCJleHAiOjE2NjQ4NDg0MjB9.NlNRHqoDjak5dlYB1XHr38nyZEmn8VbmPEXm-_BVS6U'),(226,37,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjM3LCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkcUwvWU4vdTZYVlU0Qk5BRTFiLmhFZVJDbHhRc2FVZTR4VlhvdnpabVNmMmVQZHY1QzhUTTIifSwiaWF0IjoxNjY0ODEyNzU0LCJleHAiOjE2NjQ4NDg3NTR9.KPvNq6Gk5MHXialbLIuTUXNIfcSDxcsnqW8tRg3sk_c'),(227,28,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjI4LCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkS294WW1ub1g0bWtsZjBSWEU5OFA1LnFJSldqUFhMWlM0L1ZyRERYMy4zYnFheUZrdnhhNG0ifSwiaWF0IjoxNjY0ODEzNTAyLCJleHAiOjE2NjQ4NDk1MDJ9.oajGvB6llKRSxAtMF1B657ofsoygH_T-HDsebEPgCG8'),(228,38,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjM4LCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkSW1VUzBodXMwZ290Z2ZRTFRBckk3TzJmc1lxUDNEQXNPR1J2SWdLRjZXYXE0bDUxeUV5Y0sifSwiaWF0IjoxNjY0ODEzNTk1LCJleHAiOjE2NjQ4NDk1OTV9.b0K87AOqP8moyN8_IQAlL1dvls-9RQNb-7BYjoTmtbk'),(229,28,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjI4LCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkS294WW1ub1g0bWtsZjBSWEU5OFA1LnFJSldqUFhMWlM0L1ZyRERYMy4zYnFheUZrdnhhNG0ifSwiaWF0IjoxNjY1MjQxMzEwLCJleHAiOjE2NjUyNzczMTB9.LarMiOivnrtHcjFSZIHcgOkeVH-OYO9tYeR-fPBb8x0'),(230,28,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjI4LCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkS294WW1ub1g0bWtsZjBSWEU5OFA1LnFJSldqUFhMWlM0L1ZyRERYMy4zYnFheUZrdnhhNG0ifSwiaWF0IjoxNjY1MjQxNDAzLCJleHAiOjE2NjUyNzc0MDN9.9764C6WykL000QQHvsE9mQLjjR1dcggzPk3aDcxQhRQ'),(231,28,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjI4LCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkS294WW1ub1g0bWtsZjBSWEU5OFA1LnFJSldqUFhMWlM0L1ZyRERYMy4zYnFheUZrdnhhNG0ifSwiaWF0IjoxNjY1NTgxODkyLCJleHAiOjE2NjU2MTc4OTJ9.VuGbElKS1noevVfnmykXHff3pvNMf2E4i2vqB-QIAzE'),(232,40,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjQwLCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkbzFuY2dMZU9ZMTRHL01xcEpDVmx2dWNqUGtmOFE0b0cuN0tUR2RqZDBqSzZoRlBVT1JvMVcifSwiaWF0IjoxNjY1NTgyMDUxLCJleHAiOjE2NjU2MTgwNTF9.OnbnNt14Ff347aXZ8zj_GjKNGyJa0ZUUBxYSiOk7TPQ'),(233,28,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjI4LCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkS294WW1ub1g0bWtsZjBSWEU5OFA1LnFJSldqUFhMWlM0L1ZyRERYMy4zYnFheUZrdnhhNG0ifSwiaWF0IjoxNjY1NTk4MzIwLCJleHAiOjE2NjU2MzQzMjB9.q78t2ZTKR4xOBluz01GDPDRK8nQ8OShST-fLTPWYwms'),(234,41,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjQxLCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkQU5Taldvby82V2E3TU9jc3hTbzlqdVYxOUhpRHhNVDRjbWQ1ZmVEQnNidjRjUlNxYThiWHkifSwiaWF0IjoxNjY1NTk4NDA3LCJleHAiOjE2NjU2MzQ0MDd9.iwXzEApKJU8fHUw1IWjp_iHP8cpszuN2xH3JplinjMI'),(235,28,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjI4LCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkS294WW1ub1g0bWtsZjBSWEU5OFA1LnFJSldqUFhMWlM0L1ZyRERYMy4zYnFheUZrdnhhNG0ifSwiaWF0IjoxNjY1NjEzMDAxLCJleHAiOjE2NjU2NDkwMDF9.Znbag-Otf9YnC4WwAhwgahvOEkoVZ_DeRS8GxdUZddU'),(236,28,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjI4LCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkS294WW1ub1g0bWtsZjBSWEU5OFA1LnFJSldqUFhMWlM0L1ZyRERYMy4zYnFheUZrdnhhNG0ifSwiaWF0IjoxNjY1NjEzMDQ3LCJleHAiOjE2NjU2NDkwNDd9.eX34w4bS7iboYgue0msm2Hrdsn8mVPG1e7miEvUaykU'),(237,28,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjI4LCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkS294WW1ub1g0bWtsZjBSWEU5OFA1LnFJSldqUFhMWlM0L1ZyRERYMy4zYnFheUZrdnhhNG0ifSwiaWF0IjoxNjY2ODI5Nzg0LCJleHAiOjE2NjY4NjU3ODR9.7gLb276ARf4nD9fF015FC5wzSy4uSj7XOqq0AD6xTKE'),(238,28,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjI4LCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkS294WW1ub1g0bWtsZjBSWEU5OFA1LnFJSldqUFhMWlM0L1ZyRERYMy4zYnFheUZrdnhhNG0ifSwiaWF0IjoxNjY2ODMwNjc2LCJleHAiOjE2NjY4NjY2NzZ9.oX1GWYYjoHgW56HrPP_JHjprmOAaGUbmrBj1F1Kxxys'),(239,28,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjI4LCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkS294WW1ub1g0bWtsZjBSWEU5OFA1LnFJSldqUFhMWlM0L1ZyRERYMy4zYnFheUZrdnhhNG0ifSwiaWF0IjoxNjY3NTY1NzczLCJleHAiOjE2Njc2MDE3NzN9.ljtlXSQJdWLL4KMdy5ymwf00l6BtkKX65XT3FplZCMA'),(240,38,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjM4LCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkSW1VUzBodXMwZ290Z2ZRTFRBckk3TzJmc1lxUDNEQXNPR1J2SWdLRjZXYXE0bDUxeUV5Y0sifSwiaWF0IjoxNjY5MTI4MzAyLCJleHAiOjE2NjkxNjQzMDJ9.8w-wYQYeBN6e6JbTBH1DuxfmBt2CHnF-6qnXDabieus'),(241,38,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjM4LCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkSW1VUzBodXMwZ290Z2ZRTFRBckk3TzJmc1lxUDNEQXNPR1J2SWdLRjZXYXE0bDUxeUV5Y0sifSwiaWF0IjoxNjY5MTI4NTM3LCJleHAiOjE2NjkxNjQ1Mzd9.X2YF0vkhnZ-rWTRzUin5CTSqWN0TGjVROgAQ1oPiViI'),(242,38,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjM4LCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkSW1VUzBodXMwZ290Z2ZRTFRBckk3TzJmc1lxUDNEQXNPR1J2SWdLRjZXYXE0bDUxeUV5Y0sifSwiaWF0IjoxNjY5MTI4NzQ5LCJleHAiOjE2NjkxNjQ3NDl9.zYO00lV8ak55Tc3-MJAIKwpKDK0GqLYnBWBcH6u9ITc'),(243,38,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjM4LCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkSW1VUzBodXMwZ290Z2ZRTFRBckk3TzJmc1lxUDNEQXNPR1J2SWdLRjZXYXE0bDUxeUV5Y0sifSwiaWF0IjoxNjY5MTI4ODk4LCJleHAiOjE2NjkxNjQ4OTh9.HFqTCm_XzPr-THDRF2Q68MueWw9hR8AUR6YEMHHw8X8'),(244,38,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjM4LCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkSW1VUzBodXMwZ290Z2ZRTFRBckk3TzJmc1lxUDNEQXNPR1J2SWdLRjZXYXE0bDUxeUV5Y0sifSwiaWF0IjoxNjY5MTI5NTAxLCJleHAiOjE2NjkxNjU1MDF9.Arsa4HiftZpnjgllsvlcKYyyNfy_MROrKaLGsSYxhZE'),(245,38,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjM4LCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkSW1VUzBodXMwZ290Z2ZRTFRBckk3TzJmc1lxUDNEQXNPR1J2SWdLRjZXYXE0bDUxeUV5Y0sifSwiaWF0IjoxNjY5MTI5OTk0LCJleHAiOjE2NjkxNjU5OTR9.caktjB5GlFYSb961lv8vKW7a8MGd1XVepLEzE2HP4Qs'),(246,38,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjM4LCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkSW1VUzBodXMwZ290Z2ZRTFRBckk3TzJmc1lxUDNEQXNPR1J2SWdLRjZXYXE0bDUxeUV5Y0sifSwiaWF0IjoxNjY5MTMyMzE0LCJleHAiOjE2NjkxNjgzMTR9.xpHzBfP3t-lVGroJ59LzDPQJSPZC9M3XU6Z5h5pgdks'),(247,38,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjM4LCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkSW1VUzBodXMwZ290Z2ZRTFRBckk3TzJmc1lxUDNEQXNPR1J2SWdLRjZXYXE0bDUxeUV5Y0sifSwiaWF0IjoxNjY5MTM0OTMwLCJleHAiOjE2NjkxNzA5MzB9.p2RY9Mb6M3Sod8lcqnJOotn3s2PVAeux1GKQno8ejwA'),(248,38,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjM4LCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkSW1VUzBodXMwZ290Z2ZRTFRBckk3TzJmc1lxUDNEQXNPR1J2SWdLRjZXYXE0bDUxeUV5Y0sifSwiaWF0IjoxNjY5MTUyMTYyLCJleHAiOjE2NjkxODgxNjJ9.CUX0jfND3YqimPBQL1MW8nrl8qojNZyKq977kFZpNgE'),(249,38,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjM4LCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkSW1VUzBodXMwZ290Z2ZRTFRBckk3TzJmc1lxUDNEQXNPR1J2SWdLRjZXYXE0bDUxeUV5Y0sifSwiaWF0IjoxNjY5MTUzMDM0LCJleHAiOjE2NjkxODkwMzR9.ndd5gsvxYDRUxv_0qhw9hD4x084NWcfM1jNlBsCIMLg'),(250,38,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjM4LCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkSW1VUzBodXMwZ290Z2ZRTFRBckk3TzJmc1lxUDNEQXNPR1J2SWdLRjZXYXE0bDUxeUV5Y0sifSwiaWF0IjoxNjY5MTUzNzQ5LCJleHAiOjE2NjkxODk3NDl9.dNqBLRmTpFpCMlEbtw65WWBS2lVetxSRWYI9KKc7JfM'),(251,38,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjM4LCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkSW1VUzBodXMwZ290Z2ZRTFRBckk3TzJmc1lxUDNEQXNPR1J2SWdLRjZXYXE0bDUxeUV5Y0sifSwiaWF0IjoxNjY5MTY3Nzg0LCJleHAiOjE2NjkyMDM3ODR9.0B1_5B5gmONjDuotfmP46s05SMHaIOsVSI7AAStFAAU'),(252,38,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjM4LCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkSW1VUzBodXMwZ290Z2ZRTFRBckk3TzJmc1lxUDNEQXNPR1J2SWdLRjZXYXE0bDUxeUV5Y0sifSwiaWF0IjoxNjY5MTY3OTk2LCJleHAiOjE2NjkyMDM5OTZ9.Y3QBJj-cOc7TOXpSdq2iQ5VSsKMU39gxM9ExjH-mXBM'),(253,38,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjM4LCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkSW1VUzBodXMwZ290Z2ZRTFRBckk3TzJmc1lxUDNEQXNPR1J2SWdLRjZXYXE0bDUxeUV5Y0sifSwiaWF0IjoxNjY5MTY4MDk5LCJleHAiOjE2NjkyMDQwOTl9.DqSronNodaCCA_ob41lmQ4GRsUfWSzYpBJ9h73vM9LU'),(254,40,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjQwLCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkbzFuY2dMZU9ZMTRHL01xcEpDVmx2dWNqUGtmOFE0b0cuN0tUR2RqZDBqSzZoRlBVT1JvMVcifSwiaWF0IjoxNjY5MjIxMTMzLCJleHAiOjE2NjkyNTcxMzN9.FthFv6Q1JGIUvkTn9bYHXEdkJluuX14LKw-2xx6Gxuo'),(255,7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjcsInN0YXR1cyI6MSwicGFzcyI6IiQyYSQwOCRKZGRMNjh0NkxWL0duUktTS2pHRXd1djNQUnVzWUhXMmhtdEdxd3EzRnNCaWJTcXBGMnYweSJ9LCJpYXQiOjE2NjkyNDE4NDIsImV4cCI6MTY2OTI3Nzg0Mn0.yw2MK_BF8E9hHysS57uSAif57Klk-8T7SQhq2dOmFOE'),(256,7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjcsInN0YXR1cyI6MSwicGFzcyI6IiQyYSQwOCRKZGRMNjh0NkxWL0duUktTS2pHRXd1djNQUnVzWUhXMmhtdEdxd3EzRnNCaWJTcXBGMnYweSJ9LCJpYXQiOjE2NjkyOTk0ODksImV4cCI6MTY2OTMzNTQ4OX0.IamwBYxwm_RiNYxaV_XgOeoW0Vqg-MUUPI8LvdI6-9E'),(257,40,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjQwLCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkbzFuY2dMZU9ZMTRHL01xcEpDVmx2dWNqUGtmOFE0b0cuN0tUR2RqZDBqSzZoRlBVT1JvMVcifSwiaWF0IjoxNjY5MzgxMDE3LCJleHAiOjE2Njk0MTcwMTd9.32fW7R-5crdIo4NJ31VRwEhZmx8aER_nMcTMrFJQIE8'),(258,7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjcsInN0YXR1cyI6MSwicGFzcyI6IiQyYSQwOCRKZGRMNjh0NkxWL0duUktTS2pHRXd1djNQUnVzWUhXMmhtdEdxd3EzRnNCaWJTcXBGMnYweSJ9LCJpYXQiOjE2Njk0Nzc5ODEsImV4cCI6MTY2OTUxMzk4MX0.J9jlaFkg6dIYQyfzMSq0Lyb6W_DF38WJQkkpa33a-ec'),(259,28,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjI4LCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkS294WW1ub1g0bWtsZjBSWEU5OFA1LnFJSldqUFhMWlM0L1ZyRERYMy4zYnFheUZrdnhhNG0ifSwiaWF0IjoxNjcxMDM2ODMzLCJleHAiOjE2NzEwNzI4MzN9.seGlaMLeEEq9nl8sA0lUsidyPgUJO810IKC8Ksl8X1g'),(260,28,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjI4LCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkS294WW1ub1g0bWtsZjBSWEU5OFA1LnFJSldqUFhMWlM0L1ZyRERYMy4zYnFheUZrdnhhNG0ifSwiaWF0IjoxNjcxMDM3NDc5LCJleHAiOjE2NzEwNzM0Nzl9.qhiIDOYHrYqC3PFr0YU1-cHVDWAq6dKoqgLBK6sU-CQ'),(261,28,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjI4LCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkS294WW1ub1g0bWtsZjBSWEU5OFA1LnFJSldqUFhMWlM0L1ZyRERYMy4zYnFheUZrdnhhNG0ifSwiaWF0IjoxNjcxMDc4MzUyLCJleHAiOjE2NzExMTQzNTJ9.JFzZg_ME1PX91MBKL5GcMJkDlfq5-1goq_8s4mV61bM'),(262,28,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjI4LCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkS294WW1ub1g0bWtsZjBSWEU5OFA1LnFJSldqUFhMWlM0L1ZyRERYMy4zYnFheUZrdnhhNG0ifSwiaWF0IjoxNjcxMTE3NDYzLCJleHAiOjE2NzExNTM0NjN9.ObhiDs2H5fRDWpvUaKtt-nk-MMS19zB4T2RTzsWhF54'),(263,40,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjQwLCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkbzFuY2dMZU9ZMTRHL01xcEpDVmx2dWNqUGtmOFE0b0cuN0tUR2RqZDBqSzZoRlBVT1JvMVcifSwiaWF0IjoxNjczMzg1MDUyLCJleHAiOjE2NzM0MjEwNTJ9.vg-8sfy1od-2gZipz3zgoSEayXUejnibbVRtfacOOV4'),(264,49,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjQ5LCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkV0Z3dkFLcjZnaHlHZkxmejNoOE9sT1ZBV0lhT2VPUm45aHl6ajFtZDJ1ZXFaanA4NVNJUnEifSwiaWF0IjoxNjczNDcxODE4LCJleHAiOjE2NzM1MDc4MTh9.CpnXOQ5U4uXFLt6X3rbbxk3douNSB_K0NuSkeTm-WCI'),(265,56,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjU2LCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkUkUwU2Y4QmpjaFdzQ0lLYmRvMkFkLnZVMEl4ckRVU3pJcXpzY1NmLjdWeURKdDFlYzkxMi4ifSwiaWF0IjoxNjczNDk4NzA2LCJleHAiOjE2NzM1MzQ3MDZ9.1NZ5mr_OYrf20SdW7tJz8i0BSUnTgwbYCGuMNEAsZPk'),(266,7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjcsInN0YXR1cyI6MSwicGFzcyI6IiQyYSQwOCRKZGRMNjh0NkxWL0duUktTS2pHRXd1djNQUnVzWUhXMmhtdEdxd3EzRnNCaWJTcXBGMnYweSJ9LCJpYXQiOjE2NzQyMzAyNzIsImV4cCI6MTY3NDI2NjI3Mn0.VuXMCthRhIt4VfTA-TJYF8QmDOFhXdBSt8eZlNd9Y7w'),(267,7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjcsInN0YXR1cyI6MSwicGFzcyI6IiQyYSQwOCRKZGRMNjh0NkxWL0duUktTS2pHRXd1djNQUnVzWUhXMmhtdEdxd3EzRnNCaWJTcXBGMnYweSJ9LCJpYXQiOjE2NzU4MDAxMDUsImV4cCI6MTY3NTgzNjEwNX0.uwyFWCzcR9MaCzR6mFSOHxgTuT8pDAHkCswIrQK9eT0'),(268,7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjcsInN0YXR1cyI6MSwicGFzcyI6IiQyYSQwOCRKZGRMNjh0NkxWL0duUktTS2pHRXd1djNQUnVzWUhXMmhtdEdxd3EzRnNCaWJTcXBGMnYweSJ9LCJpYXQiOjE2NzU4MTEyNTAsImV4cCI6MTY3NTg0NzI1MH0.xLzY_ASn6LQANKyvbX10KkSPqtwxEgFubshnorrhMws'),(269,7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjcsInN0YXR1cyI6MSwicGFzcyI6IiQyYSQwOCRKZGRMNjh0NkxWL0duUktTS2pHRXd1djNQUnVzWUhXMmhtdEdxd3EzRnNCaWJTcXBGMnYweSJ9LCJpYXQiOjE2NzU4MTE0OTQsImV4cCI6MTY3NTg0NzQ5NH0.PH3F-YOlX4hP5mWx41tnRiOM8JhJYXDD3oFErOO19B4'),(270,7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjcsInN0YXR1cyI6MSwicGFzcyI6IiQyYSQwOCRKZGRMNjh0NkxWL0duUktTS2pHRXd1djNQUnVzWUhXMmhtdEdxd3EzRnNCaWJTcXBGMnYweSJ9LCJpYXQiOjE2NzU4MTE5OTYsImV4cCI6MTY3NTg0Nzk5Nn0.NHk-UpUfWgqVqhfA1CumGk9VXra7NiJgR5XA34t6mHA'),(271,7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjcsInN0YXR1cyI6MSwicGFzcyI6IiQyYSQwOCRKZGRMNjh0NkxWL0duUktTS2pHRXd1djNQUnVzWUhXMmhtdEdxd3EzRnNCaWJTcXBGMnYweSJ9LCJpYXQiOjE2NzU4MTMzNzQsImV4cCI6MTY3NTg0OTM3NH0.pu2ZGAR5suWovxDCcnEDXQBjdcvaG0p19Atkkh0o4BU'),(272,7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjcsInN0YXR1cyI6MSwicGFzcyI6IiQyYSQwOCRKZGRMNjh0NkxWL0duUktTS2pHRXd1djNQUnVzWUhXMmhtdEdxd3EzRnNCaWJTcXBGMnYweSJ9LCJpYXQiOjE2NzU4MTM2MTUsImV4cCI6MTY3NTg0OTYxNX0.47_XHg0wJ5FrUSRmWqzcCoogoj06BjBc8nf-VbI54kw'),(273,7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjcsInN0YXR1cyI6MSwicGFzcyI6IiQyYSQwOCRKZGRMNjh0NkxWL0duUktTS2pHRXd1djNQUnVzWUhXMmhtdEdxd3EzRnNCaWJTcXBGMnYweSJ9LCJpYXQiOjE2NzU4MjAzMjAsImV4cCI6MTY3NTg1NjMyMH0.T8Zabhr1Ss93Z9qRaZkaJrLcfzu4p_kk5c511tAlxd4'),(274,7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjcsInN0YXR1cyI6MSwicGFzcyI6IiQyYSQwOCRKZGRMNjh0NkxWL0duUktTS2pHRXd1djNQUnVzWUhXMmhtdEdxd3EzRnNCaWJTcXBGMnYweSJ9LCJpYXQiOjE2NzU4MjA0MDgsImV4cCI6MTY3NTg1NjQwOH0.E369GdYh2UC9G5t6Kc251f0AFQRFW8VffNpmgp0UmCM'),(275,7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjcsInN0YXR1cyI6MSwicGFzcyI6IiQyYSQwOCRKZGRMNjh0NkxWL0duUktTS2pHRXd1djNQUnVzWUhXMmhtdEdxd3EzRnNCaWJTcXBGMnYweSJ9LCJpYXQiOjE2NzU4MjA0NDcsImV4cCI6MTY3NTg1NjQ0N30.7Qv72h3vAXoUOw_WPbNSQ_wAv2rOMu0FGuVGqeC_spA'),(276,7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjcsInN0YXR1cyI6MSwicGFzcyI6IiQyYSQwOCRKZGRMNjh0NkxWL0duUktTS2pHRXd1djNQUnVzWUhXMmhtdEdxd3EzRnNCaWJTcXBGMnYweSJ9LCJpYXQiOjE2NzU4MjA1OTUsImV4cCI6MTY3NTg1NjU5NX0.-m17o3xloDQwDMuqcPDNOK299fGTW0VG--5hNXz7mCk'),(277,7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjcsInN0YXR1cyI6MSwicGFzcyI6IiQyYSQwOCRKZGRMNjh0NkxWL0duUktTS2pHRXd1djNQUnVzWUhXMmhtdEdxd3EzRnNCaWJTcXBGMnYweSJ9LCJpYXQiOjE2NzU4MjA4MzAsImV4cCI6MTY3NTg1NjgzMH0.sUQyA1g545-9U2lhwJKkM0sccpSGAvsimkDAjMmhd6M'),(278,7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjcsInN0YXR1cyI6MSwicGFzcyI6IiQyYSQwOCRKZGRMNjh0NkxWL0duUktTS2pHRXd1djNQUnVzWUhXMmhtdEdxd3EzRnNCaWJTcXBGMnYweSJ9LCJpYXQiOjE2NzU4MjExMjksImV4cCI6MTY3NTg1NzEyOX0.ptnx-85DF1dHhXNjdU43-bWMChl4hcFJEXKFjNYEtJc'),(279,7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjcsInN0YXR1cyI6MSwicGFzcyI6IiQyYSQwOCRKZGRMNjh0NkxWL0duUktTS2pHRXd1djNQUnVzWUhXMmhtdEdxd3EzRnNCaWJTcXBGMnYweSJ9LCJpYXQiOjE2NzU4MjEyMjEsImV4cCI6MTY3NTg1NzIyMX0.7l2nC8fgcMZJ3gTb0N79zOtHuNh3XaQ3EuaK9w-UaJA'),(280,7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjcsInN0YXR1cyI6MSwicGFzcyI6IiQyYSQwOCRKZGRMNjh0NkxWL0duUktTS2pHRXd1djNQUnVzWUhXMmhtdEdxd3EzRnNCaWJTcXBGMnYweSJ9LCJpYXQiOjE2NzU4MjIxMDYsImV4cCI6MTY3NTg1ODEwNn0.8wJmFJIyFkP4iyrm0hdrL6kUs5ScmsLRatxJ-r2GnSs'),(281,7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjcsInN0YXR1cyI6MSwicGFzcyI6IiQyYSQwOCRKZGRMNjh0NkxWL0duUktTS2pHRXd1djNQUnVzWUhXMmhtdEdxd3EzRnNCaWJTcXBGMnYweSJ9LCJpYXQiOjE2NzU4MjIxODksImV4cCI6MTY3NTg1ODE4OX0.agjFP_ZtFeXEpyjfjhZoQfZimGC5GZWHkau4vIHCfFM'),(282,7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjcsInN0YXR1cyI6MSwicGFzcyI6IiQyYSQwOCRKZGRMNjh0NkxWL0duUktTS2pHRXd1djNQUnVzWUhXMmhtdEdxd3EzRnNCaWJTcXBGMnYweSJ9LCJpYXQiOjE2NzU4MjIyMTEsImV4cCI6MTY3NTg1ODIxMX0.ZlCAuGznYwFUJQg0TPpoALaEieVnJUGE4xpytG4ZF_M'),(283,7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjcsInN0YXR1cyI6MSwicGFzcyI6IiQyYSQwOCRKZGRMNjh0NkxWL0duUktTS2pHRXd1djNQUnVzWUhXMmhtdEdxd3EzRnNCaWJTcXBGMnYweSJ9LCJpYXQiOjE2NzU4MjMxMTgsImV4cCI6MTY3NTg1OTExOH0.mbFtocQzj9Wlavd-xu0q_zDazWJTKK0VZE51gWgjXiI'),(284,7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjcsInN0YXR1cyI6MSwicGFzcyI6IiQyYSQwOCRKZGRMNjh0NkxWL0duUktTS2pHRXd1djNQUnVzWUhXMmhtdEdxd3EzRnNCaWJTcXBGMnYweSJ9LCJpYXQiOjE2NzU4MjMxNjgsImV4cCI6MTY3NTg1OTE2OH0.afcQ8pi1-MLk5XBB0xzzyXjzshHOKRg4v8Nfw6J6XNo'),(285,7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjcsInN0YXR1cyI6MSwicGFzcyI6IiQyYSQwOCRKZGRMNjh0NkxWL0duUktTS2pHRXd1djNQUnVzWUhXMmhtdEdxd3EzRnNCaWJTcXBGMnYweSJ9LCJpYXQiOjE2NzU4MjMyMjAsImV4cCI6MTY3NTg1OTIyMH0.t30Z6OE-OcDUoBZPrjWzwsp_RQqqjmSs8OJ3g30BejE'),(286,7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjcsInN0YXR1cyI6MSwicGFzcyI6IiQyYSQwOCRKZGRMNjh0NkxWL0duUktTS2pHRXd1djNQUnVzWUhXMmhtdEdxd3EzRnNCaWJTcXBGMnYweSJ9LCJpYXQiOjE2NzU4MjM1NDIsImV4cCI6MTY3NTg1OTU0Mn0.eHUso9jWmZ7xCdKAbNaRD7IP2Vgt5Oz3lTbF6V681Ro'),(287,77,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjc3LCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkWGM4c21UNTVLUmFFd0RvaGVnalRSZUpFdjdCMlBoay51Zklhd2xUQUxYMXB3OFVMVGU2S3kifSwiaWF0IjoxNjc1OTk5NTU3LCJleHAiOjE2NzYwMzU1NTd9.Ag5gQM9NeCiqU7Ra5d5hSF6IyRmziDEUQXsgyTmGXIo'),(288,77,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjc3LCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkWGM4c21UNTVLUmFFd0RvaGVnalRSZUpFdjdCMlBoay51Zklhd2xUQUxYMXB3OFVMVGU2S3kifSwiaWF0IjoxNjc1OTk5Nzc1LCJleHAiOjE2NzYwMzU3NzV9.8RRKXpOci6agEby38e4N6iw4nEjGq8QzGuRZhEt-5yY'),(289,77,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjc3LCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkWGM4c21UNTVLUmFFd0RvaGVnalRSZUpFdjdCMlBoay51Zklhd2xUQUxYMXB3OFVMVGU2S3kifSwiaWF0IjoxNjc2MDAxOTE3LCJleHAiOjE2NzYwMzc5MTd9.QmljE9SAMVWx4gLmCgbmjZWHVkfJ1D_udpEkyblDVdA'),(290,77,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjc3LCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkWGM4c21UNTVLUmFFd0RvaGVnalRSZUpFdjdCMlBoay51Zklhd2xUQUxYMXB3OFVMVGU2S3kifSwiaWF0IjoxNjc2MDAyMjQzLCJleHAiOjE2NzYwMzgyNDN9.yMmdVtKtieJng-4pC8wh_jD46LblJVBsoESTTLCMiZY'),(291,7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjcsInN0YXR1cyI6MSwicGFzcyI6IiQyYSQwOCRKZGRMNjh0NkxWL0duUktTS2pHRXd1djNQUnVzWUhXMmhtdEdxd3EzRnNCaWJTcXBGMnYweSJ9LCJpYXQiOjE2NzYwMDIyNjcsImV4cCI6MTY3NjAzODI2N30.4Da5f3wOBot4vQQE-xxIZ_ShNC28mSBuGtbINc9s89E'),(292,77,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjc3LCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkWGM4c21UNTVLUmFFd0RvaGVnalRSZUpFdjdCMlBoay51Zklhd2xUQUxYMXB3OFVMVGU2S3kifSwiaWF0IjoxNjc2MDA1MDA3LCJleHAiOjE2NzYwNDEwMDd9.quBAYSoDswnPk8HSJ11i7by_a8Xt5ZQGVvs4euye_oY'),(293,77,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjc3LCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkWGM4c21UNTVLUmFFd0RvaGVnalRSZUpFdjdCMlBoay51Zklhd2xUQUxYMXB3OFVMVGU2S3kifSwiaWF0IjoxNjc2MDA1MTE5LCJleHAiOjE2NzYwNDExMTl9.EG_Ct-atLnrLK78ec_SkZO4m0RmPs8V5sN2WZG652Bs'),(294,77,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjc3LCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkWGM4c21UNTVLUmFFd0RvaGVnalRSZUpFdjdCMlBoay51Zklhd2xUQUxYMXB3OFVMVGU2S3kifSwiaWF0IjoxNjc2MDA1MTgwLCJleHAiOjE2NzYwNDExODB9.sq-3jak2bFHhRi-pCsaKI2YhyF0CFYWc_8aw-8w3Zc4'),(295,77,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjc3LCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkWGM4c21UNTVLUmFFd0RvaGVnalRSZUpFdjdCMlBoay51Zklhd2xUQUxYMXB3OFVMVGU2S3kifSwiaWF0IjoxNjc2MDA1MjE3LCJleHAiOjE2NzYwNDEyMTd9.Z1lOAvXKAkLNTipEHArXj9cNXVKkFyyQ46RS5HsqrkA'),(296,77,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjc3LCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkWGM4c21UNTVLUmFFd0RvaGVnalRSZUpFdjdCMlBoay51Zklhd2xUQUxYMXB3OFVMVGU2S3kifSwiaWF0IjoxNjc2MDc1ODUzLCJleHAiOjE2NzYxMTE4NTN9.L88zcmT4x2EzWwBV-eLHrjGNMIzn3H7RHstNJGe1icI'),(297,7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjcsInN0YXR1cyI6MSwicGFzcyI6IiQyYSQwOCRKZGRMNjh0NkxWL0duUktTS2pHRXd1djNQUnVzWUhXMmhtdEdxd3EzRnNCaWJTcXBGMnYweSJ9LCJpYXQiOjE2NzYwNzU5NjksImV4cCI6MTY3NjExMTk2OX0.B2dO9lS4VZeonJyfA21NU_0KGEyBY3UvlNR_nMqUWgo'),(298,77,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjc3LCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkWGM4c21UNTVLUmFFd0RvaGVnalRSZUpFdjdCMlBoay51Zklhd2xUQUxYMXB3OFVMVGU2S3kifSwiaWF0IjoxNjc2MDc2MTgwLCJleHAiOjE2NzYxMTIxODB9.vK2i2u6owtqrK9N1jWUubK1-sdfkDzACONIq6zTtPf0'),(299,77,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjc3LCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkWGM4c21UNTVLUmFFd0RvaGVnalRSZUpFdjdCMlBoay51Zklhd2xUQUxYMXB3OFVMVGU2S3kifSwiaWF0IjoxNjc2MDc2ODU0LCJleHAiOjE2NzYxMTI4NTR9.GMF6AkPUlfdbO7KTA-JmPgmDuEwrZZ8r0LMArCS3Sfk'),(300,77,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjc3LCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkWGM4c21UNTVLUmFFd0RvaGVnalRSZUpFdjdCMlBoay51Zklhd2xUQUxYMXB3OFVMVGU2S3kifSwiaWF0IjoxNjc2MDc2OTkxLCJleHAiOjE2NzYxMTI5OTF9.0smVxZkzjtwO8AEyr4uFsl8mdmfpVNihRpSSWt5tz2s'),(301,77,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjc3LCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkWGM4c21UNTVLUmFFd0RvaGVnalRSZUpFdjdCMlBoay51Zklhd2xUQUxYMXB3OFVMVGU2S3kifSwiaWF0IjoxNjc2MDc3MzY5LCJleHAiOjE2NzYxMTMzNjl9.oEJli3BQ42MOfowVaPtWSb3iYAAKyKlGCmxaCo6TF4w'),(302,7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjcsInN0YXR1cyI6MSwicGFzcyI6IiQyYSQwOCRKZGRMNjh0NkxWL0duUktTS2pHRXd1djNQUnVzWUhXMmhtdEdxd3EzRnNCaWJTcXBGMnYweSJ9LCJpYXQiOjE2NzYxNDgyODQsImV4cCI6MTY3NjE4NDI4NH0.NpOJJqipQ_FtkirHk6LFDOAskyoD_GH_2N4IXwLU_pk'),(303,7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjcsInN0YXR1cyI6MSwicGFzcyI6IiQyYSQwOCRKZGRMNjh0NkxWL0duUktTS2pHRXd1djNQUnVzWUhXMmhtdEdxd3EzRnNCaWJTcXBGMnYweSJ9LCJpYXQiOjE2NzYxNDgzMzksImV4cCI6MTY3NjE4NDMzOX0.PCF3KDhsQ3rrvGlo-9ekQl9TAkaqARcROYmrv-8gIq0'),(304,77,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjc3LCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkWGM4c21UNTVLUmFFd0RvaGVnalRSZUpFdjdCMlBoay51Zklhd2xUQUxYMXB3OFVMVGU2S3kifSwiaWF0IjoxNjc2MTQ1NzUxLCJleHAiOjE2NzYxODE3NTF9.SkIqC9TtuNJXQF9OFghaC1Y5hG2yyAFqS0Qezw6knuM'),(305,77,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjc3LCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkWGM4c21UNTVLUmFFd0RvaGVnalRSZUpFdjdCMlBoay51Zklhd2xUQUxYMXB3OFVMVGU2S3kifSwiaWF0IjoxNjc2MTQ1ODI5LCJleHAiOjE2NzYxODE4Mjl9.aAfhs2SsTJdmnpum-8pP4ESSaP4tt537iRNzMFyiRtg'),(306,7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjcsInN0YXR1cyI6MSwicGFzcyI6IiQyYSQwOCRKZGRMNjh0NkxWL0duUktTS2pHRXd1djNQUnVzWUhXMmhtdEdxd3EzRnNCaWJTcXBGMnYweSJ9LCJpYXQiOjE2NzYxNDU5NTgsImV4cCI6MTY3NjE4MTk1OH0.hoJrFGbTfZxGxzeBA2pvClk6zYQ-gcJOWI4K0HzYGKg'),(307,77,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjc3LCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkWGM4c21UNTVLUmFFd0RvaGVnalRSZUpFdjdCMlBoay51Zklhd2xUQUxYMXB3OFVMVGU2S3kifSwiaWF0IjoxNjc2MTQ2MDI1LCJleHAiOjE2NzYxODIwMjV9.WfYJK7NBtNPnukdIAvHS1lYLa15_Ysfz1GSGBiLwbQU'),(308,77,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjc3LCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkWGM4c21UNTVLUmFFd0RvaGVnalRSZUpFdjdCMlBoay51Zklhd2xUQUxYMXB3OFVMVGU2S3kifSwiaWF0IjoxNjc2MTQ2NTYxLCJleHAiOjE2NzYxODI1NjF9.9BEGq_rU8vvtrAFYD-oPq8GiUhv20wq34re4WYHC2ak'),(309,77,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjc3LCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkWGM4c21UNTVLUmFFd0RvaGVnalRSZUpFdjdCMlBoay51Zklhd2xUQUxYMXB3OFVMVGU2S3kifSwiaWF0IjoxNjc2MTQ5MjA3LCJleHAiOjE2NzYxODUyMDd9.Gvh7HomYGb0m_E_lJGxmB5JdAvu4SYWCTfqlMIpAXpQ'),(310,77,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjc3LCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkWGM4c21UNTVLUmFFd0RvaGVnalRSZUpFdjdCMlBoay51Zklhd2xUQUxYMXB3OFVMVGU2S3kifSwiaWF0IjoxNjc2MTQ5NDgyLCJleHAiOjE2NzYxODU0ODJ9.zVGNUxFtfohZxlztAJeHkU6qhosuZqFFLCRam0ruUAM'),(311,77,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjc3LCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkWGM4c21UNTVLUmFFd0RvaGVnalRSZUpFdjdCMlBoay51Zklhd2xUQUxYMXB3OFVMVGU2S3kifSwiaWF0IjoxNjc2MTUwMTU2LCJleHAiOjE2NzYxODYxNTZ9.gpKL9Gs0eedTVNam6OznrU1ga5_gKsCBhS7MhFKDaWE'),(312,77,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjc3LCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkWGM4c21UNTVLUmFFd0RvaGVnalRSZUpFdjdCMlBoay51Zklhd2xUQUxYMXB3OFVMVGU2S3kifSwiaWF0IjoxNjc2MTUwODUxLCJleHAiOjE2NzYxODY4NTF9.j86ZxFOUdGOUd8eXpD8-wOP9Y6spCT8gTCiNrDMqy_Y'),(313,77,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjc3LCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkWGM4c21UNTVLUmFFd0RvaGVnalRSZUpFdjdCMlBoay51Zklhd2xUQUxYMXB3OFVMVGU2S3kifSwiaWF0IjoxNjc2MTUyNzI0LCJleHAiOjE2NzYxODg3MjR9.wioFTjkU28Q8JPGoG-3vS85yzw9ZzvxPZ9kux6z9GNE'),(314,77,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjc3LCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkWGM4c21UNTVLUmFFd0RvaGVnalRSZUpFdjdCMlBoay51Zklhd2xUQUxYMXB3OFVMVGU2S3kifSwiaWF0IjoxNjc2MTUzNDc1LCJleHAiOjE2NzYxODk0NzV9.RdYxM0AQ387qxNomCpdlrJ383G25trb22PYofuL3USk'),(315,77,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjc3LCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkWGM4c21UNTVLUmFFd0RvaGVnalRSZUpFdjdCMlBoay51Zklhd2xUQUxYMXB3OFVMVGU2S3kifSwiaWF0IjoxNjc2MTUzNTkyLCJleHAiOjE2NzYxODk1OTJ9.A8Nt8TQySQvpCPhrdrFhm9k8h0U8ciLzsUSrZ37-oz4'),(316,77,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjc3LCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkWGM4c21UNTVLUmFFd0RvaGVnalRSZUpFdjdCMlBoay51Zklhd2xUQUxYMXB3OFVMVGU2S3kifSwiaWF0IjoxNjc2MTUzNzYzLCJleHAiOjE2NzYxODk3NjN9.0rz53C19H1mzgN-uUm5Pf4fifGT-4gXga4lMI8RkYTI'),(317,77,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjc3LCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkWGM4c21UNTVLUmFFd0RvaGVnalRSZUpFdjdCMlBoay51Zklhd2xUQUxYMXB3OFVMVGU2S3kifSwiaWF0IjoxNjc2MTUzOTMzLCJleHAiOjE2NzYxODk5MzN9.pGXk_XuPW6hSCxBJytjpJkMyu0TVtYUCTXiogfUI4po'),(318,77,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjc3LCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkWGM4c21UNTVLUmFFd0RvaGVnalRSZUpFdjdCMlBoay51Zklhd2xUQUxYMXB3OFVMVGU2S3kifSwiaWF0IjoxNjc2MTUzOTg1LCJleHAiOjE2NzYxODk5ODV9.HmLFyTo8nN69_i7HARzeQuKUFAloySzci1-pvGydY2Q'),(319,77,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjc3LCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkWGM4c21UNTVLUmFFd0RvaGVnalRSZUpFdjdCMlBoay51Zklhd2xUQUxYMXB3OFVMVGU2S3kifSwiaWF0IjoxNjc2MTU1NzQ5LCJleHAiOjE2NzYxOTE3NDl9.iiISGB-hKk1lSyhnTTXPXnOqR30mGysaKjaL8hV5dGY'),(320,7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjcsInN0YXR1cyI6MSwicGFzcyI6IiQyYSQwOCRKZGRMNjh0NkxWL0duUktTS2pHRXd1djNQUnVzWUhXMmhtdEdxd3EzRnNCaWJTcXBGMnYweSJ9LCJpYXQiOjE2NzYxNTYxNzksImV4cCI6MTY3NjE5MjE3OX0.isoB4t2KQJWmSGa0-Q4HITKTcfG8D292v0Pe9kKZxeE'),(321,77,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjc3LCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkWGM4c21UNTVLUmFFd0RvaGVnalRSZUpFdjdCMlBoay51Zklhd2xUQUxYMXB3OFVMVGU2S3kifSwiaWF0IjoxNjc2MTU3MTk0LCJleHAiOjE2NzYxOTMxOTR9.eyeKqXhh5raYmDXwfYAajD3GKV9ixUTLODyL8T5O4rs'),(322,77,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjc3LCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkWGM4c21UNTVLUmFFd0RvaGVnalRSZUpFdjdCMlBoay51Zklhd2xUQUxYMXB3OFVMVGU2S3kifSwiaWF0IjoxNjc2MTU4ODAzLCJleHAiOjE2NzYxOTQ4MDN9.9iHp0UxYeYjgBZ-h5hc0p_SazLjUst7klcedTpDv1SQ'),(323,77,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjc3LCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkWGM4c21UNTVLUmFFd0RvaGVnalRSZUpFdjdCMlBoay51Zklhd2xUQUxYMXB3OFVMVGU2S3kifSwiaWF0IjoxNjc2MTYwNzE0LCJleHAiOjE2NzYxOTY3MTR9.psYB4eQBtX3ZppENAIMIOKaaypiRcPkJA6HOf9Cl_uo'),(324,77,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjc3LCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkWGM4c21UNTVLUmFFd0RvaGVnalRSZUpFdjdCMlBoay51Zklhd2xUQUxYMXB3OFVMVGU2S3kifSwiaWF0IjoxNjc2MTYxMzQ4LCJleHAiOjE2NzYxOTczNDh9.O6WVUqLfJJ8V1IrgDkWCSdfdpP1QT-KaG8gAoEuOz4s'),(325,77,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjc3LCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkWGM4c21UNTVLUmFFd0RvaGVnalRSZUpFdjdCMlBoay51Zklhd2xUQUxYMXB3OFVMVGU2S3kifSwiaWF0IjoxNjc2MTYyNTAwLCJleHAiOjE2NzYxOTg1MDB9.nBn0IMD8Qwnxjtjtr_My5axEep1L_uuHejT-HEIZTck'),(326,77,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjc3LCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkWGM4c21UNTVLUmFFd0RvaGVnalRSZUpFdjdCMlBoay51Zklhd2xUQUxYMXB3OFVMVGU2S3kifSwiaWF0IjoxNjc2MTY0ODMwLCJleHAiOjE2NzYyMDA4MzB9.RXWtZGL1S3CFxsOrDieE2ymZqODelRZwR2rWyFbMP4Q'),(327,77,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjc3LCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkWGM4c21UNTVLUmFFd0RvaGVnalRSZUpFdjdCMlBoay51Zklhd2xUQUxYMXB3OFVMVGU2S3kifSwiaWF0IjoxNjc2MTY2MzM1LCJleHAiOjE2NzYyMDIzMzV9.Z9zG8tt_Daun43kVO1G4vhgj8hk8SGKH8U3gnIn2hE4'),(328,77,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjc3LCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkWGM4c21UNTVLUmFFd0RvaGVnalRSZUpFdjdCMlBoay51Zklhd2xUQUxYMXB3OFVMVGU2S3kifSwiaWF0IjoxNjc2MjM5NDM3LCJleHAiOjE2NzYyNzU0Mzd9.PbtRlsCT77jun-giIiNZXN6uNiUDvQCru5MYpzVS1EU'),(329,77,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjc3LCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkWGM4c21UNTVLUmFFd0RvaGVnalRSZUpFdjdCMlBoay51Zklhd2xUQUxYMXB3OFVMVGU2S3kifSwiaWF0IjoxNjc2MjQxOTYwLCJleHAiOjE2NzYyNzc5NjB9.vEbMUaD6zkxbq6UkS2ITIeMZ8EUJdExmVJ12-vugTzY'),(330,77,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjc3LCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkWGM4c21UNTVLUmFFd0RvaGVnalRSZUpFdjdCMlBoay51Zklhd2xUQUxYMXB3OFVMVGU2S3kifSwiaWF0IjoxNjc2MjQzNDI3LCJleHAiOjE2NzYyNzk0Mjd9.ps84R5tEHHU2cEQY91-A9LTJ-Dm5M7BySJXPpkTk6-o'),(331,7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjcsInN0YXR1cyI6MSwicGFzcyI6IiQyYSQwOCRKZGRMNjh0NkxWL0duUktTS2pHRXd1djNQUnVzWUhXMmhtdEdxd3EzRnNCaWJTcXBGMnYweSJ9LCJpYXQiOjE2NzYyNTE4OTksImV4cCI6MTY3NjI4Nzg5OX0.yqlsKbU56VPL4ChDLSJbUTG6RnYH9GjvN4NhchvnTKw'),(332,77,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjc3LCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkWGM4c21UNTVLUmFFd0RvaGVnalRSZUpFdjdCMlBoay51Zklhd2xUQUxYMXB3OFVMVGU2S3kifSwiaWF0IjoxNjc2MzE1OTMzLCJleHAiOjE2NzYzNTE5MzN9.ieE3dU19rQ-woFU1-NQsm1YBkP-S4gNt2Rcq-k9l8L0'),(333,77,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjc3LCJzdGF0dXMiOjEsInBhc3MiOiIkMmEkMDgkWGM4c21UNTVLUmFFd0RvaGVnalRSZUpFdjdCMlBoay51Zklhd2xUQUxYMXB3OFVMVGU2S3kifSwiaWF0IjoxNjc2MzE2MjQwLCJleHAiOjE2NzYzNTIyNDB9.JshUYl-P1BKylnNkgNYbouioJy2ONr3OvsFs4_GtIXU'),(334,7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjcsInN0YXR1cyI6MSwicGFzcyI6IiQyYSQwOCRKZGRMNjh0NkxWL0duUktTS2pHRXd1djNQUnVzWUhXMmhtdEdxd3EzRnNCaWJTcXBGMnYweSJ9LCJpYXQiOjE2NzYzMzU4NjcsImV4cCI6MTY3NjM3MTg2N30.rQW007pdRDmXP-wC1HLeg3cozx0BNIeZkWVAXfL4jzU'),(335,7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjcsInN0YXR1cyI6MSwicGFzcyI6IiQyYSQwOCRKZGRMNjh0NkxWL0duUktTS2pHRXd1djNQUnVzWUhXMmhtdEdxd3EzRnNCaWJTcXBGMnYweSJ9LCJpYXQiOjE2NzYzMzY0NTksImV4cCI6MTY3NjM3MjQ1OX0.auAkEVgpkNQdz4y-bcXpKfRty1mPZ21VD2xLBGpLmhw'),(336,7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjcsInN0YXR1cyI6MSwicGFzcyI6IiQyYSQwOCRKZGRMNjh0NkxWL0duUktTS2pHRXd1djNQUnVzWUhXMmhtdEdxd3EzRnNCaWJTcXBGMnYweSJ9LCJpYXQiOjE2NzYzMzk1MzksImV4cCI6MTY3NjM3NTUzOX0.n_-OwKTqgArzAHvesxOfnWaH9C6Rv4Rzta-l_KGSp1w'),(337,7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjcsInN0YXR1cyI6MSwicGFzcyI6IiQyYSQwOCRKZGRMNjh0NkxWL0duUktTS2pHRXd1djNQUnVzWUhXMmhtdEdxd3EzRnNCaWJTcXBGMnYweSJ9LCJpYXQiOjE2NzYzMzk1NzksImV4cCI6MTY3NjM3NTU3OX0.MI1Qo2BEvyEwTgSUdrtr_LMmdpjyn0Fa9CBv7vf9pWE'),(338,7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjcsInN0YXR1cyI6MSwicGFzcyI6IiQyYSQwOCRKZGRMNjh0NkxWL0duUktTS2pHRXd1djNQUnVzWUhXMmhtdEdxd3EzRnNCaWJTcXBGMnYweSJ9LCJpYXQiOjE2NzYzMzk2NzEsImV4cCI6MTY3NjM3NTY3MX0.Jwj3HuHWJs0tgV9nuwZ1etatEkGe4n0hmnRrkBtyJYg'),(339,7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjcsInN0YXR1cyI6MSwicGFzcyI6IiQyYSQwOCRKZGRMNjh0NkxWL0duUktTS2pHRXd1djNQUnVzWUhXMmhtdEdxd3EzRnNCaWJTcXBGMnYweSJ9LCJpYXQiOjE2NzYzMzk3MDksImV4cCI6MTY3NjM3NTcwOX0.4hp5QKN7W37oVw7z_rMtWJv8acz_UQWqonfA3U3_yck'),(340,7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjcsInN0YXR1cyI6MSwicGFzcyI6IiQyYSQwOCRKZGRMNjh0NkxWL0duUktTS2pHRXd1djNQUnVzWUhXMmhtdEdxd3EzRnNCaWJTcXBGMnYweSJ9LCJpYXQiOjE2NzYzMzk3NzAsImV4cCI6MTY3NjM3NTc3MH0.Ciq1YIvJ4F6HZyhq7Y5klFdvZbLzjr-8Odj572SIPiI'),(341,7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjcsInN0YXR1cyI6MSwicGFzcyI6IiQyYSQwOCRKZGRMNjh0NkxWL0duUktTS2pHRXd1djNQUnVzWUhXMmhtdEdxd3EzRnNCaWJTcXBGMnYweSJ9LCJpYXQiOjE2NzYzNDI2NTcsImV4cCI6MTY3NjM3ODY1N30.xcRyQTwd46R7DGEXtyhl4-aYFoQOvDy0nD7cHpL4gDU'),(342,7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjcsInN0YXR1cyI6MSwicGFzcyI6IiQyYSQwOCRKZGRMNjh0NkxWL0duUktTS2pHRXd1djNQUnVzWUhXMmhtdEdxd3EzRnNCaWJTcXBGMnYweSJ9LCJpYXQiOjE2NzYzNDI3MTYsImV4cCI6MTY3NjM3ODcxNn0.JoqetyqzrpUbwa_WBbKVi-yTUC5NBtcWmjM6krdNgas'),(343,7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjcsInN0YXR1cyI6MSwicGFzcyI6IiQyYSQwOCRKZGRMNjh0NkxWL0duUktTS2pHRXd1djNQUnVzWUhXMmhtdEdxd3EzRnNCaWJTcXBGMnYweSJ9LCJpYXQiOjE2NzYzNDMyNzksImV4cCI6MTY3NjM3OTI3OX0.9SM6R21FnTF78LCRmsQyH3z6nJQlZPc-NZzItUL4FNE'),(344,7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjcsInN0YXR1cyI6MSwicGFzcyI6IiQyYSQwOCRKZGRMNjh0NkxWL0duUktTS2pHRXd1djNQUnVzWUhXMmhtdEdxd3EzRnNCaWJTcXBGMnYweSJ9LCJpYXQiOjE2NzYzNDMzMDQsImV4cCI6MTY3NjM3OTMwNH0.Z3F9ggojjshO6NN2CWDJ6HBPnSRFaPMKGkK93djY0zU'),(345,7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjcsInN0YXR1cyI6MSwicGFzcyI6IiQyYSQwOCRKZGRMNjh0NkxWL0duUktTS2pHRXd1djNQUnVzWUhXMmhtdEdxd3EzRnNCaWJTcXBGMnYweSJ9LCJpYXQiOjE2NzYzNDU1MzksImV4cCI6MTY3NjM4MTUzOX0.0IV-BbODcUBDB9haw2LlL4mvgIF8nY62P-L9iBQIExw'),(346,7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjcsInN0YXR1cyI6MSwicGFzcyI6IiQyYSQwOCRKZGRMNjh0NkxWL0duUktTS2pHRXd1djNQUnVzWUhXMmhtdEdxd3EzRnNCaWJTcXBGMnYweSJ9LCJpYXQiOjE2NzYzNDg4ODgsImV4cCI6MTY3NjM4NDg4OH0.LBoZVoUnYIvQajRsORKxS62ojJFScStnIhjFAeeAJcw'),(347,7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjcsInN0YXR1cyI6MSwicGFzcyI6IiQyYSQwOCRKZGRMNjh0NkxWL0duUktTS2pHRXd1djNQUnVzWUhXMmhtdEdxd3EzRnNCaWJTcXBGMnYweSJ9LCJpYXQiOjE2NzYzNDg4ODksImV4cCI6MTY3NjM4NDg4OX0.x_STmIgdW8l6kRGfT-D2O6h_Skp8bziOl1XLSmFXEK8'),(348,7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjcsInN0YXR1cyI6MSwicGFzcyI6IiQyYSQwOCRKZGRMNjh0NkxWL0duUktTS2pHRXd1djNQUnVzWUhXMmhtdEdxd3EzRnNCaWJTcXBGMnYweSJ9LCJpYXQiOjE2NzYzNDkxNzMsImV4cCI6MTY3NjM4NTE3M30.E9YcayVYl-O1jjICQS-TD8JUdA-oHuNlvEy-xVkGD3Q'),(349,7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjcsInN0YXR1cyI6MSwicGFzcyI6IiQyYSQwOCRKZGRMNjh0NkxWL0duUktTS2pHRXd1djNQUnVzWUhXMmhtdEdxd3EzRnNCaWJTcXBGMnYweSJ9LCJpYXQiOjE2NzYzNDk4MTYsImV4cCI6MTY3NjM4NTgxNn0.BoYOGTbMcIOa1PpCHEgAVMCf1SLkrS2-inQM72jGvO0'),(350,7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjcsInN0YXR1cyI6MSwicGFzcyI6IiQyYSQwOCRKZGRMNjh0NkxWL0duUktTS2pHRXd1djNQUnVzWUhXMmhtdEdxd3EzRnNCaWJTcXBGMnYweSJ9LCJpYXQiOjE2NzYzOTEwMjgsImV4cCI6MTY3NjQyNzAyOH0.WM9nGV8T1HypliPeBV64sA2PbWgTOXVfpLqb4jUXwAk'),(351,7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjcsInN0YXR1cyI6MSwicGFzcyI6IiQyYSQwOCRKZGRMNjh0NkxWL0duUktTS2pHRXd1djNQUnVzWUhXMmhtdEdxd3EzRnNCaWJTcXBGMnYweSJ9LCJpYXQiOjE2NzY0MDQxNTgsImV4cCI6MTY3NjQ0MDE1OH0.fXYlIfIVQ6VZdSBssaTZkOrtmCYJnuHnw_XIstGn4HE'),(352,7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjcsInN0YXR1cyI6MSwicGFzcyI6IiQyYSQwOCRKZGRMNjh0NkxWL0duUktTS2pHRXd1djNQUnVzWUhXMmhtdEdxd3EzRnNCaWJTcXBGMnYweSJ9LCJpYXQiOjE2NzY0MDQ3OTMsImV4cCI6MTY3NjQ0MDc5M30.jasU1pL0wmIjuhZA8a3BgyG64_NenFidwp0GSwgDHn4'),(353,7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjcsInN0YXR1cyI6MSwicGFzcyI6IiQyYSQwOCRKZGRMNjh0NkxWL0duUktTS2pHRXd1djNQUnVzWUhXMmhtdEdxd3EzRnNCaWJTcXBGMnYweSJ9LCJpYXQiOjE2NzY0MDQ5MTQsImV4cCI6MTY3NjQ0MDkxNH0.d9O2wfslcHCFYUwaSCAh-xZekYlkHII7ayZhnDRoNQY'),(354,7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjcsInN0YXR1cyI6MSwicGFzcyI6IiQyYSQwOCRKZGRMNjh0NkxWL0duUktTS2pHRXd1djNQUnVzWUhXMmhtdEdxd3EzRnNCaWJTcXBGMnYweSJ9LCJpYXQiOjE2NzY0MDQ5OTAsImV4cCI6MTY3NjQ0MDk5MH0.HYu-iWSqeLlPcjAhsCo9F-P4JE7jWBn6rJRz_oSDXBk'),(355,7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjcsInN0YXR1cyI6MSwicGFzcyI6IiQyYSQwOCRKZGRMNjh0NkxWL0duUktTS2pHRXd1djNQUnVzWUhXMmhtdEdxd3EzRnNCaWJTcXBGMnYweSJ9LCJpYXQiOjE2NzY0MDk5MjgsImV4cCI6MTY3NjQ0NTkyOH0.6j3Rp4VTIrqcG74tW6mIoXzU7CgvpVYqWs4B11BfHaw'),(356,7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjcsInN0YXR1cyI6MSwicGFzcyI6IiQyYSQwOCRKZGRMNjh0NkxWL0duUktTS2pHRXd1djNQUnVzWUhXMmhtdEdxd3EzRnNCaWJTcXBGMnYweSJ9LCJpYXQiOjE2NzY0MTA1MzMsImV4cCI6MTY3NjQ0NjUzM30.fFUfUjQMZC_tIUzDyZVU-koIyKYi9Nubo2Lq18IZAu8'),(357,7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjcsInN0YXR1cyI6MSwicGFzcyI6IiQyYSQwOCRKZGRMNjh0NkxWL0duUktTS2pHRXd1djNQUnVzWUhXMmhtdEdxd3EzRnNCaWJTcXBGMnYweSJ9LCJpYXQiOjE2NzY0MTUzODMsImV4cCI6MTY3NjQ1MTM4M30.FX4Uv_cJ-c16Xzyu8KMDQ4iCf7L8ljZGAYFwRJViYYQ'),(358,7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjcsInN0YXR1cyI6MSwicGFzcyI6IiQyYSQwOCRKZGRMNjh0NkxWL0duUktTS2pHRXd1djNQUnVzWUhXMmhtdEdxd3EzRnNCaWJTcXBGMnYweSJ9LCJpYXQiOjE2NzY0MTk1MjMsImV4cCI6MTY3NjQ1NTUyM30.QqZR9HnvlbqTYale_Vdpsc2BNP4JWo4agcr-O3aagcM'),(359,7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjcsInN0YXR1cyI6MSwicGFzcyI6IiQyYSQwOCRKZGRMNjh0NkxWL0duUktTS2pHRXd1djNQUnVzWUhXMmhtdEdxd3EzRnNCaWJTcXBGMnYweSJ9LCJpYXQiOjE2NzY0MTk2NzgsImV4cCI6MTY3NjQ1NTY3OH0.C8878f0kMP3MQkn_8bagB6GxDR1u1vFwEU56MxETBHg'),(360,7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjcsInN0YXR1cyI6MSwicGFzcyI6IiQyYSQwOCRKZGRMNjh0NkxWL0duUktTS2pHRXd1djNQUnVzWUhXMmhtdEdxd3EzRnNCaWJTcXBGMnYweSJ9LCJpYXQiOjE2NzY0ODE5MTEsImV4cCI6MTY3NjUxNzkxMX0._lNmvJ199YPg2mP5rJ2o3bOariNTHg31TQp8GQcCAl4'),(361,7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjcsInN0YXR1cyI6MSwicGFzcyI6IiQyYSQwOCRKZGRMNjh0NkxWL0duUktTS2pHRXd1djNQUnVzWUhXMmhtdEdxd3EzRnNCaWJTcXBGMnYweSJ9LCJpYXQiOjE2NzY0ODI3MjMsImV4cCI6MTY3NjUxODcyM30.CbIHnPNv4_1MSFgkaum2mTZ9TrWyKFZdYRnarIu6tw0'),(362,7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjcsInN0YXR1cyI6MSwicGFzcyI6IiQyYSQwOCRKZGRMNjh0NkxWL0duUktTS2pHRXd1djNQUnVzWUhXMmhtdEdxd3EzRnNCaWJTcXBGMnYweSJ9LCJpYXQiOjE2NzY0ODI5MDYsImV4cCI6MTY3NjUxODkwNn0.Gs569F24X7_MPKZwkfcpAKyGT2Te7SPmzknVIFnhXNw'),(363,7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjcsInN0YXR1cyI6MSwicGFzcyI6IiQyYSQwOCRKZGRMNjh0NkxWL0duUktTS2pHRXd1djNQUnVzWUhXMmhtdEdxd3EzRnNCaWJTcXBGMnYweSJ9LCJpYXQiOjE2NzY0ODI5MTAsImV4cCI6MTY3NjUxODkxMH0.bra8Ptz6iooKOQKgNgs9D_Mm0cfNpR6BPvqVMq793tU'),(364,7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjcsInN0YXR1cyI6MSwicGFzcyI6IiQyYSQwOCRKZGRMNjh0NkxWL0duUktTS2pHRXd1djNQUnVzWUhXMmhtdEdxd3EzRnNCaWJTcXBGMnYweSJ9LCJpYXQiOjE2NzY0ODMxMTgsImV4cCI6MTY3NjUxOTExOH0.4A9jIsPl1pzp0uJjumm2I2bDJ5-aRQECPeSfxdLuROg'),(365,7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkX3VzZXIiOjcsInN0YXR1cyI6MSwicGFzcyI6IiQyYSQwOCRKZGRMNjh0NkxWL0duUktTS2pHRXd1djNQUnVzWUhXMmhtdEdxd3EzRnNCaWJTcXBGMnYweSJ9LCJpYXQiOjE2NzY0ODMxNjAsImV4cCI6MTY3NjUxOTE2MH0.D2VQEGO7DLROC-Z9DSYCpSZ8IUkkYTk2jSmaIBkCSEQ');
/*!40000 ALTER TABLE `user_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'db_0002'
--
/*!50003 DROP PROCEDURE IF EXISTS `usp_category_products_Delete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `usp_category_products_Delete`(p_id_category BIGINT(20))
BEGIN

    START TRANSACTION;



    UPDATE category_products

      SET status = 0

    WHERE  id_category = p_id_category;



    COMMIT;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_category_products_Insert` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `usp_category_products_Insert`(IN p_title VARCHAR(255),

     IN p_description VARCHAR(100),

     IN p_status INT(11),

     IN p_create_at DATETIME,

     IN p_update_at DATETIME)
BEGIN

    #START TRANSACTION;



    INSERT INTO category_products (title, description, status, create_at, update_at)

    VALUES (p_title, p_description, p_status, p_create_at, p_update_at);



    #COMMIT;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_category_products_Select_All` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `usp_category_products_Select_All`()
BEGIN

    #START TRANSACTION;



    SELECT id_category, title, description, status, create_at, update_at 

    FROM   category_products

    WHERE  status = 1 ;



    #COMMIT;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_category_products_Update` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `usp_category_products_Update`(IN p_id_category BIGINT(20),

  IN p_title VARCHAR(255),

  IN p_description VARCHAR(100),

  IN p_status INT(11),

  IN p_create_at DATETIME,

  IN p_update_at DATETIME)
BEGIN

    #START TRANSACTION;



    UPDATE category_products

    SET    title = p_title, description = p_description, status = p_status, create_at = p_create_at, 

           update_at = p_update_at

    WHERE  id_category = p_id_category;





    #COMMIT;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_chat_Delete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `usp_chat_Delete`(IN
_id_chat INT
)
BEGIN
update chat set status=0 where id_chat=_id_chat;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_chat_Insert` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `usp_chat_Insert`(IN

p_id_groups int,

p_id_user INT,

p_message TEXT

)
BEGIN

INSERT INTO `chat` 

	(

	`id_groups`, 

	`id_user`, 

	`message`, 

	`status`

	)

	VALUES

	(p_id_groups,

	p_id_user,

	p_message,

	1

	);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_chat_participants_Delete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `usp_chat_participants_Delete`(IN p_id_chatparticipants INT)
BEGIN

       UPDATE `chat_participants` 

	SET

	`state`=0

	WHERE

	`id_chatparticipants` = p_id_chatparticipants;

	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_chat_participants_Insert` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `usp_chat_participants_Insert`(in p_id_user int,p_id_groups int,p_id_type int)
BEGIN

INSERT INTO `chat_participants` 

	(

	id_user, 

	id_groups, 

	id_type

	)

	VALUES

	(

	p_id_user, 

	p_id_groups, 

	p_id_type

	);

	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_chat_participants_Select_by_idGroup` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `usp_chat_participants_Select_by_idGroup`(in p_id_groups int)
BEGIN

SELECT 	`id_chatparticipants`, 

	`id_user`, 

	`id_groups`, 

	`id_type`, 

	`create_date`, 

	`update_date`

	 

	FROM 

	`chat_participants`  WHERE id_groups=p_id_groups;

	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_chat_participants_Update` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `usp_chat_participants_Update`(IN p_id_chatparticipants int, p_id_user INT,p_id_groups INT,p_id_type INT)
BEGIN

               UPDATE `chat_participants` 

	SET

	`id_user` =  p_id_user, 

	`id_groups` =p_id_groups, 

	`id_type` =  p_id_type

	WHERE

	`id_chatparticipants` = p_id_chatparticipants ;

	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_chat_select` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `usp_chat_select`(IN

_id_groups INT

)
BEGIN

SELECT 	`id_chat`, 

	`id_groups`, 

	`id_user`, 

	`message`, 

	`status`, 

	`message_date`

	 

	FROM 

	`chat` where id_groups=_id_groups;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_groups_Delete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `usp_groups_Delete`(in p_id_groups int)
BEGIN

UPDATE groups

	SET 

	`state` = 0

	WHERE

	`id_groups` = p_id_groups ;

	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_groups_Insert` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `usp_groups_Insert`(in p_name varchar(200),p_id_produc int)
BEGIN

INSERT INTO `groups` 

	( 

	`name`, 

	`id_produc`, 

	`state`

	)

	VALUES

	(

	p_name, 

	p_id_produc, 

	1);

	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_groups_list_by_user` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `usp_groups_list_by_user`(in p_id_user int)
BEGIN

          SELECT *FROM groups WHERE id_groups IN(SELECT id_groups FROM chat_participants  WHERE id_user=p_id_user);

	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_groups_Update` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `usp_groups_Update`(iN  p_id_groups int,p_name VARCHAR(200),p_id_produc INT,p_state int)
BEGIN

UPDATE groups

	SET

	`name` =p_name, 

	`id_produc` = p_id_produc, 

	`state` = p_state

	WHERE

	`id_groups` = p_id_groups ;

	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_membership_Delete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `usp_membership_Delete`(p_id_membership INT(11))
BEGIN

    #START TRANSACTION;



    UPDATE membership

      SET status = 0 

    WHERE  id_membership = p_id_membership;



    #COMMIT;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_membership_Insert` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `usp_membership_Insert`(IN p_id_plans int,
        p_id_user INT(11),

     IN p_id_product INT(11),

     IN p_start_date DATETIME,

     IN p_day_end DATETIME)
BEGIN

    #START TRANSACTION;



    INSERT INTO membership (id_plans,id_user, id_product, start_date, day_end)

    VALUES (p_id_plans,p_id_user, p_id_product, p_start_date, p_day_end);

    #COMMIT;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_membership_Select` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `usp_membership_Select`()
BEGIN

  SELECT *
FROM membership where state=1;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_membership_Update` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `usp_membership_Update`(IN p_id_membership INT(11),p_id_plans int,

  IN p_id_user INT(11),

  IN p_id_product INT(11),

  IN p_start_date DATETIME,

  IN p_day_end DATETIME)
BEGIN

    #START TRANSACTION;



    UPDATE membership

    SET    id_plans = p_id_plans,id_user = p_id_user, id_product = p_id_product, start_date = p_start_date, day_end = p_day_end

    WHERE  id_membership = p_id_membership;
    

    #COMMIT;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_menu_Select_Perfil` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `usp_menu_Select_Perfil`()
BEGIN

SELECT m.title,m.post_link

  FROM menu_perfil mp

  LEFT JOIN menu m ON mp.id_menu = m.id_menu WHERE mp.p_view = 1;

  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_perfil_Insert` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `usp_perfil_Insert`(IN
p_id_user int,
p_document text,
p_first_name text,
p_last_name text,
p_email text,
p_phone text
)
BEGIN
delete from perfil where id_user=p_id_user;
INSERT INTO perfil(id_user,document,first_name,last_name,email,phone) values(p_id_user,p_document,p_first_name,p_last_name,p_email,p_phone);
select *from perfil order by id_perfil desc limit 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_perfil_Select` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `usp_perfil_Select`(in _id_user int)
BEGIN
SELECT id_perfil,us.id_user,us.user,type_user,name,document,first_name,last_name,email,phone FROM perfil pr
inner join user us on us.id_user=pr.id_user
inner join role rl on rl.id_role=us.type_user
where us.id_user=_id_user;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_perfil_Update` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `usp_perfil_Update`(IN
p_id_user int,
p_document text,
p_first_name text,
p_last_name text,
p_email text,
p_phone text
)
BEGIN
Update perfil set document=p_document,first_name=p_first_name,last_name=p_last_name,email=p_email,phone=p_phone where id_user=p_id_user;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_planes_Delete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `usp_planes_Delete`(in p_id_plans int)
begin
UPDATE `db_0002`.`plans`
SET
state=0
WHERE `id_plans` = p_id_plans;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_planes_Insertar` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `usp_planes_Insertar`(in p_name_plan text,p_price_plan double(12,2),p_discount_plan varchar(10))
begin
INSERT INTO `plans`
(`name_plan`,
`price_plan`,
`discount_plan`)
VALUES
(p_name_plan,p_price_plan,p_discount_plan);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_planes_Select` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `usp_planes_Select`()
begin
SELECT *
FROM plans where state=1;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_planes_Update` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `usp_planes_Update`(in p_id_plans int,p_name_plan text,p_price_plan double(12,2),p_discount_plan varchar(10))
begin
UPDATE `db_0002`.`plans`
SET
`name_plan` = p_name_plan,
`price_plan` = p_price_plan,
`discount_plan` = p_discount_plan
WHERE `id_plans` = p_id_plans;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_products_Delete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `usp_products_Delete`(p_id_product BIGINT(20))
BEGIN

    START TRANSACTION;



    

    UPDATE   products

      SET status = 0

    WHERE  id_product = p_id_product;



    COMMIT;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_products_Insert` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `usp_products_Insert`(IN p_id_user INT(11),

     in p_id_subcategory INT(11),

     IN p_title VARCHAR(100),

     IN p_description VARCHAR(250),

     IN p_quantity INT(11),

     IN p_price DOUBLE(10, 2),

     IN p_state INT(11),

     IN p_x_latitude VARCHAR(50),

     IN p_y_latitude VARCHAR(50),

     IN p_photos_file json)
BEGIN

    #START TRANSACTION;



    INSERT INTO products (id_user, id_subcategory,title, description, quantity, price, state,x_latitude, y_latitude, photos_file, status)

    VALUES (p_id_user,p_id_subcategory,p_title, p_description, p_quantity, p_price, p_state,p_x_latitude, p_y_latitude, p_photos_file,1);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_products_Select_All` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `usp_products_Select_All`(in p_id_category int, p_id_subcategory int)
BEGIN

    #START TRANSACTION;



    SELECT id_product, id_user,ct.id_category,ct.title as category,pd.id_subcategory,sb.title as subcategory,pd.title, pd.description, quantity, price,pd.state,x_latitude, 

           y_latitude, photos_file, pd.status, pd.create_at, pd.update_at 

    FROM   products pd inner join `sub_category_products` sb on sb.id_subcategory=pd.id_subcategory

    INNER JOIN `category_products` ct ON ct.`id_category`=sb.id_category where
    ((p_id_category is null) or (ct.id_category  = p_id_category)) and
    ((p_id_subcategory is null) or (sb.id_subcategory  = p_id_subcategory));

    #COMMIT;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_products_Update` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `usp_products_Update`(IN p_id_product BIGINT(20),

  IN p_id_user INT(11),
  in p_id_subcategory INT(11),

  IN p_title VARCHAR(100),

  IN p_description VARCHAR(250),
  IN p_photos_file json,

  IN p_quantity INT(11),

  IN p_price DOUBLE(10, 2),

  IN p_state INT(11),

  IN p_x_latitude VARCHAR(50),

  IN p_y_latitude VARCHAR(50),

  

  IN p_status INT(11))
BEGIN

    #START TRANSACTION;



    UPDATE products

    SET    id_user = p_id_user,id_subcategory=p_id_subcategory,title = p_title, description = p_description, quantity = p_quantity, 

           price = p_price, state = p_state,x_latitude = p_x_latitude, 

           y_latitude = p_y_latitude, photos_file = p_photos_file, 

           status = p_status

    WHERE  id_product = p_id_product;



    #COMMIT;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_retry_Code` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `usp_retry_Code`(in p_id_user int,p_code varchar(4))
begin
update user set code=p_code where id_user=p_id_user;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_role_Delete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `usp_role_Delete`(IN
_id_role int)
BEGIN
update role set  status=0 where id_role=_id_role;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_role_Insert` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `usp_role_Insert`(IN 
_name varchar(50),
_create_at datetime,
_update_at datetime,
_status int)
BEGIN
insert into role (name,create_at,update_at,status) values (_name,_create_at,_update_at,_status);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_role_Select` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `usp_role_Select`()
BEGIN
SELECT * FROM role;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_role_Update` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `usp_role_Update`(IN
_id_role int, 
_name varchar(50),
_create_at datetime,
_update_at datetime,
_status int)
BEGIN
update role set  name=_name,create_at=_create_at,update_at=_update_at,status=_status where id_role=_id_role;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_session_Insert` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `usp_session_Insert`(in _id_user int,_user_session text)
BEGIN
  insert into user_session(id_user,user_session)values(_id_user,_user_session);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_shop_Delete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `usp_shop_Delete`(in p_id_shop int
)
begin

UPDATE `shop`
SET
status=0
WHERE `id_shop` = p_id_shop;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_shop_Insert` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `usp_shop_Insert`(in p_id_user int,
p_id_product int,
p_price double(12,2),
p_amount_shop int,
p_subTotal double(12,2),
p_Total double(12,2)
)
begin
INSERT INTO `db_0002`.`shop`
(`id_user`,
`id_product`,
`price`,
`amount_shop`,
`subTotal`,
`Total`)
VALUES
(p_id_user,
p_id_product,
p_price,
p_amount_shop,
p_subTotal,
p_Total);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_shop_Select` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `usp_shop_Select`()
begin
SELECT *
FROM shop where state=1;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_shop_Update` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `usp_shop_Update`(in p_id_shop int,p_id_user int,
p_id_product int,
p_price double(12,2),
p_amount_shop int,
p_subTotal double(12,2),
p_Total double(12,2)
)
begin

UPDATE `db_0002`.`shop`
SET
`id_user` = p_id_user,
`id_product` = p_id_product,
`price` = p_price,
`amount_shop` = p_amount_shop,
`subTotal` = p_subTotal,
`Total` = p_Total
WHERE `id_shop` = p_id_shop;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_sub_category_products_Delete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `usp_sub_category_products_Delete`(p_id_subcategory BIGINT(20))
BEGIN

    #START TRANSACTION;



    UPDATE  sub_category_products

     set status = 0

    WHERE  id_subcategory = p_id_subcategory;



    #COMMIT;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_sub_category_products_Insert` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `usp_sub_category_products_Insert`(IN p_id_category INT(11),

     IN p_title VARCHAR(255),

     IN p_description VARCHAR(100),

     IN p_status INT(11),

     IN p_create_at DATETIME,

     IN p_update_at DATETIME)
BEGIN

    #START TRANSACTION;



    INSERT INTO sub_category_products (id_category, title, description, status, create_at, update_at)

    VALUES (p_id_category, p_title, p_description, p_status, p_create_at, p_update_at);



    #COMMIT;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_sub_category_products_Select` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `usp_sub_category_products_Select`()
BEGIN

    #START TRANSACTION;



    SELECT id_subcategory, id_category, title, description, status, create_at, update_at 

    FROM   sub_category_products WHERE status = 1;

    #WHERE  id_subcategory = p_id_subcategory ;



    #COMMIT;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_sub_category_products_Select_All` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `usp_sub_category_products_Select_All`()
BEGIN

    #START TRANSACTION;



    SELECT id_subcategory, id_category, title, description, status, create_at, update_at 

    FROM   sub_category_products WHERE status = 1;

    #WHERE  id_subcategory = p_id_subcategory ;



    #COMMIT;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_sub_category_products_Update` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `usp_sub_category_products_Update`(IN p_id_subcategory BIGINT(20),

  IN p_id_category INT(11),

  IN p_title VARCHAR(255),

  IN p_description VARCHAR(100),

  IN p_status INT(11),

  IN p_create_at DATETIME,

  IN p_update_at DATETIME)
BEGIN

    #START TRANSACTION;



    UPDATE sub_category_products

    SET    id_category = p_id_category, title = p_title, description = p_description, status = p_status, 

           create_at = p_create_at, update_at = p_update_at

    WHERE  id_subcategory = p_id_subcategory;



  

    #COMMIT;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_user_Delete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `usp_user_Delete`(p_id_user BIGINT(20))
BEGIN

    #START TRANSACTION;



    

    UPDATE   user

      set status  = 0

    WHERE  id_user = p_id_user;



    #COMMIT;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_user_Insert` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `usp_user_Insert`(IN p_user text,

     IN p_pass text,

     IN p_type_user INT(11),

     IN p_status INT(11),

     IN p_create_at datetime,

     IN p_update_at datetime,
     IN p_code varchar(4))
BEGIN

    #START TRANSACTION;



    INSERT INTO user (user, pass,  type_user, status, create_at, 

                      update_at,code)

    VALUES (p_user, p_pass, p_type_user, p_status, p_create_at, 

            p_update_at,p_code);
    SELECT *from user order by id_user desc limit 1;  

    #COMMIT;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_user_Login` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `usp_user_Login`(IN p_user varchar(50))
BEGIN

    #START TRANSACTION;



    SELECT id_user,status,pass

    FROM   user

    WHERE  user = p_user;



    #COMMIT;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_user_Select` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `usp_user_Select`()
BEGIN

    #START TRANSACTION;

  

    SELECT *

    FROM   user

    WHERE  status=1;



    #COMMIT;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_user_Update` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `usp_user_Update`(IN p_id_user BIGINT(20),

  IN p_user text,
   IN p_pass text,
    IN p_type_user INT(11),

  IN p_status INT(11),

  IN p_create_at datetime,

  IN p_update_at datetime)
BEGIN

    #START TRANSACTION;



    UPDATE user

    SET    user = p_user, pass = p_pass, type_user = p_type_user, status = p_status, create_at = p_create_at, update_at = p_update_at

    WHERE  id_user = p_id_user;

    #COMMIT;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_verificar_Code` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `usp_verificar_Code`(in p_id_user int)
begin
update user set status=1,code='0000' where id_user=p_id_user;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-15 19:39:39
