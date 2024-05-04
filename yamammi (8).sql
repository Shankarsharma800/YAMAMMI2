-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2024 at 12:50 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yamammi`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `country_code` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1:Active, 2:Deactive, 3:Delete',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `phone`, `country_code`, `image`, `password`, `note`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '1234567890', 91, 'public/admin/1712065762.png', '$2y$10$.2S4HvQ1bAiaIXvTmQ6.MuSCRqI/cpcq/yx7XBqnnc.2QA1RHVT9i', NULL, 1, NULL, '2024-04-02 08:19:22');

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `id` bigint(20) NOT NULL,
  `convenience_id` int(11) NOT NULL,
  `chat_user_id` int(11) NOT NULL,
  `from_id` int(11) NOT NULL,
  `to_id` int(11) NOT NULL,
  `replay_id` int(11) NOT NULL DEFAULT 0,
  `message` text NOT NULL,
  `file` varchar(255) DEFAULT NULL,
  `file_type` varchar(255) DEFAULT NULL,
  `is_read` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chats`
--

INSERT INTO `chats` (`id`, `convenience_id`, `chat_user_id`, `from_id`, `to_id`, `replay_id`, `message`, `file`, `file_type`, `is_read`, `created_at`, `updated_at`) VALUES
(6, 1, 0, 4, 3, 0, 'hello', '', '1', '0', '2024-04-11 04:33:17', '2024-04-11 04:33:17'),
(7, 1, 0, 4, 3, 0, 'hellofgdfg', '', '1', '0', '2024-04-11 04:33:54', '2024-04-12 10:16:41'),
(8, 1, 0, 4, 3, 0, 'hellofgdf', '', '1', '0', '2024-04-11 04:34:52', '2024-04-12 10:16:43'),
(9, 1, 0, 4, 3, 0, 'hellodfgfdg', '', '1', '0', '2024-04-11 04:36:01', '2024-04-12 10:16:44'),
(10, 1, 0, 4, 3, 0, 'hello', '', '1', '0', '2024-04-11 04:36:18', '2024-04-11 04:36:18'),
(11, 1, 0, 4, 3, 0, 'hello', '', '1', '0', '2024-04-11 04:42:29', '2024-04-11 04:42:29'),
(12, 1, 0, 4, 3, 0, 'hello', '', '1', '0', '2024-04-11 04:44:04', '2024-04-11 04:44:04'),
(13, 1, 0, 4, 3, 0, 'hello', '', '1', '0', '2024-04-11 04:45:05', '2024-04-11 04:45:05'),
(14, 1, 0, 4, 3, 0, 'hello', '', '1', '0', '2024-04-11 04:46:21', '2024-04-11 04:46:21'),
(15, 1, 0, 4, 3, 0, 'hello', '', '1', '0', '2024-04-11 04:48:27', '2024-04-11 04:48:27'),
(16, 3, 0, 4, 3, 0, 'hii', '', 'TEXT', '0', '2024-04-12 06:20:04', '2024-04-12 06:20:04'),
(17, 3, 0, 4, 3, 0, 'hello arun', '', 'TEXT', '0', '2024-04-12 06:20:39', '2024-04-12 06:20:39'),
(18, 2, 0, 4, 3, 0, 'yes', '', 'TEXT', '0', '2024-04-12 06:24:50', '2024-04-12 06:24:50'),
(19, 2, 0, 4, 3, 0, 'how are you', '', 'TEXT', '0', '2024-04-12 06:24:59', '2024-04-12 06:24:59'),
(20, 2, 4, 4, 3, 4, 'how are you', '', 'TEXT', '0', '2024-04-12 06:24:59', '2024-04-12 11:59:41'),
(21, 3, 0, 4, 3, 0, 'fine', '', 'TEXT', '0', '2024-04-12 06:38:32', '2024-04-12 06:38:32'),
(22, 3, 0, 3, 4, 0, 'fine', '', 'TEXT', '0', '2024-04-12 06:38:32', '2024-04-12 06:38:32'),
(23, 3, 0, 4, 3, 0, 'hii', '', 'TEXT', '0', '2024-04-12 07:08:29', '2024-04-12 07:08:29'),
(24, 3, 0, 4, 3, 0, 'hii', '', 'TEXT', '0', '2024-04-12 07:40:33', '2024-04-12 07:40:33'),
(25, 3, 0, 4, 3, 0, 'hii', 'public/chat/models/review_1712927736.png', 'IMAGE', '0', '2024-04-12 07:46:03', '2024-04-12 07:46:03'),
(26, 3, 0, 4, 3, 0, 'kkjj', 'public/chat/models/review_1712927842.png', 'IMAGE', '0', '2024-04-12 07:47:24', '2024-04-12 07:47:24'),
(27, 3, 0, 4, 3, 0, '', 'public/chat/models/review_1712927938.png', 'IMAGE', '0', '2024-04-12 07:48:59', '2024-04-12 07:48:59');

