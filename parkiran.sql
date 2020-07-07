-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2020 at 11:33 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `parkiran`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_kendaraan`
--

CREATE TABLE `data_kendaraan` (
  `No_Plat` varchar(25) NOT NULL,
  `Jenis_Kendaraan` int(10) NOT NULL,
  `Tanggal` date NOT NULL,
  `Jam_Masuk` varchar(10) NOT NULL,
  `Jam_Keluar` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_kendaraan`
--

INSERT INTO `data_kendaraan` (`No_Plat`, `Jenis_Kendaraan`, `Tanggal`, `Jam_Masuk`, `Jam_Keluar`) VALUES
('ag aa bb', 1, '2020-07-09', '09:00', '10:00'),
('ag aa bb', 2, '2020-07-23', '09:00', '10:00'),
('ag aa bb', 3, '2020-07-13', '09:00', ''),
('ag aa bbw', 3, '2020-06-29', '09:00', '10:00');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_kendaraan`
--

CREATE TABLE `jenis_kendaraan` (
  `kode_kendaraan` int(10) NOT NULL,
  `Jenis_Kendaraan` varchar(25) NOT NULL,
  `tarif_kendaraan` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jenis_kendaraan`
--

INSERT INTO `jenis_kendaraan` (`kode_kendaraan`, `Jenis_Kendaraan`, `tarif_kendaraan`) VALUES
(1, 'Bus', '30.000'),
(2, 'Elf', '20.000'),
(3, 'City Car', '10.000'),
(4, 'Motor', '5.000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_kendaraan`
--
ALTER TABLE `data_kendaraan`
  ADD PRIMARY KEY (`No_Plat`,`Jenis_Kendaraan`);

--
-- Indexes for table `jenis_kendaraan`
--
ALTER TABLE `jenis_kendaraan`
  ADD PRIMARY KEY (`kode_kendaraan`) USING BTREE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
