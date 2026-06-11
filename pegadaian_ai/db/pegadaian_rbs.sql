-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 12, 2026 at 02:21 PM
-- Server version: 9.1.0
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pegadaian_rbs`
--

-- --------------------------------------------------------

--
-- Table structure for table `conditions`
--

DROP TABLE IF EXISTS `conditions`;
CREATE TABLE IF NOT EXISTS `conditions` (
  `id_condition` int NOT NULL AUTO_INCREMENT,
  `id_rule` int DEFAULT NULL,
  `parameter` varchar(50) DEFAULT NULL,
  `operator` varchar(10) DEFAULT NULL,
  `value` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_condition`)
) ENGINE=MyISAM AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `conditions`
--

INSERT INTO `conditions` (`id_condition`, `id_rule`, `parameter`, `operator`, `value`) VALUES
(1, 2, 'kategori_barang', '=', 'handphone'),
(2, 2, 'kondisi_barang', '=', 'buruk'),
(3, 3, 'kategori_barang', '=', 'handphone'),
(4, 3, 'kondisi_barang', '=', 'baik'),
(5, 3, 'garansi', '=', 'ada'),
(6, 3, 'box', '=', 'ada'),
(7, 3, 'aksesoris', '=', 'lengkap'),
(8, 3, 'bukti_kepemilikan', '=', 'ada'),
(9, 3, 'ktp', '=', 'ada'),
(10, 4, 'kategori_barang', '=', 'handphone'),
(11, 4, 'kondisi_barang', '=', 'cukup'),
(12, 4, 'garansi', '=', 'ada'),
(13, 4, 'box', '=', 'ada'),
(14, 4, 'aksesoris', '=', 'lengkap'),
(15, 4, 'bukti_kepemilikan', '=', 'ada'),
(16, 4, 'ktp', '=', 'ada'),
(17, 5, 'kategori_barang', '=', 'handphone'),
(18, 7, 'kategori_barang', '=', 'laptop'),
(19, 7, 'kondisi_barang', '=', 'buruk'),
(20, 8, 'kategori_barang', '=', 'laptop'),
(21, 8, 'kondisi_barang', '=', 'baik'),
(22, 8, 'garansi', '=', 'ada'),
(23, 8, 'box', '=', 'ada'),
(24, 8, 'aksesoris', '=', 'lengkap'),
(25, 8, 'bukti_kepemilikan', '=', 'ada'),
(26, 8, 'ktp', '=', 'ada'),
(27, 9, 'kategori_barang', '=', 'laptop'),
(28, 9, 'kondisi_barang', '=', 'cukup'),
(29, 9, 'garansi', '=', 'ada'),
(30, 9, 'box', '=', 'ada'),
(31, 9, 'aksesoris', '=', 'lengkap'),
(32, 9, 'bukti_kepemilikan', '=', 'ada'),
(33, 9, 'ktp', '=', 'ada'),
(34, 10, 'kategori_barang', '=', 'laptop'),
(35, 12, 'kategori_barang', '=', 'kamera'),
(36, 12, 'kondisi_barang', '=', 'buruk'),
(37, 13, 'kategori_barang', '=', 'kamera'),
(38, 13, 'kondisi_barang', '=', 'baik'),
(39, 13, 'garansi', '=', 'ada'),
(40, 13, 'box', '=', 'ada'),
(41, 13, 'aksesoris', '=', 'lengkap'),
(42, 13, 'bukti_kepemilikan', '=', 'ada'),
(43, 13, 'ktp', '=', 'ada'),
(44, 14, 'kategori_barang', '=', 'kamera'),
(45, 14, 'kondisi_barang', '=', 'cukup'),
(46, 14, 'garansi', '=', 'ada'),
(47, 14, 'box', '=', 'ada'),
(48, 14, 'aksesoris', '=', 'lengkap'),
(49, 14, 'bukti_kepemilikan', '=', 'ada'),
(50, 14, 'ktp', '=', 'ada'),
(51, 15, 'kategori_barang', '=', 'kamera'),
(52, 17, 'kategori_barang', '=', 'playstation'),
(53, 17, 'kondisi_barang', '=', 'buruk'),
(54, 18, 'kategori_barang', '=', 'playstation'),
(55, 18, 'kondisi_barang', '=', 'baik'),
(56, 18, 'garansi', '=', 'ada'),
(57, 18, 'box', '=', 'ada'),
(58, 18, 'aksesoris', '=', 'lengkap'),
(59, 18, 'bukti_kepemilikan', '=', 'ada'),
(60, 18, 'ktp', '=', 'ada'),
(61, 19, 'kategori_barang', '=', 'playstation'),
(62, 19, 'kondisi_barang', '=', 'cukup'),
(63, 19, 'garansi', '=', 'ada'),
(64, 19, 'box', '=', 'ada'),
(65, 19, 'aksesoris', '=', 'lengkap'),
(66, 19, 'bukti_kepemilikan', '=', 'ada'),
(67, 19, 'ktp', '=', 'ada'),
(68, 20, 'kategori_barang', '=', 'playstation'),
(69, 22, 'kategori_barang', '=', 'speaker'),
(70, 22, 'kondisi_barang', '=', 'buruk'),
(71, 23, 'kategori_barang', '=', 'speaker'),
(72, 23, 'kondisi_barang', '=', 'baik'),
(73, 23, 'garansi', '=', 'ada'),
(74, 23, 'box', '=', 'ada'),
(75, 23, 'aksesoris', '=', 'lengkap'),
(76, 23, 'bukti_kepemilikan', '=', 'ada'),
(77, 23, 'ktp', '=', 'ada'),
(78, 24, 'kategori_barang', '=', 'speaker'),
(79, 24, 'kondisi_barang', '=', 'cukup'),
(80, 24, 'garansi', '=', 'ada'),
(81, 24, 'box', '=', 'ada'),
(82, 24, 'aksesoris', '=', 'lengkap'),
(83, 24, 'bukti_kepemilikan', '=', 'ada'),
(84, 24, 'ktp', '=', 'ada'),
(85, 25, 'kategori_barang', '=', 'speaker');

