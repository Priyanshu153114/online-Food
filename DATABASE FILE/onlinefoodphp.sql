-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2022 at 03:22 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlinefoodphp`
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
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adm_id`, `username`, `password`, `email`, `code`, `date`) VALUES
(1, 'admin', 'CAC29D7A34687EB14B37068EE4708E7B', 'admin@mail.com', '', '2022-05-27 13:21:52');

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
  `img` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`d_id`, `rs_id`, `title`, `slogan`, `price`, `img`) VALUES
(1, 1, 'Samosa', 'A samosa or singara is a fried South Asian pastry with a savoury filling, including ingredients such as spiced potatoes, onions, and peas.', '55.00', 'samosa.jpg'),
(2, 1, 'Patties', 'A patty or burger (in British English) is a flattened, usually round, serving of ground meat and/or legumes, grains, vegetables, or meat alternatives.', '75.00', 'patties.jpg'),
(3, 4, 'Fried Rice', 'Fried rice is a dish of cooked rice that has been stir-fried in a wok or a frying pan and is usually mixed with other ingredients such as eggs, vegetables, seafood, or meat.', '120.00', 'rice.jpg'),
(4, 1, 'Tea', 'Tea Treasure wellness tea, High quality Teas available online at Tea Treasure.', '15.00', 'tea.jpg'),
(5, 2, 'Coffee', 'Coffee is a beverage prepared from roasted coffee beans. Darkly colored, bitter, and slightly acidic, coffee has a stimulating effect on humans, primarily due to its caffeine content.', '90.00', 'coffee.jpg'),
(6, 2, 'Egg Curry', 'Egg curry is a popular side dish made with boiled eggs cooked in onion tomato gravy. \'s fluffy, cheesy.', '210.00', 'egg.jpg'),
(7, 2, 'Chowmein', 'Chowmein is a Chinese dish made from stir-fried noodles with vegetables and sometimes meat or tofu.', '99.00', 'R.jpg'),
(8, 2, 'Manchurian', 'Manchurian is a class of Indian Chinese dishes made by roughly chopping and deep-frying ingredients such as chicken.', '120.00', 'manchurin.jpg'),
(9, 3, 'Egg Roll', 'An egg roll is a cylindrical, savory roll with shredded cabbage, chopped pork, and other.', '70.00', 'eggroll.jpg'),
(10, 3, 'Chicken Wings', 'A chicken wings very delicious .', '230.00', 'wings.jpg'),
(11, 3, 'Spring Rolls', 'Lightly seasoned shredded cabbage, onion and carrots, wrapped in house made spring roll wrappers, deep fried to golden brown.', '60.00', 'spring.jpg'),
(12, 3, 'Chicken Roast', 'Chicken pieces slow cooked with spring onions in our house made manchurian style sauce.', '110.00', 'roast.jpg'),
(13, 4, ' Biryani', 'Crispy chilli paneer is a Indo chinese starter or appetizer made by tossing fried paneer in sweet sour and spicy chilli sauce.', '240.00', 'biryani.jpg'),
(14, 4, 'Paneer Chilli', 'Served with our traditional spicy queso and marinara sauce.', '260.00', 'paneer.jpg'),
(15, 4, 'Salad', 'A salad is a healthy way to enjoy a range of nutrients, including vitamins, minerals, antioxidants, and beneficial plant compounds.', '60.00', 'salade.jpg'),
(16, 4, 'Roti', 'Roti is simplest bread that is made everyday in Indian households. ', '10.00', 'roti.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `remark`
--

CREATE TABLE `remark` (
  `id` int(11) NOT NULL,
  `frm_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `remark`
--

INSERT INTO `remark` (`id`, `frm_id`, `status`, `remark`, `remarkDate`) VALUES
(1, 2, 'in process', 'none', '2023-03-31 08:10:35'),
(2, 3, 'in process', 'none', '2023-03-31 08:10:35'),
(3, 2, 'closed', 'thank you for your order!', '2023-03-31 08:10:35'),
(4, 3, 'closed', 'none', '22023-03-31 08:10:35'),
(5, 4, 'in process', 'none', '2023-03-31 08:10:35'),
(6, 1, 'rejected', 'none', '2023-03-31 08:10:35'),
(7, 7, 'in process', 'none', '2023-03-31 08:10:35'),
(8, 8, 'in process', 'none', '2023-03-31 08:10:35'),
(9, 9, 'rejected', 'thank you', '2023-03-31 08:10:35'),
(10, 7, 'closed', 'thank you for your ordering with us', '2023-03-31 08:10:35'),
(11, 8, 'closed', 'thanks ', '2023-03-31 08:10:35'),
(12, 5, 'closed', 'none', '2023-03-31 08:10:35');

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
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`rs_id`, `c_id`, `title`, `email`, `phone`, `url`, `o_hr`, `c_hr`, `o_days`, `address`, `image`, `date`) VALUES
(1, 1, 'AMAN CAFE', 'amancafe@mail.com', '6397599573', 'www.amancafe.com', '8am', '8pm', 'mon-sat', '142024 CT University', '6290877b473ce.jpg', '2023-03-31 08:10:35'),
(2, 2, 'TIM CAFE', 'timcafe@gmail.com', '0557426406', 'www.timcafe.com', '11am', '9pm', 'Mon-Sat', '142024 CT University', '606d720b5fc71.jpg', '2023-03-31 08:10:35'),
(3, 3, 'ROYAL CRISPY', 'royalcripy@mail.com', '1458745855', 'www.royalcripy5.com', '9am', '8pm', 'mon-sat', '142024 CT University', '6290860e72d1e.jpg', '2023-03-31 08:10:35'),
(4, 4, 'ANNAPURNA CAFE', 'annpurnacafe@mail.com', '6545687458', 'www.annpurnacafe.com', '7am', '8pm', 'mon-sat', '142024 CT University', '6290af6f81887.jpg', '2023-03-31 08:10:35');

-- --------------------------------------------------------

--
-- Table structure for table `res_category`
--

CREATE TABLE `res_category` (
  `c_id` int(222) NOT NULL,
  `c_name` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `res_category`
--

INSERT INTO `res_category` (`c_id`, `c_name`, `date`) VALUES
(1, 'Soft_Drinks', '2023-03-31 08:10:35'),
(2, 'Groceries', '2023-03-31 08:10:35'),
(3, 'Snacks', '2023-03-31 08:10:35'),
(4, 'Veg_Food', '2023-03-31 08:10:35');

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
  `address` text NOT NULL,
  `status` int(222) NOT NULL DEFAULT '1',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `address`, `status`, `date`) VALUES
(1, 'priyanshu', 'Priyanshu', 'Kumar', 'priyanshu@mail.com', '7909086758', 'Abhi@9045', 'CT University', 1, '2023-03-31 08:10:35');


--
-- Table structure for table `users_orders`
--

CREATE TABLE `users_orders` (
  `o_id` int(222) NOT NULL,
  `u_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `quantity` int(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(222) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_orders`
--

INSERT INTO `users_orders` (`o_id`, `u_id`, `title`, `quantity`, `price`, `status`, `date`) VALUES
(1, 4, 'Spring Rolls', 2, '60.00', 'rejected', '2023-03-31 11:43:26'),
(2, 4, 'Chicken Wings', 1, '230.00', 'closed', '2023-03-31 11:43:26'),
(3, 5, 'Fried Rice', 1, '120.00', 'closed', '2023-03-31 11:43:26'),
(4, 5, 'Egg Curry', 1, '90.00', 'in process', '2023-03-31 11:43:26'),
(5, 5, 'Roti', 1, '10.00', 'closed', '2023-03-31 11:43:26'),
(6, 5, 'Samosa', 1, '55.00', NULL, '2023-03-31 11:43:26'),
(7, 6, 'Samosa', 1, '55.00', 'closed', '2023-03-31 11:43:26'),
(8, 6, 'Patties', 1, '75.00', 'closed', '2023-03-31 11:43:26'),
(9, 6, 'Tea', 1, '15.00', 'rejected', '2023-03-31 11:43:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adm_id`);

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
  MODIFY `adm_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `dishes`
--
ALTER TABLE `dishes`
  MODIFY `d_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `remark`
--
ALTER TABLE `remark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `rs_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `res_category`
--
ALTER TABLE `res_category`
  MODIFY `c_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `users_orders`
--
ALTER TABLE `users_orders`
  MODIFY `o_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
