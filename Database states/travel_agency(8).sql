-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2023 at 05:32 AM
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
(121, 'Biman', 'Biman@Airline.com.bd', '2023-11-21 05:43:48', '2023-11-21 05:43:48'),
(122, 'Etihad Airways', 'Etihad@Airways.org', '2023-11-21 05:56:33', '2023-11-21 05:56:33'),
(123, 'Singapore Airlines', 'Singapore@Airline', '2023-11-21 10:49:51', '2023-11-21 10:49:51'),
(124, 'United Airlines', 'United@airlines', '2023-11-24 21:15:40', '2023-11-24 21:15:40');

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

--
-- Dumping data for table `attractions`
--

INSERT INTO `attractions` (`id`, `attraction`, `details`, `destination_id`, `cost`, `created_at`, `updated_at`) VALUES
(1, 'Christ the Redeemer', 'Jesus', 127, 60.00, '2023-11-23 09:30:14', '2023-11-23 09:30:14'),
(2, 'Escadaria Selarón', 'Stairs', 127, 50.00, '2023-11-23 09:32:02', '2023-11-23 09:32:02'),
(3, 'Maraqana', 'Stadium', 127, 500.00, '2023-11-23 10:20:32', '2023-11-23 10:20:32'),
(4, 'Museu do Amanhã', 'Somthing', 127, 40.00, '2023-11-23 10:21:09', '2023-11-23 10:21:09'),
(5, 'Parque Lage', 'Something', 127, 40.00, '2023-11-23 10:21:52', '2023-11-23 10:21:52'),
(6, 'Copacabana Fort', 'Fort', 127, 50.00, '2023-11-23 10:34:03', '2023-11-23 10:34:03'),
(7, 'AquaRio', 'Aquarium', 127, 50.00, '2023-11-23 10:34:54', '2023-11-23 10:34:54'),
(9, 'Catedral Metropolitana', 'Cathedral', 127, 50.00, '2023-11-23 10:37:10', '2023-11-23 10:37:10'),
(10, 'Tijuca National Park', 'Park', 127, 50.00, '2023-11-23 10:43:56', '2023-11-23 10:43:56'),
(12, 'Something in Madrid', 'Something in Madrid', 136, 50.00, '2023-11-25 01:32:55', '2023-11-25 01:32:55');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `travel_package_id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `payment info` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `user_id`, `travel_package_id`, `status`, `date`, `payment info`, `created_at`, `updated_at`) VALUES
(17, 8, 5713, 1, '2023-12-06 12:42:33', '2600', '2023-12-06 06:42:33', '2023-12-06 06:42:33'),
(18, 8, 5715, 1, '2023-12-06 12:42:37', '2400', '2023-12-06 06:42:37', '2023-12-06 06:42:37'),
(19, 8, 5714, 1, '2023-12-06 15:03:22', '2600', '2023-12-06 09:03:22', '2023-12-06 09:03:22'),
(20, 8, 5716, 1, '2023-12-06 15:03:26', '2400', '2023-12-06 09:03:26', '2023-12-06 09:03:26'),
(21, 8, 5717, 1, '2023-12-06 15:03:27', '1800', '2023-12-06 09:03:27', '2023-12-06 09:03:27'),
(22, 13, 5713, 1, '2023-12-08 10:59:54', '2400', '2023-12-08 04:59:54', '2023-12-08 04:59:54'),
(23, 13, 5717, 1, '2023-12-08 10:59:59', '1200', '2023-12-08 04:59:59', '2023-12-08 04:59:59'),
(24, 13, 5716, 1, '2023-12-08 11:01:41', '2800', '2023-12-08 05:01:41', '2023-12-08 05:01:41');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `travel_package_id` bigint(20) UNSIGNED NOT NULL,
  `amount` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `created_at`, `updated_at`, `user_id`, `travel_package_id`, `amount`) VALUES
(1, '2023-11-30 12:29:02', '2023-11-30 12:29:02', 7, 5713, 3),
(24, '2023-12-06 09:32:17', '2023-12-06 09:32:17', 5, 5713, 2);

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
(134, 'India', 'Kolkata', 'Immerse yourself in the cultural kaleidoscope of Kolkata, where tradition and modernity coexist harmoniously. Our travel agency invites you to explore the colonial architecture of the British era, savor street food delights, and witness the artistic fervor that defines the City of Joy.', '2023-11-22 03:33:10', '2023-11-22 03:33:10'),
(136, 'Spain', 'Madrid', 'Spain Capital', '2023-11-25 01:27:24', '2023-11-25 01:27:24');

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
  `prices` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flights`
--

