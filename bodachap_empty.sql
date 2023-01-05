-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2023 at 12:14 PM
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
  `user_id` int(11) NOT NULL,
  `model` varchar(200) NOT NULL,
  `platenumber` varchar(200) NOT NULL,
  `is_active` varchar(200) NOT NULL,
  `boda_picture` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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

-- --------------------------------------------------------

--
-- Table structure for table `document`
--

CREATE TABLE `document` (
  `document_id` int(11) NOT NULL,
  `rider_id` int(11) NOT NULL,
  `document_name` varchar(200) NOT NULL,
  `expiry_date` date NOT NULL,
  `doc_picture` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
