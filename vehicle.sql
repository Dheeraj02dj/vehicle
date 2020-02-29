-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 29, 2020 at 04:59 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vehicle`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `display` ()  BEGIN
SELECT l.vehicle_no,od.owner_id,od.o_fname,pk.floor,pk.slot,pk.number, l.date1, l.time_in, l.time_out, l.cost FROM `log_book` l, `owner_details` od ,`parking` pk,`vehicle_details` vd WHERE pk.vehicle=l.vehicle_no AND pk.vehicle=vd.vehicle_no AND vd.owner_id=od.owner_id GROUP BY date1, floor,slot,number;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `cycle_park`
--

CREATE TABLE `cycle_park` (
  `count` int(1) NOT NULL,
  `A` int(1) NOT NULL,
  `B` int(1) NOT NULL,
  `C` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cycle_park`
--

INSERT INTO `cycle_park` (`count`, `A`, `B`, `C`) VALUES
(1, 1, 0, 0),
(2, 1, 0, 0),
(3, 1, 0, 0),
(4, 1, 0, 0),
(5, 1, 0, 0),
(6, 1, 0, 0),
(7, 0, 0, 0),
(8, 0, 0, 0),
(9, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `four_park`
--

CREATE TABLE `four_park` (
  `count` int(1) NOT NULL,
  `A` int(1) NOT NULL,
  `B` int(1) NOT NULL,
  `C` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `four_park`
--

INSERT INTO `four_park` (`count`, `A`, `B`, `C`) VALUES
(1, 1, 0, 0),
(2, 1, 0, 0),
(3, 1, 0, 0),
(4, 1, 0, 0),
(5, 1, 0, 0),
(6, 1, 0, 0),
(7, 1, 0, 0),
(8, 0, 0, 0),
(9, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `heavyload_park`
--

CREATE TABLE `heavyload_park` (
  `count` int(1) NOT NULL,
  `A` int(1) NOT NULL,
  `B` int(1) NOT NULL,
  `C` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `heavyload_park`
--

INSERT INTO `heavyload_park` (`count`, `A`, `B`, `C`) VALUES
(1, 1, 0, 0),
(2, 1, 0, 0),
(3, 1, 0, 0),
(4, 0, 0, 0),
(5, 0, 0, 0),
(6, 0, 0, 0),
(7, 0, 0, 0),
(8, 0, 0, 0),
(9, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `log_book`
--

CREATE TABLE `log_book` (
  `logid` int(11) NOT NULL,
  `vehicle_no` varchar(15) NOT NULL,
  `date1` date NOT NULL,
  `time_in` time NOT NULL,
  `time_out` time DEFAULT NULL,
  `cost` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log_book`
--

INSERT INTO `log_book` (`logid`, `vehicle_no`, `date1`, `time_in`, `time_out`, `cost`) VALUES
(1, 'ad123', '2017-11-08', '06:35:25', '06:37:55', 100),
(2, 'w123', '2017-11-08', '06:39:48', '10:48:32', 50),
(3, 'ka 47', '2017-11-08', '06:51:36', '10:47:52', 50),
(4, 'om123', '2017-11-08', '06:52:15', '10:47:28', 30),
(5, 'sh123', '2017-11-08', '06:52:36', '10:47:36', 30),
(6, 's456', '2017-11-08', '06:53:08', '10:49:27', 170),
(7, 'ss987', '2017-11-08', '06:53:31', '10:48:22', 50),
(8, 'w123', '2017-11-08', '06:54:12', '10:48:32', 50),
(9, 'u888', '2017-11-08', '06:55:26', '10:49:04', 100),
(10, '6678', '2017-11-08', '06:56:00', '01:23:26', 100),
(11, 'v123', '0000-00-00', '08:34:46', '10:31:16', 100),
(16, 'v123', '0000-00-00', '10:31:37', '00:00:00', 100),
(23, 'win123', '0000-00-00', '10:45:02', '06:16:48', 100),
(25, 'win123', '0000-00-00', '10:46:06', '06:16:48', 100),
(28, 'win123', '2017-11-14', '04:40:51', '06:16:48', 100),
(29, 'v123', '2017-11-14', '04:41:06', '00:00:00', 100),
(30, 'ka 47', '2017-11-14', '04:41:53', '00:00:00', 50),
(31, 'hv123', '2017-11-14', '04:42:14', '00:00:00', 170),
(32, '6678', '2017-11-14', '04:42:39', '01:23:26', 100),
(33, 'om123', '2017-11-14', '04:43:00', '00:00:00', 30),
(34, 'sh123', '2017-11-14', '04:43:16', '00:00:00', 30),
(35, 'sw567', '2017-11-15', '06:23:50', '00:00:00', 30),
(36, 'ice123', '2017-11-15', '06:28:59', '00:00:00', 30),
(37, 'fire123', '2017-11-15', '06:29:15', '00:00:00', 50),
(38, 'sid123', '2017-11-15', '06:30:26', '00:00:00', 100),
(39, 'g123', '2017-11-15', '10:53:29', '00:00:00', 100),
(40, 'ch456', '2017-11-15', '11:30:31', '00:00:00', 50),
(41, 'mo123', '2017-11-15', '11:38:11', '00:00:00', 30),
(42, 'id123', '2017-11-16', '10:46:55', '11:16:40', 100),
(43, 'b123', '2017-11-16', '10:52:57', '00:00:00', 100),
(45, 'hk123', '2017-11-16', '10:58:08', '00:00:00', 50),
(46, 'ka123', '2017-11-16', '11:03:21', '00:00:00', 50),
(47, 'b123', '2017-11-16', '11:07:14', '00:00:00', 100),
(48, 'ay123', '2017-11-16', '11:21:46', '00:00:00', 100),
(49, 'RJ 14 KB 6878', '2017-11-16', '11:24:56', '11:29:55', 50),
(50, 'RJ 14 KB 6878', '2017-11-16', '11:26:37', '11:29:55', 50),
(51, '6678', '2017-11-16', '01:24:26', NULL, 100),
(52, 'v12345', '2017-11-18', '02:42:53', '02:43:53', 50),
(53, 'm123', '2017-11-21', '04:52:16', '06:12:19', 50),
(54, 'ka5500', '2017-11-21', '08:20:18', '08:21:49', 50),
(55, 'ka3333', '2017-11-22', '10:03:47', '10:24:24', 30),
(59, 'DL12', '2019-11-29', '10:17:43', '10:18:44', 30),
(60, 'ka20', '2019-11-29', '10:30:57', '10:33:35', 100),
(61, 'hr06', '2019-11-29', '10:43:34', '10:44:07', 50),
(62, 'KA06A', '2019-11-30', '09:41:57', NULL, 100),
(63, 'KA13DD5555', '2019-12-09', '09:53:48', NULL, 50);

-- --------------------------------------------------------

--
-- Table structure for table `motorbike_park`
--

CREATE TABLE `motorbike_park` (
  `count` int(1) NOT NULL,
  `A` int(1) NOT NULL,
  `B` int(1) NOT NULL,
  `C` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `motorbike_park`
--

INSERT INTO `motorbike_park` (`count`, `A`, `B`, `C`) VALUES
(1, 1, 0, 0),
(2, 1, 0, 0),
(3, 1, 0, 0),
(4, 1, 0, 0),
(5, 1, 0, 0),
(6, 1, 0, 0),
(7, 1, 0, 0),
(8, 1, 0, 0),
(9, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `owner_details`
--

CREATE TABLE `owner_details` (
  `owner_id` int(11) NOT NULL,
  `o_fname` varchar(11) NOT NULL,
  `o_lname` varchar(10) NOT NULL,
  `owner_pno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `owner_details`
--

INSERT INTO `owner_details` (`owner_id`, `o_fname`, `o_lname`, `owner_pno`) VALUES
(7, 'manasa', 'p v', 1234567890),
(8, 'akshu', 'g', 876876),
(9, 'jyothi', 'iouoi', 5446),
(10, 'iuoi', 'iouoi', 1234567890),
(12, 'ppppp', 'jhkjhkj', 64845654),
(13, 'eshu', 'h', 786876),
(14, 'divya', 'sharma', 54346853),
(15, 'usui', 'takumi', 7894566),
(16, 'rukia', 'kuchiki', 78946546),
(17, 'byakuya', 'kuchikui', 2147483647),
(19, 'theja', 'b l', 2147483647),
(23, 'troy', 'hegde', 983513521),
(24, 'akshay', 'adiga', 789456),
(25, 'akshi', 'sina', 2147483647),
(29, 'anil', 'jsjdlkaj', 9859898),
(30, 'sinchu', 'b y', 77777777),
(31, 'hemalatha', 'h s', 78987978),
(33, 'prakru', 'k s', 21321321),
(34, 'dishaa', 'patil', 987987),
(35, 'dishaa', 'patil', 987987),
(36, 'yato', 'yamato', 769876987),
(37, 'yato', 'yamato', 654654),
(38, 'poorvi', 'h', 768768768),
(39, 'sharath', 's ram', 788988),
(40, 'hema', 'd g', 2147483647),
(41, 'abhi', 'palanlar', 2147483647),
(42, 'shailesh', 'basvaraju', 2147483647),
(43, 'prajwal', 'shenoy', 654654654),
(44, 'vivan', 'dm', 789456),
(45, 'harry', 'potter', 2147483647),
(46, 'twovehhe', '', 897987),
(47, 'four', '', 2147483647),
(48, 'ganesh', '', 6576856),
(49, 'shiva', '', 87876786),
(50, 'maina', 'hegde', 2147483647),
(51, 'sati', 'hava', 65765765),
(52, 'prakruthi', 'k s', 2147483647),
(53, 'vivek', 'oberoi', 2147483647),
(54, 'gowtham', 'a s', 5465465),
(59, 'siddarth', 'h k', 12313213),
(60, 'samanvi', 'h gowda', 987987987),
(61, 'kavya', 'hk', 786989989),
(62, 'omkar', 'singh', 87687654),
(63, 'shivay', 'oberio', 123123),
(64, 'apoorva', 'adiga', 123456),
(65, 'GRAY', 'fullbuster', 987987),
(66, 'natsu', 'dragonali', 876866787),
(67, 'lucy', 'galgani', 9090909),
(68, 'erza', 'scarlet', 8786876),
(69, 'SRIRAM', 'sid', 765665),
(70, 'chitra', 'balasubram', 876876876),
(74, 'sumit', 'shekar', 2147483647),
(75, 'saho', 'bhu', 98989899),
(76, 'pavan', 'mandya', 2147483647),
(77, 'vishnu', 'g', 2147483647),
(78, 'chitij', 'saraswath', 2147483647),
(79, 'hemanth', 'mo', 444444),
(80, 'INDHULEKA', 'h', 66665555),
(81, 'manjunath', 'k', 2147483647),
(82, 'SUNITA', 'm', 6767676),
(83, 'GOKULI', 'm', 4545454),
(84, 'ALI', 'tabish', 1232123),
(85, 'CHAITRA', 'h k', 7676767),
(86, 'AKASH', 'pawar', 12321231),
(87, 'KAVYA', 'shreee', 67675665),
(88, 'AYUSH', 'kumar', 4545454),
(89, 'ANKIT', 'Kumar', 2147483647),
(90, 'MICLY', 'mouse', 12343),
(91, 'MADURI', 'gowda', 123212333),
(92, 'VINYAS', 'gowda', 789902545),
(93, 'PRAKRUTHI', 'gowda', 23456789),
(94, 'VINUTHA', 'reddy', 2147483647),
(95, 'VISHWAS', 'gowda', 2345678),
(96, 'ARTHI', 'kumari', 1232123123),
(97, 'SUPRITHA', 'h', 5556565),
(98, 'SHUBAM', 'gunjal', 2147483647),
(99, 'DHEERAJ', 'jain', 2147483647),
(100, 'RAJ', 'j', 2147483647),
(101, 'RAJ', 'g', 2147483647),
(102, 'SHUB', 'gunj', 2147483647);

--
-- Triggers `owner_details`
--
DELIMITER $$
CREATE TRIGGER `capitaltrigger` BEFORE UPDATE ON `owner_details` FOR EACH ROW SET NEW.o_fname=UPPER(NEW.o_fname)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `parking`
--

CREATE TABLE `parking` (
  `vehicle` varchar(15) NOT NULL,
  `floor` int(11) NOT NULL,
  `slot` varchar(2) NOT NULL,
  `number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parking`
--

INSERT INTO `parking` (`vehicle`, `floor`, `slot`, `number`) VALUES
('6678', 3, 'A', 4),
('ay123', 3, 'A', 7),
('b123', 1, 'A', 6),
('ch456', 2, 'A', 4),
('fire123', 2, 'A', 3),
('g123', 3, 'A', 6),
('hk123', 2, 'A', 5),
('hv123', 4, 'A', 1),
('ice123', 1, 'A', 4),
('ka 47', 2, 'A', 2),
('KA06A', 3, 'A', 2),
('ka123', 2, 'A', 6),
('KA13DD5555', 2, 'A', 8),
('mo123', 1, 'A', 5),
('om123', 1, 'A', 1),
('sh123', 1, 'A', 2),
('sid123', 3, 'A', 5),
('sw567', 1, 'A', 3),
('v123', 3, 'A', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 7892500456, 'shubhamgunjalxxx1997@gmail.com', 'admin', '2019-07-05 05:38:23'),
(2, 'admin', 'admin1', 7894561230, 'dheeraj@gmail.com', 'admin1', '2019-11-20 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_details`
--

CREATE TABLE `vehicle_details` (
  `vehicle_no` varchar(15) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_details`
--

INSERT INTO `vehicle_details` (`vehicle_no`, `owner_id`, `type_id`) VALUES
('6678', 52, 3),
('ad123', 64, 2),
('ak123', 86, 1),
('ay123', 88, 3),
('b 676 k 878', 30, 2),
('b123', 82, 1),
('bb 8 h999', 29, 4),
('ch456', 78, 2),
('DL12', 98, 1),
('e123', 39, 2),
('fire123', 66, 2),
('g123', 77, 3),
('h 6 w12', 36, 1),
('hk123', 85, 2),
('hr06', 98, 2),
('hv123', 51, 4),
('i999', 43, 1),
('ice123', 65, 1),
('id123', 80, 3),
('ka 11 h 202', 31, 2),
('ka 123 b 56', 25, 4),
('ka 47', 50, 2),
('ka 98 y 666', 24, 2),
('ka02', 44, 3),
('KA06A', 98, 3),
('KA06AD', 99, 3),
('KA06AD5060', 99, 3),
('KA06AD5555', 98, 4),
('KA06DD5555', 99, 2),
('ka11m00', 34, 2),
('ka123', 87, 2),
('KA13DD5555', 102, 2),
('ka20', 98, 3),
('ka3333', 94, 1),
('ka4400', 93, 2),
('ka5500', 92, 2),
('m123', 91, 2),
('mo123', 79, 1),
('om123', 62, 1),
('p123', 43, 2),
('pr 2 y 666', 33, 3),
('r333', 40, 1),
('r555', 41, 3),
('RJ 14 KB 6878', 89, 2),
('s123', 97, 2),
('s456', 59, 4),
('sh123', 63, 1),
('sid123', 69, 3),
('ss987', 60, 2),
('sw567', 68, 1),
('u1234', 42, 1),
('u888', 61, 3),
('v123', 49, 3),
('v12345', 90, 2),
('w123', 53, 2),
('win123', 48, 3),
('y 4 w22', 36, 1),
('yu77', 45, 4),
('yy77', 38, 3);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_type`
--

CREATE TABLE `vehicle_type` (
  `type_id` int(11) NOT NULL,
  `cost_hr` int(11) NOT NULL,
  `type_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_type`
--

INSERT INTO `vehicle_type` (`type_id`, `cost_hr`, `type_name`) VALUES
(1, 30, 'cycle'),
(2, 50, 'motor cycle'),
(3, 100, 'four wheeler'),
(4, 170, 'heavy load');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cycle_park`
--
ALTER TABLE `cycle_park`
  ADD PRIMARY KEY (`count`);

--
-- Indexes for table `four_park`
--
ALTER TABLE `four_park`
  ADD PRIMARY KEY (`count`);

--
-- Indexes for table `heavyload_park`
--
ALTER TABLE `heavyload_park`
  ADD PRIMARY KEY (`count`);

--
-- Indexes for table `log_book`
--
ALTER TABLE `log_book`
  ADD PRIMARY KEY (`logid`),
  ADD KEY `vehicle_id` (`vehicle_no`);

--
-- Indexes for table `motorbike_park`
--
ALTER TABLE `motorbike_park`
  ADD PRIMARY KEY (`count`);

--
-- Indexes for table `owner_details`
--
ALTER TABLE `owner_details`
  ADD PRIMARY KEY (`owner_id`);

--
-- Indexes for table `parking`
--
ALTER TABLE `parking`
  ADD PRIMARY KEY (`vehicle`);

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `vehicle_details`
--
ALTER TABLE `vehicle_details`
  ADD PRIMARY KEY (`vehicle_no`),
  ADD KEY `vehicle_details_ibfk_1` (`owner_id`),
  ADD KEY `vehicle_details_ibfk_2` (`type_id`);

--
-- Indexes for table `vehicle_type`
--
ALTER TABLE `vehicle_type`
  ADD PRIMARY KEY (`type_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `log_book`
--
ALTER TABLE `log_book`
  MODIFY `logid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `owner_details`
--
ALTER TABLE `owner_details`
  MODIFY `owner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `log_book`
--
ALTER TABLE `log_book`
  ADD CONSTRAINT `log_book_ibfk_1` FOREIGN KEY (`vehicle_no`) REFERENCES `vehicle_details` (`vehicle_no`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `parking`
--
ALTER TABLE `parking`
  ADD CONSTRAINT `parking_ibfk_1` FOREIGN KEY (`vehicle`) REFERENCES `vehicle_details` (`vehicle_no`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `vehicle_details`
--
ALTER TABLE `vehicle_details`
  ADD CONSTRAINT `vehicle_details_ibfk_1` FOREIGN KEY (`owner_id`) REFERENCES `owner_details` (`owner_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `vehicle_details_ibfk_2` FOREIGN KEY (`type_id`) REFERENCES `vehicle_type` (`type_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
