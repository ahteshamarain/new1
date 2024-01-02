-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 02, 2024 at 07:30 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shoppingcart`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `catid` int(11) NOT NULL,
  `catname` varchar(255) NOT NULL,
  `catdes` varchar(255) NOT NULL,
  `catstatus` varchar(255) NOT NULL,
  `catdate` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employeedata`
--

CREATE TABLE `employeedata` (
  `eid` int(11) NOT NULL,
  `efname` varchar(255) NOT NULL,
  `elname` varchar(255) NOT NULL,
  `eemail` varchar(255) NOT NULL,
  `epass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employeedata`
--

INSERT INTO `employeedata` (`eid`, `efname`, `elname`, `eemail`, `epass`) VALUES
(4, 'ahtesham', 'arain', 'ahtesham12@gmail.com', '$2y$10$VsDfSrP175YcpZnhwQQM6uyg.3OB2e1WEasIwHARBdS/A2GLUp9Um');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `pid` int(10) NOT NULL,
  `pname` varchar(255) NOT NULL,
  `pprice` varchar(255) NOT NULL,
  `pimage` varchar(255) NOT NULL,
  `pnumber` varchar(255) NOT NULL,
  `pcategory` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `userdata`
--

CREATE TABLE `userdata` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `userdata`
--

INSERT INTO `userdata` (`id`, `fname`, `lname`, `email`, `password`) VALUES
(41, 'Ava', 'Baker', 'ava.baker@example.com', 'password18'),
(42, 'Mason', 'Clark', 'mason.clark@example.com', 'password19'),
(43, 'Chloe', 'Evans', 'chloe.evans@example.com', 'password20'),
(44, 'John', 'Doe', 'john.doe@example.com', 'password1'),
(45, 'Jane', 'Smith', 'jane.smith@example.com', 'password2'),
(46, 'Mike', 'Johnson', 'mike.johnson@example.com', 'password3'),
(47, 'Emily', 'Brown', 'emily.brown@example.com', 'password4'),
(48, 'Chris', 'Anderson', 'chris.anderson@example.com', 'password5'),
(49, 'Sara', 'Williams', 'sara.williams@example.com', 'password6'),
(50, 'Alex', 'Taylor', 'alex.taylor@example.com', 'password7'),
(51, 'Olivia', 'Miller', 'olivia.miller@example.com', 'password8'),
(52, 'Daniel', 'Davis', 'daniel.davis@example.com', 'password9'),
(53, 'Sophia', 'Moore', 'sophia.moore@example.com', 'password10'),
(54, 'Matthew', 'White', 'matthew.white@example.com', 'password11'),
(55, 'Emma', 'Jones', 'emma.jones@example.com', 'password12'),
(56, 'William', 'Lee', 'william.lee@example.com', 'password13'),
(57, 'Grace', 'Turner', 'grace.turner@example.com', 'password14'),
(58, 'Benjamin', 'Wright', 'benjamin.wright@example.com', 'password15'),
(59, 'Lily', 'Adams', 'lily.adams@example.com', 'password16'),
(60, 'Ethan', 'Hill', 'ethan.hill@example.com', 'password17'),
(61, 'Ava', 'Baker', 'ava.baker@example.com', 'password18'),
(62, 'Mason', 'Clark', 'mason.clark@example.com', 'password19'),
(63, 'Chloe', 'Evans', 'chloe.evans@example.com', 'password20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`catid`);

--
-- Indexes for table `employeedata`
--
ALTER TABLE `employeedata`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `cat fk` (`pcategory`);

--
-- Indexes for table `userdata`
--
ALTER TABLE `userdata`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `catid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `employeedata`
--
ALTER TABLE `employeedata`
  MODIFY `eid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `pid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `userdata`
--
ALTER TABLE `userdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
