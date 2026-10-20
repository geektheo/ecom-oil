-- MySQL dump 10.13  Distrib 26.7.0, for macos27.0 (arm64)
--
-- Host: localhost    Database: laravel
-- ------------------------------------------------------
-- Server version	26.7.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
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
  `code` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
INSERT INTO `activations` VALUES (1,1,'lTwGhXch3oEEjZ5um66gupMx0ixTeelc',1,'2025-11-20 01:47:59','2025-11-20 01:47:59','2025-11-20 01:47:59');
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
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_label` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `location` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clicked` bigint NOT NULL DEFAULT '0',
  `order` int DEFAULT '0',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `open_in_new_tab` tinyint(1) NOT NULL DEFAULT '1',
  `tablet_image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ads_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_adsense_slot_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ads_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
INSERT INTO `ads` VALUES (1,'Everyday Fresh','2030-11-20 00:00:00','not_set','IZ6WU8KUALYD','promotion/1.png','/products',0,1,'published','2025-11-20 01:48:05','2025-11-20 01:48:05',1,NULL,NULL,NULL,NULL),(2,'Make your Breakfast','2030-11-20 00:00:00','not_set','ILSFJVYFGCPZ','promotion/2.png','/products',0,2,'published','2025-11-20 01:48:05','2025-11-20 01:48:05',1,NULL,NULL,NULL,NULL),(3,'The best Organic','2030-11-20 00:00:00','not_set','ILSDKVYFGXPH','promotion/3.png','/products',0,3,'published','2025-11-20 01:48:05','2025-11-20 01:48:05',1,NULL,NULL,NULL,NULL),(4,'Bring nature into your home','2030-11-20 00:00:00','not_set','IZ6WU8KUALYG','promotion/4.png','/products',0,4,'published','2025-11-20 01:48:05','2025-11-20 01:48:05',1,NULL,NULL,NULL,NULL),(5,'Delivered to your home','2030-11-20 00:00:00','not_set','IZ6WU8KUALYH','promotion/5.png','/products',0,5,'published','2025-11-20 01:48:05','2025-11-20 01:48:05',1,NULL,NULL,NULL,NULL),(6,'Save 17% on Oganic Juice','2030-11-20 00:00:00','not_set','IZ6WU8KUALYI','promotion/6.png','/products',0,6,'published','2025-11-20 01:48:05','2025-11-20 01:48:05',1,NULL,NULL,NULL,NULL),(7,'Everyday Fresh & Clean with Our Products','2030-11-20 00:00:00','not_set','IZ6WU8KUALYJ','promotion/7.png','/products',0,7,'published','2025-11-20 01:48:05','2025-11-20 01:48:05',1,NULL,NULL,NULL,NULL),(8,'The best Organic Products Online','2030-11-20 00:00:00','not_set','IZ6WU8KUALYK','promotion/8.png','/products',0,8,'published','2025-11-20 01:48:05','2025-11-20 01:48:05',1,NULL,NULL,NULL,NULL),(9,'Everyday Fresh with Our Products','2030-11-20 00:00:00','not_set','IZ6WU8KUALYL','promotion/9.png',NULL,0,9,'published','2025-11-20 01:48:05','2025-11-20 01:48:05',1,NULL,NULL,NULL,NULL),(10,'100% guaranteed all Fresh items','2030-11-20 00:00:00','not_set','IZ6WU8KUALYM','promotion/10.png',NULL,0,10,'published','2025-11-20 01:48:05','2025-11-20 01:48:05',1,NULL,NULL,NULL,NULL),(11,'Special grocery sale off this month','2030-11-20 00:00:00','not_set','IZ6WU8KUALYN','promotion/11.png',NULL,0,11,'published','2025-11-20 01:48:05','2025-11-20 01:48:05',1,NULL,NULL,NULL,NULL),(12,'Enjoy 15% OFF for all vegetable and fruit','2030-11-20 00:00:00','not_set','IZ6WU8KUALYO','promotion/12.png',NULL,0,12,'published','2025-11-20 01:48:05','2025-11-20 01:48:05',1,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads_translations`
--

DROP TABLE IF EXISTS `ads_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ads_id` bigint unsigned NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tablet_image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `user_id` bigint unsigned NOT NULL,
  `user_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Botble\\ACL\\Models\\User',
  `module` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `actor_id` bigint unsigned NOT NULL,
  `actor_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Botble\\ACL\\Models\\User',
  `reference_id` bigint unsigned NOT NULL,
  `reference_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `audit_histories_user_id_index` (`user_id`),
  KEY `audit_histories_module_index` (`module`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_histories`
--

LOCK TABLES `audit_histories` WRITE;
/*!40000 ALTER TABLE `audit_histories` DISABLE KEYS */;
INSERT INTO `audit_histories` VALUES (1,1,'Botble\\ACL\\Models\\User','to the system',NULL,'logged in','Symfony','127.0.0.1',1,'Botble\\ACL\\Models\\User',1,'Camron Robel','info','2026-10-20 07:05:47','2026-10-20 07:05:47'),(2,1,'Botble\\ACL\\Models\\User','to the customer portal',NULL,'logged in','Symfony','127.0.0.1',1,'Botble\\ACL\\Models\\User',1,'Camron Robel','info','2026-10-20 07:05:47','2026-10-20 07:05:47'),(3,1,'Botble\\ACL\\Models\\User','to the system',NULL,'logged in','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Cursor/3.21.18 Chrome/148.0.7778.280 Electron/42.10.0 Safari/537.36','127.0.0.1',1,'Botble\\ACL\\Models\\User',1,'Camron Robel','info','2026-10-20 07:10:45','2026-10-20 07:10:45'),(4,1,'Botble\\ACL\\Models\\User','to the customer portal',NULL,'logged in','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Cursor/3.21.18 Chrome/148.0.7778.280 Electron/42.10.0 Safari/537.36','127.0.0.1',1,'Botble\\ACL\\Models\\User',1,'Camron Robel','info','2026-10-20 07:10:45','2026-10-20 07:10:45'),(5,1,'Botble\\ACL\\Models\\User','to the system',NULL,'logged in','Symfony','127.0.0.1',1,'Botble\\ACL\\Models\\User',1,'Camron Robel','info','2026-10-20 07:21:45','2026-10-20 07:21:45'),(6,1,'Botble\\ACL\\Models\\User','to the customer portal',NULL,'logged in','Symfony','127.0.0.1',1,'Botble\\ACL\\Models\\User',1,'Camron Robel','info','2026-10-20 07:21:45','2026-10-20 07:21:45'),(7,1,'Botble\\ACL\\Models\\User','to the system',NULL,'logged in','Symfony','127.0.0.1',1,'Botble\\ACL\\Models\\User',1,'Camron Robel','info','2026-10-20 07:21:51','2026-10-20 07:21:51'),(8,1,'Botble\\ACL\\Models\\User','to the customer portal',NULL,'logged in','Symfony','127.0.0.1',1,'Botble\\ACL\\Models\\User',1,'Camron Robel','info','2026-10-20 07:21:51','2026-10-20 07:21:51'),(9,1,'Botble\\ACL\\Models\\User','to the system',NULL,'logged in','Symfony','127.0.0.1',1,'Botble\\ACL\\Models\\User',1,'Camron Robel','info','2026-10-20 07:21:57','2026-10-20 07:21:57'),(10,1,'Botble\\ACL\\Models\\User','to the customer portal',NULL,'logged in','Symfony','127.0.0.1',1,'Botble\\ACL\\Models\\User',1,'Camron Robel','info','2026-10-20 07:21:57','2026-10-20 07:21:57'),(11,1,'Botble\\ACL\\Models\\User','to the system',NULL,'logged in','Symfony','127.0.0.1',1,'Botble\\ACL\\Models\\User',1,'Camron Robel','info','2026-10-20 07:22:41','2026-10-20 07:22:41'),(12,1,'Botble\\ACL\\Models\\User','to the customer portal',NULL,'logged in','Symfony','127.0.0.1',1,'Botble\\ACL\\Models\\User',1,'Camron Robel','info','2026-10-20 07:22:41','2026-10-20 07:22:41'),(13,1,'Botble\\ACL\\Models\\User','to the system',NULL,'logged in','Symfony','127.0.0.1',1,'Botble\\ACL\\Models\\User',1,'Camron Robel','info','2026-10-20 07:22:50','2026-10-20 07:22:50'),(14,1,'Botble\\ACL\\Models\\User','to the customer portal',NULL,'logged in','Symfony','127.0.0.1',1,'Botble\\ACL\\Models\\User',1,'Camron Robel','info','2026-10-20 07:22:50','2026-10-20 07:22:50'),(15,1,'Botble\\ACL\\Models\\User','to the system',NULL,'logged in','Symfony','127.0.0.1',1,'Botble\\ACL\\Models\\User',1,'Camron Robel','info','2026-10-20 07:23:14','2026-10-20 07:23:14'),(16,1,'Botble\\ACL\\Models\\User','to the customer portal',NULL,'logged in','Symfony','127.0.0.1',1,'Botble\\ACL\\Models\\User',1,'Camron Robel','info','2026-10-20 07:23:14','2026-10-20 07:23:14');
/*!40000 ALTER TABLE `audit_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
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
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_parent_id_index` (`parent_id`),
  KEY `categories_status_index` (`status`),
  KEY `categories_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Ecommerce',0,'Dicta maxime rerum itaque molestiae cum iusto. Sint ex voluptate ut consequatur. Nulla blanditiis quo laborum voluptas rerum atque nihil doloremque.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,1,'2025-11-20 01:47:58','2025-11-20 01:47:58'),(2,'Fashion',0,'Quis quam quod sequi. Delectus nemo quas maxime recusandae ad qui praesentium.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2025-11-20 01:47:58','2025-11-20 01:47:58'),(3,'Electronic',0,'Repellendus asperiores sed possimus officiis quo. Praesentium ab deleniti quis officia. Omnis officia repellendus voluptas a ducimus. Debitis dolore qui magnam error voluptas quae.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2025-11-20 01:47:58','2025-11-20 01:47:58'),(4,'Commercial',0,'Reiciendis quia ex voluptatibus quam aut quia tempora ut. Dolorem odio alias quo eum quam dolorem. Sit voluptas vel soluta eos molestiae labore.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2025-11-20 01:47:58','2025-11-20 01:47:58');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_translations`
--

DROP TABLE IF EXISTS `categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories_translations` (
  `lang_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` bigint unsigned NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_translations`
--

LOCK TABLES `categories_translations` WRITE;
/*!40000 ALTER TABLE `categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state_id` bigint unsigned DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `record_id` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cities_slug_unique` (`slug`),
  KEY `idx_cities_name` (`name`),
  KEY `idx_cities_state_status` (`state_id`,`status`),
  KEY `idx_cities_status` (`status`),
  KEY `idx_cities_state_id` (`state_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities_translations`
--

DROP TABLE IF EXISTS `cities_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities_translations` (
  `lang_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cities_id` bigint unsigned NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`cities_id`),
  KEY `idx_cities_trans_city_lang` (`cities_id`,`lang_code`),
  KEY `idx_cities_trans_name` (`name`),
  KEY `idx_cities_trans_cities_id` (`cities_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities_translations`
--

LOCK TABLES `cities_translations` WRITE;
/*!40000 ALTER TABLE `cities_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities_translations` ENABLE KEYS */;
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
  `label` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `placeholder` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int NOT NULL DEFAULT '999',
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
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
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `placeholder` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `contact_id` bigint unsigned NOT NULL,
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
  `email` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_fields` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_countries_name` (`name`),
  KEY `idx_countries_status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries_translations`
--

