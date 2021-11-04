-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 04, 2021 at 03:16 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toycompany`
--

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `department_id` int(11) NOT NULL,
  `department_name` varchar(30) NOT NULL,
  `location_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`department_id`, `department_name`, `location_id`) VALUES
(1, 'Administration', 1700),
(2, 'Marketing', 1800),
(3, 'Purchasing', 1700),
(4, 'Human Resources', 2400),
(5, 'Shipping', 1500),
(6, 'IT', 1400),
(7, 'Public Relations', 2700),
(8, 'Sales', 2500),
(9, 'Executive', 1700),
(10, 'Finance', 1700),
(11, 'Accounting', 1700);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `employeeNumber` int(11) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `extension` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `officeCode` varchar(10) NOT NULL,
  `jobTitle` varchar(50) NOT NULL,
  `department_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`employeeNumber`, `lastName`, `firstName`, `extension`, `email`, `officeCode`, `jobTitle`, `department_id`) VALUES
(1002, 'Murphy', 'Diane', 'x5800', 'dmurphy@classicmodelcars.com', '1', 'President', 2),
(1056, 'Patterson', 'Mary', 'x4611', 'mpatterso@classicmodelcars.com', '1', 'VP Sales', 1),
(1076, 'Firrelli', 'Jeff', 'x9273', 'jfirrelli@classicmodelcars.com', '1', 'VP Marketing', 4),
(1088, 'Patterson', 'William', 'x4871', 'wpatterson@classicmodelcars.com', '6', 'Sales Manager (APAC)', 3),
(1102, 'Bondur', 'Gerard', 'x5408', 'gbondur@classicmodelcars.com', '4', 'Sale Manager (EMEA)', 5),
(1143, 'Bow', 'Anthony', 'x5428', 'abow@classicmodelcars.com', '1', 'Sales Manager (NA)', 8),
(1165, 'Jennings', 'Leslie', 'x3291', 'ljennings@classicmodelcars.com', '1', 'Sales Rep', 7),
(1166, 'Thompson', 'Leslie', 'x4065', 'lthompson@classicmodelcars.com', '1', 'Sales Rep', 8),
(1188, 'Firrelli', 'Julie', 'x2173', 'jfirrelli@classicmodelcars.com', '2', 'Sales Rep', 9),
(1216, 'Patterson', 'Steve', 'x4334', 'spatterson@classicmodelcars.com', '2', 'Sales Rep', 10),
(1286, 'Tseng', 'Foon Yue', 'x2248', 'ftseng@classicmodelcars.com', '3', 'Sales Rep', 11),
(1323, 'Vanauf', 'George', 'x4102', 'gvanauf@classicmodelcars.com', '3', 'Sales Rep', NULL),
(1337, 'Bondur', 'Loui', 'x6493', 'lbondur@classicmodelcars.com', '4', 'Sales Rep', NULL),
(1370, 'Hernandez', 'Gerard', 'x2028', 'ghernande@classicmodelcars.com', '4', 'Sales Rep', NULL),
(1401, 'Castillo', 'Pamela', 'x2759', 'pcastillo@classicmodelcars.com', '4', 'Sales Rep', NULL),
(1501, 'Bott', 'Larry', 'x2311', 'lbott@classicmodelcars.com', '7', 'Sales Rep', NULL),
(1504, 'Jones', 'Barry', 'x102', 'bjones@classicmodelcars.com', '7', 'Sales Rep', NULL),
(1611, 'Fixter', 'Andy', 'x101', 'afixter@classicmodelcars.com', '6', 'Sales Rep', NULL),
(1612, 'Marsh', 'Peter', 'x102', 'pmarsh@classicmodelcars.com', '6', 'Sales Rep', NULL),
(1619, 'King', 'Tom', 'x103', 'tking@classicmodelcars.com', '6', 'Sales Rep', NULL),
(1621, 'Nishi', 'Mami', 'x101', 'mnishi@classicmodelcars.com', '5', 'Sales Rep', NULL),
(1625, 'Kato', 'Yoshimi', 'x102', 'ykato@classicmodelcars.com', '5', 'Sales Rep', NULL),
(1702, 'Gerard', 'Martin', 'x2312', 'mgerard@classicmodelcars.com', '4', 'Sales Rep', NULL),
(2077, 'Banas', 'Derek', '1234', 'Derek.Banas@ymail.com', 'TOR', 'Job Level 1', NULL),
(2078, 'dushh', 'dum', '1234', 'dum.dushh@ymail.com', 'TOR', 'Job Level 1', NULL),
(2079, 'shaaa', 'shushh', '1234', 'shushh.shaaa@ymail.com', 'TOR', 'Job Level 1', NULL),
(2080, 'watson', 'shane', '1234', 'shane.watson@ymail.com', 'TOR', 'Job Level 1', NULL),
(2081, 'shane', '', '1234', '.shane@ymail.com', 'TOR', 'Job Level 1', NULL),
(2082, 'broad', 'stuart', '1234', 'stuart.broad@ymail.com', 'TOR', 'Job Level 1', NULL),
(2083, 'kohli', 'virat', '1234', 'virat.kohli@ymail.com', 'TOR', 'Job Level 1', NULL),
(2084, 'watson', 'sri', '1234', 'sri.watson@ymail.com', 'TOR', 'Job Level 1', NULL),
(2085, 'perelgut', 'stephen', '1234', 'stephen.perelgut@ymail.com', 'TOR', 'Job Level 1', NULL),
(2086, 'Watson', 'Shane', '1234', 'Shane.Watson@ymail.com', 'TOR', 'Job Level 1', NULL),
(2087, 'Anderson', 'James', '1234', 'James.Anderson@ymail.com', 'TOR', 'Job Level 1', NULL),
(2088, 'Pollock', 'Shaun', '1234', 'Shaun.Pollock@ymail.com', 'TOR', 'Job Level 1', NULL),
(2089, 'Cronje', 'Hansi', '1234', 'Hansi.Cronje@ymail.com', 'TOR', 'Job Level 1', NULL),
(2090, 'Watson', 'Shane', '1234', 'Shane.Watson@ymail.com', 'TOR', 'Job Level 1', NULL),
(2091, 'Anderson', 'James', '1234', 'James.Anderson@ymail.com', 'TOR', 'Job Level 1', NULL),
(2092, 'Pollock', 'Shaun', '1234', 'Shaun.Pollock@ymail.com', 'TOR', 'Job Level 1', NULL),
(2093, 'Cronje', 'Hansi', '1234', 'Hansi.Cronje@ymail.com', 'TOR', 'Job Level 1', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`department_id`),
  ADD KEY `location_id` (`location_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`employeeNumber`),
  ADD KEY `department_id` (`department_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `employeeNumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2094;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `departments` (`department_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