INSERT INTO `flights` (`id`, `airlines_id`, `destination_id`, `departure`, `prices`, `created_at`, `updated_at`) VALUES
(1, 114, 129, '2024-03-30 09:36:14', 400.00, '2023-11-22 09:36:58', '2023-11-22 09:36:58'),
(2, 114, 128, '2024-03-30 09:36:14', 400.00, '2023-11-22 09:37:51', '2023-11-22 09:37:51'),
(3, 114, 127, '2024-02-22 09:36:14', 600.00, '2023-11-22 09:38:13', '2023-11-22 09:38:13'),
(4, 114, 132, '2024-02-22 09:36:14', 600.00, '2023-11-22 09:38:39', '2023-11-22 09:38:39'),
(5, 114, 130, '2024-02-22 09:36:14', 600.00, '2023-11-22 09:39:25', '2023-11-22 09:39:25'),
(6, 114, 131, '2024-02-22 09:36:14', 600.00, '2023-11-22 09:39:43', '2023-11-22 09:39:43'),
(7, 114, 134, '2023-11-22 09:40:36', 600.00, '2023-11-22 09:40:00', '2023-11-22 09:40:00'),
(8, 114, 133, '2024-02-22 09:36:14', 600.00, '2023-11-22 09:41:47', '2023-11-22 09:41:47'),
(9, 119, 129, '2024-04-18 03:52:05', 500.00, '2023-12-09 03:52:05', '2023-12-09 03:52:05'),
(10, 119, 130, '2024-04-17 03:52:45', 500.00, '2023-12-09 03:52:45', '2023-12-09 03:52:45'),
(11, 119, 132, '2024-04-17 03:53:15', 749.00, '2023-12-09 03:53:15', '2023-12-09 03:53:15'),
(50, 114, 136, '2024-01-14 07:31:01', 580.00, '2023-11-25 07:31:21', '2023-11-25 07:31:21'),
(99, 113, 127, '2024-04-27 10:45:01', 699.00, '2023-12-08 10:45:01', '2023-12-08 10:45:01');

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

CREATE TABLE `hotels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `classic_prices` decimal(10,2) NOT NULL,
  `deluxe_prices` decimal(10,2) DEFAULT NULL,
  `presidential_prices` decimal(10,2) DEFAULT NULL,
  `phone_no` varchar(255) NOT NULL,
  `destination_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`id`, `name`, `email`, `classic_prices`, `deluxe_prices`, `presidential_prices`, `phone_no`, `destination_id`, `created_at`, `updated_at`) VALUES
(10, 'Alibaba', 'alibaba@hotel.com', 500.00, NULL, NULL, '321654987', 128, '2023-11-24 13:52:59', '2023-11-24 13:52:59'),
(11, 'Dummy', 'hotel@hotel', 966.00, 666.00, 667.00, '328321654', 127, '2023-11-24 15:42:19', '2023-11-24 15:42:19'),
(12, 'Hilton Barra Rio de Janeiro', 'hilton@brazil', 5000.00, 788.00, 2457.00, '321654987', 127, '2023-11-24 21:52:02', '2023-11-24 21:52:02'),
(13, 'Hotel in Madrid', 'madrid@Hotel', 600.00, NULL, NULL, '4123456789453', 136, '2023-11-25 01:34:14', '2023-11-25 01:34:14'),
(14, 'MEININGER Hotel München Olympiapark', 'MEININGER@hotel.com', 500.00, NULL, NULL, '65874258996', 131, '2023-11-30 10:30:41', '2023-11-30 10:30:41'),
(15, 'Dorint', 'Dorint@hotel.com', 500.00, NULL, NULL, '65874258989', 130, '2023-11-30 10:34:16', '2023-11-30 10:34:16'),
(16, 'Hotel Kempton', 'Kempton@hotel.com', 2.00, NULL, NULL, '328581841', 134, '2023-11-30 10:39:32', '2023-11-30 10:39:32');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `travel__package_id` bigint(20) UNSIGNED DEFAULT NULL,
  `destination_id` bigint(20) UNSIGNED DEFAULT NULL,
  `attraction_id` bigint(20) UNSIGNED DEFAULT NULL,
  `activity_id` bigint(20) UNSIGNED DEFAULT NULL,
  `hotels_id` bigint(20) UNSIGNED DEFAULT NULL,
  `path` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `travel__package_id`, `destination_id`, `attraction_id`, `activity_id`, `hotels_id`, `path`, `created_at`, `updated_at`) VALUES
