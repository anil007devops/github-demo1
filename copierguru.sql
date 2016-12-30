-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 30, 2016 at 11:29 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `copierguru`
--

-- --------------------------------------------------------

--
-- Table structure for table `accessories`
--

CREATE TABLE `accessories` (
  `id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL DEFAULT '1',
  `accessory_name` varchar(200) NOT NULL,
  `price` float DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accessories`
--

INSERT INTO `accessories` (`id`, `status_id`, `accessory_name`, `price`, `created_at`, `updated_at`) VALUES
(163, 1, 'LX Basic Finisher', 58, '2016-12-26 07:18:53', '2016-12-26 07:18:53'),
(164, 1, 'Convenience Stapler', 68, '2016-12-26 07:19:03', '2016-12-26 07:19:03'),
(167, 1, '1-Line Fax Kit', 78, '2016-12-28 00:50:41', '2016-12-28 00:50:41'),
(168, 1, 'XYZ', 898, '2016-12-29 21:33:03', '2016-12-29 21:33:03');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `status_id` int(11) DEFAULT '1',
  `category_name` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `status_id`, `category_name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Base performance', '2016-12-13 03:57:47', '2016-12-24 00:47:01'),
(2, 1, 'Medium performance', '2016-12-13 03:58:15', '2016-12-13 03:58:15'),
(3, 1, 'High performance', '2016-12-13 03:58:41', '2016-12-15 03:26:39'),
(4, 1, 'Super-high performance', '2016-12-13 03:58:50', '2016-12-13 03:58:50'),
(5, 1, 'Insanely-high performance', '2016-12-13 03:59:07', '2016-12-17 03:37:25');

-- --------------------------------------------------------

--
-- Table structure for table `copiers`
--

CREATE TABLE `copiers` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL DEFAULT '1',
  `copier_model` varchar(100) NOT NULL,
  `print_page_per_minute` varchar(100) NOT NULL,
  `monthly_pages` varchar(100) NOT NULL,
  `monthly_price` double NOT NULL,
  `price_color_page` double NOT NULL,
  `price_bw_page` double NOT NULL,
  `used_by` varchar(100) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `copiers`
--

INSERT INTO `copiers` (`id`, `category_id`, `status_id`, `copier_model`, `print_page_per_minute`, `monthly_pages`, `monthly_price`, `price_color_page`, `price_bw_page`, `used_by`, `image`, `created_at`, `updated_at`) VALUES
(39, 1, 1, 'Xerox 7525 ConnectKey', '25', '4000', 80.9, 9.9, 5.1, '1-4 users', NULL, '2016-12-13 05:55:13', '2016-12-27 23:53:08'),
(40, 2, 1, 'Xerox 7530 ConnectKey', '30', '6000', 90.9, 9.9, 5.6, '2-7 users', NULL, '2016-12-14 01:26:42', '2016-12-14 01:26:42'),
(41, 3, 1, 'Xerox 7535 ConnectKey', '35', '8000', 70.89, 8.9, 6.7, 'For less than 9 users', NULL, '2016-12-14 01:29:46', '2016-12-14 01:29:46'),
(42, 4, 1, 'Xerox 7545 ConnectKey', '45', '12000', 66.79, 8.9, 6.8, 'Larger workgroup', NULL, '2016-12-14 03:06:02', '2016-12-14 03:06:02'),
(43, 5, 1, 'Xerox 7556 ConnectKey', '55', '16000', 998.66, 7.8, 9.8, 'Many users,Busy office,High productivity', NULL, '2016-12-14 03:08:55', '2016-12-27 23:53:33');

-- --------------------------------------------------------

--
-- Table structure for table `copier_accessories`
--

CREATE TABLE `copier_accessories` (
  `id` int(11) NOT NULL,
  `copier_id` int(11) DEFAULT '2',
  `accessory_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `copier_accessories`
--

INSERT INTO `copier_accessories` (`id`, `copier_id`, `accessory_id`, `created_at`, `updated_at`) VALUES
(74, 39, 163, '2016-12-26 07:18:53', '2016-12-26 07:18:53'),
(75, 40, 163, '2016-12-26 07:18:53', '2016-12-26 07:18:53'),
(76, 41, 163, '2016-12-26 07:18:53', '2016-12-26 07:18:53'),
(77, 42, 163, '2016-12-26 07:18:53', '2016-12-26 07:18:53'),
(78, 43, 163, '2016-12-26 07:18:53', '2016-12-26 07:18:53'),
(79, 39, 164, '2016-12-26 07:19:03', '2016-12-26 07:19:03'),
(80, 40, 164, '2016-12-26 07:19:03', '2016-12-26 07:19:03'),
(81, 41, 164, '2016-12-26 07:19:03', '2016-12-26 07:19:03'),
(82, 42, 164, '2016-12-26 07:19:03', '2016-12-26 07:19:03'),
(83, 43, 164, '2016-12-26 07:19:03', '2016-12-26 07:19:03'),
(92, 39, 167, '2016-12-28 00:50:42', '2016-12-28 00:50:42'),
(93, 40, 167, '2016-12-28 00:50:42', '2016-12-28 00:50:42'),
(94, 41, 167, '2016-12-28 00:50:42', '2016-12-28 00:50:42'),
(95, 42, 167, '2016-12-28 00:50:42', '2016-12-28 00:50:42'),
(96, 43, 167, '2016-12-28 00:50:42', '2016-12-28 00:50:42'),
(97, 39, 168, '2016-12-29 21:33:03', '2016-12-29 21:33:03'),
(98, 40, 168, '2016-12-29 21:33:04', '2016-12-29 21:33:04'),
(99, 41, 168, '2016-12-29 21:33:04', '2016-12-29 21:33:04');

-- --------------------------------------------------------

--
-- Table structure for table `crystalball_policies`
--

CREATE TABLE `crystalball_policies` (
  `id` int(11) NOT NULL,
  `status_id` int(11) DEFAULT '1',
  `policy_description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crystalball_policies`
--

INSERT INTO `crystalball_policies` (`id`, `status_id`, `policy_description`, `created_at`, `updated_at`) VALUES
(4, 1, 'Most copier companies charge a bundled rate for a number of pages as an allowance per month, regardless of whether you use those pages or not. We don’t think that’s fair. CrystalBall will charge you only for the pages that your machine copies and prints, and for faxes it receives. And we don’t add in hidden fees and interest rates that other companies charge. We are committed to honest, open pricing. What we promise to charge is what you’ll actually be charged.', '2016-12-27 01:45:00', '2016-12-27 03:15:21');

-- --------------------------------------------------------

--
-- Table structure for table `crystalball_services`
--

CREATE TABLE `crystalball_services` (
  `id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL DEFAULT '1',
  `service_name` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crystalball_services`
--

INSERT INTO `crystalball_services` (`id`, `status_id`, `service_name`, `created_at`, `updated_at`) VALUES
(5, 1, 'On-Site Repairs', '2016-12-23 07:24:21', '2016-12-28 03:30:13'),
(6, 1, 'Drums', '2016-12-27 00:37:54', '2016-12-27 00:37:54'),
(7, 1, 'How to videos', '2016-12-27 00:38:17', '2016-12-27 00:38:17'),
(8, 1, 'Labor', '2016-12-27 00:38:48', '2016-12-27 00:38:48'),
(9, 1, 'Tech Support', '2016-12-27 00:39:05', '2016-12-27 00:39:05'),
(10, 1, 'Toner', '2016-12-27 00:39:23', '2016-12-27 00:39:23'),
(11, 1, 'Remote Support', '2016-12-27 00:39:37', '2016-12-27 00:39:37'),
(12, 1, 'All consumable supplies besides paper and staples.', '2016-12-27 00:39:52', '2016-12-27 00:39:52'),
(13, 1, 'Parts', '2016-12-28 03:27:36', '2016-12-28 03:27:36');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(41, '2016_11_25_101938_create_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `copier_id` int(11) NOT NULL DEFAULT '44',
  `payment_id` int(11) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `delivery_date` date NOT NULL,
  `delivery_time` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `copier_id`, `payment_id`, `order_date`, `delivery_date`, `delivery_time`, `created_at`, `updated_at`) VALUES
(4, 27, 39, 1, '2016-12-29 07:28:27', '2016-12-08', '9:00AM - 12:00PM', '2016-12-29 01:58:27', '2016-12-29 01:58:27'),
(5, 28, 39, 1, '2016-12-29 08:51:58', '2016-12-29', '9:00AM - 12:00PM', '2016-12-29 03:21:58', '2016-12-29 03:21:58'),
(6, 29, 39, 1, '2016-12-29 08:53:34', '2016-12-14', '9:00AM - 12:00PM', '2016-12-29 03:23:34', '2016-12-29 03:23:34'),
(7, 30, 41, 9, '2016-12-29 11:22:29', '2016-12-08', '9:00AM - 12:00PM', '2016-12-29 05:52:29', '2016-12-29 05:52:29'),
(8, 31, 41, 8, '2016-12-30 02:59:30', '2016-12-13', '9:00AM - 12:00PM', '2016-12-29 21:29:30', '2016-12-29 21:29:30');

-- --------------------------------------------------------

--
-- Table structure for table `order_accessories`
--

CREATE TABLE `order_accessories` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `accessory_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_accessories`
--

INSERT INTO `order_accessories` (`id`, `order_id`, `accessory_id`, `created_at`, `updated_at`) VALUES
(3, 4, 163, '2016-12-29 01:58:27', '2016-12-29 01:58:27'),
(4, 4, 164, '2016-12-29 01:58:27', '2016-12-29 01:58:27'),
(5, 5, 163, '2016-12-29 03:21:58', '2016-12-29 03:21:58'),
(6, 5, 164, '2016-12-29 03:21:59', '2016-12-29 03:21:59'),
(7, 6, 163, '2016-12-29 03:23:34', '2016-12-29 03:23:34'),
(8, 6, 164, '2016-12-29 03:23:34', '2016-12-29 03:23:34'),
(9, 7, 163, '2016-12-29 05:52:29', '2016-12-29 05:52:29'),
(10, 7, 164, '2016-12-29 05:52:29', '2016-12-29 05:52:29'),
(11, 7, 167, '2016-12-29 05:52:30', '2016-12-29 05:52:30'),
(12, 8, 163, '2016-12-29 21:29:30', '2016-12-29 21:29:30'),
(13, 8, 164, '2016-12-29 21:29:30', '2016-12-29 21:29:30');

-- --------------------------------------------------------

--
-- Table structure for table `payment_options`
--

CREATE TABLE `payment_options` (
  `id` int(11) NOT NULL,
  `copier_id` int(11) NOT NULL DEFAULT '23',
  `status_id` int(11) NOT NULL DEFAULT '1',
  `no_of_months` int(11) NOT NULL,
  `price_per_month` float NOT NULL,
  `support_price` float NOT NULL,
  `delivery_price` float NOT NULL,
  `pickup_price` float NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_options`
--

INSERT INTO `payment_options` (`id`, `copier_id`, `status_id`, `no_of_months`, `price_per_month`, `support_price`, `delivery_price`, `pickup_price`, `created_at`, `updated_at`) VALUES
(1, 39, 1, 1, 169, 55, 33, 22, '2016-12-14 05:16:35', '2016-12-28 01:37:17'),
(2, 39, 1, 12, 174, 0, 0, 0, '2016-12-14 05:18:47', '2016-12-28 01:43:33'),
(3, 39, 1, 24, 189, 0, 45, 0, '2016-12-14 05:24:21', '2016-12-28 01:33:05'),
(4, 40, 1, 1, 159, 64, 67, 89, '2016-12-14 05:25:07', '2016-12-14 05:25:07'),
(5, 40, 1, 12, 199, 77, 0, 0, '2016-12-14 05:29:33', '2016-12-14 05:29:33'),
(6, 40, 1, 24, 200, 0, 0, 0, '2016-12-14 05:30:06', '2016-12-14 05:30:06'),
(7, 41, 1, 1, 235, 44, 55, 0, '2016-12-14 06:03:01', '2016-12-14 06:03:01'),
(8, 41, 1, 12, 236, 45, 0, 0, '2016-12-14 06:03:33', '2016-12-14 06:03:33'),
(9, 41, 1, 24, 237, 0, 0, 0, '2016-12-14 06:03:56', '2016-12-14 06:03:56'),
(10, 42, 1, 1, 321, 12, 11, 23, '2016-12-14 06:04:27', '2016-12-14 06:04:27'),
(11, 42, 1, 12, 322, 0, 0, 0, '2016-12-14 06:04:42', '2016-12-14 06:04:42'),
(12, 42, 1, 24, 324, 0, 0, 0, '2016-12-14 06:05:37', '2016-12-14 06:05:37'),
(13, 43, 1, 1, 421, 77, 90, 56, '2016-12-14 06:06:25', '2016-12-14 06:06:25'),
(14, 43, 1, 12, 433, 72, 0, 0, '2016-12-14 06:06:44', '2016-12-14 06:06:44'),
(15, 43, 1, 24, 438, 0, 0, 0, '2016-12-14 06:06:57', '2016-12-14 06:06:57');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `role_id` int(10) NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'User',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'User can view',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`role_id`, `user_id`, `role_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 3, 'Admin', 'User can view', '2016-12-05 04:13:37', '2016-12-05 04:13:37'),
(2, 4, 'User', 'User can view', '2016-12-05 05:02:48', '2016-12-05 05:02:48'),
(3, 5, 'User', 'User can view', '2016-12-05 05:52:10', '2016-12-05 05:52:10'),
(16, 20, 'User', 'User can view', '2016-12-08 23:21:58', '2016-12-08 23:21:58'),
(17, 21, 'User', 'User can view', '2016-12-13 04:14:46', '2016-12-13 04:14:46'),
(21, 27, 'User', 'User can view', '2016-12-29 01:58:27', '2016-12-29 01:58:27'),
(22, 28, 'User', 'User can view', '2016-12-29 03:21:58', '2016-12-29 03:21:58'),
(23, 29, 'User', 'User can view', '2016-12-29 03:23:34', '2016-12-29 03:23:34'),
(24, 30, 'User', 'User can view', '2016-12-29 05:52:29', '2016-12-29 05:52:29'),
(25, 31, 'User', 'User can view', '2016-12-29 21:29:30', '2016-12-29 21:29:30');

-- --------------------------------------------------------

--
-- Table structure for table `service_alls`
--

CREATE TABLE `service_alls` (
  `id` int(11) NOT NULL,
  `copier_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `service_alls`
--

INSERT INTO `service_alls` (`id`, `copier_id`, `service_id`, `created_at`, `updated_at`) VALUES
(16, 39, 5, '2016-12-23 07:24:22', '2016-12-23 07:24:22'),
(17, 40, 5, '2016-12-23 07:24:22', '2016-12-23 07:24:22'),
(18, 41, 5, '2016-12-23 07:24:22', '2016-12-23 07:24:22'),
(19, 42, 5, '2016-12-23 07:24:22', '2016-12-23 07:24:22'),
(20, 43, 5, '2016-12-23 07:24:22', '2016-12-23 07:24:22'),
(21, 39, 6, '2016-12-27 00:37:54', '2016-12-27 00:37:54'),
(22, 40, 6, '2016-12-27 00:37:54', '2016-12-27 00:37:54'),
(23, 42, 6, '2016-12-27 00:37:54', '2016-12-27 00:37:54'),
(24, 41, 6, '2016-12-27 00:37:54', '2016-12-27 00:37:54'),
(25, 43, 6, '2016-12-27 00:37:54', '2016-12-27 00:37:54'),
(26, 39, 7, '2016-12-27 00:38:17', '2016-12-27 00:38:17'),
(27, 40, 7, '2016-12-27 00:38:17', '2016-12-27 00:38:17'),
(28, 42, 7, '2016-12-27 00:38:17', '2016-12-27 00:38:17'),
(29, 41, 7, '2016-12-27 00:38:17', '2016-12-27 00:38:17'),
(30, 43, 7, '2016-12-27 00:38:17', '2016-12-27 00:38:17'),
(31, 39, 8, '2016-12-27 00:38:48', '2016-12-27 00:38:48'),
(32, 40, 8, '2016-12-27 00:38:48', '2016-12-27 00:38:48'),
(33, 42, 8, '2016-12-27 00:38:48', '2016-12-27 00:38:48'),
(34, 41, 8, '2016-12-27 00:38:48', '2016-12-27 00:38:48'),
(35, 43, 8, '2016-12-27 00:38:48', '2016-12-27 00:38:48'),
(36, 39, 9, '2016-12-27 00:39:05', '2016-12-27 00:39:05'),
(37, 40, 9, '2016-12-27 00:39:05', '2016-12-27 00:39:05'),
(38, 42, 9, '2016-12-27 00:39:05', '2016-12-27 00:39:05'),
(39, 41, 9, '2016-12-27 00:39:05', '2016-12-27 00:39:05'),
(40, 43, 9, '2016-12-27 00:39:05', '2016-12-27 00:39:05'),
(41, 39, 10, '2016-12-27 00:39:23', '2016-12-27 00:39:23'),
(42, 40, 10, '2016-12-27 00:39:23', '2016-12-27 00:39:23'),
(43, 42, 10, '2016-12-27 00:39:23', '2016-12-27 00:39:23'),
(44, 41, 10, '2016-12-27 00:39:23', '2016-12-27 00:39:23'),
(45, 43, 10, '2016-12-27 00:39:23', '2016-12-27 00:39:23'),
(46, 39, 11, '2016-12-27 00:39:37', '2016-12-27 00:39:37'),
(47, 40, 11, '2016-12-27 00:39:37', '2016-12-27 00:39:37'),
(48, 42, 11, '2016-12-27 00:39:37', '2016-12-27 00:39:37'),
(49, 41, 11, '2016-12-27 00:39:37', '2016-12-27 00:39:37'),
(50, 43, 11, '2016-12-27 00:39:38', '2016-12-27 00:39:38'),
(51, 39, 12, '2016-12-27 00:39:52', '2016-12-27 00:39:52'),
(52, 40, 12, '2016-12-27 00:39:52', '2016-12-27 00:39:52'),
(53, 42, 12, '2016-12-27 00:39:52', '2016-12-27 00:39:52'),
(54, 41, 12, '2016-12-27 00:39:52', '2016-12-27 00:39:52'),
(55, 43, 12, '2016-12-27 00:39:52', '2016-12-27 00:39:52'),
(56, 39, 13, '2016-12-28 03:27:36', '2016-12-28 03:27:36'),
(57, 40, 13, '2016-12-28 03:27:37', '2016-12-28 03:27:37'),
(58, 41, 13, '2016-12-28 03:27:37', '2016-12-28 03:27:37'),
(59, 42, 13, '2016-12-28 03:27:37', '2016-12-28 03:27:37'),
(60, 43, 13, '2016-12-28 03:27:37', '2016-12-28 03:27:37');

-- --------------------------------------------------------

--
-- Table structure for table `statuss`
--

CREATE TABLE `statuss` (
  `id` int(11) NOT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'enable',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `statuss`
--

INSERT INTO `statuss` (`id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'enable', '2016-12-17 08:58:13', '2016-12-17 08:58:13'),
(2, 'disable', '2016-12-17 08:58:13', '2016-12-17 08:58:13');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone_no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `company_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `zipcode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT 'null',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_no`, `company_name`, `password`, `address`, `city`, `state`, `zipcode`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'Anil', 'Prajapat', 'ani@gmail.com', '9826698676', 'Zehntech', '$2y$10$3ddjwU4/59DLGwDxnOss9.QUdQmfLP8MlIctUlrAkZnamHkriLZ/i', '7878', 'Indore', 'MP', '7878', 'p2m54rVXAQhzsapa36PbbuzMtKGq13agY7m3hE1vuwHW1EnDo3tIzwxMNcCm', '2016-12-05 04:13:37', '2016-12-30 04:56:23'),
(4, 'Sunil', 'Prajapat', 'sunil@gmail.com', '9826698514', 'Zehntech', '$2y$10$cQo3M0po9aEYidbXyLLUlO67dK6WnDJNqnh2bCKJ.h8gGACvZMavu', '787', 'Indore', 'MP', '787887', 'g1zGp7onLsMG9hqUDlzDC2j9cFwZKLyWOcPFjbXt6QdqIKyWuEQrC4jloxX5', '2016-12-05 05:02:48', '2016-12-30 00:47:46'),
(5, 'Kapil', 'Jain', 'kapil@gmail.com', '9826651478', 'Zehn CA', '$2y$10$jk1wjQTfG.QSBsnQjQkMnOX9CtpipHu5TFYUC9K1EFT6Uz0MGf94e', '9898', 'Indore', 'MP', '89898', 'oPUfSSWcqI4VS2y7oCoNyhQWeFBZRZfmS75rFLSptaYYw4uxFUg0MOyiEixZ', '2016-12-05 05:52:10', '2016-12-06 00:42:47'),
(20, 'Mahaveer', 'soni', 'mahaveer@gmail.com', '9872265214', 'Zehntech', '$2y$10$.UDDpE.0VEsfltTSmTgqaeX/gWULaMDpr5a0W1lta5z8lnUUTxBNW', '787', 'Indore', 'MP', '7878', 'Q104CQmV1M2LSgSqBt8BamMwGm5jEPoqc3e5CrA0V2pUNB9RgwAe4D0GsxlI', '2016-12-08 23:21:58', '2016-12-08 23:30:02'),
(21, 'Kamal', 'jain', 'kamal@gmail.com', '98266985478', 'Zehntech', '$2y$10$z5U.gsvBkCoVKX7R/83.XOLCASucYw97wA75QtGhsSzsX27LeMYAK', '43-kalani', 'Indore', 'Madhya Pradesh', '43443', 'DTL06wDimIhP8nZRJLVibTmB5EWeAM5ilYlCFOG3kAttUPETAufiFvkHgtdC', '2016-12-13 04:14:46', '2016-12-13 04:27:44'),
(27, 'Maya', 'Jain', 'maya@gmail.com', '9826698675', 'Zehntech', '$2y$10$vRuHTJBIaVz/kVgeb8462.wWWO6xf4mgK4vrWqzBJxrXBcoa.u/ZO', '787-maya nagar', 'Indore', 'MP', '78787', '0B1u5Ie6GJILMZEp9MxmveEwZ0mWq61kQQgMZznps55olvCOnp0vO5BpackH', '2016-12-29 01:58:27', '2016-12-30 04:46:51'),
(28, 'Aditi', 'Sharma', 'aditi@gmail.com', '9826698674', 'Zehntech', '$2y$10$dhXE6wBxp038iy0txw3O0uoQmrlfH/YhU2/MiuxJdOsl..vr05ch.', '787-Kavnjali nagar,Indore', 'Indore', 'MP', '7877', 'null', '2016-12-29 03:21:58', '2016-12-29 03:21:58'),
(29, 'Arun', 'Kumar', 'arun@gmail.com', '9826698674', 'Zehntech', '$2y$10$Vk4Sas6J6rdh54cQDQjtfeWoZxxu1o13lc9n3D2DUnl6XvoADecFu', '676- Plasia Square,Landmark Shivaji statue', 'Indore', 'MP', '7877', 'null', '2016-12-29 03:23:34', '2016-12-29 03:23:34'),
(30, 'Mania', 'Singh', 'mania@gmail.com', '9826698674', 'Zehntech', '$2y$10$LmFHLa3BUjfJJxrlHf6FdOEOweyYXDkB5q4FDUVpVZYKyY0jhWvXO', '76-Utsav nagar', 'Indore', 'MP', '78787', 'v8AFFmzDBTEQORStFAqJaHHfKNHMKzKCSbfwoovtyFNurVVeEVOfIPXWhYsN', '2016-12-29 05:52:29', '2016-12-30 04:53:20'),
(31, 'Vishal', 'Goyal', 'vishal@gmail.com', '9826698674', 'Zehntech', '$2y$10$ZJstt.uILygz/6rD0JdREuzkafPdEthxfOnI/u1WdVukOn9MdaDbq', '6767-Indore', 'Indore', 'MP', '7676', 'Y6v5kuR54T52p3YiUefC04Ddt6GOIWO9EypUPxVeEFYehOnsUAPNQ9M9tInF', '2016-12-29 21:29:30', '2016-12-30 04:47:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accessories`
--
ALTER TABLE `accessories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `action_id` (`status_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `copiers`
--
ALTER TABLE `copiers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `copier_accessories`
--
ALTER TABLE `copier_accessories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `copier_id` (`copier_id`),
  ADD KEY `accessory_id` (`accessory_id`);

--
-- Indexes for table `crystalball_policies`
--
ALTER TABLE `crystalball_policies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `crystalball_services`
--
ALTER TABLE `crystalball_services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `copier_id` (`copier_id`),
  ADD KEY `user_id_2` (`user_id`),
  ADD KEY `payment_id` (`payment_id`);

--
-- Indexes for table `order_accessories`
--
ALTER TABLE `order_accessories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accessory_id` (`accessory_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `payment_options`
--
ALTER TABLE `payment_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `copier_id` (`copier_id`),
  ADD KEY `copier_id_2` (`copier_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `service_alls`
--
ALTER TABLE `service_alls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `copier_id` (`copier_id`),
  ADD KEY `service_id` (`service_id`);

--
-- Indexes for table `statuss`
--
ALTER TABLE `statuss`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `accessories`
--
ALTER TABLE `accessories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `copiers`
--
ALTER TABLE `copiers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `copier_accessories`
--
ALTER TABLE `copier_accessories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
--
-- AUTO_INCREMENT for table `crystalball_policies`
--
ALTER TABLE `crystalball_policies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `crystalball_services`
--
ALTER TABLE `crystalball_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `order_accessories`
--
ALTER TABLE `order_accessories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `payment_options`
--
ALTER TABLE `payment_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `role_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `service_alls`
--
ALTER TABLE `service_alls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `statuss`
--
ALTER TABLE `statuss`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `accessories`
--
ALTER TABLE `accessories`
  ADD CONSTRAINT `accessories_ibfk_1` FOREIGN KEY (`status_id`) REFERENCES `statuss` (`id`);

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_ibfk_1` FOREIGN KEY (`status_id`) REFERENCES `statuss` (`id`);

--
-- Constraints for table `copiers`
--
ALTER TABLE `copiers`
  ADD CONSTRAINT `copiers_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `copiers_ibfk_2` FOREIGN KEY (`status_id`) REFERENCES `statuss` (`id`);

--
-- Constraints for table `copier_accessories`
--
ALTER TABLE `copier_accessories`
  ADD CONSTRAINT `copier_accessories_ibfk_2` FOREIGN KEY (`copier_id`) REFERENCES `copiers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `copier_accessories_ibfk_3` FOREIGN KEY (`accessory_id`) REFERENCES `accessories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `crystalball_policies`
--
ALTER TABLE `crystalball_policies`
  ADD CONSTRAINT `crystalball_policies_ibfk_1` FOREIGN KEY (`status_id`) REFERENCES `statuss` (`id`);

--
-- Constraints for table `crystalball_services`
--
ALTER TABLE `crystalball_services`
  ADD CONSTRAINT `crystalball_services_ibfk_1` FOREIGN KEY (`status_id`) REFERENCES `statuss` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`copier_id`) REFERENCES `copiers` (`id`),
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`payment_id`) REFERENCES `payment_options` (`id`);

--
-- Constraints for table `order_accessories`
--
ALTER TABLE `order_accessories`
  ADD CONSTRAINT `order_accessories_ibfk_1` FOREIGN KEY (`accessory_id`) REFERENCES `accessories` (`id`),
  ADD CONSTRAINT `order_accessories_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Constraints for table `payment_options`
--
ALTER TABLE `payment_options`
  ADD CONSTRAINT `payment_options_ibfk_1` FOREIGN KEY (`copier_id`) REFERENCES `copiers` (`id`),
  ADD CONSTRAINT `payment_options_ibfk_2` FOREIGN KEY (`status_id`) REFERENCES `statuss` (`id`);

--
-- Constraints for table `roles`
--
ALTER TABLE `roles`
  ADD CONSTRAINT `roles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `service_alls`
--
ALTER TABLE `service_alls`
  ADD CONSTRAINT `service_alls_ibfk_1` FOREIGN KEY (`copier_id`) REFERENCES `copiers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `service_alls_ibfk_2` FOREIGN KEY (`service_id`) REFERENCES `crystalball_services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
