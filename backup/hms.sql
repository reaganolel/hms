-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2022 at 05:45 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospitalmanagementsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminid` int(10) NOT NULL,
  `adminname` varchar(25) NOT NULL,
  `loginid` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `status` varchar(10) NOT NULL,
  `usertype` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminid`, `adminname`, `loginid`, `password`, `status`, `usertype`) VALUES
(1, 'admin', 'admin', 'adminadmin', 'Active', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `appointmentid` int(10) NOT NULL,
  `appointmenttype` varchar(25) NOT NULL,
  `patientid` int(10) NOT NULL,
  `roomid` int(10) NOT NULL,
  `departmentid` int(10) NOT NULL,
  `appointmentdate` date NOT NULL,
  `appointmenttime` time NOT NULL,
  `doctorid` int(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  `app_reason` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`appointmentid`, `appointmenttype`, `patientid`, `roomid`, `departmentid`, `appointmentdate`, `appointmenttime`, `doctorid`, `status`, `app_reason`) VALUES
(74, 'Online', 39, 15, 12, '2022-11-23', '01:00:00', 43, 'Approved', ''),
(75, 'OutPatient', 0, 15, 11, '2022-11-23', '13:59:00', 37, '', ''),
(99, '', 0, 0, 0, '2022-12-23', '00:00:00', 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `billing`
--

CREATE TABLE `billing` (
  `billingid` int(10) NOT NULL,
  `patientid` int(10) NOT NULL,
  `appointmentid` int(10) NOT NULL,
  `billingdate` date NOT NULL,
  `billingtime` time NOT NULL,
  `discount` float(10,2) NOT NULL,
  `taxamount` float(10,2) NOT NULL,
  `discountreason` text NOT NULL,
  `discharge_time` time NOT NULL,
  `discharge_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `billing`
--

INSERT INTO `billing` (`billingid`, `patientid`, `appointmentid`, `billingdate`, `billingtime`, `discount`, `taxamount`, `discountreason`, `discharge_time`, `discharge_date`) VALUES
(5, 47, 94, '2022-11-23', '10:12:38', 0.00, 0.00, '', '00:00:00', '0000-00-00'),
(6, 7, 78, '2022-11-23', '08:21:22', 0.00, 0.00, '', '00:00:00', '0000-00-00'),
(7, 7, 95, '2022-11-23', '08:54:33', 0.00, 0.00, '', '00:00:00', '0000-00-00'),
(8, 45, 96, '2022-11-23', '08:56:38', 0.00, 0.00, '', '00:00:00', '0000-00-00'),
(9, 22, 61, '2022-11-23', '09:57:39', 0.00, 0.00, '0 , 0 ,  ,  , ', '09:48:21', '2016-03-27'),
(11, 42, 90, '2022-11-23', '10:11:59', 0.00, 0.00, '', '00:00:00', '0000-00-00'),
(12, 0, 0, '2022-11-23', '00:00:00', 100.00, 0.00, 'kkkk , ', '04:13:27', '2018-04-03'),
(21, 23, 65, '2022-11-23', '13:29:51', 0.00, 0.00, '', '00:00:00', '0000-00-00'),
(22, 22, 77, '2022-11-23', '14:53:12', 0.00, 0.00, '', '00:00:00', '0000-00-00'),
(23, 0, 103, '2022-11-23', '14:53:45', 0.00, 0.00, ' , ', '00:00:00', '0000-00-00'),
(24, 43, 91, '2018-03-24', '15:19:16', 0.00, 0.00, '', '00:00:00', '0000-00-00'),
(25, 56, 110, '2022-11-23', '09:44:13', 0.00, 0.00, 'lll , ', '04:14:13', '2018-04-03'),
(26, 40, 79, '2022-11-23', '15:12:42', 0.00, 0.00, '', '00:00:00', '0000-00-00'),
(27, 22, 80, '2022-11-23', '09:44:21', 0.00, 0.00, '', '00:00:00', '0000-00-00'),
(31, 44, 112, '2022-11-23', '09:47:26', 0.00, 0.00, '', '00:00:00', '0000-00-00'),
(32, 7, 113, '2022-11-23', '09:57:00', 0.00, 0.00, '', '00:00:00', '0000-00-00'),
(33, 7, 114, '2022-11-23', '10:02:46', 0.00, 0.00, '', '00:00:00', '0000-00-00'),
(34, 7, 116, '2022-11-23', '10:11:49', 0.00, 0.00, ' , ', '00:00:00', '0000-00-00'),
(35, 7, 117, '2022-11-23', '12:03:12', 0.00, 0.00, '', '00:00:00', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `billing_records`
--

CREATE TABLE `billing_records` (
  `billingservice_id` int(10) NOT NULL,
  `billingid` int(10) NOT NULL,
  `bill_type_id` int(10) NOT NULL COMMENT 'id of service charge or treatment charge',
  `bill_type` varchar(250) NOT NULL,
  `bill_amount` float(10,2) NOT NULL,
  `bill_date` date NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `billing_records`
--

INSERT INTO `billing_records` (`billingservice_id`, `billingid`, `bill_type_id`, `bill_type`, `bill_amount`, `bill_date`, `status`) VALUES
(1, 6, 0, 'Room Rent', 2000.00, '2022-11-23', 'Active'),
(2, 6, 0, 'Consultancy Charge', 10000.00, '2022-11-23', 'Active'),
(3, 6, 0, 'Treatment Charge', 690.00, '2016-03-23', 'Active'),
(4, 6, 0, 'Service Charge', 690.00, '2016-03-23', 'Active'),
(5, 6, 0, 'Prescription Charge', 690.00, '2016-03-23', 'Active'),
(6, 7, 0, 'Room Rent', 690.00, '2016-03-23', 'Active'),
(7, 7, 0, 'Consultancy Charge', 690.00, '2016-03-23', 'Active'),
(8, 7, 0, 'Treatment Charge', 690.00, '2016-03-23', 'Active'),
(9, 7, 0, 'Service Charge', 690.00, '2016-03-23', 'Active'),
(10, 7, 0, 'Prescription Charge', 690.00, '2016-03-23', 'Active'),
(11, 8, 0, 'Room Rent', 690.00, '2016-03-23', 'Active'),
(12, 8, 0, 'Consultancy Charge', 690.00, '2016-03-23', 'Active'),
(13, 8, 0, 'Treatment Charge', 690.00, '2016-03-23', 'Active'),
(14, 8, 0, 'Service Charge', 690.00, '2016-03-23', 'Active'),
(15, 8, 0, 'Prescription Charge', 690.00, '2016-03-23', 'Active'),
(16, 9, 15, 'Room Rent', 500.00, '2016-03-23', 'Active'),
(17, 9, 15, 'Room Rent', 500.00, '2016-03-23', 'Active'),
(18, 9, 0, 'Room Rent', 690.00, '2016-03-23', 'Active'),
(19, 9, 0, 'Room Rent', 690.00, '2016-03-23', 'Active'),
(20, 9, 0, 'Room Rent', 690.00, '2016-03-23', 'Active'),
(21, 9, 15, 'Room Rent', 500.00, '2016-03-23', 'Active'),
(22, 9, 18, 'Room Rent', 150.00, '2016-03-23', 'Active'),
(23, 9, 18, 'Room Rent', 150.00, '2016-03-23', 'Active'),
(24, 10, 15, 'Room Rent', 500.00, '2016-03-25', 'Active'),
(25, 10, 35, 'Consultancy Charge', 600.00, '2016-03-25', 'Active'),
(26, 10, 35, 'Treatment Cost', 450.00, '2016-03-25', 'Active'),
(27, 10, 35, 'Consultancy Charge', 600.00, '2016-03-25', 'Active'),
(28, 10, 13, 'Treatment Cost', 450.00, '2016-03-25', 'Active'),
(30, 10, 28, 'Prescription Charge for Treatment for Malaria', 1190.00, '2016-03-25', 'Active'),
(31, 10, 11, 'Service Charge', 450.00, '2016-03-25', 'Active'),
(32, 10, 11, 'Service Charge', 450.00, '2016-03-25', 'Active'),
(33, 10, 11, 'Service Charge', 450.00, '2016-03-25', 'Active'),
(34, 10, 12, 'Service Charge', 300.00, '2016-03-25', 'Active'),
(35, 10, 12, 'Service Charge', 550.00, '2016-03-25', 'Active'),
(36, 10, 12, 'Service Charge', 550.00, '2016-03-25', 'Active'),
(37, 9, 11, 'Service Charge', 1105.00, '2016-03-27', 'Active'),
(38, 9, 11, 'Service Charge', 1105.00, '2016-03-27', 'Active'),
(39, 9, 11, 'Service Charge', 1105.00, '2016-03-27', 'Active'),
(40, 9, 36, 'Prescription Charge', 0.00, '0000-00-00', 'Active'),
(41, 9, 37, 'Prescription Charge', 20.00, '0000-00-00', 'Active'),
(42, 9, 38, 'Prescription Charge', 444.00, '0000-00-00', 'Active'),
(43, 7, 39, 'Prescription Charge', 100.00, '0000-00-00', 'Active'),
(44, 7, 40, 'Prescription Charge', 20.00, '0000-00-00', 'Active'),
(45, 9, 41, 'Prescription Charge', 0.00, '0000-00-00', 'Active'),
(46, 9, 42, 'Prescription Charge', 20.00, '0000-00-00', 'Active'),
(47, 9, 43, 'Prescription Charge', 20.00, '0000-00-00', 'Active'),
(48, 9, 44, 'Prescription Charge', 444.00, '0000-00-00', 'Active'),
(49, 9, 45, 'Prescription Charge', 0.00, '0000-00-00', 'Active'),
(50, 9, 46, 'Prescription Charge', 11111.00, '0000-00-00', 'Active'),
(51, 15, 15, 'Room Rent', 500.00, '0000-00-00', 'Active'),
(52, 15, 35, 'Consultancy Charge', 700.00, '0000-00-00', 'Active'),
(53, 15, 13, 'Treatment', 450.00, '0000-00-00', 'Active'),
(54, 12, 15, 'Room Rent', 500.00, '0000-00-00', 'Active'),
(55, 12, 15, 'Room Rent', 500.00, '0000-00-00', 'Active'),
(56, 12, 15, 'Room Rent', 500.00, '0000-00-00', 'Active'),
(57, 15, 35, 'Consultancy Charge', 700.00, '0000-00-00', 'Active'),
(58, 15, 14, 'Treatment', 20000.00, '0000-00-00', 'Active'),
(59, 15, 35, 'Consultancy Charge', 700.00, '0000-00-00', 'Active'),
(60, 15, 13, 'Treatment', 450.00, '0000-00-00', 'Active'),
(61, 16, 15, 'Room Rent', 500.00, '0000-00-00', 'Active'),
(62, 16, 35, 'Consultancy Charge', 700.00, '0000-00-00', 'Active'),
(63, 16, 13, 'Treatment', 450.00, '0000-00-00', 'Active'),
(64, 17, 16, 'Room Rent', 100.00, '0000-00-00', 'Active'),
(65, 14, 15, 'Room Rent', 500.00, '0000-00-00', 'Active'),
(66, 12, 15, 'Room Rent', 500.00, '0000-00-00', 'Active'),
(67, 17, 47, 'Prescription Charge', 231.00, '0000-00-00', 'Active'),
(68, 18, 15, 'Room Rent', 500.00, '0000-00-00', 'Active'),
(69, 14, 48, 'Prescription Charge', 0.00, '0000-00-00', 'Active'),
(70, 14, 49, 'Prescription Charge', 70.00, '0000-00-00', 'Active'),
(71, 19, 15, 'Room Rent', 500.00, '0000-00-00', 'Active'),
(72, 19, 35, 'Consultancy Charge', 700.00, '0000-00-00', 'Active'),
(73, 19, 13, 'Treatment', 450.00, '0000-00-00', 'Active'),
(74, 17, 50, 'Prescription Charge', 50.00, '0000-00-00', 'Active'),
(75, 17, 51, 'Prescription Charge', 30.00, '0000-00-00', 'Active'),
(76, 19, 52, 'Prescription Charge', 20.00, '0000-00-00', 'Active'),
(77, 5, 53, 'Prescription Charge', 50.00, '0000-00-00', 'Active'),
(78, 19, 54, 'Prescription Charge', 30.00, '0000-00-00', 'Active'),
(79, 5, 55, 'Prescription Charge', 45.00, '0000-00-00', 'Active'),
(80, 19, 37, 'Consultancy Charge', 20.00, '0000-00-00', 'Active'),
(81, 19, 15, 'Treatment', 554.00, '0000-00-00', 'Active'),
(82, 19, 38, 'Consultancy Charge', 200.00, '0000-00-00', 'Active'),
(83, 19, 14, 'Treatment', 20000.00, '0000-00-00', 'Active'),
(84, 12, 16, 'Room Rent', 100.00, '0000-00-00', 'Active'),
(85, 20, 38, 'Consultancy Charge', 200.00, '0000-00-00', 'Active'),
(86, 20, 14, 'Treatment', 20000.00, '0000-00-00', 'Active'),
(87, 20, 11, 'Service Charge', 1000.00, '2018-03-17', 'Active'),
(88, 20, 57, 'Prescription Charge', 80.00, '0000-00-00', 'Active'),
(89, 19, 37, 'Consultancy Charge', 20.00, '0000-00-00', 'Active'),
(90, 19, 14, 'Treatment', 20000.00, '0000-00-00', 'Active'),
(91, 19, 38, 'Consultancy Charge', 200.00, '0000-00-00', 'Active'),
(92, 19, 14, 'Treatment', 20000.00, '0000-00-00', 'Active'),
(93, 19, 38, 'Consultancy Charge', 200.00, '0000-00-00', 'Active'),
(94, 19, 14, 'Treatment', 20000.00, '0000-00-00', 'Active'),
(95, 19, 38, 'Consultancy Charge', 200.00, '2014-11-13', 'Active'),
(96, 19, 14, 'Treatment', 20000.00, '2014-11-13', 'Active'),
(97, 19, 38, 'Consultancy Charge', 200.00, '0000-00-00', 'Active'),
(98, 19, 14, 'Treatment', 20000.00, '0000-00-00', 'Active'),
(99, 19, 38, 'Consultancy Charge', 200.00, '2018-03-17', 'Active'),
(100, 19, 14, 'Treatment', 20000.00, '2018-03-17', 'Active'),
(101, 21, 35, 'Consultancy Charge', 700.00, '2018-03-24', 'Active'),
(102, 21, 13, 'Treatment', 450.00, '2018-03-24', 'Active'),
(103, 24, 35, 'Consultancy Charge', 700.00, '2018-03-24', 'Active'),
(104, 24, 14, 'Treatment', 20000.00, '2018-03-24', 'Active'),
(105, 21, 60, 'Prescription Charge', 75.00, '2018-03-24', 'Active'),
(106, 24, 35, 'Consultancy Charge', 700.00, '2018-03-26', 'Active'),
(107, 24, 13, 'Treatment', 450.00, '2018-03-26', 'Active'),
(108, 24, 37, 'Prescription Charge', 20.00, '2018-03-26', 'Active'),
(109, 25, 16, 'Room Rent', 100.00, '2018-03-27', 'Active'),
(110, 25, 42, 'Consultancy Charge', 20.00, '2018-03-27', 'Active'),
(111, 25, 14, 'Treatment', 20000.00, '2018-03-27', 'Active'),
(112, 25, 42, 'Consultancy Charge', 20.00, '2018-03-27', 'Active'),
(113, 25, 19, 'Treatment', 4000.00, '2018-03-27', 'Active'),
(114, 8, 35, 'Consultancy Charge', 700.00, '2018-03-27', 'Active'),
(115, 8, 15, 'Treatment', 554.00, '2018-03-27', 'Active'),
(116, 19, 35, 'Consultancy Charge', 700.00, '2018-03-27', 'Active'),
(117, 19, 13, 'Treatment', 450.00, '2018-03-27', 'Active'),
(118, 5, 38, 'Prescription Charge', 0.00, '2018-03-27', 'Active'),
(119, 18, 37, 'Consultancy Charge', 300.00, '2018-03-27', 'Active'),
(120, 18, 14, 'Treatment', 20000.00, '2018-03-27', 'Active'),
(121, 18, 39, 'Prescription Charge', 100.00, '2018-03-27', 'Active'),
(122, 18, 40, 'Prescription Charge', 20.00, '2018-03-27', 'Active'),
(123, 18, 41, 'Prescription Charge', 0.00, '2018-03-27', 'Active'),
(124, 18, 37, 'Consultancy Charge', 300.00, '2018-03-27', 'Active'),
(125, 18, 13, 'Treatment', 450.00, '2018-03-27', 'Active'),
(126, 18, 42, 'Prescription Charge', 20.00, '2018-03-27', 'Active'),
(127, 5, 36, 'Consultancy Charge', 500.00, '2018-03-27', 'Active'),
(128, 5, 13, 'Treatment', 450.00, '2018-03-27', 'Active'),
(129, 5, 43, 'Prescription Charge', 20.00, '2018-03-27', 'Active'),
(130, 19, 46, 'Prescription Charge', 0.00, '2018-03-28', 'Active'),
(131, 19, 48, 'Prescription Charge', 0.00, '2018-03-30', 'Active'),
(132, 19, 49, 'Prescription Charge', 70.00, '2018-03-30', 'Active'),
(133, 19, 50, 'Prescription Charge', 50.00, '2018-03-30', 'Active'),
(134, 19, 51, 'Prescription Charge', 30.00, '2018-03-30', 'Active'),
(135, 19, 52, 'Prescription Charge', 20.00, '2018-03-30', 'Active'),
(136, 19, 53, 'Prescription Charge', 50.00, '2018-03-30', 'Active'),
(137, 19, 54, 'Prescription Charge', 30.00, '2018-03-30', 'Active'),
(138, 12, 55, 'Prescription Charge', 45.00, '2018-03-31', 'Active'),
(139, 12, 56, 'Prescription Charge', 50.00, '2018-03-31', 'Active'),
(140, 12, 57, 'Prescription Charge', 80.00, '2018-03-31', 'Active'),
(141, 25, 58, 'Prescription Charge', 70.00, '2018-03-31', 'Active'),
(142, 25, 59, 'Prescription Charge', 100.00, '2018-03-31', 'Active'),
(143, 20, 60, 'Prescription Charge', 75.00, '2018-03-31', 'Active'),
(144, 19, 61, 'Prescription Charge', 20.00, '2018-03-31', 'Active'),
(145, 19, 63, 'Prescription Charge', 20.00, '2018-04-03', 'Active'),
(146, 10, 64, 'Prescription Charge', 25.00, '2018-04-03', 'Active'),
(147, 19, 68, 'Prescription Charge', 70.00, '2018-04-03', 'Active'),
(148, 28, 15, 'Room Rent', 500.00, '2018-04-03', 'Active'),
(149, 28, 15, 'Room Rent', 500.00, '2018-04-03', 'Active'),
(150, 28, 15, 'Room Rent', 500.00, '2018-04-03', 'Active'),
(151, 28, 15, 'Room Rent', 500.00, '2018-04-03', 'Active'),
(152, 29, 16, 'Room Rent', 100.00, '2018-04-03', 'Active'),
(153, 29, 16, 'Room Rent', 100.00, '2018-04-03', 'Active'),
(154, 29, 16, 'Room Rent', 100.00, '2018-04-03', 'Active'),
(155, 29, 69, 'Prescription Charge', 70.00, '2018-04-03', 'Active'),
(156, 19, 70, 'Prescription Charge', 75.00, '2018-04-03', 'Active'),
(157, 19, 71, 'Prescription Charge', 50.00, '2018-04-03', 'Active'),
(158, 19, 74, 'Prescription Charge', 0.00, '2018-04-03', 'Active'),
(159, 19, 75, 'Prescription Charge', 50.00, '2018-04-03', 'Active'),
(160, 23, 16, 'Room Rent', 100.00, '2018-04-03', 'Active'),
(161, 18, 35, 'Consultancy Charge', 700.00, '2018-04-03', 'Active'),
(162, 18, 15, 'Treatment', 554.00, '2018-04-03', 'Active'),
(163, 19, 76, 'Prescription Charge', 225.00, '2018-04-03', 'Active'),
(164, 19, 35, 'Consultancy Charge', 700.00, '2018-04-03', 'Active'),
(165, 19, 13, 'Treatment', 450.00, '2018-04-03', 'Active'),
(166, 5, 77, 'Prescription Charge', 965.00, '2018-04-04', 'Active'),
(167, 30, 16, 'Room Rent', 100.00, '2018-04-04', 'Active'),
(168, 30, 36, 'Consultancy Charge', 500.00, '2018-04-04', 'Active'),
(169, 30, 14, 'Treatment', 20000.00, '2018-04-04', 'Active'),
(170, 30, 36, 'Consultancy Charge', 500.00, '2018-04-04', 'Active'),
(171, 30, 17, 'Treatment', 5653.00, '2018-04-04', 'Active'),
(172, 30, 78, 'Prescription Charge', 320.00, '2018-04-04', 'Active'),
(173, 30, 79, 'Prescription Charge', 0.00, '2018-04-04', 'Active'),
(174, 31, 36, 'Consultancy Charge', 500.00, '2018-04-04', 'Active'),
(175, 31, 13, 'Treatment', 450.00, '2018-04-04', 'Active'),
(176, 31, 10, 'Service Charge', 250.00, '2018-04-04', 'Active'),
(177, 34, 35, 'Consultancy Charge', 700.00, '2018-04-04', 'Active'),
(178, 34, 14, 'Treatment', 20000.00, '2018-04-04', 'Active'),
(179, 34, 80, 'Prescription Charge', 250.00, '2018-04-04', 'Active'),
(180, 35, 35, 'Consultancy Charge', 700.00, '2018-04-04', 'Active'),
(181, 35, 13, 'Treatment', 450.00, '2018-04-04', 'Active'),
(182, 37, 35, 'Consultancy Charge', 700.00, '2018-04-06', 'Active'),
(183, 37, 13, 'Treatment', 450.00, '2018-04-06', 'Active'),
(184, 37, 81, 'Prescription Charge', 100.00, '2018-04-06', 'Active'),
(185, 35, 82, 'Prescription Charge', 0.00, '2018-04-06', 'Active'),
(186, 35, 83, 'Prescription Charge', 50.00, '2018-04-06', 'Active'),
(187, 35, 84, 'Prescription Charge', 40.00, '2018-04-06', 'Active'),
(188, 12, 85, 'Prescription Charge', 40.00, '2018-04-06', 'Active'),
(189, 15, 86, 'Prescription Charge', 325.00, '2018-04-07', 'Active'),
(190, 15, 87, 'Prescription Charge', 800.00, '2018-04-07', 'Active'),
(191, 12, 88, 'Prescription Charge', 150.00, '2018-04-07', 'Active'),
(192, 29, 89, 'Prescription Charge', 550.00, '2018-04-07', 'Active'),
(193, 35, 90, 'Prescription Charge', 0.00, '2018-04-07', 'Active'),
(194, 29, 91, 'Prescription Charge', 450.00, '2018-04-08', 'Active'),
(195, 29, 92, 'Prescription Charge', 1125.00, '2018-04-08', 'Active'),
(196, 29, 93, 'Prescription Charge', 0.00, '2018-04-08', 'Active'),
(197, 29, 94, 'Prescription Charge', 1700.00, '2018-04-08', 'Active'),
(198, 29, 95, 'Prescription Charge', 0.00, '2018-04-08', 'Active'),
(199, 29, 96, 'Prescription Charge', 1450.00, '2018-04-08', 'Active'),
(200, 29, 97, 'Prescription Charge', 650.00, '2018-04-08', 'Active'),
(201, 38, 35, 'Consultancy Charge', 700.00, '2018-07-12', 'Active'),
(202, 38, 14, 'Treatment', 20000.00, '2018-07-12', 'Active'),
(203, 38, 98, 'Prescription Charge', 0.00, '2018-07-12', 'Active'),
(204, 38, 99, 'Prescription Charge', 350.00, '2018-07-12', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `departmentid` int(10) NOT NULL,
  `departmentname` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`departmentid`, `departmentname`, `description`, `status`) VALUES
(11, 'Physician', 'All type of disease', 'Active'),
(12, 'Children doctor', 'All kinds of disease', 'Active'),
(13, 'General Medicne1', 'General doctor', 'Active'),
(14, 'ENT Specialist', 'Ear, Nose and Tongue Doctor', 'Active'),
(15, 'Neurologist', 'Related neurons, bones', 'Active'),
(16, 'Surgery', 'Includes plastic surgery, brain and neurology surgery', 'Active'),
(17, 'Pediatrics', 'Pediatrics doctor', 'Active'),
(18, 'Pharmacy', 'Providing patients with medicines prescribed by specialist physicians', 'Active'),
(19, 'Laboratory and Blood bank', 'Includes detailed lab investigations and blood bank are developing considerably as per international standards  ', 'Active'),
(20, 'Physiotherapy', 'Includes services to specialized clinic inpatients who are referred by hospital physicians or primary health care clinics.', 'Active'),
(25, 'physician', 'All type', '');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `doctorid` int(10) NOT NULL,
  `doctorname` varchar(50) NOT NULL,
  `mobileno` varchar(15) NOT NULL,
  `departmentid` int(10) NOT NULL,
  `loginid` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `status` varchar(10) NOT NULL,
  `education` varchar(25) NOT NULL,
  `experience` float(11,1) NOT NULL,
  `consultancy_charge` float(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`doctorid`, `doctorname`, `mobileno`, `departmentid`, `loginid`, `password`, `status`, `education`, `experience`, `consultancy_charge`) VALUES
(35, 'Christine akinyi', '9812453678', 11, 'doctor', '123456789', 'Active', 'MBBS,MD,IDCCM', 6.0, 10000.00),
(36, 'steve', '8966643980', 12, 'doctor1', '123456789', 'Active', 'MBBS,MD', 8.0, 1000.00),
(37, 'jobs', '7894561230', 13, 'doctor2', '123456789', 'Active', 'MBBS,DNB(ORTHO)', 7.0, 0.00),
(38, 'rose', '9874561230', 14, 'doctor3', '123456789', 'Active', 'MBBS,DLO,DNB', 4.0, 10000.00),
(39, 'akinyi', '8756332456', 15, 'doctor4', '123456789', 'Active', 'MBBS,DNB', 1.0, 10000.00),
(40, 'rashidi', '9876543210', 16, 'doctor5', '123456789', 'Active', 'MBBS,MD', 3.0, 10000.00),
(41, 'mary', '8785674654', 17, 'doctor6', '123456789', 'Active', 'MBBS,DA', 8.0, 10000.00),
(42, 'brenda', '9216549870', 18, 'doctor7', '123456789', 'Active', 'MBBS', 6.0, 10000.00),
(43, 'Raam', '9008713415', 19, 'doctor8', '123456789', 'Active', 'MBBS', 7.0, 10000.00),
(44, 'charles', '8548874216', 20, 'doctor9', '123456789', 'Active', 'BAMS', 7.0, 10000.00),
(45, 'Mahesh', '9985633225', 11, 'maheshkrishna', '123456789', 'Active', 'MBBS', 5.0, 200.00),
(46, 'Akinyi', '889655884', 12, 'rupesh', '123456789', 'Active', 'MBBS', 3.0, 10000.00),
(47, 'patrick', '99855896633', 12, 'parthiv', '77896541230', 'Active', 'MBBS', 1.0, 50000.00),
(61, 'viron', '986555566', 5, '8553507260', '876867888', 'active', 'ufyhfhjkl', 3.0, 10000.00);

-- --------------------------------------------------------

--
-- Table structure for table `doctor_timings`
--

CREATE TABLE `doctor_timings` (
  `doctor_timings_id` int(10) NOT NULL,
  `doctorid` int(10) NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `available_day` varchar(15) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor_timings`
--

INSERT INTO `doctor_timings` (`doctor_timings_id`, `doctorid`, `start_time`, `end_time`, `available_day`, `status`) VALUES
(17, 35, '09:30:00', '13:00:00', '', 'Active'),
(18, 36, '13:30:00', '17:00:00', '', 'Active'),
(19, 37, '14:00:00', '18:00:00', '', 'Active'),
(20, 38, '17:00:00', '21:00:00', '', 'Active'),
(21, 39, '13:00:00', '19:00:00', '', 'Active'),
(22, 40, '07:00:00', '11:00:00', '', 'Active'),
(23, 41, '13:30:00', '16:30:00', '', 'Active'),
(24, 42, '11:30:00', '14:30:00', '', 'Active'),
(25, 43, '12:30:00', '16:30:00', '', 'Active'),
(26, 44, '21:30:00', '12:30:00', '', 'Active'),
(27, 36, '01:03:00', '13:03:00', '', 'Active'),
(28, 61, '11:11:00', '19:07:00', '', 'Active'),
(29, 35, '11:11:00', '16:44:00', '', 'Active'),
(30, 35, '01:10:00', '16:11:00', '', 'Active'),
(31, 35, '01:02:00', '15:04:00', '2018-03-26', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

CREATE TABLE `medicine` (
  `medicineid` int(10) NOT NULL,
  `medicinename` varchar(25) NOT NULL,
  `medicinecost` float(10,2) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicine`
--

INSERT INTO `medicine` (`medicineid`, `medicinename`, `medicinecost`, `description`, `status`) VALUES
(1, 'abz', 1000.00, 'foe deworming', 'Active'),
(3, 'flagin', 140.00, 'for stomach ', 'Active'),
(4, 'panadol', 50.00, 'for headache', 'Active'),
(5, 'dolamine', 6000.00, 'for sleep', 'Active'),
(6, 'maramoja', 40.00, 'for pain', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderid` int(10) NOT NULL,
  `patientid` int(10) NOT NULL,
  `doctorid` int(10) NOT NULL,
  `prescriptionid` int(10) NOT NULL,
  `orderdate` date NOT NULL,
  `deliverydate` date NOT NULL,
  `address` text NOT NULL,
  `mobileno` varchar(15) NOT NULL,
  `note` text NOT NULL,
  `status` varchar(10) NOT NULL,
  `payment_type` varchar(20) NOT NULL,
  `card_no` varchar(20) NOT NULL,
  `cvv_no` varchar(5) NOT NULL,
  `expdate` date NOT NULL,
  `card_holder` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderid`, `patientid`, `doctorid`, `prescriptionid`, `orderdate`, `deliverydate`, `address`, `mobileno`, `note`, `status`, `payment_type`, `card_no`, `cvv_no`, `expdate`, `card_holder`) VALUES
(19, 22, 0, 0, '2022-11-23', '2022-12-23', 'nairobi', '8756332456', '', 'Active', '', '', '', '0000-00-00', ''),
(46, 52, 35, 85, '2022-11-23', '2022-11-29', 'nairobi\r\n\r\n', '966555665', ' zz', 'Delivered', '', '', '', '0000-00-00', '');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `patientid` int(10) NOT NULL,
  `patientname` varchar(50) NOT NULL,
  `admissiondate` date NOT NULL,
  `admissiontime` time NOT NULL,
  `address` varchar(250) NOT NULL,
  `mobileno` varchar(15) NOT NULL,
  `city` varchar(25) NOT NULL,
  `pincode` varchar(20) NOT NULL,
  `loginid` varchar(50) NOT NULL,
  `password` varchar(25) NOT NULL,
  `bloodgroup` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `dob` date NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`patientid`, `patientname`, `admissiondate`, `admissiontime`, `address`, `mobileno`, `city`, `pincode`, `loginid`, `password`, `bloodgroup`, `gender`, `dob`, `status`) VALUES
(22, 'sandra', '2022-11-30', '01:21:00', 'sharon', '8756332456', 'nairobi', '577234', 'sharon', '1234567899', 'B+', 'FEMALE', '2016-03-10', ''),
(58, 'rigo', '2022-11-30', '05:40:47', '1706', '0704092277', 'kayole', '40102', '12345', '123456789', 'A+', 'MALE', '2022-11-22', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `paymentid` int(10) NOT NULL,
  `patientid` int(10) NOT NULL,
  `appointmentid` int(10) NOT NULL,
  `paiddate` date NOT NULL,
  `paidtime` time NOT NULL,
  `paidamount` float(10,2) NOT NULL,
  `status` varchar(10) NOT NULL,
  `cardholder` varchar(50) NOT NULL,
  `cardnumber` int(25) NOT NULL,
  `cvvno` int(5) NOT NULL,
  `expdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`paymentid`, `patientid`, `appointmentid`, `paiddate`, `paidtime`, `paidamount`, `status`, `cardholder`, `cardnumber`, `cvvno`, `expdate`) VALUES
(55, 7, 108, '2022-11-29', '09:54:39', 18888.00, 'Active', 'sharon', 2147483647, 552, '2022-12-12');

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

CREATE TABLE `prescription` (
  `prescriptionid` int(10) NOT NULL,
  `treatment_records_id` int(10) NOT NULL,
  `doctorid` int(10) NOT NULL,
  `patientid` int(10) NOT NULL,
  `delivery_type` varchar(10) NOT NULL COMMENT 'Delivered through appointment or online order',
  `delivery_id` int(10) NOT NULL COMMENT 'appointmentid or orderid',
  `prescriptiondate` date NOT NULL,
  `status` varchar(10) NOT NULL,
  `appointmentid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prescription`
--

INSERT INTO `prescription` (`prescriptionid`, `treatment_records_id`, `doctorid`, `patientid`, `delivery_type`, `delivery_id`, `prescriptiondate`, `status`, `appointmentid`) VALUES
(67, 0, 35, 41, '', 0, '0000-00-00', 'Active', 0),
(68, 13, 35, 7, '', 0, '2018-04-03', 'Active', 0),
(69, 14, 35, 22, '', 0, '2018-04-03', 'Active', 0),
(70, 44, 35, 7, '', 0, '2018-04-03', 'Active', 0),
(71, 0, 35, 7, '', 0, '2018-04-03', 'Active', 0),
(72, 0, 0, 36, '', 0, '2018-04-03', 'Active', 0),
(73, 0, 0, 48, '', 0, '2018-03-27', 'Active', 0),
(74, 0, 36, 7, '', 0, '2018-04-27', 'Active', 0),
(75, 0, 36, 7, '', 0, '2018-04-12', 'Active', 0),
(76, 13, 35, 7, '', 0, '2018-04-03', 'Active', 0),
(77, 13, 36, 47, '', 0, '2018-04-04', 'Active', 0),
(78, 14, 36, 44, '', 0, '2018-04-04', 'Active', 0),
(79, 14, 35, 44, '', 0, '0000-00-00', 'Active', 0),
(80, 14, 35, 7, '', 0, '2018-04-04', 'Active', 0),
(81, 13, 35, 56, '', 0, '2018-04-06', 'Active', 0),
(82, 0, 35, 7, '', 0, '2018-04-06', 'Active', 0),
(83, 0, 35, 7, '', 0, '2018-04-06', 'Active', 0),
(84, 0, 35, 7, '', 0, '2018-04-13', 'Active', 0),
(85, 0, 35, 52, '', 0, '2018-04-06', 'Active', 0),
(86, 0, 35, 53, '', 0, '2018-04-07', 'Active', 0),
(87, 0, 35, 53, '', 47, '2018-04-10', 'Active', 0),
(88, 0, 35, 52, '', 48, '2018-04-07', 'Active', 0),
(89, 0, 36, 22, '', 49, '2018-04-07', 'Active', 0),
(90, 0, 35, 7, '', 42, '0000-00-00', 'Active', 0),
(91, 0, 35, 22, '', 50, '2018-04-08', 'Active', 0),
(92, 0, 35, 22, '', 51, '2018-04-10', 'Active', 0),
(93, 0, 36, 22, '', 49, '2018-04-10', 'Active', 0),
(94, 0, 35, 22, '', 52, '2018-04-08', 'Active', 0),
(95, 0, 35, 22, '', 53, '2018-04-08', 'Active', 0),
(96, 0, 35, 22, '', 54, '2018-04-08', 'Active', 0),
(97, 0, 35, 22, '', 55, '2018-04-08', 'Active', 0),
(98, 0, 35, 57, '', 0, '0000-00-00', 'Active', 120),
(99, 0, 35, 57, '', 0, '2018-07-12', 'Active', 120);

-- --------------------------------------------------------

--
-- Table structure for table `prescription_records`
--

CREATE TABLE `prescription_records` (
  `prescription_record_id` int(10) NOT NULL,
  `prescription_id` int(10) NOT NULL,
  `medicine_name` varchar(25) NOT NULL,
  `cost` float(10,2) NOT NULL,
  `unit` int(10) NOT NULL,
  `dosage` varchar(25) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prescription_records`
--

INSERT INTO `prescription_records` (`prescription_record_id`, `prescription_id`, `medicine_name`, `cost`, `unit`, `dosage`, `status`) VALUES
(26, 15, 'Arthopan', 30.00, 10, '1-0-1', 'Active'),
(27, 16, 'Ecospirin', 11.00, 10, '1-1-1', 'Active'),
(28, 17, 'Dolo-60', 15.00, 5, '0-0-1', 'Active'),
(29, 18, 'Fenon-650', 500.00, 20, '0-1-1', 'Active'),
(30, 19, 'Rantac', 10.00, 10, '0-1-0', 'Active'),
(31, 20, 'Colpol', 25.00, 6, '1-1-1', ''),
(32, 20, 'Cinox', 85.00, 5, '1-1-1', ''),
(33, 21, 'Crosin DS', 45.00, 10, '0-1-1', ''),
(34, 23, 'glocu', 500.00, 6, '1-0-1', ''),
(35, 23, 'diodine', 60.00, 10, '1-1-1', ''),
(36, 23, 'Metacine', 66.00, 12, '1-0-1', ''),
(37, 23, 'Metacine', 66.00, 12, '1-0-1', ''),
(38, 23, 'Metacine', 66.00, 12, '1-0-1', ''),
(39, 23, 'Metacine', 66.00, 12, '1-0-1', ''),
(40, 24, 'glocu', 500.00, 4, '1-0-1', ''),
(41, 24, 'diodine', 500.00, 34, '1-0-1', ''),
(42, 24, 'diodine', 0.00, 4, '1-1-1', ''),
(43, 22, 'tin', 3.00, 5, '1-1-1', ''),
(44, 28, 'appsa', 500.00, 3, '1-0-1', ''),
(45, 28, 'novas', 30.00, 4, '1-1-1', ''),
(46, 28, 'kanal', 60.00, 6, '1-1-0', ''),
(47, 28, 'JITEL', 100.00, 6, '1-0-1', ''),
(48, 28, '24', 500.00, 10, '1-1-1', ''),
(49, 32, 'xyz', 39.00, 4, '1-0-1', ''),
(50, 32, 'Bcc', 99.00, 1, '1-1-1', ''),
(51, 32, 'ppr', 900.00, 4, '1-1-0', ''),
(52, 33, 'abc', 90.00, 3, '1-0-1', ''),
(53, 33, 'xyz', 500.00, 90, '1-1-1', ''),
(54, 35, 'omani', 900.00, 3, '1-0-1', ''),
(62, 36, '4', 50.00, 10, '1-1-1', 'Active'),
(63, 36, '4', 50.00, 10, '1-1-1', 'Active'),
(64, 36, '4', 50.00, 10, '1-1-1', 'Active'),
(65, 36, '4', 50.00, 10, '1-1-1', 'Active'),
(66, 36, '4', 50.00, 10, '1-1-1', 'Active'),
(67, 36, '4', 50.00, 10, '1-1-1', 'Active'),
(68, 36, '4', 50.00, 10, '1-1-1', 'Active'),
(69, 36, '4', 50.00, 10, '1-1-1', 'Active'),
(70, 36, '4', 50.00, 10, '1-1-1', 'Active'),
(71, 37, '1', 20.00, 5, '0-1-0', 'Active'),
(72, 39, '1', 20.00, 1, '1-1-1', 'Active'),
(73, 39, '5', 30.00, 4, '1-1-0', 'Active'),
(74, 39, '4', 50.00, 1, '1-1-1', 'Active'),
(75, 40, '1', 20.00, 9, '1-1-0', 'Active'),
(76, 42, '1', 20.00, 1, '1-1-0', 'Active'),
(77, 43, '1', 20.00, 12, '0-1-1', 'Active'),
(78, 44, 'eeee', 55.00, 3, '1-1-1', ''),
(79, 45, 'ddd', 33.00, 2, '1-1-1', ''),
(80, 49, '1', 20.00, 3, '1-1-0', 'Active'),
(81, 49, '6', 50.00, 8, '1-0-1', 'Active'),
(82, 50, '1', 20.00, 8, '', 'Active'),
(83, 50, '5', 30.00, 7, '', 'Active'),
(84, 51, '5', 30.00, 7, '1-1-1', 'Active'),
(85, 52, '1', 20.00, 2, '0-0-1', 'Active'),
(86, 53, '6', 50.00, 3, '1-1-1', 'Active'),
(87, 54, '5', 30.00, 4, '1-1-1', 'Active'),
(88, 55, '1', 20.00, 10, '0-0-1', 'Active'),
(89, 55, '3', 25.00, 4, '1-0-1', 'Active'),
(92, 57, '4', 50.00, 1, '0-1-1', 'Active'),
(93, 57, '5', 30.00, 10, '0-1-1', 'Active'),
(94, 58, '1', 20.00, 1, '0-1-1', 'Active'),
(95, 58, '4', 50.00, 1, '1-1-1', 'Active'),
(96, 59, '4', 50.00, 3, '1-1-0', 'Active'),
(97, 59, '6', 50.00, 4, '1-0-1', 'Active'),
(98, 60, '4', 50.00, 3, '0-1-1', 'Active'),
(99, 60, '3', 25.00, 4, '0-1-1', 'Active'),
(100, 61, '1', 20.00, 3, '1-1-1', 'Active'),
(101, 63, '1', 20.00, 2, '1-1-0', 'Active'),
(102, 64, '3', 25.00, 1, '0-1-1', 'Active'),
(103, 66, 'eeee', 20.00, 5, '0-1-1', ''),
(104, 68, '1', 20.00, 2, '1-1-0', 'Active'),
(105, 69, '1', 20.00, 10, '0-0-1', 'Active'),
(106, 69, '4', 50.00, 1, '1-1-1', 'Active'),
(107, 68, '4', 50.00, 13, '1-0-1', 'Active'),
(108, 70, '4', 50.00, 1, '1-1-0', 'Active'),
(109, 70, '3', 25.00, 3, '0-1-1', 'Active'),
(110, 71, '6', 50.00, 2, '1-1-0', 'Active'),
(111, 75, '6', 50.00, 2, '0-1-1', 'Active'),
(112, 76, '3', 25.00, 2, '0-1-0', 'Active'),
(113, 77, '1', 20.00, 10, '0-1-1', 'Active'),
(114, 77, '6', 50.00, 10, '1-1-0', 'Active'),
(115, 77, '3', 25.00, 3, '1-1-1', 'Active'),
(116, 77, '5', 30.00, 3, '1-1-0', 'Active'),
(117, 77, '6', 50.00, 2, '0-1-1', 'Active'),
(118, 78, '1', 20.00, 1, '0-1-1', 'Active'),
(119, 78, '5', 30.00, 10, '0-1-1', 'Active'),
(120, 76, '3', 25.00, 7, '1-1-0', 'Active'),
(121, 80, '4', 50.00, 5, '1-0-1', 'Active'),
(122, 81, '3', 25.00, 4, '1-1-0', 'Active'),
(123, 83, '3', 25.00, 2, '0-1-1', 'Active'),
(124, 84, '1', 20.00, 2, '1-0-1', 'Active'),
(125, 85, '1', 20.00, 2, '1-0-1', 'Active'),
(126, 86, '3', 25.00, 1, '0-1-1', 'Active'),
(127, 86, '4', 50.00, 5, '1-1-1', 'Active'),
(128, 86, '6', 50.00, 1, '1-0-0', 'Active'),
(129, 87, '5', 30.00, 10, '0-1-1', 'Active'),
(130, 87, '6', 50.00, 10, '1-1-0', 'Active'),
(131, 88, '3', 25.00, 6, '1-0-1', 'Active'),
(132, 89, '6', 50.00, 6, '0-1-1', 'Active'),
(133, 89, '6', 50.00, 5, '0-1-0', 'Active'),
(134, 91, '1', 20.00, 10, '0-1-1', 'Active'),
(135, 91, '4', 50.00, 2, '1-1-0', 'Active'),
(136, 91, '6', 50.00, 3, '1-1-1', 'Active'),
(137, 92, '1', 20.00, 10, '0-1-1', 'Active'),
(138, 92, '4', 50.00, 10, '1-1-1', 'Active'),
(139, 92, '6', 50.00, 2, '0-1-1', 'Active'),
(140, 92, '3', 25.00, 13, '1-0-1', 'Active'),
(141, 94, '1', 20.00, 10, '0-1-1', 'Active'),
(142, 94, '6', 50.00, 15, '1-1-0', 'Active'),
(143, 94, '6', 50.00, 15, '0-1-0', 'Active'),
(144, 96, '1', 20.00, 10, '0-1-1', 'Active'),
(145, 96, '4', 50.00, 10, '1-1-1', 'Active'),
(146, 96, '6', 50.00, 15, '0-1-0', 'Active'),
(147, 97, '1', 20.00, 10, '0-1-1', 'Active'),
(148, 97, '5', 30.00, 15, '1-1-0', 'Active'),
(149, 99, '1', 20.00, 10, '1-0-1', 'Active'),
(150, 99, '4', 50.00, 3, '1-1-0', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `roomid` int(10) NOT NULL,
  `roomtype` varchar(25) NOT NULL,
  `roomno` int(10) NOT NULL,
  `noofbeds` int(10) NOT NULL,
  `room_tariff` float(10,2) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`roomid`, `roomtype`, `roomno`, `noofbeds`, `room_tariff`, `status`) VALUES
(15, 'GENERAL WARD', 1, 20, 500.00, 'Active'),
(16, 'SPECIAL WARD', 2, 10, 100.00, 'Active'),
(17, 'GENERAL WARD', 2, 10, 500.00, 'Active'),
(18, 'GENERAL WARD', 121, 13, 150.00, 'Active'),
(19, 'GENERAL WARD', 850, 11, 500.00, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `service_type`
--

CREATE TABLE `service_type` (
  `service_type_id` int(10) NOT NULL,
  `service_type` varchar(100) NOT NULL,
  `servicecharge` float(10,2) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `service_type`
--

INSERT INTO `service_type` (`service_type_id`, `service_type`, `servicecharge`, `description`, `status`) VALUES
(10, 'X-ray', 250.00, 'To take fractured photo copy', 'Active'),
(11, 'Scanning', 450.00, 'To scan body from injury', 'Active'),
(12, 'MRI', 300.00, 'Regarding body scan', 'Active'),
(13, 'Blood Testing', 150.00, 'To detect the type of disease', 'Active'),
(14, 'Diagnosis', 210.00, 'To analyse the diagnosis', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `treatment`
--

CREATE TABLE `treatment` (
  `treatmentid` int(10) NOT NULL,
  `treatmenttype` varchar(25) NOT NULL,
  `treatment_cost` decimal(10,2) NOT NULL,
  `note` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `treatment_records`
--

CREATE TABLE `treatment_records` (
  `treatment_records_id` int(10) NOT NULL,
  `treatmentid` int(10) NOT NULL,
  `appointmentid` int(10) NOT NULL,
  `patientid` int(10) NOT NULL,
  `doctorid` int(10) NOT NULL,
  `treatment_description` text NOT NULL,
  `uploads` varchar(100) NOT NULL,
  `treatment_date` date NOT NULL,
  `treatment_time` time NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userid` int(11) NOT NULL,
  `loginname` varchar(50) NOT NULL,
  `password` varchar(10) NOT NULL,
  `patientname` varchar(50) NOT NULL,
  `mobileno` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `createddateandtime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `loginname`, `password`, `patientname`, `mobileno`, `email`, `createddateandtime`) VALUES
(1, 'admin', 'admin', 'admin', '', '', '2017-12-14 11:21:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminid`),
  ADD UNIQUE KEY `adminname` (`adminname`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`appointmentid`);

--
-- Indexes for table `billing`
--
ALTER TABLE `billing`
  ADD PRIMARY KEY (`billingid`);

--
-- Indexes for table `billing_records`
--
ALTER TABLE `billing_records`
  ADD PRIMARY KEY (`billingservice_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`departmentid`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`doctorid`);

--
-- Indexes for table `doctor_timings`
--
ALTER TABLE `doctor_timings`
  ADD PRIMARY KEY (`doctor_timings_id`);

--
-- Indexes for table `medicine`
--
ALTER TABLE `medicine`
  ADD PRIMARY KEY (`medicineid`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderid`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`patientid`),
  ADD KEY `loginid` (`loginid`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`paymentid`);

--
-- Indexes for table `prescription`
--
ALTER TABLE `prescription`
  ADD PRIMARY KEY (`prescriptionid`);

--
-- Indexes for table `prescription_records`
--
ALTER TABLE `prescription_records`
  ADD PRIMARY KEY (`prescription_record_id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`roomid`);

--
-- Indexes for table `service_type`
--
ALTER TABLE `service_type`
  ADD PRIMARY KEY (`service_type_id`);

--
-- Indexes for table `treatment`
--
ALTER TABLE `treatment`
  ADD PRIMARY KEY (`treatmentid`);

--
-- Indexes for table `treatment_records`
--
ALTER TABLE `treatment_records`
  ADD PRIMARY KEY (`treatment_records_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adminid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `appointmentid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `billing`
--
ALTER TABLE `billing`
  MODIFY `billingid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `billing_records`
--
ALTER TABLE `billing_records`
  MODIFY `billingservice_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `departmentid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `doctorid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `doctor_timings`
--
ALTER TABLE `doctor_timings`
  MODIFY `doctor_timings_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `medicine`
--
ALTER TABLE `medicine`
  MODIFY `medicineid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `patientid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `paymentid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `prescription`
--
ALTER TABLE `prescription`
  MODIFY `prescriptionid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `prescription_records`
--
ALTER TABLE `prescription_records`
  MODIFY `prescription_record_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `roomid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `service_type`
--
ALTER TABLE `service_type`
  MODIFY `service_type_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `treatment`
--
ALTER TABLE `treatment`
  MODIFY `treatmentid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `treatment_records`
--
ALTER TABLE `treatment_records`
  MODIFY `treatment_records_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
