-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2024 at 01:50 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sekolah`
--

-- --------------------------------------------------------

--
-- Table structure for table `galeri`
--

CREATE TABLE `galeri` (
  `id` int(11) NOT NULL,
  `foto` varchar(50) NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `galeri`
--

INSERT INTO `galeri` (`id`, `foto`, `keterangan`, `created_at`, `updated_at`) VALUES
(2, 'galeri1656986067.jpg', 'MARINKU SANGATLAH WANGI', '2022-07-05 01:54:27', NULL),
(3, 'galeri1656986154.jpg', 'DEADPOOL KAGET TERKAGET', '2022-07-05 01:55:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `informasi`
--

CREATE TABLE `informasi` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `keterangan` text NOT NULL,
  `gambar` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `informasi`
--

INSERT INTO `informasi` (`id`, `judul`, `keterangan`, `gambar`, `created_at`, `updated_at`, `created_by`) VALUES
(2, 'Libur 3 Hari', '<p>libur 3 hari karena <strong>hari pancasila dan memperingati hari jadi HRD</strong></p>', 'informasi1656990435.png', '2022-07-05 03:07:15', '2022-07-05 10:38:14', 13),
(3, 'LIBUR NIKAHAN KEPALA SEKOLAH', '<p>Libur ini berlangsung sampai kepala sekolah selesai honeymoon.........diharapkan siswa/siswi memberi hadiah berupa duit</p>', 'informasi1657086408.jpg', '2022-07-06 05:46:48', NULL, 13);

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE `jurusan` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `keterangan` text NOT NULL,
  `gambar` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jurusan`
--

INSERT INTO `jurusan` (`id`, `nama`, `keterangan`, `gambar`, `created_at`, `updated_at`) VALUES
(13, 'WIBU KAPAL Kalian Semua', 'kalian semua harus menjadi wibu kapal yang bau dengan bawang mineral', 'jurusan1656981295.jpg', '2022-07-04 23:43:54', '2022-07-07 00:31:27'),
(15, 'Teknik Menghilang', 'jurusan yang ditunjukan oleh para buaya darat untuk ghosting orang', 'jurusan1657054255.jpg', '2022-07-05 20:50:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pengaturan`
--

CREATE TABLE `pengaturan` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telepon` varchar(20) NOT NULL,
  `alamat` text NOT NULL,
  `logo` varchar(50) NOT NULL,
  `favicon` varchar(50) NOT NULL,
  `tentang_sekolah` text NOT NULL,
  `foto_sekolah` varchar(50) NOT NULL,
  `google_maps` text NOT NULL,
  `nama_kepsek` varchar(50) NOT NULL,
  `foto_kepsek` varchar(50) NOT NULL,
  `sambutan_kepsek` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengaturan`
--

INSERT INTO `pengaturan` (`id`, `nama`, `email`, `telepon`, `alamat`, `logo`, `favicon`, `tentang_sekolah`, `foto_sekolah`, `google_maps`, `nama_kepsek`, `foto_kepsek`, `sambutan_kepsek`, `created_at`, `updated_at`) VALUES
(1, 'School Of BSC', 'info@sbsc.sch.id', '02109905909', 'Jl. Boedi Oetomo Santoso 3 No.24 RT.03/RW.01 Kelurahan Cimanuk, Kecamatan Cimanuk Raya, Kota Ciparo', 'logo1657030972.png', 'favicon1657030972.ico', '<p style=\"text-align: justify;\"><em>School of BSC</em> adalah sekolah berskala intergalaksi yang didirikan oleh <strong>H. Ocva Widi Saputra D.Eng.</strong> yang merupakan CEO dari Bojongsari Corp.</p>\r\n<p style=\"text-align: justify;\"><em>Sekolah of BSC</em> memiliki fasilitas pembelajaran yang memadai seperti lab, lapangan olahraga, gym, kantin, dan lain-lain.</p>\r\n<p style=\"text-align: justify;\"><em>School of BSC</em> sudah bersertifikasi IGSA (<em>Inter Galatic Standart Academy</em>) dan IGSE (<em>Inter Galatic Standart Education</em>) dari UGESCO (<em>Union of Galaxies Educational, Scientific and Cultural Organization</em>).</p>', 'foto-sekolah.png', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d63439.32816597589!2d106.70079371472319!3d-6.399412466701783!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69e8bca8fd8281%3A0xd5f42557d713e00c!2sKec.%20Bojongsari%2C%20Kota%20Depok%2C%20Jawa%20Barat!5e0!3m2!1sid!2sid!4v1657030750539!5m2!1sid!2sid', 'H. Ocva Widi Saputra D.Eng.', 'foto-kepsek.png', '<p>Salam sejahtera bagi kita semua. Saya selaku kepala sekolah ingin mengucapkan <strong>\"Selamat Anda telah terjebak di sekolah ini dimana kalian harus bayar SPP 500 ribu sebulan sekali dan Anda wajib memiliki keinginan kuat untuk bekerja di Bojongsari Corp sebagai tenaga ahli dalam menguasai dunia.</strong>\" Sudah itu aja, terimakasih!</p>', '2022-07-05 04:11:30', '2022-07-06 07:59:34');

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `id` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `level` enum('Super Admin','Admin') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`id`, `nama`, `username`, `password`, `level`, `created_at`, `updated_at`) VALUES
(3, 'Ocva Widi Saputra', 'ocva', '202cb962ac59075b964b07152d234b70', 'Super Admin', '2022-07-04 10:24:27', '2022-07-07 00:29:48'),
(16, 'Nanda Orang Paling Ganzz', 'nanda', '250cf8b51c773f3f8dc8b4be867a9a02', 'Admin', '2023-06-13 16:56:13', '2023-06-14 00:07:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `informasi`
--
ALTER TABLE `informasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengaturan`
--
ALTER TABLE `pengaturan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `informasi`
--
ALTER TABLE `informasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `pengaturan`
--
ALTER TABLE `pengaturan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
