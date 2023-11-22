-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2023 at 06:19 PM
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
(1, 'Hell', 'Dimension of Edom', 'You\'ll see Lilith', NULL, NULL),
(2, 'Earth', 'Depression Land', 'Why are you here?', NULL, NULL),
(114, 'Germany', 'Munich', 'Munich, the cultural capital of Bavaria, welcomes you to a city where tradition and innovation harmoniously coexist, creating a vibrant tapestry of experiences. As your travel agency, we invite you to explore Munich\'s unique blend of rich history, cultural treasures, and modern dynamism.\n\n**Historical Marvels:**\nCommence your journey in Marienplatz, Munich\'s central square, surrounded by architectural wonders such as the neo-Gothic town hall and the iconic Glockenspiel. Immerse yourself in history at the Nymphenburg Palace, a Baroque masterpiece set amidst picturesque gardens, and the Residenz, the former royal palace boasting opulent rooms and art collections.\n\n**Art and Museums:**\nMunich\'s museums are a treasure trove of artistic endeavors. The Alte Pinakothek houses a remarkable collection of European paintings, while the Pinakothek der Moderne showcases contemporary art and design. Explore the Deutsches Museum, where science and technology come to life in the world\'s largest museum of its kind.\n\n**Beer Gardens and Culinary Delights:**\nEmbrace Munich\'s legendary beer culture in the English Garden, where traditional brews and Bavarian delicacies abound. Indulge in the hearty flavors of local cuisine, from pretzels and sausages to classic schnitzels, in one of the city\'s charming beer halls.\n\n**Festivals and Traditions:**\nIf your visit aligns with the fall season, don\'t miss the world-famous Oktoberfest, a lively celebration of Bavarian culture complete with music, dance, and of course, an abundance of beer. Throughout the year, Munich hosts various festivals and events, providing a glimpse into the city\'s rich cultural traditions.\n\n**Modern Munich:**\nWitness Munich\'s modern face in districts like Gulshan and Banani, where skyscrapers and bustling commercial areas reflect the city\'s progress. The vibrant nightlife, eclectic shopping destinations, and thriving arts scene add a contemporary flair to Munich\'s charm.\n\nAs your travel partner, we invite you to immerse yourself in the spirit of Munich, where the past is cherished, and the present is embraced with open arms. Munich awaits, promising a journey filled with cultural richness, warm hospitality, and the genuine Bavarian spirit.', '2023-11-18 01:55:46', '2023-11-18 01:55:46'),
(115, 'Italy', 'Venice', 'Venice, a city like no other, beckons you to experience its timeless beauty, intricate waterways, and rich cultural heritage. As your travel agency, we invite you to embark on a journey through the enchanting canals and historic streets of Venice, where each corner tells a story of romance, art, and unparalleled charm.\n\nBegin your exploration in the heart of the city at the iconic Piazza San Marco, surrounded by architectural wonders like St. Mark\'s Basilica and the Campanile. Marvel at the intricate mosaics and opulent interiors, a testament to Venice\'s historical grandeur. Take a leisurely stroll through the charming streets of San Marco, discovering hidden gems and cozy cafes.\n\nThe Grand Canal, Venice\'s aquatic thoroughfare, is a spectacle in itself. Embark on a serene gondola ride or opt for a vaporetto to witness the elegant palaces lining the water. Explore the Rialto Bridge, a symbol of the city, and wander through the lively Rialto Market, where local vendors showcase the region\'s culinary treasures.\n\nVenice is a haven for art enthusiasts. Visit the Peggy Guggenheim Collection, housed in an 18th-century palace along the Grand Canal, and the Accademia Galleries, showcasing masterpieces by Venetian artists. The Biennale, a prestigious art exhibition, adds a contemporary touch to the city\'s artistic legacy.\n\nIndulge in Venetian cuisine at charming osterias and trattorias. Savor fresh seafood dishes, risottos, and cicchetti (small tapas-like bites) while overlooking the picturesque canals. Don\'t forget to pair your meal with a glass of local prosecco or wine.\n\nVenice\'s islands offer unique experiences. Explore the historic charm of Murano, renowned for its glassmaking traditions, and Burano, known for its vibrant, colorful houses and delicate lace craftsmanship. Escape to the peaceful island of Torcello, home to ancient churches and tranquil landscapes.\n\nAs the sun sets, witness the magical transformation of Venice. Enjoy a romantic evening at the Riva degli Schiavoni, where the city\'s lights reflect on the shimmering waters. Attend a classical music performance or a traditional masked ball for an authentic Venetian experience.\n\nVenice, a living masterpiece, invites you to lose yourself in its labyrinth of canals, bridges, and timeless beauty. As your travel partner, we invite you to immerse yourself in the unparalleled allure of Venice, where every moment is a work of art, and the city\'s magic lingers in the air. Venice awaits, promising an enchanting journey filled with romance, culture, and the unique charm of the Floating City.', '2023-11-20 02:17:22', '2023-11-20 02:17:22'),
(116, 'India', 'Kolkata', 'Kolkata, the cultural capital of India, is a city that breathes history, art, and a vibrant tapestry of traditions. As your travel agency, we invite you to explore the enchanting facets of Kolkata, where colonial charm and modern dynamism converge to create an unforgettable journey.\n\nBegin your exploration in the heart of the city at the iconic Howrah Bridge, a symbol of Kolkata\'s resilience and a gateway to its bustling energy. Wander through the narrow lanes of North Kolkata, where colonial-era architecture, such as the Marble Palace and Sovabazar Rajbari, offers a glimpse into the city\'s colonial past.\n\nImmerse yourself in the cultural heartbeat of Kolkata at the Victoria Memorial, an architectural masterpiece that houses a fascinating collection of art and artifacts from the British Raj era. Stroll through the lush landscapes of the Maidan, a vast urban park, and visit the Indian Museum, one of the oldest and largest museums in Asia.\n\nKolkata\'s soul lies in its street markets and local bazaars. Lose yourself in the chaotic beauty of New Market, where vibrant stalls offer everything from traditional handicrafts to modern fashion. Explore College Street, the city\'s intellectual hub, known for its bookstores and lively atmosphere.\n\nFor a spiritual experience, visit the Dakshineswar Kali Temple and the Kalighat Kali Temple, both sacred sites that reflect Kolkata\'s deep-rooted religious traditions. Explore the serene tranquility of the Belur Math, a symbol of unity between different religions.\n\nKolkata is synonymous with literary and artistic pursuits. Pay homage to the city\'s literary heritage at the College Street Coffee House, a historic meeting place for intellectuals and poets. Attend a performance at the Rabindra Sadan, celebrating the works of Nobel laureate Rabindranath Tagore.\n\nIndulge your taste buds in the flavors of Bengali cuisine at local eateries and street food stalls. From mouth-watering sweets like rasgulla and sandesh to savory delights like kathi rolls and puchka (pani puri), Kolkata\'s culinary scene is a delightful journey for your senses.\n\nAs the sun sets, experience the vibrant nightlife along Park Street, with its eclectic mix of bars, restaurants, and live music venues. Join the festivities during Durga Puja, Kolkata\'s grand celebration, where the city comes alive with art installations, cultural performances, and a joyous spirit.\n\nIn Kolkata, every corner is a canvas painted with the colors of tradition, intellect, and warmth. As your travel partner, we invite you to embrace the spirit of Kolkata, where history meets modernity, and the city\'s soul resonates with every step you take. Kolkata awaits, promising a cultural odyssey filled with rich experiences, genuine hospitality, and the unique charm of the City of Joy.', '2023-11-20 02:51:30', '2023-11-20 02:51:30'),
(118, 'Germany', 'Dortmund', 'Dortmund, a dynamic city in the heart of North Rhine-Westphalia, Germany, beckons travelers with its unique blend of industrial heritage, vibrant culture, and modern energy. As your travel agency, we invite you to uncover the diverse facets of this fascinating city, where tradition and innovation coexist harmoniously.\n\nBegin your exploration in the city center, where the emblematic Reinoldikirche and the historic market square set the stage for Dortmund\'s rich history. Marvel at the iconic Florianturm, offering panoramic views of the city, and delve into the past at the Dortmund U, a cultural center housed in a former brewery, seamlessly blending the old with the new.\n\nDortmund is a city that wears its industrial legacy with pride. The Westfalenpark, once the site of the Bundesgartenschau (German Federal Garden Exhibition), now stands as a green oasis amid the urban landscape. The Hohensyburg Castle, overlooking the Ruhr Valley, provides a picturesque glimpse into the region\'s medieval history.\n\nFor football enthusiasts, a visit to the Signal Iduna Park, home of Borussia Dortmund, is a must. Feel the energy of the \"Yellow Wall,\" one of the most famous football stands globally, and immerse yourself in the passion that defines the city\'s football culture.\n\nDortmund\'s culinary scene is a delightful fusion of local and international flavors. Explore the bustling food markets like the Wochenmarkt, where you can savor regional specialties, and experience the warmth of traditional pubs serving hearty Westphalian dishes.\n\nDortmund\'s commitment to the arts is evident in its cultural venues such as the Dortmunder U and the Theater Dortmund, offering a diverse range of performances and exhibitions. The city\'s innovative spirit is reflected in its modern architecture, with structures like the Dortmunder U and the Phoenix-See showcasing contemporary design.\n\nAs the sun sets, Dortmund comes alive with its vibrant nightlife. From trendy bars in the Kreuzviertel district to live music venues and clubs, the city offers a dynamic and eclectic array of entertainment options.\n\nIn Dortmund, every corner tells a story of transformation, resilience, and the city\'s unwavering spirit. As your travel partner, we invite you to immerse yourself in the unique charm of Dortmund, where industrial heritage meets contemporary vibrancy. Dortmund awaits, promising an enriching journey filled with cultural discoveries, warm hospitality, and the energy of a city in constant evolution.', '2023-11-20 04:48:06', '2023-11-20 04:48:06'),
(119, 'Bangladesh', 'Dhaka', 'Dhaka, the vibrant capital of Bangladesh, is a dynamic and bustling metropolis that serves as the heart of the country. Nestled along the banks of the Buriganga River, Dhaka is a city of contrasts, seamlessly blending the old with the new. As a travel agency, we invite you to explore the rich tapestry of experiences that Dhaka has to offer.\n\nDiscover the city\'s historical treasures in the Old Dhaka district, where centuries-old structures like Lalbagh Fort and Ahsan Manzil stand as testaments to its rich past. Immerse yourself in the vibrant chaos of the local markets, such as Shankhari Bazar and Sadarghat, where the energy is palpable and the colors are vivid.\n\nDhaka is a melting pot of cultures and traditions, reflected in its diverse culinary scene. Indulge your taste buds in the aromatic delights of Bengali cuisine, from mouth-watering biryanis to delectable sweets like roshogolla and mishti doi.\n\nFor those seeking a spiritual experience, the city boasts a multitude of mosques and temples, including the renowned Baitul Mukarram National Mosque and Dhakeshwari Temple, each telling a unique story of faith and devotion.\n\nModern Dhaka offers a glimpse into the country\'s progress, with skyscrapers and bustling commercial districts like Gulshan and Banani. The city\'s vibrant nightlife, eclectic shopping destinations, and thriving arts scene add an exciting dimension to your visit.\n\nAs your travel partner, we invite you to embrace the spirit of Dhaka, where history, culture, and modernity converge to create a captivating and unforgettable experience. Dhaka awaits, promising a journey filled with warmth, diversity, and the genuine hospitality of the Bangladeshi people.', '2023-11-20 10:32:51', '2023-11-20 10:32:51'),
(120, 'Bangladesh', 'Chittagong', 'Chittagong, the bustling maritime gateway of Bangladesh, invites you to explore a city where history, commerce, and natural beauty converge. As your travel agency, we extend a warm welcome to uncover the diverse experiences that Chittagong has to offer.\n\n**Historical Gems:**\nCommence your journey at the heart of Chittagong in the vibrant Agrabad area, where modern commerce meets historical resonance. Visit the 17th-century Anderkilla Mosque, a testament to the city\'s rich architectural heritage, and explore the picturesque Fairy Hill Park for panoramic views of the city and the Bay of Bengal.\n\n**Maritime Marvels:**\nDiscover Chittagong\'s maritime legacy at the historic shipbreaking yards in Sitakunda, where retired ships find a new purpose. The Patenga Sea Beach offers a relaxing escape, where you can witness colorful sunsets over the Bay of Bengal and experience the lively atmosphere of the beachfront.\n\n**Cultural Diversity:**\nChittagong is a melting pot of cultures and traditions. Stroll through the bustling streets of Chawk Bazar, known for its vibrant markets and local handicrafts. Immerse yourself in the multicultural atmosphere of the city\'s diverse communities, each contributing to the tapestry of Chittagong\'s cultural identity.\n\n**Hill Tracts Adventure:**\nEmbark on a scenic journey to the nearby Hill Tracts, where the lush landscapes of Bandarban and Rangamati beckon. Explore the serene beauty of the Kaptai Lake and discover indigenous communities, each with its own unique traditions and crafts.\n\n**Culinary Delights:**\nIndulge your taste buds in the flavors of Chittagong\'s seafood, renowned for its freshness and variety. Explore local markets like Reazuddin Bazar for an authentic culinary experience, savoring dishes like shutki (dried fish), chingri (prawns), and the flavorful Chittagong biryani.\n\n**Adventure and Nature:**\nFor nature enthusiasts, the Chandranath Hill offers a rewarding trek with breathtaking views of the surrounding landscape. Explore the Himchari National Park, home to diverse flora and fauna, and relax on the pristine beaches of Cox\'s Bazar, the longest natural sea beach in the world.\n\nAs your travel partner, we invite you to embrace the spirit of Chittagong, where the past meets the present, and the city\'s vibrant energy captivates every visitor. Chittagong awaits, promising a journey filled with cultural richness, natural wonders, and the warm hospitality of the Bangladeshi people.', '2023-11-20 10:57:21', '2023-11-20 10:57:21'),
(121, 'China', 'Beijing', 'Chingchong', '2023-11-20 14:04:19', '2023-11-20 14:04:19'),
(122, 'France', 'Paris', 'Croissant (pronounced Quos-so)', '2023-11-21 08:52:32', '2023-11-21 08:52:32');

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
(2, 113, 116, '2024-08-01 10:08:51', 18.00, '2023-11-20 10:08:51', '2023-11-20 10:08:51'),
(3, 113, 115, '2024-10-15 14:51:19', 600.00, '2023-11-20 14:51:19', '2023-11-20 14:51:19'),
(4, 114, 121, '2023-11-20 20:05:09', 1000.00, '2023-11-20 20:05:09', '2023-11-20 20:05:09'),
(5, 120, 120, '2023-11-21 12:19:05', 600.00, '2023-11-21 12:19:05', '2023-11-21 12:19:05'),
(6, 120, 119, '2023-11-21 12:19:24', 500.00, '2023-11-21 12:19:24', '2023-11-21 12:19:24'),
(7, 120, 115, '2023-11-21 12:19:50', 400.00, '2023-11-21 12:19:50', '2023-11-21 12:19:50'),
(10, 120, 118, '2023-11-21 12:22:49', 550.00, '2023-11-21 12:22:49', '2023-11-21 12:22:49'),
(11, 120, 116, '2023-11-21 12:23:06', 750.00, '2023-11-21 12:23:06', '2023-11-21 12:23:06'),
(12, 120, 115, '2023-11-21 12:23:25', 600.00, '2023-11-21 12:23:25', '2023-11-21 12:23:25'),
(13, 120, 122, '2023-11-21 14:53:19', 684.00, '2023-11-21 14:53:19', '2023-11-21 14:53:19'),
(15, 120, 118, '2023-11-21 12:31:45', 500.00, '2023-11-21 12:31:45', '2023-11-21 12:31:45'),
(16, 120, 114, '2023-11-21 12:32:22', 500.00, '2023-11-21 12:32:22', '2023-11-21 12:32:22'),
(20, 120, 121, '2023-11-21 14:54:46', 450.00, '2023-11-21 14:54:46', '2023-11-21 14:54:46'),
(21, 120, 1, '2023-11-21 16:41:57', 3000.00, '2023-11-21 16:41:57', '2023-11-21 16:41:57'),
(113, 114, 114, '2023-11-20 09:14:48', 200000.00, NULL, NULL),
(244, 114, 115, '2023-11-20 09:14:52', 2000.00, NULL, NULL);

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
(7, 5690, NULL, NULL, NULL, '1700569642-Dhaka - Dortmund, Germany Package.webp', '2023-11-21 06:27:22', '2023-11-21 06:27:22'),
(8, 5691, NULL, NULL, NULL, '1700569751-Dhaka - Kolkata, India Package.jpg', '2023-11-21 06:29:11', '2023-11-21 06:29:11'),
(9, 5692, NULL, NULL, NULL, '1700569847-Dhaka - Venice, Italy Package.jpg', '2023-11-21 06:30:47', '2023-11-21 06:30:47'),
(11, 5694, NULL, NULL, NULL, '1700570019-Dhaka - Munich, Germany Package.webp', '2023-11-21 06:33:39', '2023-11-21 06:33:39'),
(13, 5696, NULL, NULL, NULL, '1700578606-Dhaka - Paris, France Package.jpg', '2023-11-21 08:56:46', '2023-11-21 08:56:46'),
(14, 5697, NULL, NULL, NULL, '1700578775-Dhaka - Beijing, China Package.jpg', '2023-11-21 08:59:35', '2023-11-21 08:59:35'),
(15, 5698, NULL, NULL, NULL, '1700585116-Hell Tour.jpg', '2023-11-21 10:45:16', '2023-11-21 10:45:16');

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
(68, 'App\\Models\\User', 7, 'token', 'c6e5cc6c89d8968992e43dd61c340973c0c9de067b7d96fb44877679ae0a13fb', '[\"*\"]', '2023-11-19 12:58:05', NULL, '2023-11-19 12:57:59', '2023-11-19 12:58:05');

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `travel__packages`
--

