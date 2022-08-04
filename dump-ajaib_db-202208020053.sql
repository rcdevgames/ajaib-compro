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
  `judul_berita` varchar(255) NOT NULL,
  `ringkasan` varchar(500) NOT NULL,
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
(1,4,1,'tentang-perusahaan','Tentang Perusahaan','Sekilas tentang PT. Ajaib Windu Jaya','<p>isi</p>','Publish','Profil','','logo.png','',4,'2022-08-01 23:08:30','2022-08-01 23:07:00','2022-08-01 16:10:41'),
(2,4,1,'visi-misi','Visi & Misi','Visi dan Misi Perusahaan','<p>isi</p>','Publish','Profil','',NULL,'',0,'2022-08-01 23:10:11','2022-08-01 23:09:00','2022-08-01 16:10:11'),
(3,4,2,'bekasi','Bekasi','Proyek Bekasi','<p>Isi</p>','Publish','Layanan','','bekasi.jpeg','',0,'2022-08-02 00:27:17','2022-08-02 00:25:00','2022-08-01 17:27:17'),
(4,4,3,'berita-1','Berita 1','ringkasan berita','<p>isi berita</p>','Publish','Berita','','Sukarman-ST-shutterstock_1616151298.jpeg','',1,'2022-08-02 00:29:34','2022-08-02 00:28:00','2022-08-01 17:29:44');
/*!40000 ALTER TABLE `berita` ENABLE KEYS */;
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
  `isi_testimoni` text DEFAULT NULL,
  `gambar` varchar(200) DEFAULT NULL,
  `status_client` varchar(20) NOT NULL,
  `tempat_lahir` varchar(255) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `tanggal_post` datetime NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id_client`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
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
(1,4,'profil','Profil',1,0,'2022-08-01 16:07:48'),
(2,4,'proyek','Proyek',2,0,'2022-08-01 17:25:50'),
(3,4,'berita','Berita',3,1,'2022-08-01 17:29:54');
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
(1,4,'profil-perusahaan','Profil Perusahaan',1,0,'2022-08-01 17:33:02');
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
  `nama_kategori_staff` varchar(255) NOT NULL,
  `urutan` int(11) DEFAULT NULL,
  `hits` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id_kategori_staff`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kategori_staff`
--

LOCK TABLES `kategori_staff` WRITE;
/*!40000 ALTER TABLE `kategori_staff` DISABLE KEYS */;
INSERT INTO `kategori_staff` VALUES
(1,4,'direksi','Direksi',1,0,'2022-08-01 16:11:17'),
(2,4,'manajemen','Manajemen',2,0,'2022-08-01 16:11:24');
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
  `tentang` text DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
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
(1,4,'PT. AJAIB WINDU JAYA','AWJ','DEVELOPER - KONTRAKTOR - TRADING','<p><em><strong>PT Javawebmedia Edukasi Indonesia</strong></em>&nbsp;atau Java Web Media berdiri pada tanggal 26 April 2010, berawal dari garasi rumah ukuran 3x4 meter. Java Web Media awalnya hanya bergerak di bidang pembuatan dan pengembangan website serta agensi desain grafis. Awal tahun 2011, perusahaan ini kemudian mulai bergerak di bidang pengembangan sumber daya manusia, khususnya di bidang keahlian computer&nbsp;<em>Graphic Design</em>,&nbsp;<em>Web Design</em>&nbsp;dan&nbsp;<em>Web Development.</em></p>\r\n<p>Lalu pada tahun 2014 Java Web Media resmi menjadi sebuah perusahaan yang terdaftar. Pada tahun 2014 itu pula kami membuka layanan kursus statistik.</p>\r\n<p>Java Web Media adalah lembaga kursus yang bergerak di bidang pendidikan khususnya kursus website, digital marketing, desain grafis dan statistik. Sampai saat ini Java Web Media sudah memiliki lulusan lebih dari 1200 orang dari berbagai status dan profesi mulai dari pelajar sekolah, mahasiswa, guru, dosen, staff profesional, freelancer, dll. Lulusan tidak hanya dari Indonesia tapi juga dari beberapa negara tetangga seperti New Zealand, Timor Leste dan Malaysia.</p>\r\n<p>Java Web Media membuka cabang pertamanya pada tahun 2014. Hingga tahun 2020 ini, Java Web Media telah memiliki 2 cabang yang berlokasi di kota Depok.</p>\r\n<p>Selain bergerak di bidang pendidikan Java Web Media juga memiliki layanan di bidang perencanaan strategis sistem informasi, pengembangan aplikasi berbasis web dan berbasis mobile (Android dan IOS/Apple).</p>','DEVELOPER - KONTRAKTOR - TRADING','https://www.awj.co.id/','pt_awj@awj.co.id','pt.ajaibwindujaya@gmail.com','<p>Plaza Summarecon Bekasi Level 7<br>Jl. Bulevar Ahmad Yani Kav. K.01 Harapan Mulya,<br>Medan Satria, Kota Bekasi, Jawa Barat, 17142<br></p>','+62 21 2955 7415','','logo-black.png','logo.png','Java Web Media adalah Pusat Kursus Private dan Reguler bidang Desain Grafis, Web Programming, Mobile Application dan Statistik\r\n','adada','#','#','#','#','-','-','-','-','<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d495.78587509211735!2d106.99610657122383!3d-6.225839100000003!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e698d05035d20f1%3A0x2fe7fe4f60a49bb!2svOffice%20-%20Plaza%20Summarecon%20(Virtual%20Office%20%7C%20Serviced%20Office%20%7C%20Meeting%20Room)!5e0!3m2!1sen!2sid!4v1659113538319!5m2!1sen!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>','smtp','ssl://mail.websitemu.com',465,7,'contact@websitemu.com','muhammad','2022-08-01 14:15:35');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES
(1,1,1,'Joko Prabowo','','','','Direktur Utama (CEO)','',NULL,'Publish','2022-08-01 16:17:46');
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
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=latin1;
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
(93,4,'::1','admin','http://localhost:8080/admin/download','2022-08-01 17:50:30');
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

-- Dump completed on 2022-08-02  0:53:20
