-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 13, 2021 at 04:58 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mh_distribution_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `contents`
--

CREATE TABLE `contents` (
  `batch_number` int(11) NOT NULL,
  `vaccineID` int(11) NOT NULL,
  `manufactured_date` date NOT NULL,
  `expiry_date` date NOT NULL,
  `dispatch_date` date DEFAULT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contents`
--

INSERT INTO `contents` (`batch_number`, `vaccineID`, `manufactured_date`, `expiry_date`, `dispatch_date`, `quantity`) VALUES
(101, 1, '2020-01-01', '2022-01-01', '2021-03-12', 1000),
(101, 2, '2020-01-01', '2022-01-01', '2020-03-14', 1000),
(101, 3, '2020-03-24', '2022-03-23', '2021-03-14', 1500),
(102, 1, '2020-04-03', '2022-04-03', '2021-08-14', 2800),
(102, 3, '2020-05-28', '2022-05-27', '2020-07-14', 12890),
(103, 1, '2020-07-16', '2022-07-16', '2020-12-14', 13600),
(103, 2, '2020-08-01', '2022-08-01', '2020-09-14', 15240),
(103, 3, '2020-09-01', '2022-09-01', '2020-12-14', 18920),
(104, 2, '2020-10-18', '2022-10-18', '2020-11-16', 21530),
(104, 3, '2020-10-18', '2022-10-18', '2020-10-25', 18530),
(105, 1, '2021-01-01', '2023-01-01', '2021-01-24', 14530),
(105, 2, '2021-01-01', '2023-01-01', '2021-01-13', 16530),
(105, 3, '2020-12-01', '2022-12-01', '2021-02-11', 32530),
(106, 1, '2021-03-30', '2023-03-29', '2021-04-13', 35060),
(106, 2, '2021-02-12', '2023-02-12', '2021-05-13', 12090),
(106, 3, '2021-04-18', '2023-04-19', '2021-05-30', 26060),
(106, 4, '2021-02-12', '2023-02-12', '2021-06-13', 12090),
(107, 2, '2021-05-21', '2023-05-20', '2021-06-10', 18060);

-- --------------------------------------------------------

--
-- Table structure for table `co_ordinator`
--

CREATE TABLE `co_ordinator` (
  `co_ordinatorID` int(11) NOT NULL,
  `co_ordinatorID_company_name` varchar(50) NOT NULL,
  `project_done_to_government` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `co_ordinator`
--

INSERT INTO `co_ordinator` (`co_ordinatorID`, `co_ordinatorID_company_name`, `project_done_to_government`) VALUES
(1001, 'AUROBINDO Pvt Ltd', 32),
(1002, 'PANACEA BIOTEC and DISTRIBUTOR', 57),
(1003, 'STRIDES PHARMAS and PATH TO HOSPITAL', 49),
(1004, 'WAY ZYDUS CADILA', 74),
(1005, 'INDIAN IMMUNOLOGICALS and MOVERS', 102),
(1006, 'VIKAAS BHARATH', 4),
(1007, 'MYNVAX', 82),
(1008, 'BIOLOGICAL E', 67),
(1009, 'JAN SEVA TEAM Pvt Ltd', 14),
(1010, 'VEDANTH INDIA', 21),
(1011, 'GAMANA Pvt Ltd', 65);

-- --------------------------------------------------------

--
-- Table structure for table `distribution`
--

CREATE TABLE `distribution` (
  `serial_number` int(11) NOT NULL,
  `batch_number` int(11) DEFAULT NULL,
  `vaccineID` int(11) DEFAULT NULL,
  `hospitalID` int(11) DEFAULT NULL,
  `co_ordinatorID` int(11) DEFAULT NULL,
  `number_of_vaccines_recieved` int(11) DEFAULT NULL,
  `number_of_vaccines_distributed` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `distribution`
--

INSERT INTO `distribution` (`serial_number`, `batch_number`, `vaccineID`, `hospitalID`, `co_ordinatorID`, `number_of_vaccines_recieved`, `number_of_vaccines_distributed`) VALUES
(3, 101, 1, 3, 1001, 700, 400),
(4, 101, 1, 1, 1001, 300, 250),
(5, 101, 2, 1, 1005, 500, 400),
(6, 101, 2, 2, 1005, 500, 450),
(7, 101, 3, 5, 1005, 1000, 940),
(9, 101, 3, 4, 1006, 500, 320),
(10, 102, 1, 5, 1009, 800, 560),
(11, 102, 1, 8, 1007, 1000, 890),
(12, 102, 1, 15, 1007, 750, 600),
(13, 102, 1, 15, 1010, 250, 100),
(20, 102, 3, 11, 1005, 3000, 2800),
(21, 102, 3, 36, 1011, 3000, 980),
(22, 102, 3, 35, 1008, 4000, 2800),
(23, 102, 3, 34, 1004, 2000, 1110),
(24, 103, 1, 33, 1001, 600, 400),
(25, 103, 1, 32, 1003, 1500, 800),
(26, 103, 1, 31, 1002, 3000, 1580),
(27, 103, 1, 30, 1008, 1500, 700),
(28, 103, 1, 29, 1005, 2000, 1510),
(29, 103, 1, 28, 1007, 2500, 2350),
(30, 103, 1, 27, 1006, 2000, 1890),
(31, 103, 1, 26, 1009, 500, 100),
(43, 103, 2, 25, 1008, 240, 200),
(44, 103, 2, 24, 1010, 1500, 800),
(45, 103, 2, 23, 1010, 1500, 580),
(46, 103, 2, 22, 1010, 2000, 1400),
(47, 103, 2, 21, 1011, 2000, 1510),
(48, 103, 2, 20, 1001, 3500, 2350),
(49, 103, 2, 19, 1002, 1000, 890),
(50, 103, 2, 18, 1005, 1500, 900),
(51, 103, 2, 17, 1008, 1000, 852),
(52, 103, 2, 16, 1011, 750, 200),
(53, 103, 2, 15, 1008, 250, 210),
(108, 103, 3, 14, 1008, 420, 200),
(110, 103, 3, 12, 1010, 1500, 580),
(111, 103, 3, 22, 1010, 1500, 1400),
(112, 103, 3, 21, 1011, 1500, 1450),
(113, 103, 3, 11, 1001, 3000, 2350),
(114, 103, 3, 10, 1002, 1500, 890),
(115, 103, 3, 18, 1005, 1500, 900),
(116, 103, 3, 9, 1008, 1000, 852),
(117, 103, 3, 8, 1011, 750, 200),
(118, 103, 3, 7, 1008, 250, 210),
(119, 103, 3, 6, 1004, 500, 400),
(120, 103, 3, 5, 1001, 1000, 755),
(121, 103, 3, 4, 1009, 1000, 520),
(122, 103, 3, 3, 1010, 750, 200),
(123, 103, 3, 2, 1011, 250, 200),
(124, 103, 3, 1, 1003, 1000, 820),
(125, 103, 3, 36, 1003, 1000, 540),
(126, 104, 2, 1, 1001, 1000, 500),
(177, 104, 2, 6, 1002, 1000, 750),
(192, 104, 2, 31, 1011, 1500, 1134),
(193, 104, 2, 33, 1007, 1500, 1001),
(194, 104, 2, 32, 1004, 1500, 815),
(195, 104, 2, 8, 1009, 1500, 1129),
(196, 104, 2, 9, 1011, 1500, 1344),
(197, 104, 2, 28, 1009, 1500, 1343),
(198, 104, 2, 34, 1004, 1500, 944),
(199, 104, 2, 16, 1005, 1500, 929),
(200, 104, 2, 9, 1005, 1500, 988),
(201, 104, 2, 26, 1008, 1500, 691),
(202, 104, 2, 33, 1009, 1500, 518),
(203, 104, 2, 36, 1010, 1500, 832),
(204, 104, 2, 14, 1006, 1500, 1073),
(205, 104, 2, 14, 1006, 30, 29),
(206, 104, 3, 34, 1004, 1500, 664),
(207, 104, 3, 23, 1010, 1500, 976),
(208, 104, 3, 16, 1005, 1500, 1210),
(209, 104, 3, 34, 1008, 1500, 594),
(210, 104, 3, 28, 1007, 1500, 1157),
(211, 104, 3, 27, 1003, 1500, 1417),
(212, 104, 3, 27, 1002, 1500, 1466),
(213, 104, 3, 20, 1006, 1500, 926),
(214, 104, 3, 7, 1007, 1500, 710),
(215, 104, 3, 32, 1007, 1500, 939),
(216, 104, 3, 23, 1002, 1500, 1252),
(217, 104, 3, 5, 1002, 1500, 1167),
(218, 104, 3, 5, 1002, 530, 529),
(219, 105, 1, 22, 1003, 1500, 1465),
(220, 105, 1, 33, 1010, 1500, 708),
(221, 105, 1, 21, 1007, 1500, 1152),
(222, 105, 1, 28, 1010, 1500, 545),
(223, 105, 1, 32, 1010, 1500, 987),
(224, 105, 1, 3, 1005, 1500, 796),
(225, 105, 1, 10, 1004, 1500, 545),
(226, 105, 1, 7, 1001, 1500, 688),
(227, 105, 1, 14, 1001, 1500, 696),
(228, 105, 1, 14, 1001, 1030, 1029),
(229, 105, 2, 12, 1002, 1500, 1461),
(230, 105, 2, 20, 1003, 1500, 908),
(231, 105, 2, 27, 1009, 1500, 1058),
(232, 105, 2, 26, 1003, 1500, 1080),
(233, 105, 2, 26, 1006, 1500, 761),
(234, 105, 2, 36, 1001, 1500, 578),
(235, 105, 2, 5, 1010, 1500, 619),
(236, 105, 2, 22, 1006, 1500, 1233),
(237, 105, 2, 31, 1002, 1500, 1304),
(238, 105, 2, 7, 1006, 1500, 659),
(239, 105, 2, 34, 1009, 1500, 652),
(240, 105, 2, 34, 1009, 30, 29),
(241, 105, 3, 33, 1009, 1500, 1378),
(242, 105, 3, 23, 1004, 1500, 785),
(243, 105, 3, 18, 1006, 1500, 705),
(244, 105, 3, 34, 1003, 1500, 1107),
(245, 105, 3, 8, 1003, 1500, 1201),
(246, 105, 3, 26, 1003, 1500, 1135),
(247, 105, 3, 24, 1006, 1500, 869),
(248, 105, 3, 32, 1005, 1500, 1395),
(249, 105, 3, 26, 1003, 1500, 515),
(250, 105, 3, 3, 1005, 1500, 1069),
(251, 105, 3, 22, 1001, 1500, 1027),
(252, 105, 3, 35, 1011, 1500, 792),
(253, 105, 3, 10, 1004, 1500, 1064),
(254, 105, 3, 12, 1005, 1500, 845),
(255, 105, 3, 36, 1003, 1500, 1432),
(256, 105, 3, 6, 1010, 1500, 829),
(257, 105, 3, 5, 1007, 1500, 626),
(258, 105, 3, 15, 1011, 1500, 1145),
(259, 105, 3, 31, 1002, 1500, 714),
(260, 105, 3, 16, 1006, 1500, 822),
(261, 105, 3, 2, 1003, 1500, 521),
(262, 105, 3, 2, 1003, 1030, 1029),
(263, 106, 1, 5, 1002, 1500, 601),
(264, 106, 1, 20, 1003, 1500, 1066),
(265, 106, 1, 36, 1004, 1500, 1457),
(266, 106, 1, 13, 1001, 1500, 1126),
(267, 106, 1, 4, 1004, 1500, 1287),
(268, 106, 1, 8, 1008, 1500, 725),
(269, 106, 1, 26, 1006, 1500, 922),
(270, 106, 1, 9, 1010, 1500, 1166),
(271, 106, 1, 21, 1007, 1500, 729),
(272, 106, 1, 36, 1010, 1500, 503),
(273, 106, 1, 20, 1008, 1500, 1130),
(274, 106, 1, 31, 1001, 1500, 754),
(275, 106, 1, 6, 1004, 1500, 1413),
(276, 106, 1, 5, 1010, 1500, 732),
(277, 106, 1, 36, 1010, 1500, 1222),
(278, 106, 1, 3, 1010, 1500, 551),
(279, 106, 1, 6, 1011, 1500, 1071),
(280, 106, 1, 36, 1004, 1500, 1022),
(281, 106, 1, 17, 1001, 1500, 1429),
(283, 106, 1, 8, 1001, 1500, 1104),
(284, 106, 1, 4, 1003, 1500, 660),
(285, 106, 1, 4, 1007, 1500, 999),
(286, 106, 1, 4, 1007, 560, 559),
(287, 106, 2, 35, 1004, 1500, 1414),
(288, 106, 2, 36, 1005, 1500, 537),
(289, 106, 2, 35, 1010, 1500, 916),
(290, 106, 2, 32, 1001, 1500, 522),
(291, 106, 2, 17, 1011, 1500, 1105),
(292, 106, 2, 27, 1004, 1500, 789),
(293, 106, 2, 10, 1010, 1500, 787),
(294, 106, 2, 2, 1003, 1500, 870),
(295, 106, 2, 2, 1003, 90, 89),
(297, 106, 3, 33, 1006, 1500, 1117),
(298, 106, 3, 21, 1005, 1500, 1096),
(299, 106, 3, 26, 1003, 1500, 1107),
(300, 106, 3, 27, 1011, 1500, 690),
(301, 106, 3, 20, 1005, 1500, 963),
(302, 106, 3, 13, 1004, 1500, 1409),
(303, 106, 3, 23, 1008, 1500, 597),
(304, 106, 3, 33, 1003, 1500, 612),
(305, 106, 3, 12, 1004, 1500, 799),
(306, 106, 3, 27, 1009, 1500, 1127),
(307, 106, 3, 3, 1006, 1500, 1375),
(308, 106, 3, 7, 1002, 1500, 848),
(309, 106, 3, 21, 1010, 1500, 650),
(310, 106, 3, 29, 1009, 1500, 1077),
(311, 106, 3, 26, 1002, 1500, 1023),
(312, 106, 3, 11, 1011, 1500, 817),
(313, 106, 3, 11, 1011, 560, 559),
(314, 106, 4, 29, 1005, 1500, 1208),
(315, 106, 4, 23, 1003, 1500, 1328),
(316, 106, 4, 23, 1010, 1500, 1381),
(317, 106, 4, 5, 1003, 1500, 1481),
(318, 106, 4, 11, 1006, 1500, 591),
(319, 106, 4, 5, 1009, 1500, 600),
(320, 106, 4, 28, 1010, 1500, 1294),
(321, 106, 4, 28, 1010, 1500, 557),
(322, 106, 4, 28, 1010, 90, 89),
(323, 107, 2, 35, 1007, 1500, 1410),
(324, 107, 2, 8, 1006, 1500, 1393),
(325, 107, 2, 13, 1006, 1500, 840),
(326, 107, 2, 25, 1007, 1500, 646),
(327, 107, 2, 24, 1010, 1500, 547),
(328, 107, 2, 32, 1010, 1500, 1087),
(329, 107, 2, 36, 1008, 1500, 1227),
(330, 107, 2, 1, 1001, 1500, 803),
(331, 107, 2, 11, 1011, 1500, 1330),
(332, 107, 2, 4, 1006, 1500, 1135),
(333, 107, 2, 34, 1007, 1500, 1123),
(334, 107, 2, 13, 1007, 1500, 983),
(340, 103, 2, 13, 1003, 5000, 2000),
(341, 103, 2, 13, 1003, 5000, 2000);

-- --------------------------------------------------------

--
-- Table structure for table `hospitals`
--

CREATE TABLE `hospitals` (
  `hospitalID` int(11) NOT NULL,
  `hospital_name` varchar(50) NOT NULL,
  `state` varchar(25) NOT NULL,
  `city` varchar(25) NOT NULL,
  `type` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hospitals`
--

INSERT INTO `hospitals` (`hospitalID`, `hospital_name`, `state`, `city`, `type`) VALUES
(1, 'BANGALORE MEDICAL COLLEGE', 'KARNATAKA', 'BANGALORE, K.R.MARKET', 'Govt'),
(2, 'Bowring & Lady Curzon Hospitals', 'KARNATAKA', 'BANGALORE', 'Pri'),
(3, 'Columbia Asia', 'KARNATAKA', 'BANGALORE, HEBBAL', 'Pri'),
(4, 'NARAYANA HRUDAYALAYA', 'KARNATAKA', 'SHIMOGA', 'Pri'),
(5, 'SIMS', 'KARNATAKA', 'SHIMOGA', 'Govt'),
(6, 'METRO HOSPITAL', 'KARNATAKA', 'SHIMOGA', 'Pri'),
(7, 'SUBBHAYAIH', 'KARNATAKA', 'SHIMOGA', 'Pri'),
(8, 'NANJAPPA', 'KARNATAKA', 'SHIMOGA', 'Pri'),
(9, 'NANJAPPA LIFE CARE', 'KARNATAKA', 'SHIMOGA', 'Pri'),
(10, 'SARJI HEALTH', 'KARNATAKA', 'SHIMOGA', 'Pri'),
(11, 'MAXX SUPER-SPECIALITY', 'KARNATAKA', 'SHIMOGA', 'Pri'),
(12, 'USHA NURSING CENTER', 'KARNATAKA', 'SHIMOGA', 'Pri'),
(13, 'APPOLO', 'KARNATAKA', 'SHIMOGA', 'Pri'),
(14, 'JAYADEV INSTITUTE', 'KARNATAKA', 'BANGALORE', 'Govt'),
(15, 'NIMHANS', 'KARNATAKA', 'BANGALORE', 'Govt'),
(16, 'JAI CHAMARAJENDRA', 'KARNATAKA', 'BANGALORE', 'Pri'),
(17, 'VICTORIA', 'KARNATAKA', 'BANGALORE', 'Pri'),
(18, 'FORTIS HOSPITAL', 'KARNATAKA', 'BANGALORE', 'Pri'),
(19, 'APPOLO', 'KARNATAKA', 'MYSORE', 'Pri'),
(20, 'KAMAKSHI', 'KARNATAKA', 'MYSORE', 'Pri'),
(21, 'MYSORE MEDICAL COLLEGE', 'KARNATAKA', 'MYSORE', 'Govt'),
(22, 'SWAMI VIVEKANADA MEMORIAL HOSPITAL', 'KARNATAKA', 'MYSORE', 'Pri'),
(23, 'SRI RAMAKRISHNA HOSPITAL', 'KARNATAKA', 'MYSORE', 'Pri'),
(24, 'SRI SHARADEVI SEVA', 'KARNATAKA', 'MYSORE', 'Pri'),
(25, 'RIVER VIEW HEALTH CARE', 'KARNATAKA', 'MYSORE', 'Pri'),
(26, 'VIDYARANYA HOSPITAL', 'KARNATAKA', 'MYSORE', 'Govt'),
(27, 'AIIMS', 'DELHI', 'ANSARI NAGAR', 'Govt'),
(28, 'MEDENTA THE MEDICITY', 'DELHI', 'GURUGRAM', 'Pri'),
(29, 'THE CHRISTIAN MEDICAL COLLEGE', 'TAMIL NADU', 'VELLORE', 'Pri'),
(30, 'APPOLO', 'TAMIL NADU', 'CHENNAI', 'Pri'),
(31, 'BREACH CANDY HOSPITAL', 'MAHARASTRA', 'MUMBAI', 'Pri'),
(32, 'KING EDWARD MEMORIAL HOSPITAL', 'MAHARASTRA', 'MUMBAI', 'Pri'),
(33, 'APPOLO', 'ANDHRA PRADESH', 'HYDRABAD', 'Govt'),
(34, 'JIPMER', 'TAMIL NADU', 'PUDUCHERRY', 'Govt'),
(35, 'AMRI HOSPITAL', 'WEST BENGAL', 'KOLKATA', 'Govt'),
(36, 'APPOLO', 'GUJARAT', 'AHMEDABAD', 'Pri');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturing_units`
--

CREATE TABLE `manufacturing_units` (
  `placeID` int(11) NOT NULL,
  `country` varchar(30) NOT NULL,
  `manufacturing_unit_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `manufacturing_units`
--

INSERT INTO `manufacturing_units` (`placeID`, `country`, `manufacturing_unit_name`) VALUES
(1, 'India', 'Bharat Biotech'),
(2, 'India', 'Serum Institute of India'),
(3, 'Russia', 'Gamaleya Research Institute of Epidemiology and Microbiology'),
(4, 'U.S.A', 'Pfizer, BioNTech'),
(5, 'U.S.A', 'National Institute of Allergy and Infectious Disease'),
(6, 'U.K', 'AstraZeneca plc Pharmaceutical and Biotechnology company'),
(7, 'China', 'China National Biotec Group Company, Beijing'),
(8, 'China', 'Sinopharms Beijing Institute of Biological Products'),
(9, 'China', 'Sinovac Biotech Ltd'),
(10, 'Belgium', 'Janssen Pharmaceuticals and Pharmaceutical Company'),
(11, 'China', 'CanSino Biologics'),
(12, 'Cuba', 'Center for Genetic Engineering and Biotechnology in Cuba');

-- --------------------------------------------------------

--
-- Table structure for table `permission`
--

CREATE TABLE `permission` (
  `permission_number` int(11) NOT NULL,
  `permission_name` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `permission`
--

INSERT INTO `permission` (`permission_number`, `permission_name`) VALUES
(1, 'GRANTED'),
(2, 'DENIED');

-- --------------------------------------------------------

--
-- Table structure for table `vaccine`
--

CREATE TABLE `vaccine` (
  `vaccineID` int(11) NOT NULL,
  `vaccine_name` varchar(30) NOT NULL,
  `placeID` int(11) NOT NULL,
  `permission` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vaccine`
--

INSERT INTO `vaccine` (`vaccineID`, `vaccine_name`, `placeID`, `permission`) VALUES
(1, 'COVAXINE', 1, 1),
(2, 'COVISHIELD', 2, 1),
(3, 'SPUTNIK-V', 3, 1),
(4, 'SPIKEVAX-mRNA-1273', 5, 1),
(5, 'VAXZEVRIA', 6, 2),
(6, 'COMIRNATY', 4, 2),
(7, 'BBIBP-CorV', 8, 2),
(8, 'CoronaVac', 9, 2),
(9, 'ADENO_VIRUS_26 COV 2.5', 10, 2),
(10, 'AD5-nCOV/CONVIDECIA', 11, 2),
(11, 'ABDALA / CIGB-66', 12, 2),
(12, 'AZD1222', 6, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`batch_number`,`vaccineID`),
  ADD KEY `vaccineID` (`vaccineID`);

--
-- Indexes for table `co_ordinator`
--
ALTER TABLE `co_ordinator`
  ADD PRIMARY KEY (`co_ordinatorID`);

--
-- Indexes for table `distribution`
--
ALTER TABLE `distribution`
  ADD PRIMARY KEY (`serial_number`),
  ADD KEY `hospitalID` (`hospitalID`),
  ADD KEY `co_ordinatorID` (`co_ordinatorID`),
  ADD KEY `batch_number` (`batch_number`,`vaccineID`);

--
-- Indexes for table `hospitals`
--
ALTER TABLE `hospitals`
  ADD PRIMARY KEY (`hospitalID`);

--
-- Indexes for table `manufacturing_units`
--
ALTER TABLE `manufacturing_units`
  ADD PRIMARY KEY (`placeID`);

--
-- Indexes for table `permission`
--
ALTER TABLE `permission`
  ADD PRIMARY KEY (`permission_number`);

--
-- Indexes for table `vaccine`
--
ALTER TABLE `vaccine`
  ADD PRIMARY KEY (`vaccineID`),
  ADD KEY `placeID` (`placeID`),
  ADD KEY `permission` (`permission`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `distribution`
--
ALTER TABLE `distribution`
  MODIFY `serial_number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=342;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `contents`
--
ALTER TABLE `contents`
  ADD CONSTRAINT `contents_ibfk_1` FOREIGN KEY (`vaccineID`) REFERENCES `vaccine` (`vaccineID`);

--
-- Constraints for table `distribution`
--
ALTER TABLE `distribution`
  ADD CONSTRAINT `distribution_ibfk_1` FOREIGN KEY (`hospitalID`) REFERENCES `hospitals` (`hospitalID`),
  ADD CONSTRAINT `distribution_ibfk_2` FOREIGN KEY (`co_ordinatorID`) REFERENCES `co_ordinator` (`co_ordinatorID`),
  ADD CONSTRAINT `distribution_ibfk_3` FOREIGN KEY (`batch_number`,`vaccineID`) REFERENCES `contents` (`batch_number`, `vaccineID`);

--
-- Constraints for table `vaccine`
--
ALTER TABLE `vaccine`
  ADD CONSTRAINT `vaccine_ibfk_1` FOREIGN KEY (`placeID`) REFERENCES `manufacturing_units` (`placeID`),
  ADD CONSTRAINT `vaccine_ibfk_2` FOREIGN KEY (`permission`) REFERENCES `permission` (`permission_number`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
