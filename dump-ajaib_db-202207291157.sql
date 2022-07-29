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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `berita`
--

LOCK TABLES `berita` WRITE;
/*!40000 ALTER TABLE `berita` DISABLE KEYS */;
INSERT INTO `berita` VALUES
(1,1,5,'pembuatan-website-profil','Pembuatan Website Profil','Pastikan perusahaan Anda bisa diakses secara online sehingga meningkatkan brand image perusahaan yang akhirnya meningkatkan omset usaha.','<h3><strong>Tujuan</strong></h3>\r\n<p>Website perusahaan dibangun sebagai:</p>\r\n<ul>\r\n<li>Sarana komunikasi resmi perusahaan dengan pelanggan</li>\r\n<li>Menyediakan informasi resmi perusahaan</li>\r\n<li>Menyajikan informasi produk dan layanan yang dimiliki</li>\r\n<li>Sebagai media pemasaran bagi perusahaan</li>\r\n</ul>\r\n<h3><strong>Fitur-fitur utama</strong></h3>\r\n<p>Website perusahaan ini menyediakan fitur-fitur sebagai berikut (disesuaikan dengan paket yang dipilih):</p>\r\n<ol>\r\n<li>Modul Berita untuk mengelola dan menampilkan berita</li>\r\n<li>Modul Profil untuk mengelola dan menampilkan profil perusahaan</li>\r\n<li>Modul Staff untuk mengelola dan menampilkan data staff/personil perusahaan</li>\r\n<li>Modul Galeri untuk mengelola galeri foto dan menampilkannya</li>\r\n<li>Modul Video berfungsi untuk mempublikasikan video sebagai sarana komunikasi</li>\r\n<li>Modul Agenda/Event untuk menampilkan event-event atau agenda yang ada di perusahaan</li>\r\n<li>Modul Produk dan layanan untuk mengelola dan menampilkan produk/layanan yang dipasarkan</li>\r\n<li>Modul Kontak untuk mengelola komunikasi pelanggan/customer dengan perusahaan</li>\r\n<li>Modul SEO untuk membantu hasil pencarian di Google</li>\r\n<li>Integrasi dengan jejaring sosial yang dimiliki</li>\r\n<li>Dan fitur-fitur lainnya</li>\r\n</ol>\r\n<h3>Paket Dasar</h3>\r\n<table class=\"table table-bordered table-stripped table-hover tiny-table\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td>Website UKM Dasar</td>\r\n<td>Hosting 250MB<br />Bandwidth Unlimited</td>\r\n<td>Rp. 1.500.000&nbsp;<sup class=\"text-danger\">*</sup></td>\r\n</tr>\r\n<tr>\r\n<td>Website Perusahaan Kecil</td>\r\n<td>Hosting dan bandwidth unlimeted<br />Fully responsive web design</td>\r\n<td>Rp. 3.000.000&nbsp;<sup class=\"text-danger\">*</sup></td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"3\"><span class=\"text-danger\">* Harga dasar dengan syarat tertentu</span></td>\r\n</tr>\r\n</tbody>\r\n</table>','Publish','Berita','Pastikan perusahaan Anda bisa diakses secara online sehingga meningkatkan brand image perusahaan yang akhirnya meningkatkan omset usaha.','website-perusahaan-company-profile-web-javawebmedia1.jpg','',5,'2019-05-13 15:51:51','2019-05-13 15:51:36','2021-04-24 03:01:11'),
(2,1,5,'kursus-statistik','Kursus Statistik','Tujuan dari kursus ini adalah mampu melakukan manajemen dan analisis data dengan SPSS/Stata dan melakukan analisis deskriptif dan penyajian data serta intrepretasinya.','<p>Tujuan dari kursus ini adalah mampu melakukan manajemen dan analisis data dengan SPSS/Stata dan melakukan analisis deskriptif dan penyajian data serta intrepretasinya.</p>\r\n<p>Materi Kursus:</p>\r\n<ul>\r\n<ul>\r\n<li>Pengantar manajemen dan analisis data</li>\r\n<li>Transfer data, Entry data dan Cleaning Data</li>\r\n<li>Transformasi data (select cases, recode, split, dll)</li>\r\n<li>Statistik deskriptif untuk data numeric (mean, median, standar deviasi, varians, percentile dll) dan data kategorik (proporsi/persentase)</li>\r\n<li>Penyajian data (Box Plot, Bar Diagram, Pie, Histogram, dll)</li>\r\n</ul>\r\n</ul>\r\n<p><strong>Bonus: Uji Validitas dan Reliabilitas Instrumen, durasi 1 jam</strong></p>\r\n<h3><strong>Paket In house Training</strong></h3>\r\n<p>Paket in house training ini dilakukan sesuai kebutuhan institusi atau personal. Untuk materi dan biaya akan kami ajukan melalui proposal.</p>','Publish','Layanan','Tujuan dari kursus ini adalah mampu melakukan manajemen dan analisis data dengan SPSS/Stata dan melakukan analisis deskriptif dan penyajian data serta intrepretasinya.','instagram-kursus-statistik-javawebmedia.png','fa fa-chart-bar',7,'2019-05-17 04:15:33','2019-05-17 04:06:15','2021-04-24 05:08:01'),
(3,1,5,'sejarah-java-web-media','Sejarah Java Web Media','Yuk pelajari sejarah dan awal mula berdirinya Java Web Media.','<h2>Java Web Media</h2>\r\n<p>Java Web Media didirikan oleh Andoyo dan online pada tanggal 26 April 2010. Java Web Media awalnya hanya bergerak di bidang pembuatan dan pengembangan website serta agensi desain grafis. Awal tahun 2011, perusahaan ini kemudian mulai bergera di bidang pengembangan sumber daya manusia, khususnya di bidang keahlian computer Graphic Design, Web Design dan Web Development.</p>\r\n<h2>Tentang Andoyo</h2>\r\n<p><strong>Andoyo&nbsp;</strong>adalah pendiri Java Web Media. Aktif mengajar Graphic Design, Web Design dan Web Programming. Lahir di Blora, 22 Februari 1983.</p>\r\n<p>Lulus dengan predikat Wisudawan Terbaik dari Teknik Sipil&nbsp; Universitas Negeri Semarang pada tahun 2006. Pernah bekerja sebagai Site Engineer di sebuah perusahaan kontraktor. Mulai blogging sejak masih bekerja sebagai kontraktor di tahun 2008.</p>\r\n<p>Kecintaanya pada teknologi web akhirnya mengarahkannya untuk mempelajari Graphic Design dan Web Design di Natcoll Design Technology, Wellington New Zealand di tahun 2009. Semenjak itu, Graphic Design dan Web Design menjadi salah satu&nbsp;<em>passion&nbsp;</em>di dalam hidupnya.</p>\r\n<p>Saat ini aktivitas selain mengajar adalah mengelola usahanya yang bergerak di bidang graphic design, web design, web development dan web education. Anda dapat mengunjungi situs resminya di&nbsp;<a href=\"http://www.javawebmedia.com/\">www.javawebmedia.com</a>.</p>\r\n<p>Aktivitas berikutnya adalah sebagai mahasiswa Magister Teknologi Informasi di Universitas Indonesia. Setelah pulang bekerja kemudian berangkat kuliah di Kampus Salemba, Fakultas Ilmu Komputer Universitas Indonesia.</p>','Publish','Profil','Anda akan belajar membangun website profil perusahaan dengan menggunakan bootstrap, framework JavaScript, PHP framework Codeigniter / Laravel dan database MySQL.','web-development-javawebmedia11.png','fa fa-globe',18,'2019-05-17 04:37:00','2019-05-17 04:36:19','2021-05-03 01:17:05'),
(4,1,5,'profil-java-web-media','Profil Java Web Media','PT Javawebmedia Edukasi Indonesia atau Java Web Media berdiri pada tanggal 26 April 2010.','<p><em><strong>PT Javawebmedia Edukasi Indonesia</strong></em>&nbsp;atau Java Web Media berdiri pada tanggal 26 April 2010, berawal dari garasi rumah ukuran 3x4 meter. Java Web Media awalnya hanya bergerak di bidang pembuatan dan pengembangan website serta agensi desain grafis. Awal tahun 2011, perusahaan ini kemudian mulai bergerak di bidang pengembangan sumber daya manusia, khususnya di bidang keahlian computer&nbsp;<em>Graphic Design</em>,&nbsp;<em>Web Design</em>&nbsp;dan&nbsp;<em>Web Development.</em></p>\r\n<p>Lalu pada tahun 2014 Java Web Media resmi menjadi sebuah perusahaan yang terdaftar. Pada tahun 2014 itu pula kami membuka layanan kursus statistik.</p>\r\n<p>Java Web Media adalah lembaga kursus yang bergerak di bidang pendidikan khususnya kursus website, digital marketing, desain grafis dan statistik. Sampai saat ini Java Web Media sudah memiliki lulusan lebih dari 1200 orang dari berbagai status dan profesi mulai dari pelajar sekolah, mahasiswa, guru, dosen, staff profesional, freelancer, dll. Lulusan tidak hanya dari Indonesia tapi juga dari beberapa negara tetangga seperti New Zealand, Timor Leste dan Malaysia.</p>\r\n<p>Java Web Media membuka cabang pertamanya pada tahun 2014. Hingga tahun 2020 ini, Java Web Media telah memiliki 2 cabang yang berlokasi di kota Depok.</p>\r\n<p>Selain bergerak di bidang pendidikan Java Web Media juga memiliki layanan di bidang perencanaan strategis sistem informasi, pengembangan aplikasi berbasis web dan berbasis mobile (Android dan IOS/Apple).</p>','Publish','Profil','Java Web Media didirikan oleh Andoyo dan online pada tanggal 26 April 2010. Java Web Media awalnya hanya bergerak di bidang pembuatan dan pengembangan website serta agensi desain grafis. Awal tahun 2011, perusahaan ini kemudian mulai bergera di bidang pengembangan sumber daya manusia, khususnya di bidang keahlian computer Graphic Design, Web Design dan Web Development.','logo-javawebmedia-square.png','fas fa-check-circle',5,'2019-07-26 10:38:15','2019-07-26 10:36:47','2021-04-24 04:58:20'),
(6,1,3,'kursus-desain-grafis','Kursus Desain Grafis','Belajar desain grafis mulai dari tahap brief project, dengan Adobe Photoshop, Illustrator dan Indesign. Belajar membuat logo, edit foto, banner dan juga layout buku.','<h2>Deskripsi ringkas</h2>\r\n<p>Belajar desain grafis mulai dari tahap brief project, dengan Adobe Photoshop, Illustrator dan Indesign. Belajar membuat logo, edit foto, banner dan juga layout buku.</p>\r\n<hr />\r\n<p>Anda akan belajar desain grafis mulai dari tahap brief project, dasar-dasar desain secara manual ataupun dengan program (Photoshop, Illustrator dan Indesign) dan juga praktek langsung bagaimana mencetak dan mengaplikasikan hasil desain tersebut.</p>\r\n<h3>Materi kursus:</h3>\r\n<ul>\r\n<li>Dasar-dasar dan konsep desain</li>\r\n<li>Merencanakan desain dengan&nbsp;<strong>Visual Diary</strong></li>\r\n<li>Penggunaan Adobe&nbsp;<strong>Photoshop</strong></li>\r\n<li>Penggunaan Adobe&nbsp;<strong>Illustrator</strong></li>\r\n<li>Penggunaan Adobe&nbsp;<strong>Indesign</strong></li>\r\n<li>Aplikasi hasil desain (cetak dan digital media)</li>\r\n</ul>\r\n<h3>Tujuan Kursus</h3>\r\n<ul>\r\n<li>Anda dapat merencanakan dan membuat sebuah konsep desain</li>\r\n<li>Anda dapat membaca sebuah brief project dan mengaplikasikannya&nbsp;</li>\r\n<li>Menjadi seorang&nbsp;<em><strong>Junior Graphic Designer</strong></em></li>\r\n</ul>\r\n<h3>Urutan Materi</h3>\r\n<ul>\r\n<li>Installasi Adobe Photoshop, Illustrator dan Adobe Indesign</li>\r\n<li>Pemahaman Konsep Desain Grafis, Citarasa Warna dan Jenis-jenis gambar</li>\r\n<li>Pengenalan Adobe Photoshop</li>\r\n<li>Pengolahan foto menggunakan Photoshop</li>\r\n<li>Manipulasi dan perbaikan foto dengan Adobe Photoshop</li>\r\n<li>Pengolahan foto untuk diproses lebih lanjut (misalnya untuk leaflet, brosur, banner, spanduk, xbanner, buku dll)</li>\r\n<li>Pengenalan Adobe Illustrator</li>\r\n<li>Membuat logo dengan Adobe Illustrator</li>\r\n<li>Mendesain kartu nama, spanduk, leaflet, banner, xbanner, sticker, book cover dan lain-lain dengan Adobe Illustrator</li>\r\n<li>Pengenalan Adobe Indesign</li>\r\n<li>Membuat layout buku dan penerapannya dengan Adobe Indesign</li>\r\n<li>Mencetak hasil desain secara digital</li>\r\n</ul>','Publish','Layanan','Belajar desain grafis mulai dari tahap brief project, dengan Adobe Photoshop, Illustrator dan Indesign. Belajar membuat logo, edit foto, banner dan juga layout buku.','Kursus_Desain_Grafis.jpg','fa fa-palette',3,'2020-02-13 07:42:56','2020-02-13 07:41:51','2021-05-03 01:17:11'),
(7,1,5,'web-based-application','Web Based Application','Aplikasi bisnis berbasis web? Situs pendaftaran online untuk menunjang bisnis Anda? Kami berpengalaman dalam merencanakan & mengembangkan aplikasi tersebut.','<p>Aplikasi bisnis berbasis web? Situs pendaftaran online untuk menunjang bisnis Anda? Kami berpengalaman dalam merencanakan &amp; mengembangkan aplikasi tersebut.</p>\r\n<h3><strong>Tujuan</strong></h3>\r\n<p>Website perusahaan dibangun sebagai:</p>\r\n<ul>\r\n<li>Otomasi proses bisnis yang bisa diakses 24 jam dengan internet</li>\r\n<li>Menyederhanakan proses pengumpulan data konsumen/customer/siswa dsb</li>\r\n<li>Sarana pengelolaan proses bisnis/usaha yang mudah dan praktis</li>\r\n</ul>\r\n<h3><strong>Fitur-fitur utama</strong></h3>\r\n<p>Website perusahaan ini menyediakan fitur-fitur sebagai berikut (disesuaikan dengan paket yang dipilih):</p>\r\n<ol>\r\n<li><strong>Fitur pendaftaran online</strong></li>\r\n<li><strong>Fitur login, logout, update profile dan transaksi bagi konsumen/customer</strong></li>\r\n<li><strong>Fitur-fitur lain yang disesuaikan dengan kebutuhan perusahaan</strong></li>\r\n<li>Modul Berita untuk mengelola dan menampilkan berita</li>\r\n<li>Modul Profil untuk mengelola dan menampilkan profil perusahaan</li>\r\n<li>Modul Staff untuk mengelola dan menampilkan data staff/personil perusahaan</li>\r\n<li>Modul Galeri untuk mengelola galeri foto dan menampilkannya</li>\r\n<li>Modul Video berfungsi untuk mempublikasikan video sebagai sarana komunikasi</li>\r\n<li>Modul Agenda/Event untuk menampilkan event-event atau agenda yang ada di perusahaan</li>\r\n<li>Modul Produk dan layanan untuk mengelola dan menampilkan produk/layanan yang dipasarkan</li>\r\n<li>Modul Kontak untuk mengelola komunikasi pelanggan/customer dengan perusahaan</li>\r\n<li>Modul SEO untuk membantu hasil pencarian di Google</li>\r\n<li>Integrasi dengan jejaring sosial yang dimiliki</li>\r\n<li>Dan fitur-fitur lainnya</li>\r\n</ol>','Publish','Berita','Aplikasi bisnis berbasis web? Situs pendaftaran online untuk menunjang bisnis Anda? Kami berpengalaman dalam merencanakan & mengembangkan aplikasi tersebut.','web-application-pendaftaran-online-javawebmedia.jpg','',2,'2020-02-13 07:45:07','2020-02-13 07:44:27','2021-04-24 23:11:31'),
(21,1,6,'alasan-kenapa-belajar-website-dari-sekarang','Alasan Kenapa Belajar Website dari Sekarang','Memasuki zaman yang serba canggih seperti ini rasanya sangat perlu untuk kita bisa mengikuti alur perkembangan tersebut. Tujuannya agar kita tidak tertinggal dengan kemajuan tersebut. Salah satunya adalah belajar website. Lalu kenapa belajar website dari sekarang?','<p>Memasuki zaman yang serba canggih seperti ini rasanya sangat perlu untuk kita bisa mengikuti alur perkembangan tersebut. Tujuannya agar kita tidak tertinggal dengan kemajuan tersebut. Salah satunya adalah belajar website. Lalu kenapa belajar website dari sekarang?&nbsp;<strong>Berikut sedikit pemaparannya</strong>:</p>\r\n<p><strong>1. Agar tidak tertinggal</strong></p>\r\n<p>Alasan dasar kenapa belajar website karena agar kita tidak tertinggal dengan kemajuan teknologi. Diera teknologi seperti sekarang ini semua harus dilakukan dengan serba cepat. Begitu juga dengan informasi atau berkas dan juga data dapat dengan mudah kita peroleh lewat bantuan website. Semua data-data yang kita butuhkan bisa di unggah lewat website dan mudah untuk didapatkan.</p>\r\n<p><strong>2. Website media paling ampuh untuk promosi</strong></p>\r\n<p>Alasan berikutnya kenapa belajar website itu perlu sudah jelas akan sangat berguna bagi kita, utamanya untuk masalah bisnis. Website sangat membantu bisnis utamanya dalam urusan promosi. Dengan website kita dengan sangat mudah bisa mempromosikan berbagai macam bisnis yang kita miliki tanpa harus mengeluarkan banyak waktu dan banyak dana.</p>\r\n<p>Selain itu kenapa belajar website, tentunya juga kan menjadi strategi jitu dalam mencari trik cara pemasaran bisnis kita. dengan adanya website maka dengan mudah akan didapat berbagai macam terobosan pemasaran dari berbagai sumber lalu diaplikasikan pada website promo kita.</p>\r\n<p><strong>3. Media menuangkan kreativitas</strong></p>\r\n<p>Alasan kenapa belajar website tentunya tidak hanya berkutat dengan ranah bisnis maupun mengikuti perkembangan saja. Namun dengan belajar website kita bisa menuangkan kreativitas yang ada dalam diri kita. berbagai bentuk kreasi yang dihasilkan bisa kita masukkan ke dalam website tersebut sehingga tidak hanya menjadi konsumsi sendiri namun juga bisa mendatangkan keuntungan tentunya.</p>\r\n<p><strong>4. Menambah keterampilan</strong></p>\r\n<p>Alasan kenapa belajar website itu perlu yang terakhir adalah sebagai tambahan keterampilan yang kita miliki. Dengan kita belajar membuat website maka akan menjadikan kita memiliki nilai tambah tersendiri. Dengan keterampilan tersebut bukan tidak mungkin akan mendatangkan pekerjaan dan rejeki bagi kita nantinya. Jadi belajar website dari sekarang tidak ada ruginya.</p>','Publish','Berita','Memasuki zaman yang serba canggih seperti ini rasanya sangat perlu untuk kita bisa mengikuti alur perkembangan tersebut. Tujuannya agar kita tidak tertinggal dengan kemajuan tersebut. Salah satunya adalah belajar website. Lalu kenapa belajar website dari sekarang?','instagram-kursus-statistik-javawebmedia.png',NULL,0,'2021-04-24 08:03:21','0000-00-00 00:00:00','2021-04-24 03:00:38'),
(22,1,6,'betapa-pentingnya-belajar-web-programming-untuk-kebutuhan-perusahaan','Betapa Pentingnya Belajar Web Programming untuk Kebutuhan Perusahaan','Pada Mengapa harus Belajar Web Programming?? Pada era teknologi seperti sekarang ini, kedudukan website akan semakin merajai dalam bidang teknologi informasi untuk beberapa tahun kedepan. ','<p>Pada Mengapa harus Belajar Web&nbsp;<a href=\"https://flashcomindonesia.com/kursus-desain-website\">Programming</a>?? Pada era teknologi seperti sekarang ini, kedudukan<strong>&nbsp;website</strong>&nbsp;akan semakin merajai dalam bidang&nbsp;<strong>teknologi informasi</strong>&nbsp;untuk beberapa tahun kedepan. Alasannya karena dengan adannya internet sebagai jaringannya, anda dapat dengan mudah mendapatkan informasi yang pastinya anda butuhkan. Tidak berhenti disitu saja, website juga bisa berupa aplikasi, dari segi biaya akan lebih terjangkau. Anda hanya butuh membeli sebuah<strong>&nbsp;hosting</strong>&nbsp;dan&nbsp;<strong>domain</strong>, lalu aplikasi akann bisa dibuka dimana saja. Anda tidak perlu mempersiapkan sebuah server sendiri. Dari segi keperluan bisnis, sudah buakn rahasia lagi, sudah banyak website commerce yang bermunculan. Alasannya karena dengan menggunakan internet maka pemasaran dan publikasi pasar semakin luas. Dapat mencakup antar kota, provinsi bahkan antar negara. Jadi&nbsp; web programming ini sangat menjanjikan untuk beberapa tahun kedepan.</p>\r\n<p>Dari prmbahasan di atas kita bisa mengambil kesimpulan bahwa menguasai web programming ini sangat di bermanfaat bagi anda dalam jangka panjang. Mamang banyak anggapan kalau belajar web programming itu susah, kalau anda berfikir seperti itu, maka anda tidak akan pernah bisa menguasai web programming. Jadi anda harus bisa memotifasi diri anda sendiri, jangan hanya melihat dari sudut pandang mengenai pembelajarannya, coba lihat dari sudut pandang lain, seperti prospek kerja yang akan bertahan dalam jangka panjang.</p>\r\n<p>Untuk bisa menjadi web programming profesional, anda harus belajar bahasa pemrograman, mampu menguasai dan mengaplikasikannya dengan baik. Belajar bahasa pemrograman akan menguntungkan juga bagi anda, karena belajar bahasa pemrograman merupakan pembiasaan dalam menuliskan baris-baris kode yang benar, pembiasaan dalam menggunakan penalaran yang tepat, dan pembiasaan dalam meggunakan perumusan.</p>\r\n<p>Beberapa manfaat belajar bahasa pemrograman agar bisa menjadi web programming profesional.</p>\r\n<ul>\r\n<li>Meningkatkan kemampuan berfikir secara logis &ndash; karena dalam dunia web programming kita akan dituntut untuk bahasa pemrograman dan itu membutuhkan logika agar suatu program bisa berjalan dengan baik.</li>\r\n<li>Mengembangkan cara berfikir dengan sistematis &ndash; selain dapat mempertimbangkan dengan tepat bagaimana anda akan menyelesaikan sebuah permasalahan. Ini adalah salah satu manfaat belajar bahasa pemrograman.</li>\r\n<li>Melatih teliti terhadap detail &ndash; dalam membangun sebuah program, sering kali seorang developer mengalami sebuah permasalahan, salah satunya adalah pemrograman yang di bangun eror saar diverifikasi atau di&nbsp;<em>build&nbsp;</em>permsalahan ini akan memerlukan ketelitian untuk mengatasinya. Nah dengan terbiasanya mencari masalah dalam menulis kode, anda akan terbiasa agar lebih teliti dalam menulis kode dalam membuat sebuah program. Hal ini tentu akan berimbas ke dalam aktivitas anda.</li>\r\n</ul>','Publish','Berita','Selamat datang di website Java Web Media','web-development-javawebmedia1.png',NULL,0,'2021-04-24 08:05:28','0000-00-00 00:00:00','2021-04-24 02:55:58'),
(23,1,6,'kursus-di-java-web-media','Kursus di Java Web Media','Pusat Kursus Private Web Programming, Mobile Programming, Graphic Design dan Statistik','<p>Pusat Kursus Private Web Programming, Mobile Programming, Graphic Design dan Statistik</p>','Publish','Profil','Pusat Kursus Private Web Programming, Mobile Programming, Graphic Design dan Statistik','logo-javawebmedia-square.png','fa fa-book',0,'2021-04-24 11:59:48','0000-00-00 00:00:00','2021-04-24 04:59:48'),
(24,1,6,'kursus-web-development','Kursus Web Development','Anda akan belajar membangun website profil perusahaan dengan bootstrap, framework JavaScript, PHP framework Codeigniter / Laravel dan database MySQL.','<h2>Deskripsi ringkas</h2>\r\n<p>Anda akan belajar membangun website profil perusahaan dengan bootstrap, framework JavaScript, PHP framework Codeigniter / Laravel dan database MySQL.</p>\r\n<hr />\r\n<p>Anda akan belajar membangun website&nbsp;<strong>profil perusahaan</strong>&nbsp;dengan menggunakan bootstrap, framework JavaScript,&nbsp;<strong><em>PHP framework</em></strong><em>&nbsp;<strong>Codeigniter / Laravel</strong></em>&nbsp;dan database MySQL.</p>\r\n<h2><a name=\"_Toc32320297\"></a>Materi kursus</h2>\r\n<p>Anda akan mempelajari hal-hal berikut ini:</p>\r\n<ul>\r\n<li>Dasar-dasar HTML, CSS dan Bootstrap</li>\r\n<li>Mengembangkan website profil perusahaan dengan framework Codeigniter / Laraveldan database MySQL</li>\r\n<li>Integrasi framework JavaScript dengan Codeigniter / Laravel</li>\r\n</ul>\r\n<h2><a name=\"_Toc32320298\"></a>Tujuan Kursus</h2>\r\n<p>Setelah Anda belajar&nbsp;di&nbsp;<strong>Kursus Web Development</strong>, Anda akan dapat:</p>\r\n<ul>\r\n<li>Membuat website profil perusahaan (<em>company profile</em>) dengan framework Codeigniter / Laravel dan database MySQL</li>\r\n<li>Aplikasi pendaftaran online sederhana</li>\r\n<li>Bekerja sebagai&nbsp;<strong>&nbsp;Web Programmer&nbsp;</strong>atau&nbsp;<strong>Web Developer dengan keahlian Bootstrap, HTML, CSS, JavaScript dan framework Codeigniter / Larevel.</strong></li>\r\n</ul>\r\n<h2><a name=\"_Toc32320299\"></a>Urutan materi</h2>\r\n<ol>\r\n<li>Installasi Software pendukung</li>\r\n<li>Dasar-dasar HTML, CSS dan Bootstrap</li>\r\n<li>Membuat&nbsp;<em><strong>Brief project ,&nbsp;</strong></em>yaitu merencanakan website yang akan dibuat sehingga nantinya bisa diwujudkan menjadi website sebenarnya</li>\r\n<li>Merencanakan, membuat dan mengelola database MySQL</li>\r\n<li>Integrasi template&nbsp;<em>front end&nbsp;</em>dan&nbsp;<em>back end&nbsp;</em>dengan framework Codeigniter / Laravel</li>\r\n<li>Authentication (Login, Logout &amp; Proteksi Halaman)</li>\r\n<li>CRUD&nbsp;<em>(Create, Read, Update &amp; Delete)&nbsp;</em>Dasar</li>\r\n<li>CRUD Kompleks dengan relasi database</li>\r\n<li>Laporan PDF dengan MPDF</li>\r\n<li>Security review atas aplikasi yang telah dibuat</li>\r\n<li>Upload web ke hosting atau meng-onlinekan website</li>\r\n</ol>\r\n<h2><a name=\"_Toc32320300\"></a>Software yang digunakan</h2>\r\n<p>XAMPP, Sublime Text/Notepad/Visual Studio, Browser, Aplikasi pengolah gambar, Composer dll.</p>','Publish','Layanan','Anda akan belajar membangun website profil perusahaan dengan bootstrap, framework JavaScript, PHP framework Codeigniter / Laravel dan database MySQL.','web-development-javawebmedia1.png','fa fa-globe',0,'2021-04-24 12:06:07','0000-00-00 00:00:00','2021-04-24 05:06:07');
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES
(2,1,'Perorangan','AWS Indonesia','Uli Handayani','Jalan Lapangan Banteng Barat No. 3-4\r\nTromol Pos 3500','','https://awsindonesia.org','javawebmedia@gmail.com','Website Yayasan AWS Indonesia saat ini sudah aktif dan bisa diakses tepat pada waktunya. Semoga selalu sukses ya.','Powered-by-Yayasan-AWS-Indonesia---SQUARE-2.png','Publish','JAKARTA','1962-01-02','0000-00-00 00:00:00','2021-04-24 05:14:19'),
(3,1,'Perusahaan','Pemprov DKI Jakarta','Suprianto','Jl Permata No 1, Halim Perdanakusuma','0813 8841 0829','http://bkddki.jakarta.go.id','lalu-kekah@bkkbn.go.id','Sebelumnya kami menggunakan website berbasis CMS Joomla. Saat ini website sudah diupdate dan berfungsi dengan baik sekali.','5a1d2cd419e0c365574115.png','Publish','Depok','2020-03-02','0000-00-00 00:00:00','2021-04-24 05:21:38'),
(5,1,'Perusahaan','Hotel Bumi Wiyata','Winda','Depok Town Square Lantai 2 Unit SS 5-7\r\nJl. Margonda Raya Kota Depok','+6285715100485','https://hotelbumiwiyata.com','javawebmedia@gmail.com','Java Web Media sangat membantu proses pengembangan website kami. Menyediakan dan mempersiapkan konten mulai dari gambar hingga copy writing. Terimakasih','b7630a2a75006840b351bde15efe52be.jpg','Publish','Blora','1983-02-22','2021-04-24 07:34:12','2021-04-24 05:21:25');
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `download`
--

