-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 26, 2024 at 12:04 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kontol`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_fasilitas_umum`
--

CREATE TABLE `tb_fasilitas_umum` (
  `id_fasilitas_umum` int(11) NOT NULL,
  `nama_fasilitas` varchar(50) NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_kamar`
--

CREATE TABLE `tb_kamar` (
  `id_kamar` int(11) NOT NULL,
  `tipe` varchar(50) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga` varchar(50) NOT NULL,
  `gambar` varchar(50) NOT NULL,
  `keterangan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_kamar`
--

INSERT INTO `tb_kamar` (`id_kamar`, `tipe`, `jumlah`, `harga`, `gambar`, `keterangan`) VALUES
(37, 'museum', 100, '10.000', '274-museummalioboro.png', 'museum benteng Vredeburg yogyakarta buka dari pukul 09:00-18:00 WIB'),
(38, 'tempat wisata', 100, '20.000', '15-kraton.png', 'Kadhaton Ngayogyakarta Adiningrat ) adalah sebuah kompleks istana di Yogyakarta kota Yogyakarta , Da'),
(39, 'candi', 100, '30.000', '580-prambanan.png', 'Prambanan ( bahasa Jawa :  , diromanisasi :  Rara Jonggrang ) adalah sebuah kompleks kompleks candi ');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pengguna`
--

CREATE TABLE `tb_pengguna` (
  `id_pengguna` int(11) NOT NULL,
  `nama_pengguna` varchar(50) NOT NULL,
  `password` varchar(15) NOT NULL,
  `level` enum('Administrator','Resepsionis','Tamu','') NOT NULL,
  `no_hp` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_pengguna`
--

INSERT INTO `tb_pengguna` (`id_pengguna`, `nama_pengguna`, `password`, `level`, `no_hp`) VALUES
(1, 'nahida', 'admin', 'Administrator', '09'),
(2, 'potter', 'admin', 'Resepsionis', '08'),
(28, 'potter', '12', 'Tamu', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tb_tamu`
--

CREATE TABLE `tb_tamu` (
  `NIK` varchar(16) NOT NULL,
  `nama_tamu` varchar(30) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `jenis_kelamin` enum('Laki-Laki','Perempuan','','') NOT NULL,
  `no_hp` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_tamu`
--

INSERT INTO `tb_tamu` (`NIK`, `nama_tamu`, `alamat`, `jenis_kelamin`, `no_hp`) VALUES
('12', 'potter', 'ewek', 'Laki-Laki', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tb_transaksi`
--

CREATE TABLE `tb_transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `tgl_chek_in` date NOT NULL,
  `tgl_chek_out` date NOT NULL,
  `id_kamar` int(11) NOT NULL,
  `NIK` varchar(16) NOT NULL,
  `jumlah_pesan` varchar(50) NOT NULL,
  `jumlah_orang` varchar(15) NOT NULL,
  `status` enum('1','2') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_transaksi`
--

INSERT INTO `tb_transaksi` (`id_transaksi`, `tgl_chek_in`, `tgl_chek_out`, `id_kamar`, `NIK`, `jumlah_pesan`, `jumlah_orang`, `status`) VALUES
(7, '2022-05-10', '0000-00-00', 35, '112', '1', '2', '1'),
(8, '2022-05-09', '2022-05-10', 33, '112', '1', '2', '1'),
(9, '2022-05-09', '2022-05-12', 33, '111111', '1', '2', '1'),
(10, '2022-05-11', '2022-05-10', 36, '111111', '1', '1', '1'),
(11, '2022-05-10', '0000-00-00', 36, '111111', '2', '2', '1'),
(12, '2022-05-10', '0000-00-00', 36, '123', '1', '3', '2'),
(13, '2022-05-11', '0000-00-00', 33, '111111', '1', '2', '1'),
(14, '2023-12-09', '0000-00-00', 0, '12', '1', '1', '1'),
(15, '2023-12-09', '0000-00-00', 0, '112', '1', '1', '1'),
(16, '2023-12-09', '0000-00-00', 0, '12', '1', '1', '1'),
(17, '2023-12-09', '0000-00-00', 37, '12', '1', '1', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_fasilitas_umum`
--
ALTER TABLE `tb_fasilitas_umum`
  ADD PRIMARY KEY (`id_fasilitas_umum`);

--
-- Indexes for table `tb_kamar`
--
ALTER TABLE `tb_kamar`
  ADD PRIMARY KEY (`id_kamar`);

--
-- Indexes for table `tb_pengguna`
--
ALTER TABLE `tb_pengguna`
  ADD PRIMARY KEY (`id_pengguna`);

--
-- Indexes for table `tb_tamu`
--
ALTER TABLE `tb_tamu`
  ADD PRIMARY KEY (`NIK`);

--
-- Indexes for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `id_kamar` (`id_kamar`),
  ADD KEY `NIK` (`NIK`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_fasilitas_umum`
--
ALTER TABLE `tb_fasilitas_umum`
  MODIFY `id_fasilitas_umum` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tb_kamar`
--
ALTER TABLE `tb_kamar`
  MODIFY `id_kamar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `tb_pengguna`
--
ALTER TABLE `tb_pengguna`
  MODIFY `id_pengguna` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
