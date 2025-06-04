-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2025 at 09:13 AM
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
-- Database: `webprogramming`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `body`, `created_at`, `updated_at`) VALUES
(1, 1, 'پست شماره 1 از Matineh Mousavi', 'محتوای تصادفی برای Matineh Mousavi - پست 1', '2025-05-31 03:54:43', '2025-05-31 03:54:43'),
(2, 1, 'پست شماره 2 از Matineh Mousavi', 'محتوای تصادفی برای Matineh Mousavi - پست 2', '2025-05-31 03:54:43', '2025-05-31 03:54:43'),
(3, 1, 'پست شماره 3 از Matineh Mousavi', 'محتوای تصادفی برای Matineh Mousavi - پست 3', '2025-05-31 03:54:43', '2025-05-31 03:54:43'),
(4, 1, 'پست شماره 4 از Matineh Mousavi', 'محتوای تصادفی برای Matineh Mousavi - پست 4', '2025-05-31 03:54:43', '2025-05-31 03:54:43'),
(5, 1, 'پست شماره 5 از Matineh Mousavi', 'محتوای تصادفی برای Matineh Mousavi - پست 5', '2025-05-31 03:54:43', '2025-05-31 03:54:43'),
(6, 2, 'پست شماره 1 از Mobina mahdavi', 'محتوای تصادفی برای Mobina mahdavi - پست 1', '2025-05-31 03:54:43', '2025-05-31 03:54:43'),
(7, 2, 'پست شماره 2 از Mobina mahdavi', 'محتوای تصادفی برای Mobina mahdavi - پست 2', '2025-05-31 03:54:43', '2025-05-31 03:54:43'),
(8, 2, 'پست شماره 3 از Mobina mahdavi', 'محتوای تصادفی برای Mobina mahdavi - پست 3', '2025-05-31 03:54:43', '2025-05-31 03:54:43'),
(9, 2, 'پست شماره 4 از Mobina mahdavi', 'محتوای تصادفی برای Mobina mahdavi - پست 4', '2025-05-31 03:54:43', '2025-05-31 03:54:43'),
(10, 2, 'پست شماره 5 از Mobina mahdavi', 'محتوای تصادفی برای Mobina mahdavi - پست 5', '2025-05-31 03:54:43', '2025-05-31 03:54:43'),
(11, 3, 'پست شماره 1 از Parmida Mehrnikoo', 'محتوای تصادفی برای Parmida Mehrnikoo - پست 1', '2025-05-31 03:54:43', '2025-05-31 03:54:43'),
(12, 3, 'پست شماره 2 از Parmida Mehrnikoo', 'محتوای تصادفی برای Parmida Mehrnikoo - پست 2', '2025-05-31 03:54:43', '2025-05-31 03:54:43'),
(13, 3, 'پست شماره 3 از Parmida Mehrnikoo', 'محتوای تصادفی برای Parmida Mehrnikoo - پست 3', '2025-05-31 03:54:43', '2025-05-31 03:54:43'),
(14, 3, 'پست شماره 4 از Parmida Mehrnikoo', 'محتوای تصادفی برای Parmida Mehrnikoo - پست 4', '2025-05-31 03:54:43', '2025-05-31 03:54:43'),
(15, 3, 'پست شماره 5 از Parmida Mehrnikoo', 'محتوای تصادفی برای Parmida Mehrnikoo - پست 5', '2025-05-31 03:54:43', '2025-05-31 03:54:43'),
(16, 4, 'پست شماره 1 از Sara Sarfi', 'محتوای تصادفی برای Sara Sarfi - پست 1', '2025-05-31 03:54:43', '2025-05-31 03:54:43'),
(17, 4, 'پست شماره 2 از Sara Sarfi', 'محتوای تصادفی برای Sara Sarfi - پست 2', '2025-05-31 03:54:43', '2025-05-31 03:54:43'),
(18, 4, 'پست شماره 3 از Sara Sarfi', 'محتوای تصادفی برای Sara Sarfi - پست 3', '2025-05-31 03:54:43', '2025-05-31 03:54:43'),
(19, 4, 'پست شماره 4 از Sara Sarfi', 'محتوای تصادفی برای Sara Sarfi - پست 4', '2025-05-31 03:54:43', '2025-05-31 03:54:43'),
(20, 4, 'پست شماره 5 از Sara Sarfi', 'محتوای تصادفی برای Sara Sarfi - پست 5', '2025-05-31 03:54:43', '2025-05-31 03:54:43'),
(21, 5, 'پست شماره 1 از Fatemeh Binesh', 'محتوای تصادفی برای Fatemeh Binesh - پست 1', '2025-05-31 03:54:43', '2025-05-31 03:54:43'),
(22, 5, 'پست شماره 2 از Fatemeh Binesh', 'محتوای تصادفی برای Fatemeh Binesh - پست 2', '2025-05-31 03:54:43', '2025-05-31 03:54:43'),
(23, 5, 'پست شماره 3 از Fatemeh Binesh', 'محتوای تصادفی برای Fatemeh Binesh - پست 3', '2025-05-31 03:54:43', '2025-05-31 03:54:43'),
(24, 5, 'پست شماره 4 از Fatemeh Binesh', 'محتوای تصادفی برای Fatemeh Binesh - پست 4', '2025-05-31 03:54:43', '2025-05-31 03:54:43'),
(25, 5, 'پست شماره 5 از Fatemeh Binesh', 'محتوای تصادفی برای Fatemeh Binesh - پست 5', '2025-05-31 03:54:43', '2025-05-31 03:54:43'),
(26, 6, 'پست شماره 1 از Danial Isaabadi', 'محتوای تصادفی برای Danial Isaabadi - پست 1', '2025-05-31 03:54:43', '2025-05-31 03:54:43'),
(27, 6, 'پست شماره 2 از Danial Isaabadi', 'محتوای تصادفی برای Danial Isaabadi - پست 2', '2025-05-31 03:54:43', '2025-05-31 03:54:43'),
(28, 6, 'پست شماره 3 از Danial Isaabadi', 'محتوای تصادفی برای Danial Isaabadi - پست 3', '2025-05-31 03:54:43', '2025-05-31 03:54:43'),
(29, 6, 'پست شماره 4 از Danial Isaabadi', 'محتوای تصادفی برای Danial Isaabadi - پست 4', '2025-05-31 03:54:43', '2025-05-31 03:54:43'),
(30, 6, 'پست شماره 5 از Danial Isaabadi', 'محتوای تصادفی برای Danial Isaabadi - پست 5', '2025-05-31 03:54:43', '2025-05-31 03:54:43'),
(31, 7, 'پست شماره 1 از Aida Sadeghi', 'محتوای تصادفی برای Aida Sadeghi - پست 1', '2025-05-31 03:54:43', '2025-05-31 03:54:43'),
(32, 7, 'پست شماره 2 از Aida Sadeghi', 'محتوای تصادفی برای Aida Sadeghi - پست 2', '2025-05-31 03:54:43', '2025-05-31 03:54:43'),
(33, 7, 'پست شماره 3 از Aida Sadeghi', 'محتوای تصادفی برای Aida Sadeghi - پست 3', '2025-05-31 03:54:43', '2025-05-31 03:54:43'),
(34, 7, 'پست شماره 4 از Aida Sadeghi', 'محتوای تصادفی برای Aida Sadeghi - پست 4', '2025-05-31 03:54:43', '2025-05-31 03:54:43'),
(35, 7, 'پست شماره 5 از Aida Sadeghi', 'محتوای تصادفی برای Aida Sadeghi - پست 5', '2025-05-31 03:54:43', '2025-05-31 03:54:43'),
(36, 8, 'پست شماره 1 از Amirhosein Tasharrofi', 'محتوای تصادفی برای Amirhosein Tasharrofi - پست 1', '2025-05-31 03:54:43', '2025-05-31 03:54:43'),
(37, 8, 'پست شماره 2 از Amirhosein Tasharrofi', 'محتوای تصادفی برای Amirhosein Tasharrofi - پست 2', '2025-05-31 03:54:43', '2025-05-31 03:54:43'),
(38, 8, 'پست شماره 3 از Amirhosein Tasharrofi', 'محتوای تصادفی برای Amirhosein Tasharrofi - پست 3', '2025-05-31 03:54:43', '2025-05-31 03:54:43'),
(39, 8, 'پست شماره 4 از Amirhosein Tasharrofi', 'محتوای تصادفی برای Amirhosein Tasharrofi - پست 4', '2025-05-31 03:54:43', '2025-05-31 03:54:43'),
(40, 8, 'پست شماره 5 از Amirhosein Tasharrofi', 'محتوای تصادفی برای Amirhosein Tasharrofi - پست 5', '2025-05-31 03:54:43', '2025-05-31 03:54:43'),
(41, 9, 'پست شماره 1 از Masoud Taghipour', 'محتوای تصادفی برای Masoud Taghipour - پست 1', '2025-05-31 03:54:43', '2025-05-31 03:54:43'),
(42, 9, 'پست شماره 2 از Masoud Taghipour', 'محتوای تصادفی برای Masoud Taghipour - پست 2', '2025-05-31 03:54:43', '2025-05-31 03:54:43'),
(43, 9, 'پست شماره 3 از Masoud Taghipour', 'محتوای تصادفی برای Masoud Taghipour - پست 3', '2025-05-31 03:54:43', '2025-05-31 03:54:43'),
(44, 9, 'پست شماره 4 از Masoud Taghipour', 'محتوای تصادفی برای Masoud Taghipour - پست 4', '2025-05-31 03:54:43', '2025-05-31 03:54:43'),
(45, 9, 'پست شماره 5 از Masoud Taghipour', 'محتوای تصادفی برای Masoud Taghipour - پست 5', '2025-05-31 03:54:43', '2025-05-31 03:54:43'),
(46, 10, 'پست شماره 1 از Ali Daneshmand', 'محتوای تصادفی برای Ali Daneshmand - پست 1', '2025-05-31 03:54:43', '2025-05-31 03:54:43'),
(47, 10, 'پست شماره 2 از Ali Daneshmand', 'محتوای تصادفی برای Ali Daneshmand - پست 2', '2025-05-31 03:54:43', '2025-05-31 03:54:43'),
(48, 10, 'پست شماره 3 از Ali Daneshmand', 'محتوای تصادفی برای Ali Daneshmand - پست 3', '2025-05-31 03:54:43', '2025-05-31 03:54:43'),
(49, 10, 'پست شماره 4 از Ali Daneshmand', 'محتوای تصادفی برای Ali Daneshmand - پست 4', '2025-05-31 03:54:43', '2025-05-31 03:54:43'),
(50, 10, 'پست شماره 5 از Ali Daneshmand', 'محتوای تصادفی برای Ali Daneshmand - پست 5', '2025-05-31 03:54:43', '2025-05-31 03:54:43'),
(51, 11, 'پست شماره 1 از Omid Haghgoo', 'محتوای تصادفی برای Omid Haghgoo - پست 1', '2025-05-31 03:54:43', '2025-05-31 03:54:43'),
(52, 11, 'پست شماره 2 از Omid Haghgoo', 'محتوای تصادفی برای Omid Haghgoo - پست 2', '2025-05-31 03:54:43', '2025-05-31 03:54:43'),
(53, 11, 'پست شماره 3 از Omid Haghgoo', 'محتوای تصادفی برای Omid Haghgoo - پست 3', '2025-05-31 03:54:43', '2025-05-31 03:54:43'),
(54, 11, 'پست شماره 4 از Omid Haghgoo', 'محتوای تصادفی برای Omid Haghgoo - پست 4', '2025-05-31 03:54:43', '2025-05-31 03:54:43'),
(55, 11, 'پست شماره 5 از Omid Haghgoo', 'محتوای تصادفی برای Omid Haghgoo - پست 5', '2025-05-31 03:54:43', '2025-05-31 03:54:43'),
(56, 12, 'پست شماره 1 از Mostafa Montazery', 'محتوای تصادفی برای Mostafa Montazery - پست 1', '2025-05-31 03:54:43', '2025-05-31 03:54:43'),
(57, 12, 'پست شماره 2 از Mostafa Montazery', 'محتوای تصادفی برای Mostafa Montazery - پست 2', '2025-05-31 03:54:43', '2025-05-31 03:54:43'),
(58, 12, 'پست شماره 3 از Mostafa Montazery', 'محتوای تصادفی برای Mostafa Montazery - پست 3', '2025-05-31 03:54:44', '2025-05-31 03:54:44'),
(59, 12, 'پست شماره 4 از Mostafa Montazery', 'محتوای تصادفی برای Mostafa Montazery - پست 4', '2025-05-31 03:54:44', '2025-05-31 03:54:44'),
(60, 12, 'پست شماره 5 از Mostafa Montazery', 'محتوای تصادفی برای Mostafa Montazery - پست 5', '2025-05-31 03:54:44', '2025-05-31 03:54:44'),
(61, 13, 'پست شماره 1 از Shakila Shaker', 'محتوای تصادفی برای Shakila Shaker - پست 1', '2025-05-31 03:54:44', '2025-05-31 03:54:44'),
(62, 13, 'پست شماره 2 از Shakila Shaker', 'محتوای تصادفی برای Shakila Shaker - پست 2', '2025-05-31 03:54:44', '2025-05-31 03:54:44'),
(63, 13, 'پست شماره 3 از Shakila Shaker', 'محتوای تصادفی برای Shakila Shaker - پست 3', '2025-05-31 03:54:44', '2025-05-31 03:54:44'),
(64, 13, 'پست شماره 4 از Shakila Shaker', 'محتوای تصادفی برای Shakila Shaker - پست 4', '2025-05-31 03:54:44', '2025-05-31 03:54:44'),
(65, 13, 'پست شماره 5 از Shakila Shaker', 'محتوای تصادفی برای Shakila Shaker - پست 5', '2025-05-31 03:54:44', '2025-05-31 03:54:44'),
(66, 14, 'پست شماره 1 از fatemeh khajeh', 'محتوای تصادفی برای fatemeh khajeh - پست 1', '2025-05-31 03:54:44', '2025-05-31 03:54:44'),
(67, 14, 'پست شماره 2 از fatemeh khajeh', 'محتوای تصادفی برای fatemeh khajeh - پست 2', '2025-05-31 03:54:44', '2025-05-31 03:54:44'),
(68, 14, 'پست شماره 3 از fatemeh khajeh', 'محتوای تصادفی برای fatemeh khajeh - پست 3', '2025-05-31 03:54:44', '2025-05-31 03:54:44'),
(69, 14, 'پست شماره 4 از fatemeh khajeh', 'محتوای تصادفی برای fatemeh khajeh - پست 4', '2025-05-31 03:54:44', '2025-05-31 03:54:44'),
(70, 14, 'پست شماره 5 از fatemeh khajeh', 'محتوای تصادفی برای fatemeh khajeh - پست 5', '2025-05-31 03:54:44', '2025-05-31 03:54:44'),
(71, 15, 'پست شماره 1 از Mobina Amini', 'محتوای تصادفی برای Mobina Amini - پست 1', '2025-05-31 03:54:44', '2025-05-31 03:54:44'),
(72, 15, 'پست شماره 2 از Mobina Amini', 'محتوای تصادفی برای Mobina Amini - پست 2', '2025-05-31 03:54:44', '2025-05-31 03:54:44'),
(73, 15, 'پست شماره 3 از Mobina Amini', 'محتوای تصادفی برای Mobina Amini - پست 3', '2025-05-31 03:54:44', '2025-05-31 03:54:44'),
(74, 15, 'پست شماره 4 از Mobina Amini', 'محتوای تصادفی برای Mobina Amini - پست 4', '2025-05-31 03:54:44', '2025-05-31 03:54:44'),
(75, 15, 'پست شماره 5 از Mobina Amini', 'محتوای تصادفی برای Mobina Amini - پست 5', '2025-05-31 03:54:44', '2025-05-31 03:54:44'),
(76, 16, 'پست شماره 1 از Shahed Shirazi', 'محتوای تصادفی برای Shahed Shirazi - پست 1', '2025-05-31 03:54:44', '2025-05-31 03:54:44'),
(77, 16, 'پست شماره 2 از Shahed Shirazi', 'محتوای تصادفی برای Shahed Shirazi - پست 2', '2025-05-31 03:54:44', '2025-05-31 03:54:44'),
(78, 16, 'پست شماره 3 از Shahed Shirazi', 'محتوای تصادفی برای Shahed Shirazi - پست 3', '2025-05-31 03:54:44', '2025-05-31 03:54:44'),
(79, 16, 'پست شماره 4 از Shahed Shirazi', 'محتوای تصادفی برای Shahed Shirazi - پست 4', '2025-05-31 03:54:44', '2025-05-31 03:54:44'),
(80, 16, 'پست شماره 5 از Shahed Shirazi', 'محتوای تصادفی برای Shahed Shirazi - پست 5', '2025-05-31 03:54:44', '2025-05-31 03:54:44'),
(81, 17, 'پست شماره 1 از amirhosseinasadi', 'محتوای تصادفی برای amirhosseinasadi - پست 1', '2025-05-31 03:54:44', '2025-05-31 03:54:44'),
(82, 17, 'پست شماره 2 از amirhosseinasadi', 'محتوای تصادفی برای amirhosseinasadi - پست 2', '2025-05-31 03:54:44', '2025-05-31 03:54:44'),
(83, 17, 'پست شماره 3 از amirhosseinasadi', 'محتوای تصادفی برای amirhosseinasadi - پست 3', '2025-05-31 03:54:44', '2025-05-31 03:54:44'),
(84, 17, 'پست شماره 4 از amirhosseinasadi', 'محتوای تصادفی برای amirhosseinasadi - پست 4', '2025-05-31 03:54:44', '2025-05-31 03:54:44'),
(85, 17, 'پست شماره 5 از amirhosseinasadi', 'محتوای تصادفی برای amirhosseinasadi - پست 5', '2025-05-31 03:54:44', '2025-05-31 03:54:44'),
(86, 18, 'پست شماره 1 از Ghazal Rezaei', 'محتوای تصادفی برای Ghazal Rezaei - پست 1', '2025-05-31 03:54:44', '2025-05-31 03:54:44'),
(87, 18, 'پست شماره 2 از Ghazal Rezaei', 'محتوای تصادفی برای Ghazal Rezaei - پست 2', '2025-05-31 03:54:44', '2025-05-31 03:54:44'),
(88, 18, 'پست شماره 3 از Ghazal Rezaei', 'محتوای تصادفی برای Ghazal Rezaei - پست 3', '2025-05-31 03:54:44', '2025-05-31 03:54:44'),
(89, 18, 'پست شماره 4 از Ghazal Rezaei', 'محتوای تصادفی برای Ghazal Rezaei - پست 4', '2025-05-31 03:54:44', '2025-05-31 03:54:44'),
(90, 18, 'پست شماره 5 از Ghazal Rezaei', 'محتوای تصادفی برای Ghazal Rezaei - پست 5', '2025-05-31 03:54:44', '2025-05-31 03:54:44'),
(91, 19, 'پست شماره 1 از Mobina Fallah', 'محتوای تصادفی برای Mobina Fallah - پست 1', '2025-05-31 03:54:44', '2025-05-31 03:54:44'),
(92, 19, 'پست شماره 2 از Mobina Fallah', 'محتوای تصادفی برای Mobina Fallah - پست 2', '2025-05-31 03:54:44', '2025-05-31 03:54:44'),
(93, 19, 'پست شماره 3 از Mobina Fallah', 'محتوای تصادفی برای Mobina Fallah - پست 3', '2025-05-31 03:54:44', '2025-05-31 03:54:44'),
(94, 19, 'پست شماره 4 از Mobina Fallah', 'محتوای تصادفی برای Mobina Fallah - پست 4', '2025-05-31 03:54:44', '2025-05-31 03:54:44'),
(95, 19, 'پست شماره 5 از Mobina Fallah', 'محتوای تصادفی برای Mobina Fallah - پست 5', '2025-05-31 03:54:44', '2025-05-31 03:54:44'),
(96, 20, 'پست شماره 1 از Mahdieh panjei', 'محتوای تصادفی برای Mahdieh panjei - پست 1', '2025-05-31 03:54:44', '2025-05-31 03:54:44'),
(97, 20, 'پست شماره 2 از Mahdieh panjei', 'محتوای تصادفی برای Mahdieh panjei - پست 2', '2025-05-31 03:54:44', '2025-05-31 03:54:44'),
(98, 20, 'پست شماره 3 از Mahdieh panjei', 'محتوای تصادفی برای Mahdieh panjei - پست 3', '2025-05-31 03:54:44', '2025-05-31 03:54:44'),
(99, 20, 'پست شماره 4 از Mahdieh panjei', 'محتوای تصادفی برای Mahdieh panjei - پست 4', '2025-05-31 03:54:44', '2025-05-31 03:54:44'),
(100, 20, 'پست شماره 5 از Mahdieh panjei', 'محتوای تصادفی برای Mahdieh panjei - پست 5', '2025-05-31 03:54:44', '2025-05-31 03:54:44'),
(101, 21, 'پست شماره 1 از taha sadeghi', 'محتوای تصادفی برای taha sadeghi - پست 1', '2025-05-31 03:54:44', '2025-05-31 03:54:44'),
(102, 21, 'پست شماره 2 از taha sadeghi', 'محتوای تصادفی برای taha sadeghi - پست 2', '2025-05-31 03:54:44', '2025-05-31 03:54:44'),
(103, 21, 'پست شماره 3 از taha sadeghi', 'محتوای تصادفی برای taha sadeghi - پست 3', '2025-05-31 03:54:44', '2025-05-31 03:54:44'),
(104, 21, 'پست شماره 4 از taha sadeghi', 'محتوای تصادفی برای taha sadeghi - پست 4', '2025-05-31 03:54:44', '2025-05-31 03:54:44'),
(105, 21, 'پست شماره 5 از taha sadeghi', 'محتوای تصادفی برای taha sadeghi - پست 5', '2025-05-31 03:54:44', '2025-05-31 03:54:44'),
(106, 22, 'پست شماره 1 از Sadjad Rezagholizadeh', 'محتوای تصادفی برای Sadjad Rezagholizadeh - پست 1', '2025-05-31 03:54:44', '2025-05-31 03:54:44'),
(107, 22, 'پست شماره 2 از Sadjad Rezagholizadeh', 'محتوای تصادفی برای Sadjad Rezagholizadeh - پست 2', '2025-05-31 03:54:44', '2025-05-31 03:54:44'),
(108, 22, 'پست شماره 3 از Sadjad Rezagholizadeh', 'محتوای تصادفی برای Sadjad Rezagholizadeh - پست 3', '2025-05-31 03:54:44', '2025-05-31 03:54:44'),
(109, 22, 'پست شماره 4 از Sadjad Rezagholizadeh', 'محتوای تصادفی برای Sadjad Rezagholizadeh - پست 4', '2025-05-31 03:54:44', '2025-05-31 03:54:44'),
(110, 22, 'پست شماره 5 از Sadjad Rezagholizadeh', 'محتوای تصادفی برای Sadjad Rezagholizadeh - پست 5', '2025-05-31 03:54:44', '2025-05-31 03:54:44'),
(111, 23, 'پست شماره 1 از ali babakordi', 'محتوای تصادفی برای ali babakordi - پست 1', '2025-05-31 03:54:44', '2025-05-31 03:54:44'),
(112, 23, 'پست شماره 2 از ali babakordi', 'محتوای تصادفی برای ali babakordi - پست 2', '2025-05-31 03:54:44', '2025-05-31 03:54:44'),
(113, 23, 'پست شماره 3 از ali babakordi', 'محتوای تصادفی برای ali babakordi - پست 3', '2025-05-31 03:54:44', '2025-05-31 03:54:44'),
(114, 23, 'پست شماره 4 از ali babakordi', 'محتوای تصادفی برای ali babakordi - پست 4', '2025-05-31 03:54:44', '2025-05-31 03:54:44'),
(115, 23, 'پست شماره 5 از ali babakordi', 'محتوای تصادفی برای ali babakordi - پست 5', '2025-05-31 03:54:44', '2025-05-31 03:54:44'),
(116, 24, 'پست شماره 1 از AbbasEsmaili', 'محتوای تصادفی برای AbbasEsmaili - پست 1', '2025-05-31 03:54:44', '2025-05-31 16:59:26'),
(117, 24, 'پست شماره 2 از AbbasEsmaili', 'محتوای تصادفی برای AbbasEsmaili - پست 2', '2025-05-31 03:54:44', '2025-05-31 03:54:44'),
(118, 24, 'پست شماره 3 از AbbasEsmaili', 'محتوای تصادفی برای AbbasEsmaili - پست 3', '2025-05-31 03:54:44', '2025-05-31 03:54:44'),
(119, 24, 'پست شماره 4 از AbbasEsmaili', 'محتوای تصادفی برای AbbasEsmaili - پست 4', '2025-05-31 03:54:44', '2025-05-31 03:54:44'),
(120, 24, 'پست شماره 5 از AbbasEsmaili', 'محتوای تصادفی برای AbbasEsmaili - پست 5', '2025-05-31 03:54:44', '2025-05-31 03:54:44');