LOCK TABLES `download` WRITE;
/*!40000 ALTER TABLE `download` DISABLE KEYS */;
INSERT INTO `download` VALUES
(3,2,1,'Paket Harga Kursus Desain dan Programming Java Web Media 2020','Download','<p>Paket Harga Kursus Desain dan Programming Java Web Media 2020</p>','Daftar_Harga_Kursus_2020_v2.pdf','',0,'0000-00-00 00:00:00','2020-02-13 00:50:27'),
(4,1,1,'Formulir Pendaftaran Siswa Kursus','Download','<p>Formulir Pendaftaran Siswa Kursus</p>','FORMULIR_PENDAFTARAN_SISWA_KURSUS.pdf','',0,'0000-00-00 00:00:00','2020-02-13 00:50:10'),
(5,2,1,'Paket Harga Kursus Statistik Java Web Media 2020','Download','<p>Paket Harga Kursus Statistik Java Web Media 2020</p>','KURSUS_STATISTIK.pdf','',0,'0000-00-00 00:00:00','2020-02-13 00:50:48'),
(6,2,1,'Panduan Untuk Admin Engineering Utama aaa','Download','<p>Panduan Untuk Admin Engineering Utama</p>','010-Undangan-Workshop-Rekonsiliasi-Feb-2021.pdf','',0,'2021-04-23 20:06:25','2021-04-24 01:27:48'),
(7,2,1,'Panduan Untuk Admin Engineeringa','Panduan','','SURAT-TUGAS-BOGOR-27-29-NOVEMBER-2019.pdf','',0,'2021-04-24 02:31:13','2021-04-24 01:26:00'),
(8,2,1,'Panduan Website','Download','<p>Panduan Website</p>','RENCANA-JADWAL-MAS-FAISAL-BSM.pdf','',4,'2021-04-24 08:20:48','2021-04-24 03:51:42');
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galeri`
--

LOCK TABLES `galeri` WRITE;
/*!40000 ALTER TABLE `galeri` DISABLE KEYS */;
INSERT INTO `galeri` VALUES
(4,5,4,'Kursus di Java Web Media','Homepage','<div class=\"align-items-center d-none d-md-flex\">Pusat Kursus Private Web Programming, Mobile Programming, Graphic Design dan Statistik. Anda dapat memilih program kursus sesuai kebutuhan.</div>\r\n<div class=\"d-flex align-items-center\">&nbsp;</div>','346695_099fd30f389c48c48a53dc17bf84e8db_mv2.jpeg','http://javawebmedia.com',NULL,'Tidak',NULL,'2022-07-29 03:32:24'),
(5,5,4,'Kursus Codeigniter di Java Web Media','Homepage','<p>Anda akan belajar membangun website profil perusahaan dengan bootstrap, framework JavaScript, PHP framework Codeigniter / Laravel dan database MySQL.</p>','Sukarman-ST-shutterstock_1616151298.jpeg','https://javawebmedia.com',NULL,'Tidak',NULL,'2022-07-29 03:30:39'),
(7,5,1,'Kursus Web Development Java Web Media','Galeri','<p>Kursus Web Development Java Web Media</p>','web-development-javawebmedia1.png','',NULL,'Ya',NULL,'2020-02-13 00:52:02'),
(8,5,1,'Web Application Java Web Media','Galeri','<p>Web Application Java Web Media</p>','web-application-pendaftaran-online-javawebmedia1.jpg','',NULL,'Ya',NULL,'2020-02-13 00:52:18'),
(9,5,1,'Kursus Statistik di Java Web Media','Galeri','<p>Kursus Statistik di Java Web Media</p>','instagram-kursus-statistik-javawebmedia1.png','',NULL,'Ya',NULL,'2020-02-13 00:53:55'),
(10,5,1,'Web Development Java Web Media','Galeri','<p>Web Development Java Web Media</p>','website-perusahaan-company-profile-web-javawebmedia12.jpg','',NULL,'Ya',NULL,'2020-02-13 00:54:28'),
(12,6,1,'Festival Kabupaten Lestari 2019','Galeri','<p>Festival Kabupaten Lestari 2019</p>','1.jpg','http://javawebmedia.com',NULL,'Ya','2021-04-24 02:45:16','2021-04-24 05:27:53'),
(13,6,1,'Welcome to Java Web Media','Galeri','<p>Welcome to Java Web Media</p>','Kursus-Banner-02.jpg','http://javawebmedia.com',NULL,'Ya','2021-04-24 08:13:13','2021-04-24 01:13:13');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kategori`
--

