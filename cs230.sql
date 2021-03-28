-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 27, 2021 at 08:44 PM
-- Server version: 5.7.33-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cs230`
--

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `pid` int(11) NOT NULL,
  `title` varchar(60) NOT NULL,
  `descript` text NOT NULL,
  `picpath` varchar(80) NOT NULL,
  `upload_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `rating` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16le;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`pid`, `title`, `descript`, `picpath`, `upload_date`, `rating`) VALUES
(1, '345141', '142132', '../gallery/604f78edeb4eb2.49033150.jpeg', '2021-03-15 11:10:37', NULL),
(2, '152535', '53432342', '../gallery/604f79085c0a11.74434057.jpeg', '2021-03-15 11:11:04', NULL),
(3, '3423', '343245', '../gallery/604f7917a7aad3.85367249.jpeg', '2021-03-15 11:11:19', NULL),
(4, '24323', '1231', '../gallery/605653e40ee638.65907458.jpeg', '2021-03-20 15:58:28', NULL),
(5, '32414232341', '423142313241', '../gallery/6056577a2b1975.17712216.jpeg', '2021-03-20 16:13:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `pid` int(11) NOT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `uname` varchar(50) DEFAULT NULL,
  `profpic` varchar(50) NOT NULL DEFAULT '../images/default.jpeg'
) ENGINE=InnoDB DEFAULT CHARSET=utf16le;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`pid`, `fname`, `uname`, `profpic`) VALUES
(1, 'asdasdasdasdad', 'asdasdsadsadads', '../images/default.jpeg'),
(2, 'abc', '123', '../profiles/6056530f1f3661.22050258.jpeg'),
(3, 'Sean', 'Sbeaman', '../profiles/6056576f318682.95294627.jpeg'),
(4, 'sfasadf', 'sdf', '../images/default.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `revid` int(11) NOT NULL COMMENT 'id for each review',
  `itemid` int(11) NOT NULL COMMENT 'id for item being reviewed',
  `uname` varchar(80) NOT NULL COMMENT 'user reviewing item',
  `title` varchar(60) NOT NULL,
  `reviewtext` text NOT NULL,
  `revdate` datetime NOT NULL,
  `ratingnum` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0' COMMENT 'is there at least 1 review?'
) ENGINE=InnoDB DEFAULT CHARSET=utf16le;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`revid`, `itemid`, `uname`, `title`, `reviewtext`, `revdate`, `ratingnum`, `status`) VALUES
(1, 2, '123', '', '1231231', '2021-03-20 01:52:34', 4, 1),
(2, 3, '123', '', '1231', '2021-03-20 01:54:03', 5, 1),
(3, 3, '123', '21341312', '123123', '2021-03-20 02:07:28', 3, 1),
(4, 3, '123', '', '1231234124312', '2021-03-20 02:07:38', 1, 1),
(5, 3, '123', '14213421', '123123', '2021-03-20 02:07:47', 5, 1),
(6, 1, '123', '', 'no', '2021-03-20 19:55:11', 1, 1),
(7, 5, 'Sbeaman', '', '234213442314231', '2021-03-20 20:13:56', 4, 1),
(8, 5, 'Sbeaman', '', 'weqr34252543', '2021-03-20 20:14:02', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uid` int(11) NOT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `lname` varchar(50) DEFAULT NULL,
  `uname` varchar(50) DEFAULT NULL,
  `password` varchar(120) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16le COMMENT='user database for sign up and sign in';

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `fname`, `lname`, `uname`, `password`, `email`) VALUES
(1, 'asdasdasdasdad', 'asd', 'asdasdsadsadads', '$2y$10$GckDs/1e7iMOSVHHQhI1iOC/LRqHz7T0WEUXoHnpkp7j2gOnTXIYC', 'asdsad@asdasd.com'),
(2, 'abc', 'abc', '123', '$2y$10$mx.PhUVx1vr7txwMqCtO4elCa73G/frHVUJLdE.7WuUtUL/WVHWE2', '123@123.com'),
(3, 'Sean', 'Beaman', 'Sbeaman', '$2y$10$RLt7qXrXS92UrHtUcAN12OXnczzSPMbs4TuTDIJ7FRl9F5chGvPiu', 's.beaman@comcast.net'),
(4, 'sfasadf', 'sfdfsdfsdaf', 'sdf', '$2y$10$cacVVDa2Ndyz1IsadIRyUO1.9jb2MauvmAqB.4/BqRH8KCZeBq20C', 'asdasasda@afa.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`revid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `revid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id for each review', AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