INSERT INTO `travel__packages` (`id`, `name`, `description`, `price`, `user_id`, `airline_id`, `destination_id`, `custom_status`, `departure_flight_id`, `return_flight_id`, `created_at`, `updated_at`) VALUES
(5690, 'Dhaka - Dortmund, Germany Package', 'Dortmund', 2500.00, NULL, 120, 118, 0, 10, 6, '2023-11-21 06:27:22', '2023-11-21 06:27:22'),
(5691, 'Dhaka - Kolkata, India Package', 'Something', 500.00, NULL, 120, 116, 0, 11, 6, '2023-11-21 06:29:11', '2023-11-21 06:29:11'),
(5692, 'Dhaka - Venice, Italy Package', 'Something', 2500.00, NULL, 120, 115, 0, 12, 6, '2023-11-21 06:30:47', '2023-11-21 06:30:47'),
(5694, 'Dhaka - Munich, Germany Package', 'Something', 2500.00, NULL, 120, 114, 0, 16, 6, '2023-11-21 06:33:39', '2023-11-21 06:33:39'),
(5696, 'Dhaka - Paris, France Package', 'Quos-sso', 3000.00, NULL, 120, 122, 0, 13, 6, '2023-11-21 08:56:46', '2023-11-21 08:56:46'),
(5697, 'Dhaka - Beijing, China Package', 'Ching Chong', 1500.00, NULL, 120, 121, 0, 20, 6, '2023-11-21 08:59:35', '2023-11-21 08:59:35'),
(5698, 'Hell Tour', 'Jahannam', 32000.00, NULL, 120, 1, 0, 21, 6, '2023-11-21 10:45:16', '2023-11-21 10:45:16');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `travel__packages`
--
ALTER TABLE `travel__packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5699;

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
