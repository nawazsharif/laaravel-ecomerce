-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 20, 2019 at 07:25 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.1.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` int(10) UNSIGNED NOT NULL,
  `alias` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `province_id` int(11) DEFAULT NULL,
  `country_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `alias`, `address_1`, `address_2`, `zip`, `state_code`, `city`, `province_id`, `country_id`, `customer_id`, `status`, `phone`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'nawaz', 'nikunjo 2 dhaka', NULL, '2990', NULL, NULL, NULL, 18, 2, 1, '01781554418', '2019-01-17 23:58:20', '2019-01-05 08:58:21', '2019-01-17 23:58:20'),
(2, 'Home', 'nikunjo 2 dhaka', NULL, '2990', NULL, NULL, NULL, 18, 3, 1, '01781554418', '2019-01-19 08:37:11', '2019-01-19 08:33:34', '2019-01-19 08:37:11');

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'test', '2019-01-17 09:41:35', '2019-01-17 09:41:35');

-- --------------------------------------------------------

--
-- Table structure for table `attribute_values`
--

CREATE TABLE `attribute_values` (
  `id` int(10) UNSIGNED NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attribute_values`
--

INSERT INTO `attribute_values` (`id`, `value`, `attribute_id`, `created_at`, `updated_at`) VALUES
(1, '10', 1, '2019-01-17 09:41:49', '2019-01-17 09:41:49');

-- --------------------------------------------------------

--
-- Table structure for table `attribute_value_product_attribute`
--

CREATE TABLE `attribute_value_product_attribute` (
  `attribute_value_id` int(10) UNSIGNED NOT NULL,
  `product_attribute_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'test', '2019-01-17 09:40:59', '2019-01-17 09:40:59');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `cover` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `_lft` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `_rgt` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `parent_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `cover`, `status`, `created_at`, `updated_at`, `_lft`, `_rgt`, `parent_id`) VALUES
(1, 'Nursery', 'nursery', 'Ad asperiores sed autem et odit. Quae omnis officia vero sunt. Sit reiciendis voluptas velit explicabo quas autem.', 'categories/JuCCLfzAmpbGPAnoCS9Nr0q6LXmbJn9zUhpFO2xp.png', 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02', 1, 2, NULL),
(2, 'Feeding', 'feeding', 'Debitis vel aliquam sunt autem. Aliquam vitae et culpa est et. Qui suscipit sit officiis consequuntur quos.', 'categories/Xs5dvtWctAWvjjfmBWSNmZIQNd6YeJqNzO4fMDT9.png', 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02', 3, 4, NULL),
(3, 'Gear', 'gear', 'Asperiores blanditiis non voluptas non molestiae eveniet pariatur. Dolores voluptate placeat aspernatur sint voluptas molestiae quibusdam. Optio perferendis numquam temporibus iusto sint quas. Et a ipsa rem ipsum dicta pariatur.', 'categories/QY4qFaOXnC69VUZQoDhXxgVTq4iq4mvv45dk5eVZ.png', 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02', 5, 6, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category_product`
--

CREATE TABLE `category_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_product`
--

