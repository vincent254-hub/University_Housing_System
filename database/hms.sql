-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2022 at 02:46 PM
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
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(300) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `updation_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`, `reg_date`, `updation_date`) VALUES
(1, 'admin', 'admin@test.com', 'admin1234', '2022-11-05 21:00:00', '2022-11-07');

-- --------------------------------------------------------

--
-- Table structure for table `adminlog`
--

CREATE TABLE `adminlog` (
  `id` int(11) NOT NULL,
  `adminid` int(11) NOT NULL,
  `ip` varbinary(16) NOT NULL,
  `logintime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `admittedtable`
--

CREATE TABLE `admittedtable` (
  `id` int(5) NOT NULL,
  `decision` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admittedtable`
--

INSERT INTO `admittedtable` (`id`, `decision`) VALUES
(1, 'admitted'),
(2, 'not admitted');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `course_code` varchar(255) NOT NULL,
  `course_sn` varchar(255) NOT NULL,
  `course_fn` varchar(255) NOT NULL,
  `posting_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course_code`, `course_sn`, `course_fn`, `posting_date`) VALUES
(8, 'ics/354/2022', '45', 'bhit7658', '2022-11-06 01:39:39');

-- --------------------------------------------------------

--
-- Table structure for table `healthrecordstable`
--

CREATE TABLE `healthrecordstable` (
  `rec_id` int(11) NOT NULL,
  `health_status` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `healthrecordstable`
--

INSERT INTO `healthrecordstable` (`rec_id`, `health_status`) VALUES
(1, 'Cleared'),
(3, 'With-Held'),
(5, 'Rejected');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `roomno` int(11) NOT NULL,
  `room_type` varchar(11) NOT NULL,
  `fees` int(11) NOT NULL,
  `mealplan` int(11) NOT NULL,
  `datefrom` date NOT NULL,
  `duration` int(11) NOT NULL,
  `admission_decision` varchar(500) NOT NULL,
  `regno` int(11) NOT NULL,
  `firstName` varchar(500) NOT NULL,
  `lastName` varchar(500) NOT NULL,
  `gender` varchar(250) NOT NULL,
  `contactno` bigint(11) NOT NULL,
  `emailaddr` varchar(500) NOT NULL,
  `econtactno` bigint(11) NOT NULL,
  `parent` varchar(500) NOT NULL,
  `prelation` varchar(500) NOT NULL,
  `pcontact` bigint(11) NOT NULL,
  `addr` varchar(500) NOT NULL,
  `city` varchar(500) NOT NULL,
  `state` varchar(500) NOT NULL,
  `postcode` int(11) NOT NULL,
  `health_record` varchar(500) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `roomno`, `room_type`, `fees`, `mealplan`, `datefrom`, `duration`, `admission_decision`, `regno`, `firstName`, `lastName`, `gender`, `contactno`, `emailaddr`, `econtactno`, `parent`, `prelation`, `pcontact`, `addr`, `city`, `state`, `postcode`, `health_record`, `postingDate`, `updationDate`) VALUES
(19, 100, '3', 7500, 1, '2022-11-06', 3, '', 0, 'Vincent', 'Khamala', 'male', 707865319, 'vincentkhamala9@gmail.com', 7010439414, 'kungu', 'father', 9809809087, '7232', 'Nairobi', 'Kerala', 20100, '', '2022-11-05 12:27:15', ''),
(21, 100, '4', 7500, 1, '2022-11-05', 4, '', 1234425, 'mercy', 'awino', 'female', 707865319, 'awinomercy@student.com', 7010439414, 'clemo', 'father', 9809809087, '13701', 'Nakuru', 'Assam', 20100, '', '2022-11-05 13:17:28', ''),
(23, 1, '1', 10000, 1, '2022-11-08', 3, '', 12345, 'joy', 'mwihaki', 'female', 405897608579, 'joy@test.com', 7010439414, 'gachuki', 'father', 9809809087, '7232', 'Nairobi', 'Kerala', 20100, 'Cleared', '2022-11-06 13:21:35', ''),
(25, 2, '3', 10000, 1, '2022-11-08', 4, '', 0, 'collo', 'toure', 'male', 707865319, 'colins@gmail.com', 7010439414, 'clemo', 'father', 9809809087, '7232', 'Nairobi', 'Jharkhand', 20100, 'cleared', '2022-11-06 18:37:41', ''),
(26, 5, '1', 10000, 1, '2022-12-01', 6, '', 345, 'john', 'reece', 'male', 111235466, 'reece@gmail.com', 7010439414, 'clemo', 'father', 9809809087, '13701', 'Nakuru', 'Jharkhand', 20100, NULL, '2022-11-07 11:22:25', '');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `room_type` varchar(11) NOT NULL,
  `room_no` int(11) NOT NULL,
  `fees` int(11) NOT NULL,
  `posting_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `room_type`, `room_no`, `fees`, `posting_date`) VALUES
(6, '1', 1, 10000, '2022-11-06 00:29:06'),
(7, '2', 2, 25000, '2022-11-06 00:32:26'),
(8, '3', 3, 30000, '2022-11-06 00:32:43'),
(9, '', 4, 10000, '2022-11-06 00:33:13'),
(10, '1', 5, 7500, '2022-11-06 19:38:50'),
(11, '2', 6, 7500, '2022-11-06 19:39:56'),
(12, '2', 7, 7500, '2022-11-06 20:34:43'),
(13, '2', 8, 7500, '2022-11-06 20:35:25');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `State` varchar(150) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `State`) VALUES
(40, 'Oklahoma');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `userEmail` varchar(255) NOT NULL,
  `userIp` varbinary(16) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userId`, `userEmail`, `userIp`, `city`, `country`, `loginTime`) VALUES
