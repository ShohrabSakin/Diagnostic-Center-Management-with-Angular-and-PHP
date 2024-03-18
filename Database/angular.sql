-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 13, 2024 at 06:55 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `angular`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `date` date NOT NULL,
  `doctorid` varchar(100) NOT NULL,
  `slno` int(11) NOT NULL,
  `patientname` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`date`, `doctorid`, `slno`, `patientname`, `email`, `mobile`) VALUES
('2023-10-01', '1', 1, 'Habib', 'abc@xyz.com', 181444774),
('2023-10-02', '2', 2, 'Maruf', 'abc@xyz.com', 181444774),
('2023-10-03', '3', 3, 'Rahat', 'abc@xyz.com', 181444774),
('2023-10-04', '4', 4, 'Rakib khan', 'abc@xyz.com', 181444774),
('2023-10-05', '5', 5, 'Ratul chy', 'axyz@xyz.com', 18254699),
('2023-10-19', '6', 6, 'Abtahi ', 'axyz@xyz.com', 18254699),
('2023-10-19', '7', 7, 'Abtahi ', 'axyz@xyz.com', 18254699);

-- --------------------------------------------------------

--
-- Table structure for table `commission`
--

CREATE TABLE `commission` (
  `department` varchar(255) NOT NULL,
  `percent` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `commission`
--

INSERT INTO `commission` (`department`, `percent`) VALUES
('BioChemical', 49),
('blood_group', 43),
('E.C.G', 33),
('LIPID_PROFILE', 39),
('Pregnancy', 40),
('Serological', 30);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `departmentcode` varchar(120) NOT NULL,
  `departmentname` varchar(100) DEFAULT NULL,
  `company` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`departmentcode`, `departmentname`, `company`) VALUES
('101', 'STATIONARY', 'AZIZ CO');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `doctorid` int(11) NOT NULL,
  `doctorname` varchar(100) DEFAULT NULL,
  `qualification` varchar(100) DEFAULT NULL,
  `institution` varchar(100) DEFAULT NULL,
  `designation` varchar(100) DEFAULT NULL,
  `fee` int(11) NOT NULL,
  `picture` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`doctorid`, `doctorname`, `qualification`, `institution`, `designation`, `fee`, `picture`) VALUES
(1, 'Dr.Mamun', 'MBBS,FCPS', 'Burdem Hospital', 'Neuro-Surgeon', 1000, 'd1.jpg'),
(2, 'Dr.Sobhan', ' MBBS,BCS Health', 'CMC', 'Eye Specialist', 900, 'd2.jpg'),
(3, 'Dr.Borhan ', 'MBBS,FCPS', 'DMC', 'Medicine', 700, 'd7.jpg'),
(4, 'Dr.Razia', ' MBBS,FCPS', 'CMC', 'Cardiologist', 1000, 'd3.jpg'),
(5, 'Dr.Rafiq', 'MBBS,FCPS', 'DMC', 'Child Specialist', 700, 'd8.jpg'),
(6, 'Dr. Sams ', 'MBBS,FCPS', 'Burdem', 'Physician', 500, 'd9.jpg'),
(7, 'Dr. Kader', 'MBBS,FCPS', 'DMC', 'Hormone', 1000, 'd8.jpg'),
(8, 'Dr. Mili', 'MBBS,FCPS', 'CMCH', 'Gynocologist', 900, 'd4.jpg'),
(9, 'Dr. Sumiya', 'MBBS,FCPS', 'BMCH', 'Skin', 800, 'd5.jpg'),
(10, 'Dr. Sohel', 'MBBS,FCPS', 'BMCH', 'Medicine', 700, 'd10.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `groupcode` varchar(120) NOT NULL,
  `groupname` varchar(100) DEFAULT NULL,
  `company` varchar(400) DEFAULT NULL,
  `SHOW` varchar(200) DEFAULT NULL,
  `smalldept` varchar(100) DEFAULT NULL,
  `smallnamesl` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`groupcode`, `groupname`, `company`, `SHOW`, `smalldept`, `smallnamesl`) VALUES
