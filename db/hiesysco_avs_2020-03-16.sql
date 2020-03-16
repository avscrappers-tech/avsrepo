# ************************************************************
# Sequel Pro SQL dump
# Version 4499
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: localhost (MySQL 10.1.37-MariaDB)
# Database: hiesysco_avs
# Generation Time: 2020-03-16 18:10:34 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `status` tinyint(2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;



# Dump of table category_prices
# ------------------------------------------------------------

DROP TABLE IF EXISTS `category_prices`;

CREATE TABLE `category_prices` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(5) DEFAULT NULL,
  `category_price` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `category_unit` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `status` tinyint(2) DEFAULT NULL,
  `craeted_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;



# Dump of table item_masters
# ------------------------------------------------------------

DROP TABLE IF EXISTS `item_masters`;

CREATE TABLE `item_masters` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(5) DEFAULT NULL,
  `item_code` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `item_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `item_qty` bigint(10) DEFAULT NULL,
  `item_price` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `open_qty` bigint(10) DEFAULT NULL,
  `close_qty` bigint(10) DEFAULT NULL,
  `status` tinyint(2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;



# Dump of table logins
# ------------------------------------------------------------

DROP TABLE IF EXISTS `logins`;

CREATE TABLE `logins` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `passwd` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_type` enum('Supadmin','Admin','User') DEFAULT NULL,
  `status` tinyint(2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table scrappers
# ------------------------------------------------------------

DROP TABLE IF EXISTS `scrappers`;

CREATE TABLE `scrappers` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `mobile_no` bigint(10) DEFAULT NULL,
  `email_id` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `passwd` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `address1` varchar(155) COLLATE utf8_bin DEFAULT '',
  `address2` varchar(155) COLLATE utf8_bin DEFAULT '',
  `address3` varchar(155) COLLATE utf8_bin DEFAULT NULL,
  `state` int(5) DEFAULT NULL,
  `district` int(5) DEFAULT NULL,
  `pincode` int(6) DEFAULT NULL,
  `location_address` text COLLATE utf8_bin,
  `lat` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `lng` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `status` tinyint(2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;



# Dump of table user_requests
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_requests`;

CREATE TABLE `user_requests` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(10) DEFAULT NULL,
  `request_id` int(5) DEFAULT NULL,
  `item_description` text COLLATE utf8_bin,
  `request_date` date DEFAULT NULL,
  `status` tinyint(2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;



# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `mobile_no` bigint(10) DEFAULT NULL,
  `email_id` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `passwd` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `address1` varchar(155) COLLATE utf8_bin DEFAULT '',
  `address2` varchar(155) COLLATE utf8_bin DEFAULT '',
  `address3` varchar(155) COLLATE utf8_bin DEFAULT NULL,
  `state` int(5) DEFAULT NULL,
  `district` int(5) DEFAULT NULL,
  `pincode` int(6) DEFAULT NULL,
  `location_address` text COLLATE utf8_bin,
  `lat` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `lng` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `status` tinyint(2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
