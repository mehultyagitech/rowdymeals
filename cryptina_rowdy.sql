-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 08, 2023 at 02:51 PM
-- Server version: 10.3.37-MariaDB-cll-lve
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cryptina_rowdy`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adm_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `code` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adm_id`, `username`, `password`, `email`, `code`, `date`) VALUES
(6, 'admin', 'ec580792aa15d258e55f2c6278f2d8e5', 'admin@gmail.com', '', '2021-03-28 07:39:58'),
(9, 'admin1', '5c1fa9138300947eb8421cd2ed80f7fc', 'adityanamansingh@gmail.com', 'QMZR92', '2021-06-06 13:32:01');

-- --------------------------------------------------------

--
-- Table structure for table `admin_codes`
--

CREATE TABLE `admin_codes` (
  `id` int(222) NOT NULL,
  `codes` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin_codes`
--

INSERT INTO `admin_codes` (`id`, `codes`) VALUES
(1, 'QX5ZMN'),
(2, 'QFE6ZM'),
(3, 'QMZR92'),
(4, 'QPGIOV'),
(5, 'QSTE52'),
(6, 'QMTZ2J');

-- --------------------------------------------------------

--
-- Table structure for table `contact_form`
--

CREATE TABLE `contact_form` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `question` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `message` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `contact_form`
--

INSERT INTO `contact_form` (`id`, `first_name`, `last_name`, `subject`, `question`, `email`, `phone`, `message`, `status`, `time`) VALUES
(3, 'Jeana', 'Amies', 'A secret weapon for anyone who needs content.', 'correction_info', 'jeana.amies@outlook.com', '404-485-0993', 'Hi , \r\n\r\nI donâ€™t need to tell you how important it is to optimize every step in your SEO pipeline. \r\n\r\nBut unfortunately, itâ€™s nearly impossible to cut out time or money when it comes to getting good content.\r\n\r\nAt least thatâ€™s what I thought until I came across Article Forge...\r\n\r\nBuilt by a team of AI researchers from MIT, Carnegie Mellon, Harvard, Article Forge is an artificial intelligence (AI) powered content writer that uses deep learning models to write entire articles about any topic in less than 60 seconds.\r\n\r\nTheir team trained AI models on millions of articles to teach Article Forge how to draw connections between topics so that each article it writes is relevant, interesting and useful.\r\n\r\nAll their hard work means you just enter a few keywords and Article Forge will write a complete article from scratch making sure every thought flows naturally into the next, resulting in readable, high quality, and unique content.\r\n\r\nPut simply, this is a secret weapon for anyone who needs content.\r\n\r\nI get how impossible that sounds so you need to see how Article Forge writes a complete article in less than 60 seconds! =>> https://myarticleforge.blogspot.com/\r\n\r\nI had to share this with you because I know this will be a game changer for your business.\r\n\r\nIf youâ€™re writing your own content, Article Forge can take a long and difficult process and turn it into a single button click. \r\n\r\nIf youâ€™re buying content, Article Forgeâ€™s flat fee, unlimited articles, and 60 second turnaround will be cheaper and faster than any other content provider. \r\n\r\nEither way, Article Forge will help you take your content creation process to the next level.\r\n\r\nMore importantly, Article Forge offers a free 5-day trial so you can see for yourself how this technology will revolutionize your content pipeline for your niche and your use case. \r\n\r\nSo what are you waiting for? Click here to get your 5-day Free Trial and start generating unlimited unique content =>> https://myarticleforge.blogspot.com/\r\n\r\nAnd make sure to thank me later when this tool has changed the way you create content :)\r\n\r\nBrahma.', 1, '2021-12-18 13:50:37'),
(4, 'Hester', 'Tauchert', 'CLONE THE WEBSITE THAT MADE OVER $100k', 'whereisorder', 'hester.tauchert@outlook.com', '', 'STOP Trying To Do Everything Yourself,\r\nClone Our $100k PROVEN Affiliate Campaigns\r\n\r\n\r\n=> https://dcas.bizoppsguide.com?traffic_source=cf&cost=0.0\r\n\r\n\r\nWith Everything, Preloaded Into This 3-In-1\r\nDFY Sales, Traffic & Website App\r\n\r\n\r\n=> https://dcas.bizoppsguide.com?traffic_source=cf&cost=0.0', 1, '2021-12-27 19:50:34'),
(5, 'Armando', 'Enyeart', '|', 'reportrestro', 'enyeart.armando@outlook.com', '078 7775 338', 'Breakthrough Software Brings You A Tsunami Of Traffic WITHOUT Writing Any Content, SEO, Paid Ads Or Even Creating A Video Creation\r\n\r\n==> https://lifetraffic.bizoppsguide.com?traffic_source=cf&cost=0.0\r\n\r\nUse Trending Tags To Boost Your Traffic & Sales\r\n\r\nSuper WP Plugin that generates BUYER TRAFFIC from Trending Viral For LIFE - at an UNBEATABLE ONE-TIME price.\r\n\r\n\r\n==> https://lifetraffic.bizoppsguide.com?traffic_source=cf&cost=0.0\r\n\r\n100% Hands-Free Traffic & Content For Sales, Lead Generation, Ecom Sales, New Websites, Niche Content Websites, AdSense, Affiliate Marketing and more...\r\n\r\n\r\n==> https://lifetraffic.bizoppsguide.com?traffic_source=cf&cost=0.0', 1, '2022-01-14 17:25:51');

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

CREATE TABLE `dishes` (
  `d_id` int(222) NOT NULL,
  `rs_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `slogan` varchar(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `img` varchar(222) NOT NULL,
  `featured` enum('Yes','No') NOT NULL DEFAULT 'No',
  `status` enum('0','1') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`d_id`, `rs_id`, `title`, `slogan`, `price`, `img`, `featured`, `status`) VALUES
(1, 1, 'Aloo Tikki - Burger ', 'Dish', '35.00', '01.jpg', 'No', '1'),
(2, 1, 'Veggiee - Burger', 'Dish', '45.00', '02.jpg', 'No', '1'),
(3, 1, 'Cheesy  - Burger ', 'Dish', '55.00', '03.jpg', 'Yes', '1'),
(4, 1, 'Paneer  - Burger ', 'Dish', '65.00', '04.jpg', 'Yes', '1'),
(5, 1, 'Maharaja  - Burger ', 'Dish', '75.00', '05.jpg', 'No', '1'),
(6, 1, 'Veggiee - Sandwich (2. Pcs)', 'Cuisine', '30.00', '06.jpg', 'No', '1'),
(7, 1, 'Grilled Corn - Sandwich(4 Pcs)', 'Cuisine', '60.00', '07.jpg', 'No', '1'),
(8, 1, 'Chessy Grill - Sandwich(4 Pcs)', 'Cuisine', '90.00', '08.jpg', 'No', '1'),
(9, 1, 'Red Sauce - Pasta', 'Dish', '80.00', '09.jpg', 'No', '1'),
(10, 1, 'White Sauce - Pasta', 'Dish', '90.00', '10.jpg', 'No', '1'),
(11, 1, 'Mix Sauce - Pasta', 'Dish', '100.00', '11.jpg', 'No', '1'),
(12, 1, 'Tandoori - Pasta', 'Dish', '120.00', '12.jpg', 'No', '1'),
(13, 1, 'Bake & Cheese - Pasta', 'Dish', '180.00', '13.jpg', 'No', '1'),
(14, 1, 'French Fries', 'Wedges', '60.00', '14.jpg', 'No', '1'),
(15, 1, 'Peri Peri - French Fries', 'Wedges', '70.00', '15.jpg', 'No', '0'),
(16, 1, 'Cheesy Fries', 'Wedges', '80.00', '16.jpg', 'No', '1'),
(17, 1, 'Fried Rice', 'Dish Of Cooked Rice', '60.00', '17.jpg', 'No', '0'),
(18, 1, 'Manchurian', 'Indian - Chinese', '120.00', '18.jpg', 'No', '0'),
(19, 1, 'Chilli Paneer', 'Indo - Chinese', '120.00', '19.jpg', 'No', '1'),
(20, 1, 'Paneer Momos(6 Pcs)', 'Traditional Delicacy of Nepal', '50.00', '20.jpg', 'No', '1'),
(21, 1, 'Spicy Corn  Roll  (Single)', 'Indian Street Food', '50.00', '21.jpg', 'No', '1'),
(22, 1, 'Spicy Corn  Roll (Double)', 'Indian Street Food', '60.00', '22.jpg', 'No', '1'),
(23, 1, 'Malai Chaap - Roll - Single', 'Indian Street Food', '60.00', '23.jpg', 'No', '1'),
(24, 1, 'Malai Chaap - Roll - Double', 'Indian Street Food', '90.00', '24.jpg', 'No', '1'),
(25, 1, 'Paneer - Roll - Single', 'Indian Street Food', '70.00', '25.jpg', 'No', '1'),
(26, 1, 'Paneer - Roll - Double', 'Indian Street Food', '90.00', '26.jpg', 'No', '1'),
(27, 1, 'Chilly Paneer - Roll - Single', 'Indian Street Food', '80.00', '606861ff94ce8.jpg', 'No', '1'),
(28, 1, 'Chilly Paneer - Roll - Double', 'Indian Street Food', '100.00', '606861f837b2e.jpg', 'No', '1'),
(29, 1, 'Paneer Makhani - Roll - Single', 'Indian Street Food', '90.00', '29.jpg', 'No', '0'),
(30, 1, 'Paneer Makhani - Roll - Double', 'Indian Street Food', '110.00', '30.jpg', 'No', '0'),
(31, 1, 'Tandoori Paneer Tikka - Roll - Single', 'Indian Street Food', '100.00', '31.jpg', 'No', '0'),
(32, 1, 'Tandoori Paneer Tikka - Roll - Double', 'Indian Street Food', '120.00', '32.jpg', 'No', '0'),
(33, 1, 'Capasicum and Corn - Pizza', 'Italy Dish', '99.00', '33.jpg', 'No', '1'),
(34, 1, 'Onion & Capsicum - Pizza', 'Italy Dish', '99.00', '34.jpg', 'No', '1'),
(35, 1, 'Onion & Jalapeno - Pizza', 'Italy Dish', '99.00', '35.jpg', 'No', '1'),
(36, 1, 'Onion & Corn - Pizza', 'Italy Dish', '99.00', '36.jpg', 'Yes', '1'),
(37, 1, 'Onion & Cheese - Pizza', 'Italy Dish', '99.00', '37.jpg', 'No', '1'),
(38, 1, 'Cheese & Corn - Pizza', 'Italy Dish', '99.00', '38.jpg', 'No', '1'),
(39, 1, 'Corn & Mushroom - Pizza', 'Italy Dish', '109.00', '39.jpg', 'No', '1'),
(40, 1, 'Paneer & Capsicum - Pizza', 'Italy Dish', '109.00', '40.jpg', 'No', '1'),
(41, 1, 'Paneer & Onion - Pizza', 'Italy Dish', '109.00', '41.jpg', 'Yes', '1'),
(42, 1, 'Cheesy Marghrita - Pizza', 'Italy Dish', '129.00', '42.jpg', 'No', '1'),
(43, 1, 'Veg. Loaded - Pizza', 'Italy Dish', '149.00', '43.jpg', 'No', '1'),
(44, 1, 'Farm Fresh - Pizza', 'Italy Dish', '159.00', '44.jpg', 'No', '1'),
(45, 1, 'Paneer Makhani Pizza', 'Italy Dish', '169.00', '45.jpg', 'No', '1'),
(46, 1, 'Tandoori Paneer Tikka - Pizza', 'Italy Dish', '199.00', '46.jpg', 'No', '1'),
(47, 1, 'Hot Tea', 'Beverage', '20.00', '47.jpg', 'No', '1'),
(48, 1, 'Hot Coffee', 'Beverage', '30.00', '48.jpg', 'No', '1'),
(49, 1, 'Fresh Lime Soda', 'Beverage', '50.00', '49.jpg', 'No', '1'),
(50, 1, 'Virgin Majito', 'Beverage', '70.00', '50.jpg', 'No', '1'),
(51, 1, 'Cold Coffee', 'Beverage', '60.00', '51.jpg', 'No', '1'),
(52, 1, 'Chocolate Shake', 'Beverage', '80.00', '52.jpg', 'No', '1'),
(53, 1, 'Strawberry Shake', 'Beverage', '80.00', '53.jpg', 'No', '1'),
(54, 1, 'Black Current Shake', 'Beverage', '80.00', '54.jpg', 'No', '1'),
(55, 1, 'Oreo Shake', 'Beverage', '90.00', '55.jpg', 'No', '0'),
(56, 1, 'Kitkat Shake', 'Beverage', '90.00', '56.jpg', 'No', '0'),
(59, 3, 'Chai', 'Bevarage', '15.00', 'b1.jpg', 'No', '1'),
(60, 3, 'Coffee', 'Bevarage', '25.00', 'b2.jpg', 'No', '1'),
(61, 3, 'Plain - Paratha', 'Dish', '25.00', 'b3.jpg', 'No', '1'),
(62, 3, 'Aloo Piyaj - Paratha', 'Dish', '35.00', 'b4.jpg', 'No', '1'),
(63, 3, 'Mix - Paratha', 'Dish', '45.00', 'b5.jpg', 'No', '1'),
(64, 3, 'Mulli - Paratha', 'Dish', '30.00', 'b6.jpg', 'No', '1'),
(65, 3, 'Chole Puri', 'Indian Dish', '45.00', 'b7.jpg', 'No', '1'),
(66, 3, 'Chole Kulche', 'Indian Dish', '45.00', 'b8.jpg', 'No', '1'),
(67, 3, 'Special Chai', 'Bevarage', '25.00', 'b9.jpg', 'No', '1'),
(68, 3, 'Aloo Paratha', 'Dish', '30.00', 'b10.jpg', 'No', '1'),
(69, 3, 'Paneer Paratha', 'Dish', '55.00', 'b11.jpg', 'No', '1'),
(70, 3, 'Gobhi Paratha', 'Dish', '35.00', 'b12.jpg', 'No', '1'),
(71, 3, 'Chole Bhature', 'Indian Dish', '45.00', 'b13.jpg', 'No', '1'),
(72, 3, 'Poha', 'Rice', '45.00', 'b14.jpg', 'No', '1'),
(73, 3, 'Sweet Lassi', 'Bevarage', '30.00', 'b15.jpg', 'No', '1'),
(74, 3, 'Salty Lassi', 'Bevarage', '40.00', 'b15.jpg', 'No', '1'),
(75, 3, 'Matar Paneer (Half)', 'Indian Dish', '75.00', 'b16.jpg', 'No', '1'),
(76, 3, 'Matar Paneer', 'Indian Dish', '125.00', 'b16.jpg', 'No', '1'),
(77, 3, 'Shahi Paneer (Half)', 'Indian Dish', '75.00', 'b17.jpg', 'No', '1'),
(78, 3, 'Shahi Paneer', 'Indian Dish', '125.00', 'b17.jpg', 'No', '1'),
(79, 3, 'Kdhai Paneer (Half)', 'Indian Dish', '85.00', 'b18.jpg', 'No', '1'),
(80, 3, 'Kdhai Paneer', 'Indian Dish', '145.00', 'b18.jpg', 'No', '1'),
(81, 3, 'Paneer Butter Masala (Half)', 'Indian Dish', '85.00', 'b19.jpg', 'No', '1'),
(82, 3, 'Paneer Butter Masala', 'Indian Dish', '145.00', 'b19.jpg', 'No', '1'),
(83, 3, 'Paalak Paneer (Half)', 'Indian Dish', '75.00', 'b20.jpg', 'No', '1'),
(84, 3, 'Paalak Paneer', 'Indian Dish', '125.00', 'b20.jpg', 'No', '1'),
(85, 3, 'Kdhee Chawal (Half)', 'Indian Dish', '35.00', 'b21.jpg', 'No', '1'),
(86, 3, 'Kdhee Chawal', 'Indian Dish', '55.00', 'b21.jpg', 'No', '1'),
(87, 3, 'Dal Chawal (Half)', 'Indian Dish', '35.00', 'b22.jpg', 'No', '1'),
(88, 3, 'Dal Chawal', 'Indian Dish', '55.00', 'b22.jpg', 'No', '1'),
(89, 3, 'Chole Chawal (Half)', 'Indian Dish', '35.00', 'b60.jpg', 'No', '1'),
(90, 3, 'Chole Chawal', 'Indian Dish', '55.00', 'b60.jpg', 'No', '1'),
(91, 3, 'Rajma Chawal (Half)', 'Indian Dish', '35.00', 'b23.jpg', 'No', '1'),
(92, 3, 'Bundi Raita (Half)', 'Curd', '25.00', 'b24.jpg', 'No', '1'),
(93, 3, 'Rajma Chawal', 'Indian Dish', '55.00', 'b23.jpg', 'No', '1'),
(94, 3, 'Bundi Raita', 'Curd', '45.00', 'b24.jpg', 'No', '1'),
(95, 3, 'Mix Raita (Half)', 'Curd', '35.00', 'b25.jpg', 'No', '1'),
(96, 3, 'Mix Raita', 'Curd', '55.00', 'b25.jpg', 'No', '1'),
(97, 3, 'Piyaj Raita (Half)', 'Curd', '35.00', 'b26.jpg', 'No', '1'),
(98, 3, 'Piyaj Raita', 'Curd', '55.00', 'b26.jpg', 'No', '1'),
(99, 3, 'Mix Veg (Half)', 'Indian Dish', '65.00', 'b27.jpg', 'No', '1'),
(100, 3, 'Mix Veg', 'Indian Dish', '105.00', 'b27.jpg', 'No', '1'),
(101, 3, 'Aloo Gobhi (Half)', 'Indian Dish', '65.00', 'b28.jpg', 'No', '1'),
(102, 3, 'Aloo Gobhi', 'Indian Dish', '105.00', 'b28.jpg', 'No', '1'),
(103, 3, 'Aloo Matar (Half)', 'Indian Dish', '55.00', 'b29.jpg', 'No', '1'),
(104, 3, 'Aloo Matar', 'Indian Dish', '85.00', 'b29.jpg', 'No', '1'),
(105, 3, 'Bhindi Masala (Half)', 'Indian Dish', '65.00', 'b30.jpg', 'No', '1'),
(106, 3, 'Bhindi Masala', 'Indian Dish', '105.00', 'b30.jpg', 'No', '1'),
(107, 3, 'Veg Kofta (Half)', 'Indian Dish', '65.00', 'b31.jpg', 'No', '1'),
(108, 3, 'Veg Kofta', 'Indian Dish', '105.00', 'b31.jpg', 'No', '1'),
(109, 3, 'Mushroom Masala (Half)', 'Dish', '65.00', 'b32.jpg', 'No', '1'),
(110, 3, 'Mushroom Masala', 'Dish', '105.00', 'b32.jpg', 'No', '1'),
(111, 3, 'Matar Mushroom (Half)', 'Dish', '65.00', 'b33.jpg', 'No', '1'),
(112, 3, 'Matar Mushroom', 'Dish', '105.00', 'b33.jpg', 'No', '1'),
(113, 3, 'Dal Tadka (Half)', 'Indian Dish', '55.00', 'b34.jpg', 'No', '1'),
(114, 3, 'Dal Tadka', 'Indian Dish', '85.00', 'b34.jpg', 'No', '1'),
(115, 3, 'Dal Fry (Half)', 'Indian Dish', '55.00', 'b35.jpg', 'No', '1'),
(116, 3, 'Dal Fry', 'Indian Dish', '85.00', 'b35.jpg', 'No', '1'),
(117, 3, 'Dal Makhani (Half)', 'Indian Dish', '65.00', 'b36.jpg', 'No', '1'),
(118, 3, 'Dal Makhani', 'Indian Dish', '105.00', 'b36.jpg', 'No', '1'),
(119, 3, 'Plain Rice (Half)', 'Rice', '35.00', 'b37.jpg', 'No', '1'),
(120, 3, 'Plain Rice', 'Rice', '55.00', 'b37.jpg', 'No', '1'),
(121, 3, 'Jeera Rice (Half)', 'Rice', '45.00', 'b38.jpg', 'No', '1'),
(122, 3, 'Jeera Rice', 'Rice', '75.00', 'b38.jpg', 'No', '1'),
(123, 3, 'Matar Pulav (Half)', 'Rice', '65.00', 'b39.jpg', 'No', '1'),
(124, 3, 'Matar Pulav', 'Rice', '105.00', 'b39.jpg', 'No', '1'),
(125, 3, 'Veg Pulav (Half)', 'Rice', '65.00', 'b40.jpg', 'No', '1'),
(126, 3, 'Veg Pulav', 'Rice', '105.00', 'b40.jpg', 'No', '1'),
(127, 3, 'Veg Bhiryani (Half)', 'Rice', '75.00', 'b41.jpg', 'No', '1'),
(128, 3, 'Veg Bhiryani', 'Rice', '125.00', 'b41.jpg', 'No', '1'),
(129, 3, 'Chowmein (Half)', 'Chinese', '25.00', 'b42.jpg', 'No', '1'),
(130, 3, 'Chowmein', 'Chinese', '45.00', 'b42.jpg', 'No', '1'),
(131, 3, 'Spring Roll (Half)', 'Chinese', '25.00', 'b43.jpg', 'No', '1'),
(132, 3, 'Spring Roll', 'Chinese', '45.00', 'b43.jpg', 'No', '1'),
(133, 3, 'Veg  kabab (Half)', 'Indian Dish', '25.00', 'b44.jpg', 'No', '1'),
(134, 3, 'Veg  kabab', 'Indian Dish', '45.00', 'b44.jpg', 'No', '1'),
(135, 3, 'Paneer Chowmein (Half)', 'Chinese', '45.00', 'b45.jpg', 'No', '1'),
(136, 3, 'Paneer Chowmein  ', 'Chinese', '85.00', 'b45.jpg', 'No', '1'),
(137, 3, 'Fried Rice (Half)', 'Rice', '65.00', 'b46..jpg', 'No', '1'),
(138, 3, 'Fried Rice', 'Rice', '105.00', 'b46..jpg', 'No', '1'),
(139, 3, 'Chilli Paneer (Half)', 'Indian Dish', '75.00', 'b47.jpg', 'No', '1'),
(140, 3, 'Chilli Paneer', 'Indian Dish', '125.00', 'b47.jpg', 'No', '1'),
(141, 3, 'Chilli Mushroom (Half)', 'Dish', '55.00', 'b49.jpg', 'No', '1'),
(142, 3, 'Chilli Mushroom', 'Dish', '85.00', 'b49.jpg', 'No', '1'),
(143, 3, 'Momos Steam (Half)', 'Indian Dish', '25.00', 'b50.jpg', 'No', '1'),
(144, 3, 'Momos Steam', 'Indian Dish', '45.00', 'b50.jpg', 'No', '1'),
(145, 3, 'Momos Fried (Half)', 'Indian Dish', '35.00', 'b51.jpg', 'No', '1'),
(146, 3, 'Momos Fried ', 'Indian Dish', '65.00', 'b51.jpg', 'No', '1'),
(147, 3, 'Maggi', 'Noodles', '35.00', 'b52.jpg', 'No', '1'),
(148, 3, 'Manchurian', 'Dish', '65.00', 'b53.jpg', 'No', '1'),
(149, 3, 'Burger', 'Dish', '35.00', 'b54.jpg', 'No', '1'),
(150, 3, 'Chilli Potato', 'Dish', '55.00', 'b55.jpg', 'No', '1'),
(151, 3, 'Honey Chilli Potato', 'Dish', '75.00', 'b56.jpg', 'No', '1'),
(152, 3, 'Pav Bhaji', 'Dish', '45.00', 'b57.jpg', 'No', '1'),
(153, 3, 'Thali (Simple)', 'Indian Dish', '55.00', 'b58.jpg', 'No', '1'),
(154, 3, 'Thali (Special)', 'Indian Dish', '105.00', 'b59.jpg', 'No', '1'),
(155, 4, 'Aloo Pratha ', 'Dish', '55.00', 'a32.jpg', 'No', '0'),
(156, 4, 'Paneer Pratha', 'Dish', '65.00', 'a32.jpg', 'No', '0'),
(157, 4, 'Mooli Pratha', 'Dish', '55.00', 'a31.jpg', 'No', '0'),
(158, 4, 'Plain Omlette ', 'Dish', '55.00', 't1.jpg', 'No', '0'),
(159, 4, 'Boiled Egg (2 pcs)', 'Dish', '45.00', 't2.jpg', 'No', '0'),
(160, 4, 'Maggi', 'Noodles', '65.00', 'a40.jpg', 'No', '0'),
(161, 4, 'Tea', 'Beverage', '25.00', 'a54.jpg', 'No', '0'),
(162, 4, 'Black  Tea', 'Beverage', '35.00', 't3.jpg', 'No', '0'),
(163, 4, 'Hot Coffee', 'Beverage', '35.00', 'a56.jpg', 'No', '0'),
(164, 4, 'Hot Milk', 'Beverage', '55.00', 't4.jpg', 'No', '0'),
(165, 4, 'Cold Drink (500 ml)', 'Cold drink', '55.00', 't5.jpg', 'No', '0'),
(166, 4, 'Mineral Water', 'Water', '35.00', 't6.jpg', 'No', '0'),
(167, 4, 'Murg Sagwala (half)', 'Dish', '305.00', 't7.jpg', 'No', '0'),
(168, 4, 'Murg Sagwala (full)', 'Dish', '585.00', 't7.jpg', 'No', '0'),
(169, 4, 'Murg Lababdaar (half)', 'Dish', '305.00', 't8.jpg', 'No', '0'),
(170, 4, 'Murg Lababdaar  (full)', 'Dish', '585.00', 't8.jpg', 'No', '0'),
(171, 4, ' Hyderabadi Lagan Ka Murg (half)', 'Dish', '305.00', 't9.jpg', 'No', '0'),
(172, 4, ' Hyderabadi Lagan Ka Murg (full)', 'Dish', '585.00', 't9.jpg', 'No', '0'),
(173, 4, 'Home Style Chicken Curry (half)', 'Dish', '310.00', 't10.jpg', 'No', '1'),
(174, 4, 'Home Style Chicken Curry (full)', 'Dish', '590.00', 't10.jpg', 'No', '1'),
(175, 4, 'Murg Jaal Freeze (half)', 'Dish', '305.00', 't11.jpg', 'No', '0'),
(176, 4, 'Murg Jaal Freeze (full)', 'Dish', '585.00', 't11.jpg', 'No', '0'),
(177, 4, 'Murg Rogan Josh (half)', 'Dish', '305.00', 't12.jpg', 'No', '0'),
(178, 4, 'Murg Rogan Josh (full)', 'Dish', '585.00', 't12.jpg', 'No', '0'),
(179, 4, 'Meethi Murg Masala (half)', 'Dish', '305.00', 't13.jpg', 'No', '0'),
(180, 4, 'Meethi Murg Masala (full)', 'Dish', '585.00', 't13.jpg', 'No', '0'),
(181, 4, 'Murg Patiala (half)', 'Dish', '335.00', 't14.jpg', 'No', '0'),
(182, 4, 'Murg Patiala (full)', 'Dish', '605.00', 't14.jpg', 'No', '0'),
(183, 4, 'Kadai Chicken (half)', 'Dish', '310.00', 't15.jpg', 'No', '1'),
(184, 4, 'Kadai Chicken (full)', 'Dish', '590.00', 't15.jpg', 'No', '1'),
(185, 4, 'Chicken Do Pyaza (half)', 'Dish', '305.00', 't16.jpg', 'No', '0'),
(186, 4, 'Chicken Do Pyaza (full)', 'Dish', '585.00', 't16.jpg', 'No', '0'),
(187, 4, 'Chicken Masala with Egg (half)', 'Dish', '305.00', 't17.jpg', 'No', '0'),
(188, 4, 'Chicken Masala with Egg (full)', 'Delightful Dish', '585.00', 't17.jpg', 'No', '0'),
(189, 4, 'Boneless Chicken (half)', 'Delightful Dish', '335.00', 't102.jpg', 'No', '0'),
(190, 4, 'Boneless Chicken (full)', 'Delightful Dish', '605.00', 't102.jpg', 'No', '0'),
(191, 4, 'Egg Curry', 'Delightful Dish', '125.00', 't19.jpg', 'No', '0'),
(192, 4, 'Egg Bhurji (4 Eggs)', 'Delightful Dish', '105.00', 't20.jpg', 'No', '0'),
(193, 4, 'Plain Curd', 'Curd', '45.00', 'a41.jpg', 'No', '0'),
(194, 4, 'Mix Raita', 'Curd', '55.00', 'a42.jpg', 'No', '0'),
(195, 4, 'Boondi Raita', 'Curd', '55.00', 'a43.jpg', 'No', '1'),
(196, 4, 'Aloo Raita', 'Curd', '55.00', 't21.jpg', 'No', '0'),
(197, 4, 'Tawa Roti', 'Chappati', '10.00', 'a46.jpg', 'No', '1'),
(198, 4, 'Butter Roti', 'Chappati', '15.00', 'a47.jpg', 'No', '1'),
(199, 4, 'Palak Paneer', 'Indian Dish', '205.00', 'a16.jpg', 'No', '0'),
(200, 4, 'Paneer Makhni', 'Indian Dish', '205.00', 't22.jpg', 'No', '0'),
(201, 4, 'Sabz Deewan Handi', 'Indian Dish', '225.00', 't23.jpg', 'No', '0'),
(202, 4, 'Aloo Matar', 'Indian Dish', '185.00', 'a3.jpg', 'No', '0'),
(203, 4, 'Paneer Khta Pyaz', 'Indian Dish', '205.00', 't24.jpg', 'No', '0'),
(204, 4, 'Paneer Jalfreeze ', 'Indian Dish', '225.00', 't25.jpg', 'No', '0'),
(205, 4, ' Paneer Labaddaar', 'Indian Dish', '225.00', 't26.jpg', 'No', '0'),
(206, 4, 'Kadai Veg', 'Indian Dish', '185.00', 't27.jpg', 'No', '0'),
(207, 4, 'Bhindi Do Pyaza', 'Indian Dish', '185.00', 't28.jpg', 'No', '0'),
(208, 4, 'Bhindi Tamatara', 'Indian Dish', '185.00', 't29.jpg', 'No', '0'),
(209, 4, 'Mushroom masala', 'Delightful Dish', '185.00', 't30.jpg', 'No', '0'),
(210, 4, ' Mushroom do Pyaza', 'Delightful Dish', '185.00', 't31.jpg', 'No', '0'),
(211, 4, 'Veg Jalfrezi', 'Delightful Dish', '185.00', 't32.jpg', 'No', '0'),
(212, 4, 'Aloo Gobhi Adarki', 'Delightful Dish', '155.00', 't33.jpg', 'No', '0'),
(213, 4, 'Mushroom Matar Hara Pyaza', 'Delightful Dish', '185.00', 't34.jpg', 'No', '0'),
(214, 4, 'Matter Mushroom', 'Delightful Dish', '185.00', 't35.jpg', 'No', '0'),
(215, 4, 'Kadai Mushroom', 'Delightful Dish', '205.00', 't36.jpg', 'No', '0'),
(216, 4, 'Panchratan Dal', 'Delightful Dish', '155.00', 't37.jpg', 'No', '0'),
(217, 4, 'Subz Miloni', 'Delightful Dish', '185.00', 't38.jpg', 'No', '0'),
(218, 4, 'Matar Paneer', 'Indian Dish', '205.00', 'a9.jpg', 'No', '0'),
(219, 4, 'Kadai Paneer', 'Indian Dish', '205.00', 't39.jpg', 'No', '0'),
(220, 4, 'Shahi Paneer', 'Indian Dish', '205.00', 't40.jpg', 'No', '0'),
(221, 4, 'Paneer Butter Masala', 'Indian Dish', '205.00', 't41.jpg', 'No', '0'),
(222, 4, 'Jeera Aloo', 'Indian Dish', '125.00', 't43.jpg', 'No', '0'),
(223, 4, 'Dal Makhni', 'Indian Dish', '165.00', 'a2.jpg', 'No', '0'),
(224, 4, 'Plain Rice', 'Rice', '85.00', 'a22.jpg', 'No', '1'),
(225, 4, 'Jeera Rice', 'Rice', '105.00', 'a23.jpg', 'No', '0'),
(226, 4, 'Veg. Biryani', 'Dish', '185.00', 't42.jpg', 'No', '0'),
(227, 4, 'Jeera Mattar Pulao', 'Dish', '145.00', 't44.jpg', 'No', '0'),
(228, 4, 'Veg Pulao', 'Dish', '155.00', 'a25.jpg', 'No', '0'),
(229, 4, 'Cashewnut Pulao', 'Dish', '205.00', 't45.jpg', 'No', '0'),
(230, 4, 'Mint and Onion Pulao', 'Dish', '165.00', 't46.jpg', 'No', '0'),
(231, 4, 'Veg Fried Rice', 'Dish', '185.00', 't47.jpg', 'No', '0'),
(232, 4, 'Chicken Fried Rice', 'Dish', '355.00', 't48.jpg', 'No', '0'),
(233, 4, 'Egg Fried Rice', 'Dish', '305.00', 't49.jpg', 'No', '0'),
(234, 4, 'Chicken Biryani', 'Dish', '305.00', 't50.jpg', 'No', '0'),
(235, 4, 'Chicken Hyderabadi Dum Biryani', 'Dish', '355.00', 't51.jpg', 'No', '0'),
(236, 4, 'Egg Biryani', 'Dish', '305.00', 't52.jpg', 'No', '0'),
(237, 4, 'Green Salad ', 'Salad', '55.00', 't53jpg', 'No', '0'),
(238, 4, 'Onion Salad', 'Salad', '35.00', 't54.jpg', 'No', '0'),
(239, 4, 'Cucumber Salad', 'Salad', '45.00', 't55.jpg', 'No', '0'),
(240, 4, 'Hot n Sour Soup', 'Soup', '65.00', 't56.jpg', 'No', '0'),
(241, 4, 'Lemon Coriander Soup', 'Soup', '85.00', 't57.jpg', 'No', '0'),
(242, 4, 'Manchow Soup', 'Soup', '85.00', 't58.jpg', 'No', '0'),
(243, 4, 'Cucumber Noodle Soup', 'Soup', '85.00', 't59.jpg', 'No', '0'),
(244, 4, 'Tomato Dhaniya Shorba', 'Soup', '105.00', 't60.jpg', 'No', '0'),
(245, 4, 'Hot n Sour Chicken Soup', 'Soup', '85.00', 't61.jpg', 'No', '0'),
(246, 4, 'Chicken Leamon Coriander Soup', 'Soup', '105.00', 't62.jpg', 'No', '0'),
(247, 4, 'Cucumber Chicken soup', 'Soup', '105.00', 't63.jpg', 'No', '0'),
(248, 4, 'Chicken Manchow Soup', 'Soup', '105.00', 't64.jpg', 'No', '0'),
(249, 4, 'Murgh Adarki Shorba', 'Dish', '105.00', 't65.jpg', 'No', '0'),
(250, 4, 'French Fries', 'Fries', '85.00', 't66.jpg', 'No', '0'),
(251, 4, 'Gobhi Manchurian ', 'Delightful Dish', '165.00', 't67.jpg', 'No', '0'),
(252, 4, 'Chilli  Paneer', 'Delightful Dish', '185.00', 't68.jpg', 'No', '0'),
(253, 4, 'Chilli Mushroom', 'Delightful Dish', '185.00', 't69.jpg', 'No', '0'),
(254, 4, 'Mushroom Salt and Pepper', 'Delightful Dish', '185.00', 't70.jpg', 'No', '0'),
(255, 4, 'Honey Chilli Potato', 'Delightful Dish', '165.00', 't71.jpg', 'No', '0'),
(256, 4, 'Chilli Gobhi', 'Delightful Dish', '185.00', 't72.jpg', 'No', '0'),
(257, 4, 'Gobhi 65', 'Delightful Dish', '165.00', 't73.jpg', 'No', '0'),
(258, 4, 'Mushroom 65', 'Delightful Dish', '165.00', 't74.jpg', 'No', '0'),
(259, 4, 'Paneer 65', 'Delightful Dish', '165.00', 't75.jpg', 'No', '0'),
(260, 4, 'Jaipuri Bhindi', 'Delightful Dish', '185.00', 't76.jpg', 'No', '0'),
(261, 4, 'Veg Manchurian', 'Delightful Dish', '125.00', 't77.jpg', 'No', '0'),
(262, 4, 'Aloo pratha (2 pcs) with butter+ curd+tea+pickle', 'Dish', '165.00', 't78.jpg', 'No', '0'),
(263, 4, 'Egg Chilli', 'Delightful Dish', '185.00', 't79.jpg', 'No', '0'),
(264, 4, 'Chicken Manchurian', 'Delightful Dish', '305.00', 't80.jpg', 'No', '0'),
(265, 4, 'Chicken 65', 'Delightful Dish', '305.00', 't81.jpg', 'No', '0'),
(266, 4, 'Chilli  Chicken (half)', 'Delightful Dish', '305.00', 't82.jpg', 'No', '0'),
(267, 4, 'Chilli  Chicken  (full)', 'Delightful Dish', '565.00', 't82.jpg', 'No', '0'),
(268, 4, 'Red Sauce Pasta', 'Delightful Dish', '85.00', 't83.jpg', 'No', '0'),
(269, 4, 'White Sauce Pasta', 'Delightful Dish', '85.00', 't84.jpg', 'No', '0'),
(270, 4, 'Mix Sauce Pasta', 'Delightful Dish', '105.00', 't85.jpg', 'No', '0'),
(271, 4, 'Veg Hakka Noodles (half)', 'Noodles', '65.00', 't86.jpg', 'No', '0'),
(272, 4, 'Veg Hakka Noodles (full)', 'Noodles', '105.00', 't86.jpg', 'No', '0'),
(273, 4, 'Egg Hakka Noodles  (half)', 'Noodles', '95.00', 't87.jpg', 'No', '0'),
(274, 4, 'Egg Hakka Noodles (full)', 'Noodles', '155.00', 't87.jpg', 'No', '0'),
(275, 4, 'Chicken Hakka Noodles  (half)', 'Noodles', '125.00', 't88.jpg', 'No', '0'),
(276, 4, 'Chicken Hakka Noodles (full)', 'Noodles', '185.00', 't88.jpg', 'No', '0'),
(277, 4, 'Paneer Pakoda', 'Pakoda', '125.00', 'a35jpg', 'No', '0'),
(278, 4, 'Mix Pakoda', 'Pakoda', '125.00', 'a38.jpg', 'No', '0'),
(279, 4, 'Chicken Pakoda (half)', 'Pakoda', '255.00', 't89.jpg', 'No', '0'),
(280, 4, 'Chicken Pakoda (full)', 'Pakoda', '485.00', 't89.jpg', 'No', '0'),
(281, 4, 'Chicken Fry (half)', 'Dish', '255.00', 't90.jpg', 'No', '0'),
(282, 4, 'Chicken Fry  (full)', 'Dish', '485.00', 't90.jpg', 'No', '0'),
(283, 4, 'Aloo Roll (half)', 'Rolls', '35.00', 't91.jpg', 'No', '0'),
(284, 4, 'Aloo Roll (full)', 'Rolls', '45.00', 't91.jpg', 'No', '0'),
(285, 4, 'Veggie Roll (half)', 'Rolls', '35.00', 't92.jpg', 'No', '0'),
(286, 4, 'Veggie Roll (full)', 'Rolls', '45.00', 't92.jpg', 'No', '0'),
(287, 4, 'Egg Roll (half)', 'Rolls', '45.00', 't93.jpg', 'No', '0'),
(288, 4, 'Egg Roll (full)', 'Rolls', '55.00', 't93.jpg', 'No', '0'),
(289, 4, 'Soya Roll (half)', 'Rolls', '55.00', 't94.jpg', 'No', '0'),
(290, 4, 'Soya Roll (full)', 'Rolls', '65.00', 't94.jpg', 'No', '0'),
(291, 4, 'Paneer Roll (half)', 'Rolls', '55.00', 't95.jpg', 'No', '0'),
(292, 4, 'Paneer Roll (full)', 'Rolls', '65.00', 't95.jpg', 'No', '0'),
(293, 4, 'Spicy Achari Paneer Roll (half)', 'Rolls', '105.00', 't96.jpg', 'No', '0'),
(294, 4, 'Spicy Achari Paneer Roll (full)', 'Rolls', '125.00', 't96.jpg', 'No', '0'),
(295, 4, 'Semiya Payasam', 'Vermicelli kheer', '105.00', 't97.jpg', 'No', '0'),
(296, 4, 'Hot Gulab Jamun (2 pcs)', 'Sweet', '65.00', 't98.jpg', 'No', '0'),
(297, 4, 'Onion Pratha', 'Dish', '55.00', 't99.jpg', 'No', '0'),
(298, 4, 'Mix Pratha', 'Dish', '55.00', 'a29.jpg', 'No', '0'),
(299, 4, 'Gobhi Pratha', 'Dish', '55.00', 'a30.jpg', 'No', '0'),
(300, 4, 'Masala Omlette', 'Dish', '55.00', 't100.jpg', 'No', '0'),
(301, 4, 'Green Tea', 'Beverage', '35.00', 't101.jpg', 'No', '0'),
(302, 2, 'Dal Fry', 'Delicious Lentil', '75.00', 'a1.jpg', 'No', '1'),
(303, 2, 'Dal Makhani', 'Delicious Lentil', '115.00', 'a2.jpg', 'No', '1'),
(304, 2, 'Aloo Matar ', 'Delightful Dish', '65.00', 'a3.jpg', 'No', '1'),
(305, 2, 'Mix Veg ', 'Dish', '105.00', 'a4.jpg', 'No', '1'),
(306, 2, 'Chana Masala', 'Dish', '95.00', 'a5.jpg', 'No', '1'),
(307, 2, 'Aloo Dum', 'Delightful Dish', '125.00', 'a6.jpg', 'No', '1'),
(308, 2, 'Aloo Shimla', 'Delightful Dish', '85.00', 'a7.jpg', 'No', '1'),
(309, 2, 'Aloo Jeera', 'Delightful Dish', '85.00', 'a8.jpg', 'No', '1'),
(310, 2, 'Matar Paneer', 'Indian Dish', '125.00', 'a9.jpg', 'No', '1'),
(311, 2, 'Shahi Paneer', 'Indian Dish', '165.00', 'a10.jpg', 'No', '1'),
(312, 2, 'Kadai Paneer', 'Indian Dish', '225.00', 'a11.jpg', 'No', '1'),
(313, 2, 'Chilli Paneer', 'Indian Dish', '205.00', 'a12.jpg', 'No', '1'),
(314, 2, 'Cheese Butter Masala', 'Indian Dish', '185.00', 'a13.jpg', 'No', '1'),
(315, 2, 'Malai Kofta', 'Indian Dish', '195.00', 'a14.jpg', 'No', '1'),
(316, 2, 'Mughlai Paneer', 'Indian Dish', '225.00', 'a15.jpg', 'No', '1'),
(317, 2, 'Paalak Paneer', 'Indian Dish', '125.00', 'a16.jpg', 'No', '1'),
(318, 2, 'Paneer Bhujia ', 'Indian Dish', '145.00', 'a17.jpg', 'No', '1'),
(319, 2, 'Cheese Tomato', 'Tomato Dish ', '185.00', 'a18.jpg', 'No', '1'),
(320, 2, 'Aloo Chole', 'Delightful Dish', '65.00', 'a19.jpg', 'No', '1'),
(321, 2, 'Baingan Bharta', 'Roasted Dish', '85.00', 'a20.jpg', 'No', '1'),
(322, 2, 'Kdhee Pakoda', 'Dish', '65.00', 'a21.jpg', 'No', '1'),
(323, 2, 'Plain Chawal', 'Rice', '65.00', 'a22.jpg', 'No', '1'),
(324, 2, 'Jeera Rice', 'Rice', '95.00', 'a23.jpg', 'No', '1'),
(325, 2, 'Matra Pulav', 'Rice', '125.00', 'a24.jpg', 'No', '1'),
(326, 2, 'Veg Pulav', 'Rice', '145.00', 'a25.jpg', 'No', '1'),
(327, 2, 'Tandori - Paratha', 'Dish', '45.00', 'a26.jpg', 'No', '1'),
(328, 2, 'Tava - Paratha', 'Dish', '45.00', 'a27.jpg', 'No', '1'),
(329, 2, 'Aloo Piyaj - Paratha', 'Delightful Dish', '45.00', 'a28.jpg', 'No', '1'),
(330, 2, 'Mix - Paratha', 'Dish', '55.00', 'a29.jpg', 'No', '1'),
(331, 2, 'Gobhi - Paratha', 'Dish', '55.00', 'a30.jpg', 'No', '1'),
(332, 2, 'Muli - Paratha', 'Dish', '45.00', 'a31.jpg', 'No', '1'),
(333, 2, 'Paneer - Paratha', 'Dish', '55.00', 'a32.jpg', 'No', '1'),
(334, 2, 'Butter Toast', 'Dish', '35.00', 'a33.jpg', 'No', '1'),
(335, 2, 'Laccha - Paratha', 'Dish', '45.00', 'a34.jpg', 'No', '1'),
(336, 2, 'Paneer - Pakoda', 'Pakoda', '165.00', '606883ab56599.jpg', 'No', '1'),
(337, 2, 'Piyaj - Pakoda', 'Pakoda', '75.00', 'a36.jpg', 'No', '1'),
(338, 2, 'Aloo - Pakoda', 'Pakoda', '65.00', 'a37.jpg', 'No', '1'),
(339, 2, 'Mix - Pakoda', 'Pakoda', '125.00', 'a38.jpg', 'No', '1'),
(340, 2, 'Papad', 'Dish', '25.00', 'a39.jpg', 'No', '1'),
(341, 2, 'Maggi', 'Noodles', '45.00', 'a40.jpg', 'No', '1'),
(342, 2, 'Dahi Plain', 'Curd', '45.00', 'a41.jpg', 'No', '1'),
(343, 2, 'Mix Raita', 'Curd', '55.00', 'a42.jpg', 'No', '1'),
(344, 2, 'Bundi Raita', 'Curd', '55.00', 'a43.jpg', 'No', '1'),
(345, 2, 'Salad', 'Raw Veggies', '45.00', 'a44.jpg', 'No', '1'),
(346, 2, 'Mattha', 'Curd', '45.00', 'a45.jpg', 'No', '1'),
(347, 2, 'Plain - Roti', 'Chappati', '12.00', 'a46.jpg', 'No', '1'),
(348, 2, 'Butter - Roti', 'Chappati', '15.00', 'a47.jpg', 'No', '1'),
(349, 2, 'Missi - Roti', 'Chappati', '20.00', 'a48.jpg', 'No', '1'),
(350, 2, 'Tava - Roti', 'Chappati', '15.00', 'a49.jpg', 'No', '1'),
(351, 2, 'Tava Butter - Roti', 'Chappati', '17.00', 'a50.jpg', 'No', '1'),
(352, 2, 'Stuff - Naan ', 'Chappati', '75.00', 'a51.jpg', 'No', '1'),
(353, 2, 'Tandori - Naan', 'Chappati', '35.00', 'a52.jpg', 'No', '1'),
(354, 2, 'Butter - Naan', 'Chappati', '45.00', 'a53.jpg', 'No', '1'),
(355, 2, 'Chai ', 'Chappati', '15.00', 'a54.jpg', 'No', '1'),
(356, 2, 'Special Chai', 'Beverage', '20.00', 'a55.jpg', 'No', '1'),
(357, 2, 'Coffee', 'Beverage', '35.00', 'a56.jpg', 'No', '1'),
(358, 2, 'Cold Coffee', 'Beverage', '45.00', 'a57.jpg', 'No', '1'),
(359, 2, 'Sweet Lassi ', 'Tasty', '45.00', 'a58.jpg', 'No', '1'),
(360, 2, 'Salty Lassi ', 'Tasty', '45.00', 'a59.jpg', 'No', '1'),
(361, 5, 'Fruit and Nut - Cake', 'Cake', '450.00', 'c1.jpg', 'No', '1'),
(362, 5, 'White Forest - Cake', 'Cake', '400.00', 'c2.jpg', 'No', '1'),
(363, 5, 'Chocolate - Cake', 'Cake', '350.00', 'c3.jpg', 'No', '1'),
(364, 5, 'Butterscotch - Cake', 'Cake', '300.00', 'c4.jpg', 'No', '1'),
(365, 5, 'Pineapple - Cake', 'Cake', '300.00', 'c5.jpg', 'No', '1'),
(366, 5, 'Strawberry - Cake', 'Cake', '300.00', 'c6.jpg', 'No', '1'),
(367, 5, 'Black Forest - Cake', 'Cake', '300.00', 'c7.jpg', 'No', '1'),
(368, 5, 'Fruit Cake - Cake', 'Cake', '400.00', 'c8.jpg', 'No', '1'),
(369, 10, 'cold coffee', 'bar bar pio', '100.00', '606e9efae4fce.jpg', 'No', '1'),
(370, 10, 'burger bada wala', 'dubara ni khane ge', '29.00', '606e9f2838b3d.png', 'No', '1'),
(371, 11, 'Aloo chhole', 'Fresh Veg', '95.00', 'n1.jpg', 'No', '1'),
(372, 11, 'Aloo matar', 'Fresh Veg', '95.00', 'n2.jpg', 'No', '1'),
(373, 11, 'Mix Veg', 'Fresh Veg', '125.00', 'n3.jpg', 'No', '1'),
(374, 11, 'Gobhi Masala', 'Fresh Veg', '125.00', 'n4.jpg', 'No', '1'),
(375, 11, 'Bhindi Onion', 'Fresh Veg', '95.00', 'n5.jpg', 'No', '1'),
(376, 11, 'Bhindi Masala', 'Fresh Veg', '125.00', 'n6.jpg', 'No', '1'),
(377, 11, 'Special Baingan Bharta', 'Fresh Veg', '115.00', 'n7.jpg', 'No', '1'),
(378, 11, 'Dum Aloo', 'Fresh Veg', '115.00', 'n8.jpg', 'No', '1'),
(379, 11, 'Jeera Aloo', 'Fresh Veg', '95.00', 'n9.jpg', 'No', '1'),
(380, 11, 'Spl. Kadhi Pakoda', 'Fresh Veg', '95.00', 'n10.jpg', 'No', '1'),
(381, 11, 'Aloo Gobhi', 'Fresh Veg', '95.00', 'n11.jpg', 'No', '1'),
(382, 11, 'Stuff Dum Aloo', 'Fresh Veg', '185.00', 'n12.jpg', 'No', '1'),
(383, 11, 'Kadhai Paneer ', 'Paneer Special', '225.00', 'n13.jpg', 'No', '1'),
(384, 11, 'Paneer Butter Masala', 'Paneer Special', '225.00', 'n14.jpg', 'No', '1'),
(385, 11, 'Khoya Paneer', 'Paneer Special', '225.00', 'n15.jpg', 'No', '1'),
(386, 11, 'Malai Paneer', 'Paneer Special', '205.00', 'n16.jpg', 'No', '1'),
(387, 11, 'Palak Paneer', 'Paneer Special', '165.00', 'n17.jpg', 'No', '1'),
(388, 11, 'Shahi Paneer', 'Paneer Special', '185.00', 'n18.jpg', 'No', '1'),
(389, 11, 'Matar Paneer', 'Paneer Special', '165.00', 'n19.jpg', 'No', '1'),
(390, 11, 'Paneer Bhurji', 'Paneer Special', '205.00', 'n20.jpg', 'No', '1'),
(391, 11, 'Spl. Handi Paneer', 'Paneer Special', '245.00', 'n21.jpg', 'No', '1'),
(392, 11, 'Paneer Do Pyaza', 'Paneer Special', '225.00', 'n22.jpg', 'No', '1'),
(393, 11, ' Paneer Tikka Masala ', 'Paneer Special', '225.00', 'n23.jpg', 'No', '1'),
(394, 11, 'Chilli Paneer ', 'Paneer Special', '225.00', 'n24.jpg', 'No', '1'),
(395, 11, 'Malai Kofta ', 'Paneer Special', '205.00', 'n25.jpg', 'No', '1'),
(396, 11, 'Stuffed Tomato', 'Paneer Special', '195.00', 'n26.jpg', 'No', '1'),
(397, 11, 'Veg Kofta', 'Paneer Special', '195.00', 'n27.jpg', 'No', '1'),
(398, 11, 'Paneer Pasanda ', 'Paneer Special', '245.00', 'n28.jpg', 'No', '1'),
(399, 11, 'Cheez Tomato ', 'Paneer Special', '225.00', 'n29.jpg', 'No', '1'),
(400, 11, 'Dal Makhni(Udad Rajma)', 'Special Dal', '125.00', 'n30.jpg', 'No', '1'),
(401, 11, 'Dal Tadka(Arhar)', 'Special Dal', '115.00', 'n31.jpg', 'No', '1'),
(402, 11, 'Dal Fry(Udad Chana)', 'Special Dal', '85.00', 'n32.jpg', 'No', '1'),
(403, 11, 'Chana Masala Gravy', 'Special Dal', '125.00', 'n33.jpg', 'No', '1'),
(404, 11, 'Chana Masala Dry', 'Special Dal', '105.00', 'n34.jpg', 'No', '1'),
(405, 11, 'Matar Masala', 'Special Dal', '125.00', 'n35.jpg', 'No', '1'),
(406, 11, 'Malai Matar', 'Special Dal', '145.00', 'n36.jpg', 'No', '1'),
(407, 11, 'Mashroom Masala', 'Special Dal', '205.00', 'n37.jpg', 'No', '1'),
(408, 11, 'Mashroom Do Pyaza', 'Special Dal', '225.00', 'n38.jpg', 'No', '1'),
(409, 11, 'Matar Mashroom', 'Special Dal', '165.00', 'n39.jpg', 'No', '1'),
(410, 11, 'Dal Handi(Mix) ', 'Special Dal', '145.00', 'n40.jpg', 'No', '1'),
(411, 11, 'Aloo Paratha Tandoori', 'Breakfast Tandoor', '55.00', 'a32.jpg', 'No', '1'),
(412, 11, 'Aloo Paratha Tawa', 'Breakfast Tandoor', '65.00', 'n42.jpg', 'No', '1'),
(413, 11, 'Aloo Pyaz Paratha Tandoori', 'Breakfast Tandoor', '55.00', 'n43.jpg', 'No', '1'),
(414, 11, 'Aloo Pyaz Paratha Tawa', 'Breakfast Tandoor', '65.00', 'n44.jpg', 'No', '1'),
(415, 11, 'Pyaz Paratha Tandoori', 'Breakfast Tandoor', '55.00', 'n45.jpg', 'No', '1'),
(416, 11, 'Pyaz Paratha Tawa', 'Breakfast Tandoor', '65.00', 'n46.jpg', 'No', '1'),
(417, 11, 'Gobhi Paratha Tandoori', 'Breakfast Tandoor', '65.00', 'n47.jpg', 'No', '1'),
(418, 11, 'Gobhi Paratha Tawa', 'Breakfast Tandoor', '75.00', 'n48.jpg', 'No', '1'),
(419, 11, 'Mooli Paratha Tandoori', 'Breakfast Tandoor', '55.00', 'n49.jpg', 'No', '1'),
(420, 11, 'Mooli Paratha Tawa', 'Breakfast Tandoor', '65.00', 'n50.jpg', 'No', '1'),
(421, 11, 'Paneer Paratha Tandoori', 'Breakfast Tandoor', '85.00', 'n51.jpg', 'No', '1'),
(422, 11, 'Paneer Paratha Tawa', 'Breakfast Tandoor', '95.00', 'n52.jpg', 'No', '1'),
(423, 11, 'Mix Paratha Tandoori ', 'Breakfast Tandoor', '75.00', 'n53.jpg', 'No', '1'),
(424, 11, 'Mix Paratha Tawa', 'Breakfast Tandoor', '85.00', 'n54.jpg', 'No', '1'),
(425, 11, 'Butter Toast(4Pcs.)', 'Breakfast Tandoor', '55.00', 'n55.jpg', 'No', '1'),
(426, 11, 'Onion Salad', 'Special Salad', '35.00', 'n56.jpg', 'No', '1'),
(427, 11, 'Kheera Salad', 'Special Salad', '35.00', 'n57.jpg', 'No', '1'),
(428, 11, 'Tomato Salad', 'Special Salad', '35.00', 'n58.jpg', 'No', '1'),
(429, 11, 'Green Salad ', 'Special Salad', '45.00', 'n59.jpg', 'No', '1'),
(430, 11, 'Tandoori Roti', 'Tandoori Taste', '15.00', 'n60.jpg', 'No', '1'),
(431, 11, 'Butter Roti ', 'Tandoori Taste', '20.00', 'n61.jpg', 'No', '1'),
(432, 11, 'Butter Naan ', 'Tandoori Taste', '65.00', 'n62.jpg', 'No', '1'),
(433, 11, 'Plain Naan ', 'Tandoori Taste', '45.00', 'n63.jpg', 'No', '1'),
(434, 11, 'Lachha Paratha ', 'Tandoori Taste', '45.00', 'n64.jpg', 'No', '1'),
(435, 11, 'Missi Roti', 'Tandoori Taste', '35.00', 'n65.jpg', 'No', '1'),
(436, 11, 'Stuffed Naan', 'Tandoori Taste', '85.00', 'n66.jpg', 'No', '1'),
(437, 11, 'Plain Rice ', 'Special Rice', '85.00', 'n67.jpg', 'No', '1'),
(438, 11, 'Jeera Rice', 'Special Rice', '105.00', 'n68.jpg', 'No', '1'),
(439, 11, 'Matar Pulao', 'Special Rice', '145.00', 'n69.jpg', 'No', '1'),
(440, 11, 'Veg Biryani', 'Special Rice', '165.00', 'n70.jpg', 'No', '1'),
(441, 11, 'Veg Pulao', 'Special Rice', '165.00', 'n71.jpg', 'No', '1'),
(442, 11, 'Paneer Pulao', 'Special Rice', '185.00', 'n72.jpg', 'No', '1'),
(443, 11, 'Fried Rice', 'Special Rice', '155.00', 'n73.jpg', 'No', '1'),
(444, 11, 'Spl. Tea', 'Mineral Baar', '25.00', 'n74.jpg', 'No', '1'),
(445, 11, 'Coffee', 'Mineral Baar', '35.00', 'n75.jpg', 'No', '1'),
(446, 11, 'Lassi ', 'Mineral Baar', '55.00', 'n76.jpg', 'No', '1'),
(447, 11, 'Chhach', 'Mineral Baar', '45.00', 'n77.jpg', 'No', '1'),
(448, 11, 'Plain Dahi', 'Mineral Baar', '55.00', 'n78.jpg', 'No', '1'),
(449, 11, 'Boondi Raita', 'Mineral Baar', '65.00', 'n79.jpg', 'No', '1'),
(450, 11, 'Mix Raita ', 'Mineral Baar', '65.00', 'n80.jpg', 'No', '1'),
(451, 11, 'Kheera Raita ', 'Mineral Baar', '65.00', 'n81.jpg', 'No', '1'),
(452, 11, 'Onion Raita ', 'Mineral Baar', '65.00', 'n82.jpg', 'No', '1'),
(453, 11, 'Aloo Raita ', 'Mineral Baar', '65.00', 'n83.jpg', 'No', '1'),
(454, 11, 'Dry Papad', 'Papad', '25.00', 'n84.jpg', 'No', '1'),
(455, 11, 'Fry Papad', 'Papad', '30.00', 'n85.jpg', 'No', '1'),
(456, 11, 'Masala Papad ', 'Papad', '40.00', 'n86.jpg', 'No', '1'),
(457, 11, 'Paneer Pakoda', 'Pakoda', '185.00', 'n87.jpg', 'No', '1'),
(458, 11, 'Mix Pakoda ', 'Pakoda', '155.00', 'n88.jpg', 'No', '1'),
(459, 11, 'Aloo Pyaz Pakoda', 'Pakoda', '125.00', 'n89.jpg', 'No', '1'),
(460, 11, 'test prod', 'tesing prod', '1.00', '60bcf8bf2cac9.png', 'No', '1'),
(461, 4, 'Butter Chicken - Half', 'curry of chicken with butter and cream sauce', '310.00', '60bf3d4c849b8.jpg', 'No', '1'),
(462, 4, 'Butter Chicken - Full', 'curry of chicken with butter and cream sauce', '590.00', '60bf3d4f8dad5.jpg', 'No', '1'),
(463, 12, 'Paneer Naan', 'Tandoori Item', '65.00', 'r1.jpg', 'No', '1'),
(464, 12, 'Stuffed Naan', 'Tandoori Item', '55.00', 'r2.jpg', 'No', '1'),
(465, 12, 'Garlic Naan', 'Tandoori Item', '50.00', 'r3.jpg', 'No', '1'),
(466, 12, 'Butter Naan', 'Tandoori Item', '40.00', 'r4.jpg', 'No', '1'),
(467, 12, 'Plain Naan', 'Tandoori Item', '30.00', 'r5.jpg', 'No', '1'),
(468, 12, 'Missi Roti', 'Tandoori Item', '35.00', 'r6.jpg', 'No', '1'),
(469, 12, 'Tandoori Roti', 'Tandoori Item', '10.00', 'r7.jpg', 'No', '1'),
(470, 12, 'Butter Roti', 'Tandoori Item', '15.00', 'r8.jpg', 'No', '1'),
(471, 12, 'Plain Tawa Roti', 'Tandoori Item', '15.00', 'r9.jpg', 'No', '1'),
(472, 12, 'Plain Paratha', 'Tandoori Item', '35.00', 'r10.jpg', 'No', '1'),
(473, 12, 'Aloo Paratha', 'Tandoori Item', '45.00', 'r11.jpg', 'No', '1'),
(474, 12, 'Piyaz Paratha', 'Tandoori Item', '50.00', 'r12.jpg', 'No', '1'),
(475, 12, 'Gobhi Paratha (Seasonal)', 'Tandoori Item', '50.00', 'r13.jpg', 'No', '1'),
(476, 12, 'Mooli Paratha (Seasonal) ', 'Tandoori Item', '50.00', 'r14.jpg', 'No', '1'),
(477, 12, 'Mix Paratha', 'Tandoori Item', '55.00', 'r15.jpg', 'No', '1'),
(478, 12, 'Paneer Paratha', 'Tandoori Item', '65.00', 'r16.jpg', 'No', '1'),
(479, 12, 'Aaloo Payaz Paratha', 'Tandoori Item', '50.00', 'r17.jpg', 'No', '1'),
(480, 12, 'Lachha Paratha', 'Tandoori Item', '35.00', 'r18.jpg', 'No', '1'),
(481, 12, 'Veg Chowmein', 'Fast Food', '65.00', 'r19.jpg', 'No', '1'),
(482, 12, 'Paneer Chowmein', 'Fast Food', '95.00', 'r20.jpg', 'No', '1'),
(483, 12, 'Hakka Noodles', 'Fast Food', '75.00', 'r21.jpg', 'No', '1'),
(484, 12, 'Plain Meggi', 'Fast Food', '35.00', 'r22.jpg', 'No', '1'),
(485, 12, 'Vegetable Maggi', 'Fast Food', '55.00', 'r23.jpg', 'No', '1'),
(486, 12, 'French Fries', 'Fast Food', '85.00', 'r24.jpg', 'No', '1'),
(487, 12, 'Mix Pakoda', 'Fast Food', '110.00', 'r25.jpg', 'No', '1'),
(488, 12, 'Paneer Pakoda', 'Fast Food', '150.00', 'r26.jpg', 'No', '1'),
(489, 12, 'Burger', 'Fast Food', '45.00', 'r27.jpg', 'No', '1'),
(490, 12, 'Cheese Burger', 'Fast Food', '75.00', 'r28.jpg', 'No', '1'),
(491, 12, 'Butter Slice', 'Fast Food', '45.00', 'r29.jpg', 'No', '1'),
(492, 12, 'Bread Toste', 'Fast Food', '55.00', 'r30.jpg', 'No', '1'),
(493, 12, 'Band Butter', 'Fast Food', '35.00', 'r31.jpg', 'No', '1'),
(494, 12, 'Veg Sandwish', 'Fast Food', '55.00', 'r32.jpg', 'No', '1'),
(495, 12, 'Paneer Sandwich', 'Fast Food', '75.00', 'r33.jpg', 'No', '1'),
(496, 12, 'Dry Papad', 'Fast Food', '25.00', 'r34.jpg', 'No', '1'),
(497, 12, 'Shahi Paneer', 'Main Course', '150.00', 'r35.jpg', 'No', '1'),
(498, 12, 'Kadhai Paneer', 'Main Course', '190.00', 'r36.jpg', 'No', '1'),
(499, 12, ' Paneer Butter Masala', 'Main Course', '200.00', 'r37.jpg', 'No', '1'),
(500, 12, ' Paneer Bujji', 'Main Course', '190.00', 'r38.jpg', 'No', '1'),
(501, 12, 'Paneer Lajawab', 'Main Course', '200.00', 'r39.jpg', 'No', '1'),
(502, 12, 'Paneer Aashiyana', 'Main Course', '235.00', 'r40.jpg', 'No', '1'),
(503, 12, 'Paneer Pasanda', 'Main Course', '195.00', 'r41.jpg', 'No', '1'),
(504, 12, 'Paneer Chilli', 'Main Course', '240.00', 'r42.jpg', 'No', '1'),
(505, 12, 'Ginger Paneer', 'Main Course', '220.00', 'r43.jpg', 'No', '1'),
(506, 12, 'Mutter Paneer ', 'Main Course', '140.00', 'r44.jpg', 'No', '1'),
(507, 12, 'Handi Paneer', 'Main Course', '220.00', 'r45.jpg', 'No', '1'),
(508, 12, 'Paneer Do Pyaza', 'Main Course', '185.00', 'r46.jpg', 'No', '1'),
(509, 12, 'Malai Kofta ', 'Main Course', '180.00', 'r47.jpg', 'No', '1'),
(510, 12, 'Khoya Paneer', 'Main Course', '175.00', 'r48.jpg', 'No', '1'),
(511, 12, 'Cheese Tomato', 'Main Course', '195.00', 'r49.jpg', 'No', '1'),
(512, 12, 'Palak Paneer', 'Main Course', '140.00', 'r50.jpg', 'No', '1'),
(513, 12, 'Panaeer Hariyali', 'Main Course', '175.00', 'r51.jpg', 'No', '1'),
(514, 12, 'Mix Veg', 'Vegetable', '120.00', 'r52.jpg', 'No', '1'),
(515, 12, 'Dum Aaloo', 'Vegetable', '120.00', 'r53.jpg', 'No', '1'),
(516, 12, 'Aallo Jeera ', 'Vegetable', '75.00', 'r54.jpg', 'No', '1'),
(517, 12, 'Aallo Chole', 'Vegetable', '80.00', 'r55.jpg', 'No', '1'),
(518, 12, 'Aaloo Mutter ', 'Vegetable', '80.00', 'r56.jpg', 'No', '1'),
(519, 12, 'Aaloo Gobhi ', 'Vegetable', '85.00', 'r57.jpg', 'No', '1'),
(520, 12, 'Aaloo Palak', 'Vegetable', '85.00', 'r58.jpg', 'No', '1'),
(521, 12, 'Chana Masala', 'Vegetable', '120.00', 'r59.jpg', 'No', '1'),
(522, 12, 'Dal Makhni', 'Dal', '120.00', 'r60.jpg', 'No', '1'),
(523, 12, 'Peeli Dal ', 'Dal', '100.00', 'r61.jpg', 'No', '1'),
(524, 12, 'Dal Tadka ', 'Dal', '100.00', 'r62.jpg', 'No', '1'),
(525, 12, 'Dal fry', 'Dal', '75.00', 'r63.jpg', 'No', '1'),
(526, 12, 'Green Salad', 'Salad', '45.00', 'r64.jpg', 'No', '1'),
(527, 12, 'Onion Salad', 'Salad', '25.00', 'r65.jpg', 'No', '1'),
(528, 12, 'Kheera Salad', 'Salad', '35.00', 'r66.jpg', 'No', '1'),
(529, 12, 'Tomato salad', 'Salad', '35.00', 'r67.jpg', 'No', '1'),
(530, 12, 'Mix Raita', 'Raita', '75.00', 'r68.jpg', 'No', '1'),
(531, 12, 'Bundi Raita', 'Raita', '65.00', 'r69.jpg', 'No', '1'),
(532, 12, 'Aaloo Raita', 'Raita', '65.00', 'r70.jpg', 'No', '1'),
(533, 12, 'Kheera Raita', 'Raita', '65.00', 'r71.jpg', 'No', '1'),
(534, 12, 'Plain Dahi', 'Raita', '50.00', 'r72.jpg', 'No', '1'),
(535, 12, 'Plain Rice ', 'Rice', '55.00', 'r73.jpg', 'No', '1'),
(536, 12, 'Jeera Rice ', 'Rice', '70.00', 'r74.jpg', 'No', '1'),
(537, 12, 'Fried Rice ', 'Rice', '75.00', 'r75.jpg', 'No', '1'),
(538, 12, 'Veg Pulao', 'Rice', '85.00', 'r76.jpg', 'No', '1'),
(539, 12, 'Paneer Pulao', 'Rice', '110.00', 'r77.jpg', 'No', '1'),
(540, 12, 'Matar Pulao', 'Rice', '75.00', 'r78.jpg', 'No', '1'),
(541, 12, 'Kulhad Tea', 'Beverage', '25.00', 'r79.jpg', 'No', '1'),
(542, 12, 'Hot Coffee', 'Beverage', '30.00', 'r80.jpg', 'No', '1'),
(543, 12, 'Cold Coffee', 'Beverage', '65.00', 'r81.jpg', 'No', '1'),
(544, 12, 'Special Tea ', 'Beverage', '20.00', 'r82.jpg', 'No', '1'),
(545, 12, 'Lemon Tea', 'Beverage', '25.00', 'r83.jpg', 'No', '1'),
(546, 12, 'Sweet Lassi', 'Beverage', '45.00', 'r84.jpg', 'No', '1'),
(547, 12, 'Namkeen Lassi', 'Beverage', '45.00', 'r85.jpg', 'No', '1'),
(548, 12, 'Mineral Water', 'Beverage', '20.00', 'r86.jpg', 'No', '1'),
(549, 12, 'Chips', 'Beverage', '30.00', 'r87.jpg', 'No', '1'),
(550, 12, 'Cold Drinks', 'Beverage', '40.00', 'r88.jpg', 'No', '1'),
(551, 12, 'Ice Cream', 'Beverage', '40.00', 'r89.jpg', 'No', '1'),
(552, 12, 'Soup', 'Beverage', '45.00', 'r90.jpg', 'No', '1'),
(553, 13, 'Aloo Chhole', 'Fresh Veg', '110.00', 'n1.jpg', 'No', '1'),
(554, 13, 'Aloo Matar', 'Fresh Veg', '110.00', 'n2.jpg', 'No', '1'),
(555, 13, 'Mix Veg', 'Fresh Veg', '150.00', 'n3.jpg', 'No', '1'),
(556, 13, 'Gobhi Masala', 'Fresh Veg', '130.00', 'n4.jpg', 'No', '1'),
(557, 13, 'Bhindi Masala', 'Fresh Veg', '130.00', 'n5.jpg', 'No', '1'),
(558, 13, 'Bhindi Onion', 'Fresh Veg', '130.00', 'n6.jpg', 'No', '1'),
(559, 13, 'Special Baingun Bharta', 'Fresh Veg', '150.00', 'n7.jpg', 'No', '1'),
(560, 13, 'Dum Aloo', 'Fresh Veg', '150.00', 'n8.jpg', 'No', '1'),
(561, 13, 'Jeera Aloo', 'Fresh Veg', '150.00', 'n9.jpg', 'No', '1'),
(562, 13, 'Special Kadhi Pakora', 'Fresh Veg', '110.00', 'n10.jpg', 'No', '0'),
(563, 13, 'Aloo Gobhi', 'Fresh Veg', '110.00', 'n11.jpg', 'No', '1'),
(564, 13, 'Stuffed Dum Aloo', 'Fresh Veg', '210.00', 'n12.jpg', 'No', '1'),
(565, 13, 'Sev Bhaji', 'Fresh Veg', '170.00', 'p1.jpg', 'No', '1'),
(566, 13, 'Sev Tamoto', 'Fresh Veg', '130.00', 'p2.jpg', 'No', '1'),
(567, 13, 'Kashmiri Dum Aloo', 'Fresh Veg', '270.00', 'p3.jpg', 'No', '0'),
(568, 13, 'Kadhai Paneer', 'Paneer Special', '230.00', 'r36.jpg', 'No', '1'),
(569, 13, 'Paneer Butter Masala', 'Paneer Special', '230.00', 'r37.jpg', 'No', '1'),
(570, 13, 'Khoya Paneer', 'Paneer Special', '250.00', 'r48.jpg', 'No', '1'),
(571, 13, 'Malai Paneer', 'Paneer Special', '230.00', 'n16.jpg', 'No', '1'),
(572, 13, 'Palak Paneer', 'Paneer Special', '150.00', 'n17.jpg', 'No', '0'),
(573, 13, 'Shahi Paneer', 'Paneer Special', '170.00', 'n18.jpg', 'No', '1'),
(574, 13, 'Matar Paneer', 'Paneer Special', '150.00', 'n19.jpg', 'No', '1'),
(575, 13, ' Paneer Bhurji', 'Paneer Special', '250.00', 'n20.jpg', 'No', '1'),
(576, 13, 'Special Handi Paneer', 'Paneer Special', '270.00', 'n21.jpg', 'No', '1'),
(577, 13, ' Paneer Tikka Masala', 'Paneer Special', '270.00', 'n23.jpg', 'No', '1'),
(578, 13, 'Chilli Paneer', 'Paneer Special', '270.00', 'n24.jpg', 'No', '1'),
(579, 13, 'Malai Kofta', 'Paneer Special', '250.00', 'n25.jpg', 'No', '1'),
(580, 13, 'Stuffed Tomato', 'Paneer Special', '230.00', 'n26.jpg', 'No', '1'),
(581, 13, 'Cheez Tomato', 'Paneer Special', '260.00', 'n29.jpg', 'No', '1'),
(582, 13, 'Veg Kofta ', 'Paneer Special', '230.00', 'n27.jpg', 'No', '1'),
(583, 13, ' Paneer Pasanda ', 'Paneer Special', '270.00', 'n28.jpg', 'No', '1'),
(584, 13, 'Chole Paneer', 'Paneer Special', '170.00', 'p4.jpg', 'No', '1'),
(585, 13, 'Kaju Kari', 'Paneer Special', '310.00', 'p5.jpg', 'No', '1'),
(586, 13, 'Dal Makhni(Sabut Udad Rajma) ', 'Special Dal', '130.00', 'r60.jpg', 'No', '1'),
(587, 13, ' Dal Tadka(Arhar)', 'Special Dal', '110.00', 'r62.jpg', 'No', '1'),
(588, 13, 'Dal Fry(Udad Chana)', 'Special Dal', '90.00', 'r63.jpg', 'No', '1'),
(589, 13, ' Dal Handi (Mix)', 'Special Dal', '160.00', 'n40.jpg', 'No', '1'),
(590, 13, 'Chana Masala Gravy', 'Special Dal', '130.00', 'n33.jpg', 'No', '1'),
(591, 13, 'Chana Masala Dry', 'Special Dal', '110.00', 'n34.jpg', 'No', '1'),
(592, 13, 'Matar Masala ', 'Special Dal', '110.00', 'p6.jpg', 'No', '1'),
(593, 13, 'Mashroom Masala', 'Special Dal', '230.00', 'n37.jpg', 'No', '0'),
(594, 13, 'Mashroom Do Pyaza', 'Special Dal', '230.00', 'n38.jpg', 'No', '0'),
(595, 13, 'Matar Mashroom ', 'Special Dal', '170.00', 'n39.jpg', 'No', '0'),
(596, 13, 'Mashroom Paneer', 'Special Dal', '230.00', 'p7.jpg', 'No', '0'),
(597, 13, 'Aloo Paratha', 'Breakfast Tandoor', '55.00', 'r11.jpg', 'No', '1'),
(598, 13, 'Aloo Pyaz Paratha', 'Breakfast Tandoor', '55.00', 'r12.jpg', 'No', '1'),
(599, 13, 'Gobhi Paratha', 'Breakfast Tandoor', '65.00', 'r13.jpg', 'No', '1'),
(600, 13, 'Muli Paratha', 'Breakfast Tandoor', '55.00', 'r14.jpg', 'No', '0'),
(601, 13, 'Paneer Paratha', 'Breakfast Tandoor', '85.00', 'r16.jpg', 'No', '1'),
(602, 13, 'Mix Paratha', 'Breakfast Tandoor', '75.00', 'r15.jpg', 'No', '1'),
(603, 13, ' Butter Toast(4pcs)', 'Breakfast Tandoor', '55.00', 'n55.jpg', 'No', '1'),
(604, 13, 'Chhole Puri(4pcs)', 'Breakfast Tandoor', '130.00', 'p8.jpg', 'No', '1'),
(605, 13, 'Pyaz Paratha', 'Breakfast Tandoor', '55.00', 'n46.jpg', 'No', '1'),
(606, 13, 'Onion Salad ', 'Special Salad', '35.00', 'n56.jpg', 'No', '1'),
(607, 13, 'Kheera Salad', 'Special Salad', '35.00', 'n57.jpg', 'No', '1'),
(608, 13, 'Tomato  Salad', 'Special Salad', '35.00', 'n58.jpg', 'No', '1'),
(609, 13, 'Green  Salad', 'Special Salad', '45.00', 'n59.jpg', 'No', '1'),
(610, 13, 'Tandoori Roti', 'Tandoor Taste', '15.00', 'n60.jpg', 'No', '1'),
(611, 13, 'Butter  Roti', 'Tandoor Taste', '15.00', 'n61.jpg', 'No', '1'),
(612, 13, 'Butter  Nan', 'Tandoor Taste', '55.00', 'n62.jpg', 'No', '1'),
(613, 13, 'Plain Nan', 'Tandoor Taste', '45.00', 'n63.jpg', 'No', '1'),
(614, 13, 'Lachha Paratha', 'Tandoor Taste', '45.00', 'n64.jpg', 'No', '1'),
(615, 13, 'Missi  Roti', 'Tandoor Taste', '35.00', 'n65.jpg', 'No', '1'),
(616, 13, 'Sruffed Nan', 'Tandoor Taste', '85.00', 'n66.jpg', 'No', '1'),
(617, 13, 'Special Rice', 'Special Rice', '75.00', 'p9.jpg', 'No', '1'),
(618, 13, 'Jeera Rice', 'Special Rice', '110.00', 'n68.jpg', 'No', '1'),
(619, 13, 'Matar Rice', 'Special Rice', '150.00', 'n69.jpg', 'No', '1'),
(620, 13, 'Veg Biryani', 'Special Rice', '190.00', 'n70.jpg', 'No', '1'),
(621, 13, 'Veg Pulao', 'Special Rice', '190.00', 'n71.jpg', 'No', '1'),
(622, 13, 'Paneer Pulao', 'Special Rice', '210.00', 'n72.jpg', 'No', '1'),
(623, 13, 'Fried Rice', 'Special Rice', '170.00', 'n73.jpg', 'No', '1'),
(624, 13, 'Special Tea ', 'Mineral Baar', '25.00', 'n74.jpg', 'No', '1'),
(625, 13, 'Coffee ', 'Mineral Baar', '35.00', 'n75.jpg', 'No', '1'),
(626, 13, 'Lassi ', 'Mineral Baar', '55.00', 'n76.jpg', 'No', '1'),
(627, 13, 'Chhach', 'Mineral Baar', '45.00', 'n77.jpg', 'No', '1'),
(628, 13, 'Plain Dahi', 'Mineral Baar', '55.00', 'n78.jpg', 'No', '1'),
(629, 13, 'Boondi Raita', 'Mineral Baar', '55.00', 'n79.jpg', 'No', '1'),
(630, 13, 'Mix Raita', 'Mineral Baar', '65.00', 'n80.jpg', 'No', '1'),
(631, 13, 'Kheera Raita ', 'Mineral Baar', '65.00', 'n81.jpg', 'No', '1'),
(632, 13, 'Onion Raita', 'Mineral Baar', '65.00', 'n82.jpg', 'No', '1'),
(633, 13, 'Aloo Raita', 'Mineral Baar', '65.00', 'n83.jpg', 'No', '1'),
(634, 13, 'Dry Papad', 'Papad', '25.00', 'n84.jpg', 'No', '1'),
(635, 13, 'Fry Papad', 'Papad', '35.00', 'n85.jpg', 'No', '1'),
(636, 13, 'Masala Papad', 'Papad', '55.00', 'n86.jpg', 'No', '1'),
(637, 14, 'Kathi paneer roll', 'ROLL', '100.00', 's1.jpg', 'No', '1'),
(638, 14, 'Kathi egg roll', 'ROLL', '55.00', 's2.jfif', 'No', '1'),
(639, 14, 'Chole bhature', '', '65.00', 's3.jpg', 'No', '1'),
(640, 14, 'Aloo paratha', 'Paratha', '50.00', 's4.jfif', 'No', '1'),
(641, 14, 'Paneer paratha', 'Paratha', '80.00', 's5.jpg', 'No', '1'),
(642, 14, 'Pyaz paratha', 'Paratha', '50.00', 's6.jpg', 'No', '1'),
(643, 14, 'Special thali', 'Thali', '80.00', 's7.jpg', 'No', '1'),
(644, 14, 'Soup maggi', 'Maggi', '40.00', 's8.jpg', 'No', '1'),
(645, 14, 'Anda maggi', 'Maggi', '60.00', 's9.jfif', 'No', '1'),
(646, 14, 'Fried momos', 'Momos', '60.00', 's10.jfif', 'No', '1'),
(647, 14, 'Chowmein', 'Chowmein', '60.00', 's11.jpg', 'No', '1'),
(648, 14, 'Omelette ', 'Omelette', '40.00', 's12.jpg', 'No', '1'),
(649, 14, 'Special tea', 'Tea', '12.00', 's13.jpg', 'No', '1'),
(650, 14, 'Water', 'Water', '20.00', 's14.jpg', 'No', '1'),
(651, 14, 'Cold drink ( 500 ml )', '', '40.00', 't5.jpg', 'No', '1'),
(652, 14, 'Maggi Roll', 'ROLL', '70.00', 's16.jpg', 'No', '1'),
(653, 14, 'Chole chawal', 'Chawal', '45.00', 's17.jpg', 'No', '1'),
(654, 14, 'Fried Rice', 'Veg', '45.00', '17.jpg', 'No', '1'),
(655, 14, 'Fried Rice', 'Egg', '55.00', '17.jpg', 'No', '1'),
(656, 15, 'Aloo Mutter ', '', '65.00', 'r56.jpg', 'No', '1'),
(657, 15, 'Aloo Gobhi ', '', '65.00', 'r57.jpg', 'No', '1'),
(658, 15, 'Aloo Tamatar', '', '85.00', 'm1.jpg', 'No', '1'),
(659, 15, 'Baingan Bharta', '', '55.00', 'n7.jpg', 'No', '1'),
(660, 15, 'Aloo Khoya', '', '55.00', 'm2.jpg', 'No', '1'),
(661, 15, 'Bhindi Masala', '', '65.00', 'n6.jpg', 'No', '1'),
(662, 15, 'Soya Keema Mutter', '', '110.00', 'm3.jpg', 'No', '1'),
(663, 15, 'Dal Fry', '', '65.00', 'r63.jpg', 'No', '1'),
(664, 15, 'Dal Tadka', '', '110.00', 'r62.jpg', 'No', '1'),
(665, 15, 'Daal Makhni', '', '190.00', 'r60.jpg', 'No', '1'),
(666, 15, 'Chana Masala', '', '190.00', 'r59.jpg', 'No', '1'),
(667, 15, 'Shahi Paneer', '', '210.00', 'n18.jpg', 'No', '1'),
(668, 15, 'Kadhai Paneer', '', '210.00', 'n13.jpg', 'No', '1'),
(669, 15, 'Mutter Paneer', '', '210.00', 'n19.jpg', 'No', '1'),
(670, 15, 'Paneer Matar Masala', '', '230.00', 'm4.jpg', 'No', '1'),
(671, 15, 'Paneer Multani', '', '230.00', 'm5.jpg', 'No', '1'),
(672, 15, 'Paneer Bhujji', '', '210.00', 'r38.jpg', 'No', '1'),
(673, 15, 'Matar Masroom', '', '190.00', 'm6.jpg', 'No', '1'),
(674, 15, 'Paneer Lababdar', '', '230.00', 'm7.jpg', 'No', '1'),
(675, 15, 'Paneer Khurchan', '', '230.00', 'm8.jpg', 'No', '1'),
(676, 15, 'Mix Veg', '', '190.00', 'n3.jpg', 'No', '1'),
(677, 15, 'Palak Paneer', '', '230.00', 'n17.jpg', 'No', '1'),
(678, 15, 'Tandoori Roti', '', '7.00', 'n60.jpg', 'No', '1'),
(679, 15, 'Tandoori Butter Roti', '', '10.00', 'r4.jpg', 'No', '1'),
(680, 15, 'Lachha Paratha', '', '25.00', 'n64.jpg', 'No', '1'),
(681, 15, 'Pudeena Paratha', '', '35.00', 'm9.jpg', 'No', '1'),
(682, 15, 'Green chilli Paratha', '', '35.00', 'm10.jpg', 'No', '1'),
(683, 15, 'Red Chilli Paratha', '', '35.00', 'm11.jpg', 'No', '1'),
(684, 15, 'Aloo Paratha', '', '35.00', 'm12.jpg', 'No', '1'),
(685, 15, 'Aloo Pyaaz Paratha', '', '40.00', 'n43.jpg', 'No', '1'),
(686, 15, 'Aloo Pyaaz Paneer Paratha', '', '45.00', 'm13.jpg', 'No', '1'),
(687, 15, 'Paneer Paratha', '', '55.00', 'n52.jpg', 'No', '1'),
(688, 15, 'Pyaaz Paratha', '', '45.00', 'r12.jpg', 'No', '1'),
(689, 15, 'Gobhi Paratha', '', '45.00', 'r13.jpg', 'No', '1'),
(690, 15, 'Tawa Roti', '', '7.00', 'r9.jpg', 'No', '1'),
(691, 15, 'Tawa Butter Roti', '', '10.00', 'r8.jpg', 'No', '1'),
(692, 15, 'Aloo Paratha', '', '25.00', 'n42.jpg', 'No', '1'),
(693, 15, 'Aloo Pyaaz Paratha', '', '35.00', 'n44.jpg', 'No', '1'),
(694, 15, 'Aloo Pyaaz Paneer Paratha', '', '40.00', 'm14.jpg', 'No', '1'),
(695, 15, 'Paneer Paratha', '', '45.00', 'n52.jpg', 'No', '1'),
(696, 15, 'Gobhi Paratha', '', '45.00', 'n48.jpg', 'No', '1'),
(697, 15, 'Steam Rice', '', '55.00', 'n67.jpg', 'No', '1'),
(698, 15, 'Jeera Rice', '', '65.00', 'n68.jpg', 'No', '1'),
(699, 15, 'Matar Pulao', '', '85.00', 'n69.jpg', 'No', '1'),
(700, 15, 'Mix Veg Pulao', '', '110.00', 'r76.jpg', 'No', '1'),
(701, 15, 'Veg Biryani', '', '160.00', 'n70.jpg', 'No', '1'),
(702, 15, 'Mix Raita', '', '55.00', 'r68.jpg', 'No', '1'),
(703, 15, 'Bundi Raita', '', '55.00', 'r69.jpg', 'No', '1'),
(704, 15, 'Plain Dahi', '', '25.00', 'n78.jpg', 'No', '1'),
(705, 15, 'Aloo Raita', '', '55.00', 'n83.jpg', 'No', '1');
INSERT INTO `dishes` (`d_id`, `rs_id`, `title`, `slogan`, `price`, `img`, `featured`, `status`) VALUES
(706, 15, 'Aloo Pudina Raita', '', '65.00', 'm16.jpg', 'No', '1'),
(707, 15, 'Tea ', '', '15.00', 'n74.jpg', 'No', '1'),
(708, 15, 'Special Tea', '', '25.00', 'r82.jpg', 'No', '1'),
(709, 15, 'Coffee', '', '25.00', 'n75.jpg', 'No', '1'),
(710, 15, 'Banana Shake', '', '55.00', 'm17.jpg', 'No', '1'),
(711, 15, 'Papaya Shake', '', '55.00', 'm18.jpg', 'No', '1'),
(712, 15, 'Mango Shake', '', '55.00', 'm19.jpg', 'No', '1'),
(713, 15, 'Mosambi Juice', '', '55.00', 'm20.jpg', 'No', '1'),
(714, 15, 'Mosambi Pineapple Juice', '', '55.00', 'm21.jpg', 'No', '1'),
(715, 15, 'Pomegranate Juice', '', '55.00', 'm22.jpg', 'No', '1'),
(716, 15, 'Simple Thali(1 Daal, 1 Sabji, Chawal, 4 Roti, Salad)', '', '55.00', 'm23.jpg', 'No', '1'),
(717, 15, 'Special Thali(Daal Makhni, Kadhai Paneer, Chawal, Raita, 4 Roti, Lachha Paratha)', '', '130.00', 'm24.jpg', 'No', '1');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `ordertype` tinytext NOT NULL,
  `amount` int(11) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `payment_status` varchar(50) NOT NULL,
  `payment_id` varchar(50) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `name`, `ordertype`, `amount`, `phone`, `payment_status`, `payment_id`, `added_on`) VALUES
