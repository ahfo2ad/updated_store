-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2022 at 08:00 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `ID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Description` text NOT NULL,
  `Parent` int(11) NOT NULL,
  `Ordering` int(11) DEFAULT NULL,
  `Visibility` tinyint(4) NOT NULL DEFAULT 0,
  `Allow_Comment` tinyint(4) NOT NULL DEFAULT 0,
  `Allow_Ads` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`ID`, `Name`, `Description`, `Parent`, `Ordering`, `Visibility`, `Allow_Comment`, `Allow_Ads`) VALUES
(1, 'pc', '', 0, 2, 0, 0, 0),
(7, 'ps4', 'playstation 4', 1, 8, 1, 1, 1),
(8, 'washing machine', 'blaaaaaaaaaaaaaaa', 0, 5, 0, 1, 1),
(9, 'cars', 'type your needs', 0, 11, 0, 0, 0),
(10, 'phones', 'all you want of phones are here', 0, 8, 0, 0, 0),
(13, 'hp', 'new workstationhp case ', 10, 1, 0, 0, 0),
(14, 'oppo', 'good A94', 10, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `comment_ID` int(11) NOT NULL,
  `comment` text NOT NULL,
  `status` tinyint(4) NOT NULL,
  `comment_Date` date NOT NULL,
  `itemID` int(11) NOT NULL,
  `User_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_ID`, `comment`, `status`, `comment_Date`, `itemID`, `User_ID`) VALUES
(6, 'helho helho helho helho helho helho helho helho helho helho helho helho helho helho helho helho helho ', 0, '2022-02-03', 12, 5),
(7, 'mdiowenfmiocn jencvenriofvnweiornv', 0, '2015-02-05', 12, 15),
(8, 'miorenfioernf', 0, '2020-02-05', 12, 9),
(9, ' no words no words v no wordsno wordsno words', 1, '2020-02-05', 14, 3),
(10, 'bbbbbbbbbbbbb bbbbbbbbbbbbb bbbbbbbbbbbbb bbbbbbbbbbbbb bbbbbbbbbbbbb bbbbbbbbbbbbb bbbbbbbbbbbbb bbbbbbbbbbbbb bbbbbbbbbbbbb bbbbbbbbbbbbb ', 0, '2015-02-08', 13, 7),
(11, 'hello hello its my profile hello hello its my profile hello hello its my profile ', 0, '2015-02-05', 12, 17),
(12, 'nice comment', 1, '2022-02-07', 19, 17),
(13, 'nice car its turbo', 1, '2022-02-10', 19, 17),
(14, 'hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh\r\n', 0, '2022-02-10', 19, 17),
(15, 'last one', 1, '2022-02-10', 19, 17),
(16, 'hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh\r\n', 1, '2022-02-10', 19, 17),
(17, 'mmmmmmmmmmmm', 0, '2022-02-10', 19, 17),
(18, 'mmmmmmmmmmmm', 0, '2022-02-10', 19, 17),
(19, 'this is ismail', 1, '2022-02-10', 19, 18),
(20, 'ismail zanussi', 1, '2022-02-10', 18, 18),
(21, 'abdallah zanussi', 1, '2022-02-10', 18, 17),
(22, 'hehho man hehho man hehho man hehho man hehho man hehho man hehho man hehho man hehho man hehho man hehho man hehho man hehho man hehho man hehho man hehho man hehho man hehho man ', 1, '2022-02-11', 18, 18),
(23, 'good case for my computer', 1, '2022-02-13', 29, 18),
(24, 'its amar ', 0, '2022-02-15', 18, 20),
(25, 'eslam comment on vivo phones', 0, '2022-02-15', 31, 5),
(26, 'njnwdqwn', 0, '2022-02-17', 25, 17);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
CREATE TABLE `items` (
  `itemID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Description` text NOT NULL,
  `Price` varchar(255) NOT NULL,
  `Date` date NOT NULL,
  `Country_Made` varchar(255) NOT NULL,
  `Image` varchar(255) NOT NULL,
  `Status` varchar(255) NOT NULL,
  `Rating` smallint(6) NOT NULL,
  `approving` tinyint(4) NOT NULL DEFAULT 0,
  `Category_ID` int(11) NOT NULL,
  `User_ID` int(11) NOT NULL,
  `tags` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`itemID`, `Name`, `Description`, `Price`, `Date`, `Country_Made`, `Image`, `Status`, `Rating`, `approving`, `Category_ID`, `User_ID`, `tags`) VALUES
