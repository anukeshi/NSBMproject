-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 23, 2018 at 05:40 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `logininfo`
--

-- --------------------------------------------------------

--
-- Table structure for table `gpa`
--

CREATE TABLE `gpa` (
  `stuid` varchar(50) NOT NULL,
  `gpa` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
-- Error reading data for table logininfo.gpa: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `logininfo`.`gpa`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `instructors`
--

CREATE TABLE `instructors` (
  `iid` varchar(50) NOT NULL,
  `iname` varchar(50) NOT NULL,
  `idob` date NOT NULL,
  `igender` varchar(50) NOT NULL,
  `iemail` varchar(50) NOT NULL,
  `itpno` int(11) NOT NULL,
  `iaddress` varchar(50) NOT NULL,
  `isalary` double NOT NULL,
  `isubjteach` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
-- Error reading data for table logininfo.instructors: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `logininfo`.`instructors`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `lecs`
--

CREATE TABLE `lecs` (
  `course` varchar(50) NOT NULL,
  `year` int(11) NOT NULL,
  `subjectcode` varchar(50) NOT NULL,
  `staffid` varchar(50) NOT NULL,
  `stucount` int(11) NOT NULL,
  `location` varchar(50) NOT NULL,
  `weekday` varchar(50) NOT NULL,
  `timeslot` varchar(50) NOT NULL,
  `classtype` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
-- Error reading data for table logininfo.lecs: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `logininfo`.`lecs`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `lecturers`
--

CREATE TABLE `lecturers` (
  `lid` varchar(10) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `ldob` date NOT NULL,
  `lgender` varchar(50) NOT NULL,
  `lemail` varchar(50) NOT NULL,
  `ltpno` int(10) NOT NULL,
  `laddress` varchar(50) NOT NULL,
  `lsalary` double NOT NULL,
  `subjteach` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
-- Error reading data for table logininfo.lecturers: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `logininfo`.`lecturers`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `pgstudents`
--

CREATE TABLE `pgstudents` (
  `course` varchar(50) NOT NULL,
  `pgid` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `tpno` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `quatype` varchar(50) NOT NULL,
  `institute` varchar(50) NOT NULL,
  `yearcomplete` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
-- Error reading data for table logininfo.pgstudents: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `logininfo`.`pgstudents`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `pgsubjectenroll`
--

CREATE TABLE `pgsubjectenroll` (
  `faculty` varchar(50) NOT NULL,
  `course` varchar(50) NOT NULL,
  `year` int(11) NOT NULL,
  `semester` int(11) NOT NULL,
  `month` varchar(50) NOT NULL,
  `pgid` varchar(50) NOT NULL,
  `subjcode` varchar(50) NOT NULL,
  `credits` int(11) NOT NULL,
  `fees` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
-- Error reading data for table logininfo.pgsubjectenroll: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `logininfo`.`pgsubjectenroll`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `pgsubjmarks`
--

CREATE TABLE `pgsubjmarks` (
  `pgid` varchar(50) NOT NULL,
  `subjcode` varchar(50) NOT NULL,
  `credits` int(11) NOT NULL,
  `a01` int(11) NOT NULL,
  `a02` int(11) NOT NULL,
  `a03` int(11) NOT NULL,
  `a04` int(11) NOT NULL,
  `a05` int(11) NOT NULL,
  `a06` int(11) NOT NULL,
  `a07` int(11) NOT NULL,
  `a08` int(11) NOT NULL,
  `a09` int(11) NOT NULL,
  `a10` int(11) NOT NULL,
  `exam` int(11) NOT NULL,
  `grade` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
-- Error reading data for table logininfo.pgsubjmarks: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `logininfo`.`pgsubjmarks`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `course` varchar(50) NOT NULL,
  `year` int(11) NOT NULL,
  `semester` int(11) NOT NULL,
  `subjcode` varchar(50) NOT NULL,
  `subjname` varchar(50) NOT NULL,
  `subjtype` varchar(50) NOT NULL,
  `credits` int(11) NOT NULL,
  `fees` double NOT NULL,
  `stucount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
-- Error reading data for table logininfo.subject: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `logininfo`.`subject`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `ugstudents`
--

CREATE TABLE `ugstudents` (
  `course` varchar(50) NOT NULL,
  `ugid` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(10) NOT NULL,
  `address` varchar(50) NOT NULL,
  `tpno` int(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `alresult` varchar(50) NOT NULL,
  `rank` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
-- Error reading data for table logininfo.ugstudents: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `logininfo`.`ugstudents`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `ugsubjectenroll`
--

CREATE TABLE `ugsubjectenroll` (
  `faculty` varchar(50) NOT NULL,
  `course` varchar(50) NOT NULL,
  `year` int(11) NOT NULL,
  `semester` int(11) NOT NULL,
  `month` varchar(50) NOT NULL,
  `ugid` varchar(50) NOT NULL,
  `subjcode` varchar(50) NOT NULL,
  `credits` int(11) NOT NULL,
  `fees` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
-- Error reading data for table logininfo.ugsubjectenroll: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `logininfo`.`ugsubjectenroll`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `ugsubjmarks`
--

CREATE TABLE `ugsubjmarks` (
  `ugid` varchar(50) NOT NULL,
  `subjcode` varchar(50) NOT NULL,
  `credits` int(11) NOT NULL,
  `a01` int(11) DEFAULT NULL,
  `a02` int(11) DEFAULT NULL,
  `a03` int(11) DEFAULT NULL,
  `a04` int(11) DEFAULT NULL,
  `a05` int(11) DEFAULT NULL,
  `a06` int(11) DEFAULT NULL,
  `a07` int(11) DEFAULT NULL,
  `a08` int(11) DEFAULT NULL,
  `a09` int(11) DEFAULT NULL,
  `a10` int(11) DEFAULT NULL,
  `exam` int(11) DEFAULT NULL,
  `grade` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
-- Error reading data for table logininfo.ugsubjmarks: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `logininfo`.`ugsubjmarks`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `userdetails`
--

CREATE TABLE `userdetails` (
  `userId` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
-- Error reading data for table logininfo.userdetails: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `logininfo`.`userdetails`' at line 1

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gpa`
--
ALTER TABLE `gpa`
  ADD PRIMARY KEY (`stuid`);

--
-- Indexes for table `instructors`
--
ALTER TABLE `instructors`
  ADD PRIMARY KEY (`iid`);

--
-- Indexes for table `lecs`
--
ALTER TABLE `lecs`
  ADD PRIMARY KEY (`location`,`weekday`,`timeslot`);

--
-- Indexes for table `lecturers`
--
ALTER TABLE `lecturers`
  ADD PRIMARY KEY (`lid`);

--
-- Indexes for table `pgstudents`
--
ALTER TABLE `pgstudents`
  ADD PRIMARY KEY (`pgid`);

--
-- Indexes for table `pgsubjectenroll`
--
ALTER TABLE `pgsubjectenroll`
  ADD PRIMARY KEY (`pgid`,`subjcode`);

--
-- Indexes for table `pgsubjmarks`
--
ALTER TABLE `pgsubjmarks`
  ADD PRIMARY KEY (`pgid`,`subjcode`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subjcode`);

--
-- Indexes for table `ugstudents`
--
ALTER TABLE `ugstudents`
  ADD PRIMARY KEY (`ugid`);

--
-- Indexes for table `ugsubjectenroll`
--
ALTER TABLE `ugsubjectenroll`
  ADD PRIMARY KEY (`ugid`,`subjcode`);

--
-- Indexes for table `ugsubjmarks`
--
ALTER TABLE `ugsubjmarks`
  ADD PRIMARY KEY (`ugid`,`subjcode`);

--
-- Indexes for table `userdetails`
--
ALTER TABLE `userdetails`
  ADD PRIMARY KEY (`userId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
