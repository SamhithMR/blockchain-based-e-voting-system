-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2023 at 10:08 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aadhar`
--

-- --------------------------------------------------------

--
-- Table structure for table `aadhar_info`
--

CREATE TABLE `aadhar_info` (
  `Name` varchar(30) NOT NULL,
  `Aadharno` int(14) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Phoneno` int(20) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Dob` date DEFAULT NULL,
  `Is_registered` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `aadhar_info`
--

INSERT INTO `aadhar_info` (`Name`, `Aadharno`, `Email`, `Phoneno`, `Gender`, `Dob`, `Is_registered`) VALUES
('darshan', 1234567814, 'seselir328@jobbrett.com', 1111111111, 'M', '2001-10-03', 'YES'),
('rudresh', 1990102851, 'zugycyqy@finews.biz', 1111111112, 'M', '2001-05-12', 'YES'),
('bhuvan', 1990102853, 'valtidiste@gufum.com', 1111111113, 'M', '2001-05-16', 'YES');

-- --------------------------------------------------------

--
-- Table structure for table `registered_users`
--

CREATE TABLE `registered_users` (
  `Account_address` varchar(70) NOT NULL,
  `Is_registered` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registered_users`
--

INSERT INTO `registered_users` (`Account_address`, `Is_registered`) VALUES
('0xA07D57020cE4ac458785013F0C97a29390AD9F29', 'Yes'),
('0x9385F7afe5B502d9E03Ac75Ab34d67a95D93A3ec', 'Yes'),
('0x4D419E33765207FF6d1D4F02302a64d59b9f1157', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `email_address` varchar(30) NOT NULL,
  `gender` varchar(30) DEFAULT NULL,
  `password` varchar(30) NOT NULL,
  `confirm_password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`first_name`, `last_name`, `email_address`, `gender`, `password`, `confirm_password`) VALUES
('darshan', NULL, 'seselir328@jobbrett.com', NULL, 'darshan', 'darshan'),
('admin', 'admin', 'admin@admin.com', 'M', 'admin', 'admin'),
('bhuvan', NULL, 'valtidiste@gufum.com', NULL, 'bhuvan', 'bhuvan'),
('rudresh', NULL, 'zugycyqy@finews.biz', NULL, 'rudresh', 'rudresh');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
