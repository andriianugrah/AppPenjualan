-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2024 at 01:30 PM
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
-- Database: `db_penjualan`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `kodeadmin` varchar(6) NOT NULL,
  `namaadmin` varchar(50) NOT NULL,
  `passwordadmin` varchar(30) NOT NULL,
  `leveladmin` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`kodeadmin`, `namaadmin`, `passwordadmin`, `leveladmin`) VALUES
('ADM001', 'Andri Anugrah', '3105', 'ADMIN'),
('ADM002', 'Andri Anugrah', '3105', 'USER'),
('ADM003', 'Udin', '123', 'USER');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_barang`
--

CREATE TABLE `tbl_barang` (
  `kodebarang` varchar(6) NOT NULL,
  `namabarang` varchar(50) NOT NULL,
  `hargabarang` int(11) NOT NULL,
  `jumlahbarang` int(11) NOT NULL,
  `satuanbarang` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_barang`
--

INSERT INTO `tbl_barang` (`kodebarang`, `namabarang`, `hargabarang`, `jumlahbarang`, `satuanbarang`) VALUES
('BRG001', 'Gantungan Kunci Spotify Custom', 6500, 840, 'PCS'),
('BRG002', 'Gantungan Kunci Karakter One Piece', 6000, 497, 'PCS'),
('BRG003', 'Gantungan Kunci Abjad Nama', 6000, 997, 'PCS'),
('BRG004', 'Wall Decor Foto Quotes 20 x 40 Cm ', 23000, 250, 'PCS'),
('BRG005', 'Kopi', 12000, 2, 'PCS');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_detailjual`
--

CREATE TABLE `tbl_detailjual` (
  `nojual` varchar(10) NOT NULL,
  `kodebarang` varchar(6) NOT NULL,
  `namabarang` varchar(50) NOT NULL,
  `hargajual` int(11) NOT NULL,
  `jumlahjual` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_detailjual`
--

INSERT INTO `tbl_detailjual` (`nojual`, `kodebarang`, `namabarang`, `hargajual`, `jumlahjual`, `subtotal`) VALUES
('J240529001', 'BRG001', 'Gantungan Kunci Spotify Custom', 6500, 1, 6500),
('J240529002', 'BRG001', 'Gantungan Kunci Spotify Custom', 6500, 50, 325000),
('J240529003', 'BRG002', 'Gantungan Kunci Karakter One Piece', 6000, 2, 12000),
('J240529003', 'BRG003', 'Gantungan Kunci Abjad Nama', 6000, 3, 18000),
('J240529003', 'BRG001', 'Gantungan Kunci Spotify Custom', 6500, 50, 325000),
('J240530004', 'BRG001', 'Gantungan Kunci Spotify Custom', 6500, 1, 6500),
('J240530005', 'BRG001', 'Gantungan Kunci Spotify Custom', 6500, 1, 6500),
('J240530006', 'BRG001', 'Gantungan Kunci Spotify Custom', 6500, 55, 357500);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jual`
--

CREATE TABLE `tbl_jual` (
  `nojual` varchar(10) NOT NULL,
  `tgljual` date NOT NULL,
  `jamjual` time NOT NULL,
  `itemjual` int(11) NOT NULL,
  `totaljual` int(11) NOT NULL,
  `dibayar` int(11) NOT NULL,
  `kembali` int(11) NOT NULL,
  `kodepelanggan` varchar(6) NOT NULL,
  `kodeadmin` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_jual`
--

INSERT INTO `tbl_jual` (`nojual`, `tgljual`, `jamjual`, `itemjual`, `totaljual`, `dibayar`, `kembali`, `kodepelanggan`, `kodeadmin`) VALUES
('J240529001', '2024-05-29', '18:21:05', 0, 6500, 10000, 3500, 'P001', 'ADM001'),
('J240529002', '2024-05-29', '19:36:16', 0, 325000, 350000, 25000, 'P001', 'ADM002'),
('J240529003', '2024-05-29', '22:17:57', 0, 355000, 400000, 45000, 'P002', 'ADM001'),
('J240530004', '2024-05-30', '12:03:26', 0, 6500, 10000, 3500, 'P002', 'ADM001'),
('J240530005', '2024-05-30', '12:04:22', 0, 6500, 10000, 3500, 'P005', 'ADM001'),
('J240530006', '2024-05-30', '16:08:20', 0, 357500, 400000, 42500, 'P010', 'ADM001');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pelanggan`
--

CREATE TABLE `tbl_pelanggan` (
  `kodepelanggan` varchar(6) NOT NULL,
  `namapelanggan` varchar(50) NOT NULL,
  `alamatpelanggan` varchar(100) NOT NULL,
  `telppelanggan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_pelanggan`
--

INSERT INTO `tbl_pelanggan` (`kodepelanggan`, `namapelanggan`, `alamatpelanggan`, `telppelanggan`) VALUES
('P001', 'Jonathan Wagyu A 5', 'Bandung Wetan sebelah Kidul', '0812345678'),
('P002', 'Ronaldo', 'Portugal belah Kulon', '0812345678'),
('P003', 'Udin', 'Jakarta sebelah Wetan', '081234567'),
('P004', 'Alexandro Ferguso', 'Italiano Prancis la  pulga', '02231443853'),
('P005', 'Christian', 'Cimanggunng SBG', '098341940'),
('P006', 'King Felipe', 'Raja Spanyol', '083918914'),
('P007', 'Princess Leonor', 'Istana Kerjaan Espana', '0914719049'),
('P008', 'King Salman', 'Arab Saudi', '081984914'),
('P009', 'Elon Musk', 'Amerika', '0989089047'),
('P010', 'Jusuf Hamka', 'Jalan Tol', '03173907');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`kodeadmin`);

--
-- Indexes for table `tbl_barang`
--
ALTER TABLE `tbl_barang`
  ADD PRIMARY KEY (`kodebarang`);

--
-- Indexes for table `tbl_jual`
--
ALTER TABLE `tbl_jual`
  ADD PRIMARY KEY (`nojual`);

--
-- Indexes for table `tbl_pelanggan`
--
ALTER TABLE `tbl_pelanggan`
  ADD PRIMARY KEY (`kodepelanggan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
