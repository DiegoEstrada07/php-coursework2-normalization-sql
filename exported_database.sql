-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 11, 2026 at 08:36 PM
-- Server version: 8.0.45
-- PHP Version: 8.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coursework`
--

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `Deptcode` varchar(5) COLLATE utf8mb4_general_ci NOT NULL,
  `Deptlocation` varchar(100) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`Deptcode`, `Deptlocation`) VALUES
('1A', 'Lemery'),
('1B', 'New York'),
('1C', 'Pointe-a-Pitre'),
('2A', 'Tokyo'),
('2B', 'Changhua'),
('2C', 'Berlin'),
('3A', 'London'),
('3B', 'Toronto'),
('3D', 'Sidokumpul'),
('4B', 'Lilla Edet');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `Empno` int NOT NULL,
  `Name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `Job` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `Hiredate` date NOT NULL,
  `Salary` decimal(10,2) NOT NULL,
  `Deptcode` varchar(5) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`Empno`, `Name`, `Job`, `Hiredate`, `Salary`, `Deptcode`) VALUES
(1001, 'Benjamin Miguet', 'Programmer IV', '2019-10-25', 133608.91, '3D'),
(1002, 'Biddy Coppock', 'Health Coach II', '2016-12-09', 135302.24, '1C'),
(1003, 'Desmond Ogbourne', 'Senior Cost Accountant', '2020-03-24', 55991.73, '4B'),
(1004, 'Marita Dubery', 'Executive Secretary', '2019-03-13', 53720.04, '1A'),
(1005, 'Meg Holleran', 'Executive Secretary', '2014-10-20', 73794.50, '2B'),
(1006, 'John Peterson', 'Software Engineer', '2021-01-15', 85000.00, '3A'),
(1007, 'Emily Watson', 'HR Manager', '2018-07-19', 92000.00, '1B'),
(1008, 'Daniel Cruz', 'Network Administrator', '2017-03-11', 68000.00, '2A'),
(1009, 'Sophia Turner', 'Accountant', '2022-05-10', 61000.00, '4B'),
(1010, 'Michael Brown', 'Marketing Specialist', '2019-09-01', 72000.00, '3B'),
(1011, 'Olivia Smith', 'Software Engineer', '2020-02-12', 87000.00, '3A'),
(1012, 'Liam Johnson', 'Sales Manager', '2015-11-25', 99000.00, '1B'),
(1013, 'Noah Williams', 'Database Administrator', '2018-08-14', 91000.00, '2C'),
(1014, 'Ava Jones', 'Graphic Designer', '2021-06-18', 58000.00, '3B'),
(1015, 'Isabella Garcia', 'Project Manager', '2017-12-01', 105000.00, '3D'),
(1016, 'Mason Miller', 'IT Support', '2019-04-23', 54000.00, '2A'),
(1017, 'Lucas Davis', 'Business Analyst', '2020-10-30', 76000.00, '1C'),
(1018, 'Mia Rodriguez', 'Content Writer', '2022-01-05', 50000.00, '2B'),
(1019, 'Ethan Martinez', 'Cybersecurity Analyst', '2018-06-09', 94000.00, '2C'),
(1020, 'Charlotte Hernandez', 'Recruiter', '2016-03-17', 63000.00, '1B'),
(1021, 'Amelia Lopez', 'Financial Analyst', '2019-08-27', 78000.00, '4B'),
(1022, 'James Gonzalez', 'Operations Manager', '2017-02-20', 98000.00, '3A'),
(1023, 'Benjamin Wilson', 'System Analyst', '2021-09-12', 82000.00, '3D'),
(1024, 'Harper Anderson', 'UI Designer', '2020-07-16', 69000.00, '3B'),
(1025, 'Elijah Thomas', 'Data Scientist', '2023-01-08', 115000.00, '2C');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`Deptcode`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`Empno`),
  ADD KEY `fk_department` (`Deptcode`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `fk_department` FOREIGN KEY (`Deptcode`) REFERENCES `department` (`Deptcode`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
