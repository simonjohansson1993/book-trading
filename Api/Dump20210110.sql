-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: books
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `B_id` int unsigned NOT NULL AUTO_INCREMENT,
  `U_id` int unsigned DEFAULT NULL,
  `BookName` varchar(100) NOT NULL,
  `Aurthor` varchar(100) NOT NULL,
  `ISBN` int DEFAULT NULL,
  `Price` double DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `Description` varchar(500) DEFAULT NULL,
  `img` varchar(9000) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `Edition` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`B_id`),
  KEY `U_id` (`U_id`),
  KEY `category` (`category`),
  CONSTRAINT `books_ibfk_1` FOREIGN KEY (`U_id`) REFERENCES `users` (`id`),
  CONSTRAINT `books_ibfk_2` FOREIGN KEY (`category`) REFERENCES `categories` (`Category`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (2,5,'A Dance with Dragons','George R.R. Martin',55338595,300,'Sci-Fi and Fantasy','Really interesting book and in a good condition	','https://images-na.ssl-images-amazon.com/images/I/51cvenTRSZL._SX324_BO1,204,203,200_.jpg','2019-12-11','1'),(4,1,'The Bay Rat Kid',' Jim Jeffries',0,500,'Action and Adventure','From blackouts in WWII to rocking out to Bill Haley and the Comets, Ocean City native Jim Jeffries recalls his “bay rat” boyhood on the Jersey Shore with affection, humor, and gratitude. This collection of vignettes from Jim’s childhood and teen years is populated by a cast of characters that might just spark your own memories of the ','https://images-na.ssl-images-amazon.com/images/I/41KiN2R9jaL._SX404_BO1,204,203,200_.jpg','2020-12-31',''),(5,1,'Down by the Bay','Nadine Westcott',0,200,'Comic Book','Singing supports and encourages even the youngest childs speech and listening skills, which makes Down by the Bay perfect for early learning. In this friendly board book edition, irresistible art by Nadine','https://images-na.ssl-images-amazon.com/images/I/51LGefs0yTL._SY387_BO1,204,203,200_.jpg','2019-11-02',NULL),(6,2,'Britain at Bay','Alan Allport ',0,600,'Graphic Novel','A sweeping, groundbreaking epic that combines military with social history, to illuminate the ways in which Great Britain and its people were permanently transformed by the Second World War.','https://images-na.ssl-images-amazon.com/images/I/51YAjbCsYwL._SX333_BO1,204,203,200_.jpg','2020-02-02',NULL),(7,2,'THUNDERSTRUCK ','Tampa Bay Times',0,100,'Action and Adventure','Celebrate your Tampa Bay Lightnings one-of-a-kind championship season with this 160-page commemorative hardcover book. This book showcases the Lightnings historic run through compelling stories and action-packed photos from the Tampa Bay Times','https://images-na.ssl-images-amazon.com/images/I/51431JuaVOL._SY394_BO1,204,203,200_.jpg','2020-05-20',NULL),(8,3,'The Company','Stephen Bown',0,330,'Detective and Mystery','The story of the Hudsons Bay Company, dramatic and adventurous and complex, is the story of modern Canadas creation. And yet it hasnt been told in a book for over thirty years, and never in such depth and vivid detail as in Stephen R. Bowns exciting new telling.','https://images-na.ssl-images-amazon.com/images/I/41TYL0sl9ZL._SX331_BO1,204,203,200_.jpg','2018-03-25',NULL),(9,3,'Above the Bay of Angels','Rhys Bowen',0,730,'Graphic Novel','Isabella Waverly only means to bring comfort to a woman felled on a London street. In her final dying moments, the woman thrusts a letter into Bellas hand. Its an offer of employment in the kitchens of Buckingham Palace','https://images-na.ssl-images-amazon.com/images/I/51EPCXrJ2AL._SX313_BO1,204,203,200_.jpg','2017-03-25',NULL),(15,5,'Light on Yoga','Yehudi Menuhin',7107005,200,'Health and Fitness','The definitive guide to the philosophy and practice of Yoga--the ancient healing discipline for body and mind--by its greatest living teacher.	','https://s2.adlibris.com/images/4060843/light-on-yoga.jpg','2018-03-16','1'),(18,12,'Pilates Body','Brooke Siler',12998754,125,'Health and Fitness','The Pilates(R) method may be today\'s hottest exercise, but it has been endorsed by physicians for almost a century','https://image.bokus.com/images/9780767903967_200x_pilates-body_haftad','2021-08-22','1'),(20,5,'Ring Shout','P. Djèlí Clark',1250767024,170,'Sci-Fi and Fantasy','Really interesting book and in a good condition','https://powells-covers-2.s3.amazonaws.com/9781250767028.jpg','2021-01-07','1'),(22,12,'HTML and CSS ','Jon Duckett',1118008189,400,'Academic','A full-color introduction to the basics of HTML and CSS from the publishers of Wrox Every day, more and more people want to learn some HTML and CSS.','https://img.thriftbooks.com/api/images/m/42286e8944500ef27a6e5a777b7b95c27953d150.jpg','2020-11-19','1'),(25,21,'The Magic Fish',' Le Nguyen Trung',1984851594,150,'Kids','The book is in a good condition','https://img.thriftbooks.com/api/images/i/m/813FE859A7CF57EFD853E7196CA405C3C98D3AEC.jpg','2016-07-22','1'),(26,12,'C Programming Language','Brian W. Kernighan',131103628,250,'Academic','The authors present the complete guide to ANSI standard C language programming. Written by the developers of C, this new version helps readers keep up with the finalized ANSI standard for C while showing how to take advantage of C\'s rich set of operators, economy of expression, improved control flow, and data structures. The 2/E has been completely rewritten .','https://img.thriftbooks.com/api/images/m/93e8a72b0a8b2eca6ab99705f0714e99e66b87f9.jpg','2021-02-02','1'),(31,9,'The Couch Potato','The Couch Potato',62954539,150,'Kids','The book is in a good condition','https://img.thriftbooks.com/api/images/i/m/1888A68EF2C21E31BB651398F2647B45B3E8336D.jpg','2020-05-13','1'),(35,5,'Learning paython','Mark lutz',0,250,'Academic','the book is a good condition like a new one','http://res.cloudinary.com/mdh/image/upload/v1610215887/lo4ovlspqeaqrmobp9tz.jpg','2021-01-09','1');
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `Category` varchar(80) NOT NULL,
  PRIMARY KEY (`Category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES ('Academic'),('Action and Adventure'),('Classics'),('Comic Book'),('Crafts and Hobbies'),('Detective and Mystery'),('Graphic Novel'),('Health and Fitness'),('Historical Fiction'),('Horror'),('kids'),('Literary Fiction'),('Novels'),('Other'),('Sci-Fi and Fantasy'),('Travels');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conversation`
--

DROP TABLE IF EXISTS `conversation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conversation` (
  `conversationId` int NOT NULL AUTO_INCREMENT,
  `from_user` int unsigned DEFAULT NULL,
  `to_user` int unsigned DEFAULT NULL,
  PRIMARY KEY (`conversationId`),
  KEY `from_user` (`from_user`),
  KEY `to_user` (`to_user`),
  CONSTRAINT `conversation_ibfk_1` FOREIGN KEY (`from_user`) REFERENCES `users` (`id`),
  CONSTRAINT `conversation_ibfk_2` FOREIGN KEY (`to_user`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conversation`
--

LOCK TABLES `conversation` WRITE;
/*!40000 ALTER TABLE `conversation` DISABLE KEYS */;
INSERT INTO `conversation` VALUES (1,1,2),(2,1,3),(3,2,3),(4,4,1),(7,2,4),(8,6,1),(9,1,12),(10,1,5),(11,1,21),(12,9,5),(13,12,5);
/*!40000 ALTER TABLE `conversation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feadback`
--

DROP TABLE IF EXISTS `feadback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feadback` (
  `feadbackId` int NOT NULL AUTO_INCREMENT,
  `useeid` int unsigned DEFAULT NULL,
  `feadback` varchar(5000) DEFAULT NULL,
  `date` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`feadbackId`),
  KEY `useeid` (`useeid`),
  CONSTRAINT `feadback_ibfk_1` FOREIGN KEY (`useeid`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feadback`
--

LOCK TABLES `feadback` WRITE;
/*!40000 ALTER TABLE `feadback` DISABLE KEYS */;
INSERT INTO `feadback` VALUES (1,1,'Ascertaining a device’s current theme is essential for applying the correct theme to your app when a user opens it',NULL),(2,2,'For this article, we’re gonna use react-native-appearance with expo the implement dark mode','2020-15-02 14:20'),(3,3,'Now lets see how we are gonna use it to style our components.\nwere gonna make a Screen component first that will have a background color that corresponds to the current theme.','2020-15-02 14:20'),(4,4,'Now lets see how we are gonna use it to style our components.\nwere gonna make a Screen component first that will have a background color that corresponds to the current theme.','2020-15-02 14:20'),(36,1,'Hello group 8','2020-12-30 01:31'),(37,6,'Hello world','2020-12-31 01:31'),(38,1,'Hello batol','2020-12-31 07:29'),(39,23,'really good app i like it!','2021-01-09 06:58'),(40,24,'really like this app!','2021-01-09 07:03');
/*!40000 ALTER TABLE `feadback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messages` (
  `messagesId` int NOT NULL AUTO_INCREMENT,
  `con_id` int NOT NULL,
  `from_user` int unsigned DEFAULT NULL,
  `to_user` int unsigned DEFAULT NULL,
  `message_text` varchar(5000) DEFAULT NULL,
  `isread` int DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `delfromuserone` int DEFAULT NULL,
  `delfromusertow` int DEFAULT NULL,
  `time` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`messagesId`),
  KEY `from_user` (`from_user`),
  KEY `to_user` (`to_user`),
  KEY `con_id` (`con_id`),
  CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`from_user`) REFERENCES `users` (`id`),
  CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`to_user`) REFERENCES `users` (`id`),
  CONSTRAINT `messages_ibfk_3` FOREIGN KEY (`con_id`) REFERENCES `conversation` (`conversationId`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,1,1,2,'Hello ziad',1,'2020-12-20',1,0,'02:30'),(2,1,2,1,'Hello Anas',1,'2020-12-20',0,1,'02:30'),(3,1,1,2,'How are you?',1,'2020-12-20',1,0,'02:30'),(4,1,2,1,'Iam fine',1,'2020-12-20',0,1,'02:30'),(5,1,1,2,'how many much is your book',1,'2020-12-20',1,0,'02:30'),(6,1,2,1,'400sek',1,'2020-12-20',0,1,'02:30'),(7,1,1,2,'I will take it',1,'2020-12-20',1,0,'02:30'),(10,1,1,2,'How are you?',1,'2020-12-20',1,0,'02:30'),(12,2,1,3,'Hello Ahmad',1,'2020-12-20',0,0,'02:30'),(13,2,3,1,'Hello Anas',1,'2020-12-20',0,0,'02:30'),(14,2,1,2,'How are you?',1,'2020-12-20',0,0,'02:30'),(15,2,3,1,'Iam fine',1,'2020-12-20',0,0,'02:30'),(16,2,3,1,'im good',1,'2020-12-20',0,0,'02:30'),(17,1,1,2,'I miss you',1,'2020-12-20',1,0,'02:30'),(18,1,1,2,' very much\n',1,'2020-12-20',1,0,'02:30'),(19,1,1,2,' very much\n',1,'2020-12-20',1,0,'02:30'),(20,1,1,2,'why?',1,'2020-12-20',1,0,'02:30'),(21,1,1,2,'why?',1,'2020-12-20',1,0,'02:30'),(22,1,2,2,'i dont now',1,'2020-12-20',0,0,'02:30'),(23,1,1,2,'why you dont now',1,'2020-12-20',1,0,'02:30'),(24,1,1,2,'\n\n',1,'2020-12-20',1,0,'02:30'),(25,1,1,2,'hello hello',1,'2020-12-20',1,0,'02:30'),(26,1,2,2,'how are you',1,'2020-12-20',0,0,'02:30'),(27,1,2,1,'yes you can get it',1,'2020-12-20',0,1,'02:30'),(28,1,1,2,'Hello ziad',1,'2020-12-20',1,0,'02:30'),(29,1,1,2,'how are you',1,'2020-12-20',1,0,'02:30'),(30,1,2,1,'i dont now',1,'2020-12-20',0,1,'02:30'),(31,1,2,1,'can you help me',1,'2020-12-20',0,1,'02:30'),(32,1,2,1,'i dont now',1,'2020-12-20',0,1,'02:30'),(33,1,2,1,'wha?',1,'2020-12-20',0,1,'02:30'),(34,2,1,3,'Hello Ahmad',1,'2020-12-20',0,0,'02:30'),(35,2,3,1,'Hello Anas',1,'2020-12-20',0,0,'02:30'),(36,1,1,2,'Hello agin Ziad?',1,'2020-12-20',1,0,'02:30'),(37,1,2,1,'Hello Anas Iam busy',1,'2020-12-20',0,1,'02:30'),(38,1,1,2,'Hello hello',1,'2020-12-20',1,0,'02:30'),(39,1,1,2,'test',1,'2020-12-20',1,0,'02:30'),(40,2,1,3,'hello ahmad',0,'2020-12-20',0,0,'02:30'),(41,1,1,2,'Hello ziad how I can help you',1,'2020-12-20',1,0,'02:30'),(42,1,1,2,'hello ziqd',1,'2020-12-20',1,0,'02:30'),(43,8,6,1,'Hello anas from Ola',1,'2020-12-20',0,0,'02:30'),(44,1,1,2,'test',1,'2020-12-20',1,0,'02:30'),(45,1,2,1,'testtttttt',1,'2020-12-20',0,1,'02:30'),(46,1,1,2,'new test',1,'2020-12-20',1,0,'02:30'),(47,2,1,3,'test',0,'2020-12-20',0,0,'02:30'),(48,1,2,1,'hello',1,'2020-12-20',0,1,'02:30'),(49,1,1,2,'hello ziad',1,'2020-12-20',1,0,'02:30'),(50,1,2,1,'hello anas',1,'2020-12-20',0,1,'02:30'),(51,1,1,2,'hello',1,'2020-12-20',1,0,'02:30'),(52,1,2,1,'hello ziad',1,'2020-12-20',0,1,'02:30'),(53,1,2,1,'hello anas',1,'2020-12-20',0,1,'02:30'),(54,1,2,1,'test test',1,'2020-12-20',0,1,'02:30'),(55,1,1,2,'heloo ziad',1,'2020-12-20',1,0,'02:30'),(56,1,1,2,'Anas',1,'2020-12-20',1,0,'02:30'),(57,2,1,3,'your test',0,'2020-12-20',0,0,'02:30'),(58,8,1,6,'react native is fun',1,'2020-12-20',0,0,'02:30'),(59,1,1,2,'test test test',1,'2020-12-20',1,0,'02:30'),(60,8,1,6,'hello ola its just test',1,'2020-12-20',0,0,'02:30'),(61,8,1,6,'hello',1,'  2020-12-29',0,0,'11:28'),(62,8,1,6,'hell agin',1,'  2020-12-29',0,0,'11:29'),(63,2,1,3,'hello',0,'  2020-12-29',0,0,'11:36'),(64,8,1,6,'test test',1,'  2020-12-30',0,0,'12:11'),(65,1,2,1,'iam not here',1,'  2020-12-30',0,1,'12:17'),(66,1,1,2,'way',1,'  2020-12-30',1,0,'12:23'),(67,1,1,2,'i dont konw',1,'  2020-12-30',1,0,'12:33'),(68,8,1,6,'test tow',1,'  2020-12-30',0,0,'12:56'),(69,1,1,2,'helo',1,'  2020-12-30',1,0,'02:23'),(70,2,1,3,'hello from me',0,'  2020-12-30',0,0,'01:29'),(71,4,1,4,'hello',0,'  2020-12-30',0,0,'01:30'),(72,1,2,1,'heelo Anas',1,'  2020-12-30',0,1,'01:32'),(73,2,1,3,'Hello world',0,'  2020-12-30',0,0,'10:42'),(74,4,1,4,'test',0,'  2020-12-30',0,0,'10:44'),(75,4,1,4,'test reload',0,'  2020-12-30',0,0,'10:44'),(76,4,1,4,'hello world',0,'  2020-12-30',0,0,'10:45'),(77,4,1,4,'test world',0,'  2020-12-30',0,0,'10:51'),(78,1,2,1,'Hello from ziad',1,'  2020-12-30',0,0,'10:52'),(79,2,1,3,'hello wrld',0,'  2020-12-31',0,0,'12:08'),(80,2,1,3,'test test',0,'  2020-12-31',0,0,'12:16'),(81,1,1,2,'test',1,'  2020-12-31',0,0,'01:10'),(82,8,1,6,'test ola',1,'  2020-12-31',0,0,'01:25'),(83,4,1,4,'test',0,'  2020-12-31',0,0,'02:18'),(84,1,1,2,'hello ',1,'  2020-12-31',0,0,'02:23'),(85,1,1,2,'batol test',1,'  2020-12-31',0,0,'07:20'),(86,1,1,2,'Hello batol',1,'  2020-12-31',0,0,'07:20'),(87,1,1,2,'Hi',1,'  2021-01-05',0,0,'07:31'),(88,3,2,3,'hi\ni wanna buy ur book\nHi',0,'  2021-01-08',0,0,'01:01'),(89,3,2,3,'is it still available?',0,'  2021-01-08',0,0,'01:02'),(90,10,1,5,'hi! is the book available? ',0,'  2021-01-09',0,0,'03:19'),(91,12,9,5,'hi Sara can u send the book to my address?',1,'  2021-01-09',0,0,'03:22'),(92,9,1,12,'hi Erik! i wanna buy ur book.',1,'  2021-01-09',0,1,'06:51'),(93,13,12,5,'hi! is the book available?',1,'  2021-01-09',0,0,'07:04'),(94,13,5,12,'yes send me ur address',0,'  2021-01-09',0,0,'07:09');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `UserName` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `Image` varchar(100) DEFAULT NULL,
  `number` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'batol','anas.aboradan@gmail.com','1','Köping, Sweden','https://helpx.adobe.com/content/dam/help/en/photoshop/how-to/combine-image-layer-mask_297x176.jpg','0046737424405'),(2,'ziad','ziad@gmail.com','1','Folkbokföringsadress Bygatan 10 lgh 130172466 Väst','https://webmeup.com/upload/blog/lead-image-105.png','0046737424405'),(3,'Ahmad mohammad','Ahmad@gmail.com','kkkk','Folkbokföringsadress Bygatan 10 lgh 130172466 Väst','https://cdn.pixabay.com/photo/2015/12/09/04/27/a-single-person-1084191_960_720.jpg','0046737424405'),(4,'Jamal salah','Ahmad@gmail.com','kkkk','Folkbokföringsadress Bygatan 10 lgh 130172466 Väst','https://www.talkwalker.com/images/2020/blog-headers/image-analysis.png','0046737424405'),(5,'Sara','Sara@live.com','ss12','Stockholm, Sweden','https://www.winhelponline.com/blog/wp-content/uploads/2017/12/user.png','0046442298762'),(6,'Ola abbood','ola.abboodx@gmail.com','12345','Folkbokföringsadress Bygatan 10 lgh 130172466 Väst','https://miro.medium.com/max/2560/1*gBQxShAkxBp_YPb14CN0Nw.jpeg','0046737424405'),(9,'Jon','Jon@live.com','555','Malmö, Sweden ','https://www.winhelponline.com/blog/wp-content/uploads/2017/12/user.png','0046988216546'),(11,'Anders','Anders@gmail.com','123','Folkbokföringsadress Bygatan 10 lgh 130172466 Väst','https://www.winhelponline.com/blog/wp-content/uploads/2017/12/user.png','0046737424405'),(12,'Erik','erik@gmail.com','321','Västerås, Sweden','https://www.winhelponline.com/blog/wp-content/uploads/2017/12/user.png','0046778820387'),(18,'Ebba','ebba@gmail.com','ee12','Halmstad, Swedwn ','https://www.winhelponline.com/blog/wp-content/uploads/2017/12/user.png','0046872298001'),(21,'Maria','maria@live.com','mm90','Kalmar, Sweden','https://www.winhelponline.com/blog/wp-content/uploads/2017/12/user.png','0046577901189'),(22,'Tim','tim@live.com','111','','https://www.winhelponline.com/blog/wp-content/uploads/2017/12/user.png',''),(23,'Maja','maja@gmail.com','111','Västerås','http://res.cloudinary.com/dpvxmb6aw/image/upload/v1610215081/gvgzi1zgz6s0uznldk8a.jpg','0739488765'),(24,'Mona','maria@gmail.com','0000','västerås','http://res.cloudinary.com/dpvxmb6aw/image/upload/v1610215380/ekyspyrvbcfdsydhun6b.jpg','07465998829');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wishlist` (
  `Uid` int unsigned DEFAULT NULL,
  `Bid` int unsigned DEFAULT NULL,
  KEY `Uid` (`Uid`),
  KEY `Bid` (`Bid`),
  CONSTRAINT `wishlist_ibfk_1` FOREIGN KEY (`Uid`) REFERENCES `users` (`id`),
  CONSTRAINT `wishlist_ibfk_2` FOREIGN KEY (`Bid`) REFERENCES `books` (`B_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlist`
--

LOCK TABLES `wishlist` WRITE;
/*!40000 ALTER TABLE `wishlist` DISABLE KEYS */;
INSERT INTO `wishlist` VALUES (6,9),(6,6),(6,5),(1,9),(12,2);
/*!40000 ALTER TABLE `wishlist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-10 21:43:46
