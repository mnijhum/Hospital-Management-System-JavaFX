-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2020 at 02:08 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `pass` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `pass`, `email`, `phone`) VALUES
(1, NULL, NULL, NULL, NULL),
(2, 'jinnat', '', '', ''),
(3, NULL, NULL, NULL, NULL),
(4, NULL, NULL, NULL, NULL),
(5, NULL, NULL, NULL, NULL),
(6, 'morol', '1122', 'morol@', '0199323'),
(7, 'sdrg', 'dsh', 'dfh', 'dsfh'),
(8, 'my', '12', 'my', 'ee'),
(9, 'parvas', '8899', 'par@gmail.com', '019893445'),
(10, 'aaa', 'aa', 'aa', 'aa'),
(11, 'mora morol', 'nai123', 'morol@gmail.com', '01679356842'),
(12, 'aa', 'aa', 'aa', 'aa'),
(13, 'sajon', 'aa', 'sajon', '0190389745'),
(14, 'qq', 'qq', 'qq', 'qq'),
(15, 'rubel', '777888', 'rubel', '01722'),
(16, 'n', 'n', 'nzhm', '01');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `DId` varchar(10) NOT NULL,
  `FirstName` varchar(45) NOT NULL,
  `LastName` varchar(45) NOT NULL,
  `Age` varchar(45) NOT NULL,
  `Date1` varchar(45) NOT NULL,
  `Phone` varchar(45) NOT NULL,
  `Gender` varchar(45) NOT NULL,
  `Specialist` varchar(45) NOT NULL,
  `Salary` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`DId`, `FirstName`, `LastName`, `Age`, `Date1`, `Phone`, `Gender`, `Specialist`, `Salary`) VALUES
('1', 'Mush', 'Fik', '22', '2018-04-20', '019238733', 'Male', 'spine', '40000'),
('2', 'Samsad', 'Farzana', '30', '2020-12-01', '01666666', 'Female', 'Surgery', '20000');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `PId` varchar(45) NOT NULL,
  `FirstName` varchar(45) DEFAULT NULL,
  `LastName` varchar(45) DEFAULT NULL,
  `Age` varchar(45) DEFAULT NULL,
  `Date3` varchar(45) DEFAULT NULL,
  `Gender` varchar(45) DEFAULT NULL,
  `Phone` varchar(45) DEFAULT NULL,
  `Problem` varchar(45) DEFAULT NULL,
  `RId` varchar(45) DEFAULT NULL,
  `Cost` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`PId`, `FirstName`, `LastName`, `Age`, `Date3`, `Gender`, `Phone`, `Problem`, `RId`, `Cost`) VALUES
('1', 'abu', 'haidar', '30', '2020-12-03', 'Male', '0122222', 'Fever', '1', '1000'),
('2', 'Abul', 'Miya', '45', '2020-12-03', 'Male', '000000', 'Cough', '2', '2000');

-- --------------------------------------------------------

--
-- Table structure for table `reception`
--

CREATE TABLE `reception` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reception`
--

INSERT INTO `reception` (`id`, `name`, `password`, `email`, `phone`) VALUES
(1, 'aa', 'aa', 'aa', '4366');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `RId` varchar(45) NOT NULL,
  `ProblemType` varchar(45) DEFAULT NULL,
  `DId` varchar(45) DEFAULT NULL,
  `DoctorName` varchar(45) DEFAULT NULL,
  `SId` varchar(45) DEFAULT NULL,
  `StaffName` varchar(45) DEFAULT NULL,
  `StaffWorkType` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`RId`, `ProblemType`, `DId`, `DoctorName`, `SId`, `StaffName`, `StaffWorkType`) VALUES
('1', 'Fever', '1', 'Mush', '1', 'sumi', 'aktar');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `SId` varchar(45) NOT NULL,
  `FirstName` varchar(45) DEFAULT NULL,
  `LastName` varchar(45) DEFAULT NULL,
  `Age` varchar(45) DEFAULT NULL,
  `Date2` varchar(45) DEFAULT NULL,
  `Phone` varchar(45) DEFAULT NULL,
  `Gender` varchar(45) DEFAULT NULL,
  `WorkType` varchar(45) DEFAULT NULL,
  `Salary` varchar(45) DEFAULT NULL,
  `InoutTime` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`SId`, `FirstName`, `LastName`, `Age`, `Date2`, `Phone`, `Gender`, `WorkType`, `Salary`, `InoutTime`) VALUES
('1', 'sumi', 'akter', '22', '2018-04-26', '01982387624', ' Male', 'nurse', '23000', ''),
('2', 'Anik', 'Karmaker', '22', '2020-11-25', '0198238', ' Male', 'Ward Boy', '23000', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`DId`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`PId`);

--
-- Indexes for table `reception`
--
ALTER TABLE `reception`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`RId`),
  ADD KEY `DId_idx` (`DId`),
  ADD KEY `SId_idx` (`SId`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`SId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `reception`
--
ALTER TABLE `reception`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `DId` FOREIGN KEY (`DId`) REFERENCES `doctor` (`DId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `SId` FOREIGN KEY (`SId`) REFERENCES `staff` (`SId`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
