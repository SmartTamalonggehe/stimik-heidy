-- MySQL dump 10.13  Distrib 8.0.29, for Linux (x86_64)
--
-- Host: localhost    Database: stimik_heidy
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `districts`
--

DROP TABLE IF EXISTS `districts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `districts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9472 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `districts`
--

LOCK TABLES `districts` WRITE;
/*!40000 ALTER TABLE `districts` DISABLE KEYS */;
INSERT INTO `districts` VALUES (9401,'Kabupaten Merauke','2022-07-22 12:19:24','2022-07-22 12:19:24'),(9402,'Kabupaten Jayawijaya','2022-07-22 12:19:24','2022-07-22 12:19:24'),(9403,'Kabupaten Jayapura','2022-07-22 12:19:24','2022-07-22 12:19:24'),(9404,'Kabupaten Nabire','2022-07-22 12:19:24','2022-07-22 12:19:24'),(9408,'Kabupaten Kepulauan Yapen','2022-07-22 12:19:24','2022-07-22 12:19:24'),(9409,'Kabupaten Biak Numfor','2022-07-22 12:19:24','2022-07-22 12:19:24'),(9410,'Kabupaten Paniai','2022-07-22 12:19:24','2022-07-22 12:19:24'),(9411,'Kabupaten Puncak Jaya','2022-07-22 12:19:24','2022-07-22 12:19:24'),(9412,'Kabupaten Mimika','2022-07-22 12:19:24','2022-07-22 12:19:24'),(9413,'Kabupaten Boven Digoel','2022-07-22 12:19:24','2022-07-22 12:19:24'),(9414,'Kabupaten Mappi','2022-07-22 12:19:24','2022-07-22 12:19:24'),(9415,'Kabupaten Asmat','2022-07-22 12:19:24','2022-07-22 12:19:24'),(9416,'Kabupaten Yahukimo','2022-07-22 12:19:24','2022-07-22 12:19:24'),(9417,'Kabupaten Pegunungan Bintang','2022-07-22 12:19:24','2022-07-22 12:19:24'),(9418,'Kabupaten Tolikara','2022-07-22 12:19:24','2022-07-22 12:19:24'),(9419,'Kabupaten Sarmi','2022-07-22 12:19:24','2022-07-22 12:19:24'),(9420,'Kabupaten Keerom','2022-07-22 12:19:24','2022-07-22 12:19:24'),(9426,'Kabupaten Waropen','2022-07-22 12:19:24','2022-07-22 12:19:24'),(9427,'Kabupaten Supiori','2022-07-22 12:19:24','2022-07-22 12:19:24'),(9428,'Kabupaten Mamberamo Raya','2022-07-22 12:19:24','2022-07-22 12:19:24'),(9429,'Kabupaten Nduga','2022-07-22 12:19:24','2022-07-22 12:19:24'),(9430,'Kabupaten Lanny Jaya','2022-07-22 12:19:24','2022-07-22 12:19:24'),(9431,'Kabupaten Mamberamo Tengah','2022-07-22 12:19:24','2022-07-22 12:19:24'),(9432,'Kabupaten Yalimo','2022-07-22 12:19:24','2022-07-22 12:19:24'),(9433,'Kabupaten Puncak','2022-07-22 12:19:24','2022-07-22 12:19:24'),(9434,'Kabupaten Dogiyai','2022-07-22 12:19:24','2022-07-22 12:19:24'),(9435,'Kabupaten Intan Jaya','2022-07-22 12:19:24','2022-07-22 12:19:24'),(9436,'Kabupaten Deiyai','2022-07-22 12:19:24','2022-07-22 12:19:24'),(9471,'Kota Jayapura','2022-07-22 12:19:24','2022-07-22 12:19:24');
/*!40000 ALTER TABLE `districts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facilities`
--

DROP TABLE IF EXISTS `facilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facilities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facilities`
--

LOCK TABLES `facilities` WRITE;
/*!40000 ALTER TABLE `facilities` DISABLE KEYS */;
/*!40000 ALTER TABLE `facilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `galleries`
--

DROP TABLE IF EXISTS `galleries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `galleries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries`
--

LOCK TABLES `galleries` WRITE;
/*!40000 ALTER TABLE `galleries` DISABLE KEYS */;
/*!40000 ALTER TABLE `galleries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2022_07_05_130943_create_permission_tables',1),(6,'2022_07_05_131117_create_districts_table',1),(7,'2022_07_05_131118_create_sub_districts_table',1),(8,'2022_07_05_131155_create_facilities_table',1),(9,'2022_07_05_131237_create_prices_table',1),(10,'2022_07_05_131258_create_tenants_table',1),(11,'2022_07_05_131335_create_schedules_table',1),(12,'2022_07_05_131448_create_proofs_table',1),(13,'2022_07_05_131917_create_galleries_table',1),(14,'2022_07_13_192147_create_verify_users_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_permissions`
--

LOCK TABLES `model_has_permissions` WRITE;
/*!40000 ALTER TABLE `model_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model_has_roles` (
  `role_id` bigint unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_roles`
--

LOCK TABLES `model_has_roles` WRITE;
/*!40000 ALTER TABLE `model_has_roles` DISABLE KEYS */;
INSERT INTO `model_has_roles` VALUES (1,'App\\Models\\User',1),(2,'App\\Models\\User',2);
/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
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
-- Table structure for table `prices`
--

DROP TABLE IF EXISTS `prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `price` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prices`
--

