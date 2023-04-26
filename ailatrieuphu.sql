-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2023 at 03:33 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ailatrieuphu`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `answerId` int(11) NOT NULL,
  `questionId` int(11) NOT NULL,
  `answerContent` varchar(255) NOT NULL,
  `isCorrect` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`answerId`, `questionId`, `answerContent`, `isCorrect`) VALUES
(1, 9, 'Austrlia mở rộng', 1),
(2, 9, 'Wimbledon', 0),
(3, 9, 'Roland Garos', 0),
(4, 9, 'Mỹ mở rộng', 0),
(9, 11, 'Sự ngưng tụ', 1),
(10, 11, 'Sự thăng hoa', 0),
(11, 11, 'Sự đông đặc', 0),
(12, 11, 'Sự kết tủa', 0),
(13, 12, 'Việt Nam', 1),
(14, 12, 'Chênh vênh', 0),
(15, 12, 'Chuông gió', 0),
(16, 12, 'Đồng hồ treo tường', 0),
(17, 13, '21', 1),
(18, 13, '20', 0),
(19, 13, '22', 0),
(20, 13, '23', 0),
(21, 14, 'Qatar', 1),
(22, 14, 'Hàn Quốc', 0),
(23, 14, 'Nhật Bản', 0),
(24, 14, 'Iraq', 0),
(25, 15, 'Ba Lan', 1),
(26, 15, 'Nga', 0),
(27, 15, 'Bungari', 0),
(28, 15, 'Cuba', 0),
(29, 16, 'Gia Định báo', 1),
(30, 16, 'Nữ giới chung', 0),
(31, 16, 'Công luận báo', 0),
(32, 16, 'Lục tỉnh tân văn', 0),
(33, 17, 'CO2', 1),
(34, 17, 'CO', 0),
(35, 17, 'H2SO4', 0),
(36, 17, 'H2', 0),
(37, 18, 'Argentina', 1),
(38, 18, 'Boliviar', 0),
(39, 18, 'Venezuela', 0),
(40, 18, 'Paraguay', 0),
(41, 19, 'H2O2', 1),
(42, 19, 'O2', 0),
(43, 19, 'O3', 0),
(44, 19, 'H20', 0),
(45, 20, 'Rio', 1),
(46, 20, 'Avatar', 0),
(47, 20, 'Kungfu Panda', 0),
(48, 20, 'Titanic', 0),
(49, 21, '20', 1),
(50, 21, '16', 0),
(51, 21, '24', 0),
(52, 21, '22', 0),
(53, 22, 'Sao Kim', 1),
(54, 22, 'Sao Thuỷ', 0),
(55, 22, 'Sao Hoả', 0),
(56, 22, 'Sao Mộc', 0),
(57, 23, 'Oxit trung tính', 1),
(58, 23, 'Oxit axit', 0),
(59, 23, 'Oxit bazơ', 0),
(60, 23, 'Oxit lưỡng tính', 0),
(61, 24, 'Ngôn ngữ', 1),
(62, 24, 'Cư dân', 0),
(63, 24, 'Lãnh thổ', 0),
(64, 24, 'Chính quyền', 0),
(65, 25, 'Gió', 1),
(66, 25, 'Mây', 0),
(67, 25, 'Núi', 0),
(68, 25, 'Biển', 0),
(69, 26, 'Thân cô thế cô', 1),
(70, 26, 'Thân lừa ưa nặng', 0),
(71, 26, 'Thân tàn ma dại', 0),
(72, 26, 'Thân làm tội đời', 0),
(73, 27, 'Tò he', 1),
(74, 27, 'Tò mò', 0),
(75, 27, 'Tò vò', 0),
(76, 27, 'Tến tò', 0),
(77, 28, 'Tiểu thuyết kiếm hiệp', 1),
(78, 28, 'Truyện trinh thám', 0),
(79, 28, 'Sử thi', 0),
(80, 28, 'Thơ lãng mạn', 0),
(81, 29, 'Tắt đèn', 1),
(82, 29, 'Người mẹ cầm súng', 0),
(83, 29, 'Vợ chồng A Phủ', 0),
(84, 29, 'Tuổi thơ dữ dội', 0),
(85, 30, 'Nghệ', 1),
(86, 30, 'Giềng', 0),
(87, 30, 'Hành tây', 0),
(88, 30, 'Gừng', 0),
(89, 31, 'Phần Lan', 1),
(90, 31, 'Ba Lan', 0),
(91, 31, 'Nga', 0),
(92, 31, 'Mỹ', 0),
(93, 32, 'Âu Lạc', 1),
(94, 32, 'Vạn Xuân', 0),
(95, 32, 'Đại Cồ Việt', 0),
(96, 32, 'Đại Việt', 0),
(97, 33, 'Argentina', 1),
(98, 33, 'Tây Ban Nha', 0),
(99, 33, 'Bồ Đào Nha', 0),
(100, 33, 'Séc', 0),
(101, 34, 'Gốm sứ', 1),
(102, 34, 'Tơ lụa', 0),
(103, 34, 'Mây tre đan', 0),
(104, 34, 'Chạm khảm', 0),
(105, 35, 'Bố vợ', 1),
(106, 35, 'Ông vợ', 0),
(107, 35, 'Chú vợ', 0),
(108, 35, 'Anh vợ', 0),
(109, 36, 'Thợ mộc', 1),
(110, 36, 'Thợ điện', 0),
(111, 36, 'Thợ cắt tóc', 0),
(112, 36, 'Thợ may', 0),
(113, 37, 'Olga Bergholtz', 1),
(114, 37, 'Khổng Tử', 0),
(115, 37, 'Abraham Lincoln', 0),
(116, 37, 'Napoléon Bonaparte', 0),
(117, 38, 'Bách Hợp', 1),
(118, 38, 'Hồng', 0),
(119, 38, 'Cẩm Chướng', 0),
(120, 38, 'Lan', 0),
(121, 39, 'Cá gáy', 1),
(122, 39, 'Cá ngão', 0),
(123, 39, 'Cá chày', 0),
(124, 39, 'Cá diếc', 0),
(125, 40, 'V', 1),
(126, 40, 'K', 0),
(127, 40, 'T', 0),
(128, 40, 'M', 0),
(129, 41, '12', 1),
(130, 41, '1', 0),
(131, 41, '2', 0),
(132, 41, '11', 0),
(133, 42, '1A', 1),
(134, 42, 'Trường Sơn', 0),
(135, 42, 'Bắc Nam', 0),
(136, 42, '2A', 0),
(137, 43, 'Trường Sơn', 1),
(138, 43, 'Hoàng Liên Sơn', 0),
(139, 43, 'Ba Vì', 0),
(140, 43, 'Langbiang', 0),
(141, 44, 'Lào, Campuchia', 1),
(142, 44, 'Trung Quốc, Lào', 0),
(143, 44, 'Trung Quốc, Campuchia', 0),
(144, 44, 'Campuchia, Thái Lan', 0),
(145, 45, 'Biển Sargasso', 1),
(146, 45, 'Biển Maldive28', 0),
(147, 45, 'Biển Virgin Gorda', 0),
(148, 45, 'Biển Chết', 0),
(149, 46, 'Hải Phòng', 1),
(150, 46, 'Hà Nội', 0),
(151, 46, 'Vũng Tàu', 0),
(152, 46, 'TP.HCM', 0),
(153, 47, 'Đà Lạt, tỉnh Lâm Đồng', 1),
(154, 47, 'Hà Nội', 0),
(155, 47, 'Sa Đéc, tỉnh Đồng Tháp', 0),
(156, 47, 'Thuận An, tỉnh Bình Dương', 0),
(157, 48, 'Cộng hoà Maldives', 1),
(158, 48, 'Bhutan', 0),
(159, 48, 'Đan Mạch', 0),
(160, 48, 'Hà Lan', 0),
(161, 49, 'Sao Diêm Vương', 1),
(162, 49, 'Sao Hỏa', 0),
(163, 49, 'Sao Hải Vương', 0),
(164, 49, 'Sao Thiên Vương', 0),
(165, 50, 'Châu Á', 1),
(166, 50, 'Châu Âu', 0),
(167, 50, 'Châu Mỹ', 0),
(168, 50, 'Châu Đại Dương', 0),
(169, 51, 'Malaysia', 1),
(170, 51, 'Myanmar', 0),
(171, 51, 'Indonesia', 0),
(172, 51, 'Brunei', 0),
(173, 52, 'Nauru', 1),
(174, 52, 'Yamen', 0),
(175, 52, 'Ghana', 0),
(176, 52, 'Brunei', 0);

-- --------------------------------------------------------

--
-- Table structure for table `matchdetails`
--

CREATE TABLE `matchdetails` (
  `matchId` int(11) NOT NULL,
  `questionId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `matchs`