(8, 10, 'test@gmail.com', 0x3a3a31, '', '', '2022-11-04 17:20:26'),
(9, 22, 'vin@gmail.com', 0x3a3a31, '', '', '2022-11-04 18:40:16'),
(10, 22, 'vin@gmail.com', 0x3a3a31, '', '', '2022-11-04 18:44:47'),
(11, 32, 'final@gmail.com', 0x3a3a31, '', '', '2022-11-04 19:19:50'),
(12, 32, 'final@gmail.com', 0x3a3a31, '', '', '2022-11-04 19:22:13'),
(13, 34, 'finalt@gmail.com', 0x3a3a31, '', '', '2022-11-04 19:50:05'),
(14, 41, 'final@test.com', 0x3a3a31, '', '', '2022-11-05 14:17:40'),
(15, 42, 'joy@test.com', 0x3a3a31, '', '', '2022-11-05 14:18:44'),
(16, 42, 'joy@test.com', 0x3a3a31, '', '', '2022-11-05 19:40:07'),
(17, 42, 'joy@test.com', 0x3a3a31, '', '', '2022-11-06 00:37:41'),
(18, 43, 'steve@gmail.com', 0x3a3a31, '', '', '2022-11-06 14:39:04'),
(19, 43, 'steve@gmail.com', 0x3a3a31, '', '', '2022-11-06 15:02:03'),
(20, 43, 'steve@gmail.com', 0x3a3a31, '', '', '2022-11-06 15:05:22'),
(21, 43, 'steve@gmail.com', 0x3a3a31, '', '', '2022-11-06 15:21:27'),
(22, 43, 'steve@gmail.com', 0x3a3a31, '', '', '2022-11-06 15:50:17'),
(23, 43, 'steve@gmail.com', 0x3a3a31, '', '', '2022-11-06 18:00:26'),
(24, 45, 'reece@gmail.com', 0x3a3a31, '', '', '2022-11-07 11:13:00'),
(25, 45, 'reece@gmail.com', 0x3132372e302e302e31, '', '', '2022-11-07 11:49:04'),
(26, 45, 'reece@gmail.com', 0x3132372e302e302e31, '', '', '2022-11-07 11:51:01'),
(27, 45, 'reece@gmail.com', 0x3132372e302e302e31, '', '', '2022-11-08 06:46:50'),
(28, 45, 'reece@gmail.com', 0x3a3a31, '', '', '2022-11-08 07:25:03'),
(29, 45, 'reece@gmail.com', 0x3a3a31, '', '', '2022-11-08 07:46:04'),
(30, 45, 'reece@gmail.com', 0x3a3a31, '', '', '2022-11-08 08:05:01');

-- --------------------------------------------------------

--
-- Table structure for table `userregistration`
--

CREATE TABLE `userregistration` (
  `id` int(11) NOT NULL,
  `regNo` varchar(255) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `contactNo` bigint(20) NOT NULL,
  `emailaddr` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(45) NOT NULL,
  `passUdateDate` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userregistration`
--

INSERT INTO `userregistration` (`id`, `regNo`, `firstName`, `lastName`, `gender`, `contactNo`, `emailaddr`, `password`, `regDate`, `updationDate`, `passUdateDate`) VALUES
(45, '345', 'john', 'reece', 'male', 111235466, 'reece@gmail.com', '420420s', '2022-11-07 11:12:31', '07-11-2022 12:19:05', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adminlog`
--
ALTER TABLE `adminlog`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `admittedtable`
--
ALTER TABLE `admittedtable`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_code` (`course_code`);

--
-- Indexes for table `healthrecordstable`
--
ALTER TABLE `healthrecordstable`
  ADD PRIMARY KEY (`rec_id`),
  ADD KEY `rec_id` (`rec_id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_type` (`room_type`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_type` (`room_type`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `State` (`State`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `userregistration`
--
ALTER TABLE `userregistration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admittedtable`
--
ALTER TABLE `admittedtable`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `healthrecordstable`
--
ALTER TABLE `healthrecordstable`
  MODIFY `rec_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `userregistration`
--
ALTER TABLE `userregistration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
