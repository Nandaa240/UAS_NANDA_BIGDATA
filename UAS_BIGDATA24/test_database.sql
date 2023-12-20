-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 20, 2023 at 05:43 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `desa`
--

CREATE TABLE `desa` (
  `kode_kec` varchar(255) NOT NULL,
  `nama_kecamatan` varchar(255) DEFAULT NULL,
  `laki_laki` int(11) DEFAULT NULL,
  `perempuan` int(11) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `desa`
--

INSERT INTO `desa` (`kode_kec`, `nama_kecamatan`, `laki_laki`, `perempuan`, `jumlah`) VALUES
('', 'TOTAL', 74, 10, 84),
('611201', 'SUNGAI RAYA', 17, 6, 23),
('611202', 'KUALA MANDOR-B', 0, 0, 0),
('611203', 'SUNGAI AMBAWANG', 37, 4, 41),
('611204', 'TERENTANG', 0, 0, 0),
('611205', 'BATU AMPAR', 0, 0, 0),
('611206', 'KUBU', 0, 0, 0),
('611207', 'RASAU JAYA', 2, 0, 2),
('611208', 'TELUK PAKEDAI', 14, 0, 14),
('611209', 'SUNGAI KAKAP', 4, 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `jurusan` varchar(255) DEFAULT NULL,
  `nim` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nama`, `jurusan`, `nim`) VALUES
(1, 'John Doe', 'Teknik Informatika', '123456'),
(2, 'Jane Smith', 'Sistem Informasi', '789012'),
(3, 'Alice Johnson', 'Manajemen', '345678');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address_phone` varchar(255) DEFAULT NULL,
  `website_company` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `address_phone`, `website_company`) VALUES
(1, 'Leanne Graham', 'Bret', 'Sincere@april.biz', NULL, NULL),
(2, 'Ervin Howell', 'Antonette', 'Shanna@melissa.tv', NULL, NULL),
(3, 'Clementine Bauch', 'Samantha', 'Nathan@yesenia.net', NULL, NULL),
(4, 'Patricia Lebsack', 'Karianne', 'Julianne.OConner@kory.org', NULL, NULL),
(5, 'Chelsey Dietrich', 'Kamren', 'Lucio_Hettinger@annie.ca', NULL, NULL),
(6, 'Mrs. Dennis Schulist', 'Leopoldo_Corkery', 'Karley_Dach@jasper.info', NULL, NULL),
(7, 'Kurtis Weissnat', 'Elwyn.Skiles', 'Telly.Hoeger@billy.biz', NULL, NULL),
(8, 'Nicholas Runolfsdottir V', 'Maxime_Nienow', 'Sherwood@rosamond.me', NULL, NULL),
(9, 'Glenna Reichert', 'Delphine', 'Chaim_McDermott@dana.io', NULL, NULL),
(10, 'Clementina DuBuque', 'Moriah.Stanton', 'Rey.Padberg@karina.biz', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `desa`
--
ALTER TABLE `desa`
  ADD PRIMARY KEY (`kode_kec`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