-- --------------------------------------------------------

--
-- Table structure for table `chat_usres`
--

CREATE TABLE `chat_usres` (
  `id` int(11) NOT NULL,
  `convenience_id` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chat_usres`
--

INSERT INTO `chat_usres` (`id`, `convenience_id`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 3, '2024-04-11 03:45:16', '2024-04-11 03:45:16', NULL),
(2, 1, 4, '2024-04-11 03:45:16', '2024-04-11 03:45:16', NULL),
(3, 2, 3, '2024-04-11 03:46:17', '2024-04-11 03:46:17', NULL),
(4, 2, 4, '2024-04-11 03:46:17', '2024-04-11 03:46:17', NULL),
(5, 3, 3, '2024-04-11 03:46:32', '2024-04-11 03:46:32', NULL),
(6, 3, 4, '2024-04-11 03:46:32', '2024-04-11 03:46:32', NULL),
(7, 4, 4, '2024-04-17 04:09:48', '2024-04-17 04:09:48', NULL),
(8, 4, 12, '2024-04-17 04:09:48', '2024-04-17 04:09:48', NULL),
(17, 9, 10, '2024-04-18 01:50:13', '2024-04-18 01:50:13', NULL),
(18, 9, 12, '2024-04-18 01:50:13', '2024-04-18 01:50:13', NULL),
(19, 10, 9, '2024-04-23 07:08:46', '2024-04-23 07:08:46', NULL),
(20, 10, 12, '2024-04-23 07:08:46', '2024-04-23 07:08:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT '1' COMMENT '1:active , 0:inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(2, 'USA', '1', '2024-04-26 01:26:30', '2024-04-26 01:26:30'),
(3, 'London', '1', '2024-04-26 01:54:54', '2024-04-26 01:54:54');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `city_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `user_id`, `city_id`, `created_at`, `updated_at`) VALUES
(4, 3, 0, '2024-04-04 07:29:27', '2024-04-10 07:06:59'),
(5, 11, 0, '2024-04-04 07:29:27', '2024-04-12 05:42:55'),
(6, 12, 0, '2024-04-16 07:31:47', '2024-04-16 07:31:47'),
(7, 13, 0, '2024-04-18 03:49:43', '2024-04-18 03:49:43'),
(8, 14, 0, '2024-04-22 00:05:19', '2024-04-22 00:05:19'),
(9, 16, 3, '2024-04-26 02:18:22', '2024-04-26 02:24:53'),
(10, 17, 3, '2024-04-26 06:29:30', '2024-04-26 06:44:10');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `message`, `created_at`, `updated_at`) VALUES
(1, 'arun kumar', 'arun@gmail.com', 'this is only test purpose please ignore it', NULL, NULL),
(2, 'arun', 'arun@gmail.com', 'hello', '2024-04-08 06:55:12', '2024-04-08 06:55:12'),
(3, 'arun', 'shankar.sharma@jploft.in', 'hello', '2024-04-08 06:56:37', '2024-04-08 06:56:37');

