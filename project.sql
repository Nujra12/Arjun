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
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `email`, `password`) VALUES
(1, 'sunnygkp10@gmail.com', '123456'),
(2, 'admin@admin.com', 'admin'),
(3, 'sital@sital.com', 'sital');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`qid`, `ansid`) VALUES
('55892169bf6a7', '55892169d2efc'),
('5589216a3646e', '5589216a48722'),
('558922117fcef', '5589221195248'),
('55892211e44d5', '55892211f1fa7'),
('558922894c453', '558922895ea0a'),
('558922899ccaa', '55892289aa7cf'),
('558923538f48d', '558923539a46c'),
('55892353f05c4', '55892354051be'),
('558973f4389ac', '558973f462e61'),
('558973f4c46f2', '558973f4d4abe'),
('558973f51600d', '558973f526fc5'),
('558973f55d269', '558973f57af07'),
('558973f5abb1a', '558973f5e764a'),
('5589751a63091', '5589751a81bf4'),
('5589751ad32b8', '5589751adbdbd'),
('5589751b304ef', '5589751b3b04d'),
('5589751b749c9', '5589751b9a98c'),
('5b56b89a20f31', '5b56b89a21921'),
('5b56b89a22e92', '5b56b89a230cb'),
('5b56b89a24f90', '5b56b89a25759'),
('5b56b89a269d2', '5b56b89a26b36'),
('5b56b89a28110', '5b56b89a29978');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` text NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `feedback` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `subject`, `feedback`, `date`, `time`) VALUES
('55846be776610', 'testing', 'sunnygkp10@gmail.com', 'testing', 'testing stART', '2015-06-19', '09:22:15pm'),
('5584ddd0da0ab', 'netcamp', 'sunnygkp10@gmail.com', 'feedback', ';mLBLB', '2015-06-20', '05:28:16am'),
('558510a8a1234', 'sunnygkp10', 'sunnygkp10@gmail.com', 'dl;dsnklfn', 'fmdsfld fdj', '2015-06-20', '09:05:12am'),
('5585509097ae2', 'sunny', 'sunnygkp10@gmail.com', 'kcsncsk', 'l.mdsavn', '2015-06-20', '01:37:52pm'),
('5586ee27af2c9', 'vikas', 'vikas@gmail.com', 'trial feedback', 'triaal feedbak', '2015-06-21', '07:02:31pm'),
('5589858b6c43b', 'nik', 'nik1@gmail.com', 'good', 'good site', '2015-06-23', '06:12:59pm'),
('5b56db413f84d', 'sital prasad mandal', 'sitalmandal.info@gmail.com', 'feedback of Conqrity', 'This is an Test Email.', '2018-07-24', '09:54:41am'),
('5b56dfd4dc53f', 'sital prasad mandal', 'sitalmandal.info@gmail.com', 'zxczc', 'zxczxc', '2018-07-24', '10:14:12am');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `email`, `eid`, `score`, `level`, `sahi`, `wrong`, `date`) VALUES
(1, 'sunnygkp10@gmail.com', '558921841f1ec', 4, 2, 2, 0, '2015-06-23 09:31:26'),
(2, 'avantika420@gmail.com', '558921841f1ec', 4, 2, 2, 0, '2015-06-23 14:33:04'),
(3, 'avantika420@gmail.com', '5589222f16b93', 4, 2, 2, 0, '2015-06-23 14:49:39'),
(4, 'mi5@hollywood.com', '5589222f16b93', 4, 2, 2, 0, '2015-06-23 15:12:56'),
(5, 'nik1@gmail.com', '558921841f1ec', 1, 2, 1, 1, '2015-06-23 16:11:50'),
(6, 'sunnygkp10@gmail.com', '5589222f16b93', 1, 2, 1, 1, '2015-06-24 03:22:38'),
(7, 'sunnygkp10@gmail.com', '558920ff906b8', 1, 2, 1, 1, '2018-07-24 05:09:09'),
(8, 'sital@sital.com', '5b56b70545293', 1, 5, 2, 3, '2018-07-24 10:05:41'),
(9, 'sital@sital.com', '558921841f1ec', 1, 2, 1, 1, '2018-07-24 12:33:09'),
(10, 'sital@sital.com', '5589741f9ed52', -5, 5, 5, 5, '2018-08-02 16:26:14');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`qid`, `option`, `optionid`) VALUES
('55892169bf6a7', 'usermod', '55892169d2efc'),
('55892169bf6a7', 'useradd', '55892169d2f05'),
('55892169bf6a7', 'useralter', '55892169d2f09'),
('55892169bf6a7', 'groupmod', '55892169d2f0c'),
('5589216a3646e', '751', '5589216a48713'),
('5589216a3646e', '752', '5589216a4871a'),
('5589216a3646e', '754', '5589216a4871f'),
('5589216a3646e', '755', '5589216a48722'),
('558922117fcef', 'echo', '5589221195248'),
('558922117fcef', 'print', '558922119525a'),
('558922117fcef', 'printf', '5589221195265'),
('558922117fcef', 'cout', '5589221195270'),
('55892211e44d5', 'int a', '55892211f1f97'),
('55892211e44d5', '$a', '55892211f1fa7'),
('55892211e44d5', 'long int a', '55892211f1fb4'),
('55892211e44d5', 'int a$', '55892211f1fbd'),
('558922894c453', 'cin>>a;', '558922895ea0a'),
('558922894c453', 'cin<<a;', '558922895ea26'),
('558922894c453', 'cout>>a;', '558922895ea34'),
('558922894c453', 'cout<a;', '558922895ea41'),
('558922899ccaa', 'cout', '55892289aa7cf'),
('558922899ccaa', 'cin', '55892289aa7df'),
('558922899ccaa', 'print', '55892289aa7eb'),
('558922899ccaa', 'printf', '55892289aa7f5'),
('558923538f48d', '255.0.0.0', '558923539a46c'),
('558923538f48d', '255.255.255.0', '558923539a480'),
('558923538f48d', '255.255.0.0', '558923539a48b'),
('558923538f48d', 'none of these', '558923539a495'),
('55892353f05c4', '192.168.1.100', '5589235405192'),
('55892353f05c4', '172.168.16.2', '55892354051a3'),
('55892353f05c4', '10.0.0.0.1', '55892354051b4'),
('55892353f05c4', '11.11.11.11', '55892354051be'),
('558973f4389ac', 'containing root file-system required during bootup', '558973f462e44'),
('558973f4389ac', ' Contains only scripts to be executed during bootup', '558973f462e56'),
('558973f4389ac', ' Contains root-file system and drivers required to be preloaded during bootup', '558973f462e61'),
('558973f4389ac', 'None of the above', '558973f462e6b'),
('558973f4c46f2', 'Kernel', '558973f4d4abe'),
('558973f4c46f2', 'Shell', '558973f4d4acf'),
('558973f4c46f2', 'Commands', '558973f4d4ad9'),
('558973f4c46f2', 'Script', '558973f4d4ae3'),
('558973f51600d', 'Boot Loading', '558973f526f9d'),
('558973f51600d', ' Boot Record', '558973f526fb9'),
('558973f51600d', ' Boot Strapping', '558973f526fc5'),
('558973f51600d', ' Booting', '558973f526fce'),
('558973f55d269', ' Quick boot', '558973f57aef1'),
('558973f55d269', 'Cold boot', '558973f57af07'),
('558973f55d269', ' Hot boot', '558973f57af17'),
('558973f55d269', ' Fast boot', '558973f57af27'),
('558973f5abb1a', 'bash', '558973f5e7623'),
('558973f5abb1a', ' Csh', '558973f5e7636'),
('558973f5abb1a', ' ksh', '558973f5e7640'),
('558973f5abb1a', ' sh', '558973f5e764a'),
('5589751a63091', 'q', '5589751a81bd6'),
('5589751a63091', 'wq', '5589751a81be8'),
('5589751a63091', ' both (a) and (b)', '5589751a81bf4'),
('5589751a63091', ' none of the mentioned', '5589751a81bfd'),
('5589751ad32b8', ' moves screen down one page', '5589751adbdbd'),
('5589751ad32b8', 'moves screen up one page', '5589751adbdce'),
('5589751ad32b8', 'moves screen up one line', '5589751adbdd8'),
('5589751ad32b8', ' moves screen down one line', '5589751adbde2'),
('5589751b304ef', ' yy', '5589751b3b04d'),
('5589751b304ef', 'yw', '5589751b3b05e'),
('5589751b304ef', 'yc', '5589751b3b069'),
('5589751b304ef', ' none of the mentioned', '5589751b3b073'),
('5589751b749c9', 'X', '5589751b9a98c'),
('5589751b749c9', 'x', '5589751b9a9a5'),
('5589751b749c9', 'D', '5589751b9a9b7'),
('5589751b749c9', 'd', '5589751b9a9c9'),
('5589751bd02ec', 'autoindentation is not possible in vi editor', '5589751bdadaa'),
('5b56b89a20f31', 'Active Server Pages', '5b56b89a21921'),
('5b56b89a20f31', 'Active Standard Pages', '5b56b89a21936'),
('5b56b89a20f31', 'All Standard Pages', '5b56b89a21944'),
('5b56b89a20f31', 'A Server Page', '5b56b89a21952'),
('5b56b89a22e92', ' <&>...</&>', '5b56b89a230b6'),
('5b56b89a22e92', '<%...%>', '5b56b89a230cb'),
('5b56b89a22e92', '<%>...</%>', '5b56b89a230ed'),
('5b56b89a22e92', '<script>...</script>', '5b56b89a230f5'),
('5b56b89a24f90', 'Document.Write(\"Hello World\")', '5b56b89a25759'),
('5b56b89a24f90', '\"Hello World\"', '5b56b89a2576b'),
('5b56b89a24f90', 'Response.Write(\"Hello World\")', '5b56b89a25774'),
('5b56b89a24f90', 'Response.Write(\"Hello World\")', '5b56b89a2577e'),
('5b56b89a269d2', '<%Equal', '5b56b89a26b1d'),
('5b56b89a269d2', '<%Response.Write', '5b56b89a26b28'),
('5b56b89a269d2', '<%Document.Write', '5b56b89a26b36'),
('5b56b89a269d2', '<%Write', '5b56b89a26b44'),
('5b56b89a28110', 'VBScript', '5b56b89a29957'),
('5b56b89a28110', 'EcmaScript', '5b56b89a29968'),
('5b56b89a28110', 'PERL', '5b56b89a29971'),
('5b56b89a28110', 'JavaScript', '5b56b89a29978');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`eid`, `qid`, `qns`, `choice`, `sn`) VALUES
('558920ff906b8', '55892169bf6a7', 'what is command for changing user information??', 4, 1),
('558920ff906b8', '5589216a3646e', 'what is permission for view only for other??', 4, 2),
('558921841f1ec', '558922117fcef', 'what is command for print in php??', 4, 1),
('558921841f1ec', '55892211e44d5', 'which is a variable of php??', 4, 2),
('5589222f16b93', '558922894c453', 'what is correct statement in c++??', 4, 1),
('5589222f16b93', '558922899ccaa', 'which command is use for print the output in c++?', 4, 2),
('558922ec03021', '558923538f48d', 'what is correct mask for A class IP???', 4, 1),
('558922ec03021', '55892353f05c4', 'which is not a private IP??', 4, 2),
('55897338a6659', '558973f4389ac', 'On Linux, initrd is a file', 4, 1),
('55897338a6659', '558973f4c46f2', 'Which is loaded into memory when system is booted?', 4, 2),
('55897338a6659', '558973f51600d', ' The process of starting up a computer is known as', 4, 3),
('55897338a6659', '558973f55d269', ' Bootstrapping is also known as', 4, 4),
('55897338a6659', '558973f5abb1a', 'The shell used for Single user mode shell is:', 4, 5),
('5589741f9ed52', '5589751a63091', ' Which command is used to close the vi editor?', 4, 1),
('5589741f9ed52', '5589751ad32b8', ' In vi editor, the key combination CTRL+f', 4, 2),
('5589741f9ed52', '5589751b304ef', ' Which vi editor command copies the current line of the file?', 4, 3),
('5589741f9ed52', '5589751b749c9', ' Which command is used to delete the character before the cursor location in vi editor?', 4, 4),
('5589741f9ed52', '5589751bd02ec', ' Which one of the following statement is true?', 4, 5),
('5b56b70545293', '5b56b89a20f31', 'What does ASP stand for?', 4, 1),
('5b56b70545293', '5b56b89a22e92', 'ASP server scripts are surrounded by delimiters, which?', 4, 2),
('5b56b70545293', '5b56b89a24f90', 'How do you write \"Hello World\" in ASP?', 4, 3),
('5b56b70545293', '5b56b89a269d2', '\"<%=\" is the same as:', 4, 4),
('5b56b70545293', '5b56b89a28110', 'What is the default scripting language in ASP?', 4, 5);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `index` int(11) NOT NULL,
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  `intro` text NOT NULL,
  `tag` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`index`, `eid`, `title`, `sahi`, `wrong`, `total`, `time`, `intro`, `tag`, `date`) VALUES
(1, '558920ff906b8', 'Linux : File Managment', 20, 5, 2, 5, '', 'linux', '2018-07-26 01:00:51'),
(2, '558921841f1ec', 'Php Coding', 30, 6, 2, 5, '', 'PHP', '2018-07-26 01:01:00'),
(3, '5589222f16b93', 'C++ Coding', 15, 1, 2, 5, '', 'c++', '2018-07-26 01:01:08'),
(4, '558922ec03021', 'Networking', 2, 23, 2, 5, '', 'networking', '2018-07-26 01:01:12'),
(5, '55897338a6659', 'Linux:startup', 49, 1, 5, 10, '', 'linux', '2018-07-26 01:01:19'),
(6, '5589741f9ed52', 'Linux :vi Editor', 25, 1, 5, 10, '', 'linux', '2018-07-26 01:01:24'),
(7, '5b56b70545293', 'Asp.net', 67, 1, 5, 15, '\r\nAsp.net', 'Asp.net, Asp', '2018-07-26 01:01:32'),
(8, '', 'Android', 5, 6, 0, 0, '', '', '2018-07-26 00:45:17');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `email` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`email`, `score`, `time`) VALUES
('sunnygkp10@gmail.com', 2, '2018-07-24 05:09:39'),
('avantika420@gmail.com', 8, '2015-06-23 14:49:39'),
('mi5@hollywood.com', 4, '2015-06-23 15:12:56'),
('nik1@gmail.com', 1, '2015-06-23 16:11:50'),
('user@user.com', 0, '2018-07-24 02:15:44'),
('sital@sital.com', -3, '2018-07-26 00:44:43');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(50) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `course` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mob` bigint(20) NOT NULL,
  `password` varchar(50) NOT NULL
  
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `gender`, `course`, `email`, `mob`, `password`) VALUES
('Avantika', 'F', 'KNIT sultanpur', 'avantika420@gmail.com', 7785068889, 'e10adc3949ba59abbe56e057f20f883e'),
('Mark Zukarburg', 'M', 'Stanford', 'ceo@facebook.com', 987654321, 'e10adc3949ba59abbe56e057f20f883e'),
('Komal', 'F', 'KNIT sultanpur', 'komalpd2011@gmail.com', 7785068889, 'e10adc3949ba59abbe56e057f20f883e'),
('Tom Cruze', 'M', 'Hollywood', 'mi5@hollywood.com', 7785068889, 'e10adc3949ba59abbe56e057f20f883e'),
('Netcamp', 'M', 'KNIT sultanpur', 'netcamp@gmail.com', 987654321, 'e10adc3949ba59abbe56e057f20f883e'),
('Nikunj', 'M', 'XYZ', 'nik1@gmail.com', 987, '202cb962ac59075b964b07152d234b70'),
('Sital Prasad Mandal', 'M', 'ASP.net', 'sital@sital.com', 8317324484, '9c7cbcd26f6035e7c2dc458bc7375e21'),
('Sunny', 'M', 'KNIT sultanpur', 'sunnygkp10@gmail.com', 7785068889, 'e10adc3949ba59abbe56e057f20f883e'),
('User', 'M', 'cimt', 'user@user.com', 11, 'e10adc3949ba59abbe56e057f20f883e'),
('Vikash', 'M', 'KNIT sultanpur@gmail.com', 'vikash@gmail.com', 7785068889, 'e10adc3949ba59abbe56e057f20f883e');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`index`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `index` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
