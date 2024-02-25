-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 03, 2018 at 10:40 AM
-- Server version: 10.1.22-MariaDB
-- PHP Version: 7.0.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sample`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `link` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pageviews`
--

CREATE TABLE `pageviews` (
  `id` int(11) NOT NULL,
  `page` text NOT NULL,
  `ip` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pageviews`
--

INSERT INTO `pageviews` (`id`, `page`, `ip`) VALUES
(0, '/visit/statistics.php', '::1'),
(0, '/visit/statistics.php', '::1'),
(0, '/visit/statistics.php', '::1'),
(0, '/visit/statistics.php', '::1'),
(0, '/visit/statistics.php', '::1'),
(0, '/visit/statistics.php', '::1'),
(0, '/visit/statistics.php', '::1'),
(0, '/visit/statistics.php', '::1'),
(0, '/visit/statistics.php', '::1'),
(0, '/visit/statistics.php', '::1'),
(0, '/visit/statistics.php', '::1'),
(0, '/exam/visit/statistics.php', '::1'),
(0, '/exam/visit/statistics.php', '::1'),
(0, '/exam/visit/statistics.php', '::1');

-- --------------------------------------------------------

--
-- Table structure for table `total_visitors`
--

CREATE TABLE `total_visitors` (
  `id` int(11) NOT NULL,
  `session` text NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `total_visitors`
--

INSERT INTO `total_visitors` (`id`, `session`, `time`) VALUES
(0, 'avphkcv5v49e8v3pjpofe4lvl7', 1533172690),
(0, 'isfm32nu3mpfcjj6bvhv3qkmo0', 1533201037),
(0, 'd1m8jd3cjo8pd2nn1u9h1pf4v7', 1533209857);

-- --------------------------------------------------------

--
-- Table structure for table `visitor_details`
--

CREATE TABLE `visitor_details` (
  `ip` text NOT NULL,
  `current_page` text NOT NULL,
  `referrer` text NOT NULL,
  `time` text NOT NULL,
  `user_agent` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `visitor_details`
--

INSERT INTO `visitor_details` (`ip`, `current_page`, `referrer`, `time`, `user_agent`) VALUES
('::1', 'http://localhost/visit/get_details.php', '', 'August 2, 2018, 2:49 am', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
('::1', 'http://localhost/visit/get_details.php', '', 'August 2, 2018, 2:51 am', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
('::1', 'http://localhost/visit/get_details.php', '', 'August 2, 2018, 2:52 am', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
('::1', 'http://localhost/visit/get_details.php', '', 'August 2, 2018, 2:53 am', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
('::1', 'http://localhost/visit/get_details.php', '', 'August 2, 2018, 2:53 am', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
('::1', 'http://localhost/visit/get_details.php', '', 'August 2, 2018, 3:22 am', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
('::1', 'http://localhost/visit/get_details.php', '', 'August 2, 2018, 9:59 am', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
('::1', 'http://localhost/exam/visit/get_details.php', 'http://localhost/exam/visit/', 'August 2, 2018, 12:24 pm', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
('::1', 'http://localhost/exam/visit/get_details.php', 'http://localhost/exam/visit/', 'August 2, 2018, 1:17 pm', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
('::1', 'http://localhost/exam/visit/get_details.php', '', 'August 2, 2018, 1:37 pm', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36');

-- --------------------------------------------------------

--
-- Table structure for table `visitor_location`
--

CREATE TABLE `visitor_location` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(30) NOT NULL,
  `ip` varchar(30) DEFAULT NULL,
  `country_code` varchar(30) NOT NULL,
  `country_name` varchar(30) NOT NULL,
  `region_name` varchar(30) NOT NULL,
  `city_name` varchar(30) NOT NULL,
  `postcode` varchar(30) NOT NULL,
  `latitude` varchar(30) NOT NULL,
  `longitude` varchar(30) NOT NULL,
  `ISP` varchar(30) NOT NULL,
  `continent` varchar(30) NOT NULL,
  `ASN` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `visitor_location`
--

INSERT INTO `visitor_location` (`id`, `date`, `time`, `ip`, `country_code`, `country_name`, `region_name`, `city_name`, `postcode`, `latitude`, `longitude`, `ISP`, `continent`, `ASN`) VALUES
(13, '2018-08-02', '02:31:44pm', '113.199.249.197', 'NP', 'Nepal', 'Kosi', 'Ithari', '56706', '26.6667', '87.2833', 'Nepal Telecom', 'Asia', '23752'),
(14, '2018-08-02', '03:54:26pm', '113.199.254.223', 'NP', 'Nepal', 'Kosi', 'Ithari', '56706', '26.6667', '87.2833', 'Nepal Telecom', 'Asia', '23752'),
(15, '2018-08-02', '04:47:35pm', '113.199.254.223', 'NP', 'Nepal', 'Kosi', 'Ithari', '56706', '26.6667', '87.2833', 'Nepal Telecom', 'Asia', '23752'),
(16, '2018-08-02', '05:07:47pm', '113.199.254.223', 'NP', 'Nepal', 'Kosi', 'Ithari', '56706', '26.6667', '87.2833', 'Nepal Telecom', 'Asia', '23752');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `visitor_location`
--
ALTER TABLE `visitor_location`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `visitor_location`
--
ALTER TABLE `visitor_location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
