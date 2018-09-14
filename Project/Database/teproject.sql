-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 15, 2018 at 01:14 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `teproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `addplace`
--

CREATE TABLE `addplace` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `img` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `place` varchar(100) NOT NULL,
  `tags` varchar(100) NOT NULL,
  `desc` varchar(800) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addplace`
--

INSERT INTO `addplace` (`id`, `name`, `img`, `address`, `place`, `tags`, `desc`) VALUES
(51, 'Purva Garden', 'uploads/download (2).jpg', 'A/P Sangli', 'Maharshtra', 'Sangli', 'It is one of the good place in Sangli.'),
(52, 'pune', 'uploads/download (1).jpg', 'pune', 'pune', 'pune', 'nice place');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('', ''),
('kirankoshti', 'karan@1');

-- --------------------------------------------------------

--
-- Table structure for table `admin11`
--

CREATE TABLE `admin11` (
  `id` int(20) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin11`
--

INSERT INTO `admin11` (`id`, `uname`, `pass`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `alumni_info`
--

CREATE TABLE `alumni_info` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `address` varchar(20) NOT NULL,
  `branch` varchar(30) NOT NULL,
  `c_name` varchar(10) NOT NULL,
  `j_pof` varchar(20) NOT NULL,
  `pack` int(11) NOT NULL,
  `award` varchar(40) NOT NULL,
  `p_year` int(10) NOT NULL,
  `ph_no` int(10) NOT NULL,
  `email` varchar(20) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `pass` varchar(10) NOT NULL,
  `conf_pass` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alumni_info`
--

INSERT INTO `alumni_info` (`id`, `name`, `address`, `branch`, `c_name`, `j_pof`, `pack`, `award`, `p_year`, `ph_no`, `email`, `uname`, `pass`, `conf_pass`) VALUES
(1, 'sneha Dilip patil', 'Ashta', 'Computer Enggg', 'wipro', 'manager', 10, 'abcd', 2017, 1234567987, 'snehal@gmail.com', 'sneha123', 'sneha', ''),
(2, 'pallavi appaso sayar', 'kupwad', 'Computer Enggg', 'TCS', 'manager', 120000, 'abcd', 2017, 2147483647, 'pallavi@gmail.com', 'pallavi123', 'pallavi@12', ''),
(3, 'supriya vilas edake', 'kundal', 'Computer Enggg', 'wipro', 'manager', 120000, 'poiuuhj', 2017, 2147483647, 'supriya@gmail.com', 'supriya123', 'supriya123', '');

-- --------------------------------------------------------

--
-- Table structure for table `stud_info`
--

CREATE TABLE `stud_info` (
  `id` int(11) NOT NULL,
  `r_no` int(4) NOT NULL,
  `name` varchar(50) NOT NULL,
  `branch` varchar(50) NOT NULL,
  `class` varchar(20) NOT NULL,
  `addresss` varchar(30) NOT NULL,
  `contact_no` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `uname` varchar(30) NOT NULL,
  `pass` varchar(30) NOT NULL,
  `image` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stud_info`
--

INSERT INTO `stud_info` (`id`, `r_no`, `name`, `branch`, `class`, `addresss`, `contact_no`, `email`, `uname`, `pass`, `image`) VALUES
(1, 344, 'abc abc abc', 'Mechanical Engg', 'TE', 'ewhiffukw', '8978678976', 'abc@gmail.com', 'abc', 'abc', ''),
(3, 1111, 'sss ', 'Mechanical Engg', 'FE', 'ssssssss', '8624991829', 'sss@gmail.com', 'sssssss', 'sssssssssssssssss', ''),
(4, 344, 'Pallavi Appaso Sayar', 'Computer Engg', 'TE', 'Sangli', '8237676581', 'pallavisayar@gmail.com', 'pallavi', 'pallavi', ''),
(5, 334, 'Rutuja', 'Computer Engg', 'SE', 'ashta', '1234567891', 'rutuja7@gmail.com ', 'rutu', 'rutu11', ''),
(6, 339, 'Snehal12', 'Select Option', 'Select Option', '', '9763807651', 'snehal@gmail.com', 'sneha123', 'sneha123', ''),
(7, 355, 'abc abc ccc', 'Mechanical Engg', 'TE', 'drfcgjvhg', '8978678976', 'abc@gmail.com', 'abcd', 'ssss', ''),
(8, 301, 'kundan Baheti', 'Computer Engg', 'TE', 'sangli', '8569743256', 'kenny@gmail.com', 'kundan', 'kundan', ''),
(9, 340, 'shubham', 'Computer Engg', 'TE', 'Islampur', '4567328965', 'shubham@gmail.com', 'shubham123', 'shubham123', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `age` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phoneno` varchar(100) NOT NULL,
  `address` varchar(200) NOT NULL,
  `password` varchar(100) NOT NULL,
  `ans1` varchar(20) NOT NULL,
  `ans2` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `age`, `email`, `phoneno`, `address`, `password`, `ans1`, `ans2`) VALUES
(1, 'karan koshti', '24', 'kirankoshtimail@gmail.com', '9518396766', 'A/P Ashta Tal-Miraj Dist-Sangli', 'hello', 'Yes', 'No'),
(2, 'kiran koshti', '22', 'kirankoshtiblogger@gmail.com', '08624991829', 'AP Salgare Tal-Miraj Dist-Sangli', '12', 'Yes', 'No'),
(7, 'kiran koshti', '22', 'kirankoshtihello@gmail.com', '08624991829', 'AP Salgare Tal-Miraj Dist-Sangli', '123', 'Yes', 'No'),
(8, 'Vaibha Shinde', '20', 'Vaibhavshinde@gmail.com', '9734986722', 'A/P Khanderajuri Tal-Miraj Dist-Sangli', 'vaibhav@1', 'Yes', 'Yes'),
(9, 'Swapnil Thhombare', '22', 'swapnil@gmail.com', '8888888888', 'A/P Sangli', '1234', 'Yes', 'No'),
(10, 'Raju Balaso Kumbhar', '25', 'balaso@gmail.com', '8007010565', 'AP Salgare Tal-Miraj Dist-Sangli', '123', 'Yes', 'No'),
(11, 'Vikram Khanderao Mali', '22', 'vikrammali757@gmail.com', '9623989965', 'a/p Palus', '007', 'Yes', 'Yes'),
(12, 'Monika Prakash mali', '20', 'malimonika1996@gmail.com', '917239991', 'A/P Kkavathemahankal', '123', 'Yes', 'Yes'),
(13, 'pallavi ssss mane', '20', 'pallavi@gmail.com', '998877665', 'a/P Kupwad', '123', 'Yes', 'Yes'),
(14, 'Kailas Senapati Koshti', '40', 'kailas@gmail.com', '9545434614', 'A/P Salgare ', '1234', 'Yes', 'No'),
(15, 'Ajinkya Sanjay Nanawaare', '22', 'ajikya@gmail.com', '8624998210', 'a/p Sangali', '123', 'Yes', 'Yes'),
(16, 'kiran hello koshti', '22', 'h@gmail.com', '8624991829', 'AP Salgare Tal-Miraj Dist-Sangli', '123', 'Yes', 'No'),
(17, 'viki vilas mali', '23', 'kirammali@gmail.com', '8624991829', 'AP Salgare Tal-Miraj Dist-Sangli', '1234', 'Yes', 'No'),
(18, 'pratik prakash gade', '22', 'Pratikgade@gmail.com', '8049656522', 'a/p Tanang', '1234', 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `userfeedback`
--

CREATE TABLE `userfeedback` (
  `Id` int(11) NOT NULL,
  `Email` varchar(1000) NOT NULL,
  `Feedback` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userfeedback`
--

INSERT INTO `userfeedback` (`Id`, `Email`, `Feedback`) VALUES
(5, 'kirankoshtimail@gmail.com', 'It is good spot'),
(6, 'kirankoshtihello@gmail.com', 'It is Nice Place'),
(7, 'swapnil@gmail.com', 'good'),
(8, 'malimonika1996@gmail.com', 'bad website');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addplace`
--
ALTER TABLE `addplace`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin11`
--
ALTER TABLE `admin11`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `alumni_info`
--
ALTER TABLE `alumni_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stud_info`
--
ALTER TABLE `stud_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userfeedback`
--
ALTER TABLE `userfeedback`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addplace`
--
ALTER TABLE `addplace`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `admin11`
--
ALTER TABLE `admin11`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `alumni_info`
--
ALTER TABLE `alumni_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `stud_info`
--
ALTER TABLE `stud_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `userfeedback`
--
ALTER TABLE `userfeedback`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
