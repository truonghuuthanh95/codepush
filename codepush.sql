-- MySQL dump 10.13  Distrib 8.0.27, for macos11 (x86_64)
--
-- Host: 178.128.51.79    Database: test
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `interactions`
--

DROP TABLE IF EXISTS `interactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `interactions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` varchar(100) DEFAULT NULL,
  `interactToUser` varchar(100) DEFAULT NULL,
  `isLike` tinyint DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interactions`
--

LOCK TABLES `interactions` WRITE;
/*!40000 ALTER TABLE `interactions` DISABLE KEYS */;
INSERT INTO `interactions` VALUES (3,'60d0fe4f5311236168a10a05','1231241212121',1,'2022-03-31 09:43:48','2022-03-31 09:43:48',NULL),(4,'60d0fe4f5311236168a10a09','1231241212121',0,'2022-03-31 11:42:23','2022-03-31 11:42:23',NULL),(5,'60d0fe4f5311236168a10a1c','60d0fe4f5311236168a109d7',0,'2022-03-31 12:00:05','2022-03-31 12:00:05',NULL),(6,'60d0fe4f5311236168a10a2b','60d0fe4f5311236168a109dc',1,'2022-03-31 12:04:35','2022-03-31 12:04:35',NULL),(7,'60d0fe4f5311236168a109d8','60d0fe4f5311236168a109dc',1,'2022-03-31 12:49:26','2022-03-31 12:49:26',NULL),(8,'60d0fe4f5311236168a109d8','60d0fe4f5311236168a109d7',0,'2022-03-31 12:49:33','2022-03-31 12:49:33',NULL);
/*!40000 ALTER TABLE `interactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matches`
--

DROP TABLE IF EXISTS `matches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matches` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` varchar(100) DEFAULT NULL,
  `matchedUserId` varchar(100) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matches`
--

LOCK TABLES `matches` WRITE;
/*!40000 ALTER TABLE `matches` DISABLE KEYS */;
/*!40000 ALTER TABLE `matches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` varchar(100) NOT NULL,
  `title` varchar(45) DEFAULT NULL,
  `firstName` varchar(50) DEFAULT NULL,
  `lastName` varchar(50) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `dateOfBirth` datetime DEFAULT NULL,
  `registerDate` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `picture` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('60d0fe4f5311236168a109ca','ms','Sara','Andersen',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/women/58.jpg'),('60d0fe4f5311236168a109cb','miss','Edita','Vestering',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/women/89.jpg'),('60d0fe4f5311236168a109cc','ms','Adina','Barbosa',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/women/28.jpg'),('60d0fe4f5311236168a109cd','mr','Roberto','Vega',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/men/25.jpg'),('60d0fe4f5311236168a109ce','mr','Rudi','Droste',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/men/83.jpg'),('60d0fe4f5311236168a109cf','mrs','Carolina','Lima',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/women/5.jpg'),('60d0fe4f5311236168a109d0','mr','Emre','Asikoglu',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/men/23.jpg'),('60d0fe4f5311236168a109d1','mr','Kent','Brewer',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/men/52.jpg'),('60d0fe4f5311236168a109d2','mr','Evan','Carlson',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/men/80.jpg'),('60d0fe4f5311236168a109d3','mr','Friedrich-Karl','Brand',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/men/7.jpg'),('60d0fe4f5311236168a109d4','mr','Valentin','Ortega',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/men/3.jpg'),('60d0fe4f5311236168a109d5','mrs','Sibylle','Leibold',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/women/89.jpg'),('60d0fe4f5311236168a109d6','mrs','Elisa','Lorenzo',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/women/89.jpg'),('60d0fe4f5311236168a109d7','mr','Leevi','Savela',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/men/67.jpg'),('60d0fe4f5311236168a109d8','mrs','Karoline','Sviggum',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/women/61.jpg'),('60d0fe4f5311236168a109d9','ms','Nuria','Leon',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/women/93.jpg'),('60d0fe4f5311236168a109da','mr','Lance','Foster',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/men/13.jpg'),('60d0fe4f5311236168a109db','miss','Naomi','Rodrigues',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/women/39.jpg'),('60d0fe4f5311236168a109dc','mr','Evan','Roux',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/men/59.jpg'),('60d0fe4f5311236168a109dd','mr','Miguel','Lima',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/men/31.jpg'),('60d0fe4f5311236168a109de','miss','Bessie','Burke',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/women/72.jpg'),('60d0fe4f5311236168a109df','mrs','Anaelle','Dumas',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/women/25.jpg'),('60d0fe4f5311236168a109e0','miss','Milly','Norman',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/women/31.jpg'),('60d0fe4f5311236168a109e1','mr','James','Black',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/men/29.jpg'),('60d0fe4f5311236168a109e2','mr','Heinz-Georg','Fiedler',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/men/81.jpg'),('60d0fe4f5311236168a109e3','mr','Vetle','Aasland',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/men/97.jpg'),('60d0fe4f5311236168a109e4','mr','Pwry','Shylyrd',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/men/37.jpg'),('60d0fe4f5311236168a109e5','mr','Adrian','Rodriguez',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/men/45.jpg'),('60d0fe4f5311236168a109e6','miss','Milla','Pollari',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/women/89.jpg'),('60d0fe4f5311236168a109e7','mr','Joey','Oliver',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/men/61.jpg'),('60d0fe4f5311236168a109e8','mrs','Cecilie','Mortensen',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/women/56.jpg'),('60d0fe4f5311236168a109e9','mr','Alfredo','Omahony',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/men/76.jpg'),('60d0fe4f5311236168a109ea','mrs','Mhrs','Hsyny',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/women/77.jpg'),('60d0fe4f5311236168a109eb','ms','Nella','Koivisto',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/women/77.jpg'),('60d0fe4f5311236168a109ec','mr','Lucas','Larsen',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/men/50.jpg'),('60d0fe4f5311236168a109ed','miss','Kayla','Bredesen',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/women/13.jpg'),('60d0fe4f5311236168a109ee','mrs','Beatriz','Gutierrez',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/women/31.jpg'),('60d0fe4f5311236168a109ef','miss','Melanie','Pilz',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/women/32.jpg'),('60d0fe4f5311236168a109f0','mr','Wouter-Jan','Wijnker',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/men/67.jpg'),('60d0fe4f5311236168a109f2','mr','Albert','Diez',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/men/73.jpg'),('60d0fe4f5311236168a109f3','mr','Donald','Hopkins',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/men/73.jpg'),('60d0fe4f5311236168a109f4','mr','Benjamin','Holland',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/men/58.jpg'),('60d0fe4f5311236168a109f5','ms','Charlotte','Legrand',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/women/77.jpg'),('60d0fe4f5311236168a109f6','miss','Madison','Ambrose',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/women/15.jpg'),('60d0fe4f5311236168a109f7','mrs','Jolanda','Lacroix',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/women/32.jpg'),('60d0fe4f5311236168a109f8','ms','Signe','Madsen',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/women/84.jpg'),('60d0fe4f5311236168a109f9','mr','Marius','Larsen',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/men/54.jpg'),('60d0fe4f5311236168a109fa','ms','Ann','Mason',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/women/18.jpg'),('60d0fe4f5311236168a109fb','mr','Sohan','Pierre',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/men/77.jpg'),('60d0fe4f5311236168a109fc','mr','Gonzaga','Ribeiro',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/men/10.jpg'),('60d0fe4f5311236168a109fd','mr','Dylan','Vasquez',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/men/66.jpg'),('60d0fe4f5311236168a109fe','mr','AndrÃ©','Robert',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/men/9.jpg'),('60d0fe4f5311236168a109ff','mrs','Josefina','Calvo',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/women/3.jpg'),('60d0fe4f5311236168a10a00','mrs','Els','Ijsseldijk',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/women/75.jpg'),('60d0fe4f5311236168a10a01','mr','Jesus','Riley',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/men/45.jpg'),('60d0fe4f5311236168a10a02','mr','Cristobal','Soler',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/men/31.jpg'),('60d0fe4f5311236168a10a03','mr','Andri','Leclerc',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/men/57.jpg'),('60d0fe4f5311236168a10a04','mr','Konsta','Manninen',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/men/24.jpg'),('60d0fe4f5311236168a10a05','ms','Ane','Frafjord',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/women/54.jpg'),('60d0fe4f5311236168a10a06','mrs','OlaÃ­','Gomes',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/women/85.jpg'),('60d0fe4f5311236168a10a07','mr','Sigmund','Myran',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/men/61.jpg'),('60d0fe4f5311236168a10a08','ms','Lilja','Lampinen',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/women/50.jpg'),('60d0fe4f5311236168a10a09','miss','Clea','Dubois',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/women/11.jpg'),('60d0fe4f5311236168a10a0a','mr','Sandro','Guillot',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/men/8.jpg'),('60d0fe4f5311236168a10a0b','miss','Margarita','Vicente',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/women/5.jpg'),('60d0fe4f5311236168a10a0c','ms','Annabel','Somby',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/women/35.jpg'),('60d0fe4f5311236168a10a0d','mr','Lyam','Morin',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/men/95.jpg'),('60d0fe4f5311236168a10a0e','mr','Mads','Andersen',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/men/74.jpg'),('60d0fe4f5311236168a10a0f','mr','Kaya','Basoglu',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/men/59.jpg'),('60d0fe4f5311236168a10a10','mr','Nenad','Leroy',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/men/62.jpg'),('60d0fe4f5311236168a10a11','miss','Angeles','Gimenez',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/women/56.jpg'),('60d0fe4f5311236168a10a12','mr','Kenneth','Carter',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/men/40.jpg'),('60d0fe4f5311236168a10a13','mr','Jan','Siebert',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/men/60.jpg'),('60d0fe4f5311236168a10a14','mr','Cameron','Mendoza',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/men/95.jpg'),('60d0fe4f5311236168a10a15','mr','Benjamin','Wilson',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/men/14.jpg'),('60d0fe4f5311236168a10a16','mr','Sergio','Ferrer',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/men/29.jpg'),('60d0fe4f5311236168a10a17','mrs','Emma','Jokela',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/women/46.jpg'),('60d0fe4f5311236168a10a18','mr','Jeremy','Morin',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/men/60.jpg'),('60d0fe4f5311236168a10a19','miss','Debbie','Garcia',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/women/86.jpg'),('60d0fe4f5311236168a10a1a','mr','Vaino','Sakala',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/men/56.jpg'),('60d0fe4f5311236168a10a1b','mr','Siem','Marcelissen',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/men/38.jpg'),('60d0fe4f5311236168a10a1c','miss','Abigail','Liu',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/women/83.jpg'),('60d0fe4f5311236168a10a1d','mr','Eckard','Degner',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/men/41.jpg'),('60d0fe4f5311236168a10a1e','mr','Niklas','Baltzersen',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/men/2.jpg'),('60d0fe4f5311236168a10a1f','mr','David','Ramos',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/men/30.jpg'),('60d0fe4f5311236168a10a20','mr','Mem','Rocha',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/men/59.jpg'),('60d0fe4f5311236168a10a21','miss','Constance','Bourgeois',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/women/87.jpg'),('60d0fe4f5311236168a10a22','mr','Nikolaj','Larsen',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/men/22.jpg'),('60d0fe4f5311236168a10a23','miss','Oya','Cetiner',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/women/66.jpg'),('60d0fe4f5311236168a10a24','miss','Katie','Hughes',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/women/74.jpg'),('60d0fe4f5311236168a10a25','ms','Kitty','Steward',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/women/78.jpg'),('60d0fe4f5311236168a10a26','mr','Elliot','Walker',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/men/53.jpg'),('60d0fe4f5311236168a10a27','mr','Tomothy','Hawkins',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/men/48.jpg'),('60d0fe4f5311236168a10a28','miss','OcÃ©ane','Denis',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/women/51.jpg'),('60d0fe4f5311236168a10a29','ms','Vanessa','Ramos',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/women/33.jpg'),('60d0fe4f5311236168a10a2a','mrs','Susie','Harrison',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/women/20.jpg'),('60d0fe4f5311236168a10a2b','mrs','Angelica','Roussel',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/women/53.jpg'),('60d0fe4f5311236168a10a2c','mr','Toralf','Streicher',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/men/80.jpg'),('60d0fe4f5311236168a10a2d','mrs','Emilie','Lambert',NULL,NULL,NULL,NULL,NULL,'https://randomuser.me/api/portraits/med/women/93.jpg');
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

-- Dump completed on 2022-03-31 20:08:34
