-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 10, 2021 at 07:55 AM
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
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(255) NOT NULL,
  `customername` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `customersubject` text NOT NULL,
  `customermessage` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `customername`, `email`, `customersubject`, `customermessage`) VALUES
(1, 'dishaaaaaa', '', '0', ''),
(2, 'dishaaaaaa', '', '0', ''),
(3, 'dishaaaaaa', 'disha@m', '2147483647', 'hii I am disha, a backend developer'),
(4, 'disha pasari', 'dishaa@yahoo.com', '2147483647', 'hiii i want enquire about other services, thankyou!'),
(5, 'disha pasari', 'dishaa@yahoo.com', '1234', 'hiii i want enquire about other services, thankyou!'),
(6, 'disha pasari', 'dishaa@yahoo.com', '2147483647', 'hiii i want enquire about other services, thankyou!'),
(7, 'disha pasari', 'dishaa@yahoo.com', '2147483647', 'hiii i want enquire about other services, thankyou!'),
(8, 'disha pasari', 'dishaa@yahoo.com', '12347860796876789', 'hiii i want enquire about other services, thankyou!'),
(9, 'disha pasari', 'dishaa@yahoo.com', '12347860796876789', 'hiii i want enquire about other services, thankyou! zz'),
(10, 'disha pasari', 'dishaa@yahoo.com', '9834565571', 'hiii i want enquire about other services, thankyou! zz'),
(11, 'Disha Pasari', 'dishapasari2504@gmail.com', '9999999', 'I want to enquire about other services.'),
(12, 'disha pasari', 'dishapasari2504@gmail.com', 'Enquiry', 'I want to enquire about blockchain services'),
(13, 'zzz', 'zzz', 'jhjyh', 'jfyj');

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

-- --------------------------------------------------------

--
-- Table structure for table `package`
--

CREATE TABLE `package` (
  `id` int(255) NOT NULL,
  `fname` text NOT NULL,
  `lname` text NOT NULL,
  `email` varchar(500) NOT NULL,
  `pack` text NOT NULL,
  `phone` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `package`
--

INSERT INTO `package` (`id`, `fname`, `lname`, `email`, `pack`, `phone`) VALUES
(1, 'disha ', 'pasari', 'dishapasari2504@gmail.com', 'Silver', '9834565571'),
(2, 'geetika', 'agrawal', 'geetika@gmail.com', 'Gold', '9518792908');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customize`
--
ALTER TABLE `customize`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package`
--
ALTER TABLE `package`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `customize`
--
ALTER TABLE `customize`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `package`
--
ALTER TABLE `package`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
