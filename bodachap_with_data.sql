-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 05, 2023 at 12:39 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bodachap`
--

-- --------------------------------------------------------

--
-- Table structure for table `boda`
--

CREATE TABLE `boda` (
  `boda_id` int(11) NOT NULL,
  `rider_id` int(11) NOT NULL,
  `model` varchar(200) NOT NULL,
  `platenumber` varchar(200) NOT NULL,
  `is_active` varchar(200) NOT NULL,
  `boda_picture` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `boda`
--

INSERT INTO `boda` (`boda_id`, `rider_id`, `model`, `platenumber`, `is_active`, `boda_picture`) VALUES
(1, 100, 'TVS', 'AB134ZNZ', '1', ''),
(2, 100, 'Watcon', 'BA257ZNZ', '1', ''),
(3, 101, 'Boxer', 'DA290ZNZ', '1', NULL),
(4, 103, 'PCX', 'DF285ZNZ', '1', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `isActive` int(11) NOT NULL,
  `last_trip_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `user_id`, `isActive`, `last_trip_date`) VALUES
(100, 1, 1, '2023-01-01 12:31:53'),
(101, 3, 1, '2023-01-02 12:31:53'),
(103, 7, 1, '2023-01-03 12:31:53'),
(104, 8, 1, '2023-01-02 12:31:53');

-- --------------------------------------------------------

--
-- Table structure for table `document`
--

CREATE TABLE `document` (
  `document_id` varchar(200) NOT NULL,
  `rider_id` int(11) NOT NULL,
  `document_name` varchar(200) NOT NULL,
  `expiry_date` date NOT NULL,
  `doc_picture` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `document`
--

INSERT INTO `document` (`document_id`, `rider_id`, `document_name`, `expiry_date`, `doc_picture`) VALUES
('1', 100, 'Leseni', '2024-01-05', NULL),
('2', 100, 'BodaCard', '2024-01-01', NULL),
('3', 101, 'Leseni', '2023-01-31', NULL),
('4', 101, 'BodaChap', '2023-01-24', NULL),
('5', 103, 'Leseni', '2023-01-20', NULL),
('6', 103, 'BodaChap', '2023-01-15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rider`
--

CREATE TABLE `rider` (
  `rider_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `isActive` int(11) NOT NULL,
  `last_trip_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rider`
--

INSERT INTO `rider` (`rider_id`, `user_id`, `isActive`, `last_trip_date`) VALUES
(100, 2, 1, '2023-01-05 10:37:06'),
(101, 5, 1, '2023-01-05 10:37:06'),
(103, 6, 1, '2023-01-05 10:37:06');

-- --------------------------------------------------------

--
-- Table structure for table `trip`
--

CREATE TABLE `trip` (
  `trip_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `rider_id` int(11) NOT NULL,
  `trip_requested_time` datetime NOT NULL DEFAULT current_timestamp(),
  `trip_wait_time` datetime NOT NULL,
  `source` varchar(200) NOT NULL,
  `destination` varchar(200) NOT NULL,
  `tripStatus` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trip`
--

INSERT INTO `trip` (`trip_id`, `customer_id`, `rider_id`, `trip_requested_time`, `trip_wait_time`, `source`, `destination`, `tripStatus`) VALUES
(1, 100, 100, '2023-01-05 12:44:08', '2023-01-05 10:40:50', 'Fuoni', 'Mwanakwerekwer', 1),
(2, 101, 101, '2023-01-05 12:44:08', '2023-01-05 10:40:50', 'Mombasa', 'Kisauni', 1),
(3, 103, 103, '2023-01-05 13:08:16', '2023-01-05 11:06:27', 'Forodhani', 'Jangombe', 1),
(4, 104, 100, '2023-01-05 13:08:16', '2023-01-05 11:06:27', 'Kilimani', 'Migombani', 1),
(5, 100, 101, '2023-01-05 13:11:48', '2023-01-05 11:06:27', 'Michenzani', 'Kariakoo', 1),
(6, 101, 103, '2023-01-05 13:11:48', '2023-01-05 11:06:27', 'Mpendae', 'Kwamchina', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `middlename` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `status` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `phonenumber` varchar(200) NOT NULL,
  `center` varchar(200) NOT NULL,
  `region` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `firstname`, `middlename`, `lastname`, `username`, `password`, `status`, `address`, `phonenumber`, `center`, `region`) VALUES
(1, 'Abubakar', 'Yussuf', 'Omar', 'abuu', '123', 'customer', 'mombasa', '778012233', 'Jumbi', 'Kusini'),
(2, 'Ali', 'Juma', 'Shamhuna', 'ali', '123', 'rider', 'Kisauni', '778665544', 'Kisonge', 'Mjini-Magharibi'),
(3, 'Assaa', 'Hassan', 'Omar', 'asaa', '123', 'customer', 'mombasa', '778012233', 'Nungwi', 'Kasikazini'),
(4, 'Iddi', 'Juma', 'Shamhuna', 'admin', '123', 'admin', 'Kisauni', '778665544', 'Kisonge', 'Mjini-Magharibi'),
(5, 'Othamn', 'Yussuf', 'Omar', 'abuu', '123', 'rider', 'mombasa', '778012233', 'Jumbi', 'Kusini'),
(6, 'Asha', 'Juma', 'Shamhuna', 'ali', '123', 'rider', 'Kisauni', '778665544', 'Kisonge', 'Kusini'),
(7, 'Isaa', 'Yussuf', 'Omar', 'abuu', '123', 'customer', 'mombasa', '778012233', 'Jumbi', 'Kusini'),
(8, 'Amina', 'Juma', 'Shamhuna', 'ali', '123', 'customer', 'Kisauni', '778665544', 'Kisonge', 'Kasikazini');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `boda`
--
ALTER TABLE `boda`
  ADD PRIMARY KEY (`boda_id`),
  ADD KEY `rider_id` (`rider_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `document`
--
ALTER TABLE `document`
  ADD PRIMARY KEY (`document_id`),
  ADD KEY `rider_id` (`rider_id`);

--
-- Indexes for table `rider`
--
ALTER TABLE `rider`
  ADD PRIMARY KEY (`rider_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `trip`
--
ALTER TABLE `trip`
  ADD PRIMARY KEY (`trip_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `rider_id` (`rider_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `boda`
--
ALTER TABLE `boda`
  MODIFY `boda_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `trip`
--
ALTER TABLE `trip`
  MODIFY `trip_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `boda`
--
ALTER TABLE `boda`
  ADD CONSTRAINT `boda_ibfk_1` FOREIGN KEY (`rider_id`) REFERENCES `rider` (`rider_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `document`
--
ALTER TABLE `document`
  ADD CONSTRAINT `document_ibfk_1` FOREIGN KEY (`rider_id`) REFERENCES `rider` (`rider_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rider`
--
ALTER TABLE `rider`
  ADD CONSTRAINT `rider_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `trip`
--
ALTER TABLE `trip`
  ADD CONSTRAINT `trip_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `trip_ibfk_2` FOREIGN KEY (`rider_id`) REFERENCES `rider` (`rider_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
