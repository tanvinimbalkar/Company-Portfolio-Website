-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 10, 2021 at 07:56 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lct`
--

-- --------------------------------------------------------

--
-- Table structure for table `customize`
--

CREATE TABLE `customize` (
  `id` int(11) NOT NULL,
  `companyname` text NOT NULL,
  `email` varchar(150) NOT NULL,
  `emailo` varchar(150) NOT NULL,
  `num` varchar(150) NOT NULL,
  `numo` varchar(150) NOT NULL,
  `title` text NOT NULL,
  `idea` text NOT NULL,
  `pay` varchar(500) NOT NULL,
  `designs` varchar(300) NOT NULL,
  `duration` int(255) NOT NULL,
  `involvement` varchar(200) NOT NULL,
  `frontframework` varchar(500) NOT NULL,
  `backframework` varchar(500) NOT NULL,
  `other` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customize`
--

INSERT INTO `customize` (`id`, `companyname`, `email`, `emailo`, `num`, `numo`, `title`, `idea`, `pay`, `designs`, `duration`, `involvement`, `frontframework`, `backframework`, `other`) VALUES
(53, 'google', 'zzzzz.com', 'aaa.com', '998899', '6956', 'gfifhid', 'jknfuihru', '2000', 'only design', 13, 'daily', 'a', 'z', 'www.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customize`
--
ALTER TABLE `customize`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customize`
--
ALTER TABLE `customize`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