INSERT INTO `category_product` (`id`, `category_id`, `product_id`) VALUES
(1, 2, 1),
(2, 2, 2),
(3, 2, 3),
(4, 2, 4),
(5, 2, 5),
(6, 2, 6),
(8, 3, 8),
(9, 3, 9),
(10, 3, 10),
(11, 3, 11),
(12, 3, 12),
(13, 3, 13),
(14, 3, 14),
(15, 1, 3),
(16, 2, 12),
(17, 2, 7);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `province_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`name`, `state_code`, `province_id`) VALUES
('Bangued', NULL, 1),
('Boliney', NULL, 1),
('Bucay', NULL, 1),
('Bucloc', NULL, 1),
('Daguioman', NULL, 1),
('Danglas', NULL, 1),
('Dolores', NULL, 1),
('La Paz', NULL, 1),
('Lacub', NULL, 1),
('Lagangilang', NULL, 1),
('Lagayan', NULL, 1),
('Langiden', NULL, 1),
('Licuan-Baay', NULL, 1),
('Luba', NULL, 1),
('Malibcong', NULL, 1),
('Manabo', NULL, 1),
('Peñarrubia', NULL, 1),
('Pidigan', NULL, 1),
('Pilar', NULL, 1),
('Sallapadan', NULL, 1),
('San Isidro', NULL, 1),
('San Juan', NULL, 1),
('San Quintin', NULL, 1),
('Tayum', NULL, 1),
('Tineg', NULL, 1),
('Tubo', NULL, 1),
('Villaviciosa', NULL, 1),
('Butuan City', NULL, 2),
('Buenavista', NULL, 2),
('Cabadbaran', NULL, 2),
('Carmen', NULL, 2),
('Jabonga', NULL, 2),
('Kitcharao', NULL, 2),
('Las Nieves', NULL, 2),
('Magallanes', NULL, 2),
('Nasipit', NULL, 2),
('Remedios T. Romualdez', NULL, 2),
('Santiago', NULL, 2),
('Tubay', NULL, 2),
('Bayugan', NULL, 3),
('Bunawan', NULL, 3),
('Esperanza', NULL, 3),
('La Paz', NULL, 3),
('Loreto', NULL, 3),
('Prosperidad', NULL, 3),
('Rosario', NULL, 3),
('San Francisco', NULL, 3),
('San Luis', NULL, 3),
('Santa Josefa', NULL, 3),
('Sibagat', NULL, 3),
('Talacogon', NULL, 3),
('Trento', NULL, 3),
('Veruela', NULL, 3),
('Altavas', NULL, 4),
('Balete', NULL, 4),
('Banga', NULL, 4),
('Batan', NULL, 4),
('Buruanga', NULL, 4),
('Ibajay', NULL, 4),
('Kalibo', NULL, 4),
('Lezo', NULL, 4),
('Libacao', NULL, 4),
('Madalag', NULL, 4),
('Makato', NULL, 4),
('Malay', NULL, 4),
('Malinao', NULL, 4),
('Nabas', NULL, 4),
('New Washington', NULL, 4),
('Numancia', NULL, 4),
('Tangalan', NULL, 4),
('Legazpi City', NULL, 5),
('Ligao City', NULL, 5),
('Tabaco City', NULL, 5),
('Bacacay', NULL, 5),
('Camalig', NULL, 5),
('Daraga', NULL, 5),
('Guinobatan', NULL, 5),
('Jovellar', NULL, 5),
('Libon', NULL, 5),
('Malilipot', NULL, 5),
('Malinao', NULL, 5),
('Manito', NULL, 5),
('Oas', NULL, 5),
('Pio Duran', NULL, 5),
('Polangui', NULL, 5),
('Rapu-Rapu', NULL, 5),
('Santo Domingo', NULL, 5),
('Tiwi', NULL, 5),
('Anini-y', NULL, 6),
('Barbaza', NULL, 6),
('Belison', NULL, 6),
('Bugasong', NULL, 6),
('Caluya', NULL, 6),
('Culasi', NULL, 6),
('Hamtic', NULL, 6),
('Laua-an', NULL, 6),
('Libertad', NULL, 6),
('Pandan', NULL, 6),
('Patnongon', NULL, 6),
('San Jose', NULL, 6),
('San Remigio', NULL, 6),
('Sebaste', NULL, 6),
('Sibalom', NULL, 6),
('Tibiao', NULL, 6),
('Tobias Fornier', NULL, 6),
('Valderrama', NULL, 6),
('Calanasan', NULL, 7),
('Conner', NULL, 7),
('Flora', NULL, 7),
('Kabugao', NULL, 7),
('Luna', NULL, 7),
('Pudtol', NULL, 7),
('Santa Marcela', NULL, 7),
('Baler', NULL, 8),
('Casiguran', NULL, 8),
('Dilasag', NULL, 8),
('Dinalungan', NULL, 8),
('Dingalan', NULL, 8),
('Dipaculao', NULL, 8),
('Maria Aurora', NULL, 8),
('San Luis', NULL, 8),
('Isabela City', NULL, 9),
('Akbar', NULL, 9),
('Al-Barka', NULL, 9),
('Hadji Mohammad Ajul', NULL, 9),
('Hadji Muhtamad', NULL, 9),
('Lamitan', NULL, 9),
('Lantawan', NULL, 9),
('Maluso', NULL, 9),
('Sumisip', NULL, 9),
('Tabuan-Lasa', NULL, 9),
('Tipo-Tipo', NULL, 9),
('Tuburan', NULL, 9),
('Ungkaya Pukan', NULL, 9),
('Balanga City', NULL, 10),
('Abucay', NULL, 10),
('Bagac', NULL, 10),
('Dinalupihan', NULL, 10),
('Hermosa', NULL, 10),
('Limay', NULL, 10),
('Mariveles', NULL, 10),
('Morong', NULL, 10),
('Orani', NULL, 10),
('Orion', NULL, 10),
('Pilar', NULL, 10),
('Samal', NULL, 10),
('Basco', NULL, 11),
('Itbayat', NULL, 11),
('Ivana', NULL, 11),
('Mahatao', NULL, 11),
('Sabtang', NULL, 11),
('Uyugan', NULL, 11),
('Batangas City', NULL, 12),
('Lipa City', NULL, 12),
('Tanauan City', NULL, 12),
('Agoncillo', NULL, 12),
('Alitagtag', NULL, 12),
('Balayan', NULL, 12),
('Balete', NULL, 12),
('Bauan', NULL, 12),
('Calaca', NULL, 12),
('Calatagan', NULL, 12),
('Cuenca', NULL, 12),
('Ibaan', NULL, 12),
('Laurel', NULL, 12),
('Lemery', NULL, 12),
('Lian', NULL, 12),
('Lobo', NULL, 12),
('Mabini', NULL, 12),
('Malvar', NULL, 12),
('Mataas na Kahoy', NULL, 12),
('Nasugbu', NULL, 12),
('Padre Garcia', NULL, 12),
('Rosario', NULL, 12),
('San Jose', NULL, 12),
('San Juan', NULL, 12),
('San Luis', NULL, 12),
('San Nicolas', NULL, 12),
('San Pascual', NULL, 12),
('Santa Teresita', NULL, 12),
('Santo Tomas', NULL, 12),
('Taal', NULL, 12),
('Talisay', NULL, 12),
('Taysan', NULL, 12),
('Tingloy', NULL, 12),
('Tuy', NULL, 12),
('Baguio City', NULL, 13),
('Atok', NULL, 13),
('Bakun', NULL, 13),
('Bokod', NULL, 13),
('Buguias', NULL, 13),
('Itogon', NULL, 13),
('Kabayan', NULL, 13),
('Kapangan', NULL, 13),
('Kibungan', NULL, 13),
('La Trinidad', NULL, 13),
('Mankayan', NULL, 13),
('Sablan', NULL, 13),
('Tuba', NULL, 13),
('Tublay', NULL, 13),
('Almeria', NULL, 14),
('Biliran', NULL, 14),
('Cabucgayan', NULL, 14),
('Caibiran', NULL, 14),
('Culaba', NULL, 14),
('Kawayan', NULL, 14),
('Maripipi', NULL, 14),
('Naval', NULL, 14),
('Tagbilaran City', NULL, 15),
('Alburquerque', NULL, 15),
('Alicia', NULL, 15),
('Anda', NULL, 15),
('Antequera', NULL, 15),
('Baclayon', NULL, 15),
('Balilihan', NULL, 15),
('Batuan', NULL, 15),
('Bien Unido', NULL, 15),
('Bilar', NULL, 15),
('Buenavista', NULL, 15),
('Calape', NULL, 15),
('Candijay', NULL, 15),
('Carmen', NULL, 15),
('Catigbian', NULL, 15),
('Clarin', NULL, 15),
('Corella', NULL, 15),
('Cortes', NULL, 15),
('Dagohoy', NULL, 15),
('Danao', NULL, 15),
('Dauis', NULL, 15),
('Dimiao', NULL, 15),
('Duero', NULL, 15),
('Garcia Hernandez', NULL, 15),
('Getafe', NULL, 15),
('Guindulman', NULL, 15),
('Inabanga', NULL, 15),
('Jagna', NULL, 15),
('Lila', NULL, 15),
('Loay', NULL, 15),
('Loboc', NULL, 15),
('Loon', NULL, 15),
('Mabini', NULL, 15),
('Maribojoc', NULL, 15),
('Panglao', NULL, 15),
('Pilar', NULL, 15),
('President Carlos P. Garcia', NULL, 15),
('Sagbayan', NULL, 15),
('San Isidro', NULL, 15),
('San Miguel', NULL, 15),
('Sevilla', NULL, 15),
('Sierra Bullones', NULL, 15),
('Sikatuna', NULL, 15),
('Talibon', NULL, 15),
('Trinidad', NULL, 15),
('Tubigon', NULL, 15),
('Ubay', NULL, 15),
('Valencia', NULL, 15),
('Malaybalay City', NULL, 16),
('Valencia City', NULL, 16),
('Baungon', NULL, 16),
('Cabanglasan', NULL, 16),
('Damulog', NULL, 16),
('Dangcagan', NULL, 16),
('Don Carlos', NULL, 16),
('Impasug-ong', NULL, 16),
('Kadingilan', NULL, 16),
('Kalilangan', NULL, 16),
('Kibawe', NULL, 16),
('Kitaotao', NULL, 16),
('Lantapan', NULL, 16),
('Libona', NULL, 16),
('Malitbog', NULL, 16),
('Manolo Fortich', NULL, 16),
('Maramag', NULL, 16),
('Pangantucan', NULL, 16),
('Quezon', NULL, 16),
('San Fernando', NULL, 16),
('Sumilao', NULL, 16),
('Talakag', NULL, 16),
('Malolos City', NULL, 17),
('Meycauayan City', NULL, 17),
('San Jose del Monte City', NULL, 17),
('Angat', NULL, 17),
('Balagtas', NULL, 17),
('Baliuag', NULL, 17),
('Bocaue', NULL, 17),
('Bulacan', NULL, 17),
('Bustos', NULL, 17),
('Calumpit', NULL, 17),
('Doña Remedios Trinidad', NULL, 17),
('Guiguinto', NULL, 17),
('Hagonoy', NULL, 17),
('Marilao', NULL, 17),
('Norzagaray', NULL, 17),
('Obando', NULL, 17),
('Pandi', NULL, 17),
('Paombong', NULL, 17),
('Plaridel', NULL, 17),
('Pulilan', NULL, 17),
('San Ildefonso', NULL, 17),
('San Miguel', NULL, 17),
('San Rafael', NULL, 17),
('Santa Maria', NULL, 17),
('Tuguegarao City', NULL, 18),
('Abulug', NULL, 18),
('Alcala', NULL, 18),
('Allacapan', NULL, 18),
('Amulung', NULL, 18),
('Aparri', NULL, 18),
('Baggao', NULL, 18),
('Ballesteros', NULL, 18),
('Buguey', NULL, 18),
('Calayan', NULL, 18),
('Camalaniugan', NULL, 18),
('Claveria', NULL, 18),
('Enrile', NULL, 18),
('Gattaran', NULL, 18),
('Gonzaga', NULL, 18),
('Iguig', NULL, 18),
('Lal-lo', NULL, 18),
('Lasam', NULL, 18),
('Pamplona', NULL, 18),
('Peñablanca', NULL, 18),
('Piat', NULL, 18),
('Rizal', NULL, 18),
('Sanchez-Mira', NULL, 18),
('Santa Ana', NULL, 18),
('Santa Praxedes', NULL, 18),
('Santa Teresita', NULL, 18),
('Santo Niño', NULL, 18),
('Solana', NULL, 18),
('Tuao', NULL, 18),
('Basud', NULL, 19),
('Capalonga', NULL, 19),
('Daet', NULL, 19),
('Jose Panganiban', NULL, 19),
('Labo', NULL, 19),
('Mercedes', NULL, 19),
('Paracale', NULL, 19),
('San Lorenzo Ruiz', NULL, 19),
('San Vicente', NULL, 19),
('Santa Elena', NULL, 19),
('Talisay', NULL, 19),
('Vinzons', NULL, 19),
('Iriga City', NULL, 20),
('Naga City', NULL, 20),
('Baao', NULL, 20),
('Balatan', NULL, 20),
('Bato', NULL, 20),
('Bombon', NULL, 20),
('Buhi', NULL, 20),
('Bula', NULL, 20),
('Cabusao', NULL, 20),
('Calabanga', NULL, 20),
('Camaligan', NULL, 20),
('Canaman', NULL, 20),
('Caramoan', NULL, 20),
('Del Gallego', NULL, 20),
('Gainza', NULL, 20),
('Garchitorena', NULL, 20),
('Goa', NULL, 20),
('Lagonoy', NULL, 20),
('Libmanan', NULL, 20),
('Lupi', NULL, 20),
('Magarao', NULL, 20),
('Milaor', NULL, 20),
('Minalabac', NULL, 20),
('Nabua', NULL, 20),
('Ocampo', NULL, 20),
('Pamplona', NULL, 20),
('Pasacao', NULL, 20),
('Pili', NULL, 20),
('Presentacion', NULL, 20),
('Ragay', NULL, 20),
('Sagñay', NULL, 20),
('San Fernando', NULL, 20),
('San Jose', NULL, 20),
('Sipocot', NULL, 20),
('Siruma', NULL, 20),
('Tigaon', NULL, 20),
('Tinambac', NULL, 20),
('Catarman', NULL, 21),
('Guinsiliban', NULL, 21),
('Mahinog', NULL, 21),
('Mambajao', NULL, 21),
('Sagay', NULL, 21),
('Roxas City', NULL, 22),
('Cuartero', NULL, 22),
('Dao', NULL, 22),
('Dumalag', NULL, 22),
('Dumarao', NULL, 22),
('Ivisan', NULL, 22),
('Jamindan', NULL, 22),
('Ma-ayon', NULL, 22),
('Mambusao', NULL, 22),
('Panay', NULL, 22),
('Panitan', NULL, 22),
('Pilar', NULL, 22),
('Pontevedra', NULL, 22),
('President Roxas', NULL, 22),
('Sapi-an', NULL, 22),
('Sigma', NULL, 22),
('Tapaz', NULL, 22),
('Bagamanoc', NULL, 23),
('Baras', NULL, 23),
('Bato', NULL, 23),
('Caramoran', NULL, 23),
('Gigmoto', NULL, 23),
('Pandan', NULL, 23),
('Panganiban', NULL, 23),
('San Andres', NULL, 23),
('San Miguel', NULL, 23),
('Viga', NULL, 23),
('Virac', NULL, 23),
('Cavite City', NULL, 24),
('Dasmariñas City', NULL, 24),
('Tagaytay City', NULL, 24),
('Trece Martires City', NULL, 24),
('Alfonso', NULL, 24),
('Amadeo', NULL, 24),
('Bacoor', NULL, 24),
('Carmona', NULL, 24),
('General Mariano Alvarez', NULL, 24),
('General Emilio Aguinaldo', NULL, 24),
('General Trias', NULL, 24),
('Imus', NULL, 24),
('Indang', NULL, 24),
('Kawit', NULL, 24),
('Magallanes', NULL, 24),
('Maragondon', NULL, 24),
('Mendez', NULL, 24),
('Naic', NULL, 24),
('Noveleta', NULL, 24),
('Rosario', NULL, 24),
('Silang', NULL, 24),
('Tanza', NULL, 24),
('Ternate', NULL, 24),
('Bogo City', NULL, 25),
('Cebu City', NULL, 25),
('Carcar City', NULL, 25),
('Danao City', NULL, 25),
('Lapu-Lapu City', NULL, 25),
('Mandaue City', NULL, 25),
('Naga City', NULL, 25),
('Talisay City', NULL, 25),
('Toledo City', NULL, 25),
('Alcantara', NULL, 25),
('Alcoy', NULL, 25),
('Alegria', NULL, 25),
('Aloguinsan', NULL, 25),
('Argao', NULL, 25),
('Asturias', NULL, 25),
('Badian', NULL, 25),
('Balamban', NULL, 25),
('Bantayan', NULL, 25),
('Barili', NULL, 25),
('Boljoon', NULL, 25),
('Borbon', NULL, 25),
('Carmen', NULL, 25),
('Catmon', NULL, 25),
('Compostela', NULL, 25),
('Consolacion', NULL, 25),
('Cordoba', NULL, 25),
('Daanbantayan', NULL, 25),
('Dalaguete', NULL, 25),
('Dumanjug', NULL, 25),
('Ginatilan', NULL, 25),
('Liloan', NULL, 25),
('Madridejos', NULL, 25),
('Malabuyoc', NULL, 25),
('Medellin', NULL, 25),
('Minglanilla', NULL, 25),
('Moalboal', NULL, 25),
('Oslob', NULL, 25),
('Pilar', NULL, 25),
('Pinamungahan', NULL, 25),
('Poro', NULL, 25),
('Ronda', NULL, 25),
('Samboan', NULL, 25),
('San Fernando', NULL, 25),
('San Francisco', NULL, 25),
('San Remigio', NULL, 25),
('Santa Fe', NULL, 25),
('Santander', NULL, 25),
('Sibonga', NULL, 25),
('Sogod', NULL, 25),
('Tabogon', NULL, 25),
('Tabuelan', NULL, 25),
('Tuburan', NULL, 25),
('Tudela', NULL, 25),
('Compostela', NULL, 26),
('Laak', NULL, 26),
('Mabini', NULL, 26),
('Maco', NULL, 26),
('Maragusan', NULL, 26),
('Mawab', NULL, 26),
('Monkayo', NULL, 26),
('Montevista', NULL, 26),
('Nabunturan', NULL, 26),
('New Bataan', NULL, 26),
('Pantukan', NULL, 26),
('Kidapawan City', NULL, 27),
('Alamada', NULL, 27),
('Aleosan', NULL, 27),
('Antipas', NULL, 27),
('Arakan', NULL, 27),
('Banisilan', NULL, 27),
('Carmen', NULL, 27),
('Kabacan', NULL, 27),
('Libungan', NULL, 27),
('M\'lang', NULL, 27),
('Magpet', NULL, 27),
('Makilala', NULL, 27),
('Matalam', NULL, 27),
('Midsayap', NULL, 27),
('Pigkawayan', NULL, 27),
('Pikit', NULL, 27),
('President Roxas', NULL, 27),
('Tulunan', NULL, 27),
('Panabo City', NULL, 28),
('Island Garden City of Samal', NULL, 28),
('Tagum City', NULL, 28),
('Asuncion', NULL, 28),
('Braulio E. Dujali', NULL, 28),
('Carmen', NULL, 28),
('Kapalong', NULL, 28),
('New Corella', NULL, 28),
('San Isidro', NULL, 28),
('Santo Tomas', NULL, 28),
('Talaingod', NULL, 28),
('Davao City', NULL, 29),
('Digos City', NULL, 29),
('Bansalan', NULL, 29),
('Don Marcelino', NULL, 29),
('Hagonoy', NULL, 29),
('Jose Abad Santos', NULL, 29),
('Kiblawan', NULL, 29),
('Magsaysay', NULL, 29),
('Malalag', NULL, 29),
('Malita', NULL, 29),
('Matanao', NULL, 29),
('Padada', NULL, 29),
('Santa Cruz', NULL, 29),
('Santa Maria', NULL, 29),
('Sarangani', NULL, 29),
('Sulop', NULL, 29),
('Mati City', NULL, 30),
('Baganga', NULL, 30),
('Banaybanay', NULL, 30),
('Boston', NULL, 30),
('Caraga', NULL, 30),
('Cateel', NULL, 30),
('Governor Generoso', NULL, 30),
('Lupon', NULL, 30),
('Manay', NULL, 30),
('San Isidro', NULL, 30),
('Tarragona', NULL, 30),
('Arteche', NULL, 31),
('Balangiga', NULL, 31),
('Balangkayan', NULL, 31),
('Borongan', NULL, 31),
('Can-avid', NULL, 31),
('Dolores', NULL, 31),
('General MacArthur', NULL, 31),
('Giporlos', NULL, 31),
('Guiuan', NULL, 31),
('Hernani', NULL, 31),
('Jipapad', NULL, 31),
('Lawaan', NULL, 31),
('Llorente', NULL, 31),
('Maslog', NULL, 31),
('Maydolong', NULL, 31),
('Mercedes', NULL, 31),
('Oras', NULL, 31),
('Quinapondan', NULL, 31),
('Salcedo', NULL, 31),
('San Julian', NULL, 31),
('San Policarpo', NULL, 31),
('Sulat', NULL, 31),
('Taft', NULL, 31),
('Buenavista', NULL, 32),
('Jordan', NULL, 32),
('Nueva Valencia', NULL, 32),
('San Lorenzo', NULL, 32),
('Sibunag', NULL, 32),
('Aguinaldo', NULL, 33),
('Alfonso Lista', NULL, 33),
('Asipulo', NULL, 33),
('Banaue', NULL, 33),
('Hingyon', NULL, 33),
('Hungduan', NULL, 33),
('Kiangan', NULL, 33),
('Lagawe', NULL, 33),
('Lamut', NULL, 33),
('Mayoyao', NULL, 33),
('Tinoc', NULL, 33),
('Batac City', NULL, 34),
('Laoag City', NULL, 34),
('Adams', NULL, 34),
('Bacarra', NULL, 34),
('Badoc', NULL, 34),
('Bangui', NULL, 34),
('Banna', NULL, 34),
('Burgos', NULL, 34),
('Carasi', NULL, 34),
('Currimao', NULL, 34),
('Dingras', NULL, 34),
('Dumalneg', NULL, 34),
('Marcos', NULL, 34),
('Nueva Era', NULL, 34),
('Pagudpud', NULL, 34),
('Paoay', NULL, 34),
('Pasuquin', NULL, 34),
('Piddig', NULL, 34),
('Pinili', NULL, 34),
('San Nicolas', NULL, 34),
('Sarrat', NULL, 34),
('Solsona', NULL, 34),
('Vintar', NULL, 34),
('Candon City', NULL, 35),
('Vigan City', NULL, 35),
('Alilem', NULL, 35),
('Banayoyo', NULL, 35),
('Bantay', NULL, 35),
('Burgos', NULL, 35),
('Cabugao', NULL, 35),
('Caoayan', NULL, 35),
('Cervantes', NULL, 35),
('Galimuyod', NULL, 35),
('Gregorio Del Pilar', NULL, 35),
('Lidlidda', NULL, 35),
('Magsingal', NULL, 35),
('Nagbukel', NULL, 35),
('Narvacan', NULL, 35),
('Quirino', NULL, 35),
('Salcedo', NULL, 35),
('San Emilio', NULL, 35),
('San Esteban', NULL, 35),
('San Ildefonso', NULL, 35),
('San Juan', NULL, 35),
('San Vicente', NULL, 35),
('Santa', NULL, 35),
('Santa Catalina', NULL, 35),
('Santa Cruz', NULL, 35),
('Santa Lucia', NULL, 35),
('Santa Maria', NULL, 35),
('Santiago', NULL, 35),
('Santo Domingo', NULL, 35),
('Sigay', NULL, 35),
('Sinait', NULL, 35),
('Sugpon', NULL, 35),
('Suyo', NULL, 35),
('Tagudin', NULL, 35),
('Iloilo City', NULL, 36),
('Passi City', NULL, 36),
('Ajuy', NULL, 36),
('Alimodian', NULL, 36),
('Anilao', NULL, 36),
('Badiangan', NULL, 36),
('Balasan', NULL, 36),
('Banate', NULL, 36),
('Barotac Nuevo', NULL, 36),
('Barotac Viejo', NULL, 36),
('Batad', NULL, 36),
('Bingawan', NULL, 36),
('Cabatuan', NULL, 36),
('Calinog', NULL, 36),
('Carles', NULL, 36),
('Concepcion', NULL, 36),
('Dingle', NULL, 36),
('Dueñas', NULL, 36),
('Dumangas', NULL, 36),
('Estancia', NULL, 36),
('Guimbal', NULL, 36),
('Igbaras', NULL, 36),
('Janiuay', NULL, 36),
('Lambunao', NULL, 36),
('Leganes', NULL, 36),
('Lemery', NULL, 36),
('Leon', NULL, 36),
('Maasin', NULL, 36),
('Miagao', NULL, 36),
('Mina', NULL, 36),
('New Lucena', NULL, 36),
('Oton', NULL, 36),
('Pavia', NULL, 36),
('Pototan', NULL, 36),
('San Dionisio', NULL, 36),
('San Enrique', NULL, 36),
('San Joaquin', NULL, 36),
('San Miguel', NULL, 36),
('San Rafael', NULL, 36),
('Santa Barbara', NULL, 36),
('Sara', NULL, 36),
('Tigbauan', NULL, 36),
('Tubungan', NULL, 36),
('Zarraga', NULL, 36),
('Cauayan City', NULL, 37),
('Santiago City', NULL, 37),
('Alicia', NULL, 37),
('Angadanan', NULL, 37),
('Aurora', NULL, 37),
('Benito Soliven', NULL, 37),
('Burgos', NULL, 37),
('Cabagan', NULL, 37),
('Cabatuan', NULL, 37),
('Cordon', NULL, 37),
('Delfin Albano', NULL, 37),
('Dinapigue', NULL, 37),
('Divilacan', NULL, 37),
('Echague', NULL, 37),
('Gamu', NULL, 37),
('Ilagan', NULL, 37),
('Jones', NULL, 37),
('Luna', NULL, 37),
('Maconacon', NULL, 37),
('Mallig', NULL, 37),
('Naguilian', NULL, 37),
('Palanan', NULL, 37),
('Quezon', NULL, 37),
('Quirino', NULL, 37),
('Ramon', NULL, 37),
('Reina Mercedes', NULL, 37),
('Roxas', NULL, 37),
('San Agustin', NULL, 37),
('San Guillermo', NULL, 37),
('San Isidro', NULL, 37),
('San Manuel', NULL, 37),
('San Mariano', NULL, 37),
('San Mateo', NULL, 37),
('San Pablo', NULL, 37),
('Santa Maria', NULL, 37),
('Santo Tomas', NULL, 37),
('Tumauini', NULL, 37),
('Tabuk', NULL, 38),
('Balbalan', NULL, 38),
('Lubuagan', NULL, 38),
('Pasil', NULL, 38),
('Pinukpuk', NULL, 38),
('Rizal', NULL, 38),
('Tanudan', NULL, 38),
('Tinglayan', NULL, 38),
('San Fernando City', NULL, 39),
('Agoo', NULL, 39),
('Aringay', NULL, 39),
('Bacnotan', NULL, 39),
('Bagulin', NULL, 39),
('Balaoan', NULL, 39),
('Bangar', NULL, 39),
('Bauang', NULL, 39),
('Burgos', NULL, 39),
('Caba', NULL, 39),
('Luna', NULL, 39),
('Naguilian', NULL, 39),
('Pugo', NULL, 39),
('Rosario', NULL, 39),
('San Gabriel', NULL, 39),
('San Juan', NULL, 39),
('Santo Tomas', NULL, 39),
('Santol', NULL, 39),
('Sudipen', NULL, 39),
('Tubao', NULL, 39),
('Biñan City', NULL, 40),
('Calamba City', NULL, 40),
('San Pablo City', NULL, 40),
('Santa Rosa City', NULL, 40),
('Alaminos', NULL, 40),
('Bay', NULL, 40),
('Cabuyao', NULL, 40),
('Calauan', NULL, 40),
('Cavinti', NULL, 40),
('Famy', NULL, 40),
('Kalayaan', NULL, 40),
('Liliw', NULL, 40),
('Los Baños', NULL, 40),
('Luisiana', NULL, 40),
('Lumban', NULL, 40),
('Mabitac', NULL, 40),
('Magdalena', NULL, 40),
('Majayjay', NULL, 40),
('Nagcarlan', NULL, 40),
('Paete', NULL, 40),
('Pagsanjan', NULL, 40),
('Pakil', NULL, 40),
('Pangil', NULL, 40),
('Pila', NULL, 40),
('Rizal', NULL, 40),
('San Pedro', NULL, 40),
('Santa Cruz', NULL, 40),
('Santa Maria', NULL, 40),
('Siniloan', NULL, 40),
('Victoria', NULL, 40),
('Iligan City', NULL, 41),
('Bacolod', NULL, 41),
('Baloi', NULL, 41),
('Baroy', NULL, 41),
('Kapatagan', NULL, 41),
('Kauswagan', NULL, 41),
('Kolambugan', NULL, 41),
('Lala', NULL, 41),
('Linamon', NULL, 41),
('Magsaysay', NULL, 41),
('Maigo', NULL, 41),
('Matungao', NULL, 41),
('Munai', NULL, 41),
('Nunungan', NULL, 41),
('Pantao Ragat', NULL, 41),
('Pantar', NULL, 41),
('Poona Piagapo', NULL, 41),
('Salvador', NULL, 41),
('Sapad', NULL, 41),
('Sultan Naga Dimaporo', NULL, 41),
('Tagoloan', NULL, 41),
('Tangcal', NULL, 41),
('Tubod', NULL, 41),
('Marawi City', NULL, 42),
('Bacolod-Kalawi', NULL, 42),
('Balabagan', NULL, 42),
('Balindong', NULL, 42),
('Bayang', NULL, 42),
('Binidayan', NULL, 42),
('Buadiposo-Buntong', NULL, 42),
('Bubong', NULL, 42),
('Bumbaran', NULL, 42),
('Butig', NULL, 42),
('Calanogas', NULL, 42),
('Ditsaan-Ramain', NULL, 42),
('Ganassi', NULL, 42),
('Kapai', NULL, 42),
('Kapatagan', NULL, 42),
('Lumba-Bayabao', NULL, 42),
('Lumbaca-Unayan', NULL, 42),
('Lumbatan', NULL, 42),
('Lumbayanague', NULL, 42),
('Madalum', NULL, 42),
('Madamba', NULL, 42),
('Maguing', NULL, 42),
('Malabang', NULL, 42),
('Marantao', NULL, 42),
('Marogong', NULL, 42),
('Masiu', NULL, 42),
('Mulondo', NULL, 42),
('Pagayawan', NULL, 42),
('Piagapo', NULL, 42),
('Poona Bayabao', NULL, 42),
('Pualas', NULL, 42),
('Saguiaran', NULL, 42),
('Sultan Dumalondong', NULL, 42),
('Picong', NULL, 42),
('Tagoloan II', NULL, 42),
('Tamparan', NULL, 42),
('Taraka', NULL, 42),
('Tubaran', NULL, 42),
('Tugaya', NULL, 42),
('Wao', NULL, 42),
('Ormoc City', NULL, 43),
('Tacloban City', NULL, 43),
('Abuyog', NULL, 43),
('Alangalang', NULL, 43),
('Albuera', NULL, 43),
('Babatngon', NULL, 43),
('Barugo', NULL, 43),
('Bato', NULL, 43),
('Baybay', NULL, 43),
('Burauen', NULL, 43),
('Calubian', NULL, 43),
('Capoocan', NULL, 43),
('Carigara', NULL, 43),
('Dagami', NULL, 43),
('Dulag', NULL, 43),
('Hilongos', NULL, 43),
('Hindang', NULL, 43),
('Inopacan', NULL, 43),
('Isabel', NULL, 43),
('Jaro', NULL, 43),
('Javier', NULL, 43),
('Julita', NULL, 43),
('Kananga', NULL, 43),
('La Paz', NULL, 43),
('Leyte', NULL, 43),
('Liloan', NULL, 43),
('MacArthur', NULL, 43),
('Mahaplag', NULL, 43),
('Matag-ob', NULL, 43),
('Matalom', NULL, 43),
('Mayorga', NULL, 43),
('Merida', NULL, 43),
('Palo', NULL, 43),
('Palompon', NULL, 43),
('Pastrana', NULL, 43),
('San Isidro', NULL, 43),
('San Miguel', NULL, 43),
('Santa Fe', NULL, 43),
('Sogod', NULL, 43),
('Tabango', NULL, 43),
('Tabontabon', NULL, 43),
('Tanauan', NULL, 43),
('Tolosa', NULL, 43),
('Tunga', NULL, 43),
('Villaba', NULL, 43),
('Cotabato City', NULL, 44),
('Ampatuan', NULL, 44),
('Barira', NULL, 44),
('Buldon', NULL, 44),
('Buluan', NULL, 44),
('Datu Abdullah Sangki', NULL, 44),
('Datu Anggal Midtimbang', NULL, 44),
('Datu Blah T. Sinsuat', NULL, 44),
('Datu Hoffer Ampatuan', NULL, 44),
('Datu Montawal', NULL, 44),
('Datu Odin Sinsuat', NULL, 44),
('Datu Paglas', NULL, 44),
('Datu Piang', NULL, 44),
('Datu Salibo', NULL, 44),
('Datu Saudi-Ampatuan', NULL, 44),
('Datu Unsay', NULL, 44),
('General Salipada K. Pendatun', NULL, 44),
('Guindulungan', NULL, 44),
('Kabuntalan', NULL, 44),
('Mamasapano', NULL, 44),
('Mangudadatu', NULL, 44),
('Matanog', NULL, 44),
('Northern Kabuntalan', NULL, 44),
('Pagalungan', NULL, 44),
('Paglat', NULL, 44),
('Pandag', NULL, 44),
('Parang', NULL, 44),
('Rajah Buayan', NULL, 44),
('Shariff Aguak', NULL, 44),
('Shariff Saydona Mustapha', NULL, 44),
('South Upi', NULL, 44),
('Sultan Kudarat', NULL, 44),
('Sultan Mastura', NULL, 44),
('Sultan sa Barongis', NULL, 44),
('Talayan', NULL, 44),
('Talitay', NULL, 44),
('Upi', NULL, 44),
('Boac', NULL, 45),
('Buenavista', NULL, 45),
('Gasan', NULL, 45),
('Mogpog', NULL, 45),
('Santa Cruz', NULL, 45),
('Torrijos', NULL, 45),
('Masbate City', NULL, 46),
('Aroroy', NULL, 46),
('Baleno', NULL, 46),
('Balud', NULL, 46),
('Batuan', NULL, 46),
('Cataingan', NULL, 46),
('Cawayan', NULL, 46),
('Claveria', NULL, 46),
('Dimasalang', NULL, 46),
('Esperanza', NULL, 46),
('Mandaon', NULL, 46),
('Milagros', NULL, 46),
('Mobo', NULL, 46),
('Monreal', NULL, 46),
('Palanas', NULL, 46),
('Pio V. Corpuz', NULL, 46),
('Placer', NULL, 46),
('San Fernando', NULL, 46),
('San Jacinto', NULL, 46),
('San Pascual', NULL, 46),
('Uson', NULL, 46),
('Caloocan City', NULL, 47),
('Las Piñas City', NULL, 47),
('Makati City', NULL, 47),
('Malabon City', NULL, 47),
('Mandaluyong City', NULL, 47),
('Manila', NULL, 47),
('Marikina City', NULL, 47),
('Muntinlupa City', NULL, 47),
('Navotas City', NULL, 47),
('Parañaque City', NULL, 47),
('Pasay City', NULL, 47),
('Pasig City', NULL, 47),
('Quezon City', NULL, 47),
('San Juan City', NULL, 47),
('Taguig City', NULL, 47),
('Valenzuela City', NULL, 47),
('Pateros', NULL, 47),
('Oroquieta City', NULL, 48),
('Ozamiz City', NULL, 48),
('Tangub City', NULL, 48),
('Aloran', NULL, 48),
('Baliangao', NULL, 48),
('Bonifacio', NULL, 48),
('Calamba', NULL, 48),
('Clarin', NULL, 48),
('Concepcion', NULL, 48),
('Don Victoriano Chiongbian', NULL, 48),
('Jimenez', NULL, 48),
('Lopez Jaena', NULL, 48),
('Panaon', NULL, 48),
('Plaridel', NULL, 48),
('Sapang Dalaga', NULL, 48),
('Sinacaban', NULL, 48),
('Tudela', NULL, 48),
('Cagayan de Oro', NULL, 49),
('Gingoog City', NULL, 49),
('Alubijid', NULL, 49),
('Balingasag', NULL, 49),
('Balingoan', NULL, 49),
('Binuangan', NULL, 49),
('Claveria', NULL, 49),
('El Salvador', NULL, 49),
('Gitagum', NULL, 49),
('Initao', NULL, 49),
('Jasaan', NULL, 49),
('Kinoguitan', NULL, 49),
('Lagonglong', NULL, 49),
('Laguindingan', NULL, 49),
('Libertad', NULL, 49),
('Lugait', NULL, 49),
('Magsaysay', NULL, 49),
('Manticao', NULL, 49),
('Medina', NULL, 49),
('Naawan', NULL, 49),
('Opol', NULL, 49),
('Salay', NULL, 49),
('Sugbongcogon', NULL, 49),
('Tagoloan', NULL, 49),
('Talisayan', NULL, 49),
('Villanueva', NULL, 49),
('Barlig', NULL, 50),
('Bauko', NULL, 50),
('Besao', NULL, 50),
('Bontoc', NULL, 50),
('Natonin', NULL, 50),
('Paracelis', NULL, 50),
('Sabangan', NULL, 50),
('Sadanga', NULL, 50),
('Sagada', NULL, 50),
('Tadian', NULL, 50),
('Bacolod City', NULL, 51),
('Bago City', NULL, 51),
('Cadiz City', NULL, 51),
('Escalante City', NULL, 51),
('Himamaylan City', NULL, 51),
('Kabankalan City', NULL, 51),
('La Carlota City', NULL, 51),
('Sagay City', NULL, 51),
('San Carlos City', NULL, 51),
('Silay City', NULL, 51),
('Sipalay City', NULL, 51),
('Talisay City', NULL, 51),
('Victorias City', NULL, 51),
('Binalbagan', NULL, 51),
('Calatrava', NULL, 51),
('Candoni', NULL, 51),
('Cauayan', NULL, 51),
('Enrique B. Magalona', NULL, 51),
('Hinigaran', NULL, 51),
('Hinoba-an', NULL, 51),
('Ilog', NULL, 51),
('Isabela', NULL, 51),
('La Castellana', NULL, 51),
('Manapla', NULL, 51),
('Moises Padilla', NULL, 51),
('Murcia', NULL, 51),
('Pontevedra', NULL, 51),
('Pulupandan', NULL, 51),
('Salvador Benedicto', NULL, 51),
('San Enrique', NULL, 51),
('Toboso', NULL, 51),
('Valladolid', NULL, 51),
('Bais City', NULL, 52),
('Bayawan City', NULL, 52),
('Canlaon City', NULL, 52),
('Guihulngan City', NULL, 52),
('Dumaguete City', NULL, 52),
('Tanjay City', NULL, 52),
('Amlan', NULL, 52),
('Ayungon', NULL, 52),
('Bacong', NULL, 52),
('Basay', NULL, 52),
('Bindoy', NULL, 52),
('Dauin', NULL, 52),
('Jimalalud', NULL, 52),
('La Libertad', NULL, 52),
('Mabinay', NULL, 52),
('Manjuyod', NULL, 52),
('Pamplona', NULL, 52),
('San Jose', NULL, 52),
('Santa Catalina', NULL, 52),
('Siaton', NULL, 52),
('Sibulan', NULL, 52),
('Tayasan', NULL, 52),
('Valencia', NULL, 52),
('Vallehermoso', NULL, 52),
('Zamboanguita', NULL, 52),
('Allen', NULL, 53),
('Biri', NULL, 53),
('Bobon', NULL, 53),
('Capul', NULL, 53),
('Catarman', NULL, 53),
('Catubig', NULL, 53),
('Gamay', NULL, 53),
('Laoang', NULL, 53),
('Lapinig', NULL, 53),
('Las Navas', NULL, 53),
('Lavezares', NULL, 53),
('Lope de Vega', NULL, 53),
('Mapanas', NULL, 53),
('Mondragon', NULL, 53),
('Palapag', NULL, 53),
('Pambujan', NULL, 53),
('Rosario', NULL, 53),
('San Antonio', NULL, 53),
('San Isidro', NULL, 53),
('San Jose', NULL, 53),
('San Roque', NULL, 53),
('San Vicente', NULL, 53),
('Silvino Lobos', NULL, 53),
('Victoria', NULL, 53),
('Cabanatuan City', NULL, 54),
('Gapan City', NULL, 54),
('Science City of Muñoz', NULL, 54),
('Palayan City', NULL, 54),
('San Jose City', NULL, 54),
('Aliaga', NULL, 54),
('Bongabon', NULL, 54),
('Cabiao', NULL, 54),
('Carranglan', NULL, 54),
('Cuyapo', NULL, 54),
('Gabaldon', NULL, 54),
('General Mamerto Natividad', NULL, 54),
('General Tinio', NULL, 54),
('Guimba', NULL, 54),
('Jaen', NULL, 54),
('Laur', NULL, 54),
('Licab', NULL, 54),
('Llanera', NULL, 54),
('Lupao', NULL, 54),
('Nampicuan', NULL, 54),
('Pantabangan', NULL, 54),
('Peñaranda', NULL, 54),
('Quezon', NULL, 54),
('Rizal', NULL, 54),
('San Antonio', NULL, 54),
('San Isidro', NULL, 54),
('San Leonardo', NULL, 54),
('Santa Rosa', NULL, 54),
('Santo Domingo', NULL, 54),
('Talavera', NULL, 54),
('Talugtug', NULL, 54),
('Zaragoza', NULL, 54),
('Alfonso Castaneda', NULL, 55),
('Ambaguio', NULL, 55),
('Aritao', NULL, 55),
('Bagabag', NULL, 55),
('Bambang', NULL, 55),
('Bayombong', NULL, 55),
('Diadi', NULL, 55),
('Dupax del Norte', NULL, 55),
('Dupax del Sur', NULL, 55),
('Kasibu', NULL, 55),
('Kayapa', NULL, 55),
('Quezon', NULL, 55),
('Santa Fe', NULL, 55),
('Solano', NULL, 55),
('Villaverde', NULL, 55),
('Abra de Ilog', NULL, 56),
('Calintaan', NULL, 56),
('Looc', NULL, 56),
('Lubang', NULL, 56),
('Magsaysay', NULL, 56),
('Mamburao', NULL, 56),
('Paluan', NULL, 56),
('Rizal', NULL, 56),
('Sablayan', NULL, 56),
('San Jose', NULL, 56),
('Santa Cruz', NULL, 56),
('Calapan City', NULL, 57),
('Baco', NULL, 57),
('Bansud', NULL, 57),
('Bongabong', NULL, 57),
('Bulalacao', NULL, 57),
('Gloria', NULL, 57),
('Mansalay', NULL, 57),
('Naujan', NULL, 57),
('Pinamalayan', NULL, 57),
('Pola', NULL, 57),
('Puerto Galera', NULL, 57),
('Roxas', NULL, 57),
('San Teodoro', NULL, 57),
('Socorro', NULL, 57),
('Victoria', NULL, 57),
('Puerto Princesa City', NULL, 58),
('Aborlan', NULL, 58),
('Agutaya', NULL, 58),
('Araceli', NULL, 58),
('Balabac', NULL, 58),
('Bataraza', NULL, 58),
('Brooke\'s Point', NULL, 58),
('Busuanga', NULL, 58),
('Cagayancillo', NULL, 58),
('Coron', NULL, 58),
('Culion', NULL, 58),
('Cuyo', NULL, 58),
('Dumaran', NULL, 58),
('El Nido', NULL, 58),
('Kalayaan', NULL, 58),
('Linapacan', NULL, 58),
('Magsaysay', NULL, 58),
('Narra', NULL, 58),
('Quezon', NULL, 58),
('Rizal', NULL, 58),
('Roxas', NULL, 58),
('San Vicente', NULL, 58),
('Sofronio Española', NULL, 58),
('Taytay', NULL, 58),
('Angeles City', NULL, 59),
('City of San Fernando', NULL, 59),
('Apalit', NULL, 59),
('Arayat', NULL, 59),
('Bacolor', NULL, 59),
('Candaba', NULL, 59),
('Floridablanca', NULL, 59),
('Guagua', NULL, 59),
('Lubao', NULL, 59),
('Mabalacat', NULL, 59),
('Macabebe', NULL, 59),
('Magalang', NULL, 59),
('Masantol', NULL, 59),
('Mexico', NULL, 59),
('Minalin', NULL, 59),
('Porac', NULL, 59),
('San Luis', NULL, 59),
('San Simon', NULL, 59),
('Santa Ana', NULL, 59),
('Santa Rita', NULL, 59),
('Santo Tomas', NULL, 59),
('Sasmuan', NULL, 59),
('Alaminos City', NULL, 60),
('Dagupan City', NULL, 60),
('San Carlos City', NULL, 60),
('Urdaneta City', NULL, 60),
('Agno', NULL, 60),
('Aguilar', NULL, 60),
('Alcala', NULL, 60),
('Anda', NULL, 60),
('Asingan', NULL, 60),
('Balungao', NULL, 60),
('Bani', NULL, 60),
('Basista', NULL, 60),
('Bautista', NULL, 60),
('Bayambang', NULL, 60),
('Binalonan', NULL, 60),
('Binmaley', NULL, 60),
('Bolinao', NULL, 60),
('Bugallon', NULL, 60),
('Burgos', NULL, 60),
('Calasiao', NULL, 60),
('Dasol', NULL, 60),
('Infanta', NULL, 60),
('Labrador', NULL, 60),
('Laoac', NULL, 60),
('Lingayen', NULL, 60),
('Mabini', NULL, 60),
('Malasiqui', NULL, 60),
('Manaoag', NULL, 60),
('Mangaldan', NULL, 60),
('Mangatarem', NULL, 60),
('Mapandan', NULL, 60),
('Natividad', NULL, 60),
('Pozzorubio', NULL, 60),
('Rosales', NULL, 60),
('San Fabian', NULL, 60),
('San Jacinto', NULL, 60),
('San Manuel', NULL, 60),
('San Nicolas', NULL, 60),
('San Quintin', NULL, 60),
('Santa Barbara', NULL, 60),
('Santa Maria', NULL, 60),
('Santo Tomas', NULL, 60),
('Sison', NULL, 60),
('Sual', NULL, 60),
('Tayug', NULL, 60),
('Umingan', NULL, 60),
('Urbiztondo', NULL, 60),
('Villasis', NULL, 60),
('Lucena City', NULL, 61),
('Tayabas City', NULL, 61),
('Agdangan', NULL, 61),
('Alabat', NULL, 61),
('Atimonan', NULL, 61),
('Buenavista', NULL, 61),
('Burdeos', NULL, 61),
('Calauag', NULL, 61),
('Candelaria', NULL, 61),
('Catanauan', NULL, 61),
('Dolores', NULL, 61),
('General Luna', NULL, 61),
('General Nakar', NULL, 61),
('Guinayangan', NULL, 61),
('Gumaca', NULL, 61),
('Infanta', NULL, 61),
('Jomalig', NULL, 61),
('Lopez', NULL, 61),
('Lucban', NULL, 61),
('Macalelon', NULL, 61),
('Mauban', NULL, 61),
('Mulanay', NULL, 61),
('Padre Burgos', NULL, 61),
('Pagbilao', NULL, 61),
('Panukulan', NULL, 61),
('Patnanungan', NULL, 61),
('Perez', NULL, 61),
('Pitogo', NULL, 61),
('Plaridel', NULL, 61),
('Polillo', NULL, 61),
('Quezon', NULL, 61),
('Real', NULL, 61),
('Sampaloc', NULL, 61),
('San Andres', NULL, 61),
('San Antonio', NULL, 61),
('San Francisco', NULL, 61),
('San Narciso', NULL, 61),
('Sariaya', NULL, 61),
('Tagkawayan', NULL, 61),
('Tiaong', NULL, 61),
('Unisan', NULL, 61),
('Aglipay', NULL, 62),
('Cabarroguis', NULL, 62),
('Diffun', NULL, 62),
('Maddela', NULL, 62),
('Nagtipunan', NULL, 62),
('Saguday', NULL, 62),
('Antipolo City', NULL, 63),
('Angono', NULL, 63),
('Baras', NULL, 63),
('Binangonan', NULL, 63),
('Cainta', NULL, 63),
('Cardona', NULL, 63),
('Jalajala', NULL, 63),
('Morong', NULL, 63),
('Pililla', NULL, 63),
('Rodriguez', NULL, 63),
('San Mateo', NULL, 63),
('Tanay', NULL, 63),
('Taytay', NULL, 63),
('Teresa', NULL, 63),
('Alcantara', NULL, 64),
('Banton', NULL, 64),
('Cajidiocan', NULL, 64),
('Calatrava', NULL, 64),
('Concepcion', NULL, 64),
('Corcuera', NULL, 64),
('Ferrol', NULL, 64),
('Looc', NULL, 64),
('Magdiwang', NULL, 64),
('Odiongan', NULL, 64),
('Romblon', NULL, 64),
('San Agustin', NULL, 64),
('San Andres', NULL, 64),
('San Fernando', NULL, 64),
('San Jose', NULL, 64),
('Santa Fe', NULL, 64),
('Santa Maria', NULL, 64),
('Calbayog City', NULL, 65),
('Catbalogan City', NULL, 65),
('Almagro', NULL, 65),
('Basey', NULL, 65),
('Calbiga', NULL, 65),
('Daram', NULL, 65),
('Gandara', NULL, 65),
('Hinabangan', NULL, 65),
('Jiabong', NULL, 65),
('Marabut', NULL, 65),
('Matuguinao', NULL, 65),
('Motiong', NULL, 65),
('Pagsanghan', NULL, 65),
('Paranas', NULL, 65),
('Pinabacdao', NULL, 65),
('San Jorge', NULL, 65),
('San Jose De Buan', NULL, 65),
('San Sebastian', NULL, 65),
('Santa Margarita', NULL, 65),
('Santa Rita', NULL, 65),
('Santo Niño', NULL, 65),
('Tagapul-an', NULL, 65),
('Talalora', NULL, 65),
('Tarangnan', NULL, 65),
('Villareal', NULL, 65),
('Zumarraga', NULL, 65),
('Alabel', NULL, 66),
('Glan', NULL, 66),
('Kiamba', NULL, 66),
('Maasim', NULL, 66),
('Maitum', NULL, 66),
('Malapatan', NULL, 66),
('Malungon', NULL, 66),
('Enrique Villanueva', NULL, 67),
('Larena', NULL, 67),
('Lazi', NULL, 67),
('Maria', NULL, 67),
('San Juan', NULL, 67),
('Siquijor', NULL, 67),
('Sorsogon City', NULL, 68),
('Barcelona', NULL, 68),
('Bulan', NULL, 68),
('Bulusan', NULL, 68),
('Casiguran', NULL, 68),
('Castilla', NULL, 68),
('Donsol', NULL, 68),
('Gubat', NULL, 68),
('Irosin', NULL, 68),
('Juban', NULL, 68),
('Magallanes', NULL, 68),
('Matnog', NULL, 68),
('Pilar', NULL, 68),
('Prieto Diaz', NULL, 68),
('Santa Magdalena', NULL, 68),
('General Santos City', NULL, 69),
('Koronadal City', NULL, 69),
('Banga', NULL, 69),
('Lake Sebu', NULL, 69),
('Norala', NULL, 69),
('Polomolok', NULL, 69),
('Santo Niño', NULL, 69),
('Surallah', NULL, 69),
('T\'boli', NULL, 69),
('Tampakan', NULL, 69),
('Tantangan', NULL, 69),
('Tupi', NULL, 69),
('Maasin City', NULL, 70),
('Anahawan', NULL, 70),
('Bontoc', NULL, 70),
('Hinunangan', NULL, 70),
('Hinundayan', NULL, 70),
('Libagon', NULL, 70),
('Liloan', NULL, 70),
('Limasawa', NULL, 70),
('Macrohon', NULL, 70),
('Malitbog', NULL, 70),
('Padre Burgos', NULL, 70),
('Pintuyan', NULL, 70),
('Saint Bernard', NULL, 70),
('San Francisco', NULL, 70),
('San Juan', NULL, 70),
('San Ricardo', NULL, 70),
('Silago', NULL, 70),
('Sogod', NULL, 70),
('Tomas Oppus', NULL, 70),
('Tacurong City', NULL, 71),
('Bagumbayan', NULL, 71),
('Columbio', NULL, 71),
('Esperanza', NULL, 71),
('Isulan', NULL, 71),
('Kalamansig', NULL, 71),
('Lambayong', NULL, 71),
('Lebak', NULL, 71),
('Lutayan', NULL, 71),
('Palimbang', NULL, 71),
('President Quirino', NULL, 71),
('Senator Ninoy Aquino', NULL, 71),
('Banguingui', NULL, 72),
('Hadji Panglima Tahil', NULL, 72),
('Indanan', NULL, 72),
('Jolo', NULL, 72),
('Kalingalan Caluang', NULL, 72),
('Lugus', NULL, 72),
('Luuk', NULL, 72),
('Maimbung', NULL, 72),
('Old Panamao', NULL, 72),
('Omar', NULL, 72),
('Pandami', NULL, 72),
('Panglima Estino', NULL, 72),
('Pangutaran', NULL, 72),
('Parang', NULL, 72),
('Pata', NULL, 72),
('Patikul', NULL, 72),
('Siasi', NULL, 72),
('Talipao', NULL, 72),
('Tapul', NULL, 72),
('Surigao City', NULL, 73),
('Alegria', NULL, 73),
('Bacuag', NULL, 73),
('Basilisa', NULL, 73),
('Burgos', NULL, 73),
('Cagdianao', NULL, 73),
('Claver', NULL, 73),
('Dapa', NULL, 73),
('Del Carmen', NULL, 73),
('Dinagat', NULL, 73),
('General Luna', NULL, 73),
('Gigaquit', NULL, 73),
('Libjo', NULL, 73),
('Loreto', NULL, 73),
('Mainit', NULL, 73),
('Malimono', NULL, 73),
('Pilar', NULL, 73),
('Placer', NULL, 73),
('San Benito', NULL, 73),
('San Francisco', NULL, 73),
('San Isidro', NULL, 73),
('San Jose', NULL, 73),
('Santa Monica', NULL, 73),
('Sison', NULL, 73),
('Socorro', NULL, 73),
('Tagana-an', NULL, 73),
('Tubajon', NULL, 73),
('Tubod', NULL, 73),
('Bislig City', NULL, 74),
('Tandag City', NULL, 74),
('Barobo', NULL, 74),
('Bayabas', NULL, 74),
('Cagwait', NULL, 74),
('Cantilan', NULL, 74),
('Carmen', NULL, 74),
('Carrascal', NULL, 74),
('Cortes', NULL, 74),
('Hinatuan', NULL, 74),
('Lanuza', NULL, 74),
('Lianga', NULL, 74),
('Lingig', NULL, 74),
('Madrid', NULL, 74),
('Marihatag', NULL, 74),
('San Agustin', NULL, 74),
('San Miguel', NULL, 74),
('Tagbina', NULL, 74),
('Tago', NULL, 74),
('Tarlac City', NULL, 75),
('Anao', NULL, 75),
('Bamban', NULL, 75),
('Camiling', NULL, 75),
('Capas', NULL, 75),
('Concepcion', NULL, 75),
('Gerona', NULL, 75),
('La Paz', NULL, 75),
('Mayantoc', NULL, 75),
('Moncada', NULL, 75),
('Paniqui', NULL, 75),
('Pura', NULL, 75),
('Ramos', NULL, 75),
('San Clemente', NULL, 75),
('San Jose', NULL, 75),
('San Manuel', NULL, 75),
('Santa Ignacia', NULL, 75),
('Victoria', NULL, 75),
('Bongao', NULL, 76),
('Languyan', NULL, 76),
('Mapun', NULL, 76),
('Panglima Sugala', NULL, 76),
('Sapa-Sapa', NULL, 76),
('Sibutu', NULL, 76),
('Simunul', NULL, 76),
('Sitangkai', NULL, 76),
('South Ubian', NULL, 76),
('Tandubas', NULL, 76),
('Turtle Islands', NULL, 76),
('Olongapo City', NULL, 77),
('Botolan', NULL, 77),
('Cabangan', NULL, 77),
('Candelaria', NULL, 77),
('Castillejos', NULL, 77),
('Iba', NULL, 77),
('Masinloc', NULL, 77),
('Palauig', NULL, 77),
('San Antonio', NULL, 77),
('San Felipe', NULL, 77),
('San Marcelino', NULL, 77),
('San Narciso', NULL, 77),
('Santa Cruz', NULL, 77),
('Subic', NULL, 77),
('Dapitan City', NULL, 78),
('Dipolog City', NULL, 78),
('Bacungan', NULL, 78),
('Baliguian', NULL, 78),
('Godod', NULL, 78),
('Gutalac', NULL, 78),
('Jose Dalman', NULL, 78),
('Kalawit', NULL, 78),
('Katipunan', NULL, 78),
('La Libertad', NULL, 78),
('Labason', NULL, 78),
('Liloy', NULL, 78),
('Manukan', NULL, 78),
('Mutia', NULL, 78),
('Piñan', NULL, 78),
('Polanco', NULL, 78),
('President Manuel A. Roxas', NULL, 78),
('Rizal', NULL, 78),
('Salug', NULL, 78),
('Sergio Osmeña Sr.', NULL, 78),
('Siayan', NULL, 78),
('Sibuco', NULL, 78),
('Sibutad', NULL, 78),
('Sindangan', NULL, 78),
('Siocon', NULL, 78),
('Sirawai', NULL, 78),
('Tampilisan', NULL, 78),
('Pagadian City', NULL, 79),
('Zamboanga City', NULL, 79),
('Aurora', NULL, 79),
('Bayog', NULL, 79),
('Dimataling', NULL, 79),
('Dinas', NULL, 79),
('Dumalinao', NULL, 79),
('Dumingag', NULL, 79),
('Guipos', NULL, 79),
('Josefina', NULL, 79),
('Kumalarang', NULL, 79),
('Labangan', NULL, 79),
('Lakewood', NULL, 79),
('Lapuyan', NULL, 79),
('Mahayag', NULL, 79),
('Margosatubig', NULL, 79),
('Midsalip', NULL, 79),
('Molave', NULL, 79),
('Pitogo', NULL, 79),
('Ramon Magsaysay', NULL, 79),
('San Miguel', NULL, 79),
('San Pablo', NULL, 79),
('Sominot', NULL, 79),
('Tabina', NULL, 79),
('Tambulig', NULL, 79),
('Tigbao', NULL, 79),
('Tukuran', NULL, 79),
('Vincenzo A. Sagun', NULL, 79),
('Alicia', NULL, 80),
('Buug', NULL, 80),
('Diplahan', NULL, 80),
('Imelda', NULL, 80),
('Ipil', NULL, 80),
('Kabasalan', NULL, 80),
('Mabuhay', NULL, 80),
('Malangas', NULL, 80),
('Naga', NULL, 80),
('Olutanga', NULL, 80),
('Payao', NULL, 80),
('Roseller Lim', NULL, 80),
('Siay', NULL, 80),
('Talusan', NULL, 80),
('Titay', NULL, 80),
('Tungawan', NULL, 80);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `iso` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `iso3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numcode` int(11) DEFAULT NULL,
  `phonecode` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `iso`, `iso3`, `numcode`, `phonecode`, `status`, `created_at`, `updated_at`) VALUES
(1, 'AFGHANISTAN', 'AF', 'AFG', 4, 93, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(2, 'ALBANIA', 'AL', 'ALB', 8, 355, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(3, 'ALGERIA', 'DZ', 'DZA', 12, 213, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(4, 'AMERICAN SAMOA', 'AS', 'ASM', 16, 1684, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(5, 'ANDORRA', 'AD', 'AND', 20, 376, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(6, 'ANGOLA', 'AO', 'AGO', 24, 244, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(7, 'ANGUILLA', 'AI', 'AIA', 660, 1264, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(8, 'ANTARCTICA', 'AQ', NULL, NULL, 0, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(9, 'ANTIGUA AND BARBUDA', 'AG', 'ATG', 28, 1268, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(10, 'ARGENTINA', 'AR', 'ARG', 32, 54, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(11, 'ARMENIA', 'AM', 'ARM', 51, 374, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(12, 'ARUBA', 'AW', 'ABW', 533, 297, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(13, 'AUSTRALIA', 'AU', 'AUS', 36, 61, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(14, 'AUSTRIA', 'AT', 'AUT', 40, 43, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(15, 'AZERBAIJAN', 'AZ', 'AZE', 31, 994, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(16, 'BAHAMAS', 'BS', 'BHS', 44, 1242, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(17, 'BAHRAIN', 'BH', 'BHR', 48, 973, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(18, 'BANGLADESH', 'BD', 'BGD', 50, 880, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(19, 'BARBADOS', 'BB', 'BRB', 52, 1246, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(20, 'BELARUS', 'BY', 'BLR', 112, 375, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(21, 'BELGIUM', 'BE', 'BEL', 56, 32, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(22, 'BELIZE', 'BZ', 'BLZ', 84, 501, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(23, 'BENIN', 'BJ', 'BEN', 204, 229, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(24, 'BERMUDA', 'BM', 'BMU', 60, 1441, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(25, 'BHUTAN', 'BT', 'BTN', 64, 975, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(26, 'BOLIVIA', 'BO', 'BOL', 68, 591, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(27, 'BOSNIA AND HERZEGOVINA', 'BA', 'BIH', 70, 387, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(28, 'BOTSWANA', 'BW', 'BWA', 72, 267, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(29, 'BOUVET ISLAND', 'BV', NULL, NULL, 0, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(30, 'BRAZIL', 'BR', 'BRA', 76, 55, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(31, 'BRITISH INDIAN OCEAN TERRITORY', 'IO', NULL, NULL, 246, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(32, 'BRUNEI DARUSSALAM', 'BN', 'BRN', 96, 673, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(33, 'BULGARIA', 'BG', 'BGR', 100, 359, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(34, 'BURKINA FASO', 'BF', 'BFA', 854, 226, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(35, 'BURUNDI', 'BI', 'BDI', 108, 257, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(36, 'CAMBODIA', 'KH', 'KHM', 116, 855, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(37, 'CAMEROON', 'CM', 'CMR', 120, 237, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(38, 'CANADA', 'CA', 'CAN', 124, 1, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(39, 'CAPE VERDE', 'CV', 'CPV', 132, 238, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(40, 'CAYMAN ISLANDS', 'KY', 'CYM', 136, 1345, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(41, 'CENTRAL AFRICAN REPUBLIC', 'CF', 'CAF', 140, 236, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(42, 'CHAD', 'TD', 'TCD', 148, 235, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(43, 'CHILE', 'CL', 'CHL', 152, 56, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(44, 'CHINA', 'CN', 'CHN', 156, 86, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(45, 'CHRISTMAS ISLAND', 'CX', NULL, NULL, 61, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(46, 'COCOS (KEELING) ISLANDS', 'CC', NULL, NULL, 672, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(47, 'COLOMBIA', 'CO', 'COL', 170, 57, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(48, 'COMOROS', 'KM', 'COM', 174, 269, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(49, 'CONGO', 'CG', 'COG', 178, 242, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(50, 'CONGO, THE DEMOCRATIC REPUBLIC OF THE', 'CD', 'COD', 180, 242, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(51, 'COOK ISLANDS', 'CK', 'COK', 184, 682, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(52, 'COSTA RICA', 'CR', 'CRI', 188, 506, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(53, 'COTE D\'IVOIRE', 'CI', 'CIV', 384, 225, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(54, 'CROATIA', 'HR', 'HRV', 191, 385, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(55, 'CUBA', 'CU', 'CUB', 192, 53, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(56, 'CYPRUS', 'CY', 'CYP', 196, 357, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(57, 'CZECH REPUBLIC', 'CZ', 'CZE', 203, 420, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(58, 'DENMARK', 'DK', 'DNK', 208, 45, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(59, 'DJIBOUTI', 'DJ', 'DJI', 262, 253, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(60, 'DOMINICA', 'DM', 'DMA', 212, 1767, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(61, 'DOMINICAN REPUBLIC', 'DO', 'DOM', 214, 1809, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(62, 'ECUADOR', 'EC', 'ECU', 218, 593, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(63, 'EGYPT', 'EG', 'EGY', 818, 20, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(64, 'EL SALVADOR', 'SV', 'SLV', 222, 503, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(65, 'EQUATORIAL GUINEA', 'GQ', 'GNQ', 226, 240, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(66, 'ERITREA', 'ER', 'ERI', 232, 291, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(67, 'ESTONIA', 'EE', 'EST', 233, 372, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(68, 'ETHIOPIA', 'ET', 'ETH', 231, 251, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(69, 'FALKLAND ISLANDS (MALVINAS)', 'FK', 'FLK', 238, 500, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(70, 'FAROE ISLANDS', 'FO', 'FRO', 234, 298, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(71, 'FIJI', 'FJ', 'FJI', 242, 679, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(72, 'FINLAND', 'FI', 'FIN', 246, 358, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(73, 'FRANCE', 'FR', 'FRA', 250, 33, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(74, 'FRENCH GUIANA', 'GF', 'GUF', 254, 594, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(75, 'FRENCH POLYNESIA', 'PF', 'PYF', 258, 689, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(76, 'FRENCH SOUTHERN TERRITORIES', 'TF', NULL, NULL, 0, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(77, 'GABON', 'GA', 'GAB', 266, 241, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(78, 'GAMBIA', 'GM', 'GMB', 270, 220, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(79, 'GEORGIA', 'GE', 'GEO', 268, 995, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(80, 'GERMANY', 'DE', 'DEU', 276, 49, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(81, 'GHANA', 'GH', 'GHA', 288, 233, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(82, 'GIBRALTAR', 'GI', 'GIB', 292, 350, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(83, 'GREECE', 'GR', 'GRC', 300, 30, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(84, 'GREENLAND', 'GL', 'GRL', 304, 299, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(85, 'GRENADA', 'GD', 'GRD', 308, 1473, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(86, 'GUADELOUPE', 'GP', 'GLP', 312, 590, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(87, 'GUAM', 'GU', 'GUM', 316, 1671, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(88, 'GUATEMALA', 'GT', 'GTM', 320, 502, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(89, 'GUINEA', 'GN', 'GIN', 324, 224, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(90, 'GUINEA-BISSAU', 'GW', 'GNB', 624, 245, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(91, 'GUYANA', 'GY', 'GUY', 328, 592, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(92, 'HAITI', 'HT', 'HTI', 332, 509, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(93, 'HEARD ISLAND AND MCDONALD ISLANDS', 'HM', NULL, NULL, 0, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(94, 'HOLY SEE (VATICAN CITY STATE)', 'VA', 'VAT', 336, 39, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(95, 'HONDURAS', 'HN', 'HND', 340, 504, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(96, 'HONG KONG', 'HK', 'HKG', 344, 852, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(97, 'HUNGARY', 'HU', 'HUN', 348, 36, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(98, 'ICELAND', 'IS', 'ISL', 352, 354, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(99, 'INDIA', 'IN', 'IND', 356, 91, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(100, 'INDONESIA', 'ID', 'IDN', 360, 62, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(101, 'IRAN, ISLAMIC REPUBLIC OF', 'IR', 'IRN', 364, 98, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(102, 'IRAQ', 'IQ', 'IRQ', 368, 964, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(103, 'IRELAND', 'IE', 'IRL', 372, 353, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(104, 'ISRAEL', 'IL', 'ISR', 376, 972, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(105, 'ITALY', 'IT', 'ITA', 380, 39, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(106, 'JAMAICA', 'JM', 'JAM', 388, 1876, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(107, 'JAPAN', 'JP', 'JPN', 392, 81, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(108, 'JORDAN', 'JO', 'JOR', 400, 962, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(109, 'KAZAKHSTAN', 'KZ', 'KAZ', 398, 7, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(110, 'KENYA', 'KE', 'KEN', 404, 254, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(111, 'KIRIBATI', 'KI', 'KIR', 296, 686, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(112, 'KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF', 'KP', 'PRK', 408, 850, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(113, 'KOREA, REPUBLIC OF', 'KR', 'KOR', 410, 82, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(114, 'KUWAIT', 'KW', 'KWT', 414, 965, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(115, 'KYRGYZSTAN', 'KG', 'KGZ', 417, 996, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(116, 'LAO PEOPLE\'S DEMOCRATIC REPUBLIC', 'LA', 'LAO', 418, 856, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(117, 'LATVIA', 'LV', 'LVA', 428, 371, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(118, 'LEBANON', 'LB', 'LBN', 422, 961, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(119, 'LESOTHO', 'LS', 'LSO', 426, 266, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(120, 'LIBERIA', 'LR', 'LBR', 430, 231, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(121, 'LIBYAN ARAB JAMAHIRIYA', 'LY', 'LBY', 434, 218, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(122, 'LIECHTENSTEIN', 'LI', 'LIE', 438, 423, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(123, 'LITHUANIA', 'LT', 'LTU', 440, 370, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(124, 'LUXEMBOURG', 'LU', 'LUX', 442, 352, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(125, 'MACAO', 'MO', 'MAC', 446, 853, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(126, 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF', 'MK', 'MKD', 807, 389, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(127, 'MADAGASCAR', 'MG', 'MDG', 450, 261, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(128, 'MALAWI', 'MW', 'MWI', 454, 265, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(129, 'MALAYSIA', 'MY', 'MYS', 458, 60, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(130, 'MALDIVES', 'MV', 'MDV', 462, 960, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(131, 'MALI', 'ML', 'MLI', 466, 223, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(132, 'MALTA', 'MT', 'MLT', 470, 356, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(133, 'MARSHALL ISLANDS', 'MH', 'MHL', 584, 692, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(134, 'MARTINIQUE', 'MQ', 'MTQ', 474, 596, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(135, 'MAURITANIA', 'MR', 'MRT', 478, 222, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(136, 'MAURITIUS', 'MU', 'MUS', 480, 230, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(137, 'MAYOTTE', 'YT', NULL, NULL, 269, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(138, 'MEXICO', 'MX', 'MEX', 484, 52, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(139, 'MICRONESIA, FEDERATED STATES OF', 'FM', 'FSM', 583, 691, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(140, 'MOLDOVA, REPUBLIC OF', 'MD', 'MDA', 498, 373, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(141, 'MONACO', 'MC', 'MCO', 492, 377, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(142, 'MONGOLIA', 'MN', 'MNG', 496, 976, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(143, 'MONTSERRAT', 'MS', 'MSR', 500, 1664, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(144, 'MOROCCO', 'MA', 'MAR', 504, 212, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(145, 'MOZAMBIQUE', 'MZ', 'MOZ', 508, 258, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(146, 'MYANMAR', 'MM', 'MMR', 104, 95, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(147, 'NAMIBIA', 'NA', 'NAM', 516, 264, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(148, 'NAURU', 'NR', 'NRU', 520, 674, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(149, 'NEPAL', 'NP', 'NPL', 524, 977, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(150, 'NETHERLANDS', 'NL', 'NLD', 528, 31, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(151, 'NETHERLANDS ANTILLES', 'AN', 'ANT', 530, 599, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(152, 'NEW CALEDONIA', 'NC', 'NCL', 540, 687, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(153, 'NEW ZEALAND', 'NZ', 'NZL', 554, 64, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(154, 'NICARAGUA', 'NI', 'NIC', 558, 505, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(155, 'NIGER', 'NE', 'NER', 562, 227, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(156, 'NIGERIA', 'NG', 'NGA', 566, 234, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(157, 'NIUE', 'NU', 'NIU', 570, 683, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(158, 'NORFOLK ISLAND', 'NF', 'NFK', 574, 672, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(159, 'NORTHERN MARIANA ISLANDS', 'MP', 'MNP', 580, 1670, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(160, 'NORWAY', 'NO', 'NOR', 578, 47, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(161, 'OMAN', 'OM', 'OMN', 512, 968, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(162, 'PAKISTAN', 'PK', 'PAK', 586, 92, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(163, 'PALAU', 'PW', 'PLW', 585, 680, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(164, 'PALESTINIAN TERRITORY, OCCUPIED', 'PS', NULL, NULL, 970, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(165, 'PANAMA', 'PA', 'PAN', 591, 507, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(166, 'PAPUA NEW GUINEA', 'PG', 'PNG', 598, 675, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(167, 'PARAGUAY', 'PY', 'PRY', 600, 595, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(168, 'PERU', 'PE', 'PER', 604, 51, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(169, 'PHILIPPINES', 'PH', 'PHL', 608, 63, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(170, 'PITCAIRN', 'PN', 'PCN', 612, 0, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(171, 'POLAND', 'PL', 'POL', 616, 48, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(172, 'PORTUGAL', 'PT', 'PRT', 620, 351, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(173, 'PUERTO RICO', 'PR', 'PRI', 630, 1787, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(174, 'QATAR', 'QA', 'QAT', 634, 974, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(175, 'REUNION', 'RE', 'REU', 638, 262, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(176, 'ROMANIA', 'RO', 'ROM', 642, 40, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(177, 'RUSSIAN FEDERATION', 'RU', 'RUS', 643, 70, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(178, 'RWANDA', 'RW', 'RWA', 646, 250, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(179, 'SAINT HELENA', 'SH', 'SHN', 654, 290, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(180, 'SAINT KITTS AND NEVIS', 'KN', 'KNA', 659, 1869, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(181, 'SAINT LUCIA', 'LC', 'LCA', 662, 1758, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(182, 'SAINT PIERRE AND MIQUELON', 'PM', 'SPM', 666, 508, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(183, 'SAINT VINCENT AND THE GRENADINES', 'VC', 'VCT', 670, 1784, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(184, 'SAMOA', 'WS', 'WSM', 882, 684, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(185, 'SAN MARINO', 'SM', 'SMR', 674, 378, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(186, 'SAO TOME AND PRINCIPE', 'ST', 'STP', 678, 239, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(187, 'SAUDI ARABIA', 'SA', 'SAU', 682, 966, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(188, 'SENEGAL', 'SN', 'SEN', 686, 221, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(189, 'SERBIA AND MONTENEGRO', 'CS', NULL, NULL, 381, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(190, 'SEYCHELLES', 'SC', 'SYC', 690, 248, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(191, 'SIERRA LEONE', 'SL', 'SLE', 694, 232, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(192, 'SINGAPORE', 'SG', 'SGP', 702, 65, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(193, 'SLOVAKIA', 'SK', 'SVK', 703, 421, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(194, 'SLOVENIA', 'SI', 'SVN', 705, 386, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(195, 'SOLOMON ISLANDS', 'SB', 'SLB', 90, 677, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(196, 'SOMALIA', 'SO', 'SOM', 706, 252, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(197, 'SOUTH AFRICA', 'ZA', 'ZAF', 710, 27, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(198, 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS', 'GS', NULL, NULL, 0, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(199, 'SPAIN', 'ES', 'ESP', 724, 34, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(200, 'SRI LANKA', 'LK', 'LKA', 144, 94, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(201, 'SUDAN', 'SD', 'SDN', 736, 249, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(202, 'SURINAME', 'SR', 'SUR', 740, 597, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(203, 'SVALBARD AND JAN MAYEN', 'SJ', 'SJM', 744, 47, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(204, 'SWAZILAND', 'SZ', 'SWZ', 748, 268, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(205, 'SWEDEN', 'SE', 'SWE', 752, 46, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(206, 'SWITZERLAND', 'CH', 'CHE', 756, 41, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(207, 'SYRIAN ARAB REPUBLIC', 'SY', 'SYR', 760, 963, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(208, 'TAIWAN, PROVINCE OF CHINA', 'TW', 'TWN', 158, 886, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(209, 'TAJIKISTAN', 'TJ', 'TJK', 762, 992, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(210, 'TANZANIA, UNITED REPUBLIC OF', 'TZ', 'TZA', 834, 255, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(211, 'THAILAND', 'TH', 'THA', 764, 66, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(212, 'TIMOR-LESTE', 'TL', NULL, NULL, 670, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(213, 'TOGO', 'TG', 'TGO', 768, 228, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(214, 'TOKELAU', 'TK', 'TKL', 772, 690, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(215, 'TONGA', 'TO', 'TON', 776, 676, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(216, 'TRINIDAD AND TOBAGO', 'TT', 'TTO', 780, 1868, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(217, 'TUNISIA', 'TN', 'TUN', 788, 216, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(218, 'TURKEY', 'TR', 'TUR', 792, 90, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(219, 'TURKMENISTAN', 'TM', 'TKM', 795, 7370, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(220, 'TURKS AND CAICOS ISLANDS', 'TC', 'TCA', 796, 1649, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(221, 'TUVALU', 'TV', 'TUV', 798, 688, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(222, 'UGANDA', 'UG', 'UGA', 800, 256, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(223, 'UKRAINE', 'UA', 'UKR', 804, 380, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(224, 'UNITED ARAB EMIRATES', 'AE', 'ARE', 784, 971, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(225, 'UNITED KINGDOM', 'GB', 'GBR', 826, 44, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(226, 'UNITED STATES OF AMERICA', 'US', 'USA', 840, 1, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(227, 'UNITED STATES MINOR OUTLYING ISLANDS', 'UM', NULL, NULL, 1, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(228, 'URUGUAY', 'UY', 'URY', 858, 598, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(229, 'UZBEKISTAN', 'UZ', 'UZB', 860, 998, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(230, 'VANUATU', 'VU', 'VUT', 548, 678, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(231, 'VENEZUELA', 'VE', 'VEN', 862, 58, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(232, 'VIET NAM', 'VN', 'VNM', 704, 84, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(233, 'VIRGIN ISLANDS, BRITISH', 'VG', 'VGB', 92, 1284, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(234, 'VIRGIN ISLANDS, U.S.', 'VI', 'VIR', 850, 1340, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(235, 'WALLIS AND FUTUNA', 'WF', 'WLF', 876, 681, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(236, 'WESTERN SAHARA', 'EH', 'ESH', 732, 212, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(237, 'YEMEN', 'YE', 'YEM', 887, 967, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(238, 'ZAMBIA', 'ZM', 'ZMB', 894, 260, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(239, 'ZIMBABWE', 'ZW', 'ZWE', 716, 263, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02');

-- --------------------------------------------------------

--
-- Table structure for table `couriers`
--

CREATE TABLE `couriers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_free` int(11) NOT NULL,
  `cost` decimal(8,2) DEFAULT '0.00',
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `couriers`
--

INSERT INTO `couriers` (`id`, `name`, `description`, `url`, `is_free`, `cost`, `status`, `created_at`, `updated_at`) VALUES
(1, 'nil', 'helow nil', NULL, 1, '0.00', 1, '2019-01-04 18:00:00', NULL),
(2, 'nil', 'helow nil', NULL, 1, '0.00', 1, '2019-01-04 18:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_brand` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_last_four` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `password`, `status`, `stripe_id`, `card_brand`, `card_last_four`, `trial_ends_at`, `deleted_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Marjorie', 'forest01@example.org', '$2y$10$v7UbEF6EEFzV7jD9y52TeuRSdqrXYSVXT64jbpFaMsy3qy1XVt29i', 1, NULL, NULL, NULL, NULL, NULL, 'IxIK3VW5r6', '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(2, 'nawaz sharif', 'nawazsharif.csm@gmail.com', '$2y$10$3VFQSzxunO.UGu8UQeBtuue9/m9pOR.OV/IDcLOKtV6Hns2G5v2w6', 1, NULL, NULL, NULL, NULL, NULL, NULL, '2019-01-05 08:46:14', '2019-01-05 08:46:14'),
(3, 'nawaz sharif', 'sharifn121@gmail.com', '$2y$10$XMlUmtQGqQWxwBSeaY9Qa.gB4JIwDthR/5T/P8vTAugYuk9GwtqTi', 1, NULL, NULL, NULL, NULL, NULL, 'JMecKvjMArLZhthVk9411vnf2mwPN7QHgBglBywEKGuGVAt9VGM24lWEj5MR', '2019-01-19 03:19:26', '2019-01-19 03:19:26');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `email`, `password`, `status`, `deleted_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Cara', 'john@doe.com', '$2y$10$GAoo1VVQQQiqRAK2ddoWAOZwxtZmjRLBe.MMNddymJAwq56Nyd4T.', 1, NULL, 'i9FQXzrkxh', '2019-01-05 08:13:01', '2019-01-05 08:13:01'),
(2, 'Wendell', 'admin@doe.com', '$2y$10$GAoo1VVQQQiqRAK2ddoWAOZwxtZmjRLBe.MMNddymJAwq56Nyd4T.', 1, NULL, 'GlAQUb5bim', '2019-01-05 08:13:01', '2019-01-05 08:13:01'),
(3, 'Hazle', 'clerk@doe.com', '$2y$10$GAoo1VVQQQiqRAK2ddoWAOZwxtZmjRLBe.MMNddymJAwq56Nyd4T.', 1, NULL, 'dKJrbzffkb', '2019-01-05 08:13:01', '2019-01-05 08:13:01');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_customers_table', 1),
(2, '2014_10_12_000010_create_employees_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2016_05_26_020731_create_country_table', 1),
(5, '2016_05_26_035202_create_provinces_table', 1),
(6, '2016_05_26_051502_create_cities_table', 1),
(7, '2017_06_10_225235_create_products_table', 1),
(8, '2017_06_11_015526_create_categories_table', 1),
(9, '2017_06_11_033553_create_category_product_table', 1),
(10, '2017_06_11_073305_create_address_table', 1),
(11, '2017_06_12_225546_create_order_status_table', 1),
(12, '2017_06_13_044714_create_couriers_table', 1),
(13, '2017_06_13_053346_create_orders_table', 1),
(14, '2017_06_13_091740_create_order_products_table', 1),
(15, '2017_06_17_011245_create_shoppingcart_table', 1),
(16, '2018_01_18_163143_create_product_images_table', 1),
(17, '2018_02_19_151228_create_cost_column', 1),
(18, '2018_03_10_024148_laratrust_setup_tables', 1),
(19, '2018_03_10_110530_create_attributes_table', 1),
(20, '2018_03_10_150920_create_attribute_values_table', 1),
(21, '2018_03_11_014046_create_product_attributes_table', 1),
(22, '2018_03_11_090249_create_attribute_value_product_attribute_table', 1),
(23, '2018_03_15_232344_create_customer_subscription_table', 1),
(24, '2018_06_16_000410_add_fields_on_order_product_table', 1),
(25, '2018_06_16_102641_create_brands_table', 1),
(26, '2018_06_17_175657_add_brand_id_in_products_table', 1),
(27, '2018_06_18_135142_add_columns_in_product_attributes_table', 1),
(28, '2018_06_30_041523_add_product_attributes', 1),
(29, '2018_07_03_023925_create_states_table', 1),
(30, '2018_07_16_184224_add_phone_number_in_address_table', 1),
(31, '2018_07_16_190024_add_tracking_number_and_label_url_to_orders_table', 1),
(32, '2018_07_17_184437_add_sale_price_in_products_table', 1),
(33, '2018_11_06_031246_add_product_attribute_id_column_in_order_product_table', 1),
(34, '2018_11_06_123452_add_total_shipping_in_orders_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `courier_id` int(10) UNSIGNED NOT NULL,
  `courier` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `address_id` int(10) UNSIGNED NOT NULL,
  `order_status_id` int(10) UNSIGNED NOT NULL,
  `payment` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discounts` decimal(8,2) NOT NULL DEFAULT '0.00',
  `total_products` decimal(8,2) NOT NULL,
  `total_shipping` decimal(8,2) NOT NULL DEFAULT '0.00',
  `tax` decimal(8,2) NOT NULL DEFAULT '0.00',
  `total` decimal(8,2) NOT NULL,
  `total_paid` decimal(8,2) NOT NULL DEFAULT '0.00',
  `invoice` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_product`
--

CREATE TABLE `order_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `product_attribute_id` int(10) UNSIGNED DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_description` text COLLATE utf8mb4_unicode_ci,
  `product_price` decimal(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_statuses`
