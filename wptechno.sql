/*
 Navicat Premium Data Transfer

 Source Server         : uwpdoit
 Source Server Type    : MySQL
 Source Server Version : 100515
 Source Host           : www.uwpdoit.com:3306
 Source Schema         : u6347113_pertamina

 Target Server Type    : MySQL
 Target Server Version : 100515
 File Encoding         : 65001

 Date: 12/05/2022 08:18:03
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for album
-- ----------------------------
DROP TABLE IF EXISTS `album`;
CREATE TABLE `album`  (
  `id_album` int NOT NULL AUTO_INCREMENT,
  `jdl_album` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `album_seo` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `keterangan` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `gbr_album` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `hits_album` int NOT NULL DEFAULT 1,
  `tgl_posting` date NOT NULL,
  `jam` time NOT NULL,
  `hari` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_album`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 47 CHARACTER SET = latin1 COLLATE = latin1_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of album
-- ----------------------------
INSERT INTO `album` VALUES (30, 'Konser Kantata Barock 2011', 'konser-kantata-barock-2011', 'Para macan tua yang digawangi Iwan Fals, Setiawan Djody dan Sawung Jabo di Stadion Gelora Bung Karno, Jakarta,\r\nJumat (30/12) malam. Kantata kembali membawakan lagu-lagu legendarisnya\r\nsetelah 21 tahun vakum dari dunia musik.\r\n<div style=\"overflow: hidden; color: #000000; background-color: #ffffff; text-align: left; text-decoration: none; border: medium none\">\r\n<br />\r\n</div>\r\n', '4520kantata_barock.jpg', 'Y', 34, '2012-08-20', '09:12:06', 'Senin', 'admin');
INSERT INTO `album` VALUES (31, 'Festival Terbesar di Dunia', 'festival-seni-terbesar-di-dunia', '', '13festival_seni.jpg', 'Y', 45, '2012-08-20', '09:40:01', 'Senin', 'admin');
INSERT INTO `album` VALUES (28, 'Murah Meriah di Asemka', 'murah-meriah-di-pasar-asemka', 'Pasar Asemka, Jakarta, merupakan pasar grosir yang banyak menyediakan berbagai aksesoris seperti kalung, cincin, Souvenir pernakahan, dan lainnya. Di Pasara Asemka anda akan dimanjakan dengan beragam barang yang dibandrol dengan harga murah meriah dan biasanya dijual grosiran. \r\n', '18asemka.jpg', 'Y', 191, '2012-08-18', '23:14:05', 'Sabtu', 'admin');
INSERT INTO `album` VALUES (29, 'Karpet Raksasa dari Bunga', 'karpet-raksasa-dari-bunga', 'Belgia sedang memperingati peristiwa tahunan &quot;La Fete De La Fleur&quot; atau pesta bunga di bulan Agustus. Ahli bunga merancang karpet raksasa dari bunga di depan Grand Place di Brussel. Karpet ini dibuat menggunakan 700 ribu bunga.\r\n', '92bungaraksasa2.jpg', 'Y', 101, '2012-08-19', '03:02:27', 'Minggu', 'admin');

-- ----------------------------
-- Table structure for berita
-- ----------------------------
DROP TABLE IF EXISTS `berita`;
CREATE TABLE `berita`  (
  `id_berita` int NOT NULL AUTO_INCREMENT,
  `id_kategori` int NOT NULL,
  `username` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `judul` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `sub_judul` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `youtube` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `judul_seo` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `headline` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `aktif` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `utama` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `isi_berita` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `keterangan_gambar` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `hari` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `gambar` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `dibaca` int NOT NULL DEFAULT 1,
  `tag` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `status` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`id_berita`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 301 CHARACTER SET = latin1 COLLATE = latin1_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of berita
-- ----------------------------
INSERT INTO `berita` VALUES (10, 55, 'admin', 'TRAINER MESIN BENSIN HIDUP MULTI SILNDER tersedia di WPtechno', '', '', 'trainer-mesin-bensin-hidup-multi-silnder-tersedia-di-wptechno', 'N', 'N', 'N', '<p style=\"text-align:justify\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\">Untuk mengidentifikasi Konstruksi, system kerja dan komponen kendaraan, latihan diagnosa bongkar pasang, tes system bahan bakar Dan mesin ini cocok untuk mengajar cara mengoperasikan mesin, pemecahan masalah dan mencari kerusakan.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\">Trainer ini sangat sederhana jadi ini bisa mewakali seluruh kerja mesin 4 silinder, dan 6 silinder termasuk 3 silinder.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\">Mesin trainer ini dilengkapi dengan panel control yang bagus, kondisi mesin yang yang telah diperbaiki ulang dengan dudukan mesin yang kuat dan sudah diwarnai.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\">Paket yang ditawarkan: proses pembakaran, Tipe ruang bakar, system pengapian, system bahan bakar, tangki bahan bakar, distributor, koil, pengukuran sudut pengapian, pemecahan masalah(trouble shooting)dan mencari kerusakan.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\">Trainer ini sangat berguna untuk pelatihan dasar otomotif</span></p>\r\n', 'Pengusaha Daging Sapi Menjerit', 'Rabu', '2018-04-18', '08:46:59', 'trainermesinbensinhidupmultisilinder.jpg', 0, 'marketing,teknologi,nasional', 'Y');
INSERT INTO `berita` VALUES (11, 19, 'admin', 'CAR TRAINING STAND tersedia di wptechno', '', '', 'car-training-stand-tersedia-di-wptechno', 'N', 'N', 'N', '<p style=\"text-align:justify\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\">Untuk mengidentifikasi konstruksi, system kerja dan komponen &ndash; komponen kendaraan. Dan juga berguna untuk latihan diagnosis, perakitan, mengetes system pada kendaraan dan komponen &ndash; komponen kendaraan.Mesin mobil bensin hidup tanpa bodi ini disajikan dengan bagus dan sudah diwarnai.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\">Paket yang ditawarkan meliputi berikut ini : Proses pengapian, Tipe ruang bakar, system bahan bakar, tangki bahan bakar, filter bahan bakar, system pengapian, system kerangka, trouble shooting ( pemecahan masalah)</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\">Trainer ini sangat cocok untuk kompetensi:</span></p>\r\n\r\n<ul style=\"list-style-type:square\">\r\n	<li style=\"text-align:justify\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\">Otomotif dasar (mekanik junior)</span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\">Teknologi otomotif yang lebih tinggi (mekanik II, III, dan supervisor)</span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\">Mekanik secara umum</span></li>\r\n</ul>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:justify\">&nbsp;</p>\r\n', 'Berdikari akan Impor Sapi Indukan', 'Rabu', '2018-04-18', '08:46:06', 'cartrainingstand.jpg', 0, 'marketing,teknologi,nasional', 'Y');

-- ----------------------------
-- Table structure for download
-- ----------------------------
DROP TABLE IF EXISTS `download`;
CREATE TABLE `download`  (
  `id_download` int NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `nama_file` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  `hits` int NOT NULL,
  PRIMARY KEY (`id_download`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 45 CHARACTER SET = latin1 COLLATE = latin1_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of download
-- ----------------------------
INSERT INTO `download` VALUES (33, 'Rekayasa Teknologi Biota Plus (Hasil Uji Lapangan Sukamandi)', 'Laporan_Penggunaan_Biota_sukamandi.pdf', '2016-05-19', 32);
INSERT INTO `download` VALUES (38, 'Marketing Plane System', 'TUNAS_HARMONI_ABADI.pptx', '2016-06-28', 15);
INSERT INTO `download` VALUES (35, 'Formulir Pendaftaran Members', 'formulir_pendaftaran.doc', '2016-06-28', 20);
INSERT INTO `download` VALUES (36, 'Formulir Pendaftaran Agen', 'formulir_pendaftaran_agen.doc', '2016-06-28', 8);
INSERT INTO `download` VALUES (37, 'Formulir Pendaftaran Cabang', 'formulir_pendaftaran_CABANG.doc', '2016-06-28', 10);
INSERT INTO `download` VALUES (41, 'Petunjuk cara membayar tabungan ibada', 'NEW_BOOKLET_TUNAS.pptx', '2016-06-29', 9);
INSERT INTO `download` VALUES (42, 'Perbandingan pemakaian pupuk biota plus dgn pupuk kimia', 'PERBANDINGAN_PEMUPUKAN-1.doc', '2016-06-29', 7);
INSERT INTO `download` VALUES (43, 'Cara pemakaian pupuk biota plus untuk tanaman padi', 'APLIKASI_TEKNOLOGI_BIOTA_PD_TANAMAN_PADI_BALAI_BENIH-1.doc', '2016-06-29', 4);
INSERT INTO `download` VALUES (44, 'Promo Alhir Tahun Bali - Lombok', 'img014.jpg', '2016-06-29', 13);

-- ----------------------------
-- Table structure for faq
-- ----------------------------
DROP TABLE IF EXISTS `faq`;
CREATE TABLE `faq`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `judul` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `isi` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 8 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of faq
-- ----------------------------
INSERT INTO `faq` VALUES (1, 'Visi Perusahaan\r\n1. Bagaimana mendapatkan informasi dan promo produk ?', 'Bagi bengguna aplikasi dapat mendapatkan informasi dan promo produk di fitur yang telah di sediakan di menu, pengguna akan mendapatkan informasi terbaru tentang informasi seputar layanan perusahaan dan  produk perusahaan');
INSERT INTO `faq` VALUES (2, '2. Bagiamana memposting produk penjualan ?', 'Bagi agen dapat memposting informasi produk yang dimiliki tersedia untuk di promosikan ke member sebagai calon pembeli, aktivitas ini dapat di lakukan setelah agen telah melakukan pendaftaran akun');
INSERT INTO `faq` VALUES (3, '3. Bagaimana cara membeli produk ? ', 'Bagi member yang telah mendaftar akun maka dapat melakukan aktivitas pembelian di fitur yang telah disediakan dengan mengikuti langkah-langkah dan syarat ketentuan  yang telah di buat.');
INSERT INTO `faq` VALUES (4, '4. Bagaimana mendapatkan point ?', 'Baik member yang telah membeli produk dan agen yang telah menjual produknya maka masing-masing akan mendapatkan point yang dimana point tersebut dapat di tukar dengan hadiah.');
INSERT INTO `faq` VALUES (5, '5. Bagaimana mengambil hadiah dari jumlah point ?', 'point yang telah di dapatkan akan di total dan setiap jumlah angka tertentu maka pemilik point berhak mendapatkan hadiah yang menarik secara bertingkat sesuai point yang di miliki.');
INSERT INTO `faq` VALUES (6, '6.  Bagaimana mengetahui alamat agen terdekat', 'member akan mengetahui alamat agen terdekat di daerahnya agar member dapat datang langsung ke tempat agen tersebut jika memang itu yang dikehendaki.');
INSERT INTO `faq` VALUES (7, '7.  Forum Khusus', 'Forum khusus yaitu forum antara member dan agen yang berbentuk status dimana baik member atau agen dapat membuat memposting status dan masing-masing mereka dapat saling berkomentar.');

-- ----------------------------
-- Table structure for gallery
-- ----------------------------
DROP TABLE IF EXISTS `gallery`;
CREATE TABLE `gallery`  (
  `id_gallery` int NOT NULL AUTO_INCREMENT,
  `id_album` int NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `jdl_gallery` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `gallery_seo` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `keterangan` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `gbr_gallery` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_gallery`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 256 CHARACTER SET = latin1 COLLATE = latin1_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gallery
-- ----------------------------
INSERT INTO `gallery` VALUES (238, 30, 'admin', 'Lautan Penonton', 'lautan-penonton', 'Lebih kurang dari 50.000 penonton yang memadati Stadion Gelora Bung Karno menyaksikan aksi Kantata Barock.\r\n', '7kantata3.jpg');
INSERT INTO `gallery` VALUES (237, 30, 'admin', 'Mengenang WS. Rendra', 'mengenang-ws-rendra', 'Konser didedikasikan buat salah satu anggota Kantata Takwa, WS. Rendra. Suasana kemeriahan para artis pendukung.\r\n', '44kantata4.jpg');
INSERT INTO `gallery` VALUES (240, 43, 'admin', 'Doa Bersamaaaaa', 'doa-bersamaaaaa', '<p>Mengingat agresi yang militer yang dilancarkan Israel merupakan pelanggaran hukum humaniter internasional. Menyusul banyak warga sipil yang telah menjadi korban akibat pertempuran yang dilakukan Israel dan Hamas. Sebelumnya, Sekretaris Jendral Perserikatan Bangsa - Bangsa (PBB) Ban Ki-moon dan Menteri Luar Negeri Amerika Serikat (AS) John Kerry melakukan pertemuan di Kairo, Mesir. Pertemuan di bertujuan untuk mendesak agar konflik yang terjadi di Gaza segera dihentikan.</p>\r\n', '38kantata1.jpg');
INSERT INTO `gallery` VALUES (239, 30, 'admin', 'Semangat Kantata', 'semangat-kantata', 'Semangat para macan-macan tua Kantata, seolah mmemberi penyadaran baru dan bagai api yang tak pernah padam.\r\n', '7kantata2.jpg');
INSERT INTO `gallery` VALUES (236, 30, 'admin', 'Iwan Fals', 'iwan-fals', 'Iwan Fals yang tergabung dalam Kantata Barock bersama Setiawan Djodi dan Sawong Jabo menghibur penggemarnya di GBK.\r\n', '85kantata5.jpg');
INSERT INTO `gallery` VALUES (235, 30, 'admin', 'Iwan dan Oemar Bakrie', 'iwan-dan-oemar-bakrie', 'Aksi penonton yang mirip dengan Iwan Fals dan sang guru Oemar Bakrie\r\n', '95kantata6.jpg');
INSERT INTO `gallery` VALUES (234, 30, 'admin', 'Bento...Bento..!!', 'bentobento', 'Bento...Bento...Bentok...!! ....Asyikkk... begitu teriak Setiawan Djody dan Sawung Jabo yang ikuti ribuan penonton.\r\n', '32kantata7.jpg');
INSERT INTO `gallery` VALUES (232, 29, 'admin', 'Karpet Raksasa dari Bunga 008', 'karpet-raksasa-dari-bunga-008', '', '45bungaraksasa8.jpg');
INSERT INTO `gallery` VALUES (233, 30, 'admin', 'Sujud Syukur', 'sujud-syukur', 'Seluruh awak Kantata Barock melakukan sujud syukur di penghujung acara.<br />\r\n', '32kantata8.jpg');
INSERT INTO `gallery` VALUES (231, 29, 'admin', 'Karpet Raksasa dari Bunga 007', 'karpet-raksasa-dari-bunga-007', '', '89bungaraksasa7.jpg');
INSERT INTO `gallery` VALUES (230, 29, 'admin', 'Karpet Raksasa dari Bunga 006', 'karpet-raksasa-dari-bunga-006', '', '17bungaraksasa6.JPG');
INSERT INTO `gallery` VALUES (229, 29, 'admin', 'Karpet Raksasa dari Bunga 005', 'karpet-raksasa-dari-bunga-005', '', '74bungaraksasa5.JPG');
INSERT INTO `gallery` VALUES (228, 29, 'admin', 'Karpet Raksasa dari Bunga 004', 'karpet-raksasa-dari-bunga-004', '', '22bungaraksasa4.JPG');
INSERT INTO `gallery` VALUES (227, 29, 'admin', 'Karpet Raksasa dari Bunga 003', 'karpet-raksasa-dari-bunga-003', '', '78bungaraksasa3.JPG');
INSERT INTO `gallery` VALUES (225, 29, 'admin', 'Karpet Raksasa dari Bunga 001', 'karpet-raksasa-dari-bunga-001', '', '17bungaraksasa1.JPG');
INSERT INTO `gallery` VALUES (226, 29, 'admin', 'Karpet Raksasa dari Bunga 002', 'karpet-raksasa-dari-bunga-002', '', '22bungaraksasa2.JPG');
INSERT INTO `gallery` VALUES (224, 28, 'admin', 'Favorit', 'favorit', 'Mainan adalah barang favorit yang senantiasa diburu para pembeli. Selain murah, pilihannya pun berbagai jenis.\r\n', '34asemka10.jpg');
INSERT INTO `gallery` VALUES (223, 28, 'admin', 'Suasana Pasar Asemka', 'suasana-pasar-asemka', 'Pasar Asemka, Jakarta, merupakan pasar grosir yang banyak menyediakan berbagai aksesoris seperti kalung, cincin, Souvenir pernakahan, dan lainnya. Di Pasara Asemka anda akan dimanjakan dengan beragam barang yang dibandrol dengan harga murah meriah dan biasanya dijual grosiran.<br />\r\n', '6asemka9.jpg');
INSERT INTO `gallery` VALUES (222, 28, 'admin', 'Petasan', 'petasan', 'Petasan aneka jenis juga dijajakan di Pasar Asemka, Jakarta.\r\n', '2asemka8.jpg');
INSERT INTO `gallery` VALUES (221, 28, 'admin', 'Merah Marun', 'merah-marun', 'Salah satu suvenir pernikahan nan cantik yang dijual di Pasar Asemka, Jakarta.\r\n', '82asemka4.jpg');
INSERT INTO `gallery` VALUES (220, 28, 'admin', 'Menata Cincin', 'menata-cincin', 'Seorang pedagang cincin aksesoris sedang merapihkan letak cincin agar lebih menarik di Pasar Asemka, Jakarta.\r\n', '21asemka7.jpeg');
INSERT INTO `gallery` VALUES (219, 28, 'admin', 'Suvenir', 'suvenir', 'Aneka Souvenir Pernikahan yang dijual di Pasar Asemka, Jakarta.\r\n', '41asemka1.jpg');
INSERT INTO `gallery` VALUES (218, 28, 'admin', 'Seorang Wanita Pedagang', 'seorang-wanita-pedagang', 'Seorang wanita sedang menunggu kios aksesorisnya.\r\n', '7asemka6.jpeg');
INSERT INTO `gallery` VALUES (217, 28, 'admin', 'Suasana Pasar', 'suasana-pasar', 'Suasana di Pasar Asemka yang senantiasa ramai. Dan pengunjung bebas memilih berbagai jenis aksesoris.\r\n', '22asemka5.jpeg');
INSERT INTO `gallery` VALUES (216, 28, 'admin', 'Pedagang', 'pedagang', 'Seorang pedagang sedang membungkus souvenir penikahan yang akan dijual ataupun pesanan dari pelanggangnnya.\r\n', '84asemka2.jpg');
INSERT INTO `gallery` VALUES (254, 1, 'admin', 'Screenshot 1 ', 'screenshot-1-', 'Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 ', '911.jpg');

-- ----------------------------
-- Table structure for halamanstatis
-- ----------------------------
DROP TABLE IF EXISTS `halamanstatis`;
CREATE TABLE `halamanstatis`  (
  `id_halaman` int NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `judul_seo` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `isi_halaman` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  `gambar` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `dibaca` int NOT NULL DEFAULT 1,
  `jam` time NOT NULL,
  `hari` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_halaman`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 65 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of halamanstatis
-- ----------------------------
INSERT INTO `halamanstatis` VALUES (49, 'Tentang Kami', 'tentang-kami', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec scelerisque condimentum mattis. Suspendisse potenti. Proin vitae elementum nisi. Aliquam eu pretium risus. Nam varius efficitur consectetur. Aenean vestibulum felis sed mollis faucibus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin venenatis est sit amet eleifend vehicula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer id nunc eu odio ultrices pulvinar non feugiat felis. Duis consequat urna sapien, porta gravida diam venenatis at. Duis at ornare enim, ac accumsan eros. Sed in finibus metus. Etiam blandit tristique orci, sit amet congue dui facilisis id. Donec fermentum diam at orci viverra placerat. Sed nunc lorem, cursus nec vestibulum hendrerit, tempus et libero.</p>\r\n\r\n<p>Donec consequat lacinia fringilla. Proin dapibus justo at elit iaculis, eu rutrum velit dapibus. Phasellus nec augue vel nisl sagittis malesuada vel vel orci. In in euismod massa. Praesent vel blandit arcu. Maecenas eleifend dui in est rhoncus, mattis sollicitudin augue semper. Donec a lectus rhoncus, ornare nunc rutrum, egestas arcu. Aenean dapibus urna non nisl dignissim volutpat.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec scelerisque condimentum mattis. Suspendisse potenti. Proin vitae elementum nisi. Aliquam eu pretium risus. Nam varius efficitur consectetur. Aenean vestibulum felis sed mollis faucibus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin venenatis est sit amet eleifend vehicula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer id nunc eu odio ultrices pulvinar non feugiat felis. Duis consequat urna sapien, porta gravida diam venenatis at. Duis at ornare enim, ac accumsan eros. Sed in finibus metus. Etiam blandit tristique orci, sit amet congue dui facilisis id. Donec fermentum diam at orci viverra placerat. Sed nunc lorem, cursus nec vestibulum hendrerit, tempus et libero.</p>\r\n\r\n<p>Donec scelerisque condimentum mattis. Suspendisse potenti. Proin vitae elementum nisi. Aliquam eu pretium risus. Nam varius efficitur consectetur. Aenean vestibulum felis sed mollis faucibus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin venenatis est sit amet eleifend vehicula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer id nunc eu odio ultrices pulvinar non feugiat felis. Duis consequat urna sapien, porta gravida diam venenatis at. Duis at ornare enim, ac accumsan eros. Sed in finibus metus. Etiam blandit tristique orci, sit amet congue dui facilisis id. Donec fermentum diam at orci viverra placerat. Sed nunc lorem, cursus nec vestibulum hendrerit, tempus et libero.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '2018-02-18', 'hijab1.jpg', 'admin', 25, '13:44:49', '');
INSERT INTO `halamanstatis` VALUES (50, 'Cara Belanja', 'cara-belanja', '<p>Selamat datang di Toko Online Hijab Wanita Jawan Now. Demi kenyamanan anda berbelanja, berikut ini kami jelaskan tata cara berbelanja di Toko Online Hijab jaman Now.</p>\r\n\r\n<p><strong>1. Memilih Produk</strong></p>\r\n\r\n<p>Silahkan melihat produk-produk yang tersedia di Hijab Wanita Jawan Now melalui menu&nbsp;<strong>Categories</strong>. Pada produk yang diinginkan, klik tombol &lsquo;<strong>Add to Cart</strong>&rsquo; untuk memasukkannya ke dalam belanjaan anda. Perhatikan jumlah stok yang tersedia untuk produk tersebut.&nbsp;Tambahkan produk lain sesuai keperluan.</p>\r\n\r\n<p><strong>2.Melihat Belanjaan Anda</strong></p>\r\n\r\n<p>Dibagian kanan&nbsp;atas&nbsp;terlihat jumlah item dalam belanjaan dan&nbsp;total nilai pesanan anda. Bila ingin melihat daftar belanjaan lebih detil, arahkan kursor ke gambar keranjang belanja, kemudian klik tombol&nbsp;&#39;<strong>View Cart</strong>&#39;.</p>\r\n\r\n<p><strong>3. Checkout</strong></p>\r\n\r\n<p>Bila produk yang dipilih sudah lengkap dan sesuai, untuk checkout klik tombol &lsquo;<strong>Checkout</strong>&rsquo;.</p>\r\n\r\n<p><strong>4. Checkout Options</strong></p>\r\n\r\n<p>Anda akan diarahkan pada bagian &lsquo;<strong>Checkout Options</strong>&rsquo;. Bila anda sudah terdaftar (<strong>Returning Customer</strong>), silahkan gunakan email dan password anda untuk login. Bila anda belum terdaftar (<strong>New Customer</strong>), silahkan lakukan pendaftaran terlebih dahulu dengan meng-klik tombol &lsquo;<strong>Continue</strong>&rsquo;.</p>\r\n\r\n<p><strong>5. Membuat Account</strong></p>\r\n\r\n<p>Bagi anda pelanggan baru, silahkan lengkapi beberapa data berikut. Yang perlu diperhatikan adalah pada saat menuliskan nama&nbsp;<strong>Kecamatan</strong>&nbsp;pada field &#39;<strong>Kecamatan (City)</strong>&#39;. Ketikkan beberapa huruf pertama nama kecamatan, kemudian sistem akan menampilkan pilihan nama kecamatan. Pilih yang paling sesuai. Lengkapi data alamat anda. Klik persetujuan&nbsp;<strong>Privacy Policy</strong>. Klik tombol &lsquo;<strong>Continue</strong>&rsquo;.</p>\r\n\r\n<p><strong>6. Cara&nbsp;Pengiriman</strong></p>\r\n\r\n<p>Pada bagian&nbsp;ini anda dapat memilih tarif pengiriman melalui jasa kurir JNE yang sesuai. Jumlah nominal ongkos kirim akan otomatis dihitung sesuai dengan pilihan Kecamatan anda dan juga berat dari pesanan. Tuliskan&nbsp;catatan untuk pesanan anda pada bagian&nbsp;<strong>Comment</strong>, bila&nbsp;ada.&nbsp;Kemudian klik tombol &lsquo;<strong>Continue</strong>&rsquo;.</p>\r\n\r\n<p><strong>7. Cara Pembayaran</strong></p>\r\n\r\n<p>Pada bagian&nbsp;ini anda dapat memilih cara pembayaran yang sesuai. Kami saat ini hanya menerima pembayaran melalui<strong>Bank Transfer</strong>.&nbsp;Klik persetujuan&nbsp;<strong>Terms &amp; Conditions</strong>. Klik tombol &lsquo;<strong>Continue</strong>&rsquo;.</p>\r\n\r\n<p><strong>8. Konfirmasi Pemesanan</strong></p>\r\n\r\n<p>Pada bagian&nbsp;konfirmasi pemesanan&nbsp;ini anda dapat melihat sekali lagi rincian pesanan anda.&nbsp;Bila sudah tidak ada perubahan, klik tombol &lsquo;<strong>Confirm Order</strong>&rsquo;. Akan ada pesan bahwa pesanan anda sudah diproses dan bersamaan dengan itu kami mengirimkan email berisi&nbsp;rincian&nbsp;pesanan anda.</p>\r\n\r\n<p><strong>9. Pembayaran dan Konfirmasi Pembayaran</strong></p>\r\n\r\n<p>Silahkan lakukan pembayaran pada nomor rekening yang tercantum pada email yang kami kirimkan. Kemudian lakukan konfirmasi pembayaran agar kami dapat segera memproses pengiriman pesanan anda.</p>\r\n\r\n<p>Agar pesanan dapat diproses untuk pengiriman di hari yang sama, konfirmasi pembayaran ditunggu paling lambat jam 15.00 WIB (atau jam 12.00 WIB untuk hari Sabtu). Lewat dari itu diproses untuk pengiriman di hari/kesempatan berikutnya. Hari Minggu/Tanggal Merah, kantor libur dan tidak ada pengiriman.</p>\r\n\r\n<p><strong>10. Pengiriman dan Tracking Pengiriman</strong></p>\r\n\r\n<p>Apabila kami pengiriman telah kami lakukan, status pesanan anda akan diupdate dan kami akan sampaikan juga nomor tracking dari jasa kurir JNE melalui email.</p>\r\n', '2018-02-18', '', 'admin', 25, '13:41:58', '');

-- ----------------------------
-- Table structure for hubungi
-- ----------------------------
DROP TABLE IF EXISTS `hubungi`;
CREATE TABLE `hubungi`  (
  `id_hubungi` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `subjek` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `pesan` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `dibaca` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id_hubungi`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 48 CHARACTER SET = latin1 COLLATE = latin1_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hubungi
-- ----------------------------
INSERT INTO `hubungi` VALUES (34, 'Landung Trilaksono', 'landungtrilaksono@gmail.com', 'Nomer kontak jurusan akuntansi', 'Maaf saya mau hubungi jurusan akuntansi di nomer berapa ya? Terima kasih', '2013-10-16', '00:00:00', 'Y');
INSERT INTO `hubungi` VALUES (35, 'yusri renor', 'aciafifah@gmail.com', 'pertanyaan', 'bagaimana cara mengunduh nomor ujian fak. pertanian', '2014-01-19', '00:00:00', 'Y');
INSERT INTO `hubungi` VALUES (38, 'Udin Sedunia', 'udin.sedunia@gmail.com', 'Ip Pengirim : 120.177.28.244', 'Silahkan menghubungi kami melalui private message melalui form yang berada pada bagian kanan halaman ini. Kritik dan saran Anda sangat penting bagi kami untuk terus meningkatkan kualitas produk dan layanan yang kami berikan kepada Anda.', '2015-06-02', '00:00:00', 'Y');
INSERT INTO `hubungi` VALUES (39, 'Robby Prihandaya', 'robby.prihandaya@gmail.com', 'Mau tanya Sesuatu', 'November ini,  Indonesia akan disuguhkan salah satu konser megah dari legenda musik dunia yaitu Elton John', '2016-05-12', '19:33:58', 'Y');

-- ----------------------------
-- Table structure for identitas
-- ----------------------------
DROP TABLE IF EXISTS `identitas`;
CREATE TABLE `identitas`  (
  `id_identitas` int NOT NULL AUTO_INCREMENT,
  `nama_website` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `url` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `facebook` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `rekening` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `no_telp` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `kota_id` int NOT NULL,
  `alamat` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `meta_deskripsi` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `meta_keyword` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `favicon` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `maps` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_identitas`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of identitas
-- ----------------------------
INSERT INTO `identitas` VALUES (1, 'wptechno', 'slametriyadi@uwp.ac.id', 'http://pertaminaapp.uwpdoit.com', '', '#', 'Telp. 081267771344 - Fax. 0411 431111', 444, 'Jl. Raya Benowo 1- 3 Surabaya', 'Menyajikan produk terbaik, tekini, tercepat, dan terpercaya.', 'universitas wijaya putra', 'logo.png', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3989.3358607198243!2d100.35483479999999!3d-0.8910373999999999!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2fd4b8aa1a4e0441%3A0x3f81ebb48d31a38b!2sTunggul+Hitam%2C+Padang+Utara%2C+Kota+Padang%2C+Sumatera+Barat+25173!5e0!3m2!1sid!2sid!4v1408275531365');

-- ----------------------------
-- Table structure for iklantengah
-- ----------------------------
DROP TABLE IF EXISTS `iklantengah`;
CREATE TABLE `iklantengah`  (
  `id_iklantengah` int NOT NULL,
  `judul` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of iklantengah
-- ----------------------------

-- ----------------------------
-- Table structure for kategori
-- ----------------------------
DROP TABLE IF EXISTS `kategori`;
CREATE TABLE `kategori`  (
  `id_kategori` int NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `kategori_seo` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `sidebar` int NOT NULL,
  PRIMARY KEY (`id_kategori`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 57 CHARACTER SET = latin1 COLLATE = latin1_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kategori
-- ----------------------------
INSERT INTO `kategori` VALUES (55, 'mlm', 'admin', 'mlm', 'Y', 0);
INSERT INTO `kategori` VALUES (39, 'Pertanian', '', 'pertanian', 'Y', 1);
INSERT INTO `kategori` VALUES (23, 'Perikanan', '', 'perikanan', 'Y', 3);
INSERT INTO `kategori` VALUES (2, 'Wisata', '', 'wisata', 'Y', 4);
INSERT INTO `kategori` VALUES (19, 'Peternakan', '', 'peternakan', 'Y', 2);

-- ----------------------------
-- Table structure for logo
-- ----------------------------
DROP TABLE IF EXISTS `logo`;
CREATE TABLE `logo`  (
  `id_logo` int NOT NULL AUTO_INCREMENT,
  `gambar` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_logo`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 18 CHARACTER SET = latin1 COLLATE = latin1_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of logo
-- ----------------------------
INSERT INTO `logo` VALUES (15, 'wptechno1.png');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `id_menu` int NOT NULL AUTO_INCREMENT,
  `id_parent` int NOT NULL DEFAULT 0,
  `nama_menu` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `link` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `aktif` enum('Ya','Tidak') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'Ya',
  `position` enum('Top','Bottom') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'Bottom',
  `urutan` int NOT NULL,
  PRIMARY KEY (`id_menu`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 148 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES (143, 0, 'Konfirmasi Pembayaran', 'konfirmasi', 'Ya', 'Bottom', 24);
INSERT INTO `menu` VALUES (113, 146, 'Tentang Kami', 'page/detail/tentang-kami', 'Ya', 'Bottom', 1);
INSERT INTO `menu` VALUES (7, 0, 'Home Page', '', 'Ya', 'Bottom', 1);
INSERT INTO `menu` VALUES (8, 146, 'Hijab Tutorial', 'berita', 'Ya', 'Bottom', 3);
INSERT INTO `menu` VALUES (136, 0, 'Login', 'auth/login', 'Ya', 'Top', 15);
INSERT INTO `menu` VALUES (137, 0, 'Register', 'auth/register', 'Ya', 'Top', 16);
INSERT INTO `menu` VALUES (138, 0, 'Hubungi Kami', 'contact', 'Ya', 'Top', 17);
INSERT INTO `menu` VALUES (139, 0, 'Download', 'download', 'Tidak', 'Bottom', 18);
INSERT INTO `menu` VALUES (140, 0, 'Video', 'video', 'Tidak', 'Bottom', 19);
INSERT INTO `menu` VALUES (141, 0, 'Gallery', 'gallery', 'Tidak', 'Bottom', 20);
INSERT INTO `menu` VALUES (142, 0, 'Testimoni', 'testimoni', 'Ya', 'Bottom', 22);
INSERT INTO `menu` VALUES (144, 0, 'Semua Koleksi', 'produk', 'Ya', 'Bottom', 3);
INSERT INTO `menu` VALUES (145, 146, 'Cara Belanja', 'page/detail/cara-belanja', 'Ya', 'Bottom', 2);
INSERT INTO `menu` VALUES (146, 0, 'Informasi', '#', 'Ya', 'Bottom', 2);
INSERT INTO `menu` VALUES (147, 0, 'Tracking Order', 'konfirmasi/tracking', 'Ya', 'Bottom', 23);

-- ----------------------------
-- Table structure for modul
-- ----------------------------
DROP TABLE IF EXISTS `modul`;
CREATE TABLE `modul`  (
  `id_modul` int NOT NULL AUTO_INCREMENT,
  `nama_modul` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `link` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `static_content` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `publish` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `status` enum('user','admin') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `urutan` int NOT NULL,
  `link_seo` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_modul`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 80 CHARACTER SET = latin1 COLLATE = latin1_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of modul
-- ----------------------------
INSERT INTO `modul` VALUES (2, 'Manajemen User', 'admin', 'manajemenuser', '', '', 'Y', 'user', 'Y', 0, '');
INSERT INTO `modul` VALUES (18, 'Berita', 'admin', 'listberita', '', '', 'Y', 'user', 'Y', 0, '');
INSERT INTO `modul` VALUES (71, 'Image Slider', 'admin', 'imagesslider', '', '', 'N', 'admin', 'N', 0, '');
INSERT INTO `modul` VALUES (10, 'Manajemen Modul', 'admin', 'manajemenmodul', '', '', 'Y', 'user', 'Y', 0, '');
INSERT INTO `modul` VALUES (31, 'Kategori Berita ', 'admin', 'kategoriberita', '', '', 'Y', 'user', 'Y', 0, '');
INSERT INTO `modul` VALUES (33, 'Testimoni', 'admin', 'testimoni', '', '', 'Y', 'user', 'Y', 0, '');
INSERT INTO `modul` VALUES (34, 'Tag Berita', 'admin', 'tagberita', '', '', 'Y', 'user', 'Y', 0, '');
INSERT INTO `modul` VALUES (43, 'Berita Foto', 'admin', 'album', '', '', 'Y', 'user', 'Y', 0, '');
INSERT INTO `modul` VALUES (44, 'Galeri Berita Foto', 'admin', 'gallery', '', '', 'Y', 'user', 'Y', 0, '');
INSERT INTO `modul` VALUES (46, 'Konsumen', 'admin', 'konsumen', '', '', 'Y', 'user', 'Y', 0, '');
INSERT INTO `modul` VALUES (61, 'Identitas Website', 'admin', 'identitaswebsite', '', '', 'Y', 'user', 'Y', 0, '');
INSERT INTO `modul` VALUES (57, 'Menu Website', 'admin', 'menuwebsite', '', '', 'Y', 'user', 'Y', 0, '');
INSERT INTO `modul` VALUES (59, 'Halaman Baru', 'admin', 'halamanbaru', '', '', 'Y', 'user', 'Y', 0, '');
INSERT INTO `modul` VALUES (66, 'Logo Website', 'admin', 'logowebsite', '', '', 'Y', 'user', 'Y', 0, '');
INSERT INTO `modul` VALUES (67, 'Iklan Sidebar', 'admin', 'iklansidebar', '', '', 'N', 'admin', 'N', 0, '');
INSERT INTO `modul` VALUES (68, 'Iklan Home', 'admin', 'iklanhome', '', '', 'N', 'admin', 'N', 0, '');
INSERT INTO `modul` VALUES (70, 'Pesan Masuk', 'admin', 'pesanmasuk', '', '', 'Y', 'user', 'Y', 0, '');
INSERT INTO `modul` VALUES (72, 'No Rekening Perusahaan', 'admin', 'rekening', '', '', 'N', 'admin', 'N', 0, '');
INSERT INTO `modul` VALUES (74, 'Download Area', 'admin', 'download', '', '', 'Y', 'admin', 'Y', 0, '');
INSERT INTO `modul` VALUES (75, 'Alamat Kontak', 'admin', 'alamat', '', '', 'Y', 'admin', 'Y', 0, '');
INSERT INTO `modul` VALUES (78, 'Info/Keterangan', 'admin', 'keterangan', '', '', 'Y', 'user', 'Y', 0, '');

-- ----------------------------
-- Table structure for pasangiklan
-- ----------------------------
DROP TABLE IF EXISTS `pasangiklan`;
CREATE TABLE `pasangiklan`  (
  `id_pasangiklan` int NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  PRIMARY KEY (`id_pasangiklan`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 34 CHARACTER SET = latin1 COLLATE = latin1_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pasangiklan
-- ----------------------------
INSERT INTO `pasangiklan` VALUES (32, 'Temukan juga kami di Tokopedia', 'admin', 'https://www.tokopedia.com', 'tokopedia1.png', '2018-03-04');
INSERT INTO `pasangiklan` VALUES (33, 'Temukan juga kami di Bukalapak', 'admin', 'https://www.bukalapak.com', 'download.png', '2018-03-04');

-- ----------------------------
-- Table structure for rb_kategori_produk
-- ----------------------------
DROP TABLE IF EXISTS `rb_kategori_produk`;
CREATE TABLE `rb_kategori_produk`  (
  `id_kategori_produk` int NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `kategori_seo` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_kategori_produk`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 11 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rb_kategori_produk
-- ----------------------------
INSERT INTO `rb_kategori_produk` VALUES (1, 'Mesin Pemecah', 'mesin-pemecah');
INSERT INTO `rb_kategori_produk` VALUES (2, 'Mesin Pengaduk', 'mesin-pengaduk');
INSERT INTO `rb_kategori_produk` VALUES (4, 'Mesin Perajang', 'mesin-perajang');
INSERT INTO `rb_kategori_produk` VALUES (5, 'Mesin Teknologi Tepat Guna', 'mesin-teknologi-tepat-guna');
INSERT INTO `rb_kategori_produk` VALUES (6, 'Trainer', 'trainer');
INSERT INTO `rb_kategori_produk` VALUES (7, '-', 'segitiga-instan-lolina');
INSERT INTO `rb_kategori_produk` VALUES (8, '-', 'segitiga-instan-sasya');
INSERT INTO `rb_kategori_produk` VALUES (9, '-', 'pashmina-instan-raisa-lava');
INSERT INTO `rb_kategori_produk` VALUES (10, '-', 'pashmina-instan-tafea');

-- ----------------------------
-- Table structure for rb_keterangan
-- ----------------------------
DROP TABLE IF EXISTS `rb_keterangan`;
CREATE TABLE `rb_keterangan`  (
  `id_keterangan` int NOT NULL AUTO_INCREMENT,
  `keterangan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tanggal_posting` date NOT NULL,
  PRIMARY KEY (`id_keterangan`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rb_keterangan
-- ----------------------------
INSERT INTO `rb_keterangan` VALUES (1, '<p><strong>Informasi Order :</strong></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec scelerisque condimentum mattis. Suspendisse potenti. Proin vitae elementum nisi. Aliquam eu pretium risus. Nam varius efficitur consectetur. Aenean vestibulum felis sed mollis faucibus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin venenatis est sit amet eleifend vehicula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer id nunc eu odio ultrices pulvinar non feugiat felis.&nbsp;</p>\r\n\r\n<p>Duis consequat urna sapien, porta gravida diam venenatis at. Duis at ornare enim, ac accumsan eros. Sed in finibus metus. Etiam blandit tristique orci, sit amet congue dui facilisis id. Donec fermentum diam at orci viverra placerat. Sed nunc lorem, cursus nec vestibulum hendrerit, tempus et libero.</p>\r\n', '2018-03-03');

-- ----------------------------
-- Table structure for rb_konfirmasi
-- ----------------------------
DROP TABLE IF EXISTS `rb_konfirmasi`;
CREATE TABLE `rb_konfirmasi`  (
  `id_konfirmasi_pembayaran` int NOT NULL AUTO_INCREMENT,
  `id_penjualan` int NOT NULL,
  `total_transfer` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_rekening` int NOT NULL,
  `nama_pengirim` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tanggal_transfer` date NOT NULL,
  `bukti_transfer` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `waktu_konfirmasi` datetime NOT NULL,
  PRIMARY KEY (`id_konfirmasi_pembayaran`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 9 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rb_konfirmasi
-- ----------------------------
INSERT INTO `rb_konfirmasi` VALUES (2, 19, 'Rp 1,278,000', 1, 'Robby Prihandaya', '2017-06-02', '00011.jpg', '2017-06-02 15:19:40');
INSERT INTO `rb_konfirmasi` VALUES (3, 43, 'Rp 4,799,000', 0, 'Dewiit Safitri ', '2017-06-04', '0755.png', '2017-06-04 11:27:01');
INSERT INTO `rb_konfirmasi` VALUES (5, 47, 'Rp 728,000', 1, 'Agus Raharjo', '2017-06-07', '1.png', '2017-06-07 21:06:06');
INSERT INTO `rb_konfirmasi` VALUES (6, 2, 'Rp 417,000', 0, 'Robby Prihandaya', '2018-03-03', 'agenda.jpg', '2018-03-03 14:34:31');
INSERT INTO `rb_konfirmasi` VALUES (7, 3, 'Rp 355,980', 2, 'Robby Prihandaya', '2018-03-03', 'windows_xp_bliss-wide.jpg', '2018-03-03 15:14:30');
INSERT INTO `rb_konfirmasi` VALUES (8, 2, 'Rp 417,000', 2, 'Robby Prihandaya', '2018-03-03', 'avatar.png', '2018-03-03 16:16:37');

-- ----------------------------
-- Table structure for rb_konsumen
-- ----------------------------
DROP TABLE IF EXISTS `rb_konsumen`;
CREATE TABLE `rb_konsumen`  (
  `id_konsumen` int NOT NULL AUTO_INCREMENT,
  `username` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama_lengkap` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `tempat_lahir` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `alamat_lengkap` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `kota_id` int NOT NULL,
  `no_hp` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `foto` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tanggal_daftar` date NOT NULL,
  PRIMARY KEY (`id_konsumen`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 30 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rb_konsumen
-- ----------------------------
INSERT INTO `rb_konsumen` VALUES (1, 'robby', '882c306525a9f885466520ba2aa6b10377b029cb569311fc17161d40df6e1bab7eb6103fcf567ce3a1375e77cc7db1928efec90cd0a379303fc2adb159bb1d14', 'Robby Prihandaya', 'robby.prihandaya@gmail.com', 'Laki-laki', '1988-08-07', 'Padang', 'Jl. Angkasa Pura Jaya Merdeka', 372, '081267771341', 'robby1.jpg', '2017-04-05');
INSERT INTO `rb_konsumen` VALUES (2, 'arsenio', 'ddd1e1ecf9826e4ae7aba6ebd09589d65880638f984357aa688cf265fbc8b3e8781ca573d27c13cafc99e4db9d5c38801bd270df6f0bf6d18cd877fefb159f6f', 'Muhammad Arsenio', 'muhammad.arsenio@gmail.com', 'Laki-laki', '1988-09-27', 'Padang', 'jl. Siti Nurbayani Sogi roh', 27, '081267889912', '', '2017-04-07');
INSERT INTO `rb_konsumen` VALUES (3, 'dewiit', 'af9f95fb734ca6abb2d02a6a169eca2bbf33feb3c25ed266e4129cbed937150699954d72dcb44fee7c9e9acebaf4e7283aabc64a6e56f1b8e6a5a0e8e0551324', 'Dewiit Safitri', 'dewiitt.safitri@gmail.com', 'Perempuan', '1989-06-16', 'Padang', 'Jl. Linggar Jati Lamo', 372, '098912334456', '', '2017-04-08');
INSERT INTO `rb_konsumen` VALUES (4, 'cristine', '284e703a4d52451e1266b16660e50545e58bc0d4796587cb457e49cccd10af4d4ef6cf36d076a91002d806f443e0fb22b9391d81092d06a90252ec80b93a1269', 'Cristine Hakim', 'cristine.hakim@gmail.com', 'Perempuan', '1970-06-16', 'Padang', 'jl. Pondok Raya Begalung', 0, '097712445600', '', '2017-04-09');
INSERT INTO `rb_konsumen` VALUES (5, 'tommy', 'e3bb0d1fb8d4d0aa070f22a9f73c975222449bb5466dc89033f66a8be07d6e8345308aa298e78066871c6844964e6b63f7be4327525c5025001c76b94310e2f2', 'Tommu Utama', 'tommy.utama@gmail.com', 'Laki-laki', '1985-08-18', 'Padang', 'Jl Cendrawasih Mujukirte', 0, '081267881233', '', '2017-04-10');
INSERT INTO `rb_konsumen` VALUES (6, 'willy', '181676ffcb279fc91cfb9cb5f07be65b23224b05059f9f2ff0158aa520693a805496be090242c3cdf56c0463f278aba4b01c7115ea356eda346ef8270e402696', 'Willy Fernando', 'willy.fernando@gmail.com', 'Laki-laki', '1969-08-14', 'Padang', 'Jl. Angkasa Puri, Perundam 4', 0, '087811235433', '', '2017-04-11');
INSERT INTO `rb_konsumen` VALUES (7, 'rosanna', '108b1016c8dfa4c6892fd745c09adc4859cd2e21ca3d55a30322ef667011aa3c379c02a45437fd6482555c17aab7f607e13b8431e19678a00a51edec958a9569', 'Rosanna Alexandro', 'rosanna.alexandro@gmail.com', 'Perempuan', '1967-04-17', 'Padang', 'Jl. Mantaliano Tubelegio', 0, '081242342341', '', '2017-04-10');
INSERT INTO `rb_konsumen` VALUES (18, 'laura', 'ca946a52760d2c5e2670aa899019f09638e72462d8a9ff272dffb16d14e3873457ce6be0a3ecf205fdb0c8141bbe560b01240f1f1307e31b231cb18428ec5974', 'Laura Izzatin Nissa', 'laura.izzatin@gmail.com', 'Perempuan', '1998-02-12', 'Padang Panjang', 'Tunggul Hitam, Padang', 0, '082175123545', '', '2017-05-29');
INSERT INTO `rb_konsumen` VALUES (24, 'rahmi', 'a6023aa2be2f8d9bb61edd627f957882c7a28abbbc1ed61b9cd93c36c06e52270396fcaa6303b341f52937432faa91ecbaea99534a1f55866ba3163389fcbfbf', 'Rahmi Saputra', 'rahmi.saputra@gmail.com', 'Laki-laki', '1989-12-12', 'Payakumbuh', 'Jl. Kijoko Bodoh', 370, '081978541155', '', '2017-06-07');
INSERT INTO `rb_konsumen` VALUES (23, 'agusr', 'b87fb1f4862c52a175281636b0c270276e50e33e3aec4929c31da5199ca83ff25c0d045f9eb03b2e6dca41a390164a8c95c29bd28139cef18499c0d2ae59e098', 'Agus Raharjo', 'agus.raharjo@gmail.com', 'Laki-laki', '2018-03-20', 'Padang', 'Jl. Sutimah warohmah Jaya', 371, '081267991244', '', '2017-06-07');
INSERT INTO `rb_konsumen` VALUES (27, 'tommy', 'e3bb0d1fb8d4d0aa070f22a9f73c975222449bb5466dc89033f66a8be07d6e8345308aa298e78066871c6844964e6b63f7be4327525c5025001c76b94310e2f2', 'Tommy Utama', 'tommy.utama@gmail.com', 'Laki-laki', '0000-00-00', '', 'Jl. Singgasana, Buleleng', 6, '081267771388', '', '2018-03-05');
INSERT INTO `rb_konsumen` VALUES (25, 'dewiit', 'af9f95fb734ca6abb2d02a6a169eca2bbf33feb3c25ed266e4129cbed937150699954d72dcb44fee7c9e9acebaf4e7283aabc64a6e56f1b8e6a5a0e8e0551324', 'Dewiit Safitri', 'dewiit.safitri@gmail.com', 'Laki-laki', '2018-03-17', 'Padang', 'Jl. Linggar Jati, No 16 C', 5, '082173054501', '', '2018-03-03');
INSERT INTO `rb_konsumen` VALUES (26, 'arsenio', 'ddd1e1ecf9826e4ae7aba6ebd09589d65880638f984357aa688cf265fbc8b3e8781ca573d27c13cafc99e4db9d5c38801bd270df6f0bf6d18cd877fefb159f6f', 'Muhammad Arsenio', 'muhammad.arsenio@gmail.com', 'Laki-laki', '2016-12-15', 'Padang', 'Jl. Linggar Jati, No 18 C', 9, '082156458899', '', '2018-03-03');
INSERT INTO `rb_konsumen` VALUES (28, 'sdfsdf', '8fdc5505d48f88bed9da7b8b146bbffd1bee25cdb940876a50642459fe336170636fcaec4d7c0e30b0388888628853457479fcdf08b5ea331f78a3886ed7a3ed', 'asdasdasdasd', 'todaynews.co.id@gmail.com', 'Laki-laki', '0000-00-00', '', 'sfsdfsdfdsfsd', 15, '3452342234', '', '2018-03-05');
INSERT INTO `rb_konsumen` VALUES (29, 'suryoatm', 'ccd85f604f2af89b034cb208e24ec82a74c361125e6e419009ff326424215a58baf61fc726a707c07d08027c2fc8e571d6a6c159e03bab03d3c901521d09b4ec', 'suryo', 'suryoatm@gmail.com', 'Laki-laki', '0000-00-00', '', 'jl.medokan semampir indah gg 1 no 3', 444, '085649224822', '', '2018-04-17');

-- ----------------------------
-- Table structure for rb_kota
-- ----------------------------
DROP TABLE IF EXISTS `rb_kota`;
CREATE TABLE `rb_kota`  (
  `kota_id` int NOT NULL AUTO_INCREMENT,
  `provinsi_id` int NOT NULL,
  `nama_kota` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`kota_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 502 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rb_kota
-- ----------------------------
INSERT INTO `rb_kota` VALUES (17, 1, 'Badung');
INSERT INTO `rb_kota` VALUES (32, 1, 'Bangli');
INSERT INTO `rb_kota` VALUES (94, 1, 'Buleleng');
INSERT INTO `rb_kota` VALUES (114, 1, 'Denpasar');
INSERT INTO `rb_kota` VALUES (128, 1, 'Gianyar');
INSERT INTO `rb_kota` VALUES (161, 1, 'Jembrana');
INSERT INTO `rb_kota` VALUES (170, 1, 'Karangasem');
INSERT INTO `rb_kota` VALUES (197, 1, 'Klungkung');
INSERT INTO `rb_kota` VALUES (447, 1, 'Tabanan');
INSERT INTO `rb_kota` VALUES (27, 2, 'Bangka');
INSERT INTO `rb_kota` VALUES (28, 2, 'Bangka Barat');
INSERT INTO `rb_kota` VALUES (29, 2, 'Bangka Selatan');
INSERT INTO `rb_kota` VALUES (30, 2, 'Bangka Tengah');
INSERT INTO `rb_kota` VALUES (56, 2, 'Belitung');
INSERT INTO `rb_kota` VALUES (57, 2, 'Belitung Timur');
INSERT INTO `rb_kota` VALUES (334, 2, 'Pangkal Pinang');
INSERT INTO `rb_kota` VALUES (106, 3, 'Cilegon');
INSERT INTO `rb_kota` VALUES (232, 3, 'Lebak');
INSERT INTO `rb_kota` VALUES (331, 3, 'Pandeglang');
INSERT INTO `rb_kota` VALUES (402, 3, 'Serang');
INSERT INTO `rb_kota` VALUES (403, 3, 'Serang');
INSERT INTO `rb_kota` VALUES (455, 3, 'Tangerang');
INSERT INTO `rb_kota` VALUES (456, 3, 'Tangerang');
INSERT INTO `rb_kota` VALUES (457, 3, 'Tangerang Selatan');
INSERT INTO `rb_kota` VALUES (62, 4, 'Bengkulu');
INSERT INTO `rb_kota` VALUES (63, 4, 'Bengkulu Selatan');
INSERT INTO `rb_kota` VALUES (64, 4, 'Bengkulu Tengah');
INSERT INTO `rb_kota` VALUES (65, 4, 'Bengkulu Utara');
INSERT INTO `rb_kota` VALUES (175, 4, 'Kaur');
INSERT INTO `rb_kota` VALUES (183, 4, 'Kepahiang');
INSERT INTO `rb_kota` VALUES (233, 4, 'Lebong');
INSERT INTO `rb_kota` VALUES (294, 4, 'Muko Muko');
INSERT INTO `rb_kota` VALUES (379, 4, 'Rejang Lebong');
INSERT INTO `rb_kota` VALUES (397, 4, 'Seluma');
INSERT INTO `rb_kota` VALUES (39, 5, 'Bantul');
INSERT INTO `rb_kota` VALUES (135, 5, 'Gunung Kidul');
INSERT INTO `rb_kota` VALUES (210, 5, 'Kulon Progo');
INSERT INTO `rb_kota` VALUES (419, 5, 'Sleman');
INSERT INTO `rb_kota` VALUES (501, 5, 'Yogyakarta');
INSERT INTO `rb_kota` VALUES (151, 6, 'Jakarta Barat');
INSERT INTO `rb_kota` VALUES (152, 6, 'Jakarta Pusat');
INSERT INTO `rb_kota` VALUES (153, 6, 'Jakarta Selatan');
INSERT INTO `rb_kota` VALUES (154, 6, 'Jakarta Timur');
INSERT INTO `rb_kota` VALUES (155, 6, 'Jakarta Utara');
INSERT INTO `rb_kota` VALUES (189, 6, 'Kepulauan Seribu');
INSERT INTO `rb_kota` VALUES (77, 7, 'Boalemo');
INSERT INTO `rb_kota` VALUES (88, 7, 'Bone Bolango');
INSERT INTO `rb_kota` VALUES (129, 7, 'Gorontalo');
INSERT INTO `rb_kota` VALUES (130, 7, 'Gorontalo');
INSERT INTO `rb_kota` VALUES (131, 7, 'Gorontalo Utara');
INSERT INTO `rb_kota` VALUES (361, 7, 'Pohuwato');
INSERT INTO `rb_kota` VALUES (50, 8, 'Batang Hari');
INSERT INTO `rb_kota` VALUES (97, 8, 'Bungo');
INSERT INTO `rb_kota` VALUES (156, 8, 'Jambi');
INSERT INTO `rb_kota` VALUES (194, 8, 'Kerinci');
INSERT INTO `rb_kota` VALUES (280, 8, 'Merangin');
INSERT INTO `rb_kota` VALUES (293, 8, 'Muaro Jambi');
INSERT INTO `rb_kota` VALUES (393, 8, 'Sarolangun');
INSERT INTO `rb_kota` VALUES (442, 8, 'Sungaipenuh');
INSERT INTO `rb_kota` VALUES (460, 8, 'Tanjung Jabung Barat');
INSERT INTO `rb_kota` VALUES (461, 8, 'Tanjung Jabung Timur');
INSERT INTO `rb_kota` VALUES (471, 8, 'Tebo');
INSERT INTO `rb_kota` VALUES (22, 9, 'Bandung');
INSERT INTO `rb_kota` VALUES (23, 9, 'Bandung');
INSERT INTO `rb_kota` VALUES (24, 9, 'Bandung Barat');
INSERT INTO `rb_kota` VALUES (34, 9, 'Banjar');
INSERT INTO `rb_kota` VALUES (54, 9, 'Bekasi');
INSERT INTO `rb_kota` VALUES (55, 9, 'Bekasi');
INSERT INTO `rb_kota` VALUES (78, 9, 'Bogor');
INSERT INTO `rb_kota` VALUES (79, 9, 'Bogor');
INSERT INTO `rb_kota` VALUES (103, 9, 'Ciamis');
INSERT INTO `rb_kota` VALUES (104, 9, 'Cianjur');
INSERT INTO `rb_kota` VALUES (107, 9, 'Cimahi');
INSERT INTO `rb_kota` VALUES (108, 9, 'Cirebon');
INSERT INTO `rb_kota` VALUES (109, 9, 'Cirebon');
INSERT INTO `rb_kota` VALUES (115, 9, 'Depok');
INSERT INTO `rb_kota` VALUES (126, 9, 'Garut');
INSERT INTO `rb_kota` VALUES (149, 9, 'Indramayu');
INSERT INTO `rb_kota` VALUES (171, 9, 'Karawang');
INSERT INTO `rb_kota` VALUES (211, 9, 'Kuningan');
INSERT INTO `rb_kota` VALUES (252, 9, 'Majalengka');
INSERT INTO `rb_kota` VALUES (332, 9, 'Pangandaran');
INSERT INTO `rb_kota` VALUES (376, 9, 'Purwakarta');
INSERT INTO `rb_kota` VALUES (428, 9, 'Subang');
INSERT INTO `rb_kota` VALUES (430, 9, 'Sukabumi');
INSERT INTO `rb_kota` VALUES (431, 9, 'Sukabumi');
INSERT INTO `rb_kota` VALUES (440, 9, 'Sumedang');
INSERT INTO `rb_kota` VALUES (468, 9, 'Tasikmalaya');
INSERT INTO `rb_kota` VALUES (469, 9, 'Tasikmalaya');
INSERT INTO `rb_kota` VALUES (37, 10, 'Banjarnegara');
INSERT INTO `rb_kota` VALUES (41, 10, 'Banyumas');
INSERT INTO `rb_kota` VALUES (49, 10, 'Batang');
INSERT INTO `rb_kota` VALUES (76, 10, 'Blora');
INSERT INTO `rb_kota` VALUES (91, 10, 'Boyolali');
INSERT INTO `rb_kota` VALUES (92, 10, 'Brebes');
INSERT INTO `rb_kota` VALUES (105, 10, 'Cilacap');
INSERT INTO `rb_kota` VALUES (113, 10, 'Demak');
INSERT INTO `rb_kota` VALUES (134, 10, 'Grobogan');
INSERT INTO `rb_kota` VALUES (163, 10, 'Jepara');
INSERT INTO `rb_kota` VALUES (169, 10, 'Karanganyar');
INSERT INTO `rb_kota` VALUES (177, 10, 'Kebumen');
INSERT INTO `rb_kota` VALUES (181, 10, 'Kendal');
INSERT INTO `rb_kota` VALUES (196, 10, 'Klaten');
INSERT INTO `rb_kota` VALUES (209, 10, 'Kudus');
INSERT INTO `rb_kota` VALUES (249, 10, 'Magelang');
INSERT INTO `rb_kota` VALUES (250, 10, 'Magelang');
INSERT INTO `rb_kota` VALUES (344, 10, 'Pati');
INSERT INTO `rb_kota` VALUES (348, 10, 'Pekalongan');
INSERT INTO `rb_kota` VALUES (349, 10, 'Pekalongan');
INSERT INTO `rb_kota` VALUES (352, 10, 'Pemalang');
INSERT INTO `rb_kota` VALUES (375, 10, 'Purbalingga');
INSERT INTO `rb_kota` VALUES (377, 10, 'Purworejo');
INSERT INTO `rb_kota` VALUES (380, 10, 'Rembang');
INSERT INTO `rb_kota` VALUES (386, 10, 'Salatiga');
INSERT INTO `rb_kota` VALUES (398, 10, 'Semarang');
INSERT INTO `rb_kota` VALUES (399, 10, 'Semarang');
INSERT INTO `rb_kota` VALUES (427, 10, 'Sragen');
INSERT INTO `rb_kota` VALUES (433, 10, 'Sukoharjo');
INSERT INTO `rb_kota` VALUES (445, 10, 'Surakarta (Solo)');
INSERT INTO `rb_kota` VALUES (472, 10, 'Tegal');
INSERT INTO `rb_kota` VALUES (473, 10, 'Tegal');
INSERT INTO `rb_kota` VALUES (476, 10, 'Temanggung');
INSERT INTO `rb_kota` VALUES (497, 10, 'Wonogiri');
INSERT INTO `rb_kota` VALUES (498, 10, 'Wonosobo');
INSERT INTO `rb_kota` VALUES (31, 11, 'Bangkalan');
INSERT INTO `rb_kota` VALUES (42, 11, 'Banyuwangi');
INSERT INTO `rb_kota` VALUES (51, 11, 'Batu');
INSERT INTO `rb_kota` VALUES (74, 11, 'Blitar');
INSERT INTO `rb_kota` VALUES (75, 11, 'Blitar');
INSERT INTO `rb_kota` VALUES (80, 11, 'Bojonegoro');
INSERT INTO `rb_kota` VALUES (86, 11, 'Bondowoso');
INSERT INTO `rb_kota` VALUES (133, 11, 'Gresik');
INSERT INTO `rb_kota` VALUES (160, 11, 'Jember');
INSERT INTO `rb_kota` VALUES (164, 11, 'Jombang');
INSERT INTO `rb_kota` VALUES (178, 11, 'Kediri');
INSERT INTO `rb_kota` VALUES (179, 11, 'Kediri');
INSERT INTO `rb_kota` VALUES (222, 11, 'Lamongan');
INSERT INTO `rb_kota` VALUES (243, 11, 'Lumajang');
INSERT INTO `rb_kota` VALUES (247, 11, 'Madiun');
INSERT INTO `rb_kota` VALUES (248, 11, 'Madiun');
INSERT INTO `rb_kota` VALUES (251, 11, 'Magetan');
INSERT INTO `rb_kota` VALUES (256, 11, 'Malang');
INSERT INTO `rb_kota` VALUES (255, 11, 'Malang');
INSERT INTO `rb_kota` VALUES (289, 11, 'Mojokerto');
INSERT INTO `rb_kota` VALUES (290, 11, 'Mojokerto');
INSERT INTO `rb_kota` VALUES (305, 11, 'Nganjuk');
INSERT INTO `rb_kota` VALUES (306, 11, 'Ngawi');
INSERT INTO `rb_kota` VALUES (317, 11, 'Pacitan');
INSERT INTO `rb_kota` VALUES (330, 11, 'Pamekasan');
INSERT INTO `rb_kota` VALUES (342, 11, 'Pasuruan');
INSERT INTO `rb_kota` VALUES (343, 11, 'Pasuruan');
INSERT INTO `rb_kota` VALUES (363, 11, 'Ponorogo');
INSERT INTO `rb_kota` VALUES (369, 11, 'Probolinggo');
INSERT INTO `rb_kota` VALUES (370, 11, 'Probolinggo');
INSERT INTO `rb_kota` VALUES (390, 11, 'Sampang');
INSERT INTO `rb_kota` VALUES (409, 11, 'Sidoarjo');
INSERT INTO `rb_kota` VALUES (418, 11, 'Situbondo');
INSERT INTO `rb_kota` VALUES (441, 11, 'Sumenep');
INSERT INTO `rb_kota` VALUES (444, 11, 'Surabaya');
INSERT INTO `rb_kota` VALUES (487, 11, 'Trenggalek');
INSERT INTO `rb_kota` VALUES (489, 11, 'Tuban');
INSERT INTO `rb_kota` VALUES (492, 11, 'Tulungagung');
INSERT INTO `rb_kota` VALUES (61, 12, 'Bengkayang');
INSERT INTO `rb_kota` VALUES (168, 12, 'Kapuas Hulu');
INSERT INTO `rb_kota` VALUES (176, 12, 'Kayong Utara');
INSERT INTO `rb_kota` VALUES (195, 12, 'Ketapang');
INSERT INTO `rb_kota` VALUES (208, 12, 'Kubu Raya');
INSERT INTO `rb_kota` VALUES (228, 12, 'Landak');
INSERT INTO `rb_kota` VALUES (279, 12, 'Melawi');
INSERT INTO `rb_kota` VALUES (364, 12, 'Pontianak');
INSERT INTO `rb_kota` VALUES (365, 12, 'Pontianak');
INSERT INTO `rb_kota` VALUES (388, 12, 'Sambas');
INSERT INTO `rb_kota` VALUES (391, 12, 'Sanggau');
INSERT INTO `rb_kota` VALUES (395, 12, 'Sekadau');
INSERT INTO `rb_kota` VALUES (415, 12, 'Singkawang');
INSERT INTO `rb_kota` VALUES (417, 12, 'Sintang');
INSERT INTO `rb_kota` VALUES (18, 13, 'Balangan');
INSERT INTO `rb_kota` VALUES (33, 13, 'Banjar');
INSERT INTO `rb_kota` VALUES (35, 13, 'Banjarbaru');
INSERT INTO `rb_kota` VALUES (36, 13, 'Banjarmasin');
INSERT INTO `rb_kota` VALUES (43, 13, 'Barito Kuala');
INSERT INTO `rb_kota` VALUES (143, 13, 'Hulu Sungai Selatan');
INSERT INTO `rb_kota` VALUES (144, 13, 'Hulu Sungai Tengah');
INSERT INTO `rb_kota` VALUES (145, 13, 'Hulu Sungai Utara');
INSERT INTO `rb_kota` VALUES (203, 13, 'Kotabaru');
INSERT INTO `rb_kota` VALUES (446, 13, 'Tabalong');
INSERT INTO `rb_kota` VALUES (452, 13, 'Tanah Bumbu');
INSERT INTO `rb_kota` VALUES (454, 13, 'Tanah Laut');
INSERT INTO `rb_kota` VALUES (466, 13, 'Tapin');
INSERT INTO `rb_kota` VALUES (44, 14, 'Barito Selatan');
INSERT INTO `rb_kota` VALUES (45, 14, 'Barito Timur');
INSERT INTO `rb_kota` VALUES (46, 14, 'Barito Utara');
INSERT INTO `rb_kota` VALUES (136, 14, 'Gunung Mas');
INSERT INTO `rb_kota` VALUES (167, 14, 'Kapuas');
INSERT INTO `rb_kota` VALUES (174, 14, 'Katingan');
INSERT INTO `rb_kota` VALUES (205, 14, 'Kotawaringin Barat');
INSERT INTO `rb_kota` VALUES (206, 14, 'Kotawaringin Timur');
INSERT INTO `rb_kota` VALUES (221, 14, 'Lamandau');
INSERT INTO `rb_kota` VALUES (296, 14, 'Murung Raya');
INSERT INTO `rb_kota` VALUES (326, 14, 'Palangka Raya');
INSERT INTO `rb_kota` VALUES (371, 14, 'Pulang Pisau');
INSERT INTO `rb_kota` VALUES (405, 14, 'Seruyan');
INSERT INTO `rb_kota` VALUES (432, 14, 'Sukamara');
INSERT INTO `rb_kota` VALUES (19, 15, 'Balikpapan');
INSERT INTO `rb_kota` VALUES (66, 15, 'Berau');
INSERT INTO `rb_kota` VALUES (89, 15, 'Bontang');
INSERT INTO `rb_kota` VALUES (214, 15, 'Kutai Barat');
INSERT INTO `rb_kota` VALUES (215, 15, 'Kutai Kartanegara');
INSERT INTO `rb_kota` VALUES (216, 15, 'Kutai Timur');
INSERT INTO `rb_kota` VALUES (341, 15, 'Paser');
INSERT INTO `rb_kota` VALUES (354, 15, 'Penajam Paser Utara');
INSERT INTO `rb_kota` VALUES (387, 15, 'Samarinda');
INSERT INTO `rb_kota` VALUES (96, 16, 'Bulungan (Bulongan)');
INSERT INTO `rb_kota` VALUES (257, 16, 'Malinau');
INSERT INTO `rb_kota` VALUES (311, 16, 'Nunukan');
INSERT INTO `rb_kota` VALUES (450, 16, 'Tana Tidung');
INSERT INTO `rb_kota` VALUES (467, 16, 'Tarakan');
INSERT INTO `rb_kota` VALUES (48, 17, 'Batam');
INSERT INTO `rb_kota` VALUES (71, 17, 'Bintan');
INSERT INTO `rb_kota` VALUES (172, 17, 'Karimun');
INSERT INTO `rb_kota` VALUES (184, 17, 'Kepulauan Anambas');
INSERT INTO `rb_kota` VALUES (237, 17, 'Lingga');
INSERT INTO `rb_kota` VALUES (302, 17, 'Natuna');
INSERT INTO `rb_kota` VALUES (462, 17, 'Tanjung Pinang');
INSERT INTO `rb_kota` VALUES (21, 18, 'Bandar Lampung');
INSERT INTO `rb_kota` VALUES (223, 18, 'Lampung Barat');
INSERT INTO `rb_kota` VALUES (224, 18, 'Lampung Selatan');
INSERT INTO `rb_kota` VALUES (225, 18, 'Lampung Tengah');
INSERT INTO `rb_kota` VALUES (226, 18, 'Lampung Timur');
INSERT INTO `rb_kota` VALUES (227, 18, 'Lampung Utara');
INSERT INTO `rb_kota` VALUES (282, 18, 'Mesuji');
INSERT INTO `rb_kota` VALUES (283, 18, 'Metro');
INSERT INTO `rb_kota` VALUES (355, 18, 'Pesawaran');
INSERT INTO `rb_kota` VALUES (356, 18, 'Pesisir Barat');
INSERT INTO `rb_kota` VALUES (368, 18, 'Pringsewu');
INSERT INTO `rb_kota` VALUES (458, 18, 'Tanggamus');
INSERT INTO `rb_kota` VALUES (490, 18, 'Tulang Bawang');
INSERT INTO `rb_kota` VALUES (491, 18, 'Tulang Bawang Barat');
INSERT INTO `rb_kota` VALUES (496, 18, 'Way Kanan');
INSERT INTO `rb_kota` VALUES (14, 19, 'Ambon');
INSERT INTO `rb_kota` VALUES (99, 19, 'Buru');
INSERT INTO `rb_kota` VALUES (100, 19, 'Buru Selatan');
INSERT INTO `rb_kota` VALUES (185, 19, 'Kepulauan Aru');
INSERT INTO `rb_kota` VALUES (258, 19, 'Maluku Barat Daya');
INSERT INTO `rb_kota` VALUES (259, 19, 'Maluku Tengah');
INSERT INTO `rb_kota` VALUES (260, 19, 'Maluku Tenggara');
INSERT INTO `rb_kota` VALUES (261, 19, 'Maluku Tenggara Barat');
INSERT INTO `rb_kota` VALUES (400, 19, 'Seram Bagian Barat');
INSERT INTO `rb_kota` VALUES (401, 19, 'Seram Bagian Timur');
INSERT INTO `rb_kota` VALUES (488, 19, 'Tual');
INSERT INTO `rb_kota` VALUES (138, 20, 'Halmahera Barat');
INSERT INTO `rb_kota` VALUES (139, 20, 'Halmahera Selatan');
INSERT INTO `rb_kota` VALUES (140, 20, 'Halmahera Tengah');
INSERT INTO `rb_kota` VALUES (141, 20, 'Halmahera Timur');
INSERT INTO `rb_kota` VALUES (142, 20, 'Halmahera Utara');
INSERT INTO `rb_kota` VALUES (191, 20, 'Kepulauan Sula');
INSERT INTO `rb_kota` VALUES (372, 20, 'Pulau Morotai');
INSERT INTO `rb_kota` VALUES (477, 20, 'Ternate');
INSERT INTO `rb_kota` VALUES (478, 20, 'Tidore Kepulauan');
INSERT INTO `rb_kota` VALUES (1, 21, 'Aceh Barat');
INSERT INTO `rb_kota` VALUES (2, 21, 'Aceh Barat Daya');
INSERT INTO `rb_kota` VALUES (3, 21, 'Aceh Besar');
INSERT INTO `rb_kota` VALUES (4, 21, 'Aceh Jaya');
INSERT INTO `rb_kota` VALUES (5, 21, 'Aceh Selatan');
INSERT INTO `rb_kota` VALUES (6, 21, 'Aceh Singkil');
INSERT INTO `rb_kota` VALUES (7, 21, 'Aceh Tamiang');
INSERT INTO `rb_kota` VALUES (8, 21, 'Aceh Tengah');
INSERT INTO `rb_kota` VALUES (9, 21, 'Aceh Tenggara');
INSERT INTO `rb_kota` VALUES (10, 21, 'Aceh Timur');
INSERT INTO `rb_kota` VALUES (11, 21, 'Aceh Utara');
INSERT INTO `rb_kota` VALUES (20, 21, 'Banda Aceh');
INSERT INTO `rb_kota` VALUES (59, 21, 'Bener Meriah');
INSERT INTO `rb_kota` VALUES (72, 21, 'Bireuen');
INSERT INTO `rb_kota` VALUES (127, 21, 'Gayo Lues');
INSERT INTO `rb_kota` VALUES (230, 21, 'Langsa');
INSERT INTO `rb_kota` VALUES (235, 21, 'Lhokseumawe');
INSERT INTO `rb_kota` VALUES (300, 21, 'Nagan Raya');
INSERT INTO `rb_kota` VALUES (358, 21, 'Pidie');
INSERT INTO `rb_kota` VALUES (359, 21, 'Pidie Jaya');
INSERT INTO `rb_kota` VALUES (384, 21, 'Sabang');
INSERT INTO `rb_kota` VALUES (414, 21, 'Simeulue');
INSERT INTO `rb_kota` VALUES (429, 21, 'Subulussalam');
INSERT INTO `rb_kota` VALUES (68, 22, 'Bima');
INSERT INTO `rb_kota` VALUES (69, 22, 'Bima');
INSERT INTO `rb_kota` VALUES (118, 22, 'Dompu');
INSERT INTO `rb_kota` VALUES (238, 22, 'Lombok Barat');
INSERT INTO `rb_kota` VALUES (239, 22, 'Lombok Tengah');
INSERT INTO `rb_kota` VALUES (240, 22, 'Lombok Timur');
INSERT INTO `rb_kota` VALUES (241, 22, 'Lombok Utara');
INSERT INTO `rb_kota` VALUES (276, 22, 'Mataram');
INSERT INTO `rb_kota` VALUES (438, 22, 'Sumbawa');
INSERT INTO `rb_kota` VALUES (439, 22, 'Sumbawa Barat');
INSERT INTO `rb_kota` VALUES (13, 23, 'Alor');
INSERT INTO `rb_kota` VALUES (58, 23, 'Belu');
INSERT INTO `rb_kota` VALUES (122, 23, 'Ende');
INSERT INTO `rb_kota` VALUES (125, 23, 'Flores Timur');
INSERT INTO `rb_kota` VALUES (212, 23, 'Kupang');
INSERT INTO `rb_kota` VALUES (213, 23, 'Kupang');
INSERT INTO `rb_kota` VALUES (234, 23, 'Lembata');
INSERT INTO `rb_kota` VALUES (269, 23, 'Manggarai');
INSERT INTO `rb_kota` VALUES (270, 23, 'Manggarai Barat');
INSERT INTO `rb_kota` VALUES (271, 23, 'Manggarai Timur');
INSERT INTO `rb_kota` VALUES (301, 23, 'Nagekeo');
INSERT INTO `rb_kota` VALUES (304, 23, 'Ngada');
INSERT INTO `rb_kota` VALUES (383, 23, 'Rote Ndao');
INSERT INTO `rb_kota` VALUES (385, 23, 'Sabu Raijua');
INSERT INTO `rb_kota` VALUES (412, 23, 'Sikka');
INSERT INTO `rb_kota` VALUES (434, 23, 'Sumba Barat');
INSERT INTO `rb_kota` VALUES (435, 23, 'Sumba Barat Daya');
INSERT INTO `rb_kota` VALUES (436, 23, 'Sumba Tengah');
INSERT INTO `rb_kota` VALUES (437, 23, 'Sumba Timur');
INSERT INTO `rb_kota` VALUES (479, 23, 'Timor Tengah Selatan');
INSERT INTO `rb_kota` VALUES (480, 23, 'Timor Tengah Utara');
INSERT INTO `rb_kota` VALUES (16, 24, 'Asmat');
INSERT INTO `rb_kota` VALUES (67, 24, 'Biak Numfor');
INSERT INTO `rb_kota` VALUES (90, 24, 'Boven Digoel');
INSERT INTO `rb_kota` VALUES (111, 24, 'Deiyai (Deliyai)');
INSERT INTO `rb_kota` VALUES (117, 24, 'Dogiyai');
INSERT INTO `rb_kota` VALUES (150, 24, 'Intan Jaya');
INSERT INTO `rb_kota` VALUES (157, 24, 'Jayapura');
INSERT INTO `rb_kota` VALUES (158, 24, 'Jayapura');
INSERT INTO `rb_kota` VALUES (159, 24, 'Jayawijaya');
INSERT INTO `rb_kota` VALUES (180, 24, 'Keerom');
INSERT INTO `rb_kota` VALUES (193, 24, 'Kepulauan Yapen (Yapen Waropen)');
INSERT INTO `rb_kota` VALUES (231, 24, 'Lanny Jaya');
INSERT INTO `rb_kota` VALUES (263, 24, 'Mamberamo Raya');
INSERT INTO `rb_kota` VALUES (264, 24, 'Mamberamo Tengah');
INSERT INTO `rb_kota` VALUES (274, 24, 'Mappi');
INSERT INTO `rb_kota` VALUES (281, 24, 'Merauke');
INSERT INTO `rb_kota` VALUES (284, 24, 'Mimika');
INSERT INTO `rb_kota` VALUES (299, 24, 'Nabire');
INSERT INTO `rb_kota` VALUES (303, 24, 'Nduga');
INSERT INTO `rb_kota` VALUES (335, 24, 'Paniai');
INSERT INTO `rb_kota` VALUES (347, 24, 'Pegunungan Bintang');
INSERT INTO `rb_kota` VALUES (373, 24, 'Puncak');
INSERT INTO `rb_kota` VALUES (374, 24, 'Puncak Jaya');
INSERT INTO `rb_kota` VALUES (392, 24, 'Sarmi');
INSERT INTO `rb_kota` VALUES (443, 24, 'Supiori');
INSERT INTO `rb_kota` VALUES (484, 24, 'Tolikara');
INSERT INTO `rb_kota` VALUES (495, 24, 'Waropen');
INSERT INTO `rb_kota` VALUES (499, 24, 'Yahukimo');
INSERT INTO `rb_kota` VALUES (500, 24, 'Yalimo');
INSERT INTO `rb_kota` VALUES (124, 25, 'Fakfak');
INSERT INTO `rb_kota` VALUES (165, 25, 'Kaimana');
INSERT INTO `rb_kota` VALUES (272, 25, 'Manokwari');
INSERT INTO `rb_kota` VALUES (273, 25, 'Manokwari Selatan');
INSERT INTO `rb_kota` VALUES (277, 25, 'Maybrat');
INSERT INTO `rb_kota` VALUES (346, 25, 'Pegunungan Arfak');
INSERT INTO `rb_kota` VALUES (378, 25, 'Raja Ampat');
INSERT INTO `rb_kota` VALUES (424, 25, 'Sorong');
INSERT INTO `rb_kota` VALUES (425, 25, 'Sorong');
INSERT INTO `rb_kota` VALUES (426, 25, 'Sorong Selatan');
INSERT INTO `rb_kota` VALUES (449, 25, 'Tambrauw');
INSERT INTO `rb_kota` VALUES (474, 25, 'Teluk Bintuni');
INSERT INTO `rb_kota` VALUES (475, 25, 'Teluk Wondama');
INSERT INTO `rb_kota` VALUES (60, 26, 'Bengkalis');
INSERT INTO `rb_kota` VALUES (120, 26, 'Dumai');
INSERT INTO `rb_kota` VALUES (147, 26, 'Indragiri Hilir');
INSERT INTO `rb_kota` VALUES (148, 26, 'Indragiri Hulu');
INSERT INTO `rb_kota` VALUES (166, 26, 'Kampar');
INSERT INTO `rb_kota` VALUES (187, 26, 'Kepulauan Meranti');
INSERT INTO `rb_kota` VALUES (207, 26, 'Kuantan Singingi');
INSERT INTO `rb_kota` VALUES (350, 26, 'Pekanbaru');
INSERT INTO `rb_kota` VALUES (351, 26, 'Pelalawan');
INSERT INTO `rb_kota` VALUES (381, 26, 'Rokan Hilir');
INSERT INTO `rb_kota` VALUES (382, 26, 'Rokan Hulu');
INSERT INTO `rb_kota` VALUES (406, 26, 'Siak');
INSERT INTO `rb_kota` VALUES (253, 27, 'Majene');
INSERT INTO `rb_kota` VALUES (262, 27, 'Mamasa');
INSERT INTO `rb_kota` VALUES (265, 27, 'Mamuju');
INSERT INTO `rb_kota` VALUES (266, 27, 'Mamuju Utara');
INSERT INTO `rb_kota` VALUES (362, 27, 'Polewali Mandar');
INSERT INTO `rb_kota` VALUES (38, 28, 'Bantaeng');
INSERT INTO `rb_kota` VALUES (47, 28, 'Barru');
INSERT INTO `rb_kota` VALUES (87, 28, 'Bone');
INSERT INTO `rb_kota` VALUES (95, 28, 'Bulukumba');
INSERT INTO `rb_kota` VALUES (123, 28, 'Enrekang');
INSERT INTO `rb_kota` VALUES (132, 28, 'Gowa');
INSERT INTO `rb_kota` VALUES (162, 28, 'Jeneponto');
INSERT INTO `rb_kota` VALUES (244, 28, 'Luwu');
INSERT INTO `rb_kota` VALUES (245, 28, 'Luwu Timur');
INSERT INTO `rb_kota` VALUES (246, 28, 'Luwu Utara');
INSERT INTO `rb_kota` VALUES (254, 28, 'Makassar');
INSERT INTO `rb_kota` VALUES (275, 28, 'Maros');
INSERT INTO `rb_kota` VALUES (328, 28, 'Palopo');
INSERT INTO `rb_kota` VALUES (333, 28, 'Pangkajene Kepulauan');
INSERT INTO `rb_kota` VALUES (336, 28, 'Parepare');
INSERT INTO `rb_kota` VALUES (360, 28, 'Pinrang');
INSERT INTO `rb_kota` VALUES (396, 28, 'Selayar (Kepulauan Selayar)');
INSERT INTO `rb_kota` VALUES (408, 28, 'Sidenreng Rappang/Rapang');
INSERT INTO `rb_kota` VALUES (416, 28, 'Sinjai');
INSERT INTO `rb_kota` VALUES (423, 28, 'Soppeng');
INSERT INTO `rb_kota` VALUES (448, 28, 'Takalar');
INSERT INTO `rb_kota` VALUES (451, 28, 'Tana Toraja');
INSERT INTO `rb_kota` VALUES (486, 28, 'Toraja Utara');
INSERT INTO `rb_kota` VALUES (493, 28, 'Wajo');
INSERT INTO `rb_kota` VALUES (25, 29, 'Banggai');
INSERT INTO `rb_kota` VALUES (26, 29, 'Banggai Kepulauan');
INSERT INTO `rb_kota` VALUES (98, 29, 'Buol');
INSERT INTO `rb_kota` VALUES (119, 29, 'Donggala');
INSERT INTO `rb_kota` VALUES (291, 29, 'Morowali');
INSERT INTO `rb_kota` VALUES (329, 29, 'Palu');
INSERT INTO `rb_kota` VALUES (338, 29, 'Parigi Moutong');
INSERT INTO `rb_kota` VALUES (366, 29, 'Poso');
INSERT INTO `rb_kota` VALUES (410, 29, 'Sigi');
INSERT INTO `rb_kota` VALUES (482, 29, 'Tojo Una-Una');
INSERT INTO `rb_kota` VALUES (483, 29, 'Toli-Toli');
INSERT INTO `rb_kota` VALUES (53, 30, 'Bau-Bau');
INSERT INTO `rb_kota` VALUES (85, 30, 'Bombana');
INSERT INTO `rb_kota` VALUES (101, 30, 'Buton');
INSERT INTO `rb_kota` VALUES (102, 30, 'Buton Utara');
INSERT INTO `rb_kota` VALUES (182, 30, 'Kendari');
INSERT INTO `rb_kota` VALUES (198, 30, 'Kolaka');
INSERT INTO `rb_kota` VALUES (199, 30, 'Kolaka Utara');
INSERT INTO `rb_kota` VALUES (200, 30, 'Konawe');
INSERT INTO `rb_kota` VALUES (201, 30, 'Konawe Selatan');
INSERT INTO `rb_kota` VALUES (202, 30, 'Konawe Utara');
INSERT INTO `rb_kota` VALUES (295, 30, 'Muna');
INSERT INTO `rb_kota` VALUES (494, 30, 'Wakatobi');
INSERT INTO `rb_kota` VALUES (73, 31, 'Bitung');
INSERT INTO `rb_kota` VALUES (81, 31, 'Bolaang Mongondow (Bolmong)');
INSERT INTO `rb_kota` VALUES (82, 31, 'Bolaang Mongondow Selatan');
INSERT INTO `rb_kota` VALUES (83, 31, 'Bolaang Mongondow Timur');
INSERT INTO `rb_kota` VALUES (84, 31, 'Bolaang Mongondow Utara');
INSERT INTO `rb_kota` VALUES (188, 31, 'Kepulauan Sangihe');
INSERT INTO `rb_kota` VALUES (190, 31, 'Kepulauan Siau Tagulandang Biaro (Sitaro)');
INSERT INTO `rb_kota` VALUES (192, 31, 'Kepulauan Talaud');
INSERT INTO `rb_kota` VALUES (204, 31, 'Kotamobagu');
INSERT INTO `rb_kota` VALUES (267, 31, 'Manado');
INSERT INTO `rb_kota` VALUES (285, 31, 'Minahasa');
INSERT INTO `rb_kota` VALUES (286, 31, 'Minahasa Selatan');
INSERT INTO `rb_kota` VALUES (287, 31, 'Minahasa Tenggara');
INSERT INTO `rb_kota` VALUES (288, 31, 'Minahasa Utara');
INSERT INTO `rb_kota` VALUES (485, 31, 'Tomohon');
INSERT INTO `rb_kota` VALUES (12, 32, 'Agam');
INSERT INTO `rb_kota` VALUES (93, 32, 'Bukittinggi');
INSERT INTO `rb_kota` VALUES (116, 32, 'Dharmasraya');
INSERT INTO `rb_kota` VALUES (186, 32, 'Kepulauan Mentawai');
INSERT INTO `rb_kota` VALUES (236, 32, 'Lima Puluh Koto/Kota');
INSERT INTO `rb_kota` VALUES (318, 32, 'Padang');
INSERT INTO `rb_kota` VALUES (321, 32, 'Padang Panjang');
INSERT INTO `rb_kota` VALUES (322, 32, 'Padang Pariaman');
INSERT INTO `rb_kota` VALUES (337, 32, 'Pariaman');
INSERT INTO `rb_kota` VALUES (339, 32, 'Pasaman');
INSERT INTO `rb_kota` VALUES (340, 32, 'Pasaman Barat');
INSERT INTO `rb_kota` VALUES (345, 32, 'Payakumbuh');
INSERT INTO `rb_kota` VALUES (357, 32, 'Pesisir Selatan');
INSERT INTO `rb_kota` VALUES (394, 32, 'Sawah Lunto');
INSERT INTO `rb_kota` VALUES (411, 32, 'Sijunjung (Sawah Lunto Sijunjung)');
INSERT INTO `rb_kota` VALUES (420, 32, 'Solok');
INSERT INTO `rb_kota` VALUES (421, 32, 'Solok');
INSERT INTO `rb_kota` VALUES (422, 32, 'Solok Selatan');
INSERT INTO `rb_kota` VALUES (453, 32, 'Tanah Datar');
INSERT INTO `rb_kota` VALUES (40, 33, 'Banyuasin');
INSERT INTO `rb_kota` VALUES (121, 33, 'Empat Lawang');
INSERT INTO `rb_kota` VALUES (220, 33, 'Lahat');
INSERT INTO `rb_kota` VALUES (242, 33, 'Lubuk Linggau');
INSERT INTO `rb_kota` VALUES (292, 33, 'Muara Enim');
INSERT INTO `rb_kota` VALUES (297, 33, 'Musi Banyuasin');
INSERT INTO `rb_kota` VALUES (298, 33, 'Musi Rawas');
INSERT INTO `rb_kota` VALUES (312, 33, 'Ogan Ilir');
INSERT INTO `rb_kota` VALUES (313, 33, 'Ogan Komering Ilir');
INSERT INTO `rb_kota` VALUES (314, 33, 'Ogan Komering Ulu');
INSERT INTO `rb_kota` VALUES (315, 33, 'Ogan Komering Ulu Selatan');
INSERT INTO `rb_kota` VALUES (316, 33, 'Ogan Komering Ulu Timur');
INSERT INTO `rb_kota` VALUES (324, 33, 'Pagar Alam');
INSERT INTO `rb_kota` VALUES (327, 33, 'Palembang');
INSERT INTO `rb_kota` VALUES (367, 33, 'Prabumulih');
INSERT INTO `rb_kota` VALUES (15, 34, 'Asahan');
INSERT INTO `rb_kota` VALUES (52, 34, 'Batu Bara');
INSERT INTO `rb_kota` VALUES (70, 34, 'Binjai');
INSERT INTO `rb_kota` VALUES (110, 34, 'Dairi');
INSERT INTO `rb_kota` VALUES (112, 34, 'Deli Serdang');
INSERT INTO `rb_kota` VALUES (137, 34, 'Gunungsitoli');
INSERT INTO `rb_kota` VALUES (146, 34, 'Humbang Hasundutan');
INSERT INTO `rb_kota` VALUES (173, 34, 'Karo');
INSERT INTO `rb_kota` VALUES (217, 34, 'Labuhan Batu');
INSERT INTO `rb_kota` VALUES (218, 34, 'Labuhan Batu Selatan');
INSERT INTO `rb_kota` VALUES (219, 34, 'Labuhan Batu Utara');
INSERT INTO `rb_kota` VALUES (229, 34, 'Langkat');
INSERT INTO `rb_kota` VALUES (268, 34, 'Mandailing Natal');
INSERT INTO `rb_kota` VALUES (278, 34, 'Medan');
INSERT INTO `rb_kota` VALUES (307, 34, 'Nias');
INSERT INTO `rb_kota` VALUES (308, 34, 'Nias Barat');
INSERT INTO `rb_kota` VALUES (309, 34, 'Nias Selatan');
INSERT INTO `rb_kota` VALUES (310, 34, 'Nias Utara');
INSERT INTO `rb_kota` VALUES (319, 34, 'Padang Lawas');
INSERT INTO `rb_kota` VALUES (320, 34, 'Padang Lawas Utara');
INSERT INTO `rb_kota` VALUES (323, 34, 'Padang Sidempuan');
INSERT INTO `rb_kota` VALUES (325, 34, 'Pakpak Bharat');
INSERT INTO `rb_kota` VALUES (353, 34, 'Pematang Siantar');
INSERT INTO `rb_kota` VALUES (389, 34, 'Samosir');
INSERT INTO `rb_kota` VALUES (404, 34, 'Serdang Bedagai');
INSERT INTO `rb_kota` VALUES (407, 34, 'Sibolga');
INSERT INTO `rb_kota` VALUES (413, 34, 'Simalungun');
INSERT INTO `rb_kota` VALUES (459, 34, 'Tanjung Balai');
INSERT INTO `rb_kota` VALUES (463, 34, 'Tapanuli Selatan');
INSERT INTO `rb_kota` VALUES (464, 34, 'Tapanuli Tengah');
INSERT INTO `rb_kota` VALUES (465, 34, 'Tapanuli Utara');
INSERT INTO `rb_kota` VALUES (470, 34, 'Tebing Tinggi');
INSERT INTO `rb_kota` VALUES (481, 34, 'Toba Samosir');

-- ----------------------------
-- Table structure for rb_pembelian
-- ----------------------------
DROP TABLE IF EXISTS `rb_pembelian`;
CREATE TABLE `rb_pembelian`  (
  `id_pembelian` int NOT NULL AUTO_INCREMENT,
  `kode_pembelian` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_supplier` int NOT NULL,
  `waktu_beli` datetime NOT NULL,
  PRIMARY KEY (`id_pembelian`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 8 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rb_pembelian
-- ----------------------------
INSERT INTO `rb_pembelian` VALUES (1, 'PO-0001', 1, '2017-05-23 10:13:05');
INSERT INTO `rb_pembelian` VALUES (2, 'PO-0002', 2, '2017-05-24 07:05:11');
INSERT INTO `rb_pembelian` VALUES (3, 'PO-0003', 1, '2017-05-27 14:58:50');
INSERT INTO `rb_pembelian` VALUES (5, 'PO-0004', 1, '2017-05-30 09:30:02');
INSERT INTO `rb_pembelian` VALUES (6, 'PO-0005', 1, '2017-06-01 10:29:39');
INSERT INTO `rb_pembelian` VALUES (7, 'PO-00011', 1, '2018-03-03 17:21:47');

-- ----------------------------
-- Table structure for rb_pembelian_detail
-- ----------------------------
DROP TABLE IF EXISTS `rb_pembelian_detail`;
CREATE TABLE `rb_pembelian_detail`  (
  `id_pembelian_detail` int NOT NULL AUTO_INCREMENT,
  `id_pembelian` int NOT NULL,
  `id_produk` int NOT NULL,
  `harga_pesan` int NOT NULL,
  `jumlah_pesan` int NOT NULL,
  `satuan` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_pembelian_detail`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 25 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rb_pembelian_detail
-- ----------------------------
INSERT INTO `rb_pembelian_detail` VALUES (1, 1, 1, 260000, 100, 'pcs');
INSERT INTO `rb_pembelian_detail` VALUES (2, 1, 2, 455000, 150, 'pcs');
INSERT INTO `rb_pembelian_detail` VALUES (3, 2, 1, 255000, 235, 'pcs');
INSERT INTO `rb_pembelian_detail` VALUES (5, 2, 2, 3000000, 58, 'pcs');
INSERT INTO `rb_pembelian_detail` VALUES (9, 3, 1, 600000, 3, 'pcs');
INSERT INTO `rb_pembelian_detail` VALUES (7, 3, 2, 3000000, 43, 'pcs');
INSERT INTO `rb_pembelian_detail` VALUES (12, 5, 6, 320000, 25, 'unit');
INSERT INTO `rb_pembelian_detail` VALUES (13, 5, 5, 6990000, 10, 'unit');
INSERT INTO `rb_pembelian_detail` VALUES (14, 5, 4, 1000000, 45, 'unit');
INSERT INTO `rb_pembelian_detail` VALUES (16, 6, 13, 45900, 16, 'pcs');
INSERT INTO `rb_pembelian_detail` VALUES (17, 6, 12, 490000, 12, 'unit');
INSERT INTO `rb_pembelian_detail` VALUES (18, 6, 11, 8299000, 10, 'pcs');
INSERT INTO `rb_pembelian_detail` VALUES (19, 6, 9, 584000, 15, 'unit');
INSERT INTO `rb_pembelian_detail` VALUES (20, 6, 8, 275000, 6, 'unit');
INSERT INTO `rb_pembelian_detail` VALUES (21, 6, 7, 879000, 11, 'unit');
INSERT INTO `rb_pembelian_detail` VALUES (22, 6, 3, 14998000, 1, 'unit');
INSERT INTO `rb_pembelian_detail` VALUES (23, 7, 1, 60000, 2, 'pcs');
INSERT INTO `rb_pembelian_detail` VALUES (24, 7, 2, 340000, 4, 'pcs');

-- ----------------------------
-- Table structure for rb_penjualan
-- ----------------------------
DROP TABLE IF EXISTS `rb_penjualan`;
CREATE TABLE `rb_penjualan`  (
  `id_penjualan` int NOT NULL AUTO_INCREMENT,
  `kode_transaksi` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_pembeli` int NOT NULL,
  `diskon` int NOT NULL,
  `kurir` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `service` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ongkir` int NOT NULL,
  `waktu_transaksi` datetime NOT NULL,
  `proses` enum('0','1','2','3') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_penjualan`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 10 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rb_penjualan
-- ----------------------------
INSERT INTO `rb_penjualan` VALUES (1, 'TRX-20180303140923', 1, 0, 'pos', 'Paket Kilat Khusus', 69000, '2018-03-03 14:10:31', '3');
INSERT INTO `rb_penjualan` VALUES (2, 'TRX-20180303141906', 1, 40000, 'pos', 'Paket Kilat Khusus', 153000, '2018-03-03 14:19:39', '2');
INSERT INTO `rb_penjualan` VALUES (3, 'TRX-20180303151108', 1, 20000, 'jne', 'OKE', 141000, '2018-03-03 15:11:31', '1');
INSERT INTO `rb_penjualan` VALUES (4, 'TRX-20180303165756', 1, 0, 'pos', 'Paket Kilat Khusus', 69000, '2018-03-03 16:58:20', '0');
INSERT INTO `rb_penjualan` VALUES (5, 'TRX-20180303171340', 26, 20000, 'pos', 'Paket Kilat Khusus', 47500, '2018-03-03 17:15:52', '0');
INSERT INTO `rb_penjualan` VALUES (6, 'TRX-20180304111742', 1, 0, 'jne', 'OKE', 141000, '2018-03-04 11:19:32', '0');
INSERT INTO `rb_penjualan` VALUES (7, 'TRX-20180305130337', 3, 20000, 'jne', 'OKE', 141000, '2018-03-05 13:23:56', '0');
INSERT INTO `rb_penjualan` VALUES (8, 'TRX-20180307062229', 1, 0, 'jne', 'REG', 86000, '2018-03-07 06:22:36', '0');
INSERT INTO `rb_penjualan` VALUES (9, 'TRX-20180418084807', 29, 0, 'pos', 'Paketpos Biasa', 10000, '2018-04-18 08:49:17', '0');

-- ----------------------------
-- Table structure for rb_penjualan_detail
-- ----------------------------
DROP TABLE IF EXISTS `rb_penjualan_detail`;
CREATE TABLE `rb_penjualan_detail`  (
  `id_penjualan_detail` int NOT NULL AUTO_INCREMENT,
  `id_penjualan` int NOT NULL,
  `id_produk` int NOT NULL,
  `jumlah` int NOT NULL,
  `harga_jual` int NOT NULL,
  `satuan` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_penjualan_detail`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 17 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rb_penjualan_detail
-- ----------------------------
INSERT INTO `rb_penjualan_detail` VALUES (1, 1, 4, 1, 129900, 'unit');
INSERT INTO `rb_penjualan_detail` VALUES (2, 1, 13, 1, 65000, 'pcs');
INSERT INTO `rb_penjualan_detail` VALUES (3, 2, 6, 1, 75000, 'unit');
INSERT INTO `rb_penjualan_detail` VALUES (4, 2, 7, 1, 99000, 'unit');
INSERT INTO `rb_penjualan_detail` VALUES (5, 2, 12, 2, 65000, 'unit');
INSERT INTO `rb_penjualan_detail` VALUES (6, 3, 3, 1, 169980, 'unit');
INSERT INTO `rb_penjualan_detail` VALUES (7, 3, 12, 1, 65000, 'unit');
INSERT INTO `rb_penjualan_detail` VALUES (8, 4, 13, 1, 65000, 'pcs');
INSERT INTO `rb_penjualan_detail` VALUES (9, 5, 12, 1, 65000, 'unit');
INSERT INTO `rb_penjualan_detail` VALUES (10, 5, 4, 1, 129900, 'unit');
INSERT INTO `rb_penjualan_detail` VALUES (11, 6, 6, 1, 75000, 'unit');
INSERT INTO `rb_penjualan_detail` VALUES (12, 6, 2, 1, 350000, 'pcs');
INSERT INTO `rb_penjualan_detail` VALUES (13, 7, 12, 1, 65000, 'unit');
INSERT INTO `rb_penjualan_detail` VALUES (14, 7, 11, 1, 89000, 'pcs');
INSERT INTO `rb_penjualan_detail` VALUES (15, 8, 13, 1, 65000, 'pcs');
INSERT INTO `rb_penjualan_detail` VALUES (16, 9, 9, 1, 9000000, 'unit');

-- ----------------------------
-- Table structure for rb_penjualan_temp
-- ----------------------------
DROP TABLE IF EXISTS `rb_penjualan_temp`;
CREATE TABLE `rb_penjualan_temp`  (
  `id_penjualan_detail` int NOT NULL AUTO_INCREMENT,
  `session` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_produk` int NOT NULL,
  `jumlah` int NOT NULL,
  `harga_jual` int NOT NULL,
  `satuan` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `waktu_order` datetime NOT NULL,
  PRIMARY KEY (`id_penjualan_detail`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rb_penjualan_temp
-- ----------------------------
INSERT INTO `rb_penjualan_temp` VALUES (1, 'TRX-20180318224327', 13, 1, 65000, 'pcs', '2018-03-18 22:43:27');
INSERT INTO `rb_penjualan_temp` VALUES (2, 'TRX-20180318224649', 2, 1, 350000, 'pcs', '2018-03-18 22:46:49');
INSERT INTO `rb_penjualan_temp` VALUES (3, 'TRX-20180318231226', 12, 1, 65000, 'unit', '2018-03-18 23:12:26');
INSERT INTO `rb_penjualan_temp` VALUES (4, 'TRX-20180417202703', 13, 1, 65000, 'pcs', '2018-04-17 20:27:03');

-- ----------------------------
-- Table structure for rb_produk
-- ----------------------------
DROP TABLE IF EXISTS `rb_produk`;
CREATE TABLE `rb_produk`  (
  `id_produk` int NOT NULL AUTO_INCREMENT,
  `id_kategori_produk` int NOT NULL,
  `nama_produk` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `produk_seo` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `satuan` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `harga_beli` int NOT NULL,
  `harga_reseller` int NOT NULL,
  `harga_konsumen` int NOT NULL,
  `berat` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `diskon` int NOT NULL,
  `gambar` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `keterangan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `waktu_input` datetime NOT NULL,
  PRIMARY KEY (`id_produk`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 17 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rb_produk
-- ----------------------------
INSERT INTO `rb_produk` VALUES (1, 1, 'Segitiga Instan Aira- AA94.9 Tropical Blue', 'segitiga-instan-aira-aa94-9-tropical-blue', 'pcs', 60000, 65000, 70000, '300', 0, 'RYB6_1_Grey_grande.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec scelerisque condimentum mattis. Suspendisse potenti. Proin vitae elementum nisi. Aliquam eu pretium risus. Nam varius efficitur consectetur. Aenean vestibulum felis sed mollis faucibus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin venenatis est sit amet eleifend vehicula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer id nunc eu odio ultrices pulvinar non feugiat felis. Duis consequat urna sapien, porta gravida diam venenatis at. Duis at ornare enim, ac accumsan eros. Sed in finibus metus. Etiam blandit tristique orci, sit amet congue dui facilisis id. Donec fermentum diam at orci viverra placerat. Sed nunc lorem, cursus nec vestibulum hendrerit, tempus et libero.</p>\n\n<p>Donec consequat lacinia fringilla. Proin dapibus justo at elit iaculis, eu rutrum velit dapibus. Phasellus nec augue vel nisl sagittis malesuada vel vel orci. In in euismod massa. Praesent vel blandit arcu. Maecenas eleifend dui in est rhoncus, mattis sollicitudin augue semper. Donec a lectus rhoncus, ornare nunc rutrum, egestas arcu. Aenean dapibus urna non nisl dignissim volutpat.</p>\n', 'admin', '2017-05-23 17:04:25');
INSERT INTO `rb_produk` VALUES (2, 6, 'TRAINER MESIN DIESEL MULTISILINDER (CUTAWAY)', 'trainer-mesin-diesel-multisilinder-cutaway', 'unit', 25000000, 28000000, 30000000, '6000', 0, 'trainermesindieselmultisilindercutaway.jpg', '<p style=\"text-align:justify\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\">Untuk mengidentifikasi Konstruksi, system kerja dan komponen-komponen kendaraan, dan mencari kerusakan dalam mesin dan juga sangat berguna untuk alat peraga di dalam kelas. Pemotongan mesin dilakukan dengan sangat hati-hati untuk memperlihatkan bagian dalam mesin secara detail. Seluruh komponen yang terlihat pada blok mesin akan terlihat dengan jelas. Motor stater, water pump, thermostat dan filter oli.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\">Ketika peragaan pengoperasian mesin, seluruh komponen pada mesin akan terlihat dengan jelas begitu juga dengan cara kerjanya. Trainer ini beri warna yang merupakan sebuah kode untuk memudahkan sebuah identifikasi.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\">Mesin ini bisa diputar dengan tangan atau motor elektrik yang putarannya bisa di reduksi sehingga kecepatannya lebih aman. </span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\">Isi dari komponen :</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\">Fungsi dan cara kerja mesin diesel, system bahan bakar, pelumasan, mekanik dan pengenalan komponen.</span></p>\r\n', 'admin', '2017-05-23 17:10:17');
INSERT INTO `rb_produk` VALUES (3, 6, 'TRAINER MESIN BENSIN HIDUP MULTI SILINDER (EFI)', 'trainer-mesin-bensin-hidup-multi-silinder-efi', 'unit', 17000000, 18000000, 35000000, '6000', 0, 'trainermesinbensinhidupmultisilinderefi.jpg', '<p style=\"text-align:justify\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\">Untuk mengidentifikasi Konstruksi, system kerja dan komponen kendaraan, latihan diagnosa bongkar pasang, tes system bahan bakar Dan mesin ini cocok untuk mengajar cara mengoperasikan mesin, pemecahan masalah dan mencari kerusakan. Trainer ini sangat sederhana jadi ini bisa mewakali seluruh kerja mesin 4 silinder, dan 6 silinder termasuk 3 silinder. Mesin trainer ini dilengkapi dengan panel control yang bagus, kondisi mesin yang yang telah diperbaiki ulang dengan dudukan mesin yang kuat dan sudah diwarnai.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\">Paket yang ditawarkan: Prinsip dasar cara kerja mesin EFI (elektronik fuel injection), skema bahan bakar, control pompa bahan bakar, tekanan bahan bakar, pemerikasaan injeksi pada saat mesin dingin, pengoperasian injeksi, isi injeksi, komponen-komponen pada saat mesin dingin, pemeriksaan dasar mesin, pemeriksaan dasar sistem injeksi pada bahan bakar bensin, pemecahan masalah pada mesin mati, start yang sulit, putaran mesin yang kasar, perbandingan udara dan bahan bakar yang salah, mesin yang mati sehingga tidak bisa melakukan pekerjaan seperti menguji baterai,system stater, tekanan dalam silinder dan kecepatan stabil.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\">Trainer ini sangat berguna untuk pelatihan dasar otomotif mekanik senior dan keterampilan pengawas. </span></p>\r\n', 'admin', '2017-05-30 06:47:14');
INSERT INTO `rb_produk` VALUES (4, 6, 'TRAINER MESIN SEPEDA MOTOR HIDUP  ', 'trainer-mesin-sepeda-motor-hidup--', 'unit', 7500000, 8000000, 9500000, '5000', 0, 'trainermesinsepedamotorhidup.jpg', '<p style=\"text-align:justify\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\">Untuk mengidentifikasi konstrruksi, fungsi, system kerja, dan komponen-komponen sepeda motordan juga latihan diagnosa, perakitan inspeksi, pengukuran, system dan tes komponen.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\">Bentuk dari trainer ini sangat ideal untuk mengajar cara penggunaan, mencari kerusakan dan pemacahan masalah.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\">Paket yang ditawarkan : proses pengapian, bentuk dari ruang bakar, system bahan bakar, tangki bahan bakar system pengapain, filter bahan bakar, koil, mencari kerusakan dan memperbaiki kerusakan.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\">Trainer sangat cocok unutk pelatihan cara tune up sepeda motor 2 langkah.</span></p>\r\n', 'admin', '2017-05-30 06:53:10');
INSERT INTO `rb_produk` VALUES (5, 5, 'Mesin Penyerut Rotan', 'mesin-penyerut-rotan', 'unit', 14000000, 15000000, 17000000, '5000', 0, 'mesinpenyerutrotan.jpg', '<p><strong><span style=\"font-size:12.0pt\">Mesin</span></strong><strong> </strong><strong><span style=\"font-size:12.0pt\">Penyerut Rotan </span></strong><span style=\"font-size:12.0pt\">di rancang untuk para perajin anyaman rotan dan bambu. Dengan alat ini proses serutan bahan dasar rotan dan bambu dapat di kerjakan dengan cepat dan efisien. </span></p>\r\n', 'admin', '2017-05-30 06:56:24');
INSERT INTO `rb_produk` VALUES (6, 5, 'Mesin Pengepres dan Perajang Daun Tembakau', 'mesin-pengepres-dan-perajang-daun-tembakau', 'unit', 5500000, 6500000, 7000000, '1300', 0, 'mesinpengepresdanperajangdauntembakau.jpg', '<p>Mesin Pengepres dan Perajang Daun Tembakau di rancang dengan menggabungkan 2 alat yaitu: alat pengepres dari dua poros yang berhimpitan dan perajang daun tembakau. Dengan bentuk yang ramping dan menarik alat ini merupakan pilihan dari petani tembakau yang bisa meningkatkan kapasitas produksi paska panen</p>\r\n', 'admin', '2017-05-30 06:57:11');
INSERT INTO `rb_produk` VALUES (7, 5, 'Mesin Pembuat Adonan Makanan Dodol', 'mesin-pembuat-adonan-makanan-dodol', 'unit', 12000000, 13000000, 14000000, '600', 0, 'mesinpembuatadonanmakanandodol.jpg', '<p><span style=\"font-size:12.0pt\">Mesin</span> <span style=\"font-size:12.0pt\">Pembuat Adonan Makanan Dodol di rancang untuk kecepatan dan fleksibilitas dari adonan dodol yang akan di buat. Hal ini di butuhkan untuk efisien dan nilai ekonomi yang tinggi.</span></p>\r\n', 'admin', '2017-05-30 09:52:58');
INSERT INTO `rb_produk` VALUES (8, 5, 'Mesin Dryer Peniris Minyak Makanan', 'mesin-dryer-peniris-minyak-makanan', 'unit', 6500000, 7500000, 8000000, '2500', 0, 'mesindryerpenirisminyakmakanan.jpg', '<p><span style=\"font-size:12.0pt\">Mesin</span> <span style=\"font-size:12.0pt\">Dryer Peniris Minyak Makanan di rancang dengan mengontrol putaran dari silinder tempat makanan yang akan di keringkan. Hal ini di maksudkan untuk makanan yang bertekstur lunak dan keras dapat di atur kecepatan putaranya supaya tidak rusak.</span></p>\r\n', 'admin', '2017-05-30 09:55:04');
INSERT INTO `rb_produk` VALUES (9, 5, 'Mesin Pembuat Pelet Makanan Ternak dan Ikan', 'mesin-pembuat-pelet-makanan-ternak-dan-ikan', 'unit', 7500000, 8500000, 9000000, '2500', 0, 'mesinpembuatpeletmakananternakdanikan.jpg', '<p style=\"margin-left:56.7pt; text-align:justify\"><span style=\"font-size:12.0pt\">Mesin</span> <span style=\"font-size:12.0pt\">Pembuat Pelet Makanan Ternak dan Ikan di rancang dengan menggabungkan 2 alat yaitu: alat penghancur sekam padi dan pembuat pelet. Yang paling menarik dari alat ini adalah bahan baku pelet yang berasal dari sekam padi, karena sekam padi sangat melimpah tersedia di sekitar kita dan murah&nbsp; sehingga sangat menarik untuk meningkatkan nilai ekonomisnya.</span></p>\r\n\r\n<p style=\"margin-left:56.7pt; text-align:justify\"><span style=\"font-size:12.0pt\">Mesin ini juga sangat praktis yang mendekati portabel untuk mobilisasi yang sangat tinggi.</span></p>\r\n', 'admin', '2017-05-30 09:58:43');
INSERT INTO `rb_produk` VALUES (10, 5, 'Mesin Pembuat Pembuat Krupuk Krispy All in.', 'mesin-pembuat-pembuat-krupuk-krispy-all-in', 'pcs', 8000000, 9000000, 10000000, '1500', 0, 'mesinpembuatkrupukkrispyallinone.jpg', '<p><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Mesin</span></span> <span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Pembuat Pembuat Krupuk Krispy di rancang dengan menggabungkan mengaduk dan memasak bahan bakunya menjadi satu Mesin. Hal ini di lakukan untuk meminimalisir tempat yang ada dan dapat melakukan aktivitas pembuatan kerupuk pada satu tempat sehingga lebih efisien.</span></span></p>\r\n', 'admin', '2017-05-30 10:02:14');
INSERT INTO `rb_produk` VALUES (11, 6, 'TRAINER MESIN DIESEL HIDUP MULTI SILNDER', 'trainer-mesin-diesel-hidup-multi-silnder', 'unit', 10000000, 11000000, 12999999, '3500', 0, 'trainermesinbensinhidupmultisilinder.jpg', '<p style=\"text-align:justify\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\">Untuk mengidentifikasi Konstruksi, system kerja dan komponen kendaraan, latihan diagnosa bongkar pasang, tes system bahan bakar Dan mesin ini cocok untuk mengajar cara mengoperasikan mesin, pemecahan masalah dan mencari kerusakan</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\">Trainer ini sangat sederhana jadi ini bisa mewakali seluruh kerja mesin 4 silinder, dan 6 silinder termasuk 3 silinder.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\">Mesin trainer ini dilengkapi dengan panel control yang bagus, kondisi mesin yang yang telah diperbaiki ulang dengan dudukan mesin yang kuat dan sudah diwarnai.</span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\">Paket yang ditawarkan: proses pembakaran, Tipe ruang bakar, system pengapian, system bahan bakar, tangki bahan bakar, distributor, koil, pengukuran sudut pengapian, pemecahan masalah(trouble shooting)dan mencari kerusakan.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\">Trainer ini sangat berguna untuk pelatihan dasar otomotif</span></p>\r\n', 'admin', '2017-05-30 10:03:47');
INSERT INTO `rb_produk` VALUES (12, 6, 'TRAINER MESIN BENSIN HIDUP MULTI SILNDER', 'trainer-mesin-bensin-hidup-multi-silnder', 'unit', 12000000, 13000000, 14000000, '3600', 20000, 'trainermesindieselhidupmultisilinder.jpg', '<p style=\"text-align:justify\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\">Untuk mengidentifikasi Konstruksi, system kerja dan komponen kendaraan, latihan diagnosa bongkar pasang, tes system bahan bakar Dan mesin ini cocok untuk mengajar cara mengoperasikan mesin, pemecahan masalah dan mencari kerusakan.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\">Trainer ini sangat sederhana jadi ini bisa mewakali seluruh kerja mesin 4 silinder, dan 6 silinder termasuk 3 silinder.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\">Mesin trainer ini dilengkapi dengan panel control yang bagus, kondisi mesin yang yang telah diperbaiki ulang dengan dudukan mesin yang kuat dan sudah diwarnai.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\">Paket yang ditawarkan: proses pembakaran, Tipe ruang bakar, system pengapian, system bahan bakar, tangki bahan bakar, distributor, koil, pengukuran sudut pengapian, pemecahan masalah(trouble shooting)dan mencari kerusakan.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\">Trainer ini sangat berguna untuk pelatihan dasar otomotif</span></p>\r\n', 'admin', '2017-05-30 10:06:33');
INSERT INTO `rb_produk` VALUES (13, 6, 'CAR TRAINING STAND', 'car-training-stand', 'pcs', 10000000, 11000000, 12000000, '30000', 0, 'cartrainingstand.jpg', '<p style=\"text-align:justify\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\">Untuk mengidentifikasi konstruksi, system kerja dan komponen &ndash; komponen kendaraan. Dan juga berguna untuk latihan diagnosis, perakitan, mengetes system pada kendaraan dan komponen &ndash; komponen kendaraan.Mesin mobil bensin hidup tanpa bodi ini disajikan dengan bagus dan sudah diwarnai.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\">Paket yang ditawarkan meliputi berikut ini : Proses pengapian, Tipe ruang bakar, system bahan bakar, tangki bahan bakar, filter bahan bakar, system pengapian, system kerangka, trouble shooting ( pemecahan masalah)</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\">Trainer ini sangat cocok untuk kompetensi:</span></p>\r\n\r\n<ul style=\"list-style-type:square\">\r\n	<li style=\"text-align:justify\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\">Otomotif dasar (mekanik junior)</span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\">Teknologi otomotif yang lebih tinggi (mekanik II, III, dan supervisor)</span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\">Mekanik secara umum</span></li>\r\n</ul>\r\n', 'admin', '2017-05-30 10:10:37');

-- ----------------------------
-- Table structure for rb_provinsi
-- ----------------------------
DROP TABLE IF EXISTS `rb_provinsi`;
CREATE TABLE `rb_provinsi`  (
  `provinsi_id` int NOT NULL AUTO_INCREMENT,
  `nama_provinsi` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`provinsi_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 35 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rb_provinsi
-- ----------------------------
INSERT INTO `rb_provinsi` VALUES (1, 'Bali');
INSERT INTO `rb_provinsi` VALUES (2, 'Bangka Belitung');
INSERT INTO `rb_provinsi` VALUES (3, 'Banten');
INSERT INTO `rb_provinsi` VALUES (4, 'Bengkulu');
INSERT INTO `rb_provinsi` VALUES (5, 'DI Yogyakarta');
INSERT INTO `rb_provinsi` VALUES (6, 'DKI Jakarta');
INSERT INTO `rb_provinsi` VALUES (7, 'Gorontalo');
INSERT INTO `rb_provinsi` VALUES (8, 'Jambi');
INSERT INTO `rb_provinsi` VALUES (9, 'Jawa Barat');
INSERT INTO `rb_provinsi` VALUES (10, 'Jawa Tengah');
INSERT INTO `rb_provinsi` VALUES (11, 'Jawa Timur');
INSERT INTO `rb_provinsi` VALUES (12, 'Kalimantan Barat');
INSERT INTO `rb_provinsi` VALUES (13, 'Kalimantan Selatan');
INSERT INTO `rb_provinsi` VALUES (14, 'Kalimantan Tengah');
INSERT INTO `rb_provinsi` VALUES (15, 'Kalimantan Timur');
INSERT INTO `rb_provinsi` VALUES (16, 'Kalimantan Utara');
INSERT INTO `rb_provinsi` VALUES (17, 'Kepulauan Riau');
INSERT INTO `rb_provinsi` VALUES (18, 'Lampung');
INSERT INTO `rb_provinsi` VALUES (19, 'Maluku');
INSERT INTO `rb_provinsi` VALUES (20, 'Maluku Utara');
INSERT INTO `rb_provinsi` VALUES (21, 'Nanggroe Aceh Darussalam (NAD)');
INSERT INTO `rb_provinsi` VALUES (22, 'Nusa Tenggara Barat (NTB)');
INSERT INTO `rb_provinsi` VALUES (23, 'Nusa Tenggara Timur (NTT)');
INSERT INTO `rb_provinsi` VALUES (24, 'Papua');
INSERT INTO `rb_provinsi` VALUES (25, 'Papua Barat');
INSERT INTO `rb_provinsi` VALUES (26, 'Riau');
INSERT INTO `rb_provinsi` VALUES (27, 'Sulawesi Barat');
INSERT INTO `rb_provinsi` VALUES (28, 'Sulawesi Selatan');
INSERT INTO `rb_provinsi` VALUES (29, 'Sulawesi Tengah');
INSERT INTO `rb_provinsi` VALUES (30, 'Sulawesi Tenggara');
INSERT INTO `rb_provinsi` VALUES (31, 'Sulawesi Utara');
INSERT INTO `rb_provinsi` VALUES (32, 'Sumatera Barat');
INSERT INTO `rb_provinsi` VALUES (33, 'Sumatera Selatan');
INSERT INTO `rb_provinsi` VALUES (34, 'Sumatera Utara');

-- ----------------------------
-- Table structure for rb_rekening
-- ----------------------------
DROP TABLE IF EXISTS `rb_rekening`;
CREATE TABLE `rb_rekening`  (
  `id_rekening` int NOT NULL AUTO_INCREMENT,
  `nama_bank` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `no_rekening` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pemilik_rekening` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_rekening`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rb_rekening
-- ----------------------------
INSERT INTO `rb_rekening` VALUES (1, 'BRI', '547601016142539', 'ROBBY PRIHANDAYA');
INSERT INTO `rb_rekening` VALUES (2, 'BCA', '0320943647', 'ROBBY PRIHANDAYA');

-- ----------------------------
-- Table structure for rb_supplier
-- ----------------------------
DROP TABLE IF EXISTS `rb_supplier`;
CREATE TABLE `rb_supplier`  (
  `id_supplier` int NOT NULL AUTO_INCREMENT,
  `nama_supplier` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `kontak_person` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `alamat_lengkap` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `no_hp` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `alamat_email` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `kode_pos` int NOT NULL,
  `no_telpon` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `fax` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `katerangan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_supplier`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rb_supplier
-- ----------------------------
INSERT INTO `rb_supplier` VALUES (1, 'PT. Elektronik Jaya Abadi', 'Muhammad Arsen', 'Jl. Siti Nurbayara, No 23 D, Tunggul Hitam, Padang', '082173054522', 'jaya.abadi@gmail.com', 56123, '0751461692', '0751461691', 'Tidak ada keterangan,..');
INSERT INTO `rb_supplier` VALUES (2, 'PT. Muda Hardware Sejahtera', 'Saiful Tanjung', 'Jl. Persada Ramayana, Ulak Karang, Padang', '098912334566', 'hardware.sejahtera@gmail.com', 87632, '075165321', '075165312', 'Tidak ada keterangan,..');
INSERT INTO `rb_supplier` VALUES (3, 'PT. Kereta Kencana', 'Arsenio Orlando', 'Jl. Linggar Jati, No 345, Koto Tangah, padang', '82173054486', 'kereta.kencana@gmail.com', 34587, '0751461692', '0751461693', 'Tidak ada keterangan,..');

-- ----------------------------
-- Table structure for slide
-- ----------------------------
DROP TABLE IF EXISTS `slide`;
CREATE TABLE `slide`  (
  `id_slide` int NOT NULL AUTO_INCREMENT,
  `keterangan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `gambar` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `waktu` datetime NOT NULL,
  PRIMARY KEY (`id_slide`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of slide
-- ----------------------------
INSERT INTO `slide` VALUES (1, 'TRAINER MESIN SEPEDA MOTOR HIDUP  ', 'trainermesinsepedamotorhidup.jpg', '2016-05-13 08:09:18');
INSERT INTO `slide` VALUES (2, 'TRAINER MESIN BENSIN HIDUP MULTI SILNDER', 'trainermesinbensinhidupmultisilinder.jpg', '2016-05-13 08:10:18');
INSERT INTO `slide` VALUES (4, 'CAR TRAINING STAND', 'cartrainingstand.jpg', '2018-02-18 00:42:22');

-- ----------------------------
-- Table structure for statistik
-- ----------------------------
DROP TABLE IF EXISTS `statistik`;
CREATE TABLE `statistik`  (
  `ip` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `tanggal` date NOT NULL,
  `hits` int NOT NULL DEFAULT 1,
  `online` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of statistik
-- ----------------------------
INSERT INTO `statistik` VALUES ('223.255.231.148', '2014-05-06', 1, '1399357334');
INSERT INTO `statistik` VALUES ('223.255.231.147', '2014-05-15', 3, '1400119147');
INSERT INTO `statistik` VALUES ('223.255.224.73', '2014-05-15', 12, '1400123797');
INSERT INTO `statistik` VALUES ('223.255.224.69', '2014-05-16', 2, '1400215103');
INSERT INTO `statistik` VALUES ('118.96.51.231', '2014-05-16', 19, '1400233044');
INSERT INTO `statistik` VALUES ('223.255.231.146', '2014-05-16', 2, '1400228049');
INSERT INTO `statistik` VALUES ('::1', '2014-06-20', 2, '1403230579');
INSERT INTO `statistik` VALUES ('::1', '2014-06-22', 8, '1403436591');
INSERT INTO `statistik` VALUES ('223.255.231.154', '2014-06-26', 1, '1403739948');
INSERT INTO `statistik` VALUES ('223.255.231.148', '2014-06-26', 6, '1403745715');
INSERT INTO `statistik` VALUES ('223.255.224.74', '2014-06-26', 1, '1403748060');
INSERT INTO `statistik` VALUES ('223.255.224.69', '2014-06-26', 1, '1403753239');
INSERT INTO `statistik` VALUES ('223.255.224.77', '2014-06-29', 1, '1404039342');
INSERT INTO `statistik` VALUES ('::1', '2014-07-02', 6, '1404277263');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2014-07-17', 2, '1405582494');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2014-07-21', 1, '1405929828');
INSERT INTO `statistik` VALUES ('36.76.60.43', '2014-07-21', 1, '1405951864');
INSERT INTO `statistik` VALUES ('223.255.231.154', '2014-07-21', 2, '1405957200');
INSERT INTO `statistik` VALUES ('223.255.227.21', '2014-07-22', 1, '1405995171');
INSERT INTO `statistik` VALUES ('223.255.231.146', '2014-07-22', 1, '1405997152');
INSERT INTO `statistik` VALUES ('223.255.227.21', '2014-07-23', 1, '1406100212');
INSERT INTO `statistik` VALUES ('223.255.227.17', '2014-07-23', 1, '1406104552');
INSERT INTO `statistik` VALUES ('223.255.227.23', '2014-07-24', 1, '1406168095');
INSERT INTO `statistik` VALUES ('223.255.231.153', '2014-07-24', 1, '1406204439');
INSERT INTO `statistik` VALUES ('223.255.231.146', '2014-07-25', 1, '1406268985');
INSERT INTO `statistik` VALUES ('180.76.5.193', '2014-08-06', 1, '1407302738');
INSERT INTO `statistik` VALUES ('180.76.5.23', '2014-08-06', 1, '1407304739');
INSERT INTO `statistik` VALUES ('202.67.36.241', '2014-08-06', 1, '1407305643');
INSERT INTO `statistik` VALUES ('198.148.27.22', '2014-08-06', 1, '1407306703');
INSERT INTO `statistik` VALUES ('180.251.170.42', '2014-08-06', 7, '1407310167');
INSERT INTO `statistik` VALUES ('128.199.171.191', '2014-08-06', 3, '1407323435');
INSERT INTO `statistik` VALUES ('223.255.231.149', '2014-08-06', 2, '1407309879');
INSERT INTO `statistik` VALUES ('223.255.227.28', '2014-08-06', 8, '1407311801');
INSERT INTO `statistik` VALUES ('103.24.49.242', '2014-08-06', 1, '1407312326');
INSERT INTO `statistik` VALUES ('223.255.231.146', '2014-08-06', 1, '1407313297');
INSERT INTO `statistik` VALUES ('180.214.233.34', '2014-08-06', 1, '1407321063');
INSERT INTO `statistik` VALUES ('66.249.77.87', '2014-08-06', 1, '1407323509');
INSERT INTO `statistik` VALUES ('223.255.227.30', '2014-08-06', 1, '1407325862');
INSERT INTO `statistik` VALUES ('180.254.207.13', '2014-08-06', 5, '1407330687');
INSERT INTO `statistik` VALUES ('114.79.13.199', '2014-08-06', 1, '1407336900');
INSERT INTO `statistik` VALUES ('202.152.199.34', '2014-08-06', 7, '1407337100');
INSERT INTO `statistik` VALUES ('180.76.6.21', '2014-08-07', 1, '1407347753');
INSERT INTO `statistik` VALUES ('114.79.13.55', '2014-08-07', 3, '1407354277');
INSERT INTO `statistik` VALUES ('114.125.41.136', '2014-08-07', 1, '1407352625');
INSERT INTO `statistik` VALUES ('180.76.6.147', '2014-08-07', 1, '1407355344');
INSERT INTO `statistik` VALUES ('180.76.6.64', '2014-08-07', 1, '1407367237');
INSERT INTO `statistik` VALUES ('69.171.247.116', '2014-08-07', 1, '1407379834');
INSERT INTO `statistik` VALUES ('69.171.247.119', '2014-08-07', 1, '1407379834');
INSERT INTO `statistik` VALUES ('69.171.247.114', '2014-08-07', 1, '1407379834');
INSERT INTO `statistik` VALUES ('69.171.247.115', '2014-08-07', 1, '1407379834');
INSERT INTO `statistik` VALUES ('202.67.34.29', '2014-08-07', 2, '1407380415');
INSERT INTO `statistik` VALUES ('36.76.52.112', '2014-08-07', 1, '1407380496');
INSERT INTO `statistik` VALUES ('223.255.231.145', '2014-08-07', 5, '1407387045');
INSERT INTO `statistik` VALUES ('223.255.231.153', '2014-08-07', 2, '1407388883');
INSERT INTO `statistik` VALUES ('223.255.227.27', '2014-08-07', 1, '1407393087');
INSERT INTO `statistik` VALUES ('180.76.5.25', '2014-08-07', 1, '1407394749');
INSERT INTO `statistik` VALUES ('223.255.231.146', '2014-08-07', 1, '1407397183');
INSERT INTO `statistik` VALUES ('157.55.39.248', '2014-08-07', 1, '1407397231');
INSERT INTO `statistik` VALUES ('180.254.200.55', '2014-08-07', 2, '1407399466');
INSERT INTO `statistik` VALUES ('110.139.67.15', '2014-08-07', 8, '1407399221');
INSERT INTO `statistik` VALUES ('180.242.17.64', '2014-08-07', 11, '1407414373');
INSERT INTO `statistik` VALUES ('141.0.8.59', '2014-08-07', 1, '1407412384');
INSERT INTO `statistik` VALUES ('110.76.149.91', '2014-08-07', 1, '1407422367');
INSERT INTO `statistik` VALUES ('223.255.231.151', '2014-08-07', 3, '1407426943');
INSERT INTO `statistik` VALUES ('82.145.209.206', '2014-08-07', 1, '1407430369');
INSERT INTO `statistik` VALUES ('223.255.227.28', '2014-08-08', 3, '1407469589');
INSERT INTO `statistik` VALUES ('66.93.156.50', '2014-08-08', 1, '1407472340');
INSERT INTO `statistik` VALUES ('202.62.17.47', '2014-08-08', 1, '1407484393');
INSERT INTO `statistik` VALUES ('36.70.135.163', '2014-08-08', 6, '1407485987');
INSERT INTO `statistik` VALUES ('173.252.74.115', '2014-08-08', 1, '1407485153');
INSERT INTO `statistik` VALUES ('118.96.58.136', '2014-08-08', 2, '1407486347');
INSERT INTO `statistik` VALUES ('114.79.29.68', '2014-08-08', 1, '1407502537');
INSERT INTO `statistik` VALUES ('66.220.156.113', '2014-08-08', 1, '1407503375');
INSERT INTO `statistik` VALUES ('112.215.66.79', '2014-08-08', 1, '1407503381');
INSERT INTO `statistik` VALUES ('125.163.113.156', '2014-08-08', 9, '1407508824');
INSERT INTO `statistik` VALUES ('180.76.5.94', '2014-08-08', 1, '1407508624');
INSERT INTO `statistik` VALUES ('120.172.9.192', '2014-08-08', 1, '1407515634');
INSERT INTO `statistik` VALUES ('202.67.41.51', '2014-08-08', 1, '1407515702');
INSERT INTO `statistik` VALUES ('180.253.243.222', '2014-08-09', 1, '1407542724');
INSERT INTO `statistik` VALUES ('36.75.224.20', '2014-08-09', 1, '1407548005');
INSERT INTO `statistik` VALUES ('180.76.5.65', '2014-08-09', 1, '1407548865');
INSERT INTO `statistik` VALUES ('66.249.77.77', '2014-08-09', 2, '1407582711');
INSERT INTO `statistik` VALUES ('180.76.6.137', '2014-08-09', 1, '1407553037');
INSERT INTO `statistik` VALUES ('66.249.77.87', '2014-08-09', 1, '1407554836');
INSERT INTO `statistik` VALUES ('66.249.77.97', '2014-08-09', 2, '1407562640');
INSERT INTO `statistik` VALUES ('120.177.44.126', '2014-08-09', 2, '1407558625');
INSERT INTO `statistik` VALUES ('223.255.231.145', '2014-08-09', 3, '1407558663');
INSERT INTO `statistik` VALUES ('36.73.64.113', '2014-08-09', 1, '1407558640');
INSERT INTO `statistik` VALUES ('36.72.187.12', '2014-08-09', 1, '1407560351');
INSERT INTO `statistik` VALUES ('202.67.41.51', '2014-08-09', 1, '1407561096');
INSERT INTO `statistik` VALUES ('114.125.60.68', '2014-08-09', 4, '1407561514');
INSERT INTO `statistik` VALUES ('202.67.40.50', '2014-08-09', 1, '1407562007');
INSERT INTO `statistik` VALUES ('180.76.6.136', '2014-08-09', 1, '1407562581');
INSERT INTO `statistik` VALUES ('110.232.81.2', '2014-08-09', 5, '1407563275');
INSERT INTO `statistik` VALUES ('146.185.28.59', '2014-08-09', 1, '1407564768');
INSERT INTO `statistik` VALUES ('120.174.157.139', '2014-08-09', 1, '1407568139');
INSERT INTO `statistik` VALUES ('223.255.227.23', '2014-08-09', 2, '1407570163');
INSERT INTO `statistik` VALUES ('193.105.210.119', '2014-08-09', 1, '1407577518');
INSERT INTO `statistik` VALUES ('125.162.57.66', '2014-08-09', 2, '1407579822');
INSERT INTO `statistik` VALUES ('180.241.163.1', '2014-08-09', 8, '1407580493');
INSERT INTO `statistik` VALUES ('36.76.44.163', '2014-08-09', 6, '1407603574');
INSERT INTO `statistik` VALUES ('180.76.5.144', '2014-08-09', 1, '1407582757');
INSERT INTO `statistik` VALUES ('107.167.103.40', '2014-08-09', 1, '1407586189');
INSERT INTO `statistik` VALUES ('36.68.48.23', '2014-08-09', 1, '1407586974');
INSERT INTO `statistik` VALUES ('192.99.218.151', '2014-08-09', 4, '1407587574');
INSERT INTO `statistik` VALUES ('36.74.55.24', '2014-08-09', 3, '1407589161');
INSERT INTO `statistik` VALUES ('118.97.212.184', '2014-08-09', 8, '1407595169');
INSERT INTO `statistik` VALUES ('36.72.114.118', '2014-08-09', 2, '1407597684');
INSERT INTO `statistik` VALUES ('180.76.5.153', '2014-08-09', 1, '1407602870');
INSERT INTO `statistik` VALUES ('180.76.5.59', '2014-08-09', 1, '1407603153');
INSERT INTO `statistik` VALUES ('180.76.5.18', '2014-08-10', 1, '1407606581');
INSERT INTO `statistik` VALUES ('180.254.155.156', '2014-08-10', 2, '1407607003');
INSERT INTO `statistik` VALUES ('180.76.6.42', '2014-08-10', 1, '1407608363');
INSERT INTO `statistik` VALUES ('36.68.242.217', '2014-08-10', 5, '1407627100');
INSERT INTO `statistik` VALUES ('66.249.77.77', '2014-08-10', 2, '1407633623');
INSERT INTO `statistik` VALUES ('202.67.44.64', '2014-08-10', 1, '1407629598');
INSERT INTO `statistik` VALUES ('180.76.6.43', '2014-08-10', 1, '1407631270');
INSERT INTO `statistik` VALUES ('118.97.212.182', '2014-08-10', 4, '1407632228');
INSERT INTO `statistik` VALUES ('139.0.102.140', '2014-08-10', 1, '1407633944');
INSERT INTO `statistik` VALUES ('66.249.77.87', '2014-08-10', 1, '1407636902');
INSERT INTO `statistik` VALUES ('66.249.77.97', '2014-08-10', 1, '1407639983');
INSERT INTO `statistik` VALUES ('180.76.6.159', '2014-08-10', 1, '1407640798');
INSERT INTO `statistik` VALUES ('118.97.212.181', '2014-08-10', 3, '1407642556');
INSERT INTO `statistik` VALUES ('36.68.46.37', '2014-08-10', 2, '1407642940');
INSERT INTO `statistik` VALUES ('180.76.5.69', '2014-08-10', 1, '1407645158');
INSERT INTO `statistik` VALUES ('180.76.5.80', '2014-08-10', 1, '1407648268');
INSERT INTO `statistik` VALUES ('180.76.5.143', '2014-08-10', 1, '1407650068');
INSERT INTO `statistik` VALUES ('223.255.231.145', '2014-08-10', 1, '1407650216');
INSERT INTO `statistik` VALUES ('180.76.6.149', '2014-08-10', 1, '1407657020');
INSERT INTO `statistik` VALUES ('36.77.183.218', '2014-08-10', 2, '1407657119');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2014-08-10', 2, '1407660057');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2014-08-11', 2, '1407725194');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2014-08-12', 1, '1407862185');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2014-08-13', 1, '1407899819');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2014-08-17', 44, '1408287630');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2014-08-18', 253, '1408372590');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2014-08-19', 4, '1408413702');
INSERT INTO `statistik` VALUES ('::1', '2014-08-19', 90, '1408433250');
INSERT INTO `statistik` VALUES ('::1', '2014-08-31', 1, '1409487043');
INSERT INTO `statistik` VALUES ('::1', '2015-03-11', 11, '1426061663');
INSERT INTO `statistik` VALUES ('::1', '2015-03-12', 1, '1426114982');
INSERT INTO `statistik` VALUES ('::1', '2015-03-15', 32, '1426430637');
INSERT INTO `statistik` VALUES ('::1', '2015-03-18', 137, '1426666506');
INSERT INTO `statistik` VALUES ('::1', '2015-03-19', 143, '1426751746');
INSERT INTO `statistik` VALUES ('::1', '2015-03-21', 198, '1426912294');
INSERT INTO `statistik` VALUES ('::1', '2015-03-22', 554, '1427039069');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2015-03-22', 1, '1427030317');
INSERT INTO `statistik` VALUES ('::1', '2015-03-23', 275, '1427093113');
INSERT INTO `statistik` VALUES ('::1', '2015-03-24', 42, '1427179474');
INSERT INTO `statistik` VALUES ('::1', '2015-03-25', 45, '1427251499');
INSERT INTO `statistik` VALUES ('39.225.164.2', '2015-05-14', 7, '1431584409');
INSERT INTO `statistik` VALUES ('119.110.72.130', '2015-05-14', 30, '1431595368');
INSERT INTO `statistik` VALUES ('89.145.95.2', '2015-05-14', 1, '1431582645');
INSERT INTO `statistik` VALUES ('66.220.158.118', '2015-05-14', 1, '1431582842');
INSERT INTO `statistik` VALUES ('66.220.158.115', '2015-05-14', 1, '1431582852');
INSERT INTO `statistik` VALUES ('66.220.158.112', '2015-05-14', 3, '1431595371');
INSERT INTO `statistik` VALUES ('66.220.158.119', '2015-05-14', 1, '1431582942');
INSERT INTO `statistik` VALUES ('114.125.43.185', '2015-05-14', 5, '1431602132');
INSERT INTO `statistik` VALUES ('119.110.72.130', '2015-05-15', 1, '1431673658');
INSERT INTO `statistik` VALUES ('114.125.45.206', '2015-05-16', 18, '1431741581');
INSERT INTO `statistik` VALUES ('66.220.158.116', '2015-05-16', 1, '1431741049');
INSERT INTO `statistik` VALUES ('66.220.158.118', '2015-05-16', 1, '1431741224');
INSERT INTO `statistik` VALUES ('66.220.158.114', '2015-05-16', 1, '1431741233');
INSERT INTO `statistik` VALUES ('39.229.6.148', '2015-05-16', 11, '1431791037');
INSERT INTO `statistik` VALUES ('39.225.236.155', '2015-05-17', 8, '1431862096');
INSERT INTO `statistik` VALUES ('119.110.72.130', '2015-05-19', 6, '1432006569');
INSERT INTO `statistik` VALUES ('89.145.95.42', '2015-05-19', 2, '1432006661');
INSERT INTO `statistik` VALUES ('114.121.133.117', '2015-05-19', 3, '1432046663');
INSERT INTO `statistik` VALUES ('124.195.114.65', '2015-05-28', 16, '1432832381');
INSERT INTO `statistik` VALUES ('66.220.158.119', '2015-05-28', 1, '1432831000');
INSERT INTO `statistik` VALUES ('66.220.158.115', '2015-05-28', 1, '1432831013');
INSERT INTO `statistik` VALUES ('66.220.158.116', '2015-05-28', 1, '1432832385');
INSERT INTO `statistik` VALUES ('124.195.114.65', '2015-05-29', 77, '1432836214');
INSERT INTO `statistik` VALUES ('66.220.158.113', '2015-05-29', 1, '1432835961');
INSERT INTO `statistik` VALUES ('66.249.84.178', '2015-05-29', 1, '1432836220');
INSERT INTO `statistik` VALUES ('103.246.200.14', '2015-05-29', 1, '1432851867');
INSERT INTO `statistik` VALUES ('103.246.200.59', '2015-05-29', 1, '1432851916');
INSERT INTO `statistik` VALUES ('114.124.5.250', '2015-05-29', 6, '1432852876');
INSERT INTO `statistik` VALUES ('173.252.105.114', '2015-05-29', 1, '1432852770');
INSERT INTO `statistik` VALUES ('120.180.175.150', '2015-05-29', 36, '1432864082');
INSERT INTO `statistik` VALUES ('103.246.200.50', '2015-05-29', 1, '1432863615');
INSERT INTO `statistik` VALUES ('103.246.200.1', '2015-05-29', 1, '1432863650');
INSERT INTO `statistik` VALUES ('103.246.200.33', '2015-05-29', 1, '1432863711');
INSERT INTO `statistik` VALUES ('103.246.200.44', '2015-05-29', 1, '1432863795');
INSERT INTO `statistik` VALUES ('120.174.144.115', '2015-05-29', 1, '1432908445');
INSERT INTO `statistik` VALUES ('119.110.72.130', '2015-05-29', 27, '1432912022');
INSERT INTO `statistik` VALUES ('173.252.90.117', '2015-05-29', 1, '1432910852');
INSERT INTO `statistik` VALUES ('173.252.90.116', '2015-05-29', 1, '1432910873');
INSERT INTO `statistik` VALUES ('173.252.90.118', '2015-05-29', 1, '1432911344');
INSERT INTO `statistik` VALUES ('173.252.90.122', '2015-05-29', 1, '1432911470');
INSERT INTO `statistik` VALUES ('66.249.84.190', '2015-05-30', 1, '1432945579');
INSERT INTO `statistik` VALUES ('39.254.117.222', '2015-05-30', 1, '1432991226');
INSERT INTO `statistik` VALUES ('66.249.84.178', '2015-05-31', 1, '1433037242');
INSERT INTO `statistik` VALUES ('120.176.92.190', '2015-06-01', 3, '1433128955');
INSERT INTO `statistik` VALUES ('66.102.6.210', '2015-06-01', 1, '1433134430');
INSERT INTO `statistik` VALUES ('120.164.44.28', '2015-06-01', 13, '1433149419');
INSERT INTO `statistik` VALUES ('124.195.118.227', '2015-06-01', 1, '1433170960');
INSERT INTO `statistik` VALUES ('120.177.28.244', '2015-06-02', 8, '1433220043');
INSERT INTO `statistik` VALUES ('66.249.84.190', '2015-06-02', 1, '1433247837');
INSERT INTO `statistik` VALUES ('120.190.75.179', '2015-06-03', 7, '1433302768');
INSERT INTO `statistik` VALUES ('119.110.72.130', '2015-06-03', 4, '1433302761');
INSERT INTO `statistik` VALUES ('89.145.95.2', '2015-06-03', 1, '1433302690');
INSERT INTO `statistik` VALUES ('66.249.71.147', '2015-06-07', 46, '1433696370');
INSERT INTO `statistik` VALUES ('66.249.71.130', '2015-06-07', 30, '1433696150');
INSERT INTO `statistik` VALUES ('66.249.71.164', '2015-06-07', 37, '1433696154');
INSERT INTO `statistik` VALUES ('173.252.74.113', '2015-06-07', 8, '1433694061');
INSERT INTO `statistik` VALUES ('173.252.74.117', '2015-06-07', 3, '1433676319');
INSERT INTO `statistik` VALUES ('66.249.64.57', '2015-06-07', 1, '1433674283');
INSERT INTO `statistik` VALUES ('173.252.88.89', '2015-06-07', 5, '1433677999');
INSERT INTO `statistik` VALUES ('173.252.88.86', '2015-06-07', 2, '1433677597');
INSERT INTO `statistik` VALUES ('173.252.74.119', '2015-06-07', 7, '1433694862');
INSERT INTO `statistik` VALUES ('66.249.79.117', '2015-06-07', 1, '1433674983');
INSERT INTO `statistik` VALUES ('173.252.88.84', '2015-06-07', 2, '1433676738');
INSERT INTO `statistik` VALUES ('173.252.74.115', '2015-06-07', 3, '1433676460');
INSERT INTO `statistik` VALUES ('173.252.74.114', '2015-06-07', 2, '1433694204');
INSERT INTO `statistik` VALUES ('173.252.74.118', '2015-06-07', 3, '1433676180');
INSERT INTO `statistik` VALUES ('173.252.74.112', '2015-06-07', 5, '1433695314');
INSERT INTO `statistik` VALUES ('173.252.88.85', '2015-06-07', 2, '1433677804');
INSERT INTO `statistik` VALUES ('173.252.88.90', '2015-06-07', 1, '1433676251');
INSERT INTO `statistik` VALUES ('173.252.74.116', '2015-06-07', 5, '1433695249');
INSERT INTO `statistik` VALUES ('173.252.88.87', '2015-06-07', 2, '1433677488');
INSERT INTO `statistik` VALUES ('173.252.88.88', '2015-06-07', 1, '1433677370');
INSERT INTO `statistik` VALUES ('66.249.79.130', '2015-06-07', 1, '1433694848');
INSERT INTO `statistik` VALUES ('66.220.156.116', '2015-06-07', 2, '1433696197');
INSERT INTO `statistik` VALUES ('66.249.67.104', '2015-06-07', 1, '1433696147');
INSERT INTO `statistik` VALUES ('66.220.156.112', '2015-06-07', 2, '1433696173');
INSERT INTO `statistik` VALUES ('66.220.146.22', '2015-06-07', 1, '1433696162');
INSERT INTO `statistik` VALUES ('66.249.67.117', '2015-06-07', 1, '1433696288');
INSERT INTO `statistik` VALUES ('66.220.156.114', '2015-06-07', 1, '1433696309');
INSERT INTO `statistik` VALUES ('66.220.156.117', '2015-06-08', 3, '1433711204');
INSERT INTO `statistik` VALUES ('66.249.71.164', '2015-06-08', 32, '1433779112');
INSERT INTO `statistik` VALUES ('66.220.146.25', '2015-06-08', 2, '1433736854');
INSERT INTO `statistik` VALUES ('66.220.156.116', '2015-06-08', 2, '1433709422');
INSERT INTO `statistik` VALUES ('66.249.71.147', '2015-06-08', 29, '1433748751');
INSERT INTO `statistik` VALUES ('66.220.156.112', '2015-06-08', 4, '1433715007');
INSERT INTO `statistik` VALUES ('66.220.146.20', '2015-06-08', 1, '1433696744');
INSERT INTO `statistik` VALUES ('66.249.71.130', '2015-06-08', 38, '1433777391');
INSERT INTO `statistik` VALUES ('66.220.156.118', '2015-06-08', 2, '1433712628');
INSERT INTO `statistik` VALUES ('66.220.146.27', '2015-06-08', 1, '1433712556');
INSERT INTO `statistik` VALUES ('66.220.146.26', '2015-06-08', 1, '1433712746');
INSERT INTO `statistik` VALUES ('66.249.67.104', '2015-06-08', 4, '1433746797');
INSERT INTO `statistik` VALUES ('66.220.146.22', '2015-06-08', 1, '1433714244');
INSERT INTO `statistik` VALUES ('66.220.156.115', '2015-06-08', 2, '1433714821');
INSERT INTO `statistik` VALUES ('66.249.67.117', '2015-06-08', 2, '1433780504');
INSERT INTO `statistik` VALUES ('120.176.251.49', '2015-06-08', 2, '1433737104');
INSERT INTO `statistik` VALUES ('66.220.156.119', '2015-06-08', 1, '1433737457');
INSERT INTO `statistik` VALUES ('66.249.71.147', '2015-06-09', 3, '1433836081');
INSERT INTO `statistik` VALUES ('66.249.71.130', '2015-06-09', 4, '1433835126');
INSERT INTO `statistik` VALUES ('66.249.67.104', '2015-06-09', 1, '1433788622');
INSERT INTO `statistik` VALUES ('66.249.71.164', '2015-06-09', 1, '1433823064');
INSERT INTO `statistik` VALUES ('66.249.71.130', '2015-06-10', 5, '1433953790');
INSERT INTO `statistik` VALUES ('66.249.67.117', '2015-06-10', 1, '1433911605');
INSERT INTO `statistik` VALUES ('66.249.71.164', '2015-06-10', 3, '1433954890');
INSERT INTO `statistik` VALUES ('66.249.71.147', '2015-06-10', 2, '1433953573');
INSERT INTO `statistik` VALUES ('66.249.71.147', '2015-06-11', 1, '1433957808');
INSERT INTO `statistik` VALUES ('66.249.71.164', '2015-06-11', 2, '1433990805');
INSERT INTO `statistik` VALUES ('68.180.228.104', '2015-06-11', 1, '1433975257');
INSERT INTO `statistik` VALUES ('66.249.71.130', '2015-06-11', 1, '1433991891');
INSERT INTO `statistik` VALUES ('36.68.28.19', '2015-06-14', 5, '1434224041');
INSERT INTO `statistik` VALUES ('120.164.46.127', '2015-06-14', 2, '1434239557');
INSERT INTO `statistik` VALUES ('66.249.67.248', '2015-06-15', 1, '1434362861');
INSERT INTO `statistik` VALUES ('104.193.10.50', '2015-06-15', 3, '1434372762');
INSERT INTO `statistik` VALUES ('104.193.10.50', '2015-06-16', 2, '1434454308');
INSERT INTO `statistik` VALUES ('36.80.234.114', '2015-06-16', 4, '1434443273');
INSERT INTO `statistik` VALUES ('173.252.74.115', '2015-06-16', 1, '1434443264');
INSERT INTO `statistik` VALUES ('173.252.74.114', '2015-06-16', 1, '1434443279');
INSERT INTO `statistik` VALUES ('119.110.72.130', '2015-06-16', 1, '1434467216');
INSERT INTO `statistik` VALUES ('124.195.116.71', '2015-06-17', 3, '1434551738');
INSERT INTO `statistik` VALUES ('120.184.130.21', '2015-06-27', 1, '1435386862');
INSERT INTO `statistik` VALUES ('66.249.84.246', '2015-06-27', 1, '1435387150');
INSERT INTO `statistik` VALUES ('120.176.176.106', '2015-06-28', 7, '1435461088');
INSERT INTO `statistik` VALUES ('66.220.158.114', '2015-06-28', 1, '1435461007');
INSERT INTO `statistik` VALUES ('66.249.84.129', '2015-06-28', 1, '1435466083');
INSERT INTO `statistik` VALUES ('66.249.84.246', '2015-06-29', 2, '1435563211');
INSERT INTO `statistik` VALUES ('66.249.84.252', '2015-06-29', 1, '1435563206');
INSERT INTO `statistik` VALUES ('66.249.84.246', '2015-06-30', 3, '1435677685');
INSERT INTO `statistik` VALUES ('66.249.84.252', '2015-06-30', 1, '1435645799');
INSERT INTO `statistik` VALUES ('66.249.84.252', '2015-07-01', 1, '1435710707');
INSERT INTO `statistik` VALUES ('66.249.84.129', '2015-07-01', 1, '1435711780');
INSERT INTO `statistik` VALUES ('120.177.18.200', '2015-07-02', 1, '1435824891');
INSERT INTO `statistik` VALUES ('::1', '2015-11-25', 15, '1448407930');
INSERT INTO `statistik` VALUES ('::1', '2015-12-01', 12, '1448944568');
INSERT INTO `statistik` VALUES ('::1', '2015-12-03', 9, '1449138520');
INSERT INTO `statistik` VALUES ('::1', '2015-12-05', 26, '1449279360');
INSERT INTO `statistik` VALUES ('::1', '2015-12-07', 4, '1449442678');
INSERT INTO `statistik` VALUES ('::1', '2015-12-08', 8, '1449532582');
INSERT INTO `statistik` VALUES ('::1', '2015-12-13', 31, '1449974628');
INSERT INTO `statistik` VALUES ('::1', '2015-12-18', 9, '1450418535');
INSERT INTO `statistik` VALUES ('::1', '2015-12-21', 10, '1450654644');
INSERT INTO `statistik` VALUES ('::1', '2015-12-24', 3, '1450917714');
INSERT INTO `statistik` VALUES ('::1', '2015-12-25', 4, '1451037761');
INSERT INTO `statistik` VALUES ('::1', '2015-12-26', 5, '1451086546');
INSERT INTO `statistik` VALUES ('::1', '2016-01-01', 5, '1451626224');
INSERT INTO `statistik` VALUES ('::1', '2016-01-12', 6, '1452564572');
INSERT INTO `statistik` VALUES ('::1', '2016-01-16', 7, '1452913899');
INSERT INTO `statistik` VALUES ('::1', '2016-05-16', 37, '1463417273');
INSERT INTO `statistik` VALUES ('::1', '2016-04-27', 6, '1461765262');
INSERT INTO `statistik` VALUES ('::1', '2016-05-15', 7, '1463323116');
INSERT INTO `statistik` VALUES ('::1', '2016-05-03', 6, '1462232162');
INSERT INTO `statistik` VALUES ('::1', '2016-05-08', 7, '1462664246');
INSERT INTO `statistik` VALUES ('::1', '2016-05-11', 6, '1462969419');
INSERT INTO `statistik` VALUES ('::1', '2016-05-12', 6, '1463014545');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2016-05-15', 3, '1463269324');
INSERT INTO `statistik` VALUES ('::1', '2016-05-17', 45, '1463492558');
INSERT INTO `statistik` VALUES ('::1', '2016-05-18', 106, '1463590677');
INSERT INTO `statistik` VALUES ('::1', '2016-05-19', 214, '1463630630');
INSERT INTO `statistik` VALUES ('::1', '2016-05-20', 487, '1463763520');
INSERT INTO `statistik` VALUES ('::1', '2016-05-21', 514, '1463847119');
INSERT INTO `statistik` VALUES ('::1', '2016-05-22', 1, '1463879088');
INSERT INTO `statistik` VALUES ('::1', '2016-05-23', 47, '1463994067');
INSERT INTO `statistik` VALUES ('::1', '2016-05-24', 326, '1464107038');
INSERT INTO `statistik` VALUES ('::1', '2016-05-25', 57, '1464193724');
INSERT INTO `statistik` VALUES ('::1', '2016-05-26', 344, '1464252857');
INSERT INTO `statistik` VALUES ('::1', '2016-05-27', 1, '1464344174');
INSERT INTO `statistik` VALUES ('::1', '2016-05-28', 663, '1464452162');
INSERT INTO `statistik` VALUES ('::1', '2016-05-29', 103, '1464517478');
INSERT INTO `statistik` VALUES ('::1', '2016-05-30', 2, '1464563692');
INSERT INTO `statistik` VALUES ('::1', '2016-06-01', 423, '1464756008');
INSERT INTO `statistik` VALUES ('::1', '2016-06-02', 516, '1464857838');
INSERT INTO `statistik` VALUES ('::1', '2016-06-03', 217, '1464939517');
INSERT INTO `statistik` VALUES ('::1', '2016-06-04', 146, '1465037330');
INSERT INTO `statistik` VALUES ('::1', '2016-06-05', 311, '1465140182');
INSERT INTO `statistik` VALUES ('::1', '2016-06-06', 63, '1465185192');
INSERT INTO `statistik` VALUES ('::1', '2016-06-07', 383, '1465278209');
INSERT INTO `statistik` VALUES ('::1', '2016-06-08', 392, '1465387331');
INSERT INTO `statistik` VALUES ('::1', '2016-06-09', 563, '1465453570');
INSERT INTO `statistik` VALUES ('::1', '2016-06-10', 23, '1465531632');
INSERT INTO `statistik` VALUES ('::1', '2016-06-13', 29, '1465793213');
INSERT INTO `statistik` VALUES ('::1', '2016-06-15', 373, '1466003972');
INSERT INTO `statistik` VALUES ('::1', '2016-06-16', 209, '1466046365');
INSERT INTO `statistik` VALUES ('120.164.43.190', '2016-06-16', 2, '1466047900');
INSERT INTO `statistik` VALUES ('180.254.135.210', '2016-06-16', 20, '1466048994');
INSERT INTO `statistik` VALUES ('36.66.250.50', '2016-06-16', 18, '1466051721');
INSERT INTO `statistik` VALUES ('178.162.216.38', '2016-06-16', 17, '1466048866');
INSERT INTO `statistik` VALUES ('178.162.216.32', '2016-06-16', 10, '1466049449');
INSERT INTO `statistik` VALUES ('91.109.30.77', '2016-06-16', 16, '1466073338');
INSERT INTO `statistik` VALUES ('91.109.30.71', '2016-06-16', 6, '1466052501');
INSERT INTO `statistik` VALUES ('178.162.216.35', '2016-06-16', 28, '1466053109');
INSERT INTO `statistik` VALUES ('91.109.30.83', '2016-06-16', 37, '1466054045');
INSERT INTO `statistik` VALUES ('91.109.30.107', '2016-06-16', 5, '1466054192');
INSERT INTO `statistik` VALUES ('178.162.216.36', '2016-06-16', 2, '1466054528');
INSERT INTO `statistik` VALUES ('36.84.224.103', '2016-06-16', 60, '1466062507');
INSERT INTO `statistik` VALUES ('36.84.1.46', '2016-06-16', 218, '1466073219');
INSERT INTO `statistik` VALUES ('69.61.12.70', '2016-06-16', 2, '1466083459');
INSERT INTO `statistik` VALUES ('180.254.134.13', '2016-06-16', 119, '1466072215');
INSERT INTO `statistik` VALUES ('66.249.65.96', '2016-06-16', 2, '1466087700');
INSERT INTO `statistik` VALUES ('66.249.66.172', '2016-06-16', 1, '1466070655');
INSERT INTO `statistik` VALUES ('158.69.228.18', '2016-06-16', 1, '1466072162');
INSERT INTO `statistik` VALUES ('91.109.30.101', '2016-06-16', 1, '1466073283');
INSERT INTO `statistik` VALUES ('91.121.83.118', '2016-06-16', 1, '1466075092');
INSERT INTO `statistik` VALUES ('161.69.163.20', '2016-06-16', 6, '1466076267');
INSERT INTO `statistik` VALUES ('36.75.253.198', '2016-06-16', 116, '1466095060');
INSERT INTO `statistik` VALUES ('66.249.93.191', '2016-06-16', 2, '1466079959');
INSERT INTO `statistik` VALUES ('36.84.1.54', '2016-06-16', 240, '1466093472');
INSERT INTO `statistik` VALUES ('66.249.65.90', '2016-06-16', 4, '1466089247');
INSERT INTO `statistik` VALUES ('66.249.65.96', '2016-06-17', 2, '1466181286');
INSERT INTO `statistik` VALUES ('66.249.93.189', '2016-06-17', 2, '1466097996');
INSERT INTO `statistik` VALUES ('5.189.159.157', '2016-06-17', 2, '1466098003');
INSERT INTO `statistik` VALUES ('69.61.12.70', '2016-06-17', 4, '1466169759');
INSERT INTO `statistik` VALUES ('66.249.65.93', '2016-06-17', 6, '1466181939');
INSERT INTO `statistik` VALUES ('208.80.194.125', '2016-06-17', 1, '1466117907');
INSERT INTO `statistik` VALUES ('108.61.157.59', '2016-06-17', 1, '1466120162');
INSERT INTO `statistik` VALUES ('208.80.194.27', '2016-06-17', 1, '1466124054');
INSERT INTO `statistik` VALUES ('180.254.142.113', '2016-06-17', 12, '1466155649');
INSERT INTO `statistik` VALUES ('114.121.239.181', '2016-06-17', 17, '1466133261');
INSERT INTO `statistik` VALUES ('114.125.188.40', '2016-06-17', 1, '1466135081');
INSERT INTO `statistik` VALUES ('180.76.15.5', '2016-06-17', 1, '1466136691');
INSERT INTO `statistik` VALUES ('36.84.1.66', '2016-06-17', 273, '1466160632');
INSERT INTO `statistik` VALUES ('198.27.69.229', '2016-06-17', 2, '1466146078');
INSERT INTO `statistik` VALUES ('161.69.163.20', '2016-06-17', 6, '1466146883');
INSERT INTO `statistik` VALUES ('91.219.237.229', '2016-06-17', 1, '1466150581');
INSERT INTO `statistik` VALUES ('110.53.183.50', '2016-06-17', 1, '1466151176');
INSERT INTO `statistik` VALUES ('66.249.65.90', '2016-06-17', 1, '1466154519');
INSERT INTO `statistik` VALUES ('202.67.36.245', '2016-06-17', 23, '1466172043');
INSERT INTO `statistik` VALUES ('207.102.138.158', '2016-06-17', 1, '1466182322');
INSERT INTO `statistik` VALUES ('91.121.83.118', '2016-06-17', 1, '1466182757');
INSERT INTO `statistik` VALUES ('66.249.65.93', '2016-06-18', 3, '1466188462');
INSERT INTO `statistik` VALUES ('69.61.12.70', '2016-06-18', 4, '1466256380');
INSERT INTO `statistik` VALUES ('202.67.37.46', '2016-06-18', 5, '1466200881');
INSERT INTO `statistik` VALUES ('180.249.17.243', '2016-06-18', 34, '1466263192');
INSERT INTO `statistik` VALUES ('125.162.241.179', '2016-06-18', 26, '1466263175');
INSERT INTO `statistik` VALUES ('180.249.226.71', '2016-06-18', 22, '1466263189');
INSERT INTO `statistik` VALUES ('208.80.194.125', '2016-06-18', 1, '1466203681');
INSERT INTO `statistik` VALUES ('36.75.253.198', '2016-06-18', 52, '1466215361');
INSERT INTO `statistik` VALUES ('208.80.194.27', '2016-06-18', 1, '1466209791');
INSERT INTO `statistik` VALUES ('110.136.242.160', '2016-06-18', 651, '1466260901');
INSERT INTO `statistik` VALUES ('167.114.228.206', '2016-06-18', 2, '1466229027');
INSERT INTO `statistik` VALUES ('66.249.65.96', '2016-06-18', 1, '1466231372');
INSERT INTO `statistik` VALUES ('202.67.37.37', '2016-06-18', 75, '1466238258');
INSERT INTO `statistik` VALUES ('146.20.65.193', '2016-06-18', 1, '1466237523');
INSERT INTO `statistik` VALUES ('202.67.37.41', '2016-06-18', 14, '1466243372');
INSERT INTO `statistik` VALUES ('36.83.123.122', '2016-06-18', 70, '1466257837');
INSERT INTO `statistik` VALUES ('162.251.167.90', '2016-06-18', 1, '1466244633');
INSERT INTO `statistik` VALUES ('84.177.14.46', '2016-06-18', 2, '1466248480');
INSERT INTO `statistik` VALUES ('46.165.230.5', '2016-06-18', 1, '1466244668');
INSERT INTO `statistik` VALUES ('37.146.189.147', '2016-06-18', 2, '1466248442');
INSERT INTO `statistik` VALUES ('69.195.159.138', '2016-06-18', 4, '1466248482');
INSERT INTO `statistik` VALUES ('185.86.78.204', '2016-06-18', 1, '1466244683');
INSERT INTO `statistik` VALUES ('65.19.167.131', '2016-06-18', 1, '1466244692');
INSERT INTO `statistik` VALUES ('162.247.73.74', '2016-06-18', 1, '1466244698');
INSERT INTO `statistik` VALUES ('146.0.43.126', '2016-06-18', 1, '1466244703');
INSERT INTO `statistik` VALUES ('147.175.187.143', '2016-06-18', 1, '1466244717');
INSERT INTO `statistik` VALUES ('73.219.221.183', '2016-06-18', 2, '1466248491');
INSERT INTO `statistik` VALUES ('62.210.37.82', '2016-06-18', 1, '1466244739');
INSERT INTO `statistik` VALUES ('149.202.98.160', '2016-06-18', 1, '1466248415');
INSERT INTO `statistik` VALUES ('163.172.152.231', '2016-06-18', 1, '1466248422');
INSERT INTO `statistik` VALUES ('171.25.193.131', '2016-06-18', 1, '1466248429');
INSERT INTO `statistik` VALUES ('178.62.71.57', '2016-06-18', 1, '1466248438');
INSERT INTO `statistik` VALUES ('71.19.157.127', '2016-06-18', 1, '1466248503');
INSERT INTO `statistik` VALUES ('161.69.163.20', '2016-06-18', 6, '1466250529');
INSERT INTO `statistik` VALUES ('91.121.83.118', '2016-06-18', 1, '1466250665');
INSERT INTO `statistik` VALUES ('45.55.229.210', '2016-06-18', 16, '1466252992');
INSERT INTO `statistik` VALUES ('180.254.142.113', '2016-06-18', 1, '1466253613');
INSERT INTO `statistik` VALUES ('45.33.15.94', '2016-06-18', 2, '1466253942');
INSERT INTO `statistik` VALUES ('114.125.177.53', '2016-06-18', 22, '1466256313');
INSERT INTO `statistik` VALUES ('23.92.215.2', '2016-06-18', 1, '1466255241');
INSERT INTO `statistik` VALUES ('202.67.37.40', '2016-06-18', 27, '1466267825');
INSERT INTO `statistik` VALUES ('78.47.67.232', '2016-06-18', 1, '1466264171');
INSERT INTO `statistik` VALUES ('69.61.12.70', '2016-06-19', 4, '1466340028');
INSERT INTO `statistik` VALUES ('141.8.143.187', '2016-06-19', 1, '1466277860');
INSERT INTO `statistik` VALUES ('66.249.65.90', '2016-06-19', 15, '1466354190');
INSERT INTO `statistik` VALUES ('66.249.66.165', '2016-06-19', 1, '1466280888');
INSERT INTO `statistik` VALUES ('66.249.65.96', '2016-06-19', 6, '1466308275');
INSERT INTO `statistik` VALUES ('66.249.65.93', '2016-06-19', 7, '1466321238');
INSERT INTO `statistik` VALUES ('36.83.123.122', '2016-06-19', 67, '1466348740');
INSERT INTO `statistik` VALUES ('73.78.200.51', '2016-06-19', 1, '1466292747');
INSERT INTO `statistik` VALUES ('208.80.192.33', '2016-06-19', 1, '1466293843');
INSERT INTO `statistik` VALUES ('208.80.194.120', '2016-06-19', 1, '1466296208');
INSERT INTO `statistik` VALUES ('180.249.0.227', '2016-06-19', 471, '1466322380');
INSERT INTO `statistik` VALUES ('36.75.253.198', '2016-06-19', 19, '1466306056');
INSERT INTO `statistik` VALUES ('66.249.85.219', '2016-06-19', 1, '1466305155');
INSERT INTO `statistik` VALUES ('66.102.6.245', '2016-06-19', 1, '1466305339');
INSERT INTO `statistik` VALUES ('66.249.66.172', '2016-06-19', 1, '1466310970');
INSERT INTO `statistik` VALUES ('66.102.6.237', '2016-06-19', 1, '1466310997');
INSERT INTO `statistik` VALUES ('161.69.163.20', '2016-06-19', 6, '1466311149');
INSERT INTO `statistik` VALUES ('141.8.143.221', '2016-06-19', 1, '1466317007');
INSERT INTO `statistik` VALUES ('66.102.6.241', '2016-06-19', 1, '1466323149');
INSERT INTO `statistik` VALUES ('66.249.85.222', '2016-06-19', 1, '1466323150');
INSERT INTO `statistik` VALUES ('193.90.12.90', '2016-06-19', 1, '1466323308');
INSERT INTO `statistik` VALUES ('91.121.83.118', '2016-06-19', 1, '1466324349');
INSERT INTO `statistik` VALUES ('202.67.37.35', '2016-06-19', 11, '1466324835');
INSERT INTO `statistik` VALUES ('73.219.221.183', '2016-06-19', 1, '1466329261');
INSERT INTO `statistik` VALUES ('84.177.12.15', '2016-06-19', 1, '1466329302');
INSERT INTO `statistik` VALUES ('46.166.186.225', '2016-06-19', 1, '1466329324');
INSERT INTO `statistik` VALUES ('85.159.237.210', '2016-06-19', 1, '1466329333');
INSERT INTO `statistik` VALUES ('69.195.159.138', '2016-06-19', 3, '1466329402');
INSERT INTO `statistik` VALUES ('199.127.226.150', '2016-06-19', 1, '1466329344');
INSERT INTO `statistik` VALUES ('37.146.82.214', '2016-06-19', 1, '1466329351');
INSERT INTO `statistik` VALUES ('158.130.0.242', '2016-06-19', 1, '1466329395');
INSERT INTO `statistik` VALUES ('114.125.191.58', '2016-06-19', 1, '1466330035');
INSERT INTO `statistik` VALUES ('46.229.167.149', '2016-06-19', 3, '1466334280');
INSERT INTO `statistik` VALUES ('120.169.255.153', '2016-06-19', 1, '1466335160');
INSERT INTO `statistik` VALUES ('180.249.226.71', '2016-06-19', 11, '1466342829');
INSERT INTO `statistik` VALUES ('125.162.241.179', '2016-06-19', 9, '1466342839');
INSERT INTO `statistik` VALUES ('180.249.17.243', '2016-06-19', 9, '1466342812');
INSERT INTO `statistik` VALUES ('114.125.179.243', '2016-06-19', 1, '1466344269');
INSERT INTO `statistik` VALUES ('36.75.249.65', '2016-06-19', 1, '1466344423');
INSERT INTO `statistik` VALUES ('180.76.15.13', '2016-06-19', 1, '1466346082');
INSERT INTO `statistik` VALUES ('185.51.65.87', '2016-06-19', 1, '1466347711');
INSERT INTO `statistik` VALUES ('106.186.122.169', '2016-06-19', 3, '1466351774');
INSERT INTO `statistik` VALUES ('66.249.65.90', '2016-06-20', 11, '1466440106');
INSERT INTO `statistik` VALUES ('69.61.12.70', '2016-06-20', 4, '1466427353');
INSERT INTO `statistik` VALUES ('163.172.38.173', '2016-06-20', 1, '1466361641');
INSERT INTO `statistik` VALUES ('66.249.65.93', '2016-06-20', 4, '1466408523');
INSERT INTO `statistik` VALUES ('36.83.123.122', '2016-06-20', 39, '1466415711');
INSERT INTO `statistik` VALUES ('185.51.65.87', '2016-06-20', 2, '1466409313');
INSERT INTO `statistik` VALUES ('208.80.194.27', '2016-06-20', 1, '1466377312');
INSERT INTO `statistik` VALUES ('208.80.194.120', '2016-06-20', 1, '1466379004');
INSERT INTO `statistik` VALUES ('66.249.65.96', '2016-06-20', 3, '1466440090');
INSERT INTO `statistik` VALUES ('36.66.250.50', '2016-06-20', 71, '1466407313');
INSERT INTO `statistik` VALUES ('180.254.134.109', '2016-06-20', 65, '1466397885');
INSERT INTO `statistik` VALUES ('161.69.163.20', '2016-06-20', 6, '1466388447');
INSERT INTO `statistik` VALUES ('36.83.79.26', '2016-06-20', 19, '1466392307');
INSERT INTO `statistik` VALUES ('163.172.38.175', '2016-06-20', 1, '1466391671');
INSERT INTO `statistik` VALUES ('114.125.173.85', '2016-06-20', 5, '1466392282');
INSERT INTO `statistik` VALUES ('66.249.84.167', '2016-06-20', 1, '1466393457');
INSERT INTO `statistik` VALUES ('66.102.6.245', '2016-06-20', 1, '1466393801');
INSERT INTO `statistik` VALUES ('54.198.96.122', '2016-06-20', 1, '1466398071');
INSERT INTO `statistik` VALUES ('36.83.82.69', '2016-06-20', 83, '1466418751');
INSERT INTO `statistik` VALUES ('128.199.99.114', '2016-06-20', 1, '1466401862');
INSERT INTO `statistik` VALUES ('65.19.167.132', '2016-06-20', 1, '1466407965');
INSERT INTO `statistik` VALUES ('85.25.103.119', '2016-06-20', 1, '1466409700');
INSERT INTO `statistik` VALUES ('91.121.83.118', '2016-06-20', 1, '1466414581');
INSERT INTO `statistik` VALUES ('162.251.167.74', '2016-06-20', 5, '1466419588');
INSERT INTO `statistik` VALUES ('84.177.20.13', '2016-06-20', 1, '1466415697');
INSERT INTO `statistik` VALUES ('73.219.221.183', '2016-06-20', 2, '1466419705');
INSERT INTO `statistik` VALUES ('148.251.255.92', '2016-06-20', 1, '1466415709');
INSERT INTO `statistik` VALUES ('35.0.127.52', '2016-06-20', 1, '1466415721');
INSERT INTO `statistik` VALUES ('46.165.251.153', '2016-06-20', 1, '1466415725');
INSERT INTO `statistik` VALUES ('65.19.167.131', '2016-06-20', 1, '1466415729');
INSERT INTO `statistik` VALUES ('37.146.64.203', '2016-06-20', 2, '1466419635');
INSERT INTO `statistik` VALUES ('46.28.110.136', '2016-06-20', 1, '1466415888');
INSERT INTO `statistik` VALUES ('158.69.228.18', '2016-06-20', 1, '1466415978');
INSERT INTO `statistik` VALUES ('95.175.97.229', '2016-06-20', 1, '1466417094');
INSERT INTO `statistik` VALUES ('104.200.24.65', '2016-06-20', 1, '1466419622');
INSERT INTO `statistik` VALUES ('97.74.237.196', '2016-06-20', 1, '1466419628');
INSERT INTO `statistik` VALUES ('185.100.85.132', '2016-06-20', 1, '1466419632');
INSERT INTO `statistik` VALUES ('179.43.143.162', '2016-06-20', 1, '1466419657');
INSERT INTO `statistik` VALUES ('84.177.28.32', '2016-06-20', 1, '1466419685');
INSERT INTO `statistik` VALUES ('84.177.17.180', '2016-06-20', 1, '1466419699');
INSERT INTO `statistik` VALUES ('120.161.1.135', '2016-06-20', 19, '1466421167');
INSERT INTO `statistik` VALUES ('114.125.172.5', '2016-06-20', 4, '1466422835');
INSERT INTO `statistik` VALUES ('120.169.254.244', '2016-06-20', 1, '1466424587');
INSERT INTO `statistik` VALUES ('185.100.86.167', '2016-06-20', 1, '1466426488');
INSERT INTO `statistik` VALUES ('36.75.253.198', '2016-06-20', 49, '1466432356');
INSERT INTO `statistik` VALUES ('104.236.142.110', '2016-06-20', 1, '1466431059');
INSERT INTO `statistik` VALUES ('176.10.104.240', '2016-06-20', 1, '1466431652');
INSERT INTO `statistik` VALUES ('129.10.115.51', '2016-06-20', 3, '1466436524');
INSERT INTO `statistik` VALUES ('129.10.115.241', '2016-06-20', 1, '1466436524');
INSERT INTO `statistik` VALUES ('69.61.12.70', '2016-06-21', 4, '1466514812');
INSERT INTO `statistik` VALUES ('114.125.179.192', '2016-06-21', 5, '1466458664');
INSERT INTO `statistik` VALUES ('202.67.37.43', '2016-06-21', 1, '1466462030');
INSERT INTO `statistik` VALUES ('129.10.115.241', '2016-06-21', 3, '1466462228');
INSERT INTO `statistik` VALUES ('129.10.115.51', '2016-06-21', 5, '1466492679');
INSERT INTO `statistik` VALUES ('208.80.194.123', '2016-06-21', 1, '1466463534');
INSERT INTO `statistik` VALUES ('36.83.123.122', '2016-06-21', 51, '1466515966');
INSERT INTO `statistik` VALUES ('66.249.65.93', '2016-06-21', 2, '1466524602');
INSERT INTO `statistik` VALUES ('208.80.194.121', '2016-06-21', 1, '1466465521');
INSERT INTO `statistik` VALUES ('66.249.84.165', '2016-06-21', 1, '1466469733');
INSERT INTO `statistik` VALUES ('66.102.6.237', '2016-06-21', 1, '1466469734');
INSERT INTO `statistik` VALUES ('114.125.179.246', '2016-06-21', 2, '1466475599');
INSERT INTO `statistik` VALUES ('162.243.233.58', '2016-06-21', 1, '1466475467');
INSERT INTO `statistik` VALUES ('36.75.241.70', '2016-06-21', 106, '1466495031');
INSERT INTO `statistik` VALUES ('180.76.15.156', '2016-06-21', 1, '1466483240');
INSERT INTO `statistik` VALUES ('162.223.88.37', '2016-06-21', 1, '1466487391');
INSERT INTO `statistik` VALUES ('66.249.65.90', '2016-06-21', 2, '1466510541');
INSERT INTO `statistik` VALUES ('114.125.171.104', '2016-06-21', 31, '1466499991');
INSERT INTO `statistik` VALUES ('121.40.64.73', '2016-06-21', 1, '1466498875');
INSERT INTO `statistik` VALUES ('120.26.72.221', '2016-06-21', 1, '1466499112');
INSERT INTO `statistik` VALUES ('121.40.141.31', '2016-06-21', 1, '1466499206');
INSERT INTO `statistik` VALUES ('202.67.36.253', '2016-06-21', 22, '1466506591');
INSERT INTO `statistik` VALUES ('91.121.83.118', '2016-06-21', 1, '1466504188');
INSERT INTO `statistik` VALUES ('5.255.250.50', '2016-06-21', 1, '1466512113');
INSERT INTO `statistik` VALUES ('178.32.53.131', '2016-06-21', 1, '1466515741');
INSERT INTO `statistik` VALUES ('167.114.103.181', '2016-06-21', 3, '1466516868');
INSERT INTO `statistik` VALUES ('66.249.66.169', '2016-06-21', 1, '1466520846');
INSERT INTO `statistik` VALUES ('66.249.65.90', '2016-06-22', 2, '1466533453');
INSERT INTO `statistik` VALUES ('8.37.230.21', '2016-06-22', 1, '1466532002');
INSERT INTO `statistik` VALUES ('36.83.74.181', '2016-06-22', 1, '1466532004');
INSERT INTO `statistik` VALUES ('66.249.65.96', '2016-06-22', 1, '1466533442');
INSERT INTO `statistik` VALUES ('69.61.12.70', '2016-06-22', 4, '1466601348');
INSERT INTO `statistik` VALUES ('161.69.163.20', '2016-06-22', 12, '1466593466');
INSERT INTO `statistik` VALUES ('202.67.36.245', '2016-06-22', 8, '1466541542');
INSERT INTO `statistik` VALUES ('212.117.180.21', '2016-06-22', 1, '1466542975');
INSERT INTO `statistik` VALUES ('114.125.186.35', '2016-06-22', 11, '1466544454');
INSERT INTO `statistik` VALUES ('180.241.178.201', '2016-06-22', 26, '1466567569');
INSERT INTO `statistik` VALUES ('208.80.192.33', '2016-06-22', 1, '1466551718');
INSERT INTO `statistik` VALUES ('208.80.194.27', '2016-06-22', 1, '1466553074');
INSERT INTO `statistik` VALUES ('129.10.115.241', '2016-06-22', 2, '1466554276');
INSERT INTO `statistik` VALUES ('129.10.115.51', '2016-06-22', 2, '1466554286');
INSERT INTO `statistik` VALUES ('36.75.253.198', '2016-06-22', 2, '1466556036');
INSERT INTO `statistik` VALUES ('8.37.230.141', '2016-06-22', 4, '1466557643');
INSERT INTO `statistik` VALUES ('114.125.171.23', '2016-06-22', 10, '1466559072');
INSERT INTO `statistik` VALUES ('66.249.65.93', '2016-06-22', 1, '1466558626');
INSERT INTO `statistik` VALUES ('114.125.175.227', '2016-06-22', 4, '1466559990');
INSERT INTO `statistik` VALUES ('66.249.84.166', '2016-06-22', 1, '1466562769');
INSERT INTO `statistik` VALUES ('36.83.66.159', '2016-06-22', 5, '1466583301');
INSERT INTO `statistik` VALUES ('8.37.232.111', '2016-06-22', 6, '1466604596');
INSERT INTO `statistik` VALUES ('120.169.255.122', '2016-06-22', 10, '1466577235');
INSERT INTO `statistik` VALUES ('36.75.144.179', '2016-06-22', 213, '1466611920');
INSERT INTO `statistik` VALUES ('36.83.123.122', '2016-06-22', 5, '1466581052');
INSERT INTO `statistik` VALUES ('178.162.216.30', '2016-06-22', 12, '1466580626');
INSERT INTO `statistik` VALUES ('91.109.30.68', '2016-06-22', 21, '1466581630');
INSERT INTO `statistik` VALUES ('91.109.30.86', '2016-06-22', 8, '1466582485');
INSERT INTO `statistik` VALUES ('195.154.165.246', '2016-06-22', 1, '1466582822');
INSERT INTO `statistik` VALUES ('91.121.83.118', '2016-06-22', 1, '1466583092');
INSERT INTO `statistik` VALUES ('42.62.176.10', '2016-06-22', 150, '1466598767');
INSERT INTO `statistik` VALUES ('91.109.30.110', '2016-06-22', 6, '1466583259');
INSERT INTO `statistik` VALUES ('114.125.170.127', '2016-06-22', 40, '1466593317');
INSERT INTO `statistik` VALUES ('114.125.169.45', '2016-06-22', 1, '1466587266');
INSERT INTO `statistik` VALUES ('114.125.179.202', '2016-06-22', 7, '1466589208');
INSERT INTO `statistik` VALUES ('114.125.176.4', '2016-06-22', 2, '1466589534');
INSERT INTO `statistik` VALUES ('114.125.177.250', '2016-06-22', 8, '1466591428');
INSERT INTO `statistik` VALUES ('114.125.179.126', '2016-06-22', 1, '1466592557');
INSERT INTO `statistik` VALUES ('114.125.191.247', '2016-06-22', 1, '1466593105');
INSERT INTO `statistik` VALUES ('114.125.179.243', '2016-06-22', 12, '1466597787');
INSERT INTO `statistik` VALUES ('36.75.145.205', '2016-06-22', 27, '1466602657');
INSERT INTO `statistik` VALUES ('202.67.37.38', '2016-06-22', 7, '1466600419');
INSERT INTO `statistik` VALUES ('120.169.255.213', '2016-06-22', 20, '1466605261');
INSERT INTO `statistik` VALUES ('114.125.178.147', '2016-06-22', 13, '1466605374');
INSERT INTO `statistik` VALUES ('138.201.58.84', '2016-06-22', 2, '1466612168');
INSERT INTO `statistik` VALUES ('180.254.203.64', '2016-06-23', 16, '1466621983');
INSERT INTO `statistik` VALUES ('69.61.12.70', '2016-06-23', 4, '1466687787');
INSERT INTO `statistik` VALUES ('54.158.107.22', '2016-06-23', 1, '1466628653');
INSERT INTO `statistik` VALUES ('208.80.194.120', '2016-06-23', 1, '1466638127');
INSERT INTO `statistik` VALUES ('208.80.194.27', '2016-06-23', 1, '1466638324');
INSERT INTO `statistik` VALUES ('114.125.173.254', '2016-06-23', 6, '1466638979');
INSERT INTO `statistik` VALUES ('128.199.100.9', '2016-06-23', 1, '1466648148');
INSERT INTO `statistik` VALUES ('202.67.37.45', '2016-06-23', 15, '1466648862');
INSERT INTO `statistik` VALUES ('36.83.80.96', '2016-06-23', 140, '1466668112');
INSERT INTO `statistik` VALUES ('101.255.82.139', '2016-06-23', 6, '1466650586');
INSERT INTO `statistik` VALUES ('178.162.216.35', '2016-06-23', 80, '1466674698');
INSERT INTO `statistik` VALUES ('178.162.216.32', '2016-06-23', 37, '1466672163');
INSERT INTO `statistik` VALUES ('178.162.216.38', '2016-06-23', 14, '1466668402');
INSERT INTO `statistik` VALUES ('66.249.66.165', '2016-06-23', 2, '1466683141');
INSERT INTO `statistik` VALUES ('178.162.216.30', '2016-06-23', 1, '1466657233');
INSERT INTO `statistik` VALUES ('91.109.30.72', '2016-06-23', 38, '1466660691');
INSERT INTO `statistik` VALUES ('8.37.232.111', '2016-06-23', 1, '1466659122');
INSERT INTO `statistik` VALUES ('120.164.46.64', '2016-06-23', 8, '1466659457');
INSERT INTO `statistik` VALUES ('91.109.30.96', '2016-06-23', 1, '1466660852');
INSERT INTO `statistik` VALUES ('178.162.216.36', '2016-06-23', 5, '1466662025');
INSERT INTO `statistik` VALUES ('178.162.216.34', '2016-06-23', 9, '1466661298');
INSERT INTO `statistik` VALUES ('66.249.85.222', '2016-06-23', 1, '1466661241');
INSERT INTO `statistik` VALUES ('66.249.65.93', '2016-06-23', 3, '1466687864');
INSERT INTO `statistik` VALUES ('91.109.30.90', '2016-06-23', 4, '1466664704');
INSERT INTO `statistik` VALUES ('161.69.163.20', '2016-06-23', 6, '1466665244');
INSERT INTO `statistik` VALUES ('115.178.254.83', '2016-06-23', 22, '1466668187');
INSERT INTO `statistik` VALUES ('36.75.141.232', '2016-06-23', 88, '1466693377');
INSERT INTO `statistik` VALUES ('36.83.111.227', '2016-06-23', 108, '1466674396');
INSERT INTO `statistik` VALUES ('148.251.255.92', '2016-06-23', 1, '1466669109');
INSERT INTO `statistik` VALUES ('142.4.218.156', '2016-06-23', 4, '1466669353');
INSERT INTO `statistik` VALUES ('91.109.30.117', '2016-06-23', 14, '1466670958');
INSERT INTO `statistik` VALUES ('8.37.233.242', '2016-06-23', 5, '1466679780');
INSERT INTO `statistik` VALUES ('120.164.45.74', '2016-06-23', 32, '1466682854');
INSERT INTO `statistik` VALUES ('91.121.83.118', '2016-06-23', 1, '1466678436');
INSERT INTO `statistik` VALUES ('114.125.176.139', '2016-06-23', 1, '1466681755');
INSERT INTO `statistik` VALUES ('66.249.65.90', '2016-06-23', 2, '1466687850');
INSERT INTO `statistik` VALUES ('180.249.17.35', '2016-06-23', 19, '1466683091');
INSERT INTO `statistik` VALUES ('157.55.39.91', '2016-06-23', 1, '1466685026');
INSERT INTO `statistik` VALUES ('66.249.84.166', '2016-06-23', 1, '1466688243');
INSERT INTO `statistik` VALUES ('202.67.37.35', '2016-06-23', 1, '1466689565');
INSERT INTO `statistik` VALUES ('202.67.37.33', '2016-06-23', 13, '1466691253');
INSERT INTO `statistik` VALUES ('107.170.130.29', '2016-06-23', 1, '1466697552');
INSERT INTO `statistik` VALUES ('173.252.88.93', '2016-06-24', 1, '1466702526');
INSERT INTO `statistik` VALUES ('36.69.25.93', '2016-06-24', 1, '1466702530');
INSERT INTO `statistik` VALUES ('66.249.65.90', '2016-06-24', 2, '1466787531');
INSERT INTO `statistik` VALUES ('141.8.143.221', '2016-06-24', 1, '1466705865');
INSERT INTO `statistik` VALUES ('66.249.65.93', '2016-06-24', 2, '1466712708');
INSERT INTO `statistik` VALUES ('69.61.12.70', '2016-06-24', 4, '1466773382');
INSERT INTO `statistik` VALUES ('104.131.147.112', '2016-06-24', 1, '1466709578');
INSERT INTO `statistik` VALUES ('66.249.65.96', '2016-06-24', 2, '1466744732');
INSERT INTO `statistik` VALUES ('202.67.37.44', '2016-06-24', 24, '1466715004');
INSERT INTO `statistik` VALUES ('115.178.251.10', '2016-06-24', 13, '1466721783');
INSERT INTO `statistik` VALUES ('8.37.232.111', '2016-06-24', 1, '1466722448');
INSERT INTO `statistik` VALUES ('120.164.45.74', '2016-06-24', 15, '1466724855');
INSERT INTO `statistik` VALUES ('208.80.194.27', '2016-06-24', 1, '1466723398');
INSERT INTO `statistik` VALUES ('208.80.194.124', '2016-06-24', 1, '1466723821');
INSERT INTO `statistik` VALUES ('54.90.213.208', '2016-06-24', 1, '1466728051');
INSERT INTO `statistik` VALUES ('180.249.17.35', '2016-06-24', 24, '1466738071');
INSERT INTO `statistik` VALUES ('180.251.170.96', '2016-06-24', 163, '1466759960');
INSERT INTO `statistik` VALUES ('36.83.129.40', '2016-06-24', 2, '1466741044');
INSERT INTO `statistik` VALUES ('115.178.235.203', '2016-06-24', 14, '1466750009');
INSERT INTO `statistik` VALUES ('104.236.182.170', '2016-06-24', 1, '1466754056');
INSERT INTO `statistik` VALUES ('36.66.250.52', '2016-06-24', 70, '1466759360');
INSERT INTO `statistik` VALUES ('146.20.65.193', '2016-06-24', 1, '1466756213');
INSERT INTO `statistik` VALUES ('206.253.224.14', '2016-06-24', 1, '1466758353');
INSERT INTO `statistik` VALUES ('161.69.163.20', '2016-06-24', 6, '1466763621');
INSERT INTO `statistik` VALUES ('158.69.228.18', '2016-06-24', 1, '1466764062');
INSERT INTO `statistik` VALUES ('91.121.83.118', '2016-06-24', 1, '1466766759');
INSERT INTO `statistik` VALUES ('36.83.140.156', '2016-06-24', 45, '1466771961');
INSERT INTO `statistik` VALUES ('202.67.36.252', '2016-06-24', 31, '1466768628');
INSERT INTO `statistik` VALUES ('115.178.252.98', '2016-06-24', 11, '1466771537');
INSERT INTO `statistik` VALUES ('198.27.69.229', '2016-06-24', 2, '1466771928');
INSERT INTO `statistik` VALUES ('8.37.233.242', '2016-06-24', 1, '1466778787');
INSERT INTO `statistik` VALUES ('120.169.255.92', '2016-06-24', 3, '1466778941');
INSERT INTO `statistik` VALUES ('60.250.188.6', '2016-06-24', 1, '1466779542');
INSERT INTO `statistik` VALUES ('202.67.37.35', '2016-06-24', 32, '1466785037');
INSERT INTO `statistik` VALUES ('36.75.240.59', '2016-06-24', 55, '1466785527');
INSERT INTO `statistik` VALUES ('66.249.65.90', '2016-06-25', 2, '1466853981');
INSERT INTO `statistik` VALUES ('66.249.65.93', '2016-06-25', 1, '1466792134');
INSERT INTO `statistik` VALUES ('69.61.12.70', '2016-06-25', 2, '1466861581');
INSERT INTO `statistik` VALUES ('104.236.200.76', '2016-06-25', 1, '1466795914');
INSERT INTO `statistik` VALUES ('8.37.232.111', '2016-06-25', 2, '1466860577');
INSERT INTO `statistik` VALUES ('120.169.255.92', '2016-06-25', 6, '1466798512');
INSERT INTO `statistik` VALUES ('208.80.194.27', '2016-06-25', 1, '1466810958');
INSERT INTO `statistik` VALUES ('208.80.194.121', '2016-06-25', 1, '1466812405');
INSERT INTO `statistik` VALUES ('91.109.30.91', '2016-06-25', 4, '1466812532');
INSERT INTO `statistik` VALUES ('91.109.30.79', '2016-06-25', 3, '1466812606');
INSERT INTO `statistik` VALUES ('202.67.37.46', '2016-06-25', 15, '1466813198');
INSERT INTO `statistik` VALUES ('8.37.234.170', '2016-06-25', 1, '1466853972');
INSERT INTO `statistik` VALUES ('114.125.14.229', '2016-06-25', 3, '1466854239');
INSERT INTO `statistik` VALUES ('91.109.30.80', '2016-06-25', 1, '1466854756');
INSERT INTO `statistik` VALUES ('36.75.240.59', '2016-06-25', 55, '1466865485');
INSERT INTO `statistik` VALUES ('120.164.43.84', '2016-06-25', 9, '1466861510');
INSERT INTO `statistik` VALUES ('202.67.36.241', '2016-06-25', 60, '1466861855');
INSERT INTO `statistik` VALUES ('66.249.84.165', '2016-06-25', 1, '1466863311');
INSERT INTO `statistik` VALUES ('180.249.230.111', '2016-06-25', 6, '1466865087');
INSERT INTO `statistik` VALUES ('180.249.228.105', '2016-06-25', 6, '1466865202');
INSERT INTO `statistik` VALUES ('36.83.138.142', '2016-06-25', 7, '1466865066');
INSERT INTO `statistik` VALUES ('36.75.141.10', '2016-06-25', 35, '1466865831');
INSERT INTO `statistik` VALUES ('69.171.230.99', '2016-06-25', 2, '1466867322');
INSERT INTO `statistik` VALUES ('69.171.230.109', '2016-06-25', 1, '1466865568');
INSERT INTO `statistik` VALUES ('69.171.230.114', '2016-06-25', 3, '1466867328');
INSERT INTO `statistik` VALUES ('69.171.230.106', '2016-06-25', 1, '1466865575');
INSERT INTO `statistik` VALUES ('69.171.230.107', '2016-06-25', 2, '1466867317');
INSERT INTO `statistik` VALUES ('69.171.230.101', '2016-06-25', 1, '1466865592');
INSERT INTO `statistik` VALUES ('69.171.230.100', '2016-06-25', 1, '1466865634');
INSERT INTO `statistik` VALUES ('78.47.67.232', '2016-06-25', 1, '1466865697');
INSERT INTO `statistik` VALUES ('69.171.230.113', '2016-06-25', 1, '1466865698');
INSERT INTO `statistik` VALUES ('69.171.230.102', '2016-06-25', 2, '1466867323');
INSERT INTO `statistik` VALUES ('69.171.230.119', '2016-06-25', 2, '1466865713');
INSERT INTO `statistik` VALUES ('69.171.230.112', '2016-06-25', 1, '1466867083');
INSERT INTO `statistik` VALUES ('69.171.230.116', '2016-06-25', 1, '1466867301');
INSERT INTO `statistik` VALUES ('69.171.230.121', '2016-06-25', 1, '1466867325');
INSERT INTO `statistik` VALUES ('69.171.230.120', '2016-06-25', 1, '1466867327');
INSERT INTO `statistik` VALUES ('69.171.230.103', '2016-06-25', 1, '1466867329');
INSERT INTO `statistik` VALUES ('45.79.203.152', '2016-06-25', 3, '1466872650');
INSERT INTO `statistik` VALUES ('69.61.12.70', '2016-06-26', 4, '1466948453');
INSERT INTO `statistik` VALUES ('114.125.171.245', '2016-06-26', 7, '1466887247');
INSERT INTO `statistik` VALUES ('202.67.37.35', '2016-06-26', 36, '1466900762');
INSERT INTO `statistik` VALUES ('208.80.192.33', '2016-06-26', 2, '1466898078');
INSERT INTO `statistik` VALUES ('69.171.230.99', '2016-06-26', 1, '1466903991');
INSERT INTO `statistik` VALUES ('36.75.240.59', '2016-06-26', 238, '1466959009');
INSERT INTO `statistik` VALUES ('66.249.65.90', '2016-06-26', 3, '1466905594');
INSERT INTO `statistik` VALUES ('66.249.65.93', '2016-06-26', 2, '1466905534');
INSERT INTO `statistik` VALUES ('66.249.65.96', '2016-06-26', 3, '1466938080');
INSERT INTO `statistik` VALUES ('36.75.141.10', '2016-06-26', 1, '1466905823');
INSERT INTO `statistik` VALUES ('202.67.37.37', '2016-06-26', 91, '1466920278');
INSERT INTO `statistik` VALUES ('180.249.17.92', '2016-06-26', 94, '1466940004');
INSERT INTO `statistik` VALUES ('91.109.30.90', '2016-06-26', 11, '1466909733');
INSERT INTO `statistik` VALUES ('178.162.216.34', '2016-06-26', 14, '1466912375');
INSERT INTO `statistik` VALUES ('120.164.44.245', '2016-06-26', 18, '1466912900');
INSERT INTO `statistik` VALUES ('161.69.163.20', '2016-06-26', 6, '1466914512');
INSERT INTO `statistik` VALUES ('8.37.232.111', '2016-06-26', 1, '1466915348');
INSERT INTO `statistik` VALUES ('120.164.43.33', '2016-06-26', 6, '1466915829');
INSERT INTO `statistik` VALUES ('36.84.1.15', '2016-06-26', 82, '1466922517');
INSERT INTO `statistik` VALUES ('202.67.37.41', '2016-06-26', 69, '1466952781');
INSERT INTO `statistik` VALUES ('180.249.230.33', '2016-06-26', 6, '1466934070');
INSERT INTO `statistik` VALUES ('202.67.37.47', '2016-06-26', 8, '1466940695');
INSERT INTO `statistik` VALUES ('65.19.167.132', '2016-06-26', 1, '1466938624');
INSERT INTO `statistik` VALUES ('66.249.84.166', '2016-06-26', 1, '1466940483');
INSERT INTO `statistik` VALUES ('114.125.187.31', '2016-06-26', 15, '1466941588');
INSERT INTO `statistik` VALUES ('208.87.237.201', '2016-06-26', 1, '1466946903');
INSERT INTO `statistik` VALUES ('72.182.40.181', '2016-06-26', 1, '1466946907');
INSERT INTO `statistik` VALUES ('162.243.233.58', '2016-06-26', 1, '1466946940');
INSERT INTO `statistik` VALUES ('202.67.37.42', '2016-06-26', 5, '1466949901');
INSERT INTO `statistik` VALUES ('91.121.83.118', '2016-06-26', 1, '1466948822');
INSERT INTO `statistik` VALUES ('38.99.62.91', '2016-06-26', 1, '1466949580');
INSERT INTO `statistik` VALUES ('146.20.65.193', '2016-06-26', 1, '1466952033');
INSERT INTO `statistik` VALUES ('104.236.122.179', '2016-06-26', 1, '1466958040');
INSERT INTO `statistik` VALUES ('45.33.15.94', '2016-06-27', 4, '1467042570');
INSERT INTO `statistik` VALUES ('69.61.12.70', '2016-06-27', 4, '1467034514');
INSERT INTO `statistik` VALUES ('36.75.240.59', '2016-06-27', 3, '1466972426');
INSERT INTO `statistik` VALUES ('202.67.36.250', '2016-06-27', 1, '1466973468');
INSERT INTO `statistik` VALUES ('208.80.194.125', '2016-06-27', 1, '1466982106');
INSERT INTO `statistik` VALUES ('208.80.194.126', '2016-06-27', 1, '1466983045');
INSERT INTO `statistik` VALUES ('66.249.65.90', '2016-06-27', 3, '1467010916');
INSERT INTO `statistik` VALUES ('36.66.250.52', '2016-06-27', 45, '1467000388');
INSERT INTO `statistik` VALUES ('66.249.65.96', '2016-06-27', 2, '1467038255');
INSERT INTO `statistik` VALUES ('161.69.163.20', '2016-06-27', 6, '1466989512');
INSERT INTO `statistik` VALUES ('66.249.84.166', '2016-06-27', 1, '1466989772');
INSERT INTO `statistik` VALUES ('180.251.145.230', '2016-06-27', 16, '1466990832');
INSERT INTO `statistik` VALUES ('114.125.178.24', '2016-06-27', 4, '1466993110');
INSERT INTO `statistik` VALUES ('202.67.37.36', '2016-06-27', 15, '1466994171');
INSERT INTO `statistik` VALUES ('178.162.216.34', '2016-06-27', 8, '1466998580');
INSERT INTO `statistik` VALUES ('180.251.171.189', '2016-06-27', 126, '1467016661');
INSERT INTO `statistik` VALUES ('91.109.30.122', '2016-06-27', 34, '1467015261');
INSERT INTO `statistik` VALUES ('114.125.176.167', '2016-06-27', 9, '1467000646');
INSERT INTO `statistik` VALUES ('91.109.30.110', '2016-06-27', 9, '1467000842');
INSERT INTO `statistik` VALUES ('91.109.30.68', '2016-06-27', 26, '1467003528');
INSERT INTO `statistik` VALUES ('178.162.216.38', '2016-06-27', 15, '1467004032');
INSERT INTO `statistik` VALUES ('66.102.6.241', '2016-06-27', 1, '1467007610');
INSERT INTO `statistik` VALUES ('104.236.121.91', '2016-06-27', 11, '1467012091');
INSERT INTO `statistik` VALUES ('91.109.30.116', '2016-06-27', 3, '1467012994');
INSERT INTO `statistik` VALUES ('158.69.25.178', '2016-06-27', 3, '1467022299');
INSERT INTO `statistik` VALUES ('202.67.37.47', '2016-06-27', 65, '1467034755');
INSERT INTO `statistik` VALUES ('69.171.230.108', '2016-06-27', 1, '1467028398');
INSERT INTO `statistik` VALUES ('180.249.10.63', '2016-06-27', 4, '1467028698');
INSERT INTO `statistik` VALUES ('180.249.13.5', '2016-06-27', 2, '1467028695');
INSERT INTO `statistik` VALUES ('180.254.194.156', '2016-06-27', 2, '1467028721');
INSERT INTO `statistik` VALUES ('66.249.65.93', '2016-06-27', 1, '1467028693');
INSERT INTO `statistik` VALUES ('146.20.65.193', '2016-06-27', 2, '1467041859');
INSERT INTO `statistik` VALUES ('114.125.176.188', '2016-06-27', 3, '1467031521');
INSERT INTO `statistik` VALUES ('141.8.143.224', '2016-06-27', 1, '1467034085');
INSERT INTO `statistik` VALUES ('148.251.255.92', '2016-06-27', 1, '1467040123');
INSERT INTO `statistik` VALUES ('114.125.191.91', '2016-06-27', 6, '1467041826');
INSERT INTO `statistik` VALUES ('54.225.50.187', '2016-06-27', 1, '1467041765');
INSERT INTO `statistik` VALUES ('91.121.83.118', '2016-06-27', 1, '1467043956');
INSERT INTO `statistik` VALUES ('114.125.191.219', '2016-06-28', 1, '1467047560');
INSERT INTO `statistik` VALUES ('66.249.65.90', '2016-06-28', 6, '1467122070');
INSERT INTO `statistik` VALUES ('161.69.163.20', '2016-06-28', 12, '1467079449');
INSERT INTO `statistik` VALUES ('69.61.12.70', '2016-06-28', 4, '1467121298');
INSERT INTO `statistik` VALUES ('120.26.63.86', '2016-06-28', 1, '1467059921');
INSERT INTO `statistik` VALUES ('120.26.53.92', '2016-06-28', 1, '1467059943');
INSERT INTO `statistik` VALUES ('120.26.72.221', '2016-06-28', 1, '1467059978');
INSERT INTO `statistik` VALUES ('121.43.226.181', '2016-06-28', 1, '1467060024');
INSERT INTO `statistik` VALUES ('121.40.160.128', '2016-06-28', 1, '1467060077');
INSERT INTO `statistik` VALUES ('202.67.37.36', '2016-06-28', 7, '1467062714');
INSERT INTO `statistik` VALUES ('46.229.167.149', '2016-06-28', 3, '1467063360');
INSERT INTO `statistik` VALUES ('114.125.191.191', '2016-06-28', 48, '1467068307');
INSERT INTO `statistik` VALUES ('66.249.65.96', '2016-06-28', 3, '1467131347');
INSERT INTO `statistik` VALUES ('208.80.194.124', '2016-06-28', 1, '1467069983');
INSERT INTO `statistik` VALUES ('208.80.192.33', '2016-06-28', 1, '1467072097');
INSERT INTO `statistik` VALUES ('36.83.104.153', '2016-06-28', 18, '1467095647');
INSERT INTO `statistik` VALUES ('168.235.207.205', '2016-06-28', 3, '1467082001');
INSERT INTO `statistik` VALUES ('114.125.178.33', '2016-06-28', 45, '1467084591');
INSERT INTO `statistik` VALUES ('69.171.230.121', '2016-06-28', 1, '1467086290');
INSERT INTO `statistik` VALUES ('69.171.230.122', '2016-06-28', 1, '1467086371');
INSERT INTO `statistik` VALUES ('180.251.153.221', '2016-06-28', 41, '1467114873');
INSERT INTO `statistik` VALUES ('114.125.175.102', '2016-06-28', 29, '1467093105');
INSERT INTO `statistik` VALUES ('114.125.170.92', '2016-06-28', 5, '1467092634');
INSERT INTO `statistik` VALUES ('64.74.215.113', '2016-06-28', 1, '1467098506');
INSERT INTO `statistik` VALUES ('129.10.232.9', '2016-06-28', 2, '1467103037');
INSERT INTO `statistik` VALUES ('129.10.232.5', '2016-06-28', 2, '1467103038');
INSERT INTO `statistik` VALUES ('114.125.169.3', '2016-06-28', 33, '1467107314');
INSERT INTO `statistik` VALUES ('202.67.37.34', '2016-06-28', 123, '1467123818');
INSERT INTO `statistik` VALUES ('114.125.190.245', '2016-06-28', 68, '1467114758');
INSERT INTO `statistik` VALUES ('180.251.145.230', '2016-06-28', 54, '1467109908');
INSERT INTO `statistik` VALUES ('114.125.175.113', '2016-06-28', 7, '1467117474');
INSERT INTO `statistik` VALUES ('36.83.127.172', '2016-06-28', 15, '1467121173');
INSERT INTO `statistik` VALUES ('114.125.173.77', '2016-06-28', 1, '1467117572');
INSERT INTO `statistik` VALUES ('66.249.84.166', '2016-06-28', 1, '1467117632');
INSERT INTO `statistik` VALUES ('114.125.185.64', '2016-06-28', 8, '1467118317');
INSERT INTO `statistik` VALUES ('8.37.233.242', '2016-06-28', 1, '1467121024');
INSERT INTO `statistik` VALUES ('69.171.230.107', '2016-06-28', 1, '1467121061');
INSERT INTO `statistik` VALUES ('120.169.254.84', '2016-06-28', 2, '1467121239');
INSERT INTO `statistik` VALUES ('66.249.93.187', '2016-06-28', 1, '1467121476');
INSERT INTO `statistik` VALUES ('139.195.48.133', '2016-06-28', 1, '1467121479');
INSERT INTO `statistik` VALUES ('139.255.134.233', '2016-06-28', 3, '1467121598');
INSERT INTO `statistik` VALUES ('202.67.39.24', '2016-06-28', 1, '1467121703');
INSERT INTO `statistik` VALUES ('114.121.153.172', '2016-06-28', 1, '1467121870');
INSERT INTO `statistik` VALUES ('114.125.27.64', '2016-06-28', 1, '1467122151');
INSERT INTO `statistik` VALUES ('79.35.127.67', '2016-06-28', 1, '1467122847');
INSERT INTO `statistik` VALUES ('122.100.184.165', '2016-06-28', 1, '1467123020');
INSERT INTO `statistik` VALUES ('99.62.92.27', '2016-06-28', 1, '1467123813');
INSERT INTO `statistik` VALUES ('86.126.86.140', '2016-06-28', 1, '1467124018');
INSERT INTO `statistik` VALUES ('114.120.237.160', '2016-06-28', 1, '1467124261');
INSERT INTO `statistik` VALUES ('120.169.254.240', '2016-06-28', 1, '1467124350');
INSERT INTO `statistik` VALUES ('36.75.240.59', '2016-06-28', 26, '1467126389');
INSERT INTO `statistik` VALUES ('1.187.14.36', '2016-06-28', 1, '1467126394');
INSERT INTO `statistik` VALUES ('223.196.83.254', '2016-06-28', 2, '1467127724');
INSERT INTO `statistik` VALUES ('192.99.46.89', '2016-06-28', 4, '1467128240');
INSERT INTO `statistik` VALUES ('45.33.15.94', '2016-06-28', 2, '1467128802');
INSERT INTO `statistik` VALUES ('180.251.148.14', '2016-06-28', 8, '1467133141');
INSERT INTO `statistik` VALUES ('36.83.129.6', '2016-06-28', 8, '1467132902');
INSERT INTO `statistik` VALUES ('36.75.148.121', '2016-06-28', 8, '1467133063');
INSERT INTO `statistik` VALUES ('120.169.254.32', '2016-06-28', 1, '1467132840');
INSERT INTO `statistik` VALUES ('129.10.232.9', '2016-06-29', 4, '1467168653');
INSERT INTO `statistik` VALUES ('129.10.232.5', '2016-06-29', 3, '1467170464');
INSERT INTO `statistik` VALUES ('120.164.41.208', '2016-06-29', 1, '1467138274');
INSERT INTO `statistik` VALUES ('69.61.12.70', '2016-06-29', 4, '1467207524');
INSERT INTO `statistik` VALUES ('69.171.230.102', '2016-06-29', 4, '1467203929');
INSERT INTO `statistik` VALUES ('91.121.83.118', '2016-06-29', 1, '1467145518');
INSERT INTO `statistik` VALUES ('202.67.37.45', '2016-06-29', 1, '1467146083');
INSERT INTO `statistik` VALUES ('180.254.194.156', '2016-06-29', 3, '1467148431');
INSERT INTO `statistik` VALUES ('180.249.13.5', '2016-06-29', 6, '1467148539');
INSERT INTO `statistik` VALUES ('180.249.10.63', '2016-06-29', 4, '1467148525');
INSERT INTO `statistik` VALUES ('202.67.37.38', '2016-06-29', 9, '1467157705');
INSERT INTO `statistik` VALUES ('115.178.235.102', '2016-06-29', 1, '1467155743');
INSERT INTO `statistik` VALUES ('208.80.192.33', '2016-06-29', 1, '1467156411');
INSERT INTO `statistik` VALUES ('208.80.194.123', '2016-06-29', 1, '1467158911');
INSERT INTO `statistik` VALUES ('24.240.81.186', '2016-06-29', 1, '1467159418');
INSERT INTO `statistik` VALUES ('36.73.120.151', '2016-06-29', 1, '1467160026');
INSERT INTO `statistik` VALUES ('69.171.230.96', '2016-06-29', 3, '1467203631');
INSERT INTO `statistik` VALUES ('69.171.230.105', '2016-06-29', 2, '1467202553');
INSERT INTO `statistik` VALUES ('180.242.23.192', '2016-06-29', 1, '1467170731');
INSERT INTO `statistik` VALUES ('36.66.250.52', '2016-06-29', 7, '1467172574');
INSERT INTO `statistik` VALUES ('114.125.184.63', '2016-06-29', 4, '1467175106');
INSERT INTO `statistik` VALUES ('91.109.30.66', '2016-06-29', 29, '1467177498');
INSERT INTO `statistik` VALUES ('91.109.30.84', '2016-06-29', 5, '1467178139');
INSERT INTO `statistik` VALUES ('178.162.216.36', '2016-06-29', 9, '1467178727');
INSERT INTO `statistik` VALUES ('178.162.216.35', '2016-06-29', 23, '1467179611');
INSERT INTO `statistik` VALUES ('114.121.153.240', '2016-06-29', 1, '1467180629');
INSERT INTO `statistik` VALUES ('110.136.245.53', '2016-06-29', 17, '1467191863');
INSERT INTO `statistik` VALUES ('208.91.66.226', '2016-06-29', 1, '1467186721');
INSERT INTO `statistik` VALUES ('188.40.45.81', '2016-06-29', 1, '1467188148');
INSERT INTO `statistik` VALUES ('161.69.163.20', '2016-06-29', 6, '1467189990');
INSERT INTO `statistik` VALUES ('158.69.229.134', '2016-06-29', 1, '1467190512');
INSERT INTO `statistik` VALUES ('66.249.65.93', '2016-06-29', 1, '1467196899');
INSERT INTO `statistik` VALUES ('66.249.65.90', '2016-06-29', 3, '1467216598');
INSERT INTO `statistik` VALUES ('66.249.65.96', '2016-06-29', 3, '1467214822');
INSERT INTO `statistik` VALUES ('91.219.237.229', '2016-06-29', 1, '1467200029');
INSERT INTO `statistik` VALUES ('69.171.230.121', '2016-06-29', 3, '1467203468');
INSERT INTO `statistik` VALUES ('69.171.230.119', '2016-06-29', 4, '1467203861');
INSERT INTO `statistik` VALUES ('69.171.230.103', '2016-06-29', 6, '1467203730');
INSERT INTO `statistik` VALUES ('69.171.230.120', '2016-06-29', 4, '1467203619');
INSERT INTO `statistik` VALUES ('69.171.230.101', '2016-06-29', 3, '1467203862');
INSERT INTO `statistik` VALUES ('69.171.230.97', '2016-06-29', 3, '1467203408');
INSERT INTO `statistik` VALUES ('69.171.230.98', '2016-06-29', 1, '1467202243');
INSERT INTO `statistik` VALUES ('69.171.230.106', '2016-06-29', 3, '1467203861');
INSERT INTO `statistik` VALUES ('69.171.230.108', '2016-06-29', 2, '1467203410');
INSERT INTO `statistik` VALUES ('69.171.230.112', '2016-06-29', 3, '1467203662');
INSERT INTO `statistik` VALUES ('69.171.230.117', '2016-06-29', 3, '1467203426');
INSERT INTO `statistik` VALUES ('69.171.230.104', '2016-06-29', 3, '1467203465');
INSERT INTO `statistik` VALUES ('69.171.230.123', '2016-06-29', 1, '1467203025');
INSERT INTO `statistik` VALUES ('69.171.230.116', '2016-06-29', 1, '1467203047');
INSERT INTO `statistik` VALUES ('69.171.230.115', '2016-06-29', 1, '1467203072');
INSERT INTO `statistik` VALUES ('69.171.230.109', '2016-06-29', 1, '1467203421');
INSERT INTO `statistik` VALUES ('69.171.230.113', '2016-06-29', 1, '1467203425');
INSERT INTO `statistik` VALUES ('69.171.230.107', '2016-06-29', 1, '1467203439');
INSERT INTO `statistik` VALUES ('69.171.230.118', '2016-06-29', 1, '1467203476');
INSERT INTO `statistik` VALUES ('69.171.230.122', '2016-06-29', 1, '1467203891');
INSERT INTO `statistik` VALUES ('36.75.240.59', '2016-06-29', 60, '1467217211');
INSERT INTO `statistik` VALUES ('114.125.169.208', '2016-06-29', 46, '1467215118');
INSERT INTO `statistik` VALUES ('36.75.240.59', '2016-06-30', 38, '1467302857');
INSERT INTO `statistik` VALUES ('69.171.230.101', '2016-06-30', 1, '1467225298');
INSERT INTO `statistik` VALUES ('69.171.230.103', '2016-06-30', 1, '1467225343');
INSERT INTO `statistik` VALUES ('69.171.230.100', '2016-06-30', 1, '1467225345');
INSERT INTO `statistik` VALUES ('69.171.230.108', '2016-06-30', 1, '1467225348');
INSERT INTO `statistik` VALUES ('114.125.169.130', '2016-06-30', 5, '1467225815');
INSERT INTO `statistik` VALUES ('54.234.231.219', '2016-06-30', 1, '1467226396');
INSERT INTO `statistik` VALUES ('69.61.12.70', '2016-06-30', 3, '1467272208');
INSERT INTO `statistik` VALUES ('91.121.83.118', '2016-06-30', 1, '1467233165');
INSERT INTO `statistik` VALUES ('202.67.37.33', '2016-06-30', 9, '1467233597');
INSERT INTO `statistik` VALUES ('208.80.194.124', '2016-06-30', 1, '1467240538');
INSERT INTO `statistik` VALUES ('114.125.169.129', '2016-06-30', 1, '1467242975');
INSERT INTO `statistik` VALUES ('69.171.230.115', '2016-06-30', 1, '1467243249');
INSERT INTO `statistik` VALUES ('69.171.230.116', '2016-06-30', 1, '1467245032');
INSERT INTO `statistik` VALUES ('208.80.194.120', '2016-06-30', 1, '1467245113');
INSERT INTO `statistik` VALUES ('69.171.230.99', '2016-06-30', 1, '1467245349');
INSERT INTO `statistik` VALUES ('69.171.230.97', '2016-06-30', 1, '1467245350');
INSERT INTO `statistik` VALUES ('69.171.230.123', '2016-06-30', 1, '1467245352');
INSERT INTO `statistik` VALUES ('69.171.230.109', '2016-06-30', 1, '1467245353');
INSERT INTO `statistik` VALUES ('180.254.181.202', '2016-06-30', 18, '1467267348');
INSERT INTO `statistik` VALUES ('91.109.30.98', '2016-06-30', 5, '1467267335');
INSERT INTO `statistik` VALUES ('91.109.30.122', '2016-06-30', 31, '1467268722');
INSERT INTO `statistik` VALUES ('178.162.216.32', '2016-06-30', 10, '1467268984');
INSERT INTO `statistik` VALUES ('178.162.216.35', '2016-06-30', 1, '1467270566');
INSERT INTO `statistik` VALUES ('114.125.178.67', '2016-06-30', 52, '1467279954');
INSERT INTO `statistik` VALUES ('202.67.36.248', '2016-06-30', 6, '1467296098');
INSERT INTO `statistik` VALUES ('66.249.65.96', '2016-06-30', 2, '1467290477');
INSERT INTO `statistik` VALUES ('158.69.228.18', '2016-06-30', 1, '1467282990');
INSERT INTO `statistik` VALUES ('114.125.178.83', '2016-06-30', 2, '1467287864');
INSERT INTO `statistik` VALUES ('66.249.84.243', '2016-06-30', 1, '1467289883');
INSERT INTO `statistik` VALUES ('54.201.12.207', '2016-06-30', 1, '1467291984');
INSERT INTO `statistik` VALUES ('180.249.12.168', '2016-06-30', 19, '1467294753');
INSERT INTO `statistik` VALUES ('50.116.16.218', '2016-06-30', 2, '1467303842');
INSERT INTO `statistik` VALUES ('167.114.209.192', '2016-07-01', 1, '1467306863');
INSERT INTO `statistik` VALUES ('180.249.2.112', '2016-07-01', 68, '1467378119');
INSERT INTO `statistik` VALUES ('66.249.65.90', '2016-07-01', 2, '1467322828');
INSERT INTO `statistik` VALUES ('148.251.84.9', '2016-07-01', 2, '1467312137');
INSERT INTO `statistik` VALUES ('114.125.173.150', '2016-07-01', 8, '1467316382');
INSERT INTO `statistik` VALUES ('202.67.37.39', '2016-07-01', 3, '1467316863');
INSERT INTO `statistik` VALUES ('69.171.230.100', '2016-07-01', 1, '1467318453');
INSERT INTO `statistik` VALUES ('69.171.230.115', '2016-07-01', 1, '1467318458');
INSERT INTO `statistik` VALUES ('91.121.83.118', '2016-07-01', 1, '1467318611');
INSERT INTO `statistik` VALUES ('69.171.230.116', '2016-07-01', 1, '1467318651');
INSERT INTO `statistik` VALUES ('107.207.156.29', '2016-07-01', 2, '1467356489');
INSERT INTO `statistik` VALUES ('129.10.232.9', '2016-07-01', 3, '1467327789');
INSERT INTO `statistik` VALUES ('129.10.232.5', '2016-07-01', 1, '1467326287');
INSERT INTO `statistik` VALUES ('::1', '2016-07-01', 7, '1467331185');
INSERT INTO `statistik` VALUES ('180.254.132.216', '2016-07-01', 13, '1467348950');
INSERT INTO `statistik` VALUES ('36.66.250.52', '2016-07-01', 57, '1467357030');
INSERT INTO `statistik` VALUES ('64.246.165.10', '2016-07-01', 1, '1467340460');
INSERT INTO `statistik` VALUES ('202.80.215.198', '2016-07-01', 8, '1467376425');
INSERT INTO `statistik` VALUES ('36.85.178.207', '2016-07-01', 12, '1467361182');
INSERT INTO `statistik` VALUES ('69.171.230.105', '2016-07-01', 1, '1467347735');
INSERT INTO `statistik` VALUES ('114.125.191.4', '2016-07-01', 3, '1467348714');
INSERT INTO `statistik` VALUES ('114.125.185.135', '2016-07-01', 7, '1467349440');
INSERT INTO `statistik` VALUES ('198.27.69.229', '2016-07-01', 2, '1467352565');
INSERT INTO `statistik` VALUES ('202.67.36.246', '2016-07-01', 76, '1467372889');
INSERT INTO `statistik` VALUES ('133.1.236.59', '2016-07-01', 1, '1467362656');
INSERT INTO `statistik` VALUES ('54.163.79.44', '2016-07-01', 1, '1467363507');
INSERT INTO `statistik` VALUES ('114.125.170.46', '2016-07-01', 56, '1467371204');
INSERT INTO `statistik` VALUES ('114.125.187.196', '2016-07-01', 90, '1467370008');
INSERT INTO `statistik` VALUES ('66.249.84.237', '2016-07-01', 1, '1467370455');
INSERT INTO `statistik` VALUES ('192.160.102.164', '2016-07-01', 1, '1467372128');
INSERT INTO `statistik` VALUES ('202.67.36.247', '2016-07-01', 16, '1467389006');
INSERT INTO `statistik` VALUES ('36.83.117.195', '2016-07-01', 5, '1467386057');
INSERT INTO `statistik` VALUES ('180.254.205.229', '2016-07-01', 1, '1467385912');
INSERT INTO `statistik` VALUES ('36.75.145.5', '2016-07-01', 4, '1467386272');
INSERT INTO `statistik` VALUES ('125.162.240.175', '2016-07-02', 6, '1467395375');
INSERT INTO `statistik` VALUES ('125.162.240.87', '2016-07-02', 5, '1467395392');
INSERT INTO `statistik` VALUES ('180.251.145.196', '2016-07-02', 5, '1467395393');
INSERT INTO `statistik` VALUES ('208.80.194.123', '2016-07-02', 1, '1467396297');
INSERT INTO `statistik` VALUES ('66.249.65.93', '2016-07-02', 1, '1467401578');
INSERT INTO `statistik` VALUES ('66.249.65.90', '2016-07-02', 3, '1467406200');
INSERT INTO `statistik` VALUES ('180.249.2.112', '2016-07-02', 213, '1467455746');
INSERT INTO `statistik` VALUES ('107.207.156.29', '2016-07-02', 3, '1467462933');
INSERT INTO `statistik` VALUES ('207.182.140.210', '2016-07-02', 1, '1467413300');
INSERT INTO `statistik` VALUES ('114.125.170.222', '2016-07-02', 23, '1467444747');
INSERT INTO `statistik` VALUES ('36.68.56.140', '2016-07-02', 3, '1467421384');
INSERT INTO `statistik` VALUES ('202.80.215.198', '2016-07-02', 2, '1467437733');
INSERT INTO `statistik` VALUES ('8.37.233.242', '2016-07-02', 1, '1467426811');
INSERT INTO `statistik` VALUES ('202.67.36.254', '2016-07-02', 27, '1467434226');
INSERT INTO `statistik` VALUES ('120.169.254.12', '2016-07-02', 1, '1467427203');
INSERT INTO `statistik` VALUES ('67.198.140.203', '2016-07-02', 1, '1467430871');
INSERT INTO `statistik` VALUES ('66.249.85.219', '2016-07-02', 1, '1467432896');
INSERT INTO `statistik` VALUES ('69.171.230.110', '2016-07-02', 1, '1467437851');
INSERT INTO `statistik` VALUES ('112.215.153.1', '2016-07-02', 4, '1467443333');
INSERT INTO `statistik` VALUES ('110.136.240.193', '2016-07-02', 49, '1467450561');
INSERT INTO `statistik` VALUES ('114.125.174.223', '2016-07-02', 23, '1467445680');
INSERT INTO `statistik` VALUES ('202.67.37.41', '2016-07-02', 8, '1467458763');
INSERT INTO `statistik` VALUES ('180.251.158.52', '2016-07-02', 14, '1467459481');
INSERT INTO `statistik` VALUES ('114.125.169.203', '2016-07-02', 14, '1467459243');
INSERT INTO `statistik` VALUES ('114.125.187.17', '2016-07-03', 15, '1467483399');
INSERT INTO `statistik` VALUES ('202.67.37.36', '2016-07-03', 1, '1467492897');
INSERT INTO `statistik` VALUES ('66.249.65.93', '2016-07-03', 2, '1467526445');
INSERT INTO `statistik` VALUES ('67.198.140.203', '2016-07-03', 1, '1467506870');
INSERT INTO `statistik` VALUES ('66.249.65.90', '2016-07-03', 1, '1467510001');
INSERT INTO `statistik` VALUES ('107.207.156.29', '2016-07-03', 1, '1467510327');
INSERT INTO `statistik` VALUES ('8.37.233.242', '2016-07-03', 2, '1467526326');
INSERT INTO `statistik` VALUES ('120.169.255.163', '2016-07-03', 10, '1467526874');
INSERT INTO `statistik` VALUES ('66.249.65.96', '2016-07-03', 1, '1467514042');
INSERT INTO `statistik` VALUES ('208.80.194.30', '2016-07-03', 1, '1467518863');
INSERT INTO `statistik` VALUES ('114.125.175.204', '2016-07-03', 2, '1467525182');
INSERT INTO `statistik` VALUES ('202.67.37.39', '2016-07-03', 4, '1467528854');
INSERT INTO `statistik` VALUES ('202.67.37.44', '2016-07-03', 19, '1467545774');
INSERT INTO `statistik` VALUES ('62.210.37.82', '2016-07-03', 1, '1467544581');
INSERT INTO `statistik` VALUES ('146.20.65.193', '2016-07-03', 1, '1467549222');
INSERT INTO `statistik` VALUES ('180.249.2.112', '2016-07-03', 4, '1467551457');
INSERT INTO `statistik` VALUES ('66.249.66.165', '2016-07-03', 1, '1467555965');
INSERT INTO `statistik` VALUES ('69.171.230.99', '2016-07-03', 1, '1467556613');
INSERT INTO `statistik` VALUES ('69.171.230.108', '2016-07-03', 1, '1467556621');
INSERT INTO `statistik` VALUES ('69.171.230.123', '2016-07-03', 1, '1467556633');
INSERT INTO `statistik` VALUES ('91.121.83.118', '2016-07-03', 1, '1467557793');
INSERT INTO `statistik` VALUES ('107.207.156.29', '2016-07-04', 1, '1467565993');
INSERT INTO `statistik` VALUES ('66.249.65.90', '2016-07-04', 7, '1467618324');
INSERT INTO `statistik` VALUES ('114.125.177.250', '2016-07-04', 7, '1467579114');
INSERT INTO `statistik` VALUES ('66.249.66.169', '2016-07-04', 2, '1467597405');
INSERT INTO `statistik` VALUES ('66.249.65.93', '2016-07-04', 3, '1467650395');
INSERT INTO `statistik` VALUES ('161.69.163.20', '2016-07-04', 6, '1467594037');
INSERT INTO `statistik` VALUES ('36.75.143.151', '2016-07-04', 48, '1467603297');
INSERT INTO `statistik` VALUES ('8.37.233.242', '2016-07-04', 2, '1467603525');
INSERT INTO `statistik` VALUES ('120.169.255.187', '2016-07-04', 6, '1467603907');
INSERT INTO `statistik` VALUES ('202.67.37.43', '2016-07-04', 32, '1467603367');
INSERT INTO `statistik` VALUES ('180.249.2.112', '2016-07-04', 87, '1467650464');
INSERT INTO `statistik` VALUES ('69.61.12.70', '2016-07-04', 2, '1467638329');
INSERT INTO `statistik` VALUES ('113.35.251.98', '2016-07-04', 1, '1467625899');
INSERT INTO `statistik` VALUES ('129.10.232.9', '2016-07-04', 3, '1467632050');
INSERT INTO `statistik` VALUES ('129.10.232.5', '2016-07-04', 1, '1467632051');
INSERT INTO `statistik` VALUES ('114.125.174.142', '2016-07-04', 3, '1467632650');
INSERT INTO `statistik` VALUES ('192.160.102.164', '2016-07-04', 1, '1467643424');
INSERT INTO `statistik` VALUES ('133.1.236.59', '2016-07-04', 1, '1467649658');
INSERT INTO `statistik` VALUES ('120.26.72.221', '2016-07-04', 1, '1467649795');
INSERT INTO `statistik` VALUES ('121.40.160.128', '2016-07-04', 1, '1467649813');
INSERT INTO `statistik` VALUES ('121.40.64.73', '2016-07-04', 1, '1467649834');
INSERT INTO `statistik` VALUES ('120.26.102.108', '2016-07-04', 1, '1467649876');
INSERT INTO `statistik` VALUES ('121.40.106.14', '2016-07-04', 1, '1467649937');
INSERT INTO `statistik` VALUES ('91.121.83.118', '2016-07-05', 1, '1467652490');
INSERT INTO `statistik` VALUES ('120.169.255.12', '2016-07-05', 13, '1467658137');
INSERT INTO `statistik` VALUES ('104.236.68.137', '2016-07-05', 10, '1467658452');
INSERT INTO `statistik` VALUES ('129.10.232.5', '2016-07-05', 1, '1467658815');
INSERT INTO `statistik` VALUES ('129.10.232.9', '2016-07-05', 3, '1467658816');
INSERT INTO `statistik` VALUES ('69.61.12.70', '2016-07-05', 4, '1467724592');
INSERT INTO `statistik` VALUES ('114.125.179.118', '2016-07-05', 1, '1467668472');
INSERT INTO `statistik` VALUES ('45.33.15.94', '2016-07-05', 2, '1467668780');
INSERT INTO `statistik` VALUES ('107.207.156.29', '2016-07-05', 1, '1467668781');
INSERT INTO `statistik` VALUES ('208.80.192.33', '2016-07-05', 1, '1467674590');
INSERT INTO `statistik` VALUES ('208.80.194.27', '2016-07-05', 1, '1467676832');
INSERT INTO `statistik` VALUES ('161.69.163.20', '2016-07-05', 6, '1467680743');
INSERT INTO `statistik` VALUES ('69.171.230.108', '2016-07-05', 1, '1467682995');
INSERT INTO `statistik` VALUES ('66.249.65.90', '2016-07-05', 1, '1467686250');
INSERT INTO `statistik` VALUES ('69.171.230.109', '2016-07-05', 1, '1467691654');
INSERT INTO `statistik` VALUES ('158.69.229.134', '2016-07-05', 3, '1467719736');
INSERT INTO `statistik` VALUES ('180.254.204.95', '2016-07-05', 1, '1467721252');
INSERT INTO `statistik` VALUES ('167.114.103.181', '2016-07-05', 4, '1467726947');
INSERT INTO `statistik` VALUES ('69.171.230.117', '2016-07-05', 1, '1467728589');
INSERT INTO `statistik` VALUES ('69.171.230.97', '2016-07-05', 1, '1467728593');
INSERT INTO `statistik` VALUES ('69.171.230.107', '2016-07-05', 1, '1467728593');
INSERT INTO `statistik` VALUES ('69.171.230.121', '2016-07-05', 1, '1467728595');
INSERT INTO `statistik` VALUES ('158.69.229.134', '2016-07-06', 3, '1467814598');
INSERT INTO `statistik` VALUES ('69.61.12.70', '2016-07-06', 4, '1467811253');
INSERT INTO `statistik` VALUES ('208.80.194.124', '2016-07-06', 1, '1467761110');
INSERT INTO `statistik` VALUES ('208.80.192.33', '2016-07-06', 1, '1467763439');
INSERT INTO `statistik` VALUES ('120.164.42.249', '2016-07-06', 2, '1467768641');
INSERT INTO `statistik` VALUES ('107.207.156.29', '2016-07-06', 2, '1467788764');
INSERT INTO `statistik` VALUES ('129.10.232.5', '2016-07-06', 7, '1467784978');
INSERT INTO `statistik` VALUES ('129.10.232.9', '2016-07-06', 1, '1467771218');
INSERT INTO `statistik` VALUES ('180.251.152.149', '2016-07-06', 18, '1467776449');
INSERT INTO `statistik` VALUES ('161.69.163.20', '2016-07-06', 6, '1467777782');
INSERT INTO `statistik` VALUES ('67.198.140.203', '2016-07-06', 1, '1467781177');
INSERT INTO `statistik` VALUES ('66.249.65.90', '2016-07-06', 2, '1467795526');
INSERT INTO `statistik` VALUES ('114.125.173.62', '2016-07-06', 4, '1467800601');
INSERT INTO `statistik` VALUES ('69.171.230.114', '2016-07-06', 1, '1467805815');
INSERT INTO `statistik` VALUES ('36.68.10.197', '2016-07-06', 1, '1467809831');
INSERT INTO `statistik` VALUES ('101.255.45.46', '2016-07-06', 4, '1467818074');
INSERT INTO `statistik` VALUES ('54.198.171.152', '2016-07-07', 1, '1467831045');
INSERT INTO `statistik` VALUES ('66.249.65.93', '2016-07-07', 2, '1467895168');
INSERT INTO `statistik` VALUES ('69.61.12.70', '2016-07-07', 3, '1467875940');
INSERT INTO `statistik` VALUES ('46.229.167.149', '2016-07-07', 3, '1467835927');
INSERT INTO `statistik` VALUES ('208.80.194.123', '2016-07-07', 1, '1467846559');
INSERT INTO `statistik` VALUES ('180.251.152.149', '2016-07-07', 2, '1467847750');
INSERT INTO `statistik` VALUES ('208.80.194.27', '2016-07-07', 1, '1467848353');
INSERT INTO `statistik` VALUES ('107.207.156.29', '2016-07-07', 1, '1467853889');
INSERT INTO `statistik` VALUES ('158.69.229.134', '2016-07-07', 2, '1467895955');
INSERT INTO `statistik` VALUES ('36.83.140.225', '2016-07-07', 12, '1467868242');
INSERT INTO `statistik` VALUES ('66.249.84.237', '2016-07-07', 1, '1467861855');
INSERT INTO `statistik` VALUES ('66.102.6.177', '2016-07-07', 1, '1467867375');
INSERT INTO `statistik` VALUES ('125.167.114.46', '2016-07-07', 1, '1467869320');
INSERT INTO `statistik` VALUES ('66.249.65.96', '2016-07-07', 1, '1467869844');
INSERT INTO `statistik` VALUES ('66.249.65.90', '2016-07-07', 4, '1467895543');
INSERT INTO `statistik` VALUES ('66.249.84.243', '2016-07-07', 1, '1467893730');
INSERT INTO `statistik` VALUES ('45.33.40.107', '2016-07-07', 1, '1467899250');
INSERT INTO `statistik` VALUES ('114.125.176.3', '2016-07-07', 2, '1467908730');
INSERT INTO `statistik` VALUES ('45.33.15.94', '2016-07-08', 2, '1467918040');
INSERT INTO `statistik` VALUES ('77.247.181.163', '2016-07-08', 1, '1467919404');
INSERT INTO `statistik` VALUES ('114.125.168.238', '2016-07-08', 8, '1467925015');
INSERT INTO `statistik` VALUES ('158.69.25.178', '2016-07-08', 3, '1467924631');
INSERT INTO `statistik` VALUES ('66.249.65.93', '2016-07-08', 1, '1467941866');
INSERT INTO `statistik` VALUES ('91.121.83.118', '2016-07-08', 1, '1467955149');
INSERT INTO `statistik` VALUES ('198.27.69.229', '2016-07-08', 2, '1467955183');
INSERT INTO `statistik` VALUES ('66.249.65.90', '2016-07-08', 3, '1467985287');
INSERT INTO `statistik` VALUES ('213.239.205.118', '2016-07-08', 1, '1467975077');
INSERT INTO `statistik` VALUES ('114.125.186.63', '2016-07-08', 11, '1467978154');
INSERT INTO `statistik` VALUES ('80.87.193.80', '2016-07-08', 1, '1467982322');
INSERT INTO `statistik` VALUES ('66.249.84.243', '2016-07-08', 1, '1467983533');
INSERT INTO `statistik` VALUES ('114.125.174.64', '2016-07-08', 3, '1467989959');
INSERT INTO `statistik` VALUES ('66.249.65.93', '2016-07-09', 2, '1468016627');
INSERT INTO `statistik` VALUES ('66.249.65.51', '2016-07-09', 5, '1468052735');
INSERT INTO `statistik` VALUES ('66.249.65.52', '2016-07-09', 1, '1468024994');
INSERT INTO `statistik` VALUES ('163.172.137.135', '2016-07-09', 2, '1468038347');
INSERT INTO `statistik` VALUES ('114.125.173.74', '2016-07-09', 13, '1468069308');
INSERT INTO `statistik` VALUES ('114.125.190.79', '2016-07-09', 20, '1468049906');
INSERT INTO `statistik` VALUES ('114.125.172.30', '2016-07-09', 5, '1468048690');
INSERT INTO `statistik` VALUES ('114.125.184.64', '2016-07-09', 18, '1468051539');
INSERT INTO `statistik` VALUES ('162.243.233.58', '2016-07-09', 1, '1468053230');
INSERT INTO `statistik` VALUES ('66.249.65.53', '2016-07-09', 1, '1468061060');
INSERT INTO `statistik` VALUES ('36.83.140.225', '2016-07-09', 1, '1468061273');
INSERT INTO `statistik` VALUES ('66.249.84.240', '2016-07-09', 1, '1468061359');
INSERT INTO `statistik` VALUES ('36.75.242.1', '2016-07-09', 7, '1468066013');
INSERT INTO `statistik` VALUES ('66.102.6.180', '2016-07-09', 1, '1468066668');
INSERT INTO `statistik` VALUES ('114.125.176.148', '2016-07-09', 2, '1468067014');
INSERT INTO `statistik` VALUES ('114.125.177.224', '2016-07-09', 1, '1468075617');
INSERT INTO `statistik` VALUES ('114.125.170.79', '2016-07-09', 15, '1468078027');
INSERT INTO `statistik` VALUES ('114.125.173.230', '2016-07-10', 10, '1468113827');
INSERT INTO `statistik` VALUES ('8.37.232.111', '2016-07-10', 3, '1468108444');
INSERT INTO `statistik` VALUES ('120.169.254.122', '2016-07-10', 29, '1468111777');
INSERT INTO `statistik` VALUES ('168.235.206.148', '2016-07-10', 1, '1468108367');
INSERT INTO `statistik` VALUES ('120.164.43.63', '2016-07-10', 1, '1468108386');
INSERT INTO `statistik` VALUES ('120.161.1.130', '2016-07-10', 8, '1468109280');
INSERT INTO `statistik` VALUES ('8.37.233.238', '2016-07-10', 1, '1468108741');
INSERT INTO `statistik` VALUES ('168.235.206.61', '2016-07-10', 2, '1468111609');
INSERT INTO `statistik` VALUES ('114.125.170.2', '2016-07-10', 25, '1468114167');
INSERT INTO `statistik` VALUES ('66.249.79.210', '2016-07-10', 2, '1468116888');
INSERT INTO `statistik` VALUES ('66.249.79.231', '2016-07-10', 2, '1468128335');
INSERT INTO `statistik` VALUES ('194.153.113.35', '2016-07-10', 1, '1468126227');
INSERT INTO `statistik` VALUES ('66.249.79.224', '2016-07-10', 2, '1468155906');
INSERT INTO `statistik` VALUES ('199.193.119.77', '2016-07-10', 1, '1468135244');
INSERT INTO `statistik` VALUES ('66.102.8.161', '2016-07-10', 1, '1468135250');
INSERT INTO `statistik` VALUES ('36.75.242.1', '2016-07-10', 6, '1468138711');
INSERT INTO `statistik` VALUES ('114.125.185.94', '2016-07-10', 28, '1468144422');
INSERT INTO `statistik` VALUES ('114.125.177.8', '2016-07-10', 4, '1468144314');
INSERT INTO `statistik` VALUES ('69.171.230.113', '2016-07-10', 1, '1468145174');
INSERT INTO `statistik` VALUES ('64.74.215.113', '2016-07-10', 1, '1468152897');
INSERT INTO `statistik` VALUES ('114.125.179.190', '2016-07-10', 4, '1468153607');
INSERT INTO `statistik` VALUES ('114.125.189.230', '2016-07-10', 17, '1468159187');
INSERT INTO `statistik` VALUES ('66.249.79.224', '2016-07-11', 7, '1468242373');
INSERT INTO `statistik` VALUES ('104.131.113.190', '2016-07-11', 1, '1468180404');
INSERT INTO `statistik` VALUES ('114.125.178.141', '2016-07-11', 4, '1468181079');
INSERT INTO `statistik` VALUES ('167.114.157.46', '2016-07-11', 3, '1468184804');
INSERT INTO `statistik` VALUES ('141.8.143.133', '2016-07-11', 1, '1468188298');
INSERT INTO `statistik` VALUES ('36.68.52.30', '2016-07-11', 29, '1468194828');
INSERT INTO `statistik` VALUES ('36.66.250.52', '2016-07-11', 67, '1468227009');
INSERT INTO `statistik` VALUES ('52.71.155.178', '2016-07-11', 10, '1468197115');
INSERT INTO `statistik` VALUES ('66.249.79.210', '2016-07-11', 7, '1468242278');
INSERT INTO `statistik` VALUES ('114.125.178.73', '2016-07-11', 1, '1468199931');
INSERT INTO `statistik` VALUES ('36.75.244.34', '2016-07-11', 4, '1468199971');
INSERT INTO `statistik` VALUES ('114.125.188.222', '2016-07-11', 2, '1468200540');
INSERT INTO `statistik` VALUES ('114.125.174.98', '2016-07-11', 106, '1468239286');
INSERT INTO `statistik` VALUES ('157.55.39.17', '2016-07-11', 1, '1468204248');
INSERT INTO `statistik` VALUES ('66.102.7.193', '2016-07-11', 1, '1468212535');
INSERT INTO `statistik` VALUES ('125.167.114.46', '2016-07-11', 12, '1468213671');
INSERT INTO `statistik` VALUES ('114.125.169.79', '2016-07-11', 1, '1468214600');
INSERT INTO `statistik` VALUES ('66.102.7.200', '2016-07-11', 1, '1468214797');
INSERT INTO `statistik` VALUES ('66.102.6.183', '2016-07-11', 1, '1468215445');
INSERT INTO `statistik` VALUES ('114.125.188.34', '2016-07-11', 1, '1468215561');
INSERT INTO `statistik` VALUES ('66.102.6.76', '2016-07-11', 1, '1468219754');
INSERT INTO `statistik` VALUES ('114.125.190.152', '2016-07-11', 15, '1468220933');
INSERT INTO `statistik` VALUES ('69.171.230.105', '2016-07-11', 1, '1468222429');
INSERT INTO `statistik` VALUES ('69.171.230.102', '2016-07-11', 1, '1468222648');
INSERT INTO `statistik` VALUES ('114.125.184.8', '2016-07-11', 34, '1468230408');
INSERT INTO `statistik` VALUES ('115.178.253.154', '2016-07-11', 21, '1468228401');
INSERT INTO `statistik` VALUES ('91.200.12.70', '2016-07-11', 4, '1468229686');
INSERT INTO `statistik` VALUES ('114.125.170.139', '2016-07-11', 33, '1468239578');
INSERT INTO `statistik` VALUES ('114.125.168.9', '2016-07-11', 21, '1468242045');
INSERT INTO `statistik` VALUES ('66.249.79.231', '2016-07-11', 1, '1468242362');
INSERT INTO `statistik` VALUES ('207.182.140.210', '2016-07-11', 1, '1468253151');
INSERT INTO `statistik` VALUES ('114.125.174.98', '2016-07-12', 16, '1468276227');
INSERT INTO `statistik` VALUES ('36.66.250.52', '2016-07-12', 79, '1468286170');
INSERT INTO `statistik` VALUES ('66.249.65.51', '2016-07-12', 2, '1468285869');
INSERT INTO `statistik` VALUES ('114.125.189.145', '2016-07-12', 8, '1468287907');
INSERT INTO `statistik` VALUES ('180.254.194.90', '2016-07-12', 3, '1468291271');
INSERT INTO `statistik` VALUES ('66.249.85.219', '2016-07-12', 1, '1468293132');
INSERT INTO `statistik` VALUES ('66.249.65.52', '2016-07-12', 4, '1468339517');
INSERT INTO `statistik` VALUES ('114.125.168.9', '2016-07-12', 18, '1468299960');
INSERT INTO `statistik` VALUES ('114.125.169.77', '2016-07-12', 4, '1468302465');
INSERT INTO `statistik` VALUES ('114.125.188.134', '2016-07-12', 9, '1468306675');
INSERT INTO `statistik` VALUES ('100.43.85.3', '2016-07-12', 1, '1468313812');
INSERT INTO `statistik` VALUES ('120.26.107.181', '2016-07-12', 1, '1468315096');
INSERT INTO `statistik` VALUES ('121.40.141.31', '2016-07-12', 1, '1468315180');
INSERT INTO `statistik` VALUES ('121.40.250.9', '2016-07-12', 1, '1468315241');
INSERT INTO `statistik` VALUES ('120.26.72.221', '2016-07-12', 1, '1468315279');
INSERT INTO `statistik` VALUES ('121.40.64.118', '2016-07-12', 1, '1468315303');
INSERT INTO `statistik` VALUES ('69.171.230.103', '2016-07-12', 1, '1468317947');
INSERT INTO `statistik` VALUES ('69.171.230.109', '2016-07-12', 1, '1468317961');
INSERT INTO `statistik` VALUES ('66.249.65.53', '2016-07-12', 2, '1468338720');
INSERT INTO `statistik` VALUES ('180.254.194.3', '2016-07-12', 3, '1468339854');
INSERT INTO `statistik` VALUES ('180.251.157.196', '2016-07-12', 1, '1468339839');
INSERT INTO `statistik` VALUES ('69.171.230.108', '2016-07-13', 1, '1468366380');
INSERT INTO `statistik` VALUES ('69.171.230.102', '2016-07-13', 1, '1468366392');
INSERT INTO `statistik` VALUES ('69.171.230.113', '2016-07-13', 1, '1468366401');
INSERT INTO `statistik` VALUES ('125.167.114.46', '2016-07-13', 1, '1468367854');
INSERT INTO `statistik` VALUES ('114.125.185.241', '2016-07-13', 1, '1468368861');
INSERT INTO `statistik` VALUES ('36.66.250.52', '2016-07-13', 7, '1468372966');
INSERT INTO `statistik` VALUES ('36.84.224.14', '2016-07-13', 46, '1468393226');
INSERT INTO `statistik` VALUES ('66.249.84.234', '2016-07-13', 1, '1468382555');
INSERT INTO `statistik` VALUES ('162.243.233.58', '2016-07-13', 1, '1468386677');
INSERT INTO `statistik` VALUES ('114.125.179.46', '2016-07-13', 35, '1468389781');
INSERT INTO `statistik` VALUES ('114.125.177.130', '2016-07-13', 6, '1468392374');
INSERT INTO `statistik` VALUES ('66.249.65.51', '2016-07-13', 2, '1468417038');
INSERT INTO `statistik` VALUES ('69.171.230.107', '2016-07-13', 1, '1468399557');
INSERT INTO `statistik` VALUES ('180.76.15.147', '2016-07-13', 1, '1468404885');
INSERT INTO `statistik` VALUES ('202.46.55.175', '2016-07-13', 1, '1468406885');
INSERT INTO `statistik` VALUES ('104.193.88.243', '2016-07-13', 1, '1468408885');
INSERT INTO `statistik` VALUES ('114.125.179.248', '2016-07-13', 9, '1468412450');
INSERT INTO `statistik` VALUES ('114.125.172.121', '2016-07-13', 13, '1468422319');
INSERT INTO `statistik` VALUES ('114.125.176.10', '2016-07-13', 4, '1468424227');
INSERT INTO `statistik` VALUES ('114.125.170.69', '2016-07-13', 3, '1468421879');
INSERT INTO `statistik` VALUES ('114.125.176.96', '2016-07-13', 6, '1468424340');
INSERT INTO `statistik` VALUES ('136.243.92.152', '2016-07-13', 1, '1468428279');
INSERT INTO `statistik` VALUES ('141.8.143.133', '2016-07-13', 1, '1468428423');
INSERT INTO `statistik` VALUES ('36.75.243.166', '2016-07-13', 2, '1468429120');
INSERT INTO `statistik` VALUES ('36.75.243.166', '2016-07-14', 12, '1468430260');
INSERT INTO `statistik` VALUES ('66.249.65.52', '2016-07-14', 5, '1468473050');
INSERT INTO `statistik` VALUES ('114.125.172.121', '2016-07-14', 3, '1468459097');
INSERT INTO `statistik` VALUES ('69.171.230.98', '2016-07-14', 1, '1468457027');
INSERT INTO `statistik` VALUES ('69.171.230.106', '2016-07-14', 1, '1468457027');
INSERT INTO `statistik` VALUES ('69.171.230.107', '2016-07-14', 1, '1468457029');
INSERT INTO `statistik` VALUES ('69.171.230.122', '2016-07-14', 1, '1468457031');
INSERT INTO `statistik` VALUES ('180.249.227.140', '2016-07-14', 11, '1468460372');
INSERT INTO `statistik` VALUES ('114.125.175.32', '2016-07-14', 4, '1468460755');
INSERT INTO `statistik` VALUES ('114.125.175.209', '2016-07-14', 29, '1468460842');
INSERT INTO `statistik` VALUES ('36.83.71.48', '2016-07-14', 62, '1468466610');
INSERT INTO `statistik` VALUES ('61.131.59.138', '2016-07-14', 2, '1468466144');
INSERT INTO `statistik` VALUES ('114.125.187.53', '2016-07-14', 19, '1468470476');
INSERT INTO `statistik` VALUES ('66.249.65.53', '2016-07-14', 1, '1468476639');
INSERT INTO `statistik` VALUES ('114.125.189.149', '2016-07-14', 1, '1468479715');
INSERT INTO `statistik` VALUES ('114.125.177.238', '2016-07-14', 1, '1468483894');
INSERT INTO `statistik` VALUES ('180.251.163.240', '2016-07-14', 37, '1468491803');
INSERT INTO `statistik` VALUES ('104.131.127.144', '2016-07-14', 12, '1468490149');
INSERT INTO `statistik` VALUES ('180.251.171.121', '2016-07-14', 9, '1468502176');
INSERT INTO `statistik` VALUES ('180.254.182.174', '2016-07-14', 2, '1468504820');
INSERT INTO `statistik` VALUES ('45.33.15.94', '2016-07-15', 2, '1468521269');
INSERT INTO `statistik` VALUES ('54.198.194.71', '2016-07-15', 1, '1468522753');
INSERT INTO `statistik` VALUES ('45.55.250.43', '2016-07-15', 1, '1468524818');
INSERT INTO `statistik` VALUES ('114.125.168.229', '2016-07-15', 17, '1468534249');
INSERT INTO `statistik` VALUES ('114.125.177.2', '2016-07-15', 35, '1468536852');
INSERT INTO `statistik` VALUES ('69.171.230.114', '2016-07-15', 1, '1468537039');
INSERT INTO `statistik` VALUES ('36.75.249.167', '2016-07-15', 1, '1468537234');
INSERT INTO `statistik` VALUES ('114.125.172.250', '2016-07-15', 5, '1468540816');
INSERT INTO `statistik` VALUES ('66.249.65.51', '2016-07-15', 3, '1468584888');
INSERT INTO `statistik` VALUES ('110.136.246.194', '2016-07-15', 5, '1468555222');
INSERT INTO `statistik` VALUES ('66.249.65.53', '2016-07-15', 2, '1468557657');
INSERT INTO `statistik` VALUES ('66.249.65.52', '2016-07-15', 1, '1468556196');
INSERT INTO `statistik` VALUES ('45.55.241.187', '2016-07-15', 1, '1468557409');
INSERT INTO `statistik` VALUES ('36.83.126.13', '2016-07-15', 1, '1468558201');
INSERT INTO `statistik` VALUES ('114.125.168.247', '2016-07-15', 3, '1468559388');
INSERT INTO `statistik` VALUES ('222.124.103.65', '2016-07-15', 1, '1468560151');
INSERT INTO `statistik` VALUES ('114.125.170.126', '2016-07-15', 5, '1468562575');
INSERT INTO `statistik` VALUES ('114.125.168.195', '2016-07-15', 1, '1468566670');
INSERT INTO `statistik` VALUES ('114.125.200.56', '2016-07-15', 2, '1468567473');
INSERT INTO `statistik` VALUES ('114.125.184.62', '2016-07-15', 1, '1468567454');
INSERT INTO `statistik` VALUES ('114.125.179.248', '2016-07-15', 1, '1468567627');
INSERT INTO `statistik` VALUES ('114.125.178.85', '2016-07-15', 4, '1468567912');
INSERT INTO `statistik` VALUES ('114.125.178.138', '2016-07-15', 5, '1468568154');
INSERT INTO `statistik` VALUES ('114.125.190.13', '2016-07-15', 5, '1468568762');
INSERT INTO `statistik` VALUES ('114.125.204.20', '2016-07-15', 2, '1468569033');
INSERT INTO `statistik` VALUES ('114.125.168.255', '2016-07-15', 14, '1468572597');
INSERT INTO `statistik` VALUES ('114.125.170.92', '2016-07-15', 1, '1468582097');
INSERT INTO `statistik` VALUES ('114.125.209.157', '2016-07-15', 14, '1468583357');
INSERT INTO `statistik` VALUES ('157.55.39.76', '2016-07-15', 1, '1468582836');
INSERT INTO `statistik` VALUES ('180.251.151.32', '2016-07-15', 1, '1468590242');
INSERT INTO `statistik` VALUES ('180.251.156.145', '2016-07-15', 4, '1468590996');
INSERT INTO `statistik` VALUES ('125.167.117.52', '2016-07-15', 7, '1468593883');
INSERT INTO `statistik` VALUES ('114.125.185.145', '2016-07-15', 10, '1468594300');
INSERT INTO `statistik` VALUES ('114.125.190.85', '2016-07-15', 48, '1468599878');
INSERT INTO `statistik` VALUES ('114.125.179.0', '2016-07-15', 1, '1468592522');
INSERT INTO `statistik` VALUES ('66.249.65.52', '2016-07-16', 2, '1468686668');
INSERT INTO `statistik` VALUES ('66.249.65.53', '2016-07-16', 2, '1468614798');
INSERT INTO `statistik` VALUES ('114.125.171.159', '2016-07-16', 73, '1468619436');
INSERT INTO `statistik` VALUES ('101.226.33.240', '2016-07-16', 1, '1468623411');
INSERT INTO `statistik` VALUES ('114.125.176.33', '2016-07-16', 1, '1468629880');
INSERT INTO `statistik` VALUES ('45.55.133.236', '2016-07-16', 1, '1468636776');
INSERT INTO `statistik` VALUES ('114.125.184.98', '2016-07-16', 2, '1468637955');
INSERT INTO `statistik` VALUES ('69.171.230.119', '2016-07-16', 1, '1468641083');
INSERT INTO `statistik` VALUES ('69.171.230.101', '2016-07-16', 1, '1468641089');
INSERT INTO `statistik` VALUES ('110.136.246.194', '2016-07-16', 39, '1468674559');
INSERT INTO `statistik` VALUES ('168.235.206.61', '2016-07-16', 1, '1468647968');
INSERT INTO `statistik` VALUES ('120.169.254.186', '2016-07-16', 14, '1468649781');
INSERT INTO `statistik` VALUES ('180.254.185.121', '2016-07-16', 12, '1468650160');
INSERT INTO `statistik` VALUES ('114.79.28.65', '2016-07-16', 5, '1468649297');
INSERT INTO `statistik` VALUES ('115.178.237.166', '2016-07-16', 1, '1468649335');
INSERT INTO `statistik` VALUES ('36.68.180.221', '2016-07-16', 17, '1468662988');
INSERT INTO `statistik` VALUES ('66.249.84.246', '2016-07-16', 1, '1468670101');
INSERT INTO `statistik` VALUES ('66.102.6.75', '2016-07-16', 1, '1468670667');
INSERT INTO `statistik` VALUES ('66.249.65.51', '2016-07-16', 1, '1468686694');
INSERT INTO `statistik` VALUES ('114.125.191.155', '2016-07-16', 1, '1468687661');
INSERT INTO `statistik` VALUES ('66.249.65.51', '2016-07-17', 1, '1468694658');
INSERT INTO `statistik` VALUES ('180.76.15.5', '2016-07-17', 1, '1468703684');
INSERT INTO `statistik` VALUES ('114.125.178.161', '2016-07-17', 11, '1468705339');
INSERT INTO `statistik` VALUES ('66.220.149.32', '2016-07-17', 1, '1468711822');
INSERT INTO `statistik` VALUES ('69.171.230.98', '2016-07-17', 2, '1468711875');
INSERT INTO `statistik` VALUES ('69.171.230.114', '2016-07-17', 2, '1468711839');
INSERT INTO `statistik` VALUES ('69.171.230.120', '2016-07-17', 1, '1468711838');
INSERT INTO `statistik` VALUES ('69.171.230.108', '2016-07-17', 1, '1468711905');
INSERT INTO `statistik` VALUES ('110.136.246.194', '2016-07-17', 19, '1468720844');
INSERT INTO `statistik` VALUES ('162.243.233.58', '2016-07-17', 1, '1468718401');
INSERT INTO `statistik` VALUES ('36.68.75.215', '2016-07-17', 12, '1468724935');
INSERT INTO `statistik` VALUES ('66.249.65.53', '2016-07-17', 1, '1468721165');
INSERT INTO `statistik` VALUES ('202.67.37.46', '2016-07-17', 2, '1468722989');
INSERT INTO `statistik` VALUES ('36.84.224.10', '2016-07-17', 3, '1468723068');
INSERT INTO `statistik` VALUES ('64.246.165.10', '2016-07-17', 1, '1468725092');
INSERT INTO `statistik` VALUES ('::1', '2016-07-17', 96, '1468761387');
INSERT INTO `statistik` VALUES ('::1', '2016-07-18', 5, '1468803538');
INSERT INTO `statistik` VALUES ('::1', '2016-07-20', 106, '1469026786');
INSERT INTO `statistik` VALUES ('36.84.229.21', '2016-07-20', 16, '1469032161');
INSERT INTO `statistik` VALUES ('180.76.15.139', '2016-07-21', 1, '1469034080');
INSERT INTO `statistik` VALUES ('157.55.39.137', '2016-07-21', 1, '1469035945');
INSERT INTO `statistik` VALUES ('202.46.52.100', '2016-07-21', 1, '1469036080');
INSERT INTO `statistik` VALUES ('114.125.189.41', '2016-07-21', 57, '1469038796');
INSERT INTO `statistik` VALUES ('104.193.88.243', '2016-07-21', 1, '1469038079');
INSERT INTO `statistik` VALUES ('8.37.234.45', '2016-07-21', 2, '1469096578');
INSERT INTO `statistik` VALUES ('120.169.255.129', '2016-07-21', 15, '1469097195');
INSERT INTO `statistik` VALUES ('114.125.169.18', '2016-07-21', 2, '1469052673');
INSERT INTO `statistik` VALUES ('115.178.237.185', '2016-07-21', 29, '1469053343');
INSERT INTO `statistik` VALUES ('66.249.65.53', '2016-07-21', 2, '1469057469');
INSERT INTO `statistik` VALUES ('66.249.65.51', '2016-07-21', 1, '1469057572');
INSERT INTO `statistik` VALUES ('114.125.179.99', '2016-07-21', 1, '1469058787');
INSERT INTO `statistik` VALUES ('66.249.66.165', '2016-07-21', 1, '1469064404');
INSERT INTO `statistik` VALUES ('114.125.172.70', '2016-07-21', 1, '1469064520');
INSERT INTO `statistik` VALUES ('114.125.178.162', '2016-07-21', 2, '1469078396');
INSERT INTO `statistik` VALUES ('180.251.168.150', '2016-07-21', 68, '1469079578');
INSERT INTO `statistik` VALUES ('180.254.179.43', '2016-07-21', 63, '1469091767');
INSERT INTO `statistik` VALUES ('114.125.187.92', '2016-07-21', 9, '1469086001');
INSERT INTO `statistik` VALUES ('64.74.215.54', '2016-07-21', 12, '1469085953');
INSERT INTO `statistik` VALUES ('36.66.250.52', '2016-07-21', 20, '1469094112');
INSERT INTO `statistik` VALUES ('66.249.66.26', '2016-07-21', 1, '1469093275');
INSERT INTO `statistik` VALUES ('115.178.250.198', '2016-07-21', 20, '1469094451');
INSERT INTO `statistik` VALUES ('114.125.175.7', '2016-07-21', 10, '1469094341');
INSERT INTO `statistik` VALUES ('125.162.241.135', '2016-07-21', 13, '1469101157');
INSERT INTO `statistik` VALUES ('180.249.16.25', '2016-07-21', 16, '1469101541');
INSERT INTO `statistik` VALUES ('180.254.193.217', '2016-07-21', 10, '1469101106');
INSERT INTO `statistik` VALUES ('36.83.91.208', '2016-07-21', 12, '1469106735');
INSERT INTO `statistik` VALUES ('180.76.15.145', '2016-07-22', 1, '1469128803');
INSERT INTO `statistik` VALUES ('202.46.58.191', '2016-07-22', 1, '1469130811');
INSERT INTO `statistik` VALUES ('104.193.88.244', '2016-07-22', 1, '1469132820');
INSERT INTO `statistik` VALUES ('66.249.65.165', '2016-07-22', 3, '1469179273');
INSERT INTO `statistik` VALUES ('114.125.174.112', '2016-07-22', 1, '1469145673');
INSERT INTO `statistik` VALUES ('114.125.178.117', '2016-07-22', 1, '1469146802');
INSERT INTO `statistik` VALUES ('36.66.250.52', '2016-07-22', 17, '1469171917');
INSERT INTO `statistik` VALUES ('36.84.224.118', '2016-07-22', 1, '1469149232');
INSERT INTO `statistik` VALUES ('114.125.179.246', '2016-07-22', 1, '1469151690');
INSERT INTO `statistik` VALUES ('69.171.230.98', '2016-07-22', 1, '1469154362');
INSERT INTO `statistik` VALUES ('69.171.230.98', '2016-07-22', 1, '1469154362');
INSERT INTO `statistik` VALUES ('36.75.148.76', '2016-07-22', 48, '1469199407');
INSERT INTO `statistik` VALUES ('114.125.178.185', '2016-07-22', 26, '1469162099');
INSERT INTO `statistik` VALUES ('95.211.162.11', '2016-07-22', 1, '1469165829');
INSERT INTO `statistik` VALUES ('115.178.238.95', '2016-07-22', 13, '1469166393');
INSERT INTO `statistik` VALUES ('114.125.168.163', '2016-07-22', 76, '1469183443');
INSERT INTO `statistik` VALUES ('66.249.66.172', '2016-07-22', 1, '1469185507');
INSERT INTO `statistik` VALUES ('69.171.230.105', '2016-07-22', 1, '1469188303');
INSERT INTO `statistik` VALUES ('69.171.230.108', '2016-07-22', 1, '1469188334');
INSERT INTO `statistik` VALUES ('69.171.230.113', '2016-07-22', 1, '1469188338');
INSERT INTO `statistik` VALUES ('180.251.164.24', '2016-07-22', 12, '1469190929');
INSERT INTO `statistik` VALUES ('114.125.169.176', '2016-07-22', 12, '1469201175');
INSERT INTO `statistik` VALUES ('64.74.215.113', '2016-07-22', 1, '1469198080');
INSERT INTO `statistik` VALUES ('180.254.203.55', '2016-07-22', 1, '1469199897');
INSERT INTO `statistik` VALUES ('139.162.161.115', '2016-07-23', 1, '1469221379');
INSERT INTO `statistik` VALUES ('66.249.65.165', '2016-07-23', 3, '1469248911');
INSERT INTO `statistik` VALUES ('114.125.215.169', '2016-07-23', 20, '1469236811');
INSERT INTO `statistik` VALUES ('114.125.213.199', '2016-07-23', 13, '1469238837');
INSERT INTO `statistik` VALUES ('114.125.215.77', '2016-07-23', 1, '1469239479');
INSERT INTO `statistik` VALUES ('180.251.171.141', '2016-07-23', 1, '1469239636');
INSERT INTO `statistik` VALUES ('66.249.65.169', '2016-07-23', 2, '1469292538');
INSERT INTO `statistik` VALUES ('8.37.234.45', '2016-07-23', 2, '1469252223');
INSERT INTO `statistik` VALUES ('120.164.47.180', '2016-07-23', 8, '1469252454');
INSERT INTO `statistik` VALUES ('36.75.148.76', '2016-07-23', 2, '1469268637');
INSERT INTO `statistik` VALUES ('114.125.174.192', '2016-07-23', 1, '1469252903');
INSERT INTO `statistik` VALUES ('114.125.188.85', '2016-07-23', 21, '1469265018');
INSERT INTO `statistik` VALUES ('114.125.200.4', '2016-07-23', 21, '1469268365');
INSERT INTO `statistik` VALUES ('54.90.41.238', '2016-07-23', 3, '1469268275');
INSERT INTO `statistik` VALUES ('103.210.120.1', '2016-07-23', 6, '1469270705');
INSERT INTO `statistik` VALUES ('180.251.164.24', '2016-07-23', 11, '1469272096');
INSERT INTO `statistik` VALUES ('202.67.37.47', '2016-07-23', 21, '1469274207');
INSERT INTO `statistik` VALUES ('69.171.230.102', '2016-07-23', 1, '1469276088');
INSERT INTO `statistik` VALUES ('114.125.172.237', '2016-07-23', 4, '1469280111');
INSERT INTO `statistik` VALUES ('45.55.229.95', '2016-07-24', 16, '1469298714');
INSERT INTO `statistik` VALUES ('114.125.214.66', '2016-07-24', 13, '1469313396');
INSERT INTO `statistik` VALUES ('114.125.200.79', '2016-07-24', 39, '1469315006');
INSERT INTO `statistik` VALUES ('128.72.234.74', '2016-07-24', 1, '1469316865');
INSERT INTO `statistik` VALUES ('46.188.61.8', '2016-07-24', 1, '1469316866');
INSERT INTO `statistik` VALUES ('95.28.36.208', '2016-07-24', 1, '1469316870');
INSERT INTO `statistik` VALUES ('114.125.173.35', '2016-07-24', 1, '1469317688');
INSERT INTO `statistik` VALUES ('176.77.71.6', '2016-07-24', 1, '1469323314');
INSERT INTO `statistik` VALUES ('128.68.12.35', '2016-07-24', 1, '1469323316');
INSERT INTO `statistik` VALUES ('114.125.200.9', '2016-07-24', 3, '1469323841');
INSERT INTO `statistik` VALUES ('66.249.65.172', '2016-07-24', 1, '1469323918');
INSERT INTO `statistik` VALUES ('66.249.65.169', '2016-07-24', 3, '1469333543');
INSERT INTO `statistik` VALUES ('36.75.148.76', '2016-07-24', 38, '1469343205');
INSERT INTO `statistik` VALUES ('36.69.6.57', '2016-07-24', 7, '1469335641');
INSERT INTO `statistik` VALUES ('180.251.164.24', '2016-07-24', 1, '1469336525');
INSERT INTO `statistik` VALUES ('52.71.155.178', '2016-07-24', 4, '1469338292');
INSERT INTO `statistik` VALUES ('66.249.73.232', '2016-07-24', 1, '1469340650');
INSERT INTO `statistik` VALUES ('95.24.150.202', '2016-07-24', 1, '1469345231');
INSERT INTO `statistik` VALUES ('66.249.65.165', '2016-07-24', 1, '1469351113');
INSERT INTO `statistik` VALUES ('8.37.234.12', '2016-07-24', 2, '1469352921');
INSERT INTO `statistik` VALUES ('120.164.45.18', '2016-07-24', 1, '1469353590');
INSERT INTO `statistik` VALUES ('114.125.189.68', '2016-07-24', 1, '1469364609');
INSERT INTO `statistik` VALUES ('173.234.153.122', '2016-07-24', 1, '1469364612');
INSERT INTO `statistik` VALUES ('114.125.172.201', '2016-07-24', 16, '1469371589');
INSERT INTO `statistik` VALUES ('69.171.230.112', '2016-07-24', 1, '1469370601');
INSERT INTO `statistik` VALUES ('206.253.226.22', '2016-07-24', 1, '1469370787');
INSERT INTO `statistik` VALUES ('70.42.131.170', '2016-07-24', 1, '1469371935');
INSERT INTO `statistik` VALUES ('168.235.206.204', '2016-07-25', 2, '1469402198');
INSERT INTO `statistik` VALUES ('120.169.254.182', '2016-07-25', 1, '1469402366');
INSERT INTO `statistik` VALUES ('180.254.133.44', '2016-07-25', 19, '1469408555');
INSERT INTO `statistik` VALUES ('52.71.155.178', '2016-07-25', 7, '1469406755');
INSERT INTO `statistik` VALUES ('114.125.191.215', '2016-07-25', 12, '1469407806');
INSERT INTO `statistik` VALUES ('36.66.250.52', '2016-07-25', 21, '1469430304');
INSERT INTO `statistik` VALUES ('114.125.185.214', '2016-07-25', 13, '1469422117');
INSERT INTO `statistik` VALUES ('70.42.131.170', '2016-07-25', 1, '1469410246');
INSERT INTO `statistik` VALUES ('114.125.179.130', '2016-07-25', 14, '1469420399');
INSERT INTO `statistik` VALUES ('114.125.186.91', '2016-07-25', 19, '1469420348');
INSERT INTO `statistik` VALUES ('114.125.177.76', '2016-07-25', 1, '1469421156');
INSERT INTO `statistik` VALUES ('66.249.65.165', '2016-07-25', 1, '1469423491');
INSERT INTO `statistik` VALUES ('66.249.66.165', '2016-07-25', 1, '1469433578');
INSERT INTO `statistik` VALUES ('36.84.224.66', '2016-07-25', 45, '1469436395');
INSERT INTO `statistik` VALUES ('69.171.230.120', '2016-07-25', 1, '1469435225');
INSERT INTO `statistik` VALUES ('69.171.230.113', '2016-07-25', 2, '1469455029');
INSERT INTO `statistik` VALUES ('69.171.230.112', '2016-07-25', 1, '1469435228');
INSERT INTO `statistik` VALUES ('36.75.148.76', '2016-07-25', 62, '1469450424');
INSERT INTO `statistik` VALUES ('114.125.186.161', '2016-07-25', 1, '1469444259');
INSERT INTO `statistik` VALUES ('114.125.178.101', '2016-07-25', 2, '1469449078');
INSERT INTO `statistik` VALUES ('114.125.178.251', '2016-07-25', 1, '1469454723');
INSERT INTO `statistik` VALUES ('69.171.230.116', '2016-07-25', 1, '1469455020');
INSERT INTO `statistik` VALUES ('114.125.178.237', '2016-07-25', 3, '1469456079');
INSERT INTO `statistik` VALUES ('69.171.230.109', '2016-07-25', 1, '1469457284');
INSERT INTO `statistik` VALUES ('163.172.34.17', '2016-07-26', 4, '1469525473');
INSERT INTO `statistik` VALUES ('168.235.206.204', '2016-07-26', 1, '1469484749');
INSERT INTO `statistik` VALUES ('120.164.44.169', '2016-07-26', 13, '1469485707');
INSERT INTO `statistik` VALUES ('114.125.190.5', '2016-07-26', 1, '1469486122');
INSERT INTO `statistik` VALUES ('36.75.148.76', '2016-07-26', 29, '1469492052');
INSERT INTO `statistik` VALUES ('66.249.75.111', '2016-07-26', 1, '1469491292');
INSERT INTO `statistik` VALUES ('114.125.190.91', '2016-07-26', 1, '1469493501');
INSERT INTO `statistik` VALUES ('66.249.75.97', '2016-07-26', 1, '1469497246');
INSERT INTO `statistik` VALUES ('69.171.230.102', '2016-07-26', 1, '1469497434');
INSERT INTO `statistik` VALUES ('69.171.230.119', '2016-07-26', 2, '1469514327');
INSERT INTO `statistik` VALUES ('36.83.71.124', '2016-07-26', 32, '1469500145');
INSERT INTO `statistik` VALUES ('69.171.230.116', '2016-07-26', 2, '1469514329');
INSERT INTO `statistik` VALUES ('69.171.230.117', '2016-07-26', 1, '1469497646');
INSERT INTO `statistik` VALUES ('36.84.1.114', '2016-07-26', 13, '1469509541');
INSERT INTO `statistik` VALUES ('66.249.75.241', '2016-07-26', 1, '1469503750');
INSERT INTO `statistik` VALUES ('69.171.230.118', '2016-07-26', 1, '1469514328');
INSERT INTO `statistik` VALUES ('69.171.230.112', '2016-07-26', 2, '1469518114');
INSERT INTO `statistik` VALUES ('69.171.230.114', '2016-07-26', 1, '1469514340');
INSERT INTO `statistik` VALUES ('69.171.230.106', '2016-07-26', 1, '1469514340');
INSERT INTO `statistik` VALUES ('69.171.230.103', '2016-07-26', 1, '1469514354');
INSERT INTO `statistik` VALUES ('180.249.7.246', '2016-07-26', 32, '1469522064');
INSERT INTO `statistik` VALUES ('114.125.189.218', '2016-07-26', 36, '1469519548');
INSERT INTO `statistik` VALUES ('69.171.230.101', '2016-07-26', 1, '1469518118');
INSERT INTO `statistik` VALUES ('69.171.230.108', '2016-07-26', 1, '1469518125');
INSERT INTO `statistik` VALUES ('69.171.230.96', '2016-07-26', 1, '1469518127');
INSERT INTO `statistik` VALUES ('69.171.230.99', '2016-07-26', 1, '1469518158');
INSERT INTO `statistik` VALUES ('66.220.149.32', '2016-07-26', 1, '1469518167');
INSERT INTO `statistik` VALUES ('180.76.15.161', '2016-07-26', 1, '1469522685');
INSERT INTO `statistik` VALUES ('151.80.97.149', '2016-07-26', 2, '1469522760');
INSERT INTO `statistik` VALUES ('66.249.69.138', '2016-07-26', 2, '1469523298');
INSERT INTO `statistik` VALUES ('114.125.191.226', '2016-07-26', 1, '1469524103');
INSERT INTO `statistik` VALUES ('66.249.75.104', '2016-07-26', 1, '1469524523');
INSERT INTO `statistik` VALUES ('202.46.57.23', '2016-07-26', 1, '1469524694');
INSERT INTO `statistik` VALUES ('104.193.88.243', '2016-07-26', 1, '1469526703');
INSERT INTO `statistik` VALUES ('176.9.10.227', '2016-07-26', 1, '1469531459');
INSERT INTO `statistik` VALUES ('66.249.75.233', '2016-07-27', 1, '1469561612');
INSERT INTO `statistik` VALUES ('114.125.186.46', '2016-07-27', 1, '1469568545');
INSERT INTO `statistik` VALUES ('168.235.206.204', '2016-07-27', 1, '1469574172');
INSERT INTO `statistik` VALUES ('120.169.254.194', '2016-07-27', 3, '1469574672');
INSERT INTO `statistik` VALUES ('114.125.212.162', '2016-07-27', 1, '1469581609');
INSERT INTO `statistik` VALUES ('114.125.212.0', '2016-07-27', 1, '1469582436');
INSERT INTO `statistik` VALUES ('180.249.9.135', '2016-07-27', 9, '1469588353');
INSERT INTO `statistik` VALUES ('125.167.117.168', '2016-07-27', 5, '1469588292');
INSERT INTO `statistik` VALUES ('36.75.149.17', '2016-07-27', 6, '1469588334');
INSERT INTO `statistik` VALUES ('69.171.230.103', '2016-07-27', 1, '1469596844');
INSERT INTO `statistik` VALUES ('36.75.243.209', '2016-07-27', 45, '1469609344');
INSERT INTO `statistik` VALUES ('66.249.79.172', '2016-07-27', 1, '1469607020');
INSERT INTO `statistik` VALUES ('66.249.79.178', '2016-07-27', 1, '1469627445');
INSERT INTO `statistik` VALUES ('168.235.206.113', '2016-07-27', 1, '1469629509');
INSERT INTO `statistik` VALUES ('114.125.176.153', '2016-07-28', 13, '1469645821');
INSERT INTO `statistik` VALUES ('36.75.247.81', '2016-07-28', 19, '1469668370');
INSERT INTO `statistik` VALUES ('114.125.175.52', '2016-07-28', 14, '1469673339');
INSERT INTO `statistik` VALUES ('54.244.48.9', '2016-07-28', 1, '1469666587');
INSERT INTO `statistik` VALUES ('114.125.168.26', '2016-07-28', 16, '1469671275');
INSERT INTO `statistik` VALUES ('168.235.206.113', '2016-07-28', 1, '1469675362');
INSERT INTO `statistik` VALUES ('120.164.41.175', '2016-07-28', 4, '1469675717');
INSERT INTO `statistik` VALUES ('114.125.191.102', '2016-07-28', 1, '1469676328');
INSERT INTO `statistik` VALUES ('114.125.174.141', '2016-07-28', 39, '1469703660');
INSERT INTO `statistik` VALUES ('180.254.198.175', '2016-07-28', 2, '1469682558');
INSERT INTO `statistik` VALUES ('114.125.170.22', '2016-07-28', 2, '1469692815');
INSERT INTO `statistik` VALUES ('114.125.187.42', '2016-07-28', 1, '1469693573');
INSERT INTO `statistik` VALUES ('114.125.177.48', '2016-07-28', 13, '1469705793');
INSERT INTO `statistik` VALUES ('62.210.148.246', '2016-07-28', 1, '1469722474');
INSERT INTO `statistik` VALUES ('36.83.92.214', '2016-07-29', 119, '1469781273');
INSERT INTO `statistik` VALUES ('114.125.176.95', '2016-07-29', 1, '1469760741');
INSERT INTO `statistik` VALUES ('114.125.185.13', '2016-07-29', 11, '1469780094');
INSERT INTO `statistik` VALUES ('180.254.198.178', '2016-07-29', 30, '1469789308');
INSERT INTO `statistik` VALUES ('36.66.250.52', '2016-07-29', 18, '1469780878');
INSERT INTO `statistik` VALUES ('69.171.230.101', '2016-07-29', 1, '1469780851');
INSERT INTO `statistik` VALUES ('54.157.223.193', '2016-07-29', 1, '1469780932');
INSERT INTO `statistik` VALUES ('173.252.90.89', '2016-07-29', 1, '1469781210');
INSERT INTO `statistik` VALUES ('114.125.190.183', '2016-07-29', 1, '1469783574');
INSERT INTO `statistik` VALUES ('100.43.85.22', '2016-07-29', 1, '1469784097');
INSERT INTO `statistik` VALUES ('36.83.77.208', '2016-07-29', 49, '1469806346');
INSERT INTO `statistik` VALUES ('114.125.168.112', '2016-07-29', 62, '1469789818');
INSERT INTO `statistik` VALUES ('114.125.168.90', '2016-07-29', 3, '1469794807');
INSERT INTO `statistik` VALUES ('114.125.75.39', '2016-07-29', 1, '1469794883');
INSERT INTO `statistik` VALUES ('112.215.124.199', '2016-07-29', 1, '1469794983');
INSERT INTO `statistik` VALUES ('114.125.60.104', '2016-07-29', 2, '1469795073');
INSERT INTO `statistik` VALUES ('115.178.197.245', '2016-07-29', 1, '1469795210');
INSERT INTO `statistik` VALUES ('114.125.83.147', '2016-07-29', 1, '1469795233');
INSERT INTO `statistik` VALUES ('66.249.65.169', '2016-07-29', 1, '1469797509');
INSERT INTO `statistik` VALUES ('144.76.29.162', '2016-07-29', 1, '1469797542');
INSERT INTO `statistik` VALUES ('8.37.234.113', '2016-07-29', 1, '1469801286');
INSERT INTO `statistik` VALUES ('112.215.63.35', '2016-07-29', 1, '1469801289');
INSERT INTO `statistik` VALUES ('202.67.37.47', '2016-07-29', 16, '1469809127');
INSERT INTO `statistik` VALUES ('114.120.234.82', '2016-07-29', 1, '1469806369');
INSERT INTO `statistik` VALUES ('46.229.170.193', '2016-07-30', 1, '1469823384');
INSERT INTO `statistik` VALUES ('66.249.65.165', '2016-07-30', 4, '1469890035');
INSERT INTO `statistik` VALUES ('66.249.65.172', '2016-07-30', 1, '1469828501');
INSERT INTO `statistik` VALUES ('66.249.65.169', '2016-07-30', 1, '1469828513');
INSERT INTO `statistik` VALUES ('114.125.170.220', '2016-07-30', 9, '1469876172');
INSERT INTO `statistik` VALUES ('115.178.252.119', '2016-07-30', 5, '1469844446');
INSERT INTO `statistik` VALUES ('114.125.62.89', '2016-07-30', 1, '1469845548');
INSERT INTO `statistik` VALUES ('114.4.79.3', '2016-07-30', 1, '1469846221');
INSERT INTO `statistik` VALUES ('52.33.65.229', '2016-07-30', 1, '1469846351');
INSERT INTO `statistik` VALUES ('114.124.7.92', '2016-07-30', 1, '1469847659');
INSERT INTO `statistik` VALUES ('112.215.44.173', '2016-07-30', 1, '1469848713');
INSERT INTO `statistik` VALUES ('114.125.190.145', '2016-07-30', 19, '1469858659');
INSERT INTO `statistik` VALUES ('114.124.7.167', '2016-07-30', 1, '1469850746');
INSERT INTO `statistik` VALUES ('36.83.93.69', '2016-07-30', 26, '1469854260');
INSERT INTO `statistik` VALUES ('114.125.168.112', '2016-07-30', 45, '1469857338');
INSERT INTO `statistik` VALUES ('114.125.185.4', '2016-07-30', 1, '1469867951');
INSERT INTO `statistik` VALUES ('114.125.173.28', '2016-07-30', 1, '1469873762');
INSERT INTO `statistik` VALUES ('180.76.15.29', '2016-07-30', 1, '1469873804');
INSERT INTO `statistik` VALUES ('202.46.57.198', '2016-07-30', 1, '1469875814');
INSERT INTO `statistik` VALUES ('104.193.88.244', '2016-07-30', 1, '1469877823');
INSERT INTO `statistik` VALUES ('114.125.170.120', '2016-07-30', 3, '1469885420');
INSERT INTO `statistik` VALUES ('66.249.65.172', '2016-07-31', 1, '1469904365');
INSERT INTO `statistik` VALUES ('5.255.250.41', '2016-07-31', 1, '1469908344');
INSERT INTO `statistik` VALUES ('66.249.65.165', '2016-07-31', 3, '1469967512');
INSERT INTO `statistik` VALUES ('168.235.206.113', '2016-07-31', 1, '1469917638');
INSERT INTO `statistik` VALUES ('120.169.254.46', '2016-07-31', 3, '1469917803');
INSERT INTO `statistik` VALUES ('69.171.230.107', '2016-07-31', 1, '1469919436');
INSERT INTO `statistik` VALUES ('114.125.172.89', '2016-07-31', 8, '1469923018');
INSERT INTO `statistik` VALUES ('114.125.170.43', '2016-07-31', 17, '1469939609');
INSERT INTO `statistik` VALUES ('114.125.173.122', '2016-07-31', 18, '1469945950');
INSERT INTO `statistik` VALUES ('112.215.45.110', '2016-07-31', 7, '1469947492');
INSERT INTO `statistik` VALUES ('114.125.178.202', '2016-07-31', 1, '1469954767');
INSERT INTO `statistik` VALUES ('46.229.167.149', '2016-07-31', 3, '1469956201');
INSERT INTO `statistik` VALUES ('69.171.230.98', '2016-07-31', 1, '1469957294');
INSERT INTO `statistik` VALUES ('168.235.197.219', '2016-07-31', 1, '1469957295');
INSERT INTO `statistik` VALUES ('114.125.45.171', '2016-07-31', 6, '1469970683');
INSERT INTO `statistik` VALUES ('202.67.37.34', '2016-07-31', 1, '1469977508');
INSERT INTO `statistik` VALUES ('180.249.22.171', '2016-07-31', 25, '1469978171');
INSERT INTO `statistik` VALUES ('180.254.174.236', '2016-07-31', 2, '1469978194');
INSERT INTO `statistik` VALUES ('51.254.130.61', '2016-07-31', 1, '1469978393');
INSERT INTO `statistik` VALUES ('62.210.97.48', '2016-07-31', 1, '1469979551');
INSERT INTO `statistik` VALUES ('36.66.250.52', '2016-08-01', 4, '1470013864');
INSERT INTO `statistik` VALUES ('114.125.177.194', '2016-08-01', 4, '1470014879');
INSERT INTO `statistik` VALUES ('36.85.197.140', '2016-08-01', 1, '1470014340');
INSERT INTO `statistik` VALUES ('36.75.221.68', '2016-08-01', 6, '1470019983');
INSERT INTO `statistik` VALUES ('128.199.75.236', '2016-08-01', 1, '1470024125');
INSERT INTO `statistik` VALUES ('114.125.170.220', '2016-08-01', 8, '1470034404');
INSERT INTO `statistik` VALUES ('66.249.84.240', '2016-08-01', 1, '1470034741');
INSERT INTO `statistik` VALUES ('114.125.168.175', '2016-08-01', 1, '1470046523');
INSERT INTO `statistik` VALUES ('176.9.10.227', '2016-08-01', 1, '1470046934');
INSERT INTO `statistik` VALUES ('66.249.65.165', '2016-08-01', 1, '1470049516');
INSERT INTO `statistik` VALUES ('45.55.133.226', '2016-08-01', 1, '1470054138');
INSERT INTO `statistik` VALUES ('202.67.37.35', '2016-08-01', 1, '1470062024');
INSERT INTO `statistik` VALUES ('69.171.230.118', '2016-08-01', 1, '1470068919');
INSERT INTO `statistik` VALUES ('69.171.230.97', '2016-08-01', 1, '1470068922');
INSERT INTO `statistik` VALUES ('69.171.230.110', '2016-08-01', 1, '1470068926');
INSERT INTO `statistik` VALUES ('69.171.230.106', '2016-08-01', 1, '1470068944');
INSERT INTO `statistik` VALUES ('69.171.230.101', '2016-08-01', 1, '1470068963');
INSERT INTO `statistik` VALUES ('66.249.65.169', '2016-08-02', 2, '1470124217');
INSERT INTO `statistik` VALUES ('45.55.229.176', '2016-08-02', 10, '1470087784');
INSERT INTO `statistik` VALUES ('157.55.39.126', '2016-08-02', 1, '1470089881');
INSERT INTO `statistik` VALUES ('114.125.170.220', '2016-08-02', 14, '1470095806');
INSERT INTO `statistik` VALUES ('168.235.206.113', '2016-08-02', 1, '1470095663');
INSERT INTO `statistik` VALUES ('120.169.255.48', '2016-08-02', 3, '1470096021');
INSERT INTO `statistik` VALUES ('103.19.58.26', '2016-08-02', 17, '1470102988');
INSERT INTO `statistik` VALUES ('36.83.96.45', '2016-08-02', 6, '1470102993');
INSERT INTO `statistik` VALUES ('114.125.173.121', '2016-08-02', 29, '1470110576');
INSERT INTO `statistik` VALUES ('66.249.65.165', '2016-08-02', 1, '1470110032');
INSERT INTO `statistik` VALUES ('114.125.171.157', '2016-08-02', 21, '1470128958');
INSERT INTO `statistik` VALUES ('36.66.250.52', '2016-08-02', 16, '1470117446');
INSERT INTO `statistik` VALUES ('180.254.189.52', '2016-08-02', 1, '1470117012');
INSERT INTO `statistik` VALUES ('64.246.165.150', '2016-08-02', 1, '1470119615');
INSERT INTO `statistik` VALUES ('36.84.224.49', '2016-08-02', 4, '1470121183');
INSERT INTO `statistik` VALUES ('180.251.165.8', '2016-08-02', 16, '1470122573');
INSERT INTO `statistik` VALUES ('144.76.61.6', '2016-08-02', 1, '1470125316');
INSERT INTO `statistik` VALUES ('114.125.171.246', '2016-08-02', 19, '1470128439');
INSERT INTO `statistik` VALUES ('112.215.45.117', '2016-08-02', 1, '1470129369');
INSERT INTO `statistik` VALUES ('125.167.113.94', '2016-08-02', 1, '1470140936');
INSERT INTO `statistik` VALUES ('66.249.65.172', '2016-08-02', 1, '1470142103');
INSERT INTO `statistik` VALUES ('114.125.170.175', '2016-08-02', 1, '1470151144');
INSERT INTO `statistik` VALUES ('162.243.233.58', '2016-08-02', 1, '1470153858');
INSERT INTO `statistik` VALUES ('36.75.240.15', '2016-08-02', 1, '1470155219');
INSERT INTO `statistik` VALUES ('114.125.172.126', '2016-08-03', 1, '1470192508');
INSERT INTO `statistik` VALUES ('180.254.110.120', '2016-08-03', 1, '1470192592');
INSERT INTO `statistik` VALUES ('36.66.250.52', '2016-08-03', 76, '1470209870');
INSERT INTO `statistik` VALUES ('180.251.169.32', '2016-08-03', 138, '1470214446');
INSERT INTO `statistik` VALUES ('66.249.65.172', '2016-08-03', 1, '1470198089');
INSERT INTO `statistik` VALUES ('168.235.197.36', '2016-08-03', 4, '1470200720');
INSERT INTO `statistik` VALUES ('66.249.65.165', '2016-08-03', 1, '1470201220');
INSERT INTO `statistik` VALUES ('114.125.184.156', '2016-08-03', 15, '1470206508');
INSERT INTO `statistik` VALUES ('178.162.216.36', '2016-08-03', 2, '1470204695');
INSERT INTO `statistik` VALUES ('36.84.229.51', '2016-08-03', 1, '1470205233');
INSERT INTO `statistik` VALUES ('36.84.229.54', '2016-08-03', 6, '1470215133');
INSERT INTO `statistik` VALUES ('178.162.216.30', '2016-08-03', 1, '1470208336');
INSERT INTO `statistik` VALUES ('66.249.65.169', '2016-08-03', 2, '1470228846');
INSERT INTO `statistik` VALUES ('114.125.179.36', '2016-08-03', 11, '1470217705');
INSERT INTO `statistik` VALUES ('52.71.155.178', '2016-08-03', 2, '1470218745');
INSERT INTO `statistik` VALUES ('36.83.139.178', '2016-08-03', 8, '1470227434');
INSERT INTO `statistik` VALUES ('114.125.170.121', '2016-08-03', 18, '1470229939');
INSERT INTO `statistik` VALUES ('114.125.191.213', '2016-08-03', 35, '1470232564');
INSERT INTO `statistik` VALUES ('36.75.240.15', '2016-08-03', 47, '1470236451');
INSERT INTO `statistik` VALUES ('114.125.189.56', '2016-08-03', 6, '1470235931');
INSERT INTO `statistik` VALUES ('114.125.191.213', '2016-08-04', 51, '1470292404');
INSERT INTO `statistik` VALUES ('64.74.215.113', '2016-08-04', 1, '1470263254');
INSERT INTO `statistik` VALUES ('114.125.178.69', '2016-08-04', 6, '1470264056');
INSERT INTO `statistik` VALUES ('36.66.250.52', '2016-08-04', 1, '1470271666');
INSERT INTO `statistik` VALUES ('36.83.115.63', '2016-08-04', 4, '1470274099');
INSERT INTO `statistik` VALUES ('180.251.161.240', '2016-08-04', 73, '1470294803');
INSERT INTO `statistik` VALUES ('114.125.190.85', '2016-08-04', 6, '1470278125');
INSERT INTO `statistik` VALUES ('178.162.216.35', '2016-08-04', 1, '1470278150');
INSERT INTO `statistik` VALUES ('69.171.230.101', '2016-08-04', 1, '1470281290');
INSERT INTO `statistik` VALUES ('114.125.188.43', '2016-08-04', 14, '1470292370');
INSERT INTO `statistik` VALUES ('67.198.140.203', '2016-08-04', 2, '1470312738');
INSERT INTO `statistik` VALUES ('114.125.175.245', '2016-08-04', 16, '1470317473');
INSERT INTO `statistik` VALUES ('114.125.178.205', '2016-08-04', 7, '1470311897');
INSERT INTO `statistik` VALUES ('114.125.188.196', '2016-08-04', 1, '1470313287');
INSERT INTO `statistik` VALUES ('52.71.155.178', '2016-08-04', 2, '1470320972');
INSERT INTO `statistik` VALUES ('114.125.178.125', '2016-08-04', 27, '1470324355');
INSERT INTO `statistik` VALUES ('114.125.187.246', '2016-08-04', 1, '1470325006');
INSERT INTO `statistik` VALUES ('114.125.60.246', '2016-08-04', 1, '1470327656');
INSERT INTO `statistik` VALUES ('36.83.70.223', '2016-08-05', 2, '1470337071');
INSERT INTO `statistik` VALUES ('66.249.65.165', '2016-08-05', 3, '1470394323');
INSERT INTO `statistik` VALUES ('8.37.235.215', '2016-08-05', 1, '1470350551');
INSERT INTO `statistik` VALUES ('120.164.45.121', '2016-08-05', 12, '1470351111');
INSERT INTO `statistik` VALUES ('66.249.65.169', '2016-08-05', 1, '1470350866');
INSERT INTO `statistik` VALUES ('114.125.177.238', '2016-08-05', 41, '1470352700');
INSERT INTO `statistik` VALUES ('36.84.1.49', '2016-08-05', 1, '1470357939');
INSERT INTO `statistik` VALUES ('36.85.182.116', '2016-08-05', 32, '1470384244');
INSERT INTO `statistik` VALUES ('69.171.230.119', '2016-08-05', 1, '1470370327');
INSERT INTO `statistik` VALUES ('114.125.177.18', '2016-08-05', 1, '1470373878');
INSERT INTO `statistik` VALUES ('67.198.140.203', '2016-08-05', 1, '1470378865');
INSERT INTO `statistik` VALUES ('114.125.173.88', '2016-08-05', 6, '1470386920');
INSERT INTO `statistik` VALUES ('114.125.186.60', '2016-08-05', 16, '1470394327');
INSERT INTO `statistik` VALUES ('36.83.69.180', '2016-08-05', 12, '1470398226');
INSERT INTO `statistik` VALUES ('66.249.65.169', '2016-08-06', 1, '1470417224');
INSERT INTO `statistik` VALUES ('66.249.65.181', '2016-08-06', 1, '1470420405');
INSERT INTO `statistik` VALUES ('157.55.39.116', '2016-08-06', 1, '1470428417');
INSERT INTO `statistik` VALUES ('66.249.65.172', '2016-08-06', 1, '1470434224');
INSERT INTO `statistik` VALUES ('36.83.97.40', '2016-08-06', 97, '1470471532');
INSERT INTO `statistik` VALUES ('36.75.146.142', '2016-08-06', 80, '1470474590');
INSERT INTO `statistik` VALUES ('66.249.65.165', '2016-08-06', 2, '1470475083');
INSERT INTO `statistik` VALUES ('114.125.51.176', '2016-08-06', 1, '1470467128');
INSERT INTO `statistik` VALUES ('36.75.247.95', '2016-08-06', 20, '1470480998');
INSERT INTO `statistik` VALUES ('114.125.189.91', '2016-08-06', 11, '1470476741');
INSERT INTO `statistik` VALUES ('69.171.230.109', '2016-08-06', 1, '1470478280');
INSERT INTO `statistik` VALUES ('36.83.70.79', '2016-08-06', 44, '1470497189');
INSERT INTO `statistik` VALUES ('112.215.153.130', '2016-08-06', 5, '1470487072');
INSERT INTO `statistik` VALUES ('66.249.65.169', '2016-08-07', 2, '1470567154');
INSERT INTO `statistik` VALUES ('66.249.65.165', '2016-08-07', 1, '1470541254');
INSERT INTO `statistik` VALUES ('66.249.65.172', '2016-08-07', 3, '1470567131');
INSERT INTO `statistik` VALUES ('36.83.70.79', '2016-08-07', 110, '1470562843');
INSERT INTO `statistik` VALUES ('36.75.146.142', '2016-08-07', 53, '1470561507');
INSERT INTO `statistik` VALUES ('66.220.149.32', '2016-08-07', 1, '1470577761');
INSERT INTO `statistik` VALUES ('194.153.113.35', '2016-08-07', 1, '1470580419');
INSERT INTO `statistik` VALUES ('36.83.129.54', '2016-08-07', 1, '1470584045');
INSERT INTO `statistik` VALUES ('114.125.186.90', '2016-08-08', 2, '1470621478');
INSERT INTO `statistik` VALUES ('180.249.16.136', '2016-08-08', 2, '1470624293');
INSERT INTO `statistik` VALUES ('114.125.172.224', '2016-08-08', 1, '1470624001');
INSERT INTO `statistik` VALUES ('114.125.179.207', '2016-08-08', 4, '1470624318');
INSERT INTO `statistik` VALUES ('125.162.208.96', '2016-08-08', 58, '1470660639');
INSERT INTO `statistik` VALUES ('8.37.231.185', '2016-08-08', 1, '1470640198');
INSERT INTO `statistik` VALUES ('69.171.230.105', '2016-08-08', 1, '1470640207');
INSERT INTO `statistik` VALUES ('114.125.178.137', '2016-08-08', 20, '1470649080');
INSERT INTO `statistik` VALUES ('103.3.77.34', '2016-08-08', 6, '1470647274');
INSERT INTO `statistik` VALUES ('36.83.115.98', '2016-08-08', 5, '1470647198');
INSERT INTO `statistik` VALUES ('66.249.65.169', '2016-08-08', 1, '1470648469');
INSERT INTO `statistik` VALUES ('36.83.74.143', '2016-08-08', 6, '1470655729');
INSERT INTO `statistik` VALUES ('88.198.22.8', '2016-08-08', 1, '1470658178');
INSERT INTO `statistik` VALUES ('144.76.80.151', '2016-08-08', 1, '1470658790');
INSERT INTO `statistik` VALUES ('69.171.230.109', '2016-08-08', 1, '1470660555');
INSERT INTO `statistik` VALUES ('114.125.185.213', '2016-08-08', 4, '1470665031');
INSERT INTO `statistik` VALUES ('66.249.65.165', '2016-08-08', 1, '1470665271');
INSERT INTO `statistik` VALUES ('178.140.87.205', '2016-08-08', 1, '1470668274');
INSERT INTO `statistik` VALUES ('176.77.30.43', '2016-08-08', 1, '1470672932');
INSERT INTO `statistik` VALUES ('114.125.187.179', '2016-08-09', 5, '1470692432');
INSERT INTO `statistik` VALUES ('8.37.225.114', '2016-08-09', 5, '1470697084');
INSERT INTO `statistik` VALUES ('202.67.37.44', '2016-08-09', 22, '1470697663');
INSERT INTO `statistik` VALUES ('114.125.176.231', '2016-08-09', 5, '1470698984');
INSERT INTO `statistik` VALUES ('36.66.250.52', '2016-08-09', 70, '1470733050');
INSERT INTO `statistik` VALUES ('114.125.172.245', '2016-08-09', 2, '1470702834');
INSERT INTO `statistik` VALUES ('114.125.186.84', '2016-08-09', 22, '1470703486');
INSERT INTO `statistik` VALUES ('69.171.230.104', '2016-08-09', 1, '1470707340');
INSERT INTO `statistik` VALUES ('114.125.170.64', '2016-08-09', 5, '1470709564');
INSERT INTO `statistik` VALUES ('66.249.65.172', '2016-08-09', 2, '1470752486');
INSERT INTO `statistik` VALUES ('180.249.16.136', '2016-08-09', 15, '1470719281');
INSERT INTO `statistik` VALUES ('178.162.216.30', '2016-08-09', 9, '1470718742');
INSERT INTO `statistik` VALUES ('36.83.80.229', '2016-08-09', 15, '1470731394');
INSERT INTO `statistik` VALUES ('162.243.233.58', '2016-08-09', 1, '1470722473');
INSERT INTO `statistik` VALUES ('66.249.88.32', '2016-08-09', 1, '1470738470');
INSERT INTO `statistik` VALUES ('144.76.175.75', '2016-08-09', 1, '1470738585');
INSERT INTO `statistik` VALUES ('36.83.115.98', '2016-08-09', 1, '1470742039');
INSERT INTO `statistik` VALUES ('66.249.65.169', '2016-08-09', 1, '1470742294');
INSERT INTO `statistik` VALUES ('114.125.169.251', '2016-08-09', 1, '1470744490');
INSERT INTO `statistik` VALUES ('114.125.185.88', '2016-08-09', 9, '1470750931');
INSERT INTO `statistik` VALUES ('114.125.185.161', '2016-08-10', 1, '1470762900');
INSERT INTO `statistik` VALUES ('66.249.65.165', '2016-08-10', 2, '1470771491');
INSERT INTO `statistik` VALUES ('66.249.65.169', '2016-08-10', 2, '1470844889');
INSERT INTO `statistik` VALUES ('36.75.148.190', '2016-08-10', 12, '1470802263');
INSERT INTO `statistik` VALUES ('91.109.30.113', '2016-08-10', 3, '1470794495');
INSERT INTO `statistik` VALUES ('180.249.5.13', '2016-08-10', 56, '1470799874');
INSERT INTO `statistik` VALUES ('54.234.95.83', '2016-08-10', 2, '1470796122');
INSERT INTO `statistik` VALUES ('114.125.170.51', '2016-08-10', 6, '1470804127');
INSERT INTO `statistik` VALUES ('180.251.149.196', '2016-08-10', 2, '1470804448');
INSERT INTO `statistik` VALUES ('54.191.244.235', '2016-08-10', 1, '1470804188');
INSERT INTO `statistik` VALUES ('36.75.252.122', '2016-08-10', 63, '1470821336');
INSERT INTO `statistik` VALUES ('36.66.250.52', '2016-08-10', 21, '1470818084');
INSERT INTO `statistik` VALUES ('163.172.137.135', '2016-08-10', 2, '1470819822');
INSERT INTO `statistik` VALUES ('66.249.65.172', '2016-08-10', 1, '1470819926');
INSERT INTO `statistik` VALUES ('69.171.230.100', '2016-08-10', 2, '1470830760');
INSERT INTO `statistik` VALUES ('178.162.216.38', '2016-08-10', 5, '1470826078');
INSERT INTO `statistik` VALUES ('69.171.230.97', '2016-08-10', 1, '1470830769');
INSERT INTO `statistik` VALUES ('69.171.230.108', '2016-08-10', 1, '1470830824');
INSERT INTO `statistik` VALUES ('69.171.230.101', '2016-08-10', 1, '1470830829');
INSERT INTO `statistik` VALUES ('69.171.230.103', '2016-08-10', 1, '1470830834');
INSERT INTO `statistik` VALUES ('69.171.230.119', '2016-08-10', 1, '1470830834');
INSERT INTO `statistik` VALUES ('69.171.230.114', '2016-08-10', 1, '1470830835');
INSERT INTO `statistik` VALUES ('69.171.230.107', '2016-08-10', 1, '1470830848');
INSERT INTO `statistik` VALUES ('45.55.133.238', '2016-08-10', 1, '1470833601');
INSERT INTO `statistik` VALUES ('66.249.65.172', '2016-08-11', 3, '1470926124');
INSERT INTO `statistik` VALUES ('104.131.19.146', '2016-08-11', 17, '1470850868');
INSERT INTO `statistik` VALUES ('114.125.185.244', '2016-08-11', 8, '1470852205');
INSERT INTO `statistik` VALUES ('66.249.65.165', '2016-08-11', 2, '1470873718');
INSERT INTO `statistik` VALUES ('114.125.174.95', '2016-08-11', 12, '1470867260');
INSERT INTO `statistik` VALUES ('114.125.173.211', '2016-08-11', 3, '1470868657');
INSERT INTO `statistik` VALUES ('114.125.189.136', '2016-08-11', 5, '1470868958');
INSERT INTO `statistik` VALUES ('114.125.172.243', '2016-08-11', 4, '1470869411');
INSERT INTO `statistik` VALUES ('66.249.65.169', '2016-08-11', 1, '1470870178');
INSERT INTO `statistik` VALUES ('125.162.211.212', '2016-08-11', 107, '1470903447');
INSERT INTO `statistik` VALUES ('46.229.167.149', '2016-08-11', 3, '1470876761');
INSERT INTO `statistik` VALUES ('8.37.235.215', '2016-08-11', 1, '1470885185');
INSERT INTO `statistik` VALUES ('120.164.41.244', '2016-08-11', 10, '1470886118');
INSERT INTO `statistik` VALUES ('180.251.149.196', '2016-08-11', 1, '1470886320');
INSERT INTO `statistik` VALUES ('110.136.89.49', '2016-08-11', 2, '1470896816');
INSERT INTO `statistik` VALUES ('114.125.173.206', '2016-08-11', 1, '1470896775');
INSERT INTO `statistik` VALUES ('36.66.250.52', '2016-08-11', 9, '1470899278');
INSERT INTO `statistik` VALUES ('91.109.30.99', '2016-08-11', 5, '1470908679');
INSERT INTO `statistik` VALUES ('180.249.15.51', '2016-08-11', 5, '1470912100');
INSERT INTO `statistik` VALUES ('69.171.230.122', '2016-08-11', 1, '1470912008');
INSERT INTO `statistik` VALUES ('40.77.167.63', '2016-08-11', 1, '1470913382');
INSERT INTO `statistik` VALUES ('61.5.105.11', '2016-08-11', 1, '1470913418');
INSERT INTO `statistik` VALUES ('125.162.210.95', '2016-08-11', 1, '1470919967');
INSERT INTO `statistik` VALUES ('114.125.185.146', '2016-08-12', 3, '1470940566');
INSERT INTO `statistik` VALUES ('40.77.167.63', '2016-08-12', 2, '1471003381');
INSERT INTO `statistik` VALUES ('66.249.65.165', '2016-08-12', 2, '1471000552');
INSERT INTO `statistik` VALUES ('36.83.67.64', '2016-08-12', 13, '1470991966');
INSERT INTO `statistik` VALUES ('36.66.250.52', '2016-08-12', 16, '1470965196');
INSERT INTO `statistik` VALUES ('66.249.73.232', '2016-08-12', 1, '1470977768');
INSERT INTO `statistik` VALUES ('66.249.65.172', '2016-08-12', 1, '1470984082');
INSERT INTO `statistik` VALUES ('69.171.230.119', '2016-08-12', 1, '1470986419');
INSERT INTO `statistik` VALUES ('69.171.230.99', '2016-08-12', 1, '1470986420');
INSERT INTO `statistik` VALUES ('69.171.230.113', '2016-08-12', 1, '1470986424');
INSERT INTO `statistik` VALUES ('8.37.235.215', '2016-08-12', 1, '1471003496');
INSERT INTO `statistik` VALUES ('120.164.41.244', '2016-08-12', 16, '1471005113');
INSERT INTO `statistik` VALUES ('114.121.132.245', '2016-08-12', 3, '1471010015');
INSERT INTO `statistik` VALUES ('66.249.65.165', '2016-08-13', 2, '1471035783');
INSERT INTO `statistik` VALUES ('180.254.179.80', '2016-08-13', 2, '1471051658');
INSERT INTO `statistik` VALUES ('66.249.84.234', '2016-08-13', 1, '1471052790');
INSERT INTO `statistik` VALUES ('66.249.65.169', '2016-08-13', 1, '1471053441');
INSERT INTO `statistik` VALUES ('::1', '2017-06-04', 451, '1496572066');
INSERT INTO `statistik` VALUES ('::1', '2017-06-03', 70, '1496471843');
INSERT INTO `statistik` VALUES ('::1', '2017-06-05', 3, '1496612977');
INSERT INTO `statistik` VALUES ('::1', '2017-06-07', 300, '1496849875');
INSERT INTO `statistik` VALUES ('::1', '2017-06-08', 178, '1496887857');
INSERT INTO `statistik` VALUES ('::1', '2018-02-17', 96, '1518886500');
INSERT INTO `statistik` VALUES ('::1', '2018-02-18', 702, '1518963063');
INSERT INTO `statistik` VALUES ('::1', '2018-02-19', 59, '1519027309');
INSERT INTO `statistik` VALUES ('::1', '2018-02-20', 29, '1519086259');
INSERT INTO `statistik` VALUES ('::1', '2018-02-21', 1, '1519190509');
INSERT INTO `statistik` VALUES ('::1', '2018-03-03', 895, '1520079952');
INSERT INTO `statistik` VALUES ('::1', '2018-03-04', 255, '1520143723');
INSERT INTO `statistik` VALUES ('::1', '2018-03-05', 35, '1520236218');
INSERT INTO `statistik` VALUES ('::1', '2018-03-06', 21, '1520314823');
INSERT INTO `statistik` VALUES ('::1', '2018-03-07', 13, '1520379122');
INSERT INTO `statistik` VALUES ('116.68.251.134', '2018-03-18', 68, '1521389811');
INSERT INTO `statistik` VALUES ('36.74.6.91', '2018-03-19', 3, '1521418275');
INSERT INTO `statistik` VALUES ('116.68.251.134', '2018-03-19', 2, '1521439321');
INSERT INTO `statistik` VALUES ('36.78.188.89', '2018-04-17', 50, '1523976711');
INSERT INTO `statistik` VALUES ('36.78.188.89', '2018-04-18', 14, '1524016161');
INSERT INTO `statistik` VALUES ('36.84.223.127', '2018-04-22', 1, '1524415769');
INSERT INTO `statistik` VALUES ('36.76.122.53', '2018-04-26', 1, '1524756222');
INSERT INTO `statistik` VALUES ('119.2.48.41', '2018-10-26', 1, '1540533593');
INSERT INTO `statistik` VALUES ('119.2.48.41', '2018-11-27', 1, '1543282570');
INSERT INTO `statistik` VALUES ('180.248.49.104', '2022-04-14', 20, '1649920593');
INSERT INTO `statistik` VALUES ('156.67.215.51', '2022-04-14', 11, '1649954006');
INSERT INTO `statistik` VALUES ('156.67.215.51', '2022-04-15', 21, '1650040395');
INSERT INTO `statistik` VALUES ('156.67.215.51', '2022-04-16', 36, '1650126814');
INSERT INTO `statistik` VALUES ('156.67.215.51', '2022-04-17', 16, '1650213194');
INSERT INTO `statistik` VALUES ('156.67.215.51', '2022-04-18', 36, '1650299612');
INSERT INTO `statistik` VALUES ('156.67.215.51', '2022-04-19', 49, '1650386000');
INSERT INTO `statistik` VALUES ('3.17.185.142', '2022-04-19', 1, '1650378313');
INSERT INTO `statistik` VALUES ('156.67.215.51', '2022-04-20', 16, '1650467014');
INSERT INTO `statistik` VALUES ('156.67.215.51', '2022-04-21', 94, '1650558816');
INSERT INTO `statistik` VALUES ('156.67.215.51', '2022-04-22', 96, '1650645204');
INSERT INTO `statistik` VALUES ('124.126.78.152', '2022-04-22', 1, '1650572539');
INSERT INTO `statistik` VALUES ('3.144.225.158', '2022-04-22', 1, '1650602973');
INSERT INTO `statistik` VALUES ('156.67.215.51', '2022-04-23', 96, '1650731612');
INSERT INTO `statistik` VALUES ('156.67.215.51', '2022-04-24', 68, '1650818002');
INSERT INTO `statistik` VALUES ('44.234.252.93', '2022-04-24', 1, '1650805832');
INSERT INTO `statistik` VALUES ('1.192.195.8', '2022-04-24', 1, '1650819195');
INSERT INTO `statistik` VALUES ('42.236.10.88', '2022-04-24', 1, '1650819213');
INSERT INTO `statistik` VALUES ('42.236.10.113', '2022-04-24', 1, '1650819223');
INSERT INTO `statistik` VALUES ('1.192.192.6', '2022-04-24', 1, '1650819226');
INSERT INTO `statistik` VALUES ('1.192.195.11', '2022-04-24', 1, '1650819229');
INSERT INTO `statistik` VALUES ('156.67.215.51', '2022-04-25', 57, '1650904412');
INSERT INTO `statistik` VALUES ('1.192.195.8', '2022-04-25', 1, '1650822876');
INSERT INTO `statistik` VALUES ('36.110.211.67', '2022-04-25', 2, '1650824024');
INSERT INTO `statistik` VALUES ('180.163.220.44', '2022-04-25', 1, '1650822876');
INSERT INTO `statistik` VALUES ('36.110.211.2', '2022-04-25', 2, '1650824024');
INSERT INTO `statistik` VALUES ('42.236.10.77', '2022-04-25', 1, '1650824024');
INSERT INTO `statistik` VALUES ('36.110.211.3', '2022-04-25', 1, '1650824024');
INSERT INTO `statistik` VALUES ('156.67.215.51', '2022-04-26', 64, '1650990865');
INSERT INTO `statistik` VALUES ('124.126.78.154', '2022-04-26', 1, '1650961226');
INSERT INTO `statistik` VALUES ('51.15.251.143', '2022-04-26', 1, '1650973141');
INSERT INTO `statistik` VALUES ('162.142.125.210', '2022-04-26', 2, '1650985653');
INSERT INTO `statistik` VALUES ('156.67.215.51', '2022-04-27', 60, '1651075412');
INSERT INTO `statistik` VALUES ('156.67.215.51', '2022-04-28', 44, '1651163611');
INSERT INTO `statistik` VALUES ('163.172.148.199', '2022-04-28', 1, '1651153402');
INSERT INTO `statistik` VALUES ('156.67.215.51', '2022-04-29', 35, '1651248211');
INSERT INTO `statistik` VALUES ('156.67.215.51', '2022-04-30', 32, '1651336395');
INSERT INTO `statistik` VALUES ('51.158.98.24', '2022-04-30', 1, '1651311791');
INSERT INTO `statistik` VALUES ('156.67.215.51', '2022-05-01', 16, '1651413814');
INSERT INTO `statistik` VALUES ('156.67.215.51', '2022-05-02', 22, '1651505599');
INSERT INTO `statistik` VALUES ('156.67.215.51', '2022-05-03', 24, '1651595606');
INSERT INTO `statistik` VALUES ('85.202.169.207', '2022-05-03', 1, '1651561059');
INSERT INTO `statistik` VALUES ('157.245.215.37', '2022-05-03', 1, '1651591727');
INSERT INTO `statistik` VALUES ('156.67.215.51', '2022-05-04', 20, '1651676629');
INSERT INTO `statistik` VALUES ('156.67.215.51', '2022-05-05', 20, '1651768398');
INSERT INTO `statistik` VALUES ('156.67.215.51', '2022-05-06', 52, '1651854807');
INSERT INTO `statistik` VALUES ('156.67.215.51', '2022-05-07', 34, '1651941222');
INSERT INTO `statistik` VALUES ('156.67.215.51', '2022-05-08', 11, '1652022266');
INSERT INTO `statistik` VALUES ('205.210.31.9', '2022-05-08', 1, '1651959758');
INSERT INTO `statistik` VALUES ('104.131.55.103', '2022-05-08', 1, '1652015973');
INSERT INTO `statistik` VALUES ('104.131.39.154', '2022-05-08', 1, '1652017383');
INSERT INTO `statistik` VALUES ('104.131.44.76', '2022-05-08', 1, '1652020045');
INSERT INTO `statistik` VALUES ('167.71.173.101', '2022-05-09', 1, '1652029599');
INSERT INTO `statistik` VALUES ('156.67.215.51', '2022-05-09', 15, '1652113998');
INSERT INTO `statistik` VALUES ('205.210.31.146', '2022-05-09', 1, '1652088644');
INSERT INTO `statistik` VALUES ('156.67.215.51', '2022-05-10', 27, '1652200416');
INSERT INTO `statistik` VALUES ('156.67.215.51', '2022-05-11', 51, '1652286830');
INSERT INTO `statistik` VALUES ('156.67.215.51', '2022-05-12', 12, '1652315716');
INSERT INTO `statistik` VALUES ('36.81.208.4', '2022-05-12', 1, '1652317964');

-- ----------------------------
-- Table structure for tag
-- ----------------------------
DROP TABLE IF EXISTS `tag`;
CREATE TABLE `tag`  (
  `id_tag` int NOT NULL AUTO_INCREMENT,
  `nama_tag` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tag_seo` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `count` int NOT NULL,
  PRIMARY KEY (`id_tag`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 55 CHARACTER SET = latin1 COLLATE = latin1_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tag
-- ----------------------------
INSERT INTO `tag` VALUES (41, 'Tambak', '', 'tambak', 20);
INSERT INTO `tag` VALUES (40, 'Perkebunan', '', 'perkebunan', 27);
INSERT INTO `tag` VALUES (38, 'Marketing', '', 'marketing', 13);
INSERT INTO `tag` VALUES (37, 'System', '', 'system', 26);
INSERT INTO `tag` VALUES (36, 'Bonus', '', 'bonus', 17);
INSERT INTO `tag` VALUES (34, 'Wisata', '', 'wisata', 4);
INSERT INTO `tag` VALUES (24, 'Olahraga', '', 'olahraga', 11);
INSERT INTO `tag` VALUES (25, 'Kesehatan', '', 'kesehatan', 16);
INSERT INTO `tag` VALUES (26, 'Nasional', '', 'nasional', 42);
INSERT INTO `tag` VALUES (27, 'Metropolitan', '', 'metropolitan', 32);
INSERT INTO `tag` VALUES (28, 'Teknologi', '', 'teknologi', 12);
INSERT INTO `tag` VALUES (22, 'Hiburan', '', 'hiburan', 18);
INSERT INTO `tag` VALUES (43, 'Pertanian', '', 'pertanian', 9);
INSERT INTO `tag` VALUES (49, 'Peternakan', 'admin', 'peternakan', 6);
INSERT INTO `tag` VALUES (50, 'pestisida nabati', 'admin', 'pestisida-nabati', 3);
INSERT INTO `tag` VALUES (51, 'Pupuk Organik', 'admin', 'pupuk-organik', 4);
INSERT INTO `tag` VALUES (52, 'Travel', 'admin', 'travel', 0);
INSERT INTO `tag` VALUES (53, 'Umrah', 'admin', 'umrah', 1);
INSERT INTO `tag` VALUES (54, 'Pesiar', 'admin', 'pesiar', 0);

-- ----------------------------
-- Table structure for templates
-- ----------------------------
DROP TABLE IF EXISTS `templates`;
CREATE TABLE `templates`  (
  `id_templates` int NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `pembuat` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `folder` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id_templates`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 21 CHARACTER SET = latin1 COLLATE = latin1_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of templates
-- ----------------------------
INSERT INTO `templates` VALUES (17, 'PHP[mu] Template V.3 Full Color', 'admin', 'Robby Prihandaya', 'tha-net', 'Y');

-- ----------------------------
-- Table structure for testimoni
-- ----------------------------
DROP TABLE IF EXISTS `testimoni`;
CREATE TABLE `testimoni`  (
  `id_testimoni` int NOT NULL AUTO_INCREMENT,
  `id_konsumen` int NOT NULL,
  `isi_testimoni` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `aktif` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `waktu_testimoni` datetime NOT NULL,
  PRIMARY KEY (`id_testimoni`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 8 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of testimoni
-- ----------------------------
INSERT INTO `testimoni` VALUES (1, 1, 'Saya berusaha mencoba memaklumi mereka tentang kesan menjadi entrepreneur instan ini dengan menjadi seorang MLM-ers, dengan menanyakan penyebab bisa memunculkan kesan instan tersebut. Mereka memberikan jawaban beragam berkaitan dengan proses instan seorang entrepreneur ini. ', 'Y', '2016-09-11 03:25:21');
INSERT INTO `testimoni` VALUES (2, 3, '<p>Menjadi seorang sukses dengan cara instan memang impian banyak orang dan saya yakin anda pun akan menyetujuinya. Namun, kembali lagi kepada diri anda sendiri apakah anda benar-benar memahami makna menjadi seorang entrepreneur sesungguhnya atau hanya memaknai seperti halnya membuat mie instan.</p>\n', 'Y', '2016-09-12 07:09:16');
INSERT INTO `testimoni` VALUES (5, 6, 'Saya berusaha mencoba memaklumi mereka tentang kesan menjadi entrepreneur instan ini dengan menjadi seorang MLM-ers, dengan menanyakan penyebab bisa memunculkan kesan instan tersebut. Mereka memberikan jawaban beragam berkaitan dengan proses instan seorang entrepreneur ini.', 'Y', '2016-09-14 14:11:36');
INSERT INTO `testimoni` VALUES (7, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec scelerisque condimentum mattis. Suspendisse potenti. Proin vitae elementum nisi. Aliquam eu pretium risus. Nam varius efficitur consectetur.', 'Y', '2018-03-03 15:19:50');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id_users` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `no_telp` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `foto` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `level` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'user',
  `blokir` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `id_session` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_users`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin', 'ccd85f604f2af89b034cb208e24ec82a74c361125e6e419009ff326424215a58baf61fc726a707c07d08027c2fc8e571d6a6c159e03bab03d3c901521d09b4ec', 'Robby Prihandaya', 'suryoatm@gmail.com', '081267771344', 'robby.jpg', 'admin', 'N', 'q173s8hs1jl04st35169ccl8o7');
INSERT INTO `users` VALUES (3, 'robby', '882c306525a9f885466520ba2aa6b10377b029cb569311fc17161d40df6e1bab7eb6103fcf567ce3a1375e77cc7db1928efec90cd0a379303fc2adb159bb1d14', 'Robby Prihandaya', 'robby.prihandaya@gmail.com', '081267771344', '', 'user', 'N', '8d05dd2f03981f86b56c23951f3f34d7-20180307063006');

-- ----------------------------
-- Table structure for users_modul
-- ----------------------------
DROP TABLE IF EXISTS `users_modul`;
CREATE TABLE `users_modul`  (
  `id_umod` int NOT NULL AUTO_INCREMENT,
  `id_session` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_modul` int NOT NULL,
  PRIMARY KEY (`id_umod`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 13 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users_modul
-- ----------------------------
INSERT INTO `users_modul` VALUES (1, '8d05dd2f03981f86b56c23951f3f34d7-20170401064451', 79);
INSERT INTO `users_modul` VALUES (2, '8d05dd2f03981f86b56c23951f3f34d7-20170401064451', 77);
INSERT INTO `users_modul` VALUES (3, '8d05dd2f03981f86b56c23951f3f34d7-20170401064451', 43);
INSERT INTO `users_modul` VALUES (4, '8d05dd2f03981f86b56c23951f3f34d7-20170401064451', 35);
INSERT INTO `users_modul` VALUES (5, '8d05dd2f03981f86b56c23951f3f34d7-20170401064451', 33);
INSERT INTO `users_modul` VALUES (7, '8d05dd2f03981f86b56c23951f3f34d7-20170401064451', 18);
INSERT INTO `users_modul` VALUES (8, '8d05dd2f03981f86b56c23951f3f34d7-20180307063006', 59);
INSERT INTO `users_modul` VALUES (9, '8d05dd2f03981f86b56c23951f3f34d7-20180307063006', 34);
INSERT INTO `users_modul` VALUES (10, '8d05dd2f03981f86b56c23951f3f34d7-20180307063006', 33);
INSERT INTO `users_modul` VALUES (11, '8d05dd2f03981f86b56c23951f3f34d7-20180307063006', 31);
INSERT INTO `users_modul` VALUES (12, '8d05dd2f03981f86b56c23951f3f34d7-20180307063006', 18);

SET FOREIGN_KEY_CHECKS = 1;
