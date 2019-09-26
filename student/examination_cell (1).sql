-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 26, 2018 at 03:44 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `examination_cell`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `COURSE_NAME` varchar(50) NOT NULL,
  `COURSE_ID` varchar(5) NOT NULL,
  `TYPE` varchar(10) NOT NULL,
  `OFFERING_DEPT` varchar(3) NOT NULL,
  `NO. OF LECTURES` int(1) NOT NULL,
  `NO . OF THEORY` int(1) NOT NULL,
  `NO. OF PRACTICAL` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`COURSE_NAME`, `COURSE_ID`, `TYPE`, `OFFERING_DEPT`, `NO. OF LECTURES`, `NO . OF THEORY`, `NO. OF PRACTICAL`) VALUES
('Biochemical Thermodynamics', 'BT201', 'DEPT', 'PCC', 3, 0, 0),
('Biochemistry', 'BT202', 'DEPT', 'PCC', 4, 0, 0),
('Microbiology', 'BT203', 'DEPT', 'PCC', 4, 0, 0),
('Biochemistry Lab.', 'BT204', 'DEPT', 'PCC', 0, 0, 3),
('Microbiology Lab.', 'BT205', 'DEPT', 'PCC', 0, 0, 3),
('Molecular Biology & Genetics', 'BT251', 'DEPT', 'PCC', 4, 0, 0),
('Cell Biology', 'BT252', 'DEPT', 'PCC', 3, 0, 0),
('Bioprocess Calculations', 'BT253', 'DEPT', 'PCC', 4, 0, 0),
('Molecular Biology & Genetics Lab.', 'BT254', 'DEPT', 'PCC', 0, 0, 3),
('Instrumental Analysis Lab.', 'BT255', 'DEPT', 'PCC', 0, 0, 3),
('Immunology', 'BT301', 'DEPT', 'PCC', 4, 0, 0),
('Bioprocess Engineering', 'BT302', 'DEPT', 'PCC', 4, 0, 0),
('Genetic Engineering', 'BT303', 'DEPT', 'PCC', 4, 0, 0),
('Immunology Lab', 'BT304', 'DEPT', 'PCC', 0, 0, 3),
('Bioprocess & Bioreaction Engg. Lab.', 'BT305', 'DEPT', 'PCC', 0, 0, 3),
('Genetic Engineering Lab.', 'BT306', 'DEPT', 'PCC', 0, 0, 3),
('Bioreaction Engineering', 'BT351', 'DEPT', 'PCC', 3, 0, 0),
('Bioprocess Instrumentation & Control', 'BT352', 'DEPT', 'PCC', 4, 0, 0),
('Downstream Processing in Biotechnology', 'BT353', 'DEPT', 'PCC', 4, 0, 0),
('Bioprocess Instrumentation & Control Lab.', 'BT354', 'DEPT', 'PCC', 0, 0, 3),
('Downstream Processing Lab.', 'BT355', 'DEPT', 'PCC', 0, 0, 3),
('Bioinformatics', 'BT401', 'DEPT', 'PCC', 3, 1, 0),
('Bioprocess Plant Design Modelling & Simulation', 'BT402', 'DEPT', 'PCC', 4, 0, 0),
('Bioinformatics Lab', 'BT403', 'DEPT', 'PCC', 0, 0, 3),
('Modelling & Simulation of Bioprocesses Lab', 'BT404', 'DEPT', 'PCC', 0, 0, 3),
('Seminar', 'BT441', 'DEPT', 'PCC', 0, 0, 3),
('Project Work – Part A', 'BT449', 'DEPT', 'PRC', 0, 0, 3),
('Bioethics Biosafety & IPR Issues', 'BT451', 'DEPT', 'PCC', 3, 0, 0),
('Biostatistics', 'BT452', 'DEPT', 'PCC', 3, 0, 0),
('Project Work – Part B', 'BT499', 'DEPT', 'PRC', 0, 0, 6),
('Strength of Materials', 'CE201', 'DEPT', 'PCC', 4, 0, 0),
('Fluid mechanics – I', 'CE202', 'DEPT', 'PCC', 4, 0, 0),
('Surveying', 'CE203', 'DEPT', 'PCC', 4, 0, 0),
('Civil Engineering Materials', 'CE204', 'DEPT', 'PCC', 3, 0, 0),
('Material Testing Lab', 'CE205', 'DEPT', 'PCC', 0, 0, 3),
('Fluid Mechanics Lab', 'CE206', 'DEPT', 'PCC', 0, 0, 3),
('Surveying Lab', 'CE207', 'DEPT', 'PCC', 0, 0, 4),
('Fluid Mechanics and Hydraulic Machines', 'CE235', 'DEPT', 'PCC', 3, 1, 0),
('Mechanics of Solids', 'CE236', 'DEPT', 'PCC', 3, 1, 0),
('Fluid Mechanics and Hydraulic Machines Laboratory', 'CE237', 'DEPT', 'PCC', 0, 0, 3),
('Material Testing Laboratory', 'CE238', 'DEPT', 'PCC', 0, 0, 3),
('Mechanics of Materials', 'CE251', 'DEPT', 'PCC', 3, 0, 0),
('Fluid mechanics –II', 'CE252', 'DEPT', 'PCC', 3, 0, 0),
('Design of Steel Structures', 'CE253', 'DEPT', 'PCC', 4, 0, 0),
('Building Planning & Construction', 'CE254', 'DEPT', 'PCC', 3, 0, 0),
('Concrete Technology', 'CE255', 'DEPT', 'PCC', 3, 0, 0),
('Hydraulic Engineering Lab.', 'CE256', 'DEPT', 'PCC', 0, 0, 3),
('Building Drawing', 'CE257', 'DEPT', 'PCC', 0, 0, 3),
('Concrete Lab', 'CE258', 'DEPT', 'PCC', 0, 0, 3),
('Theory of Structures I', 'CE301', 'DEPT', 'PCC', 4, 0, 0),
('Design of Concrete Structures', 'CE302', 'DEPT', 'PCC', 4, 0, 0),
('Engineering Hydrology', 'CE303', 'DEPT', 'PCC', 4, 0, 0),
('Geotechnical Engineering – I', 'CE304', 'DEPT', 'PCC', 4, 0, 0),
('Engineering Geology', 'CE305', 'DEPT', 'PCC', 3, 0, 0),
('Geotechnical Engineering Lab', 'CE306', 'DEPT', 'PCC', 0, 0, 3),
('Engineering Geology Lab', 'CE307', 'DEPT', 'PCC', 0, 0, 3),
('Theory of Structures II', 'CE351', 'DEPT', 'PCC', 3, 0, 0),
('Irrigation Engineering', 'CE352', 'DEPT', 'PCC', 4, 0, 0),
('Environmental Engineering', 'CE353', 'DEPT', 'PCC', 4, 0, 0),
('Transportation Engineering', 'CE354', 'DEPT', 'PCC', 4, 0, 0),
('Geotechnical Engineering – II', 'CE355', 'DEPT', 'PCC', 3, 0, 0),
('Environmental Engineering Laboratory', 'CE356', 'DEPT', 'PCC', 0, 0, 3),
('Civil Engineering Software Laboratory', 'CE357', 'DEPT', 'PCC', 0, 0, 3),
('Quantity Surveying and Public Works', 'CE401', 'DEPT', 'PCC', 1, 0, 3),
('Transportation Engineering Lab', 'CE402', 'DEPT', 'PCC', 0, 0, 3),
('Project Work Part – A', 'CE449', 'DEPT', 'PRC', 0, 0, 3),
('Construction Technology & Project Management', 'CE451', 'DEPT', 'PCC', 3, 0, 0),
('Seminar', 'CE491', 'DEPT', 'MDC', 0, 0, 2),
('Project Work – Part B', 'CE499', 'DEPT', 'PRC', 0, 0, 6),
('Principles of Stoichiometry', 'CH201', 'DEPT', 'PCC', 3, 1, 0),
('Fluid and Particle Mechanics', 'CH202', 'DEPT', 'PCC', 3, 1, 0),
('Mechanical Operations', 'CH203', 'DEPT', 'PCC', 3, 0, 0),
('Energy Technology and Conservation', 'CH204', 'DEPT', 'PCC', 3, 0, 0),
('Fluid and Particle Mechanics Lab', 'CH205', 'DEPT', 'PCC', 0, 0, 3),
('Fluid Mechanics & Heat Transfer', 'CH235', 'DEPT', 'ESC', 4, 0, 0),
('Fluid Mechanics & Heat Transfer Lab.', 'CH236', 'DEPT', 'ESC', 0, 0, 3),
('Chemical Technology', 'CH251', 'DEPT', 'PCC', 4, 0, 0),
('Chemical Engineering Thermodynamics – I', 'CH252', 'DEPT', 'PCC', 3, 1, 0),
('Heat Transfer', 'CH253', 'DEPT', 'PCC', 3, 1, 0),
('Process Instrumentation', 'CH254', 'DEPT', 'PCC', 3, 0, 0),
('Petroleum Refining and Petrochemicals', 'CH255', 'DEPT', 'PCC', 3, 0, 0),
('Chemical Technology Lab', 'CH256', 'DEPT', 'PCC', 0, 0, 3),
('Heat Transfer Lab', 'CH257', 'DEPT', 'PCC', 0, 0, 3),
('Mass Transfer', 'CH285', 'DEPT', 'ESC', 4, 0, 0),
('Mass Transfer Lab.', 'CH286', 'DEPT', 'ESC', 0, 0, 3),
('Chemical Reaction Engineering – I', 'CH301', 'DEPT', 'PCC', 3, 1, 0),
('Chemical Engineering Thermodynamics – II', 'CH302', 'DEPT', 'PCC', 3, 1, 0),
('Industrial Safety and Hazard Mitigation', 'CH303', 'DEPT', 'PCC', 3, 0, 0),
('Mass Transfer – I', 'CH304', 'DEPT', 'PCC', 3, 1, 0),
('Computational Methods in Chemical Engineering Lab', 'CH305', 'DEPT', 'PCC', 0, 0, 3),
('Chemical Reaction Engineering Lab', 'CH306', 'DEPT', 'PCC', 0, 0, 3),
('Mass Transfer – II', 'CH351', 'DEPT', 'PCC', 3, 1, 0),
('Chemical Reaction Engineering – II', 'CH352', 'DEPT', 'PCC', 3, 0, 0),
('Process Equipment Design and Drawing', 'CH353', 'DEPT', 'PCC', 0, 2, 3),
('Mass Transfer Lab', 'CH354', 'DEPT', 'PCC', 0, 0, 3),
('Process Dynamics and Control', 'CH401', 'DEPT', 'PCC', 3, 1, 0),
('CAD and Simulation Lab', 'CH402', 'DEPT', 'PCC', 0, 1, 3),
('Instrumentation and Process Control Lab', 'CH403', 'DEPT', 'PCC', 0, 0, 3),
('Project Work Part-A', 'CH449', 'DEPT', 'PRC', 0, 0, 3),
('Elements of Transport Phenomena', 'CH451', 'DEPT', 'PCC', 3, 1, 0),
('Plant Design and Process Economics', 'CH452', 'DEPT', 'PCC', 3, 1, 0),
('Seminar', 'CH491', 'DEPT', 'PCC', 0, 0, 3),
('Project Work Part-B', 'CH499', 'DEPT', 'PRC', 0, 0, 6),
('COURSE_NAME', 'COURS', 'TYPE', 'OFF', 0, 0, 0),
('Discrete Mathematics', 'CS201', 'DEPT', 'PCC', 4, 0, 0),
('Data Structures and Algorithms', 'CS202', 'DEPT', 'PCC', 4, 0, 0),
('File Structures', 'CS203', 'DEPT', 'PCC', 2, 0, 3),
('Data Structures Lab', 'CS204', 'DEPT', 'PCC', 0, 0, 3),
('Data structures', 'CS235', 'DEPT', 'OEC', 3, 0, 0),
('Data Structures Laboratory', 'CS236', 'DEPT', 'OEC', 0, 0, 3),
('Object Oriented Programming', 'CS251', 'DEPT', 'PCC', 4, 0, 0),
('Computer Architecture', 'CS252', 'DEPT', 'PCC', 4, 0, 0),
('Database Management Systems', 'CS253', 'DEPT', 'PCC', 4, 0, 0),
('Systems Programming', 'CS254', 'DEPT', 'PCC', 4, 0, 0),
('Database Management Systems Lab', 'CS255', 'DEPT', 'PCC', 0, 0, 3),
('Programming Lab', 'CS256', 'DEPT', 'PCC', 0, 0, 3),
('Theory of Computation', 'CS301', 'DEPT', 'PCC', 4, 0, 0),
('Operating Systems', 'CS302', 'DEPT', 'PCC', 4, 0, 0),
('Data Warehousing and Data Mining', 'CS303', 'DEPT', 'PCC', 4, 0, 0),
('Software Engineering', 'CS304', 'DEPT', 'PCC', 4, 0, 0),
('Operating Systems Lab', 'CS305', 'DEPT', 'PCC', 0, 0, 3),
('Knowledge Engineering Lab', 'CS306', 'DEPT', 'PCC', 0, 0, 3),
('CASE Tools Lab', 'CS307', 'DEPT', 'PCC', 0, 0, 3),
('Language Processors', 'CS351', 'DEPT', 'PCC', 4, 0, 0),
('Computer Networks', 'CS352', 'DEPT', 'PCC', 4, 0, 0),
('Language Processors Lab', 'CS353', 'DEPT', 'PCC', 0, 0, 3),
('Computer Networks Lab', 'CS354', 'DEPT', 'PCC', 0, 0, 3),
('Distributed Computing', 'CS401', 'DEPT', 'PCC', 4, 0, 0),
('Cryptography and Network Security', 'CS402', 'DEPT', 'PCC', 4, 0, 0),
('Security Lab', 'CS403', 'DEPT', 'PCC', 0, 0, 3),
('Project Work – Part A', 'CS449', 'DEPT', 'PRC', 0, 0, 4),
('Wireless and Mobile Computing', 'CS451', 'DEPT', 'PCC', 3, 0, 0),
('Machine Learning & Soft Computing', 'CS452', 'DEPT', 'PCC', 3, 0, 0),
('Seminar', 'CS491', 'DEPT', 'PCC', 0, 0, 3),
('Project Work – Part B', 'CS499', 'DEPT', 'PRC', 0, 0, 6),
('Physical and Organic Chemistry', 'CY201', 'DEPT', 'BSC', 3, 1, 0),
('Instrumental Methods of Metallurgical and Material', 'CY202', 'DEPT', 'BSC', 0, 0, 3),
('Electronic Devices and Circuits – I', 'EC201', 'DEPT', 'PCC', 4, 0, 0),
('Networks and Transmission Lines', 'EC202', 'DEPT', 'PCC', 3, 0, 0),
('Digital System Design - I', 'EC203', 'DEPT', 'PCC', 4, 0, 0),
('Signals and Systems', 'EC204', 'DEPT', 'PCC', 3, 0, 0),
('Electronic Devices and Circuits - I Laboratory', 'EC205', 'DEPT', 'PCC', 0, 0, 3),
('Electronic Design Automation Laboratory', 'EC206', 'DEPT', 'PCC', 0, 0, 3),
('Analog Electronics', 'EC235', 'DEPT', 'PCC', 3, 1, 0),
('Analog Electronics Lab', 'EC236', 'DEPT', 'PCC', 0, 0, 3),
('Digital Logic Design', 'EC237', 'DEPT', 'ESC', 3, 0, 0),
('Basic Electronics Lab', 'EC238', 'DEPT', 'ESC', 0, 0, 3),
('Electronic Devices and Circuits – II', 'EC251', 'DEPT', 'PCC', 4, 0, 0),
('Electromagnetic Fields and Waves', 'EC252', 'DEPT', 'PCC', 3, 0, 0),
('Digital System Design – II', 'EC253', 'DEPT', 'PCC', 4, 0, 0),
('Probability Theory and Stochastic Processes', 'EC254', 'DEPT', 'PCC', 3, 0, 0),
('Electronic Devices and Circuits – II Laboratory', 'EC255', 'DEPT', 'PCC', 0, 0, 4),
('Digital System Design Laboratory', 'EC256', 'DEPT', 'PCC', 0, 0, 3),
('Digital Electronics', 'EC285', 'DEPT', 'PCC', 3, 1, 0),
('ICApplications Lab', 'EC286', 'DEPT', 'PCC', 0, 0, 3),
('IC Applications', 'EC287', 'DEPT', 'ESC', 3, 0, 0),
('IC Applications Lab', 'EC288', 'DEPT', 'ESC', 0, 0, 3),
('Basic Electronics Laboratory', 'EC289', 'DEPT', 'ESC', 0, 0, 3),
('Pulse Circuits', 'EC301', 'DEPT', 'PCC', 4, 0, 0),
('Communication Theory', 'EC302', 'DEPT', 'PCC', 3, 0, 0),
('Linear IC Applications', 'EC303', 'DEPT', 'PCC', 4, 0, 0),
('Antennas and Wave propagation', 'EC304', 'DEPT', 'PCC', 3, 0, 0),
('Computer Architecture and Organization', 'EC305', 'DEPT', 'PCC', 3, 0, 0),
('Pulse Circuits Laboratory', 'EC306', 'DEPT', 'PCC', 0, 0, 3),
('IC Applications Laboratory', 'EC307', 'DEPT', 'PCC', 0, 0, 3),
('Digital Communications', 'EC351', 'DEPT', 'PCC', 3, 0, 0),
('Digital Signal Processing', 'EC352', 'DEPT', 'PCC', 3, 0, 0),
('Microprocessors and Microcontrollers', 'EC353', 'DEPT', 'PCC', 4, 0, 0),
('Computer Networks', 'EC354', 'DEPT', 'PCC', 3, 0, 2),
('Communication Systems Laboratory', 'EC355', 'DEPT', 'PCC', 0, 0, 3),
('Microprocessors and Microcontrollers Laboratory', 'EC356', 'DEPT', 'PCC', 0, 0, 3),
('Electronic Instrumentation', 'EC401', 'DEPT', 'PCC', 3, 0, 0),
('Microwave Engineering', 'EC402', 'DEPT', 'PCC', 3, 0, 0),
('Electronic Instrumentation and DSP Laboratory', 'EC403', 'DEPT', 'PCC', 0, 0, 3),
('Project Work – Part A', 'EC449', 'DEPT', 'PRC', 0, 0, 3),
('Optical Fiber Communication', 'EC451', 'DEPT', 'PCC', 3, 0, 0),
('Microwave and Optical Communication laboratory', 'EC452', 'DEPT', 'PCC', 0, 0, 3),
('Seminar', 'EC491', 'DEPT', 'PCC', 0, 0, 0),
('Project Work - Part B', 'EC499', 'DEPT', 'PRC', 0, 0, 6),
('Electrical Measurements & Instrumentation', 'EE201', 'DEPT', 'PCC', 3, 1, 0),
('Circuit Theory-I', 'EE202', 'DEPT', 'PCC', 3, 0, 0),
('Electric & Magnetic Fields', 'EE203', 'DEPT', 'PCC', 3, 1, 0),
('Basic Electrical Engineering Lab', 'EE235', 'DEPT', 'ESC', 0, 0, 3),
('Network Analysis', 'EE236', 'DEPT', 'ESC', 3, 0, 0),
('Circuit Theory-II', 'EE251', 'DEPT', 'PCC', 3, 1, 0),
('Electrical Machines-I', 'EE252', 'DEPT', 'PCC', 3, 1, 0),
('Power Systems', 'EE253', 'DEPT', 'PCC', 4, 0, 0),
('Electrical Measurements Lab', 'EE254', 'DEPT', 'PCC', 0, 0, 3),
('Control Systems', 'EE301', 'DEPT', 'PCC', 3, 1, 0),
('Electrical Machines-II', 'EE302', 'DEPT', 'PCC', 3, 1, 0),
('Power Systems-II', 'EE303', 'DEPT', 'PCC', 3, 1, 0),
('Electrical Machines Lab-I', 'EE304', 'DEPT', 'PCC', 0, 0, 4),
('Circuits Lab', 'EE305', 'DEPT', 'PCC', 0, 0, 3),
('Electrical Simulation Laboratory', 'EE306', 'DEPT', 'PCC', 0, 0, 3),
('Power System Operations & Control', 'EE351', 'DEPT', 'PCC', 3, 1, 0),
('Power Electronics', 'EE352', 'DEPT', 'PCC', 3, 1, 0),
('Power System Protection', 'EE353', 'DEPT', 'PCC', 3, 1, 0),
('Electrical Machines –III', 'EE354', 'DEPT', 'PCC', 3, 1, 0),
('Control Systems Lab', 'EE355', 'DEPT', 'PCC', 0, 0, 3),
('Electrical Machines Lab-II', 'EE356', 'DEPT', 'PCC', 0, 0, 3),
('Solid State Drives', 'EE401', 'DEPT', 'PCC', 3, 1, 0),
('HVDC & FACTS', 'EE402', 'DEPT', 'PCC', 3, 1, 0),
('Elective III', 'EE403', 'DEPT', 'PCC', 3, 0, 0),
('Seminar', 'EE441', 'DEPT', 'PCC', 0, 0, 3),
('Project Work – Part A', 'EE449', 'DEPT', 'PCC', 0, 0, 3),
('Power Systems Lab', 'EE451', 'DEPT', 'PCC', 0, 0, 3),
('Power Electronics & Drives Lab', 'EE452', 'DEPT', 'PCC', 0, 0, 3),
('Measurement Techniques & Instrumentation Engineeri', 'EE480', 'DEPT', 'ESC', 3, 0, 0),
('Project Work – Part B', 'EE499', 'DEPT', 'PCC', 0, 0, 6),
('Engineering Economics and Accountancy', 'M335', 'DEPT', 'HSC', 3, 0, 0),
('Credits Mathematics – III', 'MA201', 'DEPT', 'BSC', 4, 0, 0),
('Mathematical Methods', 'MA211', 'DEPT', 'BSC', 4, 0, 0),
('Complex Variables and Special functions', 'MA213', 'DEPT', 'BSC', 4, 0, 0),
('Transformation Techniques', 'MA236', 'DEPT', 'BSC', 3, 0, 0),
('Statistical and Numerical Methods for Engineers', 'MA238', 'DEPT', 'BSC', 4, 0, 0),
('Mathematics – IV', 'MA251', 'DEPT', 'BSC', 4, 0, 0),
('Numerical and Statistical Methods', 'MA285', 'DEPT', 'BSC', 3, 0, 0),
('Thermodynamics', 'ME201', 'DEPT', 'PCC', 3, 1, 0),
('Kinematics of Machinery', 'ME202', 'DEPT', 'PCC', 3, 0, 0),
('Turbomachines', 'ME251', 'DEPT', 'PCC', 3, 1, 0),
('Design of Machine Elements – 1', 'ME252', 'DEPT', 'PCC', 3, 1, 0),
('Manufacturing Technology', 'ME253', 'DEPT', 'PCC', 4, 0, 0),
('Machine Drawing', 'ME254', 'DEPT', 'PCC', 2, 0, 3),
('Manufacturing Technology Laboratory', 'ME255', 'DEPT', 'PCC', 0, 0, 3),
('Internal Combustion Engines', 'ME301', 'DEPT', 'PCC', 3, 0, 0),
('Dynamics of Machinery', 'ME302', 'DEPT', 'PCC', 3, 1, 0),
('Machine Tools and Metrology', 'ME303', 'DEPT', 'PCC', 4, 0, 0),
('Management Science and Productivity', 'ME304', 'DEPT', 'PCC', 4, 0, 0),
('Mechanical Measurements', 'ME305', 'DEPT', 'PCC', 3, 0, 0),
('Thermal Engineering Laboratory', 'ME306', 'DEPT', 'PCC', 0, 0, 3),
('Dynamics and Measurements Laboratory', 'ME307', 'DEPT', 'PCC', 0, 0, 3),
('Heat and Mass Transfer', 'ME351', 'DEPT', 'PCC', 3, 1, 0),
('Design of Machine Elements – 2', 'ME352', 'DEPT', 'PCC', 3, 1, 0),
('Machining Science', 'ME353', 'DEPT', 'PCC', 3, 1, 0),
('Heat Transfer and Fuels Laboratory', 'ME354', 'DEPT', 'PCC', 0, 0, 3),
('Machining and Metrology Laboratory', 'ME355', 'DEPT', 'PCC', 0, 0, 3),
('Welding Technology', 'ME385', 'DEPT', 'PCC', 3, 0, 0),
('Refrigeration and Air- Conditioning', 'ME401', 'DEPT', 'PCC', 3, 0, 0),
('CAD/CAM', 'ME402', 'DEPT', 'PCC', 4, 0, 0),
('CAD/CAM Laboratory', 'ME403', 'DEPT', 'PCC', 0, 0, 3),
('Industrial Management', 'ME435', 'DEPT', 'ESC', 3, 0, 0),
('Project Work Part-A', 'ME449', 'DEPT', 'PRC', 0, 0, 3),
('Mechatronics', 'ME451', 'DEPT', 'PCC', 3, 0, 0),
('Mechatronics Lab', 'ME452', 'DEPT', 'PCC', 0, 0, 3),
('Seminar', 'ME491', 'DEPT', 'PCC', 0, 0, 3),
('Project Work Part-B', 'ME499', 'DEPT', 'PRC', 0, 0, 6),
('Physical Metallurgy and Materials Engineering', 'MM201', 'DEPT', 'PCC', 3, 1, 0),
('Mineral Processing', 'MM202', 'DEPT', 'PCC', 3, 1, 0),
('Metallurgical Thermodynamics and Kinetics', 'MM203', 'DEPT', 'PCC', 3, 1, 0),
('Transport Phenomena', 'MM204', 'DEPT', 'PCC', 3, 1, 0),
('Mineral Processing Laboratory', 'MM205', 'DEPT', 'PCC', 0, 0, 3),
('Materials Engineering', 'MM235', 'DEPT', 'ESC', 4, 0, 0),
('Phase Transformations and Heat Treatment', 'MM251', 'DEPT', 'PCC', 3, 1, 0),
('Unit Processes in Extractive Metallurgy', 'MM252', 'DEPT', 'PCC', 3, 1, 0),
('Computer Applications in Materials Engineering', 'MM253', 'DEPT', 'PCC', 3, 0, 0),
('Unit Processes in Extractive Metallurgy Laboratory', 'MM254', 'DEPT', 'PCC', 0, 0, 3),
('Physical Metallurgy and Heat Treatment Laboratory', 'MM255', 'DEPT', 'PCC', 0, 0, 3),
('Ferrous Production Technology', 'MM301', 'DEPT', 'PCC', 3, 1, 0),
('Mechanical Behaviour of Materials', 'MM302', 'DEPT', 'PCC', 3, 1, 0),
('Powder Metallurgy', 'MM303', 'DEPT', 'PCC', 3, 1, 0),
('Mechanical Behaviour of Materials Laboratory', 'MM304', 'DEPT', 'PCC', 0, 0, 3),
('Powder Metallurgy Laboratory', 'MM305', 'DEPT', 'PCC', 0, 0, 3),
('Foundry Technology and Non-Destructive Testing', 'MM351', 'DEPT', 'PCC', 3, 1, 0),
('Electrometallurgy and Corrosion', 'MM352', 'DEPT', 'PCC', 3, 1, 0),
('Foundry Technology and Non-Destructive Testing Lab', 'MM353', 'DEPT', 'PCC', 0, 0, 3),
('Electrometallurgy and Corrosion Laboratory', 'MM354', 'DEPT', 'PCC', 0, 0, 3),
('X-Ray Diffraction and Electron Microscopy', 'MM401', 'DEPT', 'PCC', 3, 1, 0),
('Mechanical Working of Materials', 'MM402', 'DEPT', 'PCC', 3, 0, 0),
('Non Ferrous Extractive Metallurgy', 'MM403', 'DEPT', 'PCC', 4, 0, 0),
('X-Ray Diffraction and Electron Microscopy Laborato', 'MM404', 'DEPT', 'PCC', 0, 0, 3),
('Mechanical Working of Materials Laboratory', 'MM405', 'DEPT', 'PCC', 0, 0, 3),
('Project Work-Part A', 'MM449', 'DEPT', 'PRC', 0, 0, 3),
('Characterization Techniques', 'MM451', 'DEPT', 'PCC', 3, 0, 0),
('Characterization Techniques Laboratory', 'MM452', 'DEPT', 'PCC', 0, 0, 3),
('Seminar', 'MM491', 'DEPT', 'PCC', 0, 0, 3),
('Project Work – Part B', 'MM499', 'DEPT', 'PRC', 0, 0, 6),
('Electronic and Magnetic Materials', 'PH285', 'DEPT', 'PCC', 3, 0, 0),
('Engineering Economics & Accountancy', 'SM311', 'DEPT', 'HSC', 3, 0, 0),
('Engg. Economics & Accountancy', 'SM335', 'DEPT', 'HSC', 3, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `course_faculty`
--

CREATE TABLE `course_faculty` (
  `FACULTY_ID` varchar(10) DEFAULT NULL,
  `COURSE_ID` varchar(5) DEFAULT NULL,
  `SEM` int(1) DEFAULT NULL,
  `BRANCH` varchar(3) DEFAULT NULL,
  `START_DATE` date DEFAULT NULL,
  `END_DATE` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `CSE`
--

CREATE TABLE `CSE` (
  `BATCH` int(4) NOT NULL,
  `COURSE_ID` varchar(5) NOT NULL,
  `SEM` int(1) NOT NULL,
  `BRANCH` varchar(3) NOT NULL,
  `CREDITS` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CSE`
--

INSERT INTO `CSE` (`BATCH`, `COURSE_ID`, `SEM`, `BRANCH`, `CREDITS`) VALUES
(2015, 'MA238', 3, 'CSE', 4),
(2015, 'EE236', 3, 'CSE', 3),
(2015, 'EC237', 3, 'CSE', 3),
(2015, 'CS201', 3, 'CSE', 4),
(2015, 'CS202', 3, 'CSE', 4),
(2015, 'CS203', 3, 'CSE', 4),
(2015, 'EC238', 3, 'CSE', 2),
(2015, 'CS204', 3, 'CSE', 2),
(2015, 'EC287', 4, 'CSE', 3),
(2015, 'CS251', 4, 'CSE', 4),
(2015, 'CS252', 4, 'CSE', 4),
(2015, 'CS253', 4, 'CSE', 4),
(2015, 'CS254', 4, 'CSE', 4),
(2015, 'EC288', 4, 'CSE', 2),
(2015, 'CS255', 4, 'CSE', 2),
(2015, 'CS256', 4, 'CSE', 2),
(2015, 'SM335', 5, 'CSE', 3),
(2015, 'CS301', 5, 'CSE', 4),
(2015, 'CS302', 5, 'CSE', 4),
(2015, 'CS303', 5, 'CSE', 4),
(2015, 'CS304', 5, 'CSE', 4),
(2015, 'CS305', 5, 'CSE', 2),
(2015, 'CS306', 5, 'CSE', 2),
(2015, 'CS307', 5, 'CSE', 2),
(2015, 'CS351', 6, 'CSE', 4),
(2015, 'CS352', 6, 'CSE', 4),
(2015, 'CS353', 6, 'CSE', 2),
(2015, 'CS354', 6, 'CSE', 2),
(2015, 'XXXX', 6, 'CSE', 3),
(2015, 'XXXX', 6, 'CSE', 3),
(2015, 'XXXX', 6, 'CSE', 3),
(2015, 'XXXX', 6, 'CSE', 3),
(2015, 'CS401', 7, 'CSE', 4),
(2015, 'CS402', 7, 'CSE', 4),
(2015, 'CS403', 7, 'CSE', 2),
(2015, 'XXXX', 7, 'CSE', 3),
(2015, 'XXXX', 7, 'CSE', 3),
(2015, 'XXXX', 7, 'CSE', 3),
(2015, 'CS449', 7, 'CSE', 2),
(2015, 'ME435', 8, 'CSE', 3),
(2015, 'CS451', 8, 'CSE', 3),
(2015, 'CS452', 8, 'CSE', 3),
(2015, 'XXXX', 8, 'CSE', 3),
(2015, 'XXXX', 8, 'CSE', 3),
(2015, 'XXXX', 8, 'CSE', 3),
(2015, 'CS491', 8, 'CSE', 1),
(2015, 'CS499', 8, 'CSE', 4);

-- --------------------------------------------------------

--
-- Table structure for table `CSE_COURSES`
--

CREATE TABLE `CSE_COURSES` (
  `COURSE_ID` varchar(5) NOT NULL,
  `COURSE_NAME` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

CREATE TABLE `marks` (
  `REGISTRATION_ID` varchar(19) DEFAULT NULL,
  `MINOR1` int(2) DEFAULT NULL,
  `MINOR2` int(2) DEFAULT NULL,
  `MID` int(2) DEFAULT NULL,
  `END` int(2) DEFAULT NULL,
  `TOTAL_MARKS` int(3) DEFAULT NULL,
  `GRADE` varchar(1) DEFAULT NULL,
  `ATTENDANCE` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marks`
--

INSERT INTO `marks` (`REGISTRATION_ID`, `MINOR1`, `MINOR2`, `MID`, `END`, `TOTAL_MARKS`, `GRADE`, `ATTENDANCE`) VALUES
('43CS20320160710', 5, 5, 10, 10, 30, 'F', 80),
('43CS30420170811', 6, 0, 2, 10, 18, 'F', 76);

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `REGISTRATION_ID` varchar(19) DEFAULT NULL,
  `ROLLNUMBER` int(6) DEFAULT NULL,
  `SEM` varchar(3) DEFAULT NULL,
  `REGISTRATION_DATE` date DEFAULT NULL,
  `COURSE_ID` varchar(5) DEFAULT NULL,
  `COURSE_TYPE` varchar(10) DEFAULT NULL,
  `MODE` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`REGISTRATION_ID`, `ROLLNUMBER`, `SEM`, `REGISTRATION_DATE`, `COURSE_ID`, `COURSE_TYPE`, `MODE`) VALUES
('43CS20320160710', 43, '3', '2016-07-10', 'CS203', 'DEPT', 'REGULAR'),
('43CS30420170811', 43, '5', '2017-08-11', 'CS304', 'DEPT', 'REGULAR');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `STUDENT_NAME` varchar(30) NOT NULL,
  `ROLL_NUMBER` int(6) NOT NULL,
  `SECTION` varchar(1) DEFAULT NULL,
  `BRANCH` varchar(3) DEFAULT NULL,
  `ADDMISSION_YEAR` year(4) DEFAULT NULL,
  `PASSOUT_YEAR` year(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`COURSE_ID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`ROLL_NUMBER`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
