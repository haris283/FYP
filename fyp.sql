-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 16, 2022 at 03:52 PM
-- Server version: 5.7.24
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fyp`
--

-- --------------------------------------------------------

--
-- Table structure for table `bid`
--

CREATE TABLE `bid` (
  `id` int(11) NOT NULL,
  `supplier_Id` int(11) NOT NULL,
  `products_list_id` int(11) NOT NULL,
  `price` float NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bid`
--

INSERT INTO `bid` (`id`, `supplier_Id`, `products_list_id`, `price`, `date`) VALUES
(1, 1, 1, 12, '2022-05-31'),
(2, 1, 2, 14, '2022-06-01'),
(4, 2, 1, 1233, '2022-06-01'),
(5, 2, 2, 1233, '2022-06-01'),
(6, 3, 1, 3, '2022-06-12'),
(7, 3, 2, 908, '2022-06-14');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(7677) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Stationary'),
(2, 'Plastic'),
(3, 'Electric'),
(4, 'Others');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` int(11) NOT NULL,
  `name` varchar(655) NOT NULL,
  `username` varchar(655) NOT NULL,
  `password` varchar(655) NOT NULL,
  `email` varchar(655) NOT NULL,
  `signup_token` varchar(655) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `name`, `username`, `password`, `email`, `signup_token`) VALUES
(1, '10pearls', '10pls', '10pls123', 'je@gmail.com', 'COM-17470'),
(2, 'systems company', 'system', 'systems123', 'systems@gmail.com', 'COM-84213'),
(3, 'vinncorp company', 'vinncorp', 'vinncorp123', 'vincorp@gmail.com', 'COM-7124'),
(6, 'venture dive', 'venture', 'venture123', 'venture@gmail.com', 'COM-11077');

-- --------------------------------------------------------

--
-- Table structure for table `products_list`
--

CREATE TABLE `products_list` (
  `id` int(11) NOT NULL,
  `title` varchar(655) NOT NULL,
  `description` varchar(655) NOT NULL,
  `company_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `published_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products_list`
--

INSERT INTO `products_list` (`id`, `title`, `description`, `company_id`, `category_id`, `published_date`) VALUES
(1, 'yh  pahla title ha', 'yh pahla desc ha', 1, 1, '2022-05-20'),
(2, 'yh  doosra title ha', 'yh doosra desc ha', 1, 2, '2022-05-20'),
(7, 'yh systems walo ka title ha', 'yh systems walo ki desc ha', 2, 3, '2022-06-03'),
(8, 'yh dosree systems walo ka title ha', 'yh dosree systems walo ki desc ha', 2, 3, '2022-06-03'),
(9, 'yh vinncorp walo ka title ha', 'yh vinncopr walo ki desc ha', 3, 3, '2022-06-03'),
(10, 'yh dosree vinncorp walo ka title ha', 'yh dosree vinncopr walo ki desc ha', 3, 3, '2022-06-03');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id` int(11) NOT NULL,
  `first_name` varchar(655) NOT NULL,
  `last_name` varchar(655) NOT NULL,
  `email` varchar(655) NOT NULL,
  `user_name` varchar(655) NOT NULL,
  `password` varchar(655) NOT NULL,
  `signup_token` varchar(655) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id`, `first_name`, `last_name`, `email`, `user_name`, `password`, `signup_token`) VALUES
(1, 'Mohammad', 'Haris', 'm@gmail.com', 'haris', 'haris123', 'SUP-21510'),
(2, 'Tahir', 'Kapasi', 'jl@gmail.com', 'tahir', 'tahir123', 'SUP-53920'),
(3, 'strinefcfg', 'strinfefg', 'm@gmail.com', 'stddring', 'ddadd', 'SUP-26248'),
(4, 'Ali', 'Ahmed', 'ali@gmail.com', 'ali', 'ali123', 'SUP-48382'),
(5, 'Napier', 'John', 'napier@gmail.com', 'napier', 'napier123', 'SUP-5626');

-- --------------------------------------------------------

--
-- Table structure for table `supplier_categories`
--

CREATE TABLE `supplier_categories` (
  `id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `supplier_categories`
--

INSERT INTO `supplier_categories` (`id`, `supplier_id`, `categories_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 5, 3),
(5, 5, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bid`
--
ALTER TABLE `bid`
  ADD PRIMARY KEY (`id`),
  ADD KEY `supplier_Id` (`supplier_Id`),
  ADD KEY `productslist_Id` (`products_list_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_list`
--
ALTER TABLE `products_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `company_id` (`company_id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier_categories`
--
ALTER TABLE `supplier_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_id` (`categories_id`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bid`
--
ALTER TABLE `bid`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products_list`
--
ALTER TABLE `products_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `supplier_categories`
--
ALTER TABLE `supplier_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bid`
--
ALTER TABLE `bid`
  ADD CONSTRAINT `bid_ibfk_2` FOREIGN KEY (`supplier_Id`) REFERENCES `supplier` (`id`),
  ADD CONSTRAINT `bid_ibfk_3` FOREIGN KEY (`products_list_id`) REFERENCES `products_list` (`id`);

--
-- Constraints for table `products_list`
--
ALTER TABLE `products_list`
  ADD CONSTRAINT `products_list_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `products_list_ibfk_2` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`);

--
-- Constraints for table `supplier_categories`
--
ALTER TABLE `supplier_categories`
  ADD CONSTRAINT `supplier_categories_ibfk_1` FOREIGN KEY (`categories_id`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `supplier_categories_ibfk_2` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