(12, 'kia', ' jkdnfef', '9', '2022-02-07', 'korea', '', '2', 0, 0, 9, 7, ''),
(13, 'toyo', 'car', '77', '2022-02-07', 'japan', '', '1', 0, 1, 9, 3, ''),
(14, 'lg', 'lg screen', '788', '2022-02-07', 'alpania', '', '3', 0, 0, 1, 7, ''),
(15, 'kmfre', 'kkkkkkkkok,p[k', '55', '2022-02-07', 'ddddd`', '', '3', 0, 0, 9, 7, ''),
(16, 'pplpl', 'no thing', '7878', '2022-02-07', 'alpania', '', '1', 0, 0, 9, 15, ''),
(17, 'honda', 'honda civic car', '999', '2022-02-07', 'japan', '', '4', 0, 1, 9, 5, ''),
(18, 'zanussi', 'good washing machine', '25', '2022-02-08', 'korea', '', '2', 0, 1, 8, 17, ''),
(19, 'range rover', 'expensive cars', '864', '2022-02-08', 'swiden', '', '3', 0, 1, 9, 17, ''),
(20, 'persil', 'for washing machines and others', '15', '2022-02-09', 'france', '', '1', 0, 1, 8, 17, ''),
(23, 'fifa2022', 'football game', '48', '2022-02-10', 'china', '', '1', 0, 1, 7, 17, ''),
(24, 'concar', 'agame', '56', '2022-02-10', 'mexico', '', '3', 0, 1, 1, 17, ''),
(25, 'note 9 pro', 'xaomi company', '287', '2022-02-11', 'china', '', '4', 0, 1, 1, 18, 'xaomi,battery,camera,phones,stability,work'),
(26, 'galaxy', 's20 ultra', '57', '2022-02-11', 'vitnam', '6666860501=pngtree-laptop-icon-png-image_1871608.jpg', '3', 0, 1, 1, 18, 'phones, samsung, ultra, s20, galaxy'),
(27, 'jojo', 'jjjjjjjjjjjjjjjjjjjjjjjj', '11', '2022-02-11', 'joui', '', '1', 0, 1, 1, 18, ''),
(28, 'skoda', 'strong german cars', '56', '2022-02-12', 'germany', '', '1', 0, 1, 9, 7, 'cars, sportscar, germany'),
(29, 'dell ', 'dell case inspiron', '48', '2022-02-13', 'usa', '', '3', 0, 1, 1, 18, 'pc,case,dell,laptop,ismail'),
(30, 'any habd', 'blaaaaaa', '4884', '2022-02-13', 'mkmk', '', '4', 0, 1, 8, 18, 'THNFERN,HABD,NJNJ BH nj,mk  mk - ,nj  kij - ,njj  nj - 87 k'),
(31, 'vivo', 'blaaaaaaaaaaaaaaa', '485', '2022-02-13', 'china', '2147146139=miswag_VTBo5gG2dFLA.jpg', '1', 0, 1, 10, 18, 'phone,vivo,screen'),
(32, 'kryazi', 'bad maintainance', '24', '2022-02-16', 'korea', '', '4', 0, 1, 8, 18, 'kryazi,maching,korea'),
(37, 'fouad', 'mkmkmkmkmk', '45', '2022-02-22', 'njnj', '764372722-clipart-pencil-256x256-f1da.png', '3', 0, 0, 1, 7, 'pen'),
(40, 'mm', 'mk', 'mk', '2022-02-22', 'mk', '7804505733-IMG-20211226-WA0013.jpg', '4', 0, 1, 10, 3, ''),
(41, 'nono', 'mmmmmmm', '7', '2022-02-22', 'nj', '8953060942=1636565113756.jpg', '4', 0, 1, 10, 18, ''),
(42, 'hala', 'hhhhhhhhhhhhhhhhhhhhhh', '45', '2022-02-22', 'mkmk', '', '1', 0, 0, 7, 17, ''),
(43, 'mongo', 'fruits', '54', '2022-02-22', 'malaga', '2702835697=cert-1082-24655133.jpg', '4', 0, 1, 1, 17, ''),
(44, 'mooz', 'fruit', '02', '2022-02-22', 'mkkkk', '3741783314=180578777_2343577825785832_5503371278328184263_n.jpg', '1', 0, 1, 7, 17, '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `UserID` int(11) NOT NULL COMMENT 'to identify user',
  `Username` varchar(255) NOT NULL COMMENT 'username for login',
  `Password` varchar(255) NOT NULL COMMENT 'pass for login',
  `Email` varchar(255) NOT NULL COMMENT 'email for login',
  `Fullname` varchar(255) NOT NULL COMMENT 'user full name',
  `GroupID` int(11) NOT NULL DEFAULT 0 COMMENT 'to be admin or user',
  `TrustStatus` int(11) NOT NULL DEFAULT 0 COMMENT 'to see if user trusted or not',
  `RegisterStatus` int(11) NOT NULL DEFAULT 0 COMMENT 'registering status',
  `Date` date NOT NULL,
  `profileImg` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserID`, `Username`, `Password`, `Email`, `Fullname`, `GroupID`, `TrustStatus`, `RegisterStatus`, `Date`, `profileImg`) VALUES
(1, 'ahmed', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'ah@mail.com', 'ahmed fouad', 1, 0, 1, '0000-00-00', ''),
(3, 'aa', 'e0c9035898dd52fc65c41454cec9c4d2611bfb37', 'aa@aa.com', 'aa zz', 0, 0, 1, '2019-05-16', ''),
(5, 'eslam', 'c1ae193b8eb46a0d855ba77094e7dd2077f63f8a', 'mm@12.com', 'ee rr', 0, 0, 1, '2022-01-24', ''),
(7, 'mohamed', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'moham@gmail.com', 'mohamed fouad', 0, 0, 1, '2022-01-25', ''),
(9, 'zzz', '40fa37ec00c761c7dbb6ebdee6d4a260b922f5f4', 'zz2@mail.com', 'zz zbnn', 0, 0, 1, '2022-01-25', ''),
(15, 'nvnv', '3b4fddecebb1a8499aa8bdea36b5f43253d42bdd', 'nv@mc.com', 'nvnv bbbb', 0, 0, 0, '2022-01-27', ''),
(17, 'abdallah', 'b0ec50bc373120badf234c42648589965ba8e589', 'mlm@bj.cpm', 'abdallah ahmed', 0, 0, 0, '2022-02-08', '683335216229-pencil_icon.png'),
(18, 'ismail', 'e327c9fb8e9480674a8de694371211e799d7292d', 'ismail@isa.com', 'ismail ahmed', 0, 0, 0, '2022-02-09', '903149951032-4.PNG'),
(19, 'sara', 'dea04453c249149b5fc772d9528fe61afaf7441c', 'mlm@bj.ss', 'sara salah', 0, 0, 1, '2022-02-13', '323053233474-pngtree-cute-girl-avatar-element-icon-image_1104606.jpg'),
(20, 'amar', '54cf1edf1143872699c8b24cfc4bf05ead9e0365', 'agv@ww.n', 'amar mo', 0, 0, 1, '2022-02-13', '301751820375-1636565228553.jpg'),
(21, 'amir', '077dc5cd00dade22284e55aaa09aab58b83c7404', 'mir@nj.om', '', 0, 0, 0, '2022-02-17', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Name` (`Name`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `items_rel_comments` (`itemID`),
  ADD KEY `user_rel_comments` (`User_ID`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`itemID`),
  ADD KEY `user_rel` (`User_ID`),
  ADD KEY `category_rel` (`Category_ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`),
  ADD UNIQUE KEY `Username` (`Username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `itemID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'to identify user', AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `items_rel_comments` FOREIGN KEY (`itemID`) REFERENCES `items` (`itemID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_rel_comments` FOREIGN KEY (`User_ID`) REFERENCES `users` (`UserID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `category_rel` FOREIGN KEY (`Category_ID`) REFERENCES `categories` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_rel` FOREIGN KEY (`User_ID`) REFERENCES `users` (`UserID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
