-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 02, 2020 at 03:05 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `electro_college`
--
CREATE DATABASE IF NOT EXISTS `electro_college` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `electro_college`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `power` int(11) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`user_id`, `username`, `password`, `power`) VALUES
(1, 'rogy', '1212', 1),
(2, 'jane', '1212', 0);

-- --------------------------------------------------------

--
-- Table structure for table `candidate`
--

CREATE TABLE IF NOT EXISTS `candidate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `studid` varchar(200) NOT NULL,
  `name` varchar(255) NOT NULL,
  `platform` varchar(255) NOT NULL,
  `picture` varchar(200) NOT NULL,
  `votecount` int(11) NOT NULL,
  `sy` varchar(200) NOT NULL,
  `IDNo` varchar(200) NOT NULL,
  `position` varchar(200) NOT NULL,
  `course` varchar(200) NOT NULL,
  `year` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `studid` (`studid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

--
-- Dumping data for table `candidate`
--

INSERT INTO `candidate` (`id`, `studid`, `name`, `platform`, `picture`, `votecount`, `sy`, `IDNo`, `position`, `course`, `year`) VALUES
(26, '18/03903', 'Molly Rita', 'SOB', 'm-pesa-logo-png.png', 0, '', '', 'President', 'DIT', '4 Year'),
(27, 'dit/29615/2016', 'Moha Haso', 'SOB', '363354-Large.jpg', 0, '', '', 'President', 'DIT', '4 Year'),
(29, '14/03716', 'Rogy 0duor', 'SOB', 'rent_2.png', 0, '', '', 'President', 'BSCIT', '2 Year'),
(31, '14/03718', 'Ken Kery', 'FOCIM', 'rent_2.png', 0, '', '', 'Sec Gen', 'DIT', '4 Year'),
(36, '14/03738', 'Asha Deborah', 'FOCIM', 'house2.jpg', 0, '', '', 'Vice President', 'DIT', '4 Year'),
(37, '14/03726', 'Derick Amollo', 'FOCIM', 'house3_2.jpg', 0, '', '', 'Finance Sec', 'DIT', '4 Year');

-- --------------------------------------------------------

--
-- Table structure for table `d_ckets`
--

CREATE TABLE IF NOT EXISTS `d_ckets` (
  `d_ckets_id` int(11) NOT NULL AUTO_INCREMENT,
  `docket` varchar(200) NOT NULL,
  PRIMARY KEY (`d_ckets_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `d_ckets`
--

INSERT INTO `d_ckets` (`d_ckets_id`, `docket`) VALUES
(1, 'SOB'),
(2, 'FOCIM');

-- --------------------------------------------------------

--
-- Table structure for table `election_team`
--

CREATE TABLE IF NOT EXISTS `election_team` (
  `ieckid` int(11) NOT NULL AUTO_INCREMENT,
  `eln_name` varchar(255) NOT NULL,
  `eln_leader` varchar(255) NOT NULL,
  PRIMARY KEY (`ieckid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `election_team`
--

INSERT INTO `election_team` (`ieckid`, `eln_name`, `eln_leader`) VALUES
(1, 'becky', 'Chairman'),
(2, 'Clerk 2', 'Verifying Votes');

-- --------------------------------------------------------

--
-- Table structure for table `falied`
--

CREATE TABLE IF NOT EXISTS `falied` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attempt` int(11) NOT NULL,
  `time` varchar(100) NOT NULL,
  `power` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `falied`
--

INSERT INTO `falied` (`id`, `attempt`, `time`, `power`) VALUES
(1, 0, '14:49:01', 0);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `studid` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `date_registereddatetime` varchar(200) NOT NULL,
  PRIMARY KEY (`studid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`studid`, `password`, `date_registereddatetime`) VALUES
('14/03716', 'hlzTIbaq', '2018-11-05 11:22:45'),
('14/03718', 'fUkd6ooA', '2018-11-04 22:45:23'),
('14/03726', 'aCfItzYD', '2018-11-05 17:23:04'),
('14/03738', '1helP8IP', '2018-11-05 17:25:18'),
('18/03901', 'sqlSZQxq', '2018-11-05 11:18:48'),
('18/03903', 'ukalF1cN', '2018-11-05 11:49:38'),
('4336/2016', 'rdFQEaK5', '2018-11-09 16:57:36'),
('dit/29615/2016', '7luRuvss', '2018-11-09 17:01:20');

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE IF NOT EXISTS `position` (
  `IDNo` int(11) NOT NULL AUTO_INCREMENT,
  `position` varchar(200) NOT NULL,
  PRIMARY KEY (`IDNo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `position`
--

INSERT INTO `position` (`IDNo`, `position`) VALUES
(1, 'President'),
(2, 'Sec Gen'),
(3, 'Vice President'),
(4, 'Finance Sec');

-- --------------------------------------------------------

--
-- Table structure for table `position_focim`
--

CREATE TABLE IF NOT EXISTS `position_focim` (
  `position` varchar(200) NOT NULL,
  `IDNo` varchar(200) NOT NULL,
  PRIMARY KEY (`position`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `position_focim`
--

INSERT INTO `position_focim` (`position`, `IDNo`) VALUES
('Finance Sec', ''),
('President', ''),
('Sec Gen', ''),
('Vice President', '');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE IF NOT EXISTS `students` (
  `studid` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `leve` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `course` varchar(100) NOT NULL,
  `year` varchar(60) NOT NULL,
  `sec` varchar(100) NOT NULL,
  `power` int(11) NOT NULL,
  PRIMARY KEY (`studid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`studid`, `password`, `leve`, `name`, `course`, `year`, `sec`, `power`) VALUES
('14/03716', '3765', '4', 'becky ', 'BSCIT', '2 Year', 'sem 2', 0),
('14/03718', '3765', '4', 'Oduor Rogy', 'DIT', '4 Year', 'sem 4', 0),
('14/03726', 'aCfItzYD', '4', 'Derick Amollo', 'DIT', '4 Year', 'sem 3', 0),
('14/03738', '3765', '4', 'Asha Deborah', 'DIT', '4 Year', 'sem 3', 0),
('18/03903', '2121', '4', 'Molly Achieng', 'DIT', '4 Year', 'sem 4', 0),
('4336/2016', 'rdFQEaK5', '4', 'Oduor Rogy', 'DIT', '4 Year', 'sem 4', 0),
('dit/29615/2016', '3765', '4', 'Moha', 'DIT', '4 Year', 'sem 4', 0);

-- --------------------------------------------------------

--
-- Table structure for table `votecount`
--

CREATE TABLE IF NOT EXISTS `votecount` (
  `Stud_id` int(11) NOT NULL AUTO_INCREMENT,
  `StudID` varchar(200) NOT NULL,
  `Position` varchar(200) NOT NULL,
  `Result` varchar(11) NOT NULL,
  PRIMARY KEY (`Stud_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
