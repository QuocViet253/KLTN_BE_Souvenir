-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: promise_shop
-- ------------------------------------------------------
-- Server version	8.0.31

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

--
-- Table structure for table `app_roles`
--

DROP TABLE IF EXISTS `app_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_roles` (
  `id` int NOT NULL AUTO_INCREMENT,
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_details` (
  `cart_detail_id` bigint NOT NULL AUTO_INCREMENT,
  `price` double DEFAULT NULL,
  `quantity` int NOT NULL,
  `cart_id` bigint DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  PRIMARY KEY (`cart_detail_id`),
  KEY `FKkcochhsa891wv0s9wrtf36wgt` (`cart_id`),
  KEY `FK9rlic3aynl3g75jvedkx84lhv` (`product_id`),
  CONSTRAINT `FK9rlic3aynl3g75jvedkx84lhv` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  CONSTRAINT `FKkcochhsa891wv0s9wrtf36wgt` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`cart_id`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_details`
--

LOCK TABLES `cart_details` WRITE;
/*!40000 ALTER TABLE `cart_details` DISABLE KEYS */;
INSERT INTO `cart_details` VALUES (114,145800,1,9,59),(115,116400,1,9,64);
/*!40000 ALTER TABLE `cart_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carts`
--

DROP TABLE IF EXISTS `carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carts` (
  `cart_id` bigint NOT NULL AUTO_INCREMENT,
  `amount` double DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`cart_id`),
  KEY `FKb5o626f86h46m4s7ms6ginnop` (`user_id`),
  CONSTRAINT `FKb5o626f86h46m4s7ms6ginnop` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carts`
--

LOCK TABLES `carts` WRITE;
/*!40000 ALTER TABLE `carts` DISABLE KEYS */;
INSERT INTO `carts` VALUES (1,3,'Tan Binh','0925305279',2),(9,0,'123, Xã Ninh Tây, Thị xã Ninh Hòa, Tỉnh Khánh Hòa','0764164951',5),(12,0,'213, Xã Phúc Yên, Huyện Lâm Bình, Tỉnh Tuyên Quang','0925305279',13);
/*!40000 ALTER TABLE `carts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `category_id` bigint NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Vòng lắc tay'),(2,'Khăn choàng cổ'),(7,'Thú bông'),(8,'Móc khóa'),(9,'Dây chuyền'),(10,'Đồ thủ công mỹ nghệ'),(11,'Tranh'),(12,'Đèn ngủ'),(13,'Tượng'),(14,'Đồng hồ đeo tay');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorites`
--

DROP TABLE IF EXISTS `favorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `favorites` (
  `favorite_id` bigint NOT NULL AUTO_INCREMENT,
  `product_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`favorite_id`),
  KEY `FK6sgu5npe8ug4o42bf9j71x20c` (`product_id`),
  KEY `FKk7du8b8ewipawnnpg76d55fus` (`user_id`),
  CONSTRAINT `FK6sgu5npe8ug4o42bf9j71x20c` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  CONSTRAINT `FKk7du8b8ewipawnnpg76d55fus` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorites`
--

LOCK TABLES `favorites` WRITE;
/*!40000 ALTER TABLE `favorites` DISABLE KEYS */;
INSERT INTO `favorites` VALUES (30,74,5),(31,75,5),(35,63,5),(36,56,13),(37,78,13),(38,77,13);
/*!40000 ALTER TABLE `favorites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notification` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `message` varchar(255) DEFAULT NULL,
  `status` bit(1) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification`
--

LOCK TABLES `notification` WRITE;
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
INSERT INTO `notification` VALUES (21,'Đoàn Quốc Việt đã đặt một đơn hàng (19)',_binary '','2023-04-08 00:58:44'),(22,'Đoàn Quốc Việt đã đặt một đơn hàng (20)',_binary '\0','2023-04-08 08:21:56'),(23,'Đoàn Quốc Việt đã đặt một đơn hàng (21)',_binary '','2023-04-09 12:32:45'),(24,'Đoàn Quốc Việt đã đặt một đơn hàng (22)',_binary '','2023-04-14 21:17:40'),(25,'Đoàn Quốc Việt đã đặt một đơn hàng (23)',_binary '','2023-04-14 21:42:29'),(26,'Nguyễn Thị Hương đã đặt một đơn hàng (24)',_binary '\0','2023-04-21 12:33:53'),(27,'Nguyễn Thị Hương đã đặt một đơn hàng (25)',_binary '\0','2023-04-21 12:40:40'),(28,'Nguyễn Thị Hương đã đặt một đơn hàng (26)',_binary '\0','2023-04-30 10:38:54');
/*!40000 ALTER TABLE `notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_details`
--

DROP TABLE IF EXISTS `order_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_details` (
  `order_detail_id` bigint NOT NULL AUTO_INCREMENT,
  `price` double DEFAULT NULL,
  `quantity` int NOT NULL,
  `order_id` bigint DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  PRIMARY KEY (`order_detail_id`),
  KEY `FKjyu2qbqt8gnvno9oe9j2s2ldk` (`order_id`),
  KEY `FK4q98utpd73imf4yhttm3w0eax` (`product_id`),
  CONSTRAINT `FK4q98utpd73imf4yhttm3w0eax` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  CONSTRAINT `FKjyu2qbqt8gnvno9oe9j2s2ldk` FOREIGN KEY (`order_id`) REFERENCES `orders` (`orders_id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_details`
--

LOCK TABLES `order_details` WRITE;
/*!40000 ALTER TABLE `order_details` DISABLE KEYS */;
INSERT INTO `order_details` VALUES (90,142500,3,19,72),(91,116400,1,19,64),(92,100000,1,19,74),(93,282000,1,19,60),(94,90000,1,20,76),(95,90000,1,21,76),(96,1050000,5,21,61),(97,709800,3,22,65),(98,236600,1,23,65),(99,583200,4,23,59),(100,846000,3,23,60),(101,50000,1,24,77),(102,270000,1,24,70),(103,145800,1,25,59),(104,282000,1,25,60),(105,142499.05,1,26,56),(106,145800,1,26,59),(107,385000,1,26,62),(108,150000,1,26,63),(109,90000,1,26,76);
/*!40000 ALTER TABLE `order_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `orders_id` bigint NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `order_date` datetime DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `status` int NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`orders_id`),
  KEY `FK32ql8ubntj5uh44ph9659tiih` (`user_id`),
  CONSTRAINT `FK32ql8ubntj5uh44ph9659tiih` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (19,'12344, Xã Thượng Hà, Huyện Bảo Lạc, Tỉnh Cao Bằng',640900,'2023-04-08 00:58:43','0764164951',2,5,''),(20,'123asd, Xã Liên Bão, Huyện Tiên Du, Tỉnh Bắc Ninh',90000,'2023-04-08 08:21:56','0764164951',2,5,''),(21,'Thủ Đức, Xã Đồng Loan, Huyện Hạ Lang, Tỉnh Cao Bằng',1140000,'2023-04-09 12:32:45','0764164951',2,5,''),(22,'abc123, Xã Tát Ngà, Huyện Mèo Vạc, Tỉnh Hà Giang',709800,'2023-04-14 21:17:40','0764164951',2,5,''),(23,'123, Xã Ninh Tây, Thị xã Ninh Hòa, Tỉnh Khánh Hòa',1665800,'2023-04-14 21:42:29','0764164951',2,5,''),(24,'416, Thi Hồ, Xã Ma Thì Hồ, Huyện Mường Chà, Tỉnh Điện Biên',320000,'2023-04-21 12:33:53','0925305279',3,13,''),(25,'312, Phường Dịch Vọng, Quận Cầu Giấy, Thành phố Hà Nội',427800,'2023-04-21 12:40:40','0925305279',2,13,''),(26,'213, Xã Phúc Yên, Huyện Lâm Bình, Tỉnh Tuyên Quang',913299.05,'2023-04-30 10:38:54','0925305279',0,13,'');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `product_id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(1000) DEFAULT NULL,
  `discount` int NOT NULL,
  `entered_date` date DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `quantity` int NOT NULL,
  `sold` int NOT NULL,
  `status` bit(1) DEFAULT NULL,
  `category_id` bigint DEFAULT NULL,
  PRIMARY KEY (`product_id`),
  KEY `FKog2rp4qthbtt2lfyhfo32lsw9` (`category_id`),
  CONSTRAINT `FKog2rp4qthbtt2lfyhfo32lsw9` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (56,'- 100% làm bằng bạc.\n- Nhẹ, lấp lánh.\n- Bảo hành 1 tháng.',5,'2023-03-20','https://res.cloudinary.com/nguyenhieu1010/image/upload/v1680412655/gmscdfaohe0b8qu5m1ak.png','Vòng lắc tay nữ bạc (Trang trí vuông)',149999,100,1,_binary '',1),(59,'- 100% làm bằng bạc.\n- Nhẹ, lấp lánh.\n- Bảo hành 1 tháng.\n',10,'2023-04-01','https://res.cloudinary.com/nguyenhieu1010/image/upload/v1680412914/kh7fuua7igbif9nck53s.png','Vòng lắc tay nữ bạc (Trang trí tròn)',162000,195,6,_binary '',1),(60,'- Thanh lịch\n- Trẻ trung\n- 100% vải xịn',6,'2023-04-01','https://res.cloudinary.com/nguyenhieu1010/image/upload/v1680700873/vja6tuupazsxumzvgxed.png','Khăn choàng cổ Eleanor 1',300000,294,6,_binary '',2),(61,'- Tinh tế\n- Thoải mái\n- Thu hút mọi ánh nhìn\n- 100% vải xịn',0,'2023-04-01','https://res.cloudinary.com/nguyenhieu1010/image/upload/v1680701036/q9fpryvnpoba7vg4ppia.png','Khăn choàng cổ Eleanor 2',210000,334,6,_binary '',2),(62,'- Tinh tế\n- 100% vải xịn',0,'2023-04-02','https://res.cloudinary.com/nguyenhieu1010/image/upload/v1680701206/alss7h7ukcsrlhpxi1km.png','Khăn choàng cổ Eleanor 3',385000,400,0,_binary '',2),(63,'- 100% làm bằng bạc.\n- Nhẹ, lấp lánh.\n- Bảo hành 1 tháng.',0,'2023-04-03','https://res.cloudinary.com/nguyenhieu1010/image/upload/v1680699666/ekoj30ntzxdxpq14hzgc.png','Vòng lắc tay nữ bạc (Trang trí tim)',150000,19,0,_binary '',1),(64,'- 100% làm bằng bạc.\n- Nhẹ, lấp lánh.\n- Bảo hành 1 tháng.',3,'2023-04-03','https://res.cloudinary.com/nguyenhieu1010/image/upload/v1680700603/j8rffl7uux5ohbci22ib.png','Vòng lắc tay nữ bạc (Trang trí tim nhỏ)',120000,29,1,_binary '',1),(65,'- 100% làm bằng bạc.\n- Nhẹ, lấp lánh.\n- Bảo hành 1 tháng.',9,'2023-04-02','https://res.cloudinary.com/nguyenhieu1010/image/upload/v1680700702/bhttidnlwwb97bjl5hpw.png','Vòng lắc tay nữ bạc (Trang trí ngôi sao)',260000,206,6,_binary '',1),(70,'- Mịn màng\n- Nhẹ nhàng\n- 100% vải xịn',10,'2023-04-05','https://res.cloudinary.com/nguyenhieu1010/image/upload/v1680702414/e8vkvkigr1ry6ip4ypwn.png','Khăn choàng cổ Eleanor 4',300000,100,0,_binary '',2),(71,'- Hồng trắng nữ tính.\n- 100% vải tốt.',2,'2023-04-05','https://res.cloudinary.com/nguyenhieu1010/image/upload/v1680702217/i2hgn5e6hw6uvjtnjfm9.png','Khăn choàng cổ Eleanor 5',210000,20,0,_binary '',2),(72,'- 100% làm bằng cotton loại tốt.\n- Không bị phai màu.\n- Mịn màng',5,'2023-04-05','https://res.cloudinary.com/nguyenhieu1010/image/upload/v1680703279/ko8koh3vdbatavf1cyg2.png','Gấu bông kem dễ thương',50000,497,3,_binary '',7),(73,'- 100% cotton loại tốt\n- Mịn, hàng Mỹ',5,'2023-04-05','https://res.cloudinary.com/nguyenhieu1010/image/upload/v1680705466/etbzbfjloohvcvbrjhza.png','Gấu bông thỏ xanh',180000,21,0,_binary '',7),(74,'- 100% cotton loại tốt\n- Không bị xù sau 1 thời gian',0,'2023-04-05','https://res.cloudinary.com/nguyenhieu1010/image/upload/v1680705515/bzbstsee1di51uedyp6t.png','Gấu bông mèo đen',100000,99,1,_binary '',7),(75,'- Dễ thương\n- Mịn',4,'2023-04-05','https://res.cloudinary.com/nguyenhieu1010/image/upload/v1680705863/jwfrkdpbilmomsdywgu4.png','Gấu bông chó Shiba',180000,59,0,_binary '',7),(76,'- Dễ thương\n- Dành cho nữ',0,'2023-04-05','https://res.cloudinary.com/nguyenhieu1010/image/upload/v1680705947/uwkjdzgvvnxqq5vdojzl.png','Gấu bông hồng',90000,26,2,_binary '',7),(77,'- Mang ý nghĩa tượng trưng cho dân làng chài biển\n- Làm ra từ những đôi tay của những người thợ chuyên nghiệp ',0,'2023-04-21','https://res.cloudinary.com/nguyenhieu1010/image/upload/v1682047140/hultwnhmvdmydstgeuy0.jpg','Thuyền buồm',50000,10,0,_binary '',10),(78,'- Làm bằng sơn dầu 100%\n- Được họa sĩ chuyên nghiệp vẽ',5,'2023-04-21','https://res.cloudinary.com/nguyenhieu1010/image/upload/v1682087386/su2xtkexqxn1f3zhqr1u.jpg','Tranh lưu niệm 1',1200000,5,0,_binary '',11),(79,'- Tranh vẽ từ những thợ vẽ chuyên nghiệp\n- Miễn phí vẽ lại trong vòng 1 tháng',4,'2023-04-21','https://res.cloudinary.com/nguyenhieu1010/image/upload/v1682087608/jg1wtqwimhxyc9wmh9lx.jpg','Tranh lưu niệm 2',2600000,3,0,_binary '\0',11),(80,'- Làm bằng đồng 100%\n- Sáng bóng',5,'2023-04-21','https://res.cloudinary.com/nguyenhieu1010/image/upload/v1682087693/feumig7fu9as1eiqf390.jpg','Tranh đồng phong thủy',5400000,6,0,_binary '\0',11);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rates`
--

DROP TABLE IF EXISTS `rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rates` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `comment` varchar(255) DEFAULT NULL,
  `rate_date` datetime DEFAULT NULL,
  `rating` double DEFAULT NULL,
  `order_detail_id` bigint DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKoesgfm245y1ula1pn74fw9mkk` (`order_detail_id`),
  KEY `FK4mdsmkrr7od84tpgxto2v3t2e` (`product_id`),
  KEY `FKanlgavwqngljux10mtly8qr6f` (`user_id`),
  CONSTRAINT `FK4mdsmkrr7od84tpgxto2v3t2e` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  CONSTRAINT `FKanlgavwqngljux10mtly8qr6f` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `FKoesgfm245y1ula1pn74fw9mkk` FOREIGN KEY (`order_detail_id`) REFERENCES `order_details` (`order_detail_id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rates`
--

LOCK TABLES `rates` WRITE;
/*!40000 ALTER TABLE `rates` DISABLE KEYS */;
INSERT INTO `rates` VALUES (1,'Tốt, xịn sò','2023-04-08 00:58:43',5,90,63,5,'https://res.cloudinary.com/nguyenhieu1010/image/upload/v1654613095/product-image/jq4drid7ttqsxwd15xn9_wrd53p.jpg'),(46,'Giao hàng lâu','2023-04-14 21:25:31',5,97,65,5,'https://res.cloudinary.com/nguyenhieu1010/image/upload/v1654613095/product-image/jq4drid7ttqsxwd15xn9_wrd53p.jpg'),(47,'Tốt','2023-04-14 21:46:03',4,95,76,5,'https://res.cloudinary.com/nguyenhieu1010/image/upload/v1681483597/ehbnrvm9pujxmaefvxu2.png');
/*!40000 ALTER TABLE `rates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_roles` (
  `user_id` bigint NOT NULL,
  `role_id` int NOT NULL,
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
INSERT INTO `user_roles` VALUES (5,1),(7,1),(8,1),(13,1),(2,2);
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` bigint NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (2,'Bình Định','vdoan253@gmail.com',_binary '','https://res.cloudinary.com/nguyenhieu1010/image/upload/v1678627257/jqlts37w1fwtjiq4xkb5.jpg','Admin Promise','$2a$10$BEWDVwu/8MZdD2iEm/cK6.Jkh1Auaf2LN9x9QQQPKPBXJnogt/1Pe','0343122138','2022-03-20',_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJncmVlbnlzaG9wLmFkbUBnbWFpbC5jb20iLCJzY29wZXMiOlt7ImF1dGhvcml0eSI6IlJPTEVfQURNSU4ifV0sImlzcyI6Imh0dHA6Ly9kZXZnbGFuLmNvbSIsImlhdCI6MTY0Nzc4MjE4MywiZXhwIjoxNjQ3ODAwMTgzfQ.cLQLN6HPjClhuJFdBro1WHKEKfA7wYbBa3Eg3uHfNAE'),(5,'TP.HCM','19110314@student.hcmute.edu.vn',_binary '','https://res.cloudinary.com/nguyenhieu1010/image/upload/v1679929408/rujhqrkxvmdlaowdlvqs.jpg','Đoàn Quốc Việt','$2a$10$9rHaM4erL4TMxYLbStJAge3uP0swDvlWTzdG9qrb5oPjtQOUFLWn2','0925305279','2022-07-15',_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ5b2tpbmd1eWVuMjAwMEBnbWFpbC5jb20iLCJzY29wZXMiOlt7ImF1dGhvcml0eSI6IlJPTEVfQURNSU4ifV0sImlzcyI6Imh0dHA6Ly9kZXZnbGFuLmNvbSIsImlhdCI6MTY1NzkwNjAzMCwiZXhwIjoxNjU3OTI0MDMwfQ.s5Qy4Jc_fWkiqPU1iqYyTT3CE9IMpP1X8bmxb8LisIU'),(7,'Bình Định','yokiinguyen@gmail.com',_binary '','https://res.cloudinary.com/nguyenhieu1010/image/upload/v1658591870/h1snufwbzseguykhwvvo.jpg','Khách 1','$2a$10$WYIKOnV8NoKBgiL8xXefweucAM2VY3iqi7BRqNx.UXjQOn7AovpcS','0337689056','2022-07-23',_binary '\0','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ5b2tpaW5ndXllbkBnbWFpbC5jb20iLCJzY29wZXMiOlt7ImF1dGhvcml0eSI6IlJPTEVfQURNSU4ifV0sImlzcyI6Imh0dHA6Ly9kZXZnbGFuLmNvbSIsImlhdCI6MTY1ODU5MDg1OCwiZXhwIjoxNjU4NjA4ODU4fQ.ab0BWgP21MtrEZNODFPartIFAWfgU6VLUTLpIAY3nms'),(8,'TP.HCM','cus@gmail.com',_binary '','https://res.cloudinary.com/nguyenhieu1010/image/upload/v1658591317/ai3ttcqriepjgjdqfwue.jpg','cus1','$2a$10$Xke/VOAzo4gDCAm5w7.Pfe10XZ4XrVz35d3KcdHZkBx1/DDeDi3nS','0357575723','2022-07-23',_binary '\0','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJjdXNAZ21haWwuY29tIiwic2NvcGVzIjpbeyJhdXRob3JpdHkiOiJST0xFX0FETUlOIn1dLCJpc3MiOiJodHRwOi8vZGV2Z2xhbi5jb20iLCJpYXQiOjE2NTg1OTEzMTksImV4cCI6MTY1ODYwOTMxOX0.7fzGiUH6sEKzcTtrrIlyphaOxmVsfX7eHqvtMcLFUjE'),(13,'416 ấp Ngũ Phúc, xã Hố Nai 3, huyện Trảng Bom, tỉnh Đồng Nai','huong707396@gmail.com',_binary '','https://res.cloudinary.com/nguyenhieu1010/image/upload/v1681981257/eblxjlsu03pxarloohj7.jpg','Nguyễn Thị Hương','$2a$10$gGCcmzFpuvaHdbJYla85YuG68RU2bgef/Y3v8I/.0QZ4FrXIH0C4u','0925305279','2023-04-20',_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJodW9uZzcwNzM5NkBnbWFpbC5jb20iLCJzY29wZXMiOlt7ImF1dGhvcml0eSI6IlJPTEVfQURNSU4ifV0sImlzcyI6Imh0dHA6Ly9kZXZnbGFuLmNvbSIsImlhdCI6MTY4MTk4MTI2MCwiZXhwIjoxNjgxOTk5MjYwfQ.7IqESNlK9QOtSf7GrOTnL20f7BTnI12IBq1GyU0v_J4');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-29 18:31:58
