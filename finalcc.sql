-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 25, 2024 at 11:25 PM
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
-- Database: `finalcc`
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

--
-- Dumping data for table `tb_fasilitas_umum`
--

INSERT INTO `tb_fasilitas_umum` (`id_fasilitas_umum`, `nama_fasilitas`, `gambar`) VALUES
(7, 'kamar mandi', '325-kamarmandi.jpg'),
(8, 'ruang meet', '206-meeten.jpg'),
(9, 'kolam renang', '112-kolamhomtel.jpg');

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
(33, 'DELUXE', 30, '300000', '93-hotelmewah.jpg', 'Full AC,\r\n WIFI 100 Mbps,\r\n Kamar mandi,\r\n TV 40\",\r\n Meja Rias,\r\n Pemandangan Indah                 '),
(35, 'Double Bet', 20, '400000', '803-kasur2.jpg', 'Full AC, WIFI 100 Mbps, Kamar mandi, TV 40\", Meja Rias, Pemandangan Indah'),
(36, 'Premium', 10, '500000', '320-kamarmewahbeutdahxixi.jpg', 'Full AC, WIFI 100 Mbps, Kamar mandi, TV 40\", Meja Rias, Pemandangan Indah');

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
(1, 'potter', 'admin', 'Administrator', '6969'),
(2, 'nahida', 'admin', 'Resepsionis', '6969'),
(13, 'deaqw2', '3213', 'Tamu', '3123'),
(16, 'potters', '111111', 'Tamu', '212312'),
(21, 'wq', '112', '', '312'),
(22, 'aqww', '123', 'Resepsionis', '089687138815');

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
('111111', 'potters', 'ewew', 'Laki-Laki', '212312'),
('112', 'wq', 'asfaf', 'Laki-Laki', '312'),
('123', 'aqww', 'afafsaf', 'Perempuan', '089687138815');

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
(13, '2022-05-11', '0000-00-00', 33, '111111', '1', '2', '1');

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
  MODIFY `id_kamar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `tb_pengguna`
--
ALTER TABLE `tb_pengguna`
  MODIFY `id_pengguna` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