-- --------------------------------------------------------

--
-- Table structure for table `conveniencs`
--

CREATE TABLE `conveniencs` (
  `id` int(11) NOT NULL,
  `ticket_id` int(11) NOT NULL DEFAULT 0,
  `ticket_type` varchar(50) DEFAULT NULL,
  `group_name` varchar(255) DEFAULT NULL,
  `type` enum('SINGLE','GROUP') NOT NULL DEFAULT 'SINGLE',
  `last_message` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `conveniencs`
--

INSERT INTO `conveniencs` (`id`, `ticket_id`, `ticket_type`, `group_name`, `type`, `last_message`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 0, 'single_chat', '', 'SINGLE', 'hello', '2024-04-11 03:45:16', '2024-04-11 04:48:27', NULL),
(2, 1, 'Booking', '', 'SINGLE', 'how are you', '2024-04-11 03:46:17', '2024-04-12 06:24:59', NULL),
(3, 2, 'Booking', '', 'SINGLE', 'IMAGE', '2024-04-11 03:46:32', '2024-04-12 07:48:59', NULL),
(4, 0, 'single_chat', '', 'SINGLE', '', '2024-04-17 04:09:48', '2024-04-17 04:09:48', NULL),
(9, 0, 'single_chat', '', 'SINGLE', '', '2024-04-18 01:50:13', '2024-04-18 01:50:13', NULL),
(10, 0, 'single_chat', '', 'SINGLE', '', '2024-04-23 07:08:46', '2024-04-23 07:08:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `time` varchar(255) DEFAULT NULL,
  `amount` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `type` enum('0','1','2') NOT NULL DEFAULT '0' COMMENT '0=>social media,1=>social and website,2=>billboard',
  `description` text DEFAULT NULL,
  `age` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT '1' COMMENT '1:active,0:inactive',
  `job_type` enum('0','1') NOT NULL DEFAULT '0' COMMENT '0=>job post,1=>invite',
  `job_status` enum('0','1') NOT NULL DEFAULT '0' COMMENT '0=>pending,1=>complate',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `user_id`, `image`, `title`, `location`, `date`, `time`, `amount`, `gender`, `type`, `description`, `age`, `status`, `job_type`, `job_status`, `created_at`, `updated_at`) VALUES
(4, 3, 'public/uploads/jobs/1712239190.png', 'brand photoshoot model', 'indore', '2024-04-02', NULL, '900 $', 'Male', '0', 'need a experianced brand model', NULL, '1', '0', '1', '2024-04-04 08:29:50', '2024-04-04 08:29:50'),
(5, 3, 'public/uploads/jobs/1712645931.png', 'xyz', 'indore', '2024-04-14', NULL, '900$', 'All', '0', 'hello', '17 to 22', '1', '0', '0', '2024-04-09 01:28:51', '2024-04-09 01:28:51'),
(11, 12, 'public/uploads/jobs/1713336578.jpg', 'Gym photoshoot', 'up', '2024-04-25', NULL, '1800', 'All', '0', 'hello', '18 to 25', '1', '0', '0', '2024-04-17 01:19:38', '2024-04-17 01:19:38'),
(40, 12, '', 'Gym photoshoot ht', 'up', '2024-04-25', NULL, '1800', 'All', '0', 'hello', '18 to 25', '1', '0', '0', '2024-04-25 07:44:27', '2024-04-25 07:44:27'),
(41, 12, '', 'Gym photoshoot htt', 'up', '2024-04-25', NULL, '1800', 'All', '0', 'hello', '18 to 25', '1', '0', '0', '2024-04-25 07:45:40', '2024-04-25 07:45:40');

-- --------------------------------------------------------

--
-- Table structure for table `job_request`
--

CREATE TABLE `job_request` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jobs_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `request_type` enum('1','2','3') NOT NULL DEFAULT '1' COMMENT '1 for request 2 for conform 3 for cancel',
  `hire` enum('0','1') NOT NULL DEFAULT '0' COMMENT '0=>not,1=>yes',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_request`
--

INSERT INTO `job_request` (`id`, `jobs_id`, `user_id`, `request_type`, `hire`, `created_at`, `updated_at`) VALUES
(1, 4, 4, '2', '0', '2024-04-02 03:00:07', '2024-04-04 22:50:12'),
(5, 4, 4, '1', '0', '2024-04-05 05:00:48', '2024-04-05 05:00:48'),
(8, 4, 4, '1', '0', '2024-04-05 05:02:21', '2024-04-05 05:02:21'),
(9, 5, 4, '1', '0', '2024-04-09 01:29:41', '2024-04-09 01:29:41'),
(10, 11, 4, '3', '0', '2024-04-17 02:16:11', '2024-04-23 07:18:59'),
(15, 19, 10, '2', '1', '2024-04-18 01:50:13', '2024-04-23 06:58:36'),
(16, 11, 9, '2', '1', '2024-04-17 02:16:11', '2024-04-23 07:19:30'),
(17, 11, 10, '3', '0', '2024-04-17 02:16:11', '2024-04-23 07:19:53');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2024_04_01_101052_create_client__table', 1),
(3, '2024_04_01_120937_create_models_table', 1),
(4, '2024_04_02_055409_create_jobs_table', 1),
(5, '<2024_04_02_075331_create_job_request_table>', 2),
(6, '<2024_04_02_090721_create_contact_us_table>', 3),
(7, '<2024_04_02_093830_create_pages_table>', 4),
(8, '<2024_04_02_103647_create_models_photos_table>', 5),
(9, '<2024_04_10_064509_create_chats_table>', 6),
(10, '<2024_04_10_064904_create_chat_requests_table>', 7),
(11, '0000_00_00_000000_create_websockets_statistics_entries_table', 8),
(12, '<2024_04_26_061818_create_city_table>', 9);

-- --------------------------------------------------------

--
-- Table structure for table `models`
--

CREATE TABLE `models` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `wallet` varchar(255) NOT NULL DEFAULT '0' COMMENT 'wallet amount in AED',
  `city_id` int(11) DEFAULT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `based` varchar(255) DEFAULT NULL,
  `height` varchar(255) DEFAULT NULL,
  `chest_bust` varchar(255) DEFAULT NULL,
  `waist` varchar(255) DEFAULT NULL,
  `hips` varchar(255) DEFAULT NULL,
  `shoes` varchar(255) DEFAULT NULL,
  `hair_color` varchar(255) DEFAULT NULL,
  `eye_color` varchar(255) DEFAULT NULL,
  `ethnicity_look` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `models`
--

INSERT INTO `models` (`id`, `user_id`, `wallet`, `city_id`, `dob`, `based`, `height`, `chest_bust`, `waist`, `hips`, `shoes`, `hair_color`, `eye_color`, `ethnicity_look`, `created_at`, `updated_at`) VALUES
(10, 4, '0', 0, '2024-04-06', '45', '5.9', '56', '32', '45', '8', 'light brown', 'light brown', 'indian', '2024-04-04 07:58:30', '2024-04-17 05:32:12'),
(15, 9, '0', 0, '2024-04-02', 'tyu', '4.5', '56', '38', '56', '78', NULL, NULL, NULL, '2024-04-05 00:31:52', '2024-04-12 05:31:06'),
(16, 10, '0', 0, '2024-04-01', 'ty', '4.9', '80', '57', '77', '35', NULL, NULL, NULL, '2024-04-05 07:43:10', '2024-04-25 01:06:23'),
(17, 15, '0', 2, '2024-04-04', '23', '4.8', '73', '58', '77', '35', NULL, NULL, NULL, '2024-04-26 01:56:46', '2024-04-26 01:56:46'),
(18, 18, '0', 3, '2024-04-20', 'tyh', '4.2', '72', '57', '76', '42', NULL, NULL, NULL, '2024-04-26 06:47:01', '2024-04-26 07:00:27');

-- --------------------------------------------------------

--
-- Table structure for table `models_photos`
--

CREATE TABLE `models_photos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `users_id` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `type` enum('1','2') NOT NULL DEFAULT '1' COMMENT '1=>phots,2=>video',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `models_photos`
--

INSERT INTO `models_photos` (`id`, `users_id`, `photo`, `type`, `created_at`, `updated_at`) VALUES
(4, 4, 'public/uploads/jobs/1712041597.png', '1', NULL, NULL),
(5, 4, 'public/uploads/jobs/1712041597.png', '1', NULL, NULL),
(11, 4, 'public/uploads/jobs/1712041597.png', '1', NULL, NULL),
(15, 4, 'public/uploads/models/1712638351.jpg', '1', '2024-04-08 23:22:31', '2024-04-08 23:22:31'),
(16, 4, 'public/uploads/models/1712638352.jpg', '1', '2024-04-08 23:22:32', '2024-04-08 23:22:32'),
(19, 4, 'public/uploads/models/1713352695.mov', '2', '2024-04-17 05:48:15', '2024-04-17 05:48:15');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(2, 'Terms & Condition', '<p>Terms &amp; Condition Description</p>', '2024-04-02 04:36:47', '2024-04-02 04:36:47');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('shankarbagda99@gmail.com', 'MNlbIrYyl1hVWO9LSGH28DcMMDKQZXqTZTkDlSJQylJ1Q6cLKP5nISsP6gQgoxvU', '2024-04-04 05:53:51');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `jobs_id` int(11) NOT NULL,
  `model_id` int(11) NOT NULL,
  `total_amount` varchar(255) DEFAULT '0',
  `model_commission` varchar(255) NOT NULL DEFAULT '0',
  `client_commission` varchar(255) NOT NULL DEFAULT '0',
  `model_amount` varchar(255) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `user_id`, `jobs_id`, `model_id`, `total_amount`, `model_commission`, `client_commission`, `model_amount`, `created_at`, `updated_at`) VALUES
