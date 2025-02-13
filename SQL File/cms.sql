-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 07, 2020 at 11:22 AM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '21-11-2022 04:18:16');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(1, 'Academics', '  Academics', '2022-03-28 07:10:55', '2019-06-24 07:06:04'),
(2, 'Hostel', 'Hostel', '2022-06-11 10:54:06', '0000-00-00 00:00:00'),
(3, 'Others', 'Others', '2022-03-28 07:10:55', '2019-06-24 07:06:04');


-- --------------------------------------------------------

--
-- Table structure for table `complaintremark`
--

CREATE TABLE `complaintremark` (
  `id` int(11) NOT NULL,
  `complaintNumber` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext DEFAULT NULL,
  `remarkDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complaintremark`
--

INSERT INTO `complaintremark` (`id`, `complaintNumber`, `status`, `remark`, `remarkDate`) VALUES
(1, 2, 'in process', 'Hi this for demo', '2022-11-20 17:29:19'),
(2, 9, 'in process', 'hiiiiiiiiiiiiiiiiiiii', '2022-11-20 18:37:59'),
(3, 3, 'in process', 'test', '2022-11-20 15:57:43'),
(4, 19, 'closed', 'case solved', '2022-11-20 11:18:33'),
(5, 1, 'closed', 'This sample text for testing', '2022-11-20 17:08:26'),
(6, 5, 'in process', 'test Data', '2022-11-20 07:26:17'),
(7, 23, 'in process', 'Sample', '2022-11-20 10:34:47'),
(8, 23, 'closed', 'Issue resolved ', '2022-11-20 10:37:08');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `id` int(11) NOT NULL,
  `stateName` varchar(255) DEFAULT NULL,
  `stateDescription` tinytext DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`id`, `stateName`, `stateDescription`, `postingDate`, `updationDate`) VALUES