(20, NULL, 127, NULL, NULL, NULL, 'http://localhost:8000/images/1700644754-Brazil.webp', '2023-11-22 03:19:14', '2023-11-22 03:19:14'),
(21, NULL, 128, NULL, NULL, NULL, 'http://localhost:8000/images/1700645051-Bangladesh.webp', '2023-11-22 03:24:11', '2023-11-22 03:24:11'),
(22, NULL, 129, NULL, NULL, NULL, 'http://localhost:8000/images/1700645121-Bangladesh.jpg', '2023-11-22 03:25:21', '2023-11-22 03:25:21'),
(23, NULL, 130, NULL, NULL, NULL, 'http://localhost:8000/images/1700645160-Germany.webp', '2023-11-22 03:26:00', '2023-11-22 03:26:00'),
(24, NULL, 131, NULL, NULL, NULL, 'http://localhost:8000/images/1700645181-Germany.webp', '2023-11-22 03:26:21', '2023-11-22 03:26:21'),
(25, NULL, 132, NULL, NULL, NULL, 'http://localhost:8000/images/1700645487-China.jpg', '2023-11-22 03:31:27', '2023-11-22 03:31:27'),
(26, NULL, 133, NULL, NULL, NULL, 'http://localhost:8000/images/1700645565-Italy.jpg', '2023-11-22 03:32:45', '2023-11-22 03:32:45'),
(27, NULL, 134, NULL, NULL, NULL, 'http://localhost:8000/images/1700645590-India.jpg', '2023-11-22 03:33:10', '2023-11-22 03:33:10'),
(40, NULL, NULL, 1, NULL, NULL, 'http://localhost:8000/images/1700753414-Christ the Redeemer.webp', '2023-11-23 09:30:14', '2023-11-23 09:30:14'),
(41, NULL, NULL, 2, NULL, NULL, 'http://localhost:8000/images/1700753522-Escadaria Selarón.jpg', '2023-11-23 09:32:02', '2023-11-23 09:32:02'),
(42, NULL, NULL, 3, NULL, NULL, 'http://localhost:8000/images/1700756432-Maraqana.webp', '2023-11-23 10:20:32', '2023-11-23 10:20:32'),
(43, NULL, NULL, 4, NULL, NULL, 'http://localhost:8000/images/1700756469-Museu do Amanhã.jpg', '2023-11-23 10:21:09', '2023-11-23 10:21:09'),
(44, NULL, NULL, 5, NULL, NULL, 'http://localhost:8000/images/1700756512-Parque Lage.jpg', '2023-11-23 10:21:52', '2023-11-23 10:21:52'),
(45, NULL, NULL, 6, NULL, NULL, 'http://localhost:8000/images/1700757243-Copacabana Fort.jpg', '2023-11-23 10:34:03', '2023-11-23 10:34:03'),
(46, NULL, NULL, 7, NULL, NULL, 'http://localhost:8000/images/1700757294-AquaRio.jpg', '2023-11-23 10:34:54', '2023-11-23 10:34:54'),
(48, NULL, NULL, 9, NULL, NULL, 'http://localhost:8000/images/1700757430-Catedral Metropolitana.jpg', '2023-11-23 10:37:10', '2023-11-23 10:37:10'),
(49, NULL, NULL, 10, NULL, NULL, 'http://localhost:8000/images/1700757836-Tijuca National Park.jpg', '2023-11-23 10:43:56', '2023-11-23 10:43:56'),
(53, NULL, NULL, NULL, NULL, 10, 'http://localhost:8000/images/1700855579-Alibaba.jpg', '2023-11-24 13:52:59', '2023-11-24 13:52:59'),
(55, NULL, NULL, NULL, NULL, 11, 'http://localhost:8000/images/1700862139-Dummy.jpg', '2023-11-24 15:42:19', '2023-11-24 15:42:19'),
(59, NULL, NULL, NULL, NULL, 12, 'http://localhost:8000/images/1700884322-Hilton Barra Rio de Janeiro.jpg', '2023-11-24 21:52:02', '2023-11-24 21:52:02'),
(60, NULL, 136, NULL, NULL, NULL, 'http://localhost:8000/images/1700897244-Spain.jpg', '2023-11-25 01:27:24', '2023-11-25 01:27:24'),
(62, NULL, NULL, 12, NULL, NULL, 'http://localhost:8000/images/1700897575-Something in Madrid.jpg', '2023-11-25 01:32:55', '2023-11-25 01:32:55'),
(63, NULL, NULL, NULL, NULL, 13, 'http://localhost:8000/images/1700897654-Hotel in Madrid.jpg', '2023-11-25 01:34:14', '2023-11-25 01:34:14'),
(65, 5713, NULL, NULL, NULL, NULL, 'http://localhost:8000/images/1701361654-Rio De Janeiro Tour.webp', '2023-11-30 10:27:34', '2023-11-30 10:27:34'),
(66, NULL, NULL, NULL, NULL, 14, 'http://localhost:8000/images/1701361841-MEININGER Hotel München Olympiapark.jpg', '2023-11-30 10:30:41', '2023-11-30 10:30:41'),
(67, 5714, NULL, NULL, NULL, NULL, 'http://localhost:8000/images/1701361922-Munich Tour.webp', '2023-11-30 10:32:02', '2023-11-30 10:32:02'),
(68, NULL, NULL, NULL, NULL, 15, 'http://localhost:8000/images/1701362056-Dorint.jpg', '2023-11-30 10:34:16', '2023-11-30 10:34:16'),
(69, 5715, NULL, NULL, NULL, NULL, 'http://localhost:8000/images/1701362170-Munich Tour.jpg', '2023-11-30 10:36:10', '2023-11-30 10:36:10'),
(70, 5716, NULL, NULL, NULL, NULL, 'http://localhost:8000/images/1701362282-Madrid Tour.jpg', '2023-11-30 10:38:02', '2023-11-30 10:38:02'),
(71, NULL, NULL, NULL, NULL, 16, 'http://localhost:8000/images/1701362372-Hotel Kempton.jpg', '2023-11-30 10:39:32', '2023-11-30 10:39:32'),
(72, 5717, NULL, NULL, NULL, NULL, 'http://localhost:8000/images/1701362405-Kolkata Tour.jpg', '2023-11-30 10:40:05', '2023-11-30 10:40:05');

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
(16, '2023_11_20_134346_create_images_table', 2),
(17, '2023_11_30_065857_create_carts_table', 3);

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
(69, 'App\\Models\\User', 7, 'token', 'eaac9bd9f7f9029881026d5f45d1658b2ab8f75f0eb7daa593d41db79bc9ba74', '[\"*\"]', '2023-11-21 13:18:48', NULL, '2023-11-21 13:18:45', '2023-11-21 13:18:48'),
(70, 'App\\Models\\User', 10, 'token', 'd51c508a69ac7c9296f4f4082a350b6b65f05af88ebd1494c7753683b4348726', '[\"*\"]', '2023-11-24 23:17:41', NULL, '2023-11-24 21:10:33', '2023-11-24 23:17:41'),
(71, 'App\\Models\\User', 10, 'token', '65d223883a92bc207129b88963a2521ce88e9029f101d4118b2c951626dd8b49', '[\"*\"]', '2023-11-25 01:40:58', NULL, '2023-11-24 23:18:49', '2023-11-25 01:40:58'),
(72, 'App\\Models\\User', 7, 'token', 'fb0bd892423972b7f901c45f9b6b02e6e08a9f2dfe99b8a72c5523153219de81', '[\"*\"]', '2023-11-30 10:52:41', NULL, '2023-11-30 08:17:25', '2023-11-30 10:52:41'),
(73, 'App\\Models\\User', 7, 'token', 'b8f79c1c61a868eddc2a3a94a1408567fb69fc917ede1720f940f9f2fd9312a7', '[\"*\"]', '2023-11-30 10:53:36', NULL, '2023-11-30 10:52:50', '2023-11-30 10:53:36'),
(74, 'App\\Models\\User', 7, 'token', 'fe2cd36a94a304db23734223e9d14fc7104b4e49ddc8950825d80e9270f83268', '[\"*\"]', '2023-11-30 12:56:03', NULL, '2023-11-30 10:53:58', '2023-11-30 12:56:03'),
(75, 'App\\Models\\User', 8, 'token', '906250884185619f30abbced8afe3d25aeb265c30c26744efbfa197edf22c96e', '[\"*\"]', '2023-11-30 23:29:44', NULL, '2023-11-30 12:56:27', '2023-11-30 23:29:44'),
(76, 'App\\Models\\User', 8, 'token', 'da19ec7706c79a88f7ba9795db295f74c7533d6d8abd58cda8e23a5c375ec270', '[\"*\"]', '2023-12-01 00:55:51', NULL, '2023-11-30 23:30:18', '2023-12-01 00:55:51'),
(77, 'App\\Models\\User', 8, 'token', 'dfbc8e3b9e6da80f7c683d3bc7539bf7729305f08c94c00ec472097f435e368a', '[\"*\"]', '2023-12-01 23:37:54', NULL, '2023-12-01 01:02:57', '2023-12-01 23:37:54'),
(78, 'App\\Models\\User', 8, 'token', '7f940b256e7e4e5b092f03e2cb67f37a6bf5ae24592b61ee6770e655fcc7dfe6', '[\"*\"]', '2023-12-01 23:38:34', NULL, '2023-12-01 23:38:32', '2023-12-01 23:38:34'),
(79, 'App\\Models\\User', 8, 'token', '281b34711b2ee986e0a66e72092a9f68f970928bd893bd459d33b775680000e3', '[\"*\"]', '2023-12-01 23:39:42', NULL, '2023-12-01 23:38:40', '2023-12-01 23:39:42'),
(80, 'App\\Models\\User', 7, 'token', '56009ca26ca10a1ed5fc9c45a905e7a2c41b9201f7757b4fc98db21e1d0f3b09', '[\"*\"]', '2023-12-01 23:53:03', NULL, '2023-12-01 23:39:52', '2023-12-01 23:53:03'),
(81, 'App\\Models\\User', 8, 'token', 'cf875cb04cefe21d06bc8966a3d800e43597031b922d289d0fc749e34f062b9e', '[\"*\"]', '2023-12-01 23:53:34', NULL, '2023-12-01 23:53:29', '2023-12-01 23:53:34'),
(82, 'App\\Models\\User', 7, 'token', 'bd0017cf73eb78cb4965aa7a1683633f3558c94dbbacbbb83dcd5f4fa52ef46d', '[\"*\"]', '2023-12-02 00:00:26', NULL, '2023-12-02 00:00:08', '2023-12-02 00:00:26'),
(83, 'App\\Models\\User', 8, 'token', 'bbad83f4b8ef767184b08574e6e88f4aa88617b961dbce2c46baea002f064784', '[\"*\"]', '2023-12-02 00:21:43', NULL, '2023-12-02 00:21:03', '2023-12-02 00:21:43'),
(84, 'App\\Models\\User', 7, 'token', '751be2638c0aca9285676c20022b3431f5c636e263895ec0083c11e83b3119e9', '[\"*\"]', '2023-12-02 00:22:18', NULL, '2023-12-02 00:21:51', '2023-12-02 00:22:18'),
(85, 'App\\Models\\User', 8, 'token', '57c20cb0f6666479d41e159dd8242c0dd240dce559aed04b9c7102f151536fb3', '[\"*\"]', '2023-12-02 00:26:42', NULL, '2023-12-02 00:22:28', '2023-12-02 00:26:42'),
(86, 'App\\Models\\User', 8, 'token', '0c2f1cc7053517f54691d2d2e9f7e3c8432629615f4bddee7faf3daa2872b24f', '[\"*\"]', '2023-12-05 09:45:36', NULL, '2023-12-05 05:16:25', '2023-12-05 09:45:36'),
(87, 'App\\Models\\User', 8, 'token', '903e89311dad3b5bed5b7e41f215913b029d46b13c5ae0a935997c53ab107447', '[\"*\"]', '2023-12-05 10:00:14', NULL, '2023-12-05 09:58:43', '2023-12-05 10:00:14'),
(88, 'App\\Models\\User', 8, 'token', 'ea175eb9c8f8acef268e38a5b0835710c6414e540cf5e36058f77a16bd4cfad2', '[\"*\"]', NULL, NULL, '2023-12-06 05:23:04', '2023-12-06 05:23:04'),
(89, 'App\\Models\\User', 8, 'token', 'f9c2820b7a7baf24790d558c7544a0af89a145bfab0c1c74ac260e2013dc65eb', '[\"*\"]', NULL, NULL, '2023-12-06 05:23:22', '2023-12-06 05:23:22'),
(90, 'App\\Models\\User', 8, 'token', 'a09ba781d6fcc8a21ab6240e4aad059b62c28d5f9589690014620a65437e8796', '[\"*\"]', NULL, NULL, '2023-12-06 05:24:37', '2023-12-06 05:24:37'),
(91, 'App\\Models\\User', 7, 'token', 'b426ca74c8e49044b53d2a3273ff7eb72211ece744d5a0f1dbc6291528678585', '[\"*\"]', NULL, NULL, '2023-12-06 05:25:50', '2023-12-06 05:25:50'),
(92, 'App\\Models\\User', 7, 'token', '4ddaec1c03786b7b75567837a1d241db8ba9b2075d0e9ea1a214b93775022453', '[\"*\"]', NULL, NULL, '2023-12-06 05:26:22', '2023-12-06 05:26:22'),
(93, 'App\\Models\\User', 7, 'token', 'fcd0c01b68dbdc32c832ba9001872c1126711ba4f33111c69a0947f9dda77feb', '[\"*\"]', '2023-12-06 05:28:16', NULL, '2023-12-06 05:26:52', '2023-12-06 05:28:16'),
(94, 'App\\Models\\User', 8, 'token', '6de0aa7dda73690becb55888b41d095bdea93ff7351df9b7cc1d631257052f22', '[\"*\"]', '2023-12-06 05:50:31', NULL, '2023-12-06 05:41:54', '2023-12-06 05:50:31'),
(95, 'App\\Models\\User', 8, 'token', '5f044b67fc5b04328f08fc762bb3ca53a17e38c08936c8581174343733210858', '[\"*\"]', '2023-12-06 06:09:35', NULL, '2023-12-06 05:50:52', '2023-12-06 06:09:35'),
(96, 'App\\Models\\User', 8, 'token', '3b5c58075412637f703fd0cf5a0cfc919e76a87ef5c9587314098db7faadf27d', '[\"*\"]', '2023-12-06 06:19:19', NULL, '2023-12-06 06:09:45', '2023-12-06 06:19:19'),
(97, 'App\\Models\\User', 8, 'token', '40050fffc75d5a58f53893d98705a3d24cb1bf942d93a399e190c6b165826f14', '[\"*\"]', '2023-12-06 07:45:35', NULL, '2023-12-06 06:21:50', '2023-12-06 07:45:35'),
(98, 'App\\Models\\User', 8, 'token', '1147844dfbab306bf4dbbf7ca0093a36b777ea887abf0bd4fdc284adce94dbb9', '[\"*\"]', '2023-12-06 07:47:47', NULL, '2023-12-06 07:47:44', '2023-12-06 07:47:47'),
(99, 'App\\Models\\User', 7, 'token', '5fcdbab7fcc9088661c7ee83bd925ff9c9df7153c0eb2e3cfb3fe3156f922075', '[\"*\"]', '2023-12-06 07:58:43', NULL, '2023-12-06 07:47:57', '2023-12-06 07:58:43'),
(100, 'App\\Models\\User', 8, 'token', '774d4c367d3fa0070cd3ce2d74c3f35fc2e748621c4b94bf67e2bb30b9935ae9', '[\"*\"]', '2023-12-06 08:34:27', NULL, '2023-12-06 07:59:01', '2023-12-06 08:34:27'),
(101, 'App\\Models\\User', 8, 'token', 'c019fdd09130ef9c08f284854817b3b8b0bbd10e02461d36a1f11ed477e2446e', '[\"*\"]', '2023-12-06 09:10:29', NULL, '2023-12-06 08:34:52', '2023-12-06 09:10:29'),
(102, 'App\\Models\\User', 7, 'token', 'b429722374f0a7f7fe83370e8b99826ea0bf6a4a6cfb13a6001699bbf754b79e', '[\"*\"]', '2023-12-06 09:15:18', NULL, '2023-12-06 09:10:36', '2023-12-06 09:15:18'),
(103, 'App\\Models\\User', 8, 'token', '5c38d7ff6d2dc043ee57050a830f2520077bb30e858e42dee5326be2adf64ecc', '[\"*\"]', '2023-12-06 09:23:32', NULL, '2023-12-06 09:15:24', '2023-12-06 09:23:32'),
(104, 'App\\Models\\User', 5, 'token', '616cbff516990e4d88e412eae84fde66322435537aad0a3d83b5ce725c43910a', '[\"*\"]', '2023-12-06 09:32:27', NULL, '2023-12-06 09:30:47', '2023-12-06 09:32:27'),
(105, 'App\\Models\\User', 8, 'token', '2c6d1291391ad0265c611a1f4342cc78b598d6add0b11e71e35c50877497805b', '[\"*\"]', '2023-12-06 10:02:55', NULL, '2023-12-06 09:33:16', '2023-12-06 10:02:55'),
(106, 'App\\Models\\User', 12, 'token', 'cdd080a6333047605a9caa137437d892adf5ff69e7c2c1ecd13afa7f9f953602', '[\"*\"]', '2023-12-06 10:04:49', NULL, '2023-12-06 10:04:31', '2023-12-06 10:04:49'),
(107, 'App\\Models\\User', 12, 'token', 'd2446e56c027c992b28701e706b733867d484ea50416818e7e79e396b94910b9', '[\"*\"]', '2023-12-06 10:08:55', NULL, '2023-12-06 10:05:20', '2023-12-06 10:08:55'),
(108, 'App\\Models\\User', 8, 'token', 'b62653f5e1a07aab51d589fdd8e79a31e3905ac57aa1d1aee424c598f891b88a', '[\"*\"]', '2023-12-08 04:05:19', NULL, '2023-12-07 11:33:57', '2023-12-08 04:05:19'),
(109, 'App\\Models\\User', 12, 'token', '546d69fb0b8ae6360f2081adf4c3b6e474cb3282075d8cd3fe644c855dcae51a', '[\"*\"]', '2023-12-08 04:10:30', NULL, '2023-12-08 04:05:29', '2023-12-08 04:10:30'),
(110, 'App\\Models\\User', 5, 'token', '18149f5dc2816fe31d08aa59eddcdf99d6f479e20354d9323a7dd7ba4a828b6d', '[\"*\"]', '2023-12-08 04:10:56', NULL, '2023-12-08 04:10:38', '2023-12-08 04:10:56'),
(111, 'App\\Models\\User', 12, 'token', '5ba05bccb1c217f0c057dbaa17e820e12a73993c5e2c33837c3f5645538f6531', '[\"*\"]', '2023-12-08 04:23:35', NULL, '2023-12-08 04:11:04', '2023-12-08 04:23:35'),
(112, 'App\\Models\\User', 5, 'token', '71cf7033c435178b4c60e5b04e66e13c155fbb8cba47e018965de9f2d5f204aa', '[\"*\"]', '2023-12-08 04:25:38', NULL, '2023-12-08 04:23:44', '2023-12-08 04:25:38'),
(113, 'App\\Models\\User', 12, 'token', 'f35ec108bd03d21e4ea287e0d59c49b1af2311e4bb8f30468a22e56603786ebb', '[\"*\"]', '2023-12-08 04:25:45', NULL, '2023-12-08 04:25:45', '2023-12-08 04:25:45'),
(114, 'App\\Models\\User', 7, 'token', '762e93c259dc5724c7485dac4fcaeb46810d4a2d5062e48afd563e1b4c5bc18f', '[\"*\"]', '2023-12-08 04:44:31', NULL, '2023-12-08 04:33:08', '2023-12-08 04:44:31'),
(115, 'App\\Models\\User', 13, 'token', 'b5473fab0a03babd9ba1433392529b78fe70defb68e2ec3346f1e5fe50446a60', '[\"*\"]', '2023-12-08 04:54:30', NULL, '2023-12-08 04:54:23', '2023-12-08 04:54:30'),
(116, 'App\\Models\\User', 8, 'token', 'fce7888e53ddabaae44f96a5b26eabbac82c429cbf7797dd27e807518c27c4ce', '[\"*\"]', '2023-12-08 04:54:39', NULL, '2023-12-08 04:54:34', '2023-12-08 04:54:39'),
(117, 'App\\Models\\User', 13, 'token', 'f07ee1f24c704fd72e98f1954774c69c9a3639a8d992292a14a5b5a6c6e21d43', '[\"*\"]', '2023-12-08 05:02:31', NULL, '2023-12-08 04:54:48', '2023-12-08 05:02:31'),
(118, 'App\\Models\\User', 7, 'token', 'c3ada2e65c25f5c8a581284bd7560d9de4c3560ee529f2d3eff637e4d5036803', '[\"*\"]', '2023-12-08 05:40:51', NULL, '2023-12-08 05:02:40', '2023-12-08 05:40:51'),
(119, 'App\\Models\\User', 8, 'token', '89826836b61a357bb8790f70bcba870b9e0b7741e462982b8c87673a3cd98dfe', '[\"*\"]', '2023-12-08 05:41:25', NULL, '2023-12-08 05:40:56', '2023-12-08 05:41:25'),
(120, 'App\\Models\\User', 7, 'token', '36bcf37515ca1d905aed49164c63084d25152a7dae9b49782a61b8752c711ed8', '[\"*\"]', '2023-12-08 05:51:13', NULL, '2023-12-08 05:41:35', '2023-12-08 05:51:13'),
(121, 'App\\Models\\User', 8, 'token', 'a4a03a724107a00546840dbf64b0acb4158bdc142d8498a71e1c5cc4bf698ba3', '[\"*\"]', '2023-12-08 05:51:35', NULL, '2023-12-08 05:51:18', '2023-12-08 05:51:35'),
(122, 'App\\Models\\User', 7, 'token', 'dbe972f0c7cfc9191cd1b5d2c182f95ca412c006d9d0d2542e88b84cde6a4261', '[\"*\"]', '2023-12-08 21:54:55', NULL, '2023-12-08 05:51:47', '2023-12-08 21:54:55');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `travel_package_id` bigint(20) UNSIGNED NOT NULL,
  `ratings` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `travel_package_id`, `ratings`, `created_at`, `updated_at`) VALUES
