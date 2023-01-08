-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 01, 2021 at 06:41 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adm_id`, `username`, `password`, `email`, `code`, `date`) VALUES
(6, 'admin', 'ec580792aa15d258e55f2c6278f2d8e5', 'admin@gmail.com', '', '2021-03-28 07:39:58'),
(8, 'abc888', '6d0361d5777656072438f6e314a852bc', 'abc@gmail.com', 'QX5ZMN', '2018-04-13 18:12:30');

-- --------------------------------------------------------

--
-- Table structure for table `admin_codes`
--

CREATE TABLE `admin_codes` (
  `id` int(222) NOT NULL,
  `codes` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
-- Table structure for table `dishes`
--

CREATE TABLE `dishes` (
  `d_id` int(222) NOT NULL,
  `rs_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `slogan` varchar(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `img` varchar(222) NOT NULL,
  `featured` enum('Yes','No') NOT NULL DEFAULT 'No'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`d_id`, `rs_id`, `title`, `slogan`, `price`, `img`, `featured`) VALUES
(1, 1, 'Aloo Tikki - Burger ', 'Dish', '29.00', '01.jpg', 'No'),
(2, 1, 'Veggiee - Burger', 'Dish', '39.00', '02.jpg', 'No'),
(3, 1, 'Cheesy  - Burger ', 'Dish', '49.00', '03.jpg', 'Yes'),
(4, 1, 'Paneer  - Burger ', 'Dish', '59.00', '04.jpg', 'No'),
(5, 1, 'Maharaja  - Burger ', 'Dish', '69.00', '05.jpg', 'No'),
(6, 1, 'Veggiee - Sandwich (2. Pcs)', 'Cuisine', '30.00', '06.jpg', 'Yes'),
(7, 1, 'Grilled Corn - Sandwich(4 Pcs)', 'Cuisine', '60.00', '07.jpg', 'Yes'),
(8, 1, 'Chessy Grill - Sandwich(4 Pcs)', 'Cuisine', '90.00', '08.jpg', 'No'),
(9, 1, 'Red Sauce - Pasta', 'Dish', '80.00', '09.jpg', 'No'),
(10, 1, 'White Sauce - Pasta', 'Dish', '80.00', '10.jpg', 'No'),
(11, 1, 'Mix Sauce - Pasta', 'Dish', '100.00', '11.jpg', 'No'),
(12, 1, 'Tandoori - Pasta', 'Dish', '120.00', '12.jpg', 'No'),
(13, 1, 'Bake & Cheese - Pasta', 'Dish', '180.00', '13.jpg', 'No'),
(14, 1, 'French Fries', 'Wedges', '50.00', '14.jpg', 'No'),
(15, 1, 'Peri Peri - French Fries', 'Wedges', '70.00', '15.jpg', 'No'),
(16, 1, 'Cheesy Fries', 'Wedges', '80.00', '16.jpg', 'No'),
(17, 1, 'Fried Rice', 'Dish Of Cooked Rice', '60.00', '17.jpg', 'No'),
(18, 1, 'Manchurian', 'Indian - Chinese', '120.00', '18.jpg', 'No'),
(19, 1, 'Chilli Paneer', 'Indo - Chinese', '120.00', '19.jpg', 'No'),
(20, 1, 'Paneer Momos(6 Pcs)', 'Traditional Delicacy of Nepal', '50.00', '20.jpg', 'No'),
(21, 1, 'Spicy Corn  Roll  (Single)', 'Indian Street Food', '50.00', '21.jpg', 'No'),
(22, 1, 'Spicy Corn  Roll (Double)', 'Indian Street Food', '60.00', '22.jpg', 'No'),
(23, 1, 'Malai Chaap - Roll - Single', 'Indian Street Food', '60.00', '23.jpg', 'No'),
(24, 1, 'Malai Chaap - Roll - Double', 'Indian Street Food', '90.00', '24.jpg', 'No'),
(25, 1, 'Paneer - Roll - Single', 'Indian Street Food', '70.00', '25.jpg', 'No'),
(26, 1, 'Paneer - Roll - Double', 'Indian Street Food', '90.00', '26.jpg', 'No'),
(27, 1, 'Chilly Paneer - Roll - Single', 'Indian Street Food', '80.00', '27.jpg', 'No'),
(28, 1, 'Chilly Paneer - Roll - Double', 'Indian Street Food', '100.00', '28.jpg', 'No'),
(29, 1, 'Paneer Makhani - Roll - Single', 'Indian Street Food', '90.00', '29.jpg', 'No'),
(30, 1, 'Paneer Makhani - Roll - Double', 'Indian Street Food', '110.00', '30.jpg', 'No'),
(31, 1, 'Tandoori Paneer Tikka - Roll - Single', 'Indian Street Food', '100.00', '31.jpg', 'No'),
(32, 1, 'Tandoori Paneer Tikka - Roll - Double', 'Indian Street Food', '120.00', '32.jpg', 'No'),
(33, 1, 'Capasicum and Corn - Pizza', 'Italy Dish', '79.00', '33.jpg', 'No'),
(34, 1, 'Onion & Capsicum - Pizza', 'Italy Dish', '89.00', '34.jpg', 'No'),
(35, 1, 'Onion & Jalapeno - Pizza', 'Italy Dish', '89.00', '35.jpg', 'No'),
(36, 1, 'Onion & Corn - Pizza', 'Italy Dish', '89.00', '36.jpg', 'No'),
(37, 1, 'Onion & Cheese - Pizza', 'Italy Dish', '89.00', '37.jpg', 'No'),
(38, 1, 'Cheese & Corn - Pizza', 'Italy Dish', '89.00', '38.jpg', 'No'),
(39, 1, 'Corn & Mushroom - Pizza', 'Italy Dish', '99.00', '39.jpg', 'No'),
(40, 1, 'Paneer & Capsicum - Pizza', 'Italy Dish', '99.00', '40.jpg', 'No'),
(41, 1, 'Paneer & Onion - Pizza', 'Italy Dish', '99.00', '41.jpg', 'No'),
(42, 1, 'Cheesy Marghrita - Pizza', 'Italy Dish', '129.00', '42.jpg', 'No'),
(43, 1, 'Veg. Loaded - Pizza', 'Italy Dish', '149.00', '43.jpg', 'No'),
(44, 1, 'Farm Fresh - Pizza', 'Italy Dish', '159.00', '44.jpg', 'No'),
(45, 1, 'Paneer Makhani Pizza', 'Italy Dish', '169.00', '45.jpg', 'No'),
(46, 1, 'Tandoori Paneer Tikka - Pizza', 'Italy Dish', '199.00', '46.jpg', 'No'),
(47, 1, 'Hot Tea', 'Beverage', '20.00', '47.jpg', 'No'),
(48, 1, 'Hot Coffee', 'Beverage', '30.00', '48.jpg', 'No'),
(49, 1, 'Fresh Lime Soda', 'Beverage', '50.00', '49.jpg', 'No'),
(50, 1, 'Virgin Majito', 'Beverage', '60.00', '50.jpg', 'No'),
(51, 1, 'Cold Coffee', 'Beverage', '60.00', '51.jpg', 'No'),
(52, 1, 'Chocolate Shake', 'Beverage', '70.00', '52.jpg', 'No'),
(53, 1, 'Strawberry Shake', 'Beverage', '70.00', '53.jpg', 'No'),
(54, 1, 'Black Current Shake', 'Beverage', '70.00', '54.jpg', 'No'),
(55, 1, 'Oreo Shake', 'Beverage', '80.00', '55.jpg', 'No'),
(56, 1, 'Kitkat Shake', 'Beverage', '80.00', '56.jpg', 'No'),
(58, 8, 'test', 'nanaanan', '121.00', '6065e2117c261.png', 'No');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `remark`
--

