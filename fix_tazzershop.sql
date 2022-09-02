/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 10.4.8-MariaDB : Database - developer_tazzer_shop
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`developer_tazzer_shop` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `developer_tazzer_shop`;

/*Table structure for table `admin_languages` */

DROP TABLE IF EXISTS `admin_languages`;

CREATE TABLE `admin_languages` (
  `id` int(191) NOT NULL AUTO_INCREMENT,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `language` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rtl` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `admin_languages` */

insert  into `admin_languages`(`id`,`is_default`,`language`,`file`,`name`,`rtl`) values 
(1,1,'English','1637376635Ka9DAcS8.json','1637376635Ka9DAcS8',0);

/*Table structure for table `admin_user_conversations` */

DROP TABLE IF EXISTS `admin_user_conversations`;

CREATE TABLE `admin_user_conversations` (
  `id` int(191) NOT NULL AUTO_INCREMENT,
  `subject` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(191) NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` enum('Ticket','Dispute') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `admin_user_conversations` */

/*Table structure for table `admin_user_messages` */

DROP TABLE IF EXISTS `admin_user_messages`;

CREATE TABLE `admin_user_messages` (
  `id` int(191) NOT NULL AUTO_INCREMENT,
  `conversation_id` int(191) NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `admin_user_messages` */

/*Table structure for table `admins` */

DROP TABLE IF EXISTS `admins`;

CREATE TABLE `admins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int(191) NOT NULL DEFAULT 0,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `shop_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admins_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `admins` */

insert  into `admins`(`id`,`name`,`email`,`phone`,`role_id`,`photo`,`password`,`status`,`remember_token`,`created_at`,`updated_at`,`shop_name`) values 
(1,'Admin','admin@gmail.com','01629552892',0,'1556780563user.png','$2y$10$QQmprMI/YZHC6OOInSz2kuy7pWdks9rh7hfz4l5dKnkVwJpDmNewe',1,'haAqXGbS5nJAHIV2BSlsFmezjOFi3FBKt7aMJkiY0cfCeg8iutTHoKH66vNB','2018-02-28 15:27:08','2021-07-15 16:14:49','Tazzer Shop'),
(5,'Mr Mamun','mamun@gmail.com','34534534',17,'1568803644User.png','$2y$10$3AEjcvFBiQHECgtH9ivXTeQZfMf.rw318G820TtVBsYaCt7UNOwGC',1,NULL,'2019-09-17 21:47:24','2019-09-18 14:21:49',NULL),
(6,'Mr. Manik','manik@gmail.com','5079956958',18,'1568863361user-admin.png','$2y$10$Z3Jx5jHjV2m4HtZHzeaKMuwxkLAKfJ1AX3Ed5MPACvFJLFkEWN9L.',1,NULL,'2019-09-18 14:22:41','2019-09-18 14:22:41',NULL),
(7,'Mr. Pratik','pratik@gmail.com','34534534',16,'1568863396user-admin.png','$2y$10$u.93l4y6wOz6vq3BlAxvU.LuJ16/uBQ9s2yesRGTWUtLRiQSwoH1C',1,'iZPbEaxjSWBJMvncLqeMtAQsG7VoSirVMJ1EBfdJogvgXK2DM5mw236fBCOq','2019-09-18 14:23:16','2019-09-18 14:23:16',NULL);

/*Table structure for table `attribute_options` */

DROP TABLE IF EXISTS `attribute_options`;

CREATE TABLE `attribute_options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=256 DEFAULT CHARSET=latin1;

/*Data for the table `attribute_options` */

insert  into `attribute_options`(`id`,`attribute_id`,`name`,`created_at`,`updated_at`) values 
(107,14,'No Warranty','2019-09-23 15:56:07','2019-09-23 15:56:07'),
(108,14,'Local seller Warranty','2019-09-23 15:56:07','2019-09-23 15:56:07'),
(109,14,'Non local warranty','2019-09-23 15:56:07','2019-09-23 15:56:07'),
(110,14,'International Manufacturer Warranty','2019-09-23 15:56:07','2019-09-23 15:56:07'),
(111,14,'International Seller Warranty','2019-09-23 15:56:07','2019-09-23 15:56:07'),
(157,22,'Black','2019-09-23 17:46:26','2019-09-23 17:46:26'),
(158,22,'White','2019-09-23 17:46:26','2019-09-23 17:46:26'),
(159,22,'Sliver','2019-09-23 17:46:26','2019-09-23 17:46:26'),
(160,22,'Red','2019-09-23 17:46:26','2019-09-23 17:46:26'),
(161,22,'Dark Grey','2019-09-23 17:46:26','2019-09-23 17:46:26'),
(162,22,'Dark Blue','2019-09-23 17:46:26','2019-09-23 17:46:26'),
(163,22,'Brown','2019-09-23 17:46:26','2019-09-23 17:46:26'),
(172,24,'40','2019-09-23 18:25:32','2019-09-23 18:25:32'),
(173,24,'22','2019-09-23 18:25:32','2019-09-23 18:25:32'),
(174,24,'24','2019-09-23 18:25:32','2019-09-23 18:25:32'),
(175,24,'32','2019-09-23 18:25:32','2019-09-23 18:25:32'),
(176,24,'21','2019-09-23 18:25:32','2019-09-23 18:25:32'),
(177,25,'demo 1','2019-09-23 18:26:47','2019-09-23 18:26:47'),
(178,25,'demo 2','2019-09-23 18:26:47','2019-09-23 18:26:47'),
(187,30,'Yellow','2019-09-23 21:31:44','2019-09-23 21:31:44'),
(188,30,'White','2019-09-23 21:31:44','2019-09-23 21:31:44'),
(189,31,'22','2019-09-23 21:34:35','2019-09-23 21:34:35'),
(190,31,'34','2019-09-23 21:34:35','2019-09-23 21:34:35'),
(191,31,'45','2019-09-23 21:34:35','2019-09-23 21:34:35'),
(195,20,'Local seller warranty','2019-10-02 17:18:54','2019-10-02 17:18:54'),
(196,20,'No warranty','2019-10-02 17:18:54','2019-10-02 17:18:54'),
(197,20,'international manufacturer warranty','2019-10-02 17:18:54','2019-10-02 17:18:54'),
(198,20,'Non-local warranty','2019-10-02 17:18:54','2019-10-02 17:18:54'),
(199,21,'Symphony','2019-10-02 17:19:13','2019-10-02 17:19:13'),
(200,21,'Oppo','2019-10-02 17:19:13','2019-10-02 17:19:13'),
(201,21,'EStore','2019-10-02 17:19:13','2019-10-02 17:19:13'),
(202,21,'Infinix','2019-10-02 17:19:13','2019-10-02 17:19:13'),
(203,21,'Apple','2019-10-02 17:19:13','2019-10-02 17:19:13'),
(243,33,'1 GB','2019-10-12 16:30:39','2019-10-12 16:30:39'),
(244,33,'2 GB','2019-10-12 16:30:39','2019-10-12 16:30:39'),
(245,33,'3 GB','2019-10-12 16:30:39','2019-10-12 16:30:39'),
(253,32,'demo 1','2019-10-12 20:18:04','2019-10-12 20:18:04'),
(254,32,'demo 2','2019-10-12 20:18:04','2019-10-12 20:18:04'),
(255,32,'demo 3','2019-10-12 20:18:04','2019-10-12 20:18:04');

/*Table structure for table `attributes` */

DROP TABLE IF EXISTS `attributes`;

CREATE TABLE `attributes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attributable_id` int(11) DEFAULT NULL,
  `attributable_type` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `input_name` varchar(255) DEFAULT NULL,
  `price_status` int(3) NOT NULL DEFAULT 1 COMMENT '0 - hide, 1- show	',
  `details_status` int(3) NOT NULL DEFAULT 1 COMMENT '0 - hide, 1- show	',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

/*Data for the table `attributes` */

insert  into `attributes`(`id`,`attributable_id`,`attributable_type`,`name`,`input_name`,`price_status`,`details_status`,`created_at`,`updated_at`) values 
(14,5,'App\\Models\\Category','Warranty Type','warranty_type',1,1,'2019-09-23 15:56:07','2019-09-23 15:56:07'),
(20,4,'App\\Models\\Category','Warranty Type','warranty_type',1,1,'2019-09-23 17:41:46','2019-10-02 17:18:54'),
(21,4,'App\\Models\\Category','Brand','brand',1,1,'2019-09-23 17:44:13','2019-10-02 17:19:13'),
(22,2,'App\\Models\\Subcategory','Color Family','color_family',1,1,'2019-09-23 17:45:45','2019-09-23 17:45:45'),
(24,1,'App\\Models\\Childcategory','Display Size','display_size',1,1,'2019-09-23 17:54:17','2019-09-23 17:54:17'),
(25,12,'App\\Models\\Subcategory','demo','demo',1,1,'2019-09-23 18:26:47','2019-09-23 18:26:47'),
(30,3,'App\\Models\\Subcategory','Interior Color','interior_color',1,1,'2019-09-23 21:31:44','2019-09-23 21:31:44'),
(31,8,'App\\Models\\Childcategory','Temperature','temperature',1,1,'2019-09-23 21:34:35','2019-09-23 21:34:35'),
(32,18,'App\\Models\\Category','Demo','demo',1,1,'2019-10-02 16:39:12','2019-10-02 16:39:12'),
(33,4,'App\\Models\\Category','RAM','ram',1,1,'2019-10-11 20:22:03','2019-10-12 16:30:39');

/*Table structure for table `banners` */

DROP TABLE IF EXISTS `banners`;

CREATE TABLE `banners` (
  `id` int(191) NOT NULL AUTO_INCREMENT,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('Large','TopSmall','BottomSmall') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `banners` */

insert  into `banners`(`id`,`photo`,`link`,`type`) values 
(1,'1568889151top2.jpg','https://www.google.com/','TopSmall'),
(2,'1568889146top1.jpg',NULL,'TopSmall'),
(3,'16263730803.png','https://www.google.com/','Large'),
(7,'1626422342Group 17259.png','https://www.google.com/','BottomSmall'),
(8,'1626422371Group 17258.png','https://www.google.com/','BottomSmall');

/*Table structure for table `blog_categories` */

DROP TABLE IF EXISTS `blog_categories`;

CREATE TABLE `blog_categories` (
  `id` int(191) NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `blog_categories` */

insert  into `blog_categories`(`id`,`name`,`slug`) values 
(2,'Oil & gas','oil-and-gas'),
(3,'Manufacturing','manufacturing'),
(4,'Chemical Research','chemical_research'),
(5,'Agriculture','agriculture'),
(6,'Mechanical','mechanical'),
(7,'Entrepreneurs','entrepreneurs'),
(8,'Technology','technology');

/*Table structure for table `blogs` */

DROP TABLE IF EXISTS `blogs`;

CREATE TABLE `blogs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(191) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `meta_tag` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `blogs` */

insert  into `blogs`(`id`,`category_id`,`title`,`details`,`photo`,`source`,`views`,`status`,`meta_tag`,`meta_description`,`tags`,`created_at`) values 
(9,2,'How to design effective arts?','<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a \r\ndrifting tone like that of a not-quite-tuned-in radio station \r\n                                        rises and for a while drowns out\r\n the patter. These are the sounds encountered by NASA’s Cassini \r\nspacecraft as it dove \r\n                                        the gap between Saturn and its \r\ninnermost ring on April 26, the first of 22 such encounters before it \r\nwill plunge into \r\n                                        atmosphere in September. What \r\nCassini did not detect were many of the collisions of dust particles \r\nhitting the spacecraft\r\n                                        it passed through the plane of \r\nthe ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\">How its Works ?</h3>\r\n                                    <p align=\"justify\">\r\n                                        MIAMI — For decades, South \r\nFlorida schoolchildren and adults fascinated by far-off galaxies, \r\nearthly ecosystems, the proper\r\n                                        ties of light and sound and \r\nother wonders of science had only a quaint, antiquated museum here in \r\nwhich to explore their \r\n                                        interests. Now, with the \r\nlong-delayed opening of a vast new science museum downtown set for \r\nMonday, visitors will be able \r\n                                        to stand underneath a suspended,\r\n 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, \r\nmahi mahi, devil\r\n                                        rays and other creatures through\r\n a 60,000-pound oculus. <br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of\r\n a huge cocktail glass. And that’s just one of many\r\n                                        attractions and exhibits. \r\nOfficials at the $305 million Phillip and Patricia Frost Museum of \r\nScience promise that it will be a \r\n                                        vivid expression of modern \r\nscientific inquiry and exposition. Its opening follows a series of \r\nsetbacks and lawsuits and a \r\n                                        scramble to finish the \r\n250,000-square-foot structure. At one point, the project ran \r\nprecariously short of money. The museum\r\n                                        high-profile opening is \r\nespecially significant in a state s <br></p><p align=\"justify\"><br></p><h3 align=\"justify\">Top 5 reason to choose us</h3>\r\n                                    <p align=\"justify\">\r\n                                        Mauna Loa, the biggest volcano \r\non Earth — and one of the most active — covers half the Island of \r\nHawaii. Just 35 miles to the \r\n                                        northeast, Mauna Kea, known to \r\nnative Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea \r\nlevel. To them it repre\r\n                                        sents a spiritual connection \r\nbetween our planet and the heavens above. These volcanoes, which have \r\nbeguiled millions of \r\n                                        tourists visiting the Hawaiian \r\nislands, have also plagued scientists with a long-running mystery: If \r\nthey are so close together, \r\n                                        how did they develop in two \r\nparallel tracks along the Hawaiian-Emperor chain formed over the same \r\nhot spot in the Pacific \r\n                                        Ocean — and why are their \r\nchemical compositions so different? \"We knew this was related to \r\nsomething much deeper,\r\n                                        but we couldn’t see what,” said \r\nTim Jones.\r\n                                    </p>','15542700986-min.jpg','www.geniusocean.com',36,1,'b1,b2,b3','Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level.','Business,Research,Mechanical,Process,Innovation,Engineering','2018-02-06 01:53:41'),
(10,3,'How to design effective arts?','<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a \r\ndrifting tone like that of a not-quite-tuned-in radio station \r\n                                        rises and for a while drowns out\r\n the patter. These are the sounds encountered by NASA’s Cassini \r\nspacecraft as it dove \r\n                                        the gap between Saturn and its \r\ninnermost ring on April 26, the first of 22 such encounters before it \r\nwill plunge into \r\n                                        atmosphere in September. What \r\nCassini did not detect were many of the collisions of dust particles \r\nhitting the spacecraft\r\n                                        it passed through the plane of \r\nthe ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\">How its Works ?</h3>\r\n                                    <p align=\"justify\">\r\n                                        MIAMI — For decades, South \r\nFlorida schoolchildren and adults fascinated by far-off galaxies, \r\nearthly ecosystems, the proper\r\n                                        ties of light and sound and \r\nother wonders of science had only a quaint, antiquated museum here in \r\nwhich to explore their \r\n                                        interests. Now, with the \r\nlong-delayed opening of a vast new science museum downtown set for \r\nMonday, visitors will be able \r\n                                        to stand underneath a suspended,\r\n 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, \r\nmahi mahi, devil\r\n                                        rays and other creatures through\r\n a 60,000-pound oculus. <br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of\r\n a huge cocktail glass. And that’s just one of many\r\n                                        attractions and exhibits. \r\nOfficials at the $305 million Phillip and Patricia Frost Museum of \r\nScience promise that it will be a \r\n                                        vivid expression of modern \r\nscientific inquiry and exposition. Its opening follows a series of \r\nsetbacks and lawsuits and a \r\n                                        scramble to finish the \r\n250,000-square-foot structure. At one point, the project ran \r\nprecariously short of money. The museum\r\n                                        high-profile opening is \r\nespecially significant in a state s <br></p><p align=\"justify\"><br></p><h3 align=\"justify\">Top 5 reason to choose us</h3>\r\n                                    <p align=\"justify\">\r\n                                        Mauna Loa, the biggest volcano \r\non Earth — and one of the most active — covers half the Island of \r\nHawaii. Just 35 miles to the \r\n                                        northeast, Mauna Kea, known to \r\nnative Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea \r\nlevel. To them it repre\r\n                                        sents a spiritual connection \r\nbetween our planet and the heavens above. These volcanoes, which have \r\nbeguiled millions of \r\n                                        tourists visiting the Hawaiian \r\nislands, have also plagued scientists with a long-running mystery: If \r\nthey are so close together, \r\n                                        how did they develop in two \r\nparallel tracks along the Hawaiian-Emperor chain formed over the same \r\nhot spot in the Pacific \r\n                                        Ocean — and why are their \r\nchemical compositions so different? \"We knew this was related to \r\nsomething much deeper,\r\n                                        but we couldn’t see what,” said \r\nTim Jones.\r\n                                    </p>','15542700902-min.jpg','www.geniusocean.com',14,1,NULL,NULL,'Business,Research,Mechanical,Process,Innovation,Engineering','2018-03-06 01:54:21'),
(12,2,'How to design effective arts?','<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a \r\ndrifting tone like that of a not-quite-tuned-in radio station \r\n                                        rises and for a while drowns out\r\n the patter. These are the sounds encountered by NASA’s Cassini \r\nspacecraft as it dove \r\n                                        the gap between Saturn and its \r\ninnermost ring on April 26, the first of 22 such encounters before it \r\nwill plunge into \r\n                                        atmosphere in September. What \r\nCassini did not detect were many of the collisions of dust particles \r\nhitting the spacecraft\r\n                                        it passed through the plane of \r\nthe ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\">How its Works ?</h3>\r\n                                    <p align=\"justify\">\r\n                                        MIAMI — For decades, South \r\nFlorida schoolchildren and adults fascinated by far-off galaxies, \r\nearthly ecosystems, the proper\r\n                                        ties of light and sound and \r\nother wonders of science had only a quaint, antiquated museum here in \r\nwhich to explore their \r\n                                        interests. Now, with the \r\nlong-delayed opening of a vast new science museum downtown set for \r\nMonday, visitors will be able \r\n                                        to stand underneath a suspended,\r\n 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, \r\nmahi mahi, devil\r\n                                        rays and other creatures through\r\n a 60,000-pound oculus. <br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of\r\n a huge cocktail glass. And that’s just one of many\r\n                                        attractions and exhibits. \r\nOfficials at the $305 million Phillip and Patricia Frost Museum of \r\nScience promise that it will be a \r\n                                        vivid expression of modern \r\nscientific inquiry and exposition. Its opening follows a series of \r\nsetbacks and lawsuits and a \r\n                                        scramble to finish the \r\n250,000-square-foot structure. At one point, the project ran \r\nprecariously short of money. The museum\r\n                                        high-profile opening is \r\nespecially significant in a state s <br></p><p align=\"justify\"><br></p><h3 align=\"justify\">Top 5 reason to choose us</h3>\r\n                                    <p align=\"justify\">\r\n                                        Mauna Loa, the biggest volcano \r\non Earth — and one of the most active — covers half the Island of \r\nHawaii. Just 35 miles to the \r\n                                        northeast, Mauna Kea, known to \r\nnative Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea \r\nlevel. To them it repre\r\n                                        sents a spiritual connection \r\nbetween our planet and the heavens above. These volcanoes, which have \r\nbeguiled millions of \r\n                                        tourists visiting the Hawaiian \r\nislands, have also plagued scientists with a long-running mystery: If \r\nthey are so close together, \r\n                                        how did they develop in two \r\nparallel tracks along the Hawaiian-Emperor chain formed over the same \r\nhot spot in the Pacific \r\n                                        Ocean — and why are their \r\nchemical compositions so different? \"We knew this was related to \r\nsomething much deeper,\r\n                                        but we couldn’t see what,” said \r\nTim Jones.\r\n                                    </p>','15542700821-min.jpg','www.geniusocean.com',19,1,NULL,NULL,'Business,Research,Mechanical,Process,Innovation,Engineering','2018-04-06 15:04:20'),
(13,3,'How to design effective arts?','<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a \r\ndrifting tone like that of a not-quite-tuned-in radio station \r\n                                        rises and for a while drowns out\r\n the patter. These are the sounds encountered by NASA’s Cassini \r\nspacecraft as it dove \r\n                                        the gap between Saturn and its \r\ninnermost ring on April 26, the first of 22 such encounters before it \r\nwill plunge into \r\n                                        atmosphere in September. What \r\nCassini did not detect were many of the collisions of dust particles \r\nhitting the spacecraft\r\n                                        it passed through the plane of \r\nthe ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\">How its Works ?</h3>\r\n                                    <p align=\"justify\">\r\n                                        MIAMI — For decades, South \r\nFlorida schoolchildren and adults fascinated by far-off galaxies, \r\nearthly ecosystems, the proper\r\n                                        ties of light and sound and \r\nother wonders of science had only a quaint, antiquated museum here in \r\nwhich to explore their \r\n                                        interests. Now, with the \r\nlong-delayed opening of a vast new science museum downtown set for \r\nMonday, visitors will be able \r\n                                        to stand underneath a suspended,\r\n 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, \r\nmahi mahi, devil\r\n                                        rays and other creatures through\r\n a 60,000-pound oculus. <br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of\r\n a huge cocktail glass. And that’s just one of many\r\n                                        attractions and exhibits. \r\nOfficials at the $305 million Phillip and Patricia Frost Museum of \r\nScience promise that it will be a \r\n                                        vivid expression of modern \r\nscientific inquiry and exposition. Its opening follows a series of \r\nsetbacks and lawsuits and a \r\n                                        scramble to finish the \r\n250,000-square-foot structure. At one point, the project ran \r\nprecariously short of money. The museum\r\n                                        high-profile opening is \r\nespecially significant in a state s <br></p><p align=\"justify\"><br></p><h3 align=\"justify\">Top 5 reason to choose us</h3>\r\n                                    <p align=\"justify\">\r\n                                        Mauna Loa, the biggest volcano \r\non Earth — and one of the most active — covers half the Island of \r\nHawaii. Just 35 miles to the \r\n                                        northeast, Mauna Kea, known to \r\nnative Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea \r\nlevel. To them it repre\r\n                                        sents a spiritual connection \r\nbetween our planet and the heavens above. These volcanoes, which have \r\nbeguiled millions of \r\n                                        tourists visiting the Hawaiian \r\nislands, have also plagued scientists with a long-running mystery: If \r\nthey are so close together, \r\n                                        how did they develop in two \r\nparallel tracks along the Hawaiian-Emperor chain formed over the same \r\nhot spot in the Pacific \r\n                                        Ocean — and why are their \r\nchemical compositions so different? \"We knew this was related to \r\nsomething much deeper,\r\n                                        but we couldn’t see what,” said \r\nTim Jones.\r\n                                    </p>','15542700676-min.jpg','www.geniusocean.com',57,1,NULL,NULL,'Business,Research,Mechanical,Process,Innovation,Engineering','2018-05-06 15:04:36'),
(14,2,'How to design effective arts?','<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>','15542700595-min.jpg','www.geniusocean.com',4,1,NULL,NULL,'Business,Research,Mechanical,Process,Innovation,Engineering','2018-06-02 23:02:30'),
(15,3,'How to design effective arts?','<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>','15542700464-min.jpg','www.geniusocean.com',6,1,NULL,NULL,'Business,Research,Mechanical,Process,Innovation,Engineering','2018-07-02 23:02:53'),
(16,2,'How to design effective arts?','<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>','15542700383-min.jpg','www.geniusocean.com',5,1,NULL,NULL,'Business,Research,Mechanical,Process,Innovation,Engineering','2018-08-02 23:03:14'),
(17,3,'How to design effective arts?','<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>','15542700322-min.jpg','www.geniusocean.com',50,1,NULL,NULL,'Business,Research,Mechanical,Process,Innovation,Engineering','2019-01-02 22:03:37'),
(18,2,'How to design effective arts?','<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>','15542700251-min.jpg','www.geniusocean.com',152,1,NULL,NULL,'Business,Research,Mechanical,Process,Innovation,Engineering','2019-01-02 22:03:59'),
(20,2,'How to design effective arts?','<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>','15542699136-min.jpg','www.geniusocean.com',10,1,NULL,NULL,'Business,Research,Mechanical,Process,Innovation,Engineering','2018-08-02 23:03:14'),
(21,3,'How to design effective arts?','<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>','15542699045-min.jpg','www.geniusocean.com',36,1,NULL,NULL,'Business,Research,Mechanical,Process,Innovation,Engineering','2019-01-02 22:03:37'),
(22,2,'How to design effective arts?','<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>','15542698954-min.jpg','www.geniusocean.com',70,1,NULL,NULL,'Business,Research,Mechanical,Process,Innovation,Engineering','2019-01-02 22:03:59'),
(23,7,'How to design effective arts?','<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>','15542698893-min.jpg','www.geniusocean.com',5,1,NULL,NULL,'Business,Research,Mechanical,Process,Innovation,Engineering','2018-08-02 23:03:14'),
(24,3,'How to design effective arts?','<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>','15542698832-min.jpg','www.geniusocean.com',34,1,NULL,NULL,'Business,Research,Mechanical,Process,Innovation,Engineering','2019-01-02 22:03:37'),
(25,3,'How to design effective arts?','<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>','15557542831-min.jpg','www.geniusocean.com',40,1,NULL,NULL,'Business,Research,Mechanical,Process,Innovation,Engineering','2019-01-02 22:03:59');

/*Table structure for table `categories` */

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `id` int(191) NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT 0,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

/*Data for the table `categories` */

insert  into `categories`(`id`,`name`,`slug`,`status`,`photo`,`is_featured`,`image`) values 
(4,'Craft product, supplies & tools','Craft-product-supplies-and-tools',1,'1631886341craft.png',0,'1568709131f6.jpg'),
(5,'Handmade products, Supplies & tool','Handmade-products-Supplies-and-tool',1,'1631886329cleaning.png',0,'1568709123f1.jpg'),
(6,'Health & Safety products, Supplies and tools','Health-and-Safety-products-Supplies-and-tools',1,'1631886314Rubbish.png',0,'1568709110f2.jpg'),
(7,'Cleaning products, supplies & tools','Cleaning-products-supplies-and-tools',1,'1631886300Clearance & clean.png',0,'1568709597f4.jpg'),
(8,'Rubbish Removal products, supplies & tools','Rubbish-Removal-products-supplies-and-tools',1,'1631886287Construction.png',0,'1568709577f8.jpg'),
(9,'Clearance & clean up products, supplies & tools','Clearance-and-clean-up-products-supplies-and-tools',1,'1631886272Dog Walking.png',0,'1568709077f7.jpg'),
(11,'Construction & Builders products, supplies & tools','Construction-and-Builders-products-supplies-and-tools',1,'1631886258Domestic Helpers.png',0,'1568709050f8.jpg'),
(12,'Dog Walking & Pet products, supplies & tools','Dog-Walking-and-Pet-products-supplies-and-tools',1,'1631886246Gardening.png',0,'1568709042f9.jpg'),
(13,'Domestic Helpers products, supp;ies & tools','Domestic-Helpers-products-supplies-and-tools',1,'1631886231Handyman.png',0,'1568709037f10.jpg'),
(15,'Gardening  & Landscaping products, supplies & tools','Gardening-and-Landscaping-products-supplies-and-tools',1,'1631886216Property And Facilities.png',0,'1568709031f11.jpg'),
(16,'Handyman products, supplies & tools','Handyman-products-supplies-and-tools',1,'1631886206scaffolding.png',0,'1568709027f12.jpg'),
(17,'Property & Facilities Management products, supplies & tools','Property-and-Facilities-Management-products-supplies-and-tools',1,'1631886192Security.png',0,NULL),
(18,'Scaffolding & Netting products, supplies & tools','Scaffolding-and-Netting-products-supplies-and-tools',1,'1631886156Jewellery.png',0,NULL),
(20,'Security products, supplies & tools','Security-products-supplies-and-tools',1,'1631886145craft.png',0,NULL),
(21,'Medicail products, Suppies & tools','Medicail-products-Suppies-and-tools',1,'1631886135Jewellery.png',0,NULL),
(28,'Home & Office Transfer products, supplies & tools','Home-and-Office-Transfer-products-supplies-and-tools',1,'1631886123Clothing & Shoes.png',0,NULL),
(29,'Entertainment, Digital event planning products, supplies & tools','Entertainment-Digital-event-planning-products-supplies-and-tools',1,'1631886114Home & Living.png',0,NULL),
(30,'Real Estate business products, Supplies & tools','Real-Estate-business-products-Supplies-and-tools',1,'1631886104Wedding & Party.png',0,NULL),
(31,'Rent your Spare space Products, supplies & tools','Rent-your-Spare-space-Products-supplies-and-tools',1,'1631886095Toys & Entertainment.png',0,NULL),
(32,'Dry cleaning business products, supplies & tools','Dry-cleaning-business-products-supplies-and-tools',1,'1631886086Art & Collectibles.png',0,NULL),
(33,'Carpooling - Car Sharing Business  products. Supplies & tools','Carpooling-Car-Sharing-Business-products-Supplies-and-tools',1,'1631886077gift-box.png',0,NULL),
(34,'Fix Technical Problem Solution products, supplies & tools','Fix-Technical-Problem-Solution-products-supplies-and-tools',1,'1631706115open-book.png',0,NULL),
(35,'Online Tutoring products, supplies & tools','Online-Tutoring-products-supplies-and-tools',1,NULL,0,NULL),
(36,'Accountancy &  bookkeeping products, supplies & tools','Accountancy-and-bookkeeping-products-supplies-and-tools',1,NULL,0,NULL),
(37,'Home-based Catering/ Meals-to-go products, supplies & tools','Home-based-Catering-Meals-to-go-products-supplies-and-tools',1,NULL,0,NULL),
(38,'Hair and beauty products supplies & tools','Hair-and-beauty-products-supplies-and-tools',0,NULL,0,NULL),
(39,'Website Flipping products supplies & tools','Website-Flipping-products-supplies-and-tools',0,NULL,0,NULL),
(40,'Internet of things (IoT) & Artificial Intelligence Industry produsts, supllies & tools','Internet-of-things-IoT-and-Artificial-Intelligence-Industry-produsts-supllies-and-tools',0,NULL,0,NULL),
(41,'Jewellery & Accessories','Jewellery-and-Accessories',0,NULL,0,NULL),
(42,'Clothing & Shoes','Clothing-and-Shoes',0,NULL,0,NULL),
(43,'Home & Living','Home-and-Living',0,NULL,0,NULL),
(44,'Wedding & Party','Wedding-and-Party',0,NULL,0,NULL),
(45,'Toys & Entertainment','Toys-and-Entertainment',0,NULL,0,NULL),
(46,'Art & Collectibles','Art-and-Collectibles',0,NULL,0,NULL),
(47,'Gifts','Gifts',0,NULL,0,NULL);

/*Table structure for table `childcategories` */

DROP TABLE IF EXISTS `childcategories`;

CREATE TABLE `childcategories` (
  `id` int(191) NOT NULL AUTO_INCREMENT,
  `subcategory_id` int(191) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

/*Data for the table `childcategories` */

insert  into `childcategories`(`id`,`subcategory_id`,`name`,`slug`,`status`) values 
(1,2,'LCD TV','lcd-tv',1),
(2,2,'LED TV','led-tv',1),
(3,2,'Curved TV','curved-tv',1),
(4,2,'Plasma TV','plasma-tv',1),
(5,3,'Top Freezer','top-freezer',1),
(6,3,'Side-by-Side','side-by-side',1),
(7,3,'Counter-Depth','counter-depth',1),
(8,3,'Mini Fridge','mini-fridge',1),
(9,4,'Front Loading','front-loading',1),
(10,4,'Top Loading','top-loading',1),
(11,4,'Washer Dryer Combo','washer-dryer-combo',1),
(12,4,'Laundry Center','laundry-center',1),
(13,5,'Central Air','central-air',1),
(14,5,'Window Air','window-air',1),
(15,5,'Portable Air','portable-air',1),
(16,5,'Hybrid Air','hybrid-air',1),
(17,6,'man','accessories-man',1),
(18,6,'women','accessories-women',1),
(19,7,'women','bags-women',1),
(20,7,'man','bags-man',1),
(21,8,'women','clothings-women',1),
(22,8,'man','clothings-man',1),
(23,9,'women','shoes-women',1),
(24,9,'man','shoes-man',1);

/*Table structure for table `comments` */

DROP TABLE IF EXISTS `comments`;

CREATE TABLE `comments` (
  `id` int(191) NOT NULL AUTO_INCREMENT,
  `user_id` int(191) unsigned NOT NULL,
  `product_id` int(191) unsigned NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

/*Data for the table `comments` */

insert  into `comments`(`id`,`user_id`,`product_id`,`text`,`created_at`,`updated_at`) values 
(1,0,0,'','2021-11-20 09:06:01','2021-11-20 09:06:10');

/*Table structure for table `conversations` */

DROP TABLE IF EXISTS `conversations`;

CREATE TABLE `conversations` (
  `id` int(191) NOT NULL AUTO_INCREMENT,
  `subject` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sent_user` int(191) NOT NULL,
  `recieved_user` int(191) NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `conversations` */

/*Table structure for table `counters` */

DROP TABLE IF EXISTS `counters`;

CREATE TABLE `counters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` enum('referral','browser') NOT NULL DEFAULT 'referral',
  `referral` varchar(255) DEFAULT NULL,
  `total_count` int(11) NOT NULL DEFAULT 0,
  `todays_count` int(11) NOT NULL DEFAULT 0,
  `today` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

/*Data for the table `counters` */

insert  into `counters`(`id`,`type`,`referral`,`total_count`,`todays_count`,`today`) values 
(1,'referral','www.facebook.com',5,0,NULL),
(2,'referral','geniusocean.com',2,0,NULL),
(3,'browser','Windows 10',1039,0,NULL),
(4,'browser','Linux',221,0,NULL),
(5,'browser','Unknown OS Platform',386,0,NULL),
(6,'browser','Windows 7',415,0,NULL),
(7,'referral','yandex.ru',15,0,NULL),
(8,'browser','Windows 8.1',536,0,NULL),
(9,'referral','www.google.com',6,0,NULL),
(10,'browser','Android',359,0,NULL),
(11,'browser','Mac OS X',503,0,NULL),
(12,'referral','l.facebook.com',1,0,NULL),
(13,'referral','codecanyon.net',6,0,NULL),
(14,'browser','Windows XP',2,0,NULL),
(15,'browser','Windows 8',1,0,NULL),
(16,'browser','iPad',4,0,NULL),
(17,'browser','Ubuntu',1,0,NULL),
(18,'browser','iPhone',4,0,NULL),
(19,'referral','developer-data-work.azurewebsites.net',2,0,NULL);

/*Table structure for table `countries` */

DROP TABLE IF EXISTS `countries`;

CREATE TABLE `countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_code` varchar(2) NOT NULL DEFAULT '',
  `country_name` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=247 DEFAULT CHARSET=utf8;

/*Data for the table `countries` */

insert  into `countries`(`id`,`country_code`,`country_name`) values 
(1,'AF','Afghanistan'),
(2,'AL','Albania'),
(3,'DZ','Algeria'),
(4,'DS','American Samoa'),
(5,'AD','Andorra'),
(6,'AO','Angola'),
(7,'AI','Anguilla'),
(8,'AQ','Antarctica'),
(9,'AG','Antigua and Barbuda'),
(10,'AR','Argentina'),
(11,'AM','Armenia'),
(12,'AW','Aruba'),
(13,'AU','Australia'),
(14,'AT','Austria'),
(15,'AZ','Azerbaijan'),
(16,'BS','Bahamas'),
(17,'BH','Bahrain'),
(18,'BD','Bangladesh'),
(19,'BB','Barbados'),
(20,'BY','Belarus'),
(21,'BE','Belgium'),
(22,'BZ','Belize'),
(23,'BJ','Benin'),
(24,'BM','Bermuda'),
(25,'BT','Bhutan'),
(26,'BO','Bolivia'),
(27,'BA','Bosnia and Herzegovina'),
(28,'BW','Botswana'),
(29,'BV','Bouvet Island'),
(30,'BR','Brazil'),
(31,'IO','British Indian Ocean Territory'),
(32,'BN','Brunei Darussalam'),
(33,'BG','Bulgaria'),
(34,'BF','Burkina Faso'),
(35,'BI','Burundi'),
(36,'KH','Cambodia'),
(37,'CM','Cameroon'),
(38,'CA','Canada'),
(39,'CV','Cape Verde'),
(40,'KY','Cayman Islands'),
(41,'CF','Central African Republic'),
(42,'TD','Chad'),
(43,'CL','Chile'),
(44,'CN','China'),
(45,'CX','Christmas Island'),
(46,'CC','Cocos (Keeling) Islands'),
(47,'CO','Colombia'),
(48,'KM','Comoros'),
(49,'CD','Democratic Republic of the Congo'),
(50,'CG','Republic of Congo'),
(51,'CK','Cook Islands'),
(52,'CR','Costa Rica'),
(53,'HR','Croatia (Hrvatska)'),
(54,'CU','Cuba'),
(55,'CY','Cyprus'),
(56,'CZ','Czech Republic'),
(57,'DK','Denmark'),
(58,'DJ','Djibouti'),
(59,'DM','Dominica'),
(60,'DO','Dominican Republic'),
(61,'TP','East Timor'),
(62,'EC','Ecuador'),
(63,'EG','Egypt'),
(64,'SV','El Salvador'),
(65,'GQ','Equatorial Guinea'),
(66,'ER','Eritrea'),
(67,'EE','Estonia'),
(68,'ET','Ethiopia'),
(69,'FK','Falkland Islands (Malvinas)'),
(70,'FO','Faroe Islands'),
(71,'FJ','Fiji'),
(72,'FI','Finland'),
(73,'FR','France'),
(74,'FX','France, Metropolitan'),
(75,'GF','French Guiana'),
(76,'PF','French Polynesia'),
(77,'TF','French Southern Territories'),
(78,'GA','Gabon'),
(79,'GM','Gambia'),
(80,'GE','Georgia'),
(81,'DE','Germany'),
(82,'GH','Ghana'),
(83,'GI','Gibraltar'),
(84,'GK','Guernsey'),
(85,'GR','Greece'),
(86,'GL','Greenland'),
(87,'GD','Grenada'),
(88,'GP','Guadeloupe'),
(89,'GU','Guam'),
(90,'GT','Guatemala'),
(91,'GN','Guinea'),
(92,'GW','Guinea-Bissau'),
(93,'GY','Guyana'),
(94,'HT','Haiti'),
(95,'HM','Heard and Mc Donald Islands'),
(96,'HN','Honduras'),
(97,'HK','Hong Kong'),
(98,'HU','Hungary'),
(99,'IS','Iceland'),
(100,'IN','India'),
(101,'IM','Isle of Man'),
(102,'ID','Indonesia'),
(103,'IR','Iran (Islamic Republic of)'),
(104,'IQ','Iraq'),
(105,'IE','Ireland'),
(106,'IL','Israel'),
(107,'IT','Italy'),
(108,'CI','Ivory Coast'),
(109,'JE','Jersey'),
(110,'JM','Jamaica'),
(111,'JP','Japan'),
(112,'JO','Jordan'),
(113,'KZ','Kazakhstan'),
(114,'KE','Kenya'),
(115,'KI','Kiribati'),
(116,'KP','Korea, Democratic People\'s Republic of'),
(117,'KR','Korea, Republic of'),
(118,'XK','Kosovo'),
(119,'KW','Kuwait'),
(120,'KG','Kyrgyzstan'),
(121,'LA','Lao People\'s Democratic Republic'),
(122,'LV','Latvia'),
(123,'LB','Lebanon'),
(124,'LS','Lesotho'),
(125,'LR','Liberia'),
(126,'LY','Libyan Arab Jamahiriya'),
(127,'LI','Liechtenstein'),
(128,'LT','Lithuania'),
(129,'LU','Luxembourg'),
(130,'MO','Macau'),
(131,'MK','North Macedonia'),
(132,'MG','Madagascar'),
(133,'MW','Malawi'),
(134,'MY','Malaysia'),
(135,'MV','Maldives'),
(136,'ML','Mali'),
(137,'MT','Malta'),
(138,'MH','Marshall Islands'),
(139,'MQ','Martinique'),
(140,'MR','Mauritania'),
(141,'MU','Mauritius'),
(142,'TY','Mayotte'),
(143,'MX','Mexico'),
(144,'FM','Micronesia, Federated States of'),
(145,'MD','Moldova, Republic of'),
(146,'MC','Monaco'),
(147,'MN','Mongolia'),
(148,'ME','Montenegro'),
(149,'MS','Montserrat'),
(150,'MA','Morocco'),
(151,'MZ','Mozambique'),
(152,'MM','Myanmar'),
(153,'NA','Namibia'),
(154,'NR','Nauru'),
(155,'NP','Nepal'),
(156,'NL','Netherlands'),
(157,'AN','Netherlands Antilles'),
(158,'NC','New Caledonia'),
(159,'NZ','New Zealand'),
(160,'NI','Nicaragua'),
(161,'NE','Niger'),
(162,'NG','Nigeria'),
(163,'NU','Niue'),
(164,'NF','Norfolk Island'),
(165,'MP','Northern Mariana Islands'),
(166,'NO','Norway'),
(167,'OM','Oman'),
(168,'PK','Pakistan'),
(169,'PW','Palau'),
(170,'PS','Palestine'),
(171,'PA','Panama'),
(172,'PG','Papua New Guinea'),
(173,'PY','Paraguay'),
(174,'PE','Peru'),
(175,'PH','Philippines'),
(176,'PN','Pitcairn'),
(177,'PL','Poland'),
(178,'PT','Portugal'),
(179,'PR','Puerto Rico'),
(180,'QA','Qatar'),
(181,'RE','Reunion'),
(182,'RO','Romania'),
(183,'RU','Russian Federation'),
(184,'RW','Rwanda'),
(185,'KN','Saint Kitts and Nevis'),
(186,'LC','Saint Lucia'),
(187,'VC','Saint Vincent and the Grenadines'),
(188,'WS','Samoa'),
(189,'SM','San Marino'),
(190,'ST','Sao Tome and Principe'),
(191,'SA','Saudi Arabia'),
(192,'SN','Senegal'),
(193,'RS','Serbia'),
(194,'SC','Seychelles'),
(195,'SL','Sierra Leone'),
(196,'SG','Singapore'),
(197,'SK','Slovakia'),
(198,'SI','Slovenia'),
(199,'SB','Solomon Islands'),
(200,'SO','Somalia'),
(201,'ZA','South Africa'),
(202,'GS','South Georgia South Sandwich Islands'),
(203,'SS','South Sudan'),
(204,'ES','Spain'),
(205,'LK','Sri Lanka'),
(206,'SH','St. Helena'),
(207,'PM','St. Pierre and Miquelon'),
(208,'SD','Sudan'),
(209,'SR','Suriname'),
(210,'SJ','Svalbard and Jan Mayen Islands'),
(211,'SZ','Swaziland'),
(212,'SE','Sweden'),
(213,'CH','Switzerland'),
(214,'SY','Syrian Arab Republic'),
(215,'TW','Taiwan'),
(216,'TJ','Tajikistan'),
(217,'TZ','Tanzania, United Republic of'),
(218,'TH','Thailand'),
(219,'TG','Togo'),
(220,'TK','Tokelau'),
(221,'TO','Tonga'),
(222,'TT','Trinidad and Tobago'),
(223,'TN','Tunisia'),
(224,'TR','Turkey'),
(225,'TM','Turkmenistan'),
(226,'TC','Turks and Caicos Islands'),
(227,'TV','Tuvalu'),
(228,'UG','Uganda'),
(229,'UA','Ukraine'),
(230,'AE','United Arab Emirates'),
(231,'GB','United Kingdom'),
(232,'US','United States'),
(233,'UM','United States minor outlying islands'),
(234,'UY','Uruguay'),
(235,'UZ','Uzbekistan'),
(236,'VU','Vanuatu'),
(237,'VA','Vatican City State'),
(238,'VE','Venezuela'),
(239,'VN','Vietnam'),
(240,'VG','Virgin Islands (British)'),
(241,'VI','Virgin Islands (U.S.)'),
(242,'WF','Wallis and Futuna Islands'),
(243,'EH','Western Sahara'),
(244,'YE','Yemen'),
(245,'ZM','Zambia'),
(246,'ZW','Zimbabwe');

/*Table structure for table `coupons` */

DROP TABLE IF EXISTS `coupons`;

CREATE TABLE `coupons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint(4) NOT NULL,
  `price` double NOT NULL,
  `times` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `used` int(191) unsigned NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `coupons` */

insert  into `coupons`(`id`,`code`,`type`,`price`,`times`,`used`,`status`,`start_date`,`end_date`) values 
(1,'eqwe',1,12.22,'990',18,1,'2019-01-15','2026-08-20'),
(2,'sdsdsasd',0,11,NULL,2,1,'2019-05-23','2022-05-26'),
(3,'werwd',0,22,NULL,3,1,'2019-05-23','2023-06-08'),
(4,'asdasd',1,23.5,NULL,1,1,'2019-05-23','2020-05-28'),
(5,'kopakopakopa',0,40,NULL,3,1,'2019-05-23','2032-05-20'),
(6,'rererere',1,9,'665',1,1,'2019-05-23','2022-05-26');

/*Table structure for table `currencies` */

DROP TABLE IF EXISTS `currencies`;

CREATE TABLE `currencies` (
  `id` int(191) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sign` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` double NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `currencies` */

insert  into `currencies`(`id`,`name`,`sign`,`value`,`is_default`) values 
(1,'USD','$',1,1),
(4,'BDT','৳',85,0),
(6,'EUR','€',0.89,0),
(8,'INR','₹',68.95,0),
(9,'NGN','₦',363.919,0),
(10,'BRL','R$',4.02,0);

/*Table structure for table `deposits` */

DROP TABLE IF EXISTS `deposits`;

CREATE TABLE `deposits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `currency` blob DEFAULT NULL,
  `currency_code` varchar(255) DEFAULT NULL,
  `amount` double DEFAULT 0,
  `currency_value` double DEFAULT 0,
  `method` varchar(255) DEFAULT NULL,
  `txnid` varchar(255) DEFAULT NULL,
  `flutter_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `deposits` */

/*Table structure for table `email_templates` */

DROP TABLE IF EXISTS `email_templates`;

CREATE TABLE `email_templates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_subject` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_body` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `email_templates` */

insert  into `email_templates`(`id`,`email_type`,`email_subject`,`email_body`,`status`) values 
(1,'new_order','Your Order Placed Successfully','<p>Hello {customer_name},<br>Your Order Number is {order_number}<br>Your order has been placed successfully</p>',1),
(2,'new_registration','Welcome To Royal Commerce','<p>Hello {customer_name},<br>You have successfully registered to {website_title}, We wish you will have a wonderful experience using our service.</p><p>Thank You<br></p>',1),
(3,'vendor_accept','Your Vendor Account Activated','<p>Hello {customer_name},<br>Your Vendor Account Activated Successfully. Please Login to your account and build your own shop.</p><p>Thank You<br></p>',1),
(4,'subscription_warning','Your subscrption plan will end after five days','<p>Hello {customer_name},<br>Your subscription plan duration will end after five days. Please renew your plan otherwise all of your products will be deactivated.</p><p>Thank You<br></p>',1),
(5,'vendor_verification','Request for verification.','<p>Hello {customer_name},<br>You are requested verify your account. Please send us photo of your passport.</p><p>Thank You<br></p>',1),
(6,'wallet_deposit','Balance Added to Your Account.','<p>Hello {customer_name},<br>${deposit_amount} has been deposited in your account. Your current balance is ${wallet_balance}</p><p>Thank You<br></p>',1);

/*Table structure for table `faqs` */

DROP TABLE IF EXISTS `faqs`;

CREATE TABLE `faqs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `faqs` */

insert  into `faqs`(`id`,`title`,`details`,`status`) values 
(1,'Right my front it wound cause fully','<span style=\"color: rgb(70, 85, 65); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis. Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.</span><br>',1),
(3,'Man particular insensible celebrated','<span style=\"color: rgb(70, 85, 65); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis. Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.</span><br>',1),
(4,'Civilly why how end viewing related','<span style=\"color: rgb(70, 85, 65); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis. Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.</span><br>',0),
(5,'Six started far placing saw respect','<span style=\"color: rgb(70, 85, 65); font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\">Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis. Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.</span><br>',0),
(6,'She jointure goodness interest debat','<div style=\"text-align: center;\"><div style=\"text-align: center;\"><img src=\"https://i.imgur.com/MGucWKc.jpg\" width=\"350\"></div></div><div style=\"text-align: center;\"><br></div><div style=\"text-align: center;\"><span style=\"color: rgb(70, 85, 65); font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\">Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis. Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.<br></span></div>',0);

/*Table structure for table `favorite_sellers` */

DROP TABLE IF EXISTS `favorite_sellers`;

CREATE TABLE `favorite_sellers` (
  `id` int(191) NOT NULL AUTO_INCREMENT,
  `user_id` int(191) NOT NULL,
  `vendor_id` int(191) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `favorite_sellers` */

insert  into `favorite_sellers`(`id`,`user_id`,`vendor_id`) values 
(1,22,13);

/*Table structure for table `featured_banners` */

DROP TABLE IF EXISTS `featured_banners`;

CREATE TABLE `featured_banners` (
  `id` int(191) NOT NULL AUTO_INCREMENT,
  `link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `featured_banners` */

insert  into `featured_banners`(`id`,`link`,`photo`) values 
(6,'https://www.google.com/','1571287040feature1.jpg'),
(7,'https://www.google.com/','1571287047feature2.jpg'),
(8,'https://www.google.com/','1571287054feature3.jpg'),
(10,'https://www.google.com/','1571287106feature4.jpg');

/*Table structure for table `featured_links` */

DROP TABLE IF EXISTS `featured_links`;

CREATE TABLE `featured_links` (
  `id` int(191) NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

/*Data for the table `featured_links` */

insert  into `featured_links`(`id`,`name`,`link`,`photo`) values 
(12,'GADGET 1','https://www.google.com/','1571287354flink.png'),
(13,'GADGET 2','https://www.google.com/','1571287366flink.png'),
(14,'GADGET 3','https://www.google.com/','1571287383flink.png'),
(15,'GADGET 4','https://www.google.com/','1571287404flink.png'),
(16,'GADGET 5','https://www.google.com/','1571287415flink.png'),
(17,'GADGET 6','https://www.google.com/','1571287427flink.png'),
(18,'GADGET 7','https://www.google.com/','1571287439flink.png'),
(19,'GADGET 8','https://www.google.com/','1571287453flink.png'),
(20,'GADGET 9','https://www.google.com/','1571287481flink.png'),
(21,'GADGET 10','https://www.google.com/','1571287511flink.png');

/*Table structure for table `galleries` */

DROP TABLE IF EXISTS `galleries`;

CREATE TABLE `galleries` (
  `id` int(191) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(191) unsigned NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=latin1;

/*Data for the table `galleries` */

insert  into `galleries`(`id`,`product_id`,`photo`) values 
(6,93,'156801646314-min.jpg'),
(7,93,'156801646315-min.jpg'),
(8,93,'156801646316-min.jpg'),
(22,129,'15680254328Ei8T0MB.jpg'),
(23,129,'1568025432wRmpve8d.jpg'),
(24,129,'1568025432kkRYzLsF.jpg'),
(25,129,'1568025432zxQBe6Gk.jpg'),
(26,128,'1568025537sJbDPnFk.jpg'),
(27,128,'1568025537NBmHxJOz.jpg'),
(28,128,'1568025537hxqeFbS8.jpg'),
(29,128,'1568025538zK3tJpmL.jpg'),
(34,126,'1568025693kKLReNYO.jpg'),
(35,126,'1568025694Iv3pkz1q.jpg'),
(36,126,'1568025694T8HhdLVS.jpg'),
(37,126,'1568025695vTdg7ndt.jpg'),
(38,125,'15680257894Waz2tuN.jpg'),
(39,125,'1568025789vd0P4TBv.jpg'),
(40,125,'15680257899bih5sGh.jpg'),
(41,125,'156802578924sLIgzl.jpg'),
(42,124,'1568025825cC2Pmuit.jpg'),
(43,124,'1568025825EACzLFld.jpg'),
(44,124,'1568025825MfCyCqtD.jpg'),
(45,124,'15680258252yabMeAz.jpg'),
(46,123,'15680258512fKQla5g.jpg'),
(47,123,'1568025851pIjl0mWp.jpg'),
(48,123,'1568025851tQw7JXXG.jpg'),
(49,123,'1568025851ewjtSDkZ.jpg'),
(50,96,'1568025891wWAAbOjc.jpg'),
(51,96,'1568025891fyMNeXRy.jpg'),
(52,96,'1568025891OdV64Tw1.jpg'),
(53,96,'1568025891xQF7Zufe.jpg'),
(58,102,'1568026307THs0VQQU.jpg'),
(59,102,'1568026307jvCscHth.jpg'),
(60,102,'1568026307g5xMFdx3.jpg'),
(61,102,'1568026307Z3at0HEM.jpg'),
(62,101,'1568026331Y6UMgMcI.jpg'),
(63,101,'1568026331xZbT4OWG.jpg'),
(64,101,'1568026331y7eIFJXZ.jpg'),
(65,101,'1568026331i2wH8RI0.jpg'),
(66,100,'1568026374xCTjQYZ8.jpg'),
(67,100,'1568026374DzmvqA9d.jpg'),
(68,100,'1568026374OEH73u5X.jpg'),
(69,100,'1568026374vZhqRv8c.jpg'),
(70,99,'15680264120LdBSU1v.jpg'),
(71,99,'1568026412eMjsI940.jpg'),
(72,99,'1568026412GFjvHiZv.jpg'),
(73,99,'15680264122fwGi20d.jpg'),
(78,97,'1568026469hSlmBpzE.jpg'),
(79,97,'15680264697AI8LicQ.jpg'),
(80,97,'15680264691xyFt5Y6.jpg'),
(81,97,'1568026469dC3hrMz0.jpg'),
(86,109,'1568026737EBGSE78G.jpg'),
(87,109,'1568026737B8hO1RRr.jpg'),
(88,109,'1568026737tf0rwVoz.jpg'),
(89,109,'1568026737GGIPSqYo.jpg'),
(95,107,'1568026797FFNrNPxK.jpg'),
(96,107,'1568026797UwY9ZLfQ.jpg'),
(97,107,'1568026797Kl6eZLx5.jpg'),
(98,107,'1568026797h3R48VaO.jpg'),
(99,107,'15680267989kXwH40I.jpg'),
(100,106,'1568026836ErM5FJxg.jpg'),
(101,106,'1568026836VLrxIk0u.jpg'),
(102,106,'1568026836lgLuMV6p.jpg'),
(103,106,'1568026836JBUTQX8v.jpg'),
(104,105,'1568026861YorsLvUa.jpg'),
(105,105,'1568026861PikoX1Qb.jpg'),
(106,105,'1568026861SBJqjw66.jpg'),
(107,105,'1568026861WYh54Arp.jpg'),
(108,104,'1568026885rmo0LDoo.jpg'),
(109,104,'15680268851m939o7O.jpg'),
(110,104,'1568026885fVXYCGKu.jpg'),
(111,104,'1568026885GDRL3thY.jpg'),
(112,103,'1568026903LbVQUxIr.jpg'),
(113,103,'1568026914IpRVYDV4.jpg'),
(114,103,'15680269141gKO8x5X.jpg'),
(115,103,'1568026914Q938xXM2.jpg'),
(116,93,'1568026950y7ihS4wE.jpg'),
(125,122,'1568027503rFK94cnU.jpg'),
(126,122,'1568027503i1X2FtIi.jpg'),
(127,122,'156802750316jxawoZ.jpg'),
(128,122,'1568027503QRBf290F.jpg'),
(129,121,'1568027539SQqUc8Bu.jpg'),
(130,121,'1568027539Zs5OTzjq.jpg'),
(131,121,'1568027539C45VRZq1.jpg'),
(132,121,'15680275398ovCzFnJ.jpg'),
(133,120,'1568027565bJgX744G.jpg'),
(134,120,'1568027565j0RPFUgX.jpg'),
(135,120,'1568027565QGi6Lhyo.jpg'),
(136,120,'15680275658MAY3VKp.jpg'),
(137,119,'1568027610p9R6ivC6.jpg'),
(138,119,'1568027610t2Aq7E5D.jpg'),
(139,119,'1568027611ikz4n0fx.jpg'),
(140,119,'15680276117BLgrCub.jpg'),
(141,118,'156802763634t0c8tG.jpg'),
(142,118,'1568027636fuJplSf3.jpg'),
(143,118,'1568027636MXcgCQHU.jpg'),
(144,118,'1568027636lfexGTpt.jpg'),
(145,117,'1568027665rFHWlsAJ.jpg'),
(146,117,'15680276655LPktA9k.jpg'),
(147,117,'1568027665vcNWWq3u.jpg'),
(148,117,'1568027665gQnqKhCw.jpg'),
(149,116,'1568027692FPQpwtWN.jpg'),
(150,116,'1568027692zBaGjOIC.jpg'),
(151,116,'1568027692UXpDx63F.jpg'),
(152,116,'1568027692KdIWbIGK.jpg'),
(153,95,'1568027743xS8gHocM.jpg'),
(154,95,'1568027743aVUOljdD.jpg'),
(155,95,'156802774327OOA1Zj.jpg'),
(156,95,'1568027743kGBx6mxa.jpg'),
(172,130,'1568029084hQT5ZO0j.jpg'),
(173,130,'1568029084ncGXxQzN.jpg'),
(174,130,'1568029084b0OonKFy.jpg'),
(175,130,'15680290857TD4iOWP.jpg'),
(180,114,'1568029158brS7xQCe.jpg'),
(181,114,'1568029158QlC0tg5a.jpg'),
(182,114,'1568029158RrN4AEtQ.jpg'),
(187,112,'1568029210JSAwjRPr.jpg'),
(188,112,'1568029210EiVUkcK6.jpg'),
(189,112,'1568029210fJSo5hya.jpg'),
(190,112,'15680292101vCcGfq8.jpg'),
(191,111,'1568029272lB0JETcn.jpg'),
(192,111,'1568029272wF3ldKgv.jpg'),
(193,111,'1568029272NI33ExCu.jpg'),
(194,111,'15680292724TXrpokz.jpg'),
(197,134,'15693932021.jpg'),
(198,134,'15693932022.jpg'),
(199,135,'15698200931.jpg');

/*Table structure for table `generalsettings` */

DROP TABLE IF EXISTS `generalsettings`;

CREATE TABLE `generalsettings` (
  `id` int(191) NOT NULL AUTO_INCREMENT,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `header_email` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header_phone` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `copyright` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `colors` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `loader` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_loader` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_talkto` tinyint(1) NOT NULL DEFAULT 1,
  `talkto` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_language` tinyint(1) NOT NULL DEFAULT 1,
  `is_loader` tinyint(1) NOT NULL DEFAULT 1,
  `map_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_disqus` tinyint(1) NOT NULL DEFAULT 0,
  `disqus` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_contact` tinyint(1) NOT NULL DEFAULT 0,
  `is_faq` tinyint(1) NOT NULL DEFAULT 0,
  `guest_checkout` tinyint(1) NOT NULL DEFAULT 0,
  `stripe_check` tinyint(1) NOT NULL DEFAULT 0,
  `cod_check` tinyint(1) NOT NULL DEFAULT 0,
  `stripe_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_format` tinyint(1) NOT NULL DEFAULT 0,
  `withdraw_fee` double NOT NULL DEFAULT 0,
  `withdraw_charge` double NOT NULL DEFAULT 0,
  `tax` double NOT NULL DEFAULT 0,
  `shipping_cost` double NOT NULL DEFAULT 0,
  `mail_engine` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_host` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_port` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_user` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_pass` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_smtp` tinyint(1) NOT NULL DEFAULT 0,
  `is_comment` tinyint(1) NOT NULL DEFAULT 1,
  `is_currency` tinyint(1) NOT NULL DEFAULT 1,
  `add_cart` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `out_stock` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `add_wish` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `already_wish` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wish_remove` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `add_compare` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `already_compare` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `compare_remove` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color_change` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_found` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_coupon` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `already_coupon` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_affilate` tinyint(1) NOT NULL DEFAULT 1,
  `affilate_charge` int(100) NOT NULL DEFAULT 0,
  `affilate_banner` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `already_cart` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fixed_commission` double NOT NULL DEFAULT 0,
  `percentage_commission` double NOT NULL DEFAULT 0,
  `multiple_shipping` tinyint(1) NOT NULL DEFAULT 0,
  `multiple_packaging` tinyint(4) NOT NULL DEFAULT 0,
  `vendor_ship_info` tinyint(1) NOT NULL DEFAULT 0,
  `reg_vendor` tinyint(1) NOT NULL DEFAULT 0,
  `cod_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paypal_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_admin_loader` tinyint(1) NOT NULL DEFAULT 0,
  `menu_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_hover_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_home` tinyint(1) NOT NULL DEFAULT 0,
  `is_verification_email` tinyint(1) NOT NULL DEFAULT 0,
  `instamojo_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instamojo_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instamojo_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_instamojo` tinyint(1) NOT NULL DEFAULT 0,
  `instamojo_sandbox` tinyint(1) NOT NULL DEFAULT 0,
  `is_paystack` tinyint(1) NOT NULL DEFAULT 0,
  `paystack_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paystack_email` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paystack_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wholesell` int(191) NOT NULL DEFAULT 0,
  `is_capcha` tinyint(1) NOT NULL DEFAULT 0,
  `error_banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_popup` tinyint(1) NOT NULL DEFAULT 0,
  `popup_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `popup_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `popup_background` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendor_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_secure` tinyint(1) NOT NULL DEFAULT 0,
  `is_report` tinyint(1) NOT NULL,
  `paypal_check` tinyint(1) DEFAULT 0,
  `paypal_client_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paypal_client_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paypal_sandbox_check` tinyint(2) DEFAULT 2,
  `footer_logo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_encryption` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paytm_merchant` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paytm_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paytm_website` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paytm_industry` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_paytm` int(11) NOT NULL DEFAULT 1,
  `paytm_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paytm_mode` enum('sandbox','live') CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `is_molly` tinyint(1) NOT NULL DEFAULT 0,
  `molly_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `molly_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_razorpay` int(11) NOT NULL DEFAULT 1,
  `razorpay_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `razorpay_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `razorpay_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_stock` tinyint(1) NOT NULL DEFAULT 0,
  `is_maintain` tinyint(1) NOT NULL DEFAULT 0,
  `maintain_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_authorize` tinyint(4) NOT NULL,
  `authorize_login_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `authorize_txn_key` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `authorize_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `authorize_mode` enum('PRODUCTION','SANDBOX') COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_mercado` tinyint(4) NOT NULL,
  `mercado_token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `mercado_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `mercadopago_sandbox_check` tinyint(1) NOT NULL DEFAULT 1,
  `is_buy_now` tinyint(4) NOT NULL,
  `is_flutter` tinyint(4) NOT NULL DEFAULT 1,
  `flutter_public_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flutter_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flutter_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_twocheckout` tinyint(1) NOT NULL DEFAULT 1,
  `twocheckout_private_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twocheckout_seller_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twocheckout_public_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twocheckout_sandbox_check` tinyint(1) NOT NULL DEFAULT 1,
  `twocheckout_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_ssl` tinyint(1) NOT NULL DEFAULT 1,
  `ssl_sandbox_check` tinyint(1) NOT NULL DEFAULT 1,
  `ssl_store_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ssl_store_password` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ssl_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_voguepay` tinyint(1) NOT NULL DEFAULT 1,
  `vougepay_merchant_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vougepay_developer_code` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `voguepay_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `affilate_product` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `generalsettings` */

insert  into `generalsettings`(`id`,`logo`,`favicon`,`title`,`header_email`,`header_phone`,`footer`,`copyright`,`colors`,`loader`,`admin_loader`,`is_talkto`,`talkto`,`is_language`,`is_loader`,`map_key`,`is_disqus`,`disqus`,`is_contact`,`is_faq`,`guest_checkout`,`stripe_check`,`cod_check`,`stripe_key`,`stripe_secret`,`currency_format`,`withdraw_fee`,`withdraw_charge`,`tax`,`shipping_cost`,`mail_engine`,`smtp_host`,`smtp_port`,`smtp_user`,`smtp_pass`,`from_email`,`from_name`,`is_smtp`,`is_comment`,`is_currency`,`add_cart`,`out_stock`,`add_wish`,`already_wish`,`wish_remove`,`add_compare`,`already_compare`,`compare_remove`,`color_change`,`coupon_found`,`no_coupon`,`already_coupon`,`order_title`,`order_text`,`is_affilate`,`affilate_charge`,`affilate_banner`,`already_cart`,`fixed_commission`,`percentage_commission`,`multiple_shipping`,`multiple_packaging`,`vendor_ship_info`,`reg_vendor`,`cod_text`,`paypal_text`,`stripe_text`,`header_color`,`footer_color`,`copyright_color`,`is_admin_loader`,`menu_color`,`menu_hover_color`,`is_home`,`is_verification_email`,`instamojo_key`,`instamojo_token`,`instamojo_text`,`is_instamojo`,`instamojo_sandbox`,`is_paystack`,`paystack_key`,`paystack_email`,`paystack_text`,`wholesell`,`is_capcha`,`error_banner`,`is_popup`,`popup_title`,`popup_text`,`popup_background`,`invoice_logo`,`user_image`,`vendor_color`,`is_secure`,`is_report`,`paypal_check`,`paypal_client_id`,`paypal_client_secret`,`paypal_sandbox_check`,`footer_logo`,`email_encryption`,`paytm_merchant`,`paytm_secret`,`paytm_website`,`paytm_industry`,`is_paytm`,`paytm_text`,`paytm_mode`,`is_molly`,`molly_key`,`molly_text`,`is_razorpay`,`razorpay_key`,`razorpay_secret`,`razorpay_text`,`show_stock`,`is_maintain`,`maintain_text`,`is_authorize`,`authorize_login_id`,`authorize_txn_key`,`authorize_text`,`authorize_mode`,`is_mercado`,`mercado_token`,`mercado_text`,`mercadopago_sandbox_check`,`is_buy_now`,`is_flutter`,`flutter_public_key`,`flutter_text`,`flutter_secret`,`is_twocheckout`,`twocheckout_private_key`,`twocheckout_seller_id`,`twocheckout_public_key`,`twocheckout_sandbox_check`,`twocheckout_text`,`is_ssl`,`ssl_sandbox_check`,`ssl_store_id`,`ssl_store_password`,`ssl_text`,`is_voguepay`,`vougepay_merchant_id`,`vougepay_developer_code`,`voguepay_text`,`version`,`affilate_product`) values 
(1,'1626326304logo.png','1626330409favicon-icon-old.png','tazzer-shop','Info@example.com','0123 456789','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500 unchanged.\r\n\r\nOpen Hours:\r\nMo-Fr: 8 AM ~ 6 PM\r\nSunday: Closed','COPYRIGHT © 2021. All Rights Reserved By tazzershop.azurewebsites.net','#592a65','1564224328loading3.gif','1564224329loading3.gif',0,'<script type=\"text/javascript\">\r\nvar Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();\r\n(function(){\r\nvar s1=document.createElement(\"script\"),s0=document.getElementsByTagName(\"script\")[0];\r\ns1.async=true;\r\ns1.src=\'https://embed.tawk.to/5bc2019c61d0b77092512d03/default\';\r\ns1.charset=\'UTF-8\';\r\ns1.setAttribute(\'crossorigin\',\'*\');\r\ns0.parentNode.insertBefore(s1,s0);\r\n})();\r\n</script>',1,1,'AIzaSyB1GpE4qeoJ__70UZxvX9CTMUTZRZNHcu8',0,'<div id=\"disqus_thread\">         \r\n    <script>\r\n    /**\r\n    *  RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.\r\n    *  LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables*/\r\n    /*\r\n    var disqus_config = function () {\r\n    this.page.url = PAGE_URL;  // Replace PAGE_URL with your page\'s canonical URL variable\r\n    this.page.identifier = PAGE_IDENTIFIER; // Replace PAGE_IDENTIFIER with your page\'s unique identifier variable\r\n    };\r\n    */\r\n    (function() { // DON\'T EDIT BELOW THIS LINE\r\n    var d = document, s = d.createElement(\'script\');\r\n    s.src = \'https://junnun.disqus.com/embed.js\';\r\n    s.setAttribute(\'data-timestamp\', +new Date());\r\n    (d.head || d.body).appendChild(s);\r\n    })();\r\n    </script>\r\n    <noscript>Please enable JavaScript to view the <a href=\"https://disqus.com/?ref_noscript\">comments powered by Disqus.</a></noscript>\r\n    </div>',1,1,1,1,1,'pk_test_UnU1Coi1p5qFGwtpjZMRMgJM','sk_test_QQcg3vGsKRPlW6T3dXcNJsor',1,5,5,0,5,'smtp',NULL,NULL,NULL,NULL,'geniustest11@gmail.com','GeniusTest',0,1,1,'Successfully Added To Cart','Out Of Stock','Add To Wishlist','Already Added To Wishlist','Successfully Removed From The Wishlist','Successfully Added To Compare','Already Added To Compare','Successfully Removed From The Compare','Successfully Changed The Color','Coupon Found','No Coupon Found','Coupon Already Applied','THANK YOU FOR YOUR PURCHASE.','We\'ll email you an order confirmation with details and tracking info.',1,8,'15587771131554048228onepiece.jpeg','Already Added To Cart',5,5,1,1,1,1,'Pay with cash upon delivery.','Pay via your PayPal account.','Pay via your Credit Card.','#ffffff','#592a65','#ffffff',1,'#ff5500','#02020c',0,0,'test_172371aa837ae5cad6047dc3052','test_4ac5a785e25fc596b67dbc5c267','Pay via your Instamojo account.',1,1,1,'pk_test_162a56d42131cbb01932ed0d2c48f9cb99d8e8e2','junnuns@gmail.com','Pay via your Paystack account.',6,0,'1566878455404.png',1,'NEWSLETTER','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Expedita porro ipsa nulla, alias, ab minus.','1578998786adv-banner.jpg','1626326318logo.png','1567655174profile.jpg','#666666',0,1,1,'AcWYnysKa_elsQIAnlfsJXokR64Z31CeCbpis9G3msDC-BvgcbAwbacfDfEGSP-9Dp9fZaGgD05pX5Qi','EGZXTq6d6vBPq8kysVx8WQA5NpavMpDzOLVOb9u75UfsJ-cFzn6aeBXIMyJW2lN1UZtJg5iDPNL9ocYE',1,'1626326313logo.png',NULL,'tkogux49985047638244','LhNGUUKE9xCQ9xY8','WEBSTAGING','Retail',1,'Pay via your Paytm account.','sandbox',1,'test_5HcWVs9qc5pzy36H9Tu9mwAyats33J','Pay with Molly Payment.',1,'rzp_test_xDH74d48cwl8DF','cr0H1BiQ20hVzhpHfHuNbGri','Pay via your Razorpay account.',0,0,'<div style=\"text-align: center;\"><font size=\"5\"><br></font></div><h1 style=\"text-align: center;\"><font size=\"6\">UNDER MAINTENANCE</font></h1>',1,'76zu9VgUSxrJ','2Vj62a6skSrP5U3X','Pay Via Authorize.Net','SANDBOX',1,'TEST-705032440135962-041006-ad2e021853f22338fe1a4db9f64d1491-421886156','Pay Via MarcadoPago',1,1,1,'FLWPUBK_TEST-a34940f2f87746abbdd8c117caee81cf-X','Pay via your Flutter Wave account.','FLWSECK_TEST-1cb427c96e0b1e6772a04504be3638bd-X',1,'9668BB2D-C246-4175-8F5B-CB72F655097B','901417869','2C2879C4-9F81-47D5-89F3-863F4CF0E7A3',1,'Pay Via 2Checkout',1,1,'geniu5e1b00621f81e','geniu5e1b00621f81e@ssl','Pay Via SSLCommerz',1,'demo','5a61be72ab323','Pay Via Voguepay','4.0',1);

/*Table structure for table `languages` */

DROP TABLE IF EXISTS `languages`;

CREATE TABLE `languages` (
  `id` int(191) NOT NULL AUTO_INCREMENT,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `language` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Data for the table `languages` */

insert  into `languages`(`id`,`is_default`,`language`,`file`) values 
(11,1,'English','1579775344B7uQhhvr.json');

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` int(191) NOT NULL AUTO_INCREMENT,
  `conversation_id` int(191) NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sent_user` int(191) DEFAULT NULL,
  `recieved_user` int(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `messages` */

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

/*Table structure for table `notifications` */

DROP TABLE IF EXISTS `notifications`;

CREATE TABLE `notifications` (
  `id` int(191) NOT NULL AUTO_INCREMENT,
  `order_id` int(191) unsigned DEFAULT NULL,
  `user_id` int(191) DEFAULT NULL,
  `vendor_id` int(191) DEFAULT NULL,
  `product_id` int(191) DEFAULT NULL,
  `conversation_id` int(191) DEFAULT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `notifications` */

insert  into `notifications`(`id`,`order_id`,`user_id`,`vendor_id`,`product_id`,`conversation_id`,`is_read`,`created_at`,`updated_at`) values 
(2,2,NULL,NULL,NULL,NULL,1,'2020-01-31 19:16:12','2020-01-31 19:16:27');

/*Table structure for table `order_tracks` */

DROP TABLE IF EXISTS `order_tracks`;

CREATE TABLE `order_tracks` (
  `id` int(191) NOT NULL AUTO_INCREMENT,
  `order_id` int(191) NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `order_tracks` */

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(191) DEFAULT NULL,
  `cart` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pickup_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `totalQty` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pay_amount` float NOT NULL,
  `txnid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_number` varchar(255) NOT NULL,
  `payment_status` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `customer_country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone` varchar(255) NOT NULL,
  `customer_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_city` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_zip` varchar(255) DEFAULT NULL,
  `shipping_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_city` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_zip` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_note` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `coupon_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_discount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('pending','processing','completed','declined','on delivery') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `affilate_user` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `affilate_charge` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_sign` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_value` double NOT NULL,
  `shipping_cost` double NOT NULL,
  `packing_cost` double NOT NULL DEFAULT 0,
  `tax` int(191) NOT NULL,
  `dp` tinyint(1) NOT NULL DEFAULT 0,
  `pay_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendor_shipping_id` int(191) NOT NULL DEFAULT 0,
  `vendor_packing_id` int(191) NOT NULL DEFAULT 0,
  `wallet_price` double NOT NULL DEFAULT 0,
  `shipping_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `packing_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_state` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_state` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `orders` */

/*Table structure for table `packages` */

DROP TABLE IF EXISTS `packages`;

CREATE TABLE `packages` (
  `id` int(191) NOT NULL AUTO_INCREMENT,
  `user_id` int(191) NOT NULL DEFAULT 0,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `packages` */

insert  into `packages`(`id`,`user_id`,`title`,`subtitle`,`price`) values 
(1,0,'Default Packaging','Default packaging by store',0),
(2,0,'Gift Packaging','Exclusive Gift packaging',15);

/*Table structure for table `pages` */

DROP TABLE IF EXISTS `pages`;

CREATE TABLE `pages` (
  `id` int(191) NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_tag` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header` tinyint(1) NOT NULL DEFAULT 0,
  `footer` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

/*Data for the table `pages` */

insert  into `pages`(`id`,`title`,`slug`,`details`,`meta_tag`,`meta_description`,`header`,`footer`) values 
(1,'About Us','about','<div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><h3><span style=\"font-variant-ligatures: common-ligatures;\"><b style=\"\"><font style=\"\" face=\"georgia\" size=\"5\">Who We Are:</font></b></span></h3><h3><span style=\"font-variant-ligatures: common-ligatures;\"><b style=\"\"><font style=\"\" face=\"georgia\" size=\"5\"><br></font></b></span><span style=\"font-variant-ligatures: common-ligatures;\"><font size=\"4\" style=\"\" face=\"georgia\">Welcome to Tazzer Shop, your main hotspot for all items.</font></span></h3><h3><span style=\"font-variant-ligatures: common-ligatures;\"><font size=\"4\" style=\"\" face=\"georgia\">We\'re devoted to giving you the absolute best of items, with an emphasis on three qualities: reliability, client care and uniqueness.</font></span></h3><h3><span style=\"font-family: Slack-Lato, appleLogo, sans-serif; font-variant-ligatures: common-ligatures;\"><font size=\"5\"><br></font></span></h3><h3><span style=\"font-variant-ligatures: common-ligatures;\"><b style=\"\"><font style=\"\" face=\"georgia\" size=\"5\">Order From Anywhere:</font></b></span></h3><h3><span style=\"font-variant-ligatures: common-ligatures;\"><b style=\"\"><font style=\"\" face=\"georgia\" size=\"5\"><br></font></b></span></h3><h3><span style=\"font-variant-ligatures: common-ligatures;\"><font size=\"4\" style=\"\" face=\"georgia\">Tazzer Shop has made some amazing progress from its beginnings.&nbsp;</font></span></h3><h3><span style=\"font-variant-ligatures: common-ligatures;\"><font size=\"4\" style=\"\" face=\"georgia\">We currently serve clients from one side of the planet to the other.</font></span></h3><h3><span style=\"font-family: Slack-Lato, appleLogo, sans-serif; font-variant-ligatures: common-ligatures;\"><font size=\"4\"><br></font></span></h3><h3><span style=\"font-variant-ligatures: common-ligatures;\"><b style=\"\"><font style=\"\" face=\"georgia\" size=\"5\">Register Today and Start Selling:</font></b></span></h3><h3><span style=\"font-variant-ligatures: common-ligatures;\"><b style=\"\"><font style=\"\" face=\"georgia\" size=\"5\"><br></font></b></span></h3><h3><span style=\"font-variant-ligatures: common-ligatures;\"><font size=\"4\" style=\"\" face=\"georgia\">Tazzer Shop gives you the stage to sell your items from one side of the planet to the other.&nbsp;</font></span></h3><h3><span style=\"font-variant-ligatures: common-ligatures;\"><font size=\"4\" style=\"\" face=\"georgia\">Register Your shop on Tazzer Shop, transfer your item picture and portrayal and sell everything over the world.</font></span></h3><h3><span style=\"font-family: Slack-Lato, appleLogo, sans-serif; font-variant-ligatures: common-ligatures;\"><font size=\"4\"><br></font></span></h3><h3><span style=\"font-variant-ligatures: common-ligatures;\"><b style=\"\"><font style=\"\" face=\"georgia\" size=\"5\">Enjoy a Quality Platform:</font></b></span></h3><h3><span style=\"font-variant-ligatures: common-ligatures;\"><b style=\"\"><font style=\"\" face=\"georgia\" size=\"5\"><br></font></b></span><h4><font face=\"georgia\" size=\"4\"><span style=\"font-variant-ligatures: common-ligatures;\">On the off chance that you have any question or remarks, kindly don\'t spare a moment to reach us.</span></font></h4></h3><h3><font size=\"4\"><span style=\"font-variant-ligatures: common-ligatures;\"><font face=\"georgia\" size=\"4\">We trust you enjoy our items however much we appreciate offering them to you.&nbsp;</font><br></span></font></h3></h2></div>',NULL,NULL,1,1),
(2,'Privacy & Policy','privacy','<div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><img src=\"https://i.imgur.com/BobQuyA.jpg\" width=\"591\"></h2><h2><p class=\"MsoNormal\"><font size=\"3\">Tazzer Group&nbsp;is a system that is administered by us.\r\nThis Policy displays our arrangements and strategies for gathering and\r\nutilizing your data. Clients can access our services through our website and\r\nour app. A \"Gadget\" is any PC used to get to our Service, including\r\nwithout obstruction a laptop, cell phone, tablet, or other buyers electronic\r\ngadget. Our Policy oversees your connection to\r\nTazzer&nbsp;Group&nbsp;&nbsp;Services, paying little mind to how you get to our\r\nwebsite, and by utilizing our Services you agree to everything provided in this\r\nPrivacy Policy. The entirety of the various types of information, substance,\r\nand data portrayed beneath are by and large alluded to as\r\n\"data\".&nbsp;</font><o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><font size=\"3\">We may\r\ngather and store the accompanying data when running our\r\nTazzer&nbsp;Group&nbsp;&nbsp;Services: Data You Provide: When you register on\r\nour service, we gather some close-to-home data, for example, your name, email\r\naddress, telephone number, home, and business postal locations. On the off\r\nchance that you are posting a buyer request, at that point, we will likewise\r\ngather information regarding the request, for example, pictures, video, or\r\narchives to the administration. You may likewise furnish us with your work\r\nemail when posting requests. In the event that you are paying for the service,\r\nat that point we will gather your bank details, including card and\r\naddress.&nbsp;<o:p></o:p></font></p>\r\n\r\n<p class=\"MsoNormal\"><font size=\"3\">When you utilize our Service, we naturally record data from\r\nyour Device, its product, and your details utilizing the Services. This may\r\nincorporate the Device\'s Internet Protocol (\"IP\") address, program\r\ntype, the page visited before you went to our site, data you look for on our\r\nsite, area inclinations, distinguishing proof numbers related to your Devices,\r\nyour versatile bearer, date and time stamps related with exchanges, and\r\ndifferent communications with the Service.&nbsp;</font><o:p></o:p></p><p class=\"MsoNormal\"><font size=\"3\"><br></font></p>\r\n\r\n<p class=\"MsoNormal\"><b><font size=\"4\">Cookies:&nbsp;</font></b><font size=\"3\">We likewise use \"cookies\" to\r\ngather data and improve our Services. A cookie is a little information record\r\nthat we move to your Device. We may utilize \"tireless cookies\" to get\r\nyour ID and login details for future logins to the Service. We may utilize\r\n\"meeting ID\" to empower certain highlights of the Service, to more\r\nreadily see how you associate with the Service, and to screen total use and web\r\ntraffic steering on the Service. You can access the browser, by changing its\r\nalternatives, to quit tolerating cookies or to alert you before tolerating a\r\ncookie from the sites you visit. In the event that you don\'t acknowledge\r\ncookies, notwithstanding, you will most likely be unable to utilize all parts\r\nof the Service.&nbsp;<o:p></o:p></font></p>\r\n\r\n<p class=\"MsoNormal\"><font size=\"3\">What we do with your personal details.&nbsp;&nbsp;</font><o:p></o:p></p><p class=\"MsoNormal\"><font size=\"3\"><br></font></p>\r\n\r\n<p class=\"MsoNormal\"><font size=\"4\"><b>Individual Information</b>:</font> <font size=\"3\">throughout utilizing the\r\nService, we may gather individual data that can be utilized to contact or\r\nrecognize you (\"Personal Information\"). Individual Information is or\r\nmight be utilized:&nbsp;<o:p></o:p></font></p>\r\n\r\n<p class=\"MsoNormal\"><font size=\"3\">To give and improve our Service<o:p></o:p></font></p>\r\n\r\n<p class=\"MsoNormal\"><font size=\"3\">To regulate your utilization of the Service&nbsp;<o:p></o:p></font></p>\r\n\r\n<p class=\"MsoNormal\"><font size=\"3\">To comprehend your requirements and interests&nbsp;<o:p></o:p></font></p>\r\n\r\n<p class=\"MsoNormal\"><font size=\"3\">To customize and improve your experience<o:p></o:p></font></p>\r\n\r\n<p class=\"MsoNormal\"><font size=\"3\">&nbsp;To give updates and item declarations.&nbsp;</font><o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">&nbsp;<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><b><font size=\"4\">Location Information:</font></b>&nbsp;<font size=\"3\">When utilizing the\r\nservice, we may utilize your Device\'s Internet Protocol (\"IP\")\r\naddress to recognize your land area. Some photographs you transfer to\r\nTazzer&nbsp;Group&nbsp;&nbsp;may likewise contain recorded area data. We may\r\nutilize this data to upgrade your experience.&nbsp;</font><o:p></o:p></p><p class=\"MsoNormal\"><font size=\"3\"><br></font></p>\r\n\r\n<p class=\"MsoNormal\"><b><font size=\"4\">Investigation:</font></b>&nbsp;<font size=\"3\">We likewise gather some data\r\n(ourselves or utilizing outsider administrations) utilizing logging and\r\ncookies, which can here and there be corresponded with Personal Information. We\r\nutilize this data for the above purposes and to screen and dissect utilization\r\nof the Service, for the Service\'s specialized organization, to build our\r\nService\'s usefulness and ease of use, and to confirm clients have the approval\r\nrequired for the Service to process their request. This data incorporates the\r\ndate and time of your visit, the wellspring of your visit, and segment data,\r\nfor example, your age and gender. As of the date, this strategy became\r\neffective, we use Analytics.<o:p></o:p></font></p>\r\n\r\n<p class=\"MsoNormal\"><font size=\"3\">We will show your Personal Information on your profile page\r\nand somewhere else on the Service as indicated by the inclinations you set in\r\nyour record. Any data you decide to give ought to reflect the amount you need\r\nothers to think about you. If it\'s not too much trouble, consider cautiously\r\nwhat data you unveil on your profile page and your ideal degree of\r\nnamelessness. You can audit and change your profile data whenever. We may\r\nlikewise share or reveal your data with your assent, for instance on the off\r\nchance that you utilize an outsider application to get to your record. Through\r\nspecific highlights of the Service, you may likewise be able to make a portion\r\nof your data open to the public. Open data might be extensively and immediately\r\ndisseminated.&nbsp;</font><o:p></o:p></p><p class=\"MsoNormal\"><font size=\"3\"><br></font></p>\r\n\r\n<p class=\"MsoNormal\"><b><font size=\"4\">Others:</font></b>&nbsp;<font size=\"3\">We may utilize certain trusted\r\norganizations and people to enable us to give, examine, and improve the\r\nService. These organizations may approach your data just for our sake and under\r\ncommitments like those in this Privacy Policy.&nbsp;<o:p></o:p></font></p>\r\n\r\n<p class=\"MsoNormal\"><font size=\"3\">We may impart your data to a third-party application with\r\nyour assent, for instance when you decide to get to our Services through such\r\nan application. We are not liable for what those gatherings do with your data,\r\nso you should ensure you believe the application and that it has a security\r\nstrategy worthy to you.&nbsp;</font><o:p></o:p></p><p class=\"MsoNormal\"><font size=\"3\"><br></font></p>\r\n\r\n<p class=\"MsoNormal\"><b><font size=\"4\">Laws and Law Enforcement Requests:</font></b>&nbsp;<font size=\"3\">We may reveal\r\nto organization data about you that we gather when we have a decent confidence\r\nconviction that revelation is sensibly important to -:<o:p></o:p></font></p>\r\n\r\n<p class=\"MsoNormal\"><font size=\"3\">Agree to a law, guideline, or necessary lawful;<o:p></o:p></font></p>\r\n\r\n<p class=\"MsoNormal\"><font size=\"3\">&nbsp;Shield the security of any individual from death or\r\ngenuine substantial injury;&nbsp;<o:p></o:p></font></p>\r\n\r\n<p class=\"MsoNormal\"><font size=\"3\">Forestall misrepresentation or maltreatment of its\r\nclients;&nbsp;<o:p></o:p></font></p>\r\n\r\n<p class=\"MsoNormal\"><font size=\"3\">To protect Tazzer&nbsp;Group&nbsp;&nbsp;rights.</font></p><p class=\"MsoNormal\"><font size=\"3\">&nbsp;</font><o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><b><font size=\"4\">Transfers:</font>&nbsp;</b><font size=\"3\">If we are associated with a merger,\r\nprocurement, or offer of all or a segment of our advantages, your data might be\r\nmoved as a component of that exchange, yet we will tell you (for instance, by\r\nmeans of email and additionally a notification on our site) of any adjustment\r\nin charge or utilization of your Personal Information or Files, or if either\r\nbecome subject to an alternate Privacy Policy. We will likewise advise you of\r\ndecisions you may have in regards to the data.&nbsp;</font><o:p></o:p></p><p class=\"MsoNormal\"><font size=\"3\"><br></font></p>\r\n\r\n<p class=\"MsoNormal\"><b><font size=\"4\">Non-private or Non-Personal details:</font>&nbsp;</b><font size=\"3\">We may\r\nuncover your non-private, collected, or in any case non-individual data, for\r\nexample, utilization measurements of our Service.&nbsp;</font><o:p></o:p></p><p class=\"MsoNormal\"><font size=\"3\"><br></font></p>\r\n\r\n<p class=\"MsoNormal\"><b><font size=\"4\">&nbsp;Your Details&nbsp;&nbsp;</font></b><o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><font size=\"3\">On the off chance that you are an enrolled client, you may\r\nsurvey, update, address or erase the Personal Information given in your\r\nenlistment or record profile by assessing your \"account settings\". On\r\nthe off chance that your recognizable data changes, or in the event that you no\r\nlonger want our administration, you may refresh or erase it by accessing our\r\nsettings for you. Now and again we may hold duplicates of your data whenever\r\nlegally necessary.&nbsp;</font><o:p></o:p></p><p class=\"MsoNormal\"><font size=\"3\"><br></font></p>\r\n\r\n<p class=\"MsoNormal\"><b><font size=\"4\">Information Retention&nbsp;</font></b><o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><font size=\"3\">We will hold your data for whatever length of time that your\r\nrecord is dynamic or varying to give you benefits. We may hold and utilize your\r\ndata is important to consent to our legitimate commitments, resolve questions,\r\nand implement our understandings. Predictably with these prerequisites, we will\r\nattempt to erase your data rapidly upon demand. If it\'s not too much trouble,\r\nnote, be that as it may, that there may be dormancy in erasing data from our\r\nservers, and background information up renditions may exist after\r\ncancellation.&nbsp;</font><o:p></o:p></p><p class=\"MsoNormal\"><font size=\"3\"><br></font></p>\r\n\r\n<p class=\"MsoNormal\"><b><font size=\"4\">Security&nbsp;</font></b><o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><font size=\"3\">The security of your data is critical to us. At whatever\r\npoint you submit content utilizing our administration, we scramble the\r\ntransmission of that data utilizing secure attachment layer innovation. We\r\nadhere to commonly acknowledged gauges to ensure the data is submitted to us,\r\nboth during transmission and once we get it. No technique for electronic\r\ntransmission or capacity is 100% secure, be that as it may. In this manner, we\r\ncan\'t ensure its outright security</font><o:p></o:p></p></h2></div>','test,test1,test2,test3','Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.',0,1),
(3,'Terms & Condition','terms','<div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><font size=\"6\">1.1</font><br></h2><p class=\"MsoNormal\"><font size=\"4\">These Terms and Conditions constitute a legally binding\r\nagreement made between you, whether personally or on behalf of an entity (you),\r\nand Tazzer Group, located at 35 HIGH STREET BRAITHWELL ROTHERHAM, SOUTH\r\nYORKSHIRE UNITED KINGDOM S66 7AW, (we, us), concerning your access to and use\r\nof the Website / App (www. tazzergroup.com) website as well as any related\r\napplications (the Site).</font><o:p></o:p></p></div><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><font size=\"6\">1.2</font><br></h2><p><span style=\"line-height: 115%;\" calibri\",sans-serif;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:=\"\" calibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-latin;=\"\" mso-bidi-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-theme-font:minor-bidi;=\"\" mso-ansi-language:en-us;mso-fareast-language:en-us;mso-bidi-language:ar-sa\"=\"\"><font size=\"4\">The\r\nsupplemental policies set out in Section 1.7 below, as well as any supplemental\r\nterms and conditions or documents that may be posted on the Site from time to\r\ntime, are expressly incorporated by reference.</font></span></p></div><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><font size=\"6\">1.3</font><br></h2><p><span style=\"line-height: 115%;\" calibri\",sans-serif;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:=\"\" calibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-latin;=\"\" mso-bidi-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-theme-font:minor-bidi;=\"\" mso-ansi-language:en-us;mso-fareast-language:en-us;mso-bidi-language:ar-sa\"=\"\"><font size=\"4\">We\r\nmay make changes to these Terms and Conditions at any time. The updated version\r\nof these Terms and Conditions will be indicated by an updated “Revised” date\r\nand the updated version will be effective as soon as it is accessible. You are\r\nresponsible for reviewing these Terms and Conditions to stay informed of\r\nupdates. Your continued use of the Site represents that you have accepted such\r\nchanges.</font></span><br></p></div><h2 helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-weight:=\"\" 700;=\"\" line-height:=\"\" 1.1;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);=\"\" margin:=\"\" 0px=\"\" 15px;=\"\" font-size:=\"\" 30px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\" 51);\"=\"\" style=\"font-family: \"><font size=\"6\">1.4</font><br></h2><p helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><span style=\"line-height: 115%;\" calibri\",sans-serif;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:=\"\" calibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-latin;=\"\" mso-bidi-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-theme-font:minor-bidi;=\"\" mso-ansi-language:en-us;mso-fareast-language:en-us;mso-bidi-language:ar-sa\"=\"\"><font size=\"4\">We\r\nmay update or change the Site from time to time to reflect changes to our\r\nproducts, our users\' needs, and/or our business priorities.</font></span><br></p><h2 helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-weight:=\"\" 700;=\"\" line-height:=\"\" 1.1;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);=\"\" margin:=\"\" 0px=\"\" 15px;=\"\" font-size:=\"\" 30px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\" 51);\"=\"\" style=\"line-height: 1.44444;\"><font size=\"6\">1.5</font><br></h2><p helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><span style=\"font-size:11.0pt;line-height:115%;\r\nfont-family:\" calibri\",sans-serif;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:=\"\" calibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-latin;=\"\" mso-bidi-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-theme-font:minor-bidi;=\"\" mso-ansi-language:en-us;mso-fareast-language:en-us;mso-bidi-language:ar-sa\"=\"\"></span></p><p class=\"MsoNormal\"><font size=\"4\">Our site is directed to people residing in the United\r\nKingdom. The information provided on the Site is not intended for distribution\r\nto or use by any person or entity in any jurisdiction or country where such\r\ndistribution or use would be contrary to law or regulation or which would\r\nsubject us to any registration requirement within such jurisdiction or country.</font><o:p></o:p></p><h2 helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-weight:=\"\" 700;=\"\" line-height:=\"\" 1.1;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);=\"\" margin:=\"\" 0px=\"\" 15px;=\"\" font-size:=\"\" 30px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\" 51);\"=\"\" style=\"line-height: 1.44444;\"><font size=\"6\">1.6</font><br></h2><p helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><span style=\"font-size: 11pt; line-height: 16.8667px; font-family: Calibri, sans-serif;\"></span></p><p helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><span style=\"line-height: 115%;\" calibri\",sans-serif;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:=\"\" calibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-latin;=\"\" mso-bidi-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-theme-font:minor-bidi;=\"\" mso-ansi-language:en-us;mso-fareast-language:en-us;mso-bidi-language:ar-sa\"=\"\"><font size=\"4\">The\r\nSite is intended for users who are at least 18 years old. If you are under the\r\nage of 18, you are not permitted to register for the Site or use the Services\r\nwithout parental permission.</font></span><br></p><h2 helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-weight:=\"\" 700;=\"\" line-height:=\"\" 1.1;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);=\"\" margin:=\"\" 0px=\"\" 15px;=\"\" font-size:=\"\" 30px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\" 51);\"=\"\" style=\"line-height: 1.44444;\"><font size=\"6\">1.7</font><br></h2><p helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><span style=\"font-size: 11pt; line-height: 16.8667px; font-family: Calibri, sans-serif;\"></span></p><p class=\"MsoNormal\"><font size=\"4\">Additional policies which also apply to your use of the Site\r\ninclude:<o:p></o:p></font></p><p helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\">\r\n\r\n</p><p class=\"MsoNormal\"><font size=\"4\">Our Privacy Notice www.tazzergroup.com, which sets out the\r\nterms on which we process any personal data we collect from you, or that you\r\nprovide to us. By using the Site, you consent to such processing and you\r\nwarrant that all data provided by you is accurate.</font></p><p helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><span style=\"font-size:11.0pt;line-height:115%;\r\nfont-family:\" calibri\",sans-serif;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:=\"\" calibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-latin;=\"\" mso-bidi-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-theme-font:minor-bidi;=\"\" mso-ansi-language:en-us;mso-fareast-language:en-us;mso-bidi-language:ar-sa\"=\"\"><br></span></p>','t1,t2,t3,t4','By visiting our website and/or purchasing something from us, you engage in our \"Service\" and agreed to abide by the following terms and conditions (\"Terms of Service\", \"Terms\"), including any additional terms and conditions and policies referenced herein and/or accessible via hyperlink. These Terms of Service apply to all site users, including browsers, vendors, customers, merchants, and/or content contributors.\r\nPlease carefully read these Terms of Service before accessing or using our website. You agree to be bound by these Terms of Service by accessing or using any part of the site. You may not access the website or use any services if you do not agree to all of the terms and conditions of this agreement. Acceptance is expressly limited to these Terms of Service if these Terms of Service are considered an offer.\r\nAny new features or tools which are added to the current store shall also be subject to the Terms of Service. You can review the most current version of the Terms of Service at any time on this page. We reserve the right to update, change or replace any part of these Terms of Service by posting updates and/or changes to our website. It is your responsibility to check this page periodically for changes. Your continued use of or access to the website following the posting of any changes constitutes acceptance of those changes. \r\nIf you do not agree with all of these Terms and Conditions, then you are prohibited from using the Site and Services and you must discontinue use immediately. We recommend that you print a copy of these Terms and Conditions for future reference.',0,1),
(4,'Craft','category/Craft-product-supplies-and-tools','<br>',NULL,NULL,1,0),
(5,'Handmade','category/Handmade-products-Supplies-and-tool','<br>',NULL,NULL,1,0),
(6,'Health and Safety','category/Health-and-Safety-products-Supplies-and-tools','<br>',NULL,NULL,1,0),
(7,'Cleaning','category/cleaning-products-supplies-and-tools','<br>',NULL,NULL,1,0),
(8,'Music','music','<br>',NULL,NULL,0,0),
(9,'Sports','sports','<br>',NULL,NULL,0,0);

/*Table structure for table `pagesettings` */

DROP TABLE IF EXISTS `pagesettings`;

CREATE TABLE `pagesettings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `contact_success` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `side_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `side_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider` tinyint(1) NOT NULL DEFAULT 1,
  `service` tinyint(1) NOT NULL DEFAULT 1,
  `featured` tinyint(1) NOT NULL DEFAULT 1,
  `small_banner` tinyint(1) NOT NULL DEFAULT 1,
  `best` tinyint(1) NOT NULL DEFAULT 1,
  `top_rated` tinyint(1) NOT NULL DEFAULT 1,
  `large_banner` tinyint(1) NOT NULL DEFAULT 1,
  `big` tinyint(1) NOT NULL DEFAULT 1,
  `hot_sale` tinyint(1) NOT NULL DEFAULT 1,
  `partners` tinyint(1) NOT NULL DEFAULT 0,
  `review_blog` tinyint(1) NOT NULL DEFAULT 1,
  `best_seller_banner` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `best_seller_banner_link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `big_save_banner` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `big_save_banner_link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bottom_small` tinyint(1) NOT NULL DEFAULT 0,
  `flash_deal` tinyint(1) NOT NULL DEFAULT 0,
  `best_seller_banner1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `best_seller_banner_link1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `big_save_banner1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `big_save_banner_link1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured_category` int(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `pagesettings` */

insert  into `pagesettings`(`id`,`contact_success`,`contact_email`,`contact_title`,`contact_text`,`side_title`,`side_text`,`street`,`phone`,`fax`,`email`,`site`,`slider`,`service`,`featured`,`small_banner`,`best`,`top_rated`,`large_banner`,`big`,`hot_sale`,`partners`,`review_blog`,`best_seller_banner`,`best_seller_banner_link`,`big_save_banner`,`big_save_banner_link`,`bottom_small`,`flash_deal`,`best_seller_banner1`,`best_seller_banner_link1`,`big_save_banner1`,`big_save_banner_link1`,`featured_category`) values 
(1,'Success! Thanks for contacting us, we will get back to you shortly.','admin@geniusocean.com','<h4 class=\"subtitle\" style=\"margin-bottom: 6px; font-weight: 600; line-height: 28px; font-size: 28px; text-transform: uppercase;\">WE\'D LOVE TO</h4><h2 class=\"title\" style=\"margin-bottom: 13px;font-weight: 600;line-height: 50px;font-size: 40px;color: #0f78f2;text-transform: uppercase;\">HEAR FROM YOU</h2>','<span style=\"color: rgb(119, 119, 119);\">Send us a message and we\' ll respond as soon as possible</span><br>','<h4 class=\"title\" style=\"margin-bottom: 10px; font-weight: 600; line-height: 28px; font-size: 28px;\">Let\'s Connect</h4>','<span style=\"color: rgb(51, 51, 51);\">Get in touch with us</span>','3584 Hickory Heights Drive ,Hanover MD 21076, USA','00 000 000 000','00 000 000 000','admin@geniusocean.com','https://geniusocean.com/',1,1,0,1,1,1,1,1,1,1,1,'1568889138banner1.jpg','http://google.com','1565150264banner3.jpg','http://google.com',1,1,'1568889138banner2.jpg','http://google.com','1565150264banner4.jpg','http://google.com',1);

/*Table structure for table `partners` */

DROP TABLE IF EXISTS `partners`;

CREATE TABLE `partners` (
  `id` int(191) NOT NULL AUTO_INCREMENT,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

/*Data for the table `partners` */

insert  into `partners`(`id`,`photo`,`link`) values 
(7,'1571289583p1.jpg','https://www.google.com/'),
(8,'1571289601p2.jpg','https://www.google.com/'),
(9,'1571289608p3.jpg','https://www.google.com/'),
(10,'1571289614p4.jpg','https://www.google.com/'),
(11,'1571289621p5.jpg','https://www.google.com/'),
(12,'1571289627p6.jpg','https://www.google.com/'),
(13,'1571289634p7.jpg','https://www.google.com/'),
(14,'1571289642p8.jpg','https://www.google.com/'),
(15,'1571289650p9.jpg','https://www.google.com/'),
(16,'1571289657p10.jpg','https://www.google.com/'),
(17,'1571289663p11.jpg','https://www.google.com/'),
(18,'1571289669p12.jpg','https://www.google.com/'),
(19,'1571289675p13.jpg','https://www.google.com/'),
(20,'1571289680p14.jpg','https://www.google.com/');

/*Table structure for table `payment_gateways` */

DROP TABLE IF EXISTS `payment_gateways`;

CREATE TABLE `payment_gateways` (
  `id` int(191) NOT NULL AUTO_INCREMENT,
  `subtitle` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(10) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;

/*Data for the table `payment_gateways` */

insert  into `payment_gateways`(`id`,`subtitle`,`title`,`details`,`status`) values 
(46,'Pay via Manual Payment.','Manual Payment','<font size=\"3\"><font size=\"3\"><b>Manual Payment</b></font><b>&nbsp;No: 6528068515</b><br><br></font>',1);

/*Table structure for table `pickups` */

DROP TABLE IF EXISTS `pickups`;

CREATE TABLE `pickups` (
  `id` int(191) unsigned NOT NULL AUTO_INCREMENT,
  `location` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `pickups` */

insert  into `pickups`(`id`,`location`) values 
(2,'Azampur'),
(3,'Dhaka'),
(4,'Kazipara'),
(5,'Kamarpara'),
(6,'Uttara');

/*Table structure for table `product_clicks` */

DROP TABLE IF EXISTS `product_clicks`;

CREATE TABLE `product_clicks` (
  `id` int(191) NOT NULL AUTO_INCREMENT,
  `product_id` int(191) NOT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;

/*Data for the table `product_clicks` */

insert  into `product_clicks`(`id`,`product_id`,`date`) values 
(4,102,'2020-01-12'),
(5,171,'2020-01-23'),
(6,95,'2020-01-23'),
(7,130,'2020-01-27'),
(8,130,'2020-01-27'),
(9,130,'2020-01-27'),
(10,102,'2020-02-01'),
(11,101,'2020-02-01'),
(12,100,'2020-02-01'),
(13,99,'2020-02-01'),
(14,96,'2020-02-01'),
(15,96,'2020-02-01'),
(16,96,'2020-02-01'),
(17,96,'2020-02-01'),
(18,96,'2020-02-01'),
(19,101,'2021-07-15'),
(20,194,'2021-07-15'),
(21,109,'2021-07-15'),
(22,194,'2021-07-16'),
(23,128,'2021-07-16'),
(24,95,'2021-07-16'),
(25,191,'2021-07-16'),
(26,144,'2021-07-16'),
(27,182,'2021-07-16'),
(28,182,'2021-07-16'),
(29,130,'2021-07-16'),
(30,105,'2021-07-16'),
(31,105,'2021-07-16'),
(32,105,'2021-07-16'),
(33,105,'2021-07-16'),
(34,105,'2021-07-16'),
(35,105,'2021-07-16'),
(36,105,'2021-07-16'),
(37,95,'2021-11-19'),
(38,194,'2021-11-19'),
(39,191,'2021-11-20'),
(40,191,'2021-11-20'),
(41,191,'2021-11-20'),
(42,191,'2021-11-20'),
(43,190,'2021-11-20'),
(44,190,'2021-11-20'),
(45,195,'2021-11-20'),
(46,97,'2021-11-20'),
(47,95,'2021-11-20'),
(48,95,'2021-11-20'),
(49,188,'2021-11-20'),
(50,106,'2021-11-20'),
(51,106,'2021-11-20');

/*Table structure for table `products` */

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `id` int(191) unsigned NOT NULL AUTO_INCREMENT,
  `sku` varchar(255) DEFAULT NULL,
  `product_type` enum('normal','affiliate') NOT NULL DEFAULT 'normal',
  `affiliate_link` text DEFAULT NULL,
  `user_id` int(191) NOT NULL DEFAULT 0,
  `category_id` int(191) unsigned NOT NULL,
  `subcategory_id` int(191) unsigned DEFAULT NULL,
  `childcategory_id` int(191) unsigned DEFAULT NULL,
  `attributes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size_qty` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size_price` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double NOT NULL,
  `previous_price` double DEFAULT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock` int(191) DEFAULT NULL,
  `policy` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(2) unsigned NOT NULL DEFAULT 1,
  `views` int(191) unsigned NOT NULL DEFAULT 0,
  `tags` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `features` text DEFAULT NULL,
  `colors` text DEFAULT NULL,
  `product_condition` tinyint(1) NOT NULL DEFAULT 0,
  `ship` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_meta` tinyint(1) NOT NULL DEFAULT 0,
  `meta_tag` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('Physical','Digital','License') NOT NULL,
  `license` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `license_qty` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `platform` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `licence_type` varchar(255) DEFAULT NULL,
  `measure` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` tinyint(2) unsigned NOT NULL DEFAULT 0,
  `best` tinyint(10) unsigned NOT NULL DEFAULT 0,
  `top` tinyint(10) unsigned NOT NULL DEFAULT 0,
  `hot` tinyint(10) unsigned NOT NULL DEFAULT 0,
  `latest` tinyint(10) unsigned NOT NULL DEFAULT 0,
  `big` tinyint(10) unsigned NOT NULL DEFAULT 0,
  `trending` tinyint(1) NOT NULL DEFAULT 0,
  `sale` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_discount` tinyint(1) NOT NULL DEFAULT 0,
  `discount_date` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whole_sell_qty` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whole_sell_discount` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_catalog` tinyint(1) NOT NULL DEFAULT 0,
  `catalog_id` int(191) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `name` (`name`),
  FULLTEXT KEY `attributes` (`attributes`)
) ENGINE=InnoDB AUTO_INCREMENT=196 DEFAULT CHARSET=latin1;

/*Data for the table `products` */

insert  into `products`(`id`,`sku`,`product_type`,`affiliate_link`,`user_id`,`category_id`,`subcategory_id`,`childcategory_id`,`attributes`,`name`,`slug`,`photo`,`thumbnail`,`file`,`size`,`size_qty`,`size_price`,`color`,`price`,`previous_price`,`details`,`stock`,`policy`,`status`,`views`,`tags`,`features`,`colors`,`product_condition`,`ship`,`is_meta`,`meta_tag`,`meta_description`,`youtube`,`type`,`license`,`license_qty`,`link`,`platform`,`region`,`licence_type`,`measure`,`featured`,`best`,`top`,`hot`,`latest`,`big`,`trending`,`sale`,`created_at`,`updated_at`,`is_discount`,`discount_date`,`whole_sell_qty`,`whole_sell_discount`,`is_catalog`,`catalog_id`) values 
(93,NULL,'normal',NULL,0,11,NULL,NULL,NULL,'product_title','digital-product-title-will-be-here-by-name-1-94l93dsn','15680269303GYKjODW.png','1568026930poclhyxJ.jpg','1568016463minimal (16).zip',NULL,NULL,NULL,NULL,50,75,'<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>',NULL,'<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>',1,40,'book,ebook',NULL,NULL,0,NULL,0,'book,ebook','These are ebook from Demo store.','https://www.youtube.com/watch?v=HxNydN5tScI','Digital',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,0,0,0,0,'2019-09-09 00:07:43','2019-12-28 16:39:18',0,NULL,NULL,NULL,0,0),
(95,'pr495jsv','affiliate','https://www.amazon.com/Rolex-Master-Automatic-self-Wind-Certified-Pre-Owned/dp/B07MHJ8SVQ/ref=lp_13779934011_1_2?s=apparel&ie=UTF8&qid=1565186470&sr=1-2&nodeID=13779934011&psd=1',13,4,NULL,NULL,NULL,'product_title\r\n','affiliate-product-title-will-be-here-affiliate-product-title-will-be-here-1-pr495jsv','1568027732dTwHda8l.png','1568027751AidGUyJv.jpg',NULL,NULL,NULL,NULL,'#000000,#a33333,#d90b0b,#209125',50,100,'<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>',55555,'<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>',1,52,'watch',NULL,NULL,2,'5-7 days',0,NULL,NULL,NULL,'Physical',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,'2019-09-09 00:36:06','2021-11-20 02:33:30',1,'09/08/2021',NULL,NULL,0,0),
(96,'pr601jsv','normal',NULL,13,5,6,NULL,NULL,'product_title','top-rated-product-title-will-be-here-according-to-your-wish-96-rdk96x5b','1568025872cCRVsp2k.png','1568025872thPsuRSJ.jpg',NULL,NULL,NULL,NULL,'#000000,#15a0bf,#f5cf07,#2b4cc2,#247d32,#d62727',100,500,'<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>',NULL,'<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>',1,18,'fashion',NULL,NULL,2,'5-7 days',0,'fashion','Fashion meta tag from Demo store.','https://www.youtube.com/watch?v=HxNydN5tScI','Physical',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,1,0,0,1,'2019-09-09 01:00:05','2020-01-31 16:30:32',0,NULL,'10,20,30,40','5,10,15,20',0,0),
(97,'pr602jsv','normal',NULL,13,5,7,NULL,NULL,'product_title','physical-product-title-title-will-be-here-97-pr602jsv','1568026462TxRJ07FG.png','1568026462WBWcd7KZ.jpg',NULL,'S,M,L','2147483596,2147483597,2147483596','20,30,40','#000000,#851818,#ff0d0d,#1feb4c,#d620cf,#186ceb',100,200,'<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>',NULL,'<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>',1,69,'clothing,bag',NULL,NULL,2,'5-7 days',0,'clothing,bag','clothing, bag','https://www.youtube.com/watch?v=HxNydN5tScI','Physical',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,0,0,0,0,0,'2019-09-09 04:59:33','2021-11-20 01:09:46',0,NULL,'10,20,30,40','5,10,15,20',0,0),
(99,'pr604jsv','normal',NULL,13,5,7,NULL,NULL,'product_title','physical-product-title-title-will-be-here-99-hjm99shr','15680264040zpMCpmS.png','1568026404Hm4kTmnP.jpg',NULL,'S','2147483641','20','#000000,#851818,#ff0d0d,#1feb4c,#d620cf,#186ceb',100,200,'<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>',NULL,'<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>',1,17,'clothing,bag',NULL,NULL,2,'5-7 days',0,'clothing,bag','clothing, bag','https://www.youtube.com/watch?v=HxNydN5tScI','Physical',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,0,0,0,0,0,'2019-09-09 04:59:33','2020-01-31 16:23:13',0,NULL,'10,20,30,40','5,10,15,20',1,0),
(100,'pr605jsv','normal',NULL,13,5,7,NULL,NULL,'product_title','physical-product-title-title-will-be-here-100-qqz100nzi','1568026368qU5AILZo.png','1568026368CzWwfWLG.jpg',NULL,'S','2147483646','20','#000000,#851818,#ff0d0d,#1feb4c,#d620cf,#186ceb',100,200,'<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>',NULL,'<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>',1,8,'clothing,bag',NULL,NULL,2,'5-7 days',0,'clothing,bag','clothing, bag','https://www.youtube.com/watch?v=HxNydN5tScI','Physical',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,1,1,0,1,1,'2019-09-09 04:59:33','2020-01-31 17:13:22',0,NULL,'10,20,30,40','5,10,15,20',0,0),
(101,'pr606jsv','normal',NULL,13,5,7,NULL,NULL,'product_title','physical-product-title-title-will-be-here-101-8e1101lbq','1568026326RDSwScJe.png','1568026326vMlslLz4.jpg',NULL,'S','2147483644','20','#000000,#851818,#ff0d0d,#1feb4c,#d620cf,#186ceb',100,200,'<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>',NULL,'<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>',1,6,'clothing,bag',NULL,NULL,2,'5-7 days',0,'clothing,bag','clothing, bag','https://www.youtube.com/watch?v=HxNydN5tScI','Physical',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,0,0,0,0,0,'2019-09-09 04:59:33','2021-07-15 02:40:19',0,NULL,'10,20,30,40','5,10,15,20',0,0),
(102,'pr607jsv','normal',NULL,13,5,7,NULL,NULL,'product_title\r\n','physical-product-title-title-will-be-here-102-pr607jsv','1568026301A6SNpEFR.png','1568026301VLkmQEpb.jpg',NULL,'S','2147483623','20','#000000,#851818,#ff0d0d,#1feb4c,#d620cf,#186ceb',100,200,'<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>',NULL,'<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>',1,12,'clothing,bag',NULL,NULL,1,'5-7 days',0,'clothing,bag','clothing, bag','https://www.youtube.com/watch?v=HxNydN5tScI','Physical',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,0,0,0,0,0,'2019-09-09 04:59:33','2020-01-31 19:16:12',0,NULL,'10,20,30,40','5,10,15,20',1,0),
(103,NULL,'normal',NULL,13,11,NULL,NULL,NULL,'product_title','digital-product-title-will-be-here-by-name-1-laj1033wf','1568026899SLhVRzQv.png','15680268999fypNo3k.jpg','1568016463minimal (16).zip',NULL,NULL,NULL,NULL,50,75,'<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>',NULL,'<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>',1,4,'book,ebook',NULL,NULL,0,NULL,0,'book,ebook','These are ebook from Demo store.','https://www.youtube.com/watch?v=HxNydN5tScI','Digital',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,0,0,0,0,'2019-09-09 05:07:43','2019-10-02 18:16:24',0,NULL,NULL,NULL,0,0),
(104,NULL,'normal',NULL,13,11,NULL,NULL,NULL,'product_title','digital-product-title-will-be-here-by-name-104-ffv1047iv','1568026881R8KnUyJv.png','1568026881yy7vilmh.jpg','1568016463minimal (16).zip',NULL,NULL,NULL,NULL,50,75,'<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>',NULL,'<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>',1,6,'book,ebook',NULL,NULL,0,NULL,0,'book,ebook','These are ebook from Demo store.','https://www.youtube.com/watch?v=HxNydN5tScI','Digital',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,0,0,0,0,'2019-09-09 05:07:43','2019-09-10 01:21:46',0,NULL,NULL,NULL,0,0),
(105,NULL,'normal',NULL,13,11,NULL,NULL,NULL,'product_title','digital-product-title-will-be-here-by-name-105-xpt105lfz','1568026853LMtcb9he.png','1568026853ZnMf5AkF.jpg','1568016463minimal (16).zip',NULL,NULL,NULL,NULL,50,75,'<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>',NULL,'<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>',1,10,'book,ebook',NULL,NULL,0,NULL,0,'book,ebook','These are ebook from Demo store.','https://www.youtube.com/watch?v=HxNydN5tScI','Digital',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,0,0,0,0,'2019-09-09 05:07:43','2021-07-16 15:59:36',0,NULL,NULL,NULL,0,0),
(106,NULL,'normal',NULL,13,11,NULL,NULL,NULL,'product_title','digital-product-title-will-be-here-by-name-106-iq4106dr3','1568026820NnXjzL5e.png','1568026820j7QX4FZs.jpg','1568016463minimal (16).zip',NULL,NULL,NULL,NULL,50,75,'<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>',NULL,'<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>',1,5,'book,ebook',NULL,NULL,0,NULL,0,'book,ebook','These are ebook from Demo store.','https://www.youtube.com/watch?v=HxNydN5tScI','Digital',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,0,0,0,0,'2019-09-09 05:07:43','2021-11-20 02:41:06',0,NULL,NULL,NULL,0,0),
(107,NULL,'normal',NULL,13,11,NULL,NULL,NULL,'product_title','digital-product-title-will-be-here-by-name-107-4ll107cru','1568026791NGCCXoMs.png','1568026791O2FR26Va.jpg','1568016463minimal (16).zip',NULL,NULL,NULL,NULL,50,75,'<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>',NULL,'<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>',1,4,'book,ebook',NULL,NULL,0,NULL,0,'book,ebook','These are ebook from Demo store.','https://www.youtube.com/watch?v=HxNydN5tScI','Digital',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,0,0,0,0,'2019-09-09 05:07:43','2019-10-12 15:27:40',0,NULL,NULL,NULL,0,0),
(109,NULL,'normal',NULL,13,11,NULL,NULL,NULL,'product_title','digital-product-title-will-be-here-by-name-109-ext109m9m','15680267308Mckygzw.png','1568026730uz1TS02K.jpg','1568016463minimal (16).zip',NULL,NULL,NULL,NULL,50,75,'<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>',NULL,'<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>',1,2,'book,ebook',NULL,NULL,0,NULL,0,'book,ebook','These are ebook from Demo store.','https://www.youtube.com/watch?v=HxNydN5tScI','Digital',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,0,0,0,0,'2019-09-09 05:07:43','2021-07-15 18:24:00',0,NULL,NULL,NULL,0,0),
(111,NULL,'normal',NULL,13,8,NULL,NULL,NULL,'product_title','license-key-title-will-be-here-according-to-your-wish-111-wb3111ubd','1568029267UZnlkD97.png','1568029267AY9MRYAQ.jpg','156801752005.zip',NULL,NULL,NULL,NULL,80,100,'<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>',NULL,'<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>',1,3,'game',NULL,NULL,0,NULL,0,NULL,NULL,'https://www.youtube.com/watch?v=HxNydN5tScI','License','888888888888888888888888','9999999999999999999999999',NULL,NULL,NULL,NULL,NULL,0,0,0,0,1,1,1,1,'2019-09-09 05:25:20','2019-09-18 19:39:08',0,NULL,NULL,NULL,0,0),
(112,NULL,'normal',NULL,13,8,NULL,NULL,NULL,'product_title','license-key-title-will-be-here-according-to-your-wish-1-sct112k8z','1568029203HHnZu8em.png','1568029203eAzBjS8a.jpg','156801752005.zip',NULL,NULL,NULL,NULL,80,100,'<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>',NULL,'<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>',1,3,'game','Keyword 2,Keyword1','#e80707,#113fe0',0,NULL,0,NULL,NULL,'https://www.youtube.com/watch?v=HxNydN5tScI','License','888888888888888888888888','9999999999999999999999999',NULL,NULL,NULL,NULL,NULL,0,0,0,1,0,1,1,1,'2019-09-09 05:25:20','2019-09-09 13:23:17',0,NULL,NULL,NULL,0,0),
(114,NULL,'normal',NULL,13,8,NULL,NULL,NULL,'product_title','license-key-title-will-be-here-according-to-your-wish-1-bbb114jm9','1568029152hgFzyOZv.png','1568029152PVeSE2Ct.jpg','156801752005.zip',NULL,NULL,NULL,NULL,80,100,'<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>',NULL,'<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>',1,1,'game',NULL,NULL,0,NULL,0,NULL,NULL,'https://www.youtube.com/watch?v=HxNydN5tScI','License','888888888888888888888888','9999999999999999999999999',NULL,NULL,NULL,NULL,NULL,0,0,0,1,0,1,0,1,'2019-09-09 05:25:20','2019-10-01 16:34:27',0,NULL,NULL,NULL,0,0),
(116,'pr496jsv','affiliate','https://www.amazon.com/Rolex-Master-Automatic-self-Wind-Certified-Pre-Owned/dp/B07MHJ8SVQ/ref=lp_13779934011_1_2?s=apparel&ie=UTF8&qid=1565186470&sr=1-2&nodeID=13779934011&psd=1',13,4,NULL,NULL,NULL,'product_title','affiliate-product-title-will-be-here-affiliate-product-title-will-be-here-1-pr495jsv','1568027684whVhJDrR.png','1568027717gm0tFzeb.jpg',NULL,NULL,NULL,NULL,'#000000,#a33333,#d90b0b,#209125',50,100,'<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>',55555,'<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>',1,0,'watch','Keyword1,Keyword 2','#ff1a1a,#0fbcd4',2,'5-7 days',0,NULL,NULL,NULL,'Physical',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,'2019-09-09 05:36:06','2019-09-09 03:15:17',1,'09/08/2021',NULL,NULL,0,0),
(117,'pr497jsv','affiliate','https://www.amazon.com/Rolex-Master-Automatic-self-Wind-Certified-Pre-Owned/dp/B07MHJ8SVQ/ref=lp_13779934011_1_2?s=apparel&ie=UTF8&qid=1565186470&sr=1-2&nodeID=13779934011&psd=1',13,4,NULL,NULL,NULL,'product_title','affiliate-product-title-will-be-here-affiliate-product-title-will-be-here-1-pr495jsv','1568027658Up0FIXsW.png','1568027670dTA7gQml.jpg',NULL,NULL,NULL,NULL,'#000000,#a33333,#d90b0b,#209125',50,100,'<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>',55555,'<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>',1,0,'watch',NULL,NULL,2,'5-7 days',0,NULL,NULL,NULL,'Physical',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,'2019-09-09 05:36:06','2019-09-09 03:14:30',1,'09/08/2021',NULL,NULL,0,0),
(118,'pr498jsv','affiliate','https://www.amazon.com/Rolex-Master-Automatic-self-Wind-Certified-Pre-Owned/dp/B07MHJ8SVQ/ref=lp_13779934011_1_2?s=apparel&ie=UTF8&qid=1565186470&sr=1-2&nodeID=13779934011&psd=1',13,4,NULL,NULL,NULL,'product_title','affiliate-product-title-will-be-here-affiliate-product-title-will-be-here-1-pr495jsv','1568027631cnmEylRa.png','1568027643PgYviwVK.jpg',NULL,NULL,NULL,NULL,'#000000,#a33333,#d90b0b,#209125',50,100,'<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>',55555,'<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>',1,0,'watch',NULL,NULL,2,'5-7 days',0,NULL,NULL,NULL,'Physical',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,'2019-09-09 05:36:06','2019-09-09 03:14:03',1,'09/08/2021',NULL,NULL,0,0),
(119,'pr499jsv','affiliate','https://www.amazon.com/Rolex-Master-Automatic-self-Wind-Certified-Pre-Owned/dp/B07MHJ8SVQ/ref=lp_13779934011_1_2?s=apparel&ie=UTF8&qid=1565186470&sr=1-2&nodeID=13779934011&psd=1',13,4,NULL,NULL,NULL,'product_title','affiliate-product-title-will-be-here-affiliate-product-title-will-be-here-1-pr495jsv','1568027603i5UAZiKB.png','1568027616O1coe3aV.jpg',NULL,NULL,NULL,NULL,'#000000,#a33333,#d90b0b,#209125',50,100,'<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>',55555,'<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>',1,0,'watch',NULL,NULL,2,'5-7 days',0,NULL,NULL,NULL,'Physical',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,'2019-09-09 05:36:06','2019-09-09 03:13:36',1,'09/08/2021',NULL,NULL,0,0),
(120,'pr500jsv','affiliate','https://www.amazon.com/Rolex-Master-Automatic-self-Wind-Certified-Pre-Owned/dp/B07MHJ8SVQ/ref=lp_13779934011_1_2?s=apparel&ie=UTF8&qid=1565186470&sr=1-2&nodeID=13779934011&psd=1',13,4,NULL,NULL,NULL,'product_title','affiliate-product-title-will-be-here-affiliate-product-title-will-be-here-1-pr495jsv','1568027558gLSECTIh.png','1568027591b1oUIo7Q.jpg',NULL,NULL,NULL,NULL,'#000000,#a33333,#d90b0b,#209125',50,100,'<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>',55555,'<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>',1,0,'watch',NULL,NULL,2,'5-7 days',0,NULL,NULL,NULL,'Physical',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,1,0,'2019-09-09 05:36:06','2019-09-09 03:53:33',1,'09/08/2021',NULL,NULL,0,0),
(121,'pr501jsv','affiliate','https://www.amazon.com/Rolex-Master-Automatic-self-Wind-Certified-Pre-Owned/dp/B07MHJ8SVQ/ref=lp_13779934011_1_2?s=apparel&ie=UTF8&qid=1565186470&sr=1-2&nodeID=13779934011&psd=1',13,4,NULL,NULL,NULL,'product_title','affiliate-product-title-will-be-here-affiliate-product-title-will-be-here-1-pr495jsv','1568027534O1QEBPpR.png','1568027543P8eoamtf.jpg',NULL,NULL,NULL,NULL,'#000000,#a33333,#d90b0b,#209125',50,100,'<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>',55555,'<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>',1,0,'watch',NULL,NULL,2,'5-7 days',0,NULL,NULL,NULL,'Physical',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,'2019-09-09 05:36:06','2019-09-09 03:12:23',1,'09/08/2021',NULL,NULL,0,0),
(122,'pr502jsv','affiliate','https://www.amazon.com/Rolex-Master-Automatic-self-Wind-Certified-Pre-Owned/dp/B07MHJ8SVQ/ref=lp_13779934011_1_2?s=apparel&ie=UTF8&qid=1565186470&sr=1-2&nodeID=13779934011&psd=1',13,4,NULL,NULL,NULL,'product_title','affiliate-product-title-will-be-here-affiliate-product-title-will-be-here-1-pr495jsv','1568027493eLqHNoZP.png','1568027517LGq90luX.jpg',NULL,NULL,NULL,NULL,'#000000,#a33333,#d90b0b,#209125',50,100,'<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>',55555,'<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>',1,0,'watch',NULL,NULL,2,'5-7 days',0,NULL,NULL,NULL,'Physical',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,'2019-09-09 05:36:06','2019-09-09 03:11:57',1,'09/08/2021',NULL,NULL,0,0),
(123,'pr608jsv','normal',NULL,13,5,6,NULL,NULL,'product_title','top-rated-product-title-will-be-here-according-to-your-wish-123-0af12392v','1568025845ksCVo0hg.png','1568025845bvB0Q0RE.jpg',NULL,NULL,NULL,NULL,'#000000,#15a0bf,#f5cf07,#2b4cc2,#247d32,#d62727',100,500,'<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>',NULL,'<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>',1,7,'fashion',NULL,NULL,2,'5-7 days',0,'fashion','Fashion meta tag from Demo store.','https://www.youtube.com/watch?v=HxNydN5tScI','Physical',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,1,0,0,1,'2019-09-09 06:00:05','2019-10-11 21:26:54',0,NULL,'10,20,30,40','5,10,15,20',1,0),
(124,'pr609jsv','normal',NULL,13,5,6,NULL,NULL,'product_title','top-rated-product-title-will-be-here-according-to-your-wish-124-hua12449x','1568025818Iu033mHq.png','1568025818tm9YHIHp.jpg',NULL,NULL,NULL,NULL,'#000000,#15a0bf,#f5cf07,#2b4cc2,#247d32,#d62727',100,500,'<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>',NULL,'<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>',1,3,'fashion',NULL,NULL,2,'5-7 days',0,'fashion','Fashion meta tag from Demo store.','https://www.youtube.com/watch?v=HxNydN5tScI','Physical',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,1,1,0,1,1,'2019-09-09 06:00:05','2019-10-01 20:39:33',0,NULL,'10,20,30,40','5,10,15,20',1,0),
(125,'pr610jsv','normal',NULL,13,5,6,NULL,NULL,'product_title','top-rated-product-title-will-be-here-according-to-your-wish-125-lbp125hto','1568025774B3MU5tJK.png','1568025774ZsBKNuio.jpg',NULL,NULL,NULL,NULL,'#000000,#15a0bf,#f5cf07,#2b4cc2,#247d32,#d62727',100,500,'<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>',NULL,'<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>',1,1,'fashion',NULL,NULL,2,'5-7 days',0,'fashion','Fashion meta tag from Demo store.','https://www.youtube.com/watch?v=HxNydN5tScI','Physical',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,1,0,0,0,1,'2019-09-09 06:00:05','2019-10-01 14:57:30',0,NULL,'10,20,30,40','5,10,15,20',0,0),
(126,'pr611jsv','normal',NULL,13,5,6,NULL,NULL,'product_title','top-rated-product-title-will-be-here-according-to-your-wish-1-7uo96fft','1568025683HenL6lSt.png','1568025683ZYvDAf0q.jpg',NULL,NULL,NULL,NULL,'#000000,#15a0bf,#f5cf07,#2b4cc2,#247d32,#d62727',100,500,'<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>',NULL,'<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; padding: 0px; text-align: justify;\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; padding: 0px; text-align: justify;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>',1,10,'fashion',NULL,NULL,2,'5-7 days',0,'fashion','Fashion meta tag from Demo store.','https://www.youtube.com/watch?v=HxNydN5tScI','Physical',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,0,0,0,0,'2019-09-09 06:00:05','2019-10-01 14:57:22',0,NULL,'10,20,30,40','5,10,15,20',0,0),
(128,'pr613jsv','normal',NULL,13,5,6,NULL,NULL,'product_title','top-rated-product-title-will-be-here-according-to-your-wish-102-rgr128igz','1568025531RbQwgMZ5.png','1568025531ckSl3TVR.jpg',NULL,NULL,NULL,NULL,'#000000,#15a0bf,#f5cf07,#2b4cc2,#247d32,#d62727',100,500,'<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>',NULL,'<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>',1,3,'fashion','Keyword1,Keyword 2','#42c406,#f00505',2,'5-7 days',0,'fashion','Fashion meta tag from Demo store.','https://www.youtube.com/watch?v=HxNydN5tScI','Physical',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,1,1,0,0,1,'2019-09-09 06:00:05','2021-07-16 10:44:05',0,NULL,'10,20,30,40','5,10,15,20',0,0),
(129,'pr614jsv','normal',NULL,13,5,6,NULL,NULL,'product_title','top-rated-product-title-will-be-here-according-to-your-wish-101-nls129ico','1568025423UQNFrvNh.png','15680254230iXcasMb.jpg',NULL,NULL,NULL,NULL,'#000000,#15a0bf,#f5cf07,#2b4cc2,#247d32,#d62727',100,500,'<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>',NULL,'<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>',1,2,'fashion',NULL,NULL,2,'5-7 days',0,'fashion','Fashion meta tag from Demo store.','https://www.youtube.com/watch?v=HxNydN5tScI','Physical',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,1,1,0,1,1,'2019-09-09 06:00:05','2019-10-01 20:39:25',0,NULL,'10,20,30,40','5,10,15,20',1,0),
(130,NULL,'normal',NULL,13,8,NULL,NULL,NULL,'product_title ','license-key-title-will-be-here-according-to-your-wish-130-nwn1300xx','1568029076fUcMe2QP.png','1568029076jgoAP4SR.jpg','156801752005.zip',NULL,NULL,NULL,NULL,80,100,'<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>',NULL,'<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>',1,9,'game',NULL,NULL,0,NULL,0,NULL,NULL,'https://www.youtube.com/watch?v=HxNydN5tScI','License','888888888888888888888888','999',NULL,NULL,NULL,NULL,NULL,0,0,0,1,1,1,1,1,'2019-09-09 05:25:20','2021-07-16 11:27:29',0,NULL,NULL,NULL,0,0),
(134,'OO42939gas','normal',NULL,13,4,2,NULL,NULL,'product_title','elite-24-elite-hd-led-tv-dn600d-oo42939gas','1570072567FiBwycha.png','1570072567Cqr5iSzD.jpg',NULL,NULL,NULL,NULL,NULL,300,400,'<span style=\"color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" sans-serif;\"=\"\"><font size=\"3\">TVs always get the final say where the couch goes. We want to shake things up and give you the freedom to decorate the way you want to, not the way you have to. It’s fun, playful and unique, and it goes anywhere. It fits your lifestyle, not the other way around. Its smooth, clean design blends in anywhere, yet the playful color doesn’t get buried. Now, you have the freedom to tailor your TV to your own lifestyle. Finally, a TV that fits you. No messy wires. No unsightly air vents. Just one cord for a smooth back that looks great anywhere. This power consumption system will get 90% saving your electrical power.</font></span><br>',992,'<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\"><font size=\"3\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</font></span><br>',1,36,'tv,television',NULL,NULL,0,NULL,0,NULL,NULL,'https://www.youtube.com/watch?v=MIJBxqzazeM','Physical',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,'2019-09-24 17:33:22','2019-10-11 23:20:27',0,NULL,NULL,NULL,1,0),
(135,'3uZ9903ofs','normal',NULL,13,4,2,NULL,NULL,'product_title','32-napco-dglass-ultra-slim-hd-led-tv-es700e-3uz9903ofs','1570072554QTCZrnNj.png','1570072555mZv9XiNP.jpg',NULL,NULL,NULL,NULL,NULL,300,500,'<span style=\"color: rgb(0, 0, 0); font-family: calibri, sans-serif;\"><font size=\"4\">NAPCO TV always get the final say where the couch goes. We want to shake things up and give you the freedom to decorate the way you want to, not the way you have to. It’s fun, playful and unique, and it goes anywhere. It fits your lifestyle, not the other way around. Its smooth, clean design blends in anywhere, yet the playful color doesn’t get buried. Now, you have the freedom to tailor your TV to your own lifestyle. Finally, a TV that fits you. No messy wires. No unsightly air vents. Just one cord for a smooth back that looks great anywhere. This power consumption system will get 90% saving your electrical power.</font></span><br>',396,'<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span><br>',1,80,'lcd,tv,led',NULL,NULL,0,NULL,0,NULL,NULL,'https://www.youtube.com/watch?v=LIqQNG_q2us','Physical',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,'2019-09-29 16:08:12','2019-10-11 22:43:18',0,NULL,NULL,NULL,1,0),
(144,'vrX2915O5c','normal',NULL,13,4,2,NULL,NULL,'product_title','32-napco-dglass-ultra-slim-hd-led-tv-es700e-vrx2915o5c','1570072918cZGfHP4L.jpg','1570072918kGfglIIV.jpg',NULL,NULL,NULL,NULL,NULL,300,500,'<span style=\"color: rgb(0, 0, 0); font-family: calibri, sans-serif;\"><font size=\"4\">NAPCO TV always get the final say where the couch goes. We want to shake things up and give you the freedom to decorate the way you want to, not the way you have to. It’s fun, playful and unique, and it goes anywhere. It fits your lifestyle, not the other way around. Its smooth, clean design blends in anywhere, yet the playful color doesn’t get buried. Now, you have the freedom to tailor your TV to your own lifestyle. Finally, a TV that fits you. No messy wires. No unsightly air vents. Just one cord for a smooth back that looks great anywhere. This power consumption system will get 90% saving your electrical power.</font></span><br>',396,'<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span><br>',1,22,'lcd,tv,led',NULL,NULL,0,NULL,0,NULL,NULL,'https://www.youtube.com/watch?v=LIqQNG_q2us','Physical',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,'2019-10-02 14:21:58','2021-07-16 11:09:09',0,NULL,NULL,NULL,0,135),
(169,'TRg5938WNy','normal',NULL,13,5,6,NULL,NULL,'product_title','top-rated-product-title-will-be-here-according-to-your-wish-123-trg5938wny','1570875978KD9cRleA.jpg','15708759789N9Hm1QJ.jpg',NULL,NULL,NULL,NULL,'Red,#000000,#15a0bf,#f5cf07,#2b4cc2,#247d32,#d62727',100,500,'<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>',NULL,'<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>',1,4,'fashion',NULL,NULL,2,'5-7 days',0,'fashion','Fashion meta tag from Demo store.','https://www.youtube.com/watch?v=HxNydN5tScI','Physical',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,'2019-10-11 21:26:18','2019-10-11 21:31:05',0,NULL,'10,20,30,40','5,10,15,20',0,123),
(170,'6Vb6172gWR','normal',NULL,13,5,6,NULL,NULL,'product_title\r\n','top-rated-product-title-will-be-here-according-to-your-wish-123-6vb6172gwr','1570876195YsopRMZ0.jpg','157087619598Nfs52R.jpg',NULL,NULL,NULL,NULL,'Black,Red,#000000,#15a0bf,#f5cf07,#2b4cc2,#247d32,#d62727',100,500,'<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>',NULL,'<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>',1,0,'fashion',NULL,NULL,2,'5-7 days',0,'fashion','Fashion meta tag from Demo store.','https://www.youtube.com/watch?v=HxNydN5tScI','Physical',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,'2019-10-11 21:29:55','2019-10-11 21:29:55',0,NULL,'10,20,30,40','5,10,15,20',0,123),
(171,'zia62030Vj','normal',NULL,13,5,6,NULL,NULL,'product_title','top-rated-product-title-will-be-here-according-to-your-wish-123-zia62030vj','1570876207958wem8B.jpg','1570876207Ri9VVzRq.jpg',NULL,NULL,NULL,NULL,'#000000,#15a0bf,#f5cf07,#2b4cc2,#247d32,#d62727',100,500,'<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>',NULL,'<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>',1,1,'fashion',NULL,NULL,2,'5-7 days',0,'fashion','Fashion meta tag from Demo store.','https://www.youtube.com/watch?v=HxNydN5tScI','Physical',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,'2019-10-11 21:30:07','2020-01-22 16:53:46',0,NULL,'10,20,30,40','5,10,15,20',0,123),
(173,'b2Q6258iDf','normal',NULL,13,5,NULL,NULL,NULL,'product_title','physical-product-title-title-will-be-here-0131-test-b2q6258idf','1570876281siGCkmvP.jpg','1570876281Wt1wdK8O.jpg',NULL,'S','2147483643','20','White,Red,#000000,#851818,#ff0d0d,#1feb4c,#d620cf,#186ceb',120,200,'<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>',NULL,'<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>',1,0,'clothing,bag','Keyword1,Keyword 2','#cf1d1d,#c92be3',2,'5-7 days',0,'clothing,bag','clothing, bag','https://www.youtube.com/watch?v=HxNydN5tScI','Physical',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,'2019-10-11 21:31:21','2019-10-11 21:31:21',0,NULL,'10,20,30,40','5,10,15,20',0,131),
(174,'bXf62830R9','normal',NULL,13,5,NULL,NULL,NULL,'product_title','physical-product-title-title-will-be-here-0131-test-bxf62830r9','1570876303dcztUot8.jpg','15708763046Vwtn82r.jpg',NULL,'S','2147483643','20','White,Black,#000000,#851818,#ff0d0d,#1feb4c,#d620cf,#186ceb',120,200,'<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>',NULL,'<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>',1,0,'clothing,bag','Keyword1,Keyword 2','#cf1d1d,#c92be3',2,'5-7 days',0,'clothing,bag','clothing, bag','https://www.youtube.com/watch?v=HxNydN5tScI','Physical',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,'2019-10-11 21:31:43','2019-10-11 21:31:44',0,NULL,'10,20,30,40','5,10,15,20',0,131),
(175,'9gn6494iUN','normal',NULL,13,5,7,NULL,NULL,'product_title','physical-product-title-title-will-be-here-102-9gn6494iun','1570876503CUOkgSFD.jpg','1570876503XgLFnuQi.jpg',NULL,'S','55555555555555555','20','#ffffff,#000000,#000000,#851818,#ff0d0d,#1feb4c,#d620cf,#186ceb',100,200,'<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>',NULL,'<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>',1,0,'clothing,bag',NULL,NULL,1,'5-7 days',0,'clothing,bag','clothing, bag','https://www.youtube.com/watch?v=HxNydN5tScI','Physical',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,'2019-10-11 21:35:03','2019-10-14 21:50:14',0,NULL,'10,20,30,40','5,10,15,20',0,102),
(178,'Tcv6794KXS','normal',NULL,13,5,7,NULL,NULL,'product_title','physical-product-title-title-will-be-here-99-tcv6794kxs','1570876820YXbcdnxW.jpg','1570876820rpkj3Z6U.jpg',NULL,'S','2147483644','20','White,Black,#000000,#851818,#ff0d0d,#1feb4c,#d620cf,#186ceb',100,200,'<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>',NULL,'<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>',1,0,'clothing,bag',NULL,NULL,2,'5-7 days',0,'clothing,bag','clothing, bag','https://www.youtube.com/watch?v=HxNydN5tScI','Physical',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,'2019-10-11 21:40:20','2019-10-11 21:40:20',0,NULL,'10,20,30,40','5,10,15,20',0,99),
(179,'mf56823djs','normal',NULL,13,5,7,NULL,NULL,'product_title','physical-product-title-title-will-be-here-99-mf56823djs','1579415279unIkBvYL.jpg','1579415279kCjz7hO7.jpg',NULL,'S','2147483644','20','#ffffff,#ff0000,#000000,#851818,#ff0d0d,#1feb4c,#d620cf,#186ceb',100,200,'<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>',NULL,'<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>',1,0,'clothing,bag',NULL,NULL,2,'5-7 days',0,'clothing,bag','clothing, bag','https://www.youtube.com/watch?v=HxNydN5tScI','Physical',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,'2019-10-11 21:45:27','2020-01-18 16:27:59',0,NULL,'10,20,30,40','5,10,15,20',0,99),
(180,'myy7236gFD','normal',NULL,13,5,7,NULL,NULL,'product_title','physical-product-title-title-will-be-here-99u-myy7236gfd','1570877254IpMreGOE.jpg','1570877254wBRHJA4w.jpg',NULL,'S','2147483644','20','White,Red,#000000,#851818,#ff0d0d,#1feb4c,#d620cf,#186ceb',100,200,'<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>',NULL,'<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>',1,1,'clothing,bag',NULL,NULL,2,'5-7 days',0,'clothing,bag','clothing, bag','https://www.youtube.com/watch?v=HxNydN5tScI','Physical',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1,0,0,'2019-10-11 21:47:34','2019-12-28 19:35:52',0,NULL,'10,20,30,40','5,10,15,20',0,99),
(181,'TJV7256rgp','normal',NULL,13,5,7,NULL,NULL,'product_title','physical-product-title-title-will-be-here-99u-tjv7256rgp','15794152717uaGUxnH.jpg','1579415271xFKOowd2.jpg',NULL,'S','2147483644','20','#000000,#851818,#ff0d0d,#1feb4c,#d620cf,#186ceb',100,200,'<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>',NULL,'<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>',1,0,'clothing,bag',NULL,NULL,2,'5-7 days',0,'clothing,bag','clothing, bag','https://www.youtube.com/watch?v=HxNydN5tScI','Physical',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1,0,0,'2019-10-11 21:47:55','2020-01-18 16:27:51',0,NULL,'10,20,30,40','5,10,15,20',0,99),
(182,'b017277kfm','normal',NULL,13,5,7,NULL,NULL,'product_title','physical-product-title-title-will-be-here-99u-b017277kfm','1579415166fSKljyd2.jpg','1579415166PgtQXtEv.jpg',NULL,'S','2147483644','20','#000000,#851818,#ff0d0d,#1feb4c,#d620cf,#186ceb',100,200,'<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>',NULL,'<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>',1,4,'clothing,bag',NULL,NULL,2,'5-7 days',0,'clothing,bag,js,css,php','clothing, bag','https://www.youtube.com/watch?v=HxNydN5tScI','Physical',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1,0,0,'2019-10-11 21:48:06','2021-07-16 11:16:24',0,NULL,'10,20,30,40','5,10,15,20',0,99),
(183,'WI98332Omf','normal',NULL,0,9,19,NULL,NULL,'Fashion jewellery','womens-clothing-wi98332omfe','1626369334be6gqmLw.png','1626369334VHfjOtPS.jpg',NULL,NULL,NULL,NULL,NULL,200,250,'<br>',100,'<br>',1,0,'women,jewellery',NULL,NULL,2,NULL,0,NULL,NULL,NULL,'Physical',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,'2021-07-15 17:01:10','2021-07-15 17:15:43',0,NULL,NULL,NULL,0,0),
(185,'3Mz9362IYb','normal',NULL,0,9,19,NULL,NULL,'Watches','watches-3mz9362iyb','16263694374INPJfeO.png','16263694378ftahngO.jpg',NULL,NULL,NULL,NULL,NULL,200,250,'<br>',200,'<br>',1,0,'women,famous,watches',NULL,NULL,2,NULL,0,NULL,NULL,NULL,'Physical',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,'2021-07-15 17:17:17','2021-07-15 17:17:17',0,NULL,NULL,NULL,0,0),
(186,'3Mz9362IYbq','normal',NULL,0,5,7,19,NULL,'Footwear + Handbags','footwear-handbags-3mz9362iybq','1626369489mQoqZcH2.png','1626369489h8g9HOiI.jpg',NULL,NULL,NULL,NULL,NULL,200,250,'<br>',200,'<br>',1,0,'women,famous,bags',NULL,NULL,2,NULL,0,NULL,NULL,NULL,'Physical',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,'2021-07-15 17:18:09','2021-07-15 17:18:10',0,NULL,NULL,NULL,0,0),
(187,'3Mz9362IYbw','normal',NULL,0,5,8,21,NULL,'Women\'s Clothing','womens-clothing-3mz9362iybw','1626369787oJJO0P9X.png','1626369788AjCARBg6.jpg',NULL,NULL,NULL,NULL,NULL,200,250,'<br>',200,'<br>',1,0,'women,famous,clothings',NULL,NULL,2,NULL,0,NULL,NULL,NULL,'Physical',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,'2021-07-15 17:23:08','2021-07-15 17:23:08',0,NULL,NULL,NULL,0,0),
(188,'3Mz9362IYbe','normal',NULL,0,4,4,9,'{\"warranty_type\":{\"values\":[\"international manufacturer warranty\"],\"prices\":[\"0\"],\"details_status\":1},\"brand\":{\"values\":[\"Oppo\"],\"prices\":[\"0\"],\"details_status\":1},\"ram\":{\"values\":[\"2 GB\"],\"prices\":[\"0\"],\"details_status\":1}}','Washing Mashine','washing-mashine-3mz9362iybe','162637058609Z3PhhO.png','1626370587Jll9mrtf.jpg',NULL,NULL,NULL,NULL,NULL,200,250,'<br>',200,'<br>',1,1,'famous,washing machine',NULL,NULL,2,NULL,0,NULL,NULL,NULL,'Physical',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,'2021-07-15 17:36:26','2021-11-20 02:33:41',0,NULL,NULL,NULL,0,0),
(189,'3Mz9362IYbr','normal',NULL,0,4,5,13,'{\"warranty_type\":{\"values\":[\"international manufacturer warranty\"],\"prices\":[\"0\"],\"details_status\":1},\"brand\":{\"values\":[\"Oppo\"],\"prices\":[\"0\"],\"details_status\":1},\"ram\":{\"values\":[\"2 GB\"],\"prices\":[\"0\"],\"details_status\":1}}','ACs','acs-3mz9362iybr','1626370645l55Co0aH.png','1626370645XfVJm7yP.jpg',NULL,NULL,NULL,NULL,NULL,200,250,'<br>',200,'<br>',1,0,'famous,ACs',NULL,NULL,2,NULL,0,NULL,NULL,NULL,'Physical',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,'2021-07-15 17:37:25','2021-07-15 17:37:25',0,NULL,NULL,NULL,0,0),
(190,'3Mz9362IYbt','normal',NULL,0,4,3,5,'{\"warranty_type\":{\"values\":[\"international manufacturer warranty\"],\"prices\":[\"0\"],\"details_status\":1},\"brand\":{\"values\":[\"Oppo\"],\"prices\":[\"0\"],\"details_status\":1},\"ram\":{\"values\":[\"2 GB\"],\"prices\":[\"0\"],\"details_status\":1}}','Speakers','speakers-3mz9362iybt','1626370704PI7d0PXA.png','16263707058uob5tnu.jpg',NULL,NULL,NULL,NULL,NULL,200,250,'<br>',200,'<br>',1,2,'famous,Speakers',NULL,NULL,2,NULL,0,NULL,NULL,NULL,'Physical',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,'2021-07-15 17:38:24','2021-11-20 01:07:53',0,NULL,NULL,NULL,0,0),
(191,'3Mz9362IYby','normal',NULL,0,4,2,2,'{\"warranty_type\":{\"values\":[\"international manufacturer warranty\"],\"prices\":[\"0\"],\"details_status\":1},\"brand\":{\"values\":[\"Oppo\"],\"prices\":[\"0\"],\"details_status\":1},\"ram\":{\"values\":[\"2 GB\"],\"prices\":[\"0\"],\"details_status\":1},\"color_family\":{\"values\":[\"Black\",\"White\",\"Sliver\",\"Red\",\"Dark Grey\",\"Dark Blue\"],\"prices\":[\"0\",\"0\",\"0\",\"0\",\"0\",\"0\"],\"details_status\":1}}','Laptop','laptop-3mz9362iyby','16263707919N8w2vOc.png','1626370791WIBkeV1O.jpg',NULL,NULL,NULL,NULL,NULL,200,250,'<br>',200,'<br>',1,5,'famous,laptop',NULL,NULL,2,NULL,0,NULL,NULL,NULL,'Physical',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,'2021-07-15 17:39:51','2021-11-20 01:06:39',0,NULL,NULL,NULL,0,0),
(192,'3Mz9362IYq','normal',NULL,0,5,9,24,'{\"warranty_type\":{\"values\":[\"Local seller Warranty\"],\"prices\":[\"0\"],\"details_status\":1}}','Footwear','footwear-3mz9362iyq','1626370881mk4tqH9K.png','1626370881hFdPbRGT.jpg',NULL,NULL,NULL,NULL,NULL,200,250,'<br>',200,'<br>',1,0,'famous,footwear,man',NULL,NULL,2,NULL,0,NULL,NULL,NULL,'Physical',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,'2021-07-15 17:41:21','2021-07-15 17:41:21',0,NULL,NULL,NULL,0,0),
(193,'3Mz9362IYw','normal',NULL,0,9,18,NULL,NULL,'Men\'s Watches','mens-watches-3mz9362iyw','1626370929PACuiz1q.png','1626370929I0v0ZuhK.jpg',NULL,NULL,NULL,NULL,NULL,200,250,'<br>',200,'<br>',1,0,'famous,man,watches',NULL,NULL,2,NULL,0,NULL,NULL,NULL,'Physical',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,'2021-07-15 17:42:09','2021-07-15 17:42:09',0,NULL,NULL,NULL,0,0),
(194,'3Mz9362IYe','normal',NULL,0,9,18,NULL,NULL,'Glasses','glasses-3mz9362iye','1626370993M7VIQhtU.png','1626370994HUfV0fSx.jpg',NULL,NULL,NULL,NULL,NULL,200,250,'<br>',200,'<br>',1,3,'famous,man,glasses',NULL,NULL,2,NULL,0,NULL,NULL,NULL,'Physical',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,'2021-07-15 17:43:13','2021-11-19 06:25:19',0,NULL,NULL,NULL,0,0),
(195,'3Mz9362IYr','normal',NULL,0,5,8,22,NULL,'Men\'s Clothing','mens-clothing-3mz9362iyr','1626371047VvVg6uIh.png','1626371047Xwk1JRN1.jpg',NULL,NULL,NULL,NULL,NULL,200,250,'<br>',200,'<br>',1,1,'famous,man,clothings',NULL,NULL,2,NULL,0,NULL,NULL,NULL,'Physical',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,'2021-07-15 17:44:07','2021-11-20 01:09:42',0,NULL,NULL,NULL,0,0);

/*Table structure for table `ratings` */

DROP TABLE IF EXISTS `ratings`;

CREATE TABLE `ratings` (
  `id` int(191) NOT NULL AUTO_INCREMENT,
  `user_id` int(191) NOT NULL,
  `product_id` int(191) NOT NULL,
  `review` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` tinyint(2) NOT NULL,
  `review_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ratings` */

/*Table structure for table `reports` */

DROP TABLE IF EXISTS `reports`;

CREATE TABLE `reports` (
  `id` int(191) NOT NULL AUTO_INCREMENT,
  `user_id` int(191) NOT NULL,
  `product_id` int(192) NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `reports` */

/*Table structure for table `reviews` */

DROP TABLE IF EXISTS `reviews`;

CREATE TABLE `reviews` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `reviews` */

insert  into `reviews`(`id`,`photo`,`title`,`subtitle`,`details`) values 
(4,'1557343012img.jpg','Jhon Smith','CEO & Founder','Lorem ipsum dolor sit amet, consectetur elitad adipiscing Cras non placerat mi.'),
(5,'1557343018img.jpg','Jhon Smith','CEO & Founder','Lorem ipsum dolor sit amet, consectetur elitad adipiscing Cras non placerat mi.'),
(6,'1557343024img.jpg','Jhon Smith','CEO & Founder','Lorem ipsum dolor sit amet, consectetur elitad adipiscing Cras non placerat mi.');

/*Table structure for table `roles` */

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `id` int(191) NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

/*Data for the table `roles` */

insert  into `roles`(`id`,`name`,`section`) values 
(16,'Manager','orders , products , affilate_products , customers , vendors , vendor_subscription_plans , categories , bulk_product_upload , product_discussion , set_coupons , blog , messages , general_settings , home_page_settings , menu_page_settings , emails_settings , payment_settings , social_settings , language_settings , seo_tools , subscribers'),
(17,'Moderator','orders , products , customers , vendors , categories , blog , messages , home_page_settings , payment_settings , social_settings , language_settings , seo_tools , subscribers'),
(18,'Staff','orders , products , vendors , vendor_subscription_plans , categories , blog , home_page_settings , menu_page_settings , language_settings , seo_tools , subscribers');

/*Table structure for table `seotools` */

DROP TABLE IF EXISTS `seotools`;

CREATE TABLE `seotools` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `google_analytics` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keys` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `seotools` */

insert  into `seotools`(`id`,`google_analytics`,`meta_keys`) values 
(1,'<script>//Google Analytics Scriptfffffffffffffffffffffffssssfffffs</script>','Genius,Ocean,Sea,Etc,Genius,Ocean,SeaGenius,Ocean,Sea,Etc,Genius,Ocean,SeaGenius,Ocean,Sea,Etc,Genius,Ocean,Sea');

/*Table structure for table `services` */

DROP TABLE IF EXISTS `services`;

CREATE TABLE `services` (
  `id` int(191) NOT NULL AUTO_INCREMENT,
  `user_id` int(191) NOT NULL DEFAULT 0,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `services` */

insert  into `services`(`id`,`user_id`,`title`,`details`,`photo`) values 
(2,0,'Free Shipping & Returns','For all orders over £ 99','1626352618truck.png'),
(3,0,'Secure Payment','We ensure secure payment','1626352665credit-card.png'),
(4,0,'Customer Support','Call or email us 24/7','162635271224h.png'),
(5,0,'Money Back Guarantee','Any back within 30 days','1626352827Group 124.png'),
(6,13,'FREE SHIPPING','Free Shipping All Order','1571457250s1.png'),
(7,13,'PAYMENT METHOD','Secure Payment','1571457257s2.png'),
(8,13,'30 DAY RETURNS','30-Day Return Policy','1571457261s3.png'),
(9,13,'HELP CENTER','24/7 Support System','1571457265s4.png');

/*Table structure for table `shippings` */

DROP TABLE IF EXISTS `shippings`;

CREATE TABLE `shippings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(191) NOT NULL DEFAULT 0,
  `title` text DEFAULT NULL,
  `subtitle` text DEFAULT NULL,
  `price` double NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `shippings` */

insert  into `shippings`(`id`,`user_id`,`title`,`subtitle`,`price`) values 
(1,0,'Free Shipping','(10 - 12 days)',0),
(2,0,'Express Shipping','(5 - 6 days)',10);

/*Table structure for table `sliders` */

DROP TABLE IF EXISTS `sliders`;

CREATE TABLE `sliders` (
  `id` int(191) unsigned NOT NULL AUTO_INCREMENT,
  `subtitle_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle_size` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle_color` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle_anime` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_size` varchar(50) DEFAULT NULL,
  `title_color` varchar(50) DEFAULT NULL,
  `title_anime` varchar(50) DEFAULT NULL,
  `details_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details_size` varchar(50) DEFAULT NULL,
  `details_color` varchar(50) DEFAULT NULL,
  `details_anime` varchar(50) DEFAULT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `sliders` */

insert  into `sliders`(`id`,`subtitle_text`,`subtitle_size`,`subtitle_color`,`subtitle_anime`,`title_text`,`title_size`,`title_color`,`title_anime`,`details_text`,`details_size`,`details_color`,`details_anime`,`photo`,`position`,`link`) values 
(5,'PERFORMANCE & LIFESTYLE','24','#000000','slideInUp','INTRODUCING','50','#25cbf2','slideInDown','FASHION LIFESTYLE COLLECTION','50','#000000','fadeIn','162667760016263540711626353935.jpg','slide-one','https://www.google.com/'),
(8,'World Fashion','24','#ffffff','slideInUp','Up to 40% Off','60','#ffffff','slideInDown','Highlight your personality  and look with these fabulous and exquisite fashion.','16','#ffffff','slideInRight','1564224870012.jpg','slide-three','https://www.google.com/'),
(9,'World Fashion','24','#ffffff','slideInUp','Up to 40% Off','60','#ffffff','slideInDown','Highlight your personality  and look with these fabulous and exquisite fashion.','16','#ffffff','slideInDown','1564224753007.jpg','slide-one','https://www.google.com/'),
(10,'World Fashion','24','#c32d2d','slideInUp','Up to 40% Off','60','#bc2727','slideInDown','Highlight your personality  and look with these fabulous and exquisite fashion.','16','#c51d1d','slideInLeft','156422490902.jpg','slide-one','https://www.google.com/');

/*Table structure for table `social_providers` */

DROP TABLE IF EXISTS `social_providers`;

CREATE TABLE `social_providers` (
  `id` int(191) NOT NULL AUTO_INCREMENT,
  `user_id` int(191) NOT NULL,
  `provider_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `social_providers` */

/*Table structure for table `socialsettings` */

DROP TABLE IF EXISTS `socialsettings`;

CREATE TABLE `socialsettings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gplus` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `linkedin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dribble` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `f_status` tinyint(4) NOT NULL DEFAULT 1,
  `g_status` tinyint(4) NOT NULL DEFAULT 1,
  `t_status` tinyint(4) NOT NULL DEFAULT 1,
  `l_status` tinyint(4) NOT NULL DEFAULT 1,
  `d_status` tinyint(4) NOT NULL DEFAULT 1,
  `f_check` tinyint(10) DEFAULT NULL,
  `g_check` tinyint(10) DEFAULT NULL,
  `fclient_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fclient_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fredirect` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gclient_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gclient_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gredirect` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `socialsettings` */

insert  into `socialsettings`(`id`,`facebook`,`gplus`,`twitter`,`linkedin`,`dribble`,`f_status`,`g_status`,`t_status`,`l_status`,`d_status`,`f_check`,`g_check`,`fclient_id`,`fclient_secret`,`fredirect`,`gclient_id`,`gclient_secret`,`gredirect`) values 
(1,'https://www.facebook.com/','https://plus.google.com/','https://twitter.com/','https://www.linkedin.com/','https://dribbble.com/',1,1,1,1,1,1,1,'503140663460329','f66cd670ec43d14209a2728af26dcc43','https://localhost/upgraded/kingcommerce-new/auth/facebook/callback','904681031719-sh1aolu42k7l93ik0bkiddcboghbpcfi.apps.googleusercontent.com','yGBWmUpPtn5yWhDAsXnswEX3','http://localhost/upgraded/kingcommerce-new/auth/google/callback');

/*Table structure for table `subcategories` */

DROP TABLE IF EXISTS `subcategories`;

CREATE TABLE `subcategories` (
  `id` int(191) NOT NULL AUTO_INCREMENT,
  `category_id` int(191) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

/*Data for the table `subcategories` */

insert  into `subcategories`(`id`,`category_id`,`name`,`slug`,`status`) values 
(2,4,'TELEVISION','television',1),
(3,4,'REFRIGERATOR','refrigerator',1),
(4,4,'WASHING MACHINE','washing-machine',1),
(5,4,'AIR CONDITIONERS','air-conditioners',1),
(6,5,'ACCESSORIES','accessories',1),
(7,5,'BAGS','bags',1),
(8,5,'CLOTHINGS','clothings',1),
(9,5,'SHOES','shoes',1),
(10,7,'APPLE','apple',1),
(11,7,'SAMSUNG','samsung',1),
(12,7,'LG','lg',1),
(13,7,'SONY','sony',1),
(14,6,'DSLR','dslr',1),
(15,6,'Camera Phone','camera-phone',1),
(16,6,'Action Camera','animation-camera',1),
(17,6,'Digital Camera','digital-camera',1),
(18,9,'Man','watch-man',1),
(19,9,'women','watch-women',1);

/*Table structure for table `subscribers` */

DROP TABLE IF EXISTS `subscribers`;

CREATE TABLE `subscribers` (
  `id` int(191) NOT NULL AUTO_INCREMENT,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `subscribers` */

insert  into `subscribers`(`id`,`email`) values 
(1,'kaiwenchen0505@gmail.com'),
(2,'admin@gmail.com');

/*Table structure for table `subscriptions` */

DROP TABLE IF EXISTS `subscriptions`;

CREATE TABLE `subscriptions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL DEFAULT 0,
  `days` int(11) NOT NULL,
  `allowed_products` int(11) NOT NULL DEFAULT 0,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `subscriptions` */

insert  into `subscriptions`(`id`,`title`,`currency`,`currency_code`,`price`,`days`,`allowed_products`,`details`) values 
(5,'Standard','$','INR',60,45,25,'<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>'),
(6,'Premium','$','USD',120,90,90,'<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>'),
(7,'Unlimited','$','USD',250,365,0,'<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>'),
(8,'Basic','$','USD',0,30,0,'<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>');

/*Table structure for table `transactions` */

DROP TABLE IF EXISTS `transactions`;

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(191) DEFAULT NULL,
  `txn_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double DEFAULT 0,
  `currency_sign` blob DEFAULT NULL,
  `currency_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_value` double NOT NULL DEFAULT 0,
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `txnid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'plus, minus',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `transactions` */

insert  into `transactions`(`id`,`user_id`,`txn_number`,`amount`,`currency_sign`,`currency_code`,`currency_value`,`method`,`txnid`,`details`,`type`,`created_at`,`updated_at`) values 
(1,13,'p466552VgR',100,'$','USD',1,NULL,NULL,'test','plus','2020-01-26 19:15:52','2020-01-26 19:15:52');

/*Table structure for table `user_notifications` */

DROP TABLE IF EXISTS `user_notifications`;

CREATE TABLE `user_notifications` (
  `id` int(191) NOT NULL AUTO_INCREMENT,
  `user_id` int(191) NOT NULL,
  `order_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `user_notifications` */

insert  into `user_notifications`(`id`,`user_id`,`order_number`,`is_read`,`created_at`,`updated_at`) values 
(1,13,'byeS1580541202',1,'2020-01-31 17:13:22','2021-07-16 00:23:10'),
(2,13,'3CzM1580548569',1,'2020-01-31 19:16:12','2021-07-16 00:23:10');

/*Table structure for table `user_subscriptions` */

DROP TABLE IF EXISTS `user_subscriptions`;

CREATE TABLE `user_subscriptions` (
  `id` int(191) NOT NULL AUTO_INCREMENT,
  `user_id` int(191) NOT NULL,
  `subscription_id` int(191) NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL DEFAULT 0,
  `days` int(11) NOT NULL,
  `allowed_products` int(11) NOT NULL DEFAULT 0,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `method` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Free',
  `txnid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flutter_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `payment_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=latin1;

/*Data for the table `user_subscriptions` */

insert  into `user_subscriptions`(`id`,`user_id`,`subscription_id`,`title`,`currency`,`currency_code`,`price`,`days`,`allowed_products`,`details`,`method`,`txnid`,`charge_id`,`flutter_id`,`created_at`,`updated_at`,`status`,`payment_number`) values 
(81,27,5,'Standard','$','NGN',60,45,25,'<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>','Paystack','688094995',NULL,NULL,'2019-10-09 14:32:57','2019-10-09 14:32:57',1,NULL),
(94,13,5,'Standard','$','USD',60,45,25,'<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>','Voguepay','demo-5e1d577004e90',NULL,NULL,'2020-01-13 15:54:30','2020-01-13 15:54:30',1,NULL),
(95,13,5,'Standard','$','USD',60,45,25,'<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>','Paypal','5BP83764T7667933U',NULL,NULL,'2020-01-15 14:35:49','2020-01-15 14:35:49',1,NULL),
(96,0,5,'Standard','$','INR',60,45,25,'','Instamojo','MOJO0116O05A79460608',NULL,NULL,'2020-01-15 17:11:37','2020-01-15 17:11:37',1,NULL);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_provider` tinyint(10) NOT NULL DEFAULT 0,
  `status` tinyint(10) NOT NULL DEFAULT 0,
  `verification_link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No',
  `affilate_code` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `affilate_income` double NOT NULL DEFAULT 0,
  `shop_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_number` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reg_number` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `f_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `g_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `l_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_vendor` tinyint(1) NOT NULL DEFAULT 0,
  `f_check` tinyint(1) NOT NULL DEFAULT 0,
  `g_check` tinyint(1) NOT NULL DEFAULT 0,
  `t_check` tinyint(1) NOT NULL DEFAULT 0,
  `l_check` tinyint(1) NOT NULL DEFAULT 0,
  `mail_sent` tinyint(1) NOT NULL DEFAULT 0,
  `shipping_cost` double NOT NULL DEFAULT 0,
  `current_balance` double NOT NULL DEFAULT 0,
  `date` date DEFAULT NULL,
  `ban` tinyint(1) NOT NULL DEFAULT 0,
  `balance` decimal(11,2) NOT NULL DEFAULT 0.00,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`name`,`photo`,`zip`,`city`,`country`,`state`,`address`,`phone`,`fax`,`email`,`password`,`remember_token`,`created_at`,`updated_at`,`is_provider`,`status`,`verification_link`,`email_verified`,`affilate_code`,`affilate_income`,`shop_name`,`owner_name`,`shop_number`,`shop_address`,`reg_number`,`shop_message`,`shop_details`,`shop_image`,`f_url`,`g_url`,`t_url`,`l_url`,`is_vendor`,`f_check`,`g_check`,`t_check`,`l_check`,`mail_sent`,`shipping_cost`,`current_balance`,`date`,`ban`,`balance`) values 
(13,'Vendor','1557677677bouquet_PNG62.png','1234',NULL,'Algeria','UN',NULL,'3453453345453411','23123121','vendor@gmail.com','$2y$10$.4NrvXAeyToa4x07EkFvS.XIUEc/aXGsxe1onkQ.Udms4Sl2W9ZYq','D0B2ScyiVXgoRqACbb6wYxKjVgf7N7dKJL54k5ifVxmzWrJxQDRDA1Gepblc','2018-03-07 10:05:44','2020-01-31 19:16:55',0,2,'$2y$10$oIf1at.0LwscVwaX/8h.WuSwMKEAAsn8EJ.9P7mWzNUFIcEBQs8ry','Yes','$2y$10$oIf1at.0LwscVwaX/8h.WuSwMKEAAsn8EJ.9P7mWzNUFIcEBQs8rysdfsdfds',5020.799999999999,'Test Stores','User','43543534','Space Needle 400 Broad St, Seattles','asdasd','sdf',NULL,'1579424193adv-banner.jpg',NULL,NULL,NULL,NULL,2,0,0,0,0,1,0,5368.02,'2020-07-11',0,199.79),
(22,'User',NULL,'1231','Test City','United States','UN','Test Address','34534534534','34534534534','user@gmail.com','$2y$10$.4NrvXAeyToa4x07EkFvS.XIUEc/aXGsxe1onkQ.Udms4Sl2W9ZYq','J61mUfH13adOBybknviuLXxojumujnVbmUT8jh45vssC6rVJnyVab4vkMOdO','2019-06-20 05:26:24','2020-01-31 17:13:22',0,0,'1edae93935fba69d9542192fb854a80a','Yes','8f09b9691613ecb8c3f7e36e34b97b80',4963.6900000000005,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1,0,0,NULL,0,127674.18),
(27,'Test User',NULL,'1234','Test City','United Kingdom','UN','Space Needle 400 Broad St, Seattles','34534534','34534534','junajunnun@gmail.com','$2y$10$pxNqceuvTvYLuwA.gZ15aejOTtXGHrDT7t2m8wfIZhNO1e52z7aLS','RdBI4RFgbKUzSDCo8mhI3LSz4oXURe8RNUizf7DXUEIO4sdVF35qJlLleDHn','2019-10-04 21:15:08','2020-01-11 17:36:22',0,0,'0521bba4c819528b6a18a581a5842f17','Yes','bb9d23401cd70f11998fe36ea7677797',0,'Test Store','User','43543534','Space Needle 400 Broad St, Seattles','asdasd','ds',NULL,NULL,NULL,NULL,NULL,NULL,2,0,0,0,0,1,0,0,'2019-11-24',0,10000.00),
(28,'User',NULL,'1234','Test City','Algeria','UN',NULL,'34534534','034534534','junnun@gmail.com','$2y$10$YDfElg7O3K6eQK5enu.TBOyo.8TIr6Ynf9hFQ8dsIDeWAfmmg6hA.','pNFebTvEQ3jRaky9p7XnCetHs9aNFFG7nqRFho0U7nWrgT7phS6MoX8f9EYz','2019-10-12 22:39:13','2020-01-11 17:36:05',0,0,'8036978c6d71501e893ba7d3f3ecc15d','Yes','33899bafa30292165430cb90b545728a',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,NULL,0,9000.00);

/*Table structure for table `vendor_orders` */

DROP TABLE IF EXISTS `vendor_orders`;

CREATE TABLE `vendor_orders` (
  `id` int(191) NOT NULL AUTO_INCREMENT,
  `user_id` int(191) NOT NULL,
  `order_id` int(191) NOT NULL,
  `qty` int(191) NOT NULL,
  `price` double NOT NULL,
  `order_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('pending','processing','completed','declined','on delivery') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `vendor_orders` */

/*Table structure for table `verifications` */

DROP TABLE IF EXISTS `verifications`;

CREATE TABLE `verifications` (
  `id` int(191) NOT NULL AUTO_INCREMENT,
  `user_id` int(191) NOT NULL,
  `attachments` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Pending','Verified','Declined') DEFAULT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_warning` tinyint(1) NOT NULL DEFAULT 0,
  `warning_reason` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `verifications` */

insert  into `verifications`(`id`,`user_id`,`attachments`,`status`,`text`,`admin_warning`,`warning_reason`,`created_at`,`updated_at`) values 
(4,13,'1573723849Baby.tux-800x800.png,1573723849Baby.tux-800x800.png','Verified','TEst',0,NULL,'2019-11-13 19:30:49','2019-11-13 19:34:06');

/*Table structure for table `wishlists` */

DROP TABLE IF EXISTS `wishlists`;

CREATE TABLE `wishlists` (
  `id` int(191) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(191) unsigned NOT NULL,
  `product_id` int(191) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `wishlists` */

/*Table structure for table `withdraws` */

DROP TABLE IF EXISTS `withdraws`;

CREATE TABLE `withdraws` (
  `id` int(191) NOT NULL AUTO_INCREMENT,
  `user_id` int(191) DEFAULT NULL,
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acc_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iban` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acc_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `swift` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `fee` float DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` enum('pending','completed','rejected') NOT NULL DEFAULT 'pending',
  `type` enum('user','vendor') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `withdraws` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
