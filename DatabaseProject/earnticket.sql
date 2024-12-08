-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 18, 2023 at 08:08 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `earnticket`
--

-- --------------------------------------------------------

--
-- Table structure for table `audio`
--

CREATE TABLE `audio` (
  `audio_id` varchar(10) NOT NULL,
  `audio` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `audio`
--

INSERT INTO `audio` (`audio_id`, `audio`) VALUES
('EN', 'English'),
('JP', 'Japan'),
('TH', 'Thai');

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE `movie` (
  `movie_id` int(5) NOT NULL,
  `movie_name` varchar(100) NOT NULL,
  `lenght` int(5) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`movie_id`, `movie_name`, `lenght`, `image`) VALUES
(10002, 'ดาบพิฆาตอสูร สู่หมู่บ้านช่างตีดาบ', 150, 'kimetsu.jpg'),
(11111, 'Ant-Man and the Wasp: Quantumania', 125, 'ant-man-andthewasp-poster-th_64899835.png'),
(12001, 'อวตาร วิถีแห่งสายน้ำ', 192, 'avt2.jpg'),
(12002, 'ดันเจียนส์ & ดรากอนส์ : เกียรติยศในหมู่โจร', 134, 'dandd.jpg'),
(12023, 'ขุนพันธ์ 3', 145, 'unnamed.jpg'),
(12054, 'final2', 125, 'shinjang.jpg'),
(12305, 'Aquaman', 102, 'aquaman.jpg'),
(20012, 'Tsurune The Movie The First Shot', 102, 'tsurune.jpg'),
(22222, 'Time I Got Reincarnated as a Slime the Movie: Scarlet Bond', 114, 'slime.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `movie_type`
--

CREATE TABLE `movie_type` (
  `movie_type_id` varchar(5) NOT NULL,
  `movie_type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `movie_type`
--

INSERT INTO `movie_type` (`movie_type_id`, `movie_type`) VALUES
('AMT', 'animation'),
('AT', 'action'),
('AVT', 'adventure'),
('CMD', 'comedy'),
('DM', 'drama'),
('FN', 'final'),
('FTS', 'fantasy'),
('HR', 'horror'),
('RM', 'romantic'),
('SF', 'sci-fi'),
('TE', 'test'),
('TL', 'thriller');

-- --------------------------------------------------------

--
-- Table structure for table `mtype`
--

CREATE TABLE `mtype` (
  `movie_id` int(5) NOT NULL,
  `movie_type_id` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `mtype`
--

INSERT INTO `mtype` (`movie_id`, `movie_type_id`) VALUES
(10002, 'AMT'),
(10002, 'AVT'),
(11111, 'AT'),
(12001, 'AVT'),
(12002, 'AT'),
(12023, 'AT'),
(12054, 'FN'),
(12305, 'AT'),
(20012, 'AMT'),
(22222, 'AMT');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `pay_id` varchar(10) NOT NULL,
  `total_price` float NOT NULL,
  `pay_method` varchar(30) NOT NULL,
  `pay_date` date NOT NULL,
  `pay_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`pay_id`, `total_price`, `pay_method`, `pay_date`, `pay_time`) VALUES
('1174661166', 350, 'banking', '2023-03-07', '12:33:39'),
('1762112831', 350, 'banking', '2023-03-11', '10:15:34'),
('2326845004', 350, 'banking', '2023-03-07', '12:48:19'),
('2340106541', 350, 'banking', '2023-03-07', '12:44:30'),
('2581968458', 350, 'banking', '2023-03-07', '14:13:40'),
('2671674630', 500, 'banking', '2023-03-07', '13:17:20'),
('2698544913', 700, 'credit card', '2023-03-15', '14:08:51'),
('2794351999', 350, 'banking', '2023-03-11', '10:14:11'),
('3369647833', 350, 'banking', '2023-03-11', '10:14:48'),
('6080959982', 850, 'banking', '2023-03-08', '13:57:51'),
('6205984345', 350, 'banking', '2023-03-07', '12:50:32'),
('6259958657', 250, 'banking', '2023-03-07', '13:56:02'),
('6338379285', 350, 'credit card', '2023-03-15', '14:10:26'),
('6563833457', 700, 'banking', '2023-03-07', '13:53:05'),
('6828046681', 600, 'banking', '2023-03-07', '12:31:47'),
('6925376705', 700, 'banking', '2023-03-07', '12:34:31'),
('7556080168', 350, 'banking', '2023-03-07', '13:15:44'),
('7927227110', 250, 'banking', '2023-03-11', '10:16:34'),
('7959041508', 350, 'banking', '2023-03-07', '12:32:53'),
('8591907492', 700, 'banking', '2023-03-15', '12:50:12'),
('8776002423', 700, 'banking', '2023-03-07', '13:56:26'),
('9688726517', 250, 'banking', '2023-03-07', '12:34:15'),
('9706948101', 350, 'banking', '2023-03-07', '14:11:12');

-- --------------------------------------------------------

--
-- Table structure for table `seat`
--

CREATE TABLE `seat` (
  `seat_id` varchar(5) NOT NULL,
  `seat_type_id` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `seat`
--

INSERT INTO `seat` (`seat_id`, `seat_type_id`) VALUES
('E01', 'NM'),
('E02', 'NM'),
('E03', 'NM'),
('E04', 'NM'),
('E05', 'NM'),
('E06', 'NM'),
('E07', 'NM'),
('E08', 'NM'),
('E09', 'NM'),
('E10', 'NM'),
('F01', 'NM'),
('F02', 'NM'),
('F03', 'NM'),
('F04', 'NM'),
('F05', 'NM'),
('F06', 'NM'),
('F07', 'NM'),
('F08', 'NM'),
('F09', 'NM'),
('F10', 'NM'),
('G01', 'NM'),
('G02', 'NM'),
('G03', 'NM'),
('G04', 'NM'),
('G05', 'NM'),
('G06', 'NM'),
('G07', 'NM'),
('G08', 'NM'),
('G09', 'NM'),
('G10', 'NM'),
('H01', 'NM'),
('H02', 'NM'),
('H03', 'NM'),
('H04', 'NM'),
('H05', 'NM'),
('H06', 'NM'),
('H07', 'NM'),
('H08', 'NM'),
('H09', 'NM'),
('H10', 'NM'),
('A01', 'PM'),
('A02', 'PM'),
('A03', 'PM'),
('A04', 'PM'),
('A05', 'PM'),
('A06', 'PM'),
('A07', 'PM'),
('A08', 'PM'),
('A09', 'PM'),
('A10', 'PM'),
('B01', 'PM'),
('B02', 'PM'),
('B03', 'PM'),
('B04', 'PM'),
('B05', 'PM'),
('B06', 'PM'),
('B07', 'PM'),
('B08', 'PM'),
('B09', 'PM'),
('B10', 'PM'),
('C01', 'PM'),
('C02', 'PM'),
('C03', 'PM'),
('C04', 'PM'),
('C05', 'PM'),
('C06', 'PM'),
('C07', 'PM'),
('C08', 'PM'),
('C09', 'PM'),
('C10', 'PM'),
('D01', 'PM'),
('D02', 'PM'),
('D03', 'PM'),
('D04', 'PM'),
('D05', 'PM'),
('D06', 'PM'),
('D07', 'PM'),
('D08', 'PM'),
('D09', 'PM'),
('D10', 'PM');

-- --------------------------------------------------------

--
-- Table structure for table `seat_type`
--

CREATE TABLE `seat_type` (
  `seat_type_id` varchar(5) NOT NULL,
  `seat_type` varchar(20) NOT NULL,
  `seat_price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `seat_type`
--

INSERT INTO `seat_type` (`seat_type_id`, `seat_type`, `seat_price`) VALUES
('NM', 'normal', 250),
('PM', 'premium', 350);

-- --------------------------------------------------------

--
-- Table structure for table `showtime`
--

CREATE TABLE `showtime` (
  `showtime_id` varchar(5) NOT NULL,
  `showtime_date` date NOT NULL,
  `theatre_id` int(3) NOT NULL,
  `movie_id` int(5) NOT NULL,
  `time_id` varchar(5) NOT NULL,
  `audio_id` varchar(10) NOT NULL,
  `sub_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `showtime`
--

INSERT INTO `showtime` (`showtime_id`, `showtime_date`, `theatre_id`, `movie_id`, `time_id`, `audio_id`, `sub_id`) VALUES
('12003', '2023-03-05', 101, 10002, '116', 'JP', 'TH'),
('12004', '2023-03-11', 102, 12002, '111', 'EN', 'TH'),
('12005', '2023-03-11', 102, 12002, '116', 'TH', 'TH'),
('12006', '2023-03-15', 103, 11111, '113', 'EN', 'TH'),
('12007', '2023-03-16', 101, 22222, '113', 'JP', 'TH'),
('12008', '2023-03-15', 102, 20012, '119', 'JP', 'TH'),
('12009', '2023-03-17', 102, 20012, '111', 'JP', 'TH'),
('12010', '2023-03-16', 103, 12001, '113', 'EN', 'TH'),
('12011', '2023-03-15', 101, 22222, '119', 'JP', 'TH'),
('12012', '2023-03-15', 101, 22222, '116', 'JP', 'TH'),
('12013', '2023-03-15', 103, 12023, '109', 'TH', 'TH'),
('12014', '2023-03-15', 103, 12054, '113', 'JP', 'TH'),
('12015', '2023-03-15', 103, 12054, '111', 'TH', 'TH'),
('12018', '2023-03-18', 102, 12023, '109', 'JP', 'EN'),
('24141', '2023-03-19', 102, 12002, '109', 'EN', 'TH');

-- --------------------------------------------------------

--
-- Table structure for table `subtitle`
--

CREATE TABLE `subtitle` (
  `sub_id` varchar(10) NOT NULL,
  `subtitle` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `subtitle`
--

INSERT INTO `subtitle` (`sub_id`, `subtitle`) VALUES
('EN', 'English'),
('TH', 'Thai');

-- --------------------------------------------------------

--
-- Table structure for table `theatre_hall`
--

CREATE TABLE `theatre_hall` (
  `theatre_id` int(3) NOT NULL,
  `hall_name` varchar(255) NOT NULL,
  `number_of_seats` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `theatre_hall`
--

INSERT INTO `theatre_hall` (`theatre_id`, `hall_name`, `number_of_seats`) VALUES
(101, 'โรง 1', 80),
(102, 'โรง 2', 80),
(103, 'โรง 3', 80),
(104, 'โรง 4', 80),
(650, 'โรง 5', 80);

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `ticket_id` varchar(10) NOT NULL,
  `uemail` varchar(30) NOT NULL,
  `showtime_id` varchar(5) NOT NULL,
  `seat_id` varchar(5) NOT NULL,
  `pay_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`ticket_id`, `uemail`, `showtime_id`, `seat_id`, `pay_id`) VALUES
('4721694194', 'test1@email.com', '12003', 'B06', '6563833457'),
('4760868213', 'test1@email.com', '12003', 'E01', '2671674630'),
('4888801367', 'final@gmail.com', '12015', 'D05', '2698544913'),
('6001820540', 'test1@email.com', '12006', 'D05', '8591907492'),
('8237780260', 'final@gmail.com', '12015', 'D06', '2698544913'),
('9131764281', 'test1@email.com', '12006', 'D06', '8591907492'),
('9882922891', 'final@gmail.com', '12015', 'D07', '6338379285');

-- --------------------------------------------------------

--
-- Table structure for table `time`
--

CREATE TABLE `time` (
  `time_id` varchar(5) NOT NULL,
  `start_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `time`
--

INSERT INTO `time` (`time_id`, `start_time`) VALUES
('109', '09:00:00'),
('111', '11:00:00'),
('113', '13:00:00'),
('116', '16:00:00'),
('119', '19:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `uemail` varchar(30) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `birthday` date NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uemail`, `fname`, `lname`, `phone`, `birthday`, `password`) VALUES
('admin1@email.com', 'admin', '01', '1234567890', '2023-02-26', 'e00cf25ad42683b3df678c61f42c6bda'),
('final@gmail.com', 'final2', 'final', '0922760039', '2023-03-09', '202cb962ac59075b964b07152d234b70'),
('test1@email.com', 'aa', 'eiei', '01234679', '2023-03-17', '202cb962ac59075b964b07152d234b70'),
('test2@email.com', 'nam', 'eiei', '13456799', '2023-02-24', '7815696ecbf1c96e6894b779456d330e');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `audio`
--
ALTER TABLE `audio`
  ADD PRIMARY KEY (`audio_id`);

--
-- Indexes for table `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`movie_id`);

--
-- Indexes for table `movie_type`
--
ALTER TABLE `movie_type`
  ADD PRIMARY KEY (`movie_type_id`);

--
-- Indexes for table `mtype`
--
ALTER TABLE `mtype`
  ADD PRIMARY KEY (`movie_id`,`movie_type_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`pay_id`);

--
-- Indexes for table `seat`
--
ALTER TABLE `seat`
  ADD PRIMARY KEY (`seat_id`),
  ADD KEY `seat_type_id` (`seat_type_id`);

--
-- Indexes for table `seat_type`
--
ALTER TABLE `seat_type`
  ADD PRIMARY KEY (`seat_type_id`);

--
-- Indexes for table `showtime`
--
ALTER TABLE `showtime`
  ADD PRIMARY KEY (`showtime_id`),
  ADD KEY `theatre_id` (`theatre_id`),
  ADD KEY `movie_id` (`movie_id`),
  ADD KEY `time_id` (`time_id`),
  ADD KEY `audio_id` (`audio_id`),
  ADD KEY `sub_id` (`sub_id`);

--
-- Indexes for table `subtitle`
--
ALTER TABLE `subtitle`
  ADD PRIMARY KEY (`sub_id`);

--
-- Indexes for table `theatre_hall`
--
ALTER TABLE `theatre_hall`
  ADD PRIMARY KEY (`theatre_id`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`ticket_id`),
  ADD KEY `seat_id` (`seat_id`),
  ADD KEY `showtime_id` (`showtime_id`),
  ADD KEY `pay_id` (`pay_id`),
  ADD KEY `uemail` (`uemail`);

--
-- Indexes for table `time`
--
ALTER TABLE `time`
  ADD PRIMARY KEY (`time_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uemail`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mtype`
--
ALTER TABLE `mtype`
  ADD CONSTRAINT `mtype_ibfk_3` FOREIGN KEY (`movie_type_id`) REFERENCES `movie_type` (`movie_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `mtype_ibfk_4` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`movie_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `seat`
--
ALTER TABLE `seat`
  ADD CONSTRAINT `seat_ibfk_1` FOREIGN KEY (`seat_type_id`) REFERENCES `seat_type` (`seat_type_id`);

--
-- Constraints for table `showtime`
--
ALTER TABLE `showtime`
  ADD CONSTRAINT `showtime_ibfk_1` FOREIGN KEY (`theatre_id`) REFERENCES `theatre_hall` (`theatre_id`),
  ADD CONSTRAINT `showtime_ibfk_2` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`movie_id`),
  ADD CONSTRAINT `showtime_ibfk_3` FOREIGN KEY (`time_id`) REFERENCES `time` (`time_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `showtime_ibfk_6` FOREIGN KEY (`audio_id`) REFERENCES `audio` (`audio_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `showtime_ibfk_7` FOREIGN KEY (`sub_id`) REFERENCES `subtitle` (`sub_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ticket`
--
ALTER TABLE `ticket`
  ADD CONSTRAINT `ticket_ibfk_10` FOREIGN KEY (`uemail`) REFERENCES `user` (`uemail`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ticket_ibfk_6` FOREIGN KEY (`seat_id`) REFERENCES `seat` (`seat_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ticket_ibfk_8` FOREIGN KEY (`showtime_id`) REFERENCES `showtime` (`showtime_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ticket_ibfk_9` FOREIGN KEY (`pay_id`) REFERENCES `payment` (`pay_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
