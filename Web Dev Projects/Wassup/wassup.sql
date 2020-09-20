-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 20, 2020 at 08:32 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.3.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wassup`
--

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(100) NOT NULL,
  `sent_by` varchar(255) CHARACTER SET latin1 NOT NULL,
  `received_by` varchar(255) CHARACTER SET latin1 NOT NULL,
  `message` varchar(255) CHARACTER SET latin1 NOT NULL,
  `createdAt` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `sent_by`, `received_by`, `message`, `createdAt`) VALUES
(21, 'rupeshmohanty67@gmail.com', 'trideep.india@gmail.com', 'Hey man can you help me with this new project?', '2020-09-20 02:51:05am'),
(22, 'trideep.india@gmail.com', 'rupeshmohanty67@gmail.com', 'Yeah sure', '2020-09-20 02:51:30am'),
(23, 'trideep.india@gmail.com', 'rupeshmohanty67@gmail.com', 'Whats the project about?', '2020-09-20 02:51:39am'),
(24, 'rupeshmohanty67@gmail.com', 'trideep.india@gmail.com', 'Its a chat api which i am making using core PHP', '2020-09-20 02:51:57am');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `email` varchar(255) CHARACTER SET latin1 NOT NULL,
  `password` varchar(255) CHARACTER SET latin1 NOT NULL,
  `dp` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `dp`) VALUES
(1, 'Rupesh Chandra Mohanty', 'rupeshmohanty67@gmail.com', 'test@12345', 'me.jpg'),
(2, 'Suryansu Dash', 'suryansu05@gmail.com', 'mlai@05', 'suryansu.jpg'),
(3, 'Trideep Barik', 'trideep.india@gmail.com', 'webdev95', 'trideep.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
