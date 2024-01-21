-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: udemy
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `cart_details`
--

DROP TABLE IF EXISTS `cart_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cart_id` int NOT NULL,
  `course_id` int NOT NULL,
  `amount` int DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `cart_id` (`cart_id`),
  KEY `course_id` (`course_id`),
  CONSTRAINT `cart_details_ibfk_1` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`id`),
  CONSTRAINT `cart_details_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_details`
--

LOCK TABLES `cart_details` WRITE;
/*!40000 ALTER TABLE `cart_details` DISABLE KEYS */;
INSERT INTO `cart_details` VALUES (17,2,56,1,'2024-01-19 18:48:19'),(18,2,57,1,'2024-01-19 18:48:46');
/*!40000 ALTER TABLE `cart_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carts`
--

DROP TABLE IF EXISTS `carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `carts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carts`
--

LOCK TABLES `carts` WRITE;
/*!40000 ALTER TABLE `carts` DISABLE KEYS */;
INSERT INTO `carts` VALUES (2,72,'2024-01-19 18:06:04'),(3,71,'2024-01-19 18:47:10');
/*!40000 ALTER TABLE `carts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Kỹ năng ngoại ngữ','/static/imgs/categories/language.webp','language'),(2,'Phát triển bản thân','/static/imgs/categories/development.webp','self-development'),(3,'Sales, bán hàng','/static/imgs/categories/sales.webp','sales'),(4,'Phong cách sống','/static/imgs/categories/life.webp','life'),(5,'Thiết kế đồ hoạ','/static/imgs/categories/graphic.webp','graphics'),(6,'Tin học văn phòng','/static/imgs/categories/computer.webp','computer'),(7,'Công nghệ thông tin','/static/imgs/categories/it.webp','it'),(8,'Nhiếp ảnh, quay phim','/static/imgs/categories/video.webp','camera'),(9,'Marketing','/static/imgs/categories/marketing.webp','marketing'),(10,'Kinh doanh khởi nghiệp','/static/imgs/categories/startup.webp','startup'),(11,'Sức khoẻ - Giới tính','/static/imgs/categories/health.webp','health'),(12,'Gia đình','/static/imgs/categories/family.webp','family');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `checkout_details`
--

DROP TABLE IF EXISTS `checkout_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `checkout_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `amount` int NOT NULL DEFAULT '1',
  `checkout_id` int NOT NULL,
  `course_id` int NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `checkout_id` (`checkout_id`),
  KEY `course_id` (`course_id`),
  CONSTRAINT `checkout_details_ibfk_1` FOREIGN KEY (`checkout_id`) REFERENCES `checkouts` (`id`),
  CONSTRAINT `checkout_details_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `checkout_details`
--

LOCK TABLES `checkout_details` WRITE;
/*!40000 ALTER TABLE `checkout_details` DISABLE KEYS */;
INSERT INTO `checkout_details` VALUES (3,1,21,1,'2024-01-19 18:47:13'),(4,1,22,5,'2024-01-19 18:50:31'),(5,1,22,4,'2024-01-19 18:50:31'),(6,1,23,1,'2024-01-19 19:39:10');
/*!40000 ALTER TABLE `checkout_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `checkouts`
--

DROP TABLE IF EXISTS `checkouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `checkouts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cart_id` int NOT NULL,
  `total_amount` double DEFAULT NULL,
  `discount` double DEFAULT '0',
  `payment_status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `cart_id` (`cart_id`),
  CONSTRAINT `checkouts_ibfk_1` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `checkouts`
--

LOCK TABLES `checkouts` WRITE;
/*!40000 ALTER TABLE `checkouts` DISABLE KEYS */;
INSERT INTO `checkouts` VALUES (21,3,700000,0,'NOT PAID','2024-01-19 11:47:13'),(22,3,7900000,0,'PAID','2024-01-19 11:50:31'),(23,3,700000,0,'PAID','2024-01-19 12:39:10');
/*!40000 ALTER TABLE `checkouts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `category_id` int NOT NULL,
  `level_id` int NOT NULL,
  `new_course` tinyint NOT NULL DEFAULT '1',
  `popular_course` tinyint NOT NULL DEFAULT '0',
  `price` double DEFAULT NULL,
  `sale_price` double DEFAULT '0',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `teacher_id` int NOT NULL,
  `is_delete` tinyint(1) unsigned zerofill NOT NULL DEFAULT '0',
  `slug` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_courses_categories_idx` (`category_id`),
  KEY `fk_courses_levels1_idx` (`level_id`),
  CONSTRAINT `fk_courses_categories` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  CONSTRAINT `fk_courses_levels1` FOREIGN KEY (`level_id`) REFERENCES `levels` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (1,'Hướng dẫn sử dụng Illutrator cho người mới bắt đầu',7,1,1,1,1200000,700000,'<p><span style=\"font-size: 14pt;\">Illustrator&nbsp;c&oacute; lẽ l&agrave; phần mềm đồ họa vector phổ biến nhất tr&ecirc;n thế giới, hầu hết c&aacute;c Designer tr&ecirc;n thế giới l&agrave;m về đồ họa đều sử dụng phần mềm n&agrave;y.</span></p>\r\n<p><span style=\"font-size: 14pt;\">C&oacute; thể n&oacute;i nếu bạn muốn gia nhập l&agrave;ng thiết kế đồ họa bạn buộc phải học v&agrave; th&agrave;nh thạo phần mềm n&agrave;y.</span></p>\r\n<p><span style=\"font-size: 14pt;\">Hầu như mọi c&ocirc;ng ty quảng c&aacute;o truyền th&ocirc;ng, in ấn, thiết kế web&hellip; ở Việt Nam đều sử dụng phần mềm n&agrave;y. V&agrave; khi tuyển dụng th&igrave; kỹ năng sử dụng th&agrave;nh thạo phần mềm thiết kế đồ họa chuy&ecirc;n nghiệp Illustrator l&agrave; một y&ecirc;u cầu bắt buộc của c&aacute;c nh&agrave; tuyển dụng.</span></p>\r\n<p><span style=\"font-size: 14pt;\">Gi&aacute;o tr&igrave;nh Illustrator l&agrave; t&agrave;i liệu hướng dẫn học Illustrator hữu &iacute;ch cho người mới bắt đầu</span></p>\r\n<p><span style=\"font-size: 14pt;\">Thời buổi c&ocirc;ng nghệ 4.0 như hiện nay th&igrave; c&oacute; rất nhiều c&aacute;c phương ph&aacute;p học tập như:</span></p>\r\n<ul>\r\n<li style=\"font-size: 14pt;\"><span style=\"font-size: 14pt;\">Học trực tiếp qua gi&aacute;o vi&ecirc;n bộ m&ocirc;n</span></li>\r\n<li style=\"font-size: 14pt;\"><span style=\"font-size: 14pt;\">Học online qua video</span></li>\r\n<li style=\"font-size: 14pt;\"><span style=\"font-size: 14pt;\">Học tr&ecirc;n Youtube</span></li>\r\n<li style=\"font-size: 14pt;\"><span style=\"font-size: 14pt;\">Học qua s&aacute;ch hướng dẫn&hellip;</span></li>\r\n</ul>\r\n<p><span style=\"font-size: 14pt;\">Cho d&ugrave; bạn đang theo học với h&igrave;nh thức n&agrave;o đi nữa th&igrave; việc kết hợp c&aacute;c h&igrave;nh thức đ&oacute; với bộ gi&aacute;o tr&igrave;nh m&ocirc;n học sẽ đem đến cho bạn hiệu quả cao trong việc học.</span></p>\r\n<p><span style=\"font-size: 14pt;\">V&igrave; t&iacute;nh chất của gi&aacute;o tr&igrave;nh l&agrave; b&aacute;m s&aacute;t chương tr&igrave;nh đ&agrave;o tạo, đảm bảo t&iacute;nh hệ thống, t&iacute;nh ứng dụng, t&iacute;nh cơ bản v&agrave; t&iacute;nh ch&iacute;nh x&aacute;c.</span></p>',1,0,'huong-dan-su-dung-illutrator-cho-nguoi-moi-bat-đau'),(2,'Học Adobe Illustrator từ cơ bản đến nâng cao',8,2,1,1,1200000,600000,'<p><span style=\"font-size: 14pt;\">? Ch&agrave;o mừng bạn đến với kho&aacute; học \"Học Adobe Illustrator từ Cơ Bản đến N&acirc;ng Cao\" - h&agrave;nh tr&igrave;nh học tập đầy hứng th&uacute; để kh&aacute;m ph&aacute; v&agrave; l&agrave;m chủ một trong những c&ocirc;ng cụ thiết kế đồ họa mạnh mẽ nhất.</span></p>\r\n<p><span style=\"font-size: 14pt;\">? Điểm nổi bật của kho&aacute; học:</span></p>\r\n<ul>\r\n<li style=\"font-size: 14pt;\"><span style=\"font-size: 14pt;\">?️ <strong>Cơ Bản cho Người Mới Bắt Đầu:</strong> Bạn sẽ bắt đầu với những kiến thức cơ bản về giao diện, c&ocirc;ng cụ, v&agrave; c&aacute;c kỹ thuật vẽ đơn giản.</span></li>\r\n<li style=\"font-size: 14pt;\"><span style=\"font-size: 14pt;\">? <strong>Thiết Kế Vector Hiệu Quả:</strong> Học c&aacute;ch tạo ra những h&igrave;nh ảnh vector chất lượng cao, linh hoạt v&agrave; c&oacute; thể ph&oacute;ng to m&agrave; kh&ocirc;ng l&agrave;m mất chất lượng.</span></li>\r\n<li style=\"font-size: 14pt;\"><span style=\"font-size: 14pt;\">? <strong>L&agrave;m Việc với Text v&agrave; Typography:</strong> N&acirc;ng cao kỹ năng của bạn trong việc s&aacute;ng tạo với văn bản, font chữ, v&agrave; kiểu chữ.</span></li>\r\n<li style=\"font-size: 14pt;\"><span style=\"font-size: 14pt;\">? <strong>Hiểu R&otilde; về M&agrave;u Sắc v&agrave; Gradient:</strong> Học c&aacute;ch sử dụng m&agrave;u sắc v&agrave; gradient để tạo ra những t&aacute;c phẩm nghệ thuật số phong c&aacute;ch v&agrave; ấn tượng.</span></li>\r\n<li style=\"font-size: 14pt;\"><span style=\"font-size: 14pt;\">? <strong>Quy Tr&igrave;nh L&agrave;m Việc Hiệu Quả:</strong> T&igrave;m hiểu c&aacute;ch tổ chức dự &aacute;n, sử dụng layers, v&agrave; l&agrave;m thế n&agrave;o để l&agrave;m việc hiệu quả với c&aacute;c c&ocirc;ng cụ kh&aacute;c nhau của Illustrator.</span></li>\r\n<li style=\"font-size: 14pt;\"><span style=\"font-size: 14pt;\">? <strong>Hiệu Ứng v&agrave; C&ocirc;ng Cụ N&acirc;ng Cao:</strong> Kh&aacute;m ph&aacute; c&aacute;c hiệu ứng đặc biệt, bộ lọc, v&agrave; c&ocirc;ng cụ n&acirc;ng cao để tạo ra những t&aacute;c phẩm độc đ&aacute;o v&agrave; s&aacute;ng tạo.</span></li>\r\n</ul>\r\n<p><span style=\"font-size: 14pt;\">?&zwj;? Với sự hướng dẫn chi tiết của chuy&ecirc;n gia c&oacute; kinh nghiệm, bạn sẽ trải qua những b&agrave;i giảng thực h&agrave;nh v&agrave; dự &aacute;n thực tế để &aacute;p dụng kiến thức ngay lập tức.</span></p>\r\n<p><span style=\"font-size: 14pt;\">? Đừng bỏ lỡ cơ hội trở th&agrave;nh chuy&ecirc;n gia Illustrator. Đăng k&yacute; ngay để bắt đầu h&agrave;nh tr&igrave;nh s&aacute;ng tạo của bạn!</span></p>',1,0,'hoc-adobe-illustrator-tu-co-ban-đen-nang-cao'),(3,'Khóa học Digital Paiting cơ bản cho người mới bắt đầu',4,3,1,1,2000000,1200000,'',1,0,'khoa-hoc-digital-paiting-co-ban-cho-nguoi-moi-bat-đau'),(4,'Tiếng Nhật cơ bản',1,3,1,1,3000000,2400000,'<p><span style=\"font-size: 14pt;\">? <strong>Ch&agrave;o Mừng Bạn Đến Với H&agrave;nh Tr&igrave;nh Tiếng Nhật:</strong></span></p>\r\n<ul>\r\n<li style=\"font-size: 14pt;\"><span style=\"font-size: 14pt;\">Học c&aacute;ch ph&aacute;t &acirc;m đ&uacute;ng v&agrave; cơ bản của chữ c&aacute;i v&agrave; &acirc;m tiết trong Tiếng Nhật.</span></li>\r\n<li style=\"font-size: 14pt;\"><span style=\"font-size: 14pt;\">X&acirc;y dựng cơ sở vững chắc cho việc hiểu v&agrave; sử dụng ng&ocirc;n ngữ h&agrave;ng ng&agrave;y.</span></li>\r\n</ul>\r\n<p><span style=\"font-size: 14pt;\">? <strong>Giao Tiếp H&agrave;ng Ng&agrave;y:</strong></span></p>\r\n<ul>\r\n<li style=\"font-size: 14pt;\"><span style=\"font-size: 14pt;\">Học c&aacute;ch tự giới thiệu v&agrave; tham gia trong c&aacute;c t&igrave;nh huống giao tiếp cơ bản.</span></li>\r\n<li style=\"font-size: 14pt;\"><span style=\"font-size: 14pt;\">Hỏi đường, đặt đồ ăn, v&agrave; thực h&agrave;nh c&aacute;c c&acirc;u hỏi h&agrave;ng ng&agrave;y.</span></li>\r\n</ul>\r\n<p><span style=\"font-size: 14pt;\">? <strong>M&ocirc;i Trường v&agrave; H&agrave;ng Ng&agrave;y:</strong></span></p>\r\n<ul>\r\n<li style=\"font-size: 14pt;\"><span style=\"font-size: 14pt;\">M&ocirc; phỏng c&aacute;c t&igrave;nh huống trong cuộc sống h&agrave;ng ng&agrave;y như mua sắm, đi chợ, v&agrave; gặp gỡ bạn b&egrave;.</span></li>\r\n<li style=\"font-size: 14pt;\"><span style=\"font-size: 14pt;\">Học c&aacute;ch m&ocirc; tả m&ocirc;i trường xung quanh v&agrave; những người xung quanh.</span></li>\r\n</ul>\r\n<p><span style=\"font-size: 14pt;\">? <strong>Mua Sắm v&agrave; Giao Dịch:</strong></span></p>\r\n<ul>\r\n<li style=\"font-size: 14pt;\"><span style=\"font-size: 14pt;\">Học từ vựng v&agrave; c&acirc;u tr&igrave;nh b&agrave;y li&ecirc;n quan đến mua sắm v&agrave; giao dịch h&agrave;ng ng&agrave;y.</span></li>\r\n<li style=\"font-size: 14pt;\"><span style=\"font-size: 14pt;\">Thực h&agrave;nh tại c&aacute;c cửa h&agrave;ng v&agrave; thị trường Nhật Bản ảo.</span></li>\r\n</ul>\r\n<p><span style=\"font-size: 14pt;\">? <strong>Gia Đ&igrave;nh v&agrave; Bữa Ăn:</strong></span></p>\r\n<ul>\r\n<li style=\"font-size: 14pt;\"><span style=\"font-size: 14pt;\">M&ocirc; tả gia đ&igrave;nh v&agrave; c&aacute;c th&agrave;nh vi&ecirc;n trong gia đ&igrave;nh.</span></li>\r\n<li style=\"font-size: 14pt;\"><span style=\"font-size: 14pt;\">Thực h&agrave;nh diễn đạt &yacute; với c&aacute;c c&acirc;u tr&igrave;nh b&agrave;y về bữa ăn h&agrave;ng ng&agrave;y.</span></li>\r\n</ul>\r\n<p><span style=\"font-size: 14pt;\">? <strong>Thời Gian v&agrave; Lịch Tr&igrave;nh:</strong></span></p>\r\n<ul>\r\n<li style=\"font-size: 14pt;\"><span style=\"font-size: 14pt;\">Học c&aacute;ch đọc giờ, n&oacute;i về thời gian v&agrave; lịch tr&igrave;nh.</span></li>\r\n<li style=\"font-size: 14pt;\"><span style=\"font-size: 14pt;\">Đặt lịch hẹn v&agrave; thực h&agrave;nh sử dụng th&igrave; qu&aacute; khứ v&agrave; hiện tại.</span></li>\r\n</ul>\r\n<p><span style=\"font-size: 14pt;\">? <strong>Tiếp X&uacute;c Với Văn H&oacute;a Nhật:</strong></span></p>\r\n<ul>\r\n<li style=\"font-size: 14pt;\"><span style=\"font-size: 14pt;\">Giới thiệu về văn h&oacute;a Nhật Bản v&agrave; c&aacute;c truyền thống cơ bản.</span></li>\r\n<li style=\"font-size: 14pt;\"><span style=\"font-size: 14pt;\">L&agrave;m quen với c&aacute;c lễ hội v&agrave; nghệ thuật truyền thống.</span></li>\r\n</ul>\r\n<p><span style=\"font-size: 14pt;\">? <strong>Đọc Hiểu Cơ Bản:</strong></span></p>\r\n<ul>\r\n<li style=\"font-size: 14pt;\"><span style=\"font-size: 14pt;\">Học c&aacute;ch đọc hiểu c&aacute;c bản đơn giản như th&ocirc;ng b&aacute;o v&agrave; hướng dẫn.</span></li>\r\n<li style=\"font-size: 14pt;\"><span style=\"font-size: 14pt;\">Đ&agrave;m thoại về nội dung cơ bản.</span></li>\r\n</ul>\r\n<p><span style=\"font-size: 14pt;\">?️ <strong>Luyện Nghe Hiểu Cơ Bản:</strong></span></p>\r\n<ul>\r\n<li style=\"font-size: 14pt;\"><span style=\"font-size: 14pt;\">Ph&aacute;t triển khả năng nghe hiểu qua c&aacute;c b&agrave;i thoại v&agrave; đoạn hội thoại.</span></li>\r\n<li style=\"font-size: 14pt;\"><span style=\"font-size: 14pt;\">Hiểu v&agrave; thực h&agrave;nh đối thoại h&agrave;ng ng&agrave;y.</span></li>\r\n</ul>\r\n<p><span style=\"font-size: 14pt;\">? <strong>Đối Tượng Học Vi&ecirc;n:</strong></span></p>\r\n<ul>\r\n<li style=\"font-size: 14pt;\"><span style=\"font-size: 14pt;\">Những người mới học Tiếng Nhật hoặc muốn củng cố kiến thức cơ bản.</span></li>\r\n<li style=\"font-size: 14pt;\"><span style=\"font-size: 14pt;\">Sinh vi&ecirc;n, người đi l&agrave;m, v&agrave; những người c&oacute; mong muốn kh&aacute;m ph&aacute; văn h&oacute;a Nhật Bản.</span></li>\r\n</ul>\r\n<p><span style=\"font-size: 14pt;\">? <strong>Y&ecirc;u Cầu Ti&ecirc;n Quyết:</strong></span></p>\r\n<ul>\r\n<li style=\"font-size: 14pt;\"><span style=\"font-size: 14pt;\">Kh&ocirc;ng c&oacute; y&ecirc;u cầu ti&ecirc;n quyết. Ph&ugrave; hợp cho người mới bắt đầu.</span></li>\r\n</ul>',1,0,'tieng-nhat-co-ban'),(5,'Tiếng Nhật nâng cao',1,2,1,1,6000000,5500000,'<p><span style=\"font-size: 14pt;\">? <strong>Chinh Phục Tiếng Nhật Ở Cấp Độ N&acirc;ng Cao:</strong></span></p>\r\n<ul>\r\n<li style=\"font-size: 14pt;\"><span style=\"font-size: 14pt;\">N&acirc;ng cao khả năng giao tiếp v&agrave; hiểu biết s&acirc;u rộng trong Tiếng Nhật.</span></li>\r\n<li style=\"font-size: 14pt;\"><span style=\"font-size: 14pt;\">Ph&aacute;t triển vững ngữ ph&aacute;p v&agrave; từ vựng th&ocirc;ng qua b&agrave;i học thực h&agrave;nh v&agrave; thảo luận.</span></li>\r\n</ul>\r\n<p><span style=\"font-size: 14pt;\">? <strong>Chạm Tay V&agrave;o Văn H&oacute;a Nhật Bản:</strong></span></p>\r\n<ul>\r\n<li style=\"font-size: 14pt;\"><span style=\"font-size: 14pt;\">Hiểu r&otilde; hơn về văn h&oacute;a, lịch sử v&agrave; truyền thống Nhật Bản.</span></li>\r\n<li style=\"font-size: 14pt;\"><span style=\"font-size: 14pt;\">Học c&aacute;ch sử dụng ng&ocirc;n ngữ ph&ugrave; hợp với ngữ cảnh văn h&oacute;a.</span></li>\r\n</ul>\r\n<p><span style=\"font-size: 14pt;\">? <strong>Đ&agrave;m Thoại Chuy&ecirc;n S&acirc;u:</strong></span></p>\r\n<ul>\r\n<li style=\"font-size: 14pt;\"><span style=\"font-size: 14pt;\">Thực h&agrave;nh đ&agrave;m thoại h&agrave;ng ng&agrave;y v&agrave; c&aacute;c t&igrave;nh huống chuy&ecirc;n s&acirc;u.</span></li>\r\n<li style=\"font-size: 14pt;\"><span style=\"font-size: 14pt;\">N&acirc;ng cao khả năng lắng nghe v&agrave; phản ứng nhanh nhạy trong c&aacute;c trao đổi phức tạp.</span></li>\r\n</ul>\r\n<p><span style=\"font-size: 14pt;\">? <strong>Viết Tiếng Nhật Hiệu Quả:</strong></span></p>\r\n<ul>\r\n<li style=\"font-size: 14pt;\"><span style=\"font-size: 14pt;\">Học kỹ thuật viết từ vựng v&agrave; c&acirc;u tr&igrave;nh b&agrave;y phong c&aacute;ch ng&ocirc;n ngữ.</span></li>\r\n<li style=\"font-size: 14pt;\"><span style=\"font-size: 14pt;\">Viết v&agrave; soạn thảo văn bản với độ ch&iacute;nh x&aacute;c v&agrave; sự s&aacute;ng tạo.</span></li>\r\n</ul>\r\n<p><span style=\"font-size: 14pt;\">? <strong>Thuyết Tr&igrave;nh v&agrave; Giao Tiếp C&ocirc;ng Việc:</strong></span></p>\r\n<ul>\r\n<li style=\"font-size: 14pt;\"><span style=\"font-size: 14pt;\">Ph&aacute;t triển kỹ năng thuyết tr&igrave;nh v&agrave; giao tiếp hiệu quả trong m&ocirc;i trường c&ocirc;ng việc.</span></li>\r\n<li style=\"font-size: 14pt;\"><span style=\"font-size: 14pt;\">Học c&aacute;ch thảo luận v&agrave; thuyết phục trong Tiếng Nhật.</span></li>\r\n</ul>\r\n<p><span style=\"font-size: 14pt;\">? <strong>Đọc Hiểu Văn Bản Phức Tạp:</strong></span></p>\r\n<ul>\r\n<li style=\"font-size: 14pt;\"><span style=\"font-size: 14pt;\">Nắm bắt th&ocirc;ng tin từ văn bản chuy&ecirc;n s&acirc;u v&agrave; phức tạp.</span></li>\r\n<li style=\"font-size: 14pt;\"><span style=\"font-size: 14pt;\">Đọc hiểu b&aacute;o c&aacute;o, văn bản kỹ thuật v&agrave; văn ph&ograve;ng.</span></li>\r\n</ul>\r\n<p><span style=\"font-size: 14pt;\">?️ <strong>Luyện Nghe Hiểu N&acirc;ng Cao:</strong></span></p>\r\n<ul>\r\n<li style=\"font-size: 14pt;\"><span style=\"font-size: 14pt;\">N&acirc;ng cao khả năng nghe hiểu qua c&aacute;c t&igrave;nh huống hội thoại phức tạp.</span></li>\r\n<li style=\"font-size: 14pt;\"><span style=\"font-size: 14pt;\">Hiểu r&otilde; v&agrave; phản ứng linh hoạt trong giao tiếp h&agrave;ng ng&agrave;y.</span></li>\r\n</ul>\r\n<p><span style=\"font-size: 14pt;\">? <strong>Tiếp X&uacute;c Thực Tế:</strong></span></p>\r\n<ul>\r\n<li style=\"font-size: 14pt;\"><span style=\"font-size: 14pt;\">Tổ chức c&aacute;c hoạt động thực tế để &aacute;p dụng kiến thức trong m&ocirc;i trường thực tế.</span></li>\r\n<li style=\"font-size: 14pt;\"><span style=\"font-size: 14pt;\">Tương t&aacute;c với cộng đồng người học Tiếng Nhật.</span></li>\r\n</ul>\r\n<p><span style=\"font-size: 14pt;\">? <strong>Đối Tượng Học Vi&ecirc;n:</strong></span></p>\r\n<ul>\r\n<li style=\"font-size: 14pt;\"><span style=\"font-size: 14pt;\">Những người học Tiếng Nhật ở cấp độ trung cấp muốn n&acirc;ng cao kỹ năng.</span></li>\r\n<li style=\"font-size: 14pt;\"><span style=\"font-size: 14pt;\">Sinh vi&ecirc;n, nh&acirc;n vi&ecirc;n văn ph&ograve;ng, v&agrave; những người quan t&acirc;m đến văn h&oacute;a Nhật Bản.</span></li>\r\n</ul>\r\n<p><span style=\"font-size: 14pt;\">? <strong>Y&ecirc;u Cầu Ti&ecirc;n Quyết:</strong></span></p>\r\n<ul>\r\n<li style=\"font-size: 14pt;\"><span style=\"font-size: 14pt;\">Kiến thức cơ bản về ng&ocirc;n ngữ Tiếng Nhật hoặc đ&atilde; ho&agrave;n th&agrave;nh kh&oacute;a học Tiếng Nhật cơ bản</span></li>\r\n</ul>',1,0,'tieng-nhat-nang-cao'),(6,'Khoá học TOEIC 450 điểm dành cho người mới bắt đầu',1,1,1,1,600000,300000,'',1,0,'khoa-hoc-toeic-450-điem-danh-cho-nguoi-moi-bat-đau'),(47,'Khoá học lập trình web trên Udemy sử dụng Java Servlet',7,2,1,1,700000,400000,'<p><span style=\"font-size: 14pt;\">? <strong>Kh&aacute;m Ph&aacute; Sức Mạnh Của Java Servlet:</strong></span></p>\r\n<ul>\r\n<li style=\"font-size: 14pt;\"><span style=\"font-size: 14pt;\">Lập tr&igrave;nh web mạnh mẽ v&agrave; hiệu quả với Java Servlet.</span></li>\r\n<li style=\"font-size: 14pt;\"><span style=\"font-size: 14pt;\">X&acirc;y dựng ứng dụng web từ cơ bản đến n&acirc;ng cao.</span></li>\r\n</ul>\r\n<p><span style=\"font-size: 14pt;\">?️ <strong>C&agrave;i Đặt M&ocirc;i Trường Ph&aacute;t Triển:</strong></span></p>\r\n<ul>\r\n<li style=\"font-size: 14pt;\"><span style=\"font-size: 14pt;\">Hướng dẫn c&agrave;i đặt IDE v&agrave; thiết lập m&ocirc;i trường ph&aacute;t triển nhanh ch&oacute;ng.</span></li>\r\n<li style=\"font-size: 14pt;\"><span style=\"font-size: 14pt;\">Chuẩn bị m&aacute;y chủ web v&agrave; cơ sở dữ liệu.</span></li>\r\n</ul>\r\n<p><span style=\"font-size: 14pt;\">? <strong>Cơ Bản về Servlet v&agrave; HTTP:</strong></span></p>\r\n<ul>\r\n<li style=\"font-size: 14pt;\"><span style=\"font-size: 14pt;\">Hiểu r&otilde; về chu kỳ cuộc sống của Servlet.</span></li>\r\n<li style=\"font-size: 14pt;\"><span style=\"font-size: 14pt;\">Xử l&yacute; y&ecirc;u cầu v&agrave; phản hồi HTTP.</span></li>\r\n</ul>\r\n<p><span style=\"font-size: 14pt;\">? <strong>X&acirc;y Dựng Ứng Dụng Web Đơn Giản:</strong></span></p>\r\n<ul>\r\n<li style=\"font-size: 14pt;\"><span style=\"font-size: 14pt;\">Tạo ứng dụng web nhỏ để thực h&agrave;nh xử l&yacute; biểu mẫu v&agrave; gửi dữ liệu.</span></li>\r\n</ul>\r\n<p><span style=\"font-size: 14pt;\">? <strong>Giao Tiếp với Cơ Sở Dữ Liệu:</strong></span></p>\r\n<ul>\r\n<li style=\"font-size: 14pt;\"><span style=\"font-size: 14pt;\">Kết nối v&agrave; thao t&aacute;c dữ liệu với JDBC.</span></li>\r\n<li style=\"font-size: 14pt;\"><span style=\"font-size: 14pt;\">Thực hiện c&aacute;c thao t&aacute;c CRUD tr&ecirc;n cơ sở dữ liệu.</span></li>\r\n</ul>\r\n<p><span style=\"font-size: 14pt;\">? <strong>Quản L&yacute; Phi&ecirc;n v&agrave; Cookies:</strong></span></p>\r\n<ul>\r\n<li style=\"font-size: 14pt;\"><span style=\"font-size: 14pt;\">Sử dụng quản l&yacute; phi&ecirc;n để duy tr&igrave; trạng th&aacute;i.</span></li>\r\n<li style=\"font-size: 14pt;\"><span style=\"font-size: 14pt;\">Lưu trữ th&ocirc;ng tin với Cookies.</span></li>\r\n</ul>\r\n<p><span style=\"font-size: 14pt;\">? <strong>Bảo Mật Trong Ứng Dụng Web:</strong></span></p>\r\n<ul>\r\n<li style=\"font-size: 14pt;\"><span style=\"font-size: 14pt;\">&Aacute;p dụng biện ph&aacute;p bảo mật như SSL v&agrave; x&aacute;c thực người d&ugrave;ng.</span></li>\r\n<li style=\"font-size: 14pt;\"><span style=\"font-size: 14pt;\">Đối ph&oacute; với c&aacute;c loại tấn c&ocirc;ng phổ biến.</span></li>\r\n</ul>\r\n<p><span style=\"font-size: 14pt;\">? <strong>Triển Khai Ứng Dụng:</strong></span></p>\r\n<ul>\r\n<li style=\"font-size: 14pt;\"><span style=\"font-size: 14pt;\">Hướng dẫn triển khai ứng dụng tr&ecirc;n c&aacute;c m&aacute;y chủ web phổ biến.</span></li>\r\n<li style=\"font-size: 14pt;\"><span style=\"font-size: 14pt;\">Tối ưu h&oacute;a hiệu suất v&agrave; bảo mật khi triển khai.</span></li>\r\n</ul>\r\n<p><span style=\"font-size: 14pt;\">?&zwj;? <strong>Đối Tượng Học Vi&ecirc;n:</strong></span></p>\r\n<ul>\r\n<li style=\"font-size: 14pt;\"><span style=\"font-size: 14pt;\">Người muốn nắm vững lập tr&igrave;nh web với Java Servlet.</span></li>\r\n<li style=\"font-size: 14pt;\"><span style=\"font-size: 14pt;\">Những sinh vi&ecirc;n v&agrave; nh&agrave; ph&aacute;t triển Java đam m&ecirc; web.</span></li>\r\n</ul>\r\n<p><span style=\"font-size: 14pt;\">? <strong>Y&ecirc;u Cầu Ti&ecirc;n Quyết:</strong></span></p>\r\n<ul>\r\n<li style=\"font-size: 14pt;\"><span style=\"font-size: 14pt;\">Kiến thức cơ bản về Java v&agrave; lập tr&igrave;nh web.</span></li>\r\n</ul>\r\n<p><span style=\"font-size: 14pt;\">? <strong>Sẵn S&agrave;ng Bắt Đầu H&agrave;nh Tr&igrave;nh Lập Tr&igrave;nh Web!</strong></span></p>',1,0,'khoa-hoc-lap-trinh-web-tren-udemy-su-dung-java-servlet'),(48,'Khóa học nấu ăn Á Âu - Lớp dạy nấu ăn Cơ Bản',12,1,1,1,800000,400000,'<p>Đ&acirc;y l&agrave; m&ocirc; tả</p>',1,0,'khoa-hoc-nau-an-a-au---lop-day-nau-an-co-ban'),(49,'Khóa Học Đàn Piano - Dạy Chơi Piano Cho Người Mới Bắt Đầu',4,1,1,1,1300000,900000,'<p>Đ&acirc;y l&agrave; m&ocirc; tả</p>',1,0,'khoa-hoc-đan-piano---day-choi-piano-cho-nguoi-moi-bat-đau'),(50,'Khoá học lập trình Laravel',7,2,1,1,1500000,1200000,'<p>Đ&acirc;y l&agrave; m&ocirc; tả</p>',1,0,'khoa-hoc-lap-trinh-laravel'),(51,'Khoá học Marketing căn bản',9,1,1,1,200000,80000,'<p><span style=\"font-size: 14pt;\">? Bạn muốn hiểu r&otilde; về nguy&ecirc;n l&yacute; cơ bản của Marketing v&agrave; &aacute;p dụng ch&uacute;ng v&agrave;o chiến lược kinh doanh của m&igrave;nh? H&atilde;y tham gia kho&aacute; học Marketing Căn Bản của ch&uacute;ng t&ocirc;i!</span></p>\r\n<p><span style=\"font-size: 14pt;\">? Những điều bạn sẽ học được:</span></p>\r\n<ul>\r\n<li style=\"font-size: 14pt;\"><span style=\"font-size: 14pt;\">Hiểu r&otilde; về cơ bản của Marketing v&agrave; tầm quan trọng của n&oacute; trong kinh doanh.</span></li>\r\n<li style=\"font-size: 14pt;\"><span style=\"font-size: 14pt;\">X&acirc;y dựng chiến lược tiếp thị hiệu quả v&agrave; ph&ugrave; hợp với mục ti&ecirc;u kinh doanh của bạn.</span></li>\r\n<li style=\"font-size: 14pt;\"><span style=\"font-size: 14pt;\">Nắm bắt c&aacute;c kh&aacute;i niệm quan trọng như t&igrave;m hiểu kh&aacute;ch h&agrave;ng, định danh thương hiệu, v&agrave; chiến lược quảng c&aacute;o.</span></li>\r\n<li style=\"font-size: 14pt;\"><span style=\"font-size: 14pt;\">&Aacute;p dụng c&aacute;c phương ph&aacute;p đo lường hiệu suất v&agrave; tối ưu h&oacute;a chiến lược tiếp thị.</span></li>\r\n</ul>\r\n<p><span style=\"font-size: 14pt;\">? Ai n&ecirc;n tham gia:</span></p>\r\n<ul>\r\n<li style=\"font-size: 14pt;\"><span style=\"font-size: 14pt;\">Doanh nh&acirc;n v&agrave; chủ doanh nghiệp muốn nắm vững c&aacute;c nguy&ecirc;n tắc cơ bản của Marketing.</span></li>\r\n<li style=\"font-size: 14pt;\"><span style=\"font-size: 14pt;\">Người quản l&yacute; tiếp thị v&agrave; những ai muốn cập nhật kiến thức của m&igrave;nh với xu hướng mới nhất.</span></li>\r\n<li style=\"font-size: 14pt;\"><span style=\"font-size: 14pt;\">Sinh vi&ecirc;n v&agrave; những người mới bắt đầu sự nghiệp trong lĩnh vực tiếp thị.</span></li>\r\n</ul>\r\n<p><span style=\"font-size: 14pt;\">? H&atilde;y đăng k&yacute; ngay để bắt đầu h&agrave;nh tr&igrave;nh của bạn trong thế giới phức tạp nhưng th&uacute; vị của Marketing!</span></p>',2,0,'khoa-hoc-marketing-can-ban'),(52,'Cách lên ý tưởng thiết kế logo chuyên nghiệp',5,2,1,1,500000,300000,'<p>Đ&acirc;y l&agrave; m&ocirc; tả</p>',3,0,'cach-len-y-tuong-thiet-ke-logo-chuyen-nghiep'),(53,'Khoá học thiết kế đồ hoạ chuyên nghiệp',5,2,1,1,2000000,1800000,'<p>? <strong>Học Thiết Kế Đồ Hoạ Chuy&ecirc;n Nghiệp: Chinh Phục Nghệ Thuật S&aacute;ng Tạo v&agrave; Kỹ Thuật Hiện Đại!</strong> ?</p>\r\n<p>Bạn muốn trải nghiệm thế giới đồ hoạ chuy&ecirc;n nghiệp v&agrave; kh&aacute;m ph&aacute; b&iacute; mật đằng sau c&aacute;c t&aacute;c phẩm nghệ thuật đỉnh cao? Kho&aacute; học Thiết Kế Đồ Hoạ Chuy&ecirc;n Nghiệp l&agrave; cầu nối giữa sự s&aacute;ng tạo v&agrave; kỹ thuật, gi&uacute;p bạn đạt đến đỉnh cao mới trong lĩnh vực nghệ thuật số.</p>\r\n<p>? <strong>Kh&aacute;m Ph&aacute; Thế Giới Đồ Hoạ:</strong> Bắt đầu h&agrave;nh tr&igrave;nh của bạn bằng c&aacute;ch kh&aacute;m ph&aacute; lịch sử v&agrave; xu hướng đồ hoạ từ qu&aacute; khứ đến hiện đại. T&igrave;m hiểu về c&aacute;c nền văn h&oacute;a v&agrave; nghệ sĩ nổi tiếng để hiểu r&otilde; hơn về sự ph&aacute;t triển v&agrave; đa dạng của ng&agrave;nh đồ hoạ.</p>\r\n<p>?️ <strong>N&acirc;ng Cao Kỹ Năng S&aacute;ng Tạo:</strong> Với hướng dẫn chi tiết từ những chuy&ecirc;n gia h&agrave;ng đầu, bạn sẽ học c&aacute;ch ph&aacute;t triển &yacute; tưởng, x&acirc;y dựng concept, v&agrave; biến ước mơ s&aacute;ng tạo th&agrave;nh hiện thực tr&ecirc;n m&agrave;n h&igrave;nh. Kh&aacute;m ph&aacute; c&aacute;ch tạo ra t&aacute;c phẩm độc đ&aacute;o v&agrave; s&aacute;ng tạo.</p>\r\n<p>?️ <strong>&Aacute;p Dụng C&ocirc;ng Nghệ Hiện Đại:</strong> Đ&agrave;o s&acirc;u v&agrave;o c&aacute;c c&ocirc;ng nghệ đồ hoạ ti&ecirc;n tiến như Adobe Creative Suite, 3D modeling, v&agrave; animation. Học c&aacute;ch sử dụng c&ocirc;ng cụ v&agrave; phần mềm h&agrave;ng đầu để tối ưu h&oacute;a quy tr&igrave;nh l&agrave;m việc v&agrave; tạo ra sản phẩm chất lượng cao.</p>\r\n<p>? <strong>Kết Nối Với Cộng Đồng Nghệ Sĩ:</strong> Tham gia v&agrave;o cộng đồng đồ hoạ đầy s&ocirc;i động, chia sẻ kinh nghiệm v&agrave; nhận phản hồi từ những người đồng nghiệp v&agrave; gi&aacute;o vi&ecirc;n c&oacute; kinh nghiệm. X&acirc;y dựng mối quan hệ v&agrave; mạng lưới để thăng tiến trong sự nghiệp của bạn.</p>\r\n<p>? <strong>Tự Tin Bước V&agrave;o Thị Trường Lao Động:</strong> Với sự hỗ trợ từ đội ngũ gi&aacute;o vi&ecirc;n chất lượng v&agrave; dự &aacute;n thực tế, bạn sẽ tự tin bước v&agrave;o thị trường lao động với bộ kỹ năng v&agrave; sự hiểu biết s&acirc;u sắc về ng&agrave;nh đồ hoạ.</p>\r\n<p>? <strong>Đăng K&yacute; Ngay Để Bắt Đầu H&agrave;nh Tr&igrave;nh Nghệ Thuật Của Bạn!</strong> ?</p>',3,0,'khoa-hoc-thiet-ke-đo-hoa-chuyen-nghiep'),(54,'Khóa học Adobe Photoshop cho người mới bắt đầu',5,1,1,1,1200000,900000,'<p>?️ <strong>Kh&oacute;a Học Adobe Photoshop Cho Người Mới Bắt Đầu: H&agrave;nh Tr&igrave;nh S&aacute;ng Tạo Với C&ocirc;ng Cụ Thiết Kế Mạnh Mẽ!</strong> ?</p>\r\n<p>Bạn đang t&igrave;m kiếm bước đầu l&yacute; tưởng v&agrave;o thế giới s&aacute;ng tạo của Adobe Photoshop? Kh&oacute;a học n&agrave;y kh&ocirc;ng chỉ l&agrave; c&aacute;nh cửa mở cho người mới bắt đầu m&agrave; c&ograve;n l&agrave; h&agrave;nh tr&igrave;nh chinh phục những c&ocirc;ng cụ thiết kế mạnh mẽ một c&aacute;ch dễ d&agrave;ng v&agrave; s&aacute;ng tạo.</p>\r\n<p>? <strong>Nền Tảng Cho Người Mới:</strong> Kh&aacute;m ph&aacute; cơ bản của Adobe Photoshop từ A đến Z - từ giao diện đến c&aacute;c c&ocirc;ng cụ quan trọng. Hướng dẫn chi tiết để bạn dễ d&agrave;ng tiếp cận v&agrave; l&agrave;m quen với m&ocirc;i trường l&agrave;m việc.</p>\r\n<p>? <strong>S&aacute;ng Tạo Với C&ocirc;ng Cụ Vẽ v&agrave; Chỉnh Sửa:</strong> Bằng c&aacute;ch hướng dẫn chi tiết về vẽ, l&agrave;m mịn v&agrave; điều chỉnh h&igrave;nh ảnh, bạn sẽ nắm bắt được c&aacute;ch tạo ra t&aacute;c phẩm nghệ thuật số độc đ&aacute;o v&agrave; chất lượng cao.</p>\r\n<p>? <strong>Xử L&yacute; Ảnh Chuy&ecirc;n S&acirc;u:</strong> T&igrave;m hiểu c&aacute;ch chỉnh sửa m&agrave;u sắc, c&acirc;n bằng &aacute;nh s&aacute;ng, v&agrave; loại bỏ c&aacute;c khuyết điểm để biến ảnh chụp của bạn th&agrave;nh t&aacute;c phẩm nghệ thuật chuy&ecirc;n nghiệp.</p>\r\n<p>? <strong>Tăng Cường Hiệu Suất với C&aacute;c Kỹ Thuật Ti&ecirc;n Tiến:</strong> Chinh phục c&aacute;c kỹ thuật n&acirc;ng cao như lớp, mask, v&agrave; c&aacute;c hiệu ứng đặc biệt để tạo ra h&igrave;nh ảnh động v&agrave; ấn tượng.</p>\r\n<p>? <strong>Cộng Đồng Học Tập v&agrave; Hỗ Trợ:</strong> Tham gia v&agrave;o cộng đồng học tập chia sẻ &yacute; kiến, gặp gỡ những người đồng h&agrave;nh, v&agrave; nhận sự hỗ trợ từ gi&aacute;o vi&ecirc;n c&oacute; kinh nghiệm.</p>\r\n<p>? <strong>Bước Đầu Để Trở Th&agrave;nh Chuy&ecirc;n Gia Photoshop:</strong> H&atilde;y chuẩn bị bước v&agrave;o thế giới chuy&ecirc;n nghiệp với kiến thức v&agrave; kỹ năng m&agrave; kh&oacute;a học n&agrave;y mang lại.</p>\r\n<p>? <strong>Đăng K&yacute; Ngay Để Bắt Đầu H&agrave;nh Tr&igrave;nh Nghệ Thuật Của Bạn!</strong> ?</p>',3,0,'khoa-hoc-adobe-photoshop-cho-nguoi-moi-bat-đau'),(55,'Khóa học Adobe Photoshop nâng cao',5,2,0,0,2000000,1500000,'<p>? <strong>Kh&oacute;a Học Adobe Photoshop N&acirc;ng Cao: Đỉnh Cao S&aacute;ng Tạo với C&ocirc;ng Cụ Thiết Kế Chuy&ecirc;n S&acirc;u!</strong> ?</p>\r\n<p>Bạn đ&atilde; c&oacute; kinh nghiệm với Adobe Photoshop v&agrave; muốn chinh phục những kh&iacute;a cạnh s&acirc;u sắc v&agrave; đầy th&aacute;ch thức của c&ocirc;ng cụ n&agrave;y? Kh&aacute;m ph&aacute; những khả năng mới, kỹ thuật ti&ecirc;n tiến, v&agrave; b&iacute; quyết s&aacute;ng tạo trong kh&oacute;a học n&acirc;ng cao n&agrave;y.</p>\r\n<p>? <strong>Kh&aacute;m Ph&aacute; Tận C&ugrave;ng C&ocirc;ng Cụ Photoshop:</strong> Nắm vững c&aacute;c t&iacute;nh năng v&agrave; c&ocirc;ng cụ n&acirc;ng cao của Adobe Photoshop, từ lớp v&agrave; mask đến c&aacute;c hiệu ứng v&agrave; bộ lọc ti&ecirc;n tiến. Đi s&acirc;u v&agrave;o sự linh hoạt v&agrave; sức mạnh của ứng dụng n&agrave;y.</p>\r\n<p>? <strong>S&aacute;ng Tạo Với Lớp v&agrave; Hiệu Ứng Đa Chiều:</strong> Học c&aacute;ch tạo ra hiệu ứng đa chiều v&agrave; sử dụng lớp một c&aacute;ch chuy&ecirc;n s&acirc;u, từ &aacute;nh s&aacute;ng đến chuyển động, để tạo ra t&aacute;c phẩm nghệ thuật số độc đ&aacute;o.</p>\r\n<p>? <strong>Chinh Phục Nghệ Thuật Retouching:</strong> T&igrave;m hiểu c&aacute;c kỹ thuật retouching chuy&ecirc;n nghiệp để biến c&aacute;c bức ảnh th&agrave;nh t&aacute;c phẩm nghệ thuật đẹp mắt v&agrave; tự tin.</p>\r\n<p>? <strong>Tối Ưu H&oacute;a Hiệu Suất v&agrave; Quy Tr&igrave;nh L&agrave;m Việc:</strong> Thực h&agrave;nh c&aacute;ch tối ưu h&oacute;a hiệu suất của bạn với c&aacute;c kỹ thuật l&agrave;m việc hiệu quả v&agrave; quản l&yacute; dự &aacute;n lớn. Học c&aacute;ch t&iacute;ch hợp Photoshop v&agrave;o quy tr&igrave;nh l&agrave;m việc của bạn một c&aacute;ch th&ocirc;ng minh.</p>\r\n<p>? <strong>Ph&acirc;n T&iacute;ch v&agrave; Đ&aacute;nh Gi&aacute; T&aacute;c Phẩm:</strong> Nhận phản hồi chuy&ecirc;n s&acirc;u từ gi&aacute;o vi&ecirc;n v&agrave; đồng học để ph&aacute;t triển khả năng ph&ecirc; duyệt t&aacute;c phẩm v&agrave; n&acirc;ng cao sự chuy&ecirc;n nghiệp của bạn.</p>\r\n<p>? <strong>Kết Nối Với Cộng Đồng Chuy&ecirc;n Gia:</strong> Tham gia v&agrave;o cộng đồng chia sẻ &yacute; kiến v&agrave; kinh nghiệm với những người s&aacute;ng tạo đồ hoạ h&agrave;ng đầu. X&acirc;y dựng mạng lưới quan hệ v&agrave; t&igrave;m kiếm cơ hội hợp t&aacute;c mới.</p>\r\n<p>? <strong>Bước Đi Tiếp Tới Sự Chuy&ecirc;n Nghiệp Với Adobe Photoshop!</strong> ?</p>',1,0,'Khóa học Adobe Photoshop nâng cao'),(56,'Khóa học lập trình Java cơ bản',7,1,0,1,3000000,2800000,'<p>? <strong>Kh&oacute;a Học Lập Tr&igrave;nh Java: Kh&aacute;m Ph&aacute; Ng&ocirc;n Ngữ Mạnh Mẽ v&agrave; Ứng Dụng Rộng R&atilde;i!</strong> ?</p>\r\n<p>Bạn đang muốn kh&aacute;m ph&aacute; thế giới lập tr&igrave;nh với ng&ocirc;n ngữ Java, ng&ocirc;n ngữ mạnh mẽ v&agrave; được sử dụng rộng r&atilde;i trong ng&agrave;nh c&ocirc;ng nghiệp c&ocirc;ng nghệ? Kh&oacute;a học n&agrave;y sẽ dẫn dắt bạn từ cơ bản đến n&acirc;ng cao, gi&uacute;p bạn x&acirc;y dựng nền tảng vững chắc trong lập tr&igrave;nh Java.</p>\r\n<p>? <strong>Bắt Đầu Từ Cơ Bản:</strong> T&igrave;m hiểu về c&uacute; ph&aacute;p cơ bản của Java, kiểu dữ liệu, v&agrave; c&aacute;ch viết m&atilde;. Hướng dẫn từng bước để bạn dễ d&agrave;ng tiếp cận thế giới lập tr&igrave;nh.</p>\r\n<p>? <strong>Ứng Dụng Rộng R&atilde;i:</strong> Kh&aacute;m ph&aacute; c&aacute;c ứng dụng thực tế của Java trong ph&aacute;t triển ứng dụng di động, web, v&agrave; cả phần mềm m&aacute;y t&iacute;nh. Hiểu r&otilde; c&aacute;ch Java đ&oacute;ng vai tr&ograve; quan trọng trong việc x&acirc;y dựng c&aacute;c dự &aacute;n lớn v&agrave; phức tạp.</p>\r\n<p>? <strong>Xử L&yacute; Dữ Liệu v&agrave; Thuật To&aacute;n:</strong> Học c&aacute;ch sử dụng Java để xử l&yacute; dữ liệu v&agrave; triển khai c&aacute;c thuật to&aacute;n cơ bản. T&igrave;m hiểu c&aacute;ch tối ưu h&oacute;a m&atilde; nguồn để đảm bảo hiệu suất tốt nhất.</p>\r\n<p>?️ <strong>Ph&aacute;t Triển Ứng Dụng Java Hiện Đại:</strong> Dấn th&acirc;n v&agrave;o thế giới Java hiện đại với Spring Framework v&agrave; JavaFX. X&acirc;y dựng ứng dụng mạnh mẽ với c&aacute;c c&ocirc;ng nghệ h&agrave;ng đầu trong ng&agrave;nh.</p>\r\n<p>? <strong>Tham Gia Cộng Đồng Lập Tr&igrave;nh:</strong> Kết nối với cộng đồng lập tr&igrave;nh Java đầy năng động, chia sẻ kinh nghiệm v&agrave; nhận hỗ trợ từ những chuy&ecirc;n gia gi&agrave;u kinh nghiệm.</p>\r\n<p>? <strong>Bước Đầu Cho Sự Nghiệp Lập Tr&igrave;nh Java:</strong> Tự tin bước v&agrave;o thị trường lao động với kiến thức s&acirc;u sắc về Java v&agrave; khả năng ứng dụng linh hoạt trong c&aacute;c dự &aacute;n thực tế.</p>\r\n<p>? <strong>Đăng K&yacute; Ngay Để Bắt Đầu H&agrave;nh Tr&igrave;nh Lập Tr&igrave;nh Java Của Bạn!</strong> ?</p>',1,0,'Khóa học lập trình Java cơ bản'),(57,'Khóa học lập trình C++ cơ bản',7,1,1,1,2000000,1600000,'<p>? <strong>Kh&oacute;a Học Lập Tr&igrave;nh C++: Chinh Phục Ng&ocirc;n Ngữ Mạnh Mẽ v&agrave; Ứng Dụng Đa Dạng!</strong> ?</p>\r\n<p>Bạn đang t&igrave;m kiếm kh&oacute;a học để th&acirc;m nhập s&acirc;u v&agrave;o thế giới lập tr&igrave;nh C++, ng&ocirc;n ngữ mạnh mẽ v&agrave; linh hoạt? Kh&aacute;m ph&aacute; c&ugrave;ng ch&uacute;ng t&ocirc;i từ cơ bản đến n&acirc;ng cao, v&agrave; x&acirc;y dựng kỹ năng lập tr&igrave;nh vững chắc với C++.</p>\r\n<p>? <strong>Kiến Thức Cơ Bản V&agrave; C&uacute; Ph&aacute;p:</strong> Bắt đầu h&agrave;nh tr&igrave;nh của bạn với C++ từ những kiến thức cơ bản nhất, hiểu r&otilde; về c&uacute; ph&aacute;p v&agrave; quy tắc lập tr&igrave;nh. Hướng dẫn chi tiết gi&uacute;p bạn thoải m&aacute;i với ng&ocirc;n ngữ n&agrave;y.</p>\r\n<p>? <strong>Ph&aacute;t Triển Ứng Dụng Đa Nhiệm:</strong> Kh&aacute;m ph&aacute; sức mạnh của C++ trong ph&aacute;t triển ứng dụng đa nhiệm v&agrave; đa nền tảng. X&acirc;y dựng kiến thức để tạo ra c&aacute;c ứng dụng linh hoạt v&agrave; hiệu quả.</p>\r\n<p>? <strong>T&igrave;m Hiểu Về Cấu Tr&uacute;c Dữ Liệu v&agrave; Thuật To&aacute;n:</strong> N&acirc;ng cao khả năng giải quyết vấn đề của bạn bằng c&aacute;ch thức hiểu vững về cấu tr&uacute;c dữ liệu v&agrave; thuật to&aacute;n trong C++. &Aacute;p dụng ch&uacute;ng v&agrave;o c&aacute;c dự &aacute;n thực tế.</p>\r\n<p>? <strong>Ứng Dụng C++ Trong Ph&aacute;t Triển Game:</strong> Dấn th&acirc;n v&agrave;o thế giới ph&aacute;t triển game với C++. T&igrave;m hiểu c&aacute;ch x&acirc;y dựng m&atilde; nguồn chất lượng cao v&agrave; tối ưu h&oacute;a hiệu suất cho trải nghiệm game tốt nhất.</p>\r\n<p>?️ <strong>Tối Ưu H&oacute;a Hiệu Suất v&agrave; M&atilde; Nguồn:</strong> Học c&aacute;ch tối ưu h&oacute;a m&atilde; nguồn v&agrave; l&agrave;m việc hiệu quả với C++. Hiểu r&otilde; về c&aacute;c kỹ thuật tối ưu để đảm bảo ứng dụng chạy mượt m&agrave; v&agrave; hiệu quả.</p>\r\n<p>? <strong>Tham Gia Cộng Đồng Lập Tr&igrave;nh C++:</strong> Kết nối với cộng đồng lập tr&igrave;nh C++ đầy năng động, chia sẻ kiến thức v&agrave; nhận hỗ trợ từ những chuy&ecirc;n gia c&oacute; kinh nghiệm.</p>\r\n<p>? <strong>Bước Đầu Cho Sự Nghiệp Lập Tr&igrave;nh C++:</strong> Sẵn s&agrave;ng bước v&agrave;o thị trường lao động với kiến thức s&acirc;u sắc v&agrave; kỹ năng lập tr&igrave;nh mạnh mẽ trong C++.</p>\r\n<p>? <strong>Đăng K&yacute; Ngay Để Kh&aacute;m Ph&aacute; Sức Mạnh của Lập Tr&igrave;nh C++!</strong> ?</p>',1,0,'Khóa học lập trình C++ cơ bản'),(58,'Khóa học chụp ảnh',8,3,1,0,1000000,700000,'<p>? <strong>Kh&oacute;a Học Chụp Ảnh: Nắm Bắt Nghệ Thuật v&agrave; Kỹ Thuật, Biến &Yacute; Tưởng Th&agrave;nh H&igrave;nh Ảnh Sống Động!</strong> ?</p>\r\n<p>Kh&aacute;m ph&aacute; v&agrave; ph&aacute;t triển t&agrave;i năng chụp ảnh của bạn với kh&oacute;a học n&agrave;y, nơi bạn sẽ được hướng dẫn từ cơ bản đến n&acirc;ng cao, gi&uacute;p bạn tạo ra những bức ảnh đẹp v&agrave; &yacute; nghĩa.</p>\r\n<p>? <strong>Nền Tảng Cơ Bản Về M&aacute;y Ảnh:</strong> Bắt đầu h&agrave;nh tr&igrave;nh của bạn với việc hiểu r&otilde; về m&aacute;y ảnh, c&aacute;c chế độ v&agrave; thiết lập cơ bản. Học c&aacute;ch sử dụng c&ocirc;ng cụ để kiểm so&aacute;t &aacute;nh s&aacute;ng v&agrave; g&oacute;c chụp.</p>\r\n<p>? <strong>Hiểu Biết Về &Aacute;nh S&aacute;ng v&agrave; M&agrave;u Sắc:</strong> Nắm bắt b&iacute; quyết của &aacute;nh s&aacute;ng v&agrave; m&agrave;u sắc trong nhiếp ảnh. Học c&aacute;ch tận dụng &aacute;nh s&aacute;ng tự nhi&ecirc;n v&agrave; s&aacute;ng tạo n&ecirc;n c&aacute;c hiệu ứng m&agrave;u sắc độc đ&aacute;o.</p>\r\n<p>? <strong>Kỹ Thuật Chụp Ảnh N&acirc;ng Cao:</strong> Ph&aacute;t triển kỹ thuật chụp ảnh của bạn với hướng dẫn về độ s&acirc;u trường ảnh, tốc độ m&agrave;n trập, v&agrave; khẩu độ. Tạo ra những bức ảnh nghệ thuật với sự chuy&ecirc;n nghiệp.</p>\r\n<p>?️ <strong>S&aacute;ng Tạo Với Chỉnh Sửa Ảnh:</strong> Kh&aacute;m ph&aacute; thế giới chỉnh sửa ảnh để tối ưu h&oacute;a v&agrave; tạo ra ảnh độc đ&aacute;o. Học c&aacute;ch sử dụng c&aacute;c c&ocirc;ng cụ chỉnh sửa để thể hiện &yacute; tưởng của bạn một c&aacute;ch ho&agrave;n hảo.</p>\r\n<p>?&zwj;?&zwj;? <strong>Chụp Ảnh Nh&oacute;m v&agrave; Sự Kiện:</strong> Chinh phục nghệ thuật chụp ảnh nh&oacute;m v&agrave; sự kiện, từ h&igrave;nh ảnh gia đ&igrave;nh đến cảnh quay lớn. Học c&aacute;ch tạo ra kỷ niệm đẹp qua ống k&iacute;nh của bạn.</p>\r\n<p>? <strong>Chia Sẻ v&agrave; Kết Nối Trong Cộng Đồng Nhiếp Ảnh:</strong> Tham gia v&agrave;o cộng đồng nhiếp ảnh, chia sẻ &yacute; kiến v&agrave; nhận phản hồi từ những người đồng nghiệp. Kết nối v&agrave; học hỏi từ những người y&ecirc;u th&iacute;ch nhiếp ảnh giống bạn.</p>\r\n<p>? <strong>Hướng Dẫn Bước Đầu V&agrave;o Nghề Nghiệp Nhiếp Ảnh:</strong> Sẵn s&agrave;ng bước v&agrave;o sự nghiệp với kiến thức s&acirc;u sắc v&agrave; tay nghề chụp ảnh m&agrave; bạn đ&atilde; ph&aacute;t triển qua kh&oacute;a học n&agrave;y.</p>\r\n<p>? <strong>Đăng K&yacute; Ngay Để Mở C&aacute;nh Cửa Cho Nghệ Thuật Chụp Ảnh!</strong> ?</p>',2,0,'Khóa học chụp ảnh'),(59,'Khóa học IELTS  từ 0 đến 6.5 cho người mới bắt đầu ',1,3,0,1,2000000,1600000,'<p>? <strong>Kh&oacute;a Học IELTS Từ 0 Đến 6.5: H&agrave;nh Tr&igrave;nh Năng Động Tạo Nền Tảng Vững Cho Bạn!</strong> ?</p>\r\n<p>Bạn l&agrave; người mới bắt đầu với IELTS v&agrave; muốn đạt được điểm 6.5 một c&aacute;ch tự tin? Kh&aacute;m ph&aacute; kh&oacute;a học n&agrave;y, nơi bạn sẽ được hướng dẫn từ cơ bản đến n&acirc;ng cao, đồng h&agrave;nh với bạn tr&ecirc;n h&agrave;nh tr&igrave;nh chinh phục kỳ thi quan trọng n&agrave;y.</p>\r\n<p>? <strong>Nền Tảng Ng&ocirc;n Ngữ Cơ Bản:</strong> Bắt đầu với cơ bản ng&ocirc;n ngữ v&agrave; ngữ ph&aacute;p cần thiết cho cả bốn kỹ năng: Nghe, Đọc, Viết v&agrave; N&oacute;i. Hướng dẫn chi tiết để bạn dễ d&agrave;ng tiếp cận v&agrave; hiểu r&otilde;.</p>\r\n<p>? <strong>Ph&aacute;t Triển Kỹ Năng Nghe Hiệu Quả:</strong> Học c&aacute;ch nghe v&agrave; hiểu r&otilde; nội dung qua c&aacute;c b&agrave;i nghe đa dạng. Tăng cường từ vựng v&agrave; chiến lược để đối mặt với c&aacute;c th&aacute;ch thức trong phần thi Nghe.</p>\r\n<p>? <strong>Chiến Thắng Phần Đọc Của Bạn:</strong> T&igrave;m hiểu c&aacute;ch đọc hiệu quả v&agrave; n&acirc;ng cao khả năng t&igrave;m kiếm th&ocirc;ng tin. Ph&aacute;t triển chiến lược đọc nhanh v&agrave; hiểu b&agrave;i đọc đa dạng.</p>\r\n<p>? <strong>Viết Essay Đạt Điểm Cao:</strong> Hướng dẫn chi tiết về c&aacute;ch viết essay c&oacute; cấu tr&uacute;c v&agrave; logic, từ lựa chọn &yacute; tưởng đến c&aacute;ch triển khai &yacute; v&agrave; sử dụng từ vựng một c&aacute;ch linh hoạt.</p>\r\n<p>?️ <strong>N&oacute;i Một C&aacute;ch Tự Tin:</strong> Phương ph&aacute;p huấn luyện n&oacute;i, từ c&aacute;ch ph&aacute;t &acirc;m đến c&aacute;ch x&acirc;y dựng c&acirc;u chuyện. Học c&aacute;ch n&oacute;i một c&aacute;ch tự tin v&agrave; s&aacute;ng tạo trong phần thi N&oacute;i.</p>\r\n<p>? <strong>Chia Sẻ Kinh Nghiệm v&agrave; Phản Hồi:</strong> Kết nối với cộng đồng học vi&ecirc;n, chia sẻ kinh nghiệm v&agrave; nhận phản hồi từ gi&aacute;o vi&ecirc;n v&agrave; đồng học để n&acirc;ng cao khả năng của bạn.</p>\r\n<p>? <strong>Bước Đi Tự Tin Tới Kỳ Thi IELTS:</strong> Với sự hỗ trợ từ gi&aacute;o vi&ecirc;n v&agrave; t&agrave;i liệu chất lượng, bạn sẽ sẵn s&agrave;ng đối mặt với kỳ thi IELTS v&agrave; hướng tới mục ti&ecirc;u điểm 6.5.</p>\r\n<p>? <strong>Đăng K&yacute; Ngay Để Bắt Đầu H&agrave;nh Tr&igrave;nh IELTS Của Bạn!</strong> ?</p>',3,0,'Khóa học IELTS  từ 0 đến 6.5 cho người mới bắt đầu '),(60,'Khóa học dạy nấu ăn và chăm sóc sức khỏe gia đình',12,3,0,1,2500000,2000000,'<p>? <strong>Kh&oacute;a Học Dạy Nấu Ăn v&agrave; Chăm S&oacute;c Sức Khỏe Gia Đ&igrave;nh: Học Nấu Ăn Ngon, Dinh Dưỡng v&agrave; Quản l&yacute; Sức Khỏe Một C&aacute;ch Chuy&ecirc;n Nghiệp!</strong> ?</p>\r\n<p>Kh&aacute;m ph&aacute; cuộc phi&ecirc;u lưu ẩm thực v&agrave; chăm s&oacute;c sức khỏe gia đ&igrave;nh với kh&oacute;a học n&agrave;y. Từ những b&iacute; quyết nấu ăn ngon miệng đến chiến lược quản l&yacute; sức khỏe, bạn sẽ được hướng dẫn để tạo ra một m&ocirc;i trường gia đ&igrave;nh khỏe mạnh v&agrave; hạnh ph&uacute;c.</p>\r\n<p>? <strong>Nấu Ăn Đa Dạng v&agrave; S&aacute;ng Tạo:</strong> Học c&aacute;ch nấu ăn từ cơ bản đến n&acirc;ng cao, với c&aacute;c c&ocirc;ng thức độc đ&aacute;o v&agrave; b&iacute; quyết chế biến thực phẩm để tạo ra bữa ăn ngon mắt v&agrave; dinh dưỡng.</p>\r\n<p>? <strong>Dinh Dưỡng Gia Đ&igrave;nh Đầy Đủ:</strong> T&igrave;m hiểu về dinh dưỡng v&agrave; c&aacute;ch tạo ra c&aacute;c bữa ăn c&acirc;n đối cho cả gia đ&igrave;nh. Bạn sẽ được hướng dẫn về việc lựa chọn nguy&ecirc;n liệu, chuẩn bị thực phẩm, v&agrave; kiểm so&aacute;t khẩu phần.</p>\r\n<p>?️ <strong>Chăm S&oacute;c Sức Khỏe Gia Đ&igrave;nh:</strong> Kh&aacute;m ph&aacute; c&aacute;ch t&iacute;ch hợp hoạt động thể chất v&agrave;o lịch tr&igrave;nh gia đ&igrave;nh. Học c&aacute;ch quản l&yacute; stress v&agrave; tạo ra m&ocirc;i trường sống t&iacute;ch cực cho t&igrave;nh thần v&agrave; t&acirc;m hồn.</p>\r\n<p>?&zwj;?&zwj;?&zwj;? <strong>Tạo Cộng Đồng Sức Khỏe Gia Đ&igrave;nh:</strong> Tham gia v&agrave;o cộng đồng học vi&ecirc;n, chia sẻ kinh nghiệm v&agrave; học hỏi từ những người đồng h&agrave;nh. X&acirc;y dựng mạng lưới hỗ trợ để hỗ trợ v&agrave; tạo ra một cộng đồng sức khỏe gia đ&igrave;nh mạnh mẽ.</p>\r\n<p>? <strong>Ẩm Thực Gia Đ&igrave;nh Thế Kỷ 21:</strong> Học c&aacute;ch tận dụng c&ocirc;ng nghệ để quản l&yacute; thời gian, mua sắm thực phẩm th&ocirc;ng minh v&agrave; sử dụng ứng dụng hữu &iacute;ch để theo d&otilde;i sức khỏe gia đ&igrave;nh.</p>\r\n<p>? <strong>Bước Đầu Cho Cuộc H&agrave;nh Tr&igrave;nh Sức Khỏe Gia Đ&igrave;nh:</strong> Với sự hỗ trợ từ gi&aacute;o vi&ecirc;n v&agrave; chuy&ecirc;n gia dinh dưỡng, bạn sẽ c&oacute; được kiến thức v&agrave; kỹ năng cần thiết để tạo ra một gia đ&igrave;nh khỏe mạnh v&agrave; hạnh ph&uacute;c.</p>\r\n<p>? <strong>Đăng K&yacute; Ngay Để Bắt Đầu H&agrave;nh Tr&igrave;nh Ẩm Thực v&agrave; Sức Khỏe Gia Đ&igrave;nh Của Bạn!</strong> ?️</p>',2,0,'Khóa học dạy nấu ăn và chăm sóc sức khỏe gia đình'),(61,'Khóa học office (Excel - Word - Power Point)',6,3,1,1,2000000,1700000,'<p>?️ <strong>Kh&oacute;a Học Office (Excel - Word - PowerPoint): Chinh Phục Nghệ Thuật Văn Ph&ograve;ng v&agrave; N&acirc;ng Cao Hiệu Suất C&ocirc;ng Việc!</strong> ?</p>\r\n<p>Kh&aacute;m ph&aacute; b&iacute; quyết sử dụng Microsoft Office một c&aacute;ch chuy&ecirc;n nghiệp v&agrave; hiệu quả với kh&oacute;a học n&agrave;y. Từ Excel cho đến Word v&agrave; PowerPoint, bạn sẽ được hướng dẫn chi tiết để nắm vững c&aacute;c kỹ năng cần thiết trong c&ocirc;ng việc văn ph&ograve;ng.</p>\r\n<p>? <strong>Excel - Nền Tảng Quản L&yacute; Dữ Liệu:</strong> Học c&aacute;ch sử dụng Excel để tổ chức, ph&acirc;n t&iacute;ch dữ liệu v&agrave; x&acirc;y dựng bảng t&iacute;nh th&ocirc;ng minh. T&igrave;m hiểu về c&aacute;c c&ocirc;ng cụ v&agrave; h&agrave;m cơ bản đến n&acirc;ng cao để l&agrave;m việc một c&aacute;ch hiệu quả.</p>\r\n<p>? <strong>Word - S&aacute;ng Tạo T&agrave;i Liệu Chuy&ecirc;n Nghiệp:</strong> Kh&aacute;m ph&aacute; b&iacute; quyết tạo ra văn bản chuy&ecirc;n nghiệp với Word. Học c&aacute;ch sắp xếp v&agrave; định dạng văn bản, sử dụng c&aacute;c t&iacute;nh năng linh hoạt để tạo ra t&agrave;i liệu đa dạng v&agrave; chất lượng cao.</p>\r\n<p>?️ <strong>PowerPoint - Tạo Ra B&agrave;i Tr&igrave;nh B&agrave;y Ấn Tượng:</strong> Dấn th&acirc;n v&agrave;o thế giới thiết kế slide với PowerPoint. Học c&aacute;ch tr&igrave;nh b&agrave;y th&ocirc;ng tin một c&aacute;ch s&aacute;ng tạo v&agrave; thuyết phục, sử dụng hiệu ứng v&agrave; đồ họa để l&agrave;m nổi bật b&agrave;i thuyết tr&igrave;nh của bạn.</p>\r\n<p>? <strong>Chia Sẻ Kiến Thức v&agrave; Mối Quan Hệ Chuy&ecirc;n Nghiệp:</strong> Kết nối với cộng đồng học vi&ecirc;n, chia sẻ mẹo v&agrave; kinh nghiệm với những người đồng h&agrave;nh. Học hỏi từ những người giỏi Office để n&acirc;ng cao kỹ năng của bạn.</p>\r\n<p>? <strong>N&acirc;ng Cao Hiệu Suất C&ocirc;ng Việc Văn Ph&ograve;ng:</strong> Với sự trợ gi&uacute;p từ gi&aacute;o vi&ecirc;n c&oacute; kinh nghiệm, bạn sẽ trở th&agrave;nh chuy&ecirc;n gia về Microsoft Office v&agrave; c&oacute; thể &aacute;p dụng ngay kỹ năng mới v&agrave;o c&ocirc;ng việc h&agrave;ng ng&agrave;y.</p>\r\n<p>? <strong>Đăng K&yacute; Ngay Để Trở Th&agrave;nh Chuy&ecirc;n Gia Văn Ph&ograve;ng!</strong> ?</p>',1,0,'Khóa học office (Excel - Word - Power Point)'),(62,'Khóa học phong cách sống tối ưu',4,1,1,0,1000000,600000,'<p>? <strong>Kh&oacute;a Học \"Phong C&aacute;ch Sống Tối Ưu\": Học C&aacute;ch Tạo Ra Cuộc Sống Đầy &Yacute; Nghĩa v&agrave; Hạnh Ph&uacute;c!</strong> ?</p>\r\n<p>Kh&aacute;m ph&aacute; v&agrave; chinh phục nghệ thuật sống một c&aacute;ch chất lượng v&agrave; tối ưu với kh&oacute;a học n&agrave;y. Từ quản l&yacute; thời gian đến ph&aacute;t triển t&acirc;m hồn, bạn sẽ được hướng dẫn để x&acirc;y dựng phong c&aacute;ch sống mang lại sự c&acirc;n bằng v&agrave; niềm vui.</p>\r\n<p>?️ <strong>Quản L&yacute; Thời Gian Hiệu Quả:</strong> Học c&aacute;ch ưu ti&ecirc;n c&ocirc;ng việc v&agrave; giải quyết stress th&ocirc;ng qua kỹ thuật quản l&yacute; thời gian, gi&uacute;p bạn c&oacute; thời gian cho cả c&ocirc;ng việc v&agrave; giải tr&iacute;.</p>\r\n<p>? <strong>Ph&aacute;t Triển T&acirc;m Hồn v&agrave; Tinh Thần:</strong> Kh&aacute;m ph&aacute; c&aacute;c kỹ thuật thiền v&agrave; tập trung để gi&uacute;p bạn duy tr&igrave; trạng th&aacute;i t&acirc;m l&yacute; t&iacute;ch cực v&agrave; l&agrave;nh mạnh. Học c&aacute;ch x&acirc;y dựng t&acirc;m hồn mạnh mẽ trong cuộc sống hối hả.</p>\r\n<p>? <strong>Chăm S&oacute;c Sức Khỏe To&agrave;n Diện:</strong> T&igrave;m hiểu c&aacute;ch duy tr&igrave; một lối sống l&agrave;nh mạnh từ chế độ ăn uống c&acirc;n đối đến việc thực hiện b&agrave;i tập thể dục đ&uacute;ng c&aacute;ch. X&acirc;y dựng th&oacute;i quen để bảo vệ sức khỏe của bạn.</p>\r\n<p>? <strong>Tạo N&ecirc;n M&ocirc;i Trường Sống H&agrave;i H&ograve;a:</strong> Hướng dẫn c&aacute;ch tạo ra một kh&ocirc;ng gian sống sạch sẽ, thoải m&aacute;i v&agrave; đầy &yacute; nghĩa. Kh&aacute;m ph&aacute; nghệ thuật của việc sắp xếp v&agrave; tối giản h&oacute;a cuộc sống.</p>\r\n<p>? <strong>X&acirc;y Dựng Mối Quan Hệ X&atilde; Hội v&agrave; Gia Đ&igrave;nh:</strong> Chia sẻ c&aacute;ch tạo ra mối quan hệ ch&acirc;n th&agrave;nh v&agrave; &yacute; nghĩa, cả trong gia đ&igrave;nh v&agrave; x&atilde; hội. Học c&aacute;ch giữ g&igrave;n v&agrave; ph&aacute;t triển mối quan hệ một c&aacute;ch t&iacute;ch cực.</p>\r\n<p>? <strong>Ph&aacute;t triển Sự Nghiệp v&agrave; Năng Lực C&aacute; Nh&acirc;n:</strong> Học c&aacute;ch đặt mục ti&ecirc;u v&agrave; ph&aacute;t triển kỹ năng c&aacute; nh&acirc;n để đạt được sự th&agrave;nh c&ocirc;ng trong sự nghiệp v&agrave; cuộc sống.</p>\r\n<p>? <strong>Bước Đi Tới Phong C&aacute;ch Sống Tối Ưu:</strong> Với sự hỗ trợ từ gi&aacute;o vi&ecirc;n v&agrave; chuy&ecirc;n gia, bạn sẽ c&oacute; cơ hội tối ưu h&oacute;a cuộc sống của m&igrave;nh v&agrave; tạo ra một phong c&aacute;ch sống mang lại sự hạnh ph&uacute;c v&agrave; &yacute; nghĩa. ?</p>',3,0,'Khóa học phong cách sống tối ưu'),(63,'Khóa học nghệ thuật bán hàng hiệu quả',3,1,1,1,2100000,1900000,'<p>? <strong>Kh&oacute;a Học \"Nghệ Thuật B&aacute;n H&agrave;ng Hiệu Quả\": Chinh Phục Thị Trường v&agrave; X&acirc;y Dựng Sự Nghiệp B&aacute;n H&agrave;ng Th&agrave;nh C&ocirc;ng!</strong> ?</p>\r\n<p>Kh&aacute;m ph&aacute; b&iacute; quyết v&agrave; chiến lược trong lĩnh vực b&aacute;n h&agrave;ng với kh&oacute;a học n&agrave;y, nơi bạn sẽ được hướng dẫn từ những kỹ năng cơ bản đến những chiến lược n&acirc;ng cao, gi&uacute;p bạn trở th&agrave;nh một chuy&ecirc;n gia b&aacute;n h&agrave;ng đ&aacute;ng ch&uacute; &yacute;.</p>\r\n<p>? <strong>Hiểu R&otilde; Kh&aacute;ch H&agrave;ng v&agrave; Nhu Cầu Thị Trường:</strong> Học c&aacute;ch ph&acirc;n t&iacute;ch thị trường, nắm bắt nhu cầu của kh&aacute;ch h&agrave;ng v&agrave; x&acirc;y dựng chiến lược b&aacute;n h&agrave;ng ph&ugrave; hợp với đối tượng mục ti&ecirc;u.</p>\r\n<p>? <strong>Kỹ Năng Giao Tiếp v&agrave; Thuyết Phục:</strong> Ph&aacute;t triển kỹ năng giao tiếp mạnh mẽ v&agrave; khả năng thuyết phục để tạo ra ấn tượng t&iacute;ch cực v&agrave; tăng cường khả năng b&aacute;n h&agrave;ng.</p>\r\n<p>? <strong>Quản L&yacute; Quan Hệ Kh&aacute;ch H&agrave;ng (CRM):</strong> T&igrave;m hiểu c&aacute;ch sử dụng c&aacute;c hệ thống CRM để quản l&yacute; th&ocirc;ng tin kh&aacute;ch h&agrave;ng, x&acirc;y dựng mối quan hệ v&agrave; tăng cường trải nghiệm mua sắm.</p>\r\n<p>? <strong>B&aacute;n H&agrave;ng Trực Tuyến v&agrave; Quảng C&aacute;o Số:</strong> Kh&aacute;m ph&aacute; c&aacute;ch kinh doanh trực tuyến v&agrave; sử dụng c&aacute;c chiến lược quảng c&aacute;o số để tiếp cận đối tượng mục ti&ecirc;u hiệu quả.</p>\r\n<p>? <strong>X&acirc;y Dựng Mối Quan Hệ B&aacute;n H&agrave;ng Bền Vững:</strong> Học c&aacute;ch x&acirc;y dựng mối quan hệ l&acirc;u d&agrave;i với kh&aacute;ch h&agrave;ng v&agrave; đối t&aacute;c. T&igrave;m hiểu c&aacute;ch duy tr&igrave; v&agrave; ph&aacute;t triển danh tiếng t&iacute;ch cực trong ng&agrave;nh.</p>\r\n<p>? <strong>Chiến Lược B&aacute;n H&agrave;ng v&agrave; Đ&agrave;m Ph&aacute;n Hiệu Quả:</strong> Ph&acirc;n t&iacute;ch chiến lược b&aacute;n h&agrave;ng, từ x&aacute;c định gi&aacute; đến đ&agrave;m ph&aacute;n. Học c&aacute;ch đối mặt v&agrave; giải quyết th&aacute;ch thức trong qu&aacute; tr&igrave;nh b&aacute;n h&agrave;ng.</p>\r\n<p>? <strong>Bước Đi Tới Sự Nghiệp B&aacute;n H&agrave;ng Th&agrave;nh C&ocirc;ng:</strong> Với sự hỗ trợ từ gi&aacute;o vi&ecirc;n v&agrave; chuy&ecirc;n gia c&oacute; kinh nghiệm, bạn sẽ trang bị những kỹ năng v&agrave; chiến lược cần thiết để đạt được sự th&agrave;nh c&ocirc;ng trong lĩnh vực b&aacute;n h&agrave;ng. ?</p>',2,0,'khoa-hoc-nghe-thuat-ban-hang-hieu-qua');
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `levels`
--

DROP TABLE IF EXISTS `levels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `levels` (
  `id` int NOT NULL AUTO_INCREMENT,
  `value` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `levels`
--

LOCK TABLES `levels` WRITE;
/*!40000 ALTER TABLE `levels` DISABLE KEYS */;
INSERT INTO `levels` VALUES (1,'Cơ Bản','ez'),(2,'Nâng cao','hard'),(3,'Mọi cấp độ','every');
/*!40000 ALTER TABLE `levels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `created_date` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `special_news` tinyint NOT NULL,
  `content` text,
  `img_url` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,'Kinh nghiệm thiết kế website mà bạn nên biết ít nhất 1 lần trong đời','Nguyễn Ngọc Dũng','27/04/2022',1,'1. Dễ di chuyển, dễ đọc\n\nMột hệ thống di chuyển rõ ràng, trực quan giúp khách hàng có thể tìm kiếm thông tin dễ dàng nhất và hài lòng nhất. Những liên kết ở đầu trang/ cuối trang sẽ được hiển thị dễ dàng và giúp người dùng có cái nhìn bao quát, tiện lợi khi sử dụng. Tỉ lệ liên kết tốt nhất là  2-3 chổ có liên kết trong một trang.\n\n2. Tạo các khoảng trắng\n\nMột trang web với toàn chữ là chữ sẽ hạn chế và làm rối mắt người dùng từ đó thông tin mà bạn muốn truyền đạt đến người dùng cũng bị hạn chế. Hãy tạo ra một số không gian trắng. Việc này sẽ giúp cho người dùng đỡ rối mắt  giản con mắt và là một công cụ để phân chia nội dung thể hiện những nội dung qua trọng.\n\n3. Hướng đến người dùng\nMỗi trang web đều có những đối tượng khác nhau, cá nhân hoá trang hoá theo nhóm đối tượng khách hàng chính là cách làm cho người dùng thoải mái thả thích lướt và sử dụng web của bạn.\n\n4.Sắp xếp theo nhóm\n\nNhững nội dung liên nhau nên để gần nhau để bảo đảm sao cho thông tin được tìm thấy một cách dễ dàng. Hãy đặt những thông tin quan trọng ngang nhau cùng một trang. Nó sẽ giúp nguời dùng theo dõi thông tin trực quan hơn, dễ hơn.\n\n5. Nhất quán\n\nNhững phần tử giống nhau phải có cùng tham số thiết kế như nhau: định dạng, ảnh, màu nền, cách bố trí…. Chỉ nên dùng 2-4 kiểu màu và font cho một trang web.\n\n6. Tin tức nhanh\n\nMục tin tức nhanh chính là điểm quan trọng thu hút sự quay lại thường xuyên của người dùng. Nên cập nhật phần này mỗi ngày để duy trì độ thăm viếng website của bạn.\n\n7. Nhanh, nhỏ\n\nTốc độ tải nhanh, dung lượng ảnh nhỏ sẽ giúp trang web của bạn tải nhanh hơn và đây là điều tuyệt vời khi bạn không bắt khách hàng phải đợi chờ.\n\n8. Dễ truy nhập\n\nMỗi người dùng thì có một trình duyệt khác nhau, một hệ điều hành khác nhau nên hãy xây dựng website của bạn đáp ứng được trên mọi trình duyệt.\n\n9. Nguyên tắc nhấp 3 lần\n\nMỗi thông tin của trang web phải đến với khách hàng không quá ba lần nhắp chuột. Còn với các thông tin khẩn hay các biểu mẫu dăng kí thì chỉ một lần.\n\n10. Xây dựng sơ đồ site\n\nKhi site quá lớn thì việc tìm kiếm thông tin quả là rất khó khăn. Bạn nên xây dựng trang sơ đồ site để có thể tới mọi ngõ ngách trong site. Trang này cần gì? Không cần đẹp mà cần tính năng động của nó, nó phải tải xuống nhanh nhất.','/static/imgs/news/news1.webp','kinh-nghiem-thiet-ke-website-ma-ban-nen-biet-it-nhat-1-lan-trong-doi');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teachers`
--

DROP TABLE IF EXISTS `teachers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teachers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `category_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `teachers_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teachers`
--

LOCK TABLES `teachers` WRITE;
/*!40000 ALTER TABLE `teachers` DISABLE KEYS */;
INSERT INTO `teachers` VALUES (1,'Lê Phi Hùng',NULL,10),(2,'Huỳnh Ngọc Thanh','/static/imgs/teachers/teacher_1.webp',1),(3,'Nguyễn Quang Duy','/static/imgs/teachers/3.webp',5);
/*!40000 ALTER TABLE `teachers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thumbnails`
--

DROP TABLE IF EXISTS `thumbnails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `thumbnails` (
  `id` int NOT NULL AUTO_INCREMENT,
  `img` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `course_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_thumbnails_courses1_idx` (`course_id`),
  CONSTRAINT `fk_thumbnails_courses1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=677 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thumbnails`
--

LOCK TABLES `thumbnails` WRITE;
/*!40000 ALTER TABLE `thumbnails` DISABLE KEYS */;
INSERT INTO `thumbnails` VALUES (555,'/static/imgs/courses/course_3.webp',3),(558,'/static/imgs/courses/course_7.png',6),(569,'/static/imgs/courses/course_2.webp',2),(576,'/static/imgs/courses/3bf6ad12-0581-49cc-b774-58fa10bfae60.jpg',50),(577,'/static/imgs/courses/4fad90f9-b5c3-4653-8c8a-203316ecb77d.jpg',49),(587,'/static/imgs/courses/1209de62-c05a-47c3-bd02-29cb93aa352d.jpg',47),(588,'/static/imgs/courses/b488dc63-32da-460c-85ca-cda3d5cbb580.jpg',47),(589,'/static/imgs/courses/35fe6f3b-48b5-424a-b2e4-d1a7e797dce7.jpg',47),(590,'/static/imgs/courses/048d54a2-30ff-4468-ae69-3648bdc4bb84.jpg',47),(599,'/static/imgs/courses/34a5bdde-6dcc-4cc5-a81d-5a468140a8c2.jpg',4),(600,'/static/imgs/courses/7ba61f74-c746-404c-86cc-a20b359ad48e.png',4),(601,'/static/imgs/courses/0b561706-3eb0-45b4-b64e-a73e997daf26.jpg',5),(602,'/static/imgs/courses/b914c9d1-e729-4881-82b9-3ae14f854ce0.jpg',5),(603,'/static/imgs/courses/dc1d18f6-5a5c-4b0c-b4a3-5dba526a0533.jpg',1),(604,'/static/imgs/courses/d9eb2153-e765-49db-9955-21addf5ee690.jpg',1),(605,'/static/imgs/courses/62cc24a4-85e8-483e-9da6-d9d0f67fd10a.jpg',1),(606,'/static/imgs/courses/d5d283cf-bfbd-43af-992d-f1e78beea1e3.jpg',1),(607,'/static/imgs/courses/4e71044b-5957-45ad-ab7c-701999985650.webp',1),(608,'/static/imgs/courses/235b6846-075c-4f82-a93a-c360f3c5c241.jpg',48),(609,'/static/imgs/courses/3a9778f2-ca69-4ae0-8802-ec294269bf32.jpg',48),(610,'/static/imgs/courses/460b5527-e5c4-4bf0-82a9-fc85defa1c41.jpg',48),(611,'/static/imgs/courses/4c3d8647-b94f-47f2-8b15-ffd2b9592cc1.jpg',48),(612,'/static/imgs/courses/7ff56d45-a007-4566-ac7e-9a037376229a.png',52),(613,'/static/imgs/courses/61524e05-3fe3-4e94-8e16-2aad0fb8110b.jpg',52),(614,'/static/imgs/courses/ef199b6e-5009-4ba9-95a9-e31434188c18.jpg',52),(615,'/static/imgs/courses/8f2d9a80-f02b-4555-b4c6-b0d1f436820b.jpg',52),(620,'/static/imgs/courses/9e4746dc-bcd0-490c-bc76-a647533c5d34.jpg',51),(621,'/static/imgs/courses/c0107b13-c611-445f-8dec-8aea490dfb27.jpg',51),(622,'/static/imgs/courses/faa330b8-3cda-4a3d-bfcc-d578b68d2a51.jpg',51),(623,'/static/imgs/courses/f22a6020-7c3d-4176-ac24-1281f5199dce.jpg',51),(626,'/static/imgs/courses/b878ffbc-2580-4387-8c5a-448f319f373e.jpg',53),(627,'/static/imgs/courses/a83dce88-2207-44ec-b91e-97e4800b7e25.jpg',53),(628,'/static/imgs/courses/56c5307f-ec7c-40b8-81ea-6c6729ec05a7.jpg',53),(629,'/static/imgs/courses/a6e5e5da-2b51-4f3c-ade1-43a6e5e042bb.jpg',53),(630,'/static/imgs/courses/20f60381-f7a0-4949-b751-aec4a02ef7f5.jpg',54),(631,'/static/imgs/courses/69cfbef1-7c1e-44ec-96f8-75295b35212c.jpg',54),(632,'/static/imgs/courses/d66f50a8-e044-476b-8165-71a29db27051.jpg',54),(633,'/static/imgs/courses/5feec346-5974-454b-b229-17cd6338d69b.jpg',54),(634,'/static/imgs/courses/dc24b37f-394a-4fee-b3f7-d998b5e39df9.png',54),(635,'/static/imgs/courses/caa76f0e-928c-4934-8bfb-77f264fa1786.jpg',55),(636,'/static/imgs/courses/9db41bf5-8208-4438-a297-aac6788910e0.jpg',55),(637,'/static/imgs/courses/4de0b66a-67ba-4f2c-8ded-53d54df69cbc.jpg',55),(638,'/static/imgs/courses/bad8b99d-6f6c-4f95-bb16-ace9b8e369fe.jpg',55),(639,'/static/imgs/courses/51ec0d21-d8e1-48c7-a2b0-1f45926bd87f.jpg',56),(640,'/static/imgs/courses/4953d580-9f99-4edd-849c-ddf0eb50210e.jpg',56),(641,'/static/imgs/courses/28d58fb2-71af-45b8-acc4-7a65893228ee.jpg',56),(642,'/static/imgs/courses/db76402f-5de2-4508-b24e-b0797062cf6b.jpg',56),(643,'/static/imgs/courses/32c747df-7c0c-435d-bbba-6b270e1deda1.jpg',57),(644,'/static/imgs/courses/cfe97193-0386-4f81-8329-eaa82c33d206.jpg',57),(645,'/static/imgs/courses/ef07c15d-e04e-43ac-8ce1-865ea81b257f.jpg',57),(646,'/static/imgs/courses/f2f8b58d-04cd-4a89-9279-7e03de762db0.jpg',57),(647,'/static/imgs/courses/2b01829e-9ed4-42d2-87c8-3a0107971897.jpg',58),(648,'/static/imgs/courses/2236b751-d1f9-4d04-a2fb-6e41ed08a05f.jpg',58),(649,'/static/imgs/courses/fa948d7a-20ad-4504-aa28-fa5e104f9d34.jpg',58),(650,'/static/imgs/courses/a696485a-f7f6-430f-92d8-59321a882192.jpg',58),(651,'/static/imgs/courses/322233a2-27a9-4073-9196-60605948d8ab.jpg',58),(652,'/static/imgs/courses/2e4ec5f9-156a-4e17-9ce1-9f4808735671.png',59),(653,'/static/imgs/courses/4fdcf90a-e0da-4dd7-87e4-c1999de85579.jpg',59),(654,'/static/imgs/courses/87a1448e-a55e-489e-a36b-a063c7e33c70.png',59),(655,'/static/imgs/courses/309eeb1c-b9fb-4480-aead-23fe9471e626.png',59),(656,'/static/imgs/courses/5cce97b6-c304-4a01-a68c-1198fe706138.jpg',59),(657,'/static/imgs/courses/0723c905-38d0-44ef-8dfa-3570b8d49610.jpg',60),(658,'/static/imgs/courses/f87fef09-a44c-40f3-afc1-1d64e5a50036.jpg',60),(659,'/static/imgs/courses/b8207b4c-75a3-4a0b-8106-b62a0a5e6a42.jpg',60),(660,'/static/imgs/courses/e38154cb-92cc-4126-a362-edfeedcbd4fa.jpg',60),(661,'/static/imgs/courses/61c5635d-fc34-45bd-bf9f-a18ef80cdf61.jpg',61),(662,'/static/imgs/courses/f3a12d9d-b21a-423e-b184-2d8b582a25d1.jpg',61),(663,'/static/imgs/courses/e6302fd7-96d8-4d05-aaf8-8985bb14db0d.jpg',61),(664,'/static/imgs/courses/98753165-7890-4f5b-aa13-87b08b90229e.jpg',61),(665,'/static/imgs/courses/e6dbf772-6c74-408e-8ef0-58dac589ea06.jpg',62),(666,'/static/imgs/courses/6bd0bcbb-884e-462c-ac04-f8033068c5ea.jpg',62),(667,'/static/imgs/courses/a2e57c12-e16f-4843-ac83-a21d67c447fc.jpg',62),(668,'/static/imgs/courses/73bcbcfc-48b4-40a3-a926-406e4682315f.jpg',62),(673,'/static/imgs/courses/48af7e91-1ea8-4354-b5c6-eb2c74cfb267.jpg',63),(674,'/static/imgs/courses/f9901f49-ad9e-4a26-b915-732b36a9db3a.jpg',63),(675,'/static/imgs/courses/2ccba5f9-6dc8-4bb6-953d-77b2518cf085.jpg',63),(676,'/static/imgs/courses/829b260c-5ea1-43ba-ae18-1c14fbe07e28.jpg',63);
/*!40000 ALTER TABLE `thumbnails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `password` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `phone` char(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `login_type` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT 'normal',
  `avatar` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `email_verified` tinyint NOT NULL DEFAULT '0',
  `role` char(10) NOT NULL DEFAULT 'USER',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (71,'thangloitran406@gmail.com','21ef487d28f42cafb042c7238aeffdeda10097fc99af808d248ddd306b1066e6',NULL,NULL,'Trần','Thắng Lợi','0879603547','normal',NULL,1,'ADMIN'),(72,'thangloitran406@gmail.com',NULL,NULL,NULL,'Trần','Thắng Lợi',NULL,'google','https://lh3.googleusercontent.com/a/ACg8ocLm9Btb9ZOrs-Ol2B2ZUtH7JaTLlaNMPLbIGQhVJJNeqw=s96-c',1,'USER');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `verify_emails`
--

DROP TABLE IF EXISTS `verify_emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `verify_emails` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `user_id` int NOT NULL,
  `remember_token` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `expires` int NOT NULL DEFAULT '180',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `verify_emails_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `verify_emails`
--

LOCK TABLES `verify_emails` WRITE;
/*!40000 ALTER TABLE `verify_emails` DISABLE KEYS */;
/*!40000 ALTER TABLE `verify_emails` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

<<<<<<< HEAD
-- Dump completed on 2024-01-20 19:27:53
=======
-- Dump completed on 2024-01-20  1:20:43
>>>>>>> 256269dd4f6af623864efe3ff3dca99a8c59b174
