-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 07, 2023 at 03:31 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `beauty`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblappointment`
--

CREATE TABLE `tblappointment` (
  `ID` int(10) NOT NULL,
  `AptNumber` varchar(80) DEFAULT NULL,
  `Name` varchar(120) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `PhoneNumber` bigint(11) DEFAULT NULL,
  `AptDate` varchar(120) DEFAULT NULL,
  `AptTime` varchar(120) DEFAULT NULL,
  `Services` varchar(120) DEFAULT NULL,
  `ApplyDate` timestamp NULL DEFAULT current_timestamp(),
  `Remark` varchar(250) NOT NULL,
  `Status` varchar(50) NOT NULL,
  `RemarkDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblappointment`
--

INSERT INTO `tblappointment` (`ID`, `AptNumber`, `Name`, `Email`, `PhoneNumber`, `AptDate`, `AptTime`, `Services`, `ApplyDate`, `Remark`, `Status`, `RemarkDate`) VALUES
(2, '985645887', 'James Mburu', 'jamesmburu@gmail.com', 4654654654, '2/29/2024', '4:30pm', 'Deluxe Pedicure', '2024-02-29 05:04:38', 'Rejected', '2', '2024-02-29 06:47:04'),
(3, '965887988', 'James Mbugua', 'mbuguajames@gmail.com', 5646464646, '6/20/2021', '2:30pm', 'Loreal Hair Color(Full)', '2024-06-19 12:35:30', 'we will wait', '1', '2024-06-19 13:37:39'),
(6, '621107928', 'Moses Mbugua', 'mosesmbugua@gmail.com', 1234567890, '6/27/2021', '1:30am', 'Rebonding', '2024-06-21 16:22:25', 'Testing', '2', '2024-06-21 16:24:10'),
(7, '252539813', 'Grace Wamaitha', 'wamaithagrace@gmail.com', 770546590, '06/18/2021', '3:00pm', 'Layer Haircut', '2024-06-12 10:25:50', 'well accepted', '1', '2024-07-24 12:18:39'),
(8, '402172811', 'Moses Mbugua', 'mosesmbugua.com', 770546590, '11/06/2021', '12:30am', 'U-Shape Hair Cut', '2024-06-18 07:18:00', 'bn', '2', '2024-01-27 09:47:42'),
(10, '747579846', 'Peter Kimani', 'kimanipeterms@gmail.com', 770546590, '7/5/2021', '12:30am', 'Deluxe Menicure', '2024-07-02 22:16:42', 'mkj', '2', '2024-09-02 13:59:20'),
(11, '924501752', 'Stecy Wanjiru', 'stecy@gmail.com', 770546590, '7/7/2021', '12:30am', 'U-Shape Hair Cut', '2024-07-02 22:45:27', '', '', '2024-07-09 15:59:25'),
(12, '973314862', 'Grace Wanyoike', 'wanyoike@gmail.com', 727176688, '6/2/2022', '1:30am', 'Normal Pedicure', '2024-01-27 09:38:40', 'okay', '1', '2024-01-27 09:40:14'),
(13, '73', 'Gitau Peter', 'gitaupeter@gmail.com', 727176688, '2/21/2023', '12:00am', 'O3 Facial', '2024-02-02 13:45:41', 'mjjfvffv', '1', '2024-02-02 13:58:26'),
(14, '7', 'Ryan Mburu', 'Ryan@gmail.com', 727176688, '10/4/2022', '12:30am', 'Fruit Facial', '2024-02-02 14:11:20', '', '', '0000-00-00 00:00:00'),
(15, '457012771', 'admin', 'Jim@gmail.com', 727176688, '3/1/2023', '12:00am', 'nywele', '2024-02-07 13:56:22', 'no time', '2', '2024-02-07 14:03:16'),
(16, '354470135', 'Penina Wambui', 'peninawambui@mail.com', 743123214, '1/30/2023', '12:30am', 'Fruit Facial', '2024-02-07 14:13:35', '', '', '0000-00-00 00:00:00'),
(17, '32', 'Mary Njeri', 'njerimary@gmail.com', 727176688, '10/4/2022', '12:00am', 'O3 Facial', '2024-02-07 14:15:19', '', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblcustomers`
--

