-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2024 at 08:20 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `social_media`
--

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `organization` varchar(255) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `salary` decimal(11,2) UNSIGNED DEFAULT 0.00,
  `status` tinyint(3) UNSIGNED DEFAULT 0,
  `is_deleted` tinyint(3) UNSIGNED DEFAULT 0,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `first_name`, `last_name`, `email`, `phone`, `organization`, `designation`, `salary`, `status`, `is_deleted`, `created_at`, `updated_at`) VALUES
(19, 'Shivam', 'Vishwakarma', 'vishwakarma888115@gmail.com', '8881157775', 'Nirvaat', 'Developer', 2.00, 1, 0, '2024-06-08 23:20:44', '2024-06-08 23:21:11');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `user_name`, `password`, `created_at`, `updated_at`) VALUES
(6, 'sdf', '$2b$10$FMk3OYHBVtGsuSzi29Pcj.MQWP7vyE2ZVJcI6l3/uVLRdOGRMWES2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, '12q', '$2b$10$832MJrLweRfJu.H/gG/2sumFMn/Q60DE.zefMDK7iPgFbUicD.Ioe', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'asd', '$2b$10$pqWSJoK9GLdA9D/oU58foeGf9RQGQ1bNxGxNipL6CzDmS1UY7ktay', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, '1232', '$2b$10$d76yOCNE1pQJkye28Gbp1.dMf/1yMyurQv/plkKDlaAd7INRF6MAa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Shivam', '$2b$10$aNbut6CiqZhJtx5YE6E.LemZhUBnWWbvJ5h4QafSjNCGaDl6xwY0O', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'admin', '$2b$10$NJ0i0LHVAFQ2xi7SxAV7b.kpHFbvstim0faY46rFB8KB7kT4/cdp.', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