INSERT INTO `remark` (`id`, `frm_id`, `status`, `remark`, `remarkDate`) VALUES
(62, 32, 'in process', 'hi', '2018-04-18 17:35:52'),
(63, 32, 'closed', 'cc', '2018-04-18 17:36:46'),
(64, 32, 'in process', 'fff', '2018-04-18 18:01:37'),
(65, 32, 'closed', 'its delv', '2018-04-18 18:08:55'),
(66, 34, 'in process', 'on a way', '2018-04-18 18:56:32'),
(67, 35, 'closed', 'ok', '2018-04-18 18:59:08'),
(68, 37, 'in process', 'on the way!', '2018-04-18 19:50:06'),
(69, 37, 'rejected', 'if admin cancel for any reason this box is for remark only for buter perposes', '2018-04-18 19:51:19'),
(70, 37, 'closed', 'delivered success', '2018-04-18 19:51:50'),
(71, 39, 'in process', 'we are processing the order', '2021-03-18 18:26:54'),
(72, 40, 'in process', 'aditya driver ', '2021-03-18 18:40:14'),
(73, 39, 'closed', 'delivered', '2021-03-18 18:42:22'),
(74, 41, 'in process', 'we are aligning the order', '2021-03-22 11:13:07'),
(75, 41, 'closed', 'dilivered', '2021-03-22 11:14:12'),
(76, 41, 'rejected', 'qa', '2021-03-22 11:14:44'),
(77, 41, 'in process', 'MANU IS on his way !\r\nyhou can each him on 750000006161\r\n', '2021-03-22 11:15:52'),
(78, 40, 'rejected', 'tt', '2021-03-22 11:19:33'),
(79, 38, 'closed', 'ter', '2021-03-29 15:32:31'),
(80, 38, 'rejected', 'saa', '2021-03-29 15:32:52'),
(81, 38, 'in process', 'tes', '2021-03-29 15:34:31'),
(82, 51, 'in process', 'ok', '2021-03-30 13:33:54'),
(83, 51, 'closed', 'Dispached', '2021-03-30 13:35:28'),
(86, 52, 'in process', 'process\r\n', '2021-03-30 15:36:25'),
(87, 52, 'closed', 'delivered sucess', '2021-03-30 15:37:05'),
(88, 52, 'in process', 'the rider Anshul is on the way !\r\n<a href=\"tel:+917617477477\">CALL HIM</a>', '2021-03-30 15:38:25');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `rs_id` int(222) NOT NULL,
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
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`rs_id`, `c_id`, `title`, `email`, `phone`, `url`, `o_hr`, `c_hr`, `o_days`, `address`, `star`, `image`, `date`) VALUES
(1, 3, 'Hungry\'s Cafe', 'operations@rowdymeals.com', '7455973478', 'www.rowdymeals.com', '8am', '10pm', 'mon-sun', 'Phase no- 1 opposite Gate no 4 patanjali yogpeeth Santarsha road, Bahadarabad, Uttarakhand 249405\n', '5 Star', '5ad74ce37c383.jpg', '2021-03-27 15:22:22'),
(2, 2, 'Nancy Dhaba', 'operations@rowdymeals.com', '7455973478', 'www.rowdymeals.com', '8am', '10pm', 'mon-sun', 'Near Arogyam, Patanjali , Haridwar-2494005', '5', '5ad74de005016.jpg', '2021-03-25 17:47:22'),
(3, 4, 'PG Food Court', 'operations@rowdymeals.com', '7455973478', 'www.rowdymeals.com', '8am', '10pm', 'mon-sun', 'Phase no. 2, Patanjali, Haridwar-249405', '5', '5ad74e5310ae4.jpg', '2021-03-25 17:47:11'),
(4, 4, 'Tejasvi Hotel', 'operations@rowdymeals.com', '7455973478', 'www.rowdymeals.com', '8am', '10pm', 'mon-sun', 'Phase no. 2, Patanjali, Haridwar-249405', '5', '5ad74ebf1d103.jpg', '2021-03-25 17:47:12'),
(6, 2, 'Hungry\'s Cafe1', 'sgamharidwar@gmail.com', '7500006161', 'https://rajkumarvishandas.in/', '7am', '7pm', 'mon-wed', 'L-117 harilok Colony\r\nNear Jatwada Pul , Jwalapur', '5', '605d65f2cec4f.jpg', '2021-03-26 04:41:22'),
(8, 12, 'Hungry\'s Cafe2', 'adityanamansingh@gmail.com', '7500006161', 'https://axenic-uv.com/', '8am', '10pm', 'mon-sun', 'L-117 harilok Colonnmbandasdn  d sad ad adsad sadsa da d', '', '6065e1bf687cf.png', '2021-04-01 15:07:43');