CREATE TABLE `tblcustomers` (
  `ID` int(10) NOT NULL,
  `Name` varchar(120) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(11) DEFAULT NULL,
  `Gender` enum('Female','Male','Transgender') DEFAULT NULL,
  `Details` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcustomers`
--

INSERT INTO `tblcustomers` (`ID`, `Name`, `Email`, `MobileNumber`, `Gender`, `Details`, `CreationDate`, `UpdationDate`) VALUES
(1, 'James Mburu', 'jamesmburu@gmail.com', 5546464646, 'Male', 'From Githunguri', '2019-07-26 11:09:10', '2023-01-27 09:43:06'),
(2, 'Grace Wamaitha', 'wamaithagrace@gmail.com', 5565565656, 'Female', 'from Kambaa', '2019-07-26 11:10:02', '2022-07-09 15:11:10'),
(3, 'Stecy Wanjiru', 'stecy@gmail.com', 789465990, 'Female', 'Taking massage', '2019-07-26 11:10:28', '2021-07-09 15:35:28'),
(4, 'Penina Wambui', 'peninawambui@mail.com', 5646464646, 'Female', 'from Kiambu', '2019-08-19 13:38:58', '2024-07-09 15:12:19');

-- --------------------------------------------------------

--
-- Table structure for table `tblinvoice`
--

CREATE TABLE `tblinvoice` (
  `id` int(11) NOT NULL,
  `Userid` int(11) DEFAULT NULL,
  `ServiceId` int(11) DEFAULT NULL,
  `BillingId` int(11) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblinvoice`
--

INSERT INTO `tblinvoice` (`id`, `Userid`, `ServiceId`, `BillingId`, `PostingDate`) VALUES
(26, 3, 2, 379605551, '2024-01-09 15:32:37'),
(27, 3, 4, 379605551, '2024-01-09 15:32:37'),
(28, 3, 9, 379605551, '2024-01-09 15:32:37'),
(33, 2, 8, 107583558, '2024-01-09 15:42:57'),
(34, 2, 12, 107583558, '2024-02-09 15:42:57'),
(35, 1, 1, 372872256, '2024-02-09 15:43:52'),
(36, 1, 2, 372872256, '2024-02-09 15:43:52'),
(37, 1, 4, 372872256, '2024-02-09 15:43:52'),
(38, 2, 1, 361165436, '2024-03-24 11:52:27'),
(39, 2, 2, 361165436, '2024-03-24 11:52:27'),
(40, 2, 3, 361165436, '2024-03-24 11:52:27'),
(41, 1, 1, 908551046, '2023-01-27 09:42:16'),
(42, 1, 2, 908551046, '2023-01-27 09:42:16'),
(43, 1, 3, 908551046, '2023-01-27 09:42:16'),
(44, 1, 1, 589446130, '2023-01-27 09:43:33'),
(45, 1, 2, 589446130, '2023-01-27 09:43:33'),
(46, 1, 3, 589446130, '2023-01-27 09:43:33'),
(47, 1, 4, 589446130, '2023-01-27 09:43:33'),
(48, 1, 5, 589446130, '2023-01-27 09:43:33'),
(49, 1, 6, 589446130, '2023-01-27 09:43:33'),
(50, 1, 7, 589446130, '2023-01-27 09:43:33'),
(51, 1, 8, 589446130, '2023-01-27 09:43:33'),
(52, 1, 9, 589446130, '2023-01-27 09:43:33'),
(53, 1, 10, 589446130, '2023-01-27 09:43:33'),
(54, 1, 11, 589446130, '2023-01-27 09:43:34'),
(55, 1, 12, 589446130, '2023-01-27 09:43:34'),
(56, 1, 1, 126891897, '2023-01-27 09:47:11'),
(57, 1, 17, 526646227, '2023-02-02 14:03:05'),
(58, 2, 3, 409227257, '2023-02-02 14:04:34');

-- --------------------------------------------------------

--
-- Table structure for table `tblservices`
--

CREATE TABLE `tblservices` (
  `ID` int(10) NOT NULL,
  `ServiceName` varchar(200) DEFAULT NULL,
  `Cost` int(10) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblservices`
--

INSERT INTO `tblservices` (`ID`, `ServiceName`, `Cost`, `CreationDate`) VALUES
(1, 'O3 Facial', 1200, '2022-07-25 11:22:38'),
(2, 'Fruit Facial', 500, '2021-07-25 11:22:53'),
(3, 'Charcol Facial', 1000, '2020-07-25 11:23:10'),
(17, 'nywele', 900, '2023-08-02 13:59:49'),
(18, 'Face scrubbing', 550, '2024-02-02 14:35:54'),
(19, 'Hair blowdrying', 750, '2024-02-07 14:20:28');

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `sex` varchar(255) NOT NULL,
  `permission` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `mobile` int(11) NOT NULL,
  `userimage` varchar(255) NOT NULL DEFAULT 'but.jpg',
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `name`, `lastname`, `username`, `email`, `sex`, `permission`, `password`, `mobile`, `userimage`, `status`) VALUES
(15, 'admin', 'admin ', 'admin', 'jim@gmail.com', 'Male', 'Super User', '827ccb0eea8a706c4c34a16891f84e7b', 727176688, 'seku.PNG', 1),
(21, 'Arinaitwe', 'Gerald', 'gerald', 'gerald@gmail.com', 'Male', 'Admin', '81dc9bdb52d04dc20036dbd8313ed055', 770546590, 'but.jpg', 0),
(22, 'jim', '-x', 'admin', 'jim-x@gmail.com', 'Female', 'Super User', 'e807f1fcf82d132f9bb018ca6738a19f', 714299804, 'but.jpg', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblappointment`
--
ALTER TABLE `tblappointment`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcustomers`
--
ALTER TABLE `tblcustomers`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblinvoice`
--
ALTER TABLE `tblinvoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `tblservices`
--
ALTER TABLE `tblservices`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblappointment`
--
ALTER TABLE `tblappointment`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tblcustomers`
--
ALTER TABLE `tblcustomers`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblinvoice`
--
ALTER TABLE `tblinvoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `tblservices`
--
ALTER TABLE `tblservices`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
