-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2024 at 08:25 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_galery`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `albumid` int(11) NOT NULL,
  `namaalbum` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `tanggaldibuat` date NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`albumid`, `namaalbum`, `deskripsi`, `tanggaldibuat`, `userid`) VALUES
(53, 'asdas', 'asd', '2024-01-24', 1),
(55, 'asdas', 'sads', '2024-01-24', 1),
(63, 'bunga matahari', '2 tangkai', '2024-01-30', 1),
(66, 'bungga', '124666', '2024-01-30', 24),
(67, 'hahahah', 'bug', '2024-01-30', 24),
(69, 'salsabila', 'cantikkke', '2024-02-06', 25),
(70, 'pasa', 'cantukkkkkkkkkkkk', '2024-02-06', 25),
(71, 'bungga', 'bagus', '2024-02-07', 26),
(78, 'r6irur6ur6u', 'r6ur', '2024-02-13', 28),
(79, 'hehehhe12', 'hah', '2024-02-15', 23),
(80, 'haah', 'saehjhgy d', '2024-02-16', 23),
(81, 'taehyung', 'v', '2024-02-16', 23),
(82, 'bungga', 'kenanganku', '2024-02-16', 23),
(83, 'bungga', 'bagus', '2024-02-19', 23),
(84, 'salsabila', 'foto1', '2024-02-20', 29),
(85, 'taehyung', 'salsabila', '2024-02-20', 29),
(86, 'bungga', 'bagus', '2024-02-21', 30),
(87, 'fotoku', 'kenangan', '2024-02-22', 31),
(88, 'taehyung', 'v', '2024-02-22', 31);

-- --------------------------------------------------------

--
-- Table structure for table `foto`
--

CREATE TABLE `foto` (
  `fotoid` int(11) NOT NULL,
  `judulfoto` varchar(255) NOT NULL,
  `deskripsifoto` text NOT NULL,
  `tanggalunggah` date NOT NULL,
  `lokasifile` varchar(255) NOT NULL,
  `albumid` int(11) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `foto`
--

INSERT INTO `foto` (`fotoid`, `judulfoto`, `deskripsifoto`, `tanggalunggah`, `lokasifile`, `albumid`, `userid`) VALUES
(33, 'foto1', 'tai kotok', '2024-02-16', '932248099_taehyungpacarsalsabp.jpg', 86, 23),
(35, 'foto1', 'tai kotok', '2024-02-19', '932248099_taehyungpacarsalsabp.jpg', 86, 23),
(37, 'foto1', 'tai kotok', '2024-02-20', '932248099_taehyungpacarsalsabp.jpg', 86, 29),
(39, 'foto1', 'tai kotok', '2024-02-21', '932248099_taehyungpacarsalsabp.jpg', 86, 30),
(40, 'rr', 'r', '2024-02-21', '1921031071_vpacarsalsa.jpg', 86, 30),
(41, 'salsabila', 'haiiii', '2024-02-22', '688150821_salsa2.jpeg', 86, 30),
(42, 'salsa1', 'foto1', '2024-02-22', '517799525_61494482_salsa2.jpeg', 87, 31),
(43, 'tehyung1', 'foto1', '2024-02-22', '1244386612_84273831_images.jpg', 88, 31),
(44, 'taehyung2', 'foto2', '2024-02-22', '1998185419_338245194_vpacarsalsa.jpg', 88, 31);

-- --------------------------------------------------------

--
-- Table structure for table `komentarfoto`
--

CREATE TABLE `komentarfoto` (
  `komentarid` int(11) NOT NULL,
  `fotoid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `isikomentar` text NOT NULL,
  `tanggalkomentar` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `komentarfoto`
--

INSERT INTO `komentarfoto` (`komentarid`, `fotoid`, `userid`, `isikomentar`, `tanggalkomentar`) VALUES
(8, 33, 23, 'nnn', '2024-02-16'),
(9, 33, 23, 'whyy', '2024-02-16'),
(10, 33, 23, '', '2024-02-16'),
(11, 40, 30, 'dh', '2024-02-21'),
(12, 33, 30, 'haii❤', '2024-02-22'),
(13, 41, 30, 'cantikkk nyeeeee😍😍😍', '2024-02-22'),
(14, 41, 30, '😍😍😍', '2024-02-22');

-- --------------------------------------------------------

--
-- Table structure for table `likefoto`
--