--

CREATE TABLE `order_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('nawazsharif.csm@gmail.com', '$2y$10$o294rtEZ/BKHCIl/q8RUL.u0N/kIn17HP70FxX6ZgCZ6nZ8i1krua', '2019-01-17 09:17:07');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'create-product', 'Create product', '', '2019-01-05 08:13:01', '2019-01-05 08:13:01'),
(2, 'view-product', 'View product', '', '2019-01-05 08:13:01', '2019-01-05 08:13:01'),
(3, 'update-product', 'Update product', '', '2019-01-05 08:13:01', '2019-01-05 08:13:01'),
(4, 'delete-product', 'Delete product', '', '2019-01-05 08:13:01', '2019-01-05 08:13:01'),
(5, 'update-order', 'Update order', '', '2019-01-05 08:13:01', '2019-01-05 08:13:01');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 2),
(2, 3),
(3, 1),
(3, 2),
(3, 3),
(4, 1),
(4, 2),
(5, 1),
(5, 2);

-- --------------------------------------------------------

--
-- Table structure for table `permission_user`
--

CREATE TABLE `permission_user` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `brand_id` int(10) UNSIGNED DEFAULT NULL,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `cover` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `sale_price` decimal(8,2) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `length` decimal(8,2) DEFAULT NULL,
  `width` decimal(8,2) DEFAULT NULL,
  `height` decimal(8,2) DEFAULT NULL,
  `distance_unit` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` decimal(8,2) DEFAULT '0.00',
  `mass_unit` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `topsell` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `brand_id`, `sku`, `name`, `slug`, `description`, `cover`, `quantity`, `price`, `sale_price`, `status`, `length`, `width`, `height`, `distance_unit`, `weight`, `mass_unit`, `created_at`, `updated_at`, `topsell`) VALUES
