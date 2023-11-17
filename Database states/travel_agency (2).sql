-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2023 at 08:12 PM
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
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
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
(113, 'Luci Air', 'luci@gmail.com', NULL, NULL);

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
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `destinations`
--

INSERT INTO `destinations` (`id`, `country`, `city`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Hell', 'Dimension of Edom', 'You\'ll see Lilith', NULL, NULL),
(2, 'Earth', 'Depression Land', 'Why are you here?', NULL, NULL);

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
(113, 113, 2, '2023-11-16 15:44:05', 200000.00, NULL, NULL),
(244, 112, 1, '2023-11-16 15:39:56', 2000.00, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

CREATE TABLE `hotels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `prices` decimal(10,2) NOT NULL,
  `destination_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(14, '2023_10_22_161148_create_bookings_table', 1);

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
(53, 'App\\Models\\User', 5, 'token', 'e78ff037a2bcbeb46fdc4479b523a31568d4d23ea5e41e9b43de4822b94d69e5', '[\"*\"]', '2023-11-16 02:17:08', NULL, '2023-11-16 02:17:07', '2023-11-16 02:17:08');

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
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `airline_id` bigint(20) UNSIGNED NOT NULL,
  `destination_id` bigint(20) UNSIGNED NOT NULL,
  `departure_flight_id` bigint(20) UNSIGNED NOT NULL,
  `return_flight_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `travel__packages`
--

INSERT INTO `travel__packages` (`id`, `name`, `description`, `price`, `user_id`, `airline_id`, `destination_id`, `departure_flight_id`, `return_flight_id`, `created_at`, `updated_at`) VALUES
(1234, 'Package 1', 'Welcome to hell yall!', 60000000.00, 5, 112, 1, 244, 113, NULL, NULL),
(5678, 'Package 2', 'Why on Earth?', 70000000.00, 5, 113, 2, 113, 244, NULL, NULL);

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'proma', 'proma@gmail.com', '$2y$10$xX4IgiwD.6a8LeFdLt3q0.5sPbYQDoP5m.YAaGM6XDB2FcUYUCnnW', NULL, '2023-10-26 15:48:43', '2023-10-26 15:48:43'),
(2, 'proma', 'lalala@lala', '$2y$10$NcNGn70a1xnU2S0QZbzCeu1o7lq213a6zgiDTY1B4ZTgSXoSjlKW2', NULL, '2023-10-28 03:16:10', '2023-10-28 03:16:10'),
(4, 'pikachu', 'pika@chu', '$2y$10$PHuycjSCQtzHHB5/DvlSkOiD7G/FNaUm9VGK2a0k9TjpwQD39w/XO', NULL, '2023-10-28 14:54:36', '2023-10-28 14:54:36'),
(5, 'dianbo', 'dianbo@cat', '$2y$10$lFVhNzPo1.aTvxTGC7Bk2em8sGGQK2fulCIEfBimrMInDWKxk3dDS', NULL, '2023-11-15 22:40:45', '2023-11-15 22:40:45');

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
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

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
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `airlines`
--
ALTER TABLE `airlines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `travel__packages`
--
ALTER TABLE `travel__packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5679;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
