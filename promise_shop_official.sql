CREATE DATABASE  IF NOT EXISTS `promise_shop` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `promise_shop`;
-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: promise_shop
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `app_roles`
--

DROP TABLE IF EXISTS `app_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `app_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_roles`
--

LOCK TABLES `app_roles` WRITE;
/*!40000 ALTER TABLE `app_roles` DISABLE KEYS */;
INSERT INTO `app_roles` VALUES (1,'ROLE_USER'),(2,'ROLE_ADMIN');
/*!40000 ALTER TABLE `app_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_details`
--

DROP TABLE IF EXISTS `cart_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cart_details` (
  `cart_detail_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `price` double DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `cart_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`cart_detail_id`),
  KEY `FKkcochhsa891wv0s9wrtf36wgt` (`cart_id`),
  KEY `FK9rlic3aynl3g75jvedkx84lhv` (`product_id`),
  CONSTRAINT `FK9rlic3aynl3g75jvedkx84lhv` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  CONSTRAINT `FKkcochhsa891wv0s9wrtf36wgt` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`cart_id`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_details`
--

LOCK TABLES `cart_details` WRITE;
/*!40000 ALTER TABLE `cart_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carts`
--

DROP TABLE IF EXISTS `carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `carts` (
  `cart_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `amount` double DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`cart_id`),
  KEY `FKb5o626f86h46m4s7ms6ginnop` (`user_id`),
  CONSTRAINT `FKb5o626f86h46m4s7ms6ginnop` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carts`
--

LOCK TABLES `carts` WRITE;
/*!40000 ALTER TABLE `carts` DISABLE KEYS */;
INSERT INTO `carts` VALUES (4,0,'29, Phường Ninh Sơn, Thành phố Tây Ninh, Tỉnh Tây Ninh','0343122138',5),(6,0,'22, Xã Trung Hòa, Huyện Chiêm Hóa, Tỉnh Tuyên Quang','0337689056',7),(7,0,'TP.HCM','0357575723',8);
/*!40000 ALTER TABLE `carts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `categories` (
  `category_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Áo Thun Local'),(2,'Áo Hoodie');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorites`
--

DROP TABLE IF EXISTS `favorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `favorites` (
  `favorite_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`favorite_id`),
  KEY `FK6sgu5npe8ug4o42bf9j71x20c` (`product_id`),
  KEY `FKk7du8b8ewipawnnpg76d55fus` (`user_id`),
  CONSTRAINT `FK6sgu5npe8ug4o42bf9j71x20c` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  CONSTRAINT `FKk7du8b8ewipawnnpg76d55fus` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorites`
--

LOCK TABLES `favorites` WRITE;
/*!40000 ALTER TABLE `favorites` DISABLE KEYS */;
INSERT INTO `favorites` VALUES (23,65,7);
/*!40000 ALTER TABLE `favorites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `notification` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `message` varchar(255) DEFAULT NULL,
  `status` bit(1) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification`
--

LOCK TABLES `notification` WRITE;
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
INSERT INTO `notification` VALUES (11,'Nguyễn Hiếu đã đặt một đơn hàng (11)',_binary '','2022-07-16 00:28:15'),(12,'Nguyễn Hiếu đã đặt một đơn hàng (12)',_binary '','2022-07-16 01:00:50'),(13,'Nguyễn Hiếu đã đặt một đơn hàng (13)',_binary '','2022-07-21 20:45:40'),(14,'Nguyễn Hiếu đã đặt một đơn hàng (14)',_binary '\0','2022-07-21 20:56:51'),(17,'Khách 1 đã đặt một đơn hàng (16)',_binary '\0','2022-07-23 22:42:16'),(18,'Khách 1 đã đặt một đơn hàng (17)',_binary '','2022-07-23 22:43:16'),(19,'Khách 1 đã huỷ một đơn hàng (17)',_binary '','2022-07-23 22:44:12'),(20,'Khách 1 đã đặt một đơn hàng (18)',_binary '\0','2022-07-23 22:52:28');
/*!40000 ALTER TABLE `notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_details`
--

DROP TABLE IF EXISTS `order_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `order_details` (
  `order_detail_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `price` double DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`order_detail_id`),
  KEY `FKjyu2qbqt8gnvno9oe9j2s2ldk` (`order_id`),
  KEY `FK4q98utpd73imf4yhttm3w0eax` (`product_id`),
  CONSTRAINT `FK4q98utpd73imf4yhttm3w0eax` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  CONSTRAINT `FKjyu2qbqt8gnvno9oe9j2s2ldk` FOREIGN KEY (`order_id`) REFERENCES `orders` (`orders_id`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_details`
--

LOCK TABLES `order_details` WRITE;
/*!40000 ALTER TABLE `order_details` DISABLE KEYS */;
INSERT INTO `order_details` VALUES (80,350000,1,11,59),(81,405000,1,12,60),(82,285000,1,13,56),(83,405000,1,14,60),(86,470000,2,16,65),(87,350000,1,16,61),(88,294000,1,17,57),(89,200000,1,18,69);
/*!40000 ALTER TABLE `order_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `orders` (
  `orders_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `order_date` datetime DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`orders_id`),
  KEY `FK32ql8ubntj5uh44ph9659tiih` (`user_id`),
  CONSTRAINT `FK32ql8ubntj5uh44ph9659tiih` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (11,'29, Xã Cát Hiệp, Huyện Phù Cát, Tỉnh Bình Định',350000,'2022-07-16 00:28:15','0343122138',2,5,''),(12,'29, Xã Cát Hiệp, Huyện Phù Cát, Tỉnh Bình Định',405000,'2022-07-16 01:00:50','0343122138',2,5,''),(13,'29, Xã Cát Hiệp, Huyện Phù Cát, Tỉnh Bình Định',285000,'2022-07-21 20:45:40','0343122138',2,5,''),(14,'29, Phường Ninh Sơn, Thành phố Tây Ninh, Tỉnh Tây Ninh',405000,'2022-07-21 20:56:51','0343122138',3,5,''),(16,'29, Phường 02, Quận Tân Bình, Thành phố Hồ Chí Minh',820000,'2022-07-23 22:42:16','0337689056',2,7,''),(17,'34, Xã Bảo Toàn, Huyện Bảo Lạc, Tỉnh Cao Bằng',294000,'2022-07-23 22:43:16','0337689056',3,7,''),(18,'22, Xã Trung Hòa, Huyện Chiêm Hóa, Tỉnh Tuyên Quang',200000,'2022-07-23 22:52:28','0337689056',2,7,'');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `products` (
  `product_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(1000) DEFAULT NULL,
  `discount` int(11) NOT NULL,
  `entered_date` date DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `sold` int(11) NOT NULL,
  `status` bit(1) DEFAULT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`product_id`),
  KEY `FKog2rp4qthbtt2lfyhfo32lsw9` (`category_id`),
  CONSTRAINT `FKog2rp4qthbtt2lfyhfo32lsw9` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (56,'Áo đẹp',0,'2022-07-15','https://res.cloudinary.com/nguyenhieu1010/image/upload/v1657905047/j5e09lojbinq7q1ud7tu.webp','Áo Promise 1',285000,44,1,_binary '',1),(57,'Áo đẹp',2,'2022-07-15','https://res.cloudinary.com/nguyenhieu1010/image/upload/v1657905175/lb4gobxz87eyx1rrud0y.jpg','Áo thun Now Sai Gon Black',300000,45,0,_binary '',1),(58,'Áo đẹp',0,'2022-07-15','https://res.cloudinary.com/nguyenhieu1010/image/upload/v1657905409/xnrqj6ek3fv8d0lzstrd.webp','SWE KNIT HOODIE - BLACK',285000,100,0,_binary '',2),(59,'Áo đẹp',0,'2022-07-15','https://res.cloudinary.com/nguyenhieu1010/image/upload/v1657905747/xcbcolxlwt9s0hlwcect.webp','Áo DirtyCoins x 16Typh The Eyes T-Shirt',350000,149,1,_binary '',1),(60,'Áo chất lượng',10,'2022-07-15','https://res.cloudinary.com/nguyenhieu1010/image/upload/v1657907924/stqwkdsxb2zjllvarwg5.webp','Áo DSS Hoodie Zipper White',450000,299,1,_binary '',2),(61,'Áo chất lượng, vải dày',0,'2022-07-15','https://res.cloudinary.com/nguyenhieu1010/image/upload/v1657908142/scs2zogqufesow21rnjb.webp','DSS Hoodie Zipper Black',350000,339,1,_binary '',2),(62,'Áo đẹp, dày',0,'2022-07-15','https://res.cloudinary.com/nguyenhieu1010/image/upload/v1657908215/setqosjbdizksxblwyzc.jpg','Mental Hoodie SWE',385000,400,0,_binary '',2),(63,'Áo đẹp lắm',0,'2022-07-15','https://res.cloudinary.com/nguyenhieu1010/image/upload/v1657908262/zrnowml61slfvjwo9gsr.jpg','Áo Promise 2',200000,250,0,_binary '',1),(64,'Áo đẹp lắm',0,'2022-07-15','https://res.cloudinary.com/nguyenhieu1010/image/upload/v1657908994/nupezxod86rtf4wiuayx.webp','Áo Thun Bob-T-Shirts Tan',225000,200,0,_binary '',1),(65,'Áo đẹp lắm',0,'2022-07-15','https://res.cloudinary.com/nguyenhieu1010/image/upload/v1657909048/x8ggcnjte5haljutvjju.webp','Áo Thun Dirtycoins Y Basic',235000,178,2,_binary '',1),(66,'Áo đẹp',0,'2022-07-21','https://res.cloudinary.com/nguyenhieu1010/image/upload/v1658410508/klljzmwg2hbkwcdhdnes.webp','Áo Thun Fukyba T-Shirt 3',285000,35,0,_binary '',1),(67,'Áo đẹp',0,'2022-07-21','https://res.cloudinary.com/nguyenhieu1010/image/upload/v1658410688/d9xnc02nn2tpooowvirz.webp','Áo Thun Monarch Butterfly',300000,80,0,_binary '',1),(68,'Áo đẹp',5,'2022-07-23','https://res.cloudinary.com/nguyenhieu1010/image/upload/v1658591411/v7fcubj5nmvrim5bxqru.webp','Áo Promise23',300000,34,0,_binary '\0',1),(69,'Áo đẹp',0,'2022-07-23','https://res.cloudinary.com/nguyenhieu1010/image/upload/v1658591499/rdpab9bguu7zcezhyhxf.webp','Áo Promise 13',200000,0,1,_binary '',1);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rates`
--

DROP TABLE IF EXISTS `rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `rates` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `comment` varchar(255) DEFAULT NULL,
  `rate_date` datetime DEFAULT NULL,
  `rating` double DEFAULT NULL,
  `order_detail_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKoesgfm245y1ula1pn74fw9mkk` (`order_detail_id`),
  KEY `FK4mdsmkrr7od84tpgxto2v3t2e` (`product_id`),
  KEY `FKanlgavwqngljux10mtly8qr6f` (`user_id`),
  CONSTRAINT `FK4mdsmkrr7od84tpgxto2v3t2e` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  CONSTRAINT `FKanlgavwqngljux10mtly8qr6f` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `FKoesgfm245y1ula1pn74fw9mkk` FOREIGN KEY (`order_detail_id`) REFERENCES `order_details` (`order_detail_id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rates`
--

LOCK TABLES `rates` WRITE;
/*!40000 ALTER TABLE `rates` DISABLE KEYS */;
INSERT INTO `rates` VALUES (43,'Áo như hình','2022-07-16 00:50:52',5,80,59,5,'https://res.cloudinary.com/nguyenhieu1010/image/upload/v1657907505/b7wetu05r8g8ujwmr1id.jpg'),(44,'áo ok','2022-07-23 22:46:28',5,86,65,7,'https://res.cloudinary.com/nguyenhieu1010/image/upload/v1658591202/ubmyymkzysascbz0ydwr.webp'),(45,'áo tạm được','2022-07-23 22:46:28',3,87,61,7,'https://res.cloudinary.com/nguyenhieu1010/image/upload/v1658591220/awnrfccxcu89rztjxp8y.jpg');
/*!40000 ALTER TABLE `rates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user_roles` (
  `user_id` bigint(20) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FKihg20vygk8qb8lw0s573lqsmq` (`role_id`),
  CONSTRAINT `FKhfh9dx7w3ubf1co1vdev94g3f` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `FKihg20vygk8qb8lw0s573lqsmq` FOREIGN KEY (`role_id`) REFERENCES `app_roles` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` VALUES (5,1),(7,1),(8,1),(2,2);
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `users` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gender` bit(1) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `register_date` date DEFAULT NULL,
  `status` bit(1) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (2,'Bình Định','Nguyenvanhieu.official@gmail.com',_binary '','https://res.cloudinary.com/nguyenhieu1010/image/upload/v1657905325/k3y7xomjk9facyktrsuq.jpg','Admin Promise','$2a$10$yvcT5zT/lDrM89Lofss6GeF0icqluuVVxo2QX4BehAh75k.eAzFIe','0343122138','2022-03-20',_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJncmVlbnlzaG9wLmFkbUBnbWFpbC5jb20iLCJzY29wZXMiOlt7ImF1dGhvcml0eSI6IlJPTEVfQURNSU4ifV0sImlzcyI6Imh0dHA6Ly9kZXZnbGFuLmNvbSIsImlhdCI6MTY0Nzc4MjE4MywiZXhwIjoxNjQ3ODAwMTgzfQ.cLQLN6HPjClhuJFdBro1WHKEKfA7wYbBa3Eg3uHfNAE'),(5,'Bình Định','yokinguyen2000@gmail.com',_binary '','https://res.cloudinary.com/nguyenhieu1010/image/upload/v1657906495/naf61obkncbz00zgqhhp.jpg','Nguyễn Hiếu','$2a$10$epyiPjqHkHyk8eHoZMfXhu2NfnoYDnwMHRQHhY8N4Eg5mdHQDiwma','0343122138','2022-07-15',_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ5b2tpbmd1eWVuMjAwMEBnbWFpbC5jb20iLCJzY29wZXMiOlt7ImF1dGhvcml0eSI6IlJPTEVfQURNSU4ifV0sImlzcyI6Imh0dHA6Ly9kZXZnbGFuLmNvbSIsImlhdCI6MTY1NzkwNjAzMCwiZXhwIjoxNjU3OTI0MDMwfQ.s5Qy4Jc_fWkiqPU1iqYyTT3CE9IMpP1X8bmxb8LisIU'),(7,'Bình Định','yokiinguyen@gmail.com',_binary '','https://res.cloudinary.com/nguyenhieu1010/image/upload/v1658591870/h1snufwbzseguykhwvvo.jpg','Khách 1','$2a$10$WYIKOnV8NoKBgiL8xXefweucAM2VY3iqi7BRqNx.UXjQOn7AovpcS','0337689056','2022-07-23',_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ5b2tpaW5ndXllbkBnbWFpbC5jb20iLCJzY29wZXMiOlt7ImF1dGhvcml0eSI6IlJPTEVfQURNSU4ifV0sImlzcyI6Imh0dHA6Ly9kZXZnbGFuLmNvbSIsImlhdCI6MTY1ODU5MDg1OCwiZXhwIjoxNjU4NjA4ODU4fQ.ab0BWgP21MtrEZNODFPartIFAWfgU6VLUTLpIAY3nms'),(8,'TP.HCM','cus@gmail.com',_binary '','https://res.cloudinary.com/nguyenhieu1010/image/upload/v1658591317/ai3ttcqriepjgjdqfwue.jpg','cus1','$2a$10$Xke/VOAzo4gDCAm5w7.Pfe10XZ4XrVz35d3KcdHZkBx1/DDeDi3nS','0357575723','2022-07-23',_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJjdXNAZ21haWwuY29tIiwic2NvcGVzIjpbeyJhdXRob3JpdHkiOiJST0xFX0FETUlOIn1dLCJpc3MiOiJodHRwOi8vZGV2Z2xhbi5jb20iLCJpYXQiOjE2NTg1OTEzMTksImV4cCI6MTY1ODYwOTMxOX0.7fzGiUH6sEKzcTtrrIlyphaOxmVsfX7eHqvtMcLFUjE');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'promise_shop'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-23 23:01:41