(3, 'Tamil Nadu', '', '2022-11-21 11:35:02', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(1, 1, 'Classroom', '2022-11-22 07:11:07', '0000-00-00 00:00:00'),
(2, 2, 'Food', '2022-11-22 07:11:20', '0000-00-00 00:00:00'),
(3, 1, 'Ragging', '2022-11-22 07:06:44', '2022-11-22 07:21:38'),
(4, 3, 'General', '2022-11-22 07:06:44', '2022-11-22 07:21:38'),
(5, 1, 'Discipline', '2022-11-22 07:06:44', '2022-11-22 07:21:38'),
(6, 3, 'Others', '2022-11-22 07:06:44', '2022-11-22 07:21:38');


-- --------------------------------------------------------

--
-- Table structure for table `tblcomplaints`
--

CREATE TABLE `tblcomplaints` (
  `complaintNumber` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `complaintType` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `noc` varchar(255) DEFAULT NULL,
  `complaintDetails` mediumtext DEFAULT NULL,
  `complaintFile` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `status` varchar(50) DEFAULT NULL,
  `lastUpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcomplaints`
--

INSERT INTO `tblcomplaints` (`complaintNumber`, `userId`, `category`, `subcategory`, `complaintType`, `state`, `noc`, `complaintDetails`, `complaintFile`, `regDate`, `status`, `lastUpdationDate`) VALUES
(1, 1, 1, 'Academics', 'General', 'Tamil Nadu', 'test demo', 'test demo test demo test demotest demotest demotest demotest demotest demotest demotest demotest demo', '', '2022-11-22 16:52:40', 'closed', '2022-11-22 10:29:37'),
(2, 1, 1, 'General', 'General', 'Tamil Nadu', 'testing', 'sample text for demo', '', '2022-11-22 17:05:56', 'in process', '2022-11-22 17:29:19'),
(3, 1, 1, 'General', ' Complaint', 'Tamil Nadu', 'ferwekt lwentgwewt', 'wetwetwe', '', '2022-11-22 17:07:51', 'in process', '2022-11-22 15:57:43'),
(4, 1, 1, 'Hostel', 'General', 'Tamil Nadu', 'lkdlsfklsdf', 'fdsf,msd,f  f f', '', '2022-11-22 17:13:14', 'closed', '2022-11-22 10:29:37'),
(5, 1, 1, 'Academics', ' Complaint', 'Tamil Nadu', 'bgfhfgh', 'hfghfgh', '', '2022-11-22 17:14:55', 'in process', '2022-11-22 10:29:37'),
(6, 1, 1, 'Hostel', ' Complaint', 'Tamil Nadu', 'bgfhfgh', 'hfghfgh', '', '2022-11-22 17:20:16', NULL, '2011-11-22 10:29:37'),
(7, 1, 1, 'Academics', ' Complaint', 'Tamil Nadu', 'bgfhfgh', 'hfghfgh', '', '2022-11-22 17:20:56', NULL, '2022-11-22 10:29:37'),
(8, 1, 1, 'General', ' Complaint', 'Tamil Nadu', 'bgfhfgh', 'hfghfgh', '', '2022-11-22 17:23:05', NULL, '2022-11-22 10:29:37'),
(9, 1, 1, 'Genaral', ' Complaint', 'Tamil Nadu', 'bgfhfgh', 'hfghfgh', '', '2022-11-22 17:25:09', 'in process', '2022-11-22 10:29:37'),
(10, 1, 1, 'Hostel', ' Complaint', 'Tamil Nadu', 'bgfhfgh', 'hfghfgh', '', '2022-11-22 17:27:24', NULL, '2022-11-22 10:29:37'),
(11, 1, 1, 'Hostel', 'General Query', 'Tamil Nadu', 'dsflsdlflsdf', 'fsdfsdfsdf', '', '2022-11-22 17:36:32', NULL, '2022-11-22 10:29:37'),
(12, 1, 1, 'Hostel', 'General Query', 'Tamil Nadu', 'dsflsdlflsdf', 'fsdfsdfsdf', '', '2022-11-22 17:37:09', NULL, '2022-11-22 10:29:37'),
(13, 1, 1, 'Hostel', 'General Query', 'Tamil Nadu', 'dsflsdlflsdf', 'fsdfsdfsdf', '', '2022-11-22 17:39:57', NULL, '2022-11-22 10:29:37'),
(14, 1, 1, 'Hostel', ' Complaint', 'Tamil Nadu', 'vcxvxcvxcv', 'cvcx', '', '2022-11-22 17:41:19', NULL, '2022-11-22 10:29:37'),
(15, 1, 1, 'Others', 'General Query', 'Tamil Nadu', 'dsfsd', 'fsdfsdf', '', '2022-11-22 17:42:38', NULL, '0000-00-00 00:00:00'),
(16, 1, 1, 'Academics', 'General Query', 'Tamil Nadu', 'dsfsd', 'fsdfsdf', '', '2022-11-22 01:54:07', NULL, '0000-00-00 00:00:00'),
(17, 5, 1, 'Hostel', ' Complaint', 'fsdfs', 'regarding refund', 'test test', '', '2022-11-22 10:57:49', NULL, '0000-00-00 00:00:00'),
(18, 5, 1, 'Hostel', ' Complaint', 'Tamil Nadu', 'yhytr', 'rtytry', '', '2022-11-22 11:08:47', NULL, '2022-11-22 10:29:37'),
(19, 6, 1, 'Academics', ' Complaint', 'Tamil Nadu', 'regarding refund', 'Test@123 dfds fsd fs gs gsd g sg g g sgstwerwe ewtw tw', '', '2022-11-22 11:15:24', 'closed', '2022-11-22 10:29:37'),
(20, 1, 1, 'Others', 'General Query', 'fsdfs', 'sdgsdg', 'gdgsdgsd', '', '2022-11-22 18:26:23', NULL, '0000-00-00 00:00:00'),
(21, 1, 1, 'General', 'General Query', 'Tamil Nadu', 'csdf', 'fsdfs', '', '2022-11-22 18:26:55', NULL, '0000-00-00 00:00:00'),
(22, 1, 1, 'Hostel', 'General Query', 'Tamil Nadu', 'csdf', 'fsdfs', '', '2022-11-22 18:27:02', NULL, '0000-00-00 00:00:00'),
(23, 1, 1, 'General', ' Complaint', 'Tamil Nadu', 'This is sample text for testing.', 'This is sample text for testing.', '2a09969b-c3d5-467b-82b0-2cf5aeb903eb_200x200.png', '2022-11-22 10:31:19', 'closed', '2022-11-22 10:37:09');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT current_timestamp(),
  `logout` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 1, 'demouser@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-22 17:04:36', '', 1),
(2, 1, 'harin@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-22 15:02:26', '', 1),
(3, 1, 'user@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-22 14:58:00', '', 1),
(4, 0, 'dsad', 0x3a3a3100000000000000000000000000, '2022-11-22 17:39:07', '', 0);


-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `contactNo` bigint(11) DEFAULT NULL,
  `address` tinytext DEFAULT NULL,
  `State` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `pincode` int(6) DEFAULT NULL,
  `userImage` varchar(255) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `userEmail`, `password`, `contactNo`, `address`, `State`, `country`, `pincode`, `userImage`, `regDate`, `updationDate`, `status`) VALUES
(1, 'Demo User', 'demouser@gmail.com', 'f925916e2754e5e03f75dd58a5733251', 9876543210, 'Demo address', 'Tamil Nadu', 'India', 110092, '6e8024ec26c292f258ec30f01e0392dc.png', '2022-11-24 11:44:52', '2022-11-24 10:39:44', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaintremark`
--
ALTER TABLE `complaintremark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcomplaints`
--
ALTER TABLE `tblcomplaints`
  ADD PRIMARY KEY (`complaintNumber`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
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
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `complaintremark`
--
ALTER TABLE `complaintremark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblcomplaints`
--
ALTER TABLE `tblcomplaints`
  MODIFY `complaintNumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
