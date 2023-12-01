-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2023 at 03:17 PM
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
-- Database: `travel_agency`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `activity` varchar(255) NOT NULL,
  `details` longtext NOT NULL,
  `destination_id` bigint(20) UNSIGNED NOT NULL,
  `cost` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `airlines`
--

CREATE TABLE `airlines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `airlines`
--

INSERT INTO `airlines` (`id`, `name`, `email`, `created_at`, `updated_at`) VALUES
(112, 'Edom Airlines', 'edom@gmail.com', '2023-11-16 15:34:33', NULL),
(113, 'Luci Air', 'luci@gmail.com', NULL, NULL),
(114, 'Emirats', 'emi@rats', '2023-11-17 16:24:02', '2023-11-17 16:24:02'),
(116, 'MAisa', 'maisa@airline', '2023-11-18 01:56:58', '2023-11-18 01:56:58'),
(118, 'Qatar Airways', 'Qatar@airways.org', '2023-11-21 05:34:02', '2023-11-21 05:34:02'),
(119, 'Turkish Airline', 'Turkish@airline.com', '2023-11-21 05:37:07', '2023-11-21 05:37:07'),
(120, 'American Airlines', 'Airline@america.com', '2023-11-21 05:42:56', '2023-11-21 05:42:56'),
(121, 'Biman', 'Biman@Airline.com.bd', '2023-11-21 05:43:48', '2023-11-21 05:43:48'),
(122, 'Etihad Airways', 'Etihad@Airways.org', '2023-11-21 05:56:33', '2023-11-21 05:56:33'),
(123, 'Singapore Airlines', 'Singapore@Airline', '2023-11-21 10:49:51', '2023-11-21 10:49:51');

-- --------------------------------------------------------

--
-- Table structure for table `attractions`
--

CREATE TABLE `attractions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attraction` varchar(255) NOT NULL,
  `details` longtext NOT NULL,
  `destination_id` bigint(20) UNSIGNED NOT NULL,
  `cost` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `travel_package_id` bigint(20) UNSIGNED NOT NULL,
  `invoice` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date` date NOT NULL,
  `payment info` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `destinations`
--

CREATE TABLE `destinations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `destinations`
--

INSERT INTO `destinations` (`id`, `country`, `city`, `description`, `created_at`, `updated_at`) VALUES
(127, 'Brazil', 'Rio de Janeiro', 'Let the rhythm of samba and the breathtaking landscapes of Rio de Janeiro captivate your senses. Our travel agency offers packages to explore iconic landmarks like Sugarloaf Mountain and Christ the Redeemer, as well as the vibrant street life and golden beaches that define this Brazilian metropolis.', '2023-11-22 03:19:14', '2023-11-22 03:19:14'),
(128, 'Bangladesh', 'Dhaka', 'Immerse yourself in the vibrant culture of Dhaka, where ancient history meets modern dynamism. Our travel agency offers curated experiences to explore bustling markets, historical landmarks, and authentic cuisine, providing a unique blend of tradition and contemporary life in Bangladesh\'s capital.', '2023-11-22 03:24:11', '2023-11-22 03:24:11'),
(129, 'Bangladesh', 'Chittagong', 'Discover the scenic beauty and maritime charm of Chittagong with our exclusive travel packages. From the serene beaches of Cox\'s Bazar to the bustling port city, our itineraries capture the essence of this coastal gem. Explore rich history, diverse landscapes, and local hospitality in Chittagong.', '2023-11-22 03:25:20', '2023-11-22 03:25:20'),
(130, 'Germany', 'Dortmund', 'Uncover the hidden gems of Dortmund, a city that seamlessly combines industrial heritage with modern flair. Our travel agency provides opportunities to explore historical sites, picturesque parks, and the renowned Westfalenstadion. Immerse yourself in the vibrant energy of this German city.', '2023-11-22 03:26:00', '2023-11-22 03:26:00'),
(131, 'Germany', 'Munich', 'Delve into Bavarian traditions and contemporary sophistication in Munich. Our curated itineraries invite you to savor the rich cultural tapestry, from Oktoberfest celebrations to the art-filled streets of the Altstadt. Experience the warmth of Munich\'s hospitality and the charm of its historic architecture.', '2023-11-22 03:26:21', '2023-11-22 03:26:21'),
(132, 'China', 'Beijing', 'Embark on a journey through the heart of Chinese history and innovation in Beijing. Our travel agency provides access to the Great Wall, Forbidden City, and the Temple of Heaven, allowing you to immerse yourself in the ancient wonders and modern marvels of this dynamic capital.', '2023-11-22 03:31:27', '2023-11-22 03:31:27'),
(133, 'Italy', 'Venice', 'Experience the enchanting beauty of Venice, where romantic canals and historic architecture create a timeless ambiance. Our travel agency offers bespoke packages to explore the winding streets, visit iconic landmarks like St. Mark\'s Basilica, and enjoy the culinary delights of this floating city.', '2023-11-22 03:32:45', '2023-11-22 03:32:45'),
(134, 'India', 'Kolkata', 'Immerse yourself in the cultural kaleidoscope of Kolkata, where tradition and modernity coexist harmoniously. Our travel agency invites you to explore the colonial architecture of the British era, savor street food delights, and witness the artistic fervor that defines the City of Joy.', '2023-11-22 03:33:10', '2023-11-22 03:33:10');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flights`
--

