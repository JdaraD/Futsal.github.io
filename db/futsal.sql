-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 01, 2024 at 06:15 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `futsal`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_inbox`
--

CREATE TABLE `tb_inbox` (
  `id_inbox` int(11) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `pesan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_inbox`
--

INSERT INTO `tb_inbox` (`id_inbox`, `nama`, `email`, `pesan`) VALUES
(8, 'Julian', 'admin@mfood.com', 'PING !!!');

-- --------------------------------------------------------

--
-- Table structure for table `tb_jadwal`
--

CREATE TABLE `tb_jadwal` (
  `id_jadwal` int(11) NOT NULL,
  `tgl_jadwal` date NOT NULL,
  `jam` varchar(20) NOT NULL,
  `id_lapang` varchar(15) NOT NULL,
  `harga` varchar(15) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_jadwal`
--

INSERT INTO `tb_jadwal` (`id_jadwal`, `tgl_jadwal`, `jam`, `id_lapang`, `harga`, `status`) VALUES
(3, '2019-07-11', '09:00 - 10:00', 'Lapangan 1', '160000', 'Kosong'),
(4, '2019-07-11', '10:00 - 11:00', 'Lapangan 1', '160000', 'Kosong'),
(5, '0000-00-00', '13:00 - 14:00', '', '', ''),
(6, '0000-00-00', '14:00 - 15:00', '', '', ''),
(7, '0000-00-00', '15:00 - 16:00', '', '', ''),
(8, '0000-00-00', '16:00 - 17:00', '', '', ''),
(9, '0000-00-00', '17:00 - 18:00', '', '', ''),
(10, '0000-00-00', '18:00 - 19:00', '', '', ''),
(11, '0000-00-00', '19:00 - 20:00', '', '', ''),
(12, '0000-00-00', '20:00 - 21:00', '', '', ''),
(13, '0000-00-00', '21:00 - 22:00', '', '', ''),
(14, '0000-00-00', '22:00 - 23:00', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_jam`
--

CREATE TABLE `tb_jam` (
  `id_jam` int(11) NOT NULL,
  `jam` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_jam`
--

INSERT INTO `tb_jam` (`id_jam`, `jam`) VALUES
(1, '09:00 - 10:00'),
(2, '10:00 - 11:00'),
(3, '11:00 - 12:00'),
(4, '12:00 - 13:00'),
(5, '13:00 - 14:00'),
(6, '15:00 - 16:00'),
(7, '16:00 - 17:00'),
(8, '17:00 - 18:00');

-- --------------------------------------------------------

--
-- Table structure for table `tb_konfirmasi`
--

CREATE TABLE `tb_konfirmasi` (
  `id_konfirm` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `harga` varchar(20) NOT NULL,
  `gambar` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_konfirmasi`
--

INSERT INTO `tb_konfirmasi` (`id_konfirm`, `nama`, `harga`, `gambar`) VALUES
(17, 'Julian', '160000', '1216_png_860.png');

-- --------------------------------------------------------

--
-- Table structure for table `tb_lapang`
--

CREATE TABLE `tb_lapang` (
  `id_lapang` int(11) NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `harga` int(11) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_lapang`
--

INSERT INTO `tb_lapang` (`id_lapang`, `keterangan`, `harga`, `gambar`) VALUES
(1, 'sintetis', 200000, 'lp2.jpg'),
(2, 'sintetis', 200000, 'lp2.jpg'),
(3, 'vinyl', 200000, 'lp6.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pemesanan`
--

CREATE TABLE `tb_pemesanan` (
  `id_pemesanan` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `id_jam` varchar(20) NOT NULL,
  `tgl_jadwal` date NOT NULL,
  `id_lapang` varchar(15) NOT NULL,
  `notelp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_pemesanan`
--

INSERT INTO `tb_pemesanan` (`id_pemesanan`, `nama`, `alamat`, `id_jam`, `tgl_jadwal`, `id_lapang`, `notelp`) VALUES
(114, 'Julian', '', '08:00 - 09:00', '2024-06-24', 'Lapangan A', ''),
(115, 'Julian', '', '08:00 - 09:00', '2024-06-24', 'Lapangan B', '022546487987'),
(116, 'Julian', '', '08:00 - 09:00', '2024-06-30', 'Lapangan A', '022546487987');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  `role_id` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `nama`, `username`, `email`, `password`, `role_id`) VALUES
(1, 'admin', 'admin', '', '123456', 1),
(16, 'Julian Diwandara', 'Julian', 'Juliandara17@gmail.com', '123456', 2),
(23, 'user', 'user12', 'a@a.a', '123456', 2),
(24, 'irsat', 'irsat', 'irsat4646@gmail.com', '123456', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_inbox`
--
ALTER TABLE `tb_inbox`
  ADD PRIMARY KEY (`id_inbox`);

--
-- Indexes for table `tb_jadwal`
--
ALTER TABLE `tb_jadwal`
  ADD PRIMARY KEY (`id_jadwal`);

--
-- Indexes for table `tb_jam`
--
ALTER TABLE `tb_jam`
  ADD PRIMARY KEY (`id_jam`);

--
-- Indexes for table `tb_konfirmasi`
--
ALTER TABLE `tb_konfirmasi`
  ADD PRIMARY KEY (`id_konfirm`);

--
-- Indexes for table `tb_lapang`
--
ALTER TABLE `tb_lapang`
  ADD PRIMARY KEY (`id_lapang`);

--
-- Indexes for table `tb_pemesanan`
--
ALTER TABLE `tb_pemesanan`
  ADD PRIMARY KEY (`id_pemesanan`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_inbox`
--
ALTER TABLE `tb_inbox`
  MODIFY `id_inbox` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tb_jadwal`
--
ALTER TABLE `tb_jadwal`
  MODIFY `id_jadwal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tb_jam`
--
ALTER TABLE `tb_jam`
  MODIFY `id_jam` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tb_konfirmasi`
--
ALTER TABLE `tb_konfirmasi`
  MODIFY `id_konfirm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tb_lapang`
--
ALTER TABLE `tb_lapang`
  MODIFY `id_lapang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_pemesanan`
--
ALTER TABLE `tb_pemesanan`
  MODIFY `id_pemesanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