('G-001', 'BioChemical', 'square', 'Yes', 'Pharmarcy', 3),
('G-0019', 'BioChemical', 'square', 'Yes', 'Pharmarcy', 3),
('G-002', 'Blood Analysis', 'RENATA', 'NO', 'R1', 1),
('G-003', 'Blood Rotine', 'Beximco', 'No', 'B1', 0),
('G-004', 'E.C.G', 'SQuare', 'No', 'S2', 1),
('G-005', 'Echocardiography', 'Aristopharma', 'yes', 'EC', 0),
('G-006', 'Endoscopy', 'Square', 'No', 'S2', 0),
('G-008', 'LIPID_PROFILE', 'aristopharma', 'no', 'LP', 10),
('G-009', 'Hepatitis Pannel', 'null', 'YES', 'HP', 12),
('G-010', 'Hormon', 'Incepta', 'YES', 'HM', 14),
('G-011', 'IMMUNOGLOBULIN', 'SQUARE', 'NO', 'IG', 0),
('G-012', 'Others', 'General', 'yes', 'og', 5),
('G-015', 'STOOL EXAMINATION', 'abc', 'yes', 'abc', 5),
('G-018', 'X-Ray', 'Incepta', 'No', 'I1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `itemcode` varchar(200) NOT NULL,
  `itemname` varchar(80) DEFAULT NULL,
  `purchaseprice` double DEFAULT NULL,
  `sellingprice` double DEFAULT NULL,
  `expiredate` datetime DEFAULT NULL,
  `suppliername` varchar(200) DEFAULT NULL,
  `departmentcode` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`itemcode`, `itemname`, `purchaseprice`, `sellingprice`, `expiredate`, `suppliername`, `departmentcode`) VALUES
('S-001', 'PEN Grade-1', 20, 30, '2023-12-31 00:00:00', 'AZIZ CO', '101'),
('S-002', 'Pen GRADE-2', 28, 45, '2023-11-14 00:00:00', 'XX', '101');

-- --------------------------------------------------------

--
-- Table structure for table `saleslineitems`
--