(588, 10, 5713, 5, '2023-11-30 16:59:01', '2023-11-30 16:59:01'),
(589, 9, 5713, 4, '2023-11-30 17:00:31', '2023-11-30 17:00:31'),
(590, 8, 5715, 3, '2023-12-07 12:32:31', '2023-12-07 12:32:31'),
(600, 13, 5713, 1, '2023-12-08 04:55:58', '2023-12-08 04:55:58'),
(602, 8, 5717, 1, '2023-12-08 05:41:05', '2023-12-08 05:41:05');

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
  `hotel_id` bigint(20) UNSIGNED NOT NULL,
  `departure_flight_id` bigint(20) UNSIGNED NOT NULL,
  `return_flight_id` bigint(20) UNSIGNED NOT NULL,
  `amount` bigint(20) NOT NULL DEFAULT 70,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `travel__packages`
--

INSERT INTO `travel__packages` (`id`, `name`, `description`, `price`, `user_id`, `airline_id`, `destination_id`, `custom_status`, `hotel_id`, `departure_flight_id`, `return_flight_id`, `amount`, `created_at`, `updated_at`) VALUES
(5713, 'Rio De Janeiro Tour', 'Experience the vibrant energy and breathtaking beauty of Rio de Janeiro with our all-inclusive travel package! Immerse yourself in the rhythm of this iconic Brazilian city known for its sizzling beaches, lively samba music, and stunning landscapes. Your package includes accommodations at top-rated hotels, guided tours to iconic landmarks such as Christ the Redeemer and Sugarloaf Mountain, and exclusive access to the world-famous Copacabana and Ipanema beaches. Indulge in delectable Brazilian cuisine with included meals at renowned local restaurants, and dance the night away at exciting samba clubs. Our Rio de Janeiro travel package ensures an unforgettable adventure, blending cultural richness with the enchanting spirit of this South American gem. Let the festivities, natural wonders, and warm hospitality of Rio de Janeiro create memories that last a lifetime.', 2000.00, NULL, 114, 127, 0, 12, 3, 2, 65, '2023-11-30 10:27:34', '2023-12-08 04:59:59'),
(5714, 'Munich Tour', 'Embark on a captivating journey to Munich with our meticulously curated travel package! Immerse yourself in the rich cultural tapestry of this Bavarian gem, renowned for its historic charm, beer gardens, and picturesque landscapes. Your all-inclusive package features accommodations at well-appointed hotels, guided tours to iconic landmarks like Nymphenburg Palace and the Marienplatz, and VIP access to the world-famous Oktoberfest if you time your visit right. Savor the flavors of traditional Bavarian cuisine with included meals at authentic beer gardens and local eateries. Explore Munich\'s cultural scene with visits to renowned museums and art galleries. Whether you\'re captivated by history, architecture, or the lively atmosphere of beer halls, our Munich travel package promises an immersive experience that captures the heart of this enchanting city. Join us in celebrating the unique blend of tradition and modernity that makes Munich a must-visit destination.', 2000.00, NULL, 114, 131, 0, 14, 6, 2, 67, '2023-11-30 10:32:02', '2023-12-06 09:03:26'),
(5715, 'Dortmund Tour', 'Immerse yourself in the dynamic spirit of Dortmund with our comprehensive travel package! Discover the perfect blend of modernity and history as you explore iconic landmarks like the Signal Iduna Park stadium, the Dortmund U-Tower, and the vibrant Old Town. Your package includes comfortable accommodations, guided tours to key attractions, and an opportunity to experience the lively atmosphere of local beer gardens. Dive into the cultural scene, sample delectable regional cuisine, and embrace the energy of this German city with our Dortmund travel package.', 2000.00, NULL, 114, 130, 0, 15, 5, 2, 68, '2023-11-30 10:36:10', '2023-12-06 06:42:38'),
(5716, 'Madrid Tour', 'Embark on a journey to the heart of Spain with our vibrant Madrid travel package! Discover the cultural treasures of this lively capital, from the iconic Prado Museum to the bustling Puerta del Sol. Enjoy comfortable stays in centrally located hotels, guided tours to landmarks like the Royal Palace, and the opportunity to savor authentic Spanish cuisine with included meals. Dive into the energetic atmosphere of local tapas bars, explore the historic neighborhoods, and experience the passion of flamenco dancing. Madrid, with its blend of history, art, and modern flair, awaits your exploration with our thoughtfully curated travel package.', 2000.00, NULL, 114, 136, 0, 13, 50, 2, 64, '2023-11-30 10:38:01', '2023-12-08 05:01:45'),
(5717, 'Kolkata Tour', 'Experience the cultural richness of Kolkata with our immersive travel package! Dive into the history of the city with visits to Victoria Memorial and Howrah Bridge, and explore the vibrant markets and colonial architecture of this Indian metropolis. Your package includes comfortable accommodations, guided tours to iconic sites, and a taste of the diverse culinary offerings of Kolkata. Immerse yourself in the arts and literature scene, witness the Durga Puja festivities, and discover the warmth and hospitality of the City of Joy. Join us in exploring the unique blend of tradition and modernity that defines Kolkata.', 1000.00, NULL, 114, 134, 0, 16, 7, 2, 60, '2023-11-30 10:40:05', '2023-12-08 05:00:00');

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
(9, 'Rahim', 'rahim@gmail', '$2y$10$QZaUlGmNGcl36Uotu80I..vnNWECSxCG0splbK86go9B5nNx.zOnW', NULL, 0, '2023-11-18 01:50:49', '2023-11-18 01:50:49'),
(10, 'Sakib', 'Sakib@gmail.com', '$2y$10$q6n4bCsvoHL1CPYU9ediyeghll0w0WKwDsCXdDMjDzsl77wA3G.eG', NULL, 1, '2023-11-24 21:10:05', '2023-11-24 21:10:05'),
(12, 'promu', 'pro@ma', '$2y$10$QtsjotnPsOigtZuQs5FV.eiLd6uBO5ovds/rv2srTq2st6zr917pK', NULL, 1, '2023-12-06 10:04:15', '2023-12-06 10:04:15'),
(13, 'Purple', 'purple@cat', '$2y$10$tiqOBsagmJRxxWT37piaOuMT4KmVoWNDtTs2oDMloj.LdK1IiSc8i', NULL, 0, '2023-12-08 04:54:11', '2023-12-08 04:54:11');

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
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_user_id_foreign` (`user_id`),
  ADD KEY `carts_travel_package_id_foreign` (`travel_package_id`);

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
  ADD KEY `images_travel_package_id_foreign` (`travel__package_id`),
  ADD KEY `images_destination_id_foreign` (`destination_id`),
  ADD KEY `images_attraction_id_foreign` (`attraction_id`),
  ADD KEY `images_activity_id_foreign` (`activity_id`),
  ADD KEY `images_hotel_id_foreign` (`hotels_id`);

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
  ADD KEY `travel__packages_return_flight_id_foreign` (`return_flight_id`),
  ADD KEY `hotel_id` (`hotel_id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `attractions`
--
ALTER TABLE `attractions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `destinations`
--
ALTER TABLE `destinations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=603;

--
-- AUTO_INCREMENT for table `travel__packages`
--
ALTER TABLE `travel__packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5721;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

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
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_travel_package_id_foreign` FOREIGN KEY (`travel_package_id`) REFERENCES `travel__packages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
  ADD CONSTRAINT `images_hotel_id_foreign` FOREIGN KEY (`hotels_id`) REFERENCES `hotels` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `images_travel_package_id_foreign` FOREIGN KEY (`travel__package_id`) REFERENCES `travel__packages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
  ADD CONSTRAINT `travel__packages_hotel_id_foreign` FOREIGN KEY (`hotel_id`) REFERENCES `hotels` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `travel__packages_return_flight_id_foreign` FOREIGN KEY (`return_flight_id`) REFERENCES `flights` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
