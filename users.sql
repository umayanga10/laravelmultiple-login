-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2021 at 12:16 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usertype` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `usertype`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'umayanga', 'umayangawijesinghe24@gmail.com', 'admin', NULL, '$2y$10$FioymiOoRDywOdmq2/6IwegWtCyJLSdGBuWLapDP5R/JkfOPVlfvK', NULL, '2020-10-28 08:34:47', '2020-10-28 08:34:47'),
(2, 'user', 'admin@gmail.com', 'customer', NULL, '$2y$10$.Jvskh.aDKLVWqroLYl35uhWvdnVwUp3oLCk7yPKiY44vNHjcJkAe', NULL, '2020-10-28 08:35:48', '2020-10-28 12:15:14'),
(4, 'umayanga', 'umayangawijesinghe25@gmail.com', NULL, NULL, '$2y$10$tvIkJB7KTtF5lrwcCjsSdODF8/2pF0DvQpow5ifNSBGyPYRbV3PcK', NULL, '2020-10-29 02:45:26', '2020-10-29 02:45:26'),
(5, 'Galle Area', 'admin1@gmail.com', NULL, NULL, '$2y$10$QceUnEit46L5BEUHhO2Tu.tZpqQmQDUhOYxIgu22btA71p4OMBg1S', NULL, '2020-11-19 23:40:47', '2020-11-19 23:40:47'),
(6, 'umayanga', 'adminl@gmail.com', 'admin', NULL, '$2y$10$JIFhW8yExrIYAo5rnbRGD.UrwGmsJK5s9L2Lc2fftxw8mD3mRnUxm', NULL, '2021-01-12 00:32:28', '2021-01-12 00:32:28'),
(7, 'Galle Area', 'admind1@gmail.com', NULL, NULL, '$2y$10$Wbd39rxikSto1srJdn1C6OX4S8.UvS6mD7RwyEjKsgCUXjmF3Mo9C', NULL, '2021-01-12 00:32:55', '2021-01-12 00:32:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