(1, '1', '', 249, '917500006161', 'pending', '', '2021-06-07 03:36:32'),
(2, '1', '', 31, '917500006161', 'pending', '', '2021-06-07 08:23:05'),
(3, '1', '', 31, '917500006161', 'pending', '', '2021-06-07 09:15:26'),
(4, '1', '', 31, '917500006161', 'pending', '', '2021-06-07 09:15:58'),
(5, '1', 'prepaid', 31, '917500006161', 'pending', '', '2021-06-07 09:48:01'),
(6, '1', 'prepaid', 31, '917500006161', 'pending', '', '2021-06-07 09:50:13'),
(7, '1', 'prepaid', 31, '917500006161', 'pending', '', '2021-06-07 09:51:20'),
(8, '1', 'prepaid', 31, '917500006161', 'pending', '', '2021-06-07 09:59:35'),
(9, '2', 'prepaid', 126150029, '9876543210', 'pending', '', '2021-06-07 10:26:19'),
(10, '2', 'prepaid', 126150029, '9876543210', 'pending', '', '2021-06-07 10:26:50'),
(11, '2', 'prepaid', 126150029, '9876543210', 'pending', '', '2021-06-07 10:28:11'),
(12, '2', 'prepaid', 126150029, '9876543210', 'pending', '', '2021-06-07 10:29:32'),
(13, '2', 'prepaid', 126150029, '9876543210', 'pending', '', '2021-06-07 10:30:29'),
(14, '2', 'prepaid', 126150029, '9876543210', 'pending', '', '2021-06-07 10:31:51'),
(15, '2', 'prepaid', 126150029, '9876543210', 'pending', '', '2021-06-07 10:35:12'),
(16, '2', 'prepaid', 126150029, '9876543210', 'pending', '', '2021-06-07 10:35:28'),
(17, '2', 'prepaid', 126150029, '9876543210', 'pending', '', '2021-06-07 10:39:47'),
(18, '1', 'prepaid', 284, '917500006161', 'pending', '', '2021-06-07 10:14:40'),
(19, '23', 'prepaid', 1569, '9335154652', 'pending', '', '2021-06-08 01:08:41'),
(20, '23', 'prepaid', 1569, '9335154652', 'pending', '', '2021-06-08 01:09:32'),
(21, '23', 'prepaid', 1569, '9335154652', 'complete', 'pay_HKUEEkmsA77CDj', '2021-06-08 01:11:48'),
(22, '1', 'prepaid', 30, '917500006161', 'pending', '', '2021-06-08 01:52:54'),
(23, '1', 'prepaid', 30, '917500006161', 'pending', '', '2021-06-10 03:54:35'),
(24, '1', 'prepaid', 30, '917500006161', 'pending', '', '2021-06-10 03:59:26'),
(25, '1', 'prepaid', 30, '917500006161', 'complete', 'pay_HLKJZ6eBZ8i6gm', '2021-06-10 04:08:58'),
(26, '25', 'prepaid', 569, '8299317716', 'complete', 'pay_HLMM1SdgDjAC3x', '2021-06-10 06:07:36'),
(27, '28', 'prepaid', 224, '9340266440', 'pending', '', '2021-06-13 09:28:35'),
(28, '28', 'prepaid', 224, '9340266440', 'complete', 'pay_HMbO1UIKd1FCxA', '2021-06-13 09:29:18'),
(29, '1', 'prepaid', 329, '917500006161', 'pending', '', '2021-06-15 08:56:50'),
(30, '31', 'prepaid', 254, '8859775757', 'pending', '', '2021-06-21 06:41:22'),
(31, '33', 'prepaid', 217, '9720140039', 'pending', '', '2021-06-22 08:40:26'),
(32, '31', 'prepaid', 247, '8859775757', 'pending', '', '2021-06-28 03:20:08'),
(33, '31', 'prepaid', 359, '8859775757', 'pending', '', '2021-06-28 03:57:23');