CREATE TABLE `likefoto` (
  `likeid` int(11) NOT NULL,
  `fotoid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `tanggallike` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `likefoto`
--

INSERT INTO `likefoto` (`likeid`, `fotoid`, `userid`, `tanggallike`) VALUES
(12, 33, 23, '2024-02-16'),
(13, 33, 1, '2024-02-16'),
(14, 35, 23, '2024-02-19'),
(15, 37, 30, '2024-02-21'),
(16, 41, 31, '2024-02-22'),
(17, 39, 31, '2024-02-22'),
(18, 40, 31, '2024-02-22'),
(19, 42, 31, '2024-02-22'),
(20, 44, 31, '2024-02-22'),
(21, 43, 31, '2024-02-22'),
(22, 39, 30, '2024-02-23');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `namalengkap` varchar(255) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `username`, `password`, `email`, `namalengkap`, `alamat`) VALUES
(1, 'naruto', '123', 'naruto@gamil.com', 'D', 'sxssds'),
(2, 'sasuke', '321', 'sasuke@gmail.com', 'sasdd', 'rgerg'),
(3, 'tes', '432', 'naruto@gamil.com', 'D', 'sxssds'),
(4, 'ino', '567', 'ino@gmail.com', 'ino yamanaka', 'konoha'),
(5, 'Salsabila', '321', 'salsabilapasa6@gmail.com', 'salsabilapasa', 'cikukul'),
(7, 'fajrul', '321', 'haha1234@gmail.com', 'admin', 'cikukul'),
(8, 'andi gendut', '12345', 'gendut@gmail.com', 'andi agus', 'prindapan'),
(9, 'andi gendut', '12345', 'gendut@gmail.com', 'andi agus', 'prindapan'),
(17, 'susi', '123', 'haha1234@gmail.com', 'dcg', 'dht'),
(18, 'admin', 'admin', 'admin@gmail.com', 'admin', 'garut'),
(19, 'abel', '12345', 'haha1234@gmail.com', 'abel', 'cikukuk'),
(21, 'salsabp', '000', 'salsabilapasa6@gmail.com', 'salsabila', 'kpcikukuk'),
(23, 'Salsabila', '888', 'salsabilapasa6@gmail.com', 'salsabilapasa', 'kpcikukuk'),
(24, 'andiw', '111', 'salsabilapasa6@gmail.com', 'andigendut', 'kpcikukuk'),
(25, 'abell', '111', 'haha1234@gmail.com', 'abell', 'kpcikukuk'),
(26, '', '', '', '', ''),
(27, 'Salsabila', '13', 'salsabilapasa6@gmail.com', 'salsabila', 'kpcikukuk'),
(28, '12', '12', 'salsabilapasa6@gmail.com', 'andini ar', 'prindapan'),
(29, 'salsabp', '202cb962ac59075b964b07152d234b70', 'rahmarahayu240@gmail.com', 'salsabila', 'cikukuk'),
(30, 'Salsabila', '202cb962ac59075b964b07152d234b70', 'haha1234@gmail.com', 'salsabilapasa', 'kpcikukuk'),
(31, 'salsabila pasa', 'e807f1fcf82d132f9bb018ca6738a19f', 'salsabilapasa@gmail.com', 'salsabila pasa', 'kp.cikukuk');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`albumid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `foto`
--
ALTER TABLE `foto`
  ADD PRIMARY KEY (`fotoid`),
  ADD KEY `albumid` (`albumid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `komentarfoto`
--
ALTER TABLE `komentarfoto`
  ADD PRIMARY KEY (`komentarid`),
  ADD KEY `fotoid` (`fotoid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `likefoto`
--
ALTER TABLE `likefoto`
  ADD PRIMARY KEY (`likeid`),
  ADD KEY `fotoid` (`fotoid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `albumid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `foto`
--
ALTER TABLE `foto`
  MODIFY `fotoid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `komentarfoto`
--
ALTER TABLE `komentarfoto`
  MODIFY `komentarid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `likefoto`
--
ALTER TABLE `likefoto`
  MODIFY `likeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `album`
--
ALTER TABLE `album`
  ADD CONSTRAINT `album_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `foto`
--
ALTER TABLE `foto`
  ADD CONSTRAINT `foto_ibfk_1` FOREIGN KEY (`albumid`) REFERENCES `album` (`albumid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `foto_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `komentarfoto`
--
ALTER TABLE `komentarfoto`
  ADD CONSTRAINT `komentarfoto_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `komentarfoto_ibfk_2` FOREIGN KEY (`fotoid`) REFERENCES `foto` (`fotoid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `likefoto`
--
ALTER TABLE `likefoto`
  ADD CONSTRAINT `likefoto_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `likefoto_ibfk_2` FOREIGN KEY (`fotoid`) REFERENCES `foto` (`fotoid`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