(1, 4, 4, 0, '200', '0', '0', '0', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `model_id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `type` enum('0','1') NOT NULL DEFAULT '0' COMMENT '0=>when client give ratting model,1=>when model give rating client',
  `punctuality` int(11) NOT NULL DEFAULT 0,
  `professionalism` int(11) NOT NULL DEFAULT 0,
  `appearance` int(11) NOT NULL DEFAULT 0,
  `communication` int(11) NOT NULL DEFAULT 0,
  `recommend` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`id`, `client_id`, `model_id`, `job_id`, `type`, `punctuality`, `professionalism`, `appearance`, `communication`, `recommend`, `created_at`, `updated_at`) VALUES
(1, 3, 4, 4, '1', 4, 3, 0, 0, 3, '2024-04-25 00:42:18', '2024-04-25 00:42:18');

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `sitename` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `short_description` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `banner` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `google` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `fav_icon` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `model_commission` int(11) NOT NULL DEFAULT 0 COMMENT 'in %',
  `client_commission` int(11) NOT NULL DEFAULT 0 COMMENT 'in %',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `sitename`, `email`, `phone`, `short_description`, `address`, `banner`, `facebook`, `twitter`, `youtube`, `google`, `instagram`, `logo`, `fav_icon`, `meta_title`, `meta_key`, `meta_description`, `model_commission`, `client_commission`, `created_at`, `updated_at`) VALUES
(1, 'Yamammi', 'yourmailid@yahoo.com', NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy textand scrambled it to make a type specimen book.', NULL, 'public/uploads/setting/1712559498.mov', 'www.google.com', 'www.google.com', 'www.google.com', 'www.google.com', 'www.google.com', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, '2024-04-29 03:44:03');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `profile_image` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT '1' COMMENT '0=>inactive,1=>active',
  `role` enum('1','2') NOT NULL DEFAULT '1' COMMENT '1=>model,2=>client',
  `gender` enum('0','1') DEFAULT NULL COMMENT '0=>male,1=>female',
  `password` varchar(255) NOT NULL,
  `is_online` varchar(255) DEFAULT NULL,
  `socket_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `profile_image`, `instagram`, `status`, `role`, `gender`, `password`, `is_online`, `socket_id`, `created_at`, `updated_at`) VALUES
