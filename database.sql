-- MySQL dump 10.13  Distrib 8.0.33, for macos13 (x86_64)
--
-- Host: 127.0.0.1    Database: ultranew_v2
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activations_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` VALUES (1,1,'QRIqOjB6DXpY3jU8zbeHz5cabcp77bPS',1,'2024-05-03 15:00:22','2024-05-03 15:00:22','2024-05-03 15:00:22');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_notifications`
--

DROP TABLE IF EXISTS `admin_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_notifications`
--

LOCK TABLES `admin_notifications` WRITE;
/*!40000 ALTER TABLE `admin_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clicked` bigint NOT NULL DEFAULT '0',
  `order` int DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `open_in_new_tab` tinyint(1) NOT NULL DEFAULT '1',
  `tablet_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ads_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_adsense_slot_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ads_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
INSERT INTO `ads` VALUES (1,'Header ads','2025-05-03 00:00:00','header-ads','KNBNG3R2DD','banners/image-3.jpg','https://thesky9.com/',0,1,'published','2024-05-03 15:00:24','2024-05-03 15:00:24',1,NULL,NULL,NULL,NULL),(2,'Panel ads','2025-05-03 00:00:00','panel-ads','EPBDA2EKNR','banners/image-3.jpg','https://thesky9.com/',0,1,'published','2024-05-03 15:00:24','2024-05-03 15:00:24',1,NULL,NULL,NULL,NULL),(3,'Top sidebar ads','2025-05-03 00:00:00','top-sidebar-ads','SEBYWWHZR4','banners/image-1.jpg','https://thesky9.com/',0,2,'published','2024-05-03 15:00:24','2024-05-03 15:00:24',1,NULL,NULL,NULL,NULL),(4,'Bottom sidebar ads','2025-05-03 00:00:00','bottom-sidebar-ads','KOSIJC8W5S','banners/image-2.jpg','https://thesky9.com/',0,3,'published','2024-05-03 15:00:24','2024-05-03 15:00:24',1,NULL,NULL,NULL,NULL),(5,'Custom ads 1','2025-05-03 00:00:00','custom-1','JAAJCCNB5G','banners/image-4.jpg','https://thesky9.com/',0,4,'published','2024-05-03 15:00:24','2024-05-03 15:00:24',1,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads_translations`
--

DROP TABLE IF EXISTS `ads_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ads_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ads_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads_translations`
--

LOCK TABLES `ads_translations` WRITE;
/*!40000 ALTER TABLE `ads_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ads_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_histories`
--

DROP TABLE IF EXISTS `audit_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `module` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` longtext COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(39) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` int unsigned NOT NULL,
  `reference_id` int unsigned NOT NULL,
  `reference_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `audit_histories_user_id_index` (`user_id`),
  KEY `audit_histories_module_index` (`module`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_histories`
--

LOCK TABLES `audit_histories` WRITE;
/*!40000 ALTER TABLE `audit_histories` DISABLE KEYS */;
INSERT INTO `audit_histories` VALUES (5,1,'to the system',NULL,'logged in','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36','172.31.0.1',0,1,'System Admin','info','2023-04-17 00:14:00','2023-04-17 00:14:00'),(6,1,'to the system',NULL,'logged in','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36','172.31.0.1',0,1,'System Admin','info','2023-05-07 08:21:39','2023-05-07 08:21:39'),(7,1,'to the system',NULL,'logged in','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36','172.31.0.1',0,1,'System Admin','info','2023-05-14 15:32:43','2023-05-14 15:32:43'),(8,1,'page','{\"name\":\"Contact\",\"slug\":\"contact\",\"slug_id\":\"0\",\"is_slug_editable\":\"1\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":null,\"content\":\"<shortcode class=\\\"bb-shortcode\\\">[contact-form title=\\\"Get in Touch\\\"][\\/contact-form]<\\/shortcode><h3>Directions<\\/h3><shortcode class=\\\"bb-shortcode\\\">[google-map]North Link Building, 10 Admiralty Street, 757695 Singapore[\\/google-map]<\\/shortcode>\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":null,\"status\":\"published\",\"template\":\"right-sidebar\",\"image\":null}','updated','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36','172.31.0.1',1,8,'Contact','primary','2023-05-14 15:36:21','2023-05-14 15:36:21'),(9,1,'page','{\"name\":\"Contact\",\"slug\":\"contact\",\"slug_id\":\"0\",\"is_slug_editable\":\"1\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":null,\"content\":\"<shortcode class=\\\"bb-shortcode\\\">[contact-form title=\\\"Get in Touch\\\"][\\/contact-form]<\\/shortcode><h3>Directions<\\/h3><shortcode class=\\\"bb-shortcode\\\">[google-map]North Link Building, 10 Admiralty Street, 757695 Singapore[\\/google-map]<\\/shortcode>\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":null,\"status\":\"published\",\"template\":\"default\",\"image\":null}','updated','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36','172.31.0.1',1,8,'Contact','primary','2023-05-14 15:36:39','2023-05-14 15:36:39'),(10,1,'page','{\"name\":\"Contact\",\"slug\":\"contact\",\"slug_id\":\"0\",\"is_slug_editable\":\"1\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":null,\"content\":\"<shortcode class=\\\"bb-shortcode\\\">[contact-form title=\\\"Get in Touch\\\"][\\/contact-form]<\\/shortcode><h3>Directions<\\/h3><shortcode class=\\\"bb-shortcode\\\">[google-map]North Link Building, 10 Admiralty Street, 757695 Singapore[\\/google-map]<\\/shortcode>\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":null,\"status\":\"published\",\"template\":\"right-sidebar\",\"image\":null}','updated','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36','172.31.0.1',1,8,'Contact','primary','2023-05-14 15:36:48','2023-05-14 15:36:48'),(11,1,'to the system',NULL,'logged in','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36','172.22.0.1',0,1,'Super Admin','info','2023-12-24 05:27:25','2023-12-24 05:27:25'),(12,2,'to the system',NULL,'logged in','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36','172.22.0.1',0,2,'Joanie Langosh','info','2023-12-24 07:48:14','2023-12-24 07:48:14'),(13,2,'to the system',NULL,'logged in','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36','172.30.0.1',0,2,'Pasquale Bailey','info','2024-01-09 16:12:19','2024-01-09 16:12:19'),(14,2,'to the system',NULL,'logged in','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36','172.30.0.1',0,2,'Rachael Sipes','info','2024-02-13 01:35:13','2024-02-13 01:35:13'),(15,2,'to the system',NULL,'logged in','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36','172.22.0.1',0,2,'Jeremie Jacobson','info','2024-03-22 01:02:48','2024-03-22 01:02:48'),(16,2,'to the system',NULL,'logged in','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36','172.22.0.1',0,2,'Jeremie Jacobson','info','2024-03-28 13:53:57','2024-03-28 13:53:57'),(17,2,'to the system',NULL,'logged in','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36','172.22.0.1',0,2,'Jeremie Jacobson','info','2024-04-14 09:26:46','2024-04-14 09:26:46'),(18,1,'to the system',NULL,'logged in','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36','172.22.0.1',0,1,'Marquis Pacocha','info','2024-04-14 09:29:51','2024-04-14 09:29:51'),(19,1,'to the system',NULL,'logged in','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36','172.22.0.1',0,1,'Zechariah Greenholt','info','2024-04-15 13:08:59','2024-04-15 13:08:59'),(20,1,'to the system',NULL,'logged in','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36','172.22.0.1',0,1,'Hilario Altenwerth','info','2024-04-25 14:23:59','2024-04-25 14:23:59'),(21,1,'to the system',NULL,'logged in','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36','172.22.0.1',0,1,'Hilario Altenwerth','info','2024-04-25 23:36:40','2024-04-25 23:36:40'),(22,1,'to the system',NULL,'logged in','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36','172.22.0.1',0,1,'Hilario Altenwerth','info','2024-04-25 23:36:40','2024-04-25 23:36:40'),(23,1,'to the system',NULL,'logged in','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36','172.22.0.1',0,1,'Emely Jacobs','info','2024-05-03 14:57:24','2024-05-03 14:57:24');
/*!40000 ALTER TABLE `audit_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bb_comment_likes`
--

DROP TABLE IF EXISTS `bb_comment_likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bb_comment_likes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` int unsigned NOT NULL,
  `user_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  PRIMARY KEY (`id`),
  KEY `bb_comment_likes_comment_id_index` (`comment_id`),
  KEY `bb_comment_likes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bb_comment_likes`
--

LOCK TABLES `bb_comment_likes` WRITE;
/*!40000 ALTER TABLE `bb_comment_likes` DISABLE KEYS */;
/*!40000 ALTER TABLE `bb_comment_likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bb_comment_recommends`
--

DROP TABLE IF EXISTS `bb_comment_recommends`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bb_comment_recommends` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reference_id` int unsigned NOT NULL,
  `reference_type` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  PRIMARY KEY (`id`),
  KEY `bb_comment_recommends_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bb_comment_recommends`
--

LOCK TABLES `bb_comment_recommends` WRITE;
/*!40000 ALTER TABLE `bb_comment_recommends` DISABLE KEYS */;
/*!40000 ALTER TABLE `bb_comment_recommends` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bb_comment_users`
--

DROP TABLE IF EXISTS `bb_comment_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bb_comment_users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar_id` int unsigned DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `last_name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bb_comment_users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bb_comment_users`
--

LOCK TABLES `bb_comment_users` WRITE;
/*!40000 ALTER TABLE `bb_comment_users` DISABLE KEYS */;
INSERT INTO `bb_comment_users` VALUES (1,'Lorine','xlangworth@wehner.com','$2y$12$8dyvR46mTXI3lZll0cSHFez1Zjg9nDv.7cxTp9j2fsgmJiOEZG2ke',52,NULL,'2024-05-03 15:00:42','2024-05-03 15:00:42','Aufderhar'),(2,'Makayla','gschumm@yahoo.com','$2y$12$q9zB/mGeAzn5wroHhjOxcOEO.9IVBFhXynF2In14tDaKl6t1U12AK',52,NULL,'2024-05-03 15:00:42','2024-05-03 15:00:42','Hane'),(3,'Moises','dooley.clementina@davis.biz','$2y$12$ECFiY92.owDhwrgTk5nL9.altULlhoQ7U4iIh2rN.UEFDzIdcnriu',55,NULL,'2024-05-03 15:00:42','2024-05-03 15:00:42','Sauer'),(4,'Lucas','candido.carroll@gmail.com','$2y$12$J3PIAqAPl3WXg2iarsETbeTxunTffaoAcqNBG1Vt/WEfSIrh8dcdO',51,NULL,'2024-05-03 15:00:42','2024-05-03 15:00:42','Kutch'),(5,'Delilah','bruen.nikko@murazik.info','$2y$12$..u13fvEiu90YhFguIFnP.qXVB1GzU0yjMSpjsfkUJLYz1FkX6D1G',52,NULL,'2024-05-03 15:00:43','2024-05-03 15:00:43','Marvin'),(6,'Braeden','jacinto.renner@klein.com','$2y$12$s9pqLMyFltlYV6O7HxicwedhdtE5n5SsToBEKSzn4z982WoKZqUmS',55,NULL,'2024-05-03 15:00:43','2024-05-03 15:00:43','Nitzsche'),(7,'Haley','orin.bradtke@will.biz','$2y$12$3IzbOyVQJgSeA7S/zw0ZR.pkGhZShS.n9dH0MKxEGGxdAv5bN1L86',51,NULL,'2024-05-03 15:00:43','2024-05-03 15:00:43','Stracke'),(8,'Queenie','sammy.jacobs@dubuque.com','$2y$12$VQYzyZQzxdp7Uiz0l3Ve3e1X3qw2B667HA3mecQ0PCN49yH/7kst.',53,NULL,'2024-05-03 15:00:43','2024-05-03 15:00:43','Macejkovic'),(9,'Eino','alvah32@gmail.com','$2y$12$QR7rnSEue89X5E3afFftne9hiAEYwckx/VA2eLLoRA/N2nHrYnXRC',52,NULL,'2024-05-03 15:00:43','2024-05-03 15:00:43','Gulgowski'),(10,'Chaya','gertrude.schaefer@hotmail.com','$2y$12$75iCD.Ftem1NHaeV4BUcse8x3H6/g1s1jzJ3HcyjvKHRKFvZDlWoG',53,NULL,'2024-05-03 15:00:44','2024-05-03 15:00:44','Kuhic');
/*!40000 ALTER TABLE `bb_comment_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bb_comments`
--

DROP TABLE IF EXISTS `bb_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bb_comments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `comment` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `reference_id` int unsigned NOT NULL,
  `reference_type` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_address` varchar(39) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `like_count` int NOT NULL DEFAULT '0',
  `reply_count` int NOT NULL DEFAULT '0',
  `parent_id` int unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bb_comments`
--

LOCK TABLES `bb_comments` WRITE;
/*!40000 ALTER TABLE `bb_comments` DISABLE KEYS */;
INSERT INTO `bb_comments` VALUES (1,'Alice more boldly: \'you know you\'re growing too.\' \'Yes, but some crumbs must have been changed for.',1,'Botble\\Blog\\Models\\Post','192.68.225.166',2,'published',0,0,0,'2024-04-21 13:34:39','2024-05-03 15:00:44','Botble\\Comment\\Models\\CommentUser'),(2,'CHAPTER II. The Pool of Tears \'Curiouser and curiouser!\' cried Alice hastily, afraid that it.',1,'Botble\\Blog\\Models\\Post','70.29.179.6',4,'published',0,0,0,'2024-04-16 02:14:30','2024-05-03 15:00:44','Botble\\Comment\\Models\\CommentUser'),(3,'Duchess\'s voice died away, even in the last time she went hunting about, and shouting \'Off with.',1,'Botble\\Blog\\Models\\Post','163.52.136.168',1,'published',0,1,0,'2024-04-25 20:37:46','2024-05-03 15:00:44','Botble\\Comment\\Models\\CommentUser'),(4,'Pigeon in a large pool all round her, about four inches deep and reaching half down the chimney!\'.',1,'Botble\\Blog\\Models\\Post','91.189.191.247',4,'published',0,0,0,'2024-04-10 14:40:10','2024-05-03 15:00:44','Botble\\Comment\\Models\\CommentUser'),(5,'I hadn\'t quite finished my tea when I got up very sulkily and crossed over to herself, \'because of.',1,'Botble\\Blog\\Models\\Post','98.77.157.42',8,'published',0,1,0,'2024-04-13 14:13:27','2024-05-03 15:00:44','Botble\\Comment\\Models\\CommentUser'),(6,'Alice: \'allow me to introduce it.\' \'I don\'t know what to beautify is, I suppose?\' \'Yes,\' said.',1,'Botble\\Blog\\Models\\Post','193.89.228.128',2,'published',0,0,0,'2024-04-25 16:46:06','2024-05-03 15:00:44','Botble\\Comment\\Models\\CommentUser'),(7,'She pitied him deeply. \'What is it?\' Alice panted as she wandered about in all directions, \'just.',1,'Botble\\Blog\\Models\\Post','208.106.19.1',1,'published',0,0,5,'2024-04-21 11:03:36','2024-05-03 15:00:44','Botble\\Comment\\Models\\CommentUser'),(8,'Presently the Rabbit coming to look about her and to her that she ought to eat some of YOUR.',1,'Botble\\Blog\\Models\\Post','1.71.62.158',2,'published',0,0,3,'2024-04-30 18:35:19','2024-05-03 15:00:44','Botble\\Comment\\Models\\CommentUser'),(9,'Gryphon answered, very nearly in the distance. \'And yet what a Gryphon is, look at all a pity. I.',2,'Botble\\Blog\\Models\\Post','231.9.177.92',4,'published',0,0,0,'2024-04-13 08:17:17','2024-05-03 15:00:44','Botble\\Comment\\Models\\CommentUser'),(10,'I COULD NOT SWIM--\" you can\'t take LESS,\' said the Gryphon, before Alice could see, as she went on.',2,'Botble\\Blog\\Models\\Post','159.185.204.26',2,'published',0,2,0,'2024-04-21 15:28:29','2024-05-03 15:00:44','Botble\\Comment\\Models\\CommentUser'),(11,'CURTSEYING as you\'re falling through the neighbouring pool--she could hear him sighing as if he.',2,'Botble\\Blog\\Models\\Post','239.216.108.59',5,'published',0,0,0,'2024-04-04 19:16:49','2024-05-03 15:00:44','Botble\\Comment\\Models\\CommentUser'),(12,'Alice the moment how large she had quite a new idea to Alice, she went on. \'We had the dish as its.',2,'Botble\\Blog\\Models\\Post','42.68.133.176',5,'published',0,0,0,'2024-04-16 19:02:44','2024-05-03 15:00:44','Botble\\Comment\\Models\\CommentUser'),(13,'Alice, (she had grown in the beautiful garden, among the bright eager eyes were getting so.',2,'Botble\\Blog\\Models\\Post','246.130.52.248',9,'published',0,0,0,'2024-04-19 14:18:18','2024-05-03 15:00:44','Botble\\Comment\\Models\\CommentUser'),(14,'The Panther took pie-crust, and gravy, and meat, While the Panther received knife and fork with a.',2,'Botble\\Blog\\Models\\Post','93.5.181.90',8,'published',0,0,0,'2024-04-11 19:15:42','2024-05-03 15:00:44','Botble\\Comment\\Models\\CommentUser'),(15,'Alice. \'It must have got into the roof of the shepherd boy--and the sneeze of the busy.',2,'Botble\\Blog\\Models\\Post','207.253.115.118',10,'published',0,0,10,'2024-04-25 22:17:57','2024-05-03 15:00:44','Botble\\Comment\\Models\\CommentUser'),(16,'Eaglet. \'I don\'t see,\' said the Cat. \'--so long as I do,\' said Alice indignantly, and she thought.',2,'Botble\\Blog\\Models\\Post','146.33.186.2',2,'published',0,0,10,'2024-04-22 17:55:06','2024-05-03 15:00:44','Botble\\Comment\\Models\\CommentUser'),(17,'The long grass rustled at her feet as the game was in the sea. The master was an old Turtle--we.',3,'Botble\\Blog\\Models\\Post','114.159.96.206',9,'published',0,0,0,'2024-04-05 23:19:46','2024-05-03 15:00:44','Botble\\Comment\\Models\\CommentUser'),(18,'Mouse, getting up and said, \'It WAS a curious croquet-ground in her hands, wondering if anything.',3,'Botble\\Blog\\Models\\Post','96.21.175.219',10,'published',0,0,0,'2024-04-10 01:57:22','2024-05-03 15:00:44','Botble\\Comment\\Models\\CommentUser'),(19,'Alice doubtfully: \'it means--to--make--anything--prettier.\' \'Well, then,\' the Gryphon went on for.',3,'Botble\\Blog\\Models\\Post','181.105.136.113',7,'published',0,0,0,'2024-05-01 23:01:09','2024-05-03 15:00:44','Botble\\Comment\\Models\\CommentUser'),(20,'I get\" is the capital of Paris, and Paris is the driest thing I ever saw one that size? Why, it.',3,'Botble\\Blog\\Models\\Post','199.103.44.18',2,'published',0,2,0,'2024-04-17 01:11:45','2024-05-03 15:00:44','Botble\\Comment\\Models\\CommentUser'),(21,'Alice: \'she\'s so extremely--\' Just then her head in the middle of one! There ought to have it.',3,'Botble\\Blog\\Models\\Post','204.217.214.24',10,'published',0,0,0,'2024-05-02 19:07:42','2024-05-03 15:00:44','Botble\\Comment\\Models\\CommentUser'),(22,'Gryphon whispered in reply, \'for fear they should forget them before the officer could get to the.',3,'Botble\\Blog\\Models\\Post','182.233.121.166',3,'published',0,0,0,'2024-04-26 17:31:58','2024-05-03 15:00:44','Botble\\Comment\\Models\\CommentUser'),(23,'CHAPTER IV. The Rabbit started violently, dropped the white kid gloves while she was saying, and.',3,'Botble\\Blog\\Models\\Post','42.52.114.117',1,'published',0,0,20,'2024-04-25 07:27:38','2024-05-03 15:00:44','Botble\\Comment\\Models\\CommentUser'),(24,'Lobster Quadrille, that she was quite a chorus of \'There goes Bill!\' then the other, and making.',3,'Botble\\Blog\\Models\\Post','7.49.48.131',7,'published',0,0,20,'2024-04-21 05:19:27','2024-05-03 15:00:44','Botble\\Comment\\Models\\CommentUser'),(25,'The Mouse did not like to have no idea what to say than his first remark, \'It was a paper label.',21,'Botble\\Blog\\Models\\Post','185.237.244.165',8,'published',0,1,0,'2024-04-10 23:52:19','2024-05-03 15:00:44','Botble\\Comment\\Models\\CommentUser'),(26,'Mock Turtle would be very likely true.) Down, down, down. There was exactly three inches high).',21,'Botble\\Blog\\Models\\Post','119.228.179.32',2,'published',0,0,0,'2024-04-03 21:49:10','2024-05-03 15:00:44','Botble\\Comment\\Models\\CommentUser'),(27,'Alice, \'we learned French and music.\' \'And washing?\' said the Mock Turtle, \'Drive on, old fellow!.',21,'Botble\\Blog\\Models\\Post','166.75.149.97',1,'published',0,0,0,'2024-05-02 09:11:07','2024-05-03 15:00:44','Botble\\Comment\\Models\\CommentUser'),(28,'Mabel after all, and I never was so small as this is May it won\'t be raving mad after all! I.',21,'Botble\\Blog\\Models\\Post','146.55.252.9',9,'published',0,1,0,'2024-04-23 00:20:35','2024-05-03 15:00:44','Botble\\Comment\\Models\\CommentUser'),(29,'But at any rate,\' said Alice: \'besides, that\'s not a mile high,\' said Alice. \'I\'ve so often read.',21,'Botble\\Blog\\Models\\Post','223.28.81.112',1,'published',0,0,0,'2024-04-16 07:39:34','2024-05-03 15:00:44','Botble\\Comment\\Models\\CommentUser'),(30,'Let me think: was I the same side of WHAT?\' thought Alice \'without pictures or conversations?\' So.',21,'Botble\\Blog\\Models\\Post','167.97.29.211',3,'published',0,0,0,'2024-04-10 07:42:11','2024-05-03 15:00:44','Botble\\Comment\\Models\\CommentUser'),(31,'Mock Turtle yet?\' \'No,\' said Alice. The poor little juror (it was Bill, I fancy--Who\'s to go near.',21,'Botble\\Blog\\Models\\Post','126.213.156.218',2,'published',0,0,28,'2024-04-28 14:56:04','2024-05-03 15:00:44','Botble\\Comment\\Models\\CommentUser'),(32,'Alice was soon left alone. \'I wish you wouldn\'t keep appearing and vanishing so suddenly: you make.',21,'Botble\\Blog\\Models\\Post','189.62.45.29',3,'published',0,0,25,'2024-04-24 23:20:55','2024-05-03 15:00:44','Botble\\Comment\\Models\\CommentUser'),(33,'An obstacle that came between Him, and ourselves, and it. Don\'t let me help to undo it!\' \'I shall.',22,'Botble\\Blog\\Models\\Post','148.157.211.1',2,'published',0,1,0,'2024-04-05 06:04:47','2024-05-03 15:00:44','Botble\\Comment\\Models\\CommentUser'),(34,'March Hare and his friends shared their never-ending meal, and the second thing is to find her way.',22,'Botble\\Blog\\Models\\Post','221.249.131.25',10,'published',0,0,0,'2024-04-08 22:13:08','2024-05-03 15:00:44','Botble\\Comment\\Models\\CommentUser'),(35,'It sounded an excellent opportunity for repeating his remark, with variations. \'I shall be late!\'.',22,'Botble\\Blog\\Models\\Post','169.205.178.76',2,'published',0,0,0,'2024-04-17 11:24:09','2024-05-03 15:00:44','Botble\\Comment\\Models\\CommentUser'),(36,'I shouldn\'t like THAT!\' \'Oh, you foolish Alice!\' she answered herself. \'How can you learn lessons.',22,'Botble\\Blog\\Models\\Post','2.248.19.77',8,'published',0,0,0,'2024-04-30 12:27:01','2024-05-03 15:00:44','Botble\\Comment\\Models\\CommentUser'),(37,'I used to know. Let me see--how IS it to half-past one as long as you are; secondly, because she.',22,'Botble\\Blog\\Models\\Post','208.55.241.59',6,'published',0,1,0,'2024-04-14 02:20:21','2024-05-03 15:00:44','Botble\\Comment\\Models\\CommentUser'),(38,'Rabbit came up to the shore. CHAPTER III. A Caucus-Race and a large cauldron which seemed to Alice.',22,'Botble\\Blog\\Models\\Post','221.224.254.9',9,'published',0,0,0,'2024-04-24 16:11:37','2024-05-03 15:00:44','Botble\\Comment\\Models\\CommentUser'),(39,'BEST butter, you know.\' It was, no doubt: only Alice did not get hold of it; so, after hunting all.',22,'Botble\\Blog\\Models\\Post','221.247.60.132',2,'published',0,0,37,'2024-04-30 11:40:31','2024-05-03 15:00:44','Botble\\Comment\\Models\\CommentUser'),(40,'Mock Turtle replied, counting off the top of the suppressed guinea-pigs, filled the air, I\'m.',22,'Botble\\Blog\\Models\\Post','54.77.16.25',7,'published',0,0,33,'2024-04-28 18:43:59','2024-05-03 15:00:44','Botble\\Comment\\Models\\CommentUser'),(41,'As for pulling me out of sight, they were nowhere to be managed? I suppose you\'ll be telling me.',23,'Botble\\Blog\\Models\\Post','208.221.30.145',5,'published',0,0,0,'2024-04-25 12:16:57','2024-05-03 15:00:44','Botble\\Comment\\Models\\CommentUser'),(42,'Rabbit\'s voice; and the baby with some curiosity. \'What a funny watch!\' she remarked. \'It tells.',23,'Botble\\Blog\\Models\\Post','10.57.116.80',7,'published',0,2,0,'2024-04-23 21:38:45','2024-05-03 15:00:44','Botble\\Comment\\Models\\CommentUser'),(43,'Alice to herself, \'the way all the things between whiles.\' \'Then you keep moving round, I.',23,'Botble\\Blog\\Models\\Post','233.30.51.132',10,'published',0,0,0,'2024-04-16 08:57:53','2024-05-03 15:00:44','Botble\\Comment\\Models\\CommentUser'),(44,'Mouse looked at Alice. \'It goes on, you know,\' the Hatter were having tea at it: a Dormouse was.',23,'Botble\\Blog\\Models\\Post','119.66.5.93',10,'published',0,0,0,'2024-04-15 06:49:54','2024-05-03 15:00:44','Botble\\Comment\\Models\\CommentUser'),(45,'Hatter with a soldier on each side, and opened their eyes and mouths so VERY remarkable in that.',23,'Botble\\Blog\\Models\\Post','136.87.245.155',3,'published',0,0,0,'2024-04-03 23:48:21','2024-05-03 15:00:44','Botble\\Comment\\Models\\CommentUser'),(46,'Alice glanced rather anxiously at the March Hare. Visit either you like: they\'re both mad.\' \'But I.',23,'Botble\\Blog\\Models\\Post','28.222.122.123',6,'published',0,0,0,'2024-04-05 05:00:31','2024-05-03 15:00:44','Botble\\Comment\\Models\\CommentUser'),(47,'THIS!\' (Sounds of more broken glass.) \'Now tell me, Pat, what\'s that in the back. At last the Dodo.',23,'Botble\\Blog\\Models\\Post','72.122.29.229',1,'published',0,0,42,'2024-04-21 21:17:34','2024-05-03 15:00:44','Botble\\Comment\\Models\\CommentUser'),(48,'March Hare said to Alice; and Alice looked down at her as she swam nearer to make out who was.',23,'Botble\\Blog\\Models\\Post','28.120.63.170',4,'published',0,0,42,'2024-04-24 12:03:57','2024-05-03 15:00:44','Botble\\Comment\\Models\\CommentUser');
/*!40000 ALTER TABLE `bb_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int unsigned NOT NULL DEFAULT '0',
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `status` (`status`),
  KEY `created_at` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Design',0,NULL,'published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2024-05-03 15:00:35','2024-05-03 15:00:35'),(2,'Lifestyle',0,NULL,'published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2024-05-03 15:00:35','2024-05-03 15:00:35'),(3,'Travel Tips',0,NULL,'published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2024-05-03 15:00:35','2024-05-03 15:00:35'),(4,'Healthy',0,NULL,'published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2024-05-03 15:00:35','2024-05-03 15:00:35'),(5,'Fashion',0,NULL,'published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2024-05-03 15:00:35','2024-05-03 15:00:35'),(6,'Hotel',0,NULL,'published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2024-05-03 15:00:35','2024-05-03 15:00:35'),(7,'Nature',0,NULL,'published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2024-05-03 15:00:35','2024-05-03 15:00:35');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_translations`
--

DROP TABLE IF EXISTS `categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_translations`
--

LOCK TABLES `categories_translations` WRITE;
/*!40000 ALTER TABLE `categories_translations` DISABLE KEYS */;
INSERT INTO `categories_translations` VALUES ('vi',1,'Phong cách sống',NULL),('vi',2,'Sức khỏe',NULL),('vi',3,'Món ngon',NULL),('vi',4,'Sách',NULL),('vi',5,'Mẹo du lịch',NULL),('vi',6,'Khách sạn',NULL),('vi',7,'Thiên nhiên',NULL);
/*!40000 ALTER TABLE `categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_field_options`
--

DROP TABLE IF EXISTS `contact_custom_field_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_field_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `custom_field_id` bigint unsigned NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '999',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_field_options`
--

LOCK TABLES `contact_custom_field_options` WRITE;
/*!40000 ALTER TABLE `contact_custom_field_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_field_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_field_options_translations`
--

DROP TABLE IF EXISTS `contact_custom_field_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_field_options_translations` (
  `contact_custom_field_options_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`contact_custom_field_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_field_options_translations`
--

LOCK TABLES `contact_custom_field_options_translations` WRITE;
/*!40000 ALTER TABLE `contact_custom_field_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_field_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_fields`
--

DROP TABLE IF EXISTS `contact_custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_fields` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `placeholder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int NOT NULL DEFAULT '999',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_fields`
--

LOCK TABLES `contact_custom_fields` WRITE;
/*!40000 ALTER TABLE `contact_custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_fields_translations`
--

DROP TABLE IF EXISTS `contact_custom_fields_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_fields_translations` (
  `contact_custom_fields_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `placeholder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`contact_custom_fields_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_fields_translations`
--

LOCK TABLES `contact_custom_fields_translations` WRITE;
/*!40000 ALTER TABLE `contact_custom_fields_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_fields_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_replies`
--

DROP TABLE IF EXISTS `contact_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_replies`
--

LOCK TABLES `contact_replies` WRITE;
/*!40000 ALTER TABLE `contact_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_fields` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'Zoe Jaskolski','webster75@example.org','(364) 895-7716','6735 Howell Prairie\nLake Shermanbury, MS 68062','Totam repudiandae quis id ipsum.','Hic officia rerum voluptas ea. Quaerat non perspiciatis qui voluptatem impedit sunt. Veniam architecto quo nihil quia temporibus itaque. Consequatur sequi earum officiis unde consectetur placeat ut voluptatum. Et repellat nostrum reiciendis. Hic quia voluptas dolorum necessitatibus sunt officiis amet. Dignissimos minima autem ut magni velit totam. Aut ullam sed quod. At dolorem non nemo repellendus. Dicta ea voluptatem sit eum omnis. Autem unde sequi soluta sit.',NULL,'read','2024-05-03 15:00:27','2024-05-03 15:00:27'),(2,'Isaias Bernier','lon.rau@example.org','(682) 212-9500','3355 Neil Circle\nWittingland, HI 07287','Eius omnis quo aperiam libero tenetur nihil.','Ut aliquam qui pariatur et rem quo. Voluptas perferendis ipsum aspernatur dicta. Laborum non accusamus quas libero debitis sequi. Ad fuga repellat corporis doloremque ut quae voluptatem. Provident ad fugiat et reprehenderit saepe cumque. Consectetur esse voluptatem eaque delectus. Est quaerat quia rerum sunt. Et nihil id rerum soluta. Ducimus tempore voluptatem consequatur animi.',NULL,'unread','2024-05-03 15:00:27','2024-05-03 15:00:27'),(3,'Miss Mariane Osinski','jazmin50@example.net','+1-508-300-2059','750 Prosacco Shore Suite 109\nCaleighchester, OK 12913-9242','Debitis aut ea sed et voluptatem.','Pariatur quas et aliquam nesciunt. Deserunt magni impedit libero excepturi. Eaque commodi libero voluptate. Omnis quam beatae ut ea sed omnis. Accusamus alias quo aut illum occaecati aut quos. Enim ipsa veritatis in sint. Qui possimus quasi corrupti atque quidem quisquam. Consequatur officiis eligendi magni nulla tempore atque.',NULL,'read','2024-05-03 15:00:27','2024-05-03 15:00:27'),(4,'Ava Kuhic','wehner.justina@example.net','479.431.9299','97825 Granville Loop Apt. 846\nTheresiaport, MO 14001','Modi rem ea reprehenderit sit hic.','At illo autem porro rerum. Esse provident sit voluptas neque vel. Molestiae sint itaque itaque ab placeat aut quis. Non laudantium consequatur id fugiat dicta. Nemo corrupti asperiores itaque modi veniam tempore repellendus. Laborum aut praesentium recusandae nihil quaerat eum aut vitae. Saepe et corporis consequatur inventore autem et. Numquam voluptatem quo voluptatem hic est ab hic eaque. Doloribus minima non quod illum deleniti et sit.',NULL,'read','2024-05-03 15:00:27','2024-05-03 15:00:27'),(5,'Fannie Rempel III','charity23@example.net','+1-559-672-0771','82716 Emile Cape\nEast Emanuelview, NE 58074','Itaque vero minima voluptas asperiores voluptate.','Voluptate cumque consequuntur odio similique sed culpa. Perspiciatis tempora laborum quos dolor placeat quis. Dolorem ut et saepe qui blanditiis. Molestiae quod quia repudiandae aut impedit labore tempore. Facilis sed maxime labore sint similique rerum eos. A aut voluptatem magni sint. Perferendis eum aspernatur quas qui ipsam quia autem et.',NULL,'read','2024-05-03 15:00:27','2024-05-03 15:00:27'),(6,'Emmet Sauer','rdenesik@example.org','507.827.4902','98265 Ottilie Forks Apt. 718\nWest Queenie, WI 96128-0691','Quidem iste dignissimos et aut quam repudiandae.','Aut voluptatem omnis qui et amet. Accusamus repellendus ea in voluptatibus nostrum magnam. Ducimus impedit nihil rerum exercitationem doloribus. Qui est non nulla hic deserunt ut quo. Suscipit voluptatum voluptas consequatur tempora eum. Dolor odio corporis rem et quo velit. Laudantium cupiditate iste occaecati expedita consequatur autem impedit ea. Repudiandae pariatur dolor itaque fugiat asperiores.',NULL,'unread','2024-05-03 15:00:27','2024-05-03 15:00:27'),(7,'Dalton Marquardt','carolanne.schumm@example.com','712-641-7412','1860 Bauch Run\nBoyerberg, VT 83651-7940','Molestiae voluptas dolor rerum sequi eius.','Quidem labore itaque itaque quis assumenda. Aut accusamus eveniet maiores vitae architecto ipsam maiores. Voluptate eos quisquam veritatis sunt sit sapiente. Laborum et excepturi deserunt quia ea cupiditate. Ab quaerat iure facilis. Sequi laboriosam culpa qui qui adipisci adipisci harum et. Amet sit et nam consequatur sed deleniti qui est. Vero dolorem soluta voluptatum facilis dolore. Cum doloremque praesentium quis at at culpa. Fugit sunt officia laborum unde ea quod.',NULL,'read','2024-05-03 15:00:27','2024-05-03 15:00:27'),(8,'Mario Langosh MD','maymie25@example.net','832-589-0921','65448 Rosalind Parks\nPricefurt, WI 38789','Et unde a eos odit ad quo voluptatem.','Nihil ut excepturi autem eos officia nesciunt. Numquam eum aut facilis voluptatem. Sed aut non repudiandae eius distinctio. Aut et in qui autem iste. Qui consequatur qui a dicta et cumque vel. Amet voluptas eos eum et. Dolorum aspernatur inventore consequatur. Est culpa minus perferendis voluptas voluptatem. In iure nulla repellat nihil assumenda qui eum. Molestiae necessitatibus repellendus voluptatem porro quia soluta.',NULL,'read','2024-05-03 15:00:27','2024-05-03 15:00:27'),(9,'Myra Torphy','cullen.mann@example.org','408-596-4044','323 Gerry Motorway Suite 099\nPurdyborough, NY 09447-7791','Et cumque molestiae itaque vel ducimus.','Aliquid qui dolorum sunt qui. Vitae porro repudiandae sit voluptate aliquid nisi illum. Dolor earum ut cum consequatur. Cumque possimus quos a est cumque delectus. Vel debitis veritatis inventore. Vel error atque nam aut. Est et molestiae quod. A optio sed dolore beatae. Assumenda fuga eos quidem ea laboriosam saepe. Sed aut eveniet et est debitis qui beatae. Aut ut illum sed veritatis. Veniam sed laborum velit vel rerum aspernatur veniam autem.',NULL,'read','2024-05-03 15:00:27','2024-05-03 15:00:27'),(10,'Donny Howe','zoila.greenholt@example.org','732.596.7028','710 Armstrong Station\nWest Hannahville, AL 89179','Non architecto ut est consequatur.','Quisquam occaecati ex alias accusamus. Voluptatum in iste non veritatis consequatur recusandae qui. Eos aut quia nulla consequatur. Quia optio eum officiis et. Dolor aut tenetur laborum nihil nemo. Et facere qui non. Voluptas et quod earum. Sapiente est quia id nam esse ipsam. A molestias amet consequatur. Dolore labore consequatur dicta dicta velit. Molestias doloremque sint aut. At odit quia et quisquam facere vitae sapiente. Numquam sequi vitae maiores repellendus commodi temporibus.',NULL,'unread','2024-05-03 15:00:28','2024-05-03 15:00:28');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widget_settings`
--

DROP TABLE IF EXISTS `dashboard_widget_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widget_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `widget_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` tinyint unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  KEY `dashboard_widget_settings_widget_id_index` (`widget_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widget_settings`
--

LOCK TABLES `dashboard_widget_settings` WRITE;
/*!40000 ALTER TABLE `dashboard_widget_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widget_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widgets`
--

DROP TABLE IF EXISTS `dashboard_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widgets`
--

LOCK TABLES `dashboard_widgets` WRITE;
/*!40000 ALTER TABLE `dashboard_widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorite_posts`
--

DROP TABLE IF EXISTS `favorite_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `favorite_posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int unsigned NOT NULL,
  `user_id` int unsigned NOT NULL,
  `type` enum('favorite','bookmark') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `favorite_posts_post_id_user_id_type_unique` (`post_id`,`user_id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorite_posts`
--

LOCK TABLES `favorite_posts` WRITE;
/*!40000 ALTER TABLE `favorite_posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `favorite_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleries`
--

DROP TABLE IF EXISTS `galleries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `galleries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `galleries_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries`
--

LOCK TABLES `galleries` WRITE;
/*!40000 ALTER TABLE `galleries` DISABLE KEYS */;
INSERT INTO `galleries` VALUES (1,'Perfect','Placeat est et vero autem est. Iusto libero explicabo ea dolorem totam est libero. Ea corrupti ex voluptatem quas voluptas libero nemo voluptate.',1,0,'galleries/1.jpg',1,'published','2024-05-03 15:00:27','2024-05-03 15:00:27'),(2,'New Day','Voluptas minima corrupti ipsum sunt eligendi facilis quas. Enim qui voluptatem nobis ipsum sit cumque cum. Atque et ea quasi dignissimos fuga.',1,0,'galleries/2.jpg',1,'published','2024-05-03 15:00:27','2024-05-03 15:00:27'),(3,'Happy Day','Sunt consequuntur aut facere. Ipsam et dolores aut odit vitae laborum. Et veniam voluptas nisi.',1,0,'galleries/3.jpg',1,'published','2024-05-03 15:00:27','2024-05-03 15:00:27'),(4,'Nature','Id officiis ab optio eligendi quibusdam. Atque officiis dolorum quia qui sapiente vitae. Consectetur sequi facere enim perferendis rem harum.',1,0,'galleries/4.jpg',1,'published','2024-05-03 15:00:27','2024-05-03 15:00:27'),(5,'Morning','In molestiae maxime aspernatur nihil repudiandae ut. Sit incidunt minima earum nihil nobis quod voluptates. Sequi eos aliquid blanditiis.',1,0,'galleries/5.jpg',1,'published','2024-05-03 15:00:27','2024-05-03 15:00:27'),(6,'Photography','Nostrum aspernatur ea mollitia sed. Corrupti qui voluptatibus libero itaque eum. Exercitationem et atque ratione quam ad.',1,0,'galleries/6.jpg',1,'published','2024-05-03 15:00:27','2024-05-03 15:00:27');
/*!40000 ALTER TABLE `galleries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleries_translations`
--

DROP TABLE IF EXISTS `galleries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `galleries_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `galleries_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`galleries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries_translations`
--

LOCK TABLES `galleries_translations` WRITE;
/*!40000 ALTER TABLE `galleries_translations` DISABLE KEYS */;
INSERT INTO `galleries_translations` VALUES ('vi',1,'Hoàn hảo',NULL),('vi',2,'Ngày mới',NULL),('vi',3,'Ngày hạnh phúc',NULL),('vi',4,'Thiên nhiên',NULL),('vi',5,'Buổi sáng',NULL),('vi',6,'Nghệ thuật',NULL);
/*!40000 ALTER TABLE `galleries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery_meta`
--

DROP TABLE IF EXISTS `gallery_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gallery_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `images` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `reference_id` int unsigned NOT NULL,
  `reference_type` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `gallery_meta_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery_meta`
--

LOCK TABLES `gallery_meta` WRITE;
/*!40000 ALTER TABLE `gallery_meta` DISABLE KEYS */;
INSERT INTO `gallery_meta` VALUES (1,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Similique rerum est rem laboriosam. Aliquid totam ex aliquid sint laudantium.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Aperiam illum itaque ipsam consequatur iusto. Ipsam voluptas qui quia nostrum sit sint. Est provident in error sed dolor enim sed.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Consequatur ad ex eius placeat voluptas doloremque. Ut aut hic enim. Atque amet quia accusamus.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Delectus tempora enim repudiandae reprehenderit exercitationem. Voluptas vel qui aut minus. Possimus enim officia hic tenetur.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Et sed ullam consequatur cum quidem laudantium id. Aliquam ex vitae nemo explicabo et repellendus qui cumque.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Omnis vel asperiores assumenda repellat autem dolor odio dolores. Ipsum accusamus vero ad est occaecati et.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Quis at qui quae dolorum quidem ut. Dolorem voluptatum est aut in.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Iusto est occaecati esse ut eveniet enim. Laudantium tempora voluptatum et illum. Quis quis aliquam voluptatem iste quis.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Vero cupiditate eveniet qui ad. Ullam velit voluptates sed. Consequatur ad quidem minima id fuga. Ipsam quas ut modi iure et.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Molestiae sint neque sint quas voluptatem et. Distinctio dolore dolor illum consequatur voluptatem repellendus eos. Ut iure deserunt quam quam aut.\"}]',1,'Botble\\Gallery\\Models\\Gallery','2024-05-03 15:00:27','2024-05-03 15:00:27'),(2,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Similique rerum est rem laboriosam. Aliquid totam ex aliquid sint laudantium.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Aperiam illum itaque ipsam consequatur iusto. Ipsam voluptas qui quia nostrum sit sint. Est provident in error sed dolor enim sed.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Consequatur ad ex eius placeat voluptas doloremque. Ut aut hic enim. Atque amet quia accusamus.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Delectus tempora enim repudiandae reprehenderit exercitationem. Voluptas vel qui aut minus. Possimus enim officia hic tenetur.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Et sed ullam consequatur cum quidem laudantium id. Aliquam ex vitae nemo explicabo et repellendus qui cumque.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Omnis vel asperiores assumenda repellat autem dolor odio dolores. Ipsum accusamus vero ad est occaecati et.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Quis at qui quae dolorum quidem ut. Dolorem voluptatum est aut in.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Iusto est occaecati esse ut eveniet enim. Laudantium tempora voluptatum et illum. Quis quis aliquam voluptatem iste quis.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Vero cupiditate eveniet qui ad. Ullam velit voluptates sed. Consequatur ad quidem minima id fuga. Ipsam quas ut modi iure et.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Molestiae sint neque sint quas voluptatem et. Distinctio dolore dolor illum consequatur voluptatem repellendus eos. Ut iure deserunt quam quam aut.\"}]',2,'Botble\\Gallery\\Models\\Gallery','2024-05-03 15:00:27','2024-05-03 15:00:27'),(3,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Similique rerum est rem laboriosam. Aliquid totam ex aliquid sint laudantium.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Aperiam illum itaque ipsam consequatur iusto. Ipsam voluptas qui quia nostrum sit sint. Est provident in error sed dolor enim sed.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Consequatur ad ex eius placeat voluptas doloremque. Ut aut hic enim. Atque amet quia accusamus.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Delectus tempora enim repudiandae reprehenderit exercitationem. Voluptas vel qui aut minus. Possimus enim officia hic tenetur.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Et sed ullam consequatur cum quidem laudantium id. Aliquam ex vitae nemo explicabo et repellendus qui cumque.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Omnis vel asperiores assumenda repellat autem dolor odio dolores. Ipsum accusamus vero ad est occaecati et.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Quis at qui quae dolorum quidem ut. Dolorem voluptatum est aut in.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Iusto est occaecati esse ut eveniet enim. Laudantium tempora voluptatum et illum. Quis quis aliquam voluptatem iste quis.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Vero cupiditate eveniet qui ad. Ullam velit voluptates sed. Consequatur ad quidem minima id fuga. Ipsam quas ut modi iure et.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Molestiae sint neque sint quas voluptatem et. Distinctio dolore dolor illum consequatur voluptatem repellendus eos. Ut iure deserunt quam quam aut.\"}]',3,'Botble\\Gallery\\Models\\Gallery','2024-05-03 15:00:27','2024-05-03 15:00:27'),(4,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Similique rerum est rem laboriosam. Aliquid totam ex aliquid sint laudantium.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Aperiam illum itaque ipsam consequatur iusto. Ipsam voluptas qui quia nostrum sit sint. Est provident in error sed dolor enim sed.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Consequatur ad ex eius placeat voluptas doloremque. Ut aut hic enim. Atque amet quia accusamus.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Delectus tempora enim repudiandae reprehenderit exercitationem. Voluptas vel qui aut minus. Possimus enim officia hic tenetur.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Et sed ullam consequatur cum quidem laudantium id. Aliquam ex vitae nemo explicabo et repellendus qui cumque.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Omnis vel asperiores assumenda repellat autem dolor odio dolores. Ipsum accusamus vero ad est occaecati et.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Quis at qui quae dolorum quidem ut. Dolorem voluptatum est aut in.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Iusto est occaecati esse ut eveniet enim. Laudantium tempora voluptatum et illum. Quis quis aliquam voluptatem iste quis.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Vero cupiditate eveniet qui ad. Ullam velit voluptates sed. Consequatur ad quidem minima id fuga. Ipsam quas ut modi iure et.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Molestiae sint neque sint quas voluptatem et. Distinctio dolore dolor illum consequatur voluptatem repellendus eos. Ut iure deserunt quam quam aut.\"}]',4,'Botble\\Gallery\\Models\\Gallery','2024-05-03 15:00:27','2024-05-03 15:00:27'),(5,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Similique rerum est rem laboriosam. Aliquid totam ex aliquid sint laudantium.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Aperiam illum itaque ipsam consequatur iusto. Ipsam voluptas qui quia nostrum sit sint. Est provident in error sed dolor enim sed.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Consequatur ad ex eius placeat voluptas doloremque. Ut aut hic enim. Atque amet quia accusamus.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Delectus tempora enim repudiandae reprehenderit exercitationem. Voluptas vel qui aut minus. Possimus enim officia hic tenetur.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Et sed ullam consequatur cum quidem laudantium id. Aliquam ex vitae nemo explicabo et repellendus qui cumque.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Omnis vel asperiores assumenda repellat autem dolor odio dolores. Ipsum accusamus vero ad est occaecati et.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Quis at qui quae dolorum quidem ut. Dolorem voluptatum est aut in.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Iusto est occaecati esse ut eveniet enim. Laudantium tempora voluptatum et illum. Quis quis aliquam voluptatem iste quis.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Vero cupiditate eveniet qui ad. Ullam velit voluptates sed. Consequatur ad quidem minima id fuga. Ipsam quas ut modi iure et.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Molestiae sint neque sint quas voluptatem et. Distinctio dolore dolor illum consequatur voluptatem repellendus eos. Ut iure deserunt quam quam aut.\"}]',5,'Botble\\Gallery\\Models\\Gallery','2024-05-03 15:00:27','2024-05-03 15:00:27'),(6,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Similique rerum est rem laboriosam. Aliquid totam ex aliquid sint laudantium.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Aperiam illum itaque ipsam consequatur iusto. Ipsam voluptas qui quia nostrum sit sint. Est provident in error sed dolor enim sed.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Consequatur ad ex eius placeat voluptas doloremque. Ut aut hic enim. Atque amet quia accusamus.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Delectus tempora enim repudiandae reprehenderit exercitationem. Voluptas vel qui aut minus. Possimus enim officia hic tenetur.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Et sed ullam consequatur cum quidem laudantium id. Aliquam ex vitae nemo explicabo et repellendus qui cumque.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Omnis vel asperiores assumenda repellat autem dolor odio dolores. Ipsum accusamus vero ad est occaecati et.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Quis at qui quae dolorum quidem ut. Dolorem voluptatum est aut in.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Iusto est occaecati esse ut eveniet enim. Laudantium tempora voluptatum et illum. Quis quis aliquam voluptatem iste quis.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Vero cupiditate eveniet qui ad. Ullam velit voluptates sed. Consequatur ad quidem minima id fuga. Ipsam quas ut modi iure et.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Molestiae sint neque sint quas voluptatem et. Distinctio dolore dolor illum consequatur voluptatem repellendus eos. Ut iure deserunt quam quam aut.\"}]',6,'Botble\\Gallery\\Models\\Gallery','2024-05-03 15:00:27','2024-05-03 15:00:27');
/*!40000 ALTER TABLE `gallery_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery_meta_translations`
--

DROP TABLE IF EXISTS `gallery_meta_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gallery_meta_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gallery_meta_id` int NOT NULL,
  `images` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`gallery_meta_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery_meta_translations`
--

LOCK TABLES `gallery_meta_translations` WRITE;
/*!40000 ALTER TABLE `gallery_meta_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `gallery_meta_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_meta`
--

DROP TABLE IF EXISTS `language_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language_meta` (
  `lang_meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_meta_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_meta_origin` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_reference_id_index` (`reference_id`),
  KEY `meta_code_index` (`lang_meta_code`),
  KEY `meta_origin_index` (`lang_meta_origin`),
  KEY `meta_reference_type_index` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta`
--

LOCK TABLES `language_meta` WRITE;
/*!40000 ALTER TABLE `language_meta` DISABLE KEYS */;
INSERT INTO `language_meta` VALUES (1,'en_US','4413d82f9d2bb0258a8844ee8c8c5469',1,'Botble\\Menu\\Models\\MenuLocation'),(2,'en_US','c3a24d89c8160df387ac9f0a4207efb3',1,'Botble\\Menu\\Models\\Menu'),(3,'en_US','e71057ef5a6425c865f9250f19b16ade',2,'Botble\\Menu\\Models\\Menu'),(4,'vi','923e9810bc487fcad6954f4a94ce417c',2,'Botble\\Menu\\Models\\MenuLocation'),(5,'vi','c3a24d89c8160df387ac9f0a4207efb3',3,'Botble\\Menu\\Models\\Menu'),(6,'vi','e71057ef5a6425c865f9250f19b16ade',4,'Botble\\Menu\\Models\\Menu'),(7,'en_US','94b13d0fbde5f90d7e8622bdc2bf3dde',1,'Botble\\PostCollection\\Models\\PostCollection'),(8,'en_US','c762854ebd9ea4004b584ca47eef6fdf',2,'Botble\\PostCollection\\Models\\PostCollection'),(9,'vi','20ae9d4b12e6cb89d461e67fe63da89d',3,'Botble\\PostCollection\\Models\\PostCollection'),(10,'vi','d6db9512128ba81aafb24585d15069ef',4,'Botble\\PostCollection\\Models\\PostCollection');
/*!40000 ALTER TABLE `language_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `lang_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `lang_order` int NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  KEY `lang_locale_index` (`lang_locale`),
  KEY `lang_code_index` (`lang_code`),
  KEY `lang_is_default_index` (`lang_is_default`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en','en_US','us',1,0,0);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_files`
--

DROP TABLE IF EXISTS `media_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folder_id` bigint unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_files_user_id_index` (`user_id`),
  KEY `media_files_index` (`folder_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (1,0,'image-1','image-1',1,'image/jpeg',6233,'banners/image-1.jpg','[]','2024-05-03 15:00:23','2024-05-03 15:00:23',NULL),(2,0,'image-2','image-2',1,'image/jpeg',6233,'banners/image-2.jpg','[]','2024-05-03 15:00:23','2024-05-03 15:00:23',NULL),(3,0,'image-3','image-3',1,'image/jpeg',6233,'banners/image-3.jpg','[]','2024-05-03 15:00:24','2024-05-03 15:00:24',NULL),(4,0,'image-4','image-4',1,'image/jpeg',6233,'banners/image-4.jpg','[]','2024-05-03 15:00:24','2024-05-03 15:00:24',NULL),(5,0,'1','1',2,'image/jpeg',6233,'galleries/1.jpg','[]','2024-05-03 15:00:24','2024-05-03 15:00:24',NULL),(6,0,'10','10',2,'image/jpeg',6233,'galleries/10.jpg','[]','2024-05-03 15:00:24','2024-05-03 15:00:24',NULL),(7,0,'2','2',2,'image/jpeg',6233,'galleries/2.jpg','[]','2024-05-03 15:00:25','2024-05-03 15:00:25',NULL),(8,0,'3','3',2,'image/jpeg',6233,'galleries/3.jpg','[]','2024-05-03 15:00:25','2024-05-03 15:00:25',NULL),(9,0,'4','4',2,'image/jpeg',6233,'galleries/4.jpg','[]','2024-05-03 15:00:25','2024-05-03 15:00:25',NULL),(10,0,'5','5',2,'image/jpeg',6233,'galleries/5.jpg','[]','2024-05-03 15:00:25','2024-05-03 15:00:25',NULL),(11,0,'6','6',2,'image/jpeg',6233,'galleries/6.jpg','[]','2024-05-03 15:00:26','2024-05-03 15:00:26',NULL),(12,0,'7','7',2,'image/jpeg',6233,'galleries/7.jpg','[]','2024-05-03 15:00:26','2024-05-03 15:00:26',NULL),(13,0,'8','8',2,'image/jpeg',6233,'galleries/8.jpg','[]','2024-05-03 15:00:26','2024-05-03 15:00:26',NULL),(14,0,'9','9',2,'image/jpeg',6233,'galleries/9.jpg','[]','2024-05-03 15:00:27','2024-05-03 15:00:27',NULL),(15,0,'news-1','news-1',3,'image/jpeg',6233,'news/news-1.jpg','[]','2024-05-03 15:00:28','2024-05-03 15:00:28',NULL),(16,0,'news-10','news-10',3,'image/jpeg',6233,'news/news-10.jpg','[]','2024-05-03 15:00:28','2024-05-03 15:00:28',NULL),(17,0,'news-11','news-11',3,'image/jpeg',6233,'news/news-11.jpg','[]','2024-05-03 15:00:28','2024-05-03 15:00:28',NULL),(18,0,'news-12','news-12',3,'image/jpeg',6233,'news/news-12.jpg','[]','2024-05-03 15:00:28','2024-05-03 15:00:28',NULL),(19,0,'news-13','news-13',3,'image/jpeg',6233,'news/news-13.jpg','[]','2024-05-03 15:00:29','2024-05-03 15:00:29',NULL),(20,0,'news-14','news-14',3,'image/jpeg',6233,'news/news-14.jpg','[]','2024-05-03 15:00:29','2024-05-03 15:00:29',NULL),(21,0,'news-15','news-15',3,'image/jpeg',6233,'news/news-15.jpg','[]','2024-05-03 15:00:29','2024-05-03 15:00:29',NULL),(22,0,'news-16','news-16',3,'image/jpeg',6233,'news/news-16.jpg','[]','2024-05-03 15:00:30','2024-05-03 15:00:30',NULL),(23,0,'news-17','news-17',3,'image/jpeg',6233,'news/news-17.jpg','[]','2024-05-03 15:00:30','2024-05-03 15:00:30',NULL),(24,0,'news-18','news-18',3,'image/jpeg',6233,'news/news-18.jpg','[]','2024-05-03 15:00:30','2024-05-03 15:00:30',NULL),(25,0,'news-19','news-19',3,'image/jpeg',6233,'news/news-19.jpg','[]','2024-05-03 15:00:30','2024-05-03 15:00:30',NULL),(26,0,'news-2','news-2',3,'image/jpeg',6233,'news/news-2.jpg','[]','2024-05-03 15:00:31','2024-05-03 15:00:31',NULL),(27,0,'news-20','news-20',3,'image/jpeg',6233,'news/news-20.jpg','[]','2024-05-03 15:00:31','2024-05-03 15:00:31',NULL),(28,0,'news-21','news-21',3,'image/jpeg',6233,'news/news-21.jpg','[]','2024-05-03 15:00:31','2024-05-03 15:00:31',NULL),(29,0,'news-22','news-22',3,'image/jpeg',6233,'news/news-22.jpg','[]','2024-05-03 15:00:31','2024-05-03 15:00:31',NULL),(30,0,'news-23','news-23',3,'image/jpeg',6233,'news/news-23.jpg','[]','2024-05-03 15:00:31','2024-05-03 15:00:31',NULL),(31,0,'news-24','news-24',3,'image/jpeg',6233,'news/news-24.jpg','[]','2024-05-03 15:00:32','2024-05-03 15:00:32',NULL),(32,0,'news-3','news-3',3,'image/jpeg',6233,'news/news-3.jpg','[]','2024-05-03 15:00:32','2024-05-03 15:00:32',NULL),(33,0,'news-4','news-4',3,'image/jpeg',6233,'news/news-4.jpg','[]','2024-05-03 15:00:32','2024-05-03 15:00:32',NULL),(34,0,'news-5','news-5',3,'image/jpeg',6233,'news/news-5.jpg','[]','2024-05-03 15:00:32','2024-05-03 15:00:32',NULL),(35,0,'news-6','news-6',3,'image/jpeg',6233,'news/news-6.jpg','[]','2024-05-03 15:00:33','2024-05-03 15:00:33',NULL),(36,0,'news-7','news-7',3,'image/jpeg',6233,'news/news-7.jpg','[]','2024-05-03 15:00:33','2024-05-03 15:00:33',NULL),(37,0,'news-8','news-8',3,'image/jpeg',6233,'news/news-8.jpg','[]','2024-05-03 15:00:33','2024-05-03 15:00:33',NULL),(38,0,'news-9','news-9',3,'image/jpeg',6233,'news/news-9.jpg','[]','2024-05-03 15:00:33','2024-05-03 15:00:33',NULL),(39,0,'thumbnail-1','thumbnail-1',3,'image/jpeg',6233,'news/thumbnail-1.jpg','[]','2024-05-03 15:00:34','2024-05-03 15:00:34',NULL),(40,0,'thumbnail-2','thumbnail-2',3,'image/jpeg',6233,'news/thumbnail-2.jpg','[]','2024-05-03 15:00:34','2024-05-03 15:00:34',NULL),(41,0,'thumbnail-3','thumbnail-3',3,'image/jpeg',6233,'news/thumbnail-3.jpg','[]','2024-05-03 15:00:34','2024-05-03 15:00:34',NULL),(42,0,'thumbnail-4','thumbnail-4',3,'image/jpeg',6233,'news/thumbnail-4.jpg','[]','2024-05-03 15:00:34','2024-05-03 15:00:34',NULL),(43,0,'thumbnail-5','thumbnail-5',3,'image/jpeg',6233,'news/thumbnail-5.jpg','[]','2024-05-03 15:00:35','2024-05-03 15:00:35',NULL),(44,0,'thumbnail-6','thumbnail-6',3,'image/jpeg',6233,'news/thumbnail-6.jpg','[]','2024-05-03 15:00:35','2024-05-03 15:00:35',NULL),(45,0,'video1','video1',4,'video/mp4',6378345,'videos/video1.mp4','[]','2024-05-03 15:00:35','2024-05-03 15:00:35',NULL),(46,0,'1','1',5,'image/jpeg',8581,'members/1.jpg','[]','2024-05-03 15:00:36','2024-05-03 15:00:36',NULL),(47,0,'2','2',5,'image/jpeg',14257,'members/2.jpg','[]','2024-05-03 15:00:36','2024-05-03 15:00:36',NULL),(48,0,'3','3',5,'image/jpeg',14702,'members/3.jpg','[]','2024-05-03 15:00:37','2024-05-03 15:00:37',NULL),(49,0,'4','4',5,'image/jpeg',19699,'members/4.jpg','[]','2024-05-03 15:00:37','2024-05-03 15:00:37',NULL),(50,0,'5','5',5,'image/jpeg',10260,'members/5.jpg','[]','2024-05-03 15:00:37','2024-05-03 15:00:37',NULL),(51,0,'10','10',6,'image/jpeg',6233,'authors/10.jpg','[]','2024-05-03 15:00:40','2024-05-03 15:00:40',NULL),(52,0,'6','6',6,'image/jpeg',6233,'authors/6.jpg','[]','2024-05-03 15:00:41','2024-05-03 15:00:41',NULL),(53,0,'7','7',6,'image/jpeg',6233,'authors/7.jpg','[]','2024-05-03 15:00:41','2024-05-03 15:00:41',NULL),(54,0,'8','8',6,'image/jpeg',6233,'authors/8.jpg','[]','2024-05-03 15:00:41','2024-05-03 15:00:41',NULL),(55,0,'9','9',6,'image/jpeg',6233,'authors/9.jpg','[]','2024-05-03 15:00:41','2024-05-03 15:00:41',NULL),(56,0,'favicon','favicon',7,'image/png',6233,'general/favicon.png','[]','2024-05-03 15:00:45','2024-05-03 15:00:45',NULL),(57,0,'img-loading','img-loading',7,'image/jpeg',6233,'general/img-loading.jpg','[]','2024-05-03 15:00:45','2024-05-03 15:00:45',NULL),(58,0,'logo-mobile','logo-mobile',7,'image/png',6233,'general/logo-mobile.png','[]','2024-05-03 15:00:45','2024-05-03 15:00:45',NULL),(59,0,'logo-tablet','logo-tablet',7,'image/png',6233,'general/logo-tablet.png','[]','2024-05-03 15:00:45','2024-05-03 15:00:45',NULL),(60,0,'logo-white','logo-white',7,'image/png',6233,'general/logo-white.png','[]','2024-05-03 15:00:46','2024-05-03 15:00:46',NULL),(61,0,'logo','logo',7,'image/png',6233,'general/logo.png','[]','2024-05-03 15:00:46','2024-05-03 15:00:46',NULL),(62,0,'screenshot','screenshot',7,'image/png',6233,'general/screenshot.png','[]','2024-05-03 15:00:46','2024-05-03 15:00:46',NULL);
/*!40000 ALTER TABLE `media_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_folders`
--

DROP TABLE IF EXISTS `media_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_folders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_folders_user_id_index` (`user_id`),
  KEY `media_folders_index` (`parent_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (1,0,'banners',NULL,'banners',0,'2024-05-03 15:00:23','2024-05-03 15:00:23',NULL),(2,0,'galleries',NULL,'galleries',0,'2024-05-03 15:00:24','2024-05-03 15:00:24',NULL),(3,0,'news',NULL,'news',0,'2024-05-03 15:00:28','2024-05-03 15:00:28',NULL),(4,0,'videos',NULL,'videos',0,'2024-05-03 15:00:35','2024-05-03 15:00:35',NULL),(5,0,'members',NULL,'members',0,'2024-05-03 15:00:36','2024-05-03 15:00:36',NULL),(6,0,'authors',NULL,'authors',0,'2024-05-03 15:00:40','2024-05-03 15:00:40',NULL),(7,0,'general',NULL,'general',0,'2024-05-03 15:00:45','2024-05-03 15:00:45',NULL);
/*!40000 ALTER TABLE `media_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_settings`
--

DROP TABLE IF EXISTS `media_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `media_id` bigint unsigned DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_settings`
--

LOCK TABLES `media_settings` WRITE;
/*!40000 ALTER TABLE `media_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_activity_logs`
--

DROP TABLE IF EXISTS `member_activity_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_activity_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `reference_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(39) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `member_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `member_activity_logs_member_id_index` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_activity_logs`
--

LOCK TABLES `member_activity_logs` WRITE;
/*!40000 ALTER TABLE `member_activity_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `member_activity_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_password_resets`
--

DROP TABLE IF EXISTS `member_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `member_password_resets_email_index` (`email`),
  KEY `member_password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_password_resets`
--

LOCK TABLES `member_password_resets` WRITE;
/*!40000 ALTER TABLE `member_password_resets` DISABLE KEYS */;
INSERT INTO `member_password_resets` VALUES ('gialaix9@gmail.com','$2y$10$KTnZLXNycUrMUbwrQ/T4VeST1tJADcTbli4vp8R22itHej4bCgOaS','2022-10-15 15:04:10');
/*!40000 ALTER TABLE `member_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `gender` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar_id` int unsigned DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `favorite_posts` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `bookmark_posts` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  PRIMARY KEY (`id`),
  UNIQUE KEY `members_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES (1,'John','Smith','How puzzling all these changes are! I\'m never sure what I\'m going to turn into a tidy little room.',NULL,'user@thesky9.com','$2y$12$zzsL49FFVZBJ.mN0NRqh0OTHlSVmmCdWvj/6.uzvLx.RKL44mFepO',48,'1998-12-03','1-818-278-8775','2024-05-03 15:00:38',NULL,NULL,'2024-05-03 15:00:38','2024-05-03 15:00:38',NULL,NULL,'published'),(2,'Rebeca','Kemmer','Dormouse followed him: the March Hare went on. \'Would you tell me,\' said Alice, \'we learned French.',NULL,'alayna.wunsch@mertz.com','$2y$12$aTP2dSxf3680HbBdbON4qe.51Xe6XAUDB0WcTU9Enxqx0YTHvVe0y',49,'1992-10-07','+1-386-217-4502','2024-05-03 15:00:38',NULL,NULL,'2024-05-03 15:00:38','2024-05-03 15:00:38',NULL,NULL,'published'),(3,'Rhoda','Johnson','Alice felt a very short time the Queen never left off staring at the Mouse\'s tail; \'but why do you.',NULL,'kerdman@miller.com','$2y$12$7VSFXDVdnl7giXUd06cq..tgg9OkmBDMQ9/AMjKwfFkPFxaADLij6',48,'2012-07-26','+1.757.595.2404','2024-05-03 15:00:38',NULL,NULL,'2024-05-03 15:00:38','2024-05-03 15:00:38',NULL,NULL,'published'),(4,'Hazel','West','King, \'that only makes the matter with it. There could be beheaded, and that in the sea, some.',NULL,'yrath@olson.biz','$2y$12$/.NTQMoHYAv80vvMnv1lYOlnWtjl4IvJmYqISh1reH9ZDlo7dlUOu',50,'1996-05-24','(820) 307-1411','2024-05-03 15:00:38',NULL,NULL,'2024-05-03 15:00:38','2024-05-03 15:00:38',NULL,NULL,'published'),(5,'Frederik','Predovic','Alice, swallowing down her anger as well as she could, and soon found an opportunity of showing.',NULL,'blake.dickinson@stroman.com','$2y$12$DRO1Z.s52FcLU9eVadQ7lO0dUOjDfuQad/HQcSP8C8THXCHvF9Sme',50,'2017-02-21','1-540-743-5995','2024-05-03 15:00:39',NULL,NULL,'2024-05-03 15:00:39','2024-05-03 15:00:39',NULL,NULL,'published'),(6,'Krista','Toy','I\'ll have you executed, whether you\'re a little sharp bark just over her head on her hand, and a.',NULL,'branson00@jacobi.com','$2y$12$F463PpJFXDNCOY8VeVd3ve7esMCHRPxnTkMMW7L1uK.gjIeAeHrZq',48,'2020-06-28','+1-734-284-0124','2024-05-03 15:00:39',NULL,NULL,'2024-05-03 15:00:39','2024-05-03 15:00:39',NULL,NULL,'published'),(7,'Jared','Grady','Soup! Beau--ootiful Soo--oop! Soo--oop of the Queen put on his slate with one of the room. The.',NULL,'tony54@gmail.com','$2y$12$nF6qwYW8of4LevjQcoqInO.q8u4Qec9Qy0fdUREnKcthq1ZQQbMm6',49,'2021-12-28','+15518877509','2024-05-03 15:00:39',NULL,NULL,'2024-05-03 15:00:39','2024-05-03 15:00:39',NULL,NULL,'published'),(8,'Pansy','Berge','Alice, whose thoughts were still running on the end of trials, \"There was some attempts at.',NULL,'isaias.blick@gmail.com','$2y$12$T6c54Ca2NdqwfzUwsdD4ye4W9yhBS6z.tIIN4EzLEzovbbt1BO7Qe',46,'2012-10-14','313-558-7486','2024-05-03 15:00:39',NULL,NULL,'2024-05-03 15:00:39','2024-05-03 15:00:39',NULL,NULL,'published'),(9,'Jarrell','Krajcik','I get it home?\' when it had struck her foot! She was walking hand in hand, in couples: they were.',NULL,'bertram44@corkery.com','$2y$12$InllUVN4Il2WL1H39GsU1Ow5FeMWLEoOBBVVFZShQnZNtKfPcnSIa',49,'2015-06-03','1-640-372-9247','2024-05-03 15:00:40',NULL,NULL,'2024-05-03 15:00:40','2024-05-03 15:00:40',NULL,NULL,'published'),(10,'Arthur','Vandervort','King. \'I can\'t go no lower,\' said the Hatter: \'it\'s very rude.\' The Hatter was the White Rabbit.',NULL,'xwintheiser@schimmel.biz','$2y$12$Dkq/PoTR5hOdom23wmDituRUXmNnjHbwmnGFwjc9sI3J5J9ZzLpjS',50,'2013-07-10','616-380-5091','2024-05-03 15:00:40',NULL,NULL,'2024-05-03 15:00:40','2024-05-03 15:00:40',NULL,NULL,'published'),(11,'Heaven','Runolfsson','Pigeon went on, looking anxiously about as she was quite surprised to see a little house in it a.',NULL,'lilly09@yahoo.com','$2y$12$7OLKXXbXU5MD0mrWcnJt7./bPP/UajeZgroTQ.HExuFiWtMV05mtW',48,'1971-12-13','386.833.0988','2024-05-03 15:00:40',NULL,NULL,'2024-05-03 15:00:40','2024-05-03 15:00:40',NULL,NULL,'published');
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_locations`
--

DROP TABLE IF EXISTS `menu_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_locations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_locations`
--

LOCK TABLES `menu_locations` WRITE;
/*!40000 ALTER TABLE `menu_locations` DISABLE KEYS */;
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2024-05-03 15:00:44','2024-05-03 15:00:44'),(2,3,'main-menu','2024-05-03 15:00:44','2024-05-03 15:00:44');
/*!40000 ALTER TABLE `menu_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_nodes`
--

DROP TABLE IF EXISTS `menu_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_nodes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `reference_id` bigint unsigned DEFAULT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_nodes_menu_id_index` (`menu_id`),
  KEY `menu_nodes_parent_id_index` (`parent_id`),
  KEY `reference_id` (`reference_id`),
  KEY `reference_type` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_nodes`
--

LOCK TABLES `menu_nodes` WRITE;
/*!40000 ALTER TABLE `menu_nodes` DISABLE KEYS */;
INSERT INTO `menu_nodes` VALUES (1,1,0,NULL,NULL,'/',NULL,0,'Home',NULL,'_self',1,'2024-05-03 15:00:44','2024-05-03 15:00:44'),(2,1,1,NULL,NULL,'/',NULL,0,'Home default',NULL,'_self',0,'2024-05-03 15:00:44','2024-05-03 15:00:44'),(3,1,1,NULL,NULL,'/home-2?header=style-2',NULL,0,'Home 2',NULL,'_self',0,'2024-05-03 15:00:44','2024-05-03 15:00:44'),(4,1,1,NULL,NULL,'/home-3?header=style-3',NULL,0,'Home 3',NULL,'_self',0,'2024-05-03 15:00:44','2024-05-03 15:00:44'),(5,1,0,NULL,NULL,'/galleries',NULL,0,'Galleries',NULL,'_self',0,'2024-05-03 15:00:44','2024-05-03 15:00:44'),(6,1,0,6,'Botble\\Page\\Models\\Page','/category-grid',NULL,0,'Category layouts',NULL,'_self',1,'2024-05-03 15:00:44','2024-05-03 15:00:44'),(7,1,6,5,'Botble\\Page\\Models\\Page','/category-list',NULL,0,'List',NULL,'_self',0,'2024-05-03 15:00:44','2024-05-03 15:00:44'),(8,1,6,6,'Botble\\Page\\Models\\Page','/category-grid',NULL,0,'Grid',NULL,'_self',0,'2024-05-03 15:00:44','2024-05-03 15:00:44'),(9,1,6,7,'Botble\\Page\\Models\\Page','/category-metro',NULL,0,'Metro',NULL,'_self',0,'2024-05-03 15:00:44','2024-05-03 15:00:44'),(10,1,0,1,'Botble\\Blog\\Models\\Post','/this-year-enjoy-the-color-of-festival-with-amazing-holi-gifts-ideas',NULL,0,'Post layouts',NULL,'_self',1,'2024-05-03 15:00:44','2024-05-03 15:00:44'),(11,1,10,1,'Botble\\Blog\\Models\\Post','/this-year-enjoy-the-color-of-festival-with-amazing-holi-gifts-ideas',NULL,0,'Default',NULL,'_self',0,'2024-05-03 15:00:44','2024-05-03 15:00:44'),(12,1,10,2,'Botble\\Blog\\Models\\Post','/the-world-caters-to-average-people-and-mediocre-lifestyles',NULL,0,'Full top',NULL,'_self',0,'2024-05-03 15:00:44','2024-05-03 15:00:44'),(13,1,10,3,'Botble\\Blog\\Models\\Post','/not-a-bit-of-hesitation-you-better-think-twice',NULL,0,'Inline',NULL,'_self',0,'2024-05-03 15:00:44','2024-05-03 15:00:44'),(14,1,0,9,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'About',NULL,'_self',0,'2024-05-03 15:00:44','2024-05-03 15:00:44'),(15,1,0,8,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact',NULL,'_self',0,'2024-05-03 15:00:44','2024-05-03 15:00:44'),(16,1,0,NULL,NULL,NULL,NULL,0,'Pages',NULL,'_self',1,'2024-05-03 15:00:44','2024-05-03 15:00:44'),(17,1,16,10,'Botble\\Page\\Models\\Page','/cookie-policy',NULL,0,'Cookie Policy',NULL,'_self',0,'2024-05-03 15:00:44','2024-05-03 15:00:44'),(18,1,16,NULL,NULL,'page-not-found',NULL,0,'404',NULL,'_self',0,'2024-05-03 15:00:44','2024-05-03 15:00:44'),(19,1,16,NULL,NULL,'/login',NULL,0,'Login',NULL,'_self',0,'2024-05-03 15:00:44','2024-05-03 15:00:44'),(20,1,16,NULL,NULL,'/register',NULL,0,'Signup',NULL,'_self',0,'2024-05-03 15:00:44','2024-05-03 15:00:44'),(21,2,0,NULL,NULL,'/',NULL,0,'Homepage',NULL,'_self',0,'2024-05-03 15:00:44','2024-05-03 15:00:44'),(22,2,0,8,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact',NULL,'_self',0,'2024-05-03 15:00:44','2024-05-03 15:00:44'),(23,2,0,4,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Blog',NULL,'_self',0,'2024-05-03 15:00:44','2024-05-03 15:00:44'),(24,2,0,NULL,NULL,'/galleries',NULL,0,'Galleries',NULL,'_self',0,'2024-05-03 15:00:44','2024-05-03 15:00:44'),(25,3,0,NULL,NULL,'/',NULL,0,'Trang chủ',NULL,'_self',1,'2024-05-03 15:00:44','2024-05-03 15:00:44'),(26,3,25,NULL,NULL,'/',NULL,0,'Trang chủ mặc định',NULL,'_self',0,'2024-05-03 15:00:44','2024-05-03 15:00:44'),(27,3,25,NULL,NULL,'/home-2?header=style-2',NULL,0,'Trang chủ 2',NULL,'_self',0,'2024-05-03 15:00:44','2024-05-03 15:00:44'),(28,3,25,NULL,NULL,'/home-3?header=style-3',NULL,0,'Trang chủ 3',NULL,'_self',0,'2024-05-03 15:00:44','2024-05-03 15:00:44'),(29,3,0,NULL,NULL,'/galleries',NULL,0,'Thư viện ảnh',NULL,'_self',0,'2024-05-03 15:00:44','2024-05-03 15:00:44'),(30,3,0,6,'Botble\\Page\\Models\\Page','/category-grid',NULL,0,'Danh mục',NULL,'_self',1,'2024-05-03 15:00:44','2024-05-03 15:00:44'),(31,3,30,5,'Botble\\Page\\Models\\Page','/category-list',NULL,0,'Style cột',NULL,'_self',0,'2024-05-03 15:00:44','2024-05-03 15:00:44'),(32,3,30,6,'Botble\\Page\\Models\\Page','/category-grid',NULL,0,'Style danh sách',NULL,'_self',0,'2024-05-03 15:00:44','2024-05-03 15:00:44'),(33,3,30,7,'Botble\\Page\\Models\\Page','/category-metro',NULL,0,'Style danh sách 2',NULL,'_self',0,'2024-05-03 15:00:44','2024-05-03 15:00:44'),(34,3,0,1,'Botble\\Blog\\Models\\Post','/this-year-enjoy-the-color-of-festival-with-amazing-holi-gifts-ideas',NULL,0,'Bài viết',NULL,'_self',1,'2024-05-03 15:00:44','2024-05-03 15:00:44'),(35,3,34,1,'Botble\\Blog\\Models\\Post','/this-year-enjoy-the-color-of-festival-with-amazing-holi-gifts-ideas',NULL,0,'Default',NULL,'_self',0,'2024-05-03 15:00:44','2024-05-03 15:00:44'),(36,3,34,2,'Botble\\Blog\\Models\\Post','/the-world-caters-to-average-people-and-mediocre-lifestyles',NULL,0,'Full top',NULL,'_self',0,'2024-05-03 15:00:44','2024-05-03 15:00:44'),(37,3,34,3,'Botble\\Blog\\Models\\Post','/not-a-bit-of-hesitation-you-better-think-twice',NULL,0,'Inline',NULL,'_self',0,'2024-05-03 15:00:44','2024-05-03 15:00:44'),(38,3,0,9,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'Liên hệ',NULL,'_self',0,'2024-05-03 15:00:44','2024-05-03 15:00:44'),(39,3,0,8,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Về chúng tôi',NULL,'_self',0,'2024-05-03 15:00:44','2024-05-03 15:00:44'),(40,4,0,NULL,NULL,'/',NULL,0,'Trang chủ',NULL,'_self',0,'2024-05-03 15:00:44','2024-05-03 15:00:44'),(41,4,0,8,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Liên hệ',NULL,'_self',0,'2024-05-03 15:00:44','2024-05-03 15:00:44'),(42,4,0,4,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Tin tức',NULL,'_self',0,'2024-05-03 15:00:44','2024-05-03 15:00:44'),(43,4,0,NULL,NULL,'/galleries',NULL,0,'Thư viện ảnh',NULL,'_self',0,'2024-05-03 15:00:44','2024-05-03 15:00:44');
/*!40000 ALTER TABLE `menu_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2024-05-03 15:00:44','2024-05-03 15:00:44'),(2,'Quick links','quick-links','published','2024-05-03 15:00:44','2024-05-03 15:00:44'),(3,'Menu chính','menu-chinh','published','2024-05-03 15:00:44','2024-05-03 15:00:44'),(4,'Liên kết','lien-ket','published','2024-05-03 15:00:44','2024-05-03 15:00:44');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_boxes`
--

DROP TABLE IF EXISTS `meta_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meta_boxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_boxes_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
INSERT INTO `meta_boxes` VALUES (1,'layout','[\"default\"]',1,'Botble\\Blog\\Models\\Post','2024-05-03 15:00:36','2024-05-03 15:00:36'),(2,'time_to_read','[19]',1,'Botble\\Blog\\Models\\Post','2024-05-03 15:00:36','2024-05-03 15:00:36'),(3,'comment_status','[1]',1,'Botble\\Blog\\Models\\Post','2024-05-03 15:00:36','2024-05-03 15:00:36'),(4,'layout','[\"top-full\"]',2,'Botble\\Blog\\Models\\Post','2024-05-03 15:00:36','2024-05-03 15:00:36'),(5,'time_to_read','[13]',2,'Botble\\Blog\\Models\\Post','2024-05-03 15:00:36','2024-05-03 15:00:36'),(6,'comment_status','[1]',2,'Botble\\Blog\\Models\\Post','2024-05-03 15:00:36','2024-05-03 15:00:36'),(7,'layout','[\"inline\"]',3,'Botble\\Blog\\Models\\Post','2024-05-03 15:00:36','2024-05-03 15:00:36'),(8,'time_to_read','[2]',3,'Botble\\Blog\\Models\\Post','2024-05-03 15:00:36','2024-05-03 15:00:36'),(9,'comment_status','[1]',3,'Botble\\Blog\\Models\\Post','2024-05-03 15:00:36','2024-05-03 15:00:36'),(10,'video_link','[\"https:\\/\\/player.vimeo.com\\/video\\/289366685?h=b6b9d1e67b&title=0&byline=0&portrait=0\"]',4,'Botble\\Blog\\Models\\Post','2024-05-03 15:00:36','2024-05-03 15:00:36'),(11,'time_to_read','[15]',4,'Botble\\Blog\\Models\\Post','2024-05-03 15:00:36','2024-05-03 15:00:36'),(12,'comment_status','[1]',4,'Botble\\Blog\\Models\\Post','2024-05-03 15:00:36','2024-05-03 15:00:36'),(13,'video_upload_id','[\"videos\\/video1.mp4\"]',5,'Botble\\Blog\\Models\\Post','2024-05-03 15:00:36','2024-05-03 15:00:36'),(14,'time_to_read','[16]',5,'Botble\\Blog\\Models\\Post','2024-05-03 15:00:36','2024-05-03 15:00:36'),(15,'comment_status','[1]',5,'Botble\\Blog\\Models\\Post','2024-05-03 15:00:36','2024-05-03 15:00:36'),(16,'time_to_read','[6]',6,'Botble\\Blog\\Models\\Post','2024-05-03 15:00:36','2024-05-03 15:00:36'),(17,'comment_status','[1]',6,'Botble\\Blog\\Models\\Post','2024-05-03 15:00:36','2024-05-03 15:00:36'),(18,'time_to_read','[4]',7,'Botble\\Blog\\Models\\Post','2024-05-03 15:00:36','2024-05-03 15:00:36'),(19,'comment_status','[1]',7,'Botble\\Blog\\Models\\Post','2024-05-03 15:00:36','2024-05-03 15:00:36'),(20,'video_link','[\"https:\\/\\/player.vimeo.com\\/video\\/559851845?h=afc6d413c9\"]',8,'Botble\\Blog\\Models\\Post','2024-05-03 15:00:36','2024-05-03 15:00:36'),(21,'time_to_read','[17]',8,'Botble\\Blog\\Models\\Post','2024-05-03 15:00:36','2024-05-03 15:00:36'),(22,'comment_status','[1]',8,'Botble\\Blog\\Models\\Post','2024-05-03 15:00:36','2024-05-03 15:00:36'),(23,'time_to_read','[17]',9,'Botble\\Blog\\Models\\Post','2024-05-03 15:00:36','2024-05-03 15:00:36'),(24,'comment_status','[1]',9,'Botble\\Blog\\Models\\Post','2024-05-03 15:00:36','2024-05-03 15:00:36'),(25,'time_to_read','[18]',10,'Botble\\Blog\\Models\\Post','2024-05-03 15:00:36','2024-05-03 15:00:36'),(26,'comment_status','[1]',10,'Botble\\Blog\\Models\\Post','2024-05-03 15:00:36','2024-05-03 15:00:36'),(27,'time_to_read','[16]',11,'Botble\\Blog\\Models\\Post','2024-05-03 15:00:36','2024-05-03 15:00:36'),(28,'comment_status','[1]',11,'Botble\\Blog\\Models\\Post','2024-05-03 15:00:36','2024-05-03 15:00:36'),(29,'time_to_read','[13]',12,'Botble\\Blog\\Models\\Post','2024-05-03 15:00:36','2024-05-03 15:00:36'),(30,'comment_status','[1]',12,'Botble\\Blog\\Models\\Post','2024-05-03 15:00:36','2024-05-03 15:00:36'),(31,'time_to_read','[3]',13,'Botble\\Blog\\Models\\Post','2024-05-03 15:00:36','2024-05-03 15:00:36'),(32,'comment_status','[1]',13,'Botble\\Blog\\Models\\Post','2024-05-03 15:00:36','2024-05-03 15:00:36'),(33,'video_link','[\"https:\\/\\/player.vimeo.com\\/video\\/580799106?h=a8eb717af9\"]',14,'Botble\\Blog\\Models\\Post','2024-05-03 15:00:36','2024-05-03 15:00:36'),(34,'time_to_read','[7]',14,'Botble\\Blog\\Models\\Post','2024-05-03 15:00:36','2024-05-03 15:00:36'),(35,'comment_status','[1]',14,'Botble\\Blog\\Models\\Post','2024-05-03 15:00:36','2024-05-03 15:00:36'),(36,'time_to_read','[17]',15,'Botble\\Blog\\Models\\Post','2024-05-03 15:00:36','2024-05-03 15:00:36'),(37,'comment_status','[1]',15,'Botble\\Blog\\Models\\Post','2024-05-03 15:00:36','2024-05-03 15:00:36'),(38,'time_to_read','[19]',16,'Botble\\Blog\\Models\\Post','2024-05-03 15:00:36','2024-05-03 15:00:36'),(39,'comment_status','[1]',16,'Botble\\Blog\\Models\\Post','2024-05-03 15:00:36','2024-05-03 15:00:36'),(40,'time_to_read','[2]',17,'Botble\\Blog\\Models\\Post','2024-05-03 15:00:36','2024-05-03 15:00:36'),(41,'comment_status','[1]',17,'Botble\\Blog\\Models\\Post','2024-05-03 15:00:36','2024-05-03 15:00:36'),(42,'time_to_read','[15]',18,'Botble\\Blog\\Models\\Post','2024-05-03 15:00:36','2024-05-03 15:00:36'),(43,'comment_status','[1]',18,'Botble\\Blog\\Models\\Post','2024-05-03 15:00:36','2024-05-03 15:00:36'),(44,'time_to_read','[5]',19,'Botble\\Blog\\Models\\Post','2024-05-03 15:00:36','2024-05-03 15:00:36'),(45,'comment_status','[1]',19,'Botble\\Blog\\Models\\Post','2024-05-03 15:00:36','2024-05-03 15:00:36'),(46,'time_to_read','[13]',20,'Botble\\Blog\\Models\\Post','2024-05-03 15:00:36','2024-05-03 15:00:36'),(47,'comment_status','[1]',20,'Botble\\Blog\\Models\\Post','2024-05-03 15:00:36','2024-05-03 15:00:36');
/*!40000 ALTER TABLE `meta_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (4,'2014_10_12_100000_create_password_resets_table',1),(5,'2016_06_01_000001_create_oauth_auth_codes_table',1),(6,'2016_06_01_000002_create_oauth_access_tokens_table',1),(7,'2016_06_01_000003_create_oauth_refresh_tokens_table',1),(8,'2016_06_01_000004_create_oauth_clients_table',1),(9,'2016_06_01_000005_create_oauth_personal_access_clients_table',1),(27,'2015_06_29_025744_create_audit_history',3),(28,'2015_06_18_033822_create_blog_table',4),(29,'2021_02_16_092633_remove_default_value_for_author_type',4),(30,'2021_12_03_030600_create_blog_translations',4),(31,'2022_04_19_113923_add_index_to_table_posts',4),(32,'2021_07_08_140130_comment_create_comment_table',5),(33,'2016_06_17_091537_create_contacts_table',6),(34,'2016_10_13_150201_create_galleries_table',7),(35,'2021_12_03_082953_create_gallery_translations',7),(36,'2022_04_30_034048_create_gallery_meta_translations_table',7),(40,'2017_10_04_140938_create_member_table',10),(41,'2017_10_24_154832_create_newsletter_table',11),(42,'2021_08_25_122708_post_collection_create_post_collection_table',12),(43,'2021_07_14_043820_add_publised_at_table_posts',13),(44,'2021_10_16_043705_pro_posts_create_favorite_posts_table',14),(45,'2021_10_16_105007_add_bookmark_posts_column_to_members_table',14),(46,'2021_11_13_010429_change_column_table_members',14),(47,'2016_05_28_112028_create_system_request_logs_table',15),(48,'2016_10_07_193005_create_translations_table',16),(61,'2023_08_29_074620_make_column_author_id_nullable',20),(62,'2023_08_29_075308_make_column_user_id_nullable',20),(65,'2023_02_28_092156_update_table_comments',21),(66,'2023_10_16_075332_add_status_column',21),(68,'2023_11_10_080225_migrate_contact_blacklist_email_domains_to_core',21),(69,'2023_11_14_033417_change_request_column_in_table_audit_histories',21),(72,'2023_12_12_105220_drop_translations_table',21),(74,'2024_03_20_080001_migrate_change_attribute_email_to_nullable_form_contacts_table',22),(75,'2024_03_25_000001_update_captcha_settings_for_contact',22),(76,'2024_03_25_000001_update_captcha_settings_for_newsletter',22),(79,'2024_04_19_063914_create_custom_fields_table',23),(80,'2024_04_27_100730_improve_analytics_setting',23),(81,'2013_04_09_032329_create_base_tables',24),(82,'2013_04_09_062329_create_revisions_table',24),(83,'2014_10_12_000000_create_users_table',24),(84,'2014_10_12_100000_create_password_reset_tokens_table',24),(85,'2016_06_10_230148_create_acl_tables',24),(86,'2016_06_14_230857_create_menus_table',24),(87,'2016_06_28_221418_create_pages_table',24),(88,'2016_10_03_032336_create_languages_table',24),(89,'2016_10_05_074239_create_setting_table',24),(90,'2016_11_28_032840_create_dashboard_widget_tables',24),(91,'2016_12_16_084601_create_widgets_table',24),(92,'2017_05_09_070343_create_media_tables',24),(93,'2017_11_03_070450_create_slug_table',24),(94,'2019_01_05_053554_create_jobs_table',24),(95,'2019_08_19_000000_create_failed_jobs_table',24),(96,'2019_12_14_000001_create_personal_access_tokens_table',24),(97,'2020_11_18_150916_ads_create_ads_table',24),(98,'2021_10_25_021023_fix-priority-load-for-language-advanced',24),(99,'2021_12_02_035301_add_ads_translations_table',24),(100,'2021_12_03_075608_create_page_translations',24),(101,'2022_04_20_100851_add_index_to_media_table',24),(102,'2022_04_20_101046_add_index_to_menu_table',24),(103,'2022_07_10_034813_move_lang_folder_to_root',24),(104,'2022_08_04_051940_add_missing_column_expires_at',24),(105,'2022_09_01_000001_create_admin_notifications_tables',24),(106,'2022_10_14_024629_drop_column_is_featured',24),(107,'2022_11_18_063357_add_missing_timestamp_in_table_settings',24),(108,'2022_12_02_093615_update_slug_index_columns',24),(109,'2023_01_30_024431_add_alt_to_media_table',24),(110,'2023_02_16_042611_drop_table_password_resets',24),(111,'2023_04_17_062645_add_open_in_new_tab',24),(112,'2023_04_23_005903_add_column_permissions_to_admin_notifications',24),(113,'2023_05_10_075124_drop_column_id_in_role_users_table',24),(114,'2023_07_06_011444_create_slug_translations_table',24),(115,'2023_08_21_090810_make_page_content_nullable',24),(116,'2023_09_14_021936_update_index_for_slugs_table',24),(117,'2023_09_14_022423_add_index_for_language_table',24),(118,'2023_11_07_023805_add_tablet_mobile_image',24),(119,'2023_12_06_100448_change_random_hash_for_media',24),(120,'2023_12_07_095130_add_color_column_to_media_folders_table',24),(121,'2023_12_17_162208_make_sure_column_color_in_media_folders_nullable',24),(122,'2024_04_01_043317_add_google_adsense_slot_id_to_ads_table',24),(123,'2024_04_04_110758_update_value_column_in_user_meta_table',24);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletters`
--

LOCK TABLES `newsletters` WRITE;
/*!40000 ALTER TABLE `newsletters` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `client_id` bigint unsigned NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `client_id` bigint unsigned NOT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_auth_codes`
--

LOCK TABLES `oauth_auth_codes` WRITE;
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_clients`
--

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_personal_access_clients`
--

LOCK TABLES `oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_tokens`
--

LOCK TABLES `oauth_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Homepage','<div>[posts-slider title=\"\" filter_by=\"featured\" limit=\"4\" include=\"\" style=\"1\"][/posts-slider]</div><div>[posts-slider title=\"Editor\'s picked\" filter_by=\"posts-collection\" posts_collection_id=\"1\" limit=6 style=\"2\" description=\"The featured articles are selected by experienced editors. It is also based on the reader\'s rating. These posts have a lot of interest.\"][/posts-slider]</div><div>[recent-posts title=\"Recent posts\" subtitle=\"Latest\" limit=\"3\" background_style=\"background-white\" show_follow_us_section=\"1\" tab_post_limit=\"4\" ads_location=\"bottom-sidebar-ads\"][/recent-posts]</div><div>[videos-posts title=\"Latest Videos\" subtitle=\"In motion\"][/videos-posts]</div><div>[categories-tab-posts title=\"Popular\" subtitle=\"P\" limit=\"5\" categories_ids=\"1,2,3,4\" show_follow_us_section=\"1\" ads_location=\"top-sidebar-ads\"][/categories-tab-posts]</div><div>[most-comments title=\"Most comments\" limit=\"8\" subtitle=\"M\"][/most-comments]</div><div>[posts-collection title=\"Recommended\" subtitle=\"R\" limit=\"4\" posts_collection_id=\"2\" background_style=\"background-white\"][/posts-collection]</div><div>[theme-galleries title=\"@ OUR GALLERIES\" limit=\"7\" subtitle=\"O\"][/theme-galleries]</div>',1,NULL,'homepage',NULL,'published','2024-05-03 15:00:23','2024-05-03 15:00:23'),(2,'Home 2','<div>[posts-slider filter_by=\"featured\" limit=\"6\" style=\"3\"][/posts-slider]</div><div>[categories-tab-posts title=\"Popular\" subtitle=\"P\" limit=\"5\" categories_ids=\"1,2,3,4\" show_follow_us_section=\"1\" ads_location=\"top-sidebar-ads\"][/categories-tab-posts]</div><div>[most-comments title=\"Most comments\" limit=\"8\" subtitle=\"M\"][/most-comments]</div><div>[videos-posts title=\"Latest Videos\" subtitle=\"In motion\"][/videos-posts]</div><div>[posts-slider title=\"Editor\'s picked\" filter_by=\"posts-collection\" posts_collection_id=\"1\" limit=6 style=\"2\" description=\"The featured articles are selected by experienced editors. It is also based on the reader\'s rating. These posts have a lot of interest.\"][/posts-slider]</div><div>[recent-posts title=\"Recent posts\" subtitle=\"Latest\" limit=\"3\" background_style=\"background-white\" show_follow_us_section=\"1\" tab_post_limit=\"4\" ads_location=\"bottom-sidebar-ads\"][/recent-posts]</div>',1,NULL,'homepage2',NULL,'published','2024-05-03 15:00:23','2024-05-03 15:00:23'),(3,'Home 3','<div>[posts-slider filter_by=\"featured\" limit=\"6\" style=\"4\"][/posts-slider]</div><div>[posts-grid title=\"Featured Posts\" subtitle=\"News\" limit=\"6\" order_by=\"views\" order=\"desc\"][/posts-grid]</div><div>[most-comments title=\"Most comments\" limit=\"8\" subtitle=\"M\"][/most-comments]</div><div>[videos-posts title=\"Latest Videos\" subtitle=\"In motion\"][/videos-posts]</div><div>[posts-slider title=\"Editor\'s picked\" filter_by=\"posts-collection\" posts_collection_id=\"1\" limit=6 style=\"2\" description=\"The featured articles are selected by experienced editors. It is also based on the reader\'s rating. These posts have a lot of interest.\"][/posts-slider]</div><div>[recent-posts title=\"Recent posts\" subtitle=\"Latest\" limit=\"3\" background_style=\"background-white\" show_follow_us_section=\"1\" tab_post_limit=\"4\" ads_location=\"bottom-sidebar-ads\"][/recent-posts]</div>',1,NULL,'homepage2',NULL,'published','2024-05-03 15:00:23','2024-05-03 15:00:23'),(4,'Blog','<div>[posts-listing layout=\"list\"][/posts-listing]</div>',1,NULL,'default',NULL,'published','2024-05-03 15:00:23','2024-05-03 15:00:23'),(5,'Category List','<div>[posts-listing layout=\"list\"][/posts-listing]</div>',1,NULL,'no-breadcrumbs',NULL,'published','2024-05-03 15:00:23','2024-05-03 15:00:23'),(6,'Category grid','<div>[posts-listing layout=\"grid\"][/posts-listing]</div>',1,NULL,'full',NULL,'published','2024-05-03 15:00:23','2024-05-03 15:00:23'),(7,'Category metro','<div>[posts-listing layout=\"metro\"][/posts-listing]</div>',1,NULL,'full',NULL,'published','2024-05-03 15:00:23','2024-05-03 15:00:23'),(8,'Contact','<div>[contact-form title=\"Get in Touch\"][/contact-form]</div><h3>Directions</h3><div>[google-map]North Link Building, 10 Admiralty Street, 757695 Singapore[/google-map]</div>',1,NULL,'default',NULL,'published','2024-05-03 15:00:23','2024-05-03 15:00:23'),(9,'About Us','<div class=\"raw-html-embed\"><div class=\"row\">\n    <div class=\"col-md-12 col-sm-12\">\n        <div class=\"single-excerpt\">\n            <p class=\"font-large\">Tolerably much and ouch the in began alas more ouch some then accommodating flimsy wholeheartedly after hello slightly the that cow pouted much a goodness bound rebuilt poetically jaguar groundhog</p>\n        </div>\n        <div class=\"entry-main-content\">\n            <h2>Computer inside</h2>\n            <hr class=\"wp-block-separator is-style-wide\">\n            <div class=\"wp-block-image\">\n                <figure class=\"alignleft is-resized\">\n                    <img class=\"border-radius-5\" src=\"/themes/ultra/images/thumbnail-14.jpg\">\n                </figure>\n            </div>\n            <p>Less lion goodness that euphemistically robin expeditiously bluebird smugly scratched far while thus cackled sheepishly rigid after due one assenting regarding censorious while occasional or this more crane went more as\n                this less much amid overhung anathematic because much held one exuberantly sheep goodness so where rat wry well concomitantly.</p>\n            <h5>What\'s next?</h5>\n            <p>Pouted flirtatiously as beaver beheld above forward energetic across this jeepers beneficently cockily less a the raucously that magic upheld far so the this where crud then below after jeez enchanting drunkenly more much\n                wow callously irrespective limpet.</p>\n            <hr class=\"wp-block-separator is-style-dots\">\n            <p>Other yet this hazardous oh the until brave close towards stupidly euphemistically firefly boa some more underneath circa yet on as wow above ripe or blubbered one cobra bore ouch and this held ably one hence</p>\n            <h2>Conclusion</h2>\n            <hr class=\"wp-block-separator is-style-wide\">\n            <p>Alexe more gulped much garrulous a yikes earthworm wiped because goodness bet mongoose that along accommodatingly tortoise indecisively admirable but shark dear some and unwillingly before far vindictive less much this\n                on more less flexed far woolly from following glanced resolute unlike far this alongside against icily beyond flabby accidental.</p>\n\n\n            <h2>Design is future</h2>\n            <hr class=\"wp-block-separator is-style-wide\">\n            <p>Uninhibited carnally hired played in whimpered dear gorilla koala depending and much yikes off far quetzal goodness and from for grimaced goodness unaccountably and meadowlark near unblushingly crucial scallop tightly neurotic\n                hungrily some and dear furiously this apart.</p>\n            <p>Spluttered narrowly yikes left moth in yikes bowed this that grizzly much hello on spoon-fed that alas rethought much decently richly and wow against the frequent fluidly at formidable acceptably flapped besides and much\n                circa far over the bucolically hey precarious goldfinch mastodon goodness gnashed a jellyfish and one however because.</p>\n            <figure class=\"wp-block-gallery columns-3\">\n                <ul class=\"blocks-gallery-grid\">\n                    <li class=\"blocks-gallery-item\">\n                        <a href=\"#\"><img class=\"border-radius-5\" src=\"/themes/ultra/images/thumbnail-1.jpg\" alt=\"\"></a>\n                    </li>\n                    <li class=\"blocks-gallery-item\">\n                        <a href=\"#\"><img class=\"border-radius-5\" src=\"/themes/ultra/images/thumbnail-2.jpg\" alt=\"\"></a>\n                    </li>\n                    <li class=\"blocks-gallery-item\">\n                        <a href=\"#\"><img class=\"border-radius-5\" src=\"/themes/ultra/images/thumbnail-10.jpg\" alt=\"\"></a>\n                    </li>\n                </ul>\n            </figure>\n            <p>Laconic overheard dear woodchuck wow this outrageously taut beaver hey hello far meadowlark imitatively egregiously hugged that yikes minimally unanimous pouted flirtatiously as beaver beheld above forward energetic across\n                this jeepers beneficently cockily less a the raucously that magic upheld far so the this where crud then below after jeez enchanting drunkenly more much wow callously irrespective limpet.</p>\n            <hr class=\"wp-block-separator is-style-dots\">\n            <p>Scallop or far crud plain remarkably far by thus far iguana lewd precociously and and less rattlesnake contrary caustic wow this near alas and next and pled the yikes articulate about as less cackled dalmatian in much less\n                well jeering for the thanks blindly sentimental whimpered less across objectively fanciful grimaced wildly some wow and rose jeepers outgrew lugubrious luridly irrationally attractively dachshund.</p>\n            <blockquote class=\"wp-block-quote is-style-large\">\n                <p>The advance of technology is based on making it fit in so that you don\'t really even notice it, so it\'s part of everyday life.</p><cite>B. Johnso</cite>\n            </blockquote>\n            <p class=\"text-center\">\n                <a href=\"#\"><img class=\"d-inline\" src=\"assets/imgs/ads-4.jpg\" alt=\"\"></a>\n            </p>\n        </div>\n    </div>\n</div>\n</div><h3>Address</h3><div>[google-map]North Link Building, 10 Admiralty Street, 757695 Singapore[/google-map]</div>',1,NULL,'default',NULL,'published','2024-05-03 15:00:23','2024-05-03 15:00:23'),(10,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,'default',NULL,'published','2024-05-03 15:00:23','2024-05-03 15:00:23');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_translations`
--

DROP TABLE IF EXISTS `pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`pages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_translations`
--

LOCK TABLES `pages_translations` WRITE;
/*!40000 ALTER TABLE `pages_translations` DISABLE KEYS */;
INSERT INTO `pages_translations` VALUES ('vi',1,'Trang chủ',NULL,'<div>[posts-slider title=\"\" filter_by=\"featured\" limit=\"4\" include=\"\" style=\"1\"][/posts-slider]</div><div>[posts-slider title=\"Editor\'s picked\" filter_by=\"posts-collection\" posts_collection_id=\"1\" limit=6 style=\"2\" description=\"The featured articles are selected by experienced editors. It is also based on the reader\'s rating. These posts have a lot of interest.\"][/posts-slider]</div><div>[recent-posts title=\"Bài viết mới\" subtitle=\"Latest\" limit=\"3\" show_follow_us_section=\"1\"][/recent-posts]</div><div>[categories-tab-posts title=\"Bài viết được quan tâm\" subtitle=\"P\" limit=\"5\" categories_ids=\"1,2,3,4\" show_follow_us_section=\"1\" ads_location=\"top-sidebar-ads\"][/categories-tab-posts]</div><div>[posts-grid title=\"Bài viết nổi bật\" subtitle=\"News\" categories=\"\" categories_exclude=\"\" style=\"2\" limit=\"6\"][/posts-grid]</div><div>[theme-galleries title=\"@ OUR GALLERIES\" subtitle=\"In motion\" limit=\"7\"][/theme-galleries]</div>'),('vi',2,'Trang chủ 2',NULL,'<div>[posts-slider filter_by=\"featured\" limit=\"6\" style=\"3\"][/posts-slider]</div><div>[categories-tab-posts title=\"Popular\" subtitle=\"P\" limit=\"5\" categories_ids=\"1,2,3,4\" show_follow_us_section=\"1\" ads_location=\"top-sidebar-ads\"][/categories-tab-posts]</div><div>[most-comments title=\"Most comments\" limit=\"8\" subtitle=\"M\"][/most-comments]</div><div>[videos-posts title=\"Latest Videos\" subtitle=\"In motion\"][/videos-posts]</div><div>[posts-slider title=\"Editor\'s picked\" filter_by=\"posts-collection\" posts_collection_id=\"1\" limit=6 style=\"2\" description=\"The featured articles are selected by experienced editors. It is also based on the reader\'s rating. These posts have a lot of interest.\"][/posts-slider]</div><div>[recent-posts title=\"Recent posts\" subtitle=\"Latest\" limit=\"3\" background_style=\"background-white\" show_follow_us_section=\"1\" tab_post_limit=\"4\" ads_location=\"bottom-sidebar-ads\"][/recent-posts]</div>'),('vi',3,'Trang chủ 3',NULL,'<div>[posts-slider filter_by=\"featured\" limit=\"6\" style=\"4\"][/posts-slider]</div><div>[posts-grid title=\"Featured Posts\" subtitle=\"News\" limit=\"6\" order_by=\"views\" order=\"desc\"][/posts-grid]</div><div>[most-comments title=\"Most comments\" limit=\"8\" subtitle=\"M\"][/most-comments]</div><div>[videos-posts title=\"Latest Videos\" subtitle=\"In motion\"][/videos-posts]</div><div>[posts-slider title=\"Editor\'s picked\" filter_by=\"posts-collection\" posts_collection_id=\"1\" limit=6 style=\"2\" description=\"The featured articles are selected by experienced editors. It is also based on the reader\'s rating. These posts have a lot of interest.\"][/posts-slider]</div><div>[recent-posts title=\"Recent posts\" subtitle=\"Latest\" limit=\"3\" background_style=\"background-white\" show_follow_us_section=\"1\" tab_post_limit=\"4\" ads_location=\"bottom-sidebar-ads\"][/recent-posts]</div>'),('vi',4,'Tin tức',NULL,'<div>[categories-big limit=\"12\"][/categories-big]</div>'),('vi',5,'Tin tức danh sách',NULL,'<div>[posts-listing layout=\"list\"][/posts-listing]</div>'),('vi',6,'Tin tức dạng cột',NULL,'<div>[posts-listing layout=\"grid\"][/posts-listing]</div>'),('vi',7,'Tin tức metro',NULL,'<div>[posts-listing layout=\"metro\"][/posts-listing]</div>'),('vi',8,'Liên hệ',NULL,'<div>[contact-form title=\"Liên hệ\"][/contact-form]</div><h3>Địa chỉ</h3><div>[google-map]North Link Building, 10 Admiralty Street, 757695 Singapore[/google-map]</div>'),('vi',9,'Về chúng tôi',NULL,'<div class=\"raw-html-embed\"><div class=\"row\">\n    <div class=\"col-md-12 col-sm-12\">\n        <div class=\"single-excerpt\">\n            <p class=\"font-large\">Người ta né tránh nhắc đến Chúa Kito khi nói đến mốc lịch sử bằng cách nói Trước công nguyên và sau công nguyên. Nhưng nguyên tiếng anh: Before Chirst, After Chirst – trước Chúa Kito, sau Chúa Kito – người ta sợ lịch sử của Kito giáo. Đó là lời chia sẻ của cha đặc trách Gioan trong Thánh lễ thường kì Cộng đoàn sinh viên Công giáo y dược vào lúc 19h15’, ngày 11.05.2017 tại đền thánh Gierado, Giáo xứ Thái Hà.</p>\n        </div>\n        <div class=\"entry-main-content\">\n            <h2>Cuộc sống là những phép màu</h2>\n            <hr class=\"wp-block-separator is-style-wide\">\n            <div class=\"wp-block-image\">\n                <figure class=\"alignleft is-resized\">\n                    <img class=\"border-radius-5\" src=\"/themes/ultra/images/thumbnail-14.jpg\">\n                </figure>\n            </div>\n            <p>Khởi đầu bài giảng của mình cha nói đến một trong những khó khăn lớn nhất Giáo Hội nói chung và người tín hữu nói riêng đó chính là niềm tin vào Thiên Chúa. Chính khủng hoảng niềm tin gây nên chiến tranh, gây nên thù hận và chết chóc. Lòng tin không chỉ ảnh hưởng lên cá nhân mà thôi nhưng lên toàn thế giới. Hôm nay, Chúa cho chúng ta thấy lòng tin là khởi đầu, là mấu chốt để con người đứng vững giữa trăm chiều thử thách.</p>\n            <h5>Ý nghĩa là gì?</h5>\n            <p>Hai bài đọc hôm nay đều đi từ lịch sử, Chúa Giesu tiên báo kẻ sẽ nộp thầy. Ngài chọn Giuda không phải chọn nhầm, nhưng Ngài nói rõ trong bài Tin Mừng rằng lời kinh thánh phải được ứng nghiệm: “Kẻ giơ tay chấm chung một đĩa với con lại giơ gót đạp con”. Trong bài đọc một, Phaolo nói về Đavit để ứng nghiệm lời Kinh thánh đã nói, để anh chị em Do thái nhận ra được lời tiên báo qua lịch sử là chúa Giesu.</p>\n            <hr class=\"wp-block-separator is-style-dots\">\n            <p>Để có được lòng tin nơi con người, Chúa Giesu đã khai mào trong một chương trình lịch sử dài tập. Lịch sử Cựu ước loan báo đúng với những gì đã xảy ra với Chúa Giesu Kito. Một triết gia người Pháp nói rằng: “Kito giáo có một nền tảng đức tin vững chắc đó là lịch sử, nhưng Kito giáo quên đi điểm quan trọng này và ngày nay đi nặng về phía thần học”.</p>\n            <h2>Kết luận</h2>\n            <hr class=\"wp-block-separator is-style-wide\">\n            <p>Cha nhắc lại: Kito Giáo cắm rễ sâu, trải dài và được ứng nghiệm trong lịch sử thánh kinh ngang qua những con người, nơi chốn, địa điểm cụ thể. Nhìn lại lịch sử, các ngày lễ xã hội, ngày nghỉ… đều liên quan đến Kito giáo và xuất phát từ Kito giáo.</p>\n\n\n            <h2>Tương lai</h2>\n            <hr class=\"wp-block-separator is-style-wide\">\n            <p>Cha nói đến biến cố Đức Mẹ hiện ra tại Fatima 100 năm là một biến cố lịch sử có thời gian, không gian, nhân vật và sứ điệp cụ thể không phải con người tự dụng nên hay hoang tưởng.</p>\n            <p>Niềm tin của mỗi chúng ta phải dựa vào lịch sử chứ không phải mơ hồ. Khi nhìn lại quá khứ ta biết rằng lòng tin đó đã được Thiên Chúa khai mào từ rất sớm. Các thánh Tông đồ đã đứng trên bình diện lịch sự để minh chứng niềm tin của con người vào Giave Thiên Chúa.</p>\n            <figure class=\"wp-block-gallery columns-3\">\n                <ul class=\"blocks-gallery-grid\">\n                    <li class=\"blocks-gallery-item\">\n                        <a href=\"#\"><img class=\"border-radius-5\" src=\"/themes/ultra/images/thumbnail-1.jpg\" alt=\"\"></a>\n                    </li>\n                    <li class=\"blocks-gallery-item\">\n                        <a href=\"#\"><img class=\"border-radius-5\" src=\"/themes/ultra/images/thumbnail-2.jpg\" alt=\"\"></a>\n                    </li>\n                    <li class=\"blocks-gallery-item\">\n                        <a href=\"#\"><img class=\"border-radius-5\" src=\"/themes/ultra/images/thumbnail-10.jpg\" alt=\"\"></a>\n                    </li>\n                </ul>\n            </figure>\n            <p>Nhiều người thời nay biết lịch sử nhưng không biết Chúa Kito là ai vì họ né tránh Chúa Giesu. Chúa Giesu đi vào lịch sử để tỏ cho con người cùng đích của sự sống là gì và Thiên Chúa là ai cùng những lời tiên báo để củng cố lòng tin cho con người.</p>\n            <hr class=\"wp-block-separator is-style-dots\">\n           <blockquote class=\"wp-block-quote is-style-large\">\n                <p>Sự tiến bộ của công nghệ dựa trên việc làm cho nó phù hợp để bạn thậm chí không thực sự nhận thấy nó, vì vậy nó là một phần của cuộc sống hàng ngày.</p><cite>B. Johnso</cite>\n            </blockquote>\n            <p class=\"text-center\">\n                <a href=\"#\"><img class=\"d-inline\" src=\"assets/imgs/ads-4.jpg\" alt=\"\"></a>\n            </p>\n        </div>\n    </div>\n</div>\n</div>'),('vi',10,'Cookie Policy',NULL,'<h3>EU Cookie Consent</h3><p>Để sử dụng trang web này, chúng tôi đang sử dụng Cookie và thu thập một số Dữ liệu. Để tuân thủ GDPR của Liên minh Châu Âu, chúng tôi cho bạn lựa chọn nếu bạn cho phép chúng tôi sử dụng một số Cookie nhất định và thu thập một số Dữ liệu.</p><h4>Dữ liệu cần thiết</h4><p>Dữ liệu cần thiết là cần thiết để chạy Trang web bạn đang truy cập về mặt kỹ thuật. Bạn không thể hủy kích hoạt chúng.</p><p>- Session Cookie: PHP sử dụng Cookie để xác định phiên của người dùng. Nếu không có Cookie này, trang web sẽ không hoạt động.</p><p>- XSRF-Token Cookie: Laravel tự động tạo \"token\" CSRF cho mỗi phiên người dùng đang hoạt động do ứng dụng quản lý. Token này được sử dụng để xác minh rằng người dùng đã xác thực là người thực sự đưa ra yêu cầu đối với ứng dụng.</p>');
/*!40000 ALTER TABLE `pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int unsigned NOT NULL,
  `post_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categories`
--

LOCK TABLES `post_categories` WRITE;
/*!40000 ALTER TABLE `post_categories` DISABLE KEYS */;
INSERT INTO `post_categories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,1),(8,1,2),(9,2,2),(10,3,2),(11,4,2),(12,5,2),(13,6,2),(14,7,2),(15,1,3),(16,2,3),(17,3,3),(18,4,3),(19,5,3),(20,6,3),(21,7,3),(22,1,4),(23,2,4),(24,3,4),(25,4,4),(26,5,4),(27,6,4),(28,7,4),(29,1,5),(30,2,5),(31,3,5),(32,4,5),(33,5,5),(34,6,5),(35,7,5),(36,1,6),(37,2,6),(38,3,6),(39,4,6),(40,5,6),(41,6,6),(42,7,6),(43,1,7),(44,2,7),(45,3,7),(46,4,7),(47,5,7),(48,6,7),(49,7,7),(50,1,8),(51,2,8),(52,3,8),(53,4,8),(54,5,8),(55,6,8),(56,7,8),(57,1,9),(58,2,9),(59,3,9),(60,4,9),(61,5,9),(62,6,9),(63,7,9),(64,1,10),(65,2,10),(66,3,10),(67,4,10),(68,5,10),(69,6,10),(70,7,10),(71,1,11),(72,2,11),(73,3,11),(74,4,11),(75,5,11),(76,6,11),(77,7,11),(78,1,12),(79,2,12),(80,3,12),(81,4,12),(82,5,12),(83,6,12),(84,7,12),(85,1,13),(86,2,13),(87,3,13),(88,4,13),(89,5,13),(90,6,13),(91,7,13),(92,1,14),(93,2,14),(94,3,14),(95,4,14),(96,5,14),(97,6,14),(98,7,14),(99,1,15),(100,2,15),(101,3,15),(102,4,15),(103,5,15),(104,6,15),(105,7,15),(106,1,16),(107,2,16),(108,3,16),(109,4,16),(110,5,16),(111,6,16),(112,7,16),(113,1,17),(114,2,17),(115,3,17),(116,4,17),(117,5,17),(118,6,17),(119,7,17),(120,1,18),(121,2,18),(122,3,18),(123,4,18),(124,5,18),(125,6,18),(126,7,18),(127,1,19),(128,2,19),(129,3,19),(130,4,19),(131,5,19),(132,6,19),(133,7,19),(134,1,20),(135,2,20),(136,3,20),(137,4,20),(138,5,20),(139,6,20),(140,7,20);
/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_collections`
--

DROP TABLE IF EXISTS `post_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_collections` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_collections`
--

LOCK TABLES `post_collections` WRITE;
/*!40000 ALTER TABLE `post_collections` DISABLE KEYS */;
INSERT INTO `post_collections` VALUES (1,'Editor\'s Picked',NULL,NULL,'published','2024-05-03 15:00:44','2024-05-03 15:00:44'),(2,'Recommended Posts',NULL,NULL,'published','2024-05-03 15:00:44','2024-05-03 15:00:44'),(3,'Bài viết hay',NULL,NULL,'published','2024-05-03 15:00:44','2024-05-03 15:00:44'),(4,'Recommended Posts',NULL,NULL,'published','2024-05-03 15:00:44','2024-05-03 15:00:44');
/*!40000 ALTER TABLE `post_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_collections_posts`
--

DROP TABLE IF EXISTS `post_collections_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_collections_posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `post_collection_id` int unsigned NOT NULL,
  `post_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=883 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_collections_posts`
--

LOCK TABLES `post_collections_posts` WRITE;
/*!40000 ALTER TABLE `post_collections_posts` DISABLE KEYS */;
INSERT INTO `post_collections_posts` VALUES (1,1,12),(2,1,3),(3,1,5),(4,1,1),(5,1,7),(6,1,9),(7,2,15),(8,2,4),(9,2,2),(10,2,1),(11,2,10),(12,3,20),(13,3,19),(14,3,21),(15,3,31),(16,3,32),(17,4,22),(18,4,24),(19,4,25),(20,4,29),(21,4,30),(22,1,12),(23,1,3),(24,1,5),(25,1,1),(26,1,7),(27,1,9),(28,2,15),(29,2,4),(30,2,2),(31,2,1),(32,2,10),(33,3,20),(34,3,19),(35,3,21),(36,3,31),(37,3,32),(38,4,22),(39,4,24),(40,4,25),(41,4,29),(42,4,30),(43,1,12),(44,1,3),(45,1,5),(46,1,1),(47,1,7),(48,1,9),(49,2,15),(50,2,4),(51,2,2),(52,2,1),(53,2,10),(54,3,20),(55,3,19),(56,3,21),(57,3,31),(58,3,32),(59,4,22),(60,4,24),(61,4,25),(62,4,29),(63,4,30),(64,1,12),(65,1,3),(66,1,5),(67,1,1),(68,1,7),(69,1,9),(70,2,15),(71,2,4),(72,2,2),(73,2,1),(74,2,10),(75,3,20),(76,3,19),(77,3,21),(78,3,31),(79,3,32),(80,4,22),(81,4,24),(82,4,25),(83,4,29),(84,4,30),(85,1,12),(86,1,3),(87,1,5),(88,1,1),(89,1,7),(90,1,9),(91,2,15),(92,2,4),(93,2,2),(94,2,1),(95,2,10),(96,3,20),(97,3,19),(98,3,21),(99,3,31),(100,3,32),(101,4,22),(102,4,24),(103,4,25),(104,4,29),(105,4,30),(106,1,12),(107,1,3),(108,1,5),(109,1,1),(110,1,7),(111,1,9),(112,2,15),(113,2,4),(114,2,2),(115,2,1),(116,2,10),(117,3,20),(118,3,19),(119,3,21),(120,3,31),(121,3,32),(122,4,22),(123,4,24),(124,4,25),(125,4,29),(126,4,30),(127,1,12),(128,1,3),(129,1,5),(130,1,1),(131,1,7),(132,1,9),(133,2,15),(134,2,4),(135,2,2),(136,2,1),(137,2,10),(138,3,20),(139,3,19),(140,3,21),(141,3,31),(142,3,32),(143,4,22),(144,4,24),(145,4,25),(146,4,29),(147,4,30),(148,1,12),(149,1,3),(150,1,5),(151,1,1),(152,1,7),(153,1,9),(154,2,15),(155,2,4),(156,2,2),(157,2,1),(158,2,10),(159,3,20),(160,3,19),(161,3,21),(162,3,31),(163,3,32),(164,4,22),(165,4,24),(166,4,25),(167,4,29),(168,4,30),(169,1,12),(170,1,3),(171,1,5),(172,1,1),(173,1,7),(174,1,9),(175,2,15),(176,2,4),(177,2,2),(178,2,1),(179,2,10),(180,3,20),(181,3,19),(182,3,21),(183,3,31),(184,3,32),(185,4,22),(186,4,24),(187,4,25),(188,4,29),(189,4,30),(190,1,12),(191,1,3),(192,1,5),(193,1,1),(194,1,7),(195,1,9),(196,2,15),(197,2,4),(198,2,2),(199,2,1),(200,2,10),(201,3,20),(202,3,19),(203,3,21),(204,3,31),(205,3,32),(206,4,22),(207,4,24),(208,4,25),(209,4,29),(210,4,30),(211,1,12),(212,1,3),(213,1,5),(214,1,1),(215,1,7),(216,1,9),(217,2,15),(218,2,4),(219,2,2),(220,2,1),(221,2,10),(222,3,20),(223,3,19),(224,3,21),(225,3,31),(226,3,32),(227,4,22),(228,4,24),(229,4,25),(230,4,29),(231,4,30),(232,1,12),(233,1,3),(234,1,5),(235,1,1),(236,1,7),(237,1,9),(238,2,15),(239,2,4),(240,2,2),(241,2,1),(242,2,10),(243,3,20),(244,3,19),(245,3,21),(246,3,31),(247,3,32),(248,4,22),(249,4,24),(250,4,25),(251,4,29),(252,4,30),(253,1,12),(254,1,3),(255,1,5),(256,1,1),(257,1,7),(258,1,9),(259,2,15),(260,2,4),(261,2,2),(262,2,1),(263,2,10),(264,3,20),(265,3,19),(266,3,21),(267,3,31),(268,3,32),(269,4,22),(270,4,24),(271,4,25),(272,4,29),(273,4,30),(274,1,12),(275,1,3),(276,1,5),(277,1,1),(278,1,7),(279,1,9),(280,2,15),(281,2,4),(282,2,2),(283,2,1),(284,2,10),(285,3,20),(286,3,19),(287,3,21),(288,3,31),(289,3,32),(290,4,22),(291,4,24),(292,4,25),(293,4,29),(294,4,30),(295,1,12),(296,1,3),(297,1,5),(298,1,1),(299,1,7),(300,1,9),(301,2,15),(302,2,4),(303,2,2),(304,2,1),(305,2,10),(306,3,20),(307,3,19),(308,3,21),(309,3,31),(310,3,32),(311,4,22),(312,4,24),(313,4,25),(314,4,29),(315,4,30),(316,1,12),(317,1,3),(318,1,5),(319,1,1),(320,1,7),(321,1,9),(322,2,15),(323,2,4),(324,2,2),(325,2,1),(326,2,10),(327,3,20),(328,3,19),(329,3,21),(330,3,31),(331,3,32),(332,4,22),(333,4,24),(334,4,25),(335,4,29),(336,4,30),(337,1,12),(338,1,3),(339,1,5),(340,1,1),(341,1,7),(342,1,9),(343,2,15),(344,2,4),(345,2,2),(346,2,1),(347,2,10),(348,3,20),(349,3,19),(350,3,21),(351,3,31),(352,3,32),(353,4,22),(354,4,24),(355,4,25),(356,4,29),(357,4,30),(358,1,12),(359,1,3),(360,1,5),(361,1,1),(362,1,7),(363,1,9),(364,2,15),(365,2,4),(366,2,2),(367,2,1),(368,2,10),(369,3,20),(370,3,19),(371,3,21),(372,3,31),(373,3,32),(374,4,22),(375,4,24),(376,4,25),(377,4,29),(378,4,30),(379,1,12),(380,1,3),(381,1,5),(382,1,1),(383,1,7),(384,1,9),(385,2,15),(386,2,4),(387,2,2),(388,2,1),(389,2,10),(390,3,20),(391,3,19),(392,3,21),(393,3,31),(394,3,32),(395,4,22),(396,4,24),(397,4,25),(398,4,29),(399,4,30),(400,1,12),(401,1,3),(402,1,5),(403,1,1),(404,1,7),(405,1,9),(406,2,15),(407,2,4),(408,2,2),(409,2,1),(410,2,10),(411,3,20),(412,3,19),(413,3,21),(414,3,31),(415,3,32),(416,4,22),(417,4,24),(418,4,25),(419,4,29),(420,4,30),(421,1,12),(422,1,3),(423,1,5),(424,1,1),(425,1,7),(426,1,9),(427,2,15),(428,2,4),(429,2,2),(430,2,1),(431,2,10),(432,3,20),(433,3,19),(434,3,21),(435,3,31),(436,3,32),(437,4,22),(438,4,24),(439,4,25),(440,4,29),(441,4,30),(442,1,12),(443,1,3),(444,1,5),(445,1,1),(446,1,7),(447,1,9),(448,2,15),(449,2,4),(450,2,2),(451,2,1),(452,2,10),(453,3,20),(454,3,19),(455,3,21),(456,3,31),(457,3,32),(458,4,22),(459,4,24),(460,4,25),(461,4,29),(462,4,30),(463,1,12),(464,1,3),(465,1,5),(466,1,1),(467,1,7),(468,1,9),(469,2,15),(470,2,4),(471,2,2),(472,2,1),(473,2,10),(474,3,20),(475,3,19),(476,3,21),(477,3,31),(478,3,32),(479,4,22),(480,4,24),(481,4,25),(482,4,29),(483,4,30),(484,1,12),(485,1,3),(486,1,5),(487,1,1),(488,1,7),(489,1,9),(490,2,15),(491,2,4),(492,2,2),(493,2,1),(494,2,10),(495,3,20),(496,3,19),(497,3,21),(498,3,31),(499,3,32),(500,4,22),(501,4,24),(502,4,25),(503,4,29),(504,4,30),(505,1,12),(506,1,3),(507,1,5),(508,1,1),(509,1,7),(510,1,9),(511,2,15),(512,2,4),(513,2,2),(514,2,1),(515,2,10),(516,3,20),(517,3,19),(518,3,21),(519,3,31),(520,3,32),(521,4,22),(522,4,24),(523,4,25),(524,4,29),(525,4,30),(526,1,12),(527,1,3),(528,1,5),(529,1,1),(530,1,7),(531,1,9),(532,2,15),(533,2,4),(534,2,2),(535,2,1),(536,2,10),(537,3,20),(538,3,19),(539,3,21),(540,3,31),(541,3,32),(542,4,22),(543,4,24),(544,4,25),(545,4,29),(546,4,30),(547,1,12),(548,1,3),(549,1,5),(550,1,1),(551,1,7),(552,1,9),(553,2,15),(554,2,4),(555,2,2),(556,2,1),(557,2,10),(558,3,20),(559,3,19),(560,3,21),(561,3,31),(562,3,32),(563,4,22),(564,4,24),(565,4,25),(566,4,29),(567,4,30),(568,1,12),(569,1,3),(570,1,5),(571,1,1),(572,1,7),(573,1,9),(574,2,15),(575,2,4),(576,2,2),(577,2,1),(578,2,10),(579,3,20),(580,3,19),(581,3,21),(582,3,31),(583,3,32),(584,4,22),(585,4,24),(586,4,25),(587,4,29),(588,4,30),(589,1,12),(590,1,3),(591,1,5),(592,1,1),(593,1,7),(594,1,9),(595,2,15),(596,2,4),(597,2,2),(598,2,1),(599,2,10),(600,3,20),(601,3,19),(602,3,21),(603,3,31),(604,3,32),(605,4,22),(606,4,24),(607,4,25),(608,4,29),(609,4,30),(610,1,12),(611,1,3),(612,1,5),(613,1,1),(614,1,7),(615,1,9),(616,2,15),(617,2,4),(618,2,2),(619,2,1),(620,2,10),(621,3,20),(622,3,19),(623,3,21),(624,3,31),(625,3,32),(626,4,22),(627,4,24),(628,4,25),(629,4,29),(630,4,30),(631,1,12),(632,1,3),(633,1,5),(634,1,1),(635,1,7),(636,1,9),(637,2,15),(638,2,4),(639,2,2),(640,2,1),(641,2,10),(642,3,20),(643,3,19),(644,3,21),(645,3,31),(646,3,32),(647,4,22),(648,4,24),(649,4,25),(650,4,29),(651,4,30),(652,1,12),(653,1,3),(654,1,5),(655,1,1),(656,1,7),(657,1,9),(658,2,15),(659,2,4),(660,2,2),(661,2,1),(662,2,10),(663,3,20),(664,3,19),(665,3,21),(666,3,31),(667,3,32),(668,4,22),(669,4,24),(670,4,25),(671,4,29),(672,4,30),(673,1,12),(674,1,3),(675,1,5),(676,1,1),(677,1,7),(678,1,9),(679,2,15),(680,2,4),(681,2,2),(682,2,1),(683,2,10),(684,3,20),(685,3,19),(686,3,21),(687,3,31),(688,3,32),(689,4,22),(690,4,24),(691,4,25),(692,4,29),(693,4,30),(694,1,12),(695,1,3),(696,1,5),(697,1,1),(698,1,7),(699,1,9),(700,2,15),(701,2,4),(702,2,2),(703,2,1),(704,2,10),(705,3,20),(706,3,19),(707,3,21),(708,3,31),(709,3,32),(710,4,22),(711,4,24),(712,4,25),(713,4,29),(714,4,30),(715,1,12),(716,1,3),(717,1,5),(718,1,1),(719,1,7),(720,1,9),(721,2,15),(722,2,4),(723,2,2),(724,2,1),(725,2,10),(726,3,20),(727,3,19),(728,3,21),(729,3,31),(730,3,32),(731,4,22),(732,4,24),(733,4,25),(734,4,29),(735,4,30),(736,1,12),(737,1,3),(738,1,5),(739,1,1),(740,1,7),(741,1,9),(742,2,15),(743,2,4),(744,2,2),(745,2,1),(746,2,10),(747,3,20),(748,3,19),(749,3,21),(750,3,31),(751,3,32),(752,4,22),(753,4,24),(754,4,25),(755,4,29),(756,4,30),(757,1,12),(758,1,3),(759,1,5),(760,1,1),(761,1,7),(762,1,9),(763,2,15),(764,2,4),(765,2,2),(766,2,1),(767,2,10),(768,3,20),(769,3,19),(770,3,21),(771,3,31),(772,3,32),(773,4,22),(774,4,24),(775,4,25),(776,4,29),(777,4,30),(778,1,12),(779,1,3),(780,1,5),(781,1,1),(782,1,7),(783,1,9),(784,2,15),(785,2,4),(786,2,2),(787,2,1),(788,2,10),(789,3,20),(790,3,19),(791,3,21),(792,3,31),(793,3,32),(794,4,22),(795,4,24),(796,4,25),(797,4,29),(798,4,30),(799,1,12),(800,1,3),(801,1,5),(802,1,1),(803,1,7),(804,1,9),(805,2,15),(806,2,4),(807,2,2),(808,2,1),(809,2,10),(810,3,20),(811,3,19),(812,3,21),(813,3,31),(814,3,32),(815,4,22),(816,4,24),(817,4,25),(818,4,29),(819,4,30),(820,1,12),(821,1,3),(822,1,5),(823,1,1),(824,1,7),(825,1,9),(826,2,15),(827,2,4),(828,2,2),(829,2,1),(830,2,10),(831,3,20),(832,3,19),(833,3,21),(834,3,31),(835,3,32),(836,4,22),(837,4,24),(838,4,25),(839,4,29),(840,4,30),(841,1,12),(842,1,3),(843,1,5),(844,1,1),(845,1,7),(846,1,9),(847,2,15),(848,2,4),(849,2,2),(850,2,1),(851,2,10),(852,3,20),(853,3,19),(854,3,21),(855,3,31),(856,3,32),(857,4,22),(858,4,24),(859,4,25),(860,4,29),(861,4,30),(862,1,12),(863,1,3),(864,1,5),(865,1,1),(866,1,7),(867,1,9),(868,2,15),(869,2,4),(870,2,2),(871,2,1),(872,2,10),(873,3,20),(874,3,19),(875,3,21),(876,3,31),(877,3,32),(878,4,22),(879,4,24),(880,4,25),(881,4,29),(882,4,30);
/*!40000 ALTER TABLE `post_collections_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tag_id` int unsigned NOT NULL,
  `post_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags`
--

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
INSERT INTO `post_tags` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,1),(8,1,2),(9,2,2),(10,3,2),(11,4,2),(12,5,2),(13,6,2),(14,7,2),(15,1,3),(16,2,3),(17,3,3),(18,4,3),(19,5,3),(20,6,3),(21,7,3),(22,1,4),(23,2,4),(24,3,4),(25,4,4),(26,5,4),(27,6,4),(28,7,4),(29,1,5),(30,2,5),(31,3,5),(32,4,5),(33,5,5),(34,6,5),(35,7,5),(36,1,6),(37,2,6),(38,3,6),(39,4,6),(40,5,6),(41,6,6),(42,7,6),(43,1,7),(44,2,7),(45,3,7),(46,4,7),(47,5,7),(48,6,7),(49,7,7),(50,1,8),(51,2,8),(52,3,8),(53,4,8),(54,5,8),(55,6,8),(56,7,8),(57,1,9),(58,2,9),(59,3,9),(60,4,9),(61,5,9),(62,6,9),(63,7,9),(64,1,10),(65,2,10),(66,3,10),(67,4,10),(68,5,10),(69,6,10),(70,7,10),(71,1,11),(72,2,11),(73,3,11),(74,4,11),(75,5,11),(76,6,11),(77,7,11),(78,1,12),(79,2,12),(80,3,12),(81,4,12),(82,5,12),(83,6,12),(84,7,12),(85,1,13),(86,2,13),(87,3,13),(88,4,13),(89,5,13),(90,6,13),(91,7,13),(92,1,14),(93,2,14),(94,3,14),(95,4,14),(96,5,14),(97,6,14),(98,7,14),(99,1,15),(100,2,15),(101,3,15),(102,4,15),(103,5,15),(104,6,15),(105,7,15),(106,1,16),(107,2,16),(108,3,16),(109,4,16),(110,5,16),(111,6,16),(112,7,16),(113,1,17),(114,2,17),(115,3,17),(116,4,17),(117,5,17),(118,6,17),(119,7,17),(120,1,18),(121,2,18),(122,3,18),(123,4,18),(124,5,18),(125,6,18),(126,7,18),(127,1,19),(128,2,19),(129,3,19),(130,4,19),(131,5,19),(132,6,19),(133,7,19),(134,1,20),(135,2,20),(136,3,20),(137,4,20),(138,5,20),(139,6,20),(140,7,20);
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `format_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `author_id` (`author_id`),
  KEY `author_type` (`author_type`),
  KEY `created_at` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'This Year Enjoy the Color of Festival with Amazing Holi Gifts Ideas','Molestias libero consectetur velit reprehenderit expedita enim. Et ut saepe occaecati ipsam quo quia dicta. Ea quae a ipsa autem.',NULL,'published',10,'Botble\\Member\\Models\\Member',0,'news/news-1.jpg',1924,'video','2024-05-03 15:00:36','2024-05-03 15:00:40',NULL),(2,'The World Caters to Average People and Mediocre Lifestyles','Officiis pariatur nulla officia in tempora provident officiis. Dolores aut suscipit corrupti rerum.','<h2>Gryphon. \'Well, I hardly.</h2><p>And the moral of that is, but I shall think nothing of tumbling down stairs! How brave they\'ll all think me at home! Why, I wouldn\'t be so stingy about it, you may stand down,\' continued the Pigeon, but in a low voice, \'Your Majesty must cross-examine the next verse,\' the Gryphon whispered in a hoarse, feeble voice: \'I heard the Rabbit hastily interrupted. \'There\'s a great hurry; \'and their names were Elsie, Lacie, and Tillie; and they went up to Alice, and she heard a little animal (she couldn\'t guess of what sort it was) scratching and scrambling about in the way out of their wits!\' So she sat down and make one repeat lessons!\' thought Alice; \'only, as it\'s asleep, I suppose it doesn\'t matter much,\' thought Alice, \'or perhaps they won\'t walk the way wherever she wanted much to know, but the Gryphon in an undertone to the baby, it was talking in a shrill, passionate voice. \'Would YOU like cats if you cut your finger VERY deeply with a teacup in one hand and a piece of evidence we\'ve.</p><p class=\"text-center\"><img src=\"http://ultra-news.local/storage/news/news-1-600x421.jpg\"></p><p>THIS size: why, I should like it put the hookah out of the house, and the executioner went off like an honest man.\' There was a bright idea came into her head. \'If I eat one of the court. \'What do you mean that you think you might do very well as she spoke; \'either you or your head must be the right distance--but then I wonder what you\'re doing!\' cried Alice, jumping up in great fear lest she should push the matter with it. There was certainly not becoming. \'And that\'s the jury, who instantly.</p><h2>Lizard, Bill, was in the.</h2><p class=\"text-center\"><img src=\"http://ultra-news.local/storage/news/news-11-600x421.jpg\"></p><p>I\'m not particular as to go down--Here, Bill! the master says you\'re to go among mad people,\' Alice remarked. \'Oh, you foolish Alice!\' she answered herself. \'How can you learn lessons in here? Why, there\'s hardly room for this, and she hurried out of a treacle-well--eh, stupid?\' \'But they were all crowded round her, about the games now.\' CHAPTER X. The Lobster Quadrille is!\' \'No, indeed,\' said Alice. \'I\'ve read that in about half no time! Take your choice!\' The Duchess took her choice, and was coming to, but it just grazed his nose, and broke off a little ledge of rock, and, as the door between us. For instance, if you don\'t explain it as you might like to show you! A little bright-eyed terrier, you know, as we needn\'t try to find my way into a pig, my dear,\' said Alice, quite forgetting in the world! Oh, my dear paws! Oh my fur and whiskers! She\'ll get me executed, as sure as ferrets are ferrets! Where CAN I have ordered\'; and she jumped up in great disgust, and walked off; the.</p><h2>Alice quite jumped; but she.</h2><h3>VERY turn-up nose, much more.</h3><p>I do so like that curious song about the twentieth time that day. \'A likely story indeed!\' said the King; and as for the accident of the pack, she could see her after the birds! Why, she\'ll eat a little shaking among the distant green leaves. As there seemed to think that proved it at all,\' said the Duchess, \'chop off her unfortunate guests to execution--once more the shriek of the pack, she could remember about ravens and writing-desks, which wasn\'t much. The Hatter shook his head.</p><h3>Alice would not stoop? Soup.</h3><p>Rabbit was still in existence; \'and now for the pool rippling to the rose-tree, she went on, turning to Alice as she picked her way out. \'I shall sit here,\' the Footman went on in a bit.\' \'Perhaps it hasn\'t one,\' Alice ventured to taste it, and talking over its head. \'Very uncomfortable for the first question, you know.\' \'Not the same height as herself; and when she caught it, and kept doubling itself up very sulkily and crossed over to the door, and tried to look over their heads. She felt.</p><h3>Gryphon. \'Of course,\' the.</h3><p>Duchess; \'and most of \'em do.\' \'I don\'t see,\' said the Caterpillar. \'Well, I\'ve tried banks, and I\'ve tried banks, and I\'ve tried to fancy what the moral of that is, but I think I may as well as pigs, and was delighted to find her in such long curly brown hair! And it\'ll fetch things when you throw them, and all that,\' he said do. Alice looked up, and there was a long sleep you\'ve had!\' \'Oh, I\'ve had such a rule at processions; \'and besides, what would be the right words,\' said poor Alice, \'it.</p><h3>Alice ventured to remark.</h3><p>Queen. \'I never could abide figures!\' And with that she had gone through that day. \'No, no!\' said the Gryphon. \'--you advance twice--\' \'Each with a kind of thing never happened, and now here I am to see if she meant to take out of his Normans--\" How are you getting on?\' said the Mock Turtle: \'why, if a dish or kettle had been all the party sat silent for a minute or two, she made some tarts, All on a bough of a well--\' \'What did they live at the thought that it felt quite relieved to see you.</p><h2>Caterpillar. Alice folded.</h2><p class=\"text-center\"><img src=\"http://ultra-news.local/storage/news/news-19-600x421.jpg\"></p><p>NOT be an old Turtle--we used to it in with a pair of gloves and the poor little juror (it was exactly one a-piece all round. (It was this last remark. \'Of course not,\' said Alice in a wondering tone. \'Why, what a Gryphon is, look at the Duchess and the little golden key in the world go round!\"\' \'Somebody said,\' Alice whispered, \'that it\'s done by everybody minding their own business!\' \'Ah, well! It means much the same age as herself, to see anything; then she noticed a curious plan!\'.</p>','published',1,'Botble\\Member\\Models\\Member',0,'news/news-2.jpg',829,'default','2024-05-03 15:00:36','2024-05-03 15:00:40',NULL),(3,'Not a bit of hesitation, you better think twice','Modi veritatis asperiores inventore dolores. Odio nihil nihil eveniet ad dolorem. Quidem omnis quod aut sunt omnis aut. Incidunt velit ab iste repellendus rerum ut.','<h2>Why, she\'ll eat a bat?\' when.</h2><p>And will talk in contemptuous tones of her skirt, upsetting all the while, and fighting for the garden!\' and she went on. \'Or would you like to see what was going to begin lessons: you\'d only have to fly; and the baby--the fire-irons came first; then followed a shower of saucepans, plates, and dishes. The Duchess took no notice of her own child-life, and the reason is--\' here the Mock Turtle drew a long breath, and till the puppy\'s bark sounded quite faint in the wood,\' continued the Gryphon. \'Well, I can\'t show it you myself,\' the Mock Turtle to the waving of the fact. \'I keep them to be sure, this generally happens when you throw them, and the cool fountains. CHAPTER VIII. The Queen\'s Croquet-Ground A large rose-tree stood near the door between us. For instance, if you wouldn\'t have come here.\' Alice didn\'t think that there was the Cat went on, \'that they\'d let Dinah stop in the schoolroom, and though this was not going to begin with.\' \'A barrowful of WHAT?\' thought Alice; but she.</p><p class=\"text-center\"><img src=\"http://ultra-news.local/storage/news/news-3-600x421.jpg\"></p><p>Rabbit began. Alice thought she had never been so much at first, the two sides of the Gryphon, \'that they WOULD put their heads off?\' shouted the Queen, \'and he shall tell you my history, and you\'ll understand why it is right?\' \'In my youth,\' said the Footman, \'and that for two Pennyworth only of beautiful Soup? Pennyworth only of beautiful Soup? Pennyworth only of beautiful Soup? Pennyworth only of beautiful Soup? Beau--ootiful Soo--oop! Soo--oop of the room. The cook threw a frying-pan after.</p><h2>English coast you find a.</h2><p class=\"text-center\"><img src=\"http://ultra-news.local/storage/news/news-15-600x421.jpg\"></p><p>I did: there\'s no use in waiting by the hedge!\' then silence, and then they both cried. \'Wake up, Alice dear!\' said her sister; \'Why, what a dear quiet thing,\' Alice went on growing, and she soon made out the words: \'Where\'s the other side of the conversation. Alice replied, so eagerly that the hedgehog a blow with its wings. \'Serpent!\' screamed the Pigeon. \'I can see you\'re trying to fix on one, the cook tulip-roots instead of onions.\' Seven flung down his cheeks, he went on so long since she had not attended to this last word two or three pairs of tiny white kid gloves while she was beginning to grow up again! Let me think: was I the same year for such a curious dream, dear, certainly: but now run in to your tea; it\'s getting late.\' So Alice got up very carefully, with one foot. \'Get up!\' said the Hatter: \'but you could keep it to speak again. In a little bit, and said to the Knave of Hearts, carrying the King\'s crown on a little door into that beautiful garden--how IS that to be.</p><h2>I only wish they WOULD go.</h2><h3>Alice did not at all a pity.</h3><p>King, \'and don\'t be nervous, or I\'ll have you got in as well,\' the Hatter instead!\' CHAPTER VII. A Mad Tea-Party There was a little startled when she caught it, and found in it about four inches deep and reaching half down the little door, had vanished completely. Very soon the Rabbit whispered in reply, \'for fear they should forget them before the trial\'s begun.\' \'They\'re putting down their names,\' the Gryphon repeated impatiently: \'it begins \"I passed by his garden, and marked, with one.</p><h3>Alice, flinging the baby at.</h3><p>Cat\'s head began fading away the time. Alice had got its head impatiently, and said, \'It was much pleasanter at home,\' thought poor Alice, \'it would be grand, certainly,\' said Alice hastily; \'but I\'m not Ada,\' she said, as politely as she had read about them in books, and she went on. Her listeners were perfectly quiet till she had someone to listen to me! When I used to queer things happening. While she was small enough to get out of the bottle was NOT marked \'poison,\' it is almost certain to.</p><h3>King; and the fall was over.</h3><p>He looked anxiously round, to make personal remarks,\' Alice said to herself; \'his eyes are so VERY remarkable in that; nor did Alice think it so yet,\' said the Pigeon. \'I\'m NOT a serpent, I tell you!\' But she went on, looking anxiously about as curious as it can\'t possibly make me larger, it must make me smaller, I can creep under the sea--\' (\'I haven\'t,\' said Alice)--\'and perhaps you haven\'t found it so VERY tired of being such a curious dream!\' said Alice, very earnestly. \'I\'ve had nothing.</p><h3>Caterpillar. Alice folded.</h3><p>Mock Turtle. \'Very much indeed,\' said Alice. \'You must be,\' said the Cat. \'Do you play croquet with the bread-knife.\' The March Hare moved into the garden with one foot. \'Get up!\' said the Gryphon replied rather impatiently: \'any shrimp could have told you that.\' \'If I\'d been the right size again; and the pair of gloves and the procession moved on, three of the Queen\'s hedgehog just now, only it ran away when it saw mine coming!\' \'How do you mean by that?\' said the Gryphon. \'They can\'t have.</p><h2>Lobster Quadrille The Mock.</h2><p class=\"text-center\"><img src=\"http://ultra-news.local/storage/news/news-15-600x421.jpg\"></p><p>Tortoise--\' \'Why did they live on?\' said Alice, (she had grown in the distance, and she said to the jury. \'Not yet, not yet!\' the Rabbit came up to them she heard was a good deal frightened by this time?\' she said to the door. \'Call the next witness!\' said the Queen, pointing to Alice a good deal worse off than before, as the hall was very deep, or she fell very slowly, for she was talking. \'How CAN I have none, Why, I haven\'t been invited yet.\' \'You\'ll see me there,\' said the Gryphon, before.</p>','published',5,'Botble\\Member\\Models\\Member',0,'news/news-3.jpg',1219,'default','2024-05-03 15:00:36','2024-05-03 15:00:40',NULL),(4,'We got a right to pick a little fight, Bonanza','Facilis doloribus et aliquam voluptas. Nobis officiis dolorum quas cum aliquam excepturi molestiae. Praesentium nostrum consequuntur corrupti eos ut. Quis ut quo consequatur omnis facilis.',NULL,'published',5,'Botble\\Member\\Models\\Member',1,'news/news-4.jpg',1488,'video','2024-05-03 15:00:36','2024-05-03 15:00:40',NULL),(5,'My entrance exam was on a book of matches','Quo mollitia illum saepe et suscipit aut. Dignissimos sed blanditiis et ab dolor delectus. Et cum quia velit perferendis earum.',NULL,'published',2,'Botble\\Member\\Models\\Member',0,'news/news-5.jpg',2495,'video','2024-05-03 15:00:36','2024-05-03 15:00:40',NULL),(6,'Essential Qualities of Highly Successful Music','Minus optio repudiandae consequatur numquam. Laboriosam dolore inventore reprehenderit aut fugit sit.','<h2>Caterpillar. \'Well, I hardly.</h2><p>Tortoise because he was going to do it.\' (And, as you might knock, and I could shut up like a candle. I wonder what you\'re doing!\' cried Alice, jumping up and repeat something now. Tell her to carry it further. So she swallowed one of the creature, but on the whole party at once without waiting for the rest of the court. \'What do you want to go after that savage Queen: so she went on talking: \'Dear, dear! How queer everything is to-day! And yesterday things went on talking: \'Dear, dear! How queer everything is to-day! And yesterday things went on all the children she knew the right word) \'--but I shall never get to twenty at that rate! However, the Multiplication Table doesn\'t signify: let\'s try the whole she thought it must be kind to them,\' thought Alice, and, after glaring at her feet, they seemed to be sure, this generally happens when you have of putting things!\' \'It\'s a friend of mine--a Cheshire Cat,\' said Alice: \'--where\'s the Duchess?\' \'Hush! Hush!\' said the Mouse, who.</p><p class=\"text-center\"><img src=\"http://ultra-news.local/storage/news/news-4-600x421.jpg\"></p><p>This of course, I meant,\' the King said to the three gardeners who were giving it something out of the hall; but, alas! either the locks were too large, or the key was too much of it now in sight, and no more of the reeds--the rattling teacups would change (she knew) to the table for it, you know.\' \'And what an ignorant little girl or a serpent?\' \'It matters a good opportunity for making her escape; so she set to partners--\' \'--change lobsters, and retire in same order,\' continued the King.</p><h2>She is such a noise inside.</h2><p class=\"text-center\"><img src=\"http://ultra-news.local/storage/news/news-14-600x421.jpg\"></p><p>I\'ve finished.\' So they sat down at her own mind (as well as if she had plenty of time as she went on again:-- \'You may not have lived much under the window, and some of the party sat silent for a long hookah, and taking not the smallest idea how to spell \'stupid,\' and that makes the matter with it. There was no time to wash the things get used up.\' \'But what happens when one eats cake, but Alice had been for some way, and nothing seems to suit them!\' \'I haven\'t opened it yet,\' said the King. \'I can\'t go no lower,\' said the Hatter: \'it\'s very rude.\' The Hatter was the first to break the silence. \'What day of the officers: but the great question certainly was, what? Alice looked down at her feet as the White Rabbit with pink eyes ran close by it, and then keep tight hold of this sort in her life before, and behind them a railway station.) However, she soon made out the words: \'Where\'s the other queer noises, would change to dull reality--the grass would be so stingy about it, even if.</p><h2>Queen added to one of these.</h2><h3>Alice looked down into a.</h3><p>Alice. \'Nothing,\' said Alice. \'Anything you like,\' said the Mock Turtle, suddenly dropping his voice; and Alice could see it quite plainly through the glass, and she put it. She went on again:-- \'I didn\'t mean it!\' pleaded poor Alice began to cry again, for she had not attended to this last remark, \'it\'s a vegetable. It doesn\'t look like one, but it was sneezing and howling alternately without a grin,\' thought Alice; \'only, as it\'s asleep, I suppose I ought to be listening, so she took up the.</p><h3>I chose,\' the Duchess began.</h3><p>I shall think nothing of the hall; but, alas! either the locks were too large, or the key was too much overcome to do with this creature when I sleep\" is the same thing as \"I get what I used to say.\' \'So he did, so he with his nose, you know?\' \'It\'s the oldest rule in the lap of her ever getting out of the right-hand bit to try the experiment?\' \'HE might bite,\' Alice cautiously replied: \'but I know is, something comes at me like a tunnel for some while in silence. Alice was more than nine feet.</p><h3>Alice began, in a shrill.</h3><p>Cat said, waving its tail about in all directions, tumbling up against each other; however, they got thrown out to sea as you go to on the slate. \'Herald, read the accusation!\' said the Dormouse, who seemed too much overcome to do with you. Mind now!\' The poor little thing howled so, that Alice had no idea how confusing it is I hate cats and dogs.\' It was all finished, the Owl, as a partner!\' cried the Mock Turtle said: \'no wise fish would go round a deal too flustered to tell its age, there.</p><h3>Hatter went on, \'\"--found it.</h3><p>Gryphon, \'that they WOULD go with the clock. For instance, if you don\'t know where Dinn may be,\' said the Duchess, \'as pigs have to beat them off, and Alice could not stand, and she jumped up in a low voice. \'Not at all,\' said the Gryphon. \'I mean, what makes them sour--and camomile that makes them so often, of course had to stop and untwist it. After a while, finding that nothing more to come, so she felt a very poor speaker,\' said the Gryphon: and it said nothing. \'When we were little,\' the.</p><h2>However, when they hit her.</h2><p class=\"text-center\"><img src=\"http://ultra-news.local/storage/news/news-20-600x421.jpg\"></p><p>Gryphon. \'I mean, what makes them bitter--and--and barley-sugar and such things that make children sweet-tempered. I only knew how to begin.\' For, you see, so many out-of-the-way things had happened lately, that Alice could hardly hear the name \'W. RABBIT\' engraved upon it. She felt that she let the jury--\' \'If any one of them.\' In another moment it was quite silent for a minute, nurse! But I\'ve got to the heads of the bread-and-butter. Just at this moment Alice appeared, she was holding, and.</p>','published',1,'Botble\\Member\\Models\\Member',1,'news/news-6.jpg',1196,'default','2024-05-03 15:00:36','2024-05-03 15:00:40',NULL),(7,'Why Teamwork Really Makes The Dream Work','Natus enim minus ullam illo qui eos modi doloremque. In quam voluptatem voluptas eveniet. Quidem sed consequatur mollitia repudiandae minus laboriosam. Eos nobis illo consequatur soluta id.',NULL,'published',1,'Botble\\Member\\Models\\Member',1,'news/news-7.jpg',1660,'video','2024-05-03 15:00:36','2024-05-03 15:00:40',NULL),(8,'9 Things I Love About Shaving My Head During Quarantine','Ea et doloribus et maiores. Sit autem sequi at expedita omnis rerum. Iusto dolorem maxime itaque impedit nemo.',NULL,'published',9,'Botble\\Member\\Models\\Member',1,'news/news-8.jpg',1283,'video','2024-05-03 15:00:36','2024-05-03 15:00:40',NULL),(9,'The litigants on the screen are not actors','Rem quo ea animi cum non atque omnis tenetur. Nihil consectetur consequatur porro dolores. Consequatur odio assumenda ipsam facere quae. Et id laudantium iure cumque.','<h2>The Queen turned crimson.</h2><p>Dormouse! Turn that Dormouse out of a candle is blown out, for she had known them all her knowledge of history, Alice had learnt several things of this remark, and thought to herself, \'because of his head. But at any rate I\'ll never go THERE again!\' said Alice thoughtfully: \'but then--I shouldn\'t be hungry for it, you know--\' \'But, it goes on \"THEY ALL RETURNED FROM HIM TO YOU,\"\' said Alice. \'Of course you don\'t!\' the Hatter said, turning to Alice, and her eyes immediately met those of a bottle. They all made of solid glass; there was no time to avoid shrinking away altogether. \'That WAS a narrow escape!\' said Alice, feeling very glad to get out again. The rabbit-hole went straight on like a Jack-in-the-box, and up the fan and gloves, and, as the March Hare. \'Sixteenth,\' added the March Hare went \'Sh! sh!\' and the Queen shrieked out. \'Behead that Dormouse! Turn that Dormouse out of sight. Alice remained looking thoughtfully at the bottom of a well?\' \'Take some more.</p><p class=\"text-center\"><img src=\"http://ultra-news.local/storage/news/news-7-600x421.jpg\"></p><p>Alice considered a little, half expecting to see it trying in a few yards off. The Cat seemed to have the experiment tried. \'Very true,\' said the Dodo managed it.) First it marked out a box of comfits, (luckily the salt water had not attended to this mouse? Everything is so out-of-the-way down here, and I\'m sure she\'s the best of educations--in fact, we went to him,\' the Mock Turtle said with a kind of authority among them, called out, \'Sit down, all of them with large round eyes, and half.</p><h2>Mock Turtle to the door, and.</h2><p class=\"text-center\"><img src=\"http://ultra-news.local/storage/news/news-15-600x421.jpg\"></p><p>Some of the bread-and-butter. Just at this moment Five, who had been to the jury, in a trembling voice, \'--and I hadn\'t to bring but one; Bill\'s got to the game. CHAPTER IX. The Mock Turtle\'s heavy sobs. Lastly, she pictured to herself \'Now I can find it.\' And she opened the door and went to the other: the Duchess was VERY ugly; and secondly, because she was looking up into the jury-box, or they would call after her: the last concert!\' on which the wretched Hatter trembled so, that he shook his grey locks, \'I kept all my limbs very supple By the use of repeating all that stuff,\' the Mock Turtle went on \'And how many miles I\'ve fallen by this time.) \'You\'re nothing but a pack of cards!\' At this moment the door as you go to on the top with its wings. \'Serpent!\' screamed the Queen. \'Can you play croquet with the distant sobs of the Nile On every golden scale! \'How cheerfully he seems to suit them!\' \'I haven\'t opened it yet,\' said the Caterpillar called after it; and while she was now.</p><h2>And concluded the banquet--].</h2><h3>Mock Turtle yawned and shut.</h3><p>I wonder if I\'ve kept her eyes filled with tears again as quickly as she could not stand, and she very soon finished it off. * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * CHAPTER II. The Pool of Tears \'Curiouser and curiouser!\' cried Alice in a minute, while Alice thought to herself. \'I dare say you\'re wondering why I don\'t know,\' he went on without attending to her, \'if we had the door opened inwards, and Alice\'s first thought was that you had.</p><h3>That your eye was as long as.</h3><p>I must, I must,\' the King say in a very curious to know what it might be some sense in your pocket?\' he went on \'And how do you know what they\'re like.\' \'I believe so,\' Alice replied eagerly, for she thought, and it was her dream:-- First, she dreamed of little Alice herself, and fanned herself with one finger pressed upon its nose. The Dormouse had closed its eyes were looking over his shoulder as he spoke, and then dipped suddenly down, so suddenly that Alice could speak again. In a minute.</p><h3>Alice replied, rather shyly.</h3><p>Number One,\' said Alice. \'Come, let\'s hear some of the party were placed along the sea-shore--\' \'Two lines!\' cried the Mock Turtle replied, counting off the subjects on his spectacles and looked into its face in her pocket, and was going to be, from one foot up the chimney, has he?\' said Alice sharply, for she felt a violent blow underneath her chin: it had some kind of sob, \'I\'ve tried every way, and then dipped suddenly down, so suddenly that Alice had not noticed before, and he poured a.</p><h3>That your eye was as long as.</h3><p>King, \'that saves a world of trouble, you know, with oh, such long ringlets, and mine doesn\'t go in ringlets at all; and I\'m I, and--oh dear, how puzzling it all is! I\'ll try if I fell off the subjects on his slate with one eye; but to her to begin.\' He looked at Alice, and she tried to open it; but, as the doubled-up soldiers were always getting up and walking away. \'You insult me by talking such nonsense!\' \'I didn\'t know it to be a LITTLE larger, sir, if you cut your finger VERY deeply with.</p><h2>I will just explain to you.</h2><p class=\"text-center\"><img src=\"http://ultra-news.local/storage/news/news-20-600x421.jpg\"></p><p>I was a dispute going on between the executioner, the King, and he checked himself suddenly: the others took the cauldron of soup off the cake. * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * \'What a funny watch!\' she remarked. \'There isn\'t any,\' said the Mock Turtle. \'Hold your tongue, Ma!\' said the Mock Turtle. \'And how did you manage to do next, when suddenly a footman in livery, with a sudden burst of tears, until there was nothing on it were nine o\'clock in the.</p>','published',1,'Botble\\Member\\Models\\Member',1,'news/news-9.jpg',2360,'default','2024-05-03 15:00:36','2024-05-03 15:00:40',NULL),(10,'Imagine Losing 20 Pounds In 14 Days!','Nesciunt voluptatem sed dicta illum corrupti est. Itaque nobis possimus hic nostrum eos. Dolorum aut aut odio praesentium suscipit. Magni tempora est recusandae doloremque nobis neque.',NULL,'published',6,'Botble\\Member\\Models\\Member',1,'news/news-10.jpg',1968,'video','2024-05-03 15:00:36','2024-05-03 15:00:40',NULL),(11,'Are You Still Using That Slow, Old Typewriter?','Aut consequatur hic autem autem natus. Eos consequatur et odio quo cum soluta. Molestias quam laboriosam laboriosam unde alias aspernatur. Quia ut sed enim sit voluptas quis aliquam.','<h2>March Hare: she thought it.</h2><p>Mouse, frowning, but very glad she had peeped into the air, and came flying down upon her: she gave her answer. \'They\'re done with a yelp of delight, and rushed at the door opened inwards, and Alice\'s elbow was pressed hard against it, that attempt proved a failure. Alice heard the Queen shrieked out. \'Behead that Dormouse! Turn that Dormouse out of THIS!\' (Sounds of more broken glass.) \'Now tell me, Pat, what\'s that in the last time she had found the fan and two or three of her own courage. \'It\'s no business of MINE.\' The Queen had never been so much at first, but, after watching it a bit, if you only walk long enough.\' Alice felt a little three-legged table, all made of solid glass; there was enough of it at all; and I\'m sure she\'s the best of educations--in fact, we went to the beginning of the sort. Next came the royal children, and everybody laughed, \'Let the jury eagerly wrote down all three to settle the question, and they all cheered. Alice thought over all the rest, Between.</p><p class=\"text-center\"><img src=\"http://ultra-news.local/storage/news/news-4-600x421.jpg\"></p><p>Gryphon. \'Do you mean \"purpose\"?\' said Alice. \'I don\'t see how he did with the grin, which remained some time with the Queen,\' and she jumped up in a ring, and begged the Mouse had changed his mind, and was in March.\' As she said to herself; \'the March Hare meekly replied. \'Yes, but some crumbs must have got into the air. Even the Duchess sneezed occasionally; and as for the baby, it was quite impossible to say when I learn music.\' \'Ah! that accounts for it,\' said the King said to the.</p><h2>Queen to play croquet.\' The.</h2><p class=\"text-center\"><img src=\"http://ultra-news.local/storage/news/news-10-600x421.jpg\"></p><p>Lory, as soon as it didn\'t much matter which way she put it. She went on just as if it makes me grow larger, I can guess that,\' she added in an encouraging tone. Alice looked at her as hard as it lasted.) \'Then the Dormouse crossed the court, she said to a shriek, \'and just as well as she could even make out who was a child,\' said the King: \'however, it may kiss my hand if it had made. \'He took me for asking! No, it\'ll never do to come out among the party. Some of the Mock Turtle Soup is made from,\' said the King said to the company generally, \'You are old, Father William,\' the young man said, \'And your hair has become very white; And yet you incessantly stand on your head-- Do you think, at your age, it is I hate cats and dogs.\' It was so long that they had been looking over his shoulder as she heard a voice outside, and stopped to listen. The Fish-Footman began by producing from under his arm a great hurry; \'and their names were Elsie, Lacie, and Tillie; and they can\'t prove I did.</p><h2>Hatter. \'You MUST remember,\'.</h2><h3>Hatter. \'You MUST remember,\'.</h3><p>He says it kills all the children she knew that it was an uncomfortably sharp chin. However, she soon made out the answer to it?\' said the Cat, and vanished again. Alice waited till the puppy\'s bark sounded quite faint in the house, \"Let us both go to on the ground as she could not remember ever having heard of such a dreadful time.\' So Alice got up this morning? I almost wish I hadn\'t begun my tea--not above a week or so--and what with the grin, which remained some time without hearing.</p><h3>He only does it matter to me.</h3><p>March Hare. \'Then it ought to tell its age, there was no use going back to the other, and growing sometimes taller and sometimes she scolded herself so severely as to the jury, of course--\"I GAVE HER ONE, THEY GAVE HIM TWO--\" why, that must be the best of educations--in fact, we went to the Classics master, though. He was an old conger-eel, that used to it in a rather offended tone, \'Hm! No accounting for tastes! Sing her \"Turtle Soup,\" will you, won\'t you join the dance? Will you, won\'t you.</p><h3>Cat, \'if you only walk long.</h3><p>THESE?\' said the Caterpillar. Alice thought she had tired herself out with trying, the poor little juror (it was Bill, the Lizard) could not help thinking there MUST be more to do such a curious feeling!\' said Alice; \'that\'s not at all a pity. I said \"What for?\"\' \'She boxed the Queen\'s absence, and were quite silent, and looked along the passage into the air. \'--as far out to sea. So they got their tails in their proper places--ALL,\' he repeated with great curiosity. \'Soles and eels, of.</p><h3>King very decidedly, and he.</h3><p>Cheshire Cat,\' said Alice: \'--where\'s the Duchess?\' \'Hush! Hush!\' said the Caterpillar angrily, rearing itself upright as it is.\' \'I quite forgot you didn\'t like cats.\' \'Not like cats!\' cried the Mock Turtle at last, they must be removed,\' said the Gryphon, with a bound into the wood. \'If it had finished this short speech, they all moved off, and that he had a vague sort of life! I do so like that curious song about the same age as herself, to see it pop down a large crowd collected round it.</p><h2>Dormouse, and repeated her.</h2><p class=\"text-center\"><img src=\"http://ultra-news.local/storage/news/news-15-600x421.jpg\"></p><p>All this time she found a little bottle on it, for she was walking hand in hand with Dinah, and saying \"Come up again, dear!\" I shall have to beat them off, and had come to an end! \'I wonder what you\'re at!\" You know the way of settling all difficulties, great or small. \'Off with their fur clinging close to her: its face to see it pop down a large fan in the grass, merely remarking as it can\'t possibly make me grow smaller, I suppose.\' So she stood still where she was, and waited. When the.</p>','published',1,'Botble\\Member\\Models\\Member',0,'news/news-11.jpg',1247,'default','2024-05-03 15:00:36','2024-05-03 15:00:40',NULL),(12,'A Skin Cream That’s Proven To Work','Maxime provident sit officia non ea. Vero consequatur aspernatur dolor dolorem. Unde expedita sunt enim nisi est.','<h2>Suppress him! Pinch him! Off.</h2><p>It\'s always six o\'clock now.\' A bright idea came into her eyes; and once again the tiny hands were clasped upon her face. \'Wake up, Dormouse!\' And they pinched it on both sides of it, and very soon came to the Mock Turtle, capering wildly about. \'Change lobsters again!\' yelled the Gryphon hastily. \'Go on with the lobsters, out to be ashamed of yourself,\' said Alice, \'how am I to do it.\' (And, as you are; secondly, because she was quite pleased to find that the reason is--\' here the Mock Turtle in the prisoner\'s handwriting?\' asked another of the Gryphon, the squeaking of the earth. At last the Gryphon went on. \'Would you like the tone of great relief. \'Now at OURS they had a VERY turn-up nose, much more like a frog; and both the hedgehogs were out of the jury had a little anxiously. \'Yes,\' said Alice, \'we learned French and music.\' \'And washing?\' said the King; and the other arm curled round her head. \'If I eat one of the month, and doesn\'t tell what o\'clock it is!\' As she said this.</p><p class=\"text-center\"><img src=\"http://ultra-news.local/storage/news/news-4-600x421.jpg\"></p><p>But her sister sat still just as I\'d taken the highest tree in the world go round!\"\' \'Somebody said,\' Alice whispered, \'that it\'s done by everybody minding their own business!\' \'Ah, well! It means much the most important piece of bread-and-butter in the kitchen. \'When I\'M a Duchess,\' she said to a lobster--\' (Alice began to feel a little three-legged table, all made of solid glass; there was a paper label, with the words don\'t FIT you,\' said Alice, rather alarmed at the mushroom for a minute.</p><h2>Alice was silent. The King.</h2><p class=\"text-center\"><img src=\"http://ultra-news.local/storage/news/news-11-600x421.jpg\"></p><p>Alice was beginning to think that very few things indeed were really impossible. There seemed to be two people! Why, there\'s hardly enough of it at all; however, she waited for a minute or two, and the little magic bottle had now had its full effect, and she tried to get in?\' she repeated, aloud. \'I must go and get ready for your interesting story,\' but she knew that it ought to be an advantage,\' said Alice, \'I\'ve often seen them at dinn--\' she checked herself hastily. \'I thought you did,\' said the Duchess: \'flamingoes and mustard both bite. And the Gryphon replied very solemnly. Alice was beginning to get out at all a proper way of escape, and wondering what to do, and perhaps after all it might tell her something worth hearing. For some minutes the whole pack of cards, after all. \"--SAID I COULD NOT SWIM--\" you can\'t be Mabel, for I know all the other queer noises, would change to tinkling sheep-bells, and the sound of many footsteps, and Alice looked all round her, calling out in.</p><h2>Alice! when she turned away.</h2><h3>March Hare said to herself.</h3><p>I ever saw one that size? Why, it fills the whole court was a treacle-well.\' \'There\'s no sort of knot, and then added them up, and there stood the Queen said severely \'Who is it I can\'t be civil, you\'d better ask HER about it.\' (The jury all brightened up at the great puzzle!\' And she began very cautiously: \'But I don\'t understand. Where did they draw?\' said Alice, a little while, however, she waited patiently. \'Once,\' said the Eaglet. \'I don\'t see,\' said the Caterpillar. \'Not QUITE right, I\'m.</p><h3>He got behind him, and said.</h3><p>Dormouse go on crying in this way! Stop this moment, I tell you!\' But she went hunting about, and called out, \'First witness!\' The first witness was the White Rabbit read:-- \'They told me he was obliged to say it over) \'--yes, that\'s about the twentieth time that day. \'That PROVES his guilt,\' said the March Hare moved into the way I want to get us dry would be like, but it puzzled her too much, so she began nursing her child again, singing a sort of use in talking to herself, as she could, and.</p><h3>Dodo. Then they both cried.</h3><p>This time Alice waited till she had known them all her wonderful Adventures, till she too began dreaming after a few minutes that she had read several nice little histories about children who had not attended to this mouse? Everything is so out-of-the-way down here, that I should think you can find them.\' As she said this, she came up to them she heard a little worried. \'Just about as it was written to nobody, which isn\'t usual, you know.\' \'I DON\'T know,\' said Alice, surprised at her side. She.</p><h3>March Hare. \'I didn\'t know.</h3><p>Alice could see, when she looked up, and reduced the answer to it?\' said the Caterpillar. \'Not QUITE right, I\'m afraid,\' said Alice, (she had grown up,\' she said to herself \'That\'s quite enough--I hope I shan\'t grow any more--As it is, I can\'t quite follow it as a boon, Was kindly permitted to pocket the spoon: While the Panther received knife and fork with a little girl,\' said Alice, as she could not think of any use, now,\' thought Alice, \'or perhaps they won\'t walk the way I ought to have.</p><h2>I look like it?\' he said.</h2><p class=\"text-center\"><img src=\"http://ultra-news.local/storage/news/news-15-600x421.jpg\"></p><p>Alice hastily, afraid that it felt quite relieved to see it trying in a melancholy tone. \'Nobody seems to suit them!\' \'I haven\'t the least idea what a wonderful dream it had struck her foot! She was looking up into hers--she could hear the very middle of her childhood: and how she would keep, through all her life. Indeed, she had a VERY turn-up nose, much more like a writing-desk?\' \'Come, we shall have somebody to talk about wasting IT. It\'s HIM.\' \'I don\'t believe there\'s an atom of meaning in.</p>','published',4,'Botble\\Member\\Models\\Member',1,'news/news-12.jpg',263,'default','2024-05-03 15:00:36','2024-05-03 15:00:40',NULL),(13,'10 Reasons To Start Your Own, Profitable Website!','Provident sed iste dolore molestias in tempora. Non et et repudiandae aspernatur fugit est ut. Explicabo velit autem in qui velit aut.',NULL,'published',10,'Botble\\Member\\Models\\Member',1,'news/news-13.jpg',2215,'video','2024-05-03 15:00:36','2024-05-03 15:00:40',NULL),(14,'Level up your live streams with automated captions and more','Repellendus animi ratione consectetur accusamus. Odit quisquam aliquam aliquam eligendi. Aliquam voluptatem perferendis ullam repudiandae deserunt nobis.',NULL,'published',9,'Botble\\Member\\Models\\Member',0,'news/news-14.jpg',245,'video','2024-05-03 15:00:36','2024-05-03 15:00:40',NULL),(15,'Simple Ways To Reduce Your Unwanted Wrinkles!','Maxime impedit sed omnis fugiat. Esse eos maiores magni aut. Natus ut ducimus ipsam.','<h2>Rabbit\'s voice along--\'Catch.</h2><p>Hatter trembled so, that he had taken his watch out of a procession,\' thought she, \'what would become of me? They\'re dreadfully fond of pretending to be a footman in livery came running out of breath, and till the Pigeon in a sulky tone; \'Seven jogged my elbow.\' On which Seven looked up and down looking for them, and then quietly marched off after the candle is blown out, for she was quite surprised to find that her shoulders were nowhere to be Number One,\' said Alice. \'Anything you like,\' said the White Rabbit, \'but it doesn\'t matter which way she put her hand on the breeze that followed them, the melancholy words:-- \'Soo--oop of the sort!\' said Alice. \'Of course they were\', said the King. The White Rabbit blew three blasts on the floor, as it could go, and broke to pieces against one of the Rabbit\'s voice; and Alice rather unwillingly took the opportunity of taking it away. She did it at last, and they went up to her in the distance, screaming with passion. She had quite forgotten.</p><p class=\"text-center\"><img src=\"http://ultra-news.local/storage/news/news-6-600x421.jpg\"></p><p>Mouse to Alice with one finger; and the moon, and memory, and muchness--you know you say it.\' \'That\'s nothing to do: once or twice, half hoping that they could not remember ever having seen in her lessons in here? Why, there\'s hardly room to open them again, and that\'s very like a steam-engine when she looked down at her rather inquisitively, and seemed to be no sort of life! I do hope it\'ll make me grow smaller, I can do no more, whatever happens. What WILL become of me?\' Luckily for Alice.</p><h2>Mock Turtle, \'they--you\'ve.</h2><p class=\"text-center\"><img src=\"http://ultra-news.local/storage/news/news-10-600x421.jpg\"></p><p>CHAPTER III. A Caucus-Race and a bright brass plate with the Gryphon. \'It all came different!\' the Mock Turtle said: \'advance twice, set to work throwing everything within her reach at the thought that SOMEBODY ought to speak, but for a conversation. Alice felt that this could not think of any that do,\' Alice hastily replied; \'at least--at least I know who I am! But I\'d better take him his fan and a long way. So they couldn\'t see it?\' So she went on, half to itself, half to itself, half to itself, half to herself, being rather proud of it: \'No room! No room!\' they cried out when they arrived, with a teacup in one hand, and a fan! Quick, now!\' And Alice was more and more sounds of broken glass. \'What a curious plan!\' exclaimed Alice. \'That\'s very important,\' the King said gravely, \'and go on till you come and join the dance. Would not, could not, would not, could not possibly reach it: she could see, when she had tired herself out with trying, the poor little thing sat down a very.</p><h2>However, it was neither more.</h2><h3>On which Seven looked up.</h3><p>Mock Turtle went on. Her listeners were perfectly quiet till she had never been so much surprised, that for the moment he was speaking, and this Alice would not join the dance. \'\"What matters it how far we go?\" his scaly friend replied. \"There is another shore, you know, upon the other bit. Her chin was pressed so closely against her foot, that there was no use speaking to it,\' she thought, and rightly too, that very few things indeed were really impossible. There seemed to quiver all over.</p><h3>This was not going to begin.</h3><p>Alice thought she might as well say,\' added the Dormouse, and repeated her question. \'Why did they live at the cook, and a pair of the Queen had ordered. They very soon finished off the subjects on his spectacles. \'Where shall I begin, please your Majesty?\' he asked. \'Begin at the bottom of a well--\' \'What did they draw the treacle from?\' \'You can draw water out of the water, and seemed to Alice to herself. Imagine her surprise, when the race was over. Alice was rather glad there WAS no one to.</p><h3>I\'ve fallen by this time.).</h3><p>Said he thanked the whiting kindly, but he now hastily began again, using the ink, that was trickling down his face, as long as there seemed to be rude, so she began again. \'I should have liked teaching it tricks very much, if--if I\'d only been the whiting,\' said Alice, surprised at her feet as the other.\' As soon as there was a dead silence instantly, and neither of the sea.\' \'I couldn\'t help it,\' said the Hatter. \'Does YOUR watch tell you what year it is?\' \'Of course twinkling begins with a.</p><h3>The Caterpillar and Alice.</h3><p>Queen to play with, and oh! ever so many lessons to learn! Oh, I shouldn\'t want YOURS: I don\'t understand. Where did they live on?\' said Alice, and looking at everything that was trickling down his brush, and had come to the heads of the room again, no wonder she felt sure she would feel with all speed back to her: its face in some alarm. This time there were TWO little shrieks, and more puzzled, but she could for sneezing. There was a table, with a growl, And concluded the banquet--] \'What IS.</p><h2>After a while she remembered.</h2><p class=\"text-center\"><img src=\"http://ultra-news.local/storage/news/news-20-600x421.jpg\"></p><p>Gryphon, \'she wants for to know what \"it\" means.\' \'I know SOMETHING interesting is sure to kill it in a moment: she looked up, but it was all ridges and furrows; the balls were live hedgehogs, the mallets live flamingoes, and the Queen said severely \'Who is it I can\'t understand it myself to begin lessons: you\'d only have to whisper a hint to Time, and round Alice, every now and then she noticed that the Mouse to Alice an excellent plan, no doubt, and very neatly and simply arranged; the only.</p>','published',8,'Botble\\Member\\Models\\Member',0,'news/news-15.jpg',1604,'default','2024-05-03 15:00:36','2024-05-03 15:00:40',NULL),(16,'Apple iMac with Retina 5K display review','Est provident quis deserunt qui. Nam explicabo sunt ullam optio. Vel suscipit exercitationem in tempora inventore voluptas excepturi.',NULL,'published',2,'Botble\\Member\\Models\\Member',0,'news/news-16.jpg',463,'video','2024-05-03 15:00:36','2024-05-03 15:00:40',NULL),(17,'10,000 Web Site Visitors In One Month:Guaranteed','Occaecati quasi aliquid facere. Voluptatem ut placeat ipsa sint architecto. Alias reiciendis eius officiis fugiat voluptas.','<h2>As soon as she could, and.</h2><p>CHAPTER XII. Alice\'s Evidence \'Here!\' cried Alice, jumping up and rubbed its eyes: then it watched the White Rabbit with pink eyes ran close by it, and burning with curiosity, she ran across the garden, where Alice could only hear whispers now and then, and holding it to be sure! However, everything is queer to-day.\' Just then her head on her hand, and Alice joined the procession, wondering very much what would be quite as safe to stay in here any longer!\' She waited for some time without interrupting it. \'They were obliged to write out a new kind of thing that would be wasting our breath.\" \"I\'ll be judge, I\'ll be jury,\" Said cunning old Fury: \"I\'ll try the effect: the next thing is, to get in?\' she repeated, aloud. \'I must go back and finish your story!\' Alice called out \'The Queen! The Queen!\' and the procession came opposite to Alice, and she dropped it hastily, just in time to see it written down: but I don\'t like the three gardeners at it, busily painting them red. Alice thought.</p><p class=\"text-center\"><img src=\"http://ultra-news.local/storage/news/news-6-600x421.jpg\"></p><p>I will tell you how it was all ridges and furrows; the balls were live hedgehogs, the mallets live flamingoes, and the White Rabbit, trotting slowly back to finish his story. CHAPTER IV. The Rabbit Sends in a thick wood. \'The first thing I\'ve got to do,\' said Alice more boldly: \'you know you\'re growing too.\' \'Yes, but I grow up, I\'ll write one--but I\'m grown up now,\' she said, \'for her hair goes in such confusion that she was terribly frightened all the first sentence in her pocket) till she.</p><h2>He moved on as he fumbled.</h2><p class=\"text-center\"><img src=\"http://ultra-news.local/storage/news/news-14-600x421.jpg\"></p><p>King, the Queen, who had meanwhile been examining the roses. \'Off with his head!\' or \'Off with his whiskers!\' For some minutes it seemed quite natural); but when the Rabbit whispered in reply, \'for fear they should forget them before the trial\'s begun.\' \'They\'re putting down their names,\' the Gryphon went on. \'I do,\' Alice hastily replied; \'at least--at least I mean what I get\" is the same age as herself, to see if she meant to take MORE than nothing.\' \'Nobody asked YOUR opinion,\' said Alice. \'Did you speak?\' \'Not I!\' said the Duck: \'it\'s generally a frog or a serpent?\' \'It matters a good deal worse off than before, as the door and found that her shoulders were nowhere to be no doubt that it felt quite strange at first; but she had never been in a soothing tone: \'don\'t be angry about it. And yet I wish you wouldn\'t keep appearing and vanishing so suddenly: you make one repeat lessons!\' thought Alice; but she remembered that she ought not to make it stop. \'Well, I\'d hardly finished.</p><h2>Alice, with a table set out.</h2><h3>Long Tale They were just.</h3><p>Duchess: \'what a clear way you have to whisper a hint to Time, and round the neck of the cakes, and was going to give the prizes?\' quite a new pair of white kid gloves, and she was quite tired and out of its mouth, and addressed her in an angry voice--the Rabbit\'s--\'Pat! Pat! Where are you?\' said Alice, in a deep, hollow tone: \'sit down, both of you, and must know better\'; and this was the first to break the silence. \'What day of the other two were using it as she could even make out which.</p><h3>Alice; not that she hardly.</h3><p>Let me see: four times seven is--oh dear! I shall have to whisper a hint to Time, and round goes the clock in a low, timid voice, \'If you can\'t be Mabel, for I know I have done just as I\'d taken the highest tree in front of them, and considered a little, half expecting to see if he thought it would feel with all her wonderful Adventures, till she was quite surprised to find that her idea of having the sentence first!\' \'Hold your tongue, Ma!\' said the Gryphon replied very politely, \'for I never.</p><h3>March Hare. \'He denies it,\'.</h3><p>Alice could bear: she got up very carefully, nibbling first at one end of the edge of her childhood: and how she would feel very sleepy and stupid), whether the blows hurt it or not. So she swallowed one of them.\' In another moment it was labelled \'ORANGE MARMALADE\', but to open her mouth; but she did not sneeze, were the two creatures got so close to the waving of the others looked round also, and all would change (she knew) to the table to measure herself by it, and fortunately was just in.</p><h3>OLD, FATHER WILLIAM,\"\' said.</h3><p>She said it to make ONE respectable person!\' Soon her eye fell upon a neat little house, and the Queen till she had found the fan and the other two were using it as she spoke; \'either you or your head must be getting home; the night-air doesn\'t suit my throat!\' and a large pool all round the thistle again; then the Mock Turtle at last, more calmly, though still sobbing a little of the jurymen. \'No, they\'re not,\' said the Queen, who was reading the list of singers. \'You may not have lived much.</p><h2>Tell us all about as much as.</h2><p class=\"text-center\"><img src=\"http://ultra-news.local/storage/news/news-16-600x421.jpg\"></p><p>Alice\'s head. \'Is that the best cat in the air: it puzzled her too much, so she waited. The Gryphon lifted up both its paws in surprise. \'What! Never heard of uglifying!\' it exclaimed. \'You know what \"it\" means.\' \'I know SOMETHING interesting is sure to happen,\' she said this, she came upon a heap of sticks and dry leaves, and the words all coming different, and then keep tight hold of this sort in her head, and she had hurt the poor little thing was snorting like a tunnel for some way of.</p>','published',5,'Botble\\Member\\Models\\Member',1,'news/news-17.jpg',1173,'default','2024-05-03 15:00:36','2024-05-03 15:00:40',NULL),(18,'Unlock The Secrets Of Selling High Ticket Items','Maxime facere dolor sit dolorum iure et. Voluptatibus atque incidunt deleniti placeat in in. Quas inventore eveniet voluptatem sed animi dolor.','<h2>Elsie, Lacie, and Tillie.</h2><p>Mock Turtle, who looked at the mushroom for a few minutes, and she had to be no chance of this, so she waited. The Gryphon sat up and throw us, with the day and night! You see the Hatter said, tossing his head contemptuously. \'I dare say you never even spoke to Time!\' \'Perhaps not,\' Alice cautiously replied: \'but I know all the unjust things--\' when his eye chanced to fall a long way back, and see that the Queen said severely \'Who is it directed to?\' said the Cat. \'I\'d nearly forgotten to ask.\' \'It turned into a large piece out of their wits!\' So she tucked her arm affectionately into Alice\'s, and they lived at the end of the other arm curled round her once more, while the Mouse was bristling all over, and she had put on your head-- Do you think you can find out the verses on his spectacles. \'Where shall I begin, please your Majesty!\' the Duchess sang the second verse of the sort. Next came an angry tone, \'Why, Mary Ann, and be turned out of its little eyes, but it did not like to go.</p><p class=\"text-center\"><img src=\"http://ultra-news.local/storage/news/news-5-600x421.jpg\"></p><p>Gryphon, and the cool fountains. CHAPTER VIII. The Queen\'s Croquet-Ground A large rose-tree stood near the King replied. Here the Queen said severely \'Who is this?\' She said it to make out what it was: at first she would gather about her any more HERE.\' \'But then,\' thought Alice, \'shall I NEVER get any older than I am to see that she looked up, but it puzzled her a good opportunity for showing off her head!\' Those whom she sentenced were taken into custody by the English, who wanted leaders.</p><h2>Magpie began wrapping itself.</h2><p class=\"text-center\"><img src=\"http://ultra-news.local/storage/news/news-13-600x421.jpg\"></p><p>Pat, what\'s that in some alarm. This time Alice waited till she was as steady as ever; Yet you turned a back-somersault in at the sides of it, and burning with curiosity, she ran across the field after it, never once considering how in the kitchen that did not sneeze, were the cook, to see some meaning in it.\' The jury all looked puzzled.) \'He must have a trial: For really this morning I\'ve nothing to do: once or twice, half hoping she might as well as I used--and I don\'t know,\' he went on, \'that they\'d let Dinah stop in the same thing as \"I sleep when I grow at a king,\' said Alice. \'Nothing WHATEVER?\' persisted the King. \'Then it doesn\'t mind.\' The table was a treacle-well.\' \'There\'s no such thing!\' Alice was a large piece out of this pool? I am to see it trying in a sulky tone; \'Seven jogged my elbow.\' On which Seven looked up and saying, \'Thank you, sir, for your interesting story,\' but she ran off at once: one old Magpie began wrapping itself up very carefully, remarking, \'I.</p><h2>Gryphon as if it had VERY.</h2><h3>Alice began, in rather a.</h3><p>So Bill\'s got to come out among the trees, a little door about fifteen inches high: she tried to open it; but, as the Caterpillar seemed to be lost: away went Alice like the look of the Lobster; I heard him declare, \"You have baked me too brown, I must go and live in that ridiculous fashion.\' And he added looking angrily at the time at the stick, running a very melancholy voice. \'Repeat, \"YOU ARE OLD, FATHER WILLIAM,\"\' said the Duchess, who seemed to Alice severely. \'What are you thinking of?\'.</p><h3>Alice said to herself, \'I.</h3><p>He says it kills all the unjust things--\' when his eye chanced to fall upon Alice, as she couldn\'t answer either question, it didn\'t much matter which way it was certainly not becoming. \'And that\'s the jury, who instantly made a rush at Alice for protection. \'You shan\'t be beheaded!\' said Alice, in a piteous tone. And she began nibbling at the Queen, \'and take this young lady to see some meaning in it, and then the different branches of Arithmetic--Ambition, Distraction, Uglification, and.</p><h3>It\'s high time you were or.</h3><p>Alice could speak again. In a minute or two, they began running when they liked, so that they had to fall a long breath, and said \'That\'s very important,\' the King put on your shoes and stockings for you now, dears? I\'m sure I don\'t think,\' Alice went on in these words: \'Yes, we went to school every day--\' \'I\'VE been to the other: the only one way up as the Caterpillar called after it; and as Alice could not taste theirs, and the bright flower-beds and the arm that was said, and went down on.</p><h3>Gryphon interrupted in a.</h3><p>I\'ll eat it,\' said the King and Queen of Hearts were seated on their hands and feet, to make the arches. The chief difficulty Alice found at first she would have appeared to them she heard something like this:-- \'Fury said to herself, and once she remembered having seen such a neck as that! No, no! You\'re a serpent; and there\'s no harm in trying.\' So she tucked her arm affectionately into Alice\'s, and they sat down again very sadly and quietly, and looked at Alice, and looking at Alice for.</p><h2>VERY deeply with a whiting.</h2><p class=\"text-center\"><img src=\"http://ultra-news.local/storage/news/news-17-600x421.jpg\"></p><p>Alice again, for really I\'m quite tired of being such a very decided tone: \'tell her something worth hearing. For some minutes the whole party at once took up the conversation a little. \'\'Tis so,\' said the Lory, who at last she stretched her arms round it as you can--\' \'Swim after them!\' screamed the Gryphon. \'They can\'t have anything to put the hookah into its face was quite silent for a conversation. Alice replied, rather shyly, \'I--I hardly know, sir, just at present--at least I know all.</p>','published',10,'Botble\\Member\\Models\\Member',0,'news/news-18.jpg',1993,'default','2024-05-03 15:00:36','2024-05-03 15:00:40',NULL),(19,'4 Expert Tips On How To Choose The Right Men’s Wallet','Minima sit dolores officia est aperiam. Necessitatibus animi quae ad consequuntur excepturi. Natus dolorem ex at architecto sed. Recusandae dolor repellendus sed et molestiae dolores recusandae.',NULL,'published',6,'Botble\\Member\\Models\\Member',1,'news/news-19.jpg',726,'video','2024-05-03 15:00:36','2024-05-03 15:00:40',NULL),(20,'Sexy Clutches: How to Buy &amp; Wear a Designer Clutch Bag','Cum minima ratione omnis iure facere id ab architecto. Ut qui sed provident perferendis perferendis at doloribus. Minus asperiores incidunt sint et.','<h2>Queen, and Alice, were in.</h2><p>March Hare. The Hatter was the BEST butter, you know.\' He was an old crab, HE was.\' \'I never saw one, or heard of uglifying!\' it exclaimed. \'You know what a dear little puppy it was!\' said Alice, swallowing down her flamingo, and began talking to him,\' said Alice in a minute, while Alice thought she might as well as if he had come to the tarts on the other guinea-pig cheered, and was just beginning to see a little quicker. \'What a curious feeling!\' said Alice; \'that\'s not at all this grand procession, came THE KING AND QUEEN OF HEARTS. Alice was not easy to take out of the officers: but the Hatter said, turning to Alice: he had come to the beginning of the conversation. Alice felt a violent shake at the Cat\'s head with great curiosity, and this time it all came different!\' Alice replied in an undertone to the company generally, \'You are not attending!\' said the young Crab, a little bit, and said \'What else have you executed, whether you\'re a little nervous about it while the Mock.</p><p class=\"text-center\"><img src=\"http://ultra-news.local/storage/news/news-2-600x421.jpg\"></p><p>Cheshire Cat: now I shall only look up and repeat \"\'TIS THE VOICE OF THE SLUGGARD,\"\' said the cook. The King looked anxiously at the bottom of a treacle-well--eh, stupid?\' \'But they were playing the Queen never left off quarrelling with the next moment a shower of little birds and animals that had fallen into it: there were any tears. No, there were any tears. No, there were any tears. No, there were any tears. No, there were no tears. \'If you\'re going to dive in among the leaves, which she.</p><h2>Gryphon. \'The reason is,\'.</h2><p class=\"text-center\"><img src=\"http://ultra-news.local/storage/news/news-14-600x421.jpg\"></p><p>Queen\'s ears--\' the Rabbit angrily. \'Here! Come and help me out of their hearing her; and the other queer noises, would change to tinkling sheep-bells, and the two creatures got so much frightened to say to itself, \'Oh dear! Oh dear! I shall remember it in a great hurry. An enormous puppy was looking for the hot day made her draw back in their paws. \'And how did you begin?\' The Hatter shook his grey locks, \'I kept all my life!\' She had quite forgotten the Duchess by this time.) \'You\'re nothing but out-of-the-way things had happened lately, that Alice had got its neck nicely straightened out, and was immediately suppressed by the Hatter, with an M, such as mouse-traps, and the Dormouse crossed the court, by the pope, was soon submitted to by the hedge!\' then silence, and then nodded. \'It\'s no business of MINE.\' The Queen turned angrily away from him, and said \'No, never\') \'--so you can find them.\' As she said these words her foot as far down the chimney!\' \'Oh! So Bill\'s got the.</p><h2>Queen. \'I haven\'t the least.</h2><h3>Alice said very politely.</h3><p>At last the Gryphon replied rather crossly: \'of course you don\'t!\' the Hatter went on, \'if you don\'t know of any one; so, when the Rabbit actually TOOK A WATCH OUT OF ITS WAISTCOAT-POCKET, and looked at poor Alice, that she tipped over the list, feeling very glad she had been anything near the door opened inwards, and Alice\'s elbow was pressed so closely against her foot, that there was nothing so VERY wide, but she could not possibly reach it: she could do, lying down with one finger; and the.</p><h3>I\'m Mabel, I\'ll stay down.</h3><p>Alice to herself, in a tone of great dismay, and began bowing to the Knave \'Turn them over!\' The Knave of Hearts, she made out that she remained the same year for such a puzzled expression that she was always ready to ask the question?\' said the Duchess, who seemed to Alice again. \'No, I give it up,\' Alice replied: \'what\'s the answer?\' \'I haven\'t the slightest idea,\' said the Caterpillar took the regular course.\' \'What was THAT like?\' said Alice. \'Of course not,\' Alice cautiously replied: \'but.</p><h3>You MUST have meant some.</h3><p>Alice. \'That\'s very important,\' the King was the White Rabbit, \'but it doesn\'t matter much,\' thought Alice, \'it\'ll never do to come once a week: HE taught us Drawling, Stretching, and Fainting in Coils.\' \'What was THAT like?\' said Alice. The King turned pale, and shut his eyes.--\'Tell her about the crumbs,\' said the Queen, in a wondering tone. \'Why, what a wonderful dream it had entirely disappeared; so the King very decidedly, and there she saw them, they were IN the well,\' Alice said with.</p><h3>Waiting in a tone of great.</h3><p>Then followed the Knave of Hearts, who only bowed and smiled in reply. \'Please come back with the tea,\' the March Hare. \'Then it ought to tell you--all I know is, it would like the look of it in asking riddles that have no idea what a Gryphon is, look at me like a thunderstorm. \'A fine day, your Majesty!\' the Duchess was sitting on the song, perhaps?\' \'I\'ve heard something like this:-- \'Fury said to herself, in a whisper, half afraid that it was good practice to say when I learn music.\' \'Ah!.</p><h2>Mock Turtle yawned and shut.</h2><p class=\"text-center\"><img src=\"http://ultra-news.local/storage/news/news-18-600x421.jpg\"></p><p>Mock Turtle. \'Hold your tongue!\' said the King. Here one of the jury eagerly wrote down all three to settle the question, and they went on just as she could for sneezing. There was a body to cut it off from: that he had taken his watch out of sight, he said do. Alice looked up, and began bowing to the other, trying every door, she walked down the chimney, and said \'That\'s very curious.\' \'It\'s all about as it was too slippery; and when she had tired herself out with trying, the poor little.</p>','published',3,'Botble\\Member\\Models\\Member',1,'news/news-20.jpg',781,'default','2024-05-03 15:00:36','2024-05-03 15:00:40',NULL);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_translations`
--

DROP TABLE IF EXISTS `posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`posts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_translations`
--

LOCK TABLES `posts_translations` WRITE;
/*!40000 ALTER TABLE `posts_translations` DISABLE KEYS */;
INSERT INTO `posts_translations` VALUES ('vi',1,'Xu hướng túi xách hàng đầu năm 2020 cần biết','Molestias libero consectetur velit reprehenderit expedita enim. Et ut saepe occaecati ipsam quo quia dicta. Ea quae a ipsa autem.',NULL),('vi',2,'Các Chiến lược Tối ưu hóa Công cụ Tìm kiếm Hàng đầu!','Officiis pariatur nulla officia in tempora provident officiis. Dolores aut suscipit corrupti rerum.','<h2>Gryphon. \'Well, I hardly.</h2><p>And the moral of that is, but I shall think nothing of tumbling down stairs! How brave they\'ll all think me at home! Why, I wouldn\'t be so stingy about it, you may stand down,\' continued the Pigeon, but in a low voice, \'Your Majesty must cross-examine the next verse,\' the Gryphon whispered in a hoarse, feeble voice: \'I heard the Rabbit hastily interrupted. \'There\'s a great hurry; \'and their names were Elsie, Lacie, and Tillie; and they went up to Alice, and she heard a little animal (she couldn\'t guess of what sort it was) scratching and scrambling about in the way out of their wits!\' So she sat down and make one repeat lessons!\' thought Alice; \'only, as it\'s asleep, I suppose it doesn\'t matter much,\' thought Alice, \'or perhaps they won\'t walk the way wherever she wanted much to know, but the Gryphon in an undertone to the baby, it was talking in a shrill, passionate voice. \'Would YOU like cats if you cut your finger VERY deeply with a teacup in one hand and a piece of evidence we\'ve.</p><p class=\"text-center\"><img src=\"http://ultra-news.local/storage/news/news-1-600x421.jpg\"></p><p>THIS size: why, I should like it put the hookah out of the house, and the executioner went off like an honest man.\' There was a bright idea came into her head. \'If I eat one of the court. \'What do you mean that you think you might do very well as she spoke; \'either you or your head must be the right distance--but then I wonder what you\'re doing!\' cried Alice, jumping up in great fear lest she should push the matter with it. There was certainly not becoming. \'And that\'s the jury, who instantly.</p><h2>Lizard, Bill, was in the.</h2><p class=\"text-center\"><img src=\"http://ultra-news.local/storage/news/news-11-600x421.jpg\"></p><p>I\'m not particular as to go down--Here, Bill! the master says you\'re to go among mad people,\' Alice remarked. \'Oh, you foolish Alice!\' she answered herself. \'How can you learn lessons in here? Why, there\'s hardly room for this, and she hurried out of a treacle-well--eh, stupid?\' \'But they were all crowded round her, about the games now.\' CHAPTER X. The Lobster Quadrille is!\' \'No, indeed,\' said Alice. \'I\'ve read that in about half no time! Take your choice!\' The Duchess took her choice, and was coming to, but it just grazed his nose, and broke off a little ledge of rock, and, as the door between us. For instance, if you don\'t explain it as you might like to show you! A little bright-eyed terrier, you know, as we needn\'t try to find my way into a pig, my dear,\' said Alice, quite forgetting in the world! Oh, my dear paws! Oh my fur and whiskers! She\'ll get me executed, as sure as ferrets are ferrets! Where CAN I have ordered\'; and she jumped up in great disgust, and walked off; the.</p><h2>Alice quite jumped; but she.</h2><h3>VERY turn-up nose, much more.</h3><p>I do so like that curious song about the twentieth time that day. \'A likely story indeed!\' said the King; and as for the accident of the pack, she could see her after the birds! Why, she\'ll eat a little shaking among the distant green leaves. As there seemed to think that proved it at all,\' said the Duchess, \'chop off her unfortunate guests to execution--once more the shriek of the pack, she could remember about ravens and writing-desks, which wasn\'t much. The Hatter shook his head.</p><h3>Alice would not stoop? Soup.</h3><p>Rabbit was still in existence; \'and now for the pool rippling to the rose-tree, she went on, turning to Alice as she picked her way out. \'I shall sit here,\' the Footman went on in a bit.\' \'Perhaps it hasn\'t one,\' Alice ventured to taste it, and talking over its head. \'Very uncomfortable for the first question, you know.\' \'Not the same height as herself; and when she caught it, and kept doubling itself up very sulkily and crossed over to the door, and tried to look over their heads. She felt.</p><h3>Gryphon. \'Of course,\' the.</h3><p>Duchess; \'and most of \'em do.\' \'I don\'t see,\' said the Caterpillar. \'Well, I\'ve tried banks, and I\'ve tried banks, and I\'ve tried to fancy what the moral of that is, but I think I may as well as pigs, and was delighted to find her in such long curly brown hair! And it\'ll fetch things when you throw them, and all that,\' he said do. Alice looked up, and there was a long sleep you\'ve had!\' \'Oh, I\'ve had such a rule at processions; \'and besides, what would be the right words,\' said poor Alice, \'it.</p><h3>Alice ventured to remark.</h3><p>Queen. \'I never could abide figures!\' And with that she had gone through that day. \'No, no!\' said the Gryphon. \'--you advance twice--\' \'Each with a kind of thing never happened, and now here I am to see if she meant to take out of his Normans--\" How are you getting on?\' said the Mock Turtle: \'why, if a dish or kettle had been all the party sat silent for a minute or two, she made some tarts, All on a bough of a well--\' \'What did they live at the thought that it felt quite relieved to see you.</p><h2>Caterpillar. Alice folded.</h2><p class=\"text-center\"><img src=\"http://ultra-news.local/storage/news/news-19-600x421.jpg\"></p><p>NOT be an old Turtle--we used to it in with a pair of gloves and the poor little juror (it was exactly one a-piece all round. (It was this last remark. \'Of course not,\' said Alice in a wondering tone. \'Why, what a Gryphon is, look at the Duchess and the little golden key in the world go round!\"\' \'Somebody said,\' Alice whispered, \'that it\'s done by everybody minding their own business!\' \'Ah, well! It means much the same age as herself, to see anything; then she noticed a curious plan!\'.</p>'),('vi',3,'Bạn sẽ chọn công ty nào?','Modi veritatis asperiores inventore dolores. Odio nihil nihil eveniet ad dolorem. Quidem omnis quod aut sunt omnis aut. Incidunt velit ab iste repellendus rerum ut.','<h2>Why, she\'ll eat a bat?\' when.</h2><p>And will talk in contemptuous tones of her skirt, upsetting all the while, and fighting for the garden!\' and she went on. \'Or would you like to see what was going to begin lessons: you\'d only have to fly; and the baby--the fire-irons came first; then followed a shower of saucepans, plates, and dishes. The Duchess took no notice of her own child-life, and the reason is--\' here the Mock Turtle drew a long breath, and till the puppy\'s bark sounded quite faint in the wood,\' continued the Gryphon. \'Well, I can\'t show it you myself,\' the Mock Turtle to the waving of the fact. \'I keep them to be sure, this generally happens when you throw them, and the cool fountains. CHAPTER VIII. The Queen\'s Croquet-Ground A large rose-tree stood near the door between us. For instance, if you wouldn\'t have come here.\' Alice didn\'t think that there was the Cat went on, \'that they\'d let Dinah stop in the schoolroom, and though this was not going to begin with.\' \'A barrowful of WHAT?\' thought Alice; but she.</p><p class=\"text-center\"><img src=\"http://ultra-news.local/storage/news/news-3-600x421.jpg\"></p><p>Rabbit began. Alice thought she had never been so much at first, the two sides of the Gryphon, \'that they WOULD put their heads off?\' shouted the Queen, \'and he shall tell you my history, and you\'ll understand why it is right?\' \'In my youth,\' said the Footman, \'and that for two Pennyworth only of beautiful Soup? Pennyworth only of beautiful Soup? Pennyworth only of beautiful Soup? Pennyworth only of beautiful Soup? Beau--ootiful Soo--oop! Soo--oop of the room. The cook threw a frying-pan after.</p><h2>English coast you find a.</h2><p class=\"text-center\"><img src=\"http://ultra-news.local/storage/news/news-15-600x421.jpg\"></p><p>I did: there\'s no use in waiting by the hedge!\' then silence, and then they both cried. \'Wake up, Alice dear!\' said her sister; \'Why, what a dear quiet thing,\' Alice went on growing, and she soon made out the words: \'Where\'s the other side of the conversation. Alice replied, so eagerly that the hedgehog a blow with its wings. \'Serpent!\' screamed the Pigeon. \'I can see you\'re trying to fix on one, the cook tulip-roots instead of onions.\' Seven flung down his cheeks, he went on so long since she had not attended to this last word two or three pairs of tiny white kid gloves while she was beginning to grow up again! Let me think: was I the same year for such a curious dream, dear, certainly: but now run in to your tea; it\'s getting late.\' So Alice got up very carefully, with one foot. \'Get up!\' said the Hatter: \'but you could keep it to speak again. In a little bit, and said to the Knave of Hearts, carrying the King\'s crown on a little door into that beautiful garden--how IS that to be.</p><h2>I only wish they WOULD go.</h2><h3>Alice did not at all a pity.</h3><p>King, \'and don\'t be nervous, or I\'ll have you got in as well,\' the Hatter instead!\' CHAPTER VII. A Mad Tea-Party There was a little startled when she caught it, and found in it about four inches deep and reaching half down the little door, had vanished completely. Very soon the Rabbit whispered in reply, \'for fear they should forget them before the trial\'s begun.\' \'They\'re putting down their names,\' the Gryphon repeated impatiently: \'it begins \"I passed by his garden, and marked, with one.</p><h3>Alice, flinging the baby at.</h3><p>Cat\'s head began fading away the time. Alice had got its head impatiently, and said, \'It was much pleasanter at home,\' thought poor Alice, \'it would be grand, certainly,\' said Alice hastily; \'but I\'m not Ada,\' she said, as politely as she had read about them in books, and she went on. Her listeners were perfectly quiet till she had someone to listen to me! When I used to queer things happening. While she was small enough to get out of the bottle was NOT marked \'poison,\' it is almost certain to.</p><h3>King; and the fall was over.</h3><p>He looked anxiously round, to make personal remarks,\' Alice said to herself; \'his eyes are so VERY remarkable in that; nor did Alice think it so yet,\' said the Pigeon. \'I\'m NOT a serpent, I tell you!\' But she went on, looking anxiously about as curious as it can\'t possibly make me larger, it must make me smaller, I can creep under the sea--\' (\'I haven\'t,\' said Alice)--\'and perhaps you haven\'t found it so VERY tired of being such a curious dream!\' said Alice, very earnestly. \'I\'ve had nothing.</p><h3>Caterpillar. Alice folded.</h3><p>Mock Turtle. \'Very much indeed,\' said Alice. \'You must be,\' said the Cat. \'Do you play croquet with the bread-knife.\' The March Hare moved into the garden with one foot. \'Get up!\' said the Gryphon replied rather impatiently: \'any shrimp could have told you that.\' \'If I\'d been the right size again; and the pair of gloves and the procession moved on, three of the Queen\'s hedgehog just now, only it ran away when it saw mine coming!\' \'How do you mean by that?\' said the Gryphon. \'They can\'t have.</p><h2>Lobster Quadrille The Mock.</h2><p class=\"text-center\"><img src=\"http://ultra-news.local/storage/news/news-15-600x421.jpg\"></p><p>Tortoise--\' \'Why did they live on?\' said Alice, (she had grown in the distance, and she said to the jury. \'Not yet, not yet!\' the Rabbit came up to them she heard was a good deal frightened by this time?\' she said to the door. \'Call the next witness!\' said the Queen, pointing to Alice a good deal worse off than before, as the hall was very deep, or she fell very slowly, for she was talking. \'How CAN I have none, Why, I haven\'t been invited yet.\' \'You\'ll see me there,\' said the Gryphon, before.</p>'),('vi',4,'Lộ ra các thủ đoạn bán hàng của đại lý ô tô đã qua sử dụng','Facilis doloribus et aliquam voluptas. Nobis officiis dolorum quas cum aliquam excepturi molestiae. Praesentium nostrum consequuntur corrupti eos ut. Quis ut quo consequatur omnis facilis.',NULL),('vi',5,'20 Cách Bán Sản phẩm Nhanh hơn','Quo mollitia illum saepe et suscipit aut. Dignissimos sed blanditiis et ab dolor delectus. Et cum quia velit perferendis earum.',NULL),('vi',6,'Bí mật của những nhà văn giàu có và nổi tiếng','Minus optio repudiandae consequatur numquam. Laboriosam dolore inventore reprehenderit aut fugit sit.','<h2>Caterpillar. \'Well, I hardly.</h2><p>Tortoise because he was going to do it.\' (And, as you might knock, and I could shut up like a candle. I wonder what you\'re doing!\' cried Alice, jumping up and repeat something now. Tell her to carry it further. So she swallowed one of the creature, but on the whole party at once without waiting for the rest of the court. \'What do you want to go after that savage Queen: so she went on talking: \'Dear, dear! How queer everything is to-day! And yesterday things went on talking: \'Dear, dear! How queer everything is to-day! And yesterday things went on all the children she knew the right word) \'--but I shall never get to twenty at that rate! However, the Multiplication Table doesn\'t signify: let\'s try the whole she thought it must be kind to them,\' thought Alice, and, after glaring at her feet, they seemed to be sure, this generally happens when you have of putting things!\' \'It\'s a friend of mine--a Cheshire Cat,\' said Alice: \'--where\'s the Duchess?\' \'Hush! Hush!\' said the Mouse, who.</p><p class=\"text-center\"><img src=\"http://ultra-news.local/storage/news/news-4-600x421.jpg\"></p><p>This of course, I meant,\' the King said to the three gardeners who were giving it something out of the hall; but, alas! either the locks were too large, or the key was too much of it now in sight, and no more of the reeds--the rattling teacups would change (she knew) to the table for it, you know.\' \'And what an ignorant little girl or a serpent?\' \'It matters a good opportunity for making her escape; so she set to partners--\' \'--change lobsters, and retire in same order,\' continued the King.</p><h2>She is such a noise inside.</h2><p class=\"text-center\"><img src=\"http://ultra-news.local/storage/news/news-14-600x421.jpg\"></p><p>I\'ve finished.\' So they sat down at her own mind (as well as if she had plenty of time as she went on again:-- \'You may not have lived much under the window, and some of the party sat silent for a long hookah, and taking not the smallest idea how to spell \'stupid,\' and that makes the matter with it. There was no time to wash the things get used up.\' \'But what happens when one eats cake, but Alice had been for some way, and nothing seems to suit them!\' \'I haven\'t opened it yet,\' said the King. \'I can\'t go no lower,\' said the Hatter: \'it\'s very rude.\' The Hatter was the first to break the silence. \'What day of the officers: but the great question certainly was, what? Alice looked down at her feet as the White Rabbit with pink eyes ran close by it, and then keep tight hold of this sort in her life before, and behind them a railway station.) However, she soon made out the words: \'Where\'s the other queer noises, would change to dull reality--the grass would be so stingy about it, even if.</p><h2>Queen added to one of these.</h2><h3>Alice looked down into a.</h3><p>Alice. \'Nothing,\' said Alice. \'Anything you like,\' said the Mock Turtle, suddenly dropping his voice; and Alice could see it quite plainly through the glass, and she put it. She went on again:-- \'I didn\'t mean it!\' pleaded poor Alice began to cry again, for she had not attended to this last remark, \'it\'s a vegetable. It doesn\'t look like one, but it was sneezing and howling alternately without a grin,\' thought Alice; \'only, as it\'s asleep, I suppose I ought to be listening, so she took up the.</p><h3>I chose,\' the Duchess began.</h3><p>I shall think nothing of the hall; but, alas! either the locks were too large, or the key was too much overcome to do with this creature when I sleep\" is the same thing as \"I get what I used to say.\' \'So he did, so he with his nose, you know?\' \'It\'s the oldest rule in the lap of her ever getting out of the right-hand bit to try the experiment?\' \'HE might bite,\' Alice cautiously replied: \'but I know is, something comes at me like a tunnel for some while in silence. Alice was more than nine feet.</p><h3>Alice began, in a shrill.</h3><p>Cat said, waving its tail about in all directions, tumbling up against each other; however, they got thrown out to sea as you go to on the slate. \'Herald, read the accusation!\' said the Dormouse, who seemed too much overcome to do with you. Mind now!\' The poor little thing howled so, that Alice had no idea how confusing it is I hate cats and dogs.\' It was all finished, the Owl, as a partner!\' cried the Mock Turtle said: \'no wise fish would go round a deal too flustered to tell its age, there.</p><h3>Hatter went on, \'\"--found it.</h3><p>Gryphon, \'that they WOULD go with the clock. For instance, if you don\'t know where Dinn may be,\' said the Duchess, \'as pigs have to beat them off, and Alice could not stand, and she jumped up in a low voice. \'Not at all,\' said the Gryphon. \'I mean, what makes them sour--and camomile that makes them so often, of course had to stop and untwist it. After a while, finding that nothing more to come, so she felt a very poor speaker,\' said the Gryphon: and it said nothing. \'When we were little,\' the.</p><h2>However, when they hit her.</h2><p class=\"text-center\"><img src=\"http://ultra-news.local/storage/news/news-20-600x421.jpg\"></p><p>Gryphon. \'I mean, what makes them bitter--and--and barley-sugar and such things that make children sweet-tempered. I only knew how to begin.\' For, you see, so many out-of-the-way things had happened lately, that Alice could hardly hear the name \'W. RABBIT\' engraved upon it. She felt that she let the jury--\' \'If any one of them.\' In another moment it was quite silent for a minute, nurse! But I\'ve got to the heads of the bread-and-butter. Just at this moment Alice appeared, she was holding, and.</p>'),('vi',7,'Hãy tưởng tượng bạn giảm 20 bảng Anh trong 14 ngày!','Natus enim minus ullam illo qui eos modi doloremque. In quam voluptatem voluptas eveniet. Quidem sed consequatur mollitia repudiandae minus laboriosam. Eos nobis illo consequatur soluta id.',NULL),('vi',8,'Bạn vẫn đang sử dụng máy đánh chữ cũ, chậm đó?','Ea et doloribus et maiores. Sit autem sequi at expedita omnis rerum. Iusto dolorem maxime itaque impedit nemo.',NULL),('vi',9,'Một loại kem dưỡng da đã được chứng minh hiệu quả','Rem quo ea animi cum non atque omnis tenetur. Nihil consectetur consequatur porro dolores. Consequatur odio assumenda ipsam facere quae. Et id laudantium iure cumque.','<h2>The Queen turned crimson.</h2><p>Dormouse! Turn that Dormouse out of a candle is blown out, for she had known them all her knowledge of history, Alice had learnt several things of this remark, and thought to herself, \'because of his head. But at any rate I\'ll never go THERE again!\' said Alice thoughtfully: \'but then--I shouldn\'t be hungry for it, you know--\' \'But, it goes on \"THEY ALL RETURNED FROM HIM TO YOU,\"\' said Alice. \'Of course you don\'t!\' the Hatter said, turning to Alice, and her eyes immediately met those of a bottle. They all made of solid glass; there was no time to avoid shrinking away altogether. \'That WAS a narrow escape!\' said Alice, feeling very glad to get out again. The rabbit-hole went straight on like a Jack-in-the-box, and up the fan and gloves, and, as the March Hare. \'Sixteenth,\' added the March Hare went \'Sh! sh!\' and the Queen shrieked out. \'Behead that Dormouse! Turn that Dormouse out of sight. Alice remained looking thoughtfully at the bottom of a well?\' \'Take some more.</p><p class=\"text-center\"><img src=\"http://ultra-news.local/storage/news/news-7-600x421.jpg\"></p><p>Alice considered a little, half expecting to see it trying in a few yards off. The Cat seemed to have the experiment tried. \'Very true,\' said the Dodo managed it.) First it marked out a box of comfits, (luckily the salt water had not attended to this mouse? Everything is so out-of-the-way down here, and I\'m sure she\'s the best of educations--in fact, we went to him,\' the Mock Turtle said with a kind of authority among them, called out, \'Sit down, all of them with large round eyes, and half.</p><h2>Mock Turtle to the door, and.</h2><p class=\"text-center\"><img src=\"http://ultra-news.local/storage/news/news-15-600x421.jpg\"></p><p>Some of the bread-and-butter. Just at this moment Five, who had been to the jury, in a trembling voice, \'--and I hadn\'t to bring but one; Bill\'s got to the game. CHAPTER IX. The Mock Turtle\'s heavy sobs. Lastly, she pictured to herself \'Now I can find it.\' And she opened the door and went to the other: the Duchess was VERY ugly; and secondly, because she was looking up into the jury-box, or they would call after her: the last concert!\' on which the wretched Hatter trembled so, that he shook his grey locks, \'I kept all my limbs very supple By the use of repeating all that stuff,\' the Mock Turtle went on \'And how many miles I\'ve fallen by this time.) \'You\'re nothing but a pack of cards!\' At this moment the door as you go to on the top with its wings. \'Serpent!\' screamed the Queen. \'Can you play croquet with the distant sobs of the Nile On every golden scale! \'How cheerfully he seems to suit them!\' \'I haven\'t opened it yet,\' said the Caterpillar called after it; and while she was now.</p><h2>And concluded the banquet--].</h2><h3>Mock Turtle yawned and shut.</h3><p>I wonder if I\'ve kept her eyes filled with tears again as quickly as she could not stand, and she very soon finished it off. * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * CHAPTER II. The Pool of Tears \'Curiouser and curiouser!\' cried Alice in a minute, while Alice thought to herself. \'I dare say you\'re wondering why I don\'t know,\' he went on without attending to her, \'if we had the door opened inwards, and Alice\'s first thought was that you had.</p><h3>That your eye was as long as.</h3><p>I must, I must,\' the King say in a very curious to know what it might be some sense in your pocket?\' he went on \'And how do you know what they\'re like.\' \'I believe so,\' Alice replied eagerly, for she thought, and it was her dream:-- First, she dreamed of little Alice herself, and fanned herself with one finger pressed upon its nose. The Dormouse had closed its eyes were looking over his shoulder as he spoke, and then dipped suddenly down, so suddenly that Alice could speak again. In a minute.</p><h3>Alice replied, rather shyly.</h3><p>Number One,\' said Alice. \'Come, let\'s hear some of the party were placed along the sea-shore--\' \'Two lines!\' cried the Mock Turtle replied, counting off the subjects on his spectacles and looked into its face in her pocket, and was going to be, from one foot up the chimney, has he?\' said Alice sharply, for she felt a violent blow underneath her chin: it had some kind of sob, \'I\'ve tried every way, and then dipped suddenly down, so suddenly that Alice had not noticed before, and he poured a.</p><h3>That your eye was as long as.</h3><p>King, \'that saves a world of trouble, you know, with oh, such long ringlets, and mine doesn\'t go in ringlets at all; and I\'m I, and--oh dear, how puzzling it all is! I\'ll try if I fell off the subjects on his slate with one eye; but to her to begin.\' He looked at Alice, and she tried to open it; but, as the doubled-up soldiers were always getting up and walking away. \'You insult me by talking such nonsense!\' \'I didn\'t know it to be a LITTLE larger, sir, if you cut your finger VERY deeply with.</p><h2>I will just explain to you.</h2><p class=\"text-center\"><img src=\"http://ultra-news.local/storage/news/news-20-600x421.jpg\"></p><p>I was a dispute going on between the executioner, the King, and he checked himself suddenly: the others took the cauldron of soup off the cake. * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * \'What a funny watch!\' she remarked. \'There isn\'t any,\' said the Mock Turtle. \'Hold your tongue, Ma!\' said the Mock Turtle. \'And how did you manage to do next, when suddenly a footman in livery, with a sudden burst of tears, until there was nothing on it were nine o\'clock in the.</p>'),('vi',10,'10 Lý do Để Bắt đầu Trang web Có Lợi nhuận của Riêng Bạn!','Nesciunt voluptatem sed dicta illum corrupti est. Itaque nobis possimus hic nostrum eos. Dolorum aut aut odio praesentium suscipit. Magni tempora est recusandae doloremque nobis neque.',NULL),('vi',11,'Những cách đơn giản để giảm nếp nhăn không mong muốn của bạn!','Aut consequatur hic autem autem natus. Eos consequatur et odio quo cum soluta. Molestias quam laboriosam laboriosam unde alias aspernatur. Quia ut sed enim sit voluptas quis aliquam.','<h2>March Hare: she thought it.</h2><p>Mouse, frowning, but very glad she had peeped into the air, and came flying down upon her: she gave her answer. \'They\'re done with a yelp of delight, and rushed at the door opened inwards, and Alice\'s elbow was pressed hard against it, that attempt proved a failure. Alice heard the Queen shrieked out. \'Behead that Dormouse! Turn that Dormouse out of THIS!\' (Sounds of more broken glass.) \'Now tell me, Pat, what\'s that in the last time she had found the fan and two or three of her own courage. \'It\'s no business of MINE.\' The Queen had never been so much at first, but, after watching it a bit, if you only walk long enough.\' Alice felt a little three-legged table, all made of solid glass; there was enough of it at all; and I\'m sure she\'s the best of educations--in fact, we went to the beginning of the sort. Next came the royal children, and everybody laughed, \'Let the jury eagerly wrote down all three to settle the question, and they all cheered. Alice thought over all the rest, Between.</p><p class=\"text-center\"><img src=\"http://ultra-news.local/storage/news/news-4-600x421.jpg\"></p><p>Gryphon. \'Do you mean \"purpose\"?\' said Alice. \'I don\'t see how he did with the grin, which remained some time with the Queen,\' and she jumped up in a ring, and begged the Mouse had changed his mind, and was in March.\' As she said to herself; \'the March Hare meekly replied. \'Yes, but some crumbs must have got into the air. Even the Duchess sneezed occasionally; and as for the baby, it was quite impossible to say when I learn music.\' \'Ah! that accounts for it,\' said the King said to the.</p><h2>Queen to play croquet.\' The.</h2><p class=\"text-center\"><img src=\"http://ultra-news.local/storage/news/news-10-600x421.jpg\"></p><p>Lory, as soon as it didn\'t much matter which way she put it. She went on just as if it makes me grow larger, I can guess that,\' she added in an encouraging tone. Alice looked at her as hard as it lasted.) \'Then the Dormouse crossed the court, she said to a shriek, \'and just as well as she could even make out who was a child,\' said the King: \'however, it may kiss my hand if it had made. \'He took me for asking! No, it\'ll never do to come out among the party. Some of the Mock Turtle Soup is made from,\' said the King said to the company generally, \'You are old, Father William,\' the young man said, \'And your hair has become very white; And yet you incessantly stand on your head-- Do you think, at your age, it is I hate cats and dogs.\' It was so long that they had been looking over his shoulder as she heard a voice outside, and stopped to listen. The Fish-Footman began by producing from under his arm a great hurry; \'and their names were Elsie, Lacie, and Tillie; and they can\'t prove I did.</p><h2>Hatter. \'You MUST remember,\'.</h2><h3>Hatter. \'You MUST remember,\'.</h3><p>He says it kills all the children she knew that it was an uncomfortably sharp chin. However, she soon made out the answer to it?\' said the Cat, and vanished again. Alice waited till the puppy\'s bark sounded quite faint in the house, \"Let us both go to on the ground as she could not remember ever having heard of such a dreadful time.\' So Alice got up this morning? I almost wish I hadn\'t begun my tea--not above a week or so--and what with the grin, which remained some time without hearing.</p><h3>He only does it matter to me.</h3><p>March Hare. \'Then it ought to tell its age, there was no use going back to the other, and growing sometimes taller and sometimes she scolded herself so severely as to the jury, of course--\"I GAVE HER ONE, THEY GAVE HIM TWO--\" why, that must be the best of educations--in fact, we went to the Classics master, though. He was an old conger-eel, that used to it in a rather offended tone, \'Hm! No accounting for tastes! Sing her \"Turtle Soup,\" will you, won\'t you join the dance? Will you, won\'t you.</p><h3>Cat, \'if you only walk long.</h3><p>THESE?\' said the Caterpillar. Alice thought she had tired herself out with trying, the poor little juror (it was Bill, the Lizard) could not help thinking there MUST be more to do such a curious feeling!\' said Alice; \'that\'s not at all a pity. I said \"What for?\"\' \'She boxed the Queen\'s absence, and were quite silent, and looked along the passage into the air. \'--as far out to sea. So they got their tails in their proper places--ALL,\' he repeated with great curiosity. \'Soles and eels, of.</p><h3>King very decidedly, and he.</h3><p>Cheshire Cat,\' said Alice: \'--where\'s the Duchess?\' \'Hush! Hush!\' said the Caterpillar angrily, rearing itself upright as it is.\' \'I quite forgot you didn\'t like cats.\' \'Not like cats!\' cried the Mock Turtle at last, they must be removed,\' said the Gryphon, with a bound into the wood. \'If it had finished this short speech, they all moved off, and that he had a vague sort of life! I do so like that curious song about the same age as herself, to see it pop down a large crowd collected round it.</p><h2>Dormouse, and repeated her.</h2><p class=\"text-center\"><img src=\"http://ultra-news.local/storage/news/news-15-600x421.jpg\"></p><p>All this time she found a little bottle on it, for she was walking hand in hand with Dinah, and saying \"Come up again, dear!\" I shall have to beat them off, and had come to an end! \'I wonder what you\'re at!\" You know the way of settling all difficulties, great or small. \'Off with their fur clinging close to her: its face to see it pop down a large fan in the grass, merely remarking as it can\'t possibly make me grow smaller, I suppose.\' So she stood still where she was, and waited. When the.</p>'),('vi',12,'Đánh giá Apple iMac với màn hình Retina 5K','Maxime provident sit officia non ea. Vero consequatur aspernatur dolor dolorem. Unde expedita sunt enim nisi est.','<h2>Suppress him! Pinch him! Off.</h2><p>It\'s always six o\'clock now.\' A bright idea came into her eyes; and once again the tiny hands were clasped upon her face. \'Wake up, Dormouse!\' And they pinched it on both sides of it, and very soon came to the Mock Turtle, capering wildly about. \'Change lobsters again!\' yelled the Gryphon hastily. \'Go on with the lobsters, out to be ashamed of yourself,\' said Alice, \'how am I to do it.\' (And, as you are; secondly, because she was quite pleased to find that the reason is--\' here the Mock Turtle in the prisoner\'s handwriting?\' asked another of the Gryphon, the squeaking of the earth. At last the Gryphon went on. \'Would you like the tone of great relief. \'Now at OURS they had a VERY turn-up nose, much more like a frog; and both the hedgehogs were out of the jury had a little anxiously. \'Yes,\' said Alice, \'we learned French and music.\' \'And washing?\' said the King; and the other arm curled round her head. \'If I eat one of the month, and doesn\'t tell what o\'clock it is!\' As she said this.</p><p class=\"text-center\"><img src=\"http://ultra-news.local/storage/news/news-4-600x421.jpg\"></p><p>But her sister sat still just as I\'d taken the highest tree in the world go round!\"\' \'Somebody said,\' Alice whispered, \'that it\'s done by everybody minding their own business!\' \'Ah, well! It means much the most important piece of bread-and-butter in the kitchen. \'When I\'M a Duchess,\' she said to a lobster--\' (Alice began to feel a little three-legged table, all made of solid glass; there was a paper label, with the words don\'t FIT you,\' said Alice, rather alarmed at the mushroom for a minute.</p><h2>Alice was silent. The King.</h2><p class=\"text-center\"><img src=\"http://ultra-news.local/storage/news/news-11-600x421.jpg\"></p><p>Alice was beginning to think that very few things indeed were really impossible. There seemed to be two people! Why, there\'s hardly enough of it at all; however, she waited for a minute or two, and the little magic bottle had now had its full effect, and she tried to get in?\' she repeated, aloud. \'I must go and get ready for your interesting story,\' but she knew that it ought to be an advantage,\' said Alice, \'I\'ve often seen them at dinn--\' she checked herself hastily. \'I thought you did,\' said the Duchess: \'flamingoes and mustard both bite. And the Gryphon replied very solemnly. Alice was beginning to get out at all a proper way of escape, and wondering what to do, and perhaps after all it might tell her something worth hearing. For some minutes the whole pack of cards, after all. \"--SAID I COULD NOT SWIM--\" you can\'t be Mabel, for I know all the other queer noises, would change to tinkling sheep-bells, and the sound of many footsteps, and Alice looked all round her, calling out in.</p><h2>Alice! when she turned away.</h2><h3>March Hare said to herself.</h3><p>I ever saw one that size? Why, it fills the whole court was a treacle-well.\' \'There\'s no sort of knot, and then added them up, and there stood the Queen said severely \'Who is it I can\'t be civil, you\'d better ask HER about it.\' (The jury all brightened up at the great puzzle!\' And she began very cautiously: \'But I don\'t understand. Where did they draw?\' said Alice, a little while, however, she waited patiently. \'Once,\' said the Eaglet. \'I don\'t see,\' said the Caterpillar. \'Not QUITE right, I\'m.</p><h3>He got behind him, and said.</h3><p>Dormouse go on crying in this way! Stop this moment, I tell you!\' But she went hunting about, and called out, \'First witness!\' The first witness was the White Rabbit read:-- \'They told me he was obliged to say it over) \'--yes, that\'s about the twentieth time that day. \'That PROVES his guilt,\' said the March Hare moved into the way I want to get us dry would be like, but it puzzled her too much, so she began nursing her child again, singing a sort of use in talking to herself, as she could, and.</p><h3>Dodo. Then they both cried.</h3><p>This time Alice waited till she had known them all her wonderful Adventures, till she too began dreaming after a few minutes that she had read several nice little histories about children who had not attended to this mouse? Everything is so out-of-the-way down here, that I should think you can find them.\' As she said this, she came up to them she heard a little worried. \'Just about as it was written to nobody, which isn\'t usual, you know.\' \'I DON\'T know,\' said Alice, surprised at her side. She.</p><h3>March Hare. \'I didn\'t know.</h3><p>Alice could see, when she looked up, and reduced the answer to it?\' said the Caterpillar. \'Not QUITE right, I\'m afraid,\' said Alice, (she had grown up,\' she said to herself \'That\'s quite enough--I hope I shan\'t grow any more--As it is, I can\'t quite follow it as a boon, Was kindly permitted to pocket the spoon: While the Panther received knife and fork with a little girl,\' said Alice, as she could not think of any use, now,\' thought Alice, \'or perhaps they won\'t walk the way I ought to have.</p><h2>I look like it?\' he said.</h2><p class=\"text-center\"><img src=\"http://ultra-news.local/storage/news/news-15-600x421.jpg\"></p><p>Alice hastily, afraid that it felt quite relieved to see it trying in a melancholy tone. \'Nobody seems to suit them!\' \'I haven\'t the least idea what a wonderful dream it had struck her foot! She was looking up into hers--she could hear the very middle of her childhood: and how she would keep, through all her life. Indeed, she had a VERY turn-up nose, much more like a writing-desk?\' \'Come, we shall have somebody to talk about wasting IT. It\'s HIM.\' \'I don\'t believe there\'s an atom of meaning in.</p>'),('vi',13,'10.000 Khách truy cập Trang Web Trong Một Tháng: Được Đảm bảo','Provident sed iste dolore molestias in tempora. Non et et repudiandae aspernatur fugit est ut. Explicabo velit autem in qui velit aut.',NULL),('vi',14,'Mở khóa Bí mật Bán được vé Cao','Repellendus animi ratione consectetur accusamus. Odit quisquam aliquam aliquam eligendi. Aliquam voluptatem perferendis ullam repudiandae deserunt nobis.',NULL),('vi',15,'4 Lời khuyên của Chuyên gia về Cách Chọn Ví Nam Phù hợp','Maxime impedit sed omnis fugiat. Esse eos maiores magni aut. Natus ut ducimus ipsam.','<h2>Rabbit\'s voice along--\'Catch.</h2><p>Hatter trembled so, that he had taken his watch out of a procession,\' thought she, \'what would become of me? They\'re dreadfully fond of pretending to be a footman in livery came running out of breath, and till the Pigeon in a sulky tone; \'Seven jogged my elbow.\' On which Seven looked up and down looking for them, and then quietly marched off after the candle is blown out, for she was quite surprised to find that her shoulders were nowhere to be Number One,\' said Alice. \'Anything you like,\' said the White Rabbit, \'but it doesn\'t matter which way she put her hand on the breeze that followed them, the melancholy words:-- \'Soo--oop of the sort!\' said Alice. \'Of course they were\', said the King. The White Rabbit blew three blasts on the floor, as it could go, and broke to pieces against one of the Rabbit\'s voice; and Alice rather unwillingly took the opportunity of taking it away. She did it at last, and they went up to her in the distance, screaming with passion. She had quite forgotten.</p><p class=\"text-center\"><img src=\"http://ultra-news.local/storage/news/news-6-600x421.jpg\"></p><p>Mouse to Alice with one finger; and the moon, and memory, and muchness--you know you say it.\' \'That\'s nothing to do: once or twice, half hoping that they could not remember ever having seen in her lessons in here? Why, there\'s hardly room to open them again, and that\'s very like a steam-engine when she looked down at her rather inquisitively, and seemed to be no sort of life! I do hope it\'ll make me grow smaller, I can do no more, whatever happens. What WILL become of me?\' Luckily for Alice.</p><h2>Mock Turtle, \'they--you\'ve.</h2><p class=\"text-center\"><img src=\"http://ultra-news.local/storage/news/news-10-600x421.jpg\"></p><p>CHAPTER III. A Caucus-Race and a bright brass plate with the Gryphon. \'It all came different!\' the Mock Turtle said: \'advance twice, set to work throwing everything within her reach at the thought that SOMEBODY ought to speak, but for a conversation. Alice felt that this could not think of any that do,\' Alice hastily replied; \'at least--at least I know who I am! But I\'d better take him his fan and a long way. So they couldn\'t see it?\' So she went on, half to itself, half to itself, half to itself, half to herself, being rather proud of it: \'No room! No room!\' they cried out when they arrived, with a teacup in one hand, and a fan! Quick, now!\' And Alice was more and more sounds of broken glass. \'What a curious plan!\' exclaimed Alice. \'That\'s very important,\' the King said gravely, \'and go on till you come and join the dance. Would not, could not, would not, could not possibly reach it: she could see, when she had tired herself out with trying, the poor little thing sat down a very.</p><h2>However, it was neither more.</h2><h3>On which Seven looked up.</h3><p>Mock Turtle went on. Her listeners were perfectly quiet till she had never been so much surprised, that for the moment he was speaking, and this Alice would not join the dance. \'\"What matters it how far we go?\" his scaly friend replied. \"There is another shore, you know, upon the other bit. Her chin was pressed so closely against her foot, that there was no use speaking to it,\' she thought, and rightly too, that very few things indeed were really impossible. There seemed to quiver all over.</p><h3>This was not going to begin.</h3><p>Alice thought she might as well say,\' added the Dormouse, and repeated her question. \'Why did they live at the cook, and a pair of the Queen had ordered. They very soon finished off the subjects on his spectacles. \'Where shall I begin, please your Majesty?\' he asked. \'Begin at the bottom of a well--\' \'What did they draw the treacle from?\' \'You can draw water out of the water, and seemed to Alice to herself. Imagine her surprise, when the race was over. Alice was rather glad there WAS no one to.</p><h3>I\'ve fallen by this time.).</h3><p>Said he thanked the whiting kindly, but he now hastily began again, using the ink, that was trickling down his face, as long as there seemed to be rude, so she began again. \'I should have liked teaching it tricks very much, if--if I\'d only been the whiting,\' said Alice, surprised at her feet as the other.\' As soon as there was a dead silence instantly, and neither of the sea.\' \'I couldn\'t help it,\' said the Hatter. \'Does YOUR watch tell you what year it is?\' \'Of course twinkling begins with a.</p><h3>The Caterpillar and Alice.</h3><p>Queen to play with, and oh! ever so many lessons to learn! Oh, I shouldn\'t want YOURS: I don\'t understand. Where did they live on?\' said Alice, and looking at everything that was trickling down his brush, and had come to the heads of the room again, no wonder she felt sure she would feel with all speed back to her: its face in some alarm. This time there were TWO little shrieks, and more puzzled, but she could for sneezing. There was a table, with a growl, And concluded the banquet--] \'What IS.</p><h2>After a while she remembered.</h2><p class=\"text-center\"><img src=\"http://ultra-news.local/storage/news/news-20-600x421.jpg\"></p><p>Gryphon, \'she wants for to know what \"it\" means.\' \'I know SOMETHING interesting is sure to kill it in a moment: she looked up, but it was all ridges and furrows; the balls were live hedgehogs, the mallets live flamingoes, and the Queen said severely \'Who is it I can\'t understand it myself to begin lessons: you\'d only have to whisper a hint to Time, and round Alice, every now and then she noticed that the Mouse to Alice an excellent plan, no doubt, and very neatly and simply arranged; the only.</p>'),('vi',16,'Sexy Clutches: Cách Mua & Đeo Túi Clutch Thiết kế','Est provident quis deserunt qui. Nam explicabo sunt ullam optio. Vel suscipit exercitationem in tempora inventore voluptas excepturi.',NULL);
/*!40000 ALTER TABLE `posts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request_logs`
--

DROP TABLE IF EXISTS `request_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `request_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status_code` int DEFAULT NULL,
  `url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count` int NOT NULL DEFAULT '0',
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request_logs`
--

LOCK TABLES `request_logs` WRITE;
/*!40000 ALTER TABLE `request_logs` DISABLE KEYS */;
INSERT INTO `request_logs` VALUES (10,405,'http://ultra-news.local/admin/short-codes/ajax-get-admin-config/ai-writer',1,NULL,NULL,'2024-04-14 09:36:31','2024-04-14 09:36:31'),(11,405,'http://ultra-news.local',4,NULL,NULL,'2024-04-14 09:46:42','2024-04-14 09:50:24');
/*!40000 ALTER TABLE `request_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revisions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
INSERT INTO `revisions` VALUES (1,'Botble\\Blog\\Models\\Post',1,NULL,'author_id','1','6','2024-05-03 14:56:12','2024-05-03 14:56:12'),(2,'Botble\\Blog\\Models\\Post',1,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-05-03 14:56:12','2024-05-03 14:56:12'),(3,'Botble\\Blog\\Models\\Post',2,NULL,'author_id','1','3','2024-05-03 14:56:12','2024-05-03 14:56:12'),(4,'Botble\\Blog\\Models\\Post',2,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-05-03 14:56:12','2024-05-03 14:56:12'),(5,'Botble\\Blog\\Models\\Post',3,NULL,'author_id','1','2','2024-05-03 14:56:12','2024-05-03 14:56:12'),(6,'Botble\\Blog\\Models\\Post',3,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-05-03 14:56:12','2024-05-03 14:56:12'),(7,'Botble\\Blog\\Models\\Post',4,NULL,'author_id','1','2','2024-05-03 14:56:12','2024-05-03 14:56:12'),(8,'Botble\\Blog\\Models\\Post',4,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-05-03 14:56:12','2024-05-03 14:56:12'),(9,'Botble\\Blog\\Models\\Post',5,NULL,'author_id','1','10','2024-05-03 14:56:12','2024-05-03 14:56:12'),(10,'Botble\\Blog\\Models\\Post',5,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-05-03 14:56:12','2024-05-03 14:56:12'),(11,'Botble\\Blog\\Models\\Post',6,NULL,'author_id','1','3','2024-05-03 14:56:12','2024-05-03 14:56:12'),(12,'Botble\\Blog\\Models\\Post',6,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-05-03 14:56:12','2024-05-03 14:56:12'),(13,'Botble\\Blog\\Models\\Post',7,NULL,'author_id','1','4','2024-05-03 14:56:12','2024-05-03 14:56:12'),(14,'Botble\\Blog\\Models\\Post',7,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-05-03 14:56:12','2024-05-03 14:56:12'),(15,'Botble\\Blog\\Models\\Post',8,NULL,'author_id','1','3','2024-05-03 14:56:12','2024-05-03 14:56:12'),(16,'Botble\\Blog\\Models\\Post',8,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-05-03 14:56:12','2024-05-03 14:56:12'),(17,'Botble\\Blog\\Models\\Post',9,NULL,'author_id','1','6','2024-05-03 14:56:12','2024-05-03 14:56:12'),(18,'Botble\\Blog\\Models\\Post',9,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-05-03 14:56:12','2024-05-03 14:56:12'),(19,'Botble\\Blog\\Models\\Post',10,NULL,'author_id','1','2','2024-05-03 14:56:12','2024-05-03 14:56:12'),(20,'Botble\\Blog\\Models\\Post',10,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-05-03 14:56:12','2024-05-03 14:56:12'),(21,'Botble\\Blog\\Models\\Post',11,NULL,'author_id','1','4','2024-05-03 14:56:12','2024-05-03 14:56:12'),(22,'Botble\\Blog\\Models\\Post',11,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-05-03 14:56:12','2024-05-03 14:56:12'),(23,'Botble\\Blog\\Models\\Post',12,NULL,'author_id','1','2','2024-05-03 14:56:12','2024-05-03 14:56:12'),(24,'Botble\\Blog\\Models\\Post',12,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-05-03 14:56:12','2024-05-03 14:56:12'),(25,'Botble\\Blog\\Models\\Post',13,NULL,'author_id','1','6','2024-05-03 14:56:12','2024-05-03 14:56:12'),(26,'Botble\\Blog\\Models\\Post',13,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-05-03 14:56:12','2024-05-03 14:56:12'),(27,'Botble\\Blog\\Models\\Post',14,NULL,'author_id','1','6','2024-05-03 14:56:12','2024-05-03 14:56:12'),(28,'Botble\\Blog\\Models\\Post',14,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-05-03 14:56:12','2024-05-03 14:56:12'),(29,'Botble\\Blog\\Models\\Post',15,NULL,'author_id','1','8','2024-05-03 14:56:12','2024-05-03 14:56:12'),(30,'Botble\\Blog\\Models\\Post',15,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-05-03 14:56:12','2024-05-03 14:56:12'),(31,'Botble\\Blog\\Models\\Post',16,NULL,'author_id','1','6','2024-05-03 14:56:12','2024-05-03 14:56:12'),(32,'Botble\\Blog\\Models\\Post',16,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-05-03 14:56:12','2024-05-03 14:56:12'),(33,'Botble\\Blog\\Models\\Post',17,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-05-03 14:56:12','2024-05-03 14:56:12'),(34,'Botble\\Blog\\Models\\Post',18,NULL,'author_id','1','2','2024-05-03 14:56:12','2024-05-03 14:56:12'),(35,'Botble\\Blog\\Models\\Post',18,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-05-03 14:56:12','2024-05-03 14:56:12'),(36,'Botble\\Blog\\Models\\Post',19,NULL,'author_id','1','10','2024-05-03 14:56:12','2024-05-03 14:56:12'),(37,'Botble\\Blog\\Models\\Post',19,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-05-03 14:56:12','2024-05-03 14:56:12'),(38,'Botble\\Blog\\Models\\Post',20,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-05-03 14:56:12','2024-05-03 14:56:12'),(39,'Botble\\Blog\\Models\\Post',1,NULL,'author_id','1','10','2024-05-03 15:00:40','2024-05-03 15:00:40'),(40,'Botble\\Blog\\Models\\Post',1,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-05-03 15:00:40','2024-05-03 15:00:40'),(41,'Botble\\Blog\\Models\\Post',2,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-05-03 15:00:40','2024-05-03 15:00:40'),(42,'Botble\\Blog\\Models\\Post',3,NULL,'author_id','1','5','2024-05-03 15:00:40','2024-05-03 15:00:40'),(43,'Botble\\Blog\\Models\\Post',3,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-05-03 15:00:40','2024-05-03 15:00:40'),(44,'Botble\\Blog\\Models\\Post',4,NULL,'author_id','1','5','2024-05-03 15:00:40','2024-05-03 15:00:40'),(45,'Botble\\Blog\\Models\\Post',4,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-05-03 15:00:40','2024-05-03 15:00:40'),(46,'Botble\\Blog\\Models\\Post',5,NULL,'author_id','1','2','2024-05-03 15:00:40','2024-05-03 15:00:40'),(47,'Botble\\Blog\\Models\\Post',5,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-05-03 15:00:40','2024-05-03 15:00:40'),(48,'Botble\\Blog\\Models\\Post',6,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-05-03 15:00:40','2024-05-03 15:00:40'),(49,'Botble\\Blog\\Models\\Post',7,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-05-03 15:00:40','2024-05-03 15:00:40'),(50,'Botble\\Blog\\Models\\Post',8,NULL,'author_id','1','9','2024-05-03 15:00:40','2024-05-03 15:00:40'),(51,'Botble\\Blog\\Models\\Post',8,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-05-03 15:00:40','2024-05-03 15:00:40'),(52,'Botble\\Blog\\Models\\Post',9,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-05-03 15:00:40','2024-05-03 15:00:40'),(53,'Botble\\Blog\\Models\\Post',10,NULL,'author_id','1','6','2024-05-03 15:00:40','2024-05-03 15:00:40'),(54,'Botble\\Blog\\Models\\Post',10,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-05-03 15:00:40','2024-05-03 15:00:40'),(55,'Botble\\Blog\\Models\\Post',11,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-05-03 15:00:40','2024-05-03 15:00:40'),(56,'Botble\\Blog\\Models\\Post',12,NULL,'author_id','1','4','2024-05-03 15:00:40','2024-05-03 15:00:40'),(57,'Botble\\Blog\\Models\\Post',12,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-05-03 15:00:40','2024-05-03 15:00:40'),(58,'Botble\\Blog\\Models\\Post',13,NULL,'author_id','1','10','2024-05-03 15:00:40','2024-05-03 15:00:40'),(59,'Botble\\Blog\\Models\\Post',13,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-05-03 15:00:40','2024-05-03 15:00:40'),(60,'Botble\\Blog\\Models\\Post',14,NULL,'author_id','1','9','2024-05-03 15:00:40','2024-05-03 15:00:40'),(61,'Botble\\Blog\\Models\\Post',14,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-05-03 15:00:40','2024-05-03 15:00:40'),(62,'Botble\\Blog\\Models\\Post',15,NULL,'author_id','1','8','2024-05-03 15:00:40','2024-05-03 15:00:40'),(63,'Botble\\Blog\\Models\\Post',15,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-05-03 15:00:40','2024-05-03 15:00:40'),(64,'Botble\\Blog\\Models\\Post',16,NULL,'author_id','1','2','2024-05-03 15:00:40','2024-05-03 15:00:40'),(65,'Botble\\Blog\\Models\\Post',16,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-05-03 15:00:40','2024-05-03 15:00:40'),(66,'Botble\\Blog\\Models\\Post',17,NULL,'author_id','1','5','2024-05-03 15:00:40','2024-05-03 15:00:40'),(67,'Botble\\Blog\\Models\\Post',17,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-05-03 15:00:40','2024-05-03 15:00:40'),(68,'Botble\\Blog\\Models\\Post',18,NULL,'author_id','1','10','2024-05-03 15:00:40','2024-05-03 15:00:40'),(69,'Botble\\Blog\\Models\\Post',18,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-05-03 15:00:40','2024-05-03 15:00:40'),(70,'Botble\\Blog\\Models\\Post',19,NULL,'author_id','1','6','2024-05-03 15:00:40','2024-05-03 15:00:40'),(71,'Botble\\Blog\\Models\\Post',19,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-05-03 15:00:40','2024-05-03 15:00:40'),(72,'Botble\\Blog\\Models\\Post',20,NULL,'author_id','1','3','2024-05-03 15:00:40','2024-05-03 15:00:40'),(73,'Botble\\Blog\\Models\\Post',20,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-05-03 15:00:40','2024-05-03 15:00:40');
/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_users` (
  `user_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_users_user_id_index` (`user_id`),
  KEY `role_users_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_users`
--

LOCK TABLES `role_users` WRITE;
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`),
  KEY `roles_created_by_index` (`created_by`),
  KEY `roles_updated_by_index` (`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Admin','{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.cms\":true,\"core.manage.license\":true,\"systems.cronjob\":true,\"core.tools\":true,\"tools.data-synchronize\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.index\":true,\"settings.common\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.admin-appearance\":true,\"settings.cache\":true,\"settings.datatables\":true,\"settings.email.rules\":true,\"settings.website-tracking\":true,\"settings.others\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"optimize.settings\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"theme.robots-txt\":true,\"widgets.index\":true,\"ads.index\":true,\"ads.create\":true,\"ads.edit\":true,\"ads.destroy\":true,\"ads.settings\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"analytics.settings\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"blog.settings\":true,\"posts.export\":true,\"posts.import\":true,\"captcha.settings\":true,\"comment.index\":true,\"comment.create\":true,\"comment.edit\":true,\"comment.destroy\":true,\"comment-user.index\":true,\"comment-user.create\":true,\"comment-user.edit\":true,\"comment-user.destroy\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"contact.settings\":true,\"galleries.index\":true,\"galleries.create\":true,\"galleries.edit\":true,\"galleries.destroy\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"member.index\":true,\"member.create\":true,\"member.edit\":true,\"member.destroy\":true,\"member.settings\":true,\"newsletter.index\":true,\"newsletter.destroy\":true,\"newsletter.settings\":true,\"post-collection.index\":true,\"post-collection.create\":true,\"post-collection.edit\":true,\"post-collection.destroy\":true,\"pro-posts.index\":true,\"pro-posts.create\":true,\"pro-posts.edit\":true,\"pro-posts.destroy\":true,\"request-log.index\":true,\"request-log.destroy\":true,\"social-login.settings\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true}','Admin users role',1,1,1,'2024-05-03 15:00:22','2024-05-03 15:00:22');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (2,'api_enabled','0',NULL,'2024-05-03 15:00:23'),(3,'activated_plugins','[\"language\",\"language-advanced\",\"ads\",\"ai-writer\",\"analytics\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"comment\",\"contact\",\"cookie-consent\",\"gallery\",\"member\",\"newsletter\",\"post-collection\",\"post-scheduler\",\"pro-posts\",\"request-log\",\"rss-feed\",\"social-login\",\"toc\",\"translation\"]',NULL,'2024-05-03 15:00:23'),(4,'theme','ultra',NULL,'2024-05-03 15:00:23'),(5,'show_admin_bar','1',NULL,'2024-05-03 15:00:23'),(6,'language_hide_default','1',NULL,NULL),(7,'language_switcher_display','dropdown',NULL,NULL),(8,'language_display','all',NULL,NULL),(9,'language_hide_languages','[]',NULL,NULL),(10,'admin_logo','general/logo-white.png',NULL,NULL),(11,'admin_favicon','general/favicon.png',NULL,NULL),(14,'theme-ultra-site_title','UltraNews - Laravel News and Magazine Multilingual System','2024-05-03 15:00:46','2024-05-03 15:00:46'),(15,'theme-ultra-seo_description','UltraNews – Laravel News and Magazine Multilingual System is a complete solution for any kind of News, Magazine, and Blog Portal. This cms Includes almost everything you need. This CMS (Content Mangement System) Administrator System or Backend you can use this Laravel 8 framework.','2024-05-03 15:00:46','2024-05-03 15:00:46'),(16,'theme-ultra-seo_og_image','general/screenshot.png','2024-05-03 15:00:46','2024-05-03 15:00:46'),(17,'theme-ultra-copyright','©2024 UltraNews - ','2024-05-03 15:00:46','2024-05-03 15:00:46'),(18,'theme-ultra-designed_by','| Design by AliThemes','2024-05-03 15:00:46','2024-05-03 15:00:46'),(19,'theme-ultra-favicon','general/favicon.png','2024-05-03 15:00:46','2024-05-03 15:00:46'),(20,'theme-ultra-website','https://thesky9.com','2024-05-03 15:00:46','2024-05-03 15:00:46'),(21,'theme-ultra-contact_email','support@thesky9.com','2024-05-03 15:00:46','2024-05-03 15:00:46'),(22,'theme-ultra-site_description','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Odio suspendisse leo neque iaculis molestie sagittis maecenas aenean eget molestie sagittis.','2024-05-03 15:00:46','2024-05-03 15:00:46'),(23,'theme-ultra-phone','+(123) 345-6789','2024-05-03 15:00:46','2024-05-03 15:00:46'),(24,'theme-ultra-email','contact@gmail.com','2024-05-03 15:00:46','2024-05-03 15:00:46'),(25,'theme-ultra-address','214 West Arnold St. New York, NY 10002','2024-05-03 15:00:46','2024-05-03 15:00:46'),(26,'theme-ultra-cookie_consent_message','Your experience on this site will be improved by allowing cookies ','2024-05-03 15:00:46','2024-05-03 15:00:46'),(27,'theme-ultra-cookie_consent_learn_more_url','http://ultra-news.local/cookie-policy','2024-05-03 15:00:46','2024-05-03 15:00:46'),(28,'theme-ultra-cookie_consent_learn_more_text','Cookie Policy','2024-05-03 15:00:46','2024-05-03 15:00:46'),(29,'theme-ultra-homepage_id','1','2024-05-03 15:00:46','2024-05-03 15:00:46'),(30,'theme-ultra-blog_page_id','4','2024-05-03 15:00:46','2024-05-03 15:00:46'),(31,'theme-ultra-single_layout','default','2024-05-03 15:00:46','2024-05-03 15:00:46'),(32,'theme-ultra-single_title_layout','top-full','2024-05-03 15:00:46','2024-05-03 15:00:46'),(33,'theme-ultra-action_title','All you need to build new site','2024-05-03 15:00:46','2024-05-03 15:00:46'),(34,'theme-ultra-action_button_text','Buy Now','2024-05-03 15:00:46','2024-05-03 15:00:46'),(35,'theme-ultra-action_button_url','https://codecanyon.net/user/thesky9','2024-05-03 15:00:46','2024-05-03 15:00:46'),(36,'theme-ultra-logo','general/logo.png','2024-05-03 15:00:46','2024-05-03 15:00:46'),(37,'theme-ultra-logo_mobile','general/logo-mobile.png','2024-05-03 15:00:46','2024-05-03 15:00:46'),(38,'theme-ultra-logo_tablet','general/logo-tablet.png','2024-05-03 15:00:46','2024-05-03 15:00:46'),(39,'theme-ultra-logo_white','general/logo-white.png','2024-05-03 15:00:46','2024-05-03 15:00:46'),(40,'theme-ultra-img_loading','general/img-loading.jpg','2024-05-03 15:00:46','2024-05-03 15:00:46'),(41,'theme-ultra-font_heading','Arimo','2024-05-03 15:00:46','2024-05-03 15:00:46'),(42,'theme-ultra-font_body','Roboto','2024-05-03 15:00:46','2024-05-03 15:00:46'),(43,'theme-ultra-color_primary','#87c6e3','2024-05-03 15:00:46','2024-05-03 15:00:46'),(44,'theme-ultra-color_secondary','#455265','2024-05-03 15:00:46','2024-05-03 15:00:46'),(45,'theme-ultra-color_success','#76e1c6','2024-05-03 15:00:46','2024-05-03 15:00:46'),(46,'theme-ultra-color_danger','#f0a9a9','2024-05-03 15:00:46','2024-05-03 15:00:46'),(47,'theme-ultra-color_warning','#e6bf7e','2024-05-03 15:00:46','2024-05-03 15:00:46'),(48,'theme-ultra-color_info','#58c1c8','2024-05-03 15:00:46','2024-05-03 15:00:46'),(49,'theme-ultra-color_light','#F3F3F3','2024-05-03 15:00:46','2024-05-03 15:00:46'),(50,'theme-ultra-color_dark','#111111','2024-05-03 15:00:46','2024-05-03 15:00:46'),(51,'theme-ultra-color_link','#222831','2024-05-03 15:00:46','2024-05-03 15:00:46'),(52,'theme-ultra-color_white','#FFFFFF','2024-05-03 15:00:46','2024-05-03 15:00:46'),(53,'theme-ultra-header_style','style-1','2024-05-03 15:00:46','2024-05-03 15:00:46'),(54,'theme-ultra-preloader_enabled','0','2024-05-03 15:00:46','2024-05-03 15:00:46'),(55,'theme-ultra-allow_account_login','yes','2024-05-03 15:00:46','2024-05-03 15:00:46'),(56,'theme-ultra-comment_type_in_post','member','2024-05-03 15:00:46','2024-05-03 15:00:46'),(57,'theme-ultra-recently_viewed_posts_enable','yes','2024-05-03 15:00:46','2024-05-03 15:00:46'),(58,'theme-ultra-vi-site_title','UltraNews - Laravel News and Magazine Multilingual System','2024-05-03 15:00:46','2024-05-03 15:00:46'),(59,'theme-ultra-vi-seo_description','UltraNews – Laravel News and Magazine Multilingual System is a complete solution for any kind of News, Magazine, and Blog Portal. This cms Includes almost everything you need. This CMS (Content Mangement System) Administrator System or Backend you can use this Laravel 8 framework.','2024-05-03 15:00:46','2024-05-03 15:00:46'),(60,'theme-ultra-vi-seo_og_image','general/screenshot.png','2024-05-03 15:00:46','2024-05-03 15:00:46'),(61,'theme-ultra-vi-copyright','©2024 Thiết kế bởi AliThemes ','2024-05-03 15:00:46','2024-05-03 15:00:46'),(62,'theme-ultra-vi-designed_by','| Design by AliThemes','2024-05-03 15:00:46','2024-05-03 15:00:46'),(63,'theme-ultra-vi-favicon','general/favicon.png','2024-05-03 15:00:46','2024-05-03 15:00:46'),(64,'theme-ultra-vi-website','https://thesky9.com','2024-05-03 15:00:46','2024-05-03 15:00:46'),(65,'theme-ultra-vi-contact_email','support@thesky9.com','2024-05-03 15:00:46','2024-05-03 15:00:46'),(66,'theme-ultra-vi-site_description','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Odio suspendisse leo neque iaculis molestie sagittis maecenas aenean eget molestie sagittis.','2024-05-03 15:00:46','2024-05-03 15:00:46'),(67,'theme-ultra-vi-phone','+(123) 345-6789','2024-05-03 15:00:46','2024-05-03 15:00:46'),(68,'theme-ultra-vi-email','contact@gmail.com','2024-05-03 15:00:46','2024-05-03 15:00:46'),(69,'theme-ultra-vi-address','214 West Arnold St. New York, NY 10002','2024-05-03 15:00:46','2024-05-03 15:00:46'),(70,'theme-ultra-vi-cookie_consent_message','Trải nghiệm của bạn trên trang web này sẽ được cải thiện bằng cách cho phép cookie ','2024-05-03 15:00:46','2024-05-03 15:00:46'),(71,'theme-ultra-vi-cookie_consent_learn_more_url','http://ultra-news.local/cookie-policy','2024-05-03 15:00:46','2024-05-03 15:00:46'),(72,'theme-ultra-vi-cookie_consent_learn_more_text','Cookie Policy','2024-05-03 15:00:46','2024-05-03 15:00:46'),(73,'theme-ultra-vi-homepage_id','1','2024-05-03 15:00:46','2024-05-03 15:00:46'),(74,'theme-ultra-vi-blog_page_id','4','2024-05-03 15:00:46','2024-05-03 15:00:46'),(75,'theme-ultra-vi-single_layout','default','2024-05-03 15:00:46','2024-05-03 15:00:46'),(76,'theme-ultra-vi-single_title_layout','top-full','2024-05-03 15:00:46','2024-05-03 15:00:46'),(77,'theme-ultra-vi-logo','general/logo.png','2024-05-03 15:00:46','2024-05-03 15:00:46'),(78,'theme-ultra-vi-logo_mobile','general/logo-mobile.png','2024-05-03 15:00:46','2024-05-03 15:00:46'),(79,'theme-ultra-vi-logo_tablet','general/logo-tablet.png','2024-05-03 15:00:46','2024-05-03 15:00:46'),(80,'theme-ultra-vi-logo_white','general/logo-white.png','2024-05-03 15:00:46','2024-05-03 15:00:46'),(81,'theme-ultra-vi-action_title','Bạn cần tạo mới website','2024-05-03 15:00:46','2024-05-03 15:00:46'),(82,'theme-ultra-vi-action_button_text','Mua Ngay','2024-05-03 15:00:46','2024-05-03 15:00:46'),(83,'theme-ultra-vi-action_button_url','https://codecanyon.net/user/thesky9','2024-05-03 15:00:46','2024-05-03 15:00:46'),(84,'theme-ultra-vi-font_heading','Arimo','2024-05-03 15:00:46','2024-05-03 15:00:46'),(85,'theme-ultra-vi-font_body','Roboto','2024-05-03 15:00:46','2024-05-03 15:00:46'),(86,'theme-ultra-vi-color_brand_1','#ffcda3','2024-05-03 15:00:46','2024-05-03 15:00:46'),(87,'theme-ultra-vi-color_brand_2','#fce2ce','2024-05-03 15:00:46','2024-05-03 15:00:46'),(88,'theme-ultra-vi-color_brand_3','#ffede5','2024-05-03 15:00:46','2024-05-03 15:00:46'),(89,'theme-ultra-vi-color_brand_4','#fff5ef','2024-05-03 15:00:46','2024-05-03 15:00:46'),(90,'theme-ultra-vi-color_primary','#87c6e3','2024-05-03 15:00:46','2024-05-03 15:00:46'),(91,'theme-ultra-vi-color_secondary','#455265','2024-05-03 15:00:46','2024-05-03 15:00:46'),(92,'theme-ultra-vi-color_success','#76e1c6','2024-05-03 15:00:46','2024-05-03 15:00:46'),(93,'theme-ultra-vi-color_danger','#f0a9a9','2024-05-03 15:00:46','2024-05-03 15:00:46'),(94,'theme-ultra-vi-color_warning','#e6bf7e','2024-05-03 15:00:46','2024-05-03 15:00:46'),(95,'theme-ultra-vi-color_info','#58c1c8','2024-05-03 15:00:46','2024-05-03 15:00:46'),(96,'theme-ultra-vi-color_light','#F3F3F3','2024-05-03 15:00:46','2024-05-03 15:00:46'),(97,'theme-ultra-vi-color_dark','#111111','2024-05-03 15:00:46','2024-05-03 15:00:46'),(98,'theme-ultra-vi-color_link','#222831','2024-05-03 15:00:46','2024-05-03 15:00:46'),(99,'theme-ultra-vi-color_white','#FFFFFF','2024-05-03 15:00:46','2024-05-03 15:00:46'),(100,'theme-ultra-vi-header_style','style-1','2024-05-03 15:00:46','2024-05-03 15:00:46'),(101,'theme-ultra-vi-preloader_enabled','0','2024-05-03 15:00:46','2024-05-03 15:00:46'),(102,'theme-ultra-vi-allow_account_login','yes','2024-05-03 15:00:46','2024-05-03 15:00:46'),(103,'theme-ultra-vi-comment_type_in_post','member','2024-05-03 15:00:46','2024-05-03 15:00:46'),(104,'theme-ultra-vi-recently_viewed_posts_enable','yes','2024-05-03 15:00:46','2024-05-03 15:00:46'),(105,'theme-ultra-social_links','[[{\"key\":\"social-name\",\"value\":\"Facebook\"},{\"key\":\"social-icon\",\"value\":\"facebook\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"},{\"key\":\"social-total-follow\",\"value\":\"65000\"}],[{\"key\":\"social-name\",\"value\":\"Twitter\"},{\"key\":\"social-icon\",\"value\":\"twitter\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"},{\"key\":\"social-total-follow\",\"value\":\"12000\"}],[{\"key\":\"social-name\",\"value\":\"Instagram\"},{\"key\":\"social-icon\",\"value\":\"instagram\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"},{\"key\":\"social-total-follow\",\"value\":\"678\"}],[{\"key\":\"social-name\",\"value\":\"Linkedin\"},{\"key\":\"social-icon\",\"value\":\"linkedin\"},{\"key\":\"social-url\",\"value\":\"\"},{\"key\":\"social-total-follow\",\"value\":\"90\"}],[{\"key\":\"social-name\",\"value\":\"Pinterest\"},{\"key\":\"social-icon\",\"value\":\"pinterest\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}]]',NULL,NULL),(106,'theme-vi-ultra-social_links','[[{\"key\":\"social-name\",\"value\":\"Facebook\"},{\"key\":\"social-icon\",\"value\":\"facebook\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"},{\"key\":\"social-total-follow\",\"value\":\"65000\"}],[{\"key\":\"social-name\",\"value\":\"Twitter\"},{\"key\":\"social-icon\",\"value\":\"twitter\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"},{\"key\":\"social-total-follow\",\"value\":\"12000\"}],[{\"key\":\"social-name\",\"value\":\"Instagram\"},{\"key\":\"social-icon\",\"value\":\"instagram\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"},{\"key\":\"social-total-follow\",\"value\":\"678\"}],[{\"key\":\"social-name\",\"value\":\"Linkedin\"},{\"key\":\"social-icon\",\"value\":\"linkedin\"},{\"key\":\"social-url\",\"value\":\"\"},{\"key\":\"social-total-follow\",\"value\":\"90\"}],[{\"key\":\"social-name\",\"value\":\"Pinterest\"},{\"key\":\"social-icon\",\"value\":\"pinterest\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}]]',NULL,NULL),(107,'media_random_hash','062dafbdf8da9c03f64c58d1f95cfce1',NULL,NULL),(108,'comment_enable','1',NULL,NULL),(109,'comment_menu_enable','[\"Botble\\\\Blog\\\\Models\\\\Post\"]',NULL,NULL),(110,'plugin_comment_copyright','',NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs`
--

DROP TABLE IF EXISTS `slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slugs_reference_id_index` (`reference_id`),
  KEY `slugs_key_index` (`key`),
  KEY `slugs_prefix_index` (`prefix`),
  KEY `slugs_reference_index` (`reference_id`,`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'homepage',1,'Botble\\Page\\Models\\Page','','2024-05-03 15:00:23','2024-05-03 15:00:23'),(2,'home-2',2,'Botble\\Page\\Models\\Page','','2024-05-03 15:00:23','2024-05-03 15:00:23'),(3,'home-3',3,'Botble\\Page\\Models\\Page','','2024-05-03 15:00:23','2024-05-03 15:00:23'),(4,'blog',4,'Botble\\Page\\Models\\Page','','2024-05-03 15:00:23','2024-05-03 15:00:23'),(5,'category-list',5,'Botble\\Page\\Models\\Page','','2024-05-03 15:00:23','2024-05-03 15:00:23'),(6,'category-grid',6,'Botble\\Page\\Models\\Page','','2024-05-03 15:00:23','2024-05-03 15:00:23'),(7,'category-metro',7,'Botble\\Page\\Models\\Page','','2024-05-03 15:00:23','2024-05-03 15:00:23'),(8,'contact',8,'Botble\\Page\\Models\\Page','','2024-05-03 15:00:23','2024-05-03 15:00:23'),(9,'about-us',9,'Botble\\Page\\Models\\Page','','2024-05-03 15:00:23','2024-05-03 15:00:23'),(10,'cookie-policy',10,'Botble\\Page\\Models\\Page','','2024-05-03 15:00:23','2024-05-03 15:00:23'),(11,'perfect',1,'Botble\\Gallery\\Models\\Gallery','galleries','2024-05-03 15:00:27','2024-05-03 15:00:27'),(12,'new-day',2,'Botble\\Gallery\\Models\\Gallery','galleries','2024-05-03 15:00:27','2024-05-03 15:00:27'),(13,'happy-day',3,'Botble\\Gallery\\Models\\Gallery','galleries','2024-05-03 15:00:27','2024-05-03 15:00:27'),(14,'nature',4,'Botble\\Gallery\\Models\\Gallery','galleries','2024-05-03 15:00:27','2024-05-03 15:00:27'),(15,'morning',5,'Botble\\Gallery\\Models\\Gallery','galleries','2024-05-03 15:00:27','2024-05-03 15:00:27'),(16,'photography',6,'Botble\\Gallery\\Models\\Gallery','galleries','2024-05-03 15:00:27','2024-05-03 15:00:27'),(17,'design',1,'Botble\\Blog\\Models\\Category','','2024-05-03 15:00:35','2024-05-03 15:00:35'),(18,'lifestyle',2,'Botble\\Blog\\Models\\Category','','2024-05-03 15:00:35','2024-05-03 15:00:35'),(19,'travel-tips',3,'Botble\\Blog\\Models\\Category','','2024-05-03 15:00:35','2024-05-03 15:00:35'),(20,'healthy',4,'Botble\\Blog\\Models\\Category','','2024-05-03 15:00:35','2024-05-03 15:00:35'),(21,'fashion',5,'Botble\\Blog\\Models\\Category','','2024-05-03 15:00:35','2024-05-03 15:00:35'),(22,'hotel',6,'Botble\\Blog\\Models\\Category','','2024-05-03 15:00:35','2024-05-03 15:00:35'),(23,'nature',7,'Botble\\Blog\\Models\\Category','','2024-05-03 15:00:35','2024-05-03 15:00:35'),(24,'general',1,'Botble\\Blog\\Models\\Tag','tag','2024-05-03 15:00:36','2024-05-03 15:00:36'),(25,'beauty',2,'Botble\\Blog\\Models\\Tag','tag','2024-05-03 15:00:36','2024-05-03 15:00:36'),(26,'fashion',3,'Botble\\Blog\\Models\\Tag','tag','2024-05-03 15:00:36','2024-05-03 15:00:36'),(27,'lifestyle',4,'Botble\\Blog\\Models\\Tag','tag','2024-05-03 15:00:36','2024-05-03 15:00:36'),(28,'travel',5,'Botble\\Blog\\Models\\Tag','tag','2024-05-03 15:00:36','2024-05-03 15:00:36'),(29,'business',6,'Botble\\Blog\\Models\\Tag','tag','2024-05-03 15:00:36','2024-05-03 15:00:36'),(30,'health',7,'Botble\\Blog\\Models\\Tag','tag','2024-05-03 15:00:36','2024-05-03 15:00:36'),(31,'this-year-enjoy-the-color-of-festival-with-amazing-holi-gifts-ideas',1,'Botble\\Blog\\Models\\Post','','2024-05-03 15:00:36','2024-05-03 15:00:36'),(32,'the-world-caters-to-average-people-and-mediocre-lifestyles',2,'Botble\\Blog\\Models\\Post','','2024-05-03 15:00:36','2024-05-03 15:00:36'),(33,'not-a-bit-of-hesitation-you-better-think-twice',3,'Botble\\Blog\\Models\\Post','','2024-05-03 15:00:36','2024-05-03 15:00:36'),(34,'we-got-a-right-to-pick-a-little-fight-bonanza',4,'Botble\\Blog\\Models\\Post','','2024-05-03 15:00:36','2024-05-03 15:00:36'),(35,'my-entrance-exam-was-on-a-book-of-matches',5,'Botble\\Blog\\Models\\Post','','2024-05-03 15:00:36','2024-05-03 15:00:36'),(36,'essential-qualities-of-highly-successful-music',6,'Botble\\Blog\\Models\\Post','','2024-05-03 15:00:36','2024-05-03 15:00:36'),(37,'why-teamwork-really-makes-the-dream-work',7,'Botble\\Blog\\Models\\Post','','2024-05-03 15:00:36','2024-05-03 15:00:36'),(38,'9-things-i-love-about-shaving-my-head-during-quarantine',8,'Botble\\Blog\\Models\\Post','','2024-05-03 15:00:36','2024-05-03 15:00:36'),(39,'the-litigants-on-the-screen-are-not-actors',9,'Botble\\Blog\\Models\\Post','','2024-05-03 15:00:36','2024-05-03 15:00:36'),(40,'imagine-losing-20-pounds-in-14-days',10,'Botble\\Blog\\Models\\Post','','2024-05-03 15:00:36','2024-05-03 15:00:36'),(41,'are-you-still-using-that-slow-old-typewriter',11,'Botble\\Blog\\Models\\Post','','2024-05-03 15:00:36','2024-05-03 15:00:36'),(42,'a-skin-cream-thats-proven-to-work',12,'Botble\\Blog\\Models\\Post','','2024-05-03 15:00:36','2024-05-03 15:00:36'),(43,'10-reasons-to-start-your-own-profitable-website',13,'Botble\\Blog\\Models\\Post','','2024-05-03 15:00:36','2024-05-03 15:00:36'),(44,'level-up-your-live-streams-with-automated-captions-and-more',14,'Botble\\Blog\\Models\\Post','','2024-05-03 15:00:36','2024-05-03 15:00:36'),(45,'simple-ways-to-reduce-your-unwanted-wrinkles',15,'Botble\\Blog\\Models\\Post','','2024-05-03 15:00:36','2024-05-03 15:00:36'),(46,'apple-imac-with-retina-5k-display-review',16,'Botble\\Blog\\Models\\Post','','2024-05-03 15:00:36','2024-05-03 15:00:36'),(47,'10000-web-site-visitors-in-one-monthguaranteed',17,'Botble\\Blog\\Models\\Post','','2024-05-03 15:00:36','2024-05-03 15:00:36'),(48,'unlock-the-secrets-of-selling-high-ticket-items',18,'Botble\\Blog\\Models\\Post','','2024-05-03 15:00:36','2024-05-03 15:00:36'),(49,'4-expert-tips-on-how-to-choose-the-right-mens-wallet',19,'Botble\\Blog\\Models\\Post','','2024-05-03 15:00:36','2024-05-03 15:00:36'),(50,'sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',20,'Botble\\Blog\\Models\\Post','','2024-05-03 15:00:36','2024-05-03 15:00:36'),(51,'smith',1,'Botble\\Member\\Models\\Member','author','2024-05-03 15:00:38','2024-05-03 15:00:47'),(52,'kemmer',2,'Botble\\Member\\Models\\Member','author','2024-05-03 15:00:38','2024-05-03 15:00:47'),(53,'johnson',3,'Botble\\Member\\Models\\Member','author','2024-05-03 15:00:38','2024-05-03 15:00:47'),(54,'west',4,'Botble\\Member\\Models\\Member','author','2024-05-03 15:00:38','2024-05-03 15:00:47'),(55,'predovic',5,'Botble\\Member\\Models\\Member','author','2024-05-03 15:00:39','2024-05-03 15:00:47'),(56,'toy',6,'Botble\\Member\\Models\\Member','author','2024-05-03 15:00:39','2024-05-03 15:00:47'),(57,'grady',7,'Botble\\Member\\Models\\Member','author','2024-05-03 15:00:39','2024-05-03 15:00:47'),(58,'berge',8,'Botble\\Member\\Models\\Member','author','2024-05-03 15:00:39','2024-05-03 15:00:47'),(59,'krajcik',9,'Botble\\Member\\Models\\Member','author','2024-05-03 15:00:40','2024-05-03 15:00:47'),(60,'vandervort',10,'Botble\\Member\\Models\\Member','author','2024-05-03 15:00:40','2024-05-03 15:00:47'),(61,'runolfsson',11,'Botble\\Member\\Models\\Member','author','2024-05-03 15:00:40','2024-05-03 15:00:47'),(62,'editors-picked',1,'Botble\\Page\\Models\\Page','','2024-05-03 15:00:44','2024-05-03 15:00:44'),(63,'recommended-posts',2,'Botble\\Page\\Models\\Page','','2024-05-03 15:00:44','2024-05-03 15:00:44'),(64,'bai-viet-hay',3,'Botble\\Page\\Models\\Page','','2024-05-03 15:00:44','2024-05-03 15:00:44'),(65,'recommended-posts',4,'Botble\\Page\\Models\\Page','','2024-05-03 15:00:44','2024-05-03 15:00:44'),(66,'editors-picked',1,'Botble\\PostCollection\\Models\\PostCollection','posts-collection','2024-05-03 15:00:47','2024-05-03 15:00:47'),(67,'recommended-posts',2,'Botble\\PostCollection\\Models\\PostCollection','posts-collection','2024-05-03 15:00:47','2024-05-03 15:00:47'),(68,'bai-viet-hay',3,'Botble\\PostCollection\\Models\\PostCollection','posts-collection','2024-05-03 15:00:47','2024-05-03 15:00:47'),(69,'recommended-posts',4,'Botble\\PostCollection\\Models\\PostCollection','posts-collection','2024-05-03 15:00:47','2024-05-03 15:00:47');
/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs_translations`
--

DROP TABLE IF EXISTS `slugs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slugs_id` bigint unsigned NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`lang_code`,`slugs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs_translations`
--

LOCK TABLES `slugs_translations` WRITE;
/*!40000 ALTER TABLE `slugs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `slugs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'General',1,'Botble\\ACL\\Models\\User','','published','2024-05-03 15:00:36','2024-05-03 15:00:36'),(2,'Beauty',1,'Botble\\ACL\\Models\\User','','published','2024-05-03 15:00:36','2024-05-03 15:00:36'),(3,'Fashion',1,'Botble\\ACL\\Models\\User','','published','2024-05-03 15:00:36','2024-05-03 15:00:36'),(4,'Lifestyle',1,'Botble\\ACL\\Models\\User','','published','2024-05-03 15:00:36','2024-05-03 15:00:36'),(5,'Travel',1,'Botble\\ACL\\Models\\User','','published','2024-05-03 15:00:36','2024-05-03 15:00:36'),(6,'Business',1,'Botble\\ACL\\Models\\User','','published','2024-05-03 15:00:36','2024-05-03 15:00:36'),(7,'Health',1,'Botble\\ACL\\Models\\User','','published','2024-05-03 15:00:36','2024-05-03 15:00:36');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_translations`
--

DROP TABLE IF EXISTS `tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_translations`
--

LOCK TABLES `tags_translations` WRITE;
/*!40000 ALTER TABLE `tags_translations` DISABLE KEYS */;
INSERT INTO `tags_translations` VALUES ('vi',1,'Chung',NULL),('vi',2,'Làm đẹp',NULL),('vi',3,'Thời trang',NULL),('vi',4,'Du lịch và ẩm thực',NULL),('vi',5,'Kinh doanh',NULL),('vi',6,'Sức khỏe',NULL),('vi',7,'Thời sự',NULL);
/*!40000 ALTER TABLE `tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_meta`
--

DROP TABLE IF EXISTS `user_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_meta_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_meta`
--

LOCK TABLES `user_meta` WRITE;
/*!40000 ALTER TABLE `user_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` bigint unsigned DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'wiegand.brisa@koepp.net',NULL,'$2y$12$LD8iAgSUDIosW1aAyKtN6OL.MlwnhLIkz0gJeoEDi.kxSodOcuV5q',NULL,'2024-05-03 15:00:22','2024-05-03 15:00:22','Ryann','Bogisich','admin',NULL,1,1,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'SocialsWidget','primary_sidebar','ultra',0,'{\"id\":\"SocialsWidget\",\"title\":\"Follow us\"}','2024-05-03 15:00:45','2024-05-03 15:00:45'),(2,'AdsWidget','primary_sidebar','ultra',0,'{\"id\":\"AdsWidget\",\"ads_location\":\"top-sidebar-ads\"}','2024-05-03 15:00:45','2024-05-03 15:00:45'),(3,'CategoriesMenuWidget','primary_sidebar','ultra',0,'{\"id\":\"CategoriesMenuWidget\"}','2024-05-03 15:00:45','2024-05-03 15:00:45'),(4,'LastestPostsWidget','primary_sidebar','ultra',0,'{\"id\":\"LastestPostsWidget\",\"name\":\"Lastest Post\",\"number_display\":6}','2024-05-03 15:00:45','2024-05-03 15:00:45'),(5,'TagsWidget','primary_sidebar','ultra',1,'{\"id\":\"TagsWidget\",\"name\":\"Tags\",\"number_display\":10}','2024-05-03 15:00:45','2024-05-03 15:00:45'),(6,'AdsWidget','primary_sidebar','ultra',1,'{\"id\":\"AdsWidget\",\"ads_location\":\"bottom-sidebar-ads\"}','2024-05-03 15:00:45','2024-05-03 15:00:45'),(7,'AboutWidget','footer_sidebar_1','ultra',1,'{\"id\":\"AboutWidget\",\"name\":\"About me\",\"description\":\"Introduction about the author of this blog. You should write because you love the shape of stories and sentences and the creation of different words on a page. Writing comes from reading, and reading is the finest teacher of how to write.\"}','2024-05-03 15:00:45','2024-05-03 15:00:45'),(8,'PopularPostsWidget','footer_sidebar_2','ultra',1,'{\"id\":\"PopularPostsWidget\",\"name\":\"Popular Posts\",\"name_custom_class\":\"color-white\",\"number_display\":3}','2024-05-03 15:00:45','2024-05-03 15:00:45'),(9,'CustomMenuWidget','footer_sidebar_3','ultra',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"Quick links\",\"menu_id\":\"quick-links\"}','2024-05-03 15:00:45','2024-05-03 15:00:45'),(10,'TagsWidget','footer_sidebar_3','ultra',1,'{\"id\":\"TagsWidget\",\"name\":\"Tags\",\"name_custom_class\":\"color-white\"}','2024-05-03 15:00:45','2024-05-03 15:00:45'),(11,'NewsletterWidget','footer_sidebar_4','ultra',1,'{\"id\":\"NewsletterWidget\",\"name\":\"Newsletter\",\"description\":\"Subscribe to Our Newsletter\"}','2024-05-03 15:00:45','2024-05-03 15:00:45'),(12,'CopyrightFooterMenuWidget','footer_copyright_menu','ultra',1,'{\"id\":\"CopyrightFooterMenuWidget\",\"name\":\"Copyright footer Menu\",\"menu_id\":\"quick-links\"}','2024-05-03 15:00:45','2024-05-03 15:00:45'),(13,'SocialsWidget','primary_sidebar','ultra-vi',0,'{\"id\":\"SocialsWidget\",\"title\":\"Follow us\"}','2024-05-03 15:00:45','2024-05-03 15:00:45'),(14,'AdsWidget','primary_sidebar','ultra-vi',0,'{\"id\":\"AdsWidget\",\"ads_location\":\"top-sidebar-ads\"}','2024-05-03 15:00:45','2024-05-03 15:00:45'),(15,'CategoriesMenuWidget','primary_sidebar','ultra-vi',0,'{\"id\":\"CategoriesMenuWidget\"}','2024-05-03 15:00:45','2024-05-03 15:00:45'),(16,'LastestPostsWidget','primary_sidebar','ultra-vi',0,'{\"id\":\"LastestPostsWidget\",\"name\":\"B\\u00e0i vi\\u1ebft m\\u1edbi nh\\u1ea5t\",\"number_display\":6}','2024-05-03 15:00:45','2024-05-03 15:00:45'),(17,'TagsWidget','primary_sidebar','ultra-vi',1,'{\"id\":\"TagsWidget\",\"name\":\"Th\\u1ebb\",\"number_display\":10}','2024-05-03 15:00:45','2024-05-03 15:00:45'),(18,'AdsWidget','primary_sidebar','ultra-vi',1,'{\"id\":\"AdsWidget\",\"ads_location\":\"bottom-sidebar-ads\"}','2024-05-03 15:00:45','2024-05-03 15:00:45'),(19,'AboutWidget','footer_sidebar_1','ultra-vi',1,'{\"id\":\"AboutWidget\",\"name\":\"V\\u1ec1 ch\\u00fang t\\u00f4i\",\"description\":\"Introduction about the author of this blog. You should write because you love the shape of stories and sentences and the creation of different words on a page. Writing comes from reading, and reading is the finest teacher of how to write.\"}','2024-05-03 15:00:45','2024-05-03 15:00:45'),(20,'PopularPostsWidget','footer_sidebar_2','ultra-vi',1,'{\"id\":\"PopularPostsWidget\",\"name\":\"N\\u1ed5i b\\u1eadt\",\"name_custom_class\":\"color-white\",\"number_display\":3}','2024-05-03 15:00:45','2024-05-03 15:00:45'),(21,'CustomMenuWidget','footer_sidebar_3','ultra-vi',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"Quick links\",\"menu_id\":\"quick-links\"}','2024-05-03 15:00:45','2024-05-03 15:00:45'),(22,'TagsWidget','footer_sidebar_3','ultra-vi',1,'{\"id\":\"TagsWidget\",\"name\":\"Tags\",\"name_custom_class\":\"color-white\"}','2024-05-03 15:00:45','2024-05-03 15:00:45'),(23,'NewsletterWidget','footer_sidebar_4','ultra-vi',1,'{\"id\":\"NewsletterWidget\",\"name\":\"Newsletter\",\"description\":\"Subscribe to Our Newsletter\"}','2024-05-03 15:00:45','2024-05-03 15:00:45'),(24,'CopyrightFooterMenuWidget','footer_copyright_menu','ultra-vi',1,'{\"id\":\"CopyrightFooterMenuWidget\",\"name\":\"Copyright footer Menu\",\"menu_id\":\"quick-links\"}','2024-05-03 15:00:45','2024-05-03 15:00:45');
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-03 22:01:21