DROP TABLE IF EXISTS `countries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries_translations` (
  `lang_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `countries_id` bigint unsigned NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`countries_id`),
  KEY `idx_countries_trans_country_lang` (`countries_id`,`lang_code`),
  KEY `idx_countries_trans_name` (`name`),
  KEY `idx_countries_trans_countries_id` (`countries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries_translations`
--

LOCK TABLES `countries_translations` WRITE;
/*!40000 ALTER TABLE `countries_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widget_settings`
--

DROP TABLE IF EXISTS `dashboard_widget_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widget_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `settings` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
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
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widgets`
--

LOCK TABLES `dashboard_widgets` WRITE;
/*!40000 ALTER TABLE `dashboard_widgets` DISABLE KEYS */;
INSERT INTO `dashboard_widgets` VALUES (1,'widget_total_1','2026-10-20 07:10:45','2026-10-20 07:10:45'),(2,'widget_total_2','2026-10-20 07:10:45','2026-10-20 07:10:45'),(3,'widget_total_3','2026-10-20 07:10:45','2026-10-20 07:10:45'),(4,'widget_total_4','2026-10-20 07:10:45','2026-10-20 07:10:45'),(5,'widget_total_themes','2026-10-20 07:10:45','2026-10-20 07:10:45'),(6,'widget_total_users','2026-10-20 07:10:45','2026-10-20 07:10:45'),(7,'widget_total_plugins','2026-10-20 07:10:45','2026-10-20 07:10:45'),(8,'widget_total_pages','2026-10-20 07:10:45','2026-10-20 07:10:45'),(9,'widget_posts_recent','2026-10-20 07:10:45','2026-10-20 07:10:45'),(10,'widget_audit_logs','2026-10-20 07:10:45','2026-10-20 07:10:45'),(11,'widget_ecommerce_report_general','2026-10-20 07:10:45','2026-10-20 07:10:45');
/*!40000 ALTER TABLE `dashboard_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device_tokens`
--

DROP TABLE IF EXISTS `device_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `device_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `platform` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app_version` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `device_tokens_token_unique` (`token`),
  KEY `device_tokens_user_type_user_id_index` (`user_type`,`user_id`),
  KEY `device_tokens_platform_is_active_index` (`platform`,`is_active`),
  KEY `device_tokens_is_active_index` (`is_active`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device_tokens`
--

LOCK TABLES `device_tokens` WRITE;
/*!40000 ALTER TABLE `device_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `device_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_abandoned_carts`
--

DROP TABLE IF EXISTS `ec_abandoned_carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_abandoned_carts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `session_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cart_data` json NOT NULL,
  `total_amount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `items_count` int NOT NULL DEFAULT '0',
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abandoned_at` timestamp NULL DEFAULT NULL,
  `reminder_sent_at` timestamp NULL DEFAULT NULL,
  `reminders_sent` int NOT NULL DEFAULT '0',
  `is_recovered` tinyint(1) NOT NULL DEFAULT '0',
  `recovered_at` timestamp NULL DEFAULT NULL,
  `recovered_order_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_abandoned_carts_abandoned_at_is_recovered_index` (`abandoned_at`,`is_recovered`),
  KEY `ec_abandoned_carts_created_at_is_recovered_index` (`created_at`,`is_recovered`),
  KEY `ec_abandoned_carts_customer_id_index` (`customer_id`),
  KEY `ec_abandoned_carts_session_id_index` (`session_id`),
  KEY `ec_abandoned_carts_email_index` (`email`),
  KEY `ec_abandoned_carts_recovered_order_id_index` (`recovered_order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_abandoned_carts`
--

LOCK TABLES `ec_abandoned_carts` WRITE;
/*!40000 ALTER TABLE `ec_abandoned_carts` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_abandoned_carts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands`
--

DROP TABLE IF EXISTS `ec_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `website` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands`
--

LOCK TABLES `ec_brands` WRITE;
/*!40000 ALTER TABLE `ec_brands` DISABLE KEYS */;
INSERT INTO `ec_brands` VALUES (1,'Perxsion',NULL,NULL,NULL,'published',0,1,'2025-11-20 01:47:39','2025-11-20 01:47:39'),(2,'Hiching',NULL,NULL,NULL,'published',1,1,'2025-11-20 01:47:39','2025-11-20 01:47:39'),(3,'Kepslo',NULL,NULL,NULL,'published',2,1,'2025-11-20 01:47:39','2025-11-20 01:47:39'),(4,'Groneba',NULL,NULL,NULL,'published',3,1,'2025-11-20 01:47:39','2025-11-20 01:47:39'),(5,'Babian',NULL,NULL,NULL,'published',4,1,'2025-11-20 01:47:39','2025-11-20 01:47:39'),(6,'Valorant',NULL,NULL,NULL,'published',5,1,'2025-11-20 01:47:39','2025-11-20 01:47:39'),(7,'Pure',NULL,NULL,NULL,'published',6,1,'2025-11-20 01:47:39','2025-11-20 01:47:39');
/*!40000 ALTER TABLE `ec_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands_translations`
--

DROP TABLE IF EXISTS `ec_brands_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_brands_id` bigint unsigned NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_brands_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands_translations`
--

LOCK TABLES `ec_brands_translations` WRITE;
/*!40000 ALTER TABLE `ec_brands_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_brands_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_cart`
--

DROP TABLE IF EXISTS `ec_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_cart` (
  `identifier` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`identifier`,`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_cart`
--

LOCK TABLES `ec_cart` WRITE;
/*!40000 ALTER TABLE `ec_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_currencies`
--

DROP TABLE IF EXISTS `ec_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_currencies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_prefix_symbol` tinyint unsigned NOT NULL DEFAULT '0',
  `decimals` tinyint unsigned DEFAULT '0',
  `number_format_style` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'western',
  `space_between_price_and_currency` tinyint(1) NOT NULL DEFAULT '0',
  `order` int unsigned DEFAULT '0',
  `is_default` tinyint NOT NULL DEFAULT '0',
  `exchange_rate` double NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_currencies`
--

LOCK TABLES `ec_currencies` WRITE;
/*!40000 ALTER TABLE `ec_currencies` DISABLE KEYS */;
INSERT INTO `ec_currencies` VALUES (1,'USD','$',1,2,'western',0,0,1,1,'2025-11-20 01:47:39','2025-11-20 01:47:39'),(2,'EUR','€',0,2,'western',0,1,0,0.84,'2025-11-20 01:47:39','2025-11-20 01:47:39'),(3,'VND','₫',0,0,'western',0,2,0,23203,'2025-11-20 01:47:39','2025-11-20 01:47:39'),(4,'NGN','₦',1,2,'western',0,2,0,895.52,'2025-11-20 01:47:39','2025-11-20 01:47:39');
/*!40000 ALTER TABLE `ec_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_addresses`
--

DROP TABLE IF EXISTS `ec_customer_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` bigint unsigned NOT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_addresses`
--

LOCK TABLES `ec_customer_addresses` WRITE;
/*!40000 ALTER TABLE `ec_customer_addresses` DISABLE KEYS */;
INSERT INTO `ec_customer_addresses` VALUES (1,'Savion Howe','customer@botble.com','+18127159868','YE','Colorado','Nicolasside','4257 Keagan Springs',1,1,'2025-11-20 01:47:52','2025-11-20 01:47:52','61347-2737'),(2,'Savion Howe','customer@botble.com','+16074705873','KP','Florida','South Arnaldoborough','82816 Garnet Field Suite 115',1,0,'2025-11-20 01:47:52','2025-11-20 01:47:52','33850-3544'),(3,'Parker Altenwerth','vendor@botble.com','+15134676866','DZ','Virginia','O\'Haraland','24666 Cormier Square',2,1,'2025-11-20 01:47:52','2025-11-20 01:47:52','63767-3604'),(4,'Parker Altenwerth','vendor@botble.com','+13348389865','SB','Oklahoma','Andersonview','86319 Helena Lake',2,0,'2025-11-20 01:47:52','2025-11-20 01:47:52','11398-6227'),(5,'Darren VonRueden','marquardt.wyman@example.org','+19844275457','NZ','New Hampshire','Pollyville','422 Rusty Ville',3,1,'2025-11-20 01:47:52','2025-11-20 01:47:52','51794'),(6,'Dr. Jerad Zieme III','breana15@example.net','+17854205568','SM','California','Verdieshire','999 Quitzon Viaduct',4,1,'2025-11-20 01:47:53','2025-11-20 01:47:53','98890'),(7,'Alvena Gottlieb','parker.amiya@example.com','+13612720283','MA','Tennessee','Annamariebury','3725 Gulgowski Point',5,1,'2025-11-20 01:47:53','2025-11-20 01:47:53','98239'),(8,'Adrien Leuschke','treutel.houston@example.com','+17548799967','EE','District of Columbia','Estebanbury','880 Beatty Mountains',6,1,'2025-11-20 01:47:53','2025-11-20 01:47:53','50928-8730'),(9,'Gail Doyle','pollich.jerrold@example.org','+19306061193','TN','South Carolina','North Shannahaven','8816 Monahan Underpass Suite 467',7,1,'2025-11-20 01:47:53','2025-11-20 01:47:53','67923'),(10,'Dr. Grace Hane','kerluke.grayson@example.net','+16419405875','PK','Idaho','South Bonitamouth','61409 Green Islands Apt. 527',8,1,'2025-11-20 01:47:54','2025-11-20 01:47:54','00522-3495'),(11,'Brice Davis','glenna.turner@example.com','+18629918758','SN','Pennsylvania','Port Ilenemouth','7002 Mark Oval',9,1,'2025-11-20 01:47:54','2025-11-20 01:47:54','41502'),(12,'Elmira Funk','joey.auer@example.net','+13642348575','CX','Pennsylvania','Courtneyport','8675 Kovacek Inlet',10,1,'2025-11-20 01:47:54','2025-11-20 01:47:54','23655');
/*!40000 ALTER TABLE `ec_customer_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_deletion_requests`
--

DROP TABLE IF EXISTS `ec_customer_deletion_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_deletion_requests` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `customer_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `verification_code` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code_expires_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'waiting_for_confirmation',
  `reason` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `confirmed_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_customer_deletion_requests_token_unique` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_deletion_requests`
--

LOCK TABLES `ec_customer_deletion_requests` WRITE;
/*!40000 ALTER TABLE `ec_customer_deletion_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_deletion_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_password_resets`
--

DROP TABLE IF EXISTS `ec_customer_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `ec_customer_password_resets_email_index` (`email`),
  KEY `ec_customer_password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_password_resets`
--

LOCK TABLES `ec_customer_password_resets` WRITE;
/*!40000 ALTER TABLE `ec_customer_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_recently_viewed_products`
--

DROP TABLE IF EXISTS `ec_customer_recently_viewed_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_recently_viewed_products` (
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`customer_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_recently_viewed_products`
--

LOCK TABLES `ec_customer_recently_viewed_products` WRITE;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_used_coupons`
--

DROP TABLE IF EXISTS `ec_customer_used_coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_used_coupons` (
  `discount_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_used_coupons`
--

LOCK TABLES `ec_customer_used_coupons` WRITE;
/*!40000 ALTER TABLE `ec_customer_used_coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_used_coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customers`
--

DROP TABLE IF EXISTS `ec_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'activated',
  `block_reason` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `private_notes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_vendor` tinyint(1) NOT NULL DEFAULT '0',
  `vendor_verified_at` datetime DEFAULT NULL,
  `stripe_account_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_account_active` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ec_customers_is_vendor_index` (`is_vendor`),
  KEY `ec_customers_vendor_verified_at_index` (`vendor_verified_at`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customers`
--

LOCK TABLES `ec_customers` WRITE;
/*!40000 ALTER TABLE `ec_customers` DISABLE KEYS */;
INSERT INTO `ec_customers` VALUES (1,'Savion Howe','customer@botble.com','$2y$12$oqs13d13vAzlJo/WoLHEpec1pBsL/FLhbFRmVsfdP0NzAszsi/Tka','customers/3.jpg','1989-10-24','+17347174325',NULL,'2025-11-20 01:47:52','2025-11-20 01:47:52','2025-11-20 08:47:52',NULL,'activated',NULL,NULL,0,NULL,NULL,0),(2,'Parker Altenwerth','vendor@botble.com','$2y$12$UHCSlf5z/NYjOlZX3/f.MeHJG.4mNvU2193LJeYaHfGkd5WlVdP2i','customers/5.jpg','1984-11-10','+13194216082',NULL,'2025-11-20 01:47:52','2025-11-20 01:48:06','2025-11-20 08:47:52',NULL,'activated',NULL,NULL,1,'2025-11-20 08:48:06',NULL,0),(3,'Darren VonRueden','marquardt.wyman@example.org','$2y$12$E2BY9wwGt1PyeAW9pI7B0.Y1VljFjpAZ4vLdtu5Ksl00uerYQJDQG','customers/1.jpg','1977-11-16','+15407711205',NULL,'2025-11-20 01:47:52','2025-11-20 01:47:52','2025-11-20 08:47:52',NULL,'activated',NULL,NULL,0,NULL,NULL,0),(4,'Dr. Jerad Zieme III','breana15@example.net','$2y$12$EvqPaHYM2a9WL/zviKkNU.XPN3Fv8.VAcQacar9O3UdadEv0O3NBm','customers/2.jpg','2000-10-26','+18012874033',NULL,'2025-11-20 01:47:53','2025-11-20 01:47:53','2025-11-20 08:47:53',NULL,'activated',NULL,NULL,0,NULL,NULL,0),(5,'Alvena Gottlieb','parker.amiya@example.com','$2y$12$.nUFiP0gBjbhbLJv44RgsOO/4rDgW0pF7O2GO6mOA3SnkkRJxafzG','customers/3.jpg','1991-11-07','+18434939514',NULL,'2025-11-20 01:47:53','2025-11-20 01:48:07','2025-11-20 08:47:53',NULL,'activated',NULL,NULL,1,'2025-11-20 08:48:07',NULL,0),(6,'Adrien Leuschke','treutel.houston@example.com','$2y$12$CK0motgH.cJu4/4Nt2YmLu0o1eva8t3lo8K1utxHRsGwv5bThnNIW','customers/4.jpg','2003-11-15','+12769802966',NULL,'2025-11-20 01:47:53','2025-11-20 01:47:53','2025-11-20 08:47:53',NULL,'activated',NULL,NULL,0,NULL,NULL,0),(7,'Gail Doyle','pollich.jerrold@example.org','$2y$12$EQLG.d9u41cFiNHO78lheuZqnVfdIr5UroX6QjvZNMT3SdOr/KoDy','customers/5.jpg','1990-11-04','+16575819894',NULL,'2025-11-20 01:47:53','2025-11-20 01:48:07','2025-11-20 08:47:53',NULL,'activated',NULL,NULL,1,'2025-11-20 08:48:07',NULL,0),(8,'Dr. Grace Hane','kerluke.grayson@example.net','$2y$12$XuFjDhfZOItaZFJQzhlAm.GQOX9jVlOx4K9AnuCgjXtyBPG3E1bQC','customers/6.jpg','1999-11-13','+19348409622',NULL,'2025-11-20 01:47:54','2025-11-20 01:47:54','2025-11-20 08:47:54',NULL,'activated',NULL,NULL,0,NULL,NULL,0),(9,'Brice Davis','glenna.turner@example.com','$2y$12$RAylR2XgY8H77i9qnjUbruLA6twcOPQ69XjDPl/oGSbDWMud6rMQS','customers/7.jpg','1975-10-27','+12132849124',NULL,'2025-11-20 01:47:54','2025-11-20 01:48:07','2025-11-20 08:47:54',NULL,'activated',NULL,NULL,1,'2025-11-20 08:48:07',NULL,0),(10,'Elmira Funk','joey.auer@example.net','$2y$12$d1APWXwl4akyP//kc6pAwOQv4qfHnhj6qV/4cTZMoRIRO7vUKXNF6','customers/8.jpg','2005-11-09','+13466859609',NULL,'2025-11-20 01:47:54','2025-11-20 01:47:54','2025-11-20 08:47:54',NULL,'activated',NULL,NULL,0,NULL,NULL,0);
/*!40000 ALTER TABLE `ec_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_customers`
--

DROP TABLE IF EXISTS `ec_discount_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_customers` (
  `discount_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_customers`
--

LOCK TABLES `ec_discount_customers` WRITE;
/*!40000 ALTER TABLE `ec_discount_customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_product_categories`
--

DROP TABLE IF EXISTS `ec_discount_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_product_categories` (
  `discount_id` bigint unsigned NOT NULL,
  `product_category_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_product_categories`
--

LOCK TABLES `ec_discount_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_discount_product_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_product_collections`
--

DROP TABLE IF EXISTS `ec_discount_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_product_collections` (
  `discount_id` bigint unsigned NOT NULL,
  `product_collection_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_collection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_product_collections`
--

LOCK TABLES `ec_discount_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_discount_product_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_products`
--

DROP TABLE IF EXISTS `ec_discount_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_products` (
  `discount_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_products`
--

LOCK TABLES `ec_discount_products` WRITE;
/*!40000 ALTER TABLE `ec_discount_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discounts`
--

DROP TABLE IF EXISTS `ec_discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discounts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `total_used` int unsigned NOT NULL DEFAULT '0',
  `value` double DEFAULT NULL,
  `type` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'coupon',
  `can_use_with_promotion` tinyint(1) NOT NULL DEFAULT '0',
  `can_use_with_flash_sale` tinyint(1) NOT NULL DEFAULT '0',
  `discount_on` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` int unsigned DEFAULT NULL,
  `type_option` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'amount',
  `target` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all-orders',
  `min_order_price` decimal(15,2) DEFAULT NULL,
  `apply_via_url` tinyint(1) NOT NULL DEFAULT '0',
  `display_at_checkout` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_discounts_code_unique` (`code`),
  KEY `ec_discounts_store_id_index` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discounts`
--

LOCK TABLES `ec_discounts` WRITE;
/*!40000 ALTER TABLE `ec_discounts` DISABLE KEYS */;
INSERT INTO `ec_discounts` VALUES (1,'Discount 1','NP2OTC5OBCIM','2025-11-19 08:47:55',NULL,NULL,0,242,'coupon',0,0,NULL,NULL,'amount','all-orders',NULL,0,1,'2025-11-20 01:47:55','2025-11-20 01:47:55',NULL,NULL),(2,'Discount 2','GGGJXEY8SIKV','2025-11-19 08:47:55','2025-11-24 08:47:55',NULL,0,359,'coupon',0,0,NULL,NULL,'amount','all-orders',NULL,0,1,'2025-11-20 01:47:55','2025-11-20 01:47:55',NULL,NULL),(3,'Discount 3','UAAQOB0VPQXT','2025-11-19 08:47:55','2025-11-28 08:47:55',NULL,0,258,'coupon',0,0,NULL,NULL,'same-price','all-orders',NULL,0,1,'2025-11-20 01:47:55','2025-11-20 01:47:55',NULL,NULL),(4,'Discount 4','19CHPVXKH5PQ','2025-11-19 08:47:55','2025-11-26 08:47:55',NULL,0,111,'coupon',0,0,NULL,NULL,'same-price','all-orders',NULL,0,1,'2025-11-20 01:47:55','2025-11-20 01:47:55',NULL,NULL),(5,'Discount 5','NWHJ7FXK1ASU','2025-11-19 08:47:55',NULL,NULL,0,473,'coupon',0,0,NULL,NULL,'same-price','all-orders',NULL,0,1,'2025-11-20 01:47:55','2025-11-20 01:47:55',NULL,NULL),(6,'Discount 6','KAXJDHGZRS4M','2025-11-19 08:47:55',NULL,NULL,0,256,'coupon',0,0,NULL,NULL,'same-price','all-orders',NULL,0,1,'2025-11-20 01:47:55','2025-11-20 01:47:55',NULL,NULL),(7,'Discount 7','014YHVB9SUMR','2025-11-19 08:47:55','2025-12-09 08:47:55',NULL,0,977,'coupon',0,0,NULL,NULL,'shipping','all-orders',NULL,0,1,'2025-11-20 01:47:55','2025-11-20 01:47:55',NULL,NULL),(8,'Discount 8','GNGEZLOCPG1F','2025-11-19 08:47:55',NULL,NULL,0,129,'coupon',0,0,NULL,NULL,'same-price','all-orders',NULL,0,1,'2025-11-20 01:47:55','2025-11-20 01:47:55',NULL,NULL),(9,'Discount 9','5H1VHGIV17YW','2025-11-19 08:47:55','2025-12-02 08:47:55',NULL,0,768,'coupon',0,0,NULL,NULL,'amount','all-orders',NULL,0,1,'2025-11-20 01:47:55','2025-11-20 01:47:55',NULL,NULL),(10,'Discount 10','RPNATL4RTA72','2025-11-19 08:47:55',NULL,NULL,0,953,'coupon',0,0,NULL,NULL,'same-price','all-orders',NULL,0,1,'2025-11-20 01:47:55','2025-11-20 01:47:55',NULL,NULL);
/*!40000 ALTER TABLE `ec_discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sale_products`
--

DROP TABLE IF EXISTS `ec_flash_sale_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sale_products` (
  `flash_sale_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `price` double unsigned DEFAULT NULL,
  `quantity` int unsigned DEFAULT NULL,
  `sold` int unsigned NOT NULL DEFAULT '0',
  KEY `ec_flash_sale_products_product_id_flash_sale_id_index` (`product_id`,`flash_sale_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sale_products`
--

LOCK TABLES `ec_flash_sale_products` WRITE;
/*!40000 ALTER TABLE `ec_flash_sale_products` DISABLE KEYS */;
INSERT INTO `ec_flash_sale_products` VALUES (1,21,248.39,13,4),(2,15,306.73,12,5),(3,1,561.58,7,1),(4,14,725.2,18,2),(5,4,1021.72,10,3),(5,1,333.03,14,4),(5,2,475.2,12,4),(5,3,117.8,16,4),(5,4,610.54,16,3),(5,5,366.12,6,4);
/*!40000 ALTER TABLE `ec_flash_sale_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales`
--

DROP TABLE IF EXISTS `ec_flash_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` datetime NOT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales`
--

LOCK TABLES `ec_flash_sales` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales` DISABLE KEYS */;
INSERT INTO `ec_flash_sales` VALUES (1,'Deal of the Day','2025-12-21 00:00:00','published','2025-11-20 01:47:55','2025-11-20 01:47:55'),(2,'Winter Sale','2026-01-05 00:00:00','published','2025-11-20 01:47:55','2025-11-20 01:47:55'),(3,'Gadgets &amp; Accessories','2026-01-01 00:00:00','published','2025-11-20 01:47:55','2025-11-20 01:47:55'),(4,'Hot products','2025-12-29 00:00:00','published','2025-11-20 01:47:55','2025-11-20 01:47:55'),(5,'Best sale items','2025-12-27 00:00:00','published','2025-11-20 01:47:55','2025-11-20 01:47:55');
/*!40000 ALTER TABLE `ec_flash_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales_translations`
--

DROP TABLE IF EXISTS `ec_flash_sales_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_flash_sales_id` bigint unsigned NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_flash_sales_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales_translations`
--

LOCK TABLES `ec_flash_sales_translations` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_flash_sales_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_option_value`
--

DROP TABLE IF EXISTS `ec_global_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_option_value` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_id` bigint unsigned NOT NULL COMMENT 'option id',
  `option_value` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int NOT NULL DEFAULT '9999',
  `affect_type` tinyint NOT NULL DEFAULT '0' COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_option_value`
--

LOCK TABLES `ec_global_option_value` WRITE;
/*!40000 ALTER TABLE `ec_global_option_value` DISABLE KEYS */;
INSERT INTO `ec_global_option_value` VALUES (1,1,'1 Year',0,9999,0,'2025-11-20 01:48:05','2025-11-20 01:48:05'),(2,1,'2 Year',10,9999,0,'2025-11-20 01:48:05','2025-11-20 01:48:05'),(3,1,'3 Year',20,9999,0,'2025-11-20 01:48:05','2025-11-20 01:48:05'),(4,2,'4GB',0,9999,0,'2025-11-20 01:48:05','2025-11-20 01:48:05'),(5,2,'8GB',10,9999,0,'2025-11-20 01:48:05','2025-11-20 01:48:05'),(6,2,'16GB',20,9999,0,'2025-11-20 01:48:05','2025-11-20 01:48:05'),(7,3,'Core i5',0,9999,0,'2025-11-20 01:48:05','2025-11-20 01:48:05'),(8,3,'Core i7',10,9999,0,'2025-11-20 01:48:05','2025-11-20 01:48:05'),(9,3,'Core i9',20,9999,0,'2025-11-20 01:48:05','2025-11-20 01:48:05'),(10,4,'128GB',0,9999,0,'2025-11-20 01:48:05','2025-11-20 01:48:05'),(11,4,'256GB',10,9999,0,'2025-11-20 01:48:05','2025-11-20 01:48:05'),(12,4,'512GB',20,9999,0,'2025-11-20 01:48:05','2025-11-20 01:48:05');
/*!40000 ALTER TABLE `ec_global_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_option_value_translations`
--

DROP TABLE IF EXISTS `ec_global_option_value_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_option_value_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_global_option_value_id` bigint unsigned NOT NULL,
  `option_value` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_global_option_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_option_value_translations`
--

LOCK TABLES `ec_global_option_value_translations` WRITE;
/*!40000 ALTER TABLE `ec_global_option_value_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_global_option_value_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_options`
--

DROP TABLE IF EXISTS `ec_global_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'option type',
  `required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_options`
--

LOCK TABLES `ec_global_options` WRITE;
/*!40000 ALTER TABLE `ec_global_options` DISABLE KEYS */;
INSERT INTO `ec_global_options` VALUES (1,'Warranty','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2025-11-20 01:48:05','2025-11-20 01:48:05'),(2,'RAM','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2025-11-20 01:48:05','2025-11-20 01:48:05'),(3,'CPU','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2025-11-20 01:48:05','2025-11-20 01:48:05'),(4,'HDD','Botble\\Ecommerce\\Option\\OptionType\\Dropdown',0,'2025-11-20 01:48:05','2025-11-20 01:48:05');
/*!40000 ALTER TABLE `ec_global_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_options_translations`
--

DROP TABLE IF EXISTS `ec_global_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_options_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_global_options_id` bigint unsigned NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_global_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_options_translations`
--

LOCK TABLES `ec_global_options_translations` WRITE;
/*!40000 ALTER TABLE `ec_global_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_global_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_grouped_products`
--

DROP TABLE IF EXISTS `ec_grouped_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_grouped_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `parent_product_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `fixed_qty` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_grouped_products`
--

LOCK TABLES `ec_grouped_products` WRITE;
/*!40000 ALTER TABLE `ec_grouped_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_grouped_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoice_items`
--

DROP TABLE IF EXISTS `ec_invoice_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_invoice_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` bigint unsigned NOT NULL,
  `reference_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int unsigned NOT NULL,
  `price` decimal(15,2) NOT NULL DEFAULT '0.00',
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `amount` decimal(15,2) unsigned NOT NULL,
  `options` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_invoice_items_reference_type_reference_id_index` (`reference_type`,`reference_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoice_items`
--

LOCK TABLES `ec_invoice_items` WRITE;
/*!40000 ALTER TABLE `ec_invoice_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_invoice_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoices`
--

DROP TABLE IF EXISTS `ec_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_invoices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reference_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_logo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_state` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_city` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_zip_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_address_line` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_tax_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT '0.00',
  `shipping_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `payment_fee` decimal(15,2) DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `shipping_option` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `coupon_code` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payment_id` bigint unsigned DEFAULT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `paid_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_invoices_code_unique` (`code`),
  KEY `ec_invoices_reference_type_reference_id_index` (`reference_type`,`reference_id`),
  KEY `ec_invoices_payment_id_index` (`payment_id`),
  KEY `ec_invoices_status_index` (`status`),
  KEY `ec_invoices_reference_id_reference_type_index` (`reference_id`,`reference_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoices`
--

LOCK TABLES `ec_invoices` WRITE;
/*!40000 ALTER TABLE `ec_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_option_value`
--

DROP TABLE IF EXISTS `ec_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_option_value` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_id` bigint unsigned NOT NULL COMMENT 'option id',
  `option_value` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int NOT NULL DEFAULT '9999',
  `affect_type` tinyint NOT NULL DEFAULT '0' COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_option_value`
--

LOCK TABLES `ec_option_value` WRITE;
/*!40000 ALTER TABLE `ec_option_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_option_value_translations`
--

DROP TABLE IF EXISTS `ec_option_value_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_option_value_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_option_value_id` bigint unsigned NOT NULL,
  `option_value` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_option_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_option_value_translations`
--

LOCK TABLES `ec_option_value_translations` WRITE;
/*!40000 ALTER TABLE `ec_option_value_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_option_value_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_options`
--

DROP TABLE IF EXISTS `ec_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'option type',
  `product_id` bigint unsigned NOT NULL DEFAULT '0',
  `order` int NOT NULL DEFAULT '9999',
  `required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_options`
--

LOCK TABLES `ec_options` WRITE;
/*!40000 ALTER TABLE `ec_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_options_translations`
--

DROP TABLE IF EXISTS `ec_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_options_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_options_id` bigint unsigned NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_options_translations`
--

LOCK TABLES `ec_options_translations` WRITE;
/*!40000 ALTER TABLE `ec_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_addresses`
--

DROP TABLE IF EXISTS `ec_order_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL,
  `zip_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'shipping_address',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_order_addresses_order_id_type_unique` (`order_id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_addresses`
--

LOCK TABLES `ec_order_addresses` WRITE;
/*!40000 ALTER TABLE `ec_order_addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_histories`
--

DROP TABLE IF EXISTS `ec_order_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL,
  `extras` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_histories`
--

LOCK TABLES `ec_order_histories` WRITE;
/*!40000 ALTER TABLE `ec_order_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_metadata`
--

DROP TABLE IF EXISTS `ec_order_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_metadata` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `meta_key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_order_metadata_order_id_meta_key_index` (`order_id`,`meta_key`),
  KEY `ec_order_metadata_order_id_index` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_metadata`
--

LOCK TABLES `ec_order_metadata` WRITE;
/*!40000 ALTER TABLE `ec_order_metadata` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_product`
--

DROP TABLE IF EXISTS `ec_order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_product` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `qty` int NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT '0.00',
  `options` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `product_options` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'product option data',
  `product_id` bigint unsigned DEFAULT NULL,
  `product_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` double DEFAULT '0',
  `restock_quantity` int unsigned DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_type` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'physical',
  `times_downloaded` int NOT NULL DEFAULT '0',
  `license_code` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `downloaded_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_order_product_order_id_product_id_index` (`order_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_product`
--

LOCK TABLES `ec_order_product` WRITE;
/*!40000 ALTER TABLE `ec_order_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_referrals`
--

DROP TABLE IF EXISTS `ec_order_referrals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_referrals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(39) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_domain` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_page` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_params` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gclid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fclid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_source` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_campaign` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_medium` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_term` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_content` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `referrer_domain` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_order_referrals_order_id_index` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_referrals`
--

LOCK TABLES `ec_order_referrals` WRITE;
/*!40000 ALTER TABLE `ec_order_referrals` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_referrals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_return_histories`
--

DROP TABLE IF EXISTS `ec_order_return_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_return_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `order_return_id` bigint unsigned NOT NULL,
  `action` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reason` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_return_histories`
--

LOCK TABLES `ec_order_return_histories` WRITE;
/*!40000 ALTER TABLE `ec_order_return_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_return_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_return_items`
--

DROP TABLE IF EXISTS `ec_order_return_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_return_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_return_id` bigint unsigned NOT NULL COMMENT 'Order return id',
  `order_product_id` bigint unsigned NOT NULL COMMENT 'Order product id',
  `product_id` bigint unsigned NOT NULL COMMENT 'Product id',
  `product_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int NOT NULL COMMENT 'Quantity return',
  `price` decimal(15,2) NOT NULL COMMENT 'Price Product',
  `reason` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `refund_amount` decimal(12,2) DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_return_items`
--

LOCK TABLES `ec_order_return_items` WRITE;
/*!40000 ALTER TABLE `ec_order_return_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_return_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_returns`
--

DROP TABLE IF EXISTS `ec_order_returns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_returns` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL COMMENT 'Order ID',
  `store_id` bigint unsigned DEFAULT NULL COMMENT 'Store ID',
  `user_id` bigint unsigned NOT NULL COMMENT 'Customer ID',
  `reason` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'Reason return order',
  `order_status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Order current status',
  `return_status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Return status',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_order_returns_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_returns`
--

LOCK TABLES `ec_order_returns` WRITE;
/*!40000 ALTER TABLE `ec_order_returns` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_returns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_tax_information`
--

DROP TABLE IF EXISTS `ec_order_tax_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_tax_information` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `company_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_tax_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_email` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_order_tax_information_order_id_index` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_tax_information`
--

LOCK TABLES `ec_order_tax_information` WRITE;
/*!40000 ALTER TABLE `ec_order_tax_information` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_tax_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_orders`
--

DROP TABLE IF EXISTS `ec_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `shipping_option` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `status` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `amount` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT '0.00',
  `shipping_amount` decimal(15,2) DEFAULT NULL,
  `payment_fee` decimal(15,2) DEFAULT '0.00',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `coupon_code` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` decimal(15,2) DEFAULT NULL,
  `sub_total` decimal(15,2) NOT NULL,
  `is_confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `discount_description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_finished` tinyint(1) DEFAULT '0',
  `cancellation_reason` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancellation_reason_description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `completed_at` timestamp NULL DEFAULT NULL,
  `token` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `proof_file` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `private_notes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `store_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_orders_code_unique` (`code`),
  KEY `ec_orders_user_id_status_created_at_index` (`user_id`,`status`,`created_at`),
  KEY `ec_orders_status_created_at_index` (`status`,`created_at`),
  KEY `ec_orders_user_id_is_finished_index` (`user_id`,`is_finished`),
  KEY `ec_orders_store_id_index` (`store_id`),
  KEY `ec_orders_store_finished_index` (`store_id`,`is_finished`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_orders`
--

LOCK TABLES `ec_orders` WRITE;
/*!40000 ALTER TABLE `ec_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_layout` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'dropdown',
  `is_searchable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_comparable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_use_in_product_listing` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `use_image_from_product_variation` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_order_id` (`order`,`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets`
--

LOCK TABLES `ec_product_attribute_sets` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets` DISABLE KEYS */;
INSERT INTO `ec_product_attribute_sets` VALUES (1,'Weight','weight','text',1,1,1,'published',0,'2025-11-20 01:47:43','2025-11-20 01:47:43',0),(2,'Boxes','boxes','text',1,1,1,'published',1,'2025-11-20 01:47:43','2025-11-20 01:47:43',0);
/*!40000 ALTER TABLE `ec_product_attribute_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets_translations`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attribute_sets_id` bigint unsigned NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attribute_sets_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets_translations`
--

LOCK TABLES `ec_product_attribute_sets_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes`
--

DROP TABLE IF EXISTS `ec_product_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_set_id` bigint unsigned NOT NULL,
  `title` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `attribute_set_status_index` (`attribute_set_id`),
  KEY `idx_attribute_set_id` (`attribute_set_id`),
  KEY `idx_attribute_set_order_id` (`attribute_set_id`,`order`,`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes`
--

LOCK TABLES `ec_product_attributes` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes` DISABLE KEYS */;
INSERT INTO `ec_product_attributes` VALUES (1,1,'1KG','1kg',NULL,NULL,1,1,'2025-11-20 01:47:43','2025-11-20 01:47:43'),(2,1,'2KG','2kg',NULL,NULL,0,2,'2025-11-20 01:47:43','2025-11-20 01:47:43'),(3,1,'3KG','3kg',NULL,NULL,0,3,'2025-11-20 01:47:43','2025-11-20 01:47:43'),(4,1,'4KG','4kg',NULL,NULL,0,4,'2025-11-20 01:47:43','2025-11-20 01:47:43'),(5,1,'5KG','5kg',NULL,NULL,0,5,'2025-11-20 01:47:43','2025-11-20 01:47:43'),(6,2,'1 Box','1-box',NULL,NULL,1,1,'2025-11-20 01:47:43','2025-11-20 01:47:43'),(7,2,'2 Boxes','2-boxes',NULL,NULL,0,2,'2025-11-20 01:47:43','2025-11-20 01:47:43'),(8,2,'3 Boxes','3-boxes',NULL,NULL,0,3,'2025-11-20 01:47:43','2025-11-20 01:47:43'),(9,2,'4 Boxes','4-boxes',NULL,NULL,0,4,'2025-11-20 01:47:43','2025-11-20 01:47:43'),(10,2,'5 Boxes','5-boxes',NULL,NULL,0,5,'2025-11-20 01:47:43','2025-11-20 01:47:43');
/*!40000 ALTER TABLE `ec_product_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes_translations`
--

DROP TABLE IF EXISTS `ec_product_attributes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attributes_id` bigint unsigned NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attributes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes_translations`
--

LOCK TABLES `ec_product_attributes_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_attributes_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories`
--

DROP TABLE IF EXISTS `ec_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` int unsigned NOT NULL DEFAULT '0',
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `icon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_categories_parent_id_status_created_at_index` (`parent_id`,`status`,`created_at`),
  KEY `ec_product_categories_parent_id_status_index` (`parent_id`,`status`),
  KEY `idx_categories_status_order` (`status`,`order`),
  KEY `idx_categories_order` (`order`),
  KEY `ec_product_categories_slug_index` (`slug`),
  KEY `idx_ec_product_categories_status` (`status`),
  KEY `idx_ec_product_categories_parent_id` (`parent_id`),
  KEY `idx_ec_product_categories_status_parent_order` (`status`,`parent_id`,`order`),
  KEY `idx_ec_product_categories_is_featured` (`is_featured`),
  KEY `idx_ec_product_categories_name` (`name`),
  KEY `idx_ec_product_categories_slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories`
--

LOCK TABLES `ec_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_product_categories` DISABLE KEYS */;
INSERT INTO `ec_product_categories` VALUES (1,'Milks and Dairies',NULL,0,NULL,'published',0,'product-categories/image-1.png',1,'2025-11-20 01:47:42','2025-11-20 01:47:42',NULL,'product-categories/icon-1.png'),(2,'Clothing & beauty',NULL,0,NULL,'published',1,'product-categories/image-2.png',1,'2025-11-20 01:47:42','2025-11-20 01:47:42',NULL,'product-categories/icon-2.png'),(3,'Pet Toy',NULL,0,NULL,'published',2,'product-categories/image-3.png',1,'2025-11-20 01:47:42','2025-11-20 01:47:42',NULL,'product-categories/icon-3.png'),(4,'Baking material',NULL,0,NULL,'published',3,'product-categories/image-4.png',1,'2025-11-20 01:47:42','2025-11-20 01:47:42',NULL,'product-categories/icon-4.png'),(5,'Fresh Fruit',NULL,0,NULL,'published',4,'product-categories/image-5.png',1,'2025-11-20 01:47:42','2025-11-20 01:47:42',NULL,'product-categories/icon-5.png'),(6,'Wines & Drinks',NULL,0,NULL,'published',5,'product-categories/image-6.png',1,'2025-11-20 01:47:42','2025-11-20 01:47:42',NULL,'product-categories/icon-6.png'),(7,'Fresh Seafood',NULL,0,NULL,'published',6,'product-categories/image-7.png',1,'2025-11-20 01:47:42','2025-11-20 01:47:42',NULL,'product-categories/icon-7.png'),(8,'Fast food',NULL,0,NULL,'published',7,'product-categories/image-8.png',1,'2025-11-20 01:47:42','2025-11-20 01:47:42',NULL,'product-categories/icon-8.png'),(9,'Vegetables',NULL,0,NULL,'published',8,'product-categories/image-9.png',1,'2025-11-20 01:47:42','2025-11-20 01:47:42',NULL,'product-categories/icon-9.png'),(10,'Bread and Juice',NULL,0,NULL,'published',9,'product-categories/image-10.png',1,'2025-11-20 01:47:42','2025-11-20 01:47:42',NULL,'product-categories/icon-10.png'),(11,'Cake & Milk',NULL,0,NULL,'published',10,'product-categories/image-11.png',1,'2025-11-20 01:47:42','2025-11-20 01:47:42',NULL,'product-categories/icon-11.png'),(12,'Coffee & Teas',NULL,0,NULL,'published',11,'product-categories/image-12.png',1,'2025-11-20 01:47:42','2025-11-20 01:47:42',NULL,'product-categories/icon-12.png'),(13,'Pet Foods',NULL,0,NULL,'published',12,'product-categories/image-13.png',0,'2025-11-20 01:47:42','2025-11-20 01:47:42',NULL,'product-categories/icon-13.png'),(14,'Diet Foods',NULL,0,NULL,'published',13,'product-categories/image-14.png',0,'2025-11-20 01:47:42','2025-11-20 01:47:42',NULL,'product-categories/icon-14.png');
/*!40000 ALTER TABLE `ec_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories_translations`
--

DROP TABLE IF EXISTS `ec_product_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_categories_id` bigint unsigned NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_product_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories_translations`
--

LOCK TABLES `ec_product_categories_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categorizables`
--

DROP TABLE IF EXISTS `ec_product_categorizables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categorizables` (
  `category_id` bigint unsigned NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`category_id`,`reference_id`,`reference_type`),
  KEY `ec_product_categorizables_category_id_index` (`category_id`),
  KEY `ec_product_categorizables_reference_id_index` (`reference_id`),
  KEY `ec_product_categorizables_reference_type_index` (`reference_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categorizables`
--

LOCK TABLES `ec_product_categorizables` WRITE;
/*!40000 ALTER TABLE `ec_product_categorizables` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_categorizables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_category_product`
--

DROP TABLE IF EXISTS `ec_product_category_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_category_product` (
  `category_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `ec_product_category_product_category_id_index` (`category_id`),
  KEY `ec_product_category_product_product_id_index` (`product_id`),
  KEY `idx_product_category` (`product_id`,`category_id`),
  KEY `idx_product_id_category_id` (`product_id`,`category_id`),
  KEY `idx_product_category_composite` (`product_id`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_category_product`
--

LOCK TABLES `ec_product_category_product` WRITE;
/*!40000 ALTER TABLE `ec_product_category_product` DISABLE KEYS */;
INSERT INTO `ec_product_category_product` VALUES (1,1),(1,2),(1,5),(1,8),(1,18),(1,20),(1,22),(1,23),(2,6),(2,7),(2,8),(2,9),(2,10),(2,12),(2,13),(2,14),(2,16),(2,17),(2,24),(3,1),(3,4),(3,5),(3,7),(3,13),(3,16),(3,19),(3,20),(3,24),(4,1),(4,3),(4,6),(4,8),(4,9),(4,11),(4,17),(4,18),(4,21),(4,22),(4,24),(5,6),(5,10),(5,12),(5,16),(5,17),(5,20),(6,10),(6,15),(6,19),(6,22),(7,3),(7,4),(7,5),(7,7),(7,10),(7,11),(7,18),(8,4),(8,12),(8,14),(8,15),(8,20),(9,1),(9,2),(9,9),(9,16),(9,17),(9,19),(10,9),(10,19),(10,21),(11,2),(11,3),(11,11),(11,13),(11,21),(11,23),(12,2),(12,3),(12,7),(12,8),(12,13),(12,14),(12,18),(12,21),(13,4),(13,14),(13,15),(13,22),(13,23),(14,5),(14,6),(14,11),(14,12),(14,15),(14,23),(14,24);
/*!40000 ALTER TABLE `ec_product_category_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collection_products`
--

DROP TABLE IF EXISTS `ec_product_collection_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collection_products` (
  `product_collection_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`product_collection_id`),
  KEY `ec_product_collection_products_product_collection_id_index` (`product_collection_id`),
  KEY `ec_product_collection_products_product_id_index` (`product_id`),
  KEY `idx_product_id_collection_id` (`product_id`,`product_collection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collection_products`
--

LOCK TABLES `ec_product_collection_products` WRITE;
/*!40000 ALTER TABLE `ec_product_collection_products` DISABLE KEYS */;
INSERT INTO `ec_product_collection_products` VALUES (1,2),(1,5),(1,6),(1,12),(1,17),(1,23),(2,1),(2,3),(2,7),(2,8),(2,15),(2,18),(2,20),(2,24),(3,4),(3,9),(3,10),(3,11),(3,13),(3,14),(3,16),(3,19),(3,21),(3,22);
/*!40000 ALTER TABLE `ec_product_collection_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections`
--

DROP TABLE IF EXISTS `ec_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections`
--

LOCK TABLES `ec_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_product_collections` DISABLE KEYS */;
INSERT INTO `ec_product_collections` VALUES (1,'New Arrival','new-arrival',NULL,NULL,'published','2025-11-20 01:47:42','2025-11-20 01:47:42',0),(2,'Best Sellers','best-sellers',NULL,NULL,'published','2025-11-20 01:47:42','2025-11-20 01:47:42',0),(3,'Special Offer','special-offer',NULL,NULL,'published','2025-11-20 01:47:42','2025-11-20 01:47:42',0);
/*!40000 ALTER TABLE `ec_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections_translations`
--

DROP TABLE IF EXISTS `ec_product_collections_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_collections_id` bigint unsigned NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_collections_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections_translations`
--

LOCK TABLES `ec_product_collections_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_collections_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_collections_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_cross_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_cross_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_cross_sale_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  `is_variant` tinyint(1) NOT NULL DEFAULT '0',
  `price` decimal(15,2) DEFAULT '0.00',
  `price_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fixed',
  `apply_to_all_variations` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_cross_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_cross_sale_relations_to_product_id_index` (`to_product_id`),
  KEY `idx_product_cross_sale` (`from_product_id`,`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_cross_sale_relations`
--

LOCK TABLES `ec_product_cross_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` DISABLE KEYS */;
INSERT INTO `ec_product_cross_sale_relations` VALUES (1,3,0,0.00,'fixed',1),(1,5,0,0.00,'fixed',1),(1,6,0,0.00,'fixed',1),(1,12,0,0.00,'fixed',1),(1,20,0,0.00,'fixed',1),(1,24,0,0.00,'fixed',1),(2,1,0,0.00,'fixed',1),(2,7,0,0.00,'fixed',1),(2,14,0,0.00,'fixed',1),(2,15,0,0.00,'fixed',1),(2,21,0,0.00,'fixed',1),(2,23,0,0.00,'fixed',1),(3,8,0,0.00,'fixed',1),(3,10,0,0.00,'fixed',1),(3,12,0,0.00,'fixed',1),(3,17,0,0.00,'fixed',1),(3,18,0,0.00,'fixed',1),(3,20,0,0.00,'fixed',1),(3,21,0,0.00,'fixed',1),(4,1,0,0.00,'fixed',1),(4,3,0,0.00,'fixed',1),(4,5,0,0.00,'fixed',1),(4,8,0,0.00,'fixed',1),(4,9,0,0.00,'fixed',1),(4,12,0,0.00,'fixed',1),(5,1,0,0.00,'fixed',1),(5,8,0,0.00,'fixed',1),(5,9,0,0.00,'fixed',1),(5,16,0,0.00,'fixed',1),(5,18,0,0.00,'fixed',1),(5,21,0,0.00,'fixed',1),(5,22,0,0.00,'fixed',1),(6,2,0,0.00,'fixed',1),(6,3,0,0.00,'fixed',1),(6,11,0,0.00,'fixed',1),(6,14,0,0.00,'fixed',1),(6,15,0,0.00,'fixed',1),(6,18,0,0.00,'fixed',1),(6,22,0,0.00,'fixed',1),(7,2,0,0.00,'fixed',1),(7,10,0,0.00,'fixed',1),(7,11,0,0.00,'fixed',1),(7,12,0,0.00,'fixed',1),(7,13,0,0.00,'fixed',1),(7,17,0,0.00,'fixed',1),(7,24,0,0.00,'fixed',1),(8,5,0,0.00,'fixed',1),(8,9,0,0.00,'fixed',1),(8,17,0,0.00,'fixed',1),(8,19,0,0.00,'fixed',1),(8,22,0,0.00,'fixed',1),(8,24,0,0.00,'fixed',1),(9,3,0,0.00,'fixed',1),(9,4,0,0.00,'fixed',1),(9,13,0,0.00,'fixed',1),(9,18,0,0.00,'fixed',1),(9,19,0,0.00,'fixed',1),(9,24,0,0.00,'fixed',1),(10,5,0,0.00,'fixed',1),(10,6,0,0.00,'fixed',1),(10,7,0,0.00,'fixed',1),(10,9,0,0.00,'fixed',1),(10,17,0,0.00,'fixed',1),(10,18,0,0.00,'fixed',1),(10,19,0,0.00,'fixed',1),(11,1,0,0.00,'fixed',1),(11,3,0,0.00,'fixed',1),(11,7,0,0.00,'fixed',1),(11,15,0,0.00,'fixed',1),(11,18,0,0.00,'fixed',1),(11,21,0,0.00,'fixed',1),(12,4,0,0.00,'fixed',1),(12,6,0,0.00,'fixed',1),(12,13,0,0.00,'fixed',1),(12,14,0,0.00,'fixed',1),(12,15,0,0.00,'fixed',1),(12,21,0,0.00,'fixed',1),(13,1,0,0.00,'fixed',1),(13,2,0,0.00,'fixed',1),(13,4,0,0.00,'fixed',1),(13,12,0,0.00,'fixed',1),(13,16,0,0.00,'fixed',1),(13,20,0,0.00,'fixed',1),(13,22,0,0.00,'fixed',1),(14,2,0,0.00,'fixed',1),(14,6,0,0.00,'fixed',1),(14,10,0,0.00,'fixed',1),(14,15,0,0.00,'fixed',1),(14,18,0,0.00,'fixed',1),(14,22,0,0.00,'fixed',1),(15,3,0,0.00,'fixed',1),(15,4,0,0.00,'fixed',1),(15,11,0,0.00,'fixed',1),(15,17,0,0.00,'fixed',1),(15,18,0,0.00,'fixed',1),(16,1,0,0.00,'fixed',1),(16,2,0,0.00,'fixed',1),(16,4,0,0.00,'fixed',1),(16,5,0,0.00,'fixed',1),(16,8,0,0.00,'fixed',1),(16,19,0,0.00,'fixed',1),(16,21,0,0.00,'fixed',1),(17,4,0,0.00,'fixed',1),(17,10,0,0.00,'fixed',1),(17,11,0,0.00,'fixed',1),(17,14,0,0.00,'fixed',1),(17,18,0,0.00,'fixed',1),(17,22,0,0.00,'fixed',1),(18,2,0,0.00,'fixed',1),(18,6,0,0.00,'fixed',1),(18,8,0,0.00,'fixed',1),(18,12,0,0.00,'fixed',1),(18,23,0,0.00,'fixed',1),(19,1,0,0.00,'fixed',1),(19,11,0,0.00,'fixed',1),(19,14,0,0.00,'fixed',1),(19,17,0,0.00,'fixed',1),(19,20,0,0.00,'fixed',1),(19,22,0,0.00,'fixed',1),(20,3,0,0.00,'fixed',1),(20,4,0,0.00,'fixed',1),(20,7,0,0.00,'fixed',1),(20,8,0,0.00,'fixed',1),(20,9,0,0.00,'fixed',1),(20,13,0,0.00,'fixed',1),(20,24,0,0.00,'fixed',1),(21,11,0,0.00,'fixed',1),(21,14,0,0.00,'fixed',1),(21,20,0,0.00,'fixed',1),(21,23,0,0.00,'fixed',1),(21,24,0,0.00,'fixed',1),(22,2,0,0.00,'fixed',1),(22,6,0,0.00,'fixed',1),(22,7,0,0.00,'fixed',1),(22,19,0,0.00,'fixed',1),(22,20,0,0.00,'fixed',1),(22,24,0,0.00,'fixed',1),(23,6,0,0.00,'fixed',1),(23,15,0,0.00,'fixed',1),(23,16,0,0.00,'fixed',1),(23,19,0,0.00,'fixed',1),(23,21,0,0.00,'fixed',1),(23,22,0,0.00,'fixed',1),(24,2,0,0.00,'fixed',1),(24,5,0,0.00,'fixed',1),(24,7,0,0.00,'fixed',1),(24,11,0,0.00,'fixed',1),(24,16,0,0.00,'fixed',1),(24,19,0,0.00,'fixed',1),(24,23,0,0.00,'fixed',1);
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_files`
--

DROP TABLE IF EXISTS `ec_product_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned DEFAULT NULL,
  `url` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extras` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_files_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_files`
--

LOCK TABLES `ec_product_files` WRITE;
/*!40000 ALTER TABLE `ec_product_files` DISABLE KEYS */;
INSERT INTO `ec_product_files` VALUES (1,4,'ecommerce/digital-product-files/4.jpg','{\"filename\":\"4.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/4.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-11-20 08:47:50\",\"name\":\"4\",\"extension\":\"jpg\"}','2025-11-20 01:47:50','2025-11-20 01:47:50'),(2,4,'ecommerce/digital-product-files/4-1.jpg','{\"filename\":\"4-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/4-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-11-20 08:47:50\",\"name\":\"4-1\",\"extension\":\"jpg\"}','2025-11-20 01:47:50','2025-11-20 01:47:50'),(3,8,'ecommerce/digital-product-files/8.jpg','{\"filename\":\"8.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/8.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-11-20 08:47:50\",\"name\":\"8\",\"extension\":\"jpg\"}','2025-11-20 01:47:50','2025-11-20 01:47:50'),(4,8,'ecommerce/digital-product-files/8-1.jpg','{\"filename\":\"8-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/8-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-11-20 08:47:50\",\"name\":\"8-1\",\"extension\":\"jpg\"}','2025-11-20 01:47:50','2025-11-20 01:47:50'),(5,12,'ecommerce/digital-product-files/12.jpg','{\"filename\":\"12.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/12.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-11-20 08:47:50\",\"name\":\"12\",\"extension\":\"jpg\"}','2025-11-20 01:47:50','2025-11-20 01:47:50'),(6,12,'ecommerce/digital-product-files/12-1.jpg','{\"filename\":\"12-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/12-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-11-20 08:47:50\",\"name\":\"12-1\",\"extension\":\"jpg\"}','2025-11-20 01:47:50','2025-11-20 01:47:50'),(7,16,'ecommerce/digital-product-files/16.jpg','{\"filename\":\"16.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/16.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-11-20 08:47:50\",\"name\":\"16\",\"extension\":\"jpg\"}','2025-11-20 01:47:50','2025-11-20 01:47:50'),(8,16,'ecommerce/digital-product-files/16-1.jpg','{\"filename\":\"16-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/16-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-11-20 08:47:50\",\"name\":\"16-1\",\"extension\":\"jpg\"}','2025-11-20 01:47:50','2025-11-20 01:47:50'),(9,20,'ecommerce/digital-product-files/20.jpg','{\"filename\":\"20.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/20.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-11-20 08:47:50\",\"name\":\"20\",\"extension\":\"jpg\"}','2025-11-20 01:47:50','2025-11-20 01:47:50'),(10,20,'ecommerce/digital-product-files/20-1.jpg','{\"filename\":\"20-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/20-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-11-20 08:47:50\",\"name\":\"20-1\",\"extension\":\"jpg\"}','2025-11-20 01:47:50','2025-11-20 01:47:50'),(11,24,'ecommerce/digital-product-files/24.jpg','{\"filename\":\"24.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/24.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-11-20 08:47:50\",\"name\":\"24\",\"extension\":\"jpg\"}','2025-11-20 01:47:50','2025-11-20 01:47:50'),(12,24,'ecommerce/digital-product-files/24-1.jpg','{\"filename\":\"24-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/24-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-11-20 08:47:50\",\"name\":\"24-1\",\"extension\":\"jpg\"}','2025-11-20 01:47:50','2025-11-20 01:47:50'),(13,30,'ecommerce/digital-product-files/8-1.jpg','{\"filename\":\"8-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/8-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-11-20 08:47:50\",\"name\":\"8-1\",\"extension\":\"jpg\"}','2025-11-20 01:47:50','2025-11-20 01:47:50'),(14,31,'ecommerce/digital-product-files/8.jpg','{\"filename\":\"8.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/8.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-11-20 08:47:50\",\"name\":\"8\",\"extension\":\"jpg\"}','2025-11-20 01:47:50','2025-11-20 01:47:50'),(15,32,'ecommerce/digital-product-files/8.jpg','{\"filename\":\"8.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/8.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-11-20 08:47:50\",\"name\":\"8\",\"extension\":\"jpg\"}','2025-11-20 01:47:50','2025-11-20 01:47:50'),(16,39,'ecommerce/digital-product-files/12-1.jpg','{\"filename\":\"12-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/12-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-11-20 08:47:50\",\"name\":\"12-1\",\"extension\":\"jpg\"}','2025-11-20 01:47:50','2025-11-20 01:47:50'),(17,40,'ecommerce/digital-product-files/12.jpg','{\"filename\":\"12.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/12.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-11-20 08:47:50\",\"name\":\"12\",\"extension\":\"jpg\"}','2025-11-20 01:47:50','2025-11-20 01:47:50'),(18,41,'ecommerce/digital-product-files/12.jpg','{\"filename\":\"12.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/12.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-11-20 08:47:50\",\"name\":\"12\",\"extension\":\"jpg\"}','2025-11-20 01:47:50','2025-11-20 01:47:50'),(19,49,'ecommerce/digital-product-files/20-1.jpg','{\"filename\":\"20-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/20-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-11-20 08:47:50\",\"name\":\"20-1\",\"extension\":\"jpg\"}','2025-11-20 01:47:50','2025-11-20 01:47:50'),(20,50,'ecommerce/digital-product-files/20.jpg','{\"filename\":\"20.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/20.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-11-20 08:47:50\",\"name\":\"20\",\"extension\":\"jpg\"}','2025-11-20 01:47:50','2025-11-20 01:47:50'),(21,51,'ecommerce/digital-product-files/24-1.jpg','{\"filename\":\"24-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/24-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-11-20 08:47:50\",\"name\":\"24-1\",\"extension\":\"jpg\"}','2025-11-20 01:47:50','2025-11-20 01:47:50'),(22,52,'ecommerce/digital-product-files/24.jpg','{\"filename\":\"24.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/24.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-11-20 08:47:50\",\"name\":\"24\",\"extension\":\"jpg\"}','2025-11-20 01:47:50','2025-11-20 01:47:50');
/*!40000 ALTER TABLE `ec_product_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_label_products`
--

DROP TABLE IF EXISTS `ec_product_label_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_label_products` (
  `product_label_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_label_id`,`product_id`),
  KEY `ec_product_label_products_product_label_id_index` (`product_label_id`),
  KEY `ec_product_label_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_label_products`
--

LOCK TABLES `ec_product_label_products` WRITE;
/*!40000 ALTER TABLE `ec_product_label_products` DISABLE KEYS */;
INSERT INTO `ec_product_label_products` VALUES (1,6),(1,18),(2,3),(2,12),(2,15),(2,24),(3,9),(3,21);
/*!40000 ALTER TABLE `ec_product_label_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels`
--

DROP TABLE IF EXISTS `ec_product_labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `text_color` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels`
--

LOCK TABLES `ec_product_labels` WRITE;
/*!40000 ALTER TABLE `ec_product_labels` DISABLE KEYS */;
INSERT INTO `ec_product_labels` VALUES (1,'Hot','#d71e2d','published','2025-11-20 01:47:42','2025-11-20 01:47:42',NULL),(2,'New','#02856e','published','2025-11-20 01:47:42','2025-11-20 01:47:42',NULL),(3,'Sale','#fe9931','published','2025-11-20 01:47:42','2025-11-20 01:47:42',NULL);
/*!40000 ALTER TABLE `ec_product_labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels_translations`
--

DROP TABLE IF EXISTS `ec_product_labels_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_labels_id` bigint unsigned NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_labels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels_translations`
--

LOCK TABLES `ec_product_labels_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_labels_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_labels_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_license_codes`
--

DROP TABLE IF EXISTS `ec_product_license_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_license_codes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `license_code` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'available',
  `assigned_order_product_id` bigint unsigned DEFAULT NULL,
  `assigned_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_license_codes_product_id_status_index` (`product_id`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_license_codes`
--

LOCK TABLES `ec_product_license_codes` WRITE;
/*!40000 ALTER TABLE `ec_product_license_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_license_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_related_relations`
--

DROP TABLE IF EXISTS `ec_product_related_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_related_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_related_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_related_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_related_relations`
--

LOCK TABLES `ec_product_related_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_related_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_related_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_specification_attribute`
--

DROP TABLE IF EXISTS `ec_product_specification_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_specification_attribute` (
  `product_id` bigint unsigned NOT NULL,
  `attribute_id` bigint unsigned NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `hidden` tinyint(1) NOT NULL DEFAULT '0',
  `order` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_specification_attribute`
--

LOCK TABLES `ec_product_specification_attribute` WRITE;
/*!40000 ALTER TABLE `ec_product_specification_attribute` DISABLE KEYS */;
INSERT INTO `ec_product_specification_attribute` VALUES (1,1,'72.39 cm',0,0),(1,2,'34.58 cm',0,0),(1,3,'43.78 cm',0,0),(1,4,'92.94 cm',0,0),(1,5,'66.59 cm',0,0),(2,1,'74.69 cm',0,0),(2,2,'14.75 cm',0,0),(2,3,'6.09 cm',0,0),(2,4,'62.34 cm',0,0),(2,5,'27.51 cm',0,0),(3,1,'41.86 cm',0,0),(3,2,'28.73 cm',0,0),(3,3,'51.05 cm',0,0),(3,4,'68.34 cm',0,0),(3,5,'27.89 cm',0,0),(4,6,'9.29 cm',0,0),(4,7,'67.4 cm',0,0),(4,8,'2560x1440',0,0),(5,1,'11.97 cm',0,0),(5,2,'26.53 cm',0,0),(5,3,'38.51 cm',0,0),(5,4,'96.66 cm',0,0),(5,5,'69.67 cm',0,0),(6,6,'43.97 cm',0,0),(6,7,'26.35 cm',0,0),(6,8,'2560x1440',0,0),(7,1,'2.76 cm',0,0),(7,2,'66.71 cm',0,0),(7,3,'63.18 cm',0,0),(7,4,'95.11 cm',0,0),(7,5,'3.39 cm',0,0),(8,1,'85.82 cm',0,0),(8,2,'45.71 cm',0,0),(8,3,'45.06 cm',0,0),(8,4,'74.81 cm',0,0),(8,5,'35.9 cm',0,0),(9,1,'73.44 cm',0,0),(9,2,'27.82 cm',0,0),(9,3,'43.98 cm',0,0),(9,4,'35.58 cm',0,0),(9,5,'37.08 cm',0,0),(10,1,'93.94 cm',0,0),(10,2,'64.25 cm',0,0),(10,3,'67.33 cm',0,0),(10,4,'43.23 cm',0,0),(10,5,'31.15 cm',0,0),(11,1,'9.64 cm',0,0),(11,2,'88.63 cm',0,0),(11,3,'77.92 cm',0,0),(11,4,'27.41 cm',0,0),(11,5,'76.71 cm',0,0),(12,6,'19.21 cm',0,0),(12,7,'17.65 cm',0,0),(12,8,'3840x2160',0,0),(13,1,'2.39 cm',0,0),(13,2,'68.47 cm',0,0),(13,3,'32.98 cm',0,0),(13,4,'19.57 cm',0,0),(13,5,'34.97 cm',0,0),(14,6,'90 cm',0,0),(14,7,'49.52 cm',0,0),(14,8,'1920x1080',0,0),(15,1,'75.34 cm',0,0),(15,2,'20.37 cm',0,0),(15,3,'12.09 cm',0,0),(15,4,'31.19 cm',0,0),(15,5,'98.01 cm',0,0),(16,6,'99.46 cm',0,0),(16,7,'18.93 cm',0,0),(16,8,'1920x1080',0,0),(17,6,'3.72 cm',0,0),(17,7,'90.95 cm',0,0),(17,8,'3840x2160',0,0),(18,1,'35.02 cm',0,0),(18,2,'64.13 cm',0,0),(18,3,'12.23 cm',0,0),(18,4,'12.07 cm',0,0),(18,5,'42.04 cm',0,0),(19,6,'66.64 cm',0,0),(19,7,'30.88 cm',0,0),(19,8,'1920x1080',0,0),(20,1,'67.47 cm',0,0),(20,2,'94.69 cm',0,0),(20,3,'98.18 cm',0,0),(20,4,'97.14 cm',0,0),(20,5,'85.96 cm',0,0),(21,6,'72.86 cm',0,0),(21,7,'62.68 cm',0,0),(21,8,'2560x1440',0,0),(22,1,'82.11 cm',0,0),(22,2,'27.96 cm',0,0),(22,3,'24.69 cm',0,0),(22,4,'79.52 cm',0,0),(22,5,'5.53 cm',0,0),(23,1,'47.61 cm',0,0),(23,2,'2.37 cm',0,0),(23,3,'72.72 cm',0,0),(23,4,'9.53 cm',0,0),(23,5,'35.95 cm',0,0),(24,1,'44.47 cm',0,0),(24,2,'98.43 cm',0,0),(24,3,'24.08 cm',0,0),(24,4,'39.87 cm',0,0),(24,5,'63.97 cm',0,0);
/*!40000 ALTER TABLE `ec_product_specification_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_specification_attribute_translations`
--

DROP TABLE IF EXISTS `ec_product_specification_attribute_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_specification_attribute_translations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `attribute_id` bigint unsigned NOT NULL,
  `lang_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `psat_unique` (`product_id`,`attribute_id`,`lang_code`),
  KEY `psat_product_attribute_index` (`product_id`,`attribute_id`),
  KEY `psat_product_id_index` (`product_id`),
  KEY `psat_attribute_id_index` (`attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_specification_attribute_translations`
--

LOCK TABLES `ec_product_specification_attribute_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_specification_attribute_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_specification_attribute_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tag_product`
--

DROP TABLE IF EXISTS `ec_product_tag_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tag_product` (
  `product_id` bigint unsigned NOT NULL,
  `tag_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tag_id`),
  KEY `ec_product_tag_product_product_id_index` (`product_id`),
  KEY `ec_product_tag_product_tag_id_index` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tag_product`
--

LOCK TABLES `ec_product_tag_product` WRITE;
/*!40000 ALTER TABLE `ec_product_tag_product` DISABLE KEYS */;
INSERT INTO `ec_product_tag_product` VALUES (1,1),(1,2),(1,3),(2,1),(2,2),(2,4),(3,1),(3,4),(3,5),(4,1),(4,2),(4,3),(5,1),(5,2),(5,4),(6,2),(6,4),(6,5),(7,2),(7,3),(7,4),(8,1),(8,3),(8,5),(9,2),(9,4),(9,5),(10,2),(10,3),(10,4),(11,3),(11,4),(11,5),(12,1),(12,3),(12,4),(13,1),(13,3),(13,4),(14,1),(14,3),(14,5),(15,1),(15,2),(15,5),(16,2),(16,3),(16,5),(17,1),(17,4),(17,5),(18,2),(18,3),(18,4),(19,1),(19,2),(19,3),(20,3),(20,4),(20,5),(21,1),(21,2),(21,5),(22,1),(22,2),(22,4),(23,2),(23,3),(23,4),(24,2),(24,3),(24,5);
/*!40000 ALTER TABLE `ec_product_tag_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags`
--

DROP TABLE IF EXISTS `ec_product_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags`
--

LOCK TABLES `ec_product_tags` WRITE;
/*!40000 ALTER TABLE `ec_product_tags` DISABLE KEYS */;
INSERT INTO `ec_product_tags` VALUES (1,'Wallet',NULL,'published','2025-11-20 01:47:42','2025-11-20 01:47:42'),(2,'Bags',NULL,'published','2025-11-20 01:47:42','2025-11-20 01:47:42'),(3,'Shoes',NULL,'published','2025-11-20 01:47:42','2025-11-20 01:47:42'),(4,'Clothes',NULL,'published','2025-11-20 01:47:42','2025-11-20 01:47:42'),(5,'Hand bag',NULL,'published','2025-11-20 01:47:43','2025-11-20 01:47:43');
/*!40000 ALTER TABLE `ec_product_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags_translations`
--

DROP TABLE IF EXISTS `ec_product_tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_tags_id` bigint unsigned NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags_translations`
--

LOCK TABLES `ec_product_tags_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_up_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_up_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_up_sale_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_up_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_up_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_up_sale_relations`
--

LOCK TABLES `ec_product_up_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variation_items`
--

DROP TABLE IF EXISTS `ec_product_variation_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variation_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_id` bigint unsigned NOT NULL,
  `variation_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_variation_items_attribute_id_variation_id_unique` (`attribute_id`,`variation_id`),
  KEY `attribute_variation_index` (`attribute_id`,`variation_id`),
  KEY `idx_variation_id` (`variation_id`),
  KEY `idx_variation_attribute_covering` (`variation_id`,`attribute_id`),
  KEY `ec_product_variation_items_variation_id_attribute_id_index` (`variation_id`,`attribute_id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variation_items`
--

LOCK TABLES `ec_product_variation_items` WRITE;
/*!40000 ALTER TABLE `ec_product_variation_items` DISABLE KEYS */;
INSERT INTO `ec_product_variation_items` VALUES (9,1,5),(11,1,6),(17,2,9),(19,2,10),(29,2,15),(35,2,18),(43,2,22),(47,2,24),(5,3,3),(25,3,13),(37,3,19),(39,3,20),(49,3,25),(1,4,1),(3,4,2),(7,4,4),(13,4,7),(15,4,8),(21,4,11),(23,4,12),(33,4,17),(51,4,26),(53,4,27),(55,4,28),(27,5,14),(31,5,16),(41,5,21),(45,5,23),(8,6,4),(10,6,5),(14,6,7),(18,6,9),(20,6,10),(50,6,25),(52,6,26),(2,7,1),(24,7,12),(38,7,19),(42,7,21),(48,7,24),(4,8,2),(6,8,3),(12,8,6),(56,8,28),(16,9,8),(28,9,14),(30,9,15),(40,9,20),(44,9,22),(46,9,23),(22,10,11),(26,10,13),(32,10,16),(34,10,17),(36,10,18),(54,10,27);
/*!40000 ALTER TABLE `ec_product_variation_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variations`
--

DROP TABLE IF EXISTS `ec_product_variations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned DEFAULT NULL,
  `configurable_product_id` bigint unsigned NOT NULL,
  `is_default` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_variations_product_id_configurable_product_id_unique` (`product_id`,`configurable_product_id`),
  KEY `configurable_product_index` (`product_id`,`configurable_product_id`),
  KEY `idx_configurable_product_id` (`configurable_product_id`),
  KEY `idx_product_variations_config` (`configurable_product_id`,`is_default`),
  KEY `ec_product_variations_product_id_index` (`product_id`),
  KEY `ec_product_variations_configurable_product_id_index` (`configurable_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variations`
--

LOCK TABLES `ec_product_variations` WRITE;
/*!40000 ALTER TABLE `ec_product_variations` DISABLE KEYS */;
INSERT INTO `ec_product_variations` VALUES (1,25,2,1),(2,26,2,0),(3,27,5,1),(4,28,5,0),(5,29,5,0),(6,30,8,1),(7,31,8,0),(8,32,8,0),(9,33,10,1),(10,34,10,0),(11,35,10,0),(12,36,10,0),(13,37,11,1),(14,38,11,0),(15,39,12,1),(16,40,12,0),(17,41,12,0),(18,42,13,1),(19,43,13,0),(20,44,13,0),(21,45,13,0),(22,46,15,1),(23,47,15,0),(24,48,15,0),(25,49,20,1),(26,50,20,0),(27,51,24,1),(28,52,24,0);
/*!40000 ALTER TABLE `ec_product_variations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_views`
--

DROP TABLE IF EXISTS `ec_product_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_views` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `views` int NOT NULL DEFAULT '1',
  `date` date NOT NULL DEFAULT '2025-11-20',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_views_product_id_date_unique` (`product_id`,`date`),
  KEY `ec_product_views_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_views`
--

LOCK TABLES `ec_product_views` WRITE;
/*!40000 ALTER TABLE `ec_product_views` DISABLE KEYS */;
INSERT INTO `ec_product_views` VALUES (1,14,1,'2026-10-20');
/*!40000 ALTER TABLE `ec_product_views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_with_attribute_set`
--

DROP TABLE IF EXISTS `ec_product_with_attribute_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_with_attribute_set` (
  `attribute_set_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`attribute_set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_with_attribute_set`
--

LOCK TABLES `ec_product_with_attribute_set` WRITE;
/*!40000 ALTER TABLE `ec_product_with_attribute_set` DISABLE KEYS */;
INSERT INTO `ec_product_with_attribute_set` VALUES (1,2,0),(2,2,0),(1,5,0),(2,5,0),(1,8,0),(2,8,0),(1,10,0),(2,10,0),(1,11,0),(2,11,0),(1,12,0),(2,12,0),(1,13,0),(2,13,0),(1,15,0),(2,15,0),(1,20,0),(2,20,0),(1,24,0),(2,24,0);
/*!40000 ALTER TABLE `ec_product_with_attribute_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products`
--

DROP TABLE IF EXISTS `ec_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `images` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `video_media` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `sku` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  `quantity` int unsigned DEFAULT NULL,
  `allow_checkout_when_out_of_stock` tinyint unsigned NOT NULL DEFAULT '0',
  `with_storehouse_management` tinyint unsigned NOT NULL DEFAULT '0',
  `stock_status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'in_stock',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `brand_id` bigint unsigned DEFAULT NULL,
  `is_variation` tinyint NOT NULL DEFAULT '0',
  `variations_count` int unsigned NOT NULL DEFAULT '0',
  `reviews_count` int unsigned NOT NULL DEFAULT '0',
  `reviews_avg` decimal(3,2) NOT NULL DEFAULT '0.00',
  `sale_type` tinyint NOT NULL DEFAULT '0',
  `price` double unsigned DEFAULT NULL,
  `sale_price` double unsigned DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `length` double DEFAULT NULL,
  `wide` double DEFAULT NULL,
  `height` double DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `tax_id` bigint unsigned DEFAULT NULL,
  `views` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by_id` bigint unsigned DEFAULT '0',
  `created_by_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_type` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'physical',
  `barcode` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cost_per_item` double DEFAULT NULL,
  `price_includes_tax` tinyint(1) NOT NULL DEFAULT '0',
  `generate_license_code` tinyint(1) NOT NULL DEFAULT '0',
  `license_code_type` enum('auto_generate','pick_from_list') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'auto_generate',
  `minimum_order_quantity` int unsigned DEFAULT '0',
  `maximum_order_quantity` int unsigned DEFAULT '0',
  `notify_attachment_updated` tinyint(1) NOT NULL DEFAULT '0',
  `specification_table_id` bigint unsigned DEFAULT NULL,
  `store_id` bigint unsigned DEFAULT NULL,
  `approved_by` bigint unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ec_products_brand_id_status_is_variation_created_at_index` (`brand_id`,`status`,`is_variation`,`created_at`),
  KEY `sale_type_index` (`sale_type`),
  KEY `start_date_index` (`start_date`),
  KEY `end_date_index` (`end_date`),
  KEY `sale_price_index` (`sale_price`),
  KEY `is_variation_index` (`is_variation`),
  KEY `ec_products_sku_index` (`sku`),
  KEY `idx_products_export` (`id`,`is_variation`),
  KEY `idx_variation_name_id` (`is_variation`,`name`,`id`),
  KEY `ec_products_variations_count_index` (`variations_count`),
  KEY `ec_products_slug_index` (`slug`),
  KEY `idx_products_status_variation` (`status`,`is_variation`,`id`),
  KEY `idx_products_price_sale` (`sale_type`,`sale_price`,`price`),
  KEY `idx_products_order_created` (`order`,`created_at`),
  KEY `idx_products_stock` (`with_storehouse_management`,`stock_status`,`quantity`),
  KEY `ec_products_reviews_count_index` (`reviews_count`),
  KEY `ec_products_reviews_avg_index` (`reviews_avg`),
  KEY `ec_products_status_is_variation_index` (`status`,`is_variation`),
  KEY `ec_products_storehouse_quantity_index` (`with_storehouse_management`,`quantity`),
  KEY `idx_store_variation_status` (`store_id`,`is_variation`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products`
--

LOCK TABLES `ec_products` WRITE;
/*!40000 ALTER TABLE `ec_products` DISABLE KEYS */;
INSERT INTO `ec_products` VALUES (1,'Seeds of Change Organic Quinoe','seeds-of-change-organic-quinoe','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/1.jpg\",\"products\\/1-1.jpg\"]',NULL,'0N-108',0,16,0,1,'in_stock',1,4,0,0,10,2.40,0,1151,653,NULL,NULL,17,13,10,848,NULL,130043,'2025-11-20 01:47:48','2025-11-20 01:48:07',0,'Botble\\ACL\\Models\\User',NULL,'physical','9719473541231',NULL,0,0,'auto_generate',0,0,0,1,2,0),(2,'All Natural Italian-Style Chicken Meatballs','all-natural-italian-style-chicken-meatballs','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/2.jpg\",\"products\\/2-1.jpg\"]',NULL,'XO-164-A1',0,12,0,1,'in_stock',1,1,0,2,10,2.90,0,1485,NULL,NULL,NULL,11,20,17,533,NULL,173153,'2025-11-20 01:47:48','2025-11-20 01:48:08',0,'Botble\\ACL\\Models\\User',NULL,'physical','0089926560928',NULL,0,0,'auto_generate',0,0,0,1,2,0),(3,'Angie’s Boomchickapop Sweet &amp; Salty Kettle Corn','angies-boomchickapop-sweet-salty-kettle-corn','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/3.jpg\",\"products\\/3-1.jpg\"]',NULL,'AV-143',0,14,0,1,'in_stock',1,6,0,0,10,3.50,0,1614,190,NULL,NULL,16,19,13,572,NULL,149485,'2025-11-20 01:47:48','2025-11-20 01:48:08',0,'Botble\\ACL\\Models\\User',NULL,'physical','6915554775240',NULL,0,0,'auto_generate',0,0,0,1,1,0),(4,'Foster Farms Takeout Crispy Classic (Digital)','foster-farms-takeout-crispy-classic','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/4.jpg\",\"products\\/4-1.jpg\"]',NULL,'RS-183',0,17,0,1,'in_stock',1,7,0,0,10,4.10,0,1286,1246,NULL,NULL,18,14,12,672,NULL,78565,'2025-11-20 01:47:48','2025-11-20 01:48:08',0,'Botble\\ACL\\Models\\User',NULL,'digital','3413835779404',NULL,0,0,'auto_generate',0,0,0,2,1,0),(5,'Blue Diamond Almonds Lightly','blue-diamond-almonds-lightly','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/5.jpg\",\"products\\/5-1.jpg\"]',NULL,'IT-178-A1',0,20,0,1,'in_stock',1,4,0,3,10,3.70,0,1017,NULL,NULL,NULL,12,19,18,512,NULL,131106,'2025-11-20 01:47:48','2025-11-20 01:48:08',0,'Botble\\ACL\\Models\\User',NULL,'physical','4948065674933',NULL,0,0,'auto_generate',0,0,0,1,1,0),(6,'Chobani Complete Vanilla Greek','chobani-complete-vanilla-greek','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/6.jpg\",\"products\\/6-1.jpg\"]',NULL,'RI-121',0,20,0,1,'in_stock',1,5,0,0,10,2.80,0,382,325,NULL,NULL,11,19,17,825,NULL,30553,'2025-11-20 01:47:48','2025-11-20 01:48:08',0,'Botble\\ACL\\Models\\User',NULL,'physical','9388293038988',NULL,0,0,'auto_generate',0,0,0,2,1,0),(7,'Canada Dry Ginger Ale – 2 L Bottle','canada-dry-ginger-ale-2-l-bottle','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/7.jpg\",\"products\\/7-1.jpg\"]',NULL,'WB-184',0,14,0,1,'in_stock',1,1,0,0,10,3.60,0,305,118,NULL,NULL,17,19,16,707,NULL,117519,'2025-11-20 01:47:48','2025-11-20 01:48:08',0,'Botble\\ACL\\Models\\User',NULL,'physical','4900543687699',NULL,0,0,'auto_generate',0,0,0,1,2,0),(8,'Encore Seafoods Stuffed Alaskan (Digital)','encore-seafoods-stuffed-alaskan','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/8.jpg\",\"products\\/8-1.jpg\"]',NULL,'GV-136-A1',0,15,0,1,'in_stock',1,1,0,3,10,2.70,0,1197,885.78,NULL,NULL,17,15,13,735,NULL,98534,'2025-11-20 01:47:48','2025-11-20 01:48:08',0,'Botble\\ACL\\Models\\User',NULL,'digital','2631499051884',NULL,0,0,'auto_generate',0,0,0,1,1,0),(9,'Gorton’s Beer Battered Fish Fillets','gortons-beer-battered-fish-fillets','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/9.jpg\",\"products\\/9-1.jpg\"]',NULL,'3Z-155',0,18,0,1,'in_stock',1,3,0,0,10,3.10,0,1509,1406,NULL,NULL,14,12,20,841,NULL,158789,'2025-11-20 01:47:49','2025-11-20 01:48:08',0,'Botble\\ACL\\Models\\User',NULL,'physical','4087871958872',NULL,0,0,'auto_generate',0,0,0,1,2,0),(10,'Haagen-Dazs Caramel Cone Ice Cream','haagen-dazs-caramel-cone-ice-cream','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/10.jpg\",\"products\\/10-1.jpg\"]',NULL,'1R-136-A1',0,19,0,1,'in_stock',1,2,0,4,10,3.80,0,1851,NULL,NULL,NULL,18,10,12,517,NULL,166064,'2025-11-20 01:47:49','2025-11-20 01:48:08',0,'Botble\\ACL\\Models\\User',NULL,'physical','6016280988123',NULL,0,0,'auto_generate',0,0,0,1,2,0),(11,'Nestle Original Coffee-Mate Coffee Creamer','nestle-original-coffee-mate-coffee-creamer','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/11.jpg\",\"products\\/11-1.jpg\"]',NULL,'1Z-163-A1',0,15,0,1,'in_stock',1,4,0,2,10,3.00,0,525,NULL,NULL,NULL,11,14,12,801,NULL,155536,'2025-11-20 01:47:49','2025-11-20 01:48:08',0,'Botble\\ACL\\Models\\User',NULL,'physical','8210992610084',NULL,0,0,'auto_generate',0,0,0,1,4,0),(12,'Naturally Flavored Cinnamon Vanilla Light Roast Coffee (Digital)','naturally-flavored-cinnamon-vanilla-light-roast-coffee','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/12.jpg\",\"products\\/12-1.jpg\"]',NULL,'NU-174-A1',0,19,0,1,'in_stock',1,4,0,3,10,3.10,0,2215,1705.55,NULL,NULL,11,16,10,528,NULL,126046,'2025-11-20 01:47:49','2025-11-20 01:48:08',0,'Botble\\ACL\\Models\\User',NULL,'digital','0825851650941',NULL,0,0,'auto_generate',0,0,0,2,1,0),(13,'Pepperidge Farm Farmhouse Hearty White Bread','pepperidge-farm-farmhouse-hearty-white-bread','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/13.jpg\",\"products\\/13-1.jpg\"]',NULL,'MQ-102-A1',0,18,0,1,'in_stock',1,3,0,4,10,2.80,0,2331,NULL,NULL,NULL,16,20,20,554,NULL,126585,'2025-11-20 01:47:49','2025-11-20 01:48:08',0,'Botble\\ACL\\Models\\User',NULL,'physical','6633276015993',NULL,0,0,'auto_generate',0,0,0,1,2,0),(14,'Organic Frozen Triple Berry Blend','organic-frozen-triple-berry-blend','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/14.jpg\",\"products\\/14-1.jpg\"]',NULL,'LU-188',0,13,0,1,'in_stock',1,1,0,0,10,3.60,0,1092,980,NULL,NULL,12,18,20,845,NULL,182404,'2025-11-20 01:47:49','2025-11-20 01:48:08',0,'Botble\\ACL\\Models\\User',NULL,'physical','7415881647139',NULL,0,0,'auto_generate',0,0,0,2,1,0),(15,'Oroweat Country Buttermilk Bread','oroweat-country-buttermilk-bread','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/15.jpg\",\"products\\/15-1.jpg\"]',NULL,'3P-135-A1',0,12,0,1,'in_stock',1,7,0,3,10,2.70,0,829,NULL,NULL,NULL,12,13,19,754,NULL,194907,'2025-11-20 01:47:49','2025-11-20 01:48:08',0,'Botble\\ACL\\Models\\User',NULL,'physical','5963327344545',NULL,0,0,'auto_generate',0,0,0,1,3,0),(16,'Foster Farms Takeout Crispy Classic Buffalo Wings (Digital)','foster-farms-takeout-crispy-classic-buffalo-wings','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/16.jpg\",\"products\\/16-1.jpg\",\"products\\/16-2.jpg\",\"products\\/16-3.jpg\",\"products\\/16-4.jpg\",\"products\\/16-5.jpg\",\"products\\/16-6.jpg\"]',NULL,'BD-141',0,11,0,1,'in_stock',1,2,0,0,10,2.90,0,2050,1471,NULL,NULL,17,16,11,537,NULL,85747,'2025-11-20 01:47:49','2025-11-20 01:48:08',0,'Botble\\ACL\\Models\\User',NULL,'digital','6872882581175',NULL,0,0,'auto_generate',0,0,0,2,1,0),(17,'Angie’s Boomchickapop Sweet &amp; Salty Kettle Corn','angies-boomchickapop-sweet-salty-kettle-corn','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/17.jpg\",\"products\\/17-1.jpg\"]',NULL,'3G-152',0,17,0,1,'in_stock',1,3,0,0,10,2.40,0,255,149,NULL,NULL,18,19,11,839,NULL,30798,'2025-11-20 01:47:49','2025-11-20 01:48:08',0,'Botble\\ACL\\Models\\User',NULL,'physical','3554439923760',NULL,0,0,'auto_generate',0,0,0,2,1,0),(18,'All Natural Italian-Style Chicken Meatballs','all-natural-italian-style-chicken-meatballs','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/18.jpg\",\"products\\/18-1.jpg\"]',NULL,'QK-155',0,16,0,1,'in_stock',1,5,0,0,10,2.30,0,506,229,NULL,NULL,11,11,12,869,NULL,162579,'2025-11-20 01:47:49','2025-11-20 01:48:08',0,'Botble\\ACL\\Models\\User',NULL,'physical','3746213827009',NULL,0,0,'auto_generate',0,0,0,1,4,0),(19,'Simply Lemonade with Raspberry Juice','simply-lemonade-with-raspberry-juice','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/19.jpg\",\"products\\/19-1.jpg\"]',NULL,'E7-160',0,14,0,1,'in_stock',1,4,0,0,10,2.60,0,386,61,NULL,NULL,16,19,20,693,NULL,10953,'2025-11-20 01:47:49','2025-11-20 01:48:08',0,'Botble\\ACL\\Models\\User',NULL,'physical','6706467776024',NULL,0,0,'auto_generate',0,0,0,2,1,0),(20,'Perdue Simply Smart Organics Gluten Free (Digital)','perdue-simply-smart-organics-gluten-free','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/20.jpg\",\"products\\/20-1.jpg\"]',NULL,'LN-140-A1',0,20,0,1,'in_stock',1,6,0,2,10,3.30,0,2309,1985.74,NULL,NULL,13,15,17,774,NULL,92413,'2025-11-20 01:47:49','2025-11-20 01:48:08',0,'Botble\\ACL\\Models\\User',NULL,'digital','7733103503149',NULL,0,0,'auto_generate',0,0,0,1,2,0),(21,'Chen Watermelon','chen-watermelon','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/21.jpg\",\"products\\/21-1.jpg\"]',NULL,'XG-110',0,12,0,1,'in_stock',1,1,0,0,10,2.50,0,1054,421,NULL,NULL,18,18,13,525,NULL,69723,'2025-11-20 01:47:49','2025-11-20 01:48:08',0,'Botble\\ACL\\Models\\User',NULL,'physical','9765899703630',NULL,0,0,'auto_generate',0,0,0,2,1,0),(22,'Organic Cage-Free Grade A Large Brown Eggs','organic-cage-free-grade-a-large-brown-eggs','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/22.jpg\",\"products\\/22-1.jpg\"]',NULL,'BL-155',0,14,0,1,'in_stock',1,3,0,0,10,2.40,0,1971,632,NULL,NULL,15,18,15,572,NULL,127198,'2025-11-20 01:47:49','2025-11-20 01:48:08',0,'Botble\\ACL\\Models\\User',NULL,'physical','1225451893851',NULL,0,0,'auto_generate',0,0,0,1,1,0),(23,'Colorful Banana','colorful-banana','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/23.jpg\",\"products\\/23-1.jpg\"]',NULL,'YM-194',0,16,0,1,'in_stock',1,6,0,0,10,3.20,0,2424,2017,NULL,NULL,13,17,19,822,NULL,53738,'2025-11-20 01:47:49','2025-11-20 01:48:08',0,'Botble\\ACL\\Models\\User',NULL,'physical','6172387238124',NULL,0,0,'auto_generate',0,0,0,1,3,0),(24,'Signature Wood-Fired Mushroom and Caramelized (Digital)','signature-wood-fired-mushroom-and-caramelized','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/24.jpg\",\"products\\/24-1.jpg\"]',NULL,'JU-122-A1',0,14,0,1,'in_stock',1,2,0,2,10,3.00,0,411,300.03,NULL,NULL,17,12,15,631,NULL,69114,'2025-11-20 01:47:49','2025-11-20 01:48:08',0,'Botble\\ACL\\Models\\User',NULL,'digital','6795413263183',NULL,0,0,'auto_generate',0,0,0,1,2,0),(25,'All Natural Italian-Style Chicken Meatballs',NULL,NULL,NULL,'published','[\"products\\/2-1.jpg\"]',NULL,'XO-164-A1',0,12,0,1,'in_stock',0,1,1,0,0,0.00,0,1485,NULL,NULL,NULL,11,20,17,533,NULL,0,'2025-11-20 01:47:49','2025-11-20 01:48:08',0,'Botble\\ACL\\Models\\User',NULL,'physical','4465965437142',NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(26,'All Natural Italian-Style Chicken Meatballs',NULL,NULL,NULL,'published','[\"products\\/2.jpg\"]',NULL,'XO-164-A1-A2',0,12,0,1,'in_stock',0,1,1,0,0,0.00,0,1485,NULL,NULL,NULL,11,20,17,533,NULL,0,'2025-11-20 01:47:49','2025-11-20 01:48:08',0,'Botble\\ACL\\Models\\User',NULL,'physical','0921440460899',NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(27,'Blue Diamond Almonds Lightly',NULL,NULL,NULL,'published','[\"products\\/5-1.jpg\"]',NULL,'IT-178-A1',0,20,0,1,'in_stock',0,4,1,0,0,0.00,0,1017,NULL,NULL,NULL,12,19,18,512,NULL,0,'2025-11-20 01:47:49','2025-11-20 01:48:08',0,'Botble\\ACL\\Models\\User',NULL,'physical','8036807346821',NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(28,'Blue Diamond Almonds Lightly',NULL,NULL,NULL,'published','[\"products\\/5.jpg\"]',NULL,'IT-178-A1-A2',0,20,0,1,'in_stock',0,4,1,0,0,0.00,0,1017,NULL,NULL,NULL,12,19,18,512,NULL,0,'2025-11-20 01:47:49','2025-11-20 01:48:08',0,'Botble\\ACL\\Models\\User',NULL,'physical','4631307657343',NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(29,'Blue Diamond Almonds Lightly',NULL,NULL,NULL,'published','[\"products\\/5.jpg\"]',NULL,'IT-178-A1-A3',0,20,0,1,'in_stock',0,4,1,0,0,0.00,0,1017,NULL,NULL,NULL,12,19,18,512,NULL,0,'2025-11-20 01:47:49','2025-11-20 01:48:08',0,'Botble\\ACL\\Models\\User',NULL,'physical','8961188809040',NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(30,'Encore Seafoods Stuffed Alaskan (Digital)',NULL,NULL,NULL,'published','[\"products\\/8-1.jpg\"]',NULL,'GV-136-A1',0,15,0,1,'in_stock',0,1,1,0,0,0.00,0,1197,885.78,NULL,NULL,17,15,13,735,NULL,0,'2025-11-20 01:47:49','2025-11-20 01:48:08',0,'Botble\\ACL\\Models\\User',NULL,'digital','0255908348093',NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(31,'Encore Seafoods Stuffed Alaskan (Digital)',NULL,NULL,NULL,'published','[\"products\\/8.jpg\"]',NULL,'GV-136-A1-A2',0,15,0,1,'in_stock',0,1,1,0,0,0.00,0,1197,873.81,NULL,NULL,17,15,13,735,NULL,0,'2025-11-20 01:47:49','2025-11-20 01:48:08',0,'Botble\\ACL\\Models\\User',NULL,'digital','9315193475339',NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(32,'Encore Seafoods Stuffed Alaskan (Digital)',NULL,NULL,NULL,'published','[\"products\\/8.jpg\"]',NULL,'GV-136-A1-A3',0,15,0,1,'in_stock',0,1,1,0,0,0.00,0,1197,837.9,NULL,NULL,17,15,13,735,NULL,0,'2025-11-20 01:47:50','2025-11-20 01:48:08',0,'Botble\\ACL\\Models\\User',NULL,'digital','5494386363098',NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(33,'Haagen-Dazs Caramel Cone Ice Cream',NULL,NULL,NULL,'published','[\"products\\/10-1.jpg\"]',NULL,'1R-136-A1',0,19,0,1,'in_stock',0,2,1,0,0,0.00,0,1851,NULL,NULL,NULL,18,10,12,517,NULL,0,'2025-11-20 01:47:50','2025-11-20 01:48:08',0,'Botble\\ACL\\Models\\User',NULL,'physical','5341907134067',NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(34,'Haagen-Dazs Caramel Cone Ice Cream',NULL,NULL,NULL,'published','[\"products\\/10.jpg\"]',NULL,'1R-136-A1-A2',0,19,0,1,'in_stock',0,2,1,0,0,0.00,0,1851,NULL,NULL,NULL,18,10,12,517,NULL,0,'2025-11-20 01:47:50','2025-11-20 01:48:08',0,'Botble\\ACL\\Models\\User',NULL,'physical','9633135432418',NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(35,'Haagen-Dazs Caramel Cone Ice Cream',NULL,NULL,NULL,'published','[\"products\\/10.jpg\"]',NULL,'1R-136-A1-A3',0,19,0,1,'in_stock',0,2,1,0,0,0.00,0,1851,NULL,NULL,NULL,18,10,12,517,NULL,0,'2025-11-20 01:47:50','2025-11-20 01:48:08',0,'Botble\\ACL\\Models\\User',NULL,'physical','7686790094837',NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(36,'Haagen-Dazs Caramel Cone Ice Cream',NULL,NULL,NULL,'published','[\"products\\/10.jpg\"]',NULL,'1R-136-A1-A4',0,19,0,1,'in_stock',0,2,1,0,0,0.00,0,1851,NULL,NULL,NULL,18,10,12,517,NULL,0,'2025-11-20 01:47:50','2025-11-20 01:48:08',0,'Botble\\ACL\\Models\\User',NULL,'physical','9952675064812',NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(37,'Nestle Original Coffee-Mate Coffee Creamer',NULL,NULL,NULL,'published','[\"products\\/11-1.jpg\"]',NULL,'1Z-163-A1',0,15,0,1,'in_stock',0,4,1,0,0,0.00,0,525,NULL,NULL,NULL,11,14,12,801,NULL,0,'2025-11-20 01:47:50','2025-11-20 01:48:08',0,'Botble\\ACL\\Models\\User',NULL,'physical','5297445027197',NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(38,'Nestle Original Coffee-Mate Coffee Creamer',NULL,NULL,NULL,'published','[\"products\\/11.jpg\"]',NULL,'1Z-163-A1-A2',0,15,0,1,'in_stock',0,4,1,0,0,0.00,0,525,NULL,NULL,NULL,11,14,12,801,NULL,0,'2025-11-20 01:47:50','2025-11-20 01:48:08',0,'Botble\\ACL\\Models\\User',NULL,'physical','1746262855390',NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(39,'Naturally Flavored Cinnamon Vanilla Light Roast Coffee (Digital)',NULL,NULL,NULL,'published','[\"products\\/12-1.jpg\"]',NULL,'NU-174-A1',0,19,0,1,'in_stock',0,4,1,0,0,0.00,0,2215,1705.55,NULL,NULL,11,16,10,528,NULL,0,'2025-11-20 01:47:50','2025-11-20 01:48:08',0,'Botble\\ACL\\Models\\User',NULL,'digital','7008208449655',NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(40,'Naturally Flavored Cinnamon Vanilla Light Roast Coffee (Digital)',NULL,NULL,NULL,'published','[\"products\\/12.jpg\"]',NULL,'NU-174-A1-A2',0,19,0,1,'in_stock',0,4,1,0,0,0.00,0,2215,1993.5,NULL,NULL,11,16,10,528,NULL,0,'2025-11-20 01:47:50','2025-11-20 01:48:08',0,'Botble\\ACL\\Models\\User',NULL,'digital','8915222623710',NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(41,'Naturally Flavored Cinnamon Vanilla Light Roast Coffee (Digital)',NULL,NULL,NULL,'published','[\"products\\/12.jpg\"]',NULL,'NU-174-A1-A3',0,19,0,1,'in_stock',0,4,1,0,0,0.00,0,2215,1927.05,NULL,NULL,11,16,10,528,NULL,0,'2025-11-20 01:47:50','2025-11-20 01:48:08',0,'Botble\\ACL\\Models\\User',NULL,'digital','3980413348265',NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(42,'Pepperidge Farm Farmhouse Hearty White Bread',NULL,NULL,NULL,'published','[\"products\\/13-1.jpg\"]',NULL,'MQ-102-A1',0,18,0,1,'in_stock',0,3,1,0,0,0.00,0,2331,NULL,NULL,NULL,16,20,20,554,NULL,0,'2025-11-20 01:47:50','2025-11-20 01:48:08',0,'Botble\\ACL\\Models\\User',NULL,'physical','7063704083871',NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(43,'Pepperidge Farm Farmhouse Hearty White Bread',NULL,NULL,NULL,'published','[\"products\\/13.jpg\"]',NULL,'MQ-102-A1-A2',0,18,0,1,'in_stock',0,3,1,0,0,0.00,0,2331,NULL,NULL,NULL,16,20,20,554,NULL,0,'2025-11-20 01:47:50','2025-11-20 01:48:08',0,'Botble\\ACL\\Models\\User',NULL,'physical','2011425416626',NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(44,'Pepperidge Farm Farmhouse Hearty White Bread',NULL,NULL,NULL,'published','[\"products\\/13.jpg\"]',NULL,'MQ-102-A1-A3',0,18,0,1,'in_stock',0,3,1,0,0,0.00,0,2331,NULL,NULL,NULL,16,20,20,554,NULL,0,'2025-11-20 01:47:50','2025-11-20 01:48:08',0,'Botble\\ACL\\Models\\User',NULL,'physical','5685076010938',NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(45,'Pepperidge Farm Farmhouse Hearty White Bread',NULL,NULL,NULL,'published','[\"products\\/13.jpg\"]',NULL,'MQ-102-A1-A4',0,18,0,1,'in_stock',0,3,1,0,0,0.00,0,2331,NULL,NULL,NULL,16,20,20,554,NULL,0,'2025-11-20 01:47:50','2025-11-20 01:48:08',0,'Botble\\ACL\\Models\\User',NULL,'physical','8703013942733',NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(46,'Oroweat Country Buttermilk Bread',NULL,NULL,NULL,'published','[\"products\\/15-1.jpg\"]',NULL,'3P-135-A1',0,12,0,1,'in_stock',0,7,1,0,0,0.00,0,829,NULL,NULL,NULL,12,13,19,754,NULL,0,'2025-11-20 01:47:50','2025-11-20 01:48:08',0,'Botble\\ACL\\Models\\User',NULL,'physical','2824987011709',NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(47,'Oroweat Country Buttermilk Bread',NULL,NULL,NULL,'published','[\"products\\/15.jpg\"]',NULL,'3P-135-A1-A2',0,12,0,1,'in_stock',0,7,1,0,0,0.00,0,829,NULL,NULL,NULL,12,13,19,754,NULL,0,'2025-11-20 01:47:50','2025-11-20 01:48:08',0,'Botble\\ACL\\Models\\User',NULL,'physical','6703613423740',NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(48,'Oroweat Country Buttermilk Bread',NULL,NULL,NULL,'published','[\"products\\/15.jpg\"]',NULL,'3P-135-A1-A3',0,12,0,1,'in_stock',0,7,1,0,0,0.00,0,829,NULL,NULL,NULL,12,13,19,754,NULL,0,'2025-11-20 01:47:50','2025-11-20 01:48:08',0,'Botble\\ACL\\Models\\User',NULL,'physical','1350301713093',NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(49,'Perdue Simply Smart Organics Gluten Free (Digital)',NULL,NULL,NULL,'published','[\"products\\/20-1.jpg\"]',NULL,'LN-140-A1',0,20,0,1,'in_stock',0,6,1,0,0,0.00,0,2309,1985.74,NULL,NULL,13,15,17,774,NULL,0,'2025-11-20 01:47:50','2025-11-20 01:48:08',0,'Botble\\ACL\\Models\\User',NULL,'digital','3831072182793',NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(50,'Perdue Simply Smart Organics Gluten Free (Digital)',NULL,NULL,NULL,'published','[\"products\\/20.jpg\"]',NULL,'LN-140-A1-A2',0,20,0,1,'in_stock',0,6,1,0,0,0.00,0,2309,1777.93,NULL,NULL,13,15,17,774,NULL,0,'2025-11-20 01:47:50','2025-11-20 01:48:08',0,'Botble\\ACL\\Models\\User',NULL,'digital','2868592701778',NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(51,'Signature Wood-Fired Mushroom and Caramelized (Digital)',NULL,NULL,NULL,'published','[\"products\\/24-1.jpg\"]',NULL,'JU-122-A1',0,14,0,1,'in_stock',0,2,1,0,0,0.00,0,411,300.03,NULL,NULL,17,12,15,631,NULL,0,'2025-11-20 01:47:50','2025-11-20 01:48:08',0,'Botble\\ACL\\Models\\User',NULL,'digital','2976546063732',NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(52,'Signature Wood-Fired Mushroom and Caramelized (Digital)',NULL,NULL,NULL,'published','[\"products\\/24.jpg\"]',NULL,'JU-122-A1-A2',0,14,0,1,'in_stock',0,2,1,0,0,0.00,0,411,369.9,NULL,NULL,17,12,15,631,NULL,0,'2025-11-20 01:47:50','2025-11-20 01:48:08',0,'Botble\\ACL\\Models\\User',NULL,'digital','3885951650422',NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0);
/*!40000 ALTER TABLE `ec_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products_translations`
--

DROP TABLE IF EXISTS `ec_products_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_products_id` bigint unsigned NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_products_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products_translations`
--

LOCK TABLES `ec_products_translations` WRITE;
/*!40000 ALTER TABLE `ec_products_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_products_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_review_replies`
--

DROP TABLE IF EXISTS `ec_review_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_review_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `review_id` bigint unsigned NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_review_replies_review_id_user_id_unique` (`review_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_review_replies`
--

LOCK TABLES `ec_review_replies` WRITE;
/*!40000 ALTER TABLE `ec_review_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_review_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_reviews`
--

DROP TABLE IF EXISTS `ec_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `customer_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` bigint unsigned NOT NULL,
  `star` double NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `images` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_reviews_product_id_customer_id_unique` (`product_id`,`customer_id`),
  KEY `ec_reviews_product_id_customer_id_status_created_at_index` (`product_id`,`customer_id`,`status`,`created_at`),
  KEY `review_relation_index` (`product_id`,`customer_id`,`status`),
  KEY `ec_reviews_product_id_status_index` (`product_id`,`status`),
  KEY `ec_reviews_customer_id_status_index` (`customer_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=241 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_reviews`
--

LOCK TABLES `ec_reviews` WRITE;
/*!40000 ALTER TABLE `ec_reviews` DISABLE KEYS */;
INSERT INTO `ec_reviews` VALUES (1,9,NULL,NULL,19,2,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(2,9,NULL,NULL,6,2,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(3,10,NULL,NULL,14,1,'Clean & perfect source code','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(4,1,NULL,NULL,4,4,'Clean & perfect source code','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(5,8,NULL,NULL,9,5,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(6,10,NULL,NULL,12,4,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(7,9,NULL,NULL,15,5,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(8,5,NULL,NULL,16,3,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(9,2,NULL,NULL,24,3,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(10,5,NULL,NULL,5,5,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(11,2,NULL,NULL,21,3,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(12,7,NULL,NULL,20,2,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(13,4,NULL,NULL,15,2,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(14,6,NULL,NULL,14,5,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(15,5,NULL,NULL,3,5,'Good app, good backup service and support. Good documentation.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(16,9,NULL,NULL,17,1,'Best ecommerce CMS online store!','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(17,8,NULL,NULL,24,5,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(18,2,NULL,NULL,1,1,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(19,4,NULL,NULL,10,4,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(20,9,NULL,NULL,5,4,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(21,9,NULL,NULL,18,2,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(22,6,NULL,NULL,7,5,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(23,9,NULL,NULL,4,5,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(24,3,NULL,NULL,22,2,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(25,1,NULL,NULL,10,3,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(26,6,NULL,NULL,21,1,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(27,1,NULL,NULL,8,1,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(28,1,NULL,NULL,5,5,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(29,6,NULL,NULL,20,3,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(30,3,NULL,NULL,12,3,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(31,7,NULL,NULL,4,5,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(32,9,NULL,NULL,20,5,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(33,10,NULL,NULL,20,5,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(34,1,NULL,NULL,22,1,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(35,8,NULL,NULL,1,2,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(36,4,NULL,NULL,5,1,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(37,8,NULL,NULL,18,1,'Good app, good backup service and support. Good documentation.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(38,7,NULL,NULL,11,5,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(39,5,NULL,NULL,19,1,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(40,7,NULL,NULL,2,1,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(41,3,NULL,NULL,24,5,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(42,2,NULL,NULL,10,3,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(43,8,NULL,NULL,10,5,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(44,10,NULL,NULL,24,2,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(45,4,NULL,NULL,18,5,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(46,4,NULL,NULL,14,2,'Best ecommerce CMS online store!','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(47,7,NULL,NULL,16,3,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(48,6,NULL,NULL,1,3,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(49,8,NULL,NULL,3,3,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(50,8,NULL,NULL,7,1,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(51,3,NULL,NULL,4,3,'Good app, good backup service and support. Good documentation.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(52,8,NULL,NULL,20,4,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(53,7,NULL,NULL,15,5,'Clean & perfect source code','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(54,1,NULL,NULL,16,2,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(55,5,NULL,NULL,14,4,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(56,3,NULL,NULL,16,3,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(57,9,NULL,NULL,13,5,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(58,6,NULL,NULL,17,5,'Clean & perfect source code','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(59,3,NULL,NULL,2,5,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(60,7,NULL,NULL,7,3,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(61,5,NULL,NULL,6,4,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(62,9,NULL,NULL,24,2,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(63,1,NULL,NULL,14,3,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(64,2,NULL,NULL,7,5,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(65,9,NULL,NULL,10,3,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(66,1,NULL,NULL,6,2,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(67,9,NULL,NULL,16,4,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(68,9,NULL,NULL,11,1,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(69,4,NULL,NULL,19,5,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(70,10,NULL,NULL,21,3,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(71,10,NULL,NULL,13,3,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(72,5,NULL,NULL,2,3,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(73,6,NULL,NULL,16,4,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(74,8,NULL,NULL,14,3,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(75,8,NULL,NULL,22,3,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(76,8,NULL,NULL,21,2,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(77,2,NULL,NULL,19,2,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(78,3,NULL,NULL,20,2,'Good app, good backup service and support. Good documentation.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(79,2,NULL,NULL,5,3,'Clean & perfect source code','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(80,3,NULL,NULL,10,5,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(81,2,NULL,NULL,11,4,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(82,10,NULL,NULL,23,2,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(83,4,NULL,NULL,12,5,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(84,7,NULL,NULL,6,2,'Good app, good backup service and support. Good documentation.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(85,5,NULL,NULL,8,4,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(86,10,NULL,NULL,6,4,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(87,5,NULL,NULL,15,4,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(88,6,NULL,NULL,10,3,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(89,6,NULL,NULL,4,5,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(90,10,NULL,NULL,3,3,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(91,6,NULL,NULL,5,4,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(92,7,NULL,NULL,13,5,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(93,1,NULL,NULL,9,2,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(94,2,NULL,NULL,23,2,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(95,2,NULL,NULL,12,3,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(96,8,NULL,NULL,19,1,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(97,5,NULL,NULL,11,3,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(98,2,NULL,NULL,17,3,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(99,3,NULL,NULL,18,1,'Clean & perfect source code','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(100,2,NULL,NULL,14,4,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(101,8,NULL,NULL,4,2,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(102,10,NULL,NULL,1,2,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(103,8,NULL,NULL,16,2,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(104,1,NULL,NULL,12,4,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(105,5,NULL,NULL,23,4,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(106,8,NULL,NULL,23,3,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(107,8,NULL,NULL,6,1,'Clean & perfect source code','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(108,5,NULL,NULL,21,4,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(109,7,NULL,NULL,22,3,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(110,5,NULL,NULL,12,3,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(111,7,NULL,NULL,1,2,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(112,2,NULL,NULL,8,2,'Clean & perfect source code','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(113,10,NULL,NULL,8,2,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(114,6,NULL,NULL,13,5,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(115,10,NULL,NULL,15,3,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(116,9,NULL,NULL,22,2,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(117,9,NULL,NULL,12,4,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(118,9,NULL,NULL,9,4,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(119,5,NULL,NULL,17,1,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(120,5,NULL,NULL,18,2,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(121,1,NULL,NULL,20,1,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(122,10,NULL,NULL,9,3,'Best ecommerce CMS online store!','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(123,6,NULL,NULL,15,1,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(124,5,NULL,NULL,22,1,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(125,10,NULL,NULL,22,5,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(126,4,NULL,NULL,2,1,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(127,1,NULL,NULL,24,4,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(128,7,NULL,NULL,23,5,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(129,3,NULL,NULL,13,2,'Good app, good backup service and support. Good documentation.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(130,4,NULL,NULL,23,3,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(131,8,NULL,NULL,12,1,'Best ecommerce CMS online store!','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(132,3,NULL,NULL,23,3,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(133,5,NULL,NULL,4,5,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(134,7,NULL,NULL,19,3,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(135,9,NULL,NULL,23,4,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(136,4,NULL,NULL,7,4,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(137,3,NULL,NULL,9,3,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(138,10,NULL,NULL,18,3,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(139,7,NULL,NULL,3,4,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(140,3,NULL,NULL,11,3,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(141,6,NULL,NULL,8,3,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(142,8,NULL,NULL,2,3,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(143,10,NULL,NULL,19,3,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(144,7,NULL,NULL,9,1,'Best ecommerce CMS online store!','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(145,1,NULL,NULL,7,3,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(146,1,NULL,NULL,23,2,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(147,2,NULL,NULL,3,5,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(148,9,NULL,NULL,7,3,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(149,5,NULL,NULL,10,4,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(150,4,NULL,NULL,13,2,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(151,4,NULL,NULL,1,2,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(152,10,NULL,NULL,5,3,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(153,6,NULL,NULL,18,3,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(154,6,NULL,NULL,11,1,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(155,8,NULL,NULL,13,1,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(156,8,NULL,NULL,17,3,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(157,4,NULL,NULL,9,4,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(158,9,NULL,NULL,3,4,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(159,4,NULL,NULL,16,2,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(160,1,NULL,NULL,17,2,'Best ecommerce CMS online store!','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(161,3,NULL,NULL,1,5,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(162,5,NULL,NULL,24,5,'Best ecommerce CMS online store!','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(163,3,NULL,NULL,14,5,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(164,4,NULL,NULL,24,2,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(165,2,NULL,NULL,16,3,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(166,4,NULL,NULL,3,5,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(167,6,NULL,NULL,9,1,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(168,3,NULL,NULL,21,3,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(169,10,NULL,NULL,10,3,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(170,10,NULL,NULL,2,2,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(171,10,NULL,NULL,17,3,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(172,10,NULL,NULL,7,2,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(173,4,NULL,NULL,21,4,'Clean & perfect source code','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(174,3,NULL,NULL,3,2,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(175,3,NULL,NULL,7,5,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(176,1,NULL,NULL,15,3,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(177,6,NULL,NULL,2,2,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(178,2,NULL,NULL,15,1,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(179,2,NULL,NULL,2,3,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(180,2,NULL,NULL,9,3,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(181,4,NULL,NULL,20,3,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(182,5,NULL,NULL,7,5,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(183,3,NULL,NULL,6,2,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(184,6,NULL,NULL,22,1,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(185,8,NULL,NULL,15,2,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(186,1,NULL,NULL,1,5,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(187,2,NULL,NULL,22,4,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(188,3,NULL,NULL,8,1,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(189,1,NULL,NULL,19,3,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(190,7,NULL,NULL,24,1,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(191,7,NULL,NULL,21,1,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(192,3,NULL,NULL,19,5,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(193,4,NULL,NULL,8,3,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(194,3,NULL,NULL,17,1,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(195,2,NULL,NULL,4,4,'Best ecommerce CMS online store!','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(196,1,NULL,NULL,18,1,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(197,4,NULL,NULL,17,4,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(198,6,NULL,NULL,24,1,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(199,1,NULL,NULL,21,2,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(200,7,NULL,NULL,8,1,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(201,7,NULL,NULL,5,4,'Good app, good backup service and support. Good documentation.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(202,3,NULL,NULL,15,1,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(203,5,NULL,NULL,9,5,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(204,4,NULL,NULL,6,2,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(205,3,NULL,NULL,5,3,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(206,4,NULL,NULL,4,5,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(207,6,NULL,NULL,19,1,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(208,8,NULL,NULL,5,5,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(209,1,NULL,NULL,13,3,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(210,7,NULL,NULL,17,1,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(211,8,NULL,NULL,8,5,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(212,9,NULL,NULL,21,2,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(213,10,NULL,NULL,16,3,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(214,6,NULL,NULL,6,4,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(215,5,NULL,NULL,13,1,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(216,2,NULL,NULL,18,1,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(217,7,NULL,NULL,14,4,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(218,8,NULL,NULL,11,4,'Good app, good backup service and support. Good documentation.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(219,10,NULL,NULL,4,3,'Clean & perfect source code','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(220,1,NULL,NULL,11,5,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(221,6,NULL,NULL,23,4,'Clean & perfect source code','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(222,7,NULL,NULL,12,1,'Good app, good backup service and support. Good documentation.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(223,6,NULL,NULL,12,3,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(224,9,NULL,NULL,14,5,'Clean & perfect source code','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(225,5,NULL,NULL,20,3,'Best ecommerce CMS online store!','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(226,2,NULL,NULL,6,5,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(227,7,NULL,NULL,10,5,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(228,1,NULL,NULL,2,4,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(229,4,NULL,NULL,22,2,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(230,9,NULL,NULL,2,5,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(231,10,NULL,NULL,11,1,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(232,2,NULL,NULL,20,5,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(233,6,NULL,NULL,3,3,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(234,4,NULL,NULL,11,3,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(235,2,NULL,NULL,13,1,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(236,9,NULL,NULL,1,1,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(237,7,NULL,NULL,18,4,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(238,1,NULL,NULL,3,1,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(239,9,NULL,NULL,8,5,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL),(240,5,NULL,NULL,1,1,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-11-20 01:47:54','2025-11-20 01:47:54',NULL);
/*!40000 ALTER TABLE `ec_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shared_wishlists`
--

DROP TABLE IF EXISTS `ec_shared_wishlists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shared_wishlists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_ids` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_shared_wishlists_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shared_wishlists`
--

LOCK TABLES `ec_shared_wishlists` WRITE;
/*!40000 ALTER TABLE `ec_shared_wishlists` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shared_wishlists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipment_histories`
--

DROP TABLE IF EXISTS `ec_shipment_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipment_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `shipment_id` bigint unsigned NOT NULL,
  `order_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipment_histories`
--

LOCK TABLES `ec_shipment_histories` WRITE;
/*!40000 ALTER TABLE `ec_shipment_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipment_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipments`
--

DROP TABLE IF EXISTS `ec_shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `weight` double DEFAULT '0',
  `shipment_id` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate_id` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cod_amount` decimal(15,2) DEFAULT '0.00',
  `cod_status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cross_checking_status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `price` decimal(15,2) DEFAULT '0.00',
  `store_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tracking_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_company_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estimate_date_shipped` datetime DEFAULT NULL,
  `date_shipped` datetime DEFAULT NULL,
  `customer_delivered_confirmed_at` timestamp NULL DEFAULT NULL,
  `label_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `metadata` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_shipments_order_id_unique` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipments`
--

LOCK TABLES `ec_shipments` WRITE;
/*!40000 ALTER TABLE `ec_shipments` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping`
--

DROP TABLE IF EXISTS `ec_shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping`
--

LOCK TABLES `ec_shipping` WRITE;
/*!40000 ALTER TABLE `ec_shipping` DISABLE KEYS */;
INSERT INTO `ec_shipping` VALUES (1,'All',NULL,'2025-11-20 01:47:55','2025-11-20 01:47:55');
/*!40000 ALTER TABLE `ec_shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rule_items`
--

DROP TABLE IF EXISTS `ec_shipping_rule_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rule_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `shipping_rule_id` bigint unsigned NOT NULL,
  `country` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adjustment_price` decimal(15,2) DEFAULT '0.00',
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rule_items`
--

LOCK TABLES `ec_shipping_rule_items` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rule_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipping_rule_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rules`
--

DROP TABLE IF EXISTS `ec_shipping_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_id` bigint unsigned NOT NULL,
  `type` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'based_on_price',
  `from` decimal(15,2) DEFAULT '0.00',
  `to` decimal(15,2) DEFAULT '0.00',
  `price` decimal(15,2) DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rules`
--

LOCK TABLES `ec_shipping_rules` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rules` DISABLE KEYS */;
INSERT INTO `ec_shipping_rules` VALUES (1,'Free delivery',1,'based_on_price',1000.00,NULL,0.00,'2025-11-20 01:47:55','2025-11-20 01:47:55'),(2,'Flat Rate',1,'based_on_price',0.00,NULL,20.00,'2025-11-20 01:47:55','2025-11-20 01:47:55'),(3,'Local Pickup',1,'based_on_price',0.00,NULL,0.00,'2025-11-20 01:47:55','2025-11-20 01:47:55');
/*!40000 ALTER TABLE `ec_shipping_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_attributes`
--

DROP TABLE IF EXISTS `ec_specification_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_specification_attributes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `group_id` bigint unsigned NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `default_value` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `author_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_specification_attributes_author_type_author_id_index` (`author_type`,`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_attributes`
--

LOCK TABLES `ec_specification_attributes` WRITE;
/*!40000 ALTER TABLE `ec_specification_attributes` DISABLE KEYS */;
INSERT INTO `ec_specification_attributes` VALUES (1,1,'Height','text',NULL,NULL,'2025-11-20 01:48:03','2025-11-20 01:48:03',NULL,NULL),(2,1,'Width','text',NULL,NULL,'2025-11-20 01:48:03','2025-11-20 01:48:03',NULL,NULL),(3,1,'Weight','text',NULL,NULL,'2025-11-20 01:48:03','2025-11-20 01:48:03',NULL,NULL),(4,2,'Power','text',NULL,NULL,'2025-11-20 01:48:03','2025-11-20 01:48:03',NULL,NULL),(5,2,'Speed','text',NULL,NULL,'2025-11-20 01:48:03','2025-11-20 01:48:03',NULL,NULL),(6,3,'Battery Life','text',NULL,NULL,'2025-11-20 01:48:03','2025-11-20 01:48:03',NULL,NULL),(7,4,'Screen Size','text',NULL,NULL,'2025-11-20 01:48:03','2025-11-20 01:48:03',NULL,NULL),(8,4,'Resolution','select','[\"1920x1080\",\"2560x1440\",\"3840x2160\"]',NULL,'2025-11-20 01:48:03','2025-11-20 01:48:03',NULL,NULL);
/*!40000 ALTER TABLE `ec_specification_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_attributes_translations`
--

DROP TABLE IF EXISTS `ec_specification_attributes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_specification_attributes_translations` (
  `lang_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_specification_attributes_id` bigint unsigned NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `default_value` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_specification_attributes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_attributes_translations`
--

LOCK TABLES `ec_specification_attributes_translations` WRITE;
/*!40000 ALTER TABLE `ec_specification_attributes_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_specification_attributes_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_groups`
--

DROP TABLE IF EXISTS `ec_specification_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_specification_groups` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `author_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_specification_groups_author_type_author_id_index` (`author_type`,`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_groups`
--

LOCK TABLES `ec_specification_groups` WRITE;
/*!40000 ALTER TABLE `ec_specification_groups` DISABLE KEYS */;
INSERT INTO `ec_specification_groups` VALUES (1,'Dimensions',NULL,'2025-11-20 01:48:03','2025-11-20 01:48:03',NULL,NULL),(2,'Performance',NULL,'2025-11-20 01:48:03','2025-11-20 01:48:03',NULL,NULL),(3,'Battery',NULL,'2025-11-20 01:48:03','2025-11-20 01:48:03',NULL,NULL),(4,'Display',NULL,'2025-11-20 01:48:03','2025-11-20 01:48:03',NULL,NULL);
/*!40000 ALTER TABLE `ec_specification_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_groups_translations`
--

DROP TABLE IF EXISTS `ec_specification_groups_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_specification_groups_translations` (
  `lang_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_specification_groups_id` bigint unsigned NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_specification_groups_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_groups_translations`
--

LOCK TABLES `ec_specification_groups_translations` WRITE;
/*!40000 ALTER TABLE `ec_specification_groups_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_specification_groups_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_table_group`
--

DROP TABLE IF EXISTS `ec_specification_table_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_specification_table_group` (
  `table_id` bigint unsigned NOT NULL,
  `group_id` bigint unsigned NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`table_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_table_group`
--

LOCK TABLES `ec_specification_table_group` WRITE;
/*!40000 ALTER TABLE `ec_specification_table_group` DISABLE KEYS */;
INSERT INTO `ec_specification_table_group` VALUES (1,1,0),(1,2,0),(2,3,0),(2,4,0);
/*!40000 ALTER TABLE `ec_specification_table_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_tables`
--

DROP TABLE IF EXISTS `ec_specification_tables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_specification_tables` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `author_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_specification_tables_author_type_author_id_index` (`author_type`,`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_tables`
--

LOCK TABLES `ec_specification_tables` WRITE;
/*!40000 ALTER TABLE `ec_specification_tables` DISABLE KEYS */;
INSERT INTO `ec_specification_tables` VALUES (1,'General Specification',NULL,'2025-11-20 01:48:03','2025-11-20 01:48:03',NULL,NULL),(2,'Technical Specification',NULL,'2025-11-20 01:48:03','2025-11-20 01:48:03',NULL,NULL);
/*!40000 ALTER TABLE `ec_specification_tables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_tables_translations`
--

DROP TABLE IF EXISTS `ec_specification_tables_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_specification_tables_translations` (
  `lang_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_specification_tables_id` bigint unsigned NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_specification_tables_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_tables_translations`
--

LOCK TABLES `ec_specification_tables_translations` WRITE;
/*!40000 ALTER TABLE `ec_specification_tables_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_specification_tables_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_store_locators`
--

DROP TABLE IF EXISTS `ec_store_locators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_store_locators` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT '0',
  `is_shipping_location` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_store_locators`
--

LOCK TABLES `ec_store_locators` WRITE;
/*!40000 ALTER TABLE `ec_store_locators` DISABLE KEYS */;
INSERT INTO `ec_store_locators` VALUES (1,'Nest','sales@botble.com','18006268','North Link Building, 10 Admiralty Street','SG','Singapore','Singapore',1,1,'2025-11-20 01:47:55','2025-11-20 01:47:55',NULL);
/*!40000 ALTER TABLE `ec_store_locators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_tax_products`
--

DROP TABLE IF EXISTS `ec_tax_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_tax_products` (
  `tax_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tax_id`),
  KEY `ec_tax_products_tax_id_index` (`tax_id`),
  KEY `ec_tax_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_tax_products`
--

LOCK TABLES `ec_tax_products` WRITE;
/*!40000 ALTER TABLE `ec_tax_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_tax_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_tax_rules`
--

DROP TABLE IF EXISTS `ec_tax_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_tax_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tax_id` bigint unsigned NOT NULL,
  `country` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `percentage` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_tax_rules`
--

LOCK TABLES `ec_tax_rules` WRITE;
/*!40000 ALTER TABLE `ec_tax_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_tax_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_taxes`
--

DROP TABLE IF EXISTS `ec_taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_taxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` float DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_taxes`
--

LOCK TABLES `ec_taxes` WRITE;
/*!40000 ALTER TABLE `ec_taxes` DISABLE KEYS */;
INSERT INTO `ec_taxes` VALUES (1,'VAT',10,1,'published','2025-11-20 01:47:50','2025-11-20 01:47:50'),(2,'None',0,2,'published','2025-11-20 01:47:50','2025-11-20 01:47:50'),(3,'Import Tax',15,3,'published','2025-11-20 01:47:50','2025-11-20 01:47:50');
/*!40000 ALTER TABLE `ec_taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_taxes_translations`
--

DROP TABLE IF EXISTS `ec_taxes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_taxes_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_taxes_id` bigint unsigned NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_taxes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_taxes_translations`
--

LOCK TABLES `ec_taxes_translations` WRITE;
/*!40000 ALTER TABLE `ec_taxes_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_taxes_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_wish_lists`
--

DROP TABLE IF EXISTS `ec_wish_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_wish_lists` (
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`customer_id`,`product_id`),
  KEY `wishlist_relation_index` (`product_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_wish_lists`
--

LOCK TABLES `ec_wish_lists` WRITE;
/*!40000 ALTER TABLE `ec_wish_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_wish_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `faq_categories`
--

DROP TABLE IF EXISTS `faq_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories`
--

LOCK TABLES `faq_categories` WRITE;
/*!40000 ALTER TABLE `faq_categories` DISABLE KEYS */;
INSERT INTO `faq_categories` VALUES (1,'Shipping',0,'published','2025-11-20 01:47:39','2025-11-20 01:47:39',NULL),(2,'Payment',1,'published','2025-11-20 01:47:39','2025-11-20 01:47:39',NULL),(3,'Order &amp; Returns',2,'published','2025-11-20 01:47:39','2025-11-20 01:47:39',NULL);
/*!40000 ALTER TABLE `faq_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories_translations`
--

DROP TABLE IF EXISTS `faq_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories_translations` (
  `lang_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_categories_id` bigint unsigned NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`faq_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories_translations`
--

LOCK TABLES `faq_categories_translations` WRITE;
/*!40000 ALTER TABLE `faq_categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `faq_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `question` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (1,'What Shipping Methods Are Available?','Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.',1,'published','2025-11-20 01:47:39','2025-11-20 01:47:39'),(2,'Do You Ship Internationally?','Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.',1,'published','2025-11-20 01:47:39','2025-11-20 01:47:39'),(3,'How Long Will It Take To Get My Package?','Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.',1,'published','2025-11-20 01:47:39','2025-11-20 01:47:39'),(4,'What Payment Methods Are Accepted?','Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.',2,'published','2025-11-20 01:47:39','2025-11-20 01:47:39'),(5,'Is Buying On-Line Safe?','Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.',2,'published','2025-11-20 01:47:39','2025-11-20 01:47:39'),(6,'How do I place an Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level. Raw denim polaroid paleo farm-to-table, put a bird on it lo-fi tattooed Wes Anderson Pinterest letterpress. Fingerstache McSweeney’s pour-over, letterpress Schlitz photo booth master cleanse bespoke hashtag chillwave gentrify.',3,'published','2025-11-20 01:47:39','2025-11-20 01:47:39'),(7,'How Can I Cancel Or Change My Order?','Plaid letterpress leggings craft beer meh ethical Pinterest. Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth.',3,'published','2025-11-20 01:47:39','2025-11-20 01:47:39'),(8,'Do I need an account to place an order?','Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY. Cray ugh 3 wolf moon fap, fashion axe irony butcher cornhole typewriter chambray VHS banjo street art.',3,'published','2025-11-20 01:47:39','2025-11-20 01:47:39'),(9,'How Do I Track My Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level.',3,'published','2025-11-20 01:47:39','2025-11-20 01:47:39'),(10,'How Can I Return a Product?','Kale chips Truffaut Williamsburg, hashtag fixie Pinterest raw denim c hambray drinking vinegar Carles street art Bushwick gastropub. Wolf Tumblr paleo church-key. Plaid food truck Echo Park YOLO bitters hella, direct trade Thundercats leggings quinoa before they sold out. You probably haven’t heard of them wayfarers authentic umami drinking vinegar Pinterest Cosby sweater, fingerstache fap High Life.',3,'published','2025-11-20 01:47:39','2025-11-20 01:47:39');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs_translations`
--

DROP TABLE IF EXISTS `faqs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs_translations` (
  `lang_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `faqs_id` bigint unsigned NOT NULL,
  `question` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `answer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`faqs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs_translations`
--

LOCK TABLES `faqs_translations` WRITE;
/*!40000 ALTER TABLE `faqs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `faqs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `lang_meta_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_meta_origin` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_reference_id_index` (`reference_id`),
  KEY `meta_code_index` (`lang_meta_code`),
  KEY `meta_origin_index` (`lang_meta_origin`),
  KEY `meta_reference_type_index` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta`
--

LOCK TABLES `language_meta` WRITE;
/*!40000 ALTER TABLE `language_meta` DISABLE KEYS */;
INSERT INTO `language_meta` VALUES (1,'en_US','0978d4b30d88c48a414b6f3b3a8963f5',1,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(2,'en_US','ada078e85b7e5b0bb5e32f05f43812db',2,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(3,'en_US','5c64e47f3e413892af760e0dfb41e624',3,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(4,'en_US','7f68ce92b4315170be733054fbc9b281',4,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(5,'en_US','878dace870cef8988a9c1f65d87639da',5,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(6,'en_US','0c97a6659ff83e8e589ac3813c8c0d45',6,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(7,'en_US','f5efd0bcb79ed67b725cb1f8cb780b3e',7,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(8,'en_US','3d83680e2bdfd33d83df7f07e1966db1',1,'Botble\\Menu\\Models\\MenuLocation'),(9,'en_US','47f7b8259ee89db2cd82312a21275d70',1,'Botble\\Menu\\Models\\Menu'),(10,'en_US','9f49237816d531f966f29b9db7f0bda3',2,'Botble\\Menu\\Models\\MenuLocation'),(11,'en_US','71c3c28385bf4e885e5455a709cf94f7',2,'Botble\\Menu\\Models\\Menu'),(12,'en_US','68e2604945fde444d3d111c8895819ae',3,'Botble\\Menu\\Models\\Menu'),(13,'en_US','9ca31e57c862dbe56a9f95e00841a48a',4,'Botble\\Menu\\Models\\Menu'),(14,'en_US','d78f47154c6f86457ba7f26cde447775',5,'Botble\\Menu\\Models\\Menu');
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
  `lang_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folder_id` bigint unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `visibility` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'public',
  PRIMARY KEY (`id`),
  KEY `media_files_user_id_index` (`user_id`),
  KEY `media_files_index` (`folder_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=190 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (1,0,'icon-1','icon-1',1,'image/png',5327,'product-categories/icon-1.png','[]','2025-11-20 01:47:40','2025-11-20 01:47:40',NULL,'public'),(2,0,'icon-10','icon-10',1,'image/png',5327,'product-categories/icon-10.png','[]','2025-11-20 01:47:40','2025-11-20 01:47:40',NULL,'public'),(3,0,'icon-11','icon-11',1,'image/png',5327,'product-categories/icon-11.png','[]','2025-11-20 01:47:40','2025-11-20 01:47:40',NULL,'public'),(4,0,'icon-12','icon-12',1,'image/png',5327,'product-categories/icon-12.png','[]','2025-11-20 01:47:40','2025-11-20 01:47:40',NULL,'public'),(5,0,'icon-13','icon-13',1,'image/png',5327,'product-categories/icon-13.png','[]','2025-11-20 01:47:40','2025-11-20 01:47:40',NULL,'public'),(6,0,'icon-14','icon-14',1,'image/png',5327,'product-categories/icon-14.png','[]','2025-11-20 01:47:40','2025-11-20 01:47:40',NULL,'public'),(7,0,'icon-2','icon-2',1,'image/png',5327,'product-categories/icon-2.png','[]','2025-11-20 01:47:40','2025-11-20 01:47:40',NULL,'public'),(8,0,'icon-3','icon-3',1,'image/png',5327,'product-categories/icon-3.png','[]','2025-11-20 01:47:40','2025-11-20 01:47:40',NULL,'public'),(9,0,'icon-4','icon-4',1,'image/png',5327,'product-categories/icon-4.png','[]','2025-11-20 01:47:40','2025-11-20 01:47:40',NULL,'public'),(10,0,'icon-5','icon-5',1,'image/png',5327,'product-categories/icon-5.png','[]','2025-11-20 01:47:40','2025-11-20 01:47:40',NULL,'public'),(11,0,'icon-6','icon-6',1,'image/png',5327,'product-categories/icon-6.png','[]','2025-11-20 01:47:40','2025-11-20 01:47:40',NULL,'public'),(12,0,'icon-7','icon-7',1,'image/png',5327,'product-categories/icon-7.png','[]','2025-11-20 01:47:40','2025-11-20 01:47:40',NULL,'public'),(13,0,'icon-8','icon-8',1,'image/png',5327,'product-categories/icon-8.png','[]','2025-11-20 01:47:40','2025-11-20 01:47:40',NULL,'public'),(14,0,'icon-9','icon-9',1,'image/png',5327,'product-categories/icon-9.png','[]','2025-11-20 01:47:41','2025-11-20 01:47:41',NULL,'public'),(15,0,'image-1','image-1',1,'image/png',5327,'product-categories/image-1.png','[]','2025-11-20 01:47:41','2025-11-20 01:47:41',NULL,'public'),(16,0,'image-10','image-10',1,'image/png',5327,'product-categories/image-10.png','[]','2025-11-20 01:47:41','2025-11-20 01:47:41',NULL,'public'),(17,0,'image-11','image-11',1,'image/png',5327,'product-categories/image-11.png','[]','2025-11-20 01:47:41','2025-11-20 01:47:41',NULL,'public'),(18,0,'image-12','image-12',1,'image/png',5327,'product-categories/image-12.png','[]','2025-11-20 01:47:41','2025-11-20 01:47:41',NULL,'public'),(19,0,'image-13','image-13',1,'image/png',5327,'product-categories/image-13.png','[]','2025-11-20 01:47:41','2025-11-20 01:47:41',NULL,'public'),(20,0,'image-14','image-14',1,'image/png',5327,'product-categories/image-14.png','[]','2025-11-20 01:47:41','2025-11-20 01:47:41',NULL,'public'),(21,0,'image-15','image-15',1,'image/png',5327,'product-categories/image-15.png','[]','2025-11-20 01:47:41','2025-11-20 01:47:41',NULL,'public'),(22,0,'image-2','image-2',1,'image/png',5327,'product-categories/image-2.png','[]','2025-11-20 01:47:42','2025-11-20 01:47:42',NULL,'public'),(23,0,'image-3','image-3',1,'image/png',5327,'product-categories/image-3.png','[]','2025-11-20 01:47:42','2025-11-20 01:47:42',NULL,'public'),(24,0,'image-4','image-4',1,'image/png',5327,'product-categories/image-4.png','[]','2025-11-20 01:47:42','2025-11-20 01:47:42',NULL,'public'),(25,0,'image-5','image-5',1,'image/png',5327,'product-categories/image-5.png','[]','2025-11-20 01:47:42','2025-11-20 01:47:42',NULL,'public'),(26,0,'image-6','image-6',1,'image/png',5327,'product-categories/image-6.png','[]','2025-11-20 01:47:42','2025-11-20 01:47:42',NULL,'public'),(27,0,'image-7','image-7',1,'image/png',5327,'product-categories/image-7.png','[]','2025-11-20 01:47:42','2025-11-20 01:47:42',NULL,'public'),(28,0,'image-8','image-8',1,'image/png',5327,'product-categories/image-8.png','[]','2025-11-20 01:47:42','2025-11-20 01:47:42',NULL,'public'),(29,0,'image-9','image-9',1,'image/png',5327,'product-categories/image-9.png','[]','2025-11-20 01:47:42','2025-11-20 01:47:42',NULL,'public'),(30,0,'1-1','1-1',2,'image/jpeg',9803,'products/1-1.jpg','[]','2025-11-20 01:47:43','2025-11-20 01:47:43',NULL,'public'),(31,0,'1','1',2,'image/jpeg',9803,'products/1.jpg','[]','2025-11-20 01:47:43','2025-11-20 01:47:43',NULL,'public'),(32,0,'10-1','10-1',2,'image/jpeg',9803,'products/10-1.jpg','[]','2025-11-20 01:47:43','2025-11-20 01:47:43',NULL,'public'),(33,0,'10','10',2,'image/jpeg',9803,'products/10.jpg','[]','2025-11-20 01:47:43','2025-11-20 01:47:43',NULL,'public'),(34,0,'11-1','11-1',2,'image/jpeg',9803,'products/11-1.jpg','[]','2025-11-20 01:47:43','2025-11-20 01:47:43',NULL,'public'),(35,0,'11','11',2,'image/jpeg',9803,'products/11.jpg','[]','2025-11-20 01:47:43','2025-11-20 01:47:43',NULL,'public'),(36,0,'12-1','12-1',2,'image/jpeg',9803,'products/12-1.jpg','[]','2025-11-20 01:47:43','2025-11-20 01:47:43',NULL,'public'),(37,0,'12','12',2,'image/jpeg',9803,'products/12.jpg','[]','2025-11-20 01:47:43','2025-11-20 01:47:43',NULL,'public'),(38,0,'13-1','13-1',2,'image/jpeg',9803,'products/13-1.jpg','[]','2025-11-20 01:47:43','2025-11-20 01:47:43',NULL,'public'),(39,0,'13','13',2,'image/jpeg',9803,'products/13.jpg','[]','2025-11-20 01:47:43','2025-11-20 01:47:43',NULL,'public'),(40,0,'14-1','14-1',2,'image/jpeg',9803,'products/14-1.jpg','[]','2025-11-20 01:47:44','2025-11-20 01:47:44',NULL,'public'),(41,0,'14','14',2,'image/jpeg',9803,'products/14.jpg','[]','2025-11-20 01:47:44','2025-11-20 01:47:44',NULL,'public'),(42,0,'15-1','15-1',2,'image/jpeg',9803,'products/15-1.jpg','[]','2025-11-20 01:47:44','2025-11-20 01:47:44',NULL,'public'),(43,0,'15','15',2,'image/jpeg',9803,'products/15.jpg','[]','2025-11-20 01:47:44','2025-11-20 01:47:44',NULL,'public'),(44,0,'16-1','16-1',2,'image/jpeg',9803,'products/16-1.jpg','[]','2025-11-20 01:47:44','2025-11-20 01:47:44',NULL,'public'),(45,0,'16-2','16-2',2,'image/jpeg',9803,'products/16-2.jpg','[]','2025-11-20 01:47:44','2025-11-20 01:47:44',NULL,'public'),(46,0,'16-3','16-3',2,'image/jpeg',9803,'products/16-3.jpg','[]','2025-11-20 01:47:44','2025-11-20 01:47:44',NULL,'public'),(47,0,'16-4','16-4',2,'image/jpeg',9803,'products/16-4.jpg','[]','2025-11-20 01:47:44','2025-11-20 01:47:44',NULL,'public'),(48,0,'16-5','16-5',2,'image/jpeg',9803,'products/16-5.jpg','[]','2025-11-20 01:47:44','2025-11-20 01:47:44',NULL,'public'),(49,0,'16-6','16-6',2,'image/jpeg',9803,'products/16-6.jpg','[]','2025-11-20 01:47:44','2025-11-20 01:47:44',NULL,'public'),(50,0,'16','16',2,'image/jpeg',9803,'products/16.jpg','[]','2025-11-20 01:47:45','2025-11-20 01:47:45',NULL,'public'),(51,0,'17-1','17-1',2,'image/jpeg',9803,'products/17-1.jpg','[]','2025-11-20 01:47:45','2025-11-20 01:47:45',NULL,'public'),(52,0,'17','17',2,'image/jpeg',9803,'products/17.jpg','[]','2025-11-20 01:47:45','2025-11-20 01:47:45',NULL,'public'),(53,0,'18-1','18-1',2,'image/jpeg',9803,'products/18-1.jpg','[]','2025-11-20 01:47:45','2025-11-20 01:47:45',NULL,'public'),(54,0,'18','18',2,'image/jpeg',9803,'products/18.jpg','[]','2025-11-20 01:47:45','2025-11-20 01:47:45',NULL,'public'),(55,0,'19-1','19-1',2,'image/jpeg',9803,'products/19-1.jpg','[]','2025-11-20 01:47:45','2025-11-20 01:47:45',NULL,'public'),(56,0,'19','19',2,'image/jpeg',9803,'products/19.jpg','[]','2025-11-20 01:47:45','2025-11-20 01:47:45',NULL,'public'),(57,0,'2-1','2-1',2,'image/jpeg',9803,'products/2-1.jpg','[]','2025-11-20 01:47:45','2025-11-20 01:47:45',NULL,'public'),(58,0,'2','2',2,'image/jpeg',9803,'products/2.jpg','[]','2025-11-20 01:47:45','2025-11-20 01:47:45',NULL,'public'),(59,0,'20-1','20-1',2,'image/jpeg',9803,'products/20-1.jpg','[]','2025-11-20 01:47:45','2025-11-20 01:47:45',NULL,'public'),(60,0,'20','20',2,'image/jpeg',9803,'products/20.jpg','[]','2025-11-20 01:47:46','2025-11-20 01:47:46',NULL,'public'),(61,0,'21-1','21-1',2,'image/jpeg',9803,'products/21-1.jpg','[]','2025-11-20 01:47:46','2025-11-20 01:47:46',NULL,'public'),(62,0,'21','21',2,'image/jpeg',9803,'products/21.jpg','[]','2025-11-20 01:47:46','2025-11-20 01:47:46',NULL,'public'),(63,0,'22-1','22-1',2,'image/jpeg',9803,'products/22-1.jpg','[]','2025-11-20 01:47:46','2025-11-20 01:47:46',NULL,'public'),(64,0,'22','22',2,'image/jpeg',9803,'products/22.jpg','[]','2025-11-20 01:47:46','2025-11-20 01:47:46',NULL,'public'),(65,0,'23-1','23-1',2,'image/jpeg',9803,'products/23-1.jpg','[]','2025-11-20 01:47:46','2025-11-20 01:47:46',NULL,'public'),(66,0,'23','23',2,'image/jpeg',9803,'products/23.jpg','[]','2025-11-20 01:47:46','2025-11-20 01:47:46',NULL,'public'),(67,0,'24-1','24-1',2,'image/jpeg',9803,'products/24-1.jpg','[]','2025-11-20 01:47:46','2025-11-20 01:47:46',NULL,'public'),(68,0,'24','24',2,'image/jpeg',9803,'products/24.jpg','[]','2025-11-20 01:47:46','2025-11-20 01:47:46',NULL,'public'),(69,0,'3-1','3-1',2,'image/jpeg',9803,'products/3-1.jpg','[]','2025-11-20 01:47:46','2025-11-20 01:47:46',NULL,'public'),(70,0,'3','3',2,'image/jpeg',9803,'products/3.jpg','[]','2025-11-20 01:47:47','2025-11-20 01:47:47',NULL,'public'),(71,0,'4-1','4-1',2,'image/jpeg',9803,'products/4-1.jpg','[]','2025-11-20 01:47:47','2025-11-20 01:47:47',NULL,'public'),(72,0,'4','4',2,'image/jpeg',9803,'products/4.jpg','[]','2025-11-20 01:47:47','2025-11-20 01:47:47',NULL,'public'),(73,0,'5-1','5-1',2,'image/jpeg',9803,'products/5-1.jpg','[]','2025-11-20 01:47:47','2025-11-20 01:47:47',NULL,'public'),(74,0,'5','5',2,'image/jpeg',9803,'products/5.jpg','[]','2025-11-20 01:47:47','2025-11-20 01:47:47',NULL,'public'),(75,0,'6-1','6-1',2,'image/jpeg',9803,'products/6-1.jpg','[]','2025-11-20 01:47:47','2025-11-20 01:47:47',NULL,'public'),(76,0,'6','6',2,'image/jpeg',9803,'products/6.jpg','[]','2025-11-20 01:47:47','2025-11-20 01:47:47',NULL,'public'),(77,0,'7-1','7-1',2,'image/jpeg',9803,'products/7-1.jpg','[]','2025-11-20 01:47:47','2025-11-20 01:47:47',NULL,'public'),(78,0,'7','7',2,'image/jpeg',9803,'products/7.jpg','[]','2025-11-20 01:47:47','2025-11-20 01:47:47',NULL,'public'),(79,0,'8-1','8-1',2,'image/jpeg',9803,'products/8-1.jpg','[]','2025-11-20 01:47:48','2025-11-20 01:47:48',NULL,'public'),(80,0,'8','8',2,'image/jpeg',9803,'products/8.jpg','[]','2025-11-20 01:47:48','2025-11-20 01:47:48',NULL,'public'),(81,0,'9-1','9-1',2,'image/jpeg',9803,'products/9-1.jpg','[]','2025-11-20 01:47:48','2025-11-20 01:47:48',NULL,'public'),(82,0,'9','9',2,'image/jpeg',9803,'products/9.jpg','[]','2025-11-20 01:47:48','2025-11-20 01:47:48',NULL,'public'),(83,0,'1','1',3,'image/jpeg',9803,'customers/1.jpg','[]','2025-11-20 01:47:50','2025-11-20 01:47:50',NULL,'public'),(84,0,'10','10',3,'image/jpeg',9803,'customers/10.jpg','[]','2025-11-20 01:47:51','2025-11-20 01:47:51',NULL,'public'),(85,0,'2','2',3,'image/jpeg',9803,'customers/2.jpg','[]','2025-11-20 01:47:51','2025-11-20 01:47:51',NULL,'public'),(86,0,'3','3',3,'image/jpeg',9803,'customers/3.jpg','[]','2025-11-20 01:47:51','2025-11-20 01:47:51',NULL,'public'),(87,0,'4','4',3,'image/jpeg',9803,'customers/4.jpg','[]','2025-11-20 01:47:51','2025-11-20 01:47:51',NULL,'public'),(88,0,'5','5',3,'image/jpeg',9803,'customers/5.jpg','[]','2025-11-20 01:47:51','2025-11-20 01:47:51',NULL,'public'),(89,0,'6','6',3,'image/jpeg',9803,'customers/6.jpg','[]','2025-11-20 01:47:51','2025-11-20 01:47:51',NULL,'public'),(90,0,'7','7',3,'image/jpeg',9803,'customers/7.jpg','[]','2025-11-20 01:47:51','2025-11-20 01:47:51',NULL,'public'),(91,0,'8','8',3,'image/jpeg',9803,'customers/8.jpg','[]','2025-11-20 01:47:51','2025-11-20 01:47:51',NULL,'public'),(92,0,'9','9',3,'image/jpeg',9803,'customers/9.jpg','[]','2025-11-20 01:47:51','2025-11-20 01:47:51',NULL,'public'),(93,0,'1','1',4,'image/png',17727,'flash-sales/1.png','[]','2025-11-20 01:47:55','2025-11-20 01:47:55',NULL,'public'),(94,0,'2','2',4,'image/png',12278,'flash-sales/2.png','[]','2025-11-20 01:47:55','2025-11-20 01:47:55',NULL,'public'),(95,0,'3','3',4,'image/png',12278,'flash-sales/3.png','[]','2025-11-20 01:47:55','2025-11-20 01:47:55',NULL,'public'),(96,0,'4','4',4,'image/png',12278,'flash-sales/4.png','[]','2025-11-20 01:47:55','2025-11-20 01:47:55',NULL,'public'),(97,0,'5','5',4,'image/png',12278,'flash-sales/5.png','[]','2025-11-20 01:47:55','2025-11-20 01:47:55',NULL,'public'),(98,0,'1-1','1-1',5,'image/png',14308,'sliders/1-1.png','[]','2025-11-20 01:47:55','2025-11-20 01:47:55',NULL,'public'),(99,0,'1-2','1-2',5,'image/png',14308,'sliders/1-2.png','[]','2025-11-20 01:47:55','2025-11-20 01:47:55',NULL,'public'),(100,0,'2-1','2-1',5,'image/png',15539,'sliders/2-1.png','[]','2025-11-20 01:47:56','2025-11-20 01:47:56',NULL,'public'),(101,0,'2-2','2-2',5,'image/png',15539,'sliders/2-2.png','[]','2025-11-20 01:47:56','2025-11-20 01:47:56',NULL,'public'),(102,0,'3-1','3-1',5,'image/png',14308,'sliders/3-1.png','[]','2025-11-20 01:47:56','2025-11-20 01:47:56',NULL,'public'),(103,0,'3-2','3-2',5,'image/png',14308,'sliders/3-2.png','[]','2025-11-20 01:47:56','2025-11-20 01:47:56',NULL,'public'),(104,0,'4-1','4-1',5,'image/png',14308,'sliders/4-1.png','[]','2025-11-20 01:47:56','2025-11-20 01:47:56',NULL,'public'),(105,0,'4-2','4-2',5,'image/png',14308,'sliders/4-2.png','[]','2025-11-20 01:47:56','2025-11-20 01:47:56',NULL,'public'),(106,0,'5-1','5-1',5,'image/png',17050,'sliders/5-1.png','[]','2025-11-20 01:47:56','2025-11-20 01:47:56',NULL,'public'),(107,0,'5-2','5-2',5,'image/png',17050,'sliders/5-2.png','[]','2025-11-20 01:47:56','2025-11-20 01:47:56',NULL,'public'),(108,0,'banner-1','banner-1',5,'image/png',34492,'sliders/banner-1.png','[]','2025-11-20 01:47:56','2025-11-20 01:47:56',NULL,'public'),(109,0,'thumbnail-1','thumbnail-1',5,'image/jpeg',9803,'sliders/thumbnail-1.jpg','[]','2025-11-20 01:47:56','2025-11-20 01:47:56',NULL,'public'),(110,0,'thumbnail-2','thumbnail-2',5,'image/jpeg',9803,'sliders/thumbnail-2.jpg','[]','2025-11-20 01:47:57','2025-11-20 01:47:57',NULL,'public'),(111,0,'thumbnail-3','thumbnail-3',5,'image/jpeg',9803,'sliders/thumbnail-3.jpg','[]','2025-11-20 01:47:57','2025-11-20 01:47:57',NULL,'public'),(112,0,'thumbnail-4','thumbnail-4',5,'image/jpeg',9803,'sliders/thumbnail-4.jpg','[]','2025-11-20 01:47:57','2025-11-20 01:47:57',NULL,'public'),(113,0,'thumbnail-5','thumbnail-5',5,'image/jpeg',9803,'sliders/thumbnail-5.jpg','[]','2025-11-20 01:47:57','2025-11-20 01:47:57',NULL,'public'),(114,0,'thumbnail-6','thumbnail-6',5,'image/jpeg',9803,'sliders/thumbnail-6.jpg','[]','2025-11-20 01:47:57','2025-11-20 01:47:57',NULL,'public'),(115,0,'1','1',6,'image/png',9803,'news/1.png','[]','2025-11-20 01:47:57','2025-11-20 01:47:57',NULL,'public'),(116,0,'10','10',6,'image/png',9803,'news/10.png','[]','2025-11-20 01:47:57','2025-11-20 01:47:57',NULL,'public'),(117,0,'11','11',6,'image/png',9803,'news/11.png','[]','2025-11-20 01:47:58','2025-11-20 01:47:58',NULL,'public'),(118,0,'2','2',6,'image/png',9803,'news/2.png','[]','2025-11-20 01:47:58','2025-11-20 01:47:58',NULL,'public'),(119,0,'3','3',6,'image/png',9803,'news/3.png','[]','2025-11-20 01:47:58','2025-11-20 01:47:58',NULL,'public'),(120,0,'4','4',6,'image/png',9803,'news/4.png','[]','2025-11-20 01:47:58','2025-11-20 01:47:58',NULL,'public'),(121,0,'5','5',6,'image/png',9803,'news/5.png','[]','2025-11-20 01:47:58','2025-11-20 01:47:58',NULL,'public'),(122,0,'6','6',6,'image/png',9803,'news/6.png','[]','2025-11-20 01:47:58','2025-11-20 01:47:58',NULL,'public'),(123,0,'7','7',6,'image/png',9803,'news/7.png','[]','2025-11-20 01:47:58','2025-11-20 01:47:58',NULL,'public'),(124,0,'8','8',6,'image/png',9803,'news/8.png','[]','2025-11-20 01:47:58','2025-11-20 01:47:58',NULL,'public'),(125,0,'9','9',6,'image/png',9803,'news/9.png','[]','2025-11-20 01:47:58','2025-11-20 01:47:58',NULL,'public'),(126,0,'app-store','app-store',7,'image/jpeg',1928,'general/app-store.jpg','[]','2025-11-20 01:47:59','2025-11-20 01:47:59',NULL,'public'),(127,0,'category-1','category-1',7,'image/png',1070,'general/category-1.png','[]','2025-11-20 01:47:59','2025-11-20 01:47:59',NULL,'public'),(128,0,'clock','clock',7,'image/png',4405,'general/clock.png','[]','2025-11-20 01:47:59','2025-11-20 01:47:59',NULL,'public'),(129,0,'contact-img','contact-img',7,'image/jpeg',35380,'general/contact-img.jpg','[]','2025-11-20 01:47:59','2025-11-20 01:47:59',NULL,'public'),(130,0,'credit-card','credit-card',7,'image/png',1455,'general/credit-card.png','[]','2025-11-20 01:47:59','2025-11-20 01:47:59',NULL,'public'),(131,0,'facebook','facebook',7,'image/png',804,'general/facebook.png','[]','2025-11-20 01:47:59','2025-11-20 01:47:59',NULL,'public'),(132,0,'favicon','favicon',7,'image/png',5383,'general/favicon.png','[]','2025-11-20 01:47:59','2025-11-20 01:47:59',NULL,'public'),(133,0,'google-play','google-play',7,'image/jpeg',1928,'general/google-play.jpg','[]','2025-11-20 01:47:59','2025-11-20 01:47:59',NULL,'public'),(134,0,'header-bg','header-bg',7,'image/png',36758,'general/header-bg.png','[]','2025-11-20 01:48:00','2025-11-20 01:48:00',NULL,'public'),(135,0,'home-6','home-6',7,'image/jpeg',86466,'general/home-6.jpeg','[]','2025-11-20 01:48:00','2025-11-20 01:48:00',NULL,'public'),(136,0,'icon-1','icon-1',7,'image/png',3143,'general/icon-1.png','[]','2025-11-20 01:48:00','2025-11-20 01:48:00',NULL,'public'),(137,0,'icon-2','icon-2',7,'image/png',5389,'general/icon-2.png','[]','2025-11-20 01:48:00','2025-11-20 01:48:00',NULL,'public'),(138,0,'icon-3','icon-3',7,'image/png',3452,'general/icon-3.png','[]','2025-11-20 01:48:00','2025-11-20 01:48:00',NULL,'public'),(139,0,'icon-4','icon-4',7,'image/png',3369,'general/icon-4.png','[]','2025-11-20 01:48:00','2025-11-20 01:48:00',NULL,'public'),(140,0,'icon-5','icon-5',7,'image/png',4435,'general/icon-5.png','[]','2025-11-20 01:48:00','2025-11-20 01:48:00',NULL,'public'),(141,0,'instagram','instagram',7,'image/png',2935,'general/instagram.png','[]','2025-11-20 01:48:00','2025-11-20 01:48:00',NULL,'public'),(142,0,'loading','loading',7,'image/gif',23423,'general/loading.gif','[]','2025-11-20 01:48:00','2025-11-20 01:48:00',NULL,'public'),(143,0,'login-1','login-1',7,'image/png',20332,'general/login-1.png','[]','2025-11-20 01:48:01','2025-11-20 01:48:01',NULL,'public'),(144,0,'logo','logo',7,'image/png',12872,'general/logo.png','[]','2025-11-20 01:48:01','2025-11-20 01:48:01',NULL,'public'),(145,0,'newsletter-background-image','newsletter-background-image',7,'image/png',58306,'general/newsletter-background-image.png','[]','2025-11-20 01:48:01','2025-11-20 01:48:01',NULL,'public'),(146,0,'newsletter-image','newsletter-image',7,'image/png',14191,'general/newsletter-image.png','[]','2025-11-20 01:48:01','2025-11-20 01:48:01',NULL,'public'),(147,0,'open-graph-image','open-graph-image',7,'image/png',325864,'general/open-graph-image.png','[]','2025-11-20 01:48:01','2025-11-20 01:48:01',NULL,'public'),(148,0,'paper-plane','paper-plane',7,'image/png',5184,'general/paper-plane.png','[]','2025-11-20 01:48:02','2025-11-20 01:48:02',NULL,'public'),(149,0,'payment-methods','payment-methods',7,'image/png',476,'general/payment-methods.png','[]','2025-11-20 01:48:02','2025-11-20 01:48:02',NULL,'public'),(150,0,'pinterest','pinterest',7,'image/png',2430,'general/pinterest.png','[]','2025-11-20 01:48:02','2025-11-20 01:48:02',NULL,'public'),(151,0,'twitter','twitter',7,'image/png',2058,'general/twitter.png','[]','2025-11-20 01:48:02','2025-11-20 01:48:02',NULL,'public'),(152,0,'youtube','youtube',7,'image/png',1296,'general/youtube.png','[]','2025-11-20 01:48:02','2025-11-20 01:48:02',NULL,'public'),(153,0,'cod','cod',8,'image/png',12121,'payments/cod.png','[]','2025-11-20 01:48:02','2025-11-20 01:48:02',NULL,'public'),(154,0,'bank-transfer','bank-transfer',8,'image/png',29089,'payments/bank-transfer.png','[]','2025-11-20 01:48:02','2025-11-20 01:48:02',NULL,'public'),(155,0,'stripe','stripe',8,'image/webp',7516,'payments/stripe.webp','[]','2025-11-20 01:48:02','2025-11-20 01:48:02',NULL,'public'),(156,0,'paypal','paypal',8,'image/png',3001,'payments/paypal.png','[]','2025-11-20 01:48:02','2025-11-20 01:48:02',NULL,'public'),(157,0,'mollie','mollie',8,'image/png',8968,'payments/mollie.png','[]','2025-11-20 01:48:02','2025-11-20 01:48:02',NULL,'public'),(158,0,'paystack','paystack',8,'image/png',31015,'payments/paystack.png','[]','2025-11-20 01:48:02','2025-11-20 01:48:02',NULL,'public'),(159,0,'razorpay','razorpay',8,'image/png',8489,'payments/razorpay.png','[]','2025-11-20 01:48:03','2025-11-20 01:48:03',NULL,'public'),(160,0,'sslcommerz','sslcommerz',8,'image/png',3482,'payments/sslcommerz.png','[]','2025-11-20 01:48:03','2025-11-20 01:48:03',NULL,'public'),(161,0,'1','1',9,'image/png',11540,'promotion/1.png','[]','2025-11-20 01:48:04','2025-11-20 01:48:04',NULL,'public'),(162,0,'10','10',9,'image/png',7883,'promotion/10.png','[]','2025-11-20 01:48:04','2025-11-20 01:48:04',NULL,'public'),(163,0,'11','11',9,'image/png',7883,'promotion/11.png','[]','2025-11-20 01:48:04','2025-11-20 01:48:04',NULL,'public'),(164,0,'12','12',9,'image/png',7883,'promotion/12.png','[]','2025-11-20 01:48:04','2025-11-20 01:48:04',NULL,'public'),(165,0,'2','2',9,'image/png',11540,'promotion/2.png','[]','2025-11-20 01:48:04','2025-11-20 01:48:04',NULL,'public'),(166,0,'3','3',9,'image/png',11540,'promotion/3.png','[]','2025-11-20 01:48:04','2025-11-20 01:48:04',NULL,'public'),(167,0,'4','4',9,'image/png',13954,'promotion/4.png','[]','2025-11-20 01:48:04','2025-11-20 01:48:04',NULL,'public'),(168,0,'5','5',9,'image/png',26326,'promotion/5.png','[]','2025-11-20 01:48:04','2025-11-20 01:48:04',NULL,'public'),(169,0,'6','6',9,'image/png',26326,'promotion/6.png','[]','2025-11-20 01:48:04','2025-11-20 01:48:04',NULL,'public'),(170,0,'7','7',9,'image/png',14402,'promotion/7.png','[]','2025-11-20 01:48:05','2025-11-20 01:48:05',NULL,'public'),(171,0,'8','8',9,'image/png',7028,'promotion/8.png','[]','2025-11-20 01:48:05','2025-11-20 01:48:05',NULL,'public'),(172,0,'9','9',9,'image/png',7883,'promotion/9.png','[]','2025-11-20 01:48:05','2025-11-20 01:48:05',NULL,'public'),(173,0,'1','1',10,'image/png',5327,'stores/1.png','[]','2025-11-20 01:48:05','2025-11-20 01:48:05',NULL,'public'),(174,0,'10','10',10,'image/png',5327,'stores/10.png','[]','2025-11-20 01:48:05','2025-11-20 01:48:05',NULL,'public'),(175,0,'11','11',10,'image/png',5327,'stores/11.png','[]','2025-11-20 01:48:05','2025-11-20 01:48:05',NULL,'public'),(176,0,'12','12',10,'image/png',5327,'stores/12.png','[]','2025-11-20 01:48:05','2025-11-20 01:48:05',NULL,'public'),(177,0,'13','13',10,'image/png',5327,'stores/13.png','[]','2025-11-20 01:48:05','2025-11-20 01:48:05',NULL,'public'),(178,0,'14','14',10,'image/png',5327,'stores/14.png','[]','2025-11-20 01:48:05','2025-11-20 01:48:05',NULL,'public'),(179,0,'15','15',10,'image/png',5327,'stores/15.png','[]','2025-11-20 01:48:05','2025-11-20 01:48:05',NULL,'public'),(180,0,'16','16',10,'image/png',5327,'stores/16.png','[]','2025-11-20 01:48:06','2025-11-20 01:48:06',NULL,'public'),(181,0,'17','17',10,'image/png',5327,'stores/17.png','[]','2025-11-20 01:48:06','2025-11-20 01:48:06',NULL,'public'),(182,0,'2','2',10,'image/png',5327,'stores/2.png','[]','2025-11-20 01:48:06','2025-11-20 01:48:06',NULL,'public'),(183,0,'3','3',10,'image/png',5327,'stores/3.png','[]','2025-11-20 01:48:06','2025-11-20 01:48:06',NULL,'public'),(184,0,'4','4',10,'image/png',5327,'stores/4.png','[]','2025-11-20 01:48:06','2025-11-20 01:48:06',NULL,'public'),(185,0,'5','5',10,'image/png',5327,'stores/5.png','[]','2025-11-20 01:48:06','2025-11-20 01:48:06',NULL,'public'),(186,0,'6','6',10,'image/png',5327,'stores/6.png','[]','2025-11-20 01:48:06','2025-11-20 01:48:06',NULL,'public'),(187,0,'7','7',10,'image/png',5327,'stores/7.png','[]','2025-11-20 01:48:06','2025-11-20 01:48:06',NULL,'public'),(188,0,'8','8',10,'image/png',5327,'stores/8.png','[]','2025-11-20 01:48:06','2025-11-20 01:48:06',NULL,'public'),(189,0,'9','9',10,'image/png',5327,'stores/9.png','[]','2025-11-20 01:48:06','2025-11-20 01:48:06',NULL,'public');
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
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_folders_user_id_index` (`user_id`),
  KEY `media_folders_index` (`parent_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (1,0,'product-categories',NULL,'product-categories',0,'2025-11-20 01:47:40','2025-11-20 01:47:40',NULL),(2,0,'products',NULL,'products',0,'2025-11-20 01:47:43','2025-11-20 01:47:43',NULL),(3,0,'customers',NULL,'customers',0,'2025-11-20 01:47:50','2025-11-20 01:47:50',NULL),(4,0,'flash-sales',NULL,'flash-sales',0,'2025-11-20 01:47:55','2025-11-20 01:47:55',NULL),(5,0,'sliders',NULL,'sliders',0,'2025-11-20 01:47:55','2025-11-20 01:47:55',NULL),(6,0,'news',NULL,'news',0,'2025-11-20 01:47:57','2025-11-20 01:47:57',NULL),(7,0,'general',NULL,'general',0,'2025-11-20 01:47:59','2025-11-20 01:47:59',NULL),(8,0,'payments',NULL,'payments',0,'2025-11-20 01:48:02','2025-11-20 01:48:02',NULL),(9,0,'promotion',NULL,'promotion',0,'2025-11-20 01:48:03','2025-11-20 01:48:03',NULL),(10,0,'stores',NULL,'stores',0,'2025-11-20 01:48:05','2025-11-20 01:48:05',NULL);
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
  `key` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
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
-- Table structure for table `menu_locations`
--

DROP TABLE IF EXISTS `menu_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_locations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `location` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2025-11-20 01:48:08','2025-11-20 01:48:08'),(2,2,'header-navigation','2025-11-20 01:48:08','2025-11-20 01:48:08');
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
  `reference_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_nodes_menu_id_index` (`menu_id`),
  KEY `menu_nodes_parent_id_index` (`parent_id`),
  KEY `reference_id` (`reference_id`),
  KEY `reference_type` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_nodes`
--

LOCK TABLES `menu_nodes` WRITE;
/*!40000 ALTER TABLE `menu_nodes` DISABLE KEYS */;
INSERT INTO `menu_nodes` VALUES (1,1,0,NULL,NULL,'/','fi-rs-home',0,'Home',NULL,'_self',1,'2025-11-20 01:48:08','2025-11-20 01:48:08'),(2,1,1,1,'Botble\\Page\\Models\\Page','/',NULL,0,'Home 1',NULL,'_self',0,'2025-11-20 01:48:08','2025-11-20 01:48:08'),(3,1,1,2,'Botble\\Page\\Models\\Page','/homepage-2',NULL,1,'Home 2',NULL,'_self',0,'2025-11-20 01:48:08','2025-11-20 01:48:08'),(4,1,1,3,'Botble\\Page\\Models\\Page','/homepage-3',NULL,2,'Home 3',NULL,'_self',0,'2025-11-20 01:48:08','2025-11-20 01:48:08'),(5,1,1,4,'Botble\\Page\\Models\\Page','/homepage-4',NULL,3,'Home 4',NULL,'_self',0,'2025-11-20 01:48:08','2025-11-20 01:48:08'),(6,1,1,16,'Botble\\Page\\Models\\Page','/homepage-5',NULL,4,'Home 5',NULL,'_self',0,'2025-11-20 01:48:08','2025-11-20 01:48:08'),(7,1,1,17,'Botble\\Page\\Models\\Page','/homepage-6',NULL,5,'Home 6',NULL,'_self',0,'2025-11-20 01:48:08','2025-11-20 01:48:08'),(8,1,0,NULL,NULL,'/products',NULL,1,'Shop',NULL,'_self',1,'2025-11-20 01:48:08','2025-11-20 01:48:08'),(9,1,8,NULL,NULL,'/products',NULL,0,'Shop Grid - Full Width',NULL,'_self',0,'2025-11-20 01:48:08','2025-11-20 01:48:08'),(10,1,8,NULL,NULL,'/products?layout=product-right-sidebar',NULL,1,'Shop Grid - Right Sidebar',NULL,'_self',0,'2025-11-20 01:48:08','2025-11-20 01:48:08'),(11,1,8,NULL,NULL,'/products?layout=product-left-sidebar',NULL,2,'Shop Grid - Left Sidebar',NULL,'_self',0,'2025-11-20 01:48:08','2025-11-20 01:48:08'),(12,1,8,1,'Botble\\Ecommerce\\Models\\ProductCategory',NULL,NULL,3,'Products Of Category',NULL,'_self',0,'2025-11-20 01:48:08','2025-11-20 01:48:08'),(13,1,0,NULL,NULL,'/stores',NULL,2,'Stores',NULL,'_self',1,'2025-11-20 01:48:08','2025-11-20 01:48:08'),(14,1,13,NULL,NULL,'/stores',NULL,0,'Stores - Grid',NULL,'_self',0,'2025-11-20 01:48:08','2025-11-20 01:48:08'),(15,1,13,NULL,NULL,'/stores?layout=stores-list',NULL,1,'Stores - List',NULL,'_self',0,'2025-11-20 01:48:08','2025-11-20 01:48:08'),(16,1,13,NULL,NULL,'',NULL,2,'Store - Detail',NULL,'_self',0,'2025-11-20 01:48:08','2025-11-20 01:48:08'),(17,1,0,NULL,NULL,'/products/seeds-of-change-organic-quinoe',NULL,3,'Product',NULL,'_self',1,'2025-11-20 01:48:08','2025-11-20 01:48:08'),(18,1,17,NULL,NULL,'/products/seeds-of-change-organic-quinoe',NULL,0,'Product Right Sidebar',NULL,'_self',0,'2025-11-20 01:48:08','2025-11-20 01:48:08'),(19,1,17,NULL,NULL,'/products/all-natural-italian-style-chicken-meatballs',NULL,1,'Product Left Sidebar',NULL,'_self',0,'2025-11-20 01:48:08','2025-11-20 01:48:08'),(20,1,17,NULL,NULL,'/products/angies-boomchickapop-sweet-salty-kettle-corn',NULL,2,'Product Full Width',NULL,'_self',0,'2025-11-20 01:48:08','2025-11-20 01:48:08'),(21,1,0,5,'Botble\\Page\\Models\\Page',NULL,NULL,4,'Blog',NULL,'_self',1,'2025-11-20 01:48:08','2025-11-20 01:48:08'),(22,1,21,5,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Blog Grid',NULL,'_self',0,'2025-11-20 01:48:08','2025-11-20 01:48:08'),(23,1,21,13,'Botble\\Page\\Models\\Page',NULL,NULL,1,'Blog List',NULL,'_self',0,'2025-11-20 01:48:08','2025-11-20 01:48:08'),(24,1,21,14,'Botble\\Page\\Models\\Page',NULL,NULL,2,'Blog Big',NULL,'_self',0,'2025-11-20 01:48:08','2025-11-20 01:48:08'),(25,1,21,15,'Botble\\Page\\Models\\Page',NULL,NULL,3,'Blog Wide',NULL,'_self',0,'2025-11-20 01:48:08','2025-11-20 01:48:08'),(26,1,21,NULL,NULL,'',NULL,4,'Single Post',NULL,'_self',1,'2025-11-20 01:48:08','2025-11-20 01:48:08'),(27,1,26,NULL,NULL,'',NULL,0,'Single Post Right Sidebar',NULL,'_self',0,'2025-11-20 01:48:08','2025-11-20 01:48:08'),(28,1,26,NULL,NULL,'',NULL,1,'Single Post Left Sidebar',NULL,'_self',0,'2025-11-20 01:48:08','2025-11-20 01:48:08'),(29,1,26,NULL,NULL,'',NULL,2,'Single Post Full Width',NULL,'_self',0,'2025-11-20 01:48:08','2025-11-20 01:48:08'),(30,1,26,NULL,NULL,'',NULL,3,'Single Post with Product Listing',NULL,'_self',0,'2025-11-20 01:48:08','2025-11-20 01:48:08'),(31,1,0,18,'Botble\\Page\\Models\\Page',NULL,NULL,5,'FAQ',NULL,'_self',0,'2025-11-20 01:48:08','2025-11-20 01:48:08'),(32,1,0,6,'Botble\\Page\\Models\\Page',NULL,NULL,6,'Contact',NULL,'_self',0,'2025-11-20 01:48:08','2025-11-20 01:48:08'),(33,2,0,7,'Botble\\Page\\Models\\Page',NULL,NULL,0,'About Us',NULL,'_self',0,'2025-11-20 01:48:08','2025-11-20 01:48:08'),(34,2,0,NULL,NULL,'/orders/tracking',NULL,1,'Order Tracking',NULL,'_self',0,'2025-11-20 01:48:08','2025-11-20 01:48:08'),(35,3,0,1,'Botble\\Ecommerce\\Models\\ProductCategory',NULL,NULL,0,'Milks and Dairies',NULL,'_self',0,'2025-11-20 01:48:08','2025-11-20 01:48:08'),(36,3,0,2,'Botble\\Ecommerce\\Models\\ProductCategory',NULL,NULL,1,'Clothing & beauty',NULL,'_self',0,'2025-11-20 01:48:08','2025-11-20 01:48:08'),(37,3,0,3,'Botble\\Ecommerce\\Models\\ProductCategory',NULL,NULL,2,'Pet Toy',NULL,'_self',0,'2025-11-20 01:48:08','2025-11-20 01:48:08'),(38,3,0,4,'Botble\\Ecommerce\\Models\\ProductCategory',NULL,NULL,3,'Baking material',NULL,'_self',0,'2025-11-20 01:48:08','2025-11-20 01:48:08'),(39,3,0,5,'Botble\\Ecommerce\\Models\\ProductCategory',NULL,NULL,4,'Fresh Fruit',NULL,'_self',0,'2025-11-20 01:48:08','2025-11-20 01:48:08'),(40,3,0,6,'Botble\\Ecommerce\\Models\\ProductCategory',NULL,NULL,5,'Wines & Drinks',NULL,'_self',0,'2025-11-20 01:48:08','2025-11-20 01:48:08'),(41,4,0,6,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Contact Us',NULL,'_self',0,'2025-11-20 01:48:08','2025-11-20 01:48:08'),(42,4,0,7,'Botble\\Page\\Models\\Page',NULL,NULL,1,'About Us',NULL,'_self',0,'2025-11-20 01:48:08','2025-11-20 01:48:08'),(43,4,0,8,'Botble\\Page\\Models\\Page',NULL,NULL,2,'Cookie Policy',NULL,'_self',0,'2025-11-20 01:48:08','2025-11-20 01:48:08'),(44,4,0,9,'Botble\\Page\\Models\\Page',NULL,NULL,3,'Terms & Conditions',NULL,'_self',0,'2025-11-20 01:48:08','2025-11-20 01:48:08'),(45,4,0,10,'Botble\\Page\\Models\\Page',NULL,NULL,4,'Returns & Exchanges',NULL,'_self',0,'2025-11-20 01:48:08','2025-11-20 01:48:08'),(46,4,0,11,'Botble\\Page\\Models\\Page',NULL,NULL,5,'Shipping & Delivery',NULL,'_self',0,'2025-11-20 01:48:08','2025-11-20 01:48:08'),(47,4,0,12,'Botble\\Page\\Models\\Page',NULL,NULL,6,'Privacy Policy',NULL,'_self',0,'2025-11-20 01:48:08','2025-11-20 01:48:08'),(48,5,0,7,'Botble\\Page\\Models\\Page',NULL,NULL,0,'About us',NULL,'_self',0,'2025-11-20 01:48:08','2025-11-20 01:48:08'),(49,5,0,NULL,NULL,'#',NULL,1,'Affiliate',NULL,'_self',0,'2025-11-20 01:48:08','2025-11-20 01:48:08'),(50,5,0,NULL,NULL,'#',NULL,2,'Career',NULL,'_self',0,'2025-11-20 01:48:08','2025-11-20 01:48:08'),(51,5,0,6,'Botble\\Page\\Models\\Page',NULL,NULL,3,'Contact us',NULL,'_self',0,'2025-11-20 01:48:08','2025-11-20 01:48:08');
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
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2025-11-20 01:48:08','2025-11-20 01:48:08'),(2,'Header menu','header-menu','published','2025-11-20 01:48:08','2025-11-20 01:48:08'),(3,'Product categories','product-categories','published','2025-11-20 01:48:08','2025-11-20 01:48:08'),(4,'Information','information','published','2025-11-20 01:48:08','2025-11-20 01:48:08'),(5,'Company','company','published','2025-11-20 01:48:08','2025-11-20 01:48:08');
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
  `meta_key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_boxes_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
INSERT INTO `meta_boxes` VALUES (1,'background_color','[\"#F2FCE4\"]',1,'Botble\\Ecommerce\\Models\\ProductCategory','2025-11-20 01:47:42','2025-11-20 01:47:42'),(2,'background_color','[\"#FFFCEB\"]',2,'Botble\\Ecommerce\\Models\\ProductCategory','2025-11-20 01:47:42','2025-11-20 01:47:42'),(3,'background_color','[\"#ECFFEC\"]',3,'Botble\\Ecommerce\\Models\\ProductCategory','2025-11-20 01:47:42','2025-11-20 01:47:42'),(4,'background_color','[\"#FEEFEA\"]',4,'Botble\\Ecommerce\\Models\\ProductCategory','2025-11-20 01:47:42','2025-11-20 01:47:42'),(5,'background_color','[\"#FFF3EB\"]',5,'Botble\\Ecommerce\\Models\\ProductCategory','2025-11-20 01:47:42','2025-11-20 01:47:42'),(6,'background_color','[\"#FFF3FF\"]',6,'Botble\\Ecommerce\\Models\\ProductCategory','2025-11-20 01:47:42','2025-11-20 01:47:42'),(7,'background_color','[\"#F2FCE4\"]',7,'Botble\\Ecommerce\\Models\\ProductCategory','2025-11-20 01:47:42','2025-11-20 01:47:42'),(8,'background_color','[\"#FFFCEB\"]',8,'Botble\\Ecommerce\\Models\\ProductCategory','2025-11-20 01:47:42','2025-11-20 01:47:42'),(9,'background_color','[\"#ECFFEC\"]',9,'Botble\\Ecommerce\\Models\\ProductCategory','2025-11-20 01:47:42','2025-11-20 01:47:42'),(10,'background_color','[\"#FEEFEA\"]',10,'Botble\\Ecommerce\\Models\\ProductCategory','2025-11-20 01:47:42','2025-11-20 01:47:42'),(11,'background_color','[\"#FFF3EB\"]',11,'Botble\\Ecommerce\\Models\\ProductCategory','2025-11-20 01:47:42','2025-11-20 01:47:42'),(12,'background_color','[\"#FFF3FF\"]',12,'Botble\\Ecommerce\\Models\\ProductCategory','2025-11-20 01:47:42','2025-11-20 01:47:42'),(13,'background_color','[\"#F2FCE4\"]',13,'Botble\\Ecommerce\\Models\\ProductCategory','2025-11-20 01:47:42','2025-11-20 01:47:42'),(14,'background_color','[\"#FFFCEB\"]',14,'Botble\\Ecommerce\\Models\\ProductCategory','2025-11-20 01:47:42','2025-11-20 01:47:42'),(15,'layout','[\"product-right-sidebar\"]',1,'Botble\\Ecommerce\\Models\\Product','2025-11-20 01:47:48','2025-11-20 01:47:48'),(16,'is_popular','[\"1\"]',1,'Botble\\Ecommerce\\Models\\Product','2025-11-20 01:47:48','2025-11-20 01:47:48'),(17,'faq_ids','[[2,4,7,8,9]]',1,'Botble\\Ecommerce\\Models\\Product','2025-11-20 01:47:48','2025-11-20 01:47:48'),(18,'layout','[\"product-left-sidebar\"]',2,'Botble\\Ecommerce\\Models\\Product','2025-11-20 01:47:48','2025-11-20 01:47:48'),(19,'faq_ids','[[1,5,6,7,9]]',2,'Botble\\Ecommerce\\Models\\Product','2025-11-20 01:47:48','2025-11-20 01:47:48'),(20,'layout','[\"product-full-width\"]',3,'Botble\\Ecommerce\\Models\\Product','2025-11-20 01:47:48','2025-11-20 01:47:48'),(21,'is_popular','[\"1\"]',3,'Botble\\Ecommerce\\Models\\Product','2025-11-20 01:47:48','2025-11-20 01:47:48'),(22,'faq_ids','[[2,4,7,9,10]]',3,'Botble\\Ecommerce\\Models\\Product','2025-11-20 01:47:48','2025-11-20 01:47:48'),(23,'faq_ids','[[1,2,3,4,9]]',4,'Botble\\Ecommerce\\Models\\Product','2025-11-20 01:47:48','2025-11-20 01:47:48'),(24,'is_popular','[\"1\"]',5,'Botble\\Ecommerce\\Models\\Product','2025-11-20 01:47:48','2025-11-20 01:47:48'),(25,'faq_ids','[[1,4,6,7,9]]',5,'Botble\\Ecommerce\\Models\\Product','2025-11-20 01:47:48','2025-11-20 01:47:48'),(26,'faq_ids','[[1,4,5,8,9]]',6,'Botble\\Ecommerce\\Models\\Product','2025-11-20 01:47:48','2025-11-20 01:47:48'),(27,'is_popular','[\"1\"]',7,'Botble\\Ecommerce\\Models\\Product','2025-11-20 01:47:48','2025-11-20 01:47:48'),(28,'faq_ids','[[3,4,5,9,10]]',7,'Botble\\Ecommerce\\Models\\Product','2025-11-20 01:47:48','2025-11-20 01:47:48'),(29,'faq_ids','[[1,4,6,8,10]]',8,'Botble\\Ecommerce\\Models\\Product','2025-11-20 01:47:48','2025-11-20 01:47:48'),(30,'is_popular','[\"1\"]',9,'Botble\\Ecommerce\\Models\\Product','2025-11-20 01:47:49','2025-11-20 01:47:49'),(31,'faq_ids','[[1,5,6,8,9]]',9,'Botble\\Ecommerce\\Models\\Product','2025-11-20 01:47:49','2025-11-20 01:47:49'),(32,'faq_ids','[[4,5,7,8,9]]',10,'Botble\\Ecommerce\\Models\\Product','2025-11-20 01:47:49','2025-11-20 01:47:49'),(33,'is_popular','[\"1\"]',11,'Botble\\Ecommerce\\Models\\Product','2025-11-20 01:47:49','2025-11-20 01:47:49'),(34,'faq_ids','[[1,2,4,6,9]]',11,'Botble\\Ecommerce\\Models\\Product','2025-11-20 01:47:49','2025-11-20 01:47:49'),(35,'faq_ids','[[1,3,4,5,10]]',12,'Botble\\Ecommerce\\Models\\Product','2025-11-20 01:47:49','2025-11-20 01:47:49'),(36,'is_popular','[\"1\"]',13,'Botble\\Ecommerce\\Models\\Product','2025-11-20 01:47:49','2025-11-20 01:47:49'),(37,'faq_ids','[[2,3,5,7,10]]',13,'Botble\\Ecommerce\\Models\\Product','2025-11-20 01:47:49','2025-11-20 01:47:49'),(38,'faq_ids','[[2,6,8,9,10]]',14,'Botble\\Ecommerce\\Models\\Product','2025-11-20 01:47:49','2025-11-20 01:47:49'),(39,'is_popular','[\"1\"]',15,'Botble\\Ecommerce\\Models\\Product','2025-11-20 01:47:49','2025-11-20 01:47:49'),(40,'faq_ids','[[3,4,5,8,10]]',15,'Botble\\Ecommerce\\Models\\Product','2025-11-20 01:47:49','2025-11-20 01:47:49'),(41,'faq_ids','[[4,6,7,8,9]]',16,'Botble\\Ecommerce\\Models\\Product','2025-11-20 01:47:49','2025-11-20 01:47:49'),(42,'is_popular','[\"1\"]',17,'Botble\\Ecommerce\\Models\\Product','2025-11-20 01:47:49','2025-11-20 01:47:49'),(43,'faq_ids','[[2,3,5,7,8]]',17,'Botble\\Ecommerce\\Models\\Product','2025-11-20 01:47:49','2025-11-20 01:47:49'),(44,'faq_ids','[[4,5,6,7,9]]',18,'Botble\\Ecommerce\\Models\\Product','2025-11-20 01:47:49','2025-11-20 01:47:49'),(45,'is_popular','[\"1\"]',19,'Botble\\Ecommerce\\Models\\Product','2025-11-20 01:47:49','2025-11-20 01:47:49'),(46,'faq_ids','[[1,3,4,5,7]]',19,'Botble\\Ecommerce\\Models\\Product','2025-11-20 01:47:49','2025-11-20 01:47:49'),(47,'faq_ids','[[1,3,4,7,8]]',20,'Botble\\Ecommerce\\Models\\Product','2025-11-20 01:47:49','2025-11-20 01:47:49'),(48,'is_popular','[\"1\"]',21,'Botble\\Ecommerce\\Models\\Product','2025-11-20 01:47:49','2025-11-20 01:47:49'),(49,'faq_ids','[[1,2,6,7,8]]',21,'Botble\\Ecommerce\\Models\\Product','2025-11-20 01:47:49','2025-11-20 01:47:49'),(50,'faq_ids','[[2,4,6,8,9]]',22,'Botble\\Ecommerce\\Models\\Product','2025-11-20 01:47:49','2025-11-20 01:47:49'),(51,'is_popular','[\"1\"]',23,'Botble\\Ecommerce\\Models\\Product','2025-11-20 01:47:49','2025-11-20 01:47:49'),(52,'faq_ids','[[1,5,7,8,9]]',23,'Botble\\Ecommerce\\Models\\Product','2025-11-20 01:47:49','2025-11-20 01:47:49'),(53,'faq_ids','[[1,2,6,7,9]]',24,'Botble\\Ecommerce\\Models\\Product','2025-11-20 01:47:49','2025-11-20 01:47:49'),(54,'image','[\"flash-sales\\/1.png\"]',1,'Botble\\Ecommerce\\Models\\FlashSale','2025-11-20 01:47:55','2025-11-20 01:47:55'),(55,'image','[\"flash-sales\\/2.png\"]',2,'Botble\\Ecommerce\\Models\\FlashSale','2025-11-20 01:47:55','2025-11-20 01:47:55'),(56,'image','[\"flash-sales\\/3.png\"]',3,'Botble\\Ecommerce\\Models\\FlashSale','2025-11-20 01:47:55','2025-11-20 01:47:55'),(57,'image','[\"flash-sales\\/4.png\"]',4,'Botble\\Ecommerce\\Models\\FlashSale','2025-11-20 01:47:55','2025-11-20 01:47:55'),(58,'image','[\"flash-sales\\/5.png\"]',5,'Botble\\Ecommerce\\Models\\FlashSale','2025-11-20 01:47:55','2025-11-20 01:47:55'),(59,'simple_slider_style','[\"style-4\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSlider','2025-11-20 01:47:57','2025-11-20 01:47:57'),(60,'simple_slider_style','[\"style-2\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSlider','2025-11-20 01:47:57','2025-11-20 01:47:57'),(61,'simple_slider_style','[\"style-3\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSlider','2025-11-20 01:47:57','2025-11-20 01:47:57'),(62,'simple_slider_style','[\"style-1\"]',4,'Botble\\SimpleSlider\\Models\\SimpleSlider','2025-11-20 01:47:57','2025-11-20 01:47:57'),(63,'simple_slider_style','[\"style-5\"]',5,'Botble\\SimpleSlider\\Models\\SimpleSlider','2025-11-20 01:47:57','2025-11-20 01:47:57'),(64,'simple_slider_style','[\"style-6\"]',6,'Botble\\SimpleSlider\\Models\\SimpleSlider','2025-11-20 01:47:57','2025-11-20 01:47:57'),(65,'simple_slider_style','[\"style-1\"]',7,'Botble\\SimpleSlider\\Models\\SimpleSlider','2025-11-20 01:47:57','2025-11-20 01:47:57'),(66,'header_style','[\"header-style-5\"]',16,'Botble\\Page\\Models\\Page','2025-11-20 01:47:59','2025-11-20 01:47:59'),(67,'header_style','[\"header-style-5\"]',17,'Botble\\Page\\Models\\Page','2025-11-20 01:47:59','2025-11-20 01:47:59'),(68,'button_text','[\"Shop now\"]',1,'Botble\\Ads\\Models\\Ads','2025-11-20 01:48:05','2025-11-20 01:48:05'),(69,'subtitle','[\"Everyday Fresh & \\nClean with Our \\nProducts\"]',1,'Botble\\Ads\\Models\\Ads','2025-11-20 01:48:05','2025-11-20 01:48:05'),(70,'button_text','[\"Shop now\"]',2,'Botble\\Ads\\Models\\Ads','2025-11-20 01:48:05','2025-11-20 01:48:05'),(71,'subtitle','[\"Make your Breakfast Healthy and Easy\"]',2,'Botble\\Ads\\Models\\Ads','2025-11-20 01:48:05','2025-11-20 01:48:05'),(72,'button_text','[\"Shop now\"]',3,'Botble\\Ads\\Models\\Ads','2025-11-20 01:48:05','2025-11-20 01:48:05'),(73,'subtitle','[\"The best Organic Products Online\"]',3,'Botble\\Ads\\Models\\Ads','2025-11-20 01:48:05','2025-11-20 01:48:05'),(74,'button_text','[\"Shop now\"]',4,'Botble\\Ads\\Models\\Ads','2025-11-20 01:48:05','2025-11-20 01:48:05'),(75,'subtitle','[\"Bring nature into your home\"]',4,'Botble\\Ads\\Models\\Ads','2025-11-20 01:48:05','2025-11-20 01:48:05'),(76,'button_text','[\"Shop now\"]',5,'Botble\\Ads\\Models\\Ads','2025-11-20 01:48:05','2025-11-20 01:48:05'),(77,'subtitle','[\"Delivered to your home\"]',5,'Botble\\Ads\\Models\\Ads','2025-11-20 01:48:05','2025-11-20 01:48:05'),(78,'button_text','[\"Shop now\"]',6,'Botble\\Ads\\Models\\Ads','2025-11-20 01:48:05','2025-11-20 01:48:05'),(79,'subtitle','[\"Save 17% <br \\/>on Oganic <br \\/>Juice\"]',6,'Botble\\Ads\\Models\\Ads','2025-11-20 01:48:05','2025-11-20 01:48:05'),(80,'button_text','[\"Shop now\"]',7,'Botble\\Ads\\Models\\Ads','2025-11-20 01:48:05','2025-11-20 01:48:05'),(81,'subtitle','[\"Everyday Fresh & Clean with Our Products\"]',7,'Botble\\Ads\\Models\\Ads','2025-11-20 01:48:05','2025-11-20 01:48:05'),(82,'button_text','[\"Shop now\"]',8,'Botble\\Ads\\Models\\Ads','2025-11-20 01:48:05','2025-11-20 01:48:05'),(83,'subtitle','[\"The best Organic Products Online\"]',8,'Botble\\Ads\\Models\\Ads','2025-11-20 01:48:05','2025-11-20 01:48:05'),(84,'button_text','[\"Go to supplier\"]',9,'Botble\\Ads\\Models\\Ads','2025-11-20 01:48:05','2025-11-20 01:48:05'),(85,'subtitle','[\"Everyday Fresh with\\n Our Products\"]',9,'Botble\\Ads\\Models\\Ads','2025-11-20 01:48:05','2025-11-20 01:48:05'),(86,'button_text','[\"Go to supplier\"]',10,'Botble\\Ads\\Models\\Ads','2025-11-20 01:48:05','2025-11-20 01:48:05'),(87,'subtitle','[\"100% guaranteed all\\n Fresh items\"]',10,'Botble\\Ads\\Models\\Ads','2025-11-20 01:48:05','2025-11-20 01:48:05'),(88,'button_text','[\"Go to supplier\"]',11,'Botble\\Ads\\Models\\Ads','2025-11-20 01:48:05','2025-11-20 01:48:05'),(89,'subtitle','[\"Special grocery sale\\n off this month\"]',11,'Botble\\Ads\\Models\\Ads','2025-11-20 01:48:05','2025-11-20 01:48:05'),(90,'button_text','[\"Go to supplier\"]',12,'Botble\\Ads\\Models\\Ads','2025-11-20 01:48:05','2025-11-20 01:48:05'),(91,'subtitle','[\"Enjoy 15% OFF for all\\n vegetable and fruit\"]',12,'Botble\\Ads\\Models\\Ads','2025-11-20 01:48:05','2025-11-20 01:48:05'),(92,'social_links','[{\"facebook\":\"botble\",\"twitter\":\"botble\"}]',1,'Botble\\Marketplace\\Models\\Store','2025-11-20 01:48:07','2025-11-20 01:48:07'),(93,'social_links','[{\"facebook\":\"botble\",\"twitter\":\"botble\"}]',2,'Botble\\Marketplace\\Models\\Store','2025-11-20 01:48:07','2025-11-20 01:48:07'),(94,'social_links','[{\"facebook\":\"botble\",\"twitter\":\"botble\"}]',3,'Botble\\Marketplace\\Models\\Store','2025-11-20 01:48:07','2025-11-20 01:48:07'),(95,'social_links','[{\"facebook\":\"botble\",\"twitter\":\"botble\"}]',4,'Botble\\Marketplace\\Models\\Store','2025-11-20 01:48:07','2025-11-20 01:48:07');
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
) ENGINE=InnoDB AUTO_INCREMENT=280 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000001_create_cache_table',1),(2,'2013_04_09_032329_create_base_tables',1),(3,'2013_04_09_062329_create_revisions_table',1),(4,'2014_10_12_000000_create_users_table',1),(5,'2014_10_12_100000_create_password_reset_tokens_table',1),(6,'2016_06_10_230148_create_acl_tables',1),(7,'2016_06_14_230857_create_menus_table',1),(8,'2016_06_28_221418_create_pages_table',1),(9,'2016_10_05_074239_create_setting_table',1),(10,'2016_11_28_032840_create_dashboard_widget_tables',1),(11,'2016_12_16_084601_create_widgets_table',1),(12,'2017_05_09_070343_create_media_tables',1),(13,'2017_11_03_070450_create_slug_table',1),(14,'2019_01_05_053554_create_jobs_table',1),(15,'2019_08_19_000000_create_failed_jobs_table',1),(16,'2019_12_14_000001_create_personal_access_tokens_table',1),(17,'2022_04_20_100851_add_index_to_media_table',1),(18,'2022_04_20_101046_add_index_to_menu_table',1),(19,'2022_07_10_034813_move_lang_folder_to_root',1),(20,'2022_08_04_051940_add_missing_column_expires_at',1),(21,'2022_09_01_000001_create_admin_notifications_tables',1),(22,'2022_10_14_024629_drop_column_is_featured',1),(23,'2022_11_18_063357_add_missing_timestamp_in_table_settings',1),(24,'2022_12_02_093615_update_slug_index_columns',1),(25,'2023_01_30_024431_add_alt_to_media_table',1),(26,'2023_02_16_042611_drop_table_password_resets',1),(27,'2023_04_23_005903_add_column_permissions_to_admin_notifications',1),(28,'2023_05_10_075124_drop_column_id_in_role_users_table',1),(29,'2023_08_21_090810_make_page_content_nullable',1),(30,'2023_09_14_021936_update_index_for_slugs_table',1),(31,'2023_12_07_095130_add_color_column_to_media_folders_table',1),(32,'2023_12_17_162208_make_sure_column_color_in_media_folders_nullable',1),(33,'2024_01_07_072057_update_theme_option_for_login_page',1),(34,'2024_04_04_110758_update_value_column_in_user_meta_table',1),(35,'2024_04_25_021317_remove_wrong_widget',1),(36,'2024_05_12_091229_add_column_visibility_to_table_media_files',1),(37,'2024_07_07_091316_fix_column_url_in_menu_nodes_table',1),(38,'2024_07_12_100000_change_random_hash_for_media',1),(39,'2024_09_30_024515_create_sessions_table',1),(40,'2024_12_19_000001_create_device_tokens_table',1),(41,'2024_12_19_000002_create_push_notifications_table',1),(42,'2024_12_19_000003_create_push_notification_recipients_table',1),(43,'2024_12_30_000001_create_user_settings_table',1),(44,'2025_07_06_030754_add_phone_to_users_table',1),(45,'2025_07_31_add_performance_indexes_to_slugs_table',1),(46,'2025_10_29_100000_add_sessions_invalidated_at_to_users_table',1),(47,'2025_11_10_000000_cleanup_duplicate_widgets',1),(48,'2020_11_18_150916_ads_create_ads_table',2),(49,'2021_12_02_035301_add_ads_translations_table',2),(50,'2023_04_17_062645_add_open_in_new_tab',2),(51,'2023_11_07_023805_add_tablet_mobile_image',2),(52,'2024_04_01_043317_add_google_adsense_slot_id_to_ads_table',2),(53,'2025_04_21_000000_add_tablet_mobile_image_to_ads_translations_table',2),(54,'2024_04_27_100730_improve_analytics_setting',3),(55,'2015_06_29_025744_create_audit_history',4),(56,'2023_11_14_033417_change_request_column_in_table_audit_histories',4),(57,'2025_05_05_000001_add_user_type_to_audit_histories_table',4),(58,'2025_11_07_000001_add_actor_type_to_audit_histories_table',4),(59,'2015_06_18_033822_create_blog_table',5),(60,'2021_02_16_092633_remove_default_value_for_author_type',5),(61,'2021_12_03_030600_create_blog_translations',5),(62,'2022_04_19_113923_add_index_to_table_posts',5),(63,'2023_08_29_074620_make_column_author_id_nullable',5),(64,'2024_07_30_091615_fix_order_column_in_categories_table',5),(65,'2025_01_06_033807_add_default_value_for_categories_author_type',5),(66,'2016_06_17_091537_create_contacts_table',6),(67,'2023_11_10_080225_migrate_contact_blacklist_email_domains_to_core',6),(68,'2024_03_20_080001_migrate_change_attribute_email_to_nullable_form_contacts_table',6),(69,'2024_03_25_000001_update_captcha_settings_for_contact',6),(70,'2024_04_19_063914_create_custom_fields_table',6),(71,'2020_03_05_041139_create_ecommerce_tables',7),(72,'2021_01_01_044147_ecommerce_create_flash_sale_table',7),(73,'2021_01_17_082713_add_column_is_featured_to_product_collections_table',7),(74,'2021_01_18_024333_add_zip_code_into_table_customer_addresses',7),(75,'2021_02_18_073505_update_table_ec_reviews',7),(76,'2021_03_10_024419_add_column_confirmed_at_to_table_ec_customers',7),(77,'2021_03_10_025153_change_column_tax_amount',7),(78,'2021_03_20_033103_add_column_availability_to_table_ec_products',7),(79,'2021_04_28_074008_ecommerce_create_product_label_table',7),(80,'2021_05_31_173037_ecommerce_create_ec_products_translations',7),(81,'2021_08_17_105016_remove_column_currency_id_in_some_tables',7),(82,'2021_08_30_142128_add_images_column_to_ec_reviews_table',7),(83,'2021_10_04_030050_add_column_created_by_to_table_ec_products',7),(84,'2021_10_05_122616_add_status_column_to_ec_customers_table',7),(85,'2021_11_03_025806_nullable_phone_number_in_ec_customer_addresses',7),(86,'2021_11_23_071403_correct_languages_for_product_variations',7),(87,'2021_11_28_031808_add_product_tags_translations',7),(88,'2021_12_01_031123_add_featured_image_to_ec_products',7),(89,'2022_01_01_033107_update_table_ec_shipments',7),(90,'2022_02_16_042457_improve_product_attribute_sets',7),(91,'2022_03_22_075758_correct_product_name',7),(92,'2022_04_19_113334_add_index_to_ec_products',7),(93,'2022_04_28_144405_remove_unused_table',7),(94,'2022_05_05_115015_create_ec_customer_recently_viewed_products_table',7),(95,'2022_05_18_143720_add_index_to_table_ec_product_categories',7),(96,'2022_06_16_095633_add_index_to_some_tables',7),(97,'2022_06_30_035148_create_order_referrals_table',7),(98,'2022_07_24_153815_add_completed_at_to_ec_orders_table',7),(99,'2022_08_14_032836_create_ec_order_returns_table',7),(100,'2022_08_14_033554_create_ec_order_return_items_table',7),(101,'2022_08_15_040324_add_billing_address',7),(102,'2022_08_30_091114_support_digital_products_table',7),(103,'2022_09_13_095744_create_options_table',7),(104,'2022_09_13_104347_create_option_value_table',7),(105,'2022_10_05_163518_alter_table_ec_order_product',7),(106,'2022_10_12_041517_create_invoices_table',7),(107,'2022_10_12_142226_update_orders_table',7),(108,'2022_10_13_024916_update_table_order_returns',7),(109,'2022_10_21_030830_update_columns_in_ec_shipments_table',7),(110,'2022_10_28_021046_update_columns_in_ec_shipments_table',7),(111,'2022_11_16_034522_update_type_column_in_ec_shipping_rules_table',7),(112,'2022_11_19_041643_add_ec_tax_product_table',7),(113,'2022_12_12_063830_update_tax_defadult_in_ec_tax_products_table',7),(114,'2022_12_17_041532_fix_address_in_order_invoice',7),(115,'2022_12_26_070329_create_ec_product_views_table',7),(116,'2023_01_04_033051_fix_product_categories',7),(117,'2023_01_09_050400_add_ec_global_options_translations_table',7),(118,'2023_01_10_093754_add_missing_option_value_id',7),(119,'2023_01_17_082713_add_column_barcode_and_cost_per_item_to_product_table',7),(120,'2023_01_26_021854_add_ec_customer_used_coupons_table',7),(121,'2023_02_08_015900_update_options_column_in_ec_order_product_table',7),(122,'2023_02_27_095752_remove_duplicate_reviews',7),(123,'2023_03_20_115757_add_user_type_column_to_ec_shipment_histories_table',7),(124,'2023_04_21_082427_create_ec_product_categorizables_table',7),(125,'2023_05_03_011331_add_missing_column_price_into_invoice_items_table',7),(126,'2023_05_17_025812_fix_invoice_issue',7),(127,'2023_05_26_073140_move_option_make_phone_field_optional_at_checkout_page_to_mandatory_fields',7),(128,'2023_05_27_144611_fix_exchange_rate_setting',7),(129,'2023_06_22_084331_add_generate_license_code_to_ec_products_table',7),(130,'2023_06_30_042512_create_ec_order_tax_information_table',7),(131,'2023_07_14_022724_remove_column_id_from_ec_product_collection_products',7),(132,'2023_08_09_012940_remove_column_status_in_ec_product_attributes',7),(133,'2023_08_15_064505_create_ec_tax_rules_table',7),(134,'2023_08_21_021819_make_column_address_in_ec_customer_addresses_nullable',7),(135,'2023_08_22_094114_drop_unique_for_barcode',7),(136,'2023_08_30_031811_add_apply_via_url_column_to_ec_discounts_table',7),(137,'2023_09_07_094312_add_index_to_product_sku_and_translations',7),(138,'2023_09_19_024955_create_discount_product_categories_table',7),(139,'2023_10_17_070728_add_icon_and_icon_image_to_product_categories_table',7),(140,'2023_11_22_154643_add_unique_in_table_ec_products_variations',7),(141,'2023_11_27_032313_add_price_columns_to_ec_product_cross_sale_relations_table',7),(142,'2023_12_06_023945_add_display_on_checkout_column_to_ec_discounts_table',7),(143,'2023_12_25_040604_ec_create_review_replies_table',7),(144,'2023_12_26_090340_add_private_notes_column_to_ec_customers_table',7),(145,'2024_01_16_070706_fix_translation_tables',7),(146,'2024_01_23_075227_add_proof_file_to_ec_orders_table',7),(147,'2024_03_26_041531_add_cancel_reason_to_ec_orders_table',7),(148,'2024_03_27_062402_create_ec_customer_deletion_requests_table',7),(149,'2024_03_29_042242_migrate_old_captcha_settings',7),(150,'2024_03_29_093946_create_ec_order_return_histories_table',7),(151,'2024_04_01_063523_add_customer_columns_to_ec_reviews_table',7),(152,'2024_04_15_092654_migrate_ecommerce_google_tag_manager_code_setting',7),(153,'2024_04_16_035713_add_min_max_order_quantity_columns_to_products_table',7),(154,'2024_05_07_073153_improve_table_wishlist',7),(155,'2024_05_07_093703_add_missing_zip_code_into_table_store_locators',7),(156,'2024_05_15_021503_fix_invoice_path',7),(157,'2024_06_20_160724_create_ec_shared_wishlists_table',7),(158,'2024_06_28_025104_add_notify_attachment_updated_column_to_ec_products_table',7),(159,'2024_07_03_030900_add_downloaded_at_column_to_ec_order_product_table',7),(160,'2024_07_14_071826_make_customer_email_nullable',7),(161,'2024_07_15_104916_add_video_media_column_to_ec_products_table',7),(162,'2024_07_26_052530_add_percentage_to_tax_rules_table',7),(163,'2024_08_14_123028_add_customer_delivered_confirmed_at_column_to_ec_shipments_table',7),(164,'2024_08_19_132849_create_specification_tables',7),(165,'2024_09_07_060744_add_author_column_to_specification_tables',7),(166,'2024_09_14_064023_add_can_use_with_flash_sale_column_to_ec_discounts_table',7),(167,'2024_09_25_073928_remove_wrong_product_slugs',7),(168,'2025_01_10_000000_fix_order_invoice_rounding_issues',7),(169,'2025_01_15_050230_migrate_old_theme_options',7),(170,'2025_01_15_optimize_products_export_index',7),(171,'2025_01_17_082713_correct_column_barcode_and_cost_per_item_to_product_table',7),(172,'2025_01_24_044641_migrate_old_country_data',7),(173,'2025_01_28_233602_add_private_notes_into_ec_orders_table',7),(174,'2025_02_13_021247_add_tax_translations',7),(175,'2025_02_24_152621_add_text_color_to_product_labels_table',7),(176,'2025_04_12_000001_add_payment_fee_to_ec_orders_table',7),(177,'2025_04_12_000002_add_payment_fee_to_ec_invoices_table',7),(178,'2025_05_05_092036_make_user_id_and_tax_amount_nullable',7),(179,'2025_05_15_082342_drop_email_unique_index_in_ec_customers_table',7),(180,'2025_06_07_081731_add_translations_for_specification_groups_and_tables',7),(181,'2025_06_17_091813_increase_note_in_shipments_table',7),(182,'2025_06_24_000001_create_ec_product_license_codes_table',7),(183,'2025_06_24_080427_add_license_code_type_to_products_table',7),(184,'2025_07_06_062402_create_ec_customer_deletion_requests_table',7),(185,'2025_07_07_161729_change_license_code_to_text_in_ec_product_license_codes_table',7),(186,'2025_07_08_162756_increase_license_code_column_size_in_ec_order_product_table',7),(187,'2025_07_09_000001_add_customer_address_fields_to_ec_invoices_table',7),(188,'2025_07_15_090809_create_ec_abandoned_carts_table',7),(189,'2025_07_24_120510_increase_barcode_column_length_in_ec_products_table',7),(190,'2025_07_31_133600_add_performance_indexes_to_ec_product_categories_table',7),(191,'2025_08_01_161205_optimize_product_variation_query_indexes',7),(192,'2025_08_08_145059_correct_tax_amount_in_order_and_invoice_tables',7),(193,'2025_09_05_025247_create_ec_product_specification_attribute_translations_table',7),(194,'2025_09_08_025516_add_variations_count_to_ec_products_table',7),(195,'2025_09_08_080248_add_slug_column_to_ec_product_categories_table',7),(196,'2025_09_08_080330_add_slug_column_to_ec_product_categories_translations_table',7),(197,'2025_09_08_080443_populate_slug_column_for_product_categories',7),(198,'2025_09_08_081216_add_slug_column_to_ec_products_table',7),(199,'2025_09_08_081237_add_slug_column_to_ec_products_translations_table',7),(200,'2025_09_08_081321_populate_slug_column_for_products',7),(201,'2025_09_10_073321_add_performance_indexes_to_ecommerce_tables',7),(202,'2025_09_18_093922_fix_tax_rounding_in_order_products_and_invoices',7),(203,'2025_09_21_030756_add_reviews_cache_to_ec_products_table',7),(204,'2025_09_30_090432_add_performance_indexes_to_ec_product_categories_table',7),(205,'2025_10_10_090331_add_number_format_style_to_ec_currencies_table',7),(206,'2025_10_10_092235_add_space_between_price_and_currency_to_ec_currencies_table',7),(207,'2025_10_11_074318_add_price_includes_tax_to_ec_products_table',7),(208,'2025_10_13_043527_generate_slugs_for_product_collections',7),(209,'2025_10_22_020518_add_verification_code_to_ec_customer_deletion_requests_table',7),(210,'2025_10_22_090000_remove_duplicate_order_addresses',7),(211,'2025_10_28_133220_add_unique_order_id_to_shipments_table',7),(212,'2025_10_28_134738_fix_order_payment_shipment_discount_data_issues',7),(213,'2025_11_05_032148_add_performance_indexes_to_ecommerce_tables',7),(214,'2025_11_10_100000_create_ec_order_metadata_table',7),(215,'2025_11_12_100000_improve_ec_customer_recently_viewed_products_table',7),(216,'2025_11_18_214150_add_covering_indexes_to_product_relation_tables',7),(217,'2018_07_09_221238_create_faq_table',8),(218,'2021_12_03_082134_create_faq_translations',8),(219,'2023_11_17_063408_add_description_column_to_faq_categories_table',8),(220,'2016_10_03_032336_create_languages_table',9),(221,'2023_09_14_022423_add_index_for_language_table',9),(222,'2021_10_25_021023_fix-priority-load-for-language-advanced',10),(223,'2021_12_03_075608_create_page_translations',10),(224,'2023_07_06_011444_create_slug_translations_table',10),(225,'2019_11_18_061011_create_country_table',11),(226,'2021_12_03_084118_create_location_translations',11),(227,'2021_12_03_094518_migrate_old_location_data',11),(228,'2021_12_10_034440_switch_plugin_location_to_use_language_advanced',11),(229,'2022_01_16_085908_improve_plugin_location',11),(230,'2022_08_04_052122_delete_location_backup_tables',11),(231,'2023_04_23_061847_increase_state_translations_abbreviation_column',11),(232,'2023_07_26_041451_add_more_columns_to_location_table',11),(233,'2023_07_27_041451_add_more_columns_to_location_translation_table',11),(234,'2023_08_15_073307_drop_unique_in_states_cities_translations',11),(235,'2023_10_21_065016_make_state_id_in_table_cities_nullable',11),(236,'2024_08_17_094600_add_image_into_countries',11),(237,'2025_01_08_093652_add_zip_code_to_cities',11),(238,'2025_07_31_083459_add_indexes_for_location_search_performance',11),(239,'2021_07_06_030002_create_marketplace_table',12),(240,'2021_09_04_150137_add_vendor_verified_at_to_ec_customers_table',12),(241,'2021_10_04_033903_add_column_approved_by_into_table_ec_products',12),(242,'2021_10_06_124943_add_transaction_id_column_to_mp_customer_withdrawals_table',12),(243,'2021_10_10_054216_add_columns_to_mp_customer_revenues_table',12),(244,'2021_12_06_031304_update_table_mp_customer_revenues',12),(245,'2022_10_19_152916_add_columns_to_mp_stores_table',12),(246,'2022_10_20_062849_create_mp_category_sale_commissions_table',12),(247,'2022_11_02_071413_add_more_info_for_store',12),(248,'2022_11_02_080444_add_tax_info',12),(249,'2023_02_01_062030_add_store_translations',12),(250,'2023_02_13_032133_update_fee_column_mp_customer_revenues_table',12),(251,'2023_02_17_023648_fix_store_prefix',12),(252,'2024_04_03_062451_add_cover_image_to_table_mp_stores',12),(253,'2024_05_07_082630_create_mp_messages_table',12),(254,'2024_07_19_131849_add_documents_to_mp_stores_table',12),(255,'2024_08_18_083119_add_tax_id_column_to_mp_stores_table',12),(256,'2024_08_27_141244_add_block_reason_to_ec_customers_table',12),(257,'2024_09_17_125408_add_square_logo_to_stores_table',12),(258,'2025_07_31_021805_add_indexes_for_vendor_categories_optimization',12),(259,'2025_08_07_073854_add_verification_fields_to_mp_stores_table',12),(260,'2025_11_05_000001_add_indexes_for_marketplace_performance_optimization',12),(261,'2017_10_24_154832_create_newsletter_table',13),(262,'2024_03_25_000001_update_captcha_settings_for_newsletter',13),(263,'2017_05_18_080441_create_payment_tables',14),(264,'2021_03_27_144913_add_customer_type_into_table_payments',14),(265,'2021_05_24_034720_make_column_currency_nullable',14),(266,'2021_08_09_161302_add_metadata_column_to_payments_table',14),(267,'2021_10_19_020859_update_metadata_field',14),(268,'2022_06_28_151901_activate_paypal_stripe_plugin',14),(269,'2022_07_07_153354_update_charge_id_in_table_payments',14),(270,'2024_07_04_083133_create_payment_logs_table',14),(271,'2025_04_12_000003_add_payment_fee_to_payments_table',14),(272,'2025_05_22_000001_add_payment_fee_type_to_settings_table',14),(273,'2017_07_11_140018_create_simple_slider_table',15),(274,'2025_04_08_040931_create_social_logins_table',16),(275,'2024_09_14_100108_add_stripe_connect_details_to_ec_customers_table',17),(276,'2018_07_09_214610_create_testimonial_table',18),(277,'2021_12_03_083642_create_testimonials_translations',18),(278,'2016_10_07_193005_create_translations_table',19),(279,'2023_12_12_105220_drop_translations_table',19);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_category_sale_commissions`
--

DROP TABLE IF EXISTS `mp_category_sale_commissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_category_sale_commissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_category_id` bigint unsigned NOT NULL,
  `commission_percentage` decimal(8,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mp_category_sale_commissions_product_category_id_unique` (`product_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_category_sale_commissions`
--

LOCK TABLES `mp_category_sale_commissions` WRITE;
/*!40000 ALTER TABLE `mp_category_sale_commissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_category_sale_commissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_revenues`
--

DROP TABLE IF EXISTS `mp_customer_revenues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_customer_revenues` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `sub_amount` decimal(15,2) DEFAULT '0.00',
  `fee` decimal(15,2) unsigned DEFAULT '0.00',
  `amount` decimal(15,2) DEFAULT '0.00',
  `current_balance` decimal(15,2) DEFAULT '0.00',
  `currency` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `type` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mp_customer_revenues_customer_id_index` (`customer_id`),
  KEY `mp_customer_revenues_order_id_index` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_revenues`
--

LOCK TABLES `mp_customer_revenues` WRITE;
/*!40000 ALTER TABLE `mp_customer_revenues` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_customer_revenues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_withdrawals`
--

DROP TABLE IF EXISTS `mp_customer_withdrawals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_customer_withdrawals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `fee` decimal(15,2) unsigned DEFAULT '0.00',
  `amount` decimal(15,2) unsigned DEFAULT '0.00',
  `current_balance` decimal(15,2) unsigned DEFAULT '0.00',
  `currency` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `bank_info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payment_channel` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `images` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `transaction_id` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mp_customer_withdrawals_customer_id_index` (`customer_id`),
  KEY `mp_customer_withdrawals_status_index` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_withdrawals`
--

LOCK TABLES `mp_customer_withdrawals` WRITE;
/*!40000 ALTER TABLE `mp_customer_withdrawals` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_customer_withdrawals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_messages`
--

DROP TABLE IF EXISTS `mp_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_messages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `store_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned DEFAULT NULL,
  `name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_messages`
--

LOCK TABLES `mp_messages` WRITE;
/*!40000 ALTER TABLE `mp_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_stores`
--

DROP TABLE IF EXISTS `mp_stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_stores` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` bigint unsigned DEFAULT NULL,
  `logo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo_square` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `is_verified` tinyint(1) NOT NULL DEFAULT '0',
  `verified_at` timestamp NULL DEFAULT NULL,
  `verified_by` bigint unsigned DEFAULT NULL,
  `verification_note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `vendor_verified_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `certificate_file` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `government_id_file` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mp_stores_customer_id_index` (`customer_id`),
  KEY `mp_stores_status_index` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_stores`
--

LOCK TABLES `mp_stores` WRITE;
/*!40000 ALTER TABLE `mp_stores` DISABLE KEYS */;
INSERT INTO `mp_stores` VALUES (1,'GoPro','nrosenbaum@example.com','+12569547510','26626 Fritz Corners','GT','Louisiana','Koeppberg',2,'stores/1.png',NULL,NULL,'Possimus odio cupiditate doloribus unde quo.','Quidem aut maxime officia dolores beatae. Blanditiis esse sed nihil. Et maxime eaque reprehenderit architecto aut suscipit quo esse.','published',1,'2025-09-22 07:09:47',NULL,'Authentic products and reliable service confirmed',NULL,'2025-11-20 01:48:07','2025-11-20 01:48:07',NULL,NULL,NULL,NULL,NULL),(2,'Global Office','ransom.heidenreich@example.com','+15637557168','2431 Hahn Burgs Apt. 667','BT','Texas','South Shanelle',5,'stores/2.png',NULL,NULL,'Quisquam reprehenderit sed magnam aliquid autem.','Sunt sit et veritatis quaerat eos et sit libero. Enim nostrum quod nobis consequuntur. Et sint deleniti doloribus omnis dolores.','published',1,'2025-08-22 19:13:32',NULL,'Verified business with valid documentation',NULL,'2025-11-20 01:48:07','2025-11-20 01:48:07',NULL,NULL,NULL,NULL,NULL),(3,'Young Shop','ethyl.tromp@example.com','+16512556079','130 Kailyn Pass','KW','Oklahoma','Armanitown',7,'stores/3.png',NULL,NULL,'Ut modi incidunt distinctio maiores beatae sunt.','Voluptatem reiciendis mollitia consequuntur alias ipsam est laborum. Ullam harum fugiat fugiat aspernatur. Blanditiis vel repellat aut.','published',1,'2025-06-08 00:31:49',NULL,'Verified through official business registration',NULL,'2025-11-20 01:48:07','2025-11-20 01:48:07',NULL,NULL,NULL,NULL,NULL),(4,'Global Store','odie.fahey@example.net','+19898620242','1133 Norwood Estates Apt. 814','TL','Montana','Stokesside',9,'stores/4.png',NULL,NULL,'Architecto neque dolores vel. Sed odio sunt unde.','Dolores est explicabo ipsa et iure. Quia molestiae corporis inventore incidunt nam hic.','published',0,NULL,NULL,NULL,NULL,'2025-11-20 01:48:07','2025-11-20 01:48:07',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `mp_stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_stores_translations`
--

DROP TABLE IF EXISTS `mp_stores_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_stores_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mp_stores_id` bigint unsigned NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`mp_stores_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_stores_translations`
--

LOCK TABLES `mp_stores_translations` WRITE;
/*!40000 ALTER TABLE `mp_stores_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_stores_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_vendor_info`
--

DROP TABLE IF EXISTS `mp_vendor_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_vendor_info` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL DEFAULT '0',
  `balance` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_fee` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_revenue` decimal(15,2) NOT NULL DEFAULT '0.00',
  `signature` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payout_payment_method` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'bank_transfer',
  `tax_info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `mp_vendor_info_customer_id_index` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_vendor_info`
--

LOCK TABLES `mp_vendor_info` WRITE;
/*!40000 ALTER TABLE `mp_vendor_info` DISABLE KEYS */;
INSERT INTO `mp_vendor_info` VALUES (1,2,0.00,0.00,0.00,'$2y$12$989bjcdPdhQxbvs3ka3THOjZNALOpqvnd7mv.F8mTQuI/.QjPWKmK','{\"name\":\"Virgie Sawayn\",\"number\":\"+18203670385\",\"full_name\":\"Elsa Macejkovic\",\"description\":\"Kennedy Sporer\"}','2025-11-20 01:48:07','2025-11-20 01:48:07','bank_transfer',NULL),(2,5,0.00,0.00,0.00,'$2y$12$/Bp1CEtIxNdbI.Tw8mGcz.gotqVXum1qrschq5pGudCuMoZ5UaOri','{\"name\":\"Cordia Klein\",\"number\":\"+14326285276\",\"full_name\":\"Rod Kihn\",\"description\":\"Stephania Kutch\"}','2025-11-20 01:48:07','2025-11-20 01:48:07','bank_transfer',NULL),(3,7,0.00,0.00,0.00,'$2y$12$lMSJGWPz1L4d2By15gOc1uLgIlamtq7IaD9VPuTL6rZz/BXREK2Du','{\"name\":\"Toni Bode\",\"number\":\"+15514124107\",\"full_name\":\"Noemy Hudson\",\"description\":\"Jessy Schamberger\"}','2025-11-20 01:48:07','2025-11-20 01:48:07','bank_transfer',NULL),(4,9,0.00,0.00,0.00,'$2y$12$ARq0G8EAW59cyuc8JGdel.2ZA0Yq/I.ttEx26EWHL20DZe06.osAK','{\"name\":\"Montana Pfannerstill\",\"number\":\"+14452539764\",\"full_name\":\"Annabel Lueilwitz Sr.\",\"description\":\"Johnathan Stokes\"}','2025-11-20 01:48:07','2025-11-20 01:48:07','bank_transfer',NULL);
/*!40000 ALTER TABLE `mp_vendor_info` ENABLE KEYS */;
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
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned DEFAULT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Homepage','<div>[simple-slider key=\"home-slider-1\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[featured-product-categories title=\"Top Categories\"][/featured-product-categories]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[popular-products title=\"Popular Products\" per_row=\"5\" limit=\"10\" enable_lazy_loading=\"yes\"][/popular-products]</div><div>[best-flash-sale title=\"Daily Best Sells\" flash_sale_id=\"5\" ads=\"IZ6WU8KUALYG\"][/best-flash-sale]</div><div>[flash-sale flash_sale_1=\"1\" flash_sale_2=\"2\" flash_sale_3=\"3\" flash_sale_4=\"4\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\" enable_lazy_loading=\"yes\"][/top-products-group]</div><div>[testimonials title=\"What our Clients say\" subtitle=\"Customers Review\" testimonial_ids=\"1,2,3,4\"][/testimonials]</div>',1,NULL,'homepage',NULL,'published','2025-11-20 01:47:58','2025-11-20 01:47:58'),(2,'Homepage 2','<div>[simple-slider key=\"home-slider-2\" ads_1=\"IZ6WU8KUALYH\" show_newsletter_form=\"yes\" cover_image=\"sliders/banner-1.png\"][/simple-slider]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[popular-products title=\"Popular Products\" per_row=\"5\" limit=\"10\" enable_lazy_loading=\"yes\"][/popular-products]</div><div>[best-flash-sale title=\"Daily Best Sells\" flash_sale_id=\"5\" ads=\"IZ6WU8KUALYG\"][/best-flash-sale]</div><div>[flash-sale flash_sale_1=\"1\" flash_sale_2=\"2\" flash_sale_3=\"3\" flash_sale_4=\"4\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\" enable_lazy_loading=\"yes\"][/top-products-group]</div><div>[product-categories title=\"Shop by Categories\"][/product-categories]</div><div>[testimonials title=\"What our Clients say\" subtitle=\"Customers Review\" testimonial_ids=\"1,2,3,4\"][/testimonials]</div>',1,NULL,'homepage',NULL,'published','2025-11-20 01:47:59','2025-11-20 01:47:59'),(3,'Homepage 3','<div>[simple-slider key=\"home-slider-1\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[popular-products title=\"Popular Products\" per_row=\"5\" limit=\"10\" enable_lazy_loading=\"yes\"][/popular-products]</div><div>[flash-sale flash_sale_1=\"1\" flash_sale_2=\"2\" flash_sale_3=\"3\" flash_sale_4=\"4\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[product-categories title=\"Shop by Categories\"][/product-categories]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\" enable_lazy_loading=\"yes\"][/top-products-group]</div>',1,NULL,'homepage',NULL,'published','2025-11-20 01:47:59','2025-11-20 01:47:59'),(4,'Homepage 4','<div>[simple-slider key=\"home-slider-4\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[popular-products title=\"Popular Products\" per_row=\"5\" limit=\"10\" enable_lazy_loading=\"yes\"][/popular-products]</div><div>[flash-sale flash_sale_1=\"1\" flash_sale_2=\"2\" flash_sale_3=\"3\" flash_sale_4=\"4\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[product-categories title=\"Shop by Categories\"][/product-categories]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\" enable_lazy_loading=\"yes\"][/top-products-group]</div>',1,NULL,'homepage',NULL,'published','2025-11-20 01:47:59','2025-11-20 01:47:59'),(5,'Blog','<p>---</p>',1,NULL,'blog-grid',NULL,'published','2025-11-20 01:47:59','2025-11-20 01:47:59'),(6,'Contact','<p>[google-map]502 New Street, Brighton VIC, Australia[/google-map]</p><p>[our-offices][/our-offices]</p><p>[contact-form][/contact-form]</p>',1,NULL,'default',NULL,'published','2025-11-20 01:47:59','2025-11-20 01:47:59'),(7,'About us','<p>March Hare. Alice was silent. The Dormouse slowly opened his eyes very wide on hearing this; but all he SAID was, \'Why is a very short time the Queen merely remarking that a red-hot poker will burn you if you like!\' the Duchess was VERY ugly; and secondly, because she was peering about anxiously among the bright flower-beds and the Queen was in March.\' As she said aloud. \'I shall do nothing of tumbling down stairs! How brave they\'ll all think me for his housemaid,\' she said to herself \'It\'s.</p><p>He looked at the stick, running a very little! Besides, SHE\'S she, and I\'m sure I don\'t put my arm round your waist,\' the Duchess sneezed occasionally; and as the door that led into the wood for fear of their hearing her; and the pattern on their slates, and she ran out of its right ear and left foot, so as to prevent its undoing itself,) she carried it out again, and we put a stop to this,\' she said to herself; \'I should think it was,\' the March Hare and the White Rabbit as he spoke. \'A cat.</p><p>Queen: so she took up the fan and two or three times over to the door, she found this a good deal to come out among the distant green leaves. As there seemed to be Number One,\' said Alice. \'Of course they were\', said the Mouse to Alice as she swam lazily about in the schoolroom, and though this was of very little use, as it can talk: at any rate it would not give all else for two reasons. First, because I\'m on the bank, with her head to hide a smile: some of them attempted to explain the.</p><p>Alice. \'I\'ve so often read in the same as they would go, and broke off a head could be NO mistake about it: it was good manners for her neck would bend about easily in any direction, like a telescope! I think I can go back and finish your story!\' Alice called after it; and while she was terribly frightened all the time when she looked up and saying, \'Thank you, sir, for your walk!\" \"Coming in a VERY unpleasant state of mind, she turned away. \'Come back!\' the Caterpillar seemed to have.</p>',1,NULL,'right-sidebar',NULL,'published','2025-11-20 01:47:59','2025-11-20 01:47:59'),(8,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,'default',NULL,'published','2025-11-20 01:47:59','2025-11-20 01:47:59'),(9,'Terms &amp; Conditions','<p>Gryphon remarked: \'because they lessen from day to such stuff? Be off, or I\'ll kick you down stairs!\' \'That is not said right,\' said the King. Here one of the trees as well as if nothing had happened. \'How am I to get very tired of being such a capital one for catching mice you can\'t take more.\' \'You mean you can\'t think! And oh, I wish you could draw treacle out of its mouth, and its great eyes half shut. This seemed to be a queer thing, to be Involved in this affair, He trusts to you never.</p><p>For instance, if you drink much from a Caterpillar The Caterpillar and Alice joined the procession, wondering very much confused, \'I don\'t see,\' said the last word with such a thing as \"I sleep when I learn music.\' \'Ah! that accounts for it,\' said the March Hare: she thought it would not open any of them. \'I\'m sure I\'m not Ada,\' she said, \'for her hair goes in such confusion that she remained the same thing, you know.\' \'Not at all,\' said Alice: \'I don\'t like it, yer honour, at all, as the.</p><p>It quite makes my forehead ache!\' Alice watched the Queen never left off staring at the window.\' \'THAT you won\'t\' thought Alice, \'shall I NEVER get any older than you, and listen to her. \'I can hardly breathe.\' \'I can\'t explain it,\' said Alice. \'Oh, don\'t bother ME,\' said Alice in a very pretty dance,\' said Alice very politely; but she could do, lying down on one knee. \'I\'m a poor man, your Majesty,\' said Alice timidly. \'Would you tell me,\' said Alice, \'we learned French and music.\' \'And.</p><p>Then they all cheered. Alice thought she might as well be at school at once.\' And in she went. Once more she found her head made her look up in a furious passion, and went on: \'--that begins with a T!\' said the Mock Turtle sighed deeply, and began, in a confused way, \'Prizes! Prizes!\' Alice had been looking over his shoulder as he fumbled over the edge of her little sister\'s dream. The long grass rustled at her rather inquisitively, and seemed to be otherwise than what you mean,\' said Alice.</p>',1,NULL,'default',NULL,'published','2025-11-20 01:47:59','2025-11-20 01:47:59'),(10,'Returns &amp; Exchanges','<p>Queen ordering off her unfortunate guests to execution--once more the shriek of the officers: but the Dodo solemnly, rising to its children, \'Come away, my dears! It\'s high time you were me?\' \'Well, perhaps your feelings may be ONE.\' \'One, indeed!\' said the Footman, \'and that for the fan and gloves--that is, if I know THAT well enough; don\'t be nervous, or I\'ll have you got in as well,\' the Hatter went on for some time busily writing in his turn; and both creatures hid their faces in their.</p><p>Alice turned and came back again. \'Keep your temper,\' said the Duchess, as she could. The next thing was waving its right ear and left foot, so as to prevent its undoing itself,) she carried it out again, so violently, that she had to pinch it to make herself useful, and looking at it again: but he now hastily began again, using the ink, that was lying on the other arm curled round her once more, while the rest of it now in sight, and no room at all for any lesson-books!\' And so she set the.</p><p>And the Eaglet bent down its head impatiently, and said, \'So you think you might do very well as the Rabbit, and had just upset the milk-jug into his plate. Alice did not like the right height to rest herself, and nibbled a little nervous about this; \'for it might injure the brain; But, now that I\'m perfectly sure I can\'t see you?\' She was moving them about as it spoke. \'As wet as ever,\' said Alice doubtfully: \'it means--to--make--anything--prettier.\' \'Well, then,\' the Cat remarked. \'Don\'t be.</p><p>IT. It\'s HIM.\' \'I don\'t know what they\'re about!\' \'Read them,\' said the March Hare interrupted in a great hurry. \'You did!\' said the Mock Turtle in the direction it pointed to, without trying to invent something!\' \'I--I\'m a little of it?\' said the Gryphon only answered \'Come on!\' and ran the faster, while more and more sounds of broken glass. \'What a curious appearance in the common way. So she went on, \'you see, a dog growls when it\'s angry, and wags its tail about in the schoolroom, and.</p>',1,NULL,'default',NULL,'published','2025-11-20 01:47:59','2025-11-20 01:47:59'),(11,'Shipping &amp; Delivery','<p>White Rabbit read:-- \'They told me you had been of late much accustomed to usurpation and conquest. Edwin and Morcar, the earls of Mercia and Northumbria--\"\' \'Ugh!\' said the Gryphon. \'It all came different!\' the Mock Turtle at last, they must be a book of rules for shutting people up like telescopes: this time it all came different!\' Alice replied very readily: \'but that\'s because it stays the same when I find a number of bathing machines in the sea. But they HAVE their tails fast in their.</p><p>SOMETHING interesting is sure to do with this creature when I get SOMEWHERE,\' Alice added as an explanation. \'Oh, you\'re sure to kill it in a sulky tone; \'Seven jogged my elbow.\' On which Seven looked up eagerly, half hoping that the reason and all of you, and listen to her, one on each side to guard him; and near the looking-glass. There was not otherwise than what it was: at first was moderate. But the snail replied \"Too far, too far!\" and gave a sudden burst of tears, but said nothing.</p><p>King, the Queen, tossing her head struck against the ceiling, and had to be a queer thing, to be a great hurry. \'You did!\' said the Gryphon, sighing in his turn; and both footmen, Alice noticed, had powdered hair that WOULD always get into the sky. Twinkle, twinkle--\"\' Here the Dormouse crossed the court, arm-in-arm with the Mouse replied rather impatiently: \'any shrimp could have been a RED rose-tree, and we won\'t talk about her pet: \'Dinah\'s our cat. And she\'s such a long hookah, and taking.</p><p>Queen. \'Sentence first--verdict afterwards.\' \'Stuff and nonsense!\' said Alice thoughtfully: \'but then--I shouldn\'t be hungry for it, he was going to dive in among the people near the door and went on growing, and, as she went slowly after it: \'I never saw one, or heard of one,\' said Alice, \'it\'s very interesting. I never heard of such a puzzled expression that she had found the fan and gloves--that is, if I only knew how to spell \'stupid,\' and that makes the world go round!\"\' \'Somebody said,\'.</p>',1,NULL,'default',NULL,'published','2025-11-20 01:47:59','2025-11-20 01:47:59'),(12,'Privacy Policy','<p>I suppose Dinah\'ll be sending me on messages next!\' And she tried to say than his first speech. \'You should learn not to lie down on their throne when they arrived, with a deep sigh, \'I was a little scream of laughter. \'Oh, hush!\' the Rabbit began. Alice gave a little quicker. \'What a curious croquet-ground in her life; it was as steady as ever; Yet you finished the first to speak. \'What size do you know about it, even if my head would go round and round Alice, every now and then, and holding.</p><p>The three soldiers wandered about in all my life, never!\' They had not a mile high,\' said Alice. \'Then you may stand down,\' continued the Hatter, \'I cut some more of the window, she suddenly spread out her hand, and a large mushroom growing near her, she began, in a sorrowful tone; \'at least there\'s no use in waiting by the White Rabbit was no one to listen to her, \'if we had the dish as its share of the doors of the house, and found that, as nearly as large as the doubled-up soldiers were.</p><p>Alice: \'besides, that\'s not a mile high,\' said Alice. \'Call it what you like,\' said the King; and the White Rabbit, jumping up and down, and nobody spoke for some time with the birds hurried off at once: one old Magpie began wrapping itself up very sulkily and crossed over to the part about her and to her feet in a sulky tone; \'Seven jogged my elbow.\' On which Seven looked up and said, without even waiting to put it into one of the trees had a vague sort of meaning in it,\' but none of YOUR.</p><p>I am in the common way. So she stood still where she was, and waited. When the sands are all dry, he is gay as a last resource, she put one arm out of their wits!\' So she went hunting about, and make out who was passing at the other side will make you a present of everything I\'ve said as yet.\' \'A cheap sort of people live about here?\' \'In THAT direction,\' the Cat remarked. \'Don\'t be impertinent,\' said the Hatter, \'when the Queen had never forgotten that, if you could keep it to be no chance of.</p>',1,NULL,'default',NULL,'published','2025-11-20 01:47:59','2025-11-20 01:47:59'),(13,'Blog List','<p>[blog-posts paginate=\"12\"][/blog-posts]</p>',1,NULL,'blog-list',NULL,'published','2025-11-20 01:47:59','2025-11-20 01:47:59'),(14,'Blog Big','<p>[blog-posts paginate=\"12\"][/blog-posts]</p>',1,NULL,'blog-big',NULL,'published','2025-11-20 01:47:59','2025-11-20 01:47:59'),(15,'Blog Wide','<p>[blog-posts paginate=\"12\"][/blog-posts]</p>',1,NULL,'blog-wide',NULL,'published','2025-11-20 01:47:59','2025-11-20 01:47:59'),(16,'Homepage 5','<div>[simple-slider key=\"home-slider-5\" ads_1=\"IZ6WU8KUALYJ\" ads_2=\"IZ6WU8KUALYK\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[featured-product-categories title=\"Top Categories\"][/featured-product-categories]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[popular-products title=\"Popular Products\" per_row=\"5\" limit=\"10\" enable_lazy_loading=\"yes\"][/popular-products]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYL\" ads_2=\"IZ6WU8KUALYM\" ads_3=\"IZ6WU8KUALYN\" ads_4=\"IZ6WU8KUALYO\" style=\"style-5\"][/theme-ads]</div><div>[best-flash-sale title=\"Daily Best Sells\" flash_sale_id=\"5\" ads=\"IZ6WU8KUALYG\"][/best-flash-sale]</div><div>[flash-sale flash_sale_1=\"1\" flash_sale_2=\"2\" flash_sale_3=\"3\" flash_sale_4=\"4\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\" enable_lazy_loading=\"yes\"][/top-products-group]</div>',1,NULL,'homepage',NULL,'published','2025-11-20 01:47:59','2025-11-20 01:47:59'),(17,'Homepage 6','<div>[big-banner cover_image=\"general/home-6.jpeg\" show_newsletter_form=\"yes\" number_display_featured_categories=\"4\" title=\"What are you looking for?\"][/big-banner]</div><div>[trending-products title=\"Trending items\" per_row=\"5\" limit=\"20\"][/trending-products]</div><div>[flash-sale flash_sale_1=\"1\" flash_sale_2=\"2\" flash_sale_3=\"3\" flash_sale_4=\"4\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\" enable_lazy_loading=\"yes\"][/top-products-group]</div>',1,NULL,'homepage',NULL,'published','2025-11-20 01:47:59','2025-11-20 01:47:59'),(18,'Faq','<div>[faqs][/faqs]</div>',1,NULL,'default',NULL,'published','2025-11-20 01:47:59','2025-11-20 01:47:59'),(19,'Coming Soon','[coming-soon title=\"Get Notified When We Launch\" countdown_time=\"2026-06-08\" address=\" 58 Street Commercial Road Fratton, Australia\" hotline=\"+123456789\" business_hours=\"Mon – Sat: 8 am – 5 pm, Sunday: CLOSED\" show_social_links=\"1\" image=\"general/contact-img.jpg\"][/coming-soon]',1,NULL,'without-layout',NULL,'published','2025-11-20 01:47:59','2025-11-20 01:47:59');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_translations`
--

DROP TABLE IF EXISTS `pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages_translations` (
  `lang_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` bigint unsigned NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`pages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_translations`
--

LOCK TABLES `pages_translations` WRITE;
/*!40000 ALTER TABLE `pages_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `payment_logs`
--

DROP TABLE IF EXISTS `payment_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `payment_method` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `response` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_logs`
--

LOCK TABLES `payment_logs` WRITE;
/*!40000 ALTER TABLE `payment_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `currency` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `charge_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `payment_fee` decimal(15,2) DEFAULT '0.00',
  `order_id` bigint unsigned DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'confirm',
  `customer_id` bigint unsigned DEFAULT NULL,
  `refunded_amount` decimal(15,2) unsigned DEFAULT NULL,
  `refund_note` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
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
  `category_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_categories_category_id_index` (`category_id`),
  KEY `post_categories_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categories`
--

LOCK TABLES `post_categories` WRITE;
/*!40000 ALTER TABLE `post_categories` DISABLE KEYS */;
INSERT INTO `post_categories` VALUES (2,1),(3,1),(1,2),(3,2),(2,3),(4,3),(2,4),(3,4),(2,5),(4,5),(2,6),(3,6),(2,7),(3,7),(2,8),(3,8),(2,9),(3,9),(2,10),(4,10),(1,11),(4,11);
/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_tags` (
  `tag_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_tags_tag_id_index` (`tag_id`),
  KEY `post_tags_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags`
--

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
INSERT INTO `post_tags` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(1,2),(2,2),(3,2),(4,2),(5,2),(1,3),(2,3),(3,3),(4,3),(5,3),(1,4),(2,4),(3,4),(4,4),(5,4),(1,5),(2,5),(3,5),(4,5),(5,5),(1,6),(2,6),(3,6),(4,6),(5,6),(1,7),(2,7),(3,7),(4,7),(5,7),(1,8),(2,8),(3,8),(4,8),(5,8),(1,9),(2,9),(3,9),(4,9),(5,9),(1,10),(2,10),(3,10),(4,10),(5,10),(1,11),(2,11),(3,11),(4,11),(5,11);
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
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `format_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_status_index` (`status`),
  KEY `posts_author_id_index` (`author_id`),
  KEY `posts_author_type_index` (`author_type`),
  KEY `posts_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'4 Expert Tips On How To Choose The Right Men’s Wallet','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/1.png',663,NULL,'2025-11-20 01:47:58','2025-11-20 01:47:58'),(2,'Sexy Clutches: How to Buy &amp; Wear a Designer Clutch Bag','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/2.png',599,NULL,'2025-11-20 01:47:58','2025-11-20 01:47:58'),(3,'The Top 2020 Handbag Trends to Know','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/3.png',1113,NULL,'2025-11-20 01:47:58','2025-11-20 01:47:58'),(4,'How to Match the Color of Your Handbag With an Outfit','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n[featured-products title=\"Shop The Look\" limit=\"6\"][/featured-products]\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/4.png',2371,NULL,'2025-11-20 01:47:58','2025-11-20 01:47:58'),(5,'How to Care for Leather Bags','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/5.png',332,NULL,'2025-11-20 01:47:58','2025-11-20 01:47:58'),(6,'We\'re Crushing Hard on Summer\'s 10 Biggest Bag Trends','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/6.png',1988,NULL,'2025-11-20 01:47:58','2025-11-20 01:47:58'),(7,'Essential Qualities of Highly Successful Music','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/7.png',1117,NULL,'2025-11-20 01:47:58','2025-11-20 01:47:58'),(8,'9 Things I Love About Shaving My Head','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/8.png',687,NULL,'2025-11-20 01:47:58','2025-11-20 01:47:58'),(9,'Why Teamwork Really Makes The Dream Work','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/9.png',2259,NULL,'2025-11-20 01:47:58','2025-11-20 01:47:58'),(10,'The World Caters to Average People','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/10.png',994,NULL,'2025-11-20 01:47:58','2025-11-20 01:47:58'),(11,'The litigants on the screen are not actors','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'news/11.png',149,NULL,'2025-11-20 01:47:58','2025-11-20 01:47:58');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_translations`
--

DROP TABLE IF EXISTS `posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_translations` (
  `lang_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` bigint unsigned NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
/*!40000 ALTER TABLE `posts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `push_notification_recipients`
--

DROP TABLE IF EXISTS `push_notification_recipients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `push_notification_recipients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `push_notification_id` bigint unsigned NOT NULL,
  `user_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `device_token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `platform` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sent',
  `sent_at` timestamp NULL DEFAULT NULL,
  `delivered_at` timestamp NULL DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `clicked_at` timestamp NULL DEFAULT NULL,
  `fcm_response` json DEFAULT NULL,
  `error_message` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pnr_notification_user_index` (`push_notification_id`,`user_type`,`user_id`),
  KEY `pnr_user_status_index` (`user_type`,`user_id`,`status`),
  KEY `pnr_user_read_index` (`user_type`,`user_id`,`read_at`),
  KEY `pnr_status_index` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `push_notification_recipients`
--

LOCK TABLES `push_notification_recipients` WRITE;
/*!40000 ALTER TABLE `push_notification_recipients` DISABLE KEYS */;
/*!40000 ALTER TABLE `push_notification_recipients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `push_notifications`
--

DROP TABLE IF EXISTS `push_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `push_notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'general',
  `target_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_value` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` json DEFAULT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sent',
  `sent_count` int NOT NULL DEFAULT '0',
  `failed_count` int NOT NULL DEFAULT '0',
  `delivered_count` int NOT NULL DEFAULT '0',
  `read_count` int NOT NULL DEFAULT '0',
  `scheduled_at` timestamp NULL DEFAULT NULL,
  `sent_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `push_notifications_type_created_at_index` (`type`,`created_at`),
  KEY `push_notifications_status_scheduled_at_index` (`status`,`scheduled_at`),
  KEY `push_notifications_created_by_index` (`created_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `push_notifications`
--

LOCK TABLES `push_notifications` WRITE;
/*!40000 ALTER TABLE `push_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `push_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revisions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `key` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `new_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
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
  `slug` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
INSERT INTO `roles` VALUES (1,'admin','Admin','{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.cms\":true,\"core.manage.license\":true,\"systems.cronjob\":true,\"core.tools\":true,\"tools.data-synchronize\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.index\":true,\"settings.common\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.admin-appearance\":true,\"settings.cache\":true,\"settings.datatables\":true,\"settings.email.rules\":true,\"settings.phone-number\":true,\"settings.others\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"optimize.settings\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"sitemap.settings\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"theme.robots-txt\":true,\"settings.website-tracking\":true,\"widgets.index\":true,\"ads.index\":true,\"ads.create\":true,\"ads.edit\":true,\"ads.destroy\":true,\"ads.settings\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"analytics.settings\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"blog.settings\":true,\"posts.export\":true,\"posts.import\":true,\"captcha.settings\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"contact.custom-fields\":true,\"contact.settings\":true,\"plugins.ecommerce\":true,\"ecommerce.report.index\":true,\"products.index\":true,\"products.create\":true,\"products.edit\":true,\"products.destroy\":true,\"products.duplicate\":true,\"ecommerce.product-prices.index\":true,\"ecommerce.product-prices.edit\":true,\"ecommerce.product-inventory.index\":true,\"ecommerce.product-inventory.edit\":true,\"product-categories.index\":true,\"product-categories.create\":true,\"product-categories.edit\":true,\"product-categories.destroy\":true,\"product-tag.index\":true,\"product-tag.create\":true,\"product-tag.edit\":true,\"product-tag.destroy\":true,\"brands.index\":true,\"brands.create\":true,\"brands.edit\":true,\"brands.destroy\":true,\"product-collections.index\":true,\"product-collections.create\":true,\"product-collections.edit\":true,\"product-collections.destroy\":true,\"product-attribute-sets.index\":true,\"product-attribute-sets.create\":true,\"product-attribute-sets.edit\":true,\"product-attribute-sets.destroy\":true,\"product-attributes.index\":true,\"product-attributes.create\":true,\"product-attributes.edit\":true,\"product-attributes.destroy\":true,\"tax.index\":true,\"tax.create\":true,\"tax.edit\":true,\"tax.destroy\":true,\"reviews.index\":true,\"reviews.create\":true,\"reviews.destroy\":true,\"reviews.publish\":true,\"reviews.reply\":true,\"ecommerce.shipments.index\":true,\"ecommerce.shipments.create\":true,\"ecommerce.shipments.edit\":true,\"ecommerce.shipments.destroy\":true,\"orders.index\":true,\"orders.create\":true,\"orders.edit\":true,\"orders.destroy\":true,\"discounts.index\":true,\"discounts.create\":true,\"discounts.edit\":true,\"discounts.destroy\":true,\"customers.index\":true,\"customers.create\":true,\"customers.edit\":true,\"customers.destroy\":true,\"ecommerce.customers.import\":true,\"ecommerce.customers.export\":true,\"flash-sale.index\":true,\"flash-sale.create\":true,\"flash-sale.edit\":true,\"flash-sale.destroy\":true,\"product-label.index\":true,\"product-label.create\":true,\"product-label.edit\":true,\"product-label.destroy\":true,\"ecommerce.import.products.index\":true,\"ecommerce.export.products.index\":true,\"order_returns.index\":true,\"order_returns.edit\":true,\"order_returns.destroy\":true,\"global-option.index\":true,\"global-option.create\":true,\"global-option.edit\":true,\"global-option.destroy\":true,\"ecommerce.invoice.index\":true,\"ecommerce.invoice.edit\":true,\"ecommerce.invoice.destroy\":true,\"ecommerce.settings\":true,\"ecommerce.settings.general\":true,\"ecommerce.invoice-template.index\":true,\"ecommerce.settings.currencies\":true,\"ecommerce.settings.products\":true,\"ecommerce.settings.product-search\":true,\"ecommerce.settings.digital-products\":true,\"ecommerce.settings.store-locators\":true,\"ecommerce.settings.invoices\":true,\"ecommerce.settings.product-reviews\":true,\"ecommerce.settings.customers\":true,\"ecommerce.settings.shopping\":true,\"ecommerce.settings.taxes\":true,\"ecommerce.settings.shipping\":true,\"ecommerce.shipping-rule-items.index\":true,\"ecommerce.shipping-rule-items.create\":true,\"ecommerce.shipping-rule-items.edit\":true,\"ecommerce.shipping-rule-items.destroy\":true,\"ecommerce.shipping-rule-items.bulk-import\":true,\"ecommerce.settings.tracking\":true,\"ecommerce.settings.standard-and-format\":true,\"ecommerce.settings.checkout\":true,\"ecommerce.settings.return\":true,\"ecommerce.settings.flash-sale\":true,\"ecommerce.settings.product-specification\":true,\"product-categories.export\":true,\"product-categories.import\":true,\"orders.export\":true,\"ecommerce.product-specification.index\":true,\"ecommerce.specification-groups.index\":true,\"ecommerce.specification-groups.create\":true,\"ecommerce.specification-groups.edit\":true,\"ecommerce.specification-groups.destroy\":true,\"ecommerce.specification-attributes.index\":true,\"ecommerce.specification-attributes.create\":true,\"ecommerce.specification-attributes.edit\":true,\"ecommerce.specification-attributes.destroy\":true,\"ecommerce.specification-tables.index\":true,\"ecommerce.specification-tables.create\":true,\"ecommerce.specification-tables.edit\":true,\"ecommerce.specification-tables.destroy\":true,\"plugin.faq\":true,\"faq.index\":true,\"faq.create\":true,\"faq.edit\":true,\"faq.destroy\":true,\"faq_category.index\":true,\"faq_category.create\":true,\"faq_category.edit\":true,\"faq_category.destroy\":true,\"faqs.settings\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"translations.import\":true,\"translations.export\":true,\"property-translations.import\":true,\"property-translations.export\":true,\"plugin.location\":true,\"country.index\":true,\"country.create\":true,\"country.edit\":true,\"country.destroy\":true,\"state.index\":true,\"state.create\":true,\"state.edit\":true,\"state.destroy\":true,\"city.index\":true,\"city.create\":true,\"city.edit\":true,\"city.destroy\":true,\"marketplace.index\":true,\"marketplace.store.index\":true,\"marketplace.store.create\":true,\"marketplace.store.edit\":true,\"marketplace.store.destroy\":true,\"marketplace.store.view\":true,\"marketplace.store.revenue.create\":true,\"marketplace.withdrawal.index\":true,\"marketplace.withdrawal.edit\":true,\"marketplace.withdrawal.destroy\":true,\"marketplace.withdrawal.invoice\":true,\"marketplace.vendors.index\":true,\"marketplace.unverified-vendors.index\":true,\"marketplace.vendors.control\":true,\"marketplace.unverified-vendors.edit\":true,\"marketplace.reports\":true,\"marketplace.settings\":true,\"marketplace.messages.index\":true,\"marketplace.messages.edit\":true,\"marketplace.messages.destroy\":true,\"newsletter.index\":true,\"newsletter.destroy\":true,\"newsletter.settings\":true,\"payment.index\":true,\"payments.settings\":true,\"payment.destroy\":true,\"payments.logs\":true,\"payments.logs.show\":true,\"payments.logs.destroy\":true,\"simple-slider.index\":true,\"simple-slider.create\":true,\"simple-slider.edit\":true,\"simple-slider.destroy\":true,\"simple-slider-item.index\":true,\"simple-slider-item.create\":true,\"simple-slider-item.edit\":true,\"simple-slider-item.destroy\":true,\"simple-slider.settings\":true,\"social-login.settings\":true,\"testimonial.index\":true,\"testimonial.create\":true,\"testimonial.edit\":true,\"testimonial.destroy\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true,\"theme-translations.export\":true,\"other-translations.export\":true,\"theme-translations.import\":true,\"other-translations.import\":true,\"api.settings\":true,\"api.sanctum-token.index\":true,\"api.sanctum-token.create\":true,\"api.sanctum-token.destroy\":true}','Admin users role',1,1,1,'2025-11-20 01:47:59','2025-11-20 01:47:59');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'media_random_hash','4164d485067613d5ea297759816b05c4',NULL,'2026-10-20 07:31:02'),(2,'api_enabled','1',NULL,'2026-10-20 07:31:02'),(3,'activated_plugins','[\"language\",\"language-advanced\",\"ads\",\"analytics\",\"audit-log\",\"backup\",\"blog\",\"bottom-bar-menu\",\"captcha\",\"contact\",\"cookie-consent\",\"ecommerce\",\"faq\",\"location\",\"marketplace\",\"mollie\",\"newsletter\",\"payment\",\"paypal\",\"paypal-payout\",\"paystack\",\"razorpay\",\"shippo\",\"simple-slider\",\"social-login\",\"sslcommerz\",\"stripe\",\"stripe-connect\",\"testimonial\",\"translation\"]',NULL,'2026-10-20 07:31:02'),(4,'analytics_dashboard_widgets','0','2025-11-20 01:47:32','2026-10-20 07:31:02'),(5,'enable_recaptcha_botble_contact_forms_fronts_contact_form','1','2025-11-20 01:47:33','2026-10-20 07:31:02'),(6,'api_layer_api_key','',NULL,'2026-10-20 07:31:02'),(9,'enable_recaptcha_botble_newsletter_forms_fronts_newsletter_form','1','2025-11-20 01:47:38','2026-10-20 07:31:02'),(10,'payment_cod_fee_type','fixed',NULL,'2026-10-20 07:31:02'),(11,'payment_bank_transfer_fee_type','fixed',NULL,'2026-10-20 07:31:02'),(12,'theme','nest',NULL,'2026-10-20 07:31:02'),(13,'show_admin_bar','1',NULL,'2026-10-20 07:31:02'),(14,'language_hide_default','1',NULL,'2026-10-20 07:31:02'),(15,'language_switcher_display','dropdown',NULL,'2026-10-20 07:31:02'),(16,'language_display','all',NULL,'2026-10-20 07:31:02'),(17,'language_hide_languages','[]',NULL,'2026-10-20 07:31:02'),(18,'ecommerce_store_name','Kharif',NULL,'2026-10-20 07:31:02'),(19,'ecommerce_store_phone','+91 90000 00000',NULL,'2026-10-20 07:31:02'),(20,'ecommerce_store_address','India',NULL,'2026-10-20 07:31:02'),(21,'ecommerce_store_state','',NULL,'2026-10-20 07:31:02'),(22,'ecommerce_store_city','India',NULL,'2026-10-20 07:31:02'),(23,'ecommerce_store_country','IN',NULL,'2026-10-20 07:31:02'),(24,'admin_favicon','general/kharif-favicon.png',NULL,'2026-10-20 07:31:02'),(25,'admin_logo','general/kharif-logo-light.png',NULL,'2026-10-20 07:31:02'),(26,'payment_cod_status','1',NULL,'2026-10-20 07:31:02'),(27,'payment_bank_transfer_status','1',NULL,'2026-10-20 07:31:02'),(28,'payment_cod_description','Please pay money directly to the postman, if you choose cash on delivery method (COD).',NULL,'2026-10-20 07:31:02'),(29,'payment_bank_transfer_description','Please send money to our bank account: ACB - 69270 213 19.',NULL,'2026-10-20 07:31:02'),(30,'payment_stripe_payment_type','stripe_checkout',NULL,'2026-10-20 07:31:02'),(31,'plugins_ecommerce_customer_new_order_status','0',NULL,'2026-10-20 07:31:02'),(32,'plugins_ecommerce_admin_new_order_status','0',NULL,'2026-10-20 07:31:02'),(33,'ecommerce_is_enabled_support_digital_products','1',NULL,'2026-10-20 07:31:02'),(34,'ecommerce_enable_license_codes_for_digital_products','1',NULL,'2026-10-20 07:31:02'),(35,'ecommerce_auto_complete_digital_orders_after_payment','1',NULL,'2026-10-20 07:31:02'),(36,'ecommerce_load_countries_states_cities_from_location_plugin','0',NULL,'2026-10-20 07:31:02'),(37,'ecommerce_product_sku_format','SF-2443-%s%s%s%s',NULL,'2026-10-20 07:31:02'),(38,'ecommerce_store_order_prefix','SF',NULL,'2026-10-20 07:31:02'),(39,'ecommerce_enable_product_specification','1',NULL,'2026-10-20 07:31:02'),(40,'payment_bank_transfer_display_bank_info_at_the_checkout_success_page','1',NULL,'2026-10-20 07:31:02'),(41,'payment_cod_logo','payments/cod.png',NULL,'2026-10-20 07:31:02'),(42,'payment_bank_transfer_logo','payments/bank-transfer.png',NULL,'2026-10-20 07:31:02'),(43,'payment_stripe_logo','payments/stripe.webp',NULL,'2026-10-20 07:31:02'),(44,'payment_paypal_logo','payments/paypal.png',NULL,'2026-10-20 07:31:02'),(45,'payment_mollie_logo','payments/mollie.png',NULL,'2026-10-20 07:31:02'),(46,'payment_paystack_logo','payments/paystack.png',NULL,'2026-10-20 07:31:02'),(47,'payment_razorpay_logo','payments/razorpay.png',NULL,'2026-10-20 07:31:02'),(48,'payment_sslcommerz_logo','payments/sslcommerz.png',NULL,'2026-10-20 07:31:02'),(49,'permalink-botble-blog-models-post','blog',NULL,'2026-10-20 07:31:02'),(50,'permalink-botble-blog-models-category','blog',NULL,'2026-10-20 07:31:02'),(51,'theme-nest-site_title','Kharif | Natural Wood-Pressed Cooking Oils',NULL,'2026-10-20 07:31:02'),(52,'theme-nest-seo_description','Shop Kharif wood-pressed cooking oils made using traditional methods. Discover natural, carefully crafted oils for everyday cooking.',NULL,'2026-10-20 07:31:02'),(53,'theme-nest-copyright','Copyright © %Y Kharif. All rights reserved.',NULL,'2026-10-20 07:31:02'),(54,'theme-nest-favicon','general/kharif-favicon.png',NULL,'2026-10-20 07:31:02'),(55,'theme-nest-logo','general/kharif-logo.png',NULL,'2026-10-20 07:31:02'),(56,'theme-nest-seo_og_image','general/kharif-logo.png',NULL,'2026-10-20 07:31:02'),(57,'theme-nest-address','India',NULL,'2026-10-20 07:31:02'),(58,'theme-nest-hotline','+91 90000 00000',NULL,'2026-10-20 07:31:02'),(59,'theme-nest-hotline_subtitle_text','Pressed to order in small batches',NULL,'2026-10-20 07:31:02'),(60,'theme-nest-phone','+91 90000 00000',NULL,'2026-10-20 07:31:02'),(61,'theme-nest-working_hours','Mon – Sat: 9 am – 6 pm',NULL,'2026-10-20 07:31:02'),(62,'theme-nest-homepage_id','1',NULL,'2026-10-20 07:31:02'),(63,'theme-nest-blog_page_id','5',NULL,'2026-10-20 07:31:02'),(64,'theme-nest-cookie_consent_message','Your experience on this site will be improved by allowing cookies ',NULL,'2026-10-20 07:31:02'),(65,'theme-nest-cookie_consent_learn_more_url','/cookie-policy',NULL,'2026-10-20 07:31:02'),(66,'theme-nest-cookie_consent_learn_more_text','Cookie Policy',NULL,'2026-10-20 07:31:02'),(67,'theme-nest-payment_methods','general/payment-methods.png',NULL,'2026-10-20 07:31:02'),(68,'theme-nest-number_of_cross_sale_product','4',NULL,'2026-10-20 07:31:02'),(69,'theme-nest-mobile-header-message','<span>Free delivery on prepaid orders above <strong>₹999</strong> · Pressed to order in small batches</span>',NULL,'2026-10-20 07:31:02'),(70,'theme-nest-blog_page_background','general/header-bg.png',NULL,'2026-10-20 07:31:02'),(71,'theme-nest-blog_page_icon','general/category-1.png',NULL,'2026-10-20 07:31:02'),(72,'theme-nest-login_background','general/login-1.png',NULL,'2026-10-20 07:31:02'),(73,'theme-nest-number_of_products_per_page','12',NULL,'2026-10-20 07:31:02'),(74,'theme-nest-preloader_enabled','no',NULL,'2026-10-20 07:31:02'),(75,'theme-nest-preloader_version','v2',NULL,'2026-10-20 07:31:02'),(76,'theme-nest-preloader_image','general/loading.gif',NULL,'2026-10-20 07:31:02'),(77,'theme-nest-sticky_header_content_position','middle',NULL,'2026-10-20 07:31:02'),(78,'theme-nest-social_links','[[{\"key\":\"social-name\",\"value\":\"Facebook\"},{\"key\":\"social-icon\",\"value\":\"general\\/facebook.png\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.facebook.com\"}],[{\"key\":\"social-name\",\"value\":\"Twitter\"},{\"key\":\"social-icon\",\"value\":\"general\\/twitter.png\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.twitter.com\"}],[{\"key\":\"social-name\",\"value\":\"Instagram\"},{\"key\":\"social-icon\",\"value\":\"general\\/instagram.png\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.instagram.com\"}],[{\"key\":\"social-name\",\"value\":\"Pinterest\"},{\"key\":\"social-icon\",\"value\":\"general\\/pinterest.png\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.pinterest.com\"}],[{\"key\":\"social-name\",\"value\":\"Youtube\"},{\"key\":\"social-icon\",\"value\":\"general\\/youtube.png\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.youtube.com\"}]]',NULL,'2026-10-20 07:31:02'),(79,'theme-nest-header_messages','[[{\"key\":\"icon\",\"value\":\"fi-rs-bell\"},{\"key\":\"message\",\"value\":\"Free delivery on prepaid orders above <b class=\\\"text-success\\\">\\u20b9999<\\/b>\"},{\"key\":\"link\",\"value\":\"\\/products\"},{\"key\":\"link_text\",\"value\":\"Shop now\"}],[{\"key\":\"icon\",\"value\":\"fi-rs-shopping-bag\"},{\"key\":\"message\",\"value\":\"Traditionally <b>wood-pressed<\\/b> cooking oils\"},{\"key\":\"link\",\"value\":\"\\/products\"},{\"key\":\"link_text\",\"value\":\"Explore\"}],[{\"key\":\"icon\",\"value\":\"fi-rs-heart\"},{\"key\":\"message\",\"value\":\"Natural Food Products by <b>Kharif<\\/b>\"},{\"key\":\"link\",\"value\":\"\\/\"},{\"key\":\"link_text\",\"value\":\"Learn more\"}]]',NULL,'2026-10-20 07:31:02'),(80,'theme-nest-contact_info_boxes','[[{\"key\":\"name\",\"value\":\"Head Office\"},{\"key\":\"address\",\"value\":\"India\"},{\"key\":\"phone\",\"value\":\"+91 90000 00000\"},{\"key\":\"email\",\"value\":\"hello@kharif.in\"}],[{\"key\":\"name\",\"value\":\"Customer Care\"},{\"key\":\"address\",\"value\":\"hello@kharif.in\"},{\"key\":\"phone\",\"value\":\"+91 90000 00000\"},{\"key\":\"email\",\"value\":\"hello@kharif.in\"}]]',NULL,'2026-10-20 07:31:02'),(81,'theme-nest-number_of_products_per_row','5',NULL,'2026-10-20 07:31:02'),(82,'licensed_to','Local Developer',NULL,'2026-10-20 07:31:02'),(83,'shortcode_cache_enabled','1',NULL,'2026-10-20 07:31:02'),(84,'widget_cache_enabled','1',NULL,'2026-10-20 07:31:02'),(85,'cache_frontend_enabled','0',NULL,'2026-10-20 07:31:02'),(86,'theme-nest-admin_logo','general/kharif-logo-light.png',NULL,'2026-10-20 07:31:02'),(87,'theme-nest-admin_favicon','general/kharif-favicon.png',NULL,'2026-10-20 07:31:02'),(88,'theme-nest-email','hello@kharif.in',NULL,'2026-10-20 07:31:02'),(89,'theme-nest-color_brand','#17402C',NULL,'2026-10-20 07:31:02'),(90,'theme-nest-color_brand_dark','#215044',NULL,'2026-10-20 07:31:02'),(91,'theme-nest-color_brand_2','#C08A2E',NULL,'2026-10-20 07:31:02'),(92,'theme-nest-font_heading','DM Sans',NULL,'2026-10-20 07:31:02'),(93,'theme-nest-font_text','Inter',NULL,'2026-10-20 07:31:02'),(94,'email_from_name','Kharif',NULL,'2026-10-20 07:31:02'),(95,'email_from_address','hello@kharif.in',NULL,'2026-10-20 07:31:02'),(96,'api_key','',NULL,'2026-10-20 07:31:02'),(97,'push_notifications_enabled','0',NULL,'2026-10-20 07:31:02'),(98,'fcm_project_id','',NULL,'2026-10-20 07:31:02'),(99,'fcm_service_account_path','',NULL,'2026-10-20 07:31:02'),(100,'admin_title','Ecom',NULL,'2026-10-20 07:31:02');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_slider_items`
--

DROP TABLE IF EXISTS `simple_slider_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_slider_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `simple_slider_id` bigint unsigned NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `order` int unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_slider_items`
--

LOCK TABLES `simple_slider_items` WRITE;
/*!40000 ALTER TABLE `simple_slider_items` DISABLE KEYS */;
INSERT INTO `simple_slider_items` VALUES (1,1,'Don’t miss amazing<br> grocery deals','sliders/1-1.png','/products','Sign up for the daily newsletter',1,'2025-11-20 01:47:57','2025-11-20 01:47:57'),(2,1,'Fresh Vegetables<br>\n										Big discount','sliders/1-2.png','/products','Save up to 50% off on your first order',2,'2025-11-20 01:47:57','2025-11-20 01:47:57'),(3,2,'Don’t miss amazing<br> grocery deals','sliders/2-1.png','/products','Sign up for the daily newsletter',1,'2025-11-20 01:47:57','2025-11-20 01:47:57'),(4,2,'Fresh Vegetables<br>\n										Big discount','sliders/2-2.png','/products','Save up to 50% off on your first order',2,'2025-11-20 01:47:57','2025-11-20 01:47:57'),(5,3,'Don’t miss amazing<br> grocery deals','sliders/3-1.png','/products','Sign up for the daily newsletter',1,'2025-11-20 01:47:57','2025-11-20 01:47:57'),(6,3,'Fresh Vegetables<br>\n										Big discount','sliders/3-2.png','/products','Save up to 50% off on your first order',2,'2025-11-20 01:47:57','2025-11-20 01:47:57'),(7,4,'Don’t miss amazing<br> grocery deals','sliders/4-1.png','/products','Sign up for the daily newsletter',1,'2025-11-20 01:47:57','2025-11-20 01:47:57'),(8,4,'Fresh Vegetables<br>\n										Big discount','sliders/4-2.png','/products','Save up to 50% off on your first order',2,'2025-11-20 01:47:57','2025-11-20 01:47:57'),(9,5,'Don’t miss amazing<br> grocery deals','sliders/5-1.png','/products','Sign up for the daily newsletter',1,'2025-11-20 01:47:57','2025-11-20 01:47:57'),(10,5,'Fresh Vegetables<br>\n										Big discount','sliders/5-2.png','/products','Save up to 50% off on your first order',2,'2025-11-20 01:47:57','2025-11-20 01:47:57'),(11,6,'Don’t miss amazing<br> grocery deals','sliders/6-1.png','/products','Sign up for the daily newsletter',1,'2025-11-20 01:47:57','2025-11-20 01:47:57'),(12,7,NULL,'sliders/thumbnail-1.jpg',NULL,NULL,1,'2025-11-20 01:47:57','2025-11-20 01:47:57'),(13,7,NULL,'sliders/thumbnail-2.jpg',NULL,NULL,2,'2025-11-20 01:47:57','2025-11-20 01:47:57'),(14,7,NULL,'sliders/thumbnail-3.jpg',NULL,NULL,3,'2025-11-20 01:47:57','2025-11-20 01:47:57'),(15,7,NULL,'sliders/thumbnail-4.jpg',NULL,NULL,4,'2025-11-20 01:47:57','2025-11-20 01:47:57'),(16,7,NULL,'sliders/thumbnail-5.jpg',NULL,NULL,5,'2025-11-20 01:47:57','2025-11-20 01:47:57'),(17,7,NULL,'sliders/thumbnail-6.jpg',NULL,NULL,6,'2025-11-20 01:47:57','2025-11-20 01:47:57');
/*!40000 ALTER TABLE `simple_slider_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_sliders`
--

DROP TABLE IF EXISTS `simple_sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_sliders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_sliders`
--

LOCK TABLES `simple_sliders` WRITE;
/*!40000 ALTER TABLE `simple_sliders` DISABLE KEYS */;
INSERT INTO `simple_sliders` VALUES (1,'Home slider 1','home-slider-1',NULL,'published','2025-11-20 01:47:57','2025-11-20 01:47:57'),(2,'Home slider 2','home-slider-2',NULL,'published','2025-11-20 01:47:57','2025-11-20 01:47:57'),(3,'Home slider 3','home-slider-3',NULL,'published','2025-11-20 01:47:57','2025-11-20 01:47:57'),(4,'Home slider 4','home-slider-4',NULL,'published','2025-11-20 01:47:57','2025-11-20 01:47:57'),(5,'Home slider 5','home-slider-5',NULL,'published','2025-11-20 01:47:57','2025-11-20 01:47:57'),(6,'Home slider 6','home-slider-6',NULL,'published','2025-11-20 01:47:57','2025-11-20 01:47:57'),(7,'Blog slider 1','blog-slider-1',NULL,'published','2025-11-20 01:47:57','2025-11-20 01:47:57');
/*!40000 ALTER TABLE `simple_sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs`
--

DROP TABLE IF EXISTS `slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slugs_reference_id_index` (`reference_id`),
  KEY `slugs_key_index` (`key`),
  KEY `slugs_prefix_index` (`prefix`),
  KEY `slugs_reference_index` (`reference_id`,`reference_type`),
  KEY `idx_slugs_reference` (`reference_type`,`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'perxsion',1,'Botble\\Ecommerce\\Models\\Brand','brands','2025-11-20 01:47:39','2025-11-20 01:47:39'),(2,'hiching',2,'Botble\\Ecommerce\\Models\\Brand','brands','2025-11-20 01:47:39','2025-11-20 01:47:39'),(3,'kepslo',3,'Botble\\Ecommerce\\Models\\Brand','brands','2025-11-20 01:47:39','2025-11-20 01:47:39'),(4,'groneba',4,'Botble\\Ecommerce\\Models\\Brand','brands','2025-11-20 01:47:39','2025-11-20 01:47:39'),(5,'babian',5,'Botble\\Ecommerce\\Models\\Brand','brands','2025-11-20 01:47:39','2025-11-20 01:47:39'),(6,'valorant',6,'Botble\\Ecommerce\\Models\\Brand','brands','2025-11-20 01:47:39','2025-11-20 01:47:39'),(7,'pure',7,'Botble\\Ecommerce\\Models\\Brand','brands','2025-11-20 01:47:39','2025-11-20 01:47:39'),(8,'milks-and-dairies',1,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-11-20 01:47:42','2025-11-20 01:47:42'),(9,'clothing-beauty',2,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-11-20 01:47:42','2025-11-20 01:47:42'),(10,'pet-toy',3,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-11-20 01:47:42','2025-11-20 01:47:42'),(11,'baking-material',4,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-11-20 01:47:42','2025-11-20 01:47:42'),(12,'fresh-fruit',5,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-11-20 01:47:42','2025-11-20 01:47:42'),(13,'wines-drinks',6,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-11-20 01:47:42','2025-11-20 01:47:42'),(14,'fresh-seafood',7,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-11-20 01:47:42','2025-11-20 01:47:42'),(15,'fast-food',8,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-11-20 01:47:42','2025-11-20 01:47:42'),(16,'vegetables',9,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-11-20 01:47:42','2025-11-20 01:47:42'),(17,'bread-and-juice',10,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-11-20 01:47:42','2025-11-20 01:47:42'),(18,'cake-milk',11,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-11-20 01:47:42','2025-11-20 01:47:42'),(19,'coffee-teas',12,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-11-20 01:47:42','2025-11-20 01:47:42'),(20,'pet-foods',13,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-11-20 01:47:42','2025-11-20 01:47:42'),(21,'diet-foods',14,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-11-20 01:47:42','2025-11-20 01:47:42'),(22,'wallet',1,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2025-11-20 01:47:42','2025-11-20 01:47:42'),(23,'bags',2,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2025-11-20 01:47:42','2025-11-20 01:47:42'),(24,'shoes',3,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2025-11-20 01:47:42','2025-11-20 01:47:42'),(25,'clothes',4,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2025-11-20 01:47:43','2025-11-20 01:47:43'),(26,'hand-bag',5,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2025-11-20 01:47:43','2025-11-20 01:47:43'),(27,'seeds-of-change-organic-quinoe',1,'Botble\\Ecommerce\\Models\\Product','products','2025-11-20 01:47:48','2025-11-20 01:47:48'),(28,'all-natural-italian-style-chicken-meatballs',2,'Botble\\Ecommerce\\Models\\Product','products','2025-11-20 01:47:48','2025-11-20 01:47:48'),(29,'angies-boomchickapop-sweet-salty-kettle-corn',3,'Botble\\Ecommerce\\Models\\Product','products','2025-11-20 01:47:48','2025-11-20 01:47:48'),(30,'foster-farms-takeout-crispy-classic-digital',4,'Botble\\Ecommerce\\Models\\Product','products','2025-11-20 01:47:48','2025-11-20 01:48:08'),(31,'blue-diamond-almonds-lightly',5,'Botble\\Ecommerce\\Models\\Product','products','2025-11-20 01:47:48','2025-11-20 01:47:48'),(32,'chobani-complete-vanilla-greek',6,'Botble\\Ecommerce\\Models\\Product','products','2025-11-20 01:47:48','2025-11-20 01:47:48'),(33,'canada-dry-ginger-ale-2-l-bottle',7,'Botble\\Ecommerce\\Models\\Product','products','2025-11-20 01:47:48','2025-11-20 01:47:48'),(34,'encore-seafoods-stuffed-alaskan-digital',8,'Botble\\Ecommerce\\Models\\Product','products','2025-11-20 01:47:48','2025-11-20 01:48:08'),(35,'gortons-beer-battered-fish-fillets',9,'Botble\\Ecommerce\\Models\\Product','products','2025-11-20 01:47:49','2025-11-20 01:47:49'),(36,'haagen-dazs-caramel-cone-ice-cream',10,'Botble\\Ecommerce\\Models\\Product','products','2025-11-20 01:47:49','2025-11-20 01:47:49'),(37,'nestle-original-coffee-mate-coffee-creamer',11,'Botble\\Ecommerce\\Models\\Product','products','2025-11-20 01:47:49','2025-11-20 01:47:49'),(38,'naturally-flavored-cinnamon-vanilla-light-roast-coffee-digital',12,'Botble\\Ecommerce\\Models\\Product','products','2025-11-20 01:47:49','2025-11-20 01:48:08'),(39,'pepperidge-farm-farmhouse-hearty-white-bread',13,'Botble\\Ecommerce\\Models\\Product','products','2025-11-20 01:47:49','2025-11-20 01:47:49'),(40,'organic-frozen-triple-berry-blend',14,'Botble\\Ecommerce\\Models\\Product','products','2025-11-20 01:47:49','2025-11-20 01:47:49'),(41,'oroweat-country-buttermilk-bread',15,'Botble\\Ecommerce\\Models\\Product','products','2025-11-20 01:47:49','2025-11-20 01:47:49'),(42,'foster-farms-takeout-crispy-classic-buffalo-wings-digital',16,'Botble\\Ecommerce\\Models\\Product','products','2025-11-20 01:47:49','2025-11-20 01:48:08'),(43,'angies-boomchickapop-sweet-salty-kettle-corn',17,'Botble\\Ecommerce\\Models\\Product','products','2025-11-20 01:47:49','2025-11-20 01:47:49'),(44,'all-natural-italian-style-chicken-meatballs',18,'Botble\\Ecommerce\\Models\\Product','products','2025-11-20 01:47:49','2025-11-20 01:47:49'),(45,'simply-lemonade-with-raspberry-juice',19,'Botble\\Ecommerce\\Models\\Product','products','2025-11-20 01:47:49','2025-11-20 01:47:49'),(46,'perdue-simply-smart-organics-gluten-free-digital',20,'Botble\\Ecommerce\\Models\\Product','products','2025-11-20 01:47:49','2025-11-20 01:48:08'),(47,'chen-watermelon',21,'Botble\\Ecommerce\\Models\\Product','products','2025-11-20 01:47:49','2025-11-20 01:47:49'),(48,'organic-cage-free-grade-a-large-brown-eggs',22,'Botble\\Ecommerce\\Models\\Product','products','2025-11-20 01:47:49','2025-11-20 01:47:49'),(49,'colorful-banana',23,'Botble\\Ecommerce\\Models\\Product','products','2025-11-20 01:47:49','2025-11-20 01:47:49'),(50,'signature-wood-fired-mushroom-and-caramelized-digital',24,'Botble\\Ecommerce\\Models\\Product','products','2025-11-20 01:47:49','2025-11-20 01:48:08'),(51,'ecommerce',1,'Botble\\Blog\\Models\\Category','blog','2025-11-20 01:47:58','2025-11-20 01:48:03'),(52,'fashion',2,'Botble\\Blog\\Models\\Category','blog','2025-11-20 01:47:58','2025-11-20 01:48:03'),(53,'electronic',3,'Botble\\Blog\\Models\\Category','blog','2025-11-20 01:47:58','2025-11-20 01:48:03'),(54,'commercial',4,'Botble\\Blog\\Models\\Category','blog','2025-11-20 01:47:58','2025-11-20 01:48:03'),(55,'general',1,'Botble\\Blog\\Models\\Tag','tag','2025-11-20 01:47:58','2025-11-20 01:47:58'),(56,'design',2,'Botble\\Blog\\Models\\Tag','tag','2025-11-20 01:47:58','2025-11-20 01:47:58'),(57,'fashion',3,'Botble\\Blog\\Models\\Tag','tag','2025-11-20 01:47:58','2025-11-20 01:47:58'),(58,'branding',4,'Botble\\Blog\\Models\\Tag','tag','2025-11-20 01:47:58','2025-11-20 01:47:58'),(59,'modern',5,'Botble\\Blog\\Models\\Tag','tag','2025-11-20 01:47:58','2025-11-20 01:47:58'),(60,'4-expert-tips-on-how-to-choose-the-right-mens-wallet',1,'Botble\\Blog\\Models\\Post','blog','2025-11-20 01:47:58','2025-11-20 01:48:03'),(61,'sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',2,'Botble\\Blog\\Models\\Post','blog','2025-11-20 01:47:58','2025-11-20 01:48:03'),(62,'the-top-2020-handbag-trends-to-know',3,'Botble\\Blog\\Models\\Post','blog','2025-11-20 01:47:58','2025-11-20 01:48:03'),(63,'how-to-match-the-color-of-your-handbag-with-an-outfit',4,'Botble\\Blog\\Models\\Post','blog','2025-11-20 01:47:58','2025-11-20 01:48:03'),(64,'how-to-care-for-leather-bags',5,'Botble\\Blog\\Models\\Post','blog','2025-11-20 01:47:58','2025-11-20 01:48:03'),(65,'were-crushing-hard-on-summers-10-biggest-bag-trends',6,'Botble\\Blog\\Models\\Post','blog','2025-11-20 01:47:58','2025-11-20 01:48:03'),(66,'essential-qualities-of-highly-successful-music',7,'Botble\\Blog\\Models\\Post','blog','2025-11-20 01:47:58','2025-11-20 01:48:03'),(67,'9-things-i-love-about-shaving-my-head',8,'Botble\\Blog\\Models\\Post','blog','2025-11-20 01:47:58','2025-11-20 01:48:03'),(68,'why-teamwork-really-makes-the-dream-work',9,'Botble\\Blog\\Models\\Post','blog','2025-11-20 01:47:58','2025-11-20 01:48:03'),(69,'the-world-caters-to-average-people',10,'Botble\\Blog\\Models\\Post','blog','2025-11-20 01:47:58','2025-11-20 01:48:03'),(70,'the-litigants-on-the-screen-are-not-actors',11,'Botble\\Blog\\Models\\Post','blog','2025-11-20 01:47:58','2025-11-20 01:48:03'),(71,'homepage',1,'Botble\\Page\\Models\\Page','','2025-11-20 01:47:59','2025-11-20 01:47:59'),(72,'homepage-2',2,'Botble\\Page\\Models\\Page','','2025-11-20 01:47:59','2025-11-20 01:47:59'),(73,'homepage-3',3,'Botble\\Page\\Models\\Page','','2025-11-20 01:47:59','2025-11-20 01:47:59'),(74,'homepage-4',4,'Botble\\Page\\Models\\Page','','2025-11-20 01:47:59','2025-11-20 01:47:59'),(75,'blog',5,'Botble\\Page\\Models\\Page','','2025-11-20 01:47:59','2025-11-20 01:47:59'),(76,'contact',6,'Botble\\Page\\Models\\Page','','2025-11-20 01:47:59','2025-11-20 01:47:59'),(77,'about-us',7,'Botble\\Page\\Models\\Page','','2025-11-20 01:47:59','2025-11-20 01:47:59'),(78,'cookie-policy',8,'Botble\\Page\\Models\\Page','','2025-11-20 01:47:59','2025-11-20 01:47:59'),(79,'terms-conditions',9,'Botble\\Page\\Models\\Page','','2025-11-20 01:47:59','2025-11-20 01:47:59'),(80,'returns-exchanges',10,'Botble\\Page\\Models\\Page','','2025-11-20 01:47:59','2025-11-20 01:47:59'),(81,'shipping-delivery',11,'Botble\\Page\\Models\\Page','','2025-11-20 01:47:59','2025-11-20 01:47:59'),(82,'privacy-policy',12,'Botble\\Page\\Models\\Page','','2025-11-20 01:47:59','2025-11-20 01:47:59'),(83,'blog-list',13,'Botble\\Page\\Models\\Page','','2025-11-20 01:47:59','2025-11-20 01:47:59'),(84,'blog-big',14,'Botble\\Page\\Models\\Page','','2025-11-20 01:47:59','2025-11-20 01:47:59'),(85,'blog-wide',15,'Botble\\Page\\Models\\Page','','2025-11-20 01:47:59','2025-11-20 01:47:59'),(86,'homepage-5',16,'Botble\\Page\\Models\\Page','','2025-11-20 01:47:59','2025-11-20 01:47:59'),(87,'homepage-6',17,'Botble\\Page\\Models\\Page','','2025-11-20 01:47:59','2025-11-20 01:47:59'),(88,'faq',18,'Botble\\Page\\Models\\Page','','2025-11-20 01:47:59','2025-11-20 01:47:59'),(89,'coming-soon',19,'Botble\\Page\\Models\\Page','','2025-11-20 01:47:59','2025-11-20 01:47:59'),(90,'gopro',1,'Botble\\Marketplace\\Models\\Store','stores','2025-11-20 01:48:07','2025-11-20 01:48:07'),(91,'global-office',2,'Botble\\Marketplace\\Models\\Store','stores','2025-11-20 01:48:07','2025-11-20 01:48:07'),(92,'young-shop',3,'Botble\\Marketplace\\Models\\Store','stores','2025-11-20 01:48:07','2025-11-20 01:48:07'),(93,'global-store',4,'Botble\\Marketplace\\Models\\Store','stores','2025-11-20 01:48:07','2025-11-20 01:48:07'),(94,'all-natural-italian-style-chicken-meatballs',25,'Botble\\Ecommerce\\Models\\Product','products','2025-11-20 01:48:08','2025-11-20 01:48:08'),(95,'all-natural-italian-style-chicken-meatballs',26,'Botble\\Ecommerce\\Models\\Product','products','2025-11-20 01:48:08','2025-11-20 01:48:08'),(96,'blue-diamond-almonds-lightly',27,'Botble\\Ecommerce\\Models\\Product','products','2025-11-20 01:48:08','2025-11-20 01:48:08'),(97,'blue-diamond-almonds-lightly',28,'Botble\\Ecommerce\\Models\\Product','products','2025-11-20 01:48:08','2025-11-20 01:48:08'),(98,'blue-diamond-almonds-lightly',29,'Botble\\Ecommerce\\Models\\Product','products','2025-11-20 01:48:08','2025-11-20 01:48:08'),(99,'encore-seafoods-stuffed-alaskan-digital',30,'Botble\\Ecommerce\\Models\\Product','products','2025-11-20 01:48:08','2025-11-20 01:48:08'),(100,'encore-seafoods-stuffed-alaskan-digital',31,'Botble\\Ecommerce\\Models\\Product','products','2025-11-20 01:48:08','2025-11-20 01:48:08'),(101,'encore-seafoods-stuffed-alaskan-digital',32,'Botble\\Ecommerce\\Models\\Product','products','2025-11-20 01:48:08','2025-11-20 01:48:08'),(102,'haagen-dazs-caramel-cone-ice-cream',33,'Botble\\Ecommerce\\Models\\Product','products','2025-11-20 01:48:08','2025-11-20 01:48:08'),(103,'haagen-dazs-caramel-cone-ice-cream',34,'Botble\\Ecommerce\\Models\\Product','products','2025-11-20 01:48:08','2025-11-20 01:48:08'),(104,'haagen-dazs-caramel-cone-ice-cream',35,'Botble\\Ecommerce\\Models\\Product','products','2025-11-20 01:48:08','2025-11-20 01:48:08'),(105,'haagen-dazs-caramel-cone-ice-cream',36,'Botble\\Ecommerce\\Models\\Product','products','2025-11-20 01:48:08','2025-11-20 01:48:08'),(106,'nestle-original-coffee-mate-coffee-creamer',37,'Botble\\Ecommerce\\Models\\Product','products','2025-11-20 01:48:08','2025-11-20 01:48:08'),(107,'nestle-original-coffee-mate-coffee-creamer',38,'Botble\\Ecommerce\\Models\\Product','products','2025-11-20 01:48:08','2025-11-20 01:48:08'),(108,'naturally-flavored-cinnamon-vanilla-light-roast-coffee-digital',39,'Botble\\Ecommerce\\Models\\Product','products','2025-11-20 01:48:08','2025-11-20 01:48:08'),(109,'naturally-flavored-cinnamon-vanilla-light-roast-coffee-digital',40,'Botble\\Ecommerce\\Models\\Product','products','2025-11-20 01:48:08','2025-11-20 01:48:08'),(110,'naturally-flavored-cinnamon-vanilla-light-roast-coffee-digital',41,'Botble\\Ecommerce\\Models\\Product','products','2025-11-20 01:48:08','2025-11-20 01:48:08'),(111,'pepperidge-farm-farmhouse-hearty-white-bread',42,'Botble\\Ecommerce\\Models\\Product','products','2025-11-20 01:48:08','2025-11-20 01:48:08'),(112,'pepperidge-farm-farmhouse-hearty-white-bread',43,'Botble\\Ecommerce\\Models\\Product','products','2025-11-20 01:48:08','2025-11-20 01:48:08'),(113,'pepperidge-farm-farmhouse-hearty-white-bread',44,'Botble\\Ecommerce\\Models\\Product','products','2025-11-20 01:48:08','2025-11-20 01:48:08'),(114,'pepperidge-farm-farmhouse-hearty-white-bread',45,'Botble\\Ecommerce\\Models\\Product','products','2025-11-20 01:48:08','2025-11-20 01:48:08'),(115,'oroweat-country-buttermilk-bread',46,'Botble\\Ecommerce\\Models\\Product','products','2025-11-20 01:48:08','2025-11-20 01:48:08'),(116,'oroweat-country-buttermilk-bread',47,'Botble\\Ecommerce\\Models\\Product','products','2025-11-20 01:48:08','2025-11-20 01:48:08'),(117,'oroweat-country-buttermilk-bread',48,'Botble\\Ecommerce\\Models\\Product','products','2025-11-20 01:48:08','2025-11-20 01:48:08'),(118,'perdue-simply-smart-organics-gluten-free-digital',49,'Botble\\Ecommerce\\Models\\Product','products','2025-11-20 01:48:08','2025-11-20 01:48:08'),(119,'perdue-simply-smart-organics-gluten-free-digital',50,'Botble\\Ecommerce\\Models\\Product','products','2025-11-20 01:48:08','2025-11-20 01:48:08'),(120,'signature-wood-fired-mushroom-and-caramelized-digital',51,'Botble\\Ecommerce\\Models\\Product','products','2025-11-20 01:48:08','2025-11-20 01:48:08'),(121,'signature-wood-fired-mushroom-and-caramelized-digital',52,'Botble\\Ecommerce\\Models\\Product','products','2025-11-20 01:48:08','2025-11-20 01:48:08'),(122,'new-arrival',1,'Botble\\Ecommerce\\Models\\ProductCollection','collections','2025-11-20 01:48:09','2025-11-20 01:48:09'),(123,'best-sellers',2,'Botble\\Ecommerce\\Models\\ProductCollection','collections','2025-11-20 01:48:09','2025-11-20 01:48:09'),(124,'special-offer',3,'Botble\\Ecommerce\\Models\\ProductCollection','collections','2025-11-20 01:48:09','2025-11-20 01:48:09');
/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs_translations`
--

DROP TABLE IF EXISTS `slugs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs_translations` (
  `lang_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slugs_id` bigint unsigned NOT NULL,
  `key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prefix` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
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
-- Table structure for table `social_logins`
--

DROP TABLE IF EXISTS `social_logins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_logins` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `provider` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `refresh_token` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `token_expires_at` timestamp NULL DEFAULT NULL,
  `provider_data` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_logins_provider_provider_id_unique` (`provider`,`provider_id`),
  KEY `social_logins_user_type_user_id_index` (`user_type`,`user_id`),
  KEY `social_logins_user_id_user_type_index` (`user_id`,`user_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_logins`
--

LOCK TABLES `social_logins` WRITE;
/*!40000 ALTER TABLE `social_logins` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_logins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `states_slug_unique` (`slug`),
  KEY `idx_states_name` (`name`),
  KEY `idx_states_status` (`status`),
  KEY `idx_states_country_id` (`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states_translations`
--

DROP TABLE IF EXISTS `states_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states_translations` (
  `lang_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `states_id` bigint unsigned NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`states_id`),
  KEY `idx_states_trans_state_lang` (`states_id`,`lang_code`),
  KEY `idx_states_trans_name` (`name`),
  KEY `idx_states_trans_states_id` (`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states_translations`
--

LOCK TABLES `states_translations` WRITE;
/*!40000 ALTER TABLE `states_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `states_translations` ENABLE KEYS */;
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
  `author_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'General',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-11-20 01:47:58','2025-11-20 01:47:58'),(2,'Design',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-11-20 01:47:58','2025-11-20 01:47:58'),(3,'Fashion',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-11-20 01:47:58','2025-11-20 01:47:58'),(4,'Branding',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-11-20 01:47:58','2025-11-20 01:47:58'),(5,'Modern',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-11-20 01:47:58','2025-11-20 01:47:58');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_translations`
--

DROP TABLE IF EXISTS `tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags_translations` (
  `lang_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` bigint unsigned NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_translations`
--

LOCK TABLES `tags_translations` WRITE;
/*!40000 ALTER TABLE `tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonials`
--

DROP TABLE IF EXISTS `testimonials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testimonials` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonials`
--

LOCK TABLES `testimonials` WRITE;
/*!40000 ALTER TABLE `testimonials` DISABLE KEYS */;
INSERT INTO `testimonials` VALUES (1,'James Dopli','Thanks for all your efforts and teamwork over the last several months!  Thank you so much','customers/3.jpg','Developer','published','2025-11-20 01:47:39','2025-11-20 01:47:39'),(2,'Theodore Handle','How you use the city or town name is up to you. All results may be freely used in any work.','customers/5.jpg','CO Founder','published','2025-11-20 01:47:39','2025-11-20 01:47:39'),(3,'Shahnewaz Sakil','Very happy with our choice to take our daughter to Brave care. The entire team was great! Thank you!','customers/7.jpg','UI/UX Designer','published','2025-11-20 01:47:39','2025-11-20 01:47:39'),(4,'Albert Flores','Wedding day savior! 5 stars. Their bridal collection is a game-changer. Made me feel like a star.','customers/1.jpg','Bank of America','published','2025-11-20 01:47:39','2025-11-20 01:47:39');
/*!40000 ALTER TABLE `testimonials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonials_translations`
--

DROP TABLE IF EXISTS `testimonials_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testimonials_translations` (
  `lang_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `testimonials_id` bigint unsigned NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `company` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`testimonials_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonials_translations`
--

LOCK TABLES `testimonials_translations` WRITE;
/*!40000 ALTER TABLE `testimonials_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `testimonials_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_meta`
--

DROP TABLE IF EXISTS `user_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
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
-- Table structure for table `user_settings`
--

DROP TABLE IF EXISTS `user_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` json NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_settings_user_type_user_id_key_unique` (`user_type`,`user_id`,`key`),
  KEY `user_settings_user_type_user_id_index` (`user_type`,`user_id`),
  KEY `user_settings_key_index` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_settings`
--

LOCK TABLES `user_settings` WRITE;
/*!40000 ALTER TABLE `user_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` bigint unsigned DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  `sessions_invalidated_at` timestamp NULL DEFAULT NULL,
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
INSERT INTO `users` VALUES (1,'admin@nest.local',NULL,NULL,'$2y$12$dOTMUlqMOFEHKHVOyXdu4u.h45awAcqG277.ywNEdpYyh3nRd7why','yKYOihQsNVqSySwS1AeuE6P49RlpY30dJRMwJsQiwxzfi1TXuhvSHlzcPBRC','2025-11-20 01:47:59','2026-10-20 07:23:14','Camron','Robel','admin',NULL,1,1,NULL,'2026-10-20 07:23:14',NULL);
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
  `widget_id` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `widgets_unique_index` (`theme`,`sidebar_id`,`widget_id`,`position`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'SiteInfoWidget','footer_sidebar','nest',0,'{\"id\":\"SiteInfoWidget\",\"name\":\"Kharif\",\"about\":\"Traditionally crafted wood-pressed cooking oils for naturally better everyday cooking.\",\"phone\":\"+91 90000 00000\",\"address\":\"India\",\"email\":\"hello@kharif.in\",\"working_hours\":\"Mon \\u2013 Sat: 9 am \\u2013 6 pm\"}','2025-11-20 01:48:05','2026-10-20 07:16:35'),(2,'CustomMenuWidget','footer_sidebar','nest',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"Company\",\"menu_id\":\"company\"}','2025-11-20 01:48:05','2025-11-20 01:48:05'),(3,'CustomMenuWidget','footer_sidebar','nest',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"Categories\",\"menu_id\":\"product-categories\"}','2025-11-20 01:48:05','2025-11-20 01:48:05'),(4,'CustomMenuWidget','footer_sidebar','nest',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"Information\",\"menu_id\":\"information\"}','2025-11-20 01:48:05','2025-11-20 01:48:05'),(5,'InstallAppWidget','footer_sidebar','nest',3,'{\"id\":\"InstallAppWidget\",\"name\":\"Install App\",\"apps_description\":\"From App Store or Google Play\",\"ios_app_url\":\"#\",\"ios_app_image\":\"general\\/app-store.jpg\",\"android_app_url\":\"#\",\"android_app_image\":\"general\\/google-play.jpg\",\"payment_gateway_description\":\"Secured Payment Gateways\",\"payment_gateway_image\":\"general\\/payment-methods.png\"}','2025-11-20 01:48:05','2025-11-20 01:48:05'),(6,'BlogSearchWidget','primary_sidebar','nest',0,'{\"id\":\"BlogSearchWidget\",\"name\":\"Search\"}','2025-11-20 01:48:05','2025-11-20 01:48:05'),(7,'ProductCategoriesWidget','primary_sidebar','nest',1,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Categories\"}','2025-11-20 01:48:05','2025-11-20 01:48:05'),(8,'TrendingProductsWidget','primary_sidebar','nest',2,'{\"id\":\"TrendingProductsWidget\",\"name\":\"Trending Now\",\"number_display\":4}','2025-11-20 01:48:05','2025-11-20 01:48:05'),(9,'TagsWidget','primary_sidebar','nest',4,'{\"id\":\"TagsWidget\",\"name\":\"Popular Tags\"}','2025-11-20 01:48:05','2025-11-20 01:48:05'),(10,'AdsWidget','primary_sidebar','nest',5,'{\"id\":\"AdsWidget\",\"name\":\"Organic\",\"ads_key\":\"IZ6WU8KUALYI\"}','2025-11-20 01:48:05','2025-11-20 01:48:05'),(11,'ProductCategoriesWidget','product_sidebar','nest',1,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Categories\"}','2025-11-20 01:48:05','2025-11-20 01:48:05'),(12,'NewProductsWidget','product_sidebar','nest',3,'{\"id\":\"NewProductsWidget\",\"name\":\"New products\"}','2025-11-20 01:48:05','2025-11-20 01:48:05'),(13,'AdsWidget','product_sidebar','nest',4,'{\"id\":\"AdsWidget\",\"name\":\"Oganic\",\"ads_key\":\"IZ6WU8KUALYI\"}','2025-11-20 01:48:05','2025-11-20 01:48:05'),(14,'NewsletterWidget','pre_footer_sidebar','nest',0,'{\"id\":\"NewsletterWidget\",\"title\":\"Stay home & get your daily <br \\/>wood-pressed oils from our shop\",\"subtitle\":\"Start Your Daily Shopping with <span>Kharif<\\/span>\",\"image\":\"general\\/newsletter-image.png\",\"background_image\":\"general\\/newsletter-background-image.png\"}','2025-11-20 01:48:05','2026-10-20 07:16:35'),(15,'SiteFeaturesWidget','pre_footer_sidebar','nest',1,'{\"id\":\"SiteFeaturesWidget\",\"title\":\"Site Features\",\"data\":{\"1\":{\"icon\":\"general\\/icon-1.png\",\"title\":\"Free delivery\",\"subtitle\":\"On prepaid orders above \\u20b9999\"},\"2\":{\"icon\":\"general\\/icon-2.png\",\"title\":\"Wood-pressed\",\"subtitle\":\"Traditional small batches\"},\"3\":{\"icon\":\"general\\/icon-3.png\",\"title\":\"Natural oils\",\"subtitle\":\"Quality ingredients\"},\"4\":{\"icon\":\"general\\/icon-4.png\",\"title\":\"Secure checkout\",\"subtitle\":\"UPI, cards & COD\"},\"5\":{\"icon\":\"general\\/icon-5.png\",\"title\":\"Easy returns\",\"subtitle\":\"Quality guarantee\"}}}','2025-11-20 01:48:05','2026-10-20 07:16:35');
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'laravel'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-10-20 23:42:15
