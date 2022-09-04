-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 04, 2022 at 11:25 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bank_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `Account_No` varchar(50) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Phone` varchar(11) NOT NULL,
  `Address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`Account_No`, `FirstName`, `LastName`, `Email`, `Phone`, `Address`) VALUES
('001', 'Peter', 'Ngugi', 'pngugi396@gmail.com', '0758276900', 'P.O BOX 1830 Thika'),
('002', 'Jack', 'Mweru', 'jackm@gmail.com', '0772284669', 'P.O BOX 2201 Meru'),
('003', 'Mary', 'Wanjiru', 'marwanjiru@gmail.com', '0724234567', 'P.O BOX 3701 Kisii'),
('004', 'Ezekiel', 'chege', 'echege@gmail.com', '0797108017', 'P.O BOX 1123 Nairobi'),
('005', 'David', 'Shanzu', 'dshanzu@gmail.com', '0720423764', 'P.O BOX 2345 Kericho'),
('006', 'John', 'Tumbo', 'jtumbo@gmail.com', '0777126541', 'P.O BOX 6755 Laikipia'),
('007', 'Chris', 'Kieni', 'chkieni@gmail.com', '078965430', 'P.O BOX 0987 Kitale'),
('008', 'Emanuel', 'Richard', 'emarich@gmail.com', '0734567890', 'P.O BOX 1216 Kajiado'),
('009', 'Martin', 'King', 'martking@gmail.com', '076543210', 'P.O BOX 4567 Limuru'),
('010', 'Jacob', 'Juma', 'jacob@gmail.com', '0768954320', 'P.O BOX 5901 Nakuru');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`Account_No`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