(15, 'arun', 'sharma', 'arun@gmail.com', '8345345344', 'public/uploads/profile_image/1714116406.png', 'arun@insta.com', '1', '1', '0', '$2y$10$3i4UgU2M5ed2zhOVOxZSE.wnj9.8bEitBTWDZh7igGAEZ9S.ZBJ6K', NULL, NULL, '2024-04-26 01:56:46', '2024-04-26 01:56:46'),
(16, 'vinay', 'kumar', 'vinay@gmail.com', '8464646444', 'public/uploads/profile_image/1714117702.png', 'vinay@insta.com', '1', '2', '0', '$2y$10$JzFKYzQC3dK7waAW3fskiueVFztlouhx5CAOlqHlM6S8pfwIGIZJq', NULL, NULL, '2024-04-26 02:18:22', '2024-04-26 02:23:32'),
(17, 'raj', 'singh', 'raj@gmail.com', '9564547575', 'public/uploads/profile_image/1714132770.png', 'raj@insta.com', '1', '2', '0', '$2y$10$pT4bFpJtOeZLsYtnWbmPnerqTp0R.t3fyzucNYv0vNw3T/H9RenP.', NULL, NULL, '2024-04-26 06:29:30', '2024-04-26 06:29:30'),
(18, 'dev', 'kumar', 'dev@gmail.com', '9574545444', 'public/uploads/profile_image/1714133821.png', 'dev@insta.com', '1', '1', '0', '$2y$10$Fy6EokdBYBmB8yRthehw5u.UhxmxFyzrZXsSbFGkA5msLlLvR8thC', NULL, NULL, '2024-04-26 06:47:01', '2024-04-26 06:47:01');

