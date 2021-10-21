-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: sym_4_login
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctrine_migration_versions`
--

LOCK TABLES `doctrine_migration_versions` WRITE;
/*!40000 ALTER TABLE `doctrine_migration_versions` DISABLE KEYS */;
INSERT INTO `doctrine_migration_versions` VALUES ('DoctrineMigrations\\Version20211020075814','2021-10-20 07:58:27',206),('DoctrineMigrations\\Version20211020112315','2021-10-20 11:23:58',72),('DoctrineMigrations\\Version20211020131545','2021-10-20 13:15:53',71),('DoctrineMigrations\\Version20211020141303','2021-10-20 14:14:20',83),('DoctrineMigrations\\Version20211020141853','2021-10-20 14:19:03',252);
/*!40000 ALTER TABLE `doctrine_migration_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `furniture`
--

DROP TABLE IF EXISTS `furniture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `furniture` (
  `id` int NOT NULL AUTO_INCREMENT,
  `inventory_num` int NOT NULL,
  `price` int NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `furniture`
--

LOCK TABLES `furniture` WRITE;
/*!40000 ALTER TABLE `furniture` DISABLE KEYS */;
INSERT INTO `furniture` VALUES (21,208495,58632,171),(22,397680,280232,119),(23,312412,510862,498),(24,574485,708034,553),(25,692136,764302,330),(26,623750,106542,355),(27,384034,225048,592),(28,134595,164850,767),(29,363912,11876,737),(30,556426,448485,929);
/*!40000 ALTER TABLE `furniture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modell`
--

DROP TABLE IF EXISTS `modell`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modell` (
  `id` int NOT NULL AUTO_INCREMENT,
  `material` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descreption` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `furniture_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_69DE3DFCCF5485C3` (`furniture_id`),
  CONSTRAINT `FK_69DE3DFCCF5485C3` FOREIGN KEY (`furniture_id`) REFERENCES `furniture` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modell`
--

LOCK TABLES `modell` WRITE;
/*!40000 ALTER TABLE `modell` DISABLE KEYS */;
INSERT INTO `modell` VALUES (21,'aut','Cyan','So they got their tails in their paws. \'And how do you know about this business?\' the King say in a very humble tone, going down on their slates, when the White Rabbit, trotting slowly back to my.','neque',21),(22,'fuga','Crimson','So she sat on, with closed eyes, and feebly stretching out one paw, trying to box her own ears for having missed their turns, and she felt sure it would be very likely to eat some of the jurymen.','vitae',22),(23,'saepe','DarkGoldenRod','Now you know.\' \'Not at all,\' said the King, \'that only makes the matter on, What would become of it; and as he spoke. \'UNimportant, of course, to begin lessons: you\'d only have to go on crying in.','deserunt',23),(24,'repudiandae','FloralWhite','Duchess sneezed occasionally; and as Alice could hardly hear the Rabbit just under the sea,\' the Gryphon in an impatient tone: \'explanations take such a thing. After a time there could be NO mistake.','in',24),(25,'voluptas','Indigo','Who ever saw in my own tears! That WILL be a footman in livery, with a lobster as a last resource, she put one arm out of that is, but I think I can do without lobsters, you know. But do cats eat.','voluptatem',25),(26,'omnis','SkyBlue','VERY good opportunity for showing off a little pattering of feet in a VERY turn-up nose, much more like a snout than a rat-hole: she knelt down and began bowing to the other bit. Her chin was.','debitis',26),(27,'accusamus','LightSkyBlue','Dormouse! Turn that Dormouse out of the guinea-pigs cheered, and was a general chorus of voices asked. \'Why, SHE, of course,\' said the White Rabbit, jumping up in her hand, watching the setting sun.','dolor',27),(28,'omnis','Red','Alice waited till she had gone through that day. \'No, no!\' said the King. Here one of the Nile On every golden scale! \'How cheerfully he seems to suit them!\' \'I haven\'t opened it yet,\' said the.','ducimus',28),(29,'unde','DarkGreen','I\'m not myself, you see.\' \'I don\'t believe it,\' said the Hatter. This piece of evidence we\'ve heard yet,\' said Alice; \'I can\'t remember half of fright and half of them--and it belongs to a.','aut',29),(30,'corporis','YellowGreen','Duchess; \'and that\'s a fact.\' Alice did not wish to offend the Dormouse shall!\' they both sat silent and looked at it, busily painting them red. Alice thought over all the jurymen are back in a.','impedit',30);
/*!40000 ALTER TABLE `modell` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (125,'admin@admin.com','[\"ROLE_ADMIN\"]','$argon2id$v=19$m=65536,t=4,p=1$bWZVRkpiY2I3VEc5cW84bg$6SZWulBJPbpTF5H9RO+mSyEKqVtYnkiJkVdI8/c0yMk','Admin',1),(126,'user@user.com','[\"ROLE_USER\"]','$argon2id$v=19$m=65536,t=4,p=1$SFpxUGUwMDc4bjkxTGJjbQ$0jxGUzUelGuIhZoURWZbgoSMdt3AAXEmS6X23sYohoc','User',1),(127,'sonia45@cronin.com','[\"ROLE_USER\"]','$argon2id$v=19$m=65536,t=4,p=1$QjVnM1M0S2Y3cmNuVWpOUA$BwbzqhhuZaNs6KByq3tRVIeNkFKHLwiNpcEvpaD9ATw','Prof. Leslie Watsica',0),(128,'leonel75@yahoo.com','[\"ROLE_USER\"]','$argon2id$v=19$m=65536,t=4,p=1$a0FPLkNBVjgzeUFVMUhrNA$BRL2T3EFsb3tLRE8YZAMVHJ6t5rO1SEWgQ34BVV/qJM','Mr. Boyd Bergstrom MD',0),(129,'deckow.emory@yahoo.com','[\"ROLE_USER\"]','$argon2id$v=19$m=65536,t=4,p=1$SzBpaXBCclZJNkdNY3N1bw$0M/2JNu66wlUn9BPjhk+EPF7tUCeeJ2WWv1glEuub98','Aliya Feil',0),(130,'johann66@koch.biz','[\"ROLE_USER\"]','$argon2id$v=19$m=65536,t=4,p=1$eDVHdk1LNmk4a3R6T0JyTg$6xpK8fX64q4bVOpJb38/Dq1h4r/Ao2pQhWUIWm83xC0','Henriette Kuhic',0),(131,'gerardo.torphy@yahoo.com','[\"ROLE_USER\"]','$argon2id$v=19$m=65536,t=4,p=1$U1hyTklGaHk3Wk1OdEtITQ$cCP5P4GDgqfW8ebqrMsqxt9gT0byIBlGgij8G8zqvFk','Rita Smitham I',1),(132,'upton.walter@ohara.com','[\"ROLE_USER\"]','$argon2id$v=19$m=65536,t=4,p=1$dldjMGFBVHdaRzVkaGVhaA$gCT4TzCbxmK/EDYpaWkPwqFWSSO9BnVzrnQg8692hwY','Dr. Bradford Konopelski',1),(133,'zschamberger@crona.com','[\"ROLE_USER\"]','$argon2id$v=19$m=65536,t=4,p=1$bWRqNC51dlMzVE5MZGtPTA$lRVFDM3aUztcn06ImvaAdyaCfHHSPAYfAxKgPx5uT+Y','Maribel Skiles',1),(134,'ebert.meda@kemmer.com','[\"ROLE_USER\"]','$argon2id$v=19$m=65536,t=4,p=1$T2JiZHhBNlRlSGphNXY3VQ$cMOf+lPLZDGsb3OPvJG7Rr+93pNaASXlr7LA4I5y+gA','Mr. Royal Jakubowski IV',0),(135,'cbrown@yahoo.com','[\"ROLE_USER\"]','$argon2id$v=19$m=65536,t=4,p=1$OU9mZkN3ZXJ4Y0x3a2hRYw$IWaHc4D4VIjG1x/4HfQAxfPmnn+GlbUWI6Ky8UUEIzQ','Dr. Winston Fadel',0),(136,'gulgowski.lou@kub.info','[\"ROLE_USER\"]','$argon2id$v=19$m=65536,t=4,p=1$OGRhekhIYTZIOWhVYkswMQ$3Za1adro2b5O/y/71xLq3EdZJ4EzVuvTq0U5jSxPq+8','Emil Hand III',1);
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

-- Dump completed on 2021-10-21 10:47:33