LOCK TABLES `kategori` WRITE;
/*!40000 ALTER TABLE `kategori` DISABLE KEYS */;
INSERT INTO `kategori` VALUES
(1,1,'web-design','Web Design',1,0,'2021-04-20 22:20:49'),
(2,1,'berita','Berita',2,0,'2021-04-20 22:20:57'),
(3,1,'java-web-media','Java Web Media',3,0,'2021-04-20 22:21:06'),
(4,1,'updates','Updates',4,0,'2021-04-20 22:26:59'),
(5,1,'web-programming','Web Programming',5,8,'2021-05-03 01:17:08'),
(6,1,'kursus-web','Kursus Web',2,3,'2021-04-24 23:10:52');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kategori_download`
--

LOCK TABLES `kategori_download` WRITE;
/*!40000 ALTER TABLE `kategori_download` DISABLE KEYS */;
INSERT INTO `kategori_download` VALUES
(1,0,'formulir-pendaftaran','Formulir Pendaftaran',1,0,'2021-04-21 00:37:58'),
(2,1,'promosi-java-web-media-2021','Promosi Java Web Media 2021',2,0,'2021-04-21 01:08:19');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kategori_galeri`
--

LOCK TABLES `kategori_galeri` WRITE;
/*!40000 ALTER TABLE `kategori_galeri` DISABLE KEYS */;
INSERT INTO `kategori_galeri` VALUES
(4,0,'kegiatan','Kegiatan',4,0,'2021-04-21 00:38:46'),
(5,0,'banner-website','Banner Website',4,0,'2021-04-21 00:38:46'),
(6,1,'family-gathering','Family gathering',2,0,'2021-04-21 00:40:52');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kategori_staff`
--

LOCK TABLES `kategori_staff` WRITE;
/*!40000 ALTER TABLE `kategori_staff` DISABLE KEYS */;
INSERT INTO `kategori_staff` VALUES
(1,0,'pejabat-eselon-1','Pejabat Eselon 1',1,0,'2021-04-21 00:44:24'),
(2,0,'pejabat-struktural','Pejabat Struktural',2,0,'2021-04-21 00:44:24'),
(3,1,'team-inti','Team Inti',2,0,'2021-04-21 01:54:27');
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
(1,1,'PT. AJAIB WINDU JAYA','AWJ','DEVELOPER - KONTRAKTOR - TRADING','<p><em><strong>PT Javawebmedia Edukasi Indonesia</strong></em>&nbsp;atau Java Web Media berdiri pada tanggal 26 April 2010, berawal dari garasi rumah ukuran 3x4 meter. Java Web Media awalnya hanya bergerak di bidang pembuatan dan pengembangan website serta agensi desain grafis. Awal tahun 2011, perusahaan ini kemudian mulai bergerak di bidang pengembangan sumber daya manusia, khususnya di bidang keahlian computer&nbsp;<em>Graphic Design</em>,&nbsp;<em>Web Design</em>&nbsp;dan&nbsp;<em>Web Development.</em></p>\r\n<p>Lalu pada tahun 2014 Java Web Media resmi menjadi sebuah perusahaan yang terdaftar. Pada tahun 2014 itu pula kami membuka layanan kursus statistik.</p>\r\n<p>Java Web Media adalah lembaga kursus yang bergerak di bidang pendidikan khususnya kursus website, digital marketing, desain grafis dan statistik. Sampai saat ini Java Web Media sudah memiliki lulusan lebih dari 1200 orang dari berbagai status dan profesi mulai dari pelajar sekolah, mahasiswa, guru, dosen, staff profesional, freelancer, dll. Lulusan tidak hanya dari Indonesia tapi juga dari beberapa negara tetangga seperti New Zealand, Timor Leste dan Malaysia.</p>\r\n<p>Java Web Media membuka cabang pertamanya pada tahun 2014. Hingga tahun 2020 ini, Java Web Media telah memiliki 2 cabang yang berlokasi di kota Depok.</p>\r\n<p>Selain bergerak di bidang pendidikan Java Web Media juga memiliki layanan di bidang perencanaan strategis sistem informasi, pengembangan aplikasi berbasis web dan berbasis mobile (Android dan IOS/Apple).</p>','DEVELOPER - KONTRAKTOR - TRADING','-','pt_awj@awj.co.id','pt.ajaibwindujaya@gmail.com','<p><strong>PT. AJAIB WINDU JAYA</strong><br>Plaza Summarecon Bekasi Level 7<br>Jl. Bulevar Ahmad Yani Kav. K.01 Harapan Mulya,<br>Medan Satria, Kota Bekasi, Jawa Barat, 17142<br>Telepon: 021 2955 7415<br>Email: pt_awj@awj.co.id</p>','+62 21 2955 7415','','logo-black.png','logo.png','Java Web Media adalah Pusat Kursus Private dan Reguler bidang Desain Grafis, Web Programming, Mobile Application dan Statistik\r\n','adada','#','#','#','#','-','-','-','-','','smtp','ssl://mail.websitemu.com',465,7,'contact@websitemu.com','muhammad','2022-07-29 03:14:37');
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
  `id_user` int(11) DEFAULT NULL,
  `id_kategori_staff` int(11) DEFAULT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(300) DEFAULT NULL,
  `telepon` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `jabatan` varchar(200) DEFAULT NULL,
  `keahlian` text DEFAULT NULL,
  `gambar` varchar(200) DEFAULT NULL,
  `status_staff` varchar(20) NOT NULL,
  `tempat_lahir` varchar(255) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id_staff`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES
(9,1,3,'Andoyo Cakep','Jl Permata No 1, Halim Perdanakusuma','0813 8841 0829','https://sidatablkbogorkab.com','lalu-kekah@bkkbn.go.id','Direktur','ada','6.jpg','Publish','Depok','1983-02-22','2021-04-24 01:51:22'),
(10,1,3,'Andoyo Cakep','Depok Town Square Lantai 2 Unit SS 5-7\r\nJl. Margonda Raya Kota Depok','+6285715100485','https://javawebmedia.com','javawebmedia@gmail.com','Graphic Designer','','4.jpg','Publish','Depok','1983-02-22','2021-04-24 01:50:59');
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
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_logs`
--

LOCK TABLES `user_logs` WRITE;
/*!40000 ALTER TABLE `user_logs` DISABLE KEYS */;
INSERT INTO `user_logs` VALUES
(1,1,'::1','javawebmedia','http://localhost/webci4/admin/dasbor','2021-05-03 01:19:34'),
(2,1,'::1','javawebmedia','http://localhost:8080/admin/dasbor','2022-07-29 02:31:52'),
(3,1,'::1','javawebmedia','http://localhost:8080/admin/user','2022-07-29 02:32:07'),
(4,1,'::1','javawebmedia','http://localhost:8080/admin/panduan','2022-07-29 02:32:23'),
(5,1,'::1','javawebmedia','http://localhost:8080/admin/konfigurasi/seo','2022-07-29 02:32:30'),
(6,1,'::1','javawebmedia','http://localhost:8080/admin/konfigurasi/logo','2022-07-29 02:32:42'),
(7,1,'::1','javawebmedia','http://localhost:8080/admin/client','2022-07-29 02:32:49'),
(8,1,'::1','javawebmedia','http://localhost:8080/admin/client','2022-07-29 02:32:56'),
(9,1,'::1','javawebmedia','http://localhost:8080/admin/staff','2022-07-29 02:33:01'),
(10,1,'::1','javawebmedia','http://localhost:8080/admin/client','2022-07-29 02:33:08'),
(11,1,'::1','javawebmedia','http://localhost:8080/admin/akun','2022-07-29 02:33:32'),
(12,1,'::1','javawebmedia','http://localhost:8080/admin/user','2022-07-29 02:33:40'),
(13,1,'::1','javawebmedia','http://localhost:8080/admin/user/edit/1','2022-07-29 02:33:45'),
(14,1,'::1','javawebmedia','http://localhost:8080/admin/dasbor','2022-07-29 02:33:53'),
(15,1,'::1','javawebmedia','http://localhost:8080/admin/konfigurasi/logo','2022-07-29 02:50:00'),
(16,1,'::1','javawebmedia','http://localhost:8080/admin/konfigurasi/logo','2022-07-29 02:50:13'),
(17,1,'::1','javawebmedia','http://localhost:8080/admin/konfigurasi/logo','2022-07-29 02:50:13'),
(18,1,'::1','javawebmedia','http://localhost:8080/admin/user','2022-07-29 02:54:39'),
(19,1,'::1','javawebmedia','http://localhost:8080/admin/konfigurasi/icon','2022-07-29 02:54:42'),
(20,1,'::1','javawebmedia','http://localhost:8080/admin/konfigurasi/icon','2022-07-29 02:54:48'),
(21,1,'::1','javawebmedia','http://localhost:8080/admin/konfigurasi/icon','2022-07-29 02:54:48'),
(22,1,'::1','javawebmedia','http://localhost:8080/admin/konfigurasi','2022-07-29 02:54:55'),
(23,1,'::1','javawebmedia','http://localhost:8080/admin/konfigurasi','2022-07-29 03:03:31'),
(24,1,'::1','javawebmedia','http://localhost:8080/admin/konfigurasi','2022-07-29 03:03:31'),
(25,1,'::1','javawebmedia','http://localhost:8080/admin/konfigurasi','2022-07-29 03:14:37'),
(26,1,'::1','javawebmedia','http://localhost:8080/admin/konfigurasi','2022-07-29 03:14:37'),
(27,1,'::1','javawebmedia','http://localhost:8080/admin/galeri','2022-07-29 03:19:03'),
(28,1,'::1','javawebmedia','http://localhost:8080/admin/galeri/edit/5','2022-07-29 03:19:07'),
(29,1,'::1','javawebmedia','http://localhost:8080/admin/galeri/edit/5','2022-07-29 03:19:22'),
(30,1,'::1','javawebmedia','http://localhost:8080/admin/galeri/edit/5','2022-07-29 03:19:50'),
(31,1,'::1','javawebmedia','http://localhost:8080/admin/galeri','2022-07-29 03:19:50'),
(32,1,'::1','javawebmedia','http://localhost:8080/admin/galeri/edit/4','2022-07-29 03:20:00'),
(33,1,'::1','javawebmedia','http://localhost:8080/admin/galeri/edit/4','2022-07-29 03:20:02'),
(34,1,'::1','javawebmedia','http://localhost:8080/admin/galeri','2022-07-29 03:20:03'),
(35,1,'::1','javawebmedia','http://localhost:8080/admin/galeri','2022-07-29 03:21:11'),
(36,1,'::1','javawebmedia','http://localhost:8080/admin/galeri/edit/4','2022-07-29 03:21:13'),
(37,1,'::1','javawebmedia','http://localhost:8080/admin/client','2022-07-29 03:22:48'),
(38,1,'::1','javawebmedia','http://localhost:8080/admin/berita','2022-07-29 03:22:57'),
(39,1,'::1','javawebmedia','http://localhost:8080/admin/berita/edit/4','2022-07-29 03:23:06'),
(40,1,'::1','javawebmedia','http://localhost:8080/admin/berita','2022-07-29 03:23:28'),
(41,1,'::1','javawebmedia','http://localhost:8080/admin/berita/edit/24','2022-07-29 03:23:30'),
(42,1,'::1','javawebmedia','http://localhost:8080/admin/berita','2022-07-29 03:23:33'),
(43,1,'::1','javawebmedia','http://localhost:8080/admin/staff','2022-07-29 03:24:00'),
(44,1,'::1','javawebmedia','http://localhost:8080/admin/staff','2022-07-29 03:24:41'),
(45,1,'::1','javawebmedia','http://localhost:8080/admin/staff','2022-07-29 03:24:49'),
(46,1,'::1','javawebmedia','http://localhost:8080/admin/staff','2022-07-29 03:25:03'),
(47,1,'::1','javawebmedia','http://localhost:8080/admin/staff','2022-07-29 03:25:13'),
(48,1,'::1','javawebmedia','http://localhost:8080/admin/staff','2022-07-29 03:25:35'),
(49,1,'::1','javawebmedia','http://localhost:8080/admin/staff','2022-07-29 03:26:20'),
(50,1,'::1','javawebmedia','http://localhost:8080/admin/staff/edit/10','2022-07-29 03:26:27'),
(51,1,'::1','javawebmedia','http://localhost:8080/admin/staff/edit/10','2022-07-29 03:26:41'),
(52,1,'::1','javawebmedia','http://localhost:8080/admin/user','2022-07-29 03:26:55'),
(53,1,'::1','javawebmedia','http://localhost:8080/admin/user','2022-07-29 03:27:11'),
(54,1,'::1','javawebmedia','http://localhost:8080/admin/user','2022-07-29 03:27:11'),
(55,4,'::1','admin','http://localhost:8080/admin/dasbor','2022-07-29 03:27:24'),
(56,4,'::1','admin','http://localhost:8080/admin/user','2022-07-29 03:27:28'),
(57,4,'::1','admin','http://localhost:8080/admin/user/delete/3','2022-07-29 03:27:32'),
(58,4,'::1','admin','http://localhost:8080/admin/user','2022-07-29 03:27:32'),
(59,4,'::1','admin','http://localhost:8080/admin/user','2022-07-29 03:27:34'),
(60,4,'::1','admin','http://localhost:8080/admin/user/delete/2','2022-07-29 03:27:39'),
(61,4,'::1','admin','http://localhost:8080/admin/user','2022-07-29 03:27:39'),
(62,4,'::1','admin','http://localhost:8080/admin/user/delete/1','2022-07-29 03:27:42'),
(63,4,'::1','admin','http://localhost:8080/admin/user','2022-07-29 03:27:42'),
(64,4,'::1','admin','http://localhost:8080/admin/staff','2022-07-29 03:27:48'),
(65,4,'::1','admin','http://localhost:8080/admin/berita','2022-07-29 03:30:21'),
(66,4,'::1','admin','http://localhost:8080/admin/galeri','2022-07-29 03:30:24'),
(67,4,'::1','admin','http://localhost:8080/admin/galeri/edit/5','2022-07-29 03:30:28'),
(68,4,'::1','admin','http://localhost:8080/admin/galeri/edit/5','2022-07-29 03:30:39'),
(69,4,'::1','admin','http://localhost:8080/admin/galeri','2022-07-29 03:30:39'),
(70,4,'::1','admin','http://localhost:8080/admin/galeri/edit/4','2022-07-29 03:30:42'),
(71,4,'::1','admin','http://localhost:8080/admin/galeri/edit/4','2022-07-29 03:30:47'),
(72,4,'::1','admin','http://localhost:8080/admin/galeri/edit/4','2022-07-29 03:30:56'),
(73,4,'::1','admin','http://localhost:8080/admin/galeri/edit/4','2022-07-29 03:31:23'),
(74,4,'::1','admin','http://localhost:8080/admin/galeri/edit/4','2022-07-29 03:32:24'),
(75,4,'::1','admin','http://localhost:8080/admin/galeri','2022-07-29 03:32:24');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video`
--

LOCK TABLES `video` WRITE;
/*!40000 ALTER TABLE `video` DISABLE KEYS */;
INSERT INTO `video` VALUES
(1,1,'INSTALASI XAMPP DAN SUBLIME TEXT','INSTALASI XAMPP DAN SUBLIME TEXT','A66PiaPuTZs','0000-00-00 00:00:00','2020-02-13 00:48:03'),
(2,1,'Sesi 2 Konfigurasi, Halaman Login, Belajar Controller dan View','Sesi 2 Konfigurasi, Halaman Login, Belajar Controller dan View','kFfAir_JgIU','0000-00-00 00:00:00','2020-02-13 00:48:31'),
(3,1,'Makan bersama dengan Bunda','Makan bersama dengan Bunda','jVr6CYLhjQo','0000-00-00 00:00:00','2021-04-23 20:49:17');
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

-- Dump completed on 2022-07-29 11:57:39