-- --------------------------------------------------------

--
-- Table structure for table `post_views`
--

CREATE TABLE `post_views` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `views` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `post_views`
--

INSERT INTO `post_views` (`id`, `post_id`, `views`) VALUES
(1, 1, 910),
(2, 2, 746),
(3, 3, 198),
(4, 4, 126),
(5, 5, 211),
(6, 6, 278),
(7, 7, 659),
(8, 8, 396),
(9, 9, 257),
(10, 10, 233),
(11, 11, 812),
(12, 12, 555),
(13, 13, 934),
(14, 14, 380),
(15, 15, 882),
(16, 16, 872),
(17, 17, 523),
(18, 18, 578),
(19, 19, 749),
(20, 20, 895),
(21, 21, 543),
(22, 22, 218),
(23, 23, 630),
(24, 24, 884),
(25, 25, 428),
(26, 26, 636),
(27, 27, 426),
(28, 28, 265),
(29, 29, 738),
(30, 30, 214),
(31, 31, 271),
(32, 32, 408),
(33, 33, 586),
(34, 34, 740),
(35, 35, 832),
(36, 36, 196),
(37, 37, 747),
(38, 38, 234),
(39, 39, 834),
(40, 40, 992),
(41, 41, 508),
(42, 42, 928),
(43, 43, 873),
(44, 44, 266),
(45, 45, 466),
(46, 46, 351),
(47, 47, 787),
(48, 48, 433),
(49, 49, 600),
(50, 50, 423),
(51, 51, 103),
(52, 52, 526),
(53, 53, 177),
(54, 54, 306),
(55, 55, 880),
(56, 56, 943),
(57, 57, 999),
(58, 58, 876),
(59, 59, 813),
(60, 60, 732),
(61, 61, 133),
(62, 62, 533),
(63, 63, 852),
(64, 64, 710),
(65, 65, 750),
(66, 66, 526),
(67, 67, 166),
(68, 68, 166),
(69, 69, 341),
(70, 70, 720),
(71, 71, 263),
(72, 72, 984),
(73, 73, 737),
(74, 74, 230),
(75, 75, 910),
(76, 76, 377),
(77, 77, 961),
(78, 78, 912),
(79, 79, 417),
(80, 80, 918),
(81, 81, 214),
(82, 82, 365),
(83, 83, 427),
(84, 84, 712),
(85, 85, 417),
(86, 86, 237),
(87, 87, 646),
(88, 88, 185),
(89, 89, 343),
(90, 90, 313),
(91, 91, 491),
(92, 92, 867),
(93, 93, 252),
(94, 94, 813),
(95, 95, 412),
(96, 96, 229),
(97, 97, 676),
(98, 98, 635),
(99, 99, 958),
(100, 100, 280),
(101, 101, 100),
(102, 102, 436),
(103, 103, 613),
(104, 104, 173),
(105, 105, 982),
(106, 106, 970),
(107, 107, 545),
(108, 108, 324),
(109, 109, 635),
(110, 110, 195),
(111, 111, 790),
(112, 112, 784),
(113, 113, 900),
(114, 114, 252),
(115, 115, 537),
(116, 116, 595),
(117, 117, 595),
(118, 118, 774),
(119, 119, 930),
(120, 120, 805);

