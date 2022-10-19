-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 24, 2022 at 11:36 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ChicklaxUser`
--

-- --------------------------------------------------------

--
-- Table structure for table `chickUsers`
--

CREATE TABLE `chickUsers` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chickUsers`
--

INSERT INTO `chickUsers` (`id`, `user_id`, `username`, `password`, `date`) VALUES
(1, 20782025524094431, 'adi@gmail.com', 'Donkey', '2022-03-30 22:43:39'),
(19, 24784457, 'aadi', 'ram', '2022-04-17 18:54:18'),
(20, 1299142940, 'aaditya', 'ram', '2022-04-19 20:44:05'),
(21, 7168681396773018858, 'drbei', '12345', '2022-04-23 18:58:20');

-- --------------------------------------------------------

--
-- Table structure for table `customerdata`
--

CREATE TABLE `customerdata` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customerdata`
--

INSERT INTO `customerdata` (`id`, `name`, `email`, `address`, `contact`, `password`) VALUES
(1, 'ram', 'ram@sita.com', 'ayodhya', '123232323', ''),
(2, 'hhh', ',bmbm', '', '', ''),
(3, 'abdul', 'abbu@dull', '123 gaxaly zone', '789456123', ''),
(4, 'Aaditya Mahato', 'ranjan.aaditya5@gmail.com', '4510 common stret', '12333', ''),
(5, 'Aaditya Ranjan Mahato', 'ranjan.aaditya5@gmail.com', '4131 W Northgate drive 1506', '12233', 'wewe');

-- --------------------------------------------------------

--
-- Table structure for table `userinfodata`
--

CREATE TABLE `userinfodata` (
  `id` int(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userinfodata`
--

INSERT INTO `userinfodata` (`id`, `user`, `email`, `contact`, `address`) VALUES
(1, 'aadi', 'ran@gaa', '345454', '23 erere'),
(2, 'aaditya', 'ranjan.aaditya5@gmail.com', '67912354', '123 texas street'),
(3, 'samrat', 'samrat@ymail.com', '1233212321', '123 texas street'),
(4, 'abdu;', 'abuu@dul', '12312', 'ewrewrfndjkn');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chickUsers`
--
ALTER TABLE `chickUsers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `date` (`date`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `customerdata`
--
ALTER TABLE `customerdata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userinfodata`
--
ALTER TABLE `userinfodata`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chickUsers`
--
ALTER TABLE `chickUsers`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `customerdata`
--
ALTER TABLE `customerdata`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `userinfodata`
--
ALTER TABLE `userinfodata`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