--

CREATE TABLE `matchs` (
  `matchId` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `money` varchar(255) NOT NULL,
  `playedAt` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `matchs`
--

INSERT INTO `matchs` (`matchId`, `score`, `money`, `playedAt`, `username`) VALUES
(1, 15, '250.000.000 đồng', '20:21 25/4/2023', 'vu'),
(3, 10, '22.000.000 đồng', '20:27 25/4/2023', 'Vu Nguyen'),
(6, 1, '200.000 đồng', '21:19 25/4/2023', 'some person'),
(8, 0, '0 đồng', '22:25 25/4/2023', 'vinh'),
(9, 0, '0 đồng', '22:26 25/4/2023', 'ggg'),
(10, 0, '0 đồng', '22:26 25/4/2023', ''),
(11, 0, '0 đồng', '22:26 25/4/2023', ''),
(12, 0, '0 đồng', '22:27 25/4/2023', 'vinh'),
(13, 0, '0 đồng', '22:29 25/4/2023', 'vinh'),
(14, 0, '0 đồng', '22:29 25/4/2023', 'vinh'),
(15, 0, '0 đồng', '22:29 25/4/2023', 'vih'),
(16, 0, '0 đồng', '22:30 25/4/2023', 'vinh'),
(17, 0, '0 đồng', '22:30 25/4/2023', 'vinh'),
(18, 0, '0 đồng', '22:30 25/4/2023', 'vinh'),
(19, 0, '0 đồng', '22:30 25/4/2023', 'vinh'),
(20, 0, '0 đồng', '22:31 25/4/2023', 'vinh'),
(21, 5, '2.000.000 đồng', '22:32 25/4/2023', 'vinh'),
(22, 0, '0 đồng', '22:32 25/4/2023', 'vinh'),
(23, 0, '0 đồng', '22:33 25/4/2023', 'vinh'),
(24, 0, '0 đồng', '22:34 25/4/2023', 'vinh'),
(25, 0, '0 đồng', '22:35 25/4/2023', 'vinh'),
(26, 0, '0 đồng', '22:36 25/4/2023', 'vinh'),
(27, 15, '250.000.000 đồng', '22:38 25/4/2023', 'vinh'),
(28, 0, '0 đồng', '22:39 25/4/2023', 'jjnjjn'),
(29, 0, '0 đồng', '22:39 25/4/2023', ''),
(30, 0, '0 đồng', '22:40 25/4/2023', ''),
(31, 0, '0 đồng', '22:40 25/4/2023', ''),
(32, 0, '0 đồng', '22:42 25/4/2023', '');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `questionId` int(11) NOT NULL,
  `content` text NOT NULL,
  `createdAt` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`questionId`, `content`, `createdAt`) VALUES