-- --------------------------------------------------------

--
-- Table structure for table `pengajuan`
--

DROP TABLE IF EXISTS `pengajuan`;
CREATE TABLE IF NOT EXISTS `pengajuan` (
  `id_pengajuan` int NOT NULL AUTO_INCREMENT,
  `nama_nasabah` varchar(100) DEFAULT NULL,
  `kategori_barang` varchar(50) DEFAULT NULL,
  `nama_barang` varchar(100) DEFAULT NULL,
  `kondisi_barang` varchar(20) DEFAULT NULL,
  `garansi` varchar(10) DEFAULT NULL,
  `box` varchar(10) DEFAULT NULL,
  `aksesoris` varchar(20) DEFAULT NULL,
  `bukti_kepemilikan` varchar(10) DEFAULT NULL,
  `ktp` varchar(10) DEFAULT NULL,
  `kategori_hp` varchar(20) DEFAULT NULL,
  `kelengkapan` varchar(20) DEFAULT NULL,
  `dokumen` varchar(20) DEFAULT NULL,
  `hasil_status` varchar(30) DEFAULT NULL,
  `tingkat_risiko` varchar(20) DEFAULT NULL,
  `persentase_pinjaman` int DEFAULT NULL,
  `rule_terpakai` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_pengajuan`)
) ENGINE=MyISAM AUTO_INCREMENT=144 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pengajuan`
--

INSERT INTO `pengajuan` (`id_pengajuan`, `nama_nasabah`, `kategori_barang`, `nama_barang`, `kondisi_barang`, `garansi`, `box`, `aksesoris`, `bukti_kepemilikan`, `ktp`, `kategori_hp`, `kelengkapan`, `dokumen`, `hasil_status`, `tingkat_risiko`, `persentase_pinjaman`, `rule_terpakai`, `created_at`) VALUES
(1, 'ajexc', 'handphone', 'Iphone 17', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'HP Default', '2026-05-12 05:52:49'),
(2, 'ajrews', 'handphone', 'IPhone 17', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Layak', 'rendah', 80, 'HP Premium Ideal', '2026-05-12 06:07:26'),
(3, 'Juki', 'handphone', 'Xiaomi', 'baik', 'ada', 'tidak ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'HP Default', '2026-05-12 06:21:13'),
(4, 'Juki', 'handphone', 'Xiaomi', 'baik', 'tidak ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'HP Default', '2026-05-12 06:21:24'),
(5, 'Juki', 'handphone', 'Xiaomi', 'buruk', 'tidak ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Tidak Layak', 'tinggi', 0, 'HP - Kondisi Buruk', '2026-05-12 06:21:32'),
(6, 'Juki', 'handphone', 'Xiaomi', 'cukup', 'tidak ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'HP Default', '2026-05-12 06:21:39'),
(7, 'Juki', 'handphone', 'Xiaomi', 'cukup', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'HP Default', '2026-05-12 06:23:07'),
(8, 'Juki', 'handphone', 'Xiaomi', 'cukup', 'ada', 'ada', 'lengkap', 'ada', 'tidak ada', NULL, NULL, NULL, 'Tidak Layak', 'tinggi', 0, 'HP - Dokumen Tidak Lengkap', '2026-05-12 06:24:09'),
(9, 'Juki', 'handphone', 'Xiaomi', 'buruk', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Tidak Layak', 'tinggi', 0, 'HP - Kondisi Buruk', '2026-05-12 06:24:30'),
(10, 'ajrews', 'handphone', 'IPhone 17', 'cukup', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'HP Default', '2026-05-12 06:27:56'),
(11, 'ajrews', 'handphone', 'IPhone 17', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Layak', 'rendah', 80, 'HP Premium Ideal', '2026-05-12 06:28:34'),
(12, 'ajrews', 'handphone', 'IPhone 17', 'baik', 'ada', 'ada', 'lengkap', 'tidak ada', 'ada', NULL, NULL, NULL, 'Tidak Layak', 'tinggi', 0, 'HP - Dokumen Tidak Lengkap', '2026-05-12 06:29:17'),
(13, 'ajrews', 'handphone', 'IPhone 17', 'cukup', 'ada', 'ada', 'lengkap', 'tidak ada', 'ada', NULL, NULL, NULL, 'Tidak Layak', 'tinggi', 0, 'HP - Dokumen Tidak Lengkap', '2026-05-12 06:30:15'),
(14, 'ajrews', 'handphone', 'IPhone 17', 'cukup', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Layak', 'sedang', 60, 'HP Low Ideal', '2026-05-12 06:30:20'),
(15, 'ajrews', 'handphone', 'IPhone 17', 'cukup', 'ada', 'ada', 'tidak lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'HP Default', '2026-05-12 06:37:33'),
(16, 'ajrews', 'handphone', 'IPhone 17', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Layak', 'rendah', 80, 'HP Premium Ideal', '2026-05-12 06:37:59'),
(17, 'ajrews', 'handphone', 'IPhone 17', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Layak', 'rendah', 80, 'HP Premium Ideal', '2026-05-12 06:39:39'),
(18, 'ajrews', 'handphone', 'IPhone 17', 'baik', 'ada', 'tidak ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'HP Default', '2026-05-12 06:42:20'),
(19, 'ajrews', 'laptop', 'Asus ROG', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'HP Default', '2026-05-12 06:42:56'),
(20, 'ajrews', 'laptop', 'Asus ROG', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'HP Default', '2026-05-12 06:55:24'),
(21, 'msmhb', 'handphone', 'ROG', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Layak', 'rendah', 80, 'HP Premium Ideal', '2026-05-12 06:55:44'),
(22, 'msmhb', 'handphone', 'ROG', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Layak', 'rendah', 80, 'HP Premium Ideal', '2026-05-12 06:59:02'),
(23, 'msmhb', 'handphone', 'ROG', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Layak', 'rendah', 80, 'HP Premium Ideal', '2026-05-12 06:59:03'),
(24, 'msmhb', 'handphone', 'ROG', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Layak', 'rendah', 80, 'HP Premium Ideal', '2026-05-12 06:59:03'),
(25, 'msmhb', 'handphone', 'ROG', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Layak', 'rendah', 80, 'HP Premium Ideal', '2026-05-12 06:59:03'),
(26, 'msmhb', 'handphone', 'ROG', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Layak', 'rendah', 80, 'HP Premium Ideal', '2026-05-12 06:59:03'),
(27, 'jkg', 'handphone', 'ROG', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Layak', 'rendah', 80, 'HP Premium Ideal', '2026-05-12 06:59:20'),
(28, 'jkg', 'laptop', 'ROG', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Layak', 'rendah', 80, 'Laptop High Ideal', '2026-05-12 06:59:33'),
(29, 'jkg', 'laptop', 'ROG', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Layak', 'rendah', 80, 'Laptop High Ideal', '2026-05-12 07:03:51'),
(30, 'judi', 'handphone', 'Axio', 'cukup', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Layak', 'sedang', 60, 'HP Low Ideal', '2026-05-12 08:45:16'),
(31, 'judi', 'handphone', 'Axio', 'cukup', 'ada', 'ada', 'lengkap', 'tidak ada', 'ada', NULL, NULL, NULL, 'Tidak Layak', 'tinggi', 0, 'HP - Dokumen Tidak Lengkap', '2026-05-12 08:45:23'),
(32, 'judi', 'handphone', 'Axio', 'cukup', 'ada', 'ada', 'lengkap', 'tidak ada', 'ada', NULL, NULL, NULL, 'Tidak Layak', 'tinggi', 0, 'HP - Dokumen Tidak Lengkap', '2026-05-12 08:46:20'),
(33, 'judi', 'laptop', 'Axio', 'cukup', 'ada', 'ada', 'lengkap', 'tidak ada', 'ada', NULL, NULL, NULL, 'Tidak Layak', 'tinggi', 0, 'Laptop - Dokumen Tidak Lengkap', '2026-05-12 08:46:29'),
(34, 'judi', 'laptop', 'Axio', 'cukup', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'Laptop Default', '2026-05-12 08:46:44'),
(35, 'judi', 'kamera', 'ss', 'cukup', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'Laptop Default', '2026-05-12 08:49:55'),
(36, 'judi', 'kamera', 'ss', 'cukup', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'Kamera Default', '2026-05-12 08:55:06'),
(37, 'judi', 'kamera', 'ss', 'cukup', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Layak', 'sedang', 55, 'Kamera Low Ideal', '2026-05-12 09:02:40'),
(38, 'judi', 'kamera', 'ss', 'cukup', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Layak', 'sedang', 55, 'Kamera Low Ideal', '2026-05-12 09:02:42'),
(39, 'judi', 'laptop', 'ss', 'cukup', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'Laptop Default', '2026-05-12 09:05:33'),
(40, 'judi', 'laptop', 'ss', 'baik', 'ada', 'tidak ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'Laptop Default', '2026-05-12 09:05:54'),
(41, 'judi', 'laptop', 'ss', 'baik', 'ada', 'tidak ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'Laptop Default', '2026-05-12 09:07:39'),
(42, 'judi', 'laptop', 'ss', 'baik', 'ada', 'tidak ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'Laptop Default', '2026-05-12 09:07:39'),
(43, 'judi', 'laptop', 'ss', 'baik', 'ada', 'tidak ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'Laptop Default', '2026-05-12 09:07:39'),
(44, 'judi', 'laptop', 'ss', 'baik', 'ada', 'tidak ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'Laptop Default', '2026-05-12 09:07:40'),
(45, 'ajrews', 'handphone', 'lll', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Layak', 'rendah', 80, 'HP Premium Ideal', '2026-05-12 09:08:05'),
(46, 'ajrews', 'kamera', 'lll', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Layak', 'rendah', 75, 'Kamera High Ideal', '2026-05-12 09:08:12'),
(47, 'ajrews', 'laptop', 'lll', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Layak', 'rendah', 80, 'Laptop High Ideal', '2026-05-12 09:08:26'),
(48, 'ajrews', 'laptop', 'lll', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Layak', 'rendah', 80, 'Laptop High Ideal', '2026-05-12 09:09:25'),
(49, 'ajrews', 'kamera', 'lll', 'baik', 'ada', 'ada', 'lengkap', 'tidak ada', 'ada', NULL, NULL, NULL, 'Tidak Layak', 'tinggi', 0, 'Kamera - Dokumen Tidak Lengkap', '2026-05-12 09:09:39'),
(50, 'ajrews', 'kamera', 'lll', 'baik', 'ada', 'ada', 'tidak lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'Kamera Default', '2026-05-12 09:09:47'),
(51, 'ajrews', 'kamera', 'lll', 'cukup', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Layak', 'sedang', 55, 'Kamera Low Ideal', '2026-05-12 09:09:57'),
(52, 'ajrews', 'playstation', 'lll', 'cukup', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'Kamera Default', '2026-05-12 09:10:45'),
(53, 'ajrews', 'playstation', 'lll', 'cukup', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'Kamera Default', '2026-05-12 09:18:01'),
(54, 'ajrews', 'playstation', 'lll', 'cukup', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'Kamera Default', '2026-05-12 09:18:03'),
(55, 'ajrews', 'playstation', 'lll', 'cukup', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'Kamera Default', '2026-05-12 09:18:03'),
(56, 'ajrews', 'playstation', 'lll', 'cukup', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'Kamera Default', '2026-05-12 09:18:03'),
(57, 'ajrews', 'playstation', 'lll', 'cukup', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'Kamera Default', '2026-05-12 09:18:04'),
(58, 'm', 'playstation', 'ROG', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'Kamera Default', '2026-05-12 09:18:27'),
(59, 'm', 'playstation', 'ROG', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'Kamera Default', '2026-05-12 09:20:43'),
(60, 'm', 'playstation', 'ROG', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'Kamera Default', '2026-05-12 09:20:43'),
(61, 'm', 'playstation', 'ROG', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'Kamera Default', '2026-05-12 09:20:43'),
(62, 'm', 'playstation', 'ROG', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'Kamera Default', '2026-05-12 09:20:44'),
(63, 'm', 'playstation', 'ROG', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'Kamera Default', '2026-05-12 09:20:44'),
(64, 'm', 'playstation', 'ROG', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'Kamera Default', '2026-05-12 09:20:44'),
(65, 'm', 'playstation', 'ROG', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'Kamera Default', '2026-05-12 09:20:44'),
(66, 'm', 'playstation', 'ROG', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'Kamera Default', '2026-05-12 09:20:44'),
(67, 'm', 'playstation', 'ROG', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'Kamera Default', '2026-05-12 09:20:45'),
(68, 'ajrews', 'handphone', 'IPhone 17', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Layak', 'rendah', 80, 'HP Premium Ideal', '2026-05-12 09:21:00'),
(69, 'ajrews', 'laptop', 'IPhone 17', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Layak', 'rendah', 80, 'Laptop High Ideal', '2026-05-12 09:21:06'),
(70, 'ajrews', 'kamera', 'IPhone 17', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Layak', 'rendah', 75, 'Kamera High Ideal', '2026-05-12 09:21:12'),
(71, 'ajrews', 'playstation', 'IPhone 17', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'Kamera Default', '2026-05-12 09:21:20'),
(72, 'ajrews', 'playstation', 'IPhone 17', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'Kamera Default', '2026-05-12 09:27:03'),
(73, 'ajrews', 'playstation', 'IPhone 17', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'Kamera Default', '2026-05-12 09:27:03'),
(74, 'ajrews', 'playstation', 'IPhone 17', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'Kamera Default', '2026-05-12 09:27:03'),
(75, 'ajrews', 'playstation', 'IPhone 17', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'Kamera Default', '2026-05-12 09:27:03'),
(76, 'ajrews', 'playstation', 'IPhone 17', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'Kamera Default', '2026-05-12 09:27:04'),
(77, 'ajrews', 'playstation', 'IPhone 17', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'Kamera Default', '2026-05-12 09:27:04'),
(78, 'ajrews', 'playstation', 'IPhone 17', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'Kamera Default', '2026-05-12 09:27:04'),
(79, 'ajrews', 'playstation', 'IPhone 17', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'Kamera Default', '2026-05-12 09:27:04'),
(80, 'ajrews', 'playstation', 'IPhone 17', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'Kamera Default', '2026-05-12 09:27:04'),
(81, 'ajrews', 'laptop', 'IPhone 17', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Layak', 'rendah', 80, 'Laptop High Ideal', '2026-05-12 09:27:09'),
(82, 'ajrews', 'handphone', 'admin', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Layak', 'rendah', 80, 'HP Premium Ideal', '2026-05-12 09:27:26'),
(83, 'ajrews', 'kamera', 'admin', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Layak', 'rendah', 75, 'Kamera High Ideal', '2026-05-12 09:27:32'),
(84, 'ajrews', 'playstation', 'admin', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'Kamera Default', '2026-05-12 09:27:38'),
(85, 'ajrews', 'playstation', 'admin', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'Kamera Default', '2026-05-12 09:30:54'),
(86, 'ajrews', 'playstation', 'admin', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'Kamera Default', '2026-05-12 09:30:54'),
(87, 'ajrews', 'playstation', 'admin', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'Kamera Default', '2026-05-12 09:30:55'),
(88, 'ajrews', 'playstation', 'admin', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'Kamera Default', '2026-05-12 09:30:55'),
(89, 'ajrews', 'playstation', 'admin', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'Kamera Default', '2026-05-12 09:30:55'),
(90, 'ajrews', 'playstation', 'admin', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'Kamera Default', '2026-05-12 09:30:55'),
(91, 'ajrews', 'playstation', 'admin', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'Kamera Default', '2026-05-12 09:30:56'),
(92, 'ajrews', 'playstation', 'admin', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'Kamera Default', '2026-05-12 09:30:56'),
(93, 'ajrews', 'playstation', 'admin', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'Kamera Default', '2026-05-12 09:30:56'),
(94, 'ajrews', 'playstation', 'admin', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'Kamera Default', '2026-05-12 09:30:56'),
(95, 'ajrews', 'playstation', 'admin', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'Kamera Default', '2026-05-12 09:30:56'),
(96, 'ajrews', 'playstation', 'admin', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'Kamera Default', '2026-05-12 09:30:56'),
(97, 'ajrews', 'playstation', 'IPhone 17', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'Kamera Default', '2026-05-12 09:31:19'),
(98, 'ajrews', 'playstation', 'IPhone 17', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'PS Default', '2026-05-12 09:43:19'),
(99, 'ajrews', 'playstation', 'IPhone 17', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'PS Default', '2026-05-12 09:43:20'),
(100, 'ajrews', 'handphone', 'IPhone 17', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'HP Default', '2026-05-12 09:43:30'),
(101, 'ajrews', 'handphone', 'IPhone 17', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Tidak Layak', 'tinggi', 0, 'HP - Dokumen Tidak Lengkap', '2026-05-12 09:48:29'),
(102, 'ajrews', 'handphone', 'IPhone 17', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Tidak Layak', 'tinggi', 0, 'HP - Dokumen Tidak Lengkap', '2026-05-12 09:48:30'),
(103, 'ajrews', 'handphone', 'IPhone 17', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Tidak Layak', 'tinggi', 0, 'HP - Dokumen Tidak Lengkap', '2026-05-12 09:48:30'),
(104, 'ajrews', 'handphone', 'IPhone 17', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Tidak Layak', 'tinggi', 0, 'HP - Dokumen Tidak Lengkap', '2026-05-12 09:48:31'),
(105, 'ajrews', 'handphone', 'IPhone 17', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Tidak Layak', 'tinggi', 0, 'HP - Dokumen Tidak Lengkap', '2026-05-12 09:48:32'),
(106, 'ajrews', 'handphone', 'IPhone 17', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Tidak Layak', 'tinggi', 0, 'HP - Dokumen Tidak Lengkap', '2026-05-12 09:48:32'),
(107, 'ajrews', 'handphone', 'IPhone 17', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Tidak Layak', 'tinggi', 0, 'HP - Dokumen Tidak Lengkap', '2026-05-12 09:48:32'),
(108, 'ajrews', 'handphone', 'IPhone 17', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Tidak Layak', 'tinggi', 0, 'HP - Dokumen Tidak Lengkap', '2026-05-12 09:48:32'),
(109, 'ajrews', 'handphone', 'IPhone 17', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Tidak Layak', 'tinggi', 0, 'HP - Dokumen Tidak Lengkap', '2026-05-12 09:48:33'),
(110, 'ajrews', 'handphone', 'IPhone 17', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Tidak Layak', 'tinggi', 0, 'HP - Dokumen Tidak Lengkap', '2026-05-12 09:48:33'),
(111, 'ajrews', 'handphone', 'IPhone 17', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Tidak Layak', 'tinggi', 0, 'HP - Dokumen Tidak Lengkap', '2026-05-12 09:48:33'),
(112, 'ajrews', 'handphone', 'IPhone 17', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Tidak Layak', 'tinggi', 0, 'HP - Dokumen Tidak Lengkap', '2026-05-12 09:48:33'),
(113, 'ajrews', 'handphone', 'IPhone 17', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Tidak Layak', 'tinggi', 0, 'HP - Dokumen Tidak Lengkap', '2026-05-12 09:48:33'),
(114, 'ajrews', 'handphone', 'IPhone 17', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Tidak Layak', 'tinggi', 0, 'HP - Dokumen Tidak Lengkap', '2026-05-12 09:48:33'),
(115, 'ajrews', 'handphone', 'IPhone 17', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Tidak Layak', 'tinggi', 0, 'HP - Dokumen Tidak Lengkap', '2026-05-12 09:58:41'),
(116, 'ajrews', 'handphone', 'IPhone 17', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Tidak Layak', 'tinggi', 0, 'HP - Dokumen Tidak Lengkap', '2026-05-12 09:58:42'),
(117, 'ajrews', 'handphone', 'IPhone 17', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Tidak Layak', 'tinggi', 0, 'HP - Dokumen Tidak Lengkap', '2026-05-12 09:58:42'),
(118, 'ajrews', 'handphone', 'IPhone 17', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Tidak Layak', 'tinggi', 0, 'HP - Dokumen Tidak Lengkap', '2026-05-12 09:58:42'),
(119, 'ajrews', 'handphone', 'IPhone 17', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Tidak Layak', 'tinggi', 0, 'HP - Dokumen Tidak Lengkap', '2026-05-12 09:58:42'),
(120, 'ajrews', 'handphone', 'IPhone 17', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Tidak Layak', 'tinggi', 0, 'HP - Dokumen Tidak Lengkap', '2026-05-12 09:58:42'),
(121, 'ajrews', 'handphone', 'IPhone 17', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Tidak Layak', 'tinggi', 0, 'HP - Dokumen Tidak Lengkap', '2026-05-12 09:58:43'),
(122, 'ajrews', 'handphone', 'IPhone 17', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Tidak Layak', 'tinggi', 0, 'HP - Dokumen Tidak Lengkap', '2026-05-12 09:58:43'),
(123, 'ajrews', 'handphone', 'IPhone 17', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Tidak Layak', 'tinggi', 0, 'HP - Dokumen Tidak Lengkap', '2026-05-12 09:58:43'),
(124, 'ajrews', 'handphone', 'IPhone 17', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Tidak Layak', 'tinggi', 0, 'HP - Dokumen Tidak Lengkap', '2026-05-12 09:58:43'),
(125, 'ajrews', 'handphone', 'IPhone 17', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Tidak Layak', 'tinggi', 0, 'HP - Dokumen Tidak Lengkap', '2026-05-12 09:58:43'),
(126, 'ajrews', 'handphone', 'IPhone 17', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Tidak Layak', 'tinggi', 0, 'HP - Dokumen Tidak Lengkap', '2026-05-12 09:59:04'),
(127, 'ajrews', 'handphone', 'IPhone 17', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Tidak Layak', 'tinggi', 0, 'HP - Dokumen Tidak Lengkap', '2026-05-12 10:11:51'),
(128, 'ajrews', 'handphone', 'IPhone 17', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Tidak Layak', 'tinggi', 0, 'HP - Dokumen Tidak Lengkap', '2026-05-12 10:11:51'),
(129, 'ajrews', 'handphone', 'IPhone 17', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Tidak Layak', 'tinggi', 0, 'HP - Dokumen Tidak Lengkap', '2026-05-12 10:11:51'),
(130, 'ajrews', 'handphone', 'IPhone 17', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Tidak Layak', 'tinggi', 0, 'HP - Dokumen Tidak Lengkap', '2026-05-12 10:11:52'),
(131, 'ajrews', 'handphone', 'IPhone 17', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Tidak Layak', 'tinggi', 0, 'HP - Dokumen Tidak Lengkap', '2026-05-12 10:11:52'),
(132, 'ajrews', 'handphone', 'IPhone 17', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Tidak Layak', 'tinggi', 0, 'HP - Dokumen Tidak Lengkap', '2026-05-12 10:11:52'),
(133, 'ajrews', 'handphone', 'IPhone 17', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Tidak Layak', 'tinggi', 0, 'HP - Dokumen Tidak Lengkap', '2026-05-12 10:11:52'),
(134, 'ajrews', 'handphone', 'IPhone 17', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Tidak Layak', 'tinggi', 0, 'HP - Dokumen Tidak Lengkap', '2026-05-12 10:11:52'),
(135, 'ajrews', 'handphone', 'IPhone 17', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Tidak Layak', 'tinggi', 0, 'HP - Dokumen Tidak Lengkap', '2026-05-12 10:11:52'),
(136, 'ajrews', 'handphone', 'IPhone 17', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Tidak Layak', 'tinggi', 0, 'HP - Dokumen Tidak Lengkap', '2026-05-12 10:11:52'),
(137, 'ajrews', 'handphone', 'IPhone 17', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Tidak Layak', 'tinggi', 0, 'HP - Dokumen Tidak Lengkap', '2026-05-12 10:11:53'),
(138, 'ajrews', 'handphone', 'IPhone 17', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Tidak Layak', 'tinggi', 0, 'HP - Dokumen Tidak Lengkap', '2026-05-12 10:12:22'),
(139, 'ajrews', 'handphone', 'IPhone 17', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Layak', 'rendah', 80, 'HP Premium Ideal', '2026-05-12 10:19:14'),
(140, 'ajrews', 'handphone', 'IPhone 17', 'cukup', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Layak', 'sedang', 60, 'HP Low Ideal', '2026-05-12 10:19:28'),
(141, 'ajrews', 'handphone', 'IPhone 17', 'buruk', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Tidak Layak', 'tinggi', 0, 'HP - Kondisi Buruk', '2026-05-12 10:19:34'),
(142, 'ajrews', 'handphone', 'IPhone 17', 'cukup', 'ada', 'ada', 'tidak lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'HP Default', '2026-05-12 10:19:41'),
(143, 'ajrews', 'kamera', 'IPhone 17', 'cukup', 'ada', 'ada', 'tidak lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'Kamera Default', '2026-05-12 10:19:51');

-- --------------------------------------------------------

--
-- Table structure for table `rules`
--

DROP TABLE IF EXISTS `rules`;
CREATE TABLE IF NOT EXISTS `rules` (
  `id_rule` int NOT NULL AUTO_INCREMENT,
  `nama_rule` varchar(100) DEFAULT NULL,
  `hasil_status` varchar(30) DEFAULT NULL,
  `tingkat_risiko` varchar(20) DEFAULT NULL,
  `persentase_pinjaman` int DEFAULT NULL,
  `keterangan` text,
  PRIMARY KEY (`id_rule`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `rules`
--

INSERT INTO `rules` (`id_rule`, `nama_rule`, `hasil_status`, `tingkat_risiko`, `persentase_pinjaman`, `keterangan`) VALUES
(1, 'HP - Dokumen Tidak Lengkap', 'Tidak Layak', 'tinggi', 0, 'Dokumen tidak lengkap, pengajuan berisiko tinggi'),
(2, 'HP - Kondisi Buruk', 'Tidak Layak', 'tinggi', 0, 'Barang dalam kondisi buruk, tidak layak digadai'),
(3, 'HP Premium Ideal', 'Layak', 'rendah', 80, 'HP kondisi baik dan lengkap, layak dengan nilai tinggi'),
(4, 'HP Low Ideal', 'Layak', 'sedang', 60, 'HP kondisi cukup dan lengkap, layak dengan nilai menengah'),
(5, 'HP Default', 'Dipertimbangkan', 'sedang', 45, 'Rule default untuk kategori handphone jika tidak ada kondisi yang cocok'),
(6, 'Laptop - Dokumen Tidak Lengkap', 'Tidak Layak', 'tinggi', 0, 'Dokumen tidak lengkap, pengajuan laptop berisiko tinggi'),
(7, 'Laptop - Kondisi Buruk', 'Tidak Layak', 'tinggi', 0, 'Laptop dalam kondisi buruk, tidak layak digadai'),
(8, 'Laptop High Ideal', 'Layak', 'rendah', 80, 'Laptop kondisi baik dan lengkap, layak dengan nilai tinggi'),
(9, 'Laptop Low Ideal', 'Layak', 'sedang', 60, 'Laptop kondisi cukup dan lengkap, layak dengan nilai menengah'),
(10, 'Laptop Default', 'Dipertimbangkan', 'sedang', 45, 'Rule default untuk laptop jika tidak ada kondisi yang cocok'),
(11, 'Kamera - Dokumen Tidak Lengkap', 'Tidak Layak', 'tinggi', 0, NULL),
(12, 'Kamera - Kondisi Buruk', 'Tidak Layak', 'tinggi', 0, NULL),
(13, 'Kamera High Ideal', 'Layak', 'rendah', 75, NULL),
(14, 'Kamera Low Ideal', 'Layak', 'sedang', 55, NULL),
(15, 'Kamera Default', 'Dipertimbangkan', 'sedang', 45, NULL),
(16, 'PS - Dokumen Tidak Lengkap', 'Tidak Layak', 'tinggi', 0, NULL),
(17, 'PS - Kondisi Buruk', 'Tidak Layak', 'tinggi', 0, NULL),
(18, 'PS High Ideal', 'Layak', 'rendah', 75, NULL),
(19, 'PS Low Ideal', 'Layak', 'sedang', 55, NULL),
(20, 'PS Default', 'Dipertimbangkan', 'sedang', 45, NULL),
(21, 'Speaker - Dokumen Tidak Lengkap', 'Tidak Layak', 'tinggi', 0, NULL),
(22, 'Speaker - Kondisi Buruk', 'Tidak Layak', 'tinggi', 0, NULL),
(23, 'Speaker High Ideal', 'Layak', 'rendah', 70, NULL),
(24, 'Speaker Low Ideal', 'Layak', 'sedang', 50, NULL),
(25, 'Speaker Default', 'Dipertimbangkan', 'sedang', 40, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id_user` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_user`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `username`, `password`) VALUES
(1, 'admin', 'admin123');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
