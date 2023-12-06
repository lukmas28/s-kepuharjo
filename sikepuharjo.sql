-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 02, 2023 at 06:06 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sikepuharjo`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `master_akuns`
--

CREATE TABLE `master_akuns` (
  `id` char(36) NOT NULL,
  `password` varchar(255) DEFAULT 'text',
  `no_hp` bigint(20) DEFAULT 13,
  `role` varchar(12) DEFAULT 'text',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_masyarakat` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `master_akuns`
--

INSERT INTO `master_akuns` (`id`, `password`, `no_hp`, `role`, `created_at`, `updated_at`, `id_masyarakat`) VALUES
('00586e2d-6ca6-43fb-a09b-8b8032360105', '$2y$10$KPWvdpFllQKBGVi8bXEoRO.Tqm0L6Nt0eZL1xaZ8HS3MJ2l5RvTEG', 877731876876, 'RT', '2023-05-28 18:27:38', '2023-05-28 18:27:38', 'e146ec8d-e302-41ca-bcaf-57db98c1ff62'),
('16fc6614-38e7-4dfc-a1f2-c93866d4967d', '$2y$10$jVB5kZuzeYlJAR2i4EvOr.5QR2196GvyyBpV8/HWnlg5xwGqZH5oa', 87774931731, 'RT', '2023-05-28 15:47:39', '2023-05-28 15:47:39', '2e03a8a1-883a-4cbc-8cb1-5db192a8c9a7'),
('22d120d2-fb5d-487d-96fa-464e514431e9', '$2y$10$16fQRSlhsLpWQrDwrsYzpO/cvyaJkWvIBhVDWK2V9jZTyVHHlIBBy', 81358316530, '4', '2023-05-28 17:49:21', '2023-05-28 17:49:21', '5d1b8f82-19d7-4293-9ec5-4953e82c96e7'),
('2f7c60d8-5a6e-4fde-b01e-cf6c4309e3db', '$2y$10$XtJR5hL.sxIx8O1fUpwo4uBw3BAxzu7kDcC9SywoFnwvTJmU6JWBq', 87774931731, 'RT', '2023-05-28 15:48:18', '2023-05-28 15:48:18', 'dcf0ba98-fde8-4e9f-aab6-3b075c5cde2c'),
('3c32d2f0-4ad8-4469-9bfa-b50702c143b6', '$2y$10$WKX2oAnmXpke//H6oR21lOsWmUccEetD/F4td8lTRl7/h7UgP7.he', 87774931731, 'RT', '2023-05-28 15:45:19', '2023-05-28 15:45:19', 'df67d961-4d0b-4198-b5a4-45a1637312aa'),
('523d1b79-94ca-418c-8851-6db46e48ad51', '$2y$10$NMjz581.atQzN.EBY6ak.ehS.JCctC8ZglwmR3X6Q5LUoHOynnBby', 87774931731, 'RT', '2023-05-28 15:45:39', '2023-05-28 15:45:39', '665f1f41-ff5b-4a64-89d3-26d16f2882c3'),
('679246b9-a5e7-4a9b-9b13-69dca0b6d84d', '$2y$10$oypoDPxpXz5hrF0Z8Y7Kw.5pMJGVrtJS9l4gH.Q.cz7xXDpmgBIIi', 87774931731, 'RT', '2023-05-28 15:49:38', '2023-05-28 15:49:38', 'a60bea8c-bac2-468a-9155-901ad386e9b1'),
('6980645f-889a-473a-86e6-3607dcbfb06c', '$2y$10$d3/KNYL77w.FTpruKuaq2OxDoHnk7JOHk5zMOPsE6L2nkiWdQLdXu', 87774931731, 'RT', '2023-05-28 15:50:05', '2023-05-28 15:50:05', '3386c38b-0366-4641-98f8-8f541b03ef21'),
('71b94caf-9996-4b3c-b222-447011427a90', '$2y$10$GC.dUvS/oHkoSkPIx2adiuXWyr5D6tgCtPUoG3E.WnwQrAVwOEgey', 87774931731, 'RT', '2023-05-28 15:47:02', '2023-05-28 15:47:02', 'ec31e2c6-7e53-45a5-a33f-8f854e1d0b49'),
('78e5a2db-24f6-412e-a677-dc9043c1e5e1', '$2y$10$YPj5hnhTz1JPUxJUcDE.pe2AoGgBwIVflbCKUVQAFI57lD9E.sEc6', 89667198121, '4', '2023-05-28 19:29:06', '2023-05-28 19:29:06', 'a3d07d98-164b-4ec8-ae08-1f0556a47c72'),
('79ee69e3-34af-4db4-b2b9-1ba7364f7c3c', '$2y$10$3aqL495k5z3TV17n4cqa9uwxLPbbqtUNbOYMRTqXBwUQxfdob0m7i', 81358316530, '4', '2023-05-28 18:20:34', '2023-05-28 18:20:34', 'aa5f96e6-f64c-41e0-a8fc-dc67b80cf3d0'),
('7a13fa4d-5f02-4f4a-beef-60686f7a9bf1', '$2y$10$vMkDSpzx6dzWuk6FsCVPl.1UnyRzE4FYRewGArdV21zefY7/QCGSS', 89667198121, '4', '2023-05-28 17:10:16', '2023-05-28 17:10:16', '409821df-cfb3-468b-9af9-a63269b58257'),
('7baad1f7-26dc-4f0d-9626-12a31260710e', '$2y$10$UCKFkQsWhX/eiXID3S7/BejtImPZ.l3CnKqbAH8lfDwrT5Kz/e67i', 87774931731, 'RW', '2023-05-28 15:49:24', '2023-05-28 15:49:24', '665f1f41-ff5b-4a64-89d3-26d16f2882c5'),
('7ea2b1c7-e1e7-4b48-a923-f53d2a845c8f', '$2y$10$kS6T96vBNVTAQlLJgyAeTOyNgGf1EndskSmJAT5VP9.uymdZ9xzBy', 88000111222, '4', '2023-05-28 16:10:23', '2023-05-28 17:57:51', 'dd4f3aa8-07f2-4d71-8f59-d40da8fab048'),
('8dde9ee6-036a-4410-8c69-8f52f4414d9e', '$2y$10$.mxSMCA9iz/AWETlW8rozeCk9yFbTM5bXHoElAe2y4WMnYBfjn3si', 87774931731, 'RW', '2023-05-28 15:46:42', '2023-05-28 15:46:42', 'c51eeacf-cb25-429e-b176-5d6dc148100f'),
('9206d05f-671e-4b97-a32a-06cd6fd43b37', '$2y$10$Hm1sQWJJ1nkQCzBHFkKqcu5dKrvSOQiBYJlnsqsFmytaalKPqqDj2', 87774931731, 'RT', '2023-05-28 15:44:13', '2023-05-28 15:44:13', 'a300e0b5-1c2a-4ba3-baa2-c91c117fef1c'),
('9adcbdd6-49e0-4acd-a1e6-15fef6ef3d7e', '$2y$10$Rcjcd53QZ.7iz1sn3hcEzeBO8ShhPnQAbNDiuODJtCIz8fsZJjzxi', 87774931731, 'RT', '2023-05-28 15:49:53', '2023-05-28 15:49:53', '665f1f41-ff5b-4a64-89d3-26d16f2882c4'),
('bb8364b7-26ba-4f9d-9d50-6522f0b62d37', '$2y$10$xsEhKfKTU.QCsHOC3cKLceBB/FJy1x9nCimInwR7ibrLF4X2DaN3i', 87774931731, 'RW', '2023-05-28 15:42:56', '2023-05-28 15:42:56', '665f1f41-ff5b-4a64-89d3-26d16f2882c1');