CREATE TABLE `flights` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `airlines_id` bigint(20) UNSIGNED NOT NULL,
  `destination_id` bigint(20) UNSIGNED NOT NULL,
  `departure` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `prices,10,2` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flights`
--

INSERT INTO `flights` (`id`, `airlines_id`, `destination_id`, `departure`, `prices,10,2`, `created_at`, `updated_at`) VALUES
(1, 114, 129, '2024-02-22 09:36:14', 400.00, '2023-11-22 09:36:58', '2023-11-22 09:36:58'),
(2, 114, 128, '2024-02-22 09:36:14', 400.00, '2023-11-22 09:37:51', '2023-11-22 09:37:51'),
(3, 114, 127, '2024-02-22 09:36:14', 600.00, '2023-11-22 09:38:13', '2023-11-22 09:38:13'),
(4, 114, 132, '2024-02-22 09:36:14', 600.00, '2023-11-22 09:38:39', '2023-11-22 09:38:39'),
(5, 114, 130, '2024-02-22 09:36:14', 600.00, '2023-11-22 09:39:25', '2023-11-22 09:39:25'),
(6, 114, 131, '2024-02-22 09:36:14', 600.00, '2023-11-22 09:39:43', '2023-11-22 09:39:43'),
(7, 114, 134, '2023-11-22 09:40:36', 600.00, '2023-11-22 09:40:00', '2023-11-22 09:40:00'),
(8, 114, 133, '2024-02-22 09:36:14', 600.00, '2023-11-22 09:41:47', '2023-11-22 09:41:47');

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

CREATE TABLE `hotels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `prices` decimal(10,2) NOT NULL,
  `phone_no` varchar(255) NOT NULL,
  `destination_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `travel_package_id` bigint(20) UNSIGNED DEFAULT NULL,
  `destination_id` bigint(20) UNSIGNED DEFAULT NULL,
  `attraction_id` bigint(20) UNSIGNED DEFAULT NULL,
  `activity_id` bigint(20) UNSIGNED DEFAULT NULL,
  `path` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `travel_package_id`, `destination_id`, `attraction_id`, `activity_id`, `path`, `created_at`, `updated_at`) VALUES
(20, NULL, 127, NULL, NULL, 'http://localhost:8000/images/1700644754-Brazil.webp', '2023-11-22 03:19:14', '2023-11-22 03:19:14'),
(21, NULL, 128, NULL, NULL, 'http://localhost:8000/images/1700645051-Bangladesh.webp', '2023-11-22 03:24:11', '2023-11-22 03:24:11'),
(22, NULL, 129, NULL, NULL, 'http://localhost:8000/images/1700645121-Bangladesh.jpg', '2023-11-22 03:25:21', '2023-11-22 03:25:21'),
(23, NULL, 130, NULL, NULL, 'http://localhost:8000/images/1700645160-Germany.webp', '2023-11-22 03:26:00', '2023-11-22 03:26:00'),
(24, NULL, 131, NULL, NULL, 'http://localhost:8000/images/1700645181-Germany.webp', '2023-11-22 03:26:21', '2023-11-22 03:26:21'),
(25, NULL, 132, NULL, NULL, 'http://localhost:8000/images/1700645487-China.jpg', '2023-11-22 03:31:27', '2023-11-22 03:31:27'),
(26, NULL, 133, NULL, NULL, 'http://localhost:8000/images/1700645565-Italy.jpg', '2023-11-22 03:32:45', '2023-11-22 03:32:45'),
(27, NULL, 134, NULL, NULL, 'http://localhost:8000/images/1700645590-India.jpg', '2023-11-22 03:33:10', '2023-11-22 03:33:10'),
(28, 5702, NULL, NULL, NULL, 'http://localhost:8000/images/1700646584-Dhaka - Munich, Germany Package.webp', '2023-11-22 03:49:44', '2023-11-22 03:49:44'),
(29, 5703, NULL, NULL, NULL, 'http://localhost:8000/images/1700646603-Dhaka - Dortmund, Germany Package.jpg', '2023-11-22 03:50:03', '2023-11-22 03:50:03'),
(30, 5704, NULL, NULL, NULL, 'http://localhost:8000/images/1700646625-Dhaka - Beijing, China Package.jpg', '2023-11-22 03:50:25', '2023-11-22 03:50:25'),
(31, 5705, NULL, NULL, NULL, 'http://localhost:8000/images/1700646648-Dhaka - Kolkata, India Package.jpg', '2023-11-22 03:50:48', '2023-11-22 03:50:48'),
(32, 5706, NULL, NULL, NULL, 'http://localhost:8000/images/1700646678-Dhaka - Venice, Italy Package.jpg', '2023-11-22 03:51:18', '2023-11-22 03:51:18'),
(33, 5707, NULL, NULL, NULL, 'http://localhost:8000/images/1700646704-Dhaka - Rio De Janeiro, Brazil Package.webp', '2023-11-22 03:51:44', '2023-11-22 03:51:44'),
(34, 5708, NULL, NULL, NULL, 'http://localhost:8000/images/1700653764-Italy-Germany, Dortmund Package.jpg', '2023-11-22 05:49:24', '2023-11-22 05:49:24');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_10_22_135047_create_destinations_table', 1),
(6, '2023_10_22_135528_create_airlines_table', 1),
(7, '2023_10_22_135529_create_flights_table', 1),
(8, '2023_10_22_135530_create_travel__packages_table', 1),
(9, '2023_10_22_135616_create_reviews_table', 1),
(10, '2023_10_22_135647_create_hotels_table', 1),
(11, '2023_10_22_135746_create_admins_table', 1),
(12, '2023_10_22_161104_create_activities_table', 1),
(13, '2023_10_22_161147_create_attractions_table', 1),
(14, '2023_10_22_161148_create_bookings_table', 1),
(16, '2023_11_20_134346_create_images_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 4, 'token', 'cf484c8e4744cd160a583cfe3f4765966499ddb6bef2986308398bea36553c1b', '[\"*\"]', '2023-10-28 14:55:22', NULL, '2023-10-28 14:55:01', '2023-10-28 14:55:22'),
(2, 'App\\Models\\User', 4, 'token', '429da855e3d01658adc7417a21bbac33415eebd71759b39103859cfcb262e89e', '[\"*\"]', NULL, NULL, '2023-10-28 23:46:22', '2023-10-28 23:46:22'),
(3, 'App\\Models\\User', 4, 'token', '367fee054959e4dcd21328d27b76b4fd8051d0fd98eb8ad176c333499eb9e7e8', '[\"*\"]', NULL, NULL, '2023-10-28 23:46:25', '2023-10-28 23:46:25'),
(4, 'App\\Models\\User', 4, 'token', '7831eb5293e2f52fc8c63c9abef439acfdb9430f33d6bb511b4ba2adba777045', '[\"*\"]', NULL, NULL, '2023-10-28 23:46:28', '2023-10-28 23:46:28'),
(5, 'App\\Models\\User', 4, 'token', '0cb63f6cf3c9d750ad3012f2a64717799ac88203ab59c41733bd91103eb1c35f', '[\"*\"]', NULL, NULL, '2023-10-28 23:46:29', '2023-10-28 23:46:29'),
(6, 'App\\Models\\User', 4, 'token', '1f9fa2ae6488b36e178ea85ec66bcdf82a85f0c5e7156ec1e9ac94101b59ffdb', '[\"*\"]', NULL, NULL, '2023-10-28 23:46:30', '2023-10-28 23:46:30'),
(7, 'App\\Models\\User', 4, 'token', '2729702ce5121af04c915d7a0502f4ac2fc0dd87b8fecab3bcadbd152375deb7', '[\"*\"]', NULL, NULL, '2023-10-28 23:51:47', '2023-10-28 23:51:47'),
(8, 'App\\Models\\User', 4, 'token', '64eaea4d6bb9deff8d40ee53b7869fb915b88cc65b468124244391e2ff458a72', '[\"*\"]', NULL, NULL, '2023-10-28 23:56:13', '2023-10-28 23:56:13'),
(9, 'App\\Models\\User', 4, 'token', '22ba02da3c86d2c3c94f66d2f42e63b2950b1abc3f0a108af8c550dc1d2f6fad', '[\"*\"]', NULL, NULL, '2023-10-28 23:56:15', '2023-10-28 23:56:15'),
(10, 'App\\Models\\User', 4, 'token', '1257f1db4aa8794a49d79800ca2b77d8322de0d2dabdb0553b7bcb17ee66d70b', '[\"*\"]', NULL, NULL, '2023-10-29 00:51:44', '2023-10-29 00:51:44'),
(11, 'App\\Models\\User', 4, 'token', '27fc41ae287d31951a09f87e14c9a43b2026c43ecf180f0e4bad2fc06b8bdcb6', '[\"*\"]', NULL, NULL, '2023-10-29 00:51:45', '2023-10-29 00:51:45'),
(12, 'App\\Models\\User', 4, 'token', 'fa4990fea77f93d96f1359c425d880167dbd337c357b9b580eaa9251ffe5125b', '[\"*\"]', NULL, NULL, '2023-10-29 00:58:47', '2023-10-29 00:58:47'),
(13, 'App\\Models\\User', 5, 'token', '6df6d9e634c7f8d61ef998fc876bcfbedb93d46caf851b88fdb982c2c686c3e9', '[\"*\"]', '2023-11-15 22:41:08', NULL, '2023-11-15 22:41:06', '2023-11-15 22:41:08'),
(14, 'App\\Models\\User', 5, 'token', 'dff01a5b20dfee3966e8ca10c5de5371480f1ea19199c40b2123c95ce1bc073c', '[\"*\"]', NULL, NULL, '2023-11-15 22:48:40', '2023-11-15 22:48:40'),
(15, 'App\\Models\\User', 5, 'token', '86deffa302f644ab3f5e910205b8194d2d17c7fc5369be81b1dd6b19377d354b', '[\"*\"]', '2023-11-15 22:48:57', NULL, '2023-11-15 22:48:55', '2023-11-15 22:48:57'),
(16, 'App\\Models\\User', 5, 'token', '3078e0ab3e6a98d434641f158367fb2a8aa85706bc80e138ea71ab3efab34236', '[\"*\"]', NULL, NULL, '2023-11-15 23:04:52', '2023-11-15 23:04:52'),
(17, 'App\\Models\\User', 5, 'token', '8583be6314f669e92bc4ead4b0888eb9b2b5d2a8fa9f9cfb260aea8eb5b44364', '[\"*\"]', NULL, NULL, '2023-11-15 23:04:54', '2023-11-15 23:04:54'),
(18, 'App\\Models\\User', 5, 'token', '77131d6753038b88331bbbc84e48cbd6088732d5ee069d8a7855d7e55d63b476', '[\"*\"]', '2023-11-15 23:05:12', NULL, '2023-11-15 23:04:56', '2023-11-15 23:05:12'),
(19, 'App\\Models\\User', 5, 'token', '850267e7a1767b7535663fcb457f3efbe2b6ed7f5c35c00deaf229dade133430', '[\"*\"]', NULL, NULL, '2023-11-15 23:08:22', '2023-11-15 23:08:22'),
(20, 'App\\Models\\User', 5, 'token', 'b1d18a48c68a9f34ca30cdc62b00ac8b2672ab9b81984cb2d8e0fde9b6377a98', '[\"*\"]', '2023-11-15 23:08:45', NULL, '2023-11-15 23:08:25', '2023-11-15 23:08:45'),
(21, 'App\\Models\\User', 5, 'token', '8529649b8c0a1f08415b3f0d0440c475203de728e3394794ee688bce57d7a26b', '[\"*\"]', '2023-11-15 23:11:05', NULL, '2023-11-15 23:11:02', '2023-11-15 23:11:05'),
(22, 'App\\Models\\User', 5, 'token', 'd1f0b07e7c895ac894aab861e7c70fbd426df543d207bcc6cbacd9ca67d56d37', '[\"*\"]', '2023-11-15 23:30:39', NULL, '2023-11-15 23:30:26', '2023-11-15 23:30:39'),
(23, 'App\\Models\\User', 5, 'token', 'd1428e402a59f2aad11ae07815e5c068359e30bb758ef8c00ed9c133003eb418', '[\"*\"]', '2023-11-15 23:31:07', NULL, '2023-11-15 23:31:05', '2023-11-15 23:31:07'),
(24, 'App\\Models\\User', 5, 'token', 'e745bade753da3f55f647b068006c122badbac1d6d5d6e3f18a055ea9a5e3775', '[\"*\"]', NULL, NULL, '2023-11-15 23:34:44', '2023-11-15 23:34:44'),
(25, 'App\\Models\\User', 5, 'token', 'f4a760e05c9140ddbf393acfd970a9b9d3f0240fd8f6fb8e4e7fb6ce0797ab2a', '[\"*\"]', NULL, NULL, '2023-11-15 23:34:46', '2023-11-15 23:34:46'),
(26, 'App\\Models\\User', 5, 'token', '35fc24d31297ce3f793b09d8be56ebbcd6624e62bafd5db891e732a5d6d0cd51', '[\"*\"]', '2023-11-15 23:34:58', NULL, '2023-11-15 23:34:47', '2023-11-15 23:34:58'),
(27, 'App\\Models\\User', 5, 'token', '940863ad278e544df496031dd1b16ba3f811bf4bfcde08b83f91196c03954d72', '[\"*\"]', NULL, NULL, '2023-11-15 23:51:06', '2023-11-15 23:51:06'),
(28, 'App\\Models\\User', 5, 'token', '78c2cb59287e455c942de13b4c9ddcf858eb97bf1c643036067748761f579c80', '[\"*\"]', '2023-11-15 23:59:08', NULL, '2023-11-15 23:51:07', '2023-11-15 23:59:08'),
(29, 'App\\Models\\User', 5, 'token', '8d8c05bf0890da397b33d1b52daac6fa19eab41946850ccb4fc600e8a96a1e35', '[\"*\"]', NULL, NULL, '2023-11-15 23:59:19', '2023-11-15 23:59:19'),
(30, 'App\\Models\\User', 5, 'token', '117ab44cdb87cedbd049181e8846e05ac3733d8016ef7b3af0d73ffdd9a95055', '[\"*\"]', NULL, NULL, '2023-11-15 23:59:20', '2023-11-15 23:59:20'),
(31, 'App\\Models\\User', 5, 'token', '426274d02fdb101d6d15d042dd6e1bb455bf7a5bb65ce5d5b477493399cc4d50', '[\"*\"]', NULL, NULL, '2023-11-15 23:59:21', '2023-11-15 23:59:21'),
(32, 'App\\Models\\User', 5, 'token', '5e0e84c2b57e451f75f0eb9af837705f482362d2c71690ef90dc056201c604b0', '[\"*\"]', NULL, NULL, '2023-11-15 23:59:21', '2023-11-15 23:59:21'),
(33, 'App\\Models\\User', 5, 'token', 'a36dd95271fd02cda2006ffbca3fded607aae487564aaf5f5f8e5199dcd909c0', '[\"*\"]', NULL, NULL, '2023-11-15 23:59:22', '2023-11-15 23:59:22'),
(34, 'App\\Models\\User', 5, 'token', '1a0820bcf01e46f79bcde4923f5060e894b0386237e3e2b055bcec22e2146e47', '[\"*\"]', '2023-11-16 00:00:27', NULL, '2023-11-15 23:59:22', '2023-11-16 00:00:27'),
(35, 'App\\Models\\User', 5, 'token', '1bca51b39c27fe4c746b319bcd9d8b9ddce42a437713c849b9121a73ee038f5b', '[\"*\"]', NULL, NULL, '2023-11-16 00:00:55', '2023-11-16 00:00:55'),
(36, 'App\\Models\\User', 5, 'token', '176f42be6daec5c344ef22d888ab1717d6d4e7bdeb792620216072047444b9d6', '[\"*\"]', '2023-11-16 00:04:13', NULL, '2023-11-16 00:02:24', '2023-11-16 00:04:13'),
(37, 'App\\Models\\User', 5, 'token', 'b0040433db1b25a205fb4c361bc30031c0fb4cae5abba706e33ec8bdcdec338c', '[\"*\"]', '2023-11-16 00:05:30', NULL, '2023-11-16 00:04:18', '2023-11-16 00:05:30'),
(38, 'App\\Models\\User', 5, 'token', '98f9d5f886abc72a90fbaa16c1a6393ddc22339965c29167a9bfa94c5e3d9d1a', '[\"*\"]', '2023-11-16 00:12:14', NULL, '2023-11-16 00:05:31', '2023-11-16 00:12:14'),
(39, 'App\\Models\\User', 5, 'token', 'b90340c3dcf30acdd717f0f13c9517476a54ffc7448ba98b1bc2800e1feef5df', '[\"*\"]', '2023-11-16 00:16:27', NULL, '2023-11-16 00:12:21', '2023-11-16 00:16:27'),
(40, 'App\\Models\\User', 5, 'token', '7e67f769314d2b477524a2caf33bb5e80819c0ceebfe8059e8e1fdf7b59f4707', '[\"*\"]', '2023-11-16 00:27:15', NULL, '2023-11-16 00:16:33', '2023-11-16 00:27:15'),
(41, 'App\\Models\\User', 5, 'token', '137833e78ee0414959ae9bd8ffbb536fb731e7e7a7ee64e0eefec64936e31176', '[\"*\"]', '2023-11-16 00:27:19', NULL, '2023-11-16 00:27:17', '2023-11-16 00:27:19'),
(42, 'App\\Models\\User', 5, 'token', 'f1a27a721f5be57edb0c7667cc528feda9bf827d296287d77a4bd7e6fdf45ed8', '[\"*\"]', '2023-11-16 00:27:40', NULL, '2023-11-16 00:27:18', '2023-11-16 00:27:40'),
(43, 'App\\Models\\User', 5, 'token', 'fdebffedf37eccf78f040ee706287b84930bb48d59ed52da969b7c49f87c69e1', '[\"*\"]', '2023-11-16 00:27:57', NULL, '2023-11-16 00:27:57', '2023-11-16 00:27:57'),
(44, 'App\\Models\\User', 5, 'token', '4da1157a53aebc43dd615e51897cc3a96038e0320cb18ff370dffb41d893810b', '[\"*\"]', NULL, NULL, '2023-11-16 00:44:01', '2023-11-16 00:44:01'),
(45, 'App\\Models\\User', 5, 'token', '5d57f17d6a4bdc46419808aaa60f9e3d242ccf5cfb10ca638b05c4a61ee4f9a5', '[\"*\"]', '2023-11-16 00:44:09', NULL, '2023-11-16 00:44:07', '2023-11-16 00:44:09'),
(46, 'App\\Models\\User', 5, 'token', 'ebff798bf7d77fb5176ad82d74db0c6c69ccfb38b493ed6eb490d22bda9c8ad8', '[\"*\"]', '2023-11-16 01:03:59', NULL, '2023-11-16 00:48:20', '2023-11-16 01:03:59'),
(47, 'App\\Models\\User', 5, 'token', 'fc70fac1b88c5533e8d98e46e0fa5acecc99c45eb5d89ffa7eff0bd2f62116e7', '[\"*\"]', '2023-11-16 01:15:48', NULL, '2023-11-16 01:04:16', '2023-11-16 01:15:48'),
(48, 'App\\Models\\User', 5, 'token', 'f597045e649a7c6e678cae3f48daf751aa0efb33f728ec2491ddec815ee5867a', '[\"*\"]', '2023-11-16 01:20:39', NULL, '2023-11-16 01:20:37', '2023-11-16 01:20:39'),
(49, 'App\\Models\\User', 5, 'token', '7ebb870b3e066d4d21ab73ce444bcbf8ea66418ac89e4d4c712ea05869322afb', '[\"*\"]', '2023-11-16 01:31:43', NULL, '2023-11-16 01:20:38', '2023-11-16 01:31:43'),
(50, 'App\\Models\\User', 5, 'token', '7b9759b44868340bc4f21ea0ef1f530121865450a87fe4294da616d6662195e9', '[\"*\"]', '2023-11-16 01:44:38', NULL, '2023-11-16 01:32:12', '2023-11-16 01:44:38'),
(51, 'App\\Models\\User', 5, 'token', '7a827b7081767c075557678d9179a396d19dc921abb2bf0685525f7360c12ee2', '[\"*\"]', '2023-11-16 01:59:06', NULL, '2023-11-16 01:45:04', '2023-11-16 01:59:06'),
(52, 'App\\Models\\User', 5, 'token', '9bd18793b528602a2d6b16db17546c9f3f9045ee868c96ab34520f569a001abe', '[\"*\"]', '2023-11-16 02:16:56', NULL, '2023-11-16 02:08:33', '2023-11-16 02:16:56'),
(53, 'App\\Models\\User', 5, 'token', 'e78ff037a2bcbeb46fdc4479b523a31568d4d23ea5e41e9b43de4822b94d69e5', '[\"*\"]', '2023-11-16 02:17:08', NULL, '2023-11-16 02:17:07', '2023-11-16 02:17:08'),
(54, 'App\\Models\\User', 7, 'token', '863518b2bc276a655bc73fcf7b1f46937a6157eb90c9bb41b75ec4d7d0a03182', '[\"*\"]', '2023-11-17 01:04:40', NULL, '2023-11-17 00:56:28', '2023-11-17 01:04:40'),
(55, 'App\\Models\\User', 7, 'token', '2a11a368bae751c0a563c36b81fac33e11777f743b66939700567081bda86df8', '[\"*\"]', '2023-11-17 01:12:25', NULL, '2023-11-17 01:12:23', '2023-11-17 01:12:25'),
(56, 'App\\Models\\User', 7, 'token', 'a49afb2c143fdd1de3dec85a8b890af6ae2c267e39e6b5d601dcffebe4649497', '[\"*\"]', '2023-11-17 15:31:32', NULL, '2023-11-17 15:30:51', '2023-11-17 15:31:32'),
(57, 'App\\Models\\User', 7, 'token', 'a012631eb0862ec23746c1edc48038fb309dd3ac6fa969d08e6130d5c63382b5', '[\"*\"]', '2023-11-17 16:22:23', NULL, '2023-11-17 16:10:16', '2023-11-17 16:22:23'),
(58, 'App\\Models\\User', 5, 'token', 'e8fb1878b0e9f7d0c960d0517d1daba83c1378a499bca50b449004a30fbe0a3e', '[\"*\"]', '2023-11-17 16:22:52', NULL, '2023-11-17 16:22:44', '2023-11-17 16:22:52'),
(59, 'App\\Models\\User', 7, 'token', 'fdc674becd4ce5748715581f19f984872f47ecd62b79ba27f9deb4f5c1a64671', '[\"*\"]', '2023-11-17 16:27:59', NULL, '2023-11-17 16:23:26', '2023-11-17 16:27:59'),
(60, 'App\\Models\\User', 7, 'token', '981e010c965e2a4b28d72ed7d01cec5b73f50f4e0e2a5ce917cb03c62e1a5bef', '[\"*\"]', '2023-11-17 23:17:39', NULL, '2023-11-17 23:12:44', '2023-11-17 23:17:39'),
(61, 'App\\Models\\User', 8, 'token', 'db2482d37bd213c829606290f3c28f4190ad999d1e702c10562bb6e8699e90ec', '[\"*\"]', '2023-11-17 23:23:22', NULL, '2023-11-17 23:18:41', '2023-11-17 23:23:22'),
(62, 'App\\Models\\User', 7, 'token', '62a4881c11adb92b4afc8a849a1156ae42f452948edeb39017310f3b8714471a', '[\"*\"]', '2023-11-17 23:33:13', NULL, '2023-11-17 23:33:04', '2023-11-17 23:33:13'),
(63, 'App\\Models\\User', 7, 'token', 'f7de4c9e56bbe8c8a7d945db6b2f68c13a2b5612ce640c6b271931b4e4f103cb', '[\"*\"]', '2023-11-18 00:29:44', NULL, '2023-11-17 23:33:20', '2023-11-18 00:29:44'),
(64, 'App\\Models\\User', 7, 'token', '181af69bd369974c9281231d992238e87705286e003fc3932d342865b6ce21a9', '[\"*\"]', '2023-11-18 00:47:03', NULL, '2023-11-18 00:46:44', '2023-11-18 00:47:03'),
(65, 'App\\Models\\User', 9, 'token', 'd2ca65ac3cc9f54076a8fa4899fb9196b6d25d18bc57fe5881dc824f205ac963', '[\"*\"]', '2023-11-18 01:53:43', NULL, '2023-11-18 01:53:10', '2023-11-18 01:53:43'),
(66, 'App\\Models\\User', 7, 'token', 'dfe03d263409b5ac2b3421080785d3eeaf01624305ea244cf35304b80a2568a2', '[\"*\"]', '2023-11-18 01:57:36', NULL, '2023-11-18 01:54:08', '2023-11-18 01:57:36'),
(67, 'App\\Models\\User', 7, 'token', 'a160fee155692c51afe5161bfd518175487f81cf92f89576e093721f33f9acee', '[\"*\"]', '2023-11-18 11:51:12', NULL, '2023-11-18 11:50:41', '2023-11-18 11:51:12'),
(68, 'App\\Models\\User', 7, 'token', 'c6e5cc6c89d8968992e43dd61c340973c0c9de067b7d96fb44877679ae0a13fb', '[\"*\"]', '2023-11-19 12:58:05', NULL, '2023-11-19 12:57:59', '2023-11-19 12:58:05'),
(69, 'App\\Models\\User', 7, 'token', 'eaac9bd9f7f9029881026d5f45d1658b2ab8f75f0eb7daa593d41db79bc9ba74', '[\"*\"]', '2023-11-21 13:18:48', NULL, '2023-11-21 13:18:45', '2023-11-21 13:18:48');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `travel_package_id` bigint(20) UNSIGNED NOT NULL,
  `ratings` bigint(20) UNSIGNED NOT NULL,
  `comments` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `travel__packages`
--

CREATE TABLE `travel__packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `airline_id` bigint(20) UNSIGNED NOT NULL,
  `destination_id` bigint(20) UNSIGNED NOT NULL,
  `custom_status` tinyint(1) NOT NULL DEFAULT 0,
  `departure_flight_id` bigint(20) UNSIGNED NOT NULL,
  `return_flight_id` bigint(20) UNSIGNED NOT NULL,
  `amount` bigint(20) NOT NULL DEFAULT 70,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `travel__packages`
