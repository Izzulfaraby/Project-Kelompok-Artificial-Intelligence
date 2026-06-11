-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 11, 2026 at 02:46 PM
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
-- Table structure for table `dataset_training`
--

DROP TABLE IF EXISTS `dataset_training`;
CREATE TABLE IF NOT EXISTS `dataset_training` (
  `id_data` int NOT NULL AUTO_INCREMENT,
  `kategori_barang` int DEFAULT NULL,
  `kondisi_barang` int DEFAULT NULL,
  `garansi` int DEFAULT NULL,
  `box_barang` int DEFAULT NULL,
  `aksesoris` int DEFAULT NULL,
  `bukti_kepemilikan` int DEFAULT NULL,
  `ktp` int DEFAULT NULL,
  `status_kelayakan` int DEFAULT NULL,
  PRIMARY KEY (`id_data`)
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `dataset_training`
--

INSERT INTO `dataset_training` (`id_data`, `kategori_barang`, `kondisi_barang`, `garansi`, `box_barang`, `aksesoris`, `bukti_kepemilikan`, `ktp`, `status_kelayakan`) VALUES
(1, 1, 3, 0, 0, 0, 0, 1, 1),
(2, 1, 3, 0, 0, 0, 0, 1, 1),
(3, 1, 1, 0, 0, 0, 0, 1, 0),
(4, 1, 1, 0, 0, 0, 0, 0, 0),
(5, 1, 3, 0, 0, 0, 0, 1, 1),
(6, 1, 2, 0, 0, 0, 0, 1, 1),
(7, 1, 2, 0, 0, 1, 0, 1, 1),
(8, 1, 2, 1, 1, 1, 1, 1, 2),
(9, 1, 3, 1, 1, 1, 1, 1, 2),
(10, 2, 3, 1, 1, 1, 1, 1, 2),
(11, 2, 3, 1, 1, 1, 1, 0, 1),
(12, 2, 2, 1, 1, 1, 1, 1, 2),
(13, 2, 1, 1, 1, 1, 1, 1, 0),
(14, 2, 3, 0, 1, 1, 0, 1, 1),
(15, 2, 3, 0, 0, 1, 0, 1, 1),
(16, 2, 3, 0, 0, 0, 0, 1, 1),
(17, 2, 3, 0, 0, 0, 0, 0, 1),
(18, 2, 2, 0, 0, 0, 0, 0, 1),
(19, 2, 1, 0, 0, 0, 0, 0, 0),
(20, 2, 3, 0, 0, 1, 0, 1, 1),
(21, 2, 3, 0, 0, 1, 0, 0, 1),
(22, 2, 3, 1, 0, 1, 0, 1, 1),
(23, 3, 3, 1, 1, 1, 1, 1, 2),
(24, 3, 3, 1, 1, 1, 1, 0, 1),
(25, 3, 2, 1, 1, 1, 1, 1, 2),
(26, 3, 2, 0, 1, 1, 0, 1, 1),
(27, 3, 2, 0, 1, 1, 0, 0, 1),
(28, 3, 2, 0, 0, 1, 0, 1, 1),
(29, 3, 1, 0, 1, 1, 0, 1, 0),
(30, 3, 2, 0, 1, 0, 1, 1, 1),
(31, 3, 2, 0, 1, 0, 1, 0, 1),
(32, 3, 2, 0, 1, 0, 0, 0, 1),
(33, 3, 2, 0, 0, 0, 0, 0, 1),
(34, 3, 3, 0, 0, 0, 0, 0, 1),
(35, 3, 1, 0, 0, 0, 0, 0, 0),
(36, 3, 1, 0, 0, 0, 0, 1, 0),
(37, 3, 1, 0, 0, 0, 1, 1, 0),
(38, 3, 1, 0, 0, 1, 1, 1, 0),
(39, 3, 1, 0, 1, 1, 1, 1, 0),
(40, 3, 1, 1, 1, 1, 1, 0, 0),
(41, 3, 1, 1, 1, 1, 0, 0, 0),
(42, 3, 1, 1, 1, 0, 0, 0, 0),
(43, 3, 2, 1, 1, 0, 0, 0, 1),
(44, 3, 2, 1, 0, 0, 0, 0, 1),
(45, 3, 2, 0, 0, 0, 0, 0, 1),
(46, 3, 2, 0, 0, 0, 0, 1, 1),
(47, 3, 2, 0, 0, 0, 1, 1, 1),
(48, 3, 2, 0, 0, 1, 1, 1, 1),
(49, 3, 2, 1, 0, 1, 1, 1, 1),
(50, 3, 3, 1, 0, 1, 1, 1, 1),
(51, 4, 3, 1, 1, 1, 1, 1, 2),
(52, 4, 3, 1, 1, 1, 1, 0, 1),
(53, 4, 2, 1, 1, 1, 1, 1, 2),
(54, 4, 2, 0, 1, 1, 0, 1, 1),
(55, 4, 2, 0, 0, 1, 0, 1, 1),
(56, 4, 1, 0, 1, 1, 0, 1, 0),
(57, 4, 1, 0, 0, 1, 0, 0, 0),
(58, 4, 1, 1, 1, 1, 1, 1, 0),
(59, 4, 3, 0, 0, 0, 0, 1, 1),
(60, 4, 2, 0, 0, 0, 0, 0, 1),
(61, 5, 3, 1, 1, 1, 1, 1, 2),
(62, 5, 3, 1, 1, 1, 1, 0, 1),
(63, 5, 2, 1, 1, 1, 1, 1, 2),
(64, 5, 2, 0, 1, 1, 0, 1, 1),
(65, 5, 2, 0, 0, 1, 0, 1, 1),
(66, 5, 1, 0, 1, 1, 0, 1, 0),
(67, 5, 1, 0, 0, 1, 0, 0, 0),
(68, 5, 1, 1, 1, 1, 1, 1, 0),
(69, 5, 3, 0, 0, 0, 0, 1, 1),
(70, 5, 2, 0, 0, 0, 0, 0, 1);

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
) ENGINE=MyISAM AUTO_INCREMENT=136 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pengajuan`
--

INSERT INTO `pengajuan` (`id_pengajuan`, `nama_nasabah`, `kategori_barang`, `nama_barang`, `kondisi_barang`, `garansi`, `box`, `aksesoris`, `bukti_kepemilikan`, `ktp`, `kategori_hp`, `kelengkapan`, `dokumen`, `hasil_status`, `tingkat_risiko`, `persentase_pinjaman`, `rule_terpakai`, `created_at`) VALUES
(1, 'hambanya 1', 'speaker', 'jbl', 'baik', 'tidak ada', 'tidak ada', 'tidak lengkap', 'tidak ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 40, 'Speaker Default', '2026-06-01 13:59:21'),
(2, 'hambanya 1', 'speaker', 'jbl', 'baik', 'tidak ada', 'tidak ada', 'tidak lengkap', 'tidak ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 40, 'Speaker Default', '2026-06-01 13:59:23'),
(3, 'hamba allah', 'speaker', 'jbl', 'buruk', 'tidak ada', 'tidak ada', 'tidak lengkap', 'tidak ada', 'ada', NULL, NULL, NULL, 'Tidak Layak', 'tinggi', 0, 'Speaker - Kondisi Buruk', '2026-06-01 14:00:23'),
(4, 'hamba allah', 'speaker', 'jbl', 'buruk', 'tidak ada', 'tidak ada', 'tidak lengkap', 'tidak ada', 'tidak ada', NULL, NULL, NULL, 'Tidak Layak', 'tinggi', 0, 'Speaker - Kondisi Buruk', '2026-06-01 14:00:27'),
(5, 'hamba allah', 'speaker', 'jbl', 'baik', 'tidak ada', 'tidak ada', 'tidak lengkap', 'tidak ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 40, 'Speaker Default', '2026-06-01 14:00:34'),
(6, 'hamba allah', 'speaker', 'jbl', 'cukup', 'tidak ada', 'tidak ada', 'tidak lengkap', 'tidak ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 40, 'Speaker Default', '2026-06-01 14:00:41'),
(7, 'hamba allah', 'speaker', 'jbl', 'cukup', 'tidak ada', 'tidak ada', 'lengkap', 'tidak ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 40, 'Speaker Default', '2026-06-01 14:00:52'),
(8, 'hamba allah', 'speaker', 'jbl', 'cukup', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Layak', 'sedang', 50, 'Speaker Low Ideal', '2026-06-01 14:01:04'),
(9, 'hamba allah', 'speaker', 'jbl', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Layak', 'rendah', 70, 'Speaker High Ideal', '2026-06-01 14:01:08'),
(10, 'hamba allah', 'handphone', 'iphone', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Layak', 'rendah', 80, 'HP Premium Ideal', '2026-06-01 14:01:28'),
(11, 'hamba allah', 'handphone', 'iphone', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'tidak ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'HP Default', '2026-06-01 14:01:35'),
(12, 'hamba allah', 'handphone', 'iphone', 'cukup', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Layak', 'sedang', 60, 'HP Low Ideal', '2026-06-01 14:01:43'),
(13, 'hamba allah', 'handphone', 'iphone', 'buruk', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Tidak Layak', 'tinggi', 0, 'HP - Kondisi Buruk', '2026-06-01 14:01:47'),
(14, 'hamba allah', 'handphone', 'iphone', 'baik', 'tidak ada', 'ada', 'lengkap', 'tidak ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'HP Default', '2026-06-01 14:01:57'),
(15, 'hamba allah', 'handphone', 'iphone', 'baik', 'tidak ada', 'tidak ada', 'lengkap', 'tidak ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'HP Default', '2026-06-01 14:02:04'),
(16, 'hamba allah', 'handphone', 'iphone', 'baik', 'tidak ada', 'tidak ada', 'tidak lengkap', 'tidak ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'HP Default', '2026-06-01 14:02:11'),
(17, 'hamba allah', 'handphone', 'iphone', 'baik', 'tidak ada', 'tidak ada', 'tidak lengkap', 'tidak ada', 'tidak ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'HP Default', '2026-06-01 14:02:16'),
(18, 'hamba allah', 'handphone', 'iphone', 'cukup', 'tidak ada', 'tidak ada', 'tidak lengkap', 'tidak ada', 'tidak ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'HP Default', '2026-06-01 14:02:20'),
(19, 'hamba allah', 'handphone', 'iphone', 'buruk', 'tidak ada', 'tidak ada', 'tidak lengkap', 'tidak ada', 'tidak ada', NULL, NULL, NULL, 'Tidak Layak', 'tinggi', 0, 'HP - Kondisi Buruk', '2026-06-01 14:02:25'),
(20, 'hamba allah', 'handphone', 'iphone', 'baik', 'tidak ada', 'tidak ada', 'lengkap', 'tidak ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'HP Default', '2026-06-01 14:02:36'),
(21, 'hamba allah', 'handphone', 'iphone', 'baik', 'tidak ada', 'tidak ada', 'lengkap', 'tidak ada', 'tidak ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'HP Default', '2026-06-01 14:02:43'),
(22, 'hamba allah', 'handphone', 'iphone', 'baik', 'ada', 'tidak ada', 'lengkap', 'tidak ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'HP Default', '2026-06-01 14:02:52'),
(23, 'hamba allah', 'laptop', 'asus ', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Layak', 'rendah', 80, 'Laptop High Ideal', '2026-06-01 14:03:48'),
(24, 'hamba allah', 'laptop', 'asus ', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'tidak ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'Laptop Default', '2026-06-01 14:03:53'),
(25, 'hamba allah', 'laptop', 'asus ', 'cukup', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Layak', 'sedang', 60, 'Laptop Low Ideal', '2026-06-01 14:03:59'),
(26, 'hamba allah', 'laptop', 'asus ', 'cukup', 'tidak ada', 'ada', 'lengkap', 'tidak ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'Laptop Default', '2026-06-01 14:04:11'),
(27, 'hamba allah', 'laptop', 'asus ', 'cukup', 'tidak ada', 'ada', 'lengkap', 'tidak ada', 'tidak ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'Laptop Default', '2026-06-01 14:04:15'),
(28, 'hamba allah', 'laptop', 'asus ', 'cukup', 'tidak ada', 'tidak ada', 'lengkap', 'tidak ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'Laptop Default', '2026-06-01 14:04:22'),
(29, 'hamba allah', 'laptop', 'asus ', 'buruk', 'tidak ada', 'ada', 'lengkap', 'tidak ada', 'ada', NULL, NULL, NULL, 'Tidak Layak', 'tinggi', 0, 'Laptop - Kondisi Buruk', '2026-06-01 14:04:31'),
(30, 'hamba allah', 'laptop', 'asus ', 'cukup', 'tidak ada', 'ada', 'tidak lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'Laptop Default', '2026-06-01 14:04:41'),
(31, 'hamba allah', 'laptop', 'asus ', 'cukup', 'tidak ada', 'ada', 'tidak lengkap', 'ada', 'tidak ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'Laptop Default', '2026-06-01 14:04:45'),
(32, 'hamba allah', 'laptop', 'asus ', 'cukup', 'tidak ada', 'ada', 'tidak lengkap', 'tidak ada', 'tidak ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'Laptop Default', '2026-06-01 14:05:02'),
(33, 'hamba allah', 'laptop', 'asus ', 'cukup', 'tidak ada', 'tidak ada', 'tidak lengkap', 'tidak ada', 'tidak ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'Laptop Default', '2026-06-01 14:05:05'),
(34, 'hamba allah', 'laptop', 'asus ', 'baik', 'tidak ada', 'tidak ada', 'tidak lengkap', 'tidak ada', 'tidak ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'Laptop Default', '2026-06-01 14:05:10'),
(35, 'hamba allah', 'laptop', 'asus ', 'buruk', 'tidak ada', 'tidak ada', 'tidak lengkap', 'tidak ada', 'tidak ada', NULL, NULL, NULL, 'Tidak Layak', 'tinggi', 0, 'Laptop - Kondisi Buruk', '2026-06-01 14:05:15'),
(36, 'hamba allah', 'laptop', 'asus ', 'buruk', 'tidak ada', 'tidak ada', 'tidak lengkap', 'tidak ada', 'ada', NULL, NULL, NULL, 'Tidak Layak', 'tinggi', 0, 'Laptop - Kondisi Buruk', '2026-06-01 14:05:22'),
(37, 'hamba allah', 'laptop', 'asus ', 'buruk', 'tidak ada', 'tidak ada', 'tidak lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Tidak Layak', 'tinggi', 0, 'Laptop - Kondisi Buruk', '2026-06-01 14:05:28'),
(38, 'hamba allah', 'laptop', 'asus ', 'buruk', 'tidak ada', 'tidak ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Tidak Layak', 'tinggi', 0, 'Laptop - Kondisi Buruk', '2026-06-01 14:05:33'),
(39, 'hamba allah', 'laptop', 'asus ', 'buruk', 'tidak ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Tidak Layak', 'tinggi', 0, 'Laptop - Kondisi Buruk', '2026-06-01 14:05:36'),
(40, 'hamba allah', 'laptop', 'asus ', 'buruk', 'ada', 'ada', 'lengkap', 'ada', 'tidak ada', NULL, NULL, NULL, 'Tidak Layak', 'tinggi', 0, 'Laptop - Kondisi Buruk', '2026-06-01 14:05:42'),
(41, 'hamba allah', 'laptop', 'asus ', 'buruk', 'ada', 'ada', 'lengkap', 'tidak ada', 'tidak ada', NULL, NULL, NULL, 'Tidak Layak', 'tinggi', 0, 'Laptop - Kondisi Buruk', '2026-06-01 14:05:46'),
(42, 'hamba allah', 'laptop', 'asus ', 'buruk', 'ada', 'ada', 'tidak lengkap', 'tidak ada', 'tidak ada', NULL, NULL, NULL, 'Tidak Layak', 'tinggi', 0, 'Laptop - Kondisi Buruk', '2026-06-01 14:05:48'),
(43, 'hamba allah', 'laptop', 'asus ', 'cukup', 'ada', 'ada', 'tidak lengkap', 'tidak ada', 'tidak ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'Laptop Default', '2026-06-01 14:05:51'),
(44, 'hamba allah', 'laptop', 'asus ', 'cukup', 'ada', 'tidak ada', 'tidak lengkap', 'tidak ada', 'tidak ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'Laptop Default', '2026-06-01 14:05:54'),
(45, 'hamba allah', 'laptop', 'asus ', 'cukup', 'tidak ada', 'tidak ada', 'tidak lengkap', 'tidak ada', 'tidak ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'Laptop Default', '2026-06-01 14:05:57'),
(46, 'hamba allah', 'laptop', 'asus ', 'cukup', 'tidak ada', 'tidak ada', 'tidak lengkap', 'tidak ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'Laptop Default', '2026-06-01 14:06:00'),
(47, 'hamba allah', 'laptop', 'asus ', 'cukup', 'tidak ada', 'tidak ada', 'tidak lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'Laptop Default', '2026-06-01 14:06:02'),
(48, 'hamba allah', 'laptop', 'asus ', 'cukup', 'tidak ada', 'tidak ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'Laptop Default', '2026-06-01 14:06:06'),
(49, 'hamba allah', 'laptop', 'asus ', 'cukup', 'ada', 'tidak ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'Laptop Default', '2026-06-01 14:06:09'),
(50, 'hamba allah', 'laptop', 'asus ', 'baik', 'ada', 'tidak ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'Laptop Default', '2026-06-01 14:06:17'),
(51, 'hamba allah', 'laptop', 'asus ', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Layak', 'rendah', 80, 'Laptop High Ideal', '2026-06-01 14:06:19'),
(52, 'hamba allah', 'laptop', 'asus ', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'tidak ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'Laptop Default', '2026-06-01 14:06:21'),
(53, 'hamba allah', 'laptop', 'asus ', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'tidak ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'Laptop Default', '2026-06-01 14:06:22'),
(54, 'hamba allah', 'laptop', 'asus ', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Layak', 'rendah', 80, 'Laptop High Ideal', '2026-06-01 14:06:24'),
(55, 'hamba allah', 'laptop', 'asus ', 'baik', 'ada', 'ada', 'lengkap', 'tidak ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'Laptop Default', '2026-06-01 14:06:26'),
(56, 'hamba allah', 'laptop', 'asus ', 'baik', 'ada', 'ada', 'tidak lengkap', 'tidak ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'Laptop Default', '2026-06-01 14:06:28'),
(57, 'hamba allah', 'laptop', 'asus ', 'baik', 'ada', 'ada', 'tidak lengkap', 'tidak ada', 'tidak ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'Laptop Default', '2026-06-01 14:06:31'),
(58, 'hamba allah', 'laptop', 'asus ', 'baik', 'ada', 'tidak ada', 'tidak lengkap', 'tidak ada', 'tidak ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'Laptop Default', '2026-06-01 14:06:33'),
(59, 'hamba allah', 'laptop', 'asus ', 'baik', 'tidak ada', 'tidak ada', 'tidak lengkap', 'ada', 'tidak ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'Laptop Default', '2026-06-01 14:06:38'),
(60, 'hamba allah', 'laptop', 'asus ', 'baik', 'ada', 'tidak ada', 'tidak lengkap', 'ada', 'tidak ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'Laptop Default', '2026-06-01 14:06:44'),
(61, 'hamba allah', 'laptop', 'asus ', 'baik', 'ada', 'tidak ada', 'tidak lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'Laptop Default', '2026-06-01 14:06:47'),
(62, 'hamba allah', 'laptop', 'asus ', 'baik', 'ada', 'tidak ada', 'tidak lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'Laptop Default', '2026-06-01 14:06:47'),
(63, 'hamba allah', 'playstation', 'ps 2', 'baik', 'ada', 'tidak ada', 'tidak lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'PS Default', '2026-06-01 14:07:11'),
(64, 'hamba allah', 'playstation', 'ps 2', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Layak', 'rendah', 75, 'PS High Ideal', '2026-06-01 14:07:18'),
(65, 'hamba allah', 'playstation', 'ps 2', 'baik', 'tidak ada', 'ada', 'lengkap', 'tidak ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'PS Default', '2026-06-01 14:07:22'),
(66, 'hamba allah', 'playstation', 'ps 2', 'baik', 'tidak ada', 'ada', 'lengkap', 'tidak ada', 'tidak ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'PS Default', '2026-06-01 14:07:24'),
(67, 'hamba allah', 'playstation', 'ps 2', 'buruk', 'tidak ada', 'ada', 'tidak lengkap', 'tidak ada', 'tidak ada', NULL, NULL, NULL, 'Tidak Layak', 'tinggi', 0, 'PS - Kondisi Buruk', '2026-06-01 14:07:35'),
(68, 'hamba allah', 'playstation', 'ps 2', 'buruk', 'tidak ada', 'ada', 'tidak lengkap', 'tidak ada', 'tidak ada', NULL, NULL, NULL, 'Tidak Layak', 'tinggi', 0, 'PS - Kondisi Buruk', '2026-06-01 14:07:35'),
(69, 'hamba allah', 'playstation', 'ps 2', 'buruk', 'tidak ada', 'ada', 'tidak lengkap', 'tidak ada', 'tidak ada', NULL, NULL, NULL, 'Tidak Layak', 'tinggi', 0, 'PS - Kondisi Buruk', '2026-06-01 14:07:35'),
(70, 'hamba allah', 'playstation', 'ps 2', 'buruk', 'ada', 'ada', 'lengkap', 'tidak ada', 'ada', NULL, NULL, NULL, 'Tidak Layak', 'tinggi', 0, 'PS - Kondisi Buruk', '2026-06-01 14:07:44'),
(71, 'hamba allah', 'playstation', 'ps 2', 'cukup', 'ada', 'ada', 'lengkap', 'tidak ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'PS Default', '2026-06-01 14:07:48'),
(72, 'hamba allah', 'playstation', 'ps 2', 'cukup', 'tidak ada', 'tidak ada', 'lengkap', 'tidak ada', 'tidak ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'PS Default', '2026-06-01 14:07:57'),
(73, 'hamba allah', 'playstation', 'ps 2', 'cukup', 'tidak ada', 'tidak ada', 'lengkap', 'tidak ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'PS Default', '2026-06-01 14:08:00'),
(74, 'hamba allah', 'playstation', 'ps 2', 'cukup', 'tidak ada', 'tidak ada', 'tidak lengkap', 'tidak ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'PS Default', '2026-06-01 14:08:03'),
(75, 'hamba allah', 'playstation', 'ps 2', 'cukup', 'ada', 'tidak ada', 'tidak lengkap', 'tidak ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'PS Default', '2026-06-01 14:08:06'),
(76, 'hamba allah', 'playstation', 'ps 2', 'cukup', 'tidak ada', 'tidak ada', 'tidak lengkap', 'tidak ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'PS Default', '2026-06-01 14:08:16'),
(77, 'hamba allah', 'playstation', 'ps 2', 'baik', 'tidak ada', 'tidak ada', 'tidak lengkap', 'tidak ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'PS Default', '2026-06-01 14:08:21'),
(78, 'hamba allah', 'playstation', 'ps 2', 'baik', 'tidak ada', 'tidak ada', 'tidak lengkap', 'tidak ada', 'tidak ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'PS Default', '2026-06-01 14:08:30'),
(79, 'hamba allah', 'playstation', 'ps 2', 'baik', 'tidak ada', 'tidak ada', 'lengkap', 'tidak ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'PS Default', '2026-06-01 14:08:41'),
(80, 'hamba allah', 'playstation', 'ps 2', 'baik', 'ada', 'tidak ada', 'lengkap', 'tidak ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'PS Default', '2026-06-01 14:08:50'),
(81, 'hamba allah', 'playstation', 'ps 2', 'baik', 'ada', 'tidak ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'PS Default', '2026-06-01 14:08:53'),
(82, 'hamba allah', 'playstation', 'ps 2', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Layak', 'rendah', 75, 'PS High Ideal', '2026-06-01 14:08:56'),
(83, 'hamba allah', 'playstation', 'ps 2', 'buruk', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Tidak Layak', 'tinggi', 0, 'PS - Kondisi Buruk', '2026-06-01 14:08:58'),
(84, 'hamba allah', 'playstation', 'ps 2', 'cukup', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Layak', 'sedang', 55, 'PS Low Ideal', '2026-06-01 14:09:01'),
(85, 'hamba allah', 'playstation', 'ps 2', 'cukup', 'ada', 'ada', 'lengkap', 'ada', 'tidak ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 45, 'PS Default', '2026-06-01 14:09:06'),
(86, 'hamba allah', 'speaker', 'jbk', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Layak', 'rendah', 70, 'Speaker High Ideal', '2026-06-01 14:09:35'),
(87, 'hamba allah', 'speaker', 'jbk', 'baik', 'ada', 'ada', 'lengkap', 'tidak ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 40, 'Speaker Default', '2026-06-01 14:09:41'),
(88, 'hamba allah', 'speaker', 'jbk', 'baik', 'ada', 'ada', 'lengkap', 'tidak ada', 'tidak ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 40, 'Speaker Default', '2026-06-01 14:09:45'),
(89, 'hamba allah', 'speaker', 'jbk', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'tidak ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 40, 'Speaker Default', '2026-06-01 14:09:47'),
(90, 'hamba allah', 'speaker', 'jbk', 'baik', 'ada', 'ada', 'tidak lengkap', 'ada', 'tidak ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 40, 'Speaker Default', '2026-06-01 14:09:51'),
(91, 'hamba allah', 'speaker', 'jbk', 'baik', 'ada', 'ada', 'tidak lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 40, 'Speaker Default', '2026-06-01 14:09:53'),
(92, 'hamba allah', 'speaker', 'jbk', 'baik', 'ada', 'tidak ada', 'tidak lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 40, 'Speaker Default', '2026-06-01 14:09:56'),
(93, 'hamba allah', 'speaker', 'jbk', 'baik', 'ada', 'tidak ada', 'tidak lengkap', 'ada', 'tidak ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 40, 'Speaker Default', '2026-06-01 14:09:58'),
(94, 'hamba allah', 'speaker', 'jbk', 'baik', 'ada', 'tidak ada', 'tidak lengkap', 'tidak ada', 'tidak ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 40, 'Speaker Default', '2026-06-01 14:10:01'),
(95, 'hamba allah', 'speaker', 'jbk', 'baik', 'tidak ada', 'tidak ada', 'tidak lengkap', 'tidak ada', 'tidak ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 40, 'Speaker Default', '2026-06-01 14:10:04'),
(96, 'hamba allah', 'speaker', 'jbk', 'baik', 'ada', 'tidak ada', 'tidak lengkap', 'tidak ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 40, 'Speaker Default', '2026-06-01 14:10:09'),
(97, 'hamba allah', 'speaker', 'jbk', 'baik', 'ada', 'tidak ada', 'tidak lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 40, 'Speaker Default', '2026-06-01 14:10:12'),
(98, 'hamba allah', 'speaker', 'jbk', 'buruk', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Tidak Layak', 'tinggi', 0, 'Speaker - Kondisi Buruk', '2026-06-01 14:10:18'),
(99, 'hamba allah', 'speaker', 'jbk', 'cukup', 'ada', 'ada', 'lengkap', 'tidak ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 40, 'Speaker Default', '2026-06-01 14:10:34'),
(100, 'hamba allah', 'speaker', 'jbk', 'baik', 'ada', 'ada', 'lengkap', 'tidak ada', 'tidak ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 40, 'Speaker Default', '2026-06-01 14:10:44'),
(101, 'hamba allah', 'speaker', 'jbk', 'baik', 'ada', 'ada', 'tidak lengkap', 'tidak ada', 'tidak ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 40, 'Speaker Default', '2026-06-01 14:10:46'),
(102, 'hamba allah', 'speaker', 'jbk', 'baik', 'ada', 'tidak ada', 'tidak lengkap', 'tidak ada', 'tidak ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 40, 'Speaker Default', '2026-06-01 14:10:49'),
(103, 'hamba allah', 'speaker', 'jbk', 'baik', 'tidak ada', 'tidak ada', 'tidak lengkap', 'tidak ada', 'tidak ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 40, 'Speaker Default', '2026-06-01 14:10:52'),
(104, 'hamba allah', 'speaker', 'jbk', 'baik', 'tidak ada', 'tidak ada', 'tidak lengkap', 'tidak ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 40, 'Speaker Default', '2026-06-01 14:10:57'),
(105, 'hamba allah', 'speaker', 'jbk', 'baik', 'tidak ada', 'tidak ada', 'tidak lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 40, 'Speaker Default', '2026-06-01 14:11:00'),
(106, 'hamba allah', 'speaker', 'jbk', 'baik', 'tidak ada', 'tidak ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 40, 'Speaker Default', '2026-06-01 14:11:02'),
(107, 'hamba allah', 'speaker', 'jbk', 'baik', 'tidak ada', 'tidak ada', 'lengkap', 'ada', 'tidak ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 40, 'Speaker Default', '2026-06-01 14:11:05'),
(108, 'hamba allah', 'speaker', 'jbk', 'baik', 'ada', 'tidak ada', 'lengkap', 'ada', 'tidak ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 40, 'Speaker Default', '2026-06-01 14:11:08'),
(109, 'hamba allah', 'speaker', 'jbk', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'tidak ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 40, 'Speaker Default', '2026-06-01 14:11:11'),
(110, 'hamba allah', 'speaker', 'jbk', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'tidak ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 40, 'Speaker Default', '2026-06-01 14:11:29'),
(111, 'hamba allah', 'speaker', 'jbk', 'baik', 'ada', 'ada', 'tidak lengkap', 'ada', 'tidak ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 40, 'Speaker Default', '2026-06-01 14:11:32'),
(112, 'hamba allah', 'speaker', 'jbk', 'baik', 'tidak ada', 'ada', 'tidak lengkap', 'ada', 'tidak ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 40, 'Speaker Default', '2026-06-01 14:11:35'),
(113, 'hamba allah', 'speaker', 'jbk', 'baik', 'tidak ada', 'tidak ada', 'lengkap', 'tidak ada', 'tidak ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 40, 'Speaker Default', '2026-06-01 14:11:45'),
(114, 'hamba allah', 'speaker', 'jbk', 'baik', 'tidak ada', 'tidak ada', 'lengkap', 'tidak ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 40, 'Speaker Default', '2026-06-01 14:11:48'),
(115, 'hamba allah', 'speaker', 'jbk', 'baik', 'ada', 'tidak ada', 'lengkap', 'tidak ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 40, 'Speaker Default', '2026-06-01 14:11:52'),
(116, 'hamba allah', 'speaker', 'jbk', 'baik', 'ada', 'tidak ada', 'lengkap', 'tidak ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 40, 'Speaker Default', '2026-06-01 14:11:54'),
(117, 'hamba allah', 'speaker', 'jbk', 'cukup', 'ada', 'tidak ada', 'lengkap', 'tidak ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 40, 'Speaker Default', '2026-06-01 14:11:57'),
(118, 'hamba allah', 'speaker', 'jbk', 'buruk', 'ada', 'tidak ada', 'lengkap', 'tidak ada', 'ada', NULL, NULL, NULL, 'Tidak Layak', 'tinggi', 0, 'Speaker - Kondisi Buruk', '2026-06-01 14:12:00'),
(119, 'hamba allah', 'speaker', 'jbk', 'cukup', 'tidak ada', 'ada', 'lengkap', 'tidak ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', 'sedang', 40, 'Speaker Default', '2026-06-01 14:12:09'),
(120, 'ulox', 'speaker', 'jbl', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Layak', NULL, NULL, NULL, '2026-06-01 15:21:51'),
(121, 'ulox', 'speaker', 'jbl', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Layak', NULL, NULL, NULL, '2026-06-01 15:21:53'),
(122, 'nabil', 'laptop', 'ausu', 'baik', 'tidak ada', 'ada', 'lengkap', 'tidak ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', NULL, NULL, NULL, '2026-06-01 15:23:25'),
(123, 'nabil', 'laptop', 'ausu', 'cukup', 'tidak ada', 'ada', 'lengkap', 'tidak ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', NULL, NULL, NULL, '2026-06-01 15:24:06'),
(124, 'nabil', 'laptop', 'ausu', 'cukup', 'tidak ada', 'ada', 'tidak lengkap', 'tidak ada', 'ada', NULL, NULL, NULL, 'Dipertimbangkan', NULL, NULL, NULL, '2026-06-01 15:24:17'),
(125, 'nabil', 'laptop', 'ausu', 'cukup', 'tidak ada', 'ada', 'tidak lengkap', 'tidak ada', 'tidak ada', NULL, NULL, NULL, 'Dipertimbangkan', NULL, NULL, NULL, '2026-06-01 15:24:21'),
(126, 'nabil', 'laptop', 'ausu', 'cukup', 'tidak ada', 'ada', 'tidak lengkap', 'tidak ada', 'tidak ada', NULL, NULL, NULL, 'Dipertimbangkan', NULL, NULL, NULL, '2026-06-01 15:24:23'),
(127, 'nabil', 'laptop', 'ausu', 'buruk', 'tidak ada', 'ada', 'tidak lengkap', 'tidak ada', 'tidak ada', NULL, NULL, NULL, 'Tidak Layak', NULL, NULL, NULL, '2026-06-01 15:24:33'),
(128, 'nabil', 'laptop', 'ausu', 'buruk', 'tidak ada', 'ada', 'tidak lengkap', 'tidak ada', 'tidak ada', NULL, NULL, NULL, 'Tidak Layak', NULL, NULL, NULL, '2026-06-01 15:25:15'),
(129, 'nabil', 'laptop', 'ausu', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Layak', NULL, NULL, NULL, '2026-06-01 15:25:47'),
(130, 'Asfal', 'handphone', 'iphone', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Layak', NULL, NULL, NULL, '2026-06-02 01:11:13'),
(131, 'Asfal', 'handphone', 'iphone', 'cukup', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Layak', NULL, NULL, NULL, '2026-06-02 01:11:29'),
(132, 'Joyboy', 'playstation', 'ps5', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Layak', NULL, NULL, NULL, '2026-06-02 02:04:38'),
(133, 'Joyboy', 'playstation', 'ps5', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Layak', NULL, NULL, NULL, '2026-06-02 02:04:41'),
(134, 'aje', 'speaker', 'laptop', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Layak', NULL, NULL, NULL, '2026-06-10 14:08:45'),
(135, 'aje', 'speaker', 'laptop', 'baik', 'ada', 'ada', 'lengkap', 'ada', 'ada', NULL, NULL, NULL, 'Layak', NULL, NULL, NULL, '2026-06-10 14:08:53');

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