LOCK TABLES `prices` WRITE;
/*!40000 ALTER TABLE `prices` DISABLE KEYS */;
/*!40000 ALTER TABLE `prices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proofs`
--

DROP TABLE IF EXISTS `proofs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proofs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `schedule_id` bigint unsigned NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `proofs_schedule_id_foreign` (`schedule_id`),
  CONSTRAINT `proofs_schedule_id_foreign` FOREIGN KEY (`schedule_id`) REFERENCES `schedules` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proofs`
--

LOCK TABLES `proofs` WRITE;
/*!40000 ALTER TABLE `proofs` DISABLE KEYS */;
/*!40000 ALTER TABLE `proofs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_has_permissions`
--

LOCK TABLES `role_has_permissions` WRITE;
/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'ADMIN','web','2022-07-22 12:19:52','2022-07-22 12:19:52'),(2,'KETUA','web','2022-07-22 12:19:52','2022-07-22 12:19:52'),(3,'PENYEWA','web','2022-07-22 12:19:52','2022-07-22 12:19:52');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedules`
--

DROP TABLE IF EXISTS `schedules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schedules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tenant_id` bigint unsigned NOT NULL,
  `date_start` date NOT NULL,
  `date_end` date NOT NULL,
  `price` int NOT NULL,
  `purpose` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `schedules_tenant_id_foreign` (`tenant_id`),
  CONSTRAINT `schedules_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedules`
--

LOCK TABLES `schedules` WRITE;
/*!40000 ALTER TABLE `schedules` DISABLE KEYS */;
/*!40000 ALTER TABLE `schedules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_districts`
--

DROP TABLE IF EXISTS `sub_districts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sub_districts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `district_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sub_districts_district_id_foreign` (`district_id`),
  CONSTRAINT `sub_districts_district_id_foreign` FOREIGN KEY (`district_id`) REFERENCES `districts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9471041 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_districts`
--

LOCK TABLES `sub_districts` WRITE;
/*!40000 ALTER TABLE `sub_districts` DISABLE KEYS */;
INSERT INTO `sub_districts` VALUES (9401010,9401,'Kimaam','2022-07-22 12:19:25','2022-07-22 12:19:25'),(9401011,9401,'Waan','2022-07-22 12:19:25','2022-07-22 12:19:25'),(9401012,9401,'Tabonji','2022-07-22 12:19:25','2022-07-22 12:19:25'),(9401013,9401,'Ilwayab','2022-07-22 12:19:25','2022-07-22 12:19:25'),(9401020,9401,'Okaba','2022-07-22 12:19:25','2022-07-22 12:19:25'),(9401021,9401,'Tubang','2022-07-22 12:19:25','2022-07-22 12:19:25'),(9401022,9401,'Ngguti','2022-07-22 12:19:25','2022-07-22 12:19:25'),(9401023,9401,'Kaptel','2022-07-22 12:19:25','2022-07-22 12:19:25'),(9401030,9401,'Kurik','2022-07-22 12:19:25','2022-07-22 12:19:25'),(9401031,9401,'Malind','2022-07-22 12:19:25','2022-07-22 12:19:25'),(9401032,9401,'Animha','2022-07-22 12:19:25','2022-07-22 12:19:25'),(9401040,9401,'Merauke','2022-07-22 12:19:25','2022-07-22 12:19:25'),(9401041,9401,'Semangga','2022-07-22 12:19:25','2022-07-22 12:19:25'),(9401042,9401,'Tanah Miring','2022-07-22 12:19:25','2022-07-22 12:19:25'),(9401043,9401,'Jagebob','2022-07-22 12:19:25','2022-07-22 12:19:25'),(9401044,9401,'Sota','2022-07-22 12:19:25','2022-07-22 12:19:25'),(9401045,9401,'Naukenjerai','2022-07-22 12:19:25','2022-07-22 12:19:25'),(9401050,9401,'Muting','2022-07-22 12:19:25','2022-07-22 12:19:25'),(9401051,9401,'Eligobel','2022-07-22 12:19:25','2022-07-22 12:19:25'),(9401052,9401,'Ulilin','2022-07-22 12:19:25','2022-07-22 12:19:25'),(9402110,9402,'Wamena','2022-07-22 12:19:26','2022-07-22 12:19:26'),(9402111,9402,'Asolokobal','2022-07-22 12:19:26','2022-07-22 12:19:26'),(9402112,9402,'Walelagama','2022-07-22 12:19:26','2022-07-22 12:19:26'),(9402113,9402,'Trikora','2022-07-22 12:19:26','2022-07-22 12:19:26'),(9402114,9402,'Napua','2022-07-22 12:19:26','2022-07-22 12:19:26'),(9402115,9402,'Walaik','2022-07-22 12:19:26','2022-07-22 12:19:26'),(9402116,9402,'Wouma','2022-07-22 12:19:26','2022-07-22 12:19:26'),(9402117,9402,'Walesi','2022-07-22 12:19:26','2022-07-22 12:19:26'),(9402118,9402,'Asotipo','2022-07-22 12:19:26','2022-07-22 12:19:26'),(9402119,9402,'Maima','2022-07-22 12:19:26','2022-07-22 12:19:26'),(9402120,9402,'Hubikosi','2022-07-22 12:19:26','2022-07-22 12:19:26'),(9402121,9402,'Pelebaga','2022-07-22 12:19:26','2022-07-22 12:19:26'),(9402122,9402,'Ibele','2022-07-22 12:19:26','2022-07-22 12:19:26'),(9402123,9402,'Tailarek','2022-07-22 12:19:26','2022-07-22 12:19:26'),(9402124,9402,'Hubikiak','2022-07-22 12:19:26','2022-07-22 12:19:26'),(9402180,9402,'Asologaima','2022-07-22 12:19:26','2022-07-22 12:19:26'),(9402181,9402,'Musatfak','2022-07-22 12:19:26','2022-07-22 12:19:26'),(9402182,9402,'Silo Karno Doga','2022-07-22 12:19:26','2022-07-22 12:19:26'),(9402183,9402,'Pyramid','2022-07-22 12:19:26','2022-07-22 12:19:26'),(9402184,9402,'Muliama','2022-07-22 12:19:26','2022-07-22 12:19:26'),(9402185,9402,'Wame','2022-07-22 12:19:26','2022-07-22 12:19:26'),(9402190,9402,'Kurulu','2022-07-22 12:19:26','2022-07-22 12:19:26'),(9402191,9402,'Usilimo','2022-07-22 12:19:26','2022-07-22 12:19:26'),(9402192,9402,'Wita Waya','2022-07-22 12:19:26','2022-07-22 12:19:26'),(9402193,9402,'Libarek','2022-07-22 12:19:26','2022-07-22 12:19:26'),(9402194,9402,'Wadangku','2022-07-22 12:19:26','2022-07-22 12:19:26'),(9402195,9402,'Pisugi','2022-07-22 12:19:26','2022-07-22 12:19:26'),(9402220,9402,'Bolakme','2022-07-22 12:19:26','2022-07-22 12:19:26'),(9402221,9402,'Wollo','2022-07-22 12:19:26','2022-07-22 12:19:26'),(9402222,9402,'Yalengga','2022-07-22 12:19:26','2022-07-22 12:19:26'),(9402223,9402,'Tagime','2022-07-22 12:19:26','2022-07-22 12:19:26'),(9402224,9402,'Molagalome','2022-07-22 12:19:26','2022-07-22 12:19:26'),(9402225,9402,'Tagineri','2022-07-22 12:19:26','2022-07-22 12:19:26'),(9402226,9402,'Bugi','2022-07-22 12:19:26','2022-07-22 12:19:26'),(9402227,9402,'Bpiri','2022-07-22 12:19:26','2022-07-22 12:19:26'),(9402228,9402,'Koragi','2022-07-22 12:19:26','2022-07-22 12:19:26'),(9402611,9402,'Itlay Hasige','2022-07-22 12:19:26','2022-07-22 12:19:26'),(9402612,9402,'Siepkosi','2022-07-22 12:19:26','2022-07-22 12:19:26'),(9402614,9402,'Popugoba','2022-07-22 12:19:26','2022-07-22 12:19:26'),(9403080,9403,'Kaureh','2022-07-22 12:19:26','2022-07-22 12:19:26'),(9403081,9403,'Airu','2022-07-22 12:19:26','2022-07-22 12:19:26'),(9403082,9403,'Yapsi','2022-07-22 12:19:26','2022-07-22 12:19:26'),(9403140,9403,'Kemtuk','2022-07-22 12:19:26','2022-07-22 12:19:26'),(9403150,9403,'Kemtuk Gresi','2022-07-22 12:19:26','2022-07-22 12:19:26'),(9403151,9403,'Gresi Selatan','2022-07-22 12:19:26','2022-07-22 12:19:26'),(9403160,9403,'Nimboran','2022-07-22 12:19:26','2022-07-22 12:19:26'),(9403161,9403,'Nimboran Timur / Namblong','2022-07-22 12:19:26','2022-07-22 12:19:26'),(9403170,9403,'Nimbokrang','2022-07-22 12:19:26','2022-07-22 12:19:26'),(9403180,9403,'Unurum Guay','2022-07-22 12:19:26','2022-07-22 12:19:26'),(9403200,9403,'Demta','2022-07-22 12:19:26','2022-07-22 12:19:26'),(9403201,9403,'Yokari','2022-07-22 12:19:26','2022-07-22 12:19:26'),(9403210,9403,'Depapre','2022-07-22 12:19:26','2022-07-22 12:19:26'),(9403211,9403,'Ravenirara','2022-07-22 12:19:26','2022-07-22 12:19:26'),(9403220,9403,'Sentani Barat','2022-07-22 12:19:26','2022-07-22 12:19:26'),(9403221,9403,'Waibu','2022-07-22 12:19:26','2022-07-22 12:19:26'),(9403230,9403,'Sentani','2022-07-22 12:19:26','2022-07-22 12:19:26'),(9403231,9403,'Ebungfau','2022-07-22 12:19:26','2022-07-22 12:19:26'),(9403240,9403,'Sentani Timur','2022-07-22 12:19:26','2022-07-22 12:19:26'),(9404050,9404,'Uwapa','2022-07-22 12:19:27','2022-07-22 12:19:27'),(9404051,9404,'Menou','2022-07-22 12:19:27','2022-07-22 12:19:27'),(9404052,9404,'Dipa','2022-07-22 12:19:27','2022-07-22 12:19:27'),(9404060,9404,'Yaur','2022-07-22 12:19:27','2022-07-22 12:19:27'),(9404061,9404,'Teluk Umar','2022-07-22 12:19:27','2022-07-22 12:19:27'),(9404070,9404,'Wanggar','2022-07-22 12:19:27','2022-07-22 12:19:27'),(9404071,9404,'Nabire Barat','2022-07-22 12:19:28','2022-07-22 12:19:28'),(9404080,9404,'Nabire','2022-07-22 12:19:28','2022-07-22 12:19:28'),(9404081,9404,'Teluk Kimi','2022-07-22 12:19:28','2022-07-22 12:19:28'),(9404090,9404,'Napan','2022-07-22 12:19:28','2022-07-22 12:19:28'),(9404091,9404,'Makimi','2022-07-22 12:19:28','2022-07-22 12:19:28'),(9404092,9404,'Wapoga','2022-07-22 12:19:28','2022-07-22 12:19:28'),(9404093,9404,'Kepulauan Moora','2022-07-22 12:19:28','2022-07-22 12:19:28'),(9404100,9404,'Siriwo','2022-07-22 12:19:28','2022-07-22 12:19:28'),(9404110,9404,'Yaro','2022-07-22 12:19:28','2022-07-22 12:19:28'),(9408040,9408,'Yapen Timur','2022-07-22 12:19:29','2022-07-22 12:19:29'),(9408041,9408,'Pantura Yapen','2022-07-22 12:19:29','2022-07-22 12:19:29'),(9408042,9408,'Teluk Ampimoi','2022-07-22 12:19:29','2022-07-22 12:19:29'),(9408043,9408,'Raimbawi','2022-07-22 12:19:29','2022-07-22 12:19:29'),(9408044,9408,'Pulau Kurudu','2022-07-22 12:19:29','2022-07-22 12:19:29'),(9408050,9408,'Angkaisera','2022-07-22 12:19:29','2022-07-22 12:19:29'),(9408051,9408,'Kep. Ambai','2022-07-22 12:19:29','2022-07-22 12:19:29'),(9408052,9408,'Yawakukat','2022-07-22 12:19:29','2022-07-22 12:19:29'),(9408060,9408,'Yapen Selatan','2022-07-22 12:19:29','2022-07-22 12:19:29'),(9408061,9408,'Kosiwo','2022-07-22 12:19:29','2022-07-22 12:19:29'),(9408062,9408,'Anataurei','2022-07-22 12:19:29','2022-07-22 12:19:29'),(9408070,9408,'Yapen Barat','2022-07-22 12:19:29','2022-07-22 12:19:29'),(9408071,9408,'Wonawa','2022-07-22 12:19:29','2022-07-22 12:19:29'),(9408072,9408,'Pulau Yerui','2022-07-22 12:19:29','2022-07-22 12:19:29'),(9408080,9408,'Poom','2022-07-22 12:19:29','2022-07-22 12:19:29'),(9408081,9408,'Windesi','2022-07-22 12:19:29','2022-07-22 12:19:29'),(9409010,9409,'Numfor Barat','2022-07-22 12:19:30','2022-07-22 12:19:30'),(9409011,9409,'Orkeri','2022-07-22 12:19:30','2022-07-22 12:19:30'),(9409020,9409,'Numfor Timur','2022-07-22 12:19:30','2022-07-22 12:19:30'),(9409021,9409,'Bruyadori','2022-07-22 12:19:30','2022-07-22 12:19:30'),(9409022,9409,'Poiru','2022-07-22 12:19:30','2022-07-22 12:19:30'),(9409030,9409,'Padaido','2022-07-22 12:19:30','2022-07-22 12:19:30'),(9409031,9409,'Aimando Padaido','2022-07-22 12:19:30','2022-07-22 12:19:30'),(9409040,9409,'Biak Timur','2022-07-22 12:19:30','2022-07-22 12:19:30'),(9409041,9409,'Oridek','2022-07-22 12:19:30','2022-07-22 12:19:30'),(9409050,9409,'Biak Kota','2022-07-22 12:19:30','2022-07-22 12:19:30'),(9409060,9409,'Samofa','2022-07-22 12:19:30','2022-07-22 12:19:30'),(9409070,9409,'Yendidori','2022-07-22 12:19:30','2022-07-22 12:19:30'),(9409080,9409,'Biak Utara','2022-07-22 12:19:30','2022-07-22 12:19:30'),(9409081,9409,'Andey','2022-07-22 12:19:30','2022-07-22 12:19:30'),(9409090,9409,'Warsa','2022-07-22 12:19:30','2022-07-22 12:19:30'),(9409091,9409,'Yawosi','2022-07-22 12:19:30','2022-07-22 12:19:30'),(9409092,9409,'Bondifuar','2022-07-22 12:19:30','2022-07-22 12:19:30'),(9409100,9409,'Biak Barat','2022-07-22 12:19:30','2022-07-22 12:19:30'),(9409101,9409,'Swandiwe','2022-07-22 12:19:30','2022-07-22 12:19:30'),(9410030,9410,'Paniai Timur','2022-07-22 12:19:31','2022-07-22 12:19:31'),(9410031,9410,'Yatamo','2022-07-22 12:19:31','2022-07-22 12:19:31'),(9410032,9410,'Kebo','2022-07-22 12:19:31','2022-07-22 12:19:31'),(9410033,9410,'Pugo Dagi','2022-07-22 12:19:31','2022-07-22 12:19:31'),(9410034,9410,'Wege Muka','2022-07-22 12:19:31','2022-07-22 12:19:31'),(9410035,9410,'Wegee Bino','2022-07-22 12:19:31','2022-07-22 12:19:31'),(9410036,9410,'Yagai','2022-07-22 12:19:31','2022-07-22 12:19:31'),(9410040,9410,'Bibida','2022-07-22 12:19:31','2022-07-22 12:19:31'),(9410041,9410,'Dumadama','2022-07-22 12:19:31','2022-07-22 12:19:31'),(9410070,9410,'Aradide','2022-07-22 12:19:31','2022-07-22 12:19:31'),(9410071,9410,'Ekadide','2022-07-22 12:19:31','2022-07-22 12:19:31'),(9410072,9410,'Aweida','2022-07-22 12:19:31','2022-07-22 12:19:31'),(9410073,9410,'Fajar Timur','2022-07-22 12:19:31','2022-07-22 12:19:31'),(9410074,9410,'Topiyai','2022-07-22 12:19:31','2022-07-22 12:19:31'),(9410080,9410,'Paniai Barat','2022-07-22 12:19:31','2022-07-22 12:19:31'),(9410081,9410,'Siriwo','2022-07-22 12:19:31','2022-07-22 12:19:31'),(9410082,9410,'Muye','2022-07-22 12:19:31','2022-07-22 12:19:31'),(9410083,9410,'Nakama','2022-07-22 12:19:31','2022-07-22 12:19:31'),(9410084,9410,'Teluk Deya','2022-07-22 12:19:31','2022-07-22 12:19:31'),(9410090,9410,'Bogobaida','2022-07-22 12:19:31','2022-07-22 12:19:31'),(9411040,9411,'Fawi','2022-07-22 12:19:32','2022-07-22 12:19:32'),(9411041,9411,'Dagai','2022-07-22 12:19:32','2022-07-22 12:19:32'),(9411042,9411,'Kiyage','2022-07-22 12:19:32','2022-07-22 12:19:32'),(9411050,9411,'Mulia','2022-07-22 12:19:32','2022-07-22 12:19:32'),(9411053,9411,'Yambi','2022-07-22 12:19:32','2022-07-22 12:19:32'),(9411054,9411,'Ilamburawi','2022-07-22 12:19:32','2022-07-22 12:19:32'),(9411055,9411,'Muara','2022-07-22 12:19:32','2022-07-22 12:19:32'),(9411056,9411,'Pagaleme','2022-07-22 12:19:32','2022-07-22 12:19:32'),(9411057,9411,'Gurage','2022-07-22 12:19:32','2022-07-22 12:19:32'),(9411058,9411,'Irimuli','2022-07-22 12:19:32','2022-07-22 12:19:32'),(9411060,9411,'Ilu','2022-07-22 12:19:32','2022-07-22 12:19:32'),(9411061,9411,'Torere','2022-07-22 12:19:32','2022-07-22 12:19:32'),(9411063,9411,'Yamoneri','2022-07-22 12:19:32','2022-07-22 12:19:32'),(9411064,9411,'Waegi','2022-07-22 12:19:32','2022-07-22 12:19:32'),(9411065,9411,'Nume','2022-07-22 12:19:32','2022-07-22 12:19:32'),(9411066,9411,'Nioga','2022-07-22 12:19:32','2022-07-22 12:19:32'),(9411067,9411,'Gubume','2022-07-22 12:19:32','2022-07-22 12:19:32'),(9411068,9411,'Taganombak','2022-07-22 12:19:32','2022-07-22 12:19:32'),(9411070,9411,'Tingginambut','2022-07-22 12:19:32','2022-07-22 12:19:32'),(9411071,9411,'Kalome','2022-07-22 12:19:32','2022-07-22 12:19:32'),(9411072,9411,'Wanwi','2022-07-22 12:19:32','2022-07-22 12:19:32'),(9411080,9411,'Mewoluk','2022-07-22 12:19:32','2022-07-22 12:19:32'),(9411081,9411,'Lumo','2022-07-22 12:19:32','2022-07-22 12:19:32'),(9411082,9411,'Molanikime','2022-07-22 12:19:32','2022-07-22 12:19:32'),(9411090,9411,'Yamo','2022-07-22 12:19:32','2022-07-22 12:19:32'),(9411091,9411,'Dokome','2022-07-22 12:19:32','2022-07-22 12:19:32'),(9412010,9412,'Mimika Barat','2022-07-22 12:19:32','2022-07-22 12:19:32'),(9412011,9412,'Mimika Barat Jauh','2022-07-22 12:19:32','2022-07-22 12:19:32'),(9412012,9412,'Mimika Barat Tengah','2022-07-22 12:19:32','2022-07-22 12:19:32'),(9412013,9412,'Amar','2022-07-22 12:19:32','2022-07-22 12:19:32'),(9412020,9412,'Mimika Timur','2022-07-22 12:19:32','2022-07-22 12:19:32'),(9412021,9412,'Mimika Tengah','2022-07-22 12:19:33','2022-07-22 12:19:33'),(9412022,9412,'Mimika Timur Jauh','2022-07-22 12:19:33','2022-07-22 12:19:33'),(9412030,9412,'Mimika Baru','2022-07-22 12:19:33','2022-07-22 12:19:33'),(9412031,9412,'Kuala Kencana','2022-07-22 12:19:33','2022-07-22 12:19:33'),(9412032,9412,'Tembagapura','2022-07-22 12:19:33','2022-07-22 12:19:33'),(9412033,9412,'Wania','2022-07-22 12:19:33','2022-07-22 12:19:33'),(9412034,9412,'Iwaka','2022-07-22 12:19:33','2022-07-22 12:19:33'),(9412035,9412,'Kwamki Narama','2022-07-22 12:19:33','2022-07-22 12:19:33'),(9412040,9412,'Agimuga','2022-07-22 12:19:33','2022-07-22 12:19:33'),(9412041,9412,'Jila','2022-07-22 12:19:33','2022-07-22 12:19:33'),(9412042,9412,'Jita','2022-07-22 12:19:33','2022-07-22 12:19:33'),(9412043,9412,'Alama','2022-07-22 12:19:33','2022-07-22 12:19:33'),(9412044,9412,'Hoya','2022-07-22 12:19:33','2022-07-22 12:19:33'),(9413010,9413,'Jair','2022-07-22 12:19:34','2022-07-22 12:19:34'),(9413011,9413,'Subur','2022-07-22 12:19:34','2022-07-22 12:19:34'),(9413013,9413,'Kia','2022-07-22 12:19:34','2022-07-22 12:19:34'),(9413020,9413,'Mindiptana','2022-07-22 12:19:34','2022-07-22 12:19:34'),(9413021,9413,'Iniyandit','2022-07-22 12:19:34','2022-07-22 12:19:34'),(9413022,9413,'Kombut','2022-07-22 12:19:34','2022-07-22 12:19:34'),(9413023,9413,'Sesnuk','2022-07-22 12:19:34','2022-07-22 12:19:34'),(9413030,9413,'Mandobo','2022-07-22 12:19:34','2022-07-22 12:19:34'),(9413031,9413,'Fofi','2022-07-22 12:19:34','2022-07-22 12:19:34'),(9413032,9413,'Arimop','2022-07-22 12:19:34','2022-07-22 12:19:34'),(9413040,9413,'Kouh','2022-07-22 12:19:34','2022-07-22 12:19:34'),(9413041,9413,'Bomakia','2022-07-22 12:19:34','2022-07-22 12:19:34'),(9413042,9413,'Firiwage','2022-07-22 12:19:34','2022-07-22 12:19:34'),(9413043,9413,'Manggelum','2022-07-22 12:19:34','2022-07-22 12:19:34'),(9413044,9413,'Yaniruma','2022-07-22 12:19:34','2022-07-22 12:19:34'),(9413045,9413,'Kawagit','2022-07-22 12:19:34','2022-07-22 12:19:34'),(9413046,9413,'Kombay','2022-07-22 12:19:34','2022-07-22 12:19:34'),(9413050,9413,'Waropko','2022-07-22 12:19:34','2022-07-22 12:19:34'),(9413051,9413,'Ambatkwi','2022-07-22 12:19:34','2022-07-22 12:19:34'),(9413052,9413,'Ninati','2022-07-22 12:19:34','2022-07-22 12:19:34'),(9414010,9414,'Nambioman Bapai','2022-07-22 12:19:34','2022-07-22 12:19:34'),(9414011,9414,'Minyamur','2022-07-22 12:19:34','2022-07-22 12:19:34'),(9414020,9414,'Edera','2022-07-22 12:19:34','2022-07-22 12:19:34'),(9414021,9414,'Venaha','2022-07-22 12:19:34','2022-07-22 12:19:34'),(9414022,9414,'Syahcame','2022-07-22 12:19:34','2022-07-22 12:19:34'),(9414023,9414,'Bamgi','2022-07-22 12:19:34','2022-07-22 12:19:34'),(9414024,9414,'Yakomi','2022-07-22 12:19:34','2022-07-22 12:19:34'),(9414030,9414,'Obaa','2022-07-22 12:19:34','2022-07-22 12:19:34'),(9414031,9414,'Passue','2022-07-22 12:19:34','2022-07-22 12:19:34'),(9414040,9414,'Haju','2022-07-22 12:19:34','2022-07-22 12:19:34'),(9414050,9414,'Assue','2022-07-22 12:19:34','2022-07-22 12:19:34'),(9414060,9414,'Citakmitak','2022-07-22 12:19:35','2022-07-22 12:19:35'),(9414061,9414,'Kaibar','2022-07-22 12:19:35','2022-07-22 12:19:35'),(9414062,9414,'Passue Bawah','2022-07-22 12:19:35','2022-07-22 12:19:35'),(9414063,9414,'Ti-zain','2022-07-22 12:19:35','2022-07-22 12:19:35'),(9415010,9415,'Pantai Kasuari','2022-07-22 12:19:35','2022-07-22 12:19:35'),(9415011,9415,'Kopay','2022-07-22 12:19:35','2022-07-22 12:19:35'),(9415012,9415,'Der Koumur','2022-07-22 12:19:35','2022-07-22 12:19:35'),(9415013,9415,'Safan','2022-07-22 12:19:35','2022-07-22 12:19:35'),(9415014,9415,'Awyu','2022-07-22 12:19:35','2022-07-22 12:19:35'),(9415020,9415,'Fayit','2022-07-22 12:19:35','2022-07-22 12:19:35'),(9415021,9415,'Aswi','2022-07-22 12:19:35','2022-07-22 12:19:35'),(9415030,9415,'Atsy','2022-07-22 12:19:35','2022-07-22 12:19:35'),(9415031,9415,'Sirets','2022-07-22 12:19:35','2022-07-22 12:19:35'),(9415032,9415,'Ayip','2022-07-22 12:19:35','2022-07-22 12:19:35'),(9415033,9415,'Bectbamu','2022-07-22 12:19:35','2022-07-22 12:19:35'),(9415040,9415,'Suator','2022-07-22 12:19:35','2022-07-22 12:19:35'),(9415041,9415,'Kolf Braza','2022-07-22 12:19:35','2022-07-22 12:19:35'),(9415042,9415,'Joutu','2022-07-22 12:19:35','2022-07-22 12:19:35'),(9415043,9415,'Koroway Buluanop','2022-07-22 12:19:35','2022-07-22 12:19:35'),(9415050,9415,'Akat','2022-07-22 12:19:35','2022-07-22 12:19:35'),(9415051,9415,'Jetsy','2022-07-22 12:19:35','2022-07-22 12:19:35'),(9415060,9415,'Agats','2022-07-22 12:19:35','2022-07-22 12:19:35'),(9415070,9415,'Sawa Erma','2022-07-22 12:19:35','2022-07-22 12:19:35'),(9415071,9415,'Suru-suru','2022-07-22 12:19:35','2022-07-22 12:19:35'),(9415072,9415,'Unir Sirau','2022-07-22 12:19:35','2022-07-22 12:19:35'),(9415073,9415,'Joerat','2022-07-22 12:19:35','2022-07-22 12:19:35'),(9415074,9415,'Pulau Tiga','2022-07-22 12:19:35','2022-07-22 12:19:35'),(9416010,9416,'Kurima','2022-07-22 12:19:36','2022-07-22 12:19:36'),(9416011,9416,'Musaik','2022-07-22 12:19:36','2022-07-22 12:19:36'),(9416013,9416,'Dekai','2022-07-22 12:19:36','2022-07-22 12:19:36'),(9416014,9416,'Obio','2022-07-22 12:19:36','2022-07-22 12:19:36'),(9416015,9416,'Pasema','2022-07-22 12:19:36','2022-07-22 12:19:36'),(9416016,9416,'Amuma','2022-07-22 12:19:36','2022-07-22 12:19:36'),(9416017,9416,'Suru-suru','2022-07-22 12:19:36','2022-07-22 12:19:36'),(9416018,9416,'Wusama','2022-07-22 12:19:36','2022-07-22 12:19:36'),(9416019,9416,'Silimo','2022-07-22 12:19:36','2022-07-22 12:19:36'),(9416020,9416,'Ninia','2022-07-22 12:19:36','2022-07-22 12:19:36'),(9416021,9416,'Holuwon','2022-07-22 12:19:36','2022-07-22 12:19:36'),(9416022,9416,'Lolat','2022-07-22 12:19:36','2022-07-22 12:19:36'),(9416023,9416,'Langda','2022-07-22 12:19:36','2022-07-22 12:19:36'),(9416024,9416,'Bomela','2022-07-22 12:19:36','2022-07-22 12:19:36'),(9416025,9416,'Suntamon','2022-07-22 12:19:36','2022-07-22 12:19:36'),(9416026,9416,'Sobaham','2022-07-22 12:19:36','2022-07-22 12:19:36'),(9416027,9416,'Korupun','2022-07-22 12:19:36','2022-07-22 12:19:36'),(9416028,9416,'Sela','2022-07-22 12:19:36','2022-07-22 12:19:36'),(9416029,9416,'Kwelamdua','2022-07-22 12:19:36','2022-07-22 12:19:36'),(9416030,9416,'Anggruk','2022-07-22 12:19:36','2022-07-22 12:19:36'),(9416031,9416,'Panggema','2022-07-22 12:19:36','2022-07-22 12:19:36'),(9416032,9416,'Walma','2022-07-22 12:19:36','2022-07-22 12:19:36'),(9416033,9416,'Kosarek','2022-07-22 12:19:36','2022-07-22 12:19:36'),(9416034,9416,'Ubahak','2022-07-22 12:19:36','2022-07-22 12:19:36'),(9416035,9416,'Nalca','2022-07-22 12:19:36','2022-07-22 12:19:36'),(9416036,9416,'Puldama','2022-07-22 12:19:36','2022-07-22 12:19:36'),(9416037,9416,'Nipsan','2022-07-22 12:19:36','2022-07-22 12:19:36'),(9416041,9416,'Samenage','2022-07-22 12:19:36','2022-07-22 12:19:36'),(9416042,9416,'Tangma','2022-07-22 12:19:36','2022-07-22 12:19:36'),(9416043,9416,'Soba','2022-07-22 12:19:36','2022-07-22 12:19:36'),(9416044,9416,'Mugi','2022-07-22 12:19:36','2022-07-22 12:19:36'),(9416045,9416,'Yogosem','2022-07-22 12:19:36','2022-07-22 12:19:36'),(9416046,9416,'Kayo','2022-07-22 12:19:36','2022-07-22 12:19:36'),(9416047,9416,'Sumo','2022-07-22 12:19:36','2022-07-22 12:19:36'),(9416048,9416,'Hogio','2022-07-22 12:19:36','2022-07-22 12:19:36'),(9416049,9416,'Ukha','2022-07-22 12:19:36','2022-07-22 12:19:36'),(9416051,9416,'Werima','2022-07-22 12:19:36','2022-07-22 12:19:36'),(9416052,9416,'Soloikma','2022-07-22 12:19:36','2022-07-22 12:19:36'),(9416053,9416,'Seradala','2022-07-22 12:19:36','2022-07-22 12:19:36'),(9416054,9416,'Kabianggama','2022-07-22 12:19:36','2022-07-22 12:19:36'),(9416055,9416,'Kwikma','2022-07-22 12:19:36','2022-07-22 12:19:36'),(9416056,9416,'Hilipuk','2022-07-22 12:19:36','2022-07-22 12:19:36'),(9416057,9416,'Yahuliambut','2022-07-22 12:19:36','2022-07-22 12:19:36'),(9416058,9416,'Hereapini','2022-07-22 12:19:36','2022-07-22 12:19:36'),(9416059,9416,'Ubalihi','2022-07-22 12:19:36','2022-07-22 12:19:36'),(9416061,9416,'Talambo','2022-07-22 12:19:36','2022-07-22 12:19:36'),(9416062,9416,'Pronggoli','2022-07-22 12:19:36','2022-07-22 12:19:36'),(9416063,9416,'Endomen','2022-07-22 12:19:36','2022-07-22 12:19:36'),(9416065,9416,'Kona','2022-07-22 12:19:36','2022-07-22 12:19:36'),(9416066,9416,'Duram','2022-07-22 12:19:36','2022-07-22 12:19:36'),(9416067,9416,'Dirwemna','2022-07-22 12:19:36','2022-07-22 12:19:36'),(9417010,9417,'Iwur','2022-07-22 12:19:37','2022-07-22 12:19:37'),(9417011,9417,'Kawor','2022-07-22 12:19:37','2022-07-22 12:19:37'),(9417012,9417,'Tarup','2022-07-22 12:19:37','2022-07-22 12:19:37'),(9417013,9417,'Awinbon','2022-07-22 12:19:37','2022-07-22 12:19:37'),(9417020,9417,'Oksibil','2022-07-22 12:19:37','2022-07-22 12:19:37'),(9417021,9417,'Pepera','2022-07-22 12:19:37','2022-07-22 12:19:37'),(9417022,9417,'Alemsom','2022-07-22 12:19:37','2022-07-22 12:19:37'),(9417023,9417,'Serambakon','2022-07-22 12:19:37','2022-07-22 12:19:37'),(9417024,9417,'Kolomdol','2022-07-22 12:19:37','2022-07-22 12:19:37'),(9417025,9417,'Oksop','2022-07-22 12:19:37','2022-07-22 12:19:37'),(9417026,9417,'Ok Bape','2022-07-22 12:19:37','2022-07-22 12:19:37'),(9417027,9417,'Ok Aon','2022-07-22 12:19:37','2022-07-22 12:19:37'),(9417030,9417,'Borme','2022-07-22 12:19:37','2022-07-22 12:19:37'),(9417031,9417,'Bime','2022-07-22 12:19:37','2022-07-22 12:19:37'),(9417032,9417,'Epumek','2022-07-22 12:19:37','2022-07-22 12:19:37'),(9417033,9417,'Weime','2022-07-22 12:19:37','2022-07-22 12:19:37'),(9417034,9417,'Pamek','2022-07-22 12:19:37','2022-07-22 12:19:37'),(9417035,9417,'Nongme','2022-07-22 12:19:37','2022-07-22 12:19:37'),(9417036,9417,'Batani','2022-07-22 12:19:37','2022-07-22 12:19:37'),(9417040,9417,'Okbi','2022-07-22 12:19:37','2022-07-22 12:19:37'),(9417041,9417,'Aboy','2022-07-22 12:19:37','2022-07-22 12:19:37'),(9417042,9417,'Okbab','2022-07-22 12:19:37','2022-07-22 12:19:37'),(9417043,9417,'Teiraplu','2022-07-22 12:19:37','2022-07-22 12:19:37'),(9417044,9417,'Yefta','2022-07-22 12:19:37','2022-07-22 12:19:37'),(9417050,9417,'Kiwirok','2022-07-22 12:19:37','2022-07-22 12:19:37'),(9417051,9417,'Kiwirok Timur','2022-07-22 12:19:37','2022-07-22 12:19:37'),(9417052,9417,'Oksebang','2022-07-22 12:19:37','2022-07-22 12:19:37'),(9417053,9417,'Okhika','2022-07-22 12:19:37','2022-07-22 12:19:37'),(9417054,9417,'Oklip','2022-07-22 12:19:37','2022-07-22 12:19:37'),(9417055,9417,'Oksamol','2022-07-22 12:19:37','2022-07-22 12:19:37'),(9417056,9417,'Okbemta','2022-07-22 12:19:37','2022-07-22 12:19:37'),(9417060,9417,'Batom','2022-07-22 12:19:37','2022-07-22 12:19:37'),(9417061,9417,'Murkim','2022-07-22 12:19:37','2022-07-22 12:19:37'),(9417062,9417,'Mofinop','2022-07-22 12:19:37','2022-07-22 12:19:37'),(9418010,9418,'Kanggime','2022-07-22 12:19:37','2022-07-22 12:19:37'),(9418011,9418,'Woniki','2022-07-22 12:19:37','2022-07-22 12:19:37'),(9418012,9418,'Nabunage','2022-07-22 12:19:37','2022-07-22 12:19:37'),(9418013,9418,'Gilubandu','2022-07-22 12:19:37','2022-07-22 12:19:37'),(9418014,9418,'Wakuo','2022-07-22 12:19:37','2022-07-22 12:19:37'),(9418015,9418,'Aweku','2022-07-22 12:19:37','2022-07-22 12:19:37'),(9418016,9418,'Bogonuk','2022-07-22 12:19:37','2022-07-22 12:19:37'),(9418020,9418,'Karubaga','2022-07-22 12:19:37','2022-07-22 12:19:37'),(9418021,9418,'Goyage','2022-07-22 12:19:37','2022-07-22 12:19:37'),(9418022,9418,'Wunin','2022-07-22 12:19:37','2022-07-22 12:19:37'),(9418023,9418,'Kondaga','2022-07-22 12:19:37','2022-07-22 12:19:37'),(9418024,9418,'Nelawi','2022-07-22 12:19:37','2022-07-22 12:19:37'),(9418025,9418,'Kuari','2022-07-22 12:19:37','2022-07-22 12:19:37'),(9418026,9418,'Lianogoma','2022-07-22 12:19:37','2022-07-22 12:19:37'),(9418027,9418,'Biuk','2022-07-22 12:19:37','2022-07-22 12:19:37'),(9418030,9418,'Bokondini','2022-07-22 12:19:37','2022-07-22 12:19:37'),(9418031,9418,'Bokoneri','2022-07-22 12:19:37','2022-07-22 12:19:37'),(9418032,9418,'Bewani','2022-07-22 12:19:37','2022-07-22 12:19:37'),(9418040,9418,'Kembu','2022-07-22 12:19:37','2022-07-22 12:19:37'),(9418041,9418,'Wina','2022-07-22 12:19:37','2022-07-22 12:19:37'),(9418042,9418,'Umagi','2022-07-22 12:19:37','2022-07-22 12:19:37'),(9418043,9418,'Panaga','2022-07-22 12:19:38','2022-07-22 12:19:38'),(9418044,9418,'Poganeri','2022-07-22 12:19:38','2022-07-22 12:19:38'),(9418045,9418,'Kamboneri','2022-07-22 12:19:38','2022-07-22 12:19:38'),(9418046,9418,'Air Garam','2022-07-22 12:19:38','2022-07-22 12:19:38'),(9418047,9418,'Dow','2022-07-22 12:19:38','2022-07-22 12:19:38'),(9418048,9418,'Wari / Taiyeve','2022-07-22 12:19:38','2022-07-22 12:19:38'),(9418049,9418,'Egiam','2022-07-22 12:19:38','2022-07-22 12:19:38'),(9418051,9418,'Nunggawi','2022-07-22 12:19:38','2022-07-22 12:19:38'),(9418060,9418,'Kubu','2022-07-22 12:19:38','2022-07-22 12:19:38'),(9418061,9418,'Anawi','2022-07-22 12:19:38','2022-07-22 12:19:38'),(9418062,9418,'Wugi','2022-07-22 12:19:38','2022-07-22 12:19:38'),(9418070,9418,'Geya','2022-07-22 12:19:38','2022-07-22 12:19:38'),(9418071,9418,'Wenam','2022-07-22 12:19:38','2022-07-22 12:19:38'),(9418080,9418,'Numba','2022-07-22 12:19:38','2022-07-22 12:19:38'),(9418081,9418,'Kai','2022-07-22 12:19:38','2022-07-22 12:19:38'),(9418090,9418,'Dundu','2022-07-22 12:19:38','2022-07-22 12:19:38'),(9418100,9418,'Gundagi','2022-07-22 12:19:38','2022-07-22 12:19:38'),(9418110,9418,'Timori','2022-07-22 12:19:38','2022-07-22 12:19:38'),(9418121,9418,'Yuneri','2022-07-22 12:19:38','2022-07-22 12:19:38'),(9418125,9418,'Tagime','2022-07-22 12:19:38','2022-07-22 12:19:38'),(9418126,9418,'Danime','2022-07-22 12:19:38','2022-07-22 12:19:38'),(9418127,9418,'Yuko','2022-07-22 12:19:38','2022-07-22 12:19:38'),(9418541,9418,'Telenggeme','2022-07-22 12:19:38','2022-07-22 12:19:38'),(9418542,9418,'Gika','2022-07-22 12:19:38','2022-07-22 12:19:38'),(9418543,9418,'Tagineri','2022-07-22 12:19:38','2022-07-22 12:19:38'),(9419021,9419,'Pantai Timur Bagian Barat','2022-07-22 12:19:38','2022-07-22 12:19:38'),(9419022,9419,'Pantai Timur','2022-07-22 12:19:38','2022-07-22 12:19:38'),(9419024,9419,'Sungai Biri','2022-07-22 12:19:38','2022-07-22 12:19:38'),(9419025,9419,'Veen','2022-07-22 12:19:38','2022-07-22 12:19:38'),(9419031,9419,'Bonggo','2022-07-22 12:19:38','2022-07-22 12:19:38'),(9419032,9419,'Bonggo Timur','2022-07-22 12:19:38','2022-07-22 12:19:38'),(9419033,9419,'Bonggo Barat','2022-07-22 12:19:38','2022-07-22 12:19:38'),(9419040,9419,'Tor Atas','2022-07-22 12:19:38','2022-07-22 12:19:38'),(9419041,9419,'Ismari','2022-07-22 12:19:38','2022-07-22 12:19:38'),(9419050,9419,'Sarmi','2022-07-22 12:19:38','2022-07-22 12:19:38'),(9419051,9419,'Sarmi Timur','2022-07-22 12:19:38','2022-07-22 12:19:38'),(9419052,9419,'Sarmi Selatan','2022-07-22 12:19:38','2022-07-22 12:19:38'),(9419053,9419,'Sobey','2022-07-22 12:19:38','2022-07-22 12:19:38'),(9419054,9419,'Muara Tor','2022-07-22 12:19:38','2022-07-22 12:19:38'),(9419055,9419,'Verkam','2022-07-22 12:19:38','2022-07-22 12:19:38'),(9419060,9419,'Pantai Barat','2022-07-22 12:19:38','2022-07-22 12:19:38'),(9419061,9419,'Apawer Hulu','2022-07-22 12:19:38','2022-07-22 12:19:38'),(9419062,9419,'Apawer Hilir','2022-07-22 12:19:38','2022-07-22 12:19:38'),(9419063,9419,'Apawer Tengah','2022-07-22 12:19:38','2022-07-22 12:19:38'),(9420010,9420,'Web','2022-07-22 12:19:39','2022-07-22 12:19:39'),(9420011,9420,'Towe','2022-07-22 12:19:39','2022-07-22 12:19:39'),(9420012,9420,'Yaffi','2022-07-22 12:19:39','2022-07-22 12:19:39'),(9420020,9420,'Senggi','2022-07-22 12:19:39','2022-07-22 12:19:39'),(9420021,9420,'Kaisenar','2022-07-22 12:19:39','2022-07-22 12:19:39'),(9420030,9420,'Waris','2022-07-22 12:19:39','2022-07-22 12:19:39'),(9420040,9420,'Arso','2022-07-22 12:19:39','2022-07-22 12:19:39'),(9420041,9420,'Arso Timur','2022-07-22 12:19:39','2022-07-22 12:19:39'),(9420042,9420,'Arso Barat','2022-07-22 12:19:39','2022-07-22 12:19:39'),(9420043,9420,'Mannem','2022-07-22 12:19:39','2022-07-22 12:19:39'),(9420050,9420,'Skanto','2022-07-22 12:19:39','2022-07-22 12:19:39'),(9426010,9426,'Waropen Bawah','2022-07-22 12:19:39','2022-07-22 12:19:39'),(9426011,9426,'Inggerus','2022-07-22 12:19:39','2022-07-22 12:19:39'),(9426012,9426,'Urei Faisei','2022-07-22 12:19:39','2022-07-22 12:19:39'),(9426013,9426,'Oudate','2022-07-22 12:19:39','2022-07-22 12:19:39'),(9426014,9426,'Wapoga','2022-07-22 12:19:39','2022-07-22 12:19:39'),(9426020,9426,'Masirei','2022-07-22 12:19:39','2022-07-22 12:19:39'),(9426021,9426,'Risei Sayati','2022-07-22 12:19:39','2022-07-22 12:19:39'),(9426022,9426,'Demba','2022-07-22 12:19:39','2022-07-22 12:19:39'),(9426023,9426,'Soyoi Mambai','2022-07-22 12:19:39','2022-07-22 12:19:39'),(9426024,9426,'Wonti','2022-07-22 12:19:39','2022-07-22 12:19:39'),(9426030,9426,'Walani','2022-07-22 12:19:39','2022-07-22 12:19:39'),(9426040,9426,'Kirihi','2022-07-22 12:19:40','2022-07-22 12:19:40'),(9427010,9427,'Supiori Selatan','2022-07-22 12:19:40','2022-07-22 12:19:40'),(9427011,9427,'Kepulauan Aruri','2022-07-22 12:19:40','2022-07-22 12:19:40'),(9427020,9427,'Supiori Utara','2022-07-22 12:19:40','2022-07-22 12:19:40'),(9427021,9427,'Supiori Barat','2022-07-22 12:19:40','2022-07-22 12:19:40'),(9427030,9427,'Supiori Timur','2022-07-22 12:19:40','2022-07-22 12:19:40'),(9428030,9428,'Waropen Atas','2022-07-22 12:19:41','2022-07-22 12:19:41'),(9428031,9428,'Benuki','2022-07-22 12:19:41','2022-07-22 12:19:41'),(9428032,9428,'Sawai','2022-07-22 12:19:41','2022-07-22 12:19:41'),(9428040,9428,'Mamberamo Ilir','2022-07-22 12:19:41','2022-07-22 12:19:41'),(9428050,9428,'Mamberamo Tengah','2022-07-22 12:19:41','2022-07-22 12:19:41'),(9428051,9428,'Iwaso','2022-07-22 12:19:41','2022-07-22 12:19:41'),(9428060,9428,'Mamberamo Tengah Timur','2022-07-22 12:19:41','2022-07-22 12:19:41'),(9428070,9428,'Rofaer','2022-07-22 12:19:41','2022-07-22 12:19:41'),(9428080,9428,'Mamberamo Ulu','2022-07-22 12:19:41','2022-07-22 12:19:41'),(9429010,9429,'Wosak','2022-07-22 12:19:43','2022-07-22 12:19:43'),(9429011,9429,'Moba','2022-07-22 12:19:44','2022-07-22 12:19:44'),(9429012,9429,'Pija','2022-07-22 12:19:44','2022-07-22 12:19:44'),(9429013,9429,'Kora','2022-07-22 12:19:44','2022-07-22 12:19:44'),(9429020,9429,'Kenyam','2022-07-22 12:19:44','2022-07-22 12:19:44'),(9429021,9429,'Mbuwa Tengah','2022-07-22 12:19:44','2022-07-22 12:19:44'),(9429022,9429,'Krepkuri','2022-07-22 12:19:44','2022-07-22 12:19:44'),(9429023,9429,'Embetpem','2022-07-22 12:19:44','2022-07-22 12:19:44'),(9429030,9429,'Geselma','2022-07-22 12:19:44','2022-07-22 12:19:44'),(9429031,9429,'Kilmid','2022-07-22 12:19:44','2022-07-22 12:19:44'),(9429032,9429,'Yenggelo','2022-07-22 12:19:44','2022-07-22 12:19:44'),(9429033,9429,'Alama','2022-07-22 12:19:44','2022-07-22 12:19:44'),(9429034,9429,'Meborok','2022-07-22 12:19:44','2022-07-22 12:19:44'),(9429040,9429,'Mapenduma','2022-07-22 12:19:44','2022-07-22 12:19:44'),(9429041,9429,'Kroptak','2022-07-22 12:19:44','2022-07-22 12:19:44'),(9429042,9429,'Paro','2022-07-22 12:19:44','2022-07-22 12:19:44'),(9429043,9429,'Kegayem','2022-07-22 12:19:44','2022-07-22 12:19:44'),(9429050,9429,'Mugi','2022-07-22 12:19:44','2022-07-22 12:19:44'),(9429051,9429,'Yal','2022-07-22 12:19:44','2022-07-22 12:19:44'),(9429052,9429,'Mam','2022-07-22 12:19:44','2022-07-22 12:19:44'),(9429060,9429,'Yigi','2022-07-22 12:19:44','2022-07-22 12:19:44'),(9429061,9429,'Dal','2022-07-22 12:19:44','2022-07-22 12:19:44'),(9429062,9429,'Nirkuri','2022-07-22 12:19:44','2022-07-22 12:19:44'),(9429063,9429,'Inikgal','2022-07-22 12:19:44','2022-07-22 12:19:44'),(9429070,9429,'Mbuwa','2022-07-22 12:19:44','2022-07-22 12:19:44'),(9429071,9429,'Iniye','2022-07-22 12:19:44','2022-07-22 12:19:44'),(9429072,9429,'Wutpaga','2022-07-22 12:19:44','2022-07-22 12:19:44'),(9429073,9429,'Nenggeangin','2022-07-22 12:19:44','2022-07-22 12:19:44'),(9429074,9429,'Mbulmu Yalma','2022-07-22 12:19:44','2022-07-22 12:19:44'),(9429080,9429,'Gearek','2022-07-22 12:19:44','2022-07-22 12:19:44'),(9429081,9429,'Pasir Putih','2022-07-22 12:19:44','2022-07-22 12:19:44'),(9429082,9429,'Wusi','2022-07-22 12:19:44','2022-07-22 12:19:44'),(9430010,9430,'Makki','2022-07-22 12:19:48','2022-07-22 12:19:48'),(9430011,9430,'Gupura','2022-07-22 12:19:48','2022-07-22 12:19:48'),(9430012,9430,'Kolawa','2022-07-22 12:19:48','2022-07-22 12:19:48'),(9430013,9430,'Gelok Beam','2022-07-22 12:19:48','2022-07-22 12:19:48'),(9430014,9430,'Awina','2022-07-22 12:19:48','2022-07-22 12:19:48'),(9430020,9430,'Pirime','2022-07-22 12:19:48','2022-07-22 12:19:48'),(9430021,9430,'Buguk Gona','2022-07-22 12:19:48','2022-07-22 12:19:48'),(9430022,9430,'Milimbo','2022-07-22 12:19:48','2022-07-22 12:19:48'),(9430023,9430,'Gollo','2022-07-22 12:19:48','2022-07-22 12:19:48'),(9430024,9430,'Wiringgabut','2022-07-22 12:19:48','2022-07-22 12:19:48'),(9430030,9430,'Tiom','2022-07-22 12:19:48','2022-07-22 12:19:48'),(9430031,9430,'Nogi','2022-07-22 12:19:48','2022-07-22 12:19:48'),(9430032,9430,'Mokoni','2022-07-22 12:19:48','2022-07-22 12:19:48'),(9430033,9430,'Niname','2022-07-22 12:19:48','2022-07-22 12:19:48'),(9430034,9430,'Yiginua','2022-07-22 12:19:48','2022-07-22 12:19:48'),(9430035,9430,'Tiom Ollo','2022-07-22 12:19:48','2022-07-22 12:19:48'),(9430036,9430,'Yugunwi','2022-07-22 12:19:48','2022-07-22 12:19:48'),(9430037,9430,'Lannyna','2022-07-22 12:19:48','2022-07-22 12:19:48'),(9430040,9430,'Balingga','2022-07-22 12:19:48','2022-07-22 12:19:48'),(9430041,9430,'Balingga Barat','2022-07-22 12:19:48','2022-07-22 12:19:48'),(9430042,9430,'Bruwa','2022-07-22 12:19:48','2022-07-22 12:19:48'),(9430043,9430,'Ayumnati','2022-07-22 12:19:48','2022-07-22 12:19:48'),(9430050,9430,'Kuyawage','2022-07-22 12:19:48','2022-07-22 12:19:48'),(9430051,9430,'Wano Barat','2022-07-22 12:19:48','2022-07-22 12:19:48'),(9430060,9430,'Malagaineri','2022-07-22 12:19:48','2022-07-22 12:19:48'),(9430061,9430,'Melagai','2022-07-22 12:19:48','2022-07-22 12:19:48'),(9430070,9430,'Tiomneri','2022-07-22 12:19:48','2022-07-22 12:19:48'),(9430071,9430,'Wereka','2022-07-22 12:19:48','2022-07-22 12:19:48'),(9430080,9430,'Dimba','2022-07-22 12:19:48','2022-07-22 12:19:48'),(9430081,9430,'Kelulome','2022-07-22 12:19:48','2022-07-22 12:19:48'),(9430082,9430,'Nikogwe','2022-07-22 12:19:48','2022-07-22 12:19:48'),(9430090,9430,'Gamelia','2022-07-22 12:19:48','2022-07-22 12:19:48'),(9430091,9430,'Karu','2022-07-22 12:19:48','2022-07-22 12:19:48'),(9430092,9430,'Yiluk','2022-07-22 12:19:48','2022-07-22 12:19:48'),(9430093,9430,'Guna','2022-07-22 12:19:48','2022-07-22 12:19:48'),(9430100,9430,'Poga','2022-07-22 12:19:48','2022-07-22 12:19:48'),(9430101,9430,'Muara','2022-07-22 12:19:48','2022-07-22 12:19:48'),(9431010,9431,'Kobakma','2022-07-22 12:19:48','2022-07-22 12:19:48'),(9431020,9431,'Ilugwa','2022-07-22 12:19:48','2022-07-22 12:19:48'),(9431030,9431,'Kelila','2022-07-22 12:19:48','2022-07-22 12:19:48'),(9431040,9431,'Eragayam','2022-07-22 12:19:48','2022-07-22 12:19:48'),(9431050,9431,'Megambilis','2022-07-22 12:19:48','2022-07-22 12:19:48'),(9432010,9432,'Welarek','2022-07-22 12:19:49','2022-07-22 12:19:49'),(9432020,9432,'Apalapsili','2022-07-22 12:19:49','2022-07-22 12:19:49'),(9432030,9432,'Abenaho','2022-07-22 12:19:49','2022-07-22 12:19:49'),(9432040,9432,'Elelim','2022-07-22 12:19:49','2022-07-22 12:19:49'),(9432050,9432,'Benawa','2022-07-22 12:19:49','2022-07-22 12:19:49'),(9433010,9433,'Agadugume','2022-07-22 12:19:50','2022-07-22 12:19:50'),(9433011,9433,'Lambewi','2022-07-22 12:19:50','2022-07-22 12:19:50'),(9433012,9433,'Oneri','2022-07-22 12:19:50','2022-07-22 12:19:50'),(9433020,9433,'Gome','2022-07-22 12:19:50','2022-07-22 12:19:50'),(9433021,9433,'Amungkalpia','2022-07-22 12:19:50','2022-07-22 12:19:50'),(9433022,9433,'Gome Utara','2022-07-22 12:19:50','2022-07-22 12:19:50'),(9433023,9433,'Erelmakawia','2022-07-22 12:19:50','2022-07-22 12:19:50'),(9433030,9433,'Ilaga','2022-07-22 12:19:50','2022-07-22 12:19:50'),(9433031,9433,'Ilaga Utara','2022-07-22 12:19:50','2022-07-22 12:19:50'),(9433032,9433,'Mabugi','2022-07-22 12:19:50','2022-07-22 12:19:50'),(9433033,9433,'Omukia','2022-07-22 12:19:50','2022-07-22 12:19:50'),(9433040,9433,'Sinak','2022-07-22 12:19:50','2022-07-22 12:19:50'),(9433041,9433,'Sinak Barat','2022-07-22 12:19:50','2022-07-22 12:19:50'),(9433042,9433,'MageÁbume','2022-07-22 12:19:50','2022-07-22 12:19:50'),(9433043,9433,'Yugumuak','2022-07-22 12:19:50','2022-07-22 12:19:50'),(9433050,9433,'Pogoma','2022-07-22 12:19:50','2022-07-22 12:19:50'),(9433051,9433,'Kembru','2022-07-22 12:19:50','2022-07-22 12:19:50'),(9433052,9433,'Bina','2022-07-22 12:19:50','2022-07-22 12:19:50'),(9433060,9433,'Wangbe','2022-07-22 12:19:50','2022-07-22 12:19:50'),(9433061,9433,'Ogamanim','2022-07-22 12:19:50','2022-07-22 12:19:50'),(9433070,9433,'Beoga','2022-07-22 12:19:50','2022-07-22 12:19:50'),(9433071,9433,'Beoga Barat','2022-07-22 12:19:50','2022-07-22 12:19:50'),(9433072,9433,'Beoga Timur','2022-07-22 12:19:50','2022-07-22 12:19:50'),(9433080,9433,'Doufo','2022-07-22 12:19:50','2022-07-22 12:19:50'),(9433081,9433,'Dervos','2022-07-22 12:19:50','2022-07-22 12:19:50'),(9434010,9434,'Sukikai Selatan','2022-07-22 12:19:50','2022-07-22 12:19:50'),(9434020,9434,'Piyaiye','2022-07-22 12:19:50','2022-07-22 12:19:50'),(9434030,9434,'Mapia Barat','2022-07-22 12:19:50','2022-07-22 12:19:50'),(9434040,9434,'Mapia Tengah','2022-07-22 12:19:50','2022-07-22 12:19:50'),(9434050,9434,'Mapia','2022-07-22 12:19:50','2022-07-22 12:19:50'),(9434060,9434,'Dogiyai','2022-07-22 12:19:50','2022-07-22 12:19:50'),(9434070,9434,'Kamu Selatan','2022-07-22 12:19:50','2022-07-22 12:19:50'),(9434080,9434,'Kamu','2022-07-22 12:19:50','2022-07-22 12:19:50'),(9434090,9434,'Kamu Timur','2022-07-22 12:19:50','2022-07-22 12:19:50'),(9434100,9434,'Kamu Utara','2022-07-22 12:19:50','2022-07-22 12:19:50'),(9435010,9435,'Homeyo','2022-07-22 12:19:51','2022-07-22 12:19:51'),(9435020,9435,'Sugapa','2022-07-22 12:19:51','2022-07-22 12:19:51'),(9435030,9435,'Hitadipa','2022-07-22 12:19:51','2022-07-22 12:19:51'),(9435040,9435,'Agisiga','2022-07-22 12:19:51','2022-07-22 12:19:51'),(9435050,9435,'Biandoga','2022-07-22 12:19:51','2022-07-22 12:19:51'),(9435060,9435,'Wandai','2022-07-22 12:19:51','2022-07-22 12:19:51'),(9436010,9436,'Kapiraya','2022-07-22 12:19:52','2022-07-22 12:19:52'),(9436020,9436,'Tigi Barat','2022-07-22 12:19:52','2022-07-22 12:19:52'),(9436030,9436,'Tigi','2022-07-22 12:19:52','2022-07-22 12:19:52'),(9436040,9436,'Tigi Timur','2022-07-22 12:19:52','2022-07-22 12:19:52'),(9436050,9436,'Bowobado','2022-07-22 12:19:52','2022-07-22 12:19:52'),(9471010,9471,'Muara Tami','2022-07-22 12:19:52','2022-07-22 12:19:52'),(9471020,9471,'Abepura','2022-07-22 12:19:52','2022-07-22 12:19:52'),(9471021,9471,'Heram','2022-07-22 12:19:52','2022-07-22 12:19:52'),(9471030,9471,'Jayapura Selatan','2022-07-22 12:19:52','2022-07-22 12:19:52'),(9471040,9471,'Jayapura Utara','2022-07-22 12:19:52','2022-07-22 12:19:52');
/*!40000 ALTER TABLE `sub_districts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tenants`
--

DROP TABLE IF EXISTS `tenants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tenants` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `nik` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_district_id` bigint unsigned NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ktp_picture` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tenants_user_id_foreign` (`user_id`),
  KEY `tenants_sub_district_id_foreign` (`sub_district_id`),
  CONSTRAINT `tenants_sub_district_id_foreign` FOREIGN KEY (`sub_district_id`) REFERENCES `sub_districts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tenants_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tenants`
--

LOCK TABLES `tenants` WRITE;
/*!40000 ALTER TABLE `tenants` DISABLE KEYS */;
/*!40000 ALTER TABLE `tenants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Admin','admin@mail.com','2022-07-22 12:19:52','$2y$10$90l20c4B6uD1NFUD9.jeduZ5x3H3G.u.mb9V9An1MsfcCGbp6zDQG',NULL,'2022-07-22 12:19:52','2022-07-22 12:19:52'),(2,'ketua','ketua@mail.com','2022-07-22 12:19:52','$2y$10$vTxX1hmXgmHgeL66QBQ2f.sn/BqNtWYg0u.THW6EV6lTas/zPdXPi',NULL,'2022-07-22 12:19:53','2022-07-22 12:19:53');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `verify_users`
--

DROP TABLE IF EXISTS `verify_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `verify_users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `verify_users_user_id_foreign` (`user_id`),
  CONSTRAINT `verify_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `verify_users`
--

LOCK TABLES `verify_users` WRITE;
/*!40000 ALTER TABLE `verify_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `verify_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-23  6:32:09