-- --------------------------------------------------------

--
-- Table structure for table `remark`
--

CREATE TABLE `remark` (
  `id` int(11) NOT NULL,
  `frm_id` int(11) NOT NULL,
  `status` enum('closed','rejected','CANUSER','in process','pending') NOT NULL DEFAULT 'pending',
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `rs_id` int(222) NOT NULL,
  `prior` int(11) NOT NULL,
  `c_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `url` varchar(222) NOT NULL,
  `o_hr` varchar(222) NOT NULL,
  `c_hr` varchar(222) NOT NULL,
  `o_days` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `star` text NOT NULL,
  `image` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`rs_id`, `prior`, `c_id`, `title`, `email`, `phone`, `url`, `o_hr`, `c_hr`, `o_days`, `address`, `star`, `image`, `status`, `date`) VALUES
(1, 1, 3, 'Hungry\'s Cafe', 'operations@rowdymeals.com', '7455973478', 'www.rowdymeals.com', '8am', '10pm', 'mon-sun', 'Phase no- 1 Opposite Gate No.4 Haridwar\r\n', '5 Star', '5ad74ce37c383.jpg', 1, '2021-06-26 22:18:03'),
(2, 5, 2, 'Nancy Dhaba', 'operations@rowdymeals.com', '7455973478', 'www.rowdymeals.com', '8am', '10pm', 'mon-sun', 'Near Arogyam, Patanjali , Haridwar', '5', '5ad74de005016.jpg', 0, '2021-08-05 05:09:41'),
(3, 0, 4, 'PG Food Court', 'operations@rowdymeals.com', '7455973478', 'www.rowdymeals.com', '8am', '10pm', 'mon-sun', 'Phase no. 2, Patanjali, Haridwar', '5', '5ad74e5310ae4.jpg', 0, '2021-06-06 13:26:37'),
(4, 4, 4, 'Tejasvi Hotel', 'operations@rowdymeals.com', '7455973478', 'www.rowdymeals.com', '8am', '10pm', 'mon-sun', 'Phase no. 2, Patanjali, Haridwar', '5', '5ad74ebf1d103.jpg', 1, '2021-06-26 22:19:15'),
(5, 3, 3, 'Rowdy Cakes', 'hello@rowdymeals.com', '7617477477', 'rowdymeals.com', '10am', '10pm', 'mon-sat', 'Shubham City , Near Arogyam Haridwar', '5', '60685d2b4ec3e.png', 1, '2021-06-26 22:18:12'),
(11, 2, 3, 'New Classic Restaurant', 'operations@rowdymeals.com', '7617477477', 'https://rowdymeals.com/', '10am', '9pm', 'mon-sat', 'Patanjali, Haridwar', '5', '60bcd03f952ec.jpg', 1, '2021-06-26 22:18:08'),
(12, 5, 13, 'Red Chilli Restaurant', 'hello@rowdymeals.com', '7617477477', 'https://www.rowdymeals.com', '10am', '9pm', 'mon-sun', 'Red Chilli In Front Of Coer College, Rehmadpur, Haridwar Road, Roorkee - 247667', '', '60cb1e2079e4b.jpg', 1, '2021-06-26 22:19:01'),
(13, 5, 12, 'Pundir Restaurant', 'hello@rowdymeals.com', '7617477477', 'https://rowdymeals.com/', '9am', '9pm', 'mon-sun', 'Village Batedi, Badheri Rajputan, Haridwar - 249405, Near Crystal World', '', '60d7a4e1931c5.jpg', 1, '2021-06-26 22:18:24'),
(14, 0, 2, 'Sagar Restaurant ', 'hello@rowdymeals.com', '7617477477', 'https://rowdymeals.com/', '10am', '8pm', 'mon-sun', 'Sagar Restaurant  , Opposite Crystal World , Haridwar', '', '610adc5cab163.png', 1, '2021-08-05 05:09:17'),
(15, 0, 3, 'Dehradun wale Mama Ka Dhaba', 'hello@rowdymeals.com', '7617477477', 'https://rowdymeals.com/', '10am', '8pm', 'mon-sun', 'Dehradun wale Mama Ka Dhaba , Opposite Patanjali , Haridwar', '', '610adca19cb7b.png', 0, '2021-08-26 16:13:06');

-- --------------------------------------------------------

--
-- Table structure for table `res_category`
--

CREATE TABLE `res_category` (
  `c_id` int(222) NOT NULL,
  `c_name` varchar(222) NOT NULL,
  `status` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `res_category`
--

INSERT INTO `res_category` (`c_id`, `c_name`, `status`, `date`) VALUES
(2, 'Arogyam', 1, '2021-06-06 21:45:20'),
(3, 'Patanjali-Phase1 ', 1, '2021-06-06 21:45:24'),
(4, 'Patanjali-Phase2', 0, '2021-03-25 18:02:25'),
(12, 'Hari_Ashray_Nagar', 0, '2021-04-01 15:07:00'),
(13, 'COER_College', 0, '2021-06-26 22:16:34');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `f_name` varchar(222) NOT NULL,
  `l_name` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `randomcode` text NOT NULL,
  `is_verified` enum('0','1') NOT NULL DEFAULT '0',
  `status` int(222) NOT NULL DEFAULT 1,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `randomcode`, `is_verified`, `status`, `date`) VALUES
(1, 'testuser1', 'Aditya', 'Naman', 'adityanamansingh@gmail.com', '+917500006161', 'ec580792aa15d258e55f2c6278f2d8e5', '34567', '1', 1, '2021-06-16 04:25:02'),
(9, 'testuser12', 'Aditya', 'Singh', 'ssing648@gmail.com', '+917500006161', 'ec580792aa15d258e55f2c6278f2d8e5', '97836', '0', 1, '2021-06-07 07:16:34'),
(10, 'testuser123', 'Aditya', 'Singh', 'adityakmr170@gmail.com', '+917500006161', 'ec580792aa15d258e55f2c6278f2d8e5', '99282', '1', 1, '2021-06-07 07:24:31'),
(16, 'narendra', 'narendra', 'pandey', 'narendra8887@gmail.com', '156841486768', '8cca86824529704ab4aca36bc82fa511', '13397', '0', 1, '2021-06-07 11:18:41'),
(23, 'Sundaram', 'Sundaram', 'Muraly', 'sundarammuraly@hotmail.com', '9335154652', '1e45cd4d94bf9299969cb076564e9ccf', '74930', '1', 1, '2021-06-08 07:36:20'),
(24, 'Fatima_King1', 'Ubaldo', 'Borer', 'Dixie.Brown7@gmail.com', '12033288632', '9228edc2b39fffed62419cdb077a7399', '57294', '0', 1, '2021-06-09 12:34:26'),
(25, 'Shalini mishra', 'Shalini', 'Mishra', 'sm8299317716@gmail.com', '8299317716', '35b01685879b9f0a47de61592c29fe3f', '47550', '1', 1, '2021-06-11 06:38:47'),
(27, 'Hemusingh', 'Hemu', 'Singh', 'hoshiyarsingh16061995@gmail.com', '07017283746', '45b7ed99d650f3cca9ce6268b70ad9d6', '14283', '1', 1, '2021-06-13 11:27:43'),
(28, 'Anshul pandey', 'Anshul', 'Pandey', 'anshulpandey036@gmail.com', '9340266440', 'ce153303f746a6a4169eb06f7cf2f780', '43729', '1', 1, '2021-06-13 15:57:34'),
(29, 'Tannu Kishore', 'Tannu', 'Kishore', 'tannukishore3456@gmail.com', '7061111875', 'a1414b5374f813e77747b806732d4181', '54347', '1', 1, '2021-06-15 14:31:02'),
(30, 'anshukumar', 'Anshul', 'Parajapati', 'prajapatianshul782@gmail.com', '7017082664', '0c8abdb962f042d1857c66dd26b0c87b', '77154', '1', 1, '2021-06-16 10:47:16'),
(31, 'Vidushi', 'Vidushi', 'Singh', 'vidu.vidushisingh@gmail.com', '8859775757', '2e504e6530fc0c2780ff4ab2ff354179', '53986', '1', 1, '2021-06-16 17:41:44'),
(32, 'Drajay', 'Ajay', 'Singh', 'drajaysingh82@gmail.com', '8755461993', '53e5a1c56c565b670425f72a37639f70', '43049', '1', 1, '2021-06-21 14:12:09'),
(33, 'ranjansethy2532', 'RANJAN', 'Sethy', 'ranjansethy2532@gmail.com', '09720140039', '09cb69caa62cb2c83176f4dc0177b039', '63476', '1', 1, '2021-06-22 15:03:01'),
(34, 'manojchauhan74', 'Manoj', 'Chauhan', 'manojchauhan74@rediffmail.com', '+918218254085', 'dc06698f0e2e75751545455899adccc3', '72126', '1', 1, '2021-06-27 07:23:10'),
(35, 'Arvind1011', 'Arvind', 'Rawat', 'arvind.rawat1011@gmail.com', '9818033076', '1079c8e6b79fe3b734b7899a67177756', '32561', '1', 1, '2021-06-30 15:35:11'),
(36, 'Himanshu', 'Himanshu', 'Verma', 'himutech@gmail.com', '9411976589', '9fcfb56f1b8ff5bfe291b0a1c0fa442a', '92046', '1', 1, '2021-07-08 14:41:40'),
(37, 'Shivani Rawat', 'Shivani', 'Rawat', 'Shivanirawatofficial@gmail.com', '8859865042', 'e10adc3949ba59abbe56e057f20f883e', '69508', '1', 1, '2021-07-11 15:14:55'),
(38, 'Lokesh', 'Lokesh', 'Upadhyay', 'lokeshupadhyay68@gmail.com', '+919450384504', '508a124e7d5b54d7c1dc53e3fda0553c', '41630', '1', 1, '2021-07-12 01:53:09'),
(39, 'Cleveland22', 'Bessie', 'Schultz', 'china.banks@yahoo.com', '13646736681', 'd18b4de22616c00699181599af884e7b', '65407', '0', 1, '2021-07-19 22:25:15'),
(40, 'Onkar Thakur', 'Onkar', 'Thakur', 'onkarthakur48@gmail.com', '09785073860', '2d99d8e6574e8613f7f7e87b9c3300b6', '97344', '1', 1, '2021-07-21 06:14:57'),
(41, 'Ghanshyam Kumar', 'Ghanshyam', 'Kumar', 'kghanshyam414@gmail.com', '9582989719', 'dfa7b4517ab789ed478d7cc537bbea9e', '39714', '0', 1, '2021-07-22 04:15:25'),
(42, 'Derrick72', 'Bennie', 'Vandervort', 'lekosiba@gmail.com', '18605256807', 'b9f5d2cbd577cf4050e070bab319d938', '23378', '0', 1, '2021-07-25 17:08:55'),
(43, 'Berta.Hamill30', 'Tad', 'Raynor', 'captainfly@hotmail.com', '19778678255', '9dda0ad8c2d323237e3002c0d2c16474', '84241', '0', 1, '2021-07-25 22:01:53'),
(44, 'Katrine_Bartell', 'Jana', 'Lemke', 'francis108030@gmail.com', '14363988969', '92d0aef5ac0bf3409a9b5dc800ac90e4', '37336', '0', 1, '2021-08-19 14:51:52'),
(45, 'Shubhra', 'Shubhra', 'Singh', 'shubhrasingh6@gmail.com', '9140967375', '40c3f73cb49fe96857077c286cf16156', '34478', '1', 1, '2021-08-26 14:11:27'),
(46, 'Aniruddha Tiwari', 'Aniruddha', 'Tiwari', 'aniruddha.tiwari93@gmail.com', '9205062388', '3a6e7651b72162058e0b9801b5673d16', '96118', '1', 1, '2021-08-28 14:30:14'),
(47, 'AsJ', 'Aslinah', 'J', 'Aslinah20@gmail.com', '7302869551', 'a68257aab0809bce5caae7705f3ff8a9', '81061', '1', 1, '2021-08-29 05:17:17'),
(48, 'vedpriya arya ', 'Vedpriya', 'Arya', 'vedpriya.arya@prft.co.in', '+917060472471', '2e903db8d797bda732e6f4f5045ad1a0', '26649', '1', 1, '2021-08-29 11:51:04'),
(49, 'Krishan', 'Krishan', 'Rohilla', 'krishan.rohilla123@gmail.com', '8377089501', 'f34cb718908f71618ddf1411d18e251e', '21708', '0', 1, '2021-08-30 15:09:22'),
(50, 'Krishan rohilla', 'Krishan', 'Rohilla', 'rohillakrishan17@gmail.com', '8377089501', '0ca08d08274682f63708feef87d6dad0', '50685', '0', 1, '2021-08-30 15:13:55'),
(51, 'Pratik', 'Pratik', 'Ranjan', 'mailto.ksr.inbox@gmail.com', '9811766807', 'adb608a75f0737e2573293724d15eebc', '91423', '1', 1, '2021-09-04 08:48:42'),
(52, 'Bhanu', 'Bhanu', 'Negi', 'bhanupratap5962@gmail.com', '8126873060', '516e0639744a584ad8c766c8188de8cf', '11152', '1', 1, '2021-09-04 15:12:39'),
(53, 'Davon_Hoppe', 'Nigel', 'Ledner', 'armunro1@bell.net', '13474457785', '5f48d89f50a2b218eafeef9e366ef275', '79886', '0', 1, '2021-09-12 22:12:03'),
(54, 'Hailie_Miller', 'Vesta', 'Kub', 'mlilly010@gmail.com', '13764135827', 'b50ea684f1edbcbdf80968d8884c0721', '55043', '0', 1, '2021-09-19 04:17:59'),
(55, 'Divya', 'Divya', 'Rochlani', 'divyarochlani1971@gmail.com', '9759579900', 'e8dc4081b13434b45189a720b77b6818', '65161', '1', 1, '2021-09-20 06:59:13'),
(56, 'PS', 'Pankaj', 'Sareen', 'wanderlust.uttarakhand@gmail.com', '+919997862009', 'e421fa09322247022b661447fa22d3d9', '48468', '0', 1, '2021-09-20 13:20:26'),
(57, 'Pratha', 'Pratha', 'Bora', 'pratha.bora@gmail.com', '09557719718', '97959c3978d3947e1150c92df73a2910', '40298', '0', 1, '2021-09-23 13:13:24'),
(58, 'Pb', 'Pratha', 'Bora', 'pratha.bora@25gmail.com', '09557719718', '03ca3cf6b29bf1c3587343b33092449b', '39558', '0', 1, '2021-09-23 13:16:01'),
(59, 'Sunny dua', 'Sunny', 'Dua', 'sunnydua1981@gmail.com', '6397175615', 'ba72e89f2c1b53c1fbb4b95fb15e956d', '94198', '1', 1, '2021-09-27 14:36:41'),
(60, 'Preeti', 'Preeti', 'Pahwa', 'drpreeti25@gmail.com', '09953117417', '1bacbaaa8668ed3c18a6a5b684184f66', '31873', '0', 1, '2021-09-27 14:35:21'),
(61, '9760388467', 'Deepansh', '-', 'puttu.deepansh@gmail.com', '09760688467', 'fab3160ba59d97850291d02554ff702c', '86387', '1', 1, '2021-10-11 06:21:32'),
(62, 'Jaquelin_Bashirian', 'Cordie', 'Reichert', 'frankhagen27@gmail.com', '11688873441', '325d3d41eec98342a4072c1b3ed0a8de', '63049', '0', 1, '2021-10-19 07:05:59'),
(63, 'Brijesh2412', 'Brijesh', 'Kumar', 'brijeshkumar2412@gmail.com', '8789285124', '6f0b6aeca3b3cb4328234771479265ef', '50174', '1', 1, '2021-10-19 14:26:29'),
(64, 'Alana78', 'Lauretta', 'Kuhlman', 'turnermell@yahoo.com', '13240484924', 'e864b952068f726d77ce055e446d2f32', '71840', '0', 1, '2021-10-22 17:12:01'),
(65, 'lecore', 'Mehul', 'Kumar', 'mehultyagi101@gmail.com', '7895973478', 'ec580792aa15d258e55f2c6278f2d8e5', '92404', '0', 1, '2023-01-06 05:21:32');

-- --------------------------------------------------------

--
-- Table structure for table `users_orders`
--

CREATE TABLE `users_orders` (
  `id` int(11) NOT NULL,
  `o_id` int(222) NOT NULL,
  `u_id` int(222) NOT NULL,
  `rs_id` int(11) NOT NULL,
  `address` text NOT NULL,
  `area` text NOT NULL,
  `title` varchar(222) NOT NULL,
  `quantity` int(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` enum('closed','rejected','CANUSER','in process','pending') NOT NULL DEFAULT 'pending',
  `remarks` text NOT NULL,
  `ordertype` mediumtext NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users_orders`
--

INSERT INTO `users_orders` (`id`, `o_id`, `u_id`, `rs_id`, `address`, `area`, `title`, `quantity`, `price`, `status`, `remarks`, `ordertype`, `date`) VALUES
(1, 3, 0, 11, 'Shubham city', 'Shubhamcity', 'Pyaz Paratha Tandoori', 2, '55.00', 'closed', 'Delivery done', 'cod', '2021-06-16 03:59:39'),
(2, 4, 6, 11, 'Shubham city', 'Shubhamcity', 'Onion Salad', 1, '35.00', 'closed', 'enjoy your meal\r\n', 'cod', '2021-06-07 06:36:13'),
(3, 5, 7, 11, 'hme order chaiye bhooke margye .....otherwise shut down this fucking work', 'your father logation', 'Kadhai Paneer ', 25565555, '225.00', 'pending', '', 'cod', '2021-06-07 06:13:22'),
(4, 6, 0, 11, 'abe ooo saalo i want my fucking order right now you can contact me at downtown,usa my number 44684681564846', 'ooo order kha h jldi dede', 'Spl. Handi Paneer', 60000004, '245.00', 'pending', '', 'cod', '2021-06-16 11:04:21'),
(5, 7, 7, 11, 'order nhi bhej te AAP logs kya gunde bnge re .....sddyasyugdtyagdbxgvaywgdguca\r\nawdjhhaywhdhayux\r\nsanjasnjkx\r\nasnxjkansjxn\r\nxsnainxjna\r\nxskuasxbuiaxs\r\ndsjasbxbasx\r\nassbxhjbashx\r\naxbbhvasjx\r\nahbhvsxhxas\r\nbxashbhsax\r\nsxjbhasbxhkasb\r\nxsjbhabskjxasbas\r\nasxxniabjhas\r\n  ashxhas\r\nfrauds\r\nfvui\r\nfrauds ho tum \r\ntum log send nhi krte fuck you hard', 'gand m dal le apne kadhai paneer', 'Kadhai Paneer ', 54818, '225.00', 'pending', '', 'cod', '2021-06-07 06:29:28'),
(6, 16, 23, 11, 'A-209 Shankardev Vanaprashth Ashram, Patanjali Phase II\r\n\r\nLess Spicy', 'Patanjali-2', 'Paneer Do Pyaza', 1, '225.00', 'closed', 'Delivered Successfully.\r\nHanded over to the customer', 'prepaid', '2021-06-08 15:33:35'),
(7, 17, 23, 11, 'A-209 Shankardev Vanaprashth Ashram, Patanjali Phase II\r\n\r\nLess Spicy', 'Patanjali-2', 'Veg Kofta', 2, '195.00', 'closed', 'Delivered Successfully.\r\nHanded over to the customer', 'prepaid', '2021-06-08 15:33:22'),
(8, 18, 23, 11, 'A-209 Shankardev Vanaprashth Ashram, Patanjali Phase II\r\n\r\nLess Spicy', 'Patanjali-2', 'Palak Paneer', 1, '165.00', 'closed', 'Delivered Successfully.\r\nHanded over to the customer', 'prepaid', '2021-06-08 15:33:10'),
(9, 19, 23, 11, 'A-209 Shankardev Vanaprashth Ashram, Patanjali Phase II\r\n\r\nLess Spicy', 'Patanjali-2', 'Jeera Aloo', 1, '95.00', 'closed', 'Delivered Successfully.\r\nHanded over to the customer', 'prepaid', '2021-06-08 15:32:59'),
(10, 20, 23, 11, 'A-209 Shankardev Vanaprashth Ashram, Patanjali Phase II\r\n\r\nLess Spicy', 'Patanjali-2', 'Green Salad ', 1, '45.00', 'closed', 'Delivered Successfully.\r\nHanded over to the customer', 'prepaid', '2021-06-08 15:32:38'),
(11, 21, 23, 11, 'A-209 Shankardev Vanaprashth Ashram, Patanjali Phase II\r\n\r\nLess Spicy', 'Patanjali-2', 'Onion Salad', 1, '35.00', 'closed', 'Delivered Successfully.\r\nHanded over to the customer', 'prepaid', '2021-06-08 15:32:26'),
(12, 22, 23, 11, 'A-209 Shankardev Vanaprashth Ashram, Patanjali Phase II\r\n\r\nLess Spicy', 'Patanjali-2', 'Missi Roti', 6, '35.00', 'closed', 'Delivered Successfully.\r\nHanded over to the customer', 'prepaid', '2021-06-08 15:32:12'),
(13, 23, 23, 11, 'A-209 Shankardev Vanaprashth Ashram, Patanjali Phase II\r\n\r\nLess Spicy', 'Patanjali-2', 'Plain Rice ', 2, '85.00', 'closed', 'Delivered Successfully.\r\nHanded over to the customer', 'prepaid', '2021-06-08 15:31:49'),
(14, 24, 23, 11, 'A-209 Shankardev Vanaprashth Ashram, Patanjali Phase II\r\n\r\nLess Spicy', 'Patanjali-2', 'Tandoori Roti', 6, '15.00', 'closed', 'Delivered Successfully.\r\nHanded over to the customer', 'prepaid', '2021-06-08 15:31:25'),
(15, 25, 23, 11, 'A-209 Shankardev Vanaprashth Ashram, Patanjali Phase II\r\n\r\nLess Spicy', 'Patanjali-2', 'Dal Tadka(Arhar)', 1, '115.00', 'closed', 'Delivered Successfully.\r\nHanded over to the customer', 'prepaid', '2021-06-08 15:31:04'),
(16, 27, 25, 11, 'F-109 sewa sadan, patanjali yogpeeth haridwar', 'Patanjali-sevasadan', 'Matar Paneer', 1, '165.00', 'closed', 'Delivered Sucessfully', 'prepaid', '2021-06-10 13:33:24'),
(17, 28, 25, 2, 'F-109 sewa sadan, patanjali yogpeeth haridwar', 'Patanjali-sevasadan', 'Malai Kofta', 1, '195.00', 'closed', 'Delivered Sucessfully', 'prepaid', '2021-06-10 13:33:04'),
(18, 29, 25, 2, 'F-109 sewa sadan, patanjali yogpeeth haridwar', 'Patanjali-sevasadan', 'Butter - Roti', 12, '15.00', 'closed', 'Delivered Sucessfully', 'prepaid', '2021-06-10 13:32:50'),
(19, 30, 1, 11, 'sadsacsa', 'Anandikacity', 'test prod', 1, '1.00', 'closed', 'test sucess for the mailer', 'cod', '2021-06-10 19:35:10'),
(20, 31, 27, 2, 'Seva sadan Patanjali Yogpeeth phase 2 haridwar', 'Patanjali-2', 'Kdhee Pakoda', 1, '65.00', 'CANUSER', 'The order is being Processed', 'cod', '2021-06-13 11:42:14'),
(21, 32, 27, 2, 'Seva sadan Patanjali Yogpeeth phase 2 haridwar', 'Patanjali-2', 'Aloo Piyaj - Paratha', 2, '45.00', 'CANUSER', 'The order is being Processed', 'cod', '2021-06-13 11:42:42'),
(22, 33, 27, 2, 'Seva sadan Patanjali Yogpeeth phase 2 haridwar', 'Patanjali-2', 'Muli - Paratha', 1, '45.00', 'CANUSER', 'The order is being Processed', 'cod', '2021-06-13 11:42:46'),
(23, 34, 28, 2, 'F-109, sewa sadan, patanjali yogpeeth', 'Patanjali-sevasadan', 'Shahi Paneer', 1, '165.00', 'closed', 'Successfully Delivered', 'prepaid', '2021-06-13 16:32:45'),
(24, 35, 28, 2, 'F-109, sewa sadan, patanjali yogpeeth', 'Patanjali-sevasadan', 'Butter - Roti', 2, '15.00', 'closed', 'Successfully Delivered', 'prepaid', '2021-06-13 16:32:30'),
(25, 36, 30, 1, 'nsmscnsmd', 'Adiyogi', 'Aloo Tikki - Burger ', 1, '29.00', 'rejected', 'CANCELLED', 'cod', '2021-06-16 11:13:33'),
(26, 37, 30, 1, 'nsmscnsmd', 'Adiyogi', 'Red Sauce - Pasta', 2, '80.00', 'pending', '', 'cod', '2021-06-16 11:24:10'),
(27, 38, 29, 2, 'Patanjali yogpeeth phase 2, Haridwar Gautam Bhavan,Roorkee, Haridwar district-249405', 'Patanjali-2', 'Matar Paneer', 1, '125.00', 'closed', 'Delivered Sucessfully', 'cod', '2021-06-16 11:25:07'),
(28, 39, 30, 11, 'room number 230 ', 'Adiyogi', 'test prod', 1, '1.00', 'closed', 'Delivery successful', 'cod', '2021-06-16 11:24:22'),
(29, 40, 31, 11, 'tesitng out order ', 'Adiyogi', 'Aloo matar', 1, '95.00', 'closed', 'Done', 'cod', '2021-06-16 17:56:55'),
(30, 41, 31, 11, 'tesitng out order ', 'Adiyogi', 'Gobhi Masala', 1, '125.00', 'closed', 'Done', 'cod', '2021-06-16 17:56:43'),
(31, 42, 31, 11, 'tesitng out order ', 'Adiyogi', 'Aloo Gobhi', 1, '95.00', 'closed', 'Done', 'cod', '2021-06-16 17:54:02'),
(32, 43, 33, 1, 'Raghunath Residency,\r\nNear Suncity cinema\r\nBahaderabad\r\nHaridwar', 'Bahaderabad', 'Paneer & Onion - Pizza', 1, '99.00', 'closed', 'Delivered Successfully. Handed over to the customer.', 'cod', '2021-06-22 16:17:52'),
(33, 44, 33, 1, 'Raghunath Residency,\r\nNear Suncity cinema\r\nBahaderabad\r\nHaridwar', 'Bahaderabad', 'Onion & Corn - Pizza', 1, '89.00', 'closed', 'Delivered Successfully. Handed over to the customer.', 'cod', '2021-06-22 16:17:38'),
(34, 45, 34, 1, '404, 40 feet road', 'hariashraynagar', 'Paneer & Onion - Pizza', 2, '99.00', 'closed', 'Delivered Successfully. Handed over to the customer.', 'cod', '2021-06-30 15:42:16'),
(35, 46, 35, 11, 'Near tejasvi Hotel', 'Patanjali-1', 'Paneer Butter Masala', 1, '225.00', 'closed', 'Delivered Successfully. Handed over to the customer.', 'cod', '2021-06-30 16:25:32'),
(36, 47, 35, 11, 'Near tejasvi Hotel', 'Patanjali-1', 'Dal Makhni(Udad Rajma)', 1, '125.00', 'closed', 'Delivered Successfully. Handed over to the customer.', 'cod', '2021-06-30 16:25:23'),
(37, 48, 35, 11, 'Near tejasvi Hotel', 'Patanjali-1', 'Chilli Paneer ', 1, '225.00', 'closed', 'Delivered Successfully. Handed over to the customer.', 'cod', '2021-06-30 16:25:15'),
(38, 49, 35, 11, 'Near tejasvi Hotel', 'Patanjali-1', 'Chana Masala Dry', 1, '105.00', 'closed', 'Delivered Successfully. Handed over to the customer.', 'cod', '2021-06-30 16:25:06'),
(39, 50, 35, 11, 'Near tejasvi Hotel', 'Patanjali-1', 'Boondi Raita', 1, '65.00', 'closed', 'Delivered Successfully. Handed over to the customer.', 'cod', '2021-06-30 16:24:59'),
(40, 51, 35, 11, 'Near tejasvi Hotel', 'Patanjali-1', 'Missi Roti', 2, '35.00', 'closed', 'Delivered Successfully. Handed over to the customer.', 'cod', '2021-06-30 16:24:52'),
(41, 52, 35, 11, 'Near tejasvi Hotel', 'Patanjali-1', 'Tandoori Roti', 2, '15.00', 'closed', 'Delivered Successfully. Handed over to the customer.', 'cod', '2021-06-30 16:24:42'),
(42, 53, 35, 11, 'Near tejasvi Hotel', 'Patanjali-1', 'Lachha Paratha ', 4, '45.00', 'closed', 'Delivered Successfully. Handed over to the customer.', 'cod', '2021-06-30 16:24:34'),
(43, 54, 34, 12, '404 hari aahray Nagar   40 feet road', 'hariashraynagar', 'Veg Chowmein', 1, '65.00', 'closed', 'Delivered Successfully. Handed over to the customer.', 'cod', '2021-07-04 10:06:28'),
(44, 55, 34, 1, '404 hari aahray Nagar   40 feet road', 'hariashraynagar', 'Onion & Cheese - Pizza', 1, '89.00', 'closed', 'Delivered Successfully. Handed over to the customer.', 'cod', '2021-07-04 10:06:18'),
(47, 1, 28, 12, 'F-109, sewa sadan, patanjali yogpeeth, phase 2, haridwar', 'Patanjali-sevasadan', 'Tandoori Roti', 6, '10.00', 'closed', 'thanks', 'cod', '2021-07-23 14:36:35'),
(48, 1, 28, 12, 'F-109, sewa sadan, patanjali yogpeeth, phase 2, haridwar', 'Patanjali-sevasadan', 'Mutter Paneer ', 1, '140.00', 'closed', 'thanks', 'cod', '2021-07-23 14:36:35'),
(49, 1, 28, 12, 'F-109, sewa sadan, patanjali yogpeeth, phase 2, haridwar', 'Patanjali-sevasadan', 'Fried Rice ', 1, '75.00', 'closed', 'thanks', 'cod', '2021-07-23 14:36:35'),
(50, 1, 28, 12, 'F-109, sewa sadan, patanjali yogpeeth, phase 2, haridwar', 'Patanjali-sevasadan', 'Cold Drinks', 1, '40.00', 'closed', 'thanks', 'cod', '2021-07-23 14:36:35'),
(51, 2, 36, 12, 'Food should not be spicy.\r\nH.no.D8\r\nMob: 9411976589', 'Shubhamcity', 'Tandoori Roti', 8, '10.00', 'closed', 'Thanks ', 'cod', '2021-07-23 14:36:10'),
(52, 2, 36, 12, 'Food should not be spicy.\r\nH.no.D8\r\nMob: 9411976589', 'Shubhamcity', 'Shahi Paneer', 1, '150.00', 'closed', 'Thanks ', 'cod', '2021-07-23 14:36:10'),
(55, 66, 37, 11, 'U144 , Anandam city, opposite crystal world haridwar (dont make spicy food)', 'Anandam city', 'Mix Veg', 1, '125.00', 'closed', 'Delivered Successfully. Handed over to the customer.', 'cod', '2021-07-11 15:46:18'),
(56, 66, 37, 11, 'U144 , Anandam city, opposite crystal world haridwar (dont make spicy food)', 'Anandam city', 'Lachha Paratha ', 1, '45.00', 'closed', 'Delivered Successfully. Handed over to the customer.', 'cod', '2021-07-11 15:46:18'),
(57, 66, 37, 11, 'U144 , Anandam city, opposite crystal world haridwar (dont make spicy food)', 'Anandam city', 'Butter Naan ', 1, '65.00', 'closed', 'Delivered Successfully. Handed over to the customer.', 'cod', '2021-07-11 15:46:18'),
(58, 67, 38, 1, ' Patanjali yogpeeth phase 2 , Sewa sadan F-406', 'Patanjali-sevasadan , phase 2 , Sewa sadan F-406', 'Paneer & Onion - Pizza', 1, '99.00', 'closed', 'Delivered Successfully. Handed over to the customer.', 'cod', '2021-07-12 08:42:51'),
(59, 67, 38, 1, ' Patanjali yogpeeth phase 2 , Sewa sadan F-406', 'Patanjali-sevasadan , phase 2 , Sewa sadan F-406', 'Onion & Capsicum - Pizza', 1, '89.00', 'closed', 'Delivered Successfully. Handed over to the customer.', 'cod', '2021-07-12 08:42:51'),
(60, 67, 38, 1, ' Patanjali yogpeeth phase 2 , Sewa sadan F-406', 'Patanjali-sevasadan , phase 2 , Sewa sadan F-406', 'Red Sauce - Pasta', 1, '80.00', 'closed', 'Delivered Successfully. Handed over to the customer.', 'cod', '2021-07-12 08:42:51'),
(61, 67, 38, 1, ' Patanjali yogpeeth phase 2 , Sewa sadan F-406', 'Patanjali-sevasadan , phase 2 , Sewa sadan F-406', 'Cheesy  - Burger ', 1, '49.00', 'closed', 'Delivered Successfully. Handed over to the customer.', 'cod', '2021-07-12 08:42:51'),
(62, 67, 38, 1, ' Patanjali yogpeeth phase 2 , Sewa sadan F-406', 'Patanjali-sevasadan , phase 2 , Sewa sadan F-406', 'Maharaja  - Burger ', 1, '69.00', 'closed', 'Delivered Successfully. Handed over to the customer.', 'cod', '2021-07-12 08:42:51'),
(63, 67, 38, 1, ' Patanjali yogpeeth phase 2 , Sewa sadan F-406', 'Patanjali-sevasadan , phase 2 , Sewa sadan F-406', 'Aloo Tikki - Burger ', 1, '29.00', 'closed', 'Delivered Successfully. Handed over to the customer.', 'cod', '2021-07-12 08:42:51'),
(66, 69, 38, 12, 'Patanjali Yogpeeth phase 2, Sewa Sadan ', 'Patanjali-sevasadan , phase 2 , Sewa sadan F-406', 'Veg Chowmein', 1, '65.00', 'closed', 'thank you', 'cod', '2021-07-23 14:35:20'),
(67, 69, 38, 12, 'Patanjali Yogpeeth phase 2, Sewa Sadan ', 'Patanjali-sevasadan , phase 2 , Sewa sadan F-406', 'Burger', 2, '45.00', 'closed', 'thank you', 'cod', '2021-07-23 14:35:20'),
(68, 70, 28, 12, 'F-109, sewa sadan, patanjali yogpeeth\r\nMakesure that the ordered dishes shouls be spicy', 'Patanjali-sevasadan', 'Dal Tadka ', 1, '100.00', 'rejected', 'out of bounds ', 'cod', '2021-07-18 15:25:57'),
(69, 70, 28, 12, 'F-109, sewa sadan, patanjali yogpeeth\r\nMakesure that the ordered dishes shouls be spicy', 'Patanjali-sevasadan', 'Aaloo Mutter ', 1, '80.00', 'rejected', 'out of bounds ', 'cod', '2021-07-18 15:25:57'),
(70, 71, 40, 1, 'K-008, Ground Floor,  Aarogyam Suites', 'Arogyam', 'Paneer & Onion - Pizza', 1, '99.00', 'closed', 'Delivered Successfully. Handed over to the customer.', 'cod', '2021-07-21 06:44:51'),
(71, 71, 40, 1, 'K-008, Ground Floor,  Aarogyam Suites', 'Arogyam', 'Aloo Tikki - Burger ', 2, '29.00', 'closed', 'Delivered Successfully. Handed over to the customer.', 'cod', '2021-07-21 06:44:51'),
(72, 72, 38, 12, 'Patanjali Yogpeeth phase 2 , Sewa Sadan', 'Patanjali-sevasadan', 'Kadhai Paneer', 1, '190.00', 'closed', 'Delivered Successfully. Handed over to the customer.', 'cod', '2021-07-21 07:32:30'),
(73, 72, 38, 12, 'Patanjali Yogpeeth phase 2 , Sewa Sadan', 'Patanjali-sevasadan', 'Shahi Paneer', 1, '150.00', 'closed', 'Delivered Successfully. Handed over to the customer.', 'cod', '2021-07-21 07:32:30'),
(74, 73, 40, 1, 'K-008, Capital O Aarogyam Suites\r\nRoorkee\r\nROORKEE, UTTARAKHAND 247667\r\nIndia\r\nPhone number: â€ª9785073860â€¬', 'Arogyam', 'Aloo Tikki - Burger ', 1, '29.00', 'closed', 'Delivered Successfully. Handed over to the customer.', 'cod', '2021-07-22 09:04:03'),
(75, 73, 40, 1, 'K-008, Capital O Aarogyam Suites\r\nRoorkee\r\nROORKEE, UTTARAKHAND 247667\r\nIndia\r\nPhone number: â€ª9785073860â€¬', 'Arogyam', 'Veggiee - Burger', 1, '39.00', 'closed', 'Delivered Successfully. Handed over to the customer.', 'cod', '2021-07-22 09:04:03'),
(76, 73, 40, 1, 'K-008, Capital O Aarogyam Suites\r\nRoorkee\r\nROORKEE, UTTARAKHAND 247667\r\nIndia\r\nPhone number: â€ª9785073860â€¬', 'Arogyam', 'Paneer & Capsicum - Pizza', 1, '99.00', 'closed', 'Delivered Successfully. Handed over to the customer.', 'cod', '2021-07-22 09:04:03'),
(77, 74, 38, 1, 'Sewa sadan.', 'Patanjali-sevasadan', 'Paneer Momos(6 Pcs)', 1, '50.00', 'in process', 'The order is being Processed.', 'cod', '2021-07-29 14:27:45'),
(78, 74, 38, 1, 'Sewa sadan.', 'Patanjali-sevasadan', 'Aloo Tikki - Burger ', 1, '35.00', 'in process', 'The order is being Processed.', 'cod', '2021-07-29 14:27:45'),
(79, 74, 38, 1, 'Sewa sadan.', 'Patanjali-sevasadan', 'Malai Chaap - Roll - Single', 1, '60.00', 'in process', 'The order is being Processed.', 'cod', '2021-07-29 14:27:45'),
(80, 74, 38, 1, 'Sewa sadan.', 'Patanjali-sevasadan', 'Chilly Paneer - Roll - Double', 1, '100.00', 'in process', 'The order is being Processed.', 'cod', '2021-07-29 14:27:45'),
(81, 74, 38, 1, 'Sewa sadan.', 'Patanjali-sevasadan', 'Paneer & Capsicum - Pizza', 1, '109.00', 'in process', 'The order is being Processed.', 'cod', '2021-07-29 14:27:45'),
(82, 74, 38, 1, 'Sewa sadan.', 'Patanjali-sevasadan', 'Veggiee - Burger', 1, '45.00', 'in process', 'The order is being Processed.', 'cod', '2021-07-29 14:27:45'),
(83, 74, 38, 1, 'Sewa sadan.', 'Patanjali-sevasadan', 'Spicy Corn  Roll  (Single)', 1, '50.00', 'in process', 'The order is being Processed.', 'cod', '2021-07-29 14:27:45'),
(84, 75, 27, 2, 'Seva sadan Patanjali phase 2', 'Patanjali-2', 'Chana Masala', 1, '95.00', 'pending', '', 'cod', '2021-07-29 14:47:29'),
(85, 75, 27, 2, 'Seva sadan Patanjali phase 2', 'Patanjali-2', 'Aloo Piyaj - Paratha', 2, '45.00', 'pending', '', 'cod', '2021-07-29 14:47:29'),
(86, 75, 27, 12, 'Seva sadan Patanjali phase 2', 'Patanjali-2', 'Aloo Paratha', 1, '45.00', 'pending', '', 'cod', '2021-07-29 14:47:29'),
(87, 75, 27, 12, 'Seva sadan Patanjali phase 2', 'Patanjali-2', 'Gobhi Paratha (Seasonal)', 1, '50.00', 'pending', '', 'cod', '2021-07-29 14:47:29'),
(88, 75, 27, 2, 'Seva sadan Patanjali phase 2', 'Patanjali-2', 'Chilli Paneer', 1, '205.00', 'pending', '', 'cod', '2021-07-29 14:47:29'),
(89, 75, 27, 2, 'Seva sadan Patanjali phase 2', 'Patanjali-2', 'Gobhi - Paratha', 2, '55.00', 'pending', '', 'cod', '2021-07-29 14:47:29'),
(90, 76, 40, 1, ' K-008, ground  floor Capital O Arogyam Suites Apartment,NH 58, Badheri Rajputan, Near Patanjali phase 2,Dist- Haridwar \r\nPincode- 249405', 'Arogyam', 'Aloo Tikki - Burger ', 2, '35.00', 'CANUSER', '', 'cod', '2021-07-31 06:00:10'),
(91, 76, 40, 1, ' K-008, ground  floor Capital O Arogyam Suites Apartment,NH 58, Badheri Rajputan, Near Patanjali phase 2,Dist- Haridwar \r\nPincode- 249405', 'Arogyam', 'Cheese & Corn - Pizza', 1, '99.00', 'CANUSER', '', 'cod', '2021-07-31 06:00:10'),
(92, 77, 40, 1, 'K-008, ground  floor Capital O Arogyam Suites Apartment,NH 58, Badheri Rajputan, Near Patanjali phase 2,\r\n\r\nDist- Haridwar,Uttrakhand\r\nPincode- 249405', 'Arogyam', 'Paneer & Capsicum - Pizza', 1, '109.00', 'closed', 'Delivered Successfully. Handed over to the customer.', 'cod', '2021-08-03 08:32:10'),
(93, 77, 40, 1, 'K-008, ground  floor Capital O Arogyam Suites Apartment,NH 58, Badheri Rajputan, Near Patanjali phase 2,\r\n\r\nDist- Haridwar,Uttrakhand\r\nPincode- 249405', 'Arogyam', 'Paneer Momos(6 Pcs)', 1, '50.00', 'closed', 'Delivered Successfully. Handed over to the customer.', 'cod', '2021-08-03 08:32:10'),
(94, 78, 1, 11, 'test', 'Patanjali-1', 'test prod', 1, '1.00', 'CANUSER', '', 'cod', '2021-08-05 05:59:52'),
(95, 79, 1, 11, 'sfdsfsfsvs', 'Arihantcollg', 'test prod', 1, '1.00', 'CANUSER', '', 'cod', '2021-08-05 06:00:02'),
(96, 79, 1, 11, 'sfdsfsfsvs', 'Arihantcollg', 'Aloo chhole', 1, '95.00', 'CANUSER', '', 'cod', '2021-08-05 06:00:02'),
(97, 79, 1, 11, 'sfdsfsfsvs', 'Arihantcollg', 'Aloo Gobhi', 1, '95.00', 'CANUSER', '', 'cod', '2021-08-05 06:00:02'),
(98, 80, 1, 11, 'wedsdesd', 'Patanjali-2', 'test prod', 1, '1.00', 'CANUSER', '', 'cod', '2021-08-05 06:00:00'),
(99, 80, 1, 11, 'wedsdesd', 'Patanjali-2', 'Aloo chhole', 1, '95.00', 'CANUSER', '', 'cod', '2021-08-05 06:00:00'),
(100, 80, 1, 11, 'wedsdesd', 'Patanjali-2', 'Aloo Gobhi', 1, '95.00', 'CANUSER', '', 'cod', '2021-08-05 06:00:00'),
(101, 81, 1, 11, 'test', 'Adiyogi', 'test prod', 1, '1.00', 'CANUSER', '', 'cod', '2021-08-05 06:00:04'),
(102, 81, 1, 11, 'test', 'Adiyogi', 'Aloo chhole', 1, '95.00', 'CANUSER', '', 'cod', '2021-08-05 06:00:04'),
(103, 81, 1, 11, 'test', 'Adiyogi', 'Aloo Gobhi', 1, '95.00', 'CANUSER', '', 'cod', '2021-08-05 06:00:04'),
(104, 82, 1, 11, 'sdedfsfd', 'Arihantcollg', 'test prod', 1, '1.00', 'CANUSER', '', 'cod', '2021-08-05 05:59:58'),
(105, 82, 1, 11, 'sdedfsfd', 'Arihantcollg', 'Aloo chhole', 1, '95.00', 'CANUSER', '', 'cod', '2021-08-05 05:59:58'),
(106, 82, 1, 11, 'sdedfsfd', 'Arihantcollg', 'Aloo Gobhi', 1, '95.00', 'CANUSER', '', 'cod', '2021-08-05 05:59:58'),
(107, 83, 1, 11, 'sdfregfdfg', 'Ombio', 'test prod', 1, '1.00', 'CANUSER', '', 'cod', '2021-08-05 05:59:56'),
(108, 83, 1, 11, 'sdfregfdfg', 'Ombio', 'Aloo chhole', 1, '95.00', 'CANUSER', '', 'cod', '2021-08-05 05:59:56'),
(109, 83, 1, 11, 'sdfregfdfg', 'Ombio', 'Aloo Gobhi', 1, '95.00', 'CANUSER', '', 'cod', '2021-08-05 05:59:56'),
(110, 84, 1, 11, 'fgdfgdsfgdg', 'Patanjali-1', 'test prod', 1, '1.00', 'CANUSER', '', 'cod', '2021-08-05 05:59:54'),
(111, 84, 1, 11, 'fgdfgdsfgdg', 'Patanjali-1', 'Aloo chhole', 1, '95.00', 'CANUSER', '', 'cod', '2021-08-05 05:59:54'),
(112, 84, 1, 11, 'fgdfgdsfgdg', 'Patanjali-1', 'Aloo Gobhi', 1, '95.00', 'CANUSER', '', 'cod', '2021-08-05 05:59:54'),
(113, 85, 1, 11, 'fdgvdfzgdgd', 'Arihantcollg', 'test prod', 1, '1.00', 'CANUSER', '', 'cod', '2021-08-05 05:59:45'),
(114, 85, 1, 11, 'fdgvdfzgdgd', 'Arihantcollg', 'Aloo chhole', 1, '95.00', 'CANUSER', '', 'cod', '2021-08-05 05:59:45'),
(115, 85, 1, 11, 'fdgvdfzgdgd', 'Arihantcollg', 'Aloo Gobhi', 1, '95.00', 'CANUSER', '', 'cod', '2021-08-05 05:59:45'),
(116, 86, 28, 12, 'F-109, sewa sadan, patanjali yogpeeth\r\nPlz make the food spicy', 'Patanjali-sevasadan', ' Paneer Butter Masala', 1, '200.00', 'closed', 'delivered', 'cod', '2021-08-24 04:30:00'),
(117, 87, 45, 15, 'Seva Sadan, Patanjali phase 2', 'Patanjali-sevasadan', 'Bhindi Masala', 1, '65.00', 'closed', 'Delivered Successfully. Handed over to the customer.', 'cod', '2021-08-26 16:38:27'),
(118, 87, 45, 15, 'Seva Sadan, Patanjali phase 2', 'Patanjali-sevasadan', 'Lachha Paratha', 2, '25.00', 'closed', 'Delivered Successfully. Handed over to the customer.', 'cod', '2021-08-26 16:38:27'),
(119, 87, 45, 15, 'Seva Sadan, Patanjali phase 2', 'Patanjali-sevasadan', 'Bundi Raita', 1, '55.00', 'closed', 'Delivered Successfully. Handed over to the customer.', 'cod', '2021-08-26 16:38:27'),
(120, 88, 46, 13, 'Patanjali phase1', 'Patanjali phase1', 'Tandoori Roti', 8, '15.00', 'CANUSER', '', 'cod', '2021-08-28 14:34:47'),
(121, 88, 46, 13, 'Patanjali phase1', 'Patanjali phase1', 'Special Handi Paneer', 1, '270.00', 'CANUSER', '', 'cod', '2021-08-28 14:34:47'),
(122, 89, 46, 13, 'Patanjali phase1', 'Patanjali phase1', 'Tandoori Roti', 8, '15.00', 'closed', 'Delivered Successfully. Handed over to the customer.', 'cod', '2021-08-28 16:24:14'),
(123, 89, 46, 13, 'Patanjali phase1', 'Patanjali phase1', 'Special Handi Paneer', 1, '270.00', 'closed', 'Delivered Successfully. Handed over to the customer.', 'cod', '2021-08-28 16:24:14'),
(124, 90, 47, 4, 'Food NO spicy, pls ', 'Patanjali-sevasadan', 'Butter Roti', 2, '15.00', 'closed', 'Delivered Successfully. Handed over to the customer.', 'cod', '2021-08-29 08:03:43'),
(125, 90, 47, 4, 'Food NO spicy, pls ', 'Patanjali-sevasadan', 'Plain Rice', 1, '85.00', 'closed', 'Delivered Successfully. Handed over to the customer.', 'cod', '2021-08-29 08:03:43'),
(126, 90, 47, 4, 'Food NO spicy, pls ', 'Patanjali-sevasadan', 'Home Style Chicken Curry (half)', 1, '310.00', 'closed', 'Delivered Successfully. Handed over to the customer.', 'cod', '2021-08-29 08:03:43'),
(127, 91, 48, 12, 'Sewa sadan', 'Patanjali-2', 'Veg Chowmein', 1, '65.00', 'closed', 'Delivered Successfully. Handed over to the customer.', 'cod', '2021-08-29 13:27:00'),
(128, 91, 48, 1, 'Sewa sadan', 'Patanjali-2', 'Chilli Paneer', 1, '120.00', 'closed', 'Delivered Successfully. Handed over to the customer.', 'cod', '2021-08-29 13:27:00'),
(129, 91, 48, 1, 'Sewa sadan', 'Patanjali-2', 'Cheese & Corn - Pizza', 1, '99.00', 'closed', 'Delivered Successfully. Handed over to the customer.', 'cod', '2021-08-29 13:27:00'),
(130, 92, 51, 1, 'Address - Flat-L606, Aarogyam, Opposite Crystal World, Near Patanjali Yogpeeth.\r\nInstruction - Please ensure that the food is completely vegetarian. It is not mentioned on the Rowdy Meals website.', 'Arogyam', 'Malai Chaap - Roll - Single', 1, '60.00', 'CANUSER', '', 'cod', '2021-09-04 08:58:16'),
(131, 92, 51, 1, 'Address - Flat-L606, Aarogyam, Opposite Crystal World, Near Patanjali Yogpeeth.\r\nInstruction - Please ensure that the food is completely vegetarian. It is not mentioned on the Rowdy Meals website.', 'Arogyam', 'Paneer - Roll - Double', 1, '90.00', 'CANUSER', '', 'cod', '2021-09-04 08:58:16'),
(132, 93, 52, 11, 'C/o Shivani Sharma B311 vanprathashram, near patanjali phase 2\r\nPin 249405', 'Patanjali-sevasadan', 'Shahi Paneer', 1, '185.00', 'closed', 'Delivered Successfully. Handed over to the customer.', 'cod', '2021-09-20 18:47:27'),
(133, 93, 52, 11, 'C/o Shivani Sharma B311 vanprathashram, near patanjali phase 2\r\nPin 249405', 'Patanjali-sevasadan', 'Chilli Paneer ', 1, '225.00', 'closed', 'Delivered Successfully. Handed over to the customer.', 'cod', '2021-09-20 18:47:27'),
(134, 93, 52, 11, 'C/o Shivani Sharma B311 vanprathashram, near patanjali phase 2\r\nPin 249405', 'Patanjali-sevasadan', 'Paneer Butter Masala', 1, '225.00', 'closed', 'Delivered Successfully. Handed over to the customer.', 'cod', '2021-09-20 18:47:27'),
(135, 94, 48, 12, 'B 104, sewa sadan', 'Patanjali-2', 'Veg Chowmein', 1, '65.00', 'closed', 'Delivered Successfully. Handed over to the customer.', 'cod', '2021-09-07 14:51:23'),
(136, 94, 48, 12, 'B 104, sewa sadan', 'Patanjali-2', 'Aloo Paratha', 1, '45.00', 'closed', 'Delivered Successfully. Handed over to the customer.', 'cod', '2021-09-07 14:51:23'),
(137, 94, 48, 12, 'B 104, sewa sadan', 'Patanjali-2', 'Piyaz Paratha', 1, '50.00', 'closed', 'Delivered Successfully. Handed over to the customer.', 'cod', '2021-09-07 14:51:23'),
(138, 95, 55, 11, 'Vanaprasth Ashram gate ', 'Patanjali-2 Vanaprasth Ashram', 'Lassi ', 1, '55.00', 'closed', 'Delivered Successfully. Handed over to the customer.', 'cod', '2021-09-20 08:49:51'),
(139, 95, 55, 11, 'Vanaprasth Ashram gate ', 'Patanjali-2 Vanaprasth Ashram', 'Stuffed Tomato', 1, '195.00', 'closed', 'Delivered Successfully. Handed over to the customer.', 'cod', '2021-09-20 08:49:51'),
(140, 95, 55, 11, 'Vanaprasth Ashram gate ', 'Patanjali-2 Vanaprasth Ashram', 'Butter Roti ', 2, '20.00', 'closed', 'Delivered Successfully. Handed over to the customer.', 'cod', '2021-09-20 08:49:51'),
(141, 95, 55, 11, 'Vanaprasth Ashram gate ', 'Patanjali-2 Vanaprasth Ashram', 'Tomato Salad', 1, '35.00', 'closed', 'Delivered Successfully. Handed over to the customer.', 'cod', '2021-09-20 08:49:51'),
(142, 95, 55, 11, 'Vanaprasth Ashram gate ', 'Patanjali-2 Vanaprasth Ashram', 'Missi Roti', 1, '35.00', 'closed', 'Delivered Successfully. Handed over to the customer.', 'cod', '2021-09-20 08:49:51'),
(143, 95, 55, 11, 'Vanaprasth Ashram gate ', 'Patanjali-2 Vanaprasth Ashram', 'Malai Kofta ', 1, '205.00', 'closed', 'Delivered Successfully. Handed over to the customer.', 'cod', '2021-09-20 08:49:51'),
(144, 96, 48, 11, 'B 104, sevasadan', 'Patanjali-sevasadan', 'Paneer Butter Masala', 1, '225.00', 'CANUSER', '', 'cod', '2021-10-02 13:58:45'),
(145, 96, 48, 11, 'B 104, sevasadan', 'Patanjali-sevasadan', 'Aloo Paratha Tawa', 1, '65.00', 'CANUSER', '', 'cod', '2021-10-02 13:58:45'),
(146, 97, 48, 11, 'B 104, sevasadan', 'Patanjali-sevasadan', 'Butter Roti ', 3, '20.00', 'CANUSER', '', 'cod', '2021-10-02 13:58:41'),
(147, 97, 48, 11, 'B 104, sevasadan', 'Patanjali-sevasadan', 'Shahi Paneer', 1, '185.00', 'CANUSER', '', 'cod', '2021-10-02 13:58:41'),
(148, 98, 61, 11, 'A111 Anandam City', 'Arihantcollg', 'Aloo Pyaz Paratha Tandoori', 3, '55.00', 'pending', '', 'cod', '2021-10-11 06:22:45'),
(149, 99, 63, 12, 'Brijesh Kumar, C-003, Block-C, Arogayam Society, Delhi-Haridwar Highway, Opp. Crystal World, Haridwar, Uttarakhand', 'Arogyam', 'Paneer Naan', 1, '65.00', 'pending', '', 'cod', '2021-10-19 14:34:11'),
(150, 99, 63, 12, 'Brijesh Kumar, C-003, Block-C, Arogayam Society, Delhi-Haridwar Highway, Opp. Crystal World, Haridwar, Uttarakhand', 'Arogyam', 'Tandoori Roti', 1, '10.00', 'pending', '', 'cod', '2021-10-19 14:34:11'),
(151, 99, 63, 12, 'Brijesh Kumar, C-003, Block-C, Arogayam Society, Delhi-Haridwar Highway, Opp. Crystal World, Haridwar, Uttarakhand', 'Arogyam', 'Veg Chowmein', 1, '65.00', 'pending', '', 'cod', '2021-10-19 14:34:11'),
(152, 99, 63, 12, 'Brijesh Kumar, C-003, Block-C, Arogayam Society, Delhi-Haridwar Highway, Opp. Crystal World, Haridwar, Uttarakhand', 'Arogyam', 'Mix Veg', 1, '120.00', 'pending', '', 'cod', '2021-10-19 14:34:11'),
(153, 100, 40, 1, 'K-008,Aarogyam Suites,Haridwar', 'Arogyam', 'Aloo Tikki - Burger ', 2, '35.00', 'CANUSER', '', 'cod', '2021-11-22 05:19:32'),
(154, 100, 40, 1, 'K-008,Aarogyam Suites,Haridwar', 'Arogyam', 'Onion & Jalapeno - Pizza', 1, '99.00', 'CANUSER', '', 'cod', '2021-11-22 05:19:32'),
(155, 101, 40, 1, 'K-008,Arogyam Suites, Haridwar', 'Arogyam', 'Veggiee - Sandwich (2. Pcs)', 1, '30.00', 'CANUSER', '', 'cod', '2021-11-23 08:03:28'),
(156, 101, 40, 1, 'K-008,Arogyam Suites, Haridwar', 'Arogyam', 'Aloo Tikki - Burger ', 1, '35.00', 'CANUSER', '', 'cod', '2021-11-23 08:03:28'),
(157, 101, 40, 1, 'K-008,Arogyam Suites, Haridwar', 'Arogyam', 'Paneer & Capsicum - Pizza', 1, '109.00', 'CANUSER', '', 'cod', '2021-11-23 08:03:28'),
(158, 102, 1, 1, 'khvgujcfyvhibnl', 'Patanjali-1', 'Aloo Tikki - Burger ', 15, '35.00', 'pending', '', 'cod', '2023-01-06 05:25:46'),
(159, 103, 1, 1, ',nbm>', 'COER', 'Aloo Tikki - Burger ', 15, '35.00', 'in process', 'rider on the way', 'cod', '2023-01-06 06:03:45'),
(160, 104, 1, 1, 'hjhkj', 'COER', 'Cheesy  - Burger ', 15, '55.00', 'pending', 'rider on the way', 'cod', '2023-01-06 06:09:56');

-- --------------------------------------------------------

--
-- Table structure for table `users_orders_info`
--

CREATE TABLE `users_orders_info` (
  `id` int(11) NOT NULL,
  `products` varchar(30) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_total` varchar(25) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users_orders_info`
--

INSERT INTO `users_orders_info` (`id`, `products`, `user_id`, `order_total`, `created_at`) VALUES
(1, '4', 28, '', '2021-07-08 14:34:37'),
(2, '2', 36, '', '2021-07-08 14:43:54'),
(65, '2', 1, '', '2021-07-08 15:14:59'),
(66, '3', 37, '', '2021-07-11 15:20:26'),
(67, '6', 38, '', '2021-07-12 05:21:34'),
(68, '2', 28, '', '2021-07-15 15:25:03'),
(69, '2', 38, '', '2021-07-18 12:05:54'),
(70, '2', 28, '', '2021-07-18 14:29:44'),
(71, '2', 40, '', '2021-07-21 06:17:19'),
(72, '2', 38, '', '2021-07-21 06:48:00'),
(73, '3', 40, '', '2021-07-22 08:35:29'),
(74, '7', 38, '', '2021-07-29 14:12:27'),
(75, '6', 27, '', '2021-07-29 14:47:29'),
(76, '2', 40, '', '2021-07-31 05:33:47'),
(77, '2', 40, '', '2021-08-03 07:36:59'),
(78, '1', 1, '', '2021-08-05 05:27:59'),
(79, '3', 1, '', '2021-08-05 05:29:07'),
(80, '3', 1, '', '2021-08-05 05:31:05'),
(81, '3', 1, '', '2021-08-05 05:33:19'),
(82, '3', 1, '', '2021-08-05 05:36:39'),
(83, '3', 1, '', '2021-08-05 05:39:50'),
(84, '3', 1, '', '2021-08-05 05:41:30'),
(85, '3', 1, '', '2021-08-05 05:42:36'),
(86, '1', 28, '', '2021-08-21 13:24:50'),
(87, '3', 45, '', '2021-08-26 14:16:20'),
(88, '2', 46, '', '2021-08-28 14:32:50'),
(89, '2', 46, '', '2021-08-28 14:34:09'),
(90, '3', 47, '', '2021-08-29 06:29:09'),
(91, '3', 48, '', '2021-08-29 11:52:14'),
(92, '2', 51, '', '2021-09-04 08:51:29'),
(93, '3', 52, '', '2021-09-04 15:14:55'),
(94, '3', 48, '', '2021-09-07 13:37:43'),
(95, '6', 55, '', '2021-09-20 07:03:19'),
(96, '2', 48, '', '2021-09-21 15:50:13'),
(97, '2', 48, '', '2021-10-02 13:16:24'),
(98, '1', 61, '', '2021-10-11 06:22:45'),
(99, '4', 63, '', '2021-10-19 14:34:11'),
(100, '2', 40, '', '2021-11-22 04:55:24'),
(101, '3', 40, '', '2021-11-23 07:33:44'),
(102, '1', 1, '', '2023-01-06 05:25:46'),
(103, '1', 1, '', '2023-01-06 06:03:05'),
(104, '1', 1, '', '2023-01-06 06:08:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adm_id`);

--
-- Indexes for table `admin_codes`
--
ALTER TABLE `admin_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_form`
--
ALTER TABLE `contact_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `remark`
--
ALTER TABLE `remark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`rs_id`);

--
-- Indexes for table `res_category`
--
ALTER TABLE `res_category`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `users_orders`
--
ALTER TABLE `users_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_orders_info`
--
ALTER TABLE `users_orders_info`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adm_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `admin_codes`
--
ALTER TABLE `admin_codes`
  MODIFY `id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `contact_form`
--
ALTER TABLE `contact_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `dishes`
--
ALTER TABLE `dishes`
  MODIFY `d_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=718;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `remark`
--
ALTER TABLE `remark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `rs_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `res_category`
--
ALTER TABLE `res_category`
  MODIFY `c_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `users_orders`
--
ALTER TABLE `users_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT for table `users_orders_info`
--
ALTER TABLE `users_orders_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