-- --------------------------------------------------------

--
-- Table structure for table `websockets_statistics_entries`
--

CREATE TABLE `websockets_statistics_entries` (
  `id` int(10) UNSIGNED NOT NULL,
  `app_id` varchar(255) NOT NULL,
  `peak_connection_count` int(11) NOT NULL,
  `websocket_message_count` int(11) NOT NULL,
  `api_message_count` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `withdraw_request`
--

CREATE TABLE `withdraw_request` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `status` enum('0','1','2') NOT NULL DEFAULT '0' COMMENT '0=>pending,1=>paid,2=>cancel',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `withdraw_request`
--

INSERT INTO `withdraw_request` (`id`, `user_id`, `amount`, `status`, `created_at`, `updated_at`) VALUES
(4, 0, '200', '2', '2024-04-09 03:44:54', '2024-04-09 04:14:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_usres`
--
ALTER TABLE `chat_usres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conveniencs`
--
ALTER TABLE `conveniencs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_request`
--
ALTER TABLE `job_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `models`
--
ALTER TABLE `models`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `models_photos`
--
ALTER TABLE `models_photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `websockets_statistics_entries`
--
ALTER TABLE `websockets_statistics_entries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraw_request`
--
ALTER TABLE `withdraw_request`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `chat_usres`
--
ALTER TABLE `chat_usres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `conveniencs`
--
ALTER TABLE `conveniencs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `job_request`
--
ALTER TABLE `job_request`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `models`
--
ALTER TABLE `models`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `models_photos`
--
ALTER TABLE `models_photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `websockets_statistics_entries`
--
ALTER TABLE `websockets_statistics_entries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `withdraw_request`
--
ALTER TABLE `withdraw_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