-- --------------------------------------------------------

--
-- Table structure for table `related_posts`
--

CREATE TABLE `related_posts` (
  `id` int(11) NOT NULL,
  `post_1_id` int(10) UNSIGNED NOT NULL,
  `post_2_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `related_posts`
--

INSERT INTO `related_posts` (`id`, `post_1_id`, `post_2_id`) VALUES
(1, 1, 52),
(2, 2, 45),
(3, 3, 18),
(4, 3, 25),
(5, 4, 32),
(6, 4, 13),
(7, 4, 38),
(8, 5, 69),
(9, 5, 115),
(10, 5, 110),
(11, 6, 62),
(12, 6, 17),
(13, 7, 68),
(14, 7, 95),
(15, 7, 93),
(16, 8, 91),
(17, 8, 54),
(18, 9, 37),
(19, 9, 19),
(20, 9, 55),
(21, 10, 109),
(22, 10, 9),
(23, 10, 59),
(24, 11, 7),
(25, 11, 67),
(26, 12, 84),
(27, 12, 36),
(28, 13, 1),
(29, 13, 42),
(30, 14, 117),
(31, 15, 104),
(32, 15, 116),
(33, 15, 47),
(34, 16, 90),
(35, 16, 117),
(36, 17, 85),
(37, 17, 26),
(38, 18, 33),
(39, 18, 97),
(40, 18, 45),
(41, 19, 82),
(42, 19, 45),
(43, 19, 20),
(44, 20, 15),
(45, 20, 103),
(46, 21, 69),
(47, 21, 68),
(48, 21, 83),
(49, 22, 42),
(50, 23, 5),
(51, 23, 106),
(52, 23, 96),
(53, 24, 97),
(54, 24, 31),
(55, 25, 32),
(56, 25, 22),
(57, 25, 85),
(58, 26, 19),
(59, 27, 43),
(60, 27, 106),
(61, 28, 98),
(62, 29, 36),
(63, 29, 98),
(64, 30, 111),
(65, 30, 32),
(66, 31, 107),
(67, 31, 22),
(68, 32, 28),
(69, 33, 76),
(70, 34, 77),
(71, 34, 10),
(72, 34, 105),
(73, 35, 93),
(74, 36, 41),
(75, 36, 4),
(76, 37, 54),
(77, 37, 79),
(78, 37, 3),
(79, 38, 75),
(80, 38, 107),
(81, 39, 101),
(82, 39, 1),
(83, 39, 81),
(84, 40, 79),
(85, 40, 102),
(86, 40, 18),
(87, 41, 30),
(88, 41, 118),
(89, 41, 44),
(90, 42, 106),
(91, 42, 19),
(92, 42, 41),
(93, 43, 91),
(94, 43, 61),
(95, 43, 11),
(96, 44, 41),
(97, 44, 39),
(98, 45, 47),
(99, 46, 53),
(100, 47, 15),
(101, 48, 100),
(102, 48, 95),
(103, 49, 21),
(104, 49, 8),
(105, 49, 58),
(106, 50, 93),
(107, 51, 111),
(108, 51, 9),
(109, 52, 21),
(110, 52, 19),
(111, 52, 101),
(112, 53, 111),
(113, 54, 26),
(114, 54, 120),
(115, 55, 65),
(116, 55, 94),
(117, 55, 54),
(118, 56, 27),
(119, 56, 22),
(120, 57, 91),
(121, 57, 95),
(122, 58, 74),
(123, 59, 65),
(124, 59, 90),
(125, 59, 119),
(126, 60, 40),
(127, 61, 15),
(128, 62, 110),
(129, 62, 74),
(130, 62, 80),
(131, 63, 67),
(132, 64, 35),
(133, 64, 41),
(134, 65, 48),
(135, 66, 51),
(136, 66, 34),
(137, 66, 16),
(138, 67, 47),
(139, 67, 52),
(140, 67, 93),
(141, 68, 62),
(142, 68, 11),
(143, 69, 47),
(144, 69, 118),
(145, 69, 81),
(146, 70, 32),
(147, 70, 84),
(148, 70, 10),
(149, 71, 95),
(150, 71, 77),
(151, 71, 114),
(152, 72, 91),
(153, 72, 10),
(154, 73, 108),
(155, 73, 70),
(156, 73, 12),
(157, 74, 115),
(158, 75, 27),
(159, 76, 35),
(160, 77, 120),
(161, 77, 20),
(162, 77, 60),
(163, 78, 79),
(164, 79, 41),
(165, 79, 23),
(166, 79, 40),
(167, 80, 40),
(168, 81, 54),
(169, 81, 79),
(170, 82, 108),
(171, 82, 88),
(172, 83, 37),
(173, 84, 87),
(174, 84, 65),
(175, 85, 60),
(176, 85, 11),
(177, 86, 37),
(178, 87, 21),
(179, 87, 1),
(180, 87, 89),
(181, 88, 45),
(182, 88, 62),
(183, 89, 9),
(184, 89, 45),
(185, 89, 83),
(186, 90, 72),
(187, 91, 20),
(188, 91, 76),
(189, 92, 119),
(190, 92, 1),
(191, 93, 8),
(192, 94, 18),
(193, 94, 40),
(194, 94, 112),
(195, 95, 117),
(196, 95, 89),
(197, 95, 22),
(198, 96, 105),
(199, 96, 8),
(200, 97, 33),
(201, 97, 3),
(202, 98, 63),
(203, 99, 46),
(204, 100, 94),
(205, 100, 82),
(206, 101, 54),
(207, 101, 18),
(208, 101, 119),
(209, 102, 60),
(210, 102, 9),
(211, 102, 52),
(212, 103, 63),
(213, 103, 108),
(214, 103, 16),
(215, 104, 76),
(216, 104, 89),
(217, 105, 107),
(218, 105, 52),
(219, 105, 90),
(220, 106, 18),
(221, 106, 29),
(222, 107, 111),
(223, 108, 88),
(224, 108, 75),
(225, 108, 77),
(226, 109, 94),
(227, 110, 81),
(228, 111, 43),
(229, 111, 120),
(230, 112, 26),
(231, 113, 79),
(232, 113, 96),
(233, 113, 62),
(234, 114, 10),
(235, 114, 117),
(236, 115, 110),
(237, 115, 49),
(238, 115, 57),
(239, 116, 119),
(240, 117, 34),
(241, 117, 37),
(242, 117, 31),
(243, 118, 120),
(244, 119, 44),
(245, 119, 102),
(246, 119, 99),
(247, 120, 105),
(248, 120, 89),
(249, 120, 84);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(60) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(225) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Matineh Mousavi', 'matineh.mousavi8200@gmail.com', '$2y$10$FPaBZaKM5e9UEWyn3wu8b.8pRMXg0i0hJ3/n/f9Z1PB1PPl2CW6MS', '2025-05-31 03:54:43', '2025-05-31 03:54:43'),
(2, 'Mobina mahdavi', 'mobina.mahdavi.web@gmail.com', '$2y$10$OglbmvD3CMNcCnskJM1k6.B2f3vU3yC946o4DOeBuAVhw5ElXI1ui', '2025-05-31 03:54:43', '2025-05-31 03:54:43'),
(3, 'Parmida Mehrnikoo', 'Mehrnikoo.net@gmail.com', '$2y$10$EJpgNwUHlGUKEuUxrnkSGOuYWk/zUwlZ134ST3LVGzpRYBNqdSgN2', '2025-05-31 03:54:43', '2025-05-31 03:54:43'),
(4, 'Sara Sarfi', 'sarasarfi79@gmail.com', '$2y$10$S0CN1sHbCAgEC2/I6lkMR.lRBQT7n4WRJAJDURk8N0b5bvznZBwZi', '2025-05-31 03:54:43', '2025-05-31 03:54:43'),
(5, 'Fatemeh Binesh', 'fatemehbinesh17@gmail.com', '$2y$10$h5qd1u16xxUK0mHzPJmSpOXehE5fV5b8bJaJ.xEsI7OOuza2IQuI6', '2025-05-31 03:54:43', '2025-05-31 03:54:43'),
(6, 'Danial Isaabadi', 'danial.isaabadi81@gmail.com', '$2y$10$ovgYxo/OokUdoD3/uUOzR..urodChUhOb0tgEkmby8R0xCbWgxnfy', '2025-05-31 03:54:43', '2025-05-31 03:54:43'),
(7, 'Aida Sadeghi', 'asv94974@gmail.com', '$2y$10$cQG4J275F/NlLCjNUZph2.CMC/1CYxS4D0H0pezaR4VK/2erV2e9O', '2025-05-31 03:54:43', '2025-05-31 03:54:43'),
(8, 'Amirhosein Tasharrofi', 'amirhosein.tasharrofi@gmail.com', '$2y$10$PawaCqLl3px4Td9rmlX2iun0FfLDoGUDP0A4uYXNhtuYFycEL5jk.', '2025-05-31 03:54:43', '2025-05-31 03:54:43'),
(9, 'Masoud Taghipour', 'mtaghipourj@gmail.com', '$2y$10$0tBxPi3q3UUx9scxT4bQdeb8PF2bwanNKNvryh8WevUJiUPvJ1udq', '2025-05-31 03:54:43', '2025-05-31 03:54:43'),
(10, 'Ali Daneshmand', 'daneshmanda8@gmail.com', '$2y$10$tf/zA/g7PE8nBeOamAtFJ.aQSEkIHxQRCJ1EzOnhPwxxw033n.hzG', '2025-05-31 03:54:43', '2025-05-31 03:54:43'),
(11, 'Omid Haghgoo', 'O.Haghgoo@gmail.com', '$2y$10$Q3nJq.o6O2B13mFqLMy8Vu6qz5jig.apcIRJfN4cyujWwh.Y7Xcoa', '2025-05-31 03:54:43', '2025-05-31 03:54:43'),
(12, 'Mostafa Montazery', 'Mostafamtz@gmail.com', '$2y$10$rsT7UYwO8SlXodUNCOLz4.qN.AEEYup.wK/1HaIRH2Cvv4iskQC1C', '2025-05-31 03:54:43', '2025-05-31 03:54:43'),
(13, 'Shakila Shaker', 'shakilashaker80@gmail.com', '$2y$10$M93I7.PLhJ8VUDjuEtp1heGxSzETpsI6Q7VO3nXS13ZDFJzEtUY5q', '2025-05-31 03:54:44', '2025-05-31 03:54:44'),
(14, 'fatemeh khajeh', 'fatemeh.khajeh1404@gmail.com', '$2y$10$0OyLvZoZggVWMPcUH9ZhquadWr0K.jZInNXJeUcPqWE2QChSbvqI6', '2025-05-31 03:54:44', '2025-05-31 03:54:44'),
(15, 'Mobina Amini', 'mobina.amini.web@gmail.com', '$2y$10$pQ69iVBiiF0RaBI0iwRlmOCjLYtv.YddsFQ3kznyArZW.GgU5mXtK', '2025-05-31 03:54:44', '2025-05-31 03:54:44'),
(16, 'Shahed Shirazi', 'shirazishaheds926@gmail.com', '$2y$10$qIE.e7fb5KnP8sl608iwqez4a0vNys75k0FqIg/rkFHLbx.JL45wW', '2025-05-31 03:54:44', '2025-05-31 03:54:44'),
(17, 'amirhosseinasadi', 'amirhosseinasadi162@gmail.com', '$2y$10$woL9y/GgustoemSyxo8kguEjkAA/mID6pV0421p9KHSMGrU0tnu3C', '2025-05-31 03:54:44', '2025-05-31 03:54:44'),
(18, 'Ghazal Rezaei', 'rezaeighazal432@gmail.com', '$2y$10$Cv2wZ.d5UDlwh.ZIqo0nyutyMbYG.CwfAhTgKsStn9kCoPB1FQtem', '2025-05-31 03:54:44', '2025-05-31 03:54:44'),
(19, 'Mobina Fallah', 'flhmobinaa@gmail.com', '$2y$10$ywcDs8tNcG1oohtMss0ZR.u/ycvQUghSo.MvnSHYEdWd3qBX.r3ti', '2025-05-31 03:54:44', '2025-05-31 03:54:44'),
(20, 'Mahdieh panjei', 'mahdiehpanjei@gmail.com', '$2y$10$ahac/oWXOoVz94T4Mmw52uYrnPNhHNYWEqw7ROGP.wao5cYSdC/xW', '2025-05-31 03:54:44', '2025-05-31 03:54:44'),
(21, 'taha sadeghi', 'taha18319113@gmail.com', '$2y$10$qsLSTrSdXHk5O61evqG85eAOSHcIuDZPsbHRR.wTQe8h3OyDWa7uu', '2025-05-31 03:54:44', '2025-05-31 03:54:44'),
(22, 'Sadjad Rezagholizadeh', 'sajjad.rz@gmail.com', '$2y$10$p88WcQFtvyypzl3tROAKKuP/TKqa0wZCCt/TOYZNNN.9u4QiMPF8y', '2025-05-31 03:54:44', '2025-05-31 03:54:44'),
(23, 'ali babakordi', 'alibabakordi82@gmail.com', '$2y$10$piYnr7az/jzChKhRApRxh.ilSDIVF7jFVXsb/ELm6KrIQkAVDPHeq', '2025-05-31 03:54:44', '2025-05-31 03:54:44'),
(24, 'AbbasEsmaili', 'abbas@gmail.com', '$2y$10$YaH3oB8bW1eHFReNl/jV2OeOKu6hSvl1bgZOOmkvsjBU12lQ6VrnO', '2025-05-31 03:54:44', '2025-05-31 03:54:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `post_views`
--
ALTER TABLE `post_views`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `related_posts`
--
ALTER TABLE `related_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_1_id` (`post_1_id`),
  ADD KEY `post_2_id` (`post_2_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=293;

--
-- AUTO_INCREMENT for table `post_views`
--
ALTER TABLE `post_views`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `related_posts`
--
ALTER TABLE `related_posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_views`
--
ALTER TABLE `post_views`
  ADD CONSTRAINT `post_views_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `related_posts`
--
ALTER TABLE `related_posts`
  ADD CONSTRAINT `related_posts_ibfk_1` FOREIGN KEY (`post_1_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `related_posts_ibfk_2` FOREIGN KEY (`post_2_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