-- --------------------------------------------------------

--
-- Table structure for table `res_category`
--

CREATE TABLE `res_category` (
  `c_id` int(222) NOT NULL,
  `c_name` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `res_category`
--

INSERT INTO `res_category` (`c_id`, `c_name`, `date`) VALUES
(2, 'Arogyam', '2021-03-29 15:47:05'),
(3, 'Patanjali-Phase1 ', '2021-03-25 18:01:20'),
(4, 'Patanjali-Phase2', '2021-03-25 18:02:25'),
(12, 'Hari_Ashray_Nagar', '2021-04-01 15:07:00');

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
  `status` int(222) NOT NULL DEFAULT 1,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `status`, `date`) VALUES
(34, 'testuser', 'Aditya', 'Singh', 'testuser@rowdymeals.com', '7617477477', 'ec580792aa15d258e55f2c6278f2d8e5', 1, '2021-03-30 17:07:23'),
(39, 'mehuluser', 'Mehul ', 'Tyagi', 'mehul@rowdymeals.com', '7895973478', '34e6b69e7c2cf124e1fb15367003f737', 1, '2021-04-01 15:04:55');

-- --------------------------------------------------------

--
-- Table structure for table `users_orders`
--

CREATE TABLE `users_orders` (
  `o_id` int(222) NOT NULL,
  `u_id` int(222) NOT NULL,
  `address` text NOT NULL,
  `area` text NOT NULL,
  `title` varchar(222) NOT NULL,
  `quantity` int(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` enum('closed','rejected','CANUSER','in process','pending') NOT NULL DEFAULT 'pending',
  `remarks` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_orders`
--

INSERT INTO `users_orders` (`o_id`, `u_id`, `address`, `area`, `title`, `quantity`, `price`, `status`, `remarks`, `date`) VALUES
(38, 31, '', '', 'Red Robins Chick on a Stick', 2, '34.99', '', '', '2021-03-29 15:34:31'),
(39, 33, '', '', 'Bonefish', 1, '55.77', '', '', '2021-03-18 18:42:23'),
(40, 33, '', '', 'Uno Pizzeria & Grill', 1, '12.35', '', '', '2021-03-22 11:19:33'),
(41, 33, '', '', 'Bonefish', 1, '55.77', '', '', '2021-03-22 11:15:52'),
(42, 33, '', '', 'Hard Rock Cafe', 1, '22.12', '', '', '2021-03-22 10:53:37'),
(44, 34, 'Anasa ananans saajsnasas jnsnasjnsjsna', 'Arogyam', 'Aloo Tikki - Burger ', 5, '29.00', 'CANUSER', '', '2021-03-30 17:36:15'),
(45, 34, 'Anasa ananans saajsnasas jnsnasjnsjsna', 'Arogyam', 'Cheesy  - Burger ', 3, '49.00', 'closed', '', '2021-03-30 14:24:24'),
(46, 34, 'awddasdadz asdsadda', 'Arogyam', 'Aloo Tikki - Burger ', 5, '29.00', 'rejected', '', '2021-03-30 14:24:30'),
(47, 34, 'san', 'Arogyam', 'Aloo Tikki - Burger ', 5, '29.00', 'CANUSER', '', '2021-03-30 14:24:34'),
(48, 34, 'san', 'Arogyam', 'Cheesy  - Burger ', 2, '49.00', 'in process', '', '2021-03-30 14:24:41'),
(49, 34, 'patanjli k side wali gali meh  3 ghr chd k  ', 'Patanjali', 'Cold Coffee', 1, '60.00', 'CANUSER', '', '2021-03-30 17:36:10'),
(50, 34, 'patanjli k side wali gali meh  3 ghr chd k  ', 'Patanjali', 'Aloo Tikki - Burger ', 1, '29.00', 'closed', '', '2021-03-30 14:24:53'),
(51, 34, 'patanjli k side wali gali meh  3 ghr chd k  ', 'Patanjali', 'Paneer  - Burger ', 2, '59.00', 'CANUSER', '', '2021-03-30 14:24:58'),
(52, 34, 'teststst', 'Arogyam', 'Maharaja  - Burger ', 5, '69.00', 'closed', 'delivered', '2021-03-30 16:25:09'),
(53, 34, 'test', 'Arogyam', 'Tandoori Paneer Tikka - Roll - Double', 2, '120.00', 'CANUSER', '', '2021-03-30 17:36:00'),
(54, 34, 'sds\r\n', 'Arogyam', 'Tandoori Paneer Tikka - Roll - Double', 2, '120.00', 'CANUSER', '', '2021-03-30 17:35:58'),
(55, 34, 'ys', 'Arogyam', 'Tandoori Paneer Tikka - Roll - Double', 2, '120.00', 'CANUSER', '', '2021-03-30 17:35:54'),
(56, 34, 'rew', 'Arogyam', 'Tandoori Paneer Tikka - Roll - Double', 2, '120.00', 'CANUSER', '', '2021-03-30 17:35:51'),
(57, 34, 'coer college\r\n', 'Arogyam', 'Red Sauce - Pasta', 1, '80.00', 'pending', '', '2021-03-31 07:49:07'),
(58, 34, 'coer college\r\n', 'Arogyam', 'White Sauce - Pasta', 1, '80.00', 'closed', 'deliveredf sucessss', '2021-03-31 07:57:21'),
(59, 34, 'testing ', 'Arogyam', 'Paneer  - Burger ', 2, '59.00', 'in process', 'testi', '2021-04-01 15:12:34'),
(60, 34, 'testing ', 'Arogyam', 'Cheesy  - Burger ', 2, '49.00', 'rejected', 'Admin  canclled', '2021-04-01 15:11:59'),
(61, 39, 'test', 'Arogyam', 'Aloo Tikki - Burger ', 2, '29.00', 'pending', '', '2021-04-01 16:21:42'),
(62, 39, 'test', 'Arogyam', 'Chessy Grill - Sandwich(4 Pcs)', 2, '90.00', 'pending', '', '2021-04-01 16:21:42');

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
-- Indexes for table `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`d_id`);

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
  ADD PRIMARY KEY (`o_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adm_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `admin_codes`
--
ALTER TABLE `admin_codes`
  MODIFY `id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `dishes`
--
ALTER TABLE `dishes`
  MODIFY `d_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `remark`
--
ALTER TABLE `remark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `rs_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `res_category`
--
ALTER TABLE `res_category`
  MODIFY `c_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `users_orders`
--
ALTER TABLE `users_orders`
  MODIFY `o_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