(9, 'Giải Grand Slam đầu tiên trong năm là giải nào?', '21:51 24/4/2023'),
(11, 'Trên mặt thoáng chất lỏng có hai quá trình ngược nhau, đó là sự bay hơi và gì?', '21:54 24/4/2023'),
(12, 'Ca khúc nào đạt giải thưởng Bài hát Việt của năm 2010?', '21:56 24/4/2023'),
(13, 'Đột biến ở NST bao nhiêu gây ra bệnh Down?', '21:57 24/4/2023'),
(14, 'AFC Asian Cup 2011 được tổ chức tại quốc gia nào?', '21:58 24/4/2023'),
(15, 'Nhà thơ Tố Hữu tả vẻ đẹp của đất nước nào qua câu thơ “Đường bạch dương sương trắng nắng tràn”?', '22:00 24/4/2023'),
(16, 'Tờ báo bằng chữ quốc ngữ đầu tiên ở nước ta ra đời vào nửa cuối thế kỷ XIX ở Sài Gòn có tên là gì?', '22:01 24/4/2023'),
(17, 'Thành phần chính trong bầu khí quyển của Sao Hỏa là khí …..', '22:03 24/4/2023'),
(18, 'Nước nào là nước chủ nhà tại Copa America 2011?', '22:04 24/4/2023'),
(19, 'Công thức hoá học của Oxi già là gì ?', '22:05 24/4/2023'),
(20, 'Bộ phim đầu tiên tại Việt Nam được lồng tiếng Việt theo tiêu chuẩn Hollywood?', '22:07 24/4/2023'),
(21, ' Trẻ em có bao nhiêu chiếc răng sữa?', '22:08 24/4/2023'),
(22, ' Trên … có một ngọn núi còn cao hơn cả đỉnh núi Everest, được đặt tên là Maxwell Montes.', '22:15 24/4/2023'),
(23, 'Cacbon monooxit (CO) thuộc loại oxit nào?', '22:16 24/4/2023'),
(24, 'Yếu tố nào không phải là 1 trong 3 yếu tố chính cấu thành nên quốc gia?', '22:18 24/4/2023'),
(25, 'Có câu thành ngữ: \"Đi mây về ...\" gì?', '23:25 24/4/2023'),
(26, 'Tình cảnh đơn độc, yếu thế không có chỗ dựa là nghĩa của câu nào?', '23:26 24/4/2023'),
(27, 'Đâu là tên một loại đồ chơi dân gian của trẻ em?', '23:26 24/4/2023'),
(28, 'Nhà văn Kim Dung (Trung Quốc) nổi tiếng với thể loại văn học gì?', '23:27 24/4/2023'),
(29, 'Bộ phim \"Chị Dậu\" được chuyển thể từ tác phẩm nào?', '23:28 24/4/2023'),
(30, 'Loại củ nào sau đây có thể giúp cho vết thương mau lành và ít để lại sẹo?', '23:29 24/4/2023'),
(31, 'Đất nước nào là quê hương của ông già tuyết?', '23:30 24/4/2023'),
(32, 'An Dương Vương đặt quốc hiệu nước ta là gì?', '23:34 24/4/2023'),
(33, '“Albicelestes” là biệt danh của đội tuyển bóng đá quốc gia nào?', '23:37 24/4/2023'),
(34, '\"Nhất xương, nhì da, thứ ba đến lửa\" là thành ngữ về kinh nghiệm của ngành nghề nào?', '23:39 24/4/2023'),
(35, 'Nhạc phụ là ai?', '23:40 24/4/2023'),
(36, 'Cưa, bào là các động tác liên quan đến nghề nghiệp nào?', '23:41 24/4/2023'),
(37, 'Ai đã có câu nói nổi tiếng: “Không ai bị lãng quên và không cái gì\r\nbị lãng quên”?', '23:42 24/4/2023'),
(38, 'Biểu tượng của Hoàng Gia nước Pháp là cách điệu của loài hoa gì?', '23:45 24/4/2023'),
(39, 'Cá chép còn có tên gọi khác là gì?', '23:46 24/4/2023'),
(40, 'Các môn thi Toán, Lý, Vẽ mỹ thuật là dành cho thí sinh của khối thi đặc biệt nào?', '23:47 24/4/2023'),
(41, 'Mỗi năm có 7 tháng 31 ngày. Đố bạn có bao nhiêu tháng có 28 ngày?', '21:49 25/4/2023'),
(42, 'Quốc lộ nào dài nhất Việt Nam?', '21:55 25/4/2023'),
(43, 'Dãy núi nào dài nhất Việt Nam?\r\n', '21:59 25/4/2023'),
(44, 'Kon Tum có đường biên giới với nước nào?', '22:01 25/4/2023'),
(45, 'Vùng biển nào trên thế giới không có bờ?', '22:03 25/4/2023'),
(46, 'Thành phố hoa phượng đỏ là biệt danh của địa phương nào?', '22:06 25/4/2023'),
(47, 'Nơi nào được gọi là thành phố ngàn hoa?', '22:07 25/4/2023'),
(48, 'Quốc gia nào nhỏ nhất châu Á?', '22:09 25/4/2023'),
(49, 'Sao nào bị “giáng cấp” không còn là hành tinh trong hệ Mặt Trời?', '22:11 25/4/2023'),
(50, 'Gần 60% dân số thế giới đang tập trung ở lục địa nào?', '22:14 25/4/2023'),
(51, 'Quốc gia Đông Nam Á nào có hai thủ đô?', '22:19 25/4/2023'),
(52, 'Quốc gia nào không có thủ đô?', '22:21 25/4/2023');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`answerId`),
  ADD KEY `questionId` (`questionId`);

--
-- Indexes for table `matchdetails`
--
ALTER TABLE `matchdetails`
  ADD KEY `matchId` (`matchId`),
  ADD KEY `questionId` (`questionId`);

--
-- Indexes for table `matchs`
--
ALTER TABLE `matchs`
  ADD PRIMARY KEY (`matchId`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`questionId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `answerId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- AUTO_INCREMENT for table `matchs`
--
ALTER TABLE `matchs`
  MODIFY `matchId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `questionId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `answers_ibfk_1` FOREIGN KEY (`questionId`) REFERENCES `questions` (`questionId`);

--
-- Constraints for table `matchdetails`
--
ALTER TABLE `matchdetails`
  ADD CONSTRAINT `matchdetails_ibfk_1` FOREIGN KEY (`matchId`) REFERENCES `matchs` (`matchId`),
  ADD CONSTRAINT `matchdetails_ibfk_2` FOREIGN KEY (`questionId`) REFERENCES `questions` (`questionId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
