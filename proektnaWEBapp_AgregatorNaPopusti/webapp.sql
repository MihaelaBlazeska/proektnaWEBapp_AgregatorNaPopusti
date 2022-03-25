-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 20, 2021 at 09:32 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category`) VALUES
(1, 'clothing'),
(2, 'technique'),
(3, 'travelling'),
(4, 'restaurants'),
(5, 'cosmetics'),
(6, 'jewellery');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `image` varchar(200) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `title`, `image`, `text`) VALUES
(78, 'When is the best time to make a purchase in Stradivarius', 'stradivarius-sale-offer-offer-20869.jpg', 'Sign up for the newsletter to be the first in line for exclusive offers, unmissable sales, trend alerts and new collection launches. Keep up with all the latest news to get inspired by this season’s top trends and never miss out on a bargain with great deals sent straight to your inbox.\r\nGet free delivery when you spend over £40. With so many tempting clothes and accessories to choose from, it’ll be hard to resist hitting the minimum spend for free home delivery.\r\nOr, if you don’t want to wait for the postie, have your order delivered to a convenient store or drop point near you with the free click and collect service. Simply select ‘collect your order’ when choosing delivery options. Your order will be available to pick up within 48 hours, so you’ll be modelling your hot new look before you know it.'),
(129, 'PrettyLittleThing Coupons & Savings Tips', '5-of-our-favourite-items-from-the-Little-Mix-x-PLT-collection-08.jpg', 'PrettyLittleThing regularly has pop-ups or banners on its website displaying a site-wide coupon code.\r\nCreate an account on PrettyLittleThing.com, and you can opt in to receive coupon codes and exclusive offers by email, mail or SMS.\r\nIf you sign up for the company email list, you will receive information about the PrettyLittleThing refer-a-friend program. You can earn discounts and store credit by sharing your personal link with friends.');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `description` varchar(1500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `description`) VALUES
(1056, 'bershka dress 8 530.00,'),
(8565, 'zara skirt 2 3,000.00,bershka dress 2 1,060.00,Total=4,060.00'),
(8906, 'zara skirt 2 1,500.00,amc AC 1 10,000.00,MyTime watch 1 5,000.00,b-watch watch 2 2,500.00,'),
(9630, 'zara nov 2 400.00,bershka dress 3 530.00,');

-- --------------------------------------------------------

--
-- Table structure for table `popusti`
--

CREATE TABLE `popusti` (
  `discountID` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `product` varchar(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `discounted_price` int(11) NOT NULL,
  `date_from` date NOT NULL,
  `date_end` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `popusti`
--

INSERT INTO `popusti` (`discountID`, `user_id`, `name`, `product`, `category_id`, `price`, `discounted_price`, `date_from`, `date_end`) VALUES
(2, 1, 'bershka', 'dress', 1, 600, 530, '2021-08-23', '2021-09-14'),
(5, 3, 'rapsody_travel', 'Greece', 3, 16000, 12000, '2021-08-29', '2021-09-30'),
(6, 4, 'amc', 'AC', 2, 14000, 10000, '2021-09-28', '2021-09-30'),
(8, 5, 'balkanfun', 'Serbia', 3, 10000, 8500, '2021-08-28', '2021-09-15'),
(9, 6, 'pelister', 'Valentine\'s', 4, 1000, 800, '2021-12-30', '2021-12-01'),
(10, 7, 'daily', 'NewYear', 4, 3000, 2500, '2021-02-12', '2021-02-14'),
(11, 8, 'dm', 'foundation', 5, 1000, 800, '2021-03-07', '2021-03-09'),
(12, 9, 'cosmo', 'eye-shadow', 5, 1200, 900, '2021-08-28', '2021-09-30'),
(13, 10, 'MyTime', 'watch', 6, 7000, 5000, '2021-09-30', '2021-10-30'),
(14, 11, 'b-watch', 'watch', 6, 5000, 2500, '2021-08-23', '2021-08-25'),
(15, 2, 'tehnomarket', 'TV', 2, 30000, 26000, '2021-08-28', '2021-09-20'),
(666, 3612903, 'nov', 'dinner', 4, 1000, 500, '2021-09-03', '2021-09-29'),
(12312, 0, 'zara', 'skirt', 1, 2000, 1500, '2021-08-03', '2021-09-29'),
(77777, 3612903, 'nov', 'nov', 1, 777, 770, '2021-09-03', '2021-09-03'),
(87898, 0, 'zara', 'coat', 1, 6000, 4500, '2021-09-03', '2021-09-29'),
(1076327, 0, 'zara', 'dress', 1, 1000, 800, '2021-08-05', '2021-09-03');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(22) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`) VALUES
(0, 'zaraAdmin', '554fff6738aec37629717794db6d22487c624b44'),
(1, 'bershkaAdmin', '02ad6fe32138c07f369d777b97eec1e5a10cb861'),
(2, 'tehnomarketAdmin', '677759d42c3d77887cc528d2b83e02c9614ab5bc'),
(3, 'rapsodyAdmin', '2ffc3ec163565077213693361fb9ff0fcdc6eaec'),
(4, 'amcAdmin', '7424684f4afa6c7b595e58e83a266ac9e9e61781'),
(5, 'balkanfunAdmin', '6f478b856b861e611668636c8d8f4bd8065651ae'),
(6, 'pelisterAdmin', 'f504db753ec74969f3eceb0464fbf80ebb18fa0b'),
(7, 'dailyAdmin', '2122286bc49d2efd0c97bff66c694ea28ae07e4e'),
(8, 'dmAdmin', '397692316df2954c75a505e4a41b8f2e49cba67d'),
(9, 'cosmoAdmin', 'd62741f3ed97faa6da63c2e3400de2f2338aced3'),
(10, 'mytimeAdmin', 'c0defebb2e18142eab6f6de811c9f159bbdffebb'),
(11, 'bwatchAdmin', '7132d2a7ca4d2c45b55171ae48cfaa0065e9a56a'),
(5000, 'proba', 'c5c63d3d0200a52c781defb1163838e1ae375030'),
(3612903, 'nov', 'a279759e79f0278ef561fc92545fcb40011f873b');

-- --------------------------------------------------------

--
-- Table structure for table `user_requests`
--

CREATE TABLE `user_requests` (
  `user_id` int(11) NOT NULL,
  `username` varchar(22) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_requests`
--

INSERT INTO `user_requests` (`user_id`, `username`, `password`) VALUES
(5059, 'proba2', '77613cc1a3c10c8f6207672731dd88e5ebaf7a31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `popusti`
--
ALTER TABLE `popusti`
  ADD PRIMARY KEY (`discountID`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `popusti`
--
ALTER TABLE `popusti`
  MODIFY `discountID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1234568;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `popusti`
--
ALTER TABLE `popusti`
  ADD CONSTRAINT `popusti_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `popusti_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
