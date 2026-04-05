-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Apr 05, 2026 at 01:44 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE `bank` (
  `cardno` varchar(25) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `amount` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bank`
--

INSERT INTO `bank` (`cardno`, `date`, `type`, `amount`) VALUES
('505098109973156757', 'Sun Apr 05 12:36:14 IST 2026', 'Withdraw', '100'),
('505098109973156757', 'Sun Apr 05 12:42:17 IST 2026', 'Deposit', '1500'),
('505098109973156757', 'Sun Apr 05 12:42:21 IST 2026', 'Deposit', '1500'),
('505098109973156757', 'Sun Apr 05 12:43:03 IST 2026', 'Withdraw', '100'),
('505098109973156757', 'Sun Apr 05 12:43:55 IST 2026', 'Withdraw', '500'),
('505098109973156757', 'Sun Apr 05 12:44:10 IST 2026', 'Withdraw', '2000');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `formno` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `fname` varchar(200) NOT NULL,
  `dob` varchar(200) NOT NULL,
  `gender` varchar(200) NOT NULL,
  `phonenumber` varchar(200) NOT NULL,
  `city` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`formno`, `name`, `fname`, `dob`, `gender`, `phonenumber`, `city`) VALUES
('1569', 'dfghjkl;', 'sdfghjk.m,/', '19 Mar 2026', 'Female', '1234567890', 'mumbai'),
('9973', 'soumya', 'sdfghj', '1 Aug 2005', 'Male', '1234567890', 'sdfghjk');

-- --------------------------------------------------------

--
-- Table structure for table `signupsecond`
--

CREATE TABLE `signupsecond` (
  `formno` varchar(200) NOT NULL,
  `religion` varchar(200) NOT NULL,
  `category` varchar(200) NOT NULL,
  `income` varchar(200) NOT NULL,
  `education` varchar(200) NOT NULL,
  `occupation` varchar(200) NOT NULL,
  `pan` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `signupsecond`
--

INSERT INTO `signupsecond` (`formno`, `religion`, `category`, `income`, `education`, `occupation`, `pan`) VALUES
('1569', 'Hindu', 'General', '<5,00,000', 'Masters', 'Business', '123456789');

-- --------------------------------------------------------

--
-- Table structure for table `signupthree`
--

CREATE TABLE `signupthree` (
  `formno` varchar(20) NOT NULL,
  `accounttype` varchar(200) NOT NULL,
  `cardno` varchar(25) NOT NULL,
  `pinNo` varchar(10) NOT NULL,
  `facility` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `signupthree`
--

INSERT INTO `signupthree` (`formno`, `accounttype`, `cardno`, `pinNo`, `facility`) VALUES
('1569', 'savings Account', '505098109973156757', '4334', 'Internet Banking');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
