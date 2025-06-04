-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2025 at 08:30 AM
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
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `views` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `post_views`
--

INSERT INTO `post_views` (`id`, `post_id`, `user_id`, `views`) VALUES
(1, 1, NULL, 477),
(2, 2, NULL, 634),
(3, 3, NULL, 923),
(4, 4, NULL, 515),
(5, 5, NULL, 291),
(6, 6, NULL, 938),
(7, 7, NULL, 423),
(8, 8, NULL, 510),
(9, 9, NULL, 902),
(10, 10, NULL, 500),
(11, 11, NULL, 115),
(12, 12, NULL, 267),
(13, 13, NULL, 615),
(14, 14, NULL, 897),
(15, 15, NULL, 347),
(16, 16, NULL, 295),
(17, 17, NULL, 942),
(18, 18, NULL, 989),
(19, 19, NULL, 144),
(20, 20, NULL, 936),
(21, 21, NULL, 722),
(22, 22, NULL, 864),
(23, 23, NULL, 937),
(24, 24, NULL, 1000),
(25, 25, NULL, 767),
(26, 26, NULL, 876),
(27, 27, NULL, 724),
(28, 28, NULL, 941),
(29, 29, NULL, 514),
(30, 30, NULL, 906),
(31, 31, NULL, 948),
(32, 32, NULL, 443),
(33, 33, NULL, 879),
(34, 34, NULL, 173),
(35, 35, NULL, 839),
(36, 36, NULL, 935),
(37, 37, NULL, 335),
(38, 38, NULL, 383),
(39, 39, NULL, 434),
(40, 40, NULL, 947),
(41, 41, NULL, 473),
(42, 42, NULL, 994),
(43, 43, NULL, 390),
(44, 44, NULL, 510),
(45, 45, NULL, 847),
(46, 46, NULL, 783),
(47, 47, NULL, 518),
(48, 48, NULL, 626),
(49, 49, NULL, 777),
(50, 50, NULL, 718),
(51, 51, NULL, 144),
(52, 52, NULL, 498),
(53, 53, NULL, 965),
(54, 54, NULL, 370),
(55, 55, NULL, 100),
(56, 56, NULL, 508),
(57, 57, NULL, 100),
(58, 58, NULL, 142),
(59, 59, NULL, 148),
(60, 60, NULL, 126),
(61, 61, NULL, 723),
(62, 62, NULL, 589),
(63, 63, NULL, 323),
(64, 64, NULL, 878),
(65, 65, NULL, 430),
(66, 66, NULL, 257),
(67, 67, NULL, 525),
(68, 68, NULL, 578),
(69, 69, NULL, 169),
(70, 70, NULL, 705),
(71, 71, NULL, 869),
(72, 72, NULL, 835),
(73, 73, NULL, 892),
(74, 74, NULL, 417),
(75, 75, NULL, 972),
(76, 76, NULL, 939),
(77, 77, NULL, 220),
(78, 78, NULL, 636),
(79, 79, NULL, 605),
(80, 80, NULL, 560),
(81, 81, NULL, 267),
(82, 82, NULL, 872),
(83, 83, NULL, 685),
(84, 84, NULL, 293),
(85, 85, NULL, 611),
(86, 86, NULL, 878),
(87, 87, NULL, 751),
(88, 88, NULL, 140),
(89, 89, NULL, 296),
(90, 90, NULL, 703),
(91, 91, NULL, 337),
(92, 92, NULL, 809),
(93, 93, NULL, 614),
(94, 94, NULL, 508),
(95, 95, NULL, 975),
(96, 96, NULL, 870),
(97, 97, NULL, 663),
(98, 98, NULL, 471),
(99, 99, NULL, 368),
(100, 100, NULL, 677),
(101, 101, NULL, 219),
(102, 102, NULL, 405),
(103, 103, NULL, 770),
(104, 104, NULL, 182),
(105, 105, NULL, 692),
(106, 106, NULL, 668),
(107, 107, NULL, 588),
(108, 108, NULL, 414),
(109, 109, NULL, 590),
(110, 110, NULL, 863),
(111, 111, NULL, 920),
(112, 112, NULL, 927),
(113, 113, NULL, 353),
(114, 114, NULL, 107),
(115, 115, NULL, 665),
(116, 116, NULL, 437),
(117, 117, NULL, 395),
(118, 118, NULL, 334),
(119, 119, NULL, 507),
(120, 120, NULL, 150);

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
(1, 84, 103),
(2, 84, 82),
(3, 84, 72),
(4, 104, 14),
(5, 104, 69),
(6, 104, 25),
(7, 90, 100),
(8, 90, 75),
(9, 90, 38),
(10, 111, 38),
(11, 111, 41),
(12, 111, 102),
(13, 92, 15),
(14, 92, 49),
(15, 92, 71),
(16, 10, 11),
(17, 10, 57),
(18, 10, 45),
(19, 4, 8),
(20, 4, 27),
(21, 4, 29),
(22, 87, 64),
(23, 87, 40),
(24, 87, 111),
(25, 71, 1),
(26, 71, 3),
(27, 71, 28),
(28, 57, 48),
(29, 57, 100),
(30, 57, 49),
(31, 65, 104),
(32, 65, 8),
(33, 65, 18),
(34, 51, 101),
(35, 51, 15),
(36, 51, 85),
(37, 112, 22),
(38, 112, 1),
(39, 112, 49),
(40, 108, 58),
(41, 108, 46),
(42, 108, 102),
(43, 73, 74),
(44, 73, 71),
(45, 73, 54),
(46, 109, 19),
(47, 109, 47),
(48, 109, 52),
(49, 21, 107),
(50, 21, 66),
(51, 21, 85),
(52, 25, 119),
(53, 25, 78),
(54, 83, 53),
(55, 83, 104),
(56, 83, 1),
(57, 6, 59),
(58, 6, 79),
(59, 6, 35),
(60, 9, 30),
(61, 9, 43),
(62, 9, 88),
(63, 45, 105),
(64, 45, 110),
(65, 45, 5),
(66, 117, 49),
(67, 117, 25),
(68, 117, 28),
(69, 68, 17),
(70, 68, 77),
(71, 68, 70),
(72, 113, 116),
(73, 113, 79),
(74, 113, 18),
(75, 23, 105),
(76, 23, 63),
(77, 23, 65),
(78, 41, 25),
(79, 41, 103),
(80, 41, 86),
(81, 98, 42),
(82, 98, 118),
(83, 98, 11),
(84, 60, 8),
(85, 60, 74),
(86, 60, 63),
(87, 94, 49),
(88, 94, 83),
(89, 94, 75),
(90, 22, 105),
(91, 22, 47),
(92, 22, 42),
(93, 12, 98),
(94, 12, 107),
(95, 12, 36),
(96, 116, 72),
(97, 116, 73),
(98, 116, 117),
(99, 114, 54),
(100, 114, 110),
(101, 114, 33),
(102, 40, 29),
(103, 40, 63),
(104, 40, 25),
(105, 29, 25),
(106, 29, 51),
(107, 44, 24),
(108, 44, 83),
(109, 44, 119),
(110, 61, 36),
(111, 61, 81),
(112, 61, 72),
(113, 101, 7),
(114, 101, 96),
(115, 101, 30),
(116, 55, 15),
(117, 55, 26),
(118, 55, 16),
(119, 102, 109),
(120, 102, 40),
(121, 102, 26),
(122, 62, 26),
(123, 62, 107),
(124, 62, 36),
(125, 43, 29),
(126, 43, 106),
(127, 43, 105),
(128, 5, 34),
(129, 5, 58),
(130, 5, 103),
(131, 7, 66),
(132, 7, 24),
(133, 7, 14),
(134, 38, 102),
(135, 38, 60),
(136, 38, 62),
(137, 1, 51),
(138, 1, 106),
(139, 1, 77),
(140, 32, 68),
(141, 32, 59),
(142, 32, 70),
(143, 30, 105),
(144, 30, 92),
(145, 64, 120),
(146, 64, 79),
(147, 105, 66),
(148, 105, 99),
(149, 105, 61),
(150, 46, 1),
(151, 46, 110),
(152, 46, 112),
(153, 80, 100),
(154, 80, 46),
(155, 80, 116),
(156, 48, 101),
(157, 48, 50),
(158, 48, 91),
(159, 78, 18),
(160, 78, 54),
(161, 78, 71),
(162, 77, 104),
(163, 77, 64),
(164, 77, 80),
(165, 3, 1),
(166, 3, 93),
(167, 3, 56),
(168, 115, 117),
(169, 115, 26),
(170, 115, 108),
(171, 91, 77),
(172, 91, 94),
(173, 91, 67),
(174, 35, 40),
(175, 35, 75),
(176, 35, 33),
(177, 66, 52),
(178, 66, 68),
(179, 66, 34),
(180, 17, 112),
(181, 17, 55),
(182, 17, 16),
(183, 86, 98),
(184, 86, 23),
(185, 86, 84),
(186, 76, 54),
(187, 76, 78),
(188, 76, 99),
(189, 58, 61),
(190, 58, 45),
(191, 58, 88),
(192, 39, 7),
(193, 39, 86),
(194, 39, 33),
(195, 20, 90),
(196, 20, 49),
(197, 20, 24),
(198, 63, 104),
(199, 63, 43),
(200, 63, 13),
(201, 56, 81),
(202, 56, 111),
(203, 56, 67),
(204, 119, 2),
(205, 119, 108),
(206, 119, 14),
(207, 74, 104),
(208, 74, 112),
(209, 74, 92),
(210, 88, 72),
(211, 88, 27),
(212, 88, 61),
(213, 72, 63),
(214, 72, 28),
(215, 72, 78),
(216, 11, 44),
(217, 11, 104),
(218, 11, 71),
(219, 96, 7),
(220, 96, 57),
(221, 96, 90),
(222, 16, 9),
(223, 16, 107),
(224, 16, 62),
(225, 93, 68),
(226, 93, 90),
(227, 93, 22),
(228, 36, 16),
(229, 36, 116),
(230, 36, 115),
(231, 50, 99),
(232, 50, 64),
(233, 50, 49),
(234, 120, 110),
(235, 120, 111),
(236, 120, 31),
(237, 103, 32),
(238, 103, 116),
(239, 103, 27),
(240, 75, 12),
(241, 75, 15),
(242, 75, 55),
(243, 2, 21),
(244, 2, 42),
(245, 2, 115),
(246, 59, 82),
(247, 59, 79),
(248, 59, 23),
(249, 13, 32),
(250, 13, 97),
(251, 13, 100),
(252, 19, 2),
(253, 19, 67),
(254, 19, 38),
(255, 100, 27),
(256, 100, 41),
(257, 100, 36),
(258, 31, 62),
(259, 31, 2),
(260, 31, 32),
(261, 27, 40),
(262, 27, 20),
(263, 27, 3),
(264, 8, 36),
(265, 8, 87),
(266, 8, 38),
(267, 67, 89),
(268, 67, 34),
(269, 67, 4),
(270, 107, 110),
(271, 107, 83),
(272, 107, 10),
(273, 42, 27),
(274, 42, 16),
(275, 42, 73),
(276, 70, 12),
(277, 70, 79),
(278, 70, 36),
(279, 14, 78),
(280, 14, 15),
(281, 14, 88),
(282, 69, 83),
(283, 69, 33),
(284, 69, 12),
(285, 110, 80),
(286, 110, 16),
(287, 110, 93),
(288, 89, 46),
(289, 89, 82),
(290, 89, 29),
(291, 49, 52),
(292, 49, 8),
(293, 49, 106),
(294, 24, 31),
(295, 24, 36),
(296, 24, 117),
(297, 118, 43),
(298, 118, 80),
(299, 118, 33),
(300, 79, 73),
(301, 79, 65),
(302, 81, 14),
(303, 81, 66),
(304, 81, 90),
(305, 26, 110),
(306, 26, 60),
(307, 26, 31),
(308, 95, 3),
(309, 95, 103),
(310, 95, 19),
(311, 52, 16),
(312, 52, 118),
(313, 52, 84),
(314, 54, 60),
(315, 54, 100),
(316, 54, 62),
(317, 33, 98),
(318, 33, 8),
(319, 33, 1),
(320, 18, 4),
(321, 18, 55),
(322, 18, 29),
(323, 99, 13),
(324, 99, 47),
(325, 99, 75),
(326, 47, 41),
(327, 47, 90),
(328, 47, 49),
(329, 97, 78),
(330, 97, 70),
(331, 97, 94),
(332, 85, 117),
(333, 85, 17),
(334, 85, 32),
(335, 34, 77),
(336, 34, 100),
(337, 34, 86),
(338, 28, 82),
(339, 28, 32),
(340, 28, 17),
(341, 82, 10),
(342, 82, 81),
(343, 82, 76),
(344, 106, 4),
(345, 106, 120),
(346, 106, 97),
(347, 53, 41),
(348, 53, 73),
(349, 53, 85),
(350, 37, 89),
(351, 37, 10),
(352, 37, 43),
(353, 15, 61),
(354, 15, 64),
(355, 15, 43);

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
  ADD KEY `post_id` (`post_id`),
  ADD KEY `user_id` (`user_id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=292;

--
-- AUTO_INCREMENT for table `related_posts`
--
ALTER TABLE `related_posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=592;

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
  ADD CONSTRAINT `post_views_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `post_views_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

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