--

INSERT INTO `travel__packages` (`id`, `name`, `description`, `price`, `user_id`, `airline_id`, `destination_id`, `custom_status`, `departure_flight_id`, `return_flight_id`, `amount`, `created_at`, `updated_at`) VALUES
(5702, 'Dhaka - Munich, Germany Package', 'Something', 2000.00, NULL, 114, 131, 0, 6, 2, 70, '2023-11-22 03:49:44', '2023-11-22 03:49:44'),
(5703, 'Dhaka - Dortmund, Germany Package', 'Something', 2000.00, NULL, 114, 130, 0, 5, 2, 70, '2023-11-22 03:50:03', '2023-11-22 03:50:03'),
(5704, 'Dhaka - Beijing, China Package', 'Something', 2000.00, NULL, 114, 130, 0, 4, 2, 70, '2023-11-22 03:50:25', '2023-11-22 03:50:25'),
(5705, 'Dhaka - Kolkata, India Package', 'Something', 2000.00, NULL, 114, 134, 0, 7, 2, 70, '2023-11-22 03:50:48', '2023-11-22 03:50:48'),
(5706, 'Dhaka - Venice, Italy Package', 'Something', 2000.00, NULL, 114, 133, 0, 8, 2, 70, '2023-11-22 03:51:18', '2023-11-22 03:51:18'),
(5707, 'Dhaka - Rio De Janeiro, Brazil Package', 'Something', 2000.00, NULL, 114, 127, 0, 3, 2, 70, '2023-11-22 03:51:44', '2023-11-22 03:51:44'),
(5708, 'Italy-Germany, Dortmund Package', 'Something', 2000.00, NULL, 114, 130, 0, 5, 8, 70, '2023-11-22 05:49:24', '2023-11-22 05:49:24');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `admin_access` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `admin_access`, `created_at`, `updated_at`) VALUES
(1, 'proma', 'proma@gmail.com', '$2y$10$xX4IgiwD.6a8LeFdLt3q0.5sPbYQDoP5m.YAaGM6XDB2FcUYUCnnW', NULL, 1, '2023-10-26 15:48:43', '2023-10-26 15:48:43'),
(2, 'proma', 'lalala@lala', '$2y$10$NcNGn70a1xnU2S0QZbzCeu1o7lq213a6zgiDTY1B4ZTgSXoSjlKW2', NULL, 0, '2023-10-28 03:16:10', '2023-10-28 03:16:10'),
(4, 'pikachu', 'pika@chu', '$2y$10$PHuycjSCQtzHHB5/DvlSkOiD7G/FNaUm9VGK2a0k9TjpwQD39w/XO', NULL, 0, '2023-10-28 14:54:36', '2023-10-28 14:54:36'),
(5, 'dianbo', 'dianbo@cat', '$2y$10$lFVhNzPo1.aTvxTGC7Bk2em8sGGQK2fulCIEfBimrMInDWKxk3dDS', NULL, 0, '2023-11-15 22:40:45', '2023-11-15 22:40:45'),
(7, 'Tazrian', 'taz@rian', '$2y$10$2l1kKslto/vMAYw3R0nEHe33pNFqeOXFoUbG8AJfg2p/D4ADJTjCS', NULL, 1, '2023-11-17 00:56:19', '2023-11-17 00:56:19'),
(8, 'Rahim', 'ra@him', '$2y$10$zI0P1ag/GtXz4EltfrwEounDVdxtZdVrImSz.vwQyV6hcb3tpD3Kq', NULL, 0, '2023-11-17 23:18:31', '2023-11-17 23:18:31'),
(9, 'Rahim', 'rahim@gmail', '$2y$10$QZaUlGmNGcl36Uotu80I..vnNWECSxCG0splbK86go9B5nNx.zOnW', NULL, 0, '2023-11-18 01:50:49', '2023-11-18 01:50:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activities_destination_id_foreign` (`destination_id`);

--
-- Indexes for table `airlines`
--
ALTER TABLE `airlines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attractions`
--
ALTER TABLE `attractions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attractions_destination_id_foreign` (`destination_id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookings_user_id_foreign` (`user_id`),
  ADD KEY `bookings_travel_package_id_foreign` (`travel_package_id`);

--
-- Indexes for table `destinations`
--
ALTER TABLE `destinations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `country` (`country`,`city`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `flights`
--
ALTER TABLE `flights`
  ADD PRIMARY KEY (`id`),
  ADD KEY `flights_airlines_id_foreign` (`airlines_id`),
  ADD KEY `flights_destination_id_foreign` (`destination_id`);

--
-- Indexes for table `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hotels_destination_id_foreign` (`destination_id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_travel_package_id_foreign` (`travel_package_id`),
  ADD KEY `images_destination_id_foreign` (`destination_id`),
  ADD KEY `images_attraction_id_foreign` (`attraction_id`),
  ADD KEY `images_activity_id_foreign` (`activity_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_user_id_foreign` (`user_id`),
  ADD KEY `reviews_travel_package_id_foreign` (`travel_package_id`);

--
-- Indexes for table `travel__packages`
--
ALTER TABLE `travel__packages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `travel__packages_airline_id_foreign` (`airline_id`),
  ADD KEY `travel__packages_destination_id_foreign` (`destination_id`),
  ADD KEY `travel__packages_departure_flight_id_foreign` (`departure_flight_id`),
  ADD KEY `travel__packages_return_flight_id_foreign` (`return_flight_id`);

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
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `airlines`
--
ALTER TABLE `airlines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `attractions`
--
ALTER TABLE `attractions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `destinations`
--
ALTER TABLE `destinations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flights`
--
ALTER TABLE `flights`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=245;

--
-- AUTO_INCREMENT for table `hotels`
--
ALTER TABLE `hotels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `travel__packages`
--
ALTER TABLE `travel__packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5709;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activities`
--
ALTER TABLE `activities`
  ADD CONSTRAINT `activities_destination_id_foreign` FOREIGN KEY (`destination_id`) REFERENCES `destinations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `attractions`
--
ALTER TABLE `attractions`
  ADD CONSTRAINT `attractions_destination_id_foreign` FOREIGN KEY (`destination_id`) REFERENCES `destinations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_travel_package_id_foreign` FOREIGN KEY (`travel_package_id`) REFERENCES `travel__packages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bookings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `flights`
--
ALTER TABLE `flights`
  ADD CONSTRAINT `flights_airlines_id_foreign` FOREIGN KEY (`airlines_id`) REFERENCES `airlines` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `flights_destination_id_foreign` FOREIGN KEY (`destination_id`) REFERENCES `destinations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hotels`
--
ALTER TABLE `hotels`
  ADD CONSTRAINT `hotels_destination_id_foreign` FOREIGN KEY (`destination_id`) REFERENCES `destinations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_activity_id_foreign` FOREIGN KEY (`activity_id`) REFERENCES `activities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `images_attraction_id_foreign` FOREIGN KEY (`attraction_id`) REFERENCES `attractions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `images_destination_id_foreign` FOREIGN KEY (`destination_id`) REFERENCES `destinations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `images_travel_package_id_foreign` FOREIGN KEY (`travel_package_id`) REFERENCES `travel__packages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_travel_package_id_foreign` FOREIGN KEY (`travel_package_id`) REFERENCES `travel__packages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `travel__packages`
--
ALTER TABLE `travel__packages`
  ADD CONSTRAINT `travel__packages_airline_id_foreign` FOREIGN KEY (`airline_id`) REFERENCES `airlines` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `travel__packages_departure_flight_id_foreign` FOREIGN KEY (`departure_flight_id`) REFERENCES `flights` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `travel__packages_destination_id_foreign` FOREIGN KEY (`destination_id`) REFERENCES `destinations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `travel__packages_return_flight_id_foreign` FOREIGN KEY (`return_flight_id`) REFERENCES `flights` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