(1, 1, '1074560', 'Ratione quia labore in nihil ut a cumque.', 'ratione-quia-labore-in-nihil-ut-a-cumque', '<p>Magnam eum mollitia ipsum voluptatem. Asperiores ut perspiciatis nisi aut vel aliquam nihil quia. Cum recusandae sed cupiditate est.</p>', 'products/x4WN6fedQHSwNEsHXQxajBipTxRgQQAN9SNSASuH.png', 10, '5.00', NULL, 1, NULL, NULL, NULL, NULL, '5.00', 'lbs', '2019-01-05 08:13:02', '2019-01-18 10:19:48', 1),
(2, 1, '1081498', 'Voluptatem tempore excepturi dolore consectetur.', 'voluptatem-tempore-excepturi-dolore-consectetur', 'Distinctio quo amet et nihil. Et ut fugit dolor ipsa ea nihil. Voluptatum qui rerum quia necessitatibus praesentium numquam.', 'products/mZZwQIYR28haomn96741StGtUsjIssAJejTS3SfI.png', 10, '5.00', NULL, 1, NULL, NULL, NULL, NULL, '5.00', 'lbs', '2019-01-05 08:13:02', '2019-01-05 08:13:02', 0),
(3, 1, '1072889', 'Ut sequi ratione alias rerum magni dolor omnis.', 'ut-sequi-ratione-alias-rerum-magni-dolor-omnis', '<p>Et <gwmw class=\"ginger-module-highlighter-mistake-type-1\" id=\"gwmw-15477448926700396620930\">explicabo</gwmw> dolor <gwmw class=\"ginger-module-highlighter-mistake-type-3\" id=\"gwmw-15477448926706518246748\">iusto sit</gwmw> <gwmw class=\"ginger-module-highlighter-mistake-type-1\" id=\"gwmw-15477448926706563861393\">nam</gwmw>. Eaque perferendis et distinctio officiis. Ut et recusandae maiores id accusamus minima fuga. Animi quam vitae est tempore quis.</p>', 'products/3r2Y5x74tqFAfSqa0qVE26ABAhmY0vRv2B1687NF.png', 10, '5.00', NULL, 1, NULL, NULL, NULL, NULL, '5.00', 'lbs', '2019-01-05 08:13:02', '2019-01-17 11:08:13', 0),
(4, 1, '1091518', 'Eos deserunt commodi repudiandae aut a exercitationem itaque.', 'eos-deserunt-commodi-repudiandae-aut-a-exercitationem-itaque', 'Recusandae ratione vel perspiciatis ipsa omnis deserunt. Ratione vel magni beatae omnis aliquam. Fugit rerum et provident impedit debitis explicabo qui cupiditate. Quam voluptatem facere nobis.', 'products/IXhbvcdfi84w1dOhYkLo6MkoMZMxfD19wV0SiLIH.png', 10, '5.00', NULL, 1, NULL, NULL, NULL, NULL, '5.00', 'lbs', '2019-01-05 08:13:02', '2019-01-05 08:13:02', 0),
(5, 1, '1086682', 'Quam iure temporibus dolorum nesciunt.', 'quam-iure-temporibus-dolorum-nesciunt', '<p>1Adipisci eum delectus cupiditate quam ipsam blanditiis. Qui eveniet sunt facilis sapiente. Ut vel suscipit eos illum labore est. Ut non rem tempore et debitis provident et eum.</p>', 'products/HagxNDPJB6nIMKdEkYKLI2HR4jPBsfi1fJopeL4l.png', 10, '5.00', NULL, 1, NULL, NULL, NULL, NULL, '5.00', 'lbs', '2019-01-05 08:13:02', '2019-01-18 08:56:22', 1),
(6, 1, '1059323', 'Repudiandae eius et explicabo nam et necessitatibus.', 'repudiandae-eius-et-explicabo-nam-et-necessitatibus', '<p>Atque aut aut ut accusamus sed et. Libero officia est est. Animi ipsam sint voluptatem et eum.</p>', 'products/QJqeMSctsFnnUfnIAG2sX21FqmFhgddRlp5Xx9x4.png', 10, '5.00', NULL, 1, NULL, NULL, NULL, NULL, '5.00', 'lbs', '2019-01-05 08:13:02', '2019-01-18 12:06:14', 0),
(7, 1, '1001074', 'Vero modi distinctio numquam vero enim.', 'vero-modi-distinctio-numquam-vero-enim', '<p>Sit <gwmw class=\"ginger-module-highlighter-mistake-type-1\" id=\"gwmw-15478285344096179761040\">aliquid</gwmw> <gwmw class=\"ginger-module-highlighter-mistake-type-1\" id=\"gwmw-15478285344090867071144\">aperiam</gwmw> <gwmw class=\"ginger-module-highlighter-mistake-type-1\" id=\"gwmw-15478285344090883157991\">qui et</gwmw> <gwmw class=\"ginger-module-highlighter-mistake-type-1\" id=\"gwmw-15478285344090919530499\">nesciunt</gwmw>. Asperiores assumenda sequi sunt esse molestias. Eveniet quia qui non optio.</p>', 'products/VOU1dsJQ4uJ4JFwQTfeQ6ZtOCNjOzKzNVciVoO22.png', 10, '5.00', NULL, 1, NULL, NULL, NULL, NULL, '5.00', 'lbs', '2019-01-05 08:13:02', '2019-01-18 10:22:18', 1),
(8, 1, '1016848', 'Qui accusamus dolore eveniet quaerat.', 'qui-accusamus-dolore-eveniet-quaerat', 'Quae dolores et aperiam voluptatem. Tempore non nesciunt dolorum error aut voluptate voluptas. Omnis nulla veritatis est commodi pariatur aut.', 'products/Tc2nf7E3mPZCpBZGTd26AdwSd80XFIrJI6LC1QOU.png', 10, '5.00', NULL, 1, NULL, NULL, NULL, NULL, '5.00', 'lbs', '2019-01-05 08:13:02', '2019-01-05 08:13:02', 0),
(9, 1, '1105491', 'Corporis consequatur non commodi vitae.', 'corporis-consequatur-non-commodi-vitae', 'Iusto fugit dicta sunt. Occaecati quis est et dolores accusantium qui distinctio. Aut consectetur sint hic accusantium nihil repellendus repellat. Vero aut a eveniet veritatis esse aut.', 'products/gIoKAy1C9PmeOkGuXt1NSntwR22ntCTx1xGUN8V5.png', 10, '5.00', NULL, 1, NULL, NULL, NULL, NULL, '5.00', 'lbs', '2019-01-05 08:13:02', '2019-01-05 08:13:02', 0),
(10, 1, '1107849', 'Aut atque debitis accusamus sed nobis.', 'aut-atque-debitis-accusamus-sed-nobis', '<p>Vel consequatur molestias voluptatibus dignissimos ipsum iste. Qui nihil qui blanditiis non sit velit. Repellendus aut reprehenderit adipisci voluptatem. <gwmw class=\"ginger-module-highlighter-mistake-type-1\" id=\"gwmw-15478233691043408513710\">Aut</gwmw> <gwmw class=\"ginger-module-highlighter-mistake-type-1\" id=\"gwmw-15478233691043655171436\">amet</gwmw> <gwmw class=\"ginger-module-highlighter-mistake-type-1\" id=\"gwmw-15478233691040411976577\">cupiditate</gwmw> <gwmw class=\"ginger-module-highlighter-mistake-type-1\" id=\"gwmw-15478233691046367971841\">ipsam</gwmw> alias.</p>', 'products/YSWyqC13EGtWpFj9HX5HwTKIuGpKb5b9jUmWRVxC.png', 10, '5.00', NULL, 1, NULL, NULL, NULL, NULL, '5.00', 'lbs', '2019-01-05 08:13:02', '2019-01-18 08:56:10', 1),
(11, 1, '1055117', 'Enim sit enim minima hic.', 'enim-sit-enim-minima-hic', '<p>Aut totam harum tenetur. Cupiditate quia nam et vel et similique rerum. Explicabo ut voluptatibus laboriosam sunt ut voluptas omnis.</p>', 'products/OshfyvdMq7Mof6c4PlgriGtAd2MWEmyGq6INsZrL.jpeg', 10, '5.00', NULL, 1, NULL, NULL, NULL, NULL, '5.00', 'lbs', '2019-01-05 08:13:02', '2019-01-18 12:06:01', 1),
(12, 1, '1073272', 'Enim voluptas molestiae placeat quia laudantium fuga ut.', 'enim-voluptas-molestiae-placeat-quia-laudantium-fuga-ut', '<p>1Laboriosam <gwmw class=\"ginger-module-highlighter-mistake-type-1\" id=\"gwmw-15478285158018554907914\">velit</gwmw> sit dolor <gwmw class=\"ginger-module-highlighter-mistake-type-1\" id=\"gwmw-15478285158016915212186\">officiis</gwmw> <gwmw class=\"ginger-module-highlighter-mistake-type-1\" id=\"gwmw-15478285158014231575756\">enim</gwmw> <gwmw class=\"ginger-module-highlighter-mistake-type-2\" id=\"gwmw-15478285158018728195438\">a</gwmw>. <gwmw class=\"ginger-module-highlighter-mistake-type-1\" id=\"gwmw-15478285166811992296446\">Repellat</gwmw> <gwmw class=\"ginger-module-highlighter-mistake-type-1\" id=\"gwmw-15478285166818687237523\">vero</gwmw> <gwmw class=\"ginger-module-highlighter-mistake-type-1\" id=\"gwmw-15478285166813107063336\">accusamus</gwmw> <gwmw class=\"ginger-module-highlighter-mistake-type-1\" id=\"gwmw-15478285166810563914326\">earum</gwmw> minus. Voluptas ipsa eveniet unde provident omnis.</p>\r\n\r\n<p>Log in</p>\r\n\r\n<p>to use Ginger</p>\r\n\r\n<p>Limited mode</p>\r\n\r\n<p>Repellant vero accusamus earum minus</p>\r\n\r\n<p><a href=\"javascript:\">&times;</a></p>\r\n\r\n<p>Log in</p>\r\n\r\n<p>to use Ginger</p>\r\n\r\n<p>Limited mode</p>\r\n\r\n<p>Repellant vero accusamus earum minus</p>\r\n\r\n<p><a href=\"javascript:\">&times;</a></p>', 'products/43G4xoiRBNLb1bJ4Trxk1SqPceBi0IYWG1GT3a1Z.jpeg', 10, '5.00', '3.00', 1, NULL, NULL, NULL, NULL, '0.00', 'lbs', '2019-01-05 08:13:02', '2019-01-18 10:21:57', 1),
(13, 1, 'test', 'test', 'test', '<p><gwmw class=\"ginger-module-highlighter-mistake-type-1\" id=\"gwmw-15478233233745738617445\">test</gwmw></p>', 'products/qpfO7oH1WdUCFFR3cZ1wHWm3MpTlpIRiOmfMUgpa.jpeg', 33, '12.00', NULL, 1, NULL, NULL, NULL, NULL, '0.00', 'lbs', '2019-01-17 09:40:37', '2019-01-18 08:55:27', 1),
(14, 1, 'tester', 're', 're', '<p><gwmw class=\"ginger-module-highlighter-mistake-type-1\" id=\"gwmw-15477415815709876715526\">rere</gwmw></p>', 'products/7dwPW6hZQmSdJGAL40dzmVFDJoGIu9bp9eCgFO1L.jpeg', 33, '343.00', '344.00', 1, NULL, NULL, NULL, NULL, '0.00', 'lbs', '2019-01-17 09:58:25', '2019-01-17 10:13:12', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_attributes`
--

CREATE TABLE `product_attributes` (
  `id` int(10) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  `sale_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default` tinyint(4) NOT NULL DEFAULT '0',
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `src` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `src`) VALUES
(2, 11, 'products/047biGgGJtYYnBJr9gBJY1cnEbVOzff5usT0eGZK.jpeg'),
(3, 11, 'products/j8n1y5Kd1O5jNdEgziuq9Dwhf0naGIU2yEb7NCEW.jpeg'),
(4, 12, 'products/MxreqTNztw2fhU4MK9TblU8ciAdAPKClkxIzVPmx.jpeg'),
(5, 13, 'products/gRoaCQicFtaIBVc40L1Qcg6C5G6D6f3FeuoHvbCO.jpeg'),
(6, 14, 'products/SaxHxjuLG6ozlfRJGHT812rSzFfOwdy2He3fm55Y.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `provinces`
--

CREATE TABLE `provinces` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` int(10) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `provinces`
--

INSERT INTO `provinces` (`id`, `name`, `country_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Abra', 169, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(2, 'Agusan del Norte', 169, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(3, 'Agusan del Sur', 169, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(4, 'Aklan', 169, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(5, 'Albay', 169, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(6, 'Antique', 169, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(7, 'Apayao', 169, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(8, 'Aurora', 169, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(9, 'Basilan', 169, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(10, 'Bataan', 169, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(11, 'Batanes', 169, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(12, 'Batangas', 169, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(13, 'Benguet', 169, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(14, 'Biliran', 169, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(15, 'Bohol', 169, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(16, 'Bukidnon', 169, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(17, 'Bulacan', 169, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(18, 'Cagayan', 169, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(19, 'Camarines Norte', 169, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(20, 'Camarines Sur', 169, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(21, 'Camiguin', 169, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(22, 'Capiz', 169, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(23, 'Catanduanes', 169, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(24, 'Cavite', 169, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(25, 'Cebu', 169, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(26, 'Compostela Valley', 169, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(27, 'Cotabato', 169, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(28, 'Davao del Norte', 169, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(29, 'Davao del Sur', 169, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(30, 'Davao Oriental', 169, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(31, 'Eastern Samar', 169, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(32, 'Guimaras', 169, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(33, 'Ifugao', 169, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(34, 'Ilocos Norte', 169, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(35, 'Ilocos Sur', 169, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(36, 'Iloilo', 169, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(37, 'Isabela', 169, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(38, 'Kalinga', 169, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(39, 'La Union', 169, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(40, 'Laguna', 169, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(41, 'Lanao del Norte', 169, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(42, 'Lanao del Sur', 169, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(43, 'Leyte', 169, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(44, 'Maguindanao', 169, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(45, 'Marinduque', 169, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(46, 'Masbate', 169, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(47, 'Metro Manila', 169, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(48, 'Misamis Occidental', 169, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(49, 'Misamis Oriental', 169, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(50, 'Mountain Province', 169, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(51, 'Negros Occidental', 169, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(52, 'Negros Oriental', 169, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(53, 'Northern Samar', 169, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(54, 'Nueva Ecija', 169, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(55, 'Nueva Vizcaya', 169, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(56, 'Occidental Mindoro', 169, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(57, 'Oriental Mindoro', 169, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(58, 'Palawan', 169, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(59, 'Pampanga', 169, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(60, 'Pangasinan', 169, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(61, 'Quezon', 169, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(62, 'Quirino', 169, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(63, 'Rizal', 169, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(64, 'Romblon', 169, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(65, 'Samar', 169, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(66, 'Sarangani', 169, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(67, 'Siquijor', 169, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(68, 'Sorsogon', 169, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(69, 'South Cotabato', 169, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(70, 'Southern Leyte', 169, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(71, 'Sultan Kudarat', 169, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(72, 'Sulu', 169, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(73, 'Surigao del Norte', 169, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(74, 'Surigao del Sur', 169, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(75, 'Tarlac', 169, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(76, 'Tawi-Tawi', 169, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(77, 'Zambales', 169, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(78, 'Zamboanga del Norte', 169, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(79, 'Zamboanga del Sur', 169, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02'),
(80, 'Zamboanga Sibugay', 169, 1, '2019-01-05 08:13:02', '2019-01-05 08:13:02');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'superadmin', 'Super Admin', '', '2019-01-05 08:13:01', '2019-01-05 08:13:01'),
(2, 'admin', 'Admin', '', '2019-01-05 08:13:01', '2019-01-05 08:13:01'),
(3, 'clerk', 'Clerk', '', '2019-01-05 08:13:01', '2019-01-05 08:13:01');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`role_id`, `user_id`, `user_type`) VALUES
(1, 1, 'App\\Shop\\Employees\\Employee'),
(2, 2, 'App\\Shop\\Employees\\Employee'),
(3, 3, 'App\\Shop\\Employees\\Employee');

-- --------------------------------------------------------

--
-- Table structure for table `shoppingcart`
--

CREATE TABLE `shoppingcart` (
  `identifier` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_plan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `ends_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addresses_country_id_index` (`country_id`),
  ADD KEY `addresses_customer_id_index` (`customer_id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attributes_name_unique` (`name`);

--
-- Indexes for table `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attribute_values_attribute_id_foreign` (`attribute_id`);

--
-- Indexes for table `attribute_value_product_attribute`
--
ALTER TABLE `attribute_value_product_attribute`
  ADD KEY `attribute_value_product_attribute_attribute_value_id_foreign` (`attribute_value_id`),
  ADD KEY `attribute_value_product_attribute_product_attribute_id_foreign` (`product_attribute_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD KEY `categories__lft__rgt_parent_id_index` (`_lft`,`_rgt`,`parent_id`);

--
-- Indexes for table `category_product`
--
ALTER TABLE `category_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_product_category_id_index` (`category_id`),
  ADD KEY `category_product_product_id_index` (`product_id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD KEY `cities_province_id_foreign` (`province_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `countries_name_unique` (`name`),
  ADD UNIQUE KEY `countries_iso_unique` (`iso`);

--
-- Indexes for table `couriers`
--
ALTER TABLE `couriers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_email_unique` (`email`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employees_email_unique` (`email`);

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
  ADD UNIQUE KEY `orders_reference_unique` (`reference`),
  ADD KEY `orders_courier_id_index` (`courier_id`),
  ADD KEY `orders_customer_id_index` (`customer_id`),
  ADD KEY `orders_address_id_index` (`address_id`),
  ADD KEY `orders_order_status_id_index` (`order_status_id`);

--
-- Indexes for table `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_product_order_id_index` (`order_id`),
  ADD KEY `order_product_product_id_index` (`product_id`);

--
-- Indexes for table `order_statuses`
--
ALTER TABLE `order_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`user_id`,`permission_id`,`user_type`),
  ADD KEY `permission_user_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_attributes_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_index` (`product_id`);

--
-- Indexes for table `provinces`
--
ALTER TABLE `provinces`
  ADD PRIMARY KEY (`id`),
  ADD KEY `provinces_country_id_index` (`country_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`,`user_type`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `shoppingcart`
--
ALTER TABLE `shoppingcart`
  ADD PRIMARY KEY (`identifier`,`instance`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD KEY `states_country_id_foreign` (`country_id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attribute_values`
--
ALTER TABLE `attribute_values`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `category_product`
--
ALTER TABLE `category_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;

--
-- AUTO_INCREMENT for table `couriers`
--
ALTER TABLE `couriers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_product`
--
ALTER TABLE `order_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_statuses`
--
ALTER TABLE `order_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `product_attributes`
--
ALTER TABLE `product_attributes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `provinces`
--
ALTER TABLE `provinces`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`),
  ADD CONSTRAINT `addresses_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`);

--
-- Constraints for table `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD CONSTRAINT `attribute_values_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`);

--
-- Constraints for table `attribute_value_product_attribute`
--
ALTER TABLE `attribute_value_product_attribute`
  ADD CONSTRAINT `attribute_value_product_attribute_attribute_value_id_foreign` FOREIGN KEY (`attribute_value_id`) REFERENCES `attribute_values` (`id`),
  ADD CONSTRAINT `attribute_value_product_attribute_product_attribute_id_foreign` FOREIGN KEY (`product_attribute_id`) REFERENCES `product_attributes` (`id`);

--
-- Constraints for table `category_product`
--
ALTER TABLE `category_product`
  ADD CONSTRAINT `category_product_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `category_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `cities_province_id_foreign` FOREIGN KEY (`province_id`) REFERENCES `provinces` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_address_id_foreign` FOREIGN KEY (`address_id`) REFERENCES `addresses` (`id`),
  ADD CONSTRAINT `orders_courier_id_foreign` FOREIGN KEY (`courier_id`) REFERENCES `couriers` (`id`),
  ADD CONSTRAINT `orders_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `orders_order_status_id_foreign` FOREIGN KEY (`order_status_id`) REFERENCES `order_statuses` (`id`);

--
-- Constraints for table `order_product`
--
ALTER TABLE `order_product`
  ADD CONSTRAINT `order_product_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD CONSTRAINT `product_attributes_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `provinces`
--
ALTER TABLE `provinces`
  ADD CONSTRAINT `provinces_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`);

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `states`
--
ALTER TABLE `states`
  ADD CONSTRAINT `states_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
