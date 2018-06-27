# Host: localhost  (Version 5.5.5-10.1.10-MariaDB)
# Date: 2018-06-28 06:42:53
# Generator: MySQL-Front 5.3  (Build 5.39)

/*!40101 SET NAMES latin1 */;

#
# Structure for table "mhs"
#

DROP TABLE IF EXISTS `mhs`;
CREATE TABLE `mhs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nim` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `namamhs` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `tmpt_lahir` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jenjang` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `notelp` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "mhs"
#

INSERT INTO `mhs` VALUES (1,'1512500628','Hardian','Galang','hardian@gmail.com','tangerang','2002-02-02','Sarjana 1','089667231551','2018-06-27 15:52:01','2018-06-27 15:52:01'),(2,'1512500622','Hardianto','Galang Yugo','hardianto@gmail.com','tangerang','2002-02-22','Sarjana 1','089567231551','2018-06-27 15:53:25','2018-06-27 15:53:25'),(3,'1512520622','Dani','Kemang','Dani@gmail.com','tangerang','1990-02-22','Sarjana 1','089557231551','2018-06-27 15:54:13','2018-06-27 15:54:13'),(4,'1512320621','Dani Madia','Kemang Sanjaya','Dani44@gmail.com','tangerang','1990-04-22','Sarjana 1','089558881551','2018-06-27 15:54:58','2018-06-27 15:54:58'),(5,'1512328211','Toni nono','melati','lol@gmail.com','tangerang','1980-04-22','Sarjana 1','089544881551','2018-06-27 15:55:55','2018-06-27 15:57:52');

#
# Structure for table "migrations"
#

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "migrations"
#

INSERT INTO `migrations` VALUES (1,'2018_05_17_211102_table_todo',1),(2,'2018_05_18_011926_kategori',2),(3,'2018_05_18_012032_buku',3),(4,'2018_06_27_045133_mhs',4);