-- --------------------------------------------------------

--
-- Table structure for table `master_beritas`
--

CREATE TABLE `master_beritas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` text DEFAULT 'text',
  `sub_title` text DEFAULT 'text',
  `deskripsi` text DEFAULT 'text',
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `master_beritas`
--

INSERT INTO `master_beritas` (`id`, `judul`, `sub_title`, `deskripsi`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Meet and Greet Bersama Penggemar, Slank Vespaan Keliling Lumajang', '2023-05-29', 'Bupati Lumajang Thoriqul Haq dan Wakil Bupati Lumajang, Indah Amperawati bersama Forkopimda Kabupaten Lumajang melaksanakan meet and greet dengan band Slank sebelum konser yang bertajuk \"Lumajang Untuk Indonesia\" di gelar.\r\n\r\nPara musisi ibu kota tersebut memenuhi keinginan penggemar dengan melakukan meet and greet guna menyapa langsung para fans yang hadir, di Halaman Belakang Pendopo Arya Wiraraja Kabupaten Lumajang, Minggu (28/5/2023).\r\n\r\nDalam kesempatan tersebut, Bupati Lumajang mengharapkan, agar hadirnya Slank di Kabupaten Lumajang menjadikan hiburan untuk masyarakat. Selain itu, juga bisa meningkatkan pertumbuhan perekonomian masyarakat Lumajang.\r\n\r\n\"Saya harap dengan adanya konser Slank tersebut bisa meningkatkan pertumbuhan perekonomian dan menjadi hiburan bagi masyarakat,\" harapnya.\r\n\r\nSenada dengan hal itu, Kapolres Lumajang, AKBP Boy Jeckson melaporkan, bahwa pihaknya sudah menyiapkan 550 personel untuk mengamankan konser Slank di Lumajang.\r\n\r\n\"Kami harap zero insiden dan zero tawuran, semuanya hepi untuk Lumajang bangkit. Intinya ini semua untuk masyarakat Lumajang, TNI-POLRI siap mengamankan konser Slank di Lumajang,\" ungkapnya.\r\n\r\nSementara itu, Vokalis Band Slank, Kaka merasa bahagia karena disambut dengan baik oleh Bupati dan Wakil Bupati beserta jajaran Forkopimda Kabupaten Lumajang. Menurutnya, hal itu akan menjadikan energi sehingga bisa memberikan yang terbaik untuk masyarakat Lumajang.\r\n\r\n\"Semoga konser ini bisa membangkitkan perekonomian masyarakat Lumajang, seperti apa yang diharapkan oleh Bupati Lumajang,\" harapnya.\r\n\r\nUsai melaksanakan meet and greet, para musisi tersebut di ajak Bupati Lumajang dan Wakil Bupati bersama Forkopimda Kabupaten Lumajang untuk berkeliling kota dengan menaiki vespa. (Kominfo-lmj/Ad)', '1685315516.jpeg', '2023-05-28 16:11:56', '2023-05-28 16:11:56'),
(2, 'Bupati Lumajang Terima CSR Bank Jatim untuk Ruang Terbuka Hijau', '2023-05-29', 'Bupati Lumajang Thoriqul Haq mengucapkan terima kasih banyak atas perhatian yang diberikan Bank Jatim kepada masyarakat Lumajang, melalui program Corporate Sosial Responsibilty (CSR) untuk meningkatkan pertumbuhan ekonomi masyarakat.\r\n\r\nTahun ini, pemberiaan CSR dikhususkan untuk mendukung penataan dan pembangunan ruang terbuka hijau (RTH).\r\n\r\n\"Salah satunya Bank Jatim Cabang Lumajang. Kontribusinya betul-betul nyata untuk mendorong usaha masyarakat Lumajang terus berkembang. Sekali lagi saya ucapkan terimakasih banyak,\" ujar dia usai menerima secara simbolis CSR sesaat sebelum konser Slank dimulai, Minggu (28/5/2023).\r\n\r\nSementara itu, Pimpinan Bank Jatim Cabang Lumajang Hanif Julhamsyah mengungkapkan, bahwa pihaknya memberikan CSR tersebut, harapannya agar usaha mikro, kecil dan menengah (UMKM) yang ada di sekitar RTH bisa semakin bangkit dan berkembang.\r\n\r\nLanjut dia, kegiatan pemberian CSR rutin diberikan setiap tahun. Ini merupakan bentuk kepeduliaan Bank Jatim Cabang Lumajang terhadap masyarakat Lumajang.\r\n\r\n\"Kami sangat sadar, RTH ini sebagai sarana edukasi, rekreasi dan olahraga. Tempat banyak orang berkumpul. Makanya, kami menambah penyediaan lapak untuk PKL yang berada di wilayah hutan kota. Penyediaan kursi taman di area taman artagama dan taman Jarit Kecamatan Candipuro,\" ungkap dia.\r\n\r\nTidak hanya itu, Bank Jatim Cabang Lumajang juga menambah sarana dan prasaran di dua lokasi tersebut. Di antaranya penerangan dengan memasang titik lampu di wilayah taman artagama. Selanjutnya, penyediaan rumah pompa beserta toilet di taman Jarit, Kecamatan Candipuro. (Kominfo-lmj/Fd)', '1685315576.jpeg', '2023-05-28 16:12:56', '2023-05-28 16:12:56'),
(3, 'Slank Sukses Hibur Masyarakat Lumajang, Cak Thoriq : Ini Janji Saya dan Bunda Indah', '2023-05-29', 'Gelaran musik bertajuk “Lumajang untuk Indonesia” yang menghadirkan musisi papan atas Indonesia yaitu Band Slank, berhasil menghibur ribuan masyarakat Lumajang dan sekitarnya, di Lapangan Bataliyon 527/By Lumajang, Minggu (28/5/2023).\r\n\r\nKonser Slank tersebut merupakan salah satu janji Bupati dan Wakil Bupati Lumajang kepada Slanker dan masyarakat Lumajang.\r\n\r\n\"Dulu ketika kami kumpul sama temen-temen Slanker Lumajang, ada yang usul agar Slank didatangkan di Kabupaten Lumajang, nah ini janji saya sama bunda. Hari ini janji kami sudah kami tuntaskan,\" ujar Bupati Lumajang Thoriqul Haq.\r\n\r\nBupati Lumajang yang akrab disapa Cak Thoriq itu mengucapkan terima kasih kepada seluruh masyarakat Lumajang.\r\n\r\n\"Saya mengucapkan terima kasih kepada seluruh Slanker yang datang, ada yang hadir dari Malang, Pasuruan, Surabaya bahkan ada yang Indramayu, ini berdampak tukang cilok tukang kopi jualannya meningkat,\" katanya.\r\n\r\nPemilihan Lapangan Batalyon sebagai lokasi konser, salah satunya sebagai penghormatan kepada prajurit Batalyon 527/BY yang sedang bertugas di Papua. Cak Thoriq pun mengajak seluruh masyarakat untuk mendoakan keselamatan dan kesehatan para prajurit Batalyon 527/BY. (Kominfo-lmj/Fd)', '1685315622.jpeg', '2023-05-28 16:13:42', '2023-05-28 16:13:42'),
(4, 'JUARA FAVORIT NETIZEN LOMBA KAMPUNG RESIK TAHUN 2022', '2023-05-29', 'Pengabdian Masyarakat adalah suatu kegiatan yang bertujuan untuk membantu masyarakat dalam beberapa aktivitas tanpa mengharapkan imbalan dalam bentuk apapun, memberikan dukungan, dan mendorong kepada Masyarakat. Agar kami juga bisa memberikan Kontribusi yang nyata bagi Masyarakat, Bangsa dan Negara.', '1685315677.jpeg', '2023-05-28 16:14:37', '2023-05-28 16:14:37');

-- --------------------------------------------------------

--
-- Table structure for table `master_kks`
--

CREATE TABLE `master_kks` (
  `id` char(36) NOT NULL,
  `no_kk` bigint(20) DEFAULT 12,
  `alamat` varchar(100) DEFAULT 'text',
  `rt` tinyint(4) NOT NULL,
  `rw` tinyint(4) NOT NULL,
  `kode_pos` int(11) NOT NULL,
  `kelurahan` varchar(60) DEFAULT 'text',
  `kecamatan` varchar(60) DEFAULT 'text',
  `kabupaten` varchar(60) DEFAULT 'text',
  `provinsi` varchar(60) DEFAULT 'text',
  `kk_tgl` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `master_kks`
--

INSERT INTO `master_kks` (`id`, `no_kk`, `alamat`, `rt`, `rw`, `kode_pos`, `kelurahan`, `kecamatan`, `kabupaten`, `provinsi`, `kk_tgl`, `created_at`, `updated_at`) VALUES
('023b13d9-bdba-42a6-bf4c-16a7faac78f1', 3508102010020201, 'jl Nangak Kepuahhro Lumajang', 1, 1, 67316, 'Kepuharjo', 'Lumajang', 'Lumajang', 'Jawa Timur', '2023-05-29', '2023-05-28 19:27:43', '2023-05-28 19:27:43'),
('0cba3200-1d4f-45ff-8b49-8889cf6eb0be', 3508102010020051, 'jl. semangka No.1 Kepuharjo Lumajang', 1, 2, 67316, 'Kepuharjo', 'Lumajang', 'Lumajang', 'Jawa Timur', '2023-05-29', '2023-05-28 15:05:11', '2023-05-28 15:05:11'),
('26d0b073-41b2-4ead-9b88-d5e6efa59f2c', 3508102010020101, 'jl. Rambutan No.113 Kepuharjo Lumajang', 2, 1, 67316, 'Kepuharjo', 'Lumajang', 'Lumajang', 'Jawa Timur', '2023-05-29', '2023-05-28 15:54:00', '2023-05-28 15:54:00'),
('26e88d0f-2c21-41be-9192-c24c4d5acc05', 3508102010020151, 'jl. Belimbing No.113 Kepuharjo Lumajang', 3, 2, 67316, 'Kepuharjo', 'Lumajang', 'Lumajang', 'Jawa Timur', '2023-05-29', '2023-05-28 15:57:37', '2023-05-28 15:58:54'),
('375b242c-8885-4dbe-b142-ebf7734965fb', 3508102010020091, 'jl. Belimbing No.113 Kepuharjo Lumajang', 1, 1, 67316, 'Kepuharjo', 'Lumajang', 'Lumajang', 'Jawa Timur', '2023-05-29', '2023-05-28 15:51:27', '2023-05-28 15:51:27'),
('37ad9b75-da75-4f7c-ac5c-618d88484bf6', 3508102010020121, 'jl. Semangka No.190 Kepuharjo Lumajang', 3, 1, 67316, 'Kepuharjo', 'Lumajang', 'Lumajang', 'Jawa Timur', '2023-05-29', '2023-05-28 15:55:01', '2023-05-28 15:55:01'),
('4c0132c3-164d-42f6-9b28-9f1032ad31f7', 3508102010020161, 'jl. Belimbing No.94 Kepuharjo Lumajang', 1, 3, 67316, 'Kepuharjo', 'Lumajang', 'Lumajang', 'Jawa Timur', '2023-05-29', '2023-05-28 15:58:48', '2023-05-28 15:58:48'),
('4c657539-b92c-45dd-8a2c-0ec22cdcc603', 3508102010020181, 'jl. Belimbing No.401 Kepuharjo Lumajang', 3, 3, 67316, 'Kepuharjo', 'Lumajang', 'Lumajang', 'Jawa Timur', '2023-05-29', '2023-05-28 16:00:30', '2023-05-28 16:00:30'),
('665f1f41-ff5b-4a64-89d3-26d16f2882d1', 3508102010020001, 'jl. Nangka No.111 Kepuharjo Lumajang', 1, 1, 67316, 'Kepuharjo', 'Lumajang', 'Lumajang', 'Jawa Timur', '2023-05-17', '2023-05-16 11:01:26', '2023-05-16 11:01:26'),
('665f1f41-ff5b-4a64-89d3-26d16f2882d2', 3508102010020011, 'jl. Kelapa Gading No.112 Kepuharjo Lumajang', 2, 1, 67316, 'Kepuharjo', 'Lumajang', 'Lumajang', 'Jawa Timur', '2023-05-17', '2023-05-16 11:01:26', '2023-05-28 15:08:05'),
('665f1f41-ff5b-4a64-89d3-26d16f2882d3', 3508102010020021, 'jl. Jeruk No.113 Kepuharjo Lumajang', 3, 1, 67316, 'Kepuharjo', 'Lumajang', 'Lumajang', 'Jawa Timur', '2023-05-17', '2023-05-16 11:01:26', '2023-05-28 15:08:14'),
('665f1f41-ff5b-4a64-89d3-26d16f2882d4', 3508102010020031, 'jl. Semangka No.114 Kepuharjo Lumajang', 1, 3, 67316, 'Kepuharjo', 'Lumajang', 'Lumajang', 'Jawa Timur', '2023-05-17', '2023-05-16 11:01:26', '2023-05-28 15:08:30'),
('665f1f41-ff5b-4a64-89d3-26d16f2882d5', 3508102010020041, 'jl. Durian No.115 Kepuharjo Lumajang', 2, 3, 67316, 'Kepuharjo', 'Lumajang', 'Lumajang', 'Jawa Timur', '2023-05-17', '2023-05-16 11:01:26', '2023-05-28 15:08:40'),
('74742286-af82-43e6-aec6-fbd80321de30', 3508102010020061, 'jl. Durian No.2 Kepuharjo Lumajang', 2, 2, 67316, 'Kepuharjo', 'Lumajang', 'Lumajang', 'Jawa Timur', '2023-05-29', '2023-05-28 15:06:21', '2023-05-28 15:06:21'),
('8a2a981a-06a0-43e0-b32b-8563e1537511', 3508102010020171, 'jl. Belimbing No.200 Kepuharjo Lumajang', 2, 3, 67316, 'Kepuharjo', 'Lumajang', 'Lumajang', 'Jawa Timur', '2023-05-29', '2023-05-28 15:59:43', '2023-05-28 15:59:43'),
('b83f36e6-f719-4a8b-a3fe-7e51fbc52862', 3508102010020081, 'jl. Nangka No.200 Kepuharjo Lumajang', 3, 3, 67316, 'Kepuharjo', 'Lumajang', 'Lumajang', 'Jawa Timur', '2023-05-29', '2023-05-28 15:09:20', '2023-05-28 15:09:20'),
('bcc72d97-5e92-4b9e-8a6c-da83c7fc40f7', 3508102010020191, 'jl. Belimbing No.113 Kepuharjo Lumajang', 4, 1, 67316, 'Kepuharjo', 'Lumajang', 'Lumajang', 'Jawa Timur', '2023-05-29', '2023-05-28 18:26:47', '2023-05-28 18:26:47'),
('d7fcf6c7-0193-4a40-8dd8-6fef2a02bbbb', 3508102010020071, 'jl. durian No.3 Kepuharjo Lumajang', 3, 2, 67316, 'Kepuharjo', 'Lumajang', 'Lumajang', 'Jawa Timur', '2023-05-29', '2023-05-28 15:07:09', '2023-05-28 15:07:09'),
('ebb0408b-80d6-43f5-9034-b0332c4eff16', 3508102010020141, 'jl. Nangka No.80 Kepuharjo Lumajang', 2, 2, 67316, 'Kepuharjo', 'Lumajang', 'Lumajang', 'Jawa Timur', '2023-05-29', '2023-05-28 15:56:36', '2023-05-28 15:56:36'),
('edc1ca31-e5dc-45c0-9e2c-d0e4cd49aa90', 3508102010020131, 'jl. Nangka No.172 Kepuharjo Lumajang', 1, 2, 67316, 'Kepuharjo', 'Lumajang', 'Lumajang', 'Jawa Timur', '2023-05-29', '2023-05-28 15:55:52', '2023-05-28 15:55:52');

-- --------------------------------------------------------

--
-- Table structure for table `master_masyarakats`
--

CREATE TABLE `master_masyarakats` (
  `id_masyarakat` char(36) NOT NULL,
  `nik` bigint(20) DEFAULT NULL,
  `nama_lengkap` varchar(100) DEFAULT NULL,
  `jenis_kelamin` varchar(16) DEFAULT NULL,
  `tempat_lahir` varchar(50) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `agama` varchar(20) DEFAULT NULL,
  `pendidikan` varchar(60) DEFAULT NULL,
  `pekerjaan` varchar(60) DEFAULT NULL,
  `golongan_darah` varchar(12) DEFAULT NULL,
  `status_perkawinan` varchar(20) DEFAULT NULL,
  `tgl_perkawinan` date DEFAULT NULL,
  `status_keluarga` varchar(20) DEFAULT NULL,
  `kewarganegaraan` varchar(20) DEFAULT NULL,
  `no_paspor` int(10) UNSIGNED DEFAULT NULL,
  `no_kitap` int(10) UNSIGNED DEFAULT NULL,
  `nama_ayah` varchar(60) DEFAULT NULL,
  `nama_ibu` varchar(60) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `master_masyarakats`
--

INSERT INTO `master_masyarakats` (`id_masyarakat`, `nik`, `nama_lengkap`, `jenis_kelamin`, `tempat_lahir`, `tgl_lahir`, `agama`, `pendidikan`, `pekerjaan`, `golongan_darah`, `status_perkawinan`, `tgl_perkawinan`, `status_keluarga`, `kewarganegaraan`, `no_paspor`, `no_kitap`, `nama_ayah`, `nama_ibu`, `created_at`, `updated_at`, `id`) VALUES
('0d7dfa92-7d17-4f9f-9b06-c18e8a65a15c', 3508102010020182, 'Deva Baskara Utoyo', 'Laki-Laki', 'Lumajang', '2023-05-29', 'Islam', 'Diploma IV/Strata I', 'PNS', 'B', 'Kawin', '2023-05-29', 'Kepala Keluarga', 'WNI', NULL, NULL, 'Budi Utami', 'Wanda Arvaniyan', '2023-05-28 16:00:30', '2023-05-28 16:00:30', '4c657539-b92c-45dd-8a2c-0ec22cdcc603'),
('1cbe814c-b534-40c5-a6f7-8339ed71e608', 3508102010020172, 'Achma Sirojudin', 'Laki-Laki', 'Jember', '2023-05-29', 'Islam', 'Diploma IV/Strata I', 'PNS', 'B', 'Kawin', '2023-05-29', 'Kepala Keluarga', 'WNI', NULL, NULL, 'Aditya Gilang', 'Amelia Agasta', '2023-05-28 15:59:43', '2023-05-28 15:59:43', '8a2a981a-06a0-43e0-b32b-8563e1537511'),
('1d012ad6-38e4-4e58-a110-a218f0e537a0', 3508102010020152, 'Farid Hartami', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kepala Keluarga', NULL, NULL, NULL, NULL, NULL, '2023-05-28 15:57:37', '2023-05-28 15:57:37', '26e88d0f-2c21-41be-9192-c24c4d5acc05'),
('2679cc29-8fa3-4b4d-a262-5c9d5dcf4c3c', 3508102010020044, 'Gabriellia Alfina', 'Perempuan', 'Lumajang', '2023-05-29', 'Islam', 'Belum Tamat SD/Sederajat', 'Belum Bekerja', 'A', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, 'Fikri Ahdiar', 'Firdiyatus Sholihah', '2023-05-28 15:37:28', '2023-05-28 15:37:28', '665f1f41-ff5b-4a64-89d3-26d16f2882d5'),
('2e03a8a1-883a-4cbc-8cb1-5db192a8c9a7', 3508102010020053, 'Ira Amelia Agasta', 'Perempuan', 'Jember', '2023-05-29', 'Kristen Protestan', 'Diploma IV/Strata I', 'PNS', 'pilih', 'pilih', NULL, 'Istri', 'WNI', NULL, NULL, 'raihan nanda', 'Vita Anggraeni', '2023-05-28 15:39:18', '2023-05-28 15:39:18', '0cba3200-1d4f-45ff-8b49-8889cf6eb0be'),
('2fb38d23-6a4c-46eb-84c8-4f9aeb18ff58', 3508102010020024, 'Andru Christo', 'Laki-Laki', 'Lumajang', '2023-05-29', 'Islam', 'Tamat SD/Sederajat', 'Belum Bekerja', 'A', 'Belum Kawin', '2023-05-29', 'Anak', 'WNI', NULL, NULL, 'Faisal oktabrian S', 'Ajeng Kadita', '2023-05-28 15:31:32', '2023-05-28 15:31:32', '665f1f41-ff5b-4a64-89d3-26d16f2882d3'),
('3080ec1e-e98f-4646-a3cd-72db6a363d1c', 3508102010020122, 'Sulthon Muhtarom', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kepala Keluarga', NULL, NULL, NULL, NULL, NULL, '2023-05-28 15:55:02', '2023-05-28 15:55:02', '37ad9b75-da75-4f7c-ac5c-618d88484bf6'),
('3386c38b-0366-4641-98f8-8f541b03ef21', 3508102010020082, 'Daffa Afifi', 'Laki-Laki', 'Jember', '2023-05-29', 'Islam', 'Diploma IV/Strata I', 'Wiraswasta', 'A', 'Kawin', NULL, 'Kepala Keluarga', 'WNI', NULL, NULL, 'Sutrisno', 'Ananda Yuliantika', '2023-05-28 15:09:20', '2023-05-28 15:09:20', 'b83f36e6-f719-4a8b-a3fe-7e51fbc52862'),
('409821df-cfb3-468b-9af9-a63269b58257', 3508102010020093, 'Karen Novita', 'Perempuan', 'Jember', '2023-05-29', 'Islam', 'Diploma IV/Strata I', 'PNS', 'A', 'Kawin', '2023-05-29', 'Istri', 'WNI', NULL, NULL, 'Budiman', 'Anissa', '2023-05-28 16:47:21', '2023-05-28 16:47:21', '375b242c-8885-4dbe-b142-ebf7734965fb'),
('41625070-b9ec-4ee8-abad-cbb9a83a9065', 3508102010020004, 'Nadia Ayu safitri', 'Perempuan', 'Jember', '2023-05-29', 'Islam', 'Diploma IV/Strata I', 'Wira Swasta', 'A', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, 'Edy Atthoillah', 'Regina Juniantika', '2023-05-28 15:12:08', '2023-05-28 15:12:08', '665f1f41-ff5b-4a64-89d3-26d16f2882d1'),
('52c65f2b-5db4-4a8a-9785-faf3cc54dfbe', 3508102010020084, 'Safira Damayanti', 'Perempuan', 'Jember', '2023-05-29', 'Islam', 'Belum Tamat SD/Sederajat', 'Belum Bekerja', 'A', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, 'Daffa Afifi', 'Ajeng Asmaraning', '2023-05-28 15:15:40', '2023-05-28 15:15:40', 'b83f36e6-f719-4a8b-a3fe-7e51fbc52862'),
('563589f8-e01e-4ac9-b3a8-97202aa01161', 3508102010020183, 'Triksi Tiara', 'Perempuan', 'Jember', '2023-05-29', 'Islam', 'Diploma III', 'Dokter', 'A', 'Kawin', '2023-05-29', 'Istri', 'WNI', NULL, NULL, 'Budi', 'Kavita Wunandita', '2023-05-28 16:01:33', '2023-05-28 16:01:33', '4c657539-b92c-45dd-8a2c-0ec22cdcc603'),
('57179aba-9224-4788-b05c-2ffedc01b8fa', 3508102010020142, 'Tegar Nasrullah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kepala Keluarga', NULL, NULL, NULL, NULL, NULL, '2023-05-28 15:56:36', '2023-05-28 15:56:36', 'ebb0408b-80d6-43f5-9034-b0332c4eff16'),
('5d1b8f82-19d7-4293-9ec5-4953e82c96e7', 3508102010020102, 'Restu Fahimuroid', 'Laki-Laki', 'Jember', '2023-05-29', 'Islam', 'Diploma IV/Strata I', 'PNS', 'A', 'Kawin', '2023-05-29', 'Kepala Keluarga', 'WNI', NULL, NULL, 'Maulana Malik', 'Nabila Zhafarina', '2023-05-28 15:54:01', '2023-05-28 15:54:01', '26d0b073-41b2-4ead-9b88-d5e6efa59f2c'),
('649a4c51-70c9-451c-8e84-58afc6e7b08a', 3508102010020023, 'Ajeng Kadita', 'Perempuan', 'Jember', '2023-05-29', 'Islam', 'SLTA/Sederajat', 'Wiraswasta', 'A', 'Belum Kawin', '2023-05-29', 'Istri', 'WNI', NULL, NULL, 'Surya', 'Triksi Tiara', '2023-05-28 15:29:53', '2023-05-28 15:29:53', '665f1f41-ff5b-4a64-89d3-26d16f2882d3'),
('665f1f41-ff5b-4a64-89d3-26d16f2882c1', 3508102010020002, 'Edy Atthoillah', 'Laki-Laki', 'Lumajang', '2002-10-20', 'Islam', 'Diploma IV/Strata I', 'Wiraswasta', 'A', 'Kawin', '2022-10-20', 'Kepala Keluarga', 'WNI', 123, 123, 'Misbah Lukman', 'Siti Julaicha', '2023-05-16 11:01:26', '2023-05-16 11:01:26', '665f1f41-ff5b-4a64-89d3-26d16f2882d1'),
('665f1f41-ff5b-4a64-89d3-26d16f2882c2', 3508102010020012, 'Wishal Ahzariyan', 'Perempuan', 'Lumajang', '2002-10-20', 'Islam', 'Diploma IV/Strata I', 'Wiraswasta', 'A', 'Kawin', '2022-10-20', 'Kepala Keluarga', 'WNI', 123, 123, 'Soebandi', 'Jasmine', '2023-05-16 11:01:26', '2023-05-16 11:01:26', '665f1f41-ff5b-4a64-89d3-26d16f2882d2'),
('665f1f41-ff5b-4a64-89d3-26d16f2882c3', 3508102010020022, 'Faisal Oktabrian S', 'Laki-Laki', 'Lumajang', '2002-10-20', 'Islam', 'Diploma IV/Strata I', 'Wiraswasta', 'A', 'Kawin', '2022-10-20', 'Kepala Keluarga', 'WNI', 123, 123, 'Anang', 'Juwita', '2023-05-16 11:01:26', '2023-05-16 11:01:26', '665f1f41-ff5b-4a64-89d3-26d16f2882d3'),
('665f1f41-ff5b-4a64-89d3-26d16f2882c4', 3508102010020032, 'Achmad Fawaid', 'Laki-Laki', 'Lumajang', '2002-10-20', 'Islam', 'Diploma IV/Strata I', 'Wiraswasta', 'A', 'Kawin', '2022-10-20', 'Kepala Keluarga', 'WNI', 123, 123, 'Atta', 'Aurel', '2023-05-16 11:01:26', '2023-05-16 11:01:26', '665f1f41-ff5b-4a64-89d3-26d16f2882d4'),
('665f1f41-ff5b-4a64-89d3-26d16f2882c5', 3508102010020042, 'Fikri Ahdiar', 'Laki-Laki', 'Lumajang', '2002-10-20', 'Islam', 'Diploma IV/Strata I', 'Wiraswasta', 'A', 'Kawin', '2022-10-20', 'Kepala Keluarga', 'WNI', 123, 123, 'Andru Christo', 'Triksi Tiara', '2023-05-16 11:01:26', '2023-05-16 11:01:26', '665f1f41-ff5b-4a64-89d3-26d16f2882d5'),
('90ad9dbb-6d45-40c1-a241-b415fb2e8351', 3508102010020083, 'Ajeng Asmaraning', 'Perempuan', 'Jember', '2023-05-29', 'Islam', 'Diploma IV/Strata I', 'PNS', 'B', 'Kawin', '2023-05-29', 'Istri', 'WNI', NULL, NULL, 'Jauhari', 'Gina Hamida', '2023-05-28 15:14:42', '2023-05-28 15:14:42', 'b83f36e6-f719-4a8b-a3fe-7e51fbc52862'),
('9af5f30e-aa8a-4441-84ef-4ca92e946a0e', 3508102010020033, 'Raihan Achmad', 'Perempuan', 'Jember', '2023-05-29', 'Islam', 'Diploma IV/Strata I', 'Wiraswasta', 'A', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, 'Achmad Fawaid', 'Virly Rahma', '2023-05-28 15:33:02', '2023-05-28 15:33:02', '665f1f41-ff5b-4a64-89d3-26d16f2882d4'),
('9ba65d37-bb14-4b1e-979c-e126d971e3d2', 3508102010020133, 'Masayu Pratitis', 'Perempuan', 'Solo', '2023-05-29', 'Islam', 'Diploma IV/Strata I', 'PNS', 'A', 'Kawin', '2023-05-29', 'Istri', 'WNI', NULL, NULL, 'Farhan Abdillah', 'Najwa Amalia', '2023-05-28 18:21:00', '2023-05-28 18:21:00', 'edc1ca31-e5dc-45c0-9e2c-d0e4cd49aa90'),
('a300e0b5-1c2a-4ba3-baa2-c91c117fef1c', 3508102010020013, 'Nadia Ayu', 'Laki-Laki', 'Jember', '2023-05-29', 'Islam', 'Diploma III', 'Wiraswasta', 'A', 'Kawin', '2023-05-29', 'Istri', 'WNI', NULL, NULL, 'Tora', 'Aisyah', '2023-05-28 15:27:19', '2023-05-28 15:27:19', '665f1f41-ff5b-4a64-89d3-26d16f2882d2'),
('a3d07d98-164b-4ec8-ae08-1f0556a47c72', 3508102010020202, 'Fawaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kepala Keluarga', NULL, NULL, NULL, NULL, NULL, '2023-05-28 19:27:43', '2023-05-28 19:27:43', '023b13d9-bdba-42a6-bf4c-16a7faac78f1'),
('a60bea8c-bac2-468a-9155-901ad386e9b1', 3508102010020043, 'Firdiyatus Sholihah', 'Perempuan', 'Jember', '2023-05-29', 'Islam', 'Strata II', 'PNS', 'A', 'Kawin', NULL, 'Istri', 'WNI', NULL, NULL, 'Andre Taulany', 'Lucy Damayanti', '2023-05-28 15:36:26', '2023-05-28 15:36:26', '665f1f41-ff5b-4a64-89d3-26d16f2882d5'),
('aa5f96e6-f64c-41e0-a8fc-dc67b80cf3d0', 3508102010020132, 'Caesar Ali', 'Laki-Laki', 'Jember', '2023-05-29', 'Islam', 'Diploma IV/Strata I', 'PNS', 'B', 'Kawin', '2023-05-29', 'Kepala Keluarga', 'WNI', NULL, NULL, 'Ilham ibnu Ahmad', 'Duwi Wirda', '2023-05-28 15:55:52', '2023-05-28 15:55:52', 'edc1ca31-e5dc-45c0-9e2c-d0e4cd49aa90'),
('ab4fab91-0643-4721-950f-a77616cf59f0', 3508102010020162, 'fahmi Ubaidillah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kepala Keluarga', NULL, NULL, NULL, NULL, NULL, '2023-05-28 15:58:48', '2023-05-28 15:58:48', '4c0132c3-164d-42f6-9b28-9f1032ad31f7'),
('c51eeacf-cb25-429e-b176-5d6dc148100f', 3508102010020052, 'Raihan Achmad', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kepala Keluarga', NULL, NULL, NULL, NULL, NULL, '2023-05-28 15:05:11', '2023-05-28 15:05:11', '0cba3200-1d4f-45ff-8b49-8889cf6eb0be'),
('dcf0ba98-fde8-4e9f-aab6-3b075c5cde2c', 3508102010020072, 'Thorik Lukman', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kepala Keluarga', NULL, NULL, NULL, NULL, NULL, '2023-05-28 15:07:10', '2023-05-28 15:07:10', 'd7fcf6c7-0193-4a40-8dd8-6fef2a02bbbb'),
('dd4f3aa8-07f2-4d71-8f59-d40da8fab048', 3508102010020092, 'Alif Nurdian Cahyono', 'Laki-Laki', 'Lumajang', '2023-05-29', 'Islam', 'Diploma III/S.Muda', 'Wiraswasta', 'A', 'Kawin', '2023-05-29', 'Kepala Keluarga', 'WNI', NULL, NULL, 'Bagus Daffa', 'Alfiani', '2023-05-28 15:51:27', '2023-05-28 15:51:27', '375b242c-8885-4dbe-b142-ebf7734965fb'),
('df67d961-4d0b-4198-b5a4-45a1637312aa', 3508102010020003, 'Regina Juniatika', 'Perempuan', 'Probolinggo', '2023-05-29', 'Islam', 'Diploma IV/Strata I', 'Wiraswasta', 'A', 'Kawin', '2023-05-29', 'Istri', 'WNI', NULL, NULL, 'budi', 'siti rohila', '2023-05-28 15:11:12', '2023-05-28 15:11:12', '665f1f41-ff5b-4a64-89d3-26d16f2882d1'),
('e146ec8d-e302-41ca-bcaf-57db98c1ff62', 3508102010020192, 'Adi Saputro', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kepala Keluarga', NULL, NULL, NULL, NULL, NULL, '2023-05-28 18:26:47', '2023-05-28 18:26:47', 'bcc72d97-5e92-4b9e-8a6c-da83c7fc40f7'),
('e2856426-74c3-4067-93b5-e87d849fd685', 3508102010020094, 'Andru Cristanto', 'Laki-Laki', 'Lumajang', '2023-05-29', 'Islam', 'Tidak/Belum Sekolah', 'Pelajar', 'A', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, 'Alif Nurdian Cahyono', 'Karen Novita', '2023-05-28 16:48:43', '2023-05-28 16:48:43', '375b242c-8885-4dbe-b142-ebf7734965fb'),
('ec31e2c6-7e53-45a5-a33f-8f854e1d0b49', 3508102010020062, 'Najmi Nadhif', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kepala Keluarga', NULL, NULL, NULL, NULL, NULL, '2023-05-28 15:06:21', '2023-05-28 15:06:21', '74742286-af82-43e6-aec6-fbd80321de30'),
('f716b43f-cc0b-44ac-9f36-d7aab3f4ab9a', 3508102010020034, 'Virly Rahma', 'Perempuan', 'Probolinggo', '2023-05-29', 'Islam', 'Diploma IV/Strata I', 'PNS', 'B', 'Kawin', '2023-05-29', 'Istri', 'WNI', NULL, NULL, 'i gede Ikhsan', 'sumina', '2023-05-28 15:34:28', '2023-05-28 15:34:28', '665f1f41-ff5b-4a64-89d3-26d16f2882d4');

-- --------------------------------------------------------

--
-- Table structure for table `master_rtrw`
--

CREATE TABLE `master_rtrw` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nik` bigint(20) DEFAULT 16,
  `nama_lengkap` varchar(100) DEFAULT 'text',
  `alamat` varchar(100) DEFAULT 'text',
  `no_hp` bigint(20) DEFAULT 13,
  `rt` tinyint(4) NOT NULL,
  `rw` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `master_surats`
--

CREATE TABLE `master_surats` (
  `id_surat` smallint(6) NOT NULL,
  `nama_surat` varchar(255) DEFAULT 'text',
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `master_surats`
--

INSERT INTO `master_surats` (`id_surat`, `nama_surat`, `image`, `created_at`, `updated_at`) VALUES
(10, 'DOMISILI', '1685322228.png', '2023-05-28 18:03:48', '2023-05-28 18:03:48'),
(20, 'TIDAK MAMPU', '1685315194.png', '2023-05-28 16:06:34', '2023-05-28 16:06:34'),
(30, 'USAHA', '1685315232.png', '2023-05-28 16:07:12', '2023-05-28 16:07:12');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_03_11_192813_create_master_kks_table', 1),
(6, '2023_03_11_202251_create_master_masyarakats_table', 1),
(7, '2023_03_12_045152_create_master_akuns_table', 1),
(8, '2023_03_12_180227_create_master_surats_table', 1),
(9, '2023_03_12_180413_create_pengajuan_surats_table', 1),
(10, '2023_03_12_180847_create_master_beritas_table', 1),
(11, '2023_04_01_042201_create_master_rtrw_table', 1),
(12, '2023_04_19_194925_change_tokenable_id_to_string_in_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pengajuan_surats`
--

CREATE TABLE `pengajuan_surats` (
  `id` int(11) NOT NULL,
  `nomor_surat` varchar(255) DEFAULT NULL,
  `no_pengantar` varchar(255) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `keterangan_ditolak` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `file_pdf` varchar(255) DEFAULT NULL,
  `image_kk` varchar(255) DEFAULT NULL,
  `image_bukti` varchar(255) DEFAULT NULL,
  `info` enum('active','non_active') NOT NULL,
  `id_masyarakat` char(36) NOT NULL,
  `id_surat` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pengajuan_surats`
--

INSERT INTO `pengajuan_surats` (`id`, `nomor_surat`, `no_pengantar`, `status`, `keterangan`, `keterangan_ditolak`, `created_at`, `updated_at`, `file_pdf`, `image_kk`, `image_bukti`, `info`, `id_masyarakat`, `id_surat`) VALUES
(1, '470/4/427.91.07/2020', '470/1/427.91.07/2020', 'Selesai', 'pengajuan beasiswa Bank Indonesia', NULL, '2023-05-28 16:19:13', '2023-05-28 16:43:04', 'Alif Nurdian Cahyono_3508102010020092_TIDAK MAMPU_1.pdf', '5jz4jAMkgC1685315953.jpg', 'XcVsjY32EJ1685315953.jpg', 'non_active', 'dd4f3aa8-07f2-4d71-8f59-d40da8fab048', 20),
(2, '4702/427.91.07/2020', '470/1/427.91.07/2020', 'Selesai', 'pengajuan beasiswa Bank Indonesia BI', NULL, '2023-05-28 16:35:31', '2023-05-28 16:41:34', 'Alif Nurdian Cahyono_3508102010020092_TIDAK MAMPU_2.pdf', 'ai0qt05aOH1685316931.jpg', 'sJHSQGnVcT1685316931.jpg', 'non_active', 'dd4f3aa8-07f2-4d71-8f59-d40da8fab048', 20),
(3, NULL, NULL, 'Dibatalkan', 'penambahan jumlah konter', NULL, '2023-05-28 16:50:26', '2023-05-28 17:08:01', NULL, 'LHyv0vMUmb1685317826.jpg', 'ghu8EGfgzw1685317826.jpg', 'non_active', '409821df-cfb3-468b-9af9-a63269b58257', 30),
(4, '4702/427.91.07/2023', '4702/427.91.07/2020', 'Selesai', 'beasiswa Bank Indonesia BI', NULL, '2023-05-28 17:17:42', '2023-05-28 17:19:27', 'Karen Novita_3508102010020093_TIDAK MAMPU_4.pdf', 'jgjNjDM90n1685319462.jpg', 'tDZgO330Ev1685319462.jpg', 'non_active', '409821df-cfb3-468b-9af9-a63269b58257', 20),
(5, NULL, NULL, 'Ditolak RT', 'Pengajuan P-IRT', 'Data Tidak Valid', '2023-05-28 17:39:43', '2023-05-28 18:10:09', NULL, 'BMoRMNDPpu1685320783.jpg', 'k1XGaCDQuo1685320783.jpg', 'non_active', '409821df-cfb3-468b-9af9-a63269b58257', 30),
(6, '470/4/427.91.07/2020', '470/3/427.91.07/2020', 'Ditolak RT\n', 'Penurunan UKT', 'Data Tidak Lengkap', '2023-05-28 17:51:32', '2023-06-01 17:09:55', 'Restu Fahimuroid_3508102010020102_TIDAK MAMPU_6.pdf', 'VPr17JWiXF1685321492.jpg', 'hA0W3hb3Kp1685321492.jpg', 'active', '5d1b8f82-19d7-4293-9ec5-4953e82c96e7', 20),
(7, '470/9/427.91.07/2020', '470/5/427.91.07/2020', 'Selesai', 'Persyaratan dokumen usaha', NULL, '2023-05-28 18:21:55', '2023-05-28 18:25:39', 'Masayu Pratitis_3508102010020133_USAHA_7.pdf', '0SHZb2kxQW1685323315.jpg', 'aUDmkeJkeq1685323315.jpg', 'non_active', '9ba65d37-bb14-4b1e-979c-e126d971e3d2', 30),
(8, NULL, NULL, 'Diajukan', 'Pindah Rumah', NULL, '2023-05-28 18:45:01', '2023-05-28 18:45:01', NULL, 'H7WWjYaWYd1685324701.jpg', 'QqHR4OZZUA1685324701.jpg', 'active', 'e2856426-74c3-4067-93b5-e87d849fd685', 10),
(9, '470/123/427.91.07/2020', '35667162878', 'Selesai', 'Beasiswa', NULL, '2023-05-28 19:32:03', '2023-05-28 19:37:57', 'Restu Fahimuroid_3508102010020102_USAHA_9.pdf', 'rHr50z9ghk1685327523.jpg', '5P3g2s0zG91685327523.jpg', 'non_active', '5d1b8f82-19d7-4293-9ec5-4953e82c96e7', 30);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\MobileMasterAkunModel', '7ea2b1c7-e1e7-4b48-a923-f53d2a845c8f', 'authToken', '545949036c0bdc2fa82900e0661363fc7703e1eb181b50fa2a4ba21653d3fb1f', '[\"*\"]', '2023-05-28 16:16:10', '2023-05-28 16:10:53', '2023-05-28 16:16:10'),
(3, 'App\\Models\\MobileMasterAkunModel', '7a13fa4d-5f02-4f4a-beef-60686f7a9bf1', 'authToken', '5e5f985d7ed9dfa4fff9fda81cc5ddb0931d8fc65de330634c893b5a3e6f2d7e', '[\"*\"]', '2023-05-28 17:44:32', '2023-05-28 17:10:45', '2023-05-28 17:44:32'),
(5, 'App\\Models\\MobileMasterAkunModel', '7ea2b1c7-e1e7-4b48-a923-f53d2a845c8f', 'authToken', '000754ad5977e25c1a59b1ae80e1753159872655b71d77013feb42c6c3db37f4', '[\"*\"]', '2023-05-28 18:00:18', '2023-05-28 17:48:41', '2023-05-28 18:00:18'),
(7, 'App\\Models\\MobileMasterAkunModel', '79ee69e3-34af-4db4-b2b9-1ba7364f7c3c', 'authToken', 'afd1106665cc303ccf07a455297b6b4a0a4b0da98922fb6f6c2f90b7dd4250b5', '[\"*\"]', NULL, '2023-05-28 18:20:47', '2023-05-28 18:20:47'),
(8, 'App\\Models\\MobileMasterAkunModel', '79ee69e3-34af-4db4-b2b9-1ba7364f7c3c', 'authToken', '9f4b78abe3941869c9856c0d301fd08d9beb172ff83f31d7f1c969ff8622f10b', '[\"*\"]', '2023-05-28 18:24:26', '2023-05-28 18:20:48', '2023-05-28 18:24:26'),
(9, 'App\\Models\\MobileMasterAkunModel', '79ee69e3-34af-4db4-b2b9-1ba7364f7c3c', 'authToken', 'ce6eb957becdd6cbd7341f8991291b50e0caf247b26b4eda4823e0ff665dd105', '[\"*\"]', '2023-05-28 18:41:29', '2023-05-28 18:36:19', '2023-05-28 18:41:29'),
(13, 'App\\Models\\MobileMasterAkunModel', '22d120d2-fb5d-487d-96fa-464e514431e9', 'authToken', 'f98d8d1a2eceb66f66c50f4715d1e51b36199d95174391b93ef8701db4848267', '[\"*\"]', '2023-05-28 19:38:14', '2023-05-28 19:31:16', '2023-05-28 19:38:14');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `master_akuns`
--
ALTER TABLE `master_akuns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `master_akuns_id_masyarakat_foreign` (`id_masyarakat`);

--
-- Indexes for table `master_beritas`
--
ALTER TABLE `master_beritas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_kks`
--
ALTER TABLE `master_kks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `master_kks_no_kk_unique` (`no_kk`);

--
-- Indexes for table `master_masyarakats`
--
ALTER TABLE `master_masyarakats`
  ADD PRIMARY KEY (`id_masyarakat`),
  ADD UNIQUE KEY `master_masyarakats_nik_unique` (`nik`),
  ADD KEY `master_masyarakats_id_foreign` (`id`);

--
-- Indexes for table `master_rtrw`
--
ALTER TABLE `master_rtrw`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_surats`
--
ALTER TABLE `master_surats`
  ADD PRIMARY KEY (`id_surat`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pengajuan_surats`
--
ALTER TABLE `pengajuan_surats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pengajuan_surats_id_masyarakat_foreign` (`id_masyarakat`),
  ADD KEY `pengajuan_surats_id_surat_foreign` (`id_surat`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `master_beritas`
--
ALTER TABLE `master_beritas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `master_rtrw`
--
ALTER TABLE `master_rtrw`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `pengajuan_surats`
--
ALTER TABLE `pengajuan_surats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `master_akuns`
--
ALTER TABLE `master_akuns`
  ADD CONSTRAINT `master_akuns_id_masyarakat_foreign` FOREIGN KEY (`id_masyarakat`) REFERENCES `master_masyarakats` (`id_masyarakat`);

--
-- Constraints for table `master_masyarakats`
--
ALTER TABLE `master_masyarakats`
  ADD CONSTRAINT `master_masyarakats_id_foreign` FOREIGN KEY (`id`) REFERENCES `master_kks` (`id`);

--
-- Constraints for table `pengajuan_surats`
--
ALTER TABLE `pengajuan_surats`
  ADD CONSTRAINT `pengajuan_surats_id_masyarakat_foreign` FOREIGN KEY (`id_masyarakat`) REFERENCES `master_masyarakats` (`id_masyarakat`),
  ADD CONSTRAINT `pengajuan_surats_id_surat_foreign` FOREIGN KEY (`id_surat`) REFERENCES `master_surats` (`id_surat`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