CREATE TABLE `saleslineitems` (
  `vrno` varchar(100) NOT NULL,
  `slno` int(11) NOT NULL,
  `itemcode` varchar(100) DEFAULT NULL,
  `itemname` varchar(100) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `price` double DEFAULT NULL,
  `total` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `saleslineitems`
--

INSERT INTO `saleslineitems` (`vrno`, `slno`, `itemcode`, `itemname`, `qty`, `price`, `total`) VALUES
('AC-00004', 1, '15', 'B.S 2HRS ABF/PP WITH TAB/INSULIN', 2, 90, 180),
('AC-00004', 2, '15', 'B.S 2HRS ABF/PP WITH TAB/INSULIN', 1, 90, 90),
('AC-00004', 3, '15', 'B.S 2HRS ABF/PP WITH TAB/INSULIN', 2, 90, 180),
('AC-00004', 4, '13', 'B.S 2HRS ABF/PP ', 1, 100, 100),
('AC-00004', 5, '10', 'X-Raydd', 1, 160, 160),
('AC-00004', 6, '11', 'Night Fee', 1, 160, 160),
('AC-00004', 7, '15', 'B.S 2HRS ABF/PP WITH TAB/INSULIN', 1, 90, 90),
('AC-00005', 1, '13', 'B.S 2HRS ABF/PP ', 1, 100, 100),
('AC-00005', 2, '13', 'B.S 2HRS ABF/PP ', 2, 100, 200),
('AC-00005', 3, '17', 'BILIRUBIN ', 1, 500, 500),
('AC-00006', 1, '10', 'X-Raydd', 1, 160, 160),
('AC-00006', 2, '11', 'Night Fee', 1, 160, 160),
('AC-00006', 3, '13', 'B.S 2HRS ABF/PP ', 1, 100, 100),
('AC-00006', 4, '14', 'B.S 2HRS ABF/PP ', 1, 100, 100),
('AC-00008', 1, '10', 'X-Raydd', 1, 160, 160),
('AC-00008', 2, '12', ' FASTING BLOOD SUGAR ', 1, 70, 70),
('AC-00008', 3, '12', ' FASTING BLOOD SUGAR ', 2, 70, 140),
('AC-00008', 4, '17', 'BILIRUBIN ', 1, 500, 500),
('AC-00009', 1, '10', 'X-Raydd', 2, 160, 320),
('AC-00009', 2, '11', 'Night Fee', 2, 160, 320),
('AC-00011', 1, '11', 'Night Fee', 1, 160, 160),
('AC-00011', 2, '12', ' FASTING BLOOD SUGAR ', 1, 70, 70),
('AC-00013', 1, '17', 'BILIRUBIN ', 1, 500, 500),
('AC-00013', 2, '10', 'X-Raydd', 1, 160, 160),
('AC-00014', 1, '35', 'Serological', 1, 100, 100),
('AC-00014', 2, '31', 'Pregnancy', 1, 160, 160),
('AC-00015', 1, '41', ' FASTING BLOOD SUGAR ', 1, 200, 200),
('AC-00015', 2, '43', 'LIPID_PROFILE', 1, 70, 70),
('AC-00017', 1, '23', 'ECG TRACING', 1, 100, 100),
('AC-00018', 1, '41', ' FASTING BLOOD SUGAR ', 1, 200, 200),
('AC-00019', 0, '35', 'Serological', 1, 100, 100),
('AC-00020', 0, '31', 'Pregnancy', 1, 160, 160),
('AC-00021', 0, '31', 'Pregnancy', 1, 160, 160),
('AC-00023', 0, '35', 'Serological', 1, 100, 100),
('AC-000232', 0, '10', 'X-Raydd', 1, 160, 160),
('AC-00024', 0, '31', 'Pregnancy', 1, 160, 160),
('AC-00025', 0, '35', 'Serological', 1, 100, 100),
('AC-00025', 1, '36', 'Serological Test', 1, 600, 600);

-- --------------------------------------------------------

--
-- Table structure for table `salestotal`
--

CREATE TABLE `salestotal` (
  `vrno` varchar(100) NOT NULL,
  `CustomerName` varchar(100) DEFAULT NULL,
  `Doctorid` int(11) DEFAULT NULL,
  `Date` datetime DEFAULT NULL,
  `Total` double DEFAULT NULL,
  `Dicount` double DEFAULT NULL,
  `Net` double DEFAULT NULL,
  `Paid` double DEFAULT NULL,
  `Due` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `salestotal`
--

INSERT INTO `salestotal` (`vrno`, `CustomerName`, `Doctorid`, `Date`, `Total`, `Dicount`, `Net`, `Paid`, `Due`) VALUES
('AC-00004', 'Amin', 1, '2021-05-03 00:00:00', 960, 50, 910, 900, 10),
('AC-00005', 'Abedin', 1, '2023-09-05 00:00:00', 800, 50, 750, 700, 50),
('AC-00006', 'Jamal', 1, '2023-09-16 00:00:00', 520, 20, 500, 270, 230),
('AC-00007', 'Jamal', 1, '2023-09-09 00:00:00', 370, 10, 360, 50, 310),
('AC-00008', 'Jamal', 1, '2023-09-16 00:00:00', 480, 20, 460, 400, 60),
('AC-00009', 'awewr', 1, '2023-09-16 00:00:00', 640, 60, 420, 400, 20),
('AC-00011', 'Kamal', 1, '2023-09-16 00:00:00', 230, 30, 200, 50, 150),
('AC-00012', '', 1, '2023-09-17 00:00:00', 680, 50, 630, 10, 620),
('AC-00013', 'Kamal', 1, '2023-09-17 00:00:00', 660, 20, 640, 400, 240),
('AC-00014', 'kamal', 1, '2023-09-19 00:00:00', 260, 10, 250, 250, 0),
('AC-00015', 'abdul', 1, '2023-09-19 00:00:00', 270, 0, 270, 27, 243),
('AC-00016', 'abdul', 1, '2023-09-19 00:00:00', 440, 0, 270, 27, 243),
('AC-00017', '', 1, '2023-09-20 00:00:00', 100, 50, 50, 50, 0),
('AC-00018', '', 1, '2023-09-20 00:00:00', 200, 50, 50, 50, 0),
('AC-00019', '', 1, '2023-10-01 00:00:00', 100, 20, 80, 80, 0),
('AC-00020', '', 1, '2023-10-01 00:00:00', 160, 60, 100, 100, 0),
('AC-00021', 'jabbar', 1, '2023-10-01 00:00:00', 160, 100, 60, 100, -40),
('AC-00023', 'sa', 1, '2023-10-01 00:00:00', 100, 50, 50, 50, 0),
('AC-000232', '', 1, '2023-11-08 00:00:00', 160, 0, 160, 0, 160),
('AC-00024', 'habib', 1, '2023-10-01 00:00:00', 160, 100, 60, 60, 0),
('AC-00025', '', 1, '2023-10-01 00:00:00', 700, 200, 500, 50, 450);

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

CREATE TABLE `tests` (
  `Code` varchar(100) NOT NULL,
  `TestCode` varchar(500) DEFAULT NULL,
  `Type` varchar(100) DEFAULT NULL,
  `GroupCode` varchar(100) DEFAULT NULL,
  `Investigation` varchar(100) DEFAULT NULL,
  `Details` varchar(50) DEFAULT NULL,
  `Amount` double DEFAULT NULL,
  `picture` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tests`
--

INSERT INTO `tests` (`Code`, `TestCode`, `Type`, `GroupCode`, `Investigation`, `Details`, `Amount`, `picture`) VALUES
('10', 'CXR-01', 'X-Ray', 'G-018', 'X-Raydd', 'X-Raydd', 160, 'grass.png'),
('11', 'CXR-02', 'X-Ray', 'G-018', 'Night Fee', 'Night Fee', 600, '150px-Flag_of_Germany.svg.jpg'),
('12', 'BIO-01', 'Pathology', 'G-001', 'BLOOD SUGAR TEST', 'BLOOD SUGAR TEST', 7000, 'Borcelle logo.png'),
('13', 'BIO-02\r\n', 'Pathology\r\n', 'G-001', 'B.S 2HRS ABF/PP & CUS', 'BioChemical\r\n', 100, NULL),
('14', 'BIO-03\r\n', 'Pathology\r\n', 'G-001', 'B.S 2HRS ABF/PP & CUS', 'BioChemical\r\n', 100, NULL),
('15', 'BIO-03\r\n', 'Pathology\r\n', 'G-001', 'B.S 2HRS ABF/PP WITH TAB/INSULIN\r\n\r\n', 'BioChemical\r\n', 90, NULL),
('16', 'ECG-01', 'E.C.G\r\n', 'G-004', ' ECG (AUTO)', 'E.C.G', 160, NULL),
('17', 'BIO-05', 'Pathology', 'G-001', 'BILIRUBIN & SGPT & SGOT', 'BioChemical', 500, NULL),
('20', 'BIO-08\r\n', 'Pathology\r\n', 'G-001', 'SIRUM BILIRUBIN (TOTAL/DIRECT/INDIRECT)\r\n', 'BioChemical\r\n', 600, NULL),
('21', 'ECG-03', 'E.C.G\r\n', 'G-004', 'ECG (JO)', 'E.C.G', 150, NULL),
('22', 'BIO-09\r\n', 'Pathology\r\n', 'G-001', ' SERUM SGPT (ALT)\r\n\r\n\r\n', ' SERUM SGPT (ALT)\r\n', 130, NULL),
('23', 'ECG-04', 'E.C.G\r\n', 'G-004', 'ECG TRACING', 'E.C.G', 100, NULL),
('24', 'BIO-10\r\n', 'Pathology\r\n', 'G-001', ' SERUM SGPT (ALT) SERUM SGOT (AST)', ' SERUM SGPT (ALT)\r\n', 130, NULL),
('25', 'BIO-11\r\n', 'Pathology\r\n', 'G-001', 'SERUM ALKALINE PHOSPHATASE', 'BioChemical\r\n', 250, NULL),
('26', 'BIO-05', 'Pathology', 'G-001', 'BILIRUBIN ', 'BioChemical', 500, 'woman-wearing-mask-face-closeup-covid-19-green-background.jpeg'),
('27', 'CXR-02', 'Pathology', 'G-001', 'BioChemical', 'BioChemical', 150, 'medium-shot-man-getting-vaccine.jpg'),
('28', 'CXR-02', 'X-Ray', 'G-018', 'X-RAY CHEST A/P VIEW', 'X-Ray', 160, 'female-doctor-with-presenting-hand-gesture.jpg'),
('29', 'CXR-02', 'Pathology', 'G-001', 'BioChemical', 'BioChemical', 150, 'portrait-successful-mid-adult-doctor-with-crossed-arms.jpg'),
('31', 'CXR-01', 'X-Ray', 'G-018', 'Pregnancy', 'Pregnancy', 160, 'young-asian-female-dentist-white-coat-posing-clinic-equipment.jpg'),
('32', 'CXR-02\n', 'X-Ray\n', 'G-018', 'Pregnancy FEE\r\n', 'Pregnancy\r\n', 160, NULL),
('33', 'BIO-01\n', 'Pathology\n', 'G-001', 'Pregnancy\r\n', 'Pregnancy Test\r\n', 70, NULL),
('34', 'BIO-02\r\n', 'Pathology\r\n', 'G-001', 'B.S 2HRS ABF/PP & CUS', 'BioChemical\r\n', 100, NULL),
('35', 'BIO-03\r\n', 'Pathology\r\n', 'G-001', 'Serological', 'Serological\r\n', 100, NULL),
('36', 'BIO-03\r\n', 'Pathology\r\n', 'G-001', 'Serological Test\r\n\r\n', 'Serological Test\r\n', 90, NULL),
('37', 'ECG-01', 'Serological\r\n', 'G-004', '(AUTO)', 'Serological', 160, NULL),
('41', 'CR-02', 'blood_group\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nphathology', 'G-001', ' FASTING BLOOD SUGAR & CUS', 'blood_group', 200, 'picture2.jpg'),
('43', 'phathology', 'BIO-CHEMICAL', 'G-001', 'LIPID_PROFILE', 'LIPID_PROFILE', 70, ''),
('45', 'sdfsd', 'fds', 'G-001', 'sdfds', 'BLOOD SUGAR TEST', 33, 'pic1.jpg'),
('46', 'a2', 'umm', 'G-001', 'sdfds', 'AIDS', 33, 'pic1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `trainees`
--

CREATE TABLE `trainees` (
  `traineeid` varchar(200) NOT NULL,
  `name` varchar(80) DEFAULT NULL,
  `batchid` varchar(200) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `hours` varchar(200) DEFAULT NULL,
  `tspid` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trainees`
--

INSERT INTO `trainees` (`traineeid`, `name`, `batchid`, `title`, `hours`, `tspid`) VALUES
('100', 'Rohan', 'Round-55', 'WDPF', '900', 'T1'),
('101', 'Akash', 'Round-55', 'Networking', '896', 'T1'),
('103', 'Lamiya', 'Round-55', 'JEE', '900', 'T1'),
('104', 'Sabbir ', 'Round-55', 'WDPF', '900', 'T1'),
('105', 'Rubel', 'Round-55', 'C.NET', '925', 'T1'),
('201', 'Biplob', 'Round-55', 'WDPF', '900', 'T2'),
('202', 'Humayan', 'Round-55', 'Networkin', '896', 'T2'),
('203', 'Samia', 'Round-55', 'C.NET', '925', 'T2'),
('204', 'Maisha', 'Round-55', 'WDPF', '900', 'T2'),
('205', 'Imtiaz', 'Round-55', 'Networking', '896', 'T2'),
('206', 'Rajveer', 'Round-55', 'WDPF', '900', 'T2'),
('301', 'Sohel', 'Round-55', 'WDPF', '900', 'T3'),
('302', 'Hasan', 'Round-55', 'C.NET', '925', 'T3'),
('303', 'Habib', 'Round-55', 'Networking', '896', 'T3'),
('304', 'Tofayel', 'Round-55', 'WDPF', '900', 'T3'),
('305', 'Aziz', 'Round-55', 'C.NET', '925', 'T3'),
('306', 'Aziz', 'Round-55', 'C.NET', '925', 'T3'),
('401', 'Nahid', 'Round-55', 'WDPF', '900', 'T4'),
('402', 'Arefin', 'Round-55', 'C.NET', '925', 'T4'),
('403', 'Humayra', 'Round-55', 'Networking', '896', 'T4'),
('404', 'Sahed', 'Round-55', 'JEE', '896', 'T4'),
('405', 'Aziz', 'Round-55', 'C.NET', '925', 'T4'),
('501', 'Sagor', 'Round-55', 'Networking', '896', 'T5'),
('502', 'Yakub', 'Round-55', 'WDPF', '900', 'T5'),
('503', 'Mahmud', 'Round-55', 'C.NET', '925', 'T5'),
('504', 'Shohrb', 'Round-55', 'WDPF', '900', 'T5'),
('505', 'Sumiya', 'Round-55', 'JEE', '896', 'T5'),
('506', 'Reza', 'Round-55', 'DDD', '896', 'T5');

-- --------------------------------------------------------

--
-- Table structure for table `tsp`
--

CREATE TABLE `tsp` (
  `tspid` varchar(120) NOT NULL,
  `tspname` varchar(100) DEFAULT NULL,
  `location` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tsp`
--

INSERT INTO `tsp` (`tspid`, `tspname`, `location`) VALUES
('T1', 'Daffodil Institute', 'Agrabad'),
('T2', 'NVIT', 'Muradpur'),
('T3', 'Macro Computers', 'Wasa'),
('T4', 'New Horizon', 'Vatiyari'),
('T5', 'Cognate IT', 'Narayangonj');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL DEFAULT 0,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `position` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `name`, `position`) VALUES
(1, 'admin', 'admin', 'Admin', 'admin'),
(2, 'cashier', 'cashier', 'Cashier Pharmacy', 'Cashier'),
(3, 'admin', 'admin123', 'Administrator', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`date`,`doctorid`,`slno`);

--
-- Indexes for table `commission`
--
ALTER TABLE `commission`
  ADD PRIMARY KEY (`department`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`doctorid`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`groupcode`);

--
-- Indexes for table `saleslineitems`
--
ALTER TABLE `saleslineitems`
  ADD PRIMARY KEY (`vrno`,`slno`),
  ADD KEY `itemcode` (`itemcode`);

--
-- Indexes for table `salestotal`
--
ALTER TABLE `salestotal`
  ADD PRIMARY KEY (`vrno`);

--
-- Indexes for table `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`Code`),
  ADD KEY `GroupCode` (`GroupCode`);

--
-- Indexes for table `trainees`
--
ALTER TABLE `trainees`
  ADD PRIMARY KEY (`traineeid`),
  ADD KEY `tspid` (`tspid`);

--
-- Indexes for table `tsp`
--
ALTER TABLE `tsp`
  ADD PRIMARY KEY (`tspid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `doctorid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `trainees`
--
ALTER TABLE `trainees`
  ADD CONSTRAINT `trainees_ibfk_1` FOREIGN KEY (`tspid`) REFERENCES `tsp` (`tspid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
