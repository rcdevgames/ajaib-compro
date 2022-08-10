-- MariaDB dump 10.19  Distrib 10.8.3-MariaDB, for osx10.15 (x86_64)
--
-- Host: localhost    Database: ajaib_db
-- ------------------------------------------------------
-- Server version	10.8.3-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `berita`
--

DROP TABLE IF EXISTS `berita`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `berita` (
  `id_berita` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `slug_berita` varchar(255) NOT NULL,
  `judul_berita_id` varchar(255) NOT NULL,
  `judul_berita` varchar(255) NOT NULL,
  `ringkasan_id` varchar(500) NOT NULL,
  `ringkasan` varchar(500) NOT NULL,
  `isi_id` text NOT NULL,
  `isi` text NOT NULL,
  `status_berita` varchar(20) NOT NULL,
  `jenis_berita` varchar(20) NOT NULL,
  `keywords` text NOT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `hits` int(11) NOT NULL,
  `tanggal_post` datetime NOT NULL,
  `tanggal_publish` datetime NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id_berita`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `berita`
--

LOCK TABLES `berita` WRITE;
/*!40000 ALTER TABLE `berita` DISABLE KEYS */;
INSERT INTO `berita` VALUES
(1,4,1,'tentang-perusahaan','Tentang Perusahaan','About Company','Sekilas tentang PT. Ajaib Windu Jaya','Overview of PT. Ajaib Windu Jaya','<p>isi</p>','<p>Content</p>','Publish','Profil','','logo.png','',16,'2022-08-01 23:08:30','2022-08-01 23:07:00','2022-08-06 10:12:35'),
(2,4,1,'visi-misi','Visi & Misi','Vision & Mission','Visi dan Misi Perusahaan','Mission and Vission a Company','<p>isi</p>','<p>content</p>','Publish','Profil','',NULL,'',4,'2022-08-01 23:10:11','2022-08-01 23:09:00','2022-08-06 10:12:41'),
(3,4,2,'bekasi','Bekasi','Bekasi','Proyek Bekasi','Proyek Bekasi','<p>Isi</p>','<p>Isi</p>','Publish','Layanan','','bekasi.jpeg','',2,'2022-08-02 00:27:17','2022-08-02 00:25:00','2022-08-06 10:14:35'),
(4,4,3,'berita-1','Berita 1','News 1','ringkasan berita','short description news','<p>isi berita</p>','<p>news content</p>','Publish','Berita','','Sukarman-ST-shutterstock_1616151298.jpeg','',7,'2022-08-02 00:29:34','2022-08-02 00:28:00','2022-08-06 10:22:23');
/*!40000 ALTER TABLE `berita` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ci_sessions`
--

DROP TABLE IF EXISTS `ci_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT 0,
  `data` blob NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ci_sessions`
--

LOCK TABLES `ci_sessions` WRITE;
/*!40000 ALTER TABLE `ci_sessions` DISABLE KEYS */;
INSERT INTO `ci_sessions` VALUES
('4v848ljp5osf75neolu43jeg6qtaq7a2','::1',1659946865,'__ci_last_regenerate|i:1659946865;_ci_previous_url|s:28:\"http://localhost:8080/client\";web_lang|s:2:\"id\";'),
('51hjnhjq5gcoqv9kehepn3t8jjhgcmhi','::1',1659949933,'__ci_last_regenerate|i:1659949933;_ci_previous_url|s:43:\"http://localhost:8080/admin/download/tambah\";web_lang|s:2:\"id\";username|s:5:\"admin\";id_user|s:1:\"4\";akses_level|s:5:\"Admin\";nama|s:13:\"Administrator\";'),
('hapnjg1rv9n4tn6t39migs6qpoumuc0s','::1',1659948899,'__ci_last_regenerate|i:1659948899;_ci_previous_url|s:22:\"http://localhost:8080/\";web_lang|s:2:\"id\";username|s:5:\"admin\";id_user|s:1:\"4\";akses_level|s:5:\"Admin\";nama|s:13:\"Administrator\";'),
('hut41es0fnjbhpsnuq5p0vqobenrpjjc','::1',1659949947,'__ci_last_regenerate|i:1659949933;_ci_previous_url|s:30:\"http://localhost:8080/download\";username|s:5:\"admin\";id_user|s:1:\"4\";akses_level|s:5:\"Admin\";nama|s:13:\"Administrator\";web_lang|s:2:\"id\";'),
('k81pe0jrqbbh3dejth283nc5ebrn1hkn','::1',1659949465,'__ci_last_regenerate|i:1659949465;_ci_previous_url|s:45:\"http://localhost:8080/admin/kategori_download\";web_lang|s:2:\"id\";username|s:5:\"admin\";id_user|s:1:\"4\";akses_level|s:5:\"Admin\";nama|s:13:\"Administrator\";'),
('nkm6bakh0l2al2h4oh54m4lafgtcf62a','::1',1659947680,'__ci_last_regenerate|i:1659947680;_ci_previous_url|s:36:\"http://localhost:8080/admin/kategori\";web_lang|s:2:\"id\";username|s:5:\"admin\";id_user|s:1:\"4\";akses_level|s:5:\"Admin\";nama|s:13:\"Administrator\";');
/*!40000 ALTER TABLE `ci_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client` (
  `id_client` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) DEFAULT NULL,
  `jenis_client` enum('Perorangan','Perusahaan','Organisasi') NOT NULL,
  `nama` varchar(255) NOT NULL,
  `pimpinan` varchar(255) DEFAULT NULL,
  `alamat` varchar(300) DEFAULT NULL,
  `telepon` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `isi_testimoni_id` text DEFAULT NULL,
  `isi_testimoni` text DEFAULT NULL,
  `gambar` varchar(200) DEFAULT NULL,
  `status_client` varchar(20) NOT NULL,
  `tempat_lahir` varchar(255) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `tanggal_post` datetime NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id_client`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES
(1,4,'Perusahaan','Test','Nama Pimpinan','','','','','testimoni','Testimony','WhatsApp-Image-2022-08-05-at-10.44.26-AM-(1).jpeg','Publish','','1970-01-01','2022-08-06 17:25:48','2022-08-06 10:55:51'),
(2,4,'Perorangan','Test 2','Nama Pimpinan','','','','','Isi testimonial','Test fill testimony','WhatsApp-Image-2022-08-04-at-9.43.22-AM.jpeg','Publish','','1970-01-01','2022-08-06 17:47:17','2022-08-06 10:55:51'),
(3,4,'Perorangan','Lagi','Nama Pimpinan 3','','','','','Testi','Just Testing','WhatsApp-Image-2022-08-05-at-10.44.20-AM.jpeg','Publish','','1970-01-01','2022-08-06 17:48:36','2022-08-06 10:55:51');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `download`
--

DROP TABLE IF EXISTS `download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `download` (
  `id_download` int(11) NOT NULL AUTO_INCREMENT,
  `id_kategori_download` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `judul_download` varchar(200) DEFAULT NULL,
  `jenis_download` varchar(20) NOT NULL,
  `isi` text DEFAULT NULL,
  `gambar` varchar(255) NOT NULL,
  `website` varchar(255) DEFAULT NULL,
  `hits` int(11) NOT NULL,
  `tanggal_post` datetime NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id_download`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `download`
--

LOCK TABLES `download` WRITE;
/*!40000 ALTER TABLE `download` DISABLE KEYS */;
INSERT INTO `download` VALUES
(1,1,4,'Test','Download','<p>Tet</p>','SURAT-KETERANGAN-TRANSFER-GAJI.pdf','http://example.com/',0,'2022-08-02 00:50:30','2022-08-01 17:50:30');
/*!40000 ALTER TABLE `download` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galeri`
--

DROP TABLE IF EXISTS `galeri`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `galeri` (
  `id_galeri` int(11) NOT NULL AUTO_INCREMENT,
  `id_kategori_galeri` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `judul_galeri` varchar(200) DEFAULT NULL,
  `jenis_galeri` varchar(20) NOT NULL,
  `isi` text DEFAULT NULL,
  `gambar` varchar(255) NOT NULL,
  `website` varchar(255) DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `status_text` enum('Ya','Tidak','','') NOT NULL,
  `tanggal_post` datetime DEFAULT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id_galeri`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galeri`
--

LOCK TABLES `galeri` WRITE;
/*!40000 ALTER TABLE `galeri` DISABLE KEYS */;
/*!40000 ALTER TABLE `galeri` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kategori`
--

DROP TABLE IF EXISTS `kategori`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `slug_kategori` varchar(255) NOT NULL,
  `nama_kategori_id` varchar(255) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `urutan` int(11) DEFAULT NULL,
  `hits` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id_kategori`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kategori`
--

LOCK TABLES `kategori` WRITE;
/*!40000 ALTER TABLE `kategori` DISABLE KEYS */;
INSERT INTO `kategori` VALUES
(1,4,'profil','Profil','Profile',1,0,'2022-08-06 06:23:57'),
(2,4,'proyek','Proyek','Project',2,0,'2022-08-06 06:23:57'),
(3,4,'berita','Berita','News',3,1,'2022-08-06 06:23:57');
/*!40000 ALTER TABLE `kategori` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kategori_download`
--

DROP TABLE IF EXISTS `kategori_download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kategori_download` (
  `id_kategori_download` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `slug_kategori_download` varchar(255) NOT NULL,
  `nama_katergori_download_id` varchar(255) NOT NULL,
  `nama_kategori_download` varchar(255) NOT NULL,
  `urutan` int(11) DEFAULT NULL,
  `hits` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id_kategori_download`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kategori_download`
--

LOCK TABLES `kategori_download` WRITE;
/*!40000 ALTER TABLE `kategori_download` DISABLE KEYS */;
INSERT INTO `kategori_download` VALUES
(1,4,'profil-perusahaan','','Profil Perusahaan',1,0,'2022-08-01 17:33:02');
/*!40000 ALTER TABLE `kategori_download` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kategori_galeri`
--

DROP TABLE IF EXISTS `kategori_galeri`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kategori_galeri` (
  `id_kategori_galeri` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `slug_kategori_galeri` varchar(255) NOT NULL,
  `nama_katergori_galeri_id` varchar(255) NOT NULL,
  `nama_kategori_galeri` varchar(255) NOT NULL,
  `urutan` int(11) DEFAULT NULL,
  `hits` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id_kategori_galeri`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kategori_galeri`
--

LOCK TABLES `kategori_galeri` WRITE;
/*!40000 ALTER TABLE `kategori_galeri` DISABLE KEYS */;
/*!40000 ALTER TABLE `kategori_galeri` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kategori_staff`
--

DROP TABLE IF EXISTS `kategori_staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kategori_staff` (
  `id_kategori_staff` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `slug_kategori_staff` varchar(255) NOT NULL,
  `nama_kategori_staff_id` varchar(255) NOT NULL,
  `nama_kategori_staff` varchar(255) NOT NULL,
  `urutan` int(11) DEFAULT NULL,
  `hits` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id_kategori_staff`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kategori_staff`
--

LOCK TABLES `kategori_staff` WRITE;
/*!40000 ALTER TABLE `kategori_staff` DISABLE KEYS */;
INSERT INTO `kategori_staff` VALUES
(1,4,'direksi','','Direksi',1,0,'2022-08-01 16:11:17'),
(2,4,'direksi','','',2,0,'2022-08-06 05:11:28'),
(3,4,'komisaris','','Komisaris',0,0,'2022-08-06 04:50:07');
/*!40000 ALTER TABLE `kategori_staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `konfigurasi`
--

DROP TABLE IF EXISTS `konfigurasi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `konfigurasi` (
  `id_konfigurasi` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `namaweb` varchar(200) NOT NULL,
  `singkatan` varchar(255) DEFAULT NULL,
  `tagline` varchar(200) DEFAULT NULL,
  `tagline_id` varchar(100) DEFAULT NULL,
  `tentang` text DEFAULT NULL,
  `tentang_id` text DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `deskripsi_id` text DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `email_cadangan` varchar(255) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `telepon` varchar(50) DEFAULT NULL,
  `hp` varchar(50) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `keywords` varchar(400) DEFAULT NULL,
  `metatext` text DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `nama_facebook` varchar(255) DEFAULT NULL,
  `nama_twitter` varchar(255) DEFAULT NULL,
  `nama_instagram` varchar(255) DEFAULT NULL,
  `nama_youtube` varchar(255) DEFAULT NULL,
  `google_map` text DEFAULT NULL,
  `protocol` varchar(255) NOT NULL,
  `smtp_host` varchar(255) NOT NULL,
  `smtp_port` int(11) NOT NULL,
  `smtp_timeout` int(11) NOT NULL,
  `smtp_user` varchar(255) NOT NULL,
  `smtp_pass` varchar(255) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id_konfigurasi`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `konfigurasi`
--

LOCK TABLES `konfigurasi` WRITE;
/*!40000 ALTER TABLE `konfigurasi` DISABLE KEYS */;
INSERT INTO `konfigurasi` VALUES
(1,4,'PT. AJAIB WINDU JAYA','AWJ','DEVELOPER - CONTRACTOR - TRADING','DEVELOPER - KONTRAKTOR - TRADING','<p>About this</p>','<p>Tentang</p>','DEVELOPER - CONTRACTOR - TRADING','DEVELOPER - KONTRAKTOR - TRADING','https://www.awj.co.id/','pt_awj@awj.co.id','pt.ajaibwindujaya@gmail.com','<p>Plaza Summarecon Bekasi Level 7<br>Jl. Bulevar Ahmad Yani Kav. K.01 Harapan Mulya,<br>Medan Satria, Kota Bekasi, Jawa Barat, 17142<br></p>','+62 21 2955 7415','','logo-black.png','logo.png','\r\n','','#','#','#','#','-','-','-','-','<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d495.78587509211735!2d106.99610657122383!3d-6.225839100000003!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e698d05035d20f1%3A0x2fe7fe4f60a49bb!2svOffice%20-%20Plaza%20Summarecon%20(Virtual%20Office%20%7C%20Serviced%20Office%20%7C%20Meeting%20Room)!5e0!3m2!1sen!2sid!4v1659113538319!5m2!1sen!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>','smtp','ssl://mail.websitemu.com',465,7,'contact@websitemu.com','muhammad','2022-08-06 05:34:01');
/*!40000 ALTER TABLE `konfigurasi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staff` (
  `id_staff` int(11) NOT NULL AUTO_INCREMENT,
  `id_kategori_staff` int(11) DEFAULT NULL,
  `urutan` int(11) DEFAULT NULL,
  `nama` varchar(255) NOT NULL,
  `telepon` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `jabatan` varchar(200) DEFAULT NULL,
  `keahlian` text DEFAULT NULL,
  `gambar` varchar(200) DEFAULT NULL,
  `status_staff` varchar(20) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id_staff`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES
(1,1,1,'Joko Prabowo','','','','Direktur Utama (CEO)','',NULL,'Publish','2022-08-06 04:54:57'),
(2,3,0,'Andri Nugroho','','','','Komisaris','',NULL,'Publish','2022-08-06 04:54:57'),
(3,1,2,'Maryanto','','','','Wakil Direktur Utama','',NULL,'Publish','2022-08-06 04:51:24'),
(4,2,3,'Rudy Nurtjahjo','','','','Direktur Operasional','',NULL,'Publish','2022-08-06 05:08:31'),
(5,2,4,'Ales Okta Pratama','','','','Direktur Keuangan','',NULL,'Publish','2022-08-06 05:09:03'),
(6,2,6,'Sigit Setiawan','','','','Direktur SDM & Development','',NULL,'Publish','2022-08-06 05:09:06'),
(7,2,0,'Nurul Amin','','','','Direktur Bisnis & Development','',NULL,'Publish','2022-08-06 05:09:09');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_logs`
--

DROP TABLE IF EXISTS `user_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_logs` (
  `id_user_log` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `tanggal_updates` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id_user_log`)
) ENGINE=InnoDB AUTO_INCREMENT=277 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_logs`
--

LOCK TABLES `user_logs` WRITE;
/*!40000 ALTER TABLE `user_logs` DISABLE KEYS */;
INSERT INTO `user_logs` VALUES
(1,4,'::1','admin','http://localhost:8080/admin/dasbor','2022-08-01 14:10:49'),
(2,4,'::1','admin','http://localhost:8080/admin/konfigurasi','2022-08-01 14:11:04'),
(3,4,'::1','admin','http://localhost:8080/admin/konfigurasi/logo','2022-08-01 14:11:14'),
(4,4,'::1','admin','http://localhost:8080/admin/konfigurasi/logo','2022-08-01 14:11:36'),
(5,4,'::1','admin','http://localhost:8080/admin/konfigurasi/logo','2022-08-01 14:12:41'),
(6,4,'::1','admin','http://localhost:8080/admin/konfigurasi/logo','2022-08-01 14:12:47'),
(7,4,'::1','admin','http://localhost:8080/admin/konfigurasi/logo','2022-08-01 14:12:47'),
(8,4,'::1','admin','http://localhost:8080/admin/konfigurasi/logo','2022-08-01 14:12:49'),
(9,4,'::1','admin','http://localhost:8080/admin/konfigurasi/icon','2022-08-01 14:12:53'),
(10,4,'::1','admin','http://localhost:8080/admin/konfigurasi/icon','2022-08-01 14:12:57'),
(11,4,'::1','admin','http://localhost:8080/admin/konfigurasi/icon','2022-08-01 14:12:57'),
(12,4,'::1','admin','http://localhost:8080/admin/konfigurasi/icon','2022-08-01 14:12:59'),
(13,4,'::1','admin','http://localhost:8080/admin/panduan','2022-08-01 14:13:13'),
(14,4,'::1','admin','http://localhost:8080/admin/konfigurasi','2022-08-01 14:13:17'),
(15,4,'::1','admin','http://localhost:8080/admin/konfigurasi','2022-08-01 14:14:14'),
(16,4,'::1','admin','http://localhost:8080/admin/konfigurasi','2022-08-01 14:14:14'),
(17,4,'::1','admin','http://localhost:8080/admin/konfigurasi','2022-08-01 14:14:56'),
(18,4,'::1','admin','http://localhost:8080/admin/konfigurasi','2022-08-01 14:14:56'),
(19,4,'::1','admin','http://localhost:8080/admin/konfigurasi','2022-08-01 14:15:35'),
(20,4,'::1','admin','http://localhost:8080/admin/konfigurasi','2022-08-01 14:15:35'),
(21,4,'::1','admin','http://localhost:8080/admin/dasbor','2022-08-01 15:56:21'),
(22,4,'::1','admin','http://localhost:8080/admin/dasbor','2022-08-01 15:56:37'),
(23,4,'::1','admin','http://localhost:8080/admin/dasbor','2022-08-01 16:02:02'),
(24,4,'::1','admin','http://localhost:8080/admin/dasbor','2022-08-01 16:02:59'),
(25,4,'::1','admin','http://localhost:8080/admin/dasbor','2022-08-01 16:03:05'),
(26,4,'::1','admin','http://localhost:8080/admin/dasbor','2022-08-01 16:05:09'),
(27,4,'::1','admin','http://localhost:8080/admin/dasbor','2022-08-01 16:05:14'),
(28,4,'::1','admin','http://localhost:8080/admin/berita','2022-08-01 16:06:51'),
(29,4,'::1','admin','http://localhost:8080/admin/berita/tambah','2022-08-01 16:06:52'),
(30,4,'::1','admin','http://localhost:8080/admin/kategori','2022-08-01 16:07:38'),
(31,4,'::1','admin','http://localhost:8080/admin/kategori','2022-08-01 16:07:48'),
(32,4,'::1','admin','http://localhost:8080/admin/kategori','2022-08-01 16:07:48'),
(33,4,'::1','admin','http://localhost:8080/admin/berita','2022-08-01 16:07:51'),
(34,4,'::1','admin','http://localhost:8080/admin/berita/tambah','2022-08-01 16:07:54'),
(35,4,'::1','admin','http://localhost:8080/admin/berita/tambah','2022-08-01 16:08:30'),
(36,4,'::1','admin','http://localhost:8080/admin/berita/jenis_berita/Profil','2022-08-01 16:08:30'),
(37,4,'::1','admin','http://localhost:8080/admin/berita/edit/1','2022-08-01 16:09:05'),
(38,4,'::1','admin','http://localhost:8080/admin/berita/edit/1','2022-08-01 16:09:10'),
(39,4,'::1','admin','http://localhost:8080/admin/berita/jenis_berita/Profil','2022-08-01 16:09:10'),
(40,4,'::1','admin','http://localhost:8080/admin/berita/tambah','2022-08-01 16:09:52'),
(41,4,'::1','admin','http://localhost:8080/admin/berita/tambah','2022-08-01 16:10:11'),
(42,4,'::1','admin','http://localhost:8080/admin/berita/jenis_berita/Profil','2022-08-01 16:10:11'),
(43,4,'::1','admin','http://localhost:8080/admin/staff','2022-08-01 16:11:08'),
(44,4,'::1','admin','http://localhost:8080/admin/kategori_staff','2022-08-01 16:11:11'),
(45,4,'::1','admin','http://localhost:8080/admin/kategori_staff','2022-08-01 16:11:17'),
(46,4,'::1','admin','http://localhost:8080/admin/kategori_staff','2022-08-01 16:11:17'),
(47,4,'::1','admin','http://localhost:8080/admin/kategori_staff','2022-08-01 16:11:24'),
(48,4,'::1','admin','http://localhost:8080/admin/kategori_staff','2022-08-01 16:11:24'),
(49,4,'::1','admin','http://localhost:8080/admin/staff','2022-08-01 16:11:35'),
(50,4,'::1','admin','http://localhost:8080/admin/staff','2022-08-01 16:12:30'),
(51,4,'::1','admin','http://localhost:8080/admin/staff','2022-08-01 16:12:32'),
(52,4,'::1','admin','http://localhost:8080/admin/staff','2022-08-01 16:15:04'),
(53,4,'::1','admin','http://localhost:8080/admin/staff','2022-08-01 16:15:36'),
(54,4,'::1','admin','http://localhost:8080/admin/staff','2022-08-01 16:15:56'),
(55,4,'::1','admin','http://localhost:8080/admin/staff','2022-08-01 16:17:14'),
(56,4,'::1','admin','http://localhost:8080/admin/staff','2022-08-01 16:17:36'),
(57,4,'::1','admin','http://localhost:8080/admin/staff','2022-08-01 16:17:46'),
(58,4,'::1','admin','http://localhost:8080/admin/staff','2022-08-01 16:17:46'),
(59,4,'::1','admin','http://localhost:8080/admin/staff','2022-08-01 16:18:03'),
(60,4,'::1','admin','http://localhost:8080/admin/staff','2022-08-01 16:18:39'),
(61,4,'::1','admin','http://localhost:8080/admin/staff','2022-08-01 16:18:46'),
(62,4,'::1','admin','http://localhost:8080/admin/staff','2022-08-01 16:19:13'),
(63,4,'::1','admin','http://localhost:8080/admin/staff','2022-08-01 16:19:24'),
(64,4,'::1','admin','http://localhost:8080/admin/staff','2022-08-01 16:19:33'),
(65,4,'::1','admin','http://localhost:8080/admin/kategori','2022-08-01 17:25:09'),
(66,4,'::1','admin','http://localhost:8080/admin/kategori','2022-08-01 17:25:50'),
(67,4,'::1','admin','http://localhost:8080/admin/kategori','2022-08-01 17:25:50'),
(68,4,'::1','admin','http://localhost:8080/admin/berita','2022-08-01 17:25:54'),
(69,4,'::1','admin','http://localhost:8080/admin/berita/tambah','2022-08-01 17:25:55'),
(70,4,'::1','admin','http://localhost:8080/admin/berita/tambah','2022-08-01 17:27:16'),
(71,4,'::1','admin','http://localhost:8080/admin/berita/jenis_berita/Layanan','2022-08-01 17:27:17'),
(72,4,'::1','admin','http://localhost:8080/admin/berita','2022-08-01 17:28:34'),
(73,4,'::1','admin','http://localhost:8080/admin/berita/tambah','2022-08-01 17:28:35'),
(74,4,'::1','admin','http://localhost:8080/admin/kategori','2022-08-01 17:28:38'),
(75,4,'::1','admin','http://localhost:8080/admin/kategori','2022-08-01 17:28:44'),
(76,4,'::1','admin','http://localhost:8080/admin/kategori','2022-08-01 17:28:44'),
(77,4,'::1','admin','http://localhost:8080/admin/berita','2022-08-01 17:28:47'),
(78,4,'::1','admin','http://localhost:8080/admin/berita/tambah','2022-08-01 17:28:51'),
(79,4,'::1','admin','http://localhost:8080/admin/berita/tambah','2022-08-01 17:29:34'),
(80,4,'::1','admin','http://localhost:8080/admin/berita/jenis_berita/Berita','2022-08-01 17:29:34'),
(81,4,'::1','admin','http://localhost:8080/admin/client','2022-08-01 17:32:00'),
(82,4,'::1','admin','http://localhost:8080/admin/panduan','2022-08-01 17:32:09'),
(83,4,'::1','admin','http://localhost:8080/admin/panduan','2022-08-01 17:32:49'),
(84,4,'::1','admin','http://localhost:8080/admin/kategori_download','2022-08-01 17:32:53'),
(85,4,'::1','admin','http://localhost:8080/admin/kategori_download','2022-08-01 17:33:02'),
(86,4,'::1','admin','http://localhost:8080/admin/kategori_download','2022-08-01 17:33:02'),
(87,4,'::1','admin','http://localhost:8080/admin/download/tambah','2022-08-01 17:33:06'),
(88,4,'::1','admin','http://localhost:8080/admin/download/tambah','2022-08-01 17:41:20'),
(89,4,'::1','admin','http://localhost:8080/admin/download','2022-08-01 17:49:52'),
(90,4,'::1','admin','http://localhost:8080/admin/download/tambah','2022-08-01 17:49:54'),
(91,4,'::1','admin','http://localhost:8080/admin/download/tambah','2022-08-01 17:50:17'),
(92,4,'::1','admin','http://localhost:8080/admin/download/tambah','2022-08-01 17:50:30'),
(93,4,'::1','admin','http://localhost:8080/admin/download','2022-08-01 17:50:30'),
(94,4,'::1','admin','http://localhost:8080/admin/dasbor','2022-08-06 03:41:27'),
(95,4,'::1','admin','http://localhost:8080/admin/dasbor','2022-08-06 03:43:13'),
(96,4,'::1','admin','http://localhost:8080/admin/konfigurasi/icon','2022-08-06 03:43:44'),
(97,4,'::1','admin','http://localhost:8080/admin/konfigurasi/logo','2022-08-06 03:43:48'),
(98,4,'::1','admin','http://localhost:8080/admin/konfigurasi/logo','2022-08-06 03:43:52'),
(99,4,'::1','admin','http://localhost:8080/admin/dasbor','2022-08-06 03:50:31'),
(100,4,'::1','admin','http://localhost:8080/admin/konfigurasi','2022-08-06 03:50:37'),
(101,4,'::1','admin','http://localhost:8080/admin/konfigurasi/seo','2022-08-06 03:54:09'),
(102,4,'::1','admin','http://localhost:8080/admin/konfigurasi/seo','2022-08-06 03:54:15'),
(103,4,'::1','admin','http://localhost:8080/admin/konfigurasi/seo','2022-08-06 03:54:15'),
(104,4,'::1','admin','http://localhost:8080/admin/konfigurasi','2022-08-06 04:12:14'),
(105,4,'::1','admin','http://localhost:8080/admin/kategori_staff','2022-08-06 04:39:51'),
(106,4,'::1','admin','http://localhost:8080/admin/kategori_staff/edit/1','2022-08-06 04:40:06'),
(107,4,'::1','admin','http://localhost:8080/admin/staff','2022-08-06 04:40:09'),
(108,4,'::1','admin','http://localhost:8080/admin/staff/edit/1','2022-08-06 04:40:11'),
(109,4,'::1','admin','http://localhost:8080/admin/staff/edit/1','2022-08-06 04:40:54'),
(110,4,'::1','admin','http://localhost:8080/admin/staff','2022-08-06 04:41:13'),
(111,4,'::1','admin','http://localhost:8080/admin/staff/edit/1','2022-08-06 04:41:39'),
(112,4,'::1','admin','http://localhost:8080/admin/staff/edit/1','2022-08-06 04:41:51'),
(113,4,'::1','admin','http://localhost:8080/admin/staff','2022-08-06 04:42:18'),
(114,4,'::1','admin','http://localhost:8080/admin/staff/edit/1','2022-08-06 04:42:20'),
(115,4,'::1','admin','http://localhost:8080/admin/staff','2022-08-06 04:42:21'),
(116,4,'::1','admin','http://localhost:8080/admin/staff','2022-08-06 04:43:04'),
(117,4,'::1','admin','http://localhost:8080/admin/staff/edit/1','2022-08-06 04:43:06'),
(118,4,'::1','admin','http://localhost:8080/admin/staff/edit/1','2022-08-06 04:45:32'),
(119,4,'::1','admin','http://localhost:8080/admin/staff/edit/1','2022-08-06 04:46:20'),
(120,4,'::1','admin','http://localhost:8080/admin/staff','2022-08-06 04:46:20'),
(121,4,'::1','admin','http://localhost:8080/admin/staff/edit/1','2022-08-06 04:48:54'),
(122,4,'::1','admin','http://localhost:8080/admin/staff','2022-08-06 04:48:58'),
(123,4,'::1','admin','http://localhost:8080/admin/kategori_staff','2022-08-06 04:49:54'),
(124,4,'::1','admin','http://localhost:8080/admin/kategori_staff','2022-08-06 04:50:07'),
(125,4,'::1','admin','http://localhost:8080/admin/kategori_staff','2022-08-06 04:50:07'),
(126,4,'::1','admin','http://localhost:8080/admin/staff','2022-08-06 04:50:14'),
(127,4,'::1','admin','http://localhost:8080/admin/staff','2022-08-06 04:50:35'),
(128,4,'::1','admin','http://localhost:8080/admin/staff','2022-08-06 04:50:35'),
(129,4,'::1','admin','http://localhost:8080/admin/staff','2022-08-06 04:51:24'),
(130,4,'::1','admin','http://localhost:8080/admin/staff','2022-08-06 04:51:24'),
(131,4,'::1','admin','http://localhost:8080/admin/staff/edit/1','2022-08-06 04:51:27'),
(132,4,'::1','admin','http://localhost:8080/admin/staff','2022-08-06 04:53:37'),
(133,4,'::1','admin','http://localhost:8080/admin/staff','2022-08-06 04:54:03'),
(134,4,'::1','admin','http://localhost:8080/admin/staff','2022-08-06 04:54:45'),
(135,4,'::1','admin','http://localhost:8080/admin/staff','2022-08-06 04:54:58'),
(136,4,'::1','admin','http://localhost:8080/admin/staff','2022-08-06 04:56:32'),
(137,4,'::1','admin','http://localhost:8080/admin/staff','2022-08-06 04:56:32'),
(138,4,'::1','admin','http://localhost:8080/admin/staff','2022-08-06 04:57:09'),
(139,4,'::1','admin','http://localhost:8080/admin/staff','2022-08-06 04:57:09'),
(140,4,'::1','admin','http://localhost:8080/admin/staff/edit/4','2022-08-06 04:57:13'),
(141,4,'::1','admin','http://localhost:8080/admin/staff/edit/4','2022-08-06 04:57:16'),
(142,4,'::1','admin','http://localhost:8080/admin/staff','2022-08-06 04:57:16'),
(143,4,'::1','admin','http://localhost:8080/admin/staff','2022-08-06 04:58:04'),
(144,4,'::1','admin','http://localhost:8080/admin/staff','2022-08-06 04:58:54'),
(145,4,'::1','admin','http://localhost:8080/admin/staff','2022-08-06 04:58:54'),
(146,4,'::1','admin','http://localhost:8080/admin/staff','2022-08-06 04:59:24'),
(147,4,'::1','admin','http://localhost:8080/admin/staff','2022-08-06 04:59:24'),
(148,4,'::1','admin','http://localhost:8080/admin/dasbor','2022-08-06 05:01:04'),
(149,4,'::1','admin','http://localhost:8080/admin/konfigurasi','2022-08-06 05:01:52'),
(150,4,'::1','admin','http://localhost:8080/admin/konfigurasi','2022-08-06 05:02:07'),
(151,4,'::1','admin','http://localhost:8080/admin/konfigurasi','2022-08-06 05:02:51'),
(152,4,'::1','admin','http://localhost:8080/admin/konfigurasi','2022-08-06 05:03:16'),
(153,4,'::1','admin','http://localhost:8080/admin/konfigurasi','2022-08-06 05:03:25'),
(154,4,'::1','admin','http://localhost:8080/admin/konfigurasi','2022-08-06 05:03:35'),
(155,4,'::1','admin','http://localhost:8080/admin/konfigurasi','2022-08-06 05:03:52'),
(156,4,'::1','admin','http://localhost:8080/admin/konfigurasi','2022-08-06 05:04:11'),
(157,4,'::1','admin','http://localhost:8080/admin/konfigurasi','2022-08-06 05:04:30'),
(158,4,'::1','admin','http://localhost:8080/admin/konfigurasi','2022-08-06 05:05:06'),
(159,4,'::1','admin','http://localhost:8080/admin/staff','2022-08-06 05:07:05'),
(160,4,'::1','admin','http://localhost:8080/admin/kategori_staff','2022-08-06 05:07:09'),
(161,4,'::1','admin','http://localhost:8080/admin/kategori_staff/edit/2','2022-08-06 05:07:12'),
(162,4,'::1','admin','http://localhost:8080/admin/kategori_staff/edit/2','2022-08-06 05:07:39'),
(163,4,'::1','admin','http://localhost:8080/admin/kategori_staff','2022-08-06 05:07:39'),
(164,4,'::1','admin','http://localhost:8080/admin/staff','2022-08-06 05:08:16'),
(165,4,'::1','admin','http://localhost:8080/admin/staff/edit/4','2022-08-06 05:08:28'),
(166,4,'::1','admin','http://localhost:8080/admin/staff/edit/4','2022-08-06 05:08:31'),
(167,4,'::1','admin','http://localhost:8080/admin/staff','2022-08-06 05:08:31'),
(168,4,'::1','admin','http://localhost:8080/admin/staff/edit/4','2022-08-06 05:08:50'),
(169,4,'::1','admin','http://localhost:8080/admin/staff/edit/5','2022-08-06 05:08:51'),
(170,4,'::1','admin','http://localhost:8080/admin/staff/edit/6','2022-08-06 05:08:52'),
(171,4,'::1','admin','http://localhost:8080/admin/staff/edit/7','2022-08-06 05:08:59'),
(172,4,'::1','admin','http://localhost:8080/admin/staff/edit/5','2022-08-06 05:09:03'),
(173,4,'::1','admin','http://localhost:8080/admin/staff','2022-08-06 05:09:03'),
(174,4,'::1','admin','http://localhost:8080/admin/staff/edit/6','2022-08-06 05:09:06'),
(175,4,'::1','admin','http://localhost:8080/admin/staff','2022-08-06 05:09:06'),
(176,4,'::1','admin','http://localhost:8080/admin/staff/edit/7','2022-08-06 05:09:09'),
(177,4,'::1','admin','http://localhost:8080/admin/staff','2022-08-06 05:09:09'),
(178,4,'::1','admin','http://localhost:8080/admin/staff','2022-08-06 05:09:14'),
(179,4,'::1','admin','http://localhost:8080/admin/konfigurasi','2022-08-06 05:09:17'),
(180,4,'::1','admin','http://localhost:8080/admin/kategori_staff','2022-08-06 05:10:50'),
(181,4,'::1','admin','http://localhost:8080/admin/kategori_staff/edit/2','2022-08-06 05:10:52'),
(182,4,'::1','admin','http://localhost:8080/admin/kategori_staff/edit/2','2022-08-06 05:10:55'),
(183,4,'::1','admin','http://localhost:8080/admin/konfigurasi','2022-08-06 05:12:30'),
(184,4,'::1','admin','http://localhost:8080/admin/konfigurasi','2022-08-06 05:13:32'),
(185,4,'::1','admin','http://localhost:8080/admin/konfigurasi','2022-08-06 05:26:40'),
(186,4,'::1','admin','http://localhost:8080/admin/konfigurasi','2022-08-06 05:27:17'),
(187,4,'::1','admin','http://localhost:8080/admin/konfigurasi','2022-08-06 05:27:46'),
(188,4,'::1','admin','http://localhost:8080/admin/konfigurasi','2022-08-06 05:32:48'),
(189,4,'::1','admin','http://localhost:8080/admin/konfigurasi','2022-08-06 05:32:48'),
(190,4,'::1','admin','http://localhost:8080/admin/konfigurasi','2022-08-06 05:32:52'),
(191,4,'::1','admin','http://localhost:8080/admin/konfigurasi','2022-08-06 05:33:44'),
(192,4,'::1','admin','http://localhost:8080/admin/konfigurasi','2022-08-06 05:34:01'),
(193,4,'::1','admin','http://localhost:8080/admin/konfigurasi','2022-08-06 05:34:01'),
(194,4,'::1','admin','http://localhost:8080/admin/kategori','2022-08-06 06:12:24'),
(195,4,'::1','admin','http://localhost:8080/admin/kategori','2022-08-06 06:18:05'),
(196,4,'::1','admin','http://localhost:8080/admin/kategori','2022-08-06 06:19:11'),
(197,4,'::1','admin','http://localhost:8080/admin/kategori','2022-08-06 06:21:13'),
(198,4,'::1','admin','http://localhost:8080/admin/kategori','2022-08-06 06:21:45'),
(199,4,'::1','admin','http://localhost:8080/admin/kategori/edit/3','2022-08-06 06:23:22'),
(200,4,'::1','admin','http://localhost:8080/admin/kategori/edit/3','2022-08-06 06:23:59'),
(201,4,'::1','admin','http://localhost:8080/admin/kategori','2022-08-06 06:24:14'),
(202,4,'::1','admin','http://localhost:8080/admin/kategori','2022-08-06 06:33:47'),
(203,4,'::1','admin','http://localhost:8080/admin/kategori/edit/3','2022-08-06 06:33:51'),
(204,4,'::1','admin','http://localhost:8080/admin/kategori','2022-08-06 06:33:53'),
(205,4,'::1','admin','http://localhost:8080/admin/berita','2022-08-06 06:40:51'),
(206,4,'::1','admin','http://localhost:8080/admin/berita/tambah','2022-08-06 07:07:43'),
(207,4,'::1','admin','http://localhost:8080/admin/berita','2022-08-06 07:07:45'),
(208,4,'::1','admin','http://localhost:8080/admin/berita','2022-08-06 07:10:03'),
(209,4,'::1','admin','http://localhost:8080/admin/berita/tambah','2022-08-06 07:10:04'),
(210,4,'::1','admin','http://localhost:8080/admin/berita','2022-08-06 07:11:20'),
(211,4,'::1','admin','http://localhost:8080/admin/berita','2022-08-06 07:11:21'),
(212,4,'::1','admin','http://localhost:8080/admin/berita/edit/1','2022-08-06 07:11:24'),
(213,4,'::1','admin','http://localhost:8080/admin/berita/edit/1','2022-08-06 07:14:23'),
(214,4,'::1','admin','http://localhost:8080/admin/berita/jenis_berita/Profil','2022-08-06 07:14:23'),
(215,4,'::1','admin','http://localhost:8080/admin/berita/edit/1','2022-08-06 07:14:29'),
(216,4,'::1','admin','http://localhost:8080/admin/berita/edit/1','2022-08-06 08:32:15'),
(217,4,'::1','admin','http://localhost:8080/admin/berita/jenis_berita/Profil','2022-08-06 08:32:15'),
(218,4,'::1','admin','http://localhost:8080/admin/berita/jenis_berita/Profil','2022-08-06 08:35:14'),
(219,4,'::1','admin','http://localhost:8080/admin/berita/edit/2','2022-08-06 08:35:20'),
(220,4,'::1','admin','http://localhost:8080/admin/berita/edit/2','2022-08-06 08:36:24'),
(221,4,'::1','admin','http://localhost:8080/admin/berita/jenis_berita/Profil','2022-08-06 08:36:25'),
(222,4,'::1','admin','http://localhost:8080/admin/berita/jenis_berita/Profil','2022-08-06 08:38:47'),
(223,4,'::1','admin','http://localhost:8080/admin/berita/edit/1','2022-08-06 08:39:03'),
(224,4,'::1','admin','http://localhost:8080/admin/berita/jenis_berita/Profil','2022-08-06 08:39:09'),
(225,4,'::1','admin','http://localhost:8080/admin/berita/edit/1','2022-08-06 08:43:10'),
(226,4,'::1','admin','http://localhost:8080/admin/berita/edit/1','2022-08-06 08:43:14'),
(227,4,'::1','admin','http://localhost:8080/admin/berita/jenis_berita/Profil','2022-08-06 08:43:14'),
(228,4,'::1','admin','http://localhost:8080/admin/berita/edit/1','2022-08-06 08:44:07'),
(229,4,'::1','admin','http://localhost:8080/admin/berita/jenis_berita/Profil','2022-08-06 08:44:09'),
(230,4,'::1','admin','http://localhost:8080/admin/berita/edit/2','2022-08-06 08:44:10'),
(231,4,'::1','admin','http://localhost:8080/admin/berita/edit/2','2022-08-06 08:44:48'),
(232,4,'::1','admin','http://localhost:8080/admin/berita/edit/2','2022-08-06 08:44:51'),
(233,4,'::1','admin','http://localhost:8080/admin/berita/jenis_berita/Profil','2022-08-06 08:44:51'),
(234,4,'::1','admin','http://localhost:8080/admin/berita/edit/2','2022-08-06 10:11:52'),
(235,4,'::1','admin','http://localhost:8080/admin/berita/edit/2','2022-08-06 10:11:55'),
(236,4,'::1','admin','http://localhost:8080/admin/berita/jenis_berita/Profil','2022-08-06 10:11:55'),
(237,4,'::1','admin','http://localhost:8080/admin/berita/edit/1','2022-08-06 10:12:04'),
(238,4,'::1','admin','http://localhost:8080/admin/berita/edit/1','2022-08-06 10:12:07'),
(239,4,'::1','admin','http://localhost:8080/admin/berita/jenis_berita/Profil','2022-08-06 10:12:07'),
(240,4,'::1','admin','http://localhost:8080/admin/berita/edit/1','2022-08-06 10:12:24'),
(241,4,'::1','admin','http://localhost:8080/admin/berita/edit/1','2022-08-06 10:12:31'),
(242,4,'::1','admin','http://localhost:8080/admin/berita/jenis_berita/Profil','2022-08-06 10:12:31'),
(243,4,'::1','admin','http://localhost:8080/admin/berita','2022-08-06 10:13:12'),
(244,4,'::1','admin','http://localhost:8080/admin/berita/edit/4','2022-08-06 10:21:57'),
(245,4,'::1','admin','http://localhost:8080/admin/berita/edit/4','2022-08-06 10:22:23'),
(246,4,'::1','admin','http://localhost:8080/admin/berita/jenis_berita/Berita','2022-08-06 10:22:23'),
(247,4,'::1','admin','http://localhost:8080/admin/berita','2022-08-06 10:23:44'),
(248,4,'::1','admin','http://localhost:8080/admin/client','2022-08-06 10:25:13'),
(249,4,'::1','admin','http://localhost:8080/admin/client','2022-08-06 10:25:48'),
(250,4,'::1','admin','http://localhost:8080/admin/client','2022-08-06 10:25:48'),
(251,4,'::1','admin','http://localhost:8080/admin/client/edit/1','2022-08-06 10:25:58'),
(252,4,'::1','admin','http://localhost:8080/admin/client','2022-08-06 10:34:01'),
(253,4,'::1','admin','http://localhost:8080/admin/client/edit/1','2022-08-06 10:34:03'),
(254,4,'::1','admin','http://localhost:8080/admin/client/edit/1','2022-08-06 10:34:15'),
(255,4,'::1','admin','http://localhost:8080/admin/client','2022-08-06 10:34:16'),
(256,4,'::1','admin','http://localhost:8080/admin/client/edit/1','2022-08-06 10:44:11'),
(257,4,'::1','admin','http://localhost:8080/admin/client/edit/1','2022-08-06 10:44:18'),
(258,4,'::1','admin','http://localhost:8080/admin/client','2022-08-06 10:44:18'),
(259,4,'::1','admin','http://localhost:8080/admin/client','2022-08-06 10:47:17'),
(260,4,'::1','admin','http://localhost:8080/admin/client','2022-08-06 10:47:17'),
(261,4,'::1','admin','http://localhost:8080/admin/client','2022-08-06 10:48:36'),
(262,4,'::1','admin','http://localhost:8080/admin/client','2022-08-06 10:48:36'),
(263,4,'::1','admin','http://localhost:8080/admin/client','2022-08-06 10:53:08'),
(264,4,'::1','admin','http://localhost:8080/admin/client','2022-08-06 10:53:11'),
(265,4,'::1','admin','http://localhost:8080/admin/client','2022-08-06 10:53:31'),
(266,4,'::1','admin','http://localhost:8080/admin/client','2022-08-06 10:57:21'),
(267,4,'::1','admin','http://localhost:8080/admin/client/edit/3','2022-08-06 10:57:22'),
(268,4,'::1','admin','http://localhost:8080/admin/dasbor','2022-08-08 08:23:20'),
(269,4,'::1','admin','http://localhost:8080/admin/kategori_galeri','2022-08-08 08:24:26'),
(270,4,'::1','admin','http://localhost:8080/admin/kategori','2022-08-08 08:24:30'),
(271,4,'::1','admin','http://localhost:8080/admin/kategori/edit/3','2022-08-08 08:24:34'),
(272,4,'::1','admin','http://localhost:8080/admin/kategori','2022-08-08 08:24:37'),
(273,4,'::1','admin','http://localhost:8080/admin/kategori_galeri','2022-08-08 08:54:59'),
(274,4,'::1','admin','http://localhost:8080/admin/kategori_download','2022-08-08 08:55:05'),
(275,4,'::1','admin','http://localhost:8080/admin/download','2022-08-08 09:04:25'),
(276,4,'::1','admin','http://localhost:8080/admin/download/tambah','2022-08-08 09:04:27');
/*!40000 ALTER TABLE `user_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(64) NOT NULL,
  `akses_level` varchar(20) NOT NULL,
  `kode_rahasia` varchar(255) DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `tanggal_post` datetime NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES
(4,'Administrator','pt_awj@awj.co.id','admin','f865b53623b121fd34ee5426c792e5c33af8c227','Admin',NULL,NULL,NULL,'2022-07-29 10:27:11','2022-07-29 03:27:11');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `video`
--

DROP TABLE IF EXISTS `video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `video` (
  `id_video` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `keterangan` text DEFAULT NULL,
  `video` text NOT NULL,
  `tanggal_post` datetime NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id_video`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video`
--

LOCK TABLES `video` WRITE;
/*!40000 ALTER TABLE `video` DISABLE KEYS */;
/*!40000 ALTER TABLE `video` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'ajaib_db'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-09  8:39:22
