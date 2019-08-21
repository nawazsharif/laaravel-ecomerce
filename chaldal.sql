-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 12, 2019 at 07:08 PM
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
-- Database: `chaldal`
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
(8, 'Nawaz', 'nikunjo 2 Khilkhet dhaka', NULL, '2990', NULL, NULL, NULL, 18, 3, 1, '01781554418', NULL, '2019-01-25 10:51:42', '2019-01-25 10:51:42'),
(9, 'Home', 'Mohakhali dohs Dhaka', NULL, '40640', NULL, NULL, NULL, 18, 3, 1, '01781554418', NULL, '2019-01-28 13:24:20', '2019-01-28 13:24:20');

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
(1, 'test', '2019-01-20 03:54:51', '2019-01-20 03:54:51'),
(2, 'test2', '2019-01-20 03:55:01', '2019-01-20 03:55:01'),
(3, 'test3', '2019-01-20 03:55:09', '2019-01-20 03:55:09');

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
(1, 'Toys', 'toys', '<p>Maxime vero ipsa id magni harum iste dolorem. <gwmw class=\"ginger-module-highlighter-mistake-type-1\" id=\"gwmw-15490481053427414102532\">Est</gwmw> <gwmw class=\"ginger-module-highlighter-mistake-type-1\" id=\"gwmw-15490481053426264669705\">corrupti</gwmw> provident et <gwmw class=\"ginger-module-highlighter-mistake-type-1\" id=\"gwmw-15490481053427295454328\">tempore</gwmw>. Possimus voluptatem temporibus aut debitis odit.</p>', 'categories/AfLE4DqobqKwBu7hbZBGdaO64.jpg', 1, '2019-01-20 03:50:12', '2019-02-01 13:08:33', 1, 2, NULL),
(2, 'Feeding', 'feeding', '<p>Omnis pariatur libero quia ut. Consectetur eos dolorum nulla optio laboriosam. At dolor <gwmw class=\"ginger-module-highlighter-mistake-type-1\" id=\"gwmw-15490481241856370825984\">ut</gwmw> <gwmw class=\"ginger-module-highlighter-mistake-type-1\" id=\"gwmw-15490481241853129959486\">assumenda</gwmw> <gwmw class=\"ginger-module-highlighter-mistake-type-1\" id=\"gwmw-15490481241854463902122\">repudiandae</gwmw>. Numquam maiores explicabo modi commodi vel aut.</p>', 'categories/j69ZO0XASq7YAycDwVjg2A5wC.jpg', 1, '2019-01-20 03:50:12', '2019-02-01 13:08:47', 3, 8, NULL),
(3, 'Household', 'household', '<p>Suscipit aut voluptatem et voluptas asperiores officia et nobis. Est eos et totam doloremque a quia ipsum. Ut dicta libero qui placeat tenetur illum ipsum ullam. Officia quo qui consectetur quia est unde mollitia.</p>', 'categories/bkLAe6yJnCTDHt13HXurXSRTe.jpg', 1, '2019-01-20 03:50:12', '2019-02-01 13:09:04', 9, 10, NULL),
(4, 'test', 'test', NULL, 'categories/DObOYmtg4zsc9hXCXJA150QU0.jpg', 1, '2019-02-01 14:24:00', '2019-02-01 14:24:00', 4, 7, 2),
(5, 'retest', 'retest', NULL, 'categories/sL9EYTOr4fCoXTc6SEjYG2Asx.jpg', 0, '2019-02-02 09:26:51', '2019-02-02 09:26:51', 5, 6, 4);

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
(7, 3, 7),
(8, 3, 8),
(9, 3, 9),
(10, 3, 10),
(11, 3, 11),
(12, 3, 12),
(13, 1, 12),
(14, 1, 11),
(15, 2, 13),
(16, 1, 13),
(17, 4, 6);

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
(1, 'AFGHANISTAN', 'AF', 'AFG', 4, 93, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(2, 'ALBANIA', 'AL', 'ALB', 8, 355, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(3, 'ALGERIA', 'DZ', 'DZA', 12, 213, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(4, 'AMERICAN SAMOA', 'AS', 'ASM', 16, 1684, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(5, 'ANDORRA', 'AD', 'AND', 20, 376, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(6, 'ANGOLA', 'AO', 'AGO', 24, 244, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(7, 'ANGUILLA', 'AI', 'AIA', 660, 1264, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(8, 'ANTARCTICA', 'AQ', NULL, NULL, 0, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(9, 'ANTIGUA AND BARBUDA', 'AG', 'ATG', 28, 1268, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(10, 'ARGENTINA', 'AR', 'ARG', 32, 54, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(11, 'ARMENIA', 'AM', 'ARM', 51, 374, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(12, 'ARUBA', 'AW', 'ABW', 533, 297, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(13, 'AUSTRALIA', 'AU', 'AUS', 36, 61, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(14, 'AUSTRIA', 'AT', 'AUT', 40, 43, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(15, 'AZERBAIJAN', 'AZ', 'AZE', 31, 994, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(16, 'BAHAMAS', 'BS', 'BHS', 44, 1242, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(17, 'BAHRAIN', 'BH', 'BHR', 48, 973, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(18, 'BANGLADESH', 'BD', 'BGD', 50, 880, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(19, 'BARBADOS', 'BB', 'BRB', 52, 1246, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(20, 'BELARUS', 'BY', 'BLR', 112, 375, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(21, 'BELGIUM', 'BE', 'BEL', 56, 32, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(22, 'BELIZE', 'BZ', 'BLZ', 84, 501, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(23, 'BENIN', 'BJ', 'BEN', 204, 229, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(24, 'BERMUDA', 'BM', 'BMU', 60, 1441, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(25, 'BHUTAN', 'BT', 'BTN', 64, 975, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(26, 'BOLIVIA', 'BO', 'BOL', 68, 591, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(27, 'BOSNIA AND HERZEGOVINA', 'BA', 'BIH', 70, 387, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(28, 'BOTSWANA', 'BW', 'BWA', 72, 267, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(29, 'BOUVET ISLAND', 'BV', NULL, NULL, 0, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(30, 'BRAZIL', 'BR', 'BRA', 76, 55, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(31, 'BRITISH INDIAN OCEAN TERRITORY', 'IO', NULL, NULL, 246, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(32, 'BRUNEI DARUSSALAM', 'BN', 'BRN', 96, 673, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(33, 'BULGARIA', 'BG', 'BGR', 100, 359, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(34, 'BURKINA FASO', 'BF', 'BFA', 854, 226, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(35, 'BURUNDI', 'BI', 'BDI', 108, 257, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(36, 'CAMBODIA', 'KH', 'KHM', 116, 855, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(37, 'CAMEROON', 'CM', 'CMR', 120, 237, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(38, 'CANADA', 'CA', 'CAN', 124, 1, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(39, 'CAPE VERDE', 'CV', 'CPV', 132, 238, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(40, 'CAYMAN ISLANDS', 'KY', 'CYM', 136, 1345, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(41, 'CENTRAL AFRICAN REPUBLIC', 'CF', 'CAF', 140, 236, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(42, 'CHAD', 'TD', 'TCD', 148, 235, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(43, 'CHILE', 'CL', 'CHL', 152, 56, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(44, 'CHINA', 'CN', 'CHN', 156, 86, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(45, 'CHRISTMAS ISLAND', 'CX', NULL, NULL, 61, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(46, 'COCOS (KEELING) ISLANDS', 'CC', NULL, NULL, 672, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(47, 'COLOMBIA', 'CO', 'COL', 170, 57, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(48, 'COMOROS', 'KM', 'COM', 174, 269, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(49, 'CONGO', 'CG', 'COG', 178, 242, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(50, 'CONGO, THE DEMOCRATIC REPUBLIC OF THE', 'CD', 'COD', 180, 242, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(51, 'COOK ISLANDS', 'CK', 'COK', 184, 682, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(52, 'COSTA RICA', 'CR', 'CRI', 188, 506, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(53, 'COTE D\'IVOIRE', 'CI', 'CIV', 384, 225, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(54, 'CROATIA', 'HR', 'HRV', 191, 385, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(55, 'CUBA', 'CU', 'CUB', 192, 53, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(56, 'CYPRUS', 'CY', 'CYP', 196, 357, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(57, 'CZECH REPUBLIC', 'CZ', 'CZE', 203, 420, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(58, 'DENMARK', 'DK', 'DNK', 208, 45, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(59, 'DJIBOUTI', 'DJ', 'DJI', 262, 253, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(60, 'DOMINICA', 'DM', 'DMA', 212, 1767, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(61, 'DOMINICAN REPUBLIC', 'DO', 'DOM', 214, 1809, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(62, 'ECUADOR', 'EC', 'ECU', 218, 593, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(63, 'EGYPT', 'EG', 'EGY', 818, 20, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(64, 'EL SALVADOR', 'SV', 'SLV', 222, 503, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(65, 'EQUATORIAL GUINEA', 'GQ', 'GNQ', 226, 240, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(66, 'ERITREA', 'ER', 'ERI', 232, 291, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(67, 'ESTONIA', 'EE', 'EST', 233, 372, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(68, 'ETHIOPIA', 'ET', 'ETH', 231, 251, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(69, 'FALKLAND ISLANDS (MALVINAS)', 'FK', 'FLK', 238, 500, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(70, 'FAROE ISLANDS', 'FO', 'FRO', 234, 298, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(71, 'FIJI', 'FJ', 'FJI', 242, 679, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(72, 'FINLAND', 'FI', 'FIN', 246, 358, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(73, 'FRANCE', 'FR', 'FRA', 250, 33, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(74, 'FRENCH GUIANA', 'GF', 'GUF', 254, 594, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(75, 'FRENCH POLYNESIA', 'PF', 'PYF', 258, 689, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(76, 'FRENCH SOUTHERN TERRITORIES', 'TF', NULL, NULL, 0, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(77, 'GABON', 'GA', 'GAB', 266, 241, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(78, 'GAMBIA', 'GM', 'GMB', 270, 220, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(79, 'GEORGIA', 'GE', 'GEO', 268, 995, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(80, 'GERMANY', 'DE', 'DEU', 276, 49, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(81, 'GHANA', 'GH', 'GHA', 288, 233, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(82, 'GIBRALTAR', 'GI', 'GIB', 292, 350, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(83, 'GREECE', 'GR', 'GRC', 300, 30, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(84, 'GREENLAND', 'GL', 'GRL', 304, 299, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(85, 'GRENADA', 'GD', 'GRD', 308, 1473, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(86, 'GUADELOUPE', 'GP', 'GLP', 312, 590, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(87, 'GUAM', 'GU', 'GUM', 316, 1671, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(88, 'GUATEMALA', 'GT', 'GTM', 320, 502, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(89, 'GUINEA', 'GN', 'GIN', 324, 224, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(90, 'GUINEA-BISSAU', 'GW', 'GNB', 624, 245, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(91, 'GUYANA', 'GY', 'GUY', 328, 592, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(92, 'HAITI', 'HT', 'HTI', 332, 509, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(93, 'HEARD ISLAND AND MCDONALD ISLANDS', 'HM', NULL, NULL, 0, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(94, 'HOLY SEE (VATICAN CITY STATE)', 'VA', 'VAT', 336, 39, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(95, 'HONDURAS', 'HN', 'HND', 340, 504, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(96, 'HONG KONG', 'HK', 'HKG', 344, 852, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(97, 'HUNGARY', 'HU', 'HUN', 348, 36, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(98, 'ICELAND', 'IS', 'ISL', 352, 354, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(99, 'INDIA', 'IN', 'IND', 356, 91, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(100, 'INDONESIA', 'ID', 'IDN', 360, 62, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(101, 'IRAN, ISLAMIC REPUBLIC OF', 'IR', 'IRN', 364, 98, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(102, 'IRAQ', 'IQ', 'IRQ', 368, 964, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(103, 'IRELAND', 'IE', 'IRL', 372, 353, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(104, 'ISRAEL', 'IL', 'ISR', 376, 972, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(105, 'ITALY', 'IT', 'ITA', 380, 39, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(106, 'JAMAICA', 'JM', 'JAM', 388, 1876, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(107, 'JAPAN', 'JP', 'JPN', 392, 81, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(108, 'JORDAN', 'JO', 'JOR', 400, 962, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(109, 'KAZAKHSTAN', 'KZ', 'KAZ', 398, 7, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(110, 'KENYA', 'KE', 'KEN', 404, 254, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(111, 'KIRIBATI', 'KI', 'KIR', 296, 686, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(112, 'KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF', 'KP', 'PRK', 408, 850, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(113, 'KOREA, REPUBLIC OF', 'KR', 'KOR', 410, 82, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(114, 'KUWAIT', 'KW', 'KWT', 414, 965, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(115, 'KYRGYZSTAN', 'KG', 'KGZ', 417, 996, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(116, 'LAO PEOPLE\'S DEMOCRATIC REPUBLIC', 'LA', 'LAO', 418, 856, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(117, 'LATVIA', 'LV', 'LVA', 428, 371, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(118, 'LEBANON', 'LB', 'LBN', 422, 961, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(119, 'LESOTHO', 'LS', 'LSO', 426, 266, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(120, 'LIBERIA', 'LR', 'LBR', 430, 231, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(121, 'LIBYAN ARAB JAMAHIRIYA', 'LY', 'LBY', 434, 218, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(122, 'LIECHTENSTEIN', 'LI', 'LIE', 438, 423, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(123, 'LITHUANIA', 'LT', 'LTU', 440, 370, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(124, 'LUXEMBOURG', 'LU', 'LUX', 442, 352, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(125, 'MACAO', 'MO', 'MAC', 446, 853, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(126, 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF', 'MK', 'MKD', 807, 389, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(127, 'MADAGASCAR', 'MG', 'MDG', 450, 261, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(128, 'MALAWI', 'MW', 'MWI', 454, 265, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(129, 'MALAYSIA', 'MY', 'MYS', 458, 60, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(130, 'MALDIVES', 'MV', 'MDV', 462, 960, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(131, 'MALI', 'ML', 'MLI', 466, 223, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(132, 'MALTA', 'MT', 'MLT', 470, 356, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(133, 'MARSHALL ISLANDS', 'MH', 'MHL', 584, 692, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(134, 'MARTINIQUE', 'MQ', 'MTQ', 474, 596, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(135, 'MAURITANIA', 'MR', 'MRT', 478, 222, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(136, 'MAURITIUS', 'MU', 'MUS', 480, 230, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(137, 'MAYOTTE', 'YT', NULL, NULL, 269, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(138, 'MEXICO', 'MX', 'MEX', 484, 52, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(139, 'MICRONESIA, FEDERATED STATES OF', 'FM', 'FSM', 583, 691, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(140, 'MOLDOVA, REPUBLIC OF', 'MD', 'MDA', 498, 373, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(141, 'MONACO', 'MC', 'MCO', 492, 377, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(142, 'MONGOLIA', 'MN', 'MNG', 496, 976, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(143, 'MONTSERRAT', 'MS', 'MSR', 500, 1664, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(144, 'MOROCCO', 'MA', 'MAR', 504, 212, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(145, 'MOZAMBIQUE', 'MZ', 'MOZ', 508, 258, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(146, 'MYANMAR', 'MM', 'MMR', 104, 95, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(147, 'NAMIBIA', 'NA', 'NAM', 516, 264, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(148, 'NAURU', 'NR', 'NRU', 520, 674, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(149, 'NEPAL', 'NP', 'NPL', 524, 977, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(150, 'NETHERLANDS', 'NL', 'NLD', 528, 31, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(151, 'NETHERLANDS ANTILLES', 'AN', 'ANT', 530, 599, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(152, 'NEW CALEDONIA', 'NC', 'NCL', 540, 687, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(153, 'NEW ZEALAND', 'NZ', 'NZL', 554, 64, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(154, 'NICARAGUA', 'NI', 'NIC', 558, 505, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(155, 'NIGER', 'NE', 'NER', 562, 227, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(156, 'NIGERIA', 'NG', 'NGA', 566, 234, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(157, 'NIUE', 'NU', 'NIU', 570, 683, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(158, 'NORFOLK ISLAND', 'NF', 'NFK', 574, 672, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(159, 'NORTHERN MARIANA ISLANDS', 'MP', 'MNP', 580, 1670, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(160, 'NORWAY', 'NO', 'NOR', 578, 47, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(161, 'OMAN', 'OM', 'OMN', 512, 968, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(162, 'PAKISTAN', 'PK', 'PAK', 586, 92, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(163, 'PALAU', 'PW', 'PLW', 585, 680, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(164, 'PALESTINIAN TERRITORY, OCCUPIED', 'PS', NULL, NULL, 970, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(165, 'PANAMA', 'PA', 'PAN', 591, 507, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(166, 'PAPUA NEW GUINEA', 'PG', 'PNG', 598, 675, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(167, 'PARAGUAY', 'PY', 'PRY', 600, 595, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(168, 'PERU', 'PE', 'PER', 604, 51, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(169, 'PHILIPPINES', 'PH', 'PHL', 608, 63, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(170, 'PITCAIRN', 'PN', 'PCN', 612, 0, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(171, 'POLAND', 'PL', 'POL', 616, 48, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(172, 'PORTUGAL', 'PT', 'PRT', 620, 351, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(173, 'PUERTO RICO', 'PR', 'PRI', 630, 1787, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(174, 'QATAR', 'QA', 'QAT', 634, 974, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(175, 'REUNION', 'RE', 'REU', 638, 262, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(176, 'ROMANIA', 'RO', 'ROM', 642, 40, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(177, 'RUSSIAN FEDERATION', 'RU', 'RUS', 643, 70, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(178, 'RWANDA', 'RW', 'RWA', 646, 250, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(179, 'SAINT HELENA', 'SH', 'SHN', 654, 290, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(180, 'SAINT KITTS AND NEVIS', 'KN', 'KNA', 659, 1869, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(181, 'SAINT LUCIA', 'LC', 'LCA', 662, 1758, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(182, 'SAINT PIERRE AND MIQUELON', 'PM', 'SPM', 666, 508, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(183, 'SAINT VINCENT AND THE GRENADINES', 'VC', 'VCT', 670, 1784, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(184, 'SAMOA', 'WS', 'WSM', 882, 684, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(185, 'SAN MARINO', 'SM', 'SMR', 674, 378, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(186, 'SAO TOME AND PRINCIPE', 'ST', 'STP', 678, 239, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(187, 'SAUDI ARABIA', 'SA', 'SAU', 682, 966, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(188, 'SENEGAL', 'SN', 'SEN', 686, 221, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(189, 'SERBIA AND MONTENEGRO', 'CS', NULL, NULL, 381, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(190, 'SEYCHELLES', 'SC', 'SYC', 690, 248, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(191, 'SIERRA LEONE', 'SL', 'SLE', 694, 232, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(192, 'SINGAPORE', 'SG', 'SGP', 702, 65, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(193, 'SLOVAKIA', 'SK', 'SVK', 703, 421, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(194, 'SLOVENIA', 'SI', 'SVN', 705, 386, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(195, 'SOLOMON ISLANDS', 'SB', 'SLB', 90, 677, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(196, 'SOMALIA', 'SO', 'SOM', 706, 252, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(197, 'SOUTH AFRICA', 'ZA', 'ZAF', 710, 27, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(198, 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS', 'GS', NULL, NULL, 0, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(199, 'SPAIN', 'ES', 'ESP', 724, 34, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(200, 'SRI LANKA', 'LK', 'LKA', 144, 94, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(201, 'SUDAN', 'SD', 'SDN', 736, 249, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(202, 'SURINAME', 'SR', 'SUR', 740, 597, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(203, 'SVALBARD AND JAN MAYEN', 'SJ', 'SJM', 744, 47, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(204, 'SWAZILAND', 'SZ', 'SWZ', 748, 268, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(205, 'SWEDEN', 'SE', 'SWE', 752, 46, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(206, 'SWITZERLAND', 'CH', 'CHE', 756, 41, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(207, 'SYRIAN ARAB REPUBLIC', 'SY', 'SYR', 760, 963, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(208, 'TAIWAN, PROVINCE OF CHINA', 'TW', 'TWN', 158, 886, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(209, 'TAJIKISTAN', 'TJ', 'TJK', 762, 992, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(210, 'TANZANIA, UNITED REPUBLIC OF', 'TZ', 'TZA', 834, 255, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(211, 'THAILAND', 'TH', 'THA', 764, 66, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(212, 'TIMOR-LESTE', 'TL', NULL, NULL, 670, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(213, 'TOGO', 'TG', 'TGO', 768, 228, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(214, 'TOKELAU', 'TK', 'TKL', 772, 690, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(215, 'TONGA', 'TO', 'TON', 776, 676, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(216, 'TRINIDAD AND TOBAGO', 'TT', 'TTO', 780, 1868, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(217, 'TUNISIA', 'TN', 'TUN', 788, 216, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(218, 'TURKEY', 'TR', 'TUR', 792, 90, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(219, 'TURKMENISTAN', 'TM', 'TKM', 795, 7370, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(220, 'TURKS AND CAICOS ISLANDS', 'TC', 'TCA', 796, 1649, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(221, 'TUVALU', 'TV', 'TUV', 798, 688, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(222, 'UGANDA', 'UG', 'UGA', 800, 256, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(223, 'UKRAINE', 'UA', 'UKR', 804, 380, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(224, 'UNITED ARAB EMIRATES', 'AE', 'ARE', 784, 971, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(225, 'UNITED KINGDOM', 'GB', 'GBR', 826, 44, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(226, 'UNITED STATES OF AMERICA', 'US', 'USA', 840, 1, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(227, 'UNITED STATES MINOR OUTLYING ISLANDS', 'UM', NULL, NULL, 1, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(228, 'URUGUAY', 'UY', 'URY', 858, 598, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(229, 'UZBEKISTAN', 'UZ', 'UZB', 860, 998, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(230, 'VANUATU', 'VU', 'VUT', 548, 678, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(231, 'VENEZUELA', 'VE', 'VEN', 862, 58, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(232, 'VIET NAM', 'VN', 'VNM', 704, 84, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(233, 'VIRGIN ISLANDS, BRITISH', 'VG', 'VGB', 92, 1284, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(234, 'VIRGIN ISLANDS, U.S.', 'VI', 'VIR', 850, 1340, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(235, 'WALLIS AND FUTUNA', 'WF', 'WLF', 876, 681, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(236, 'WESTERN SAHARA', 'EH', 'ESH', 732, 212, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(237, 'YEMEN', 'YE', 'YEM', 887, 967, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(238, 'ZAMBIA', 'ZM', 'ZMB', 894, 260, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(239, 'ZIMBABWE', 'ZW', 'ZWE', 716, 263, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13');

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
(1, 'ship', 'shipping time 15-20 days', NULL, 0, '30.00', 1, '2019-01-20 04:48:30', '2019-01-23 12:19:06'),
(2, 'Gift', NULL, NULL, 0, '100.00', 1, '2019-01-23 11:22:19', '2019-01-23 11:22:25'),
(3, 'Office Delivary', NULL, NULL, 1, '0.00', 1, '2019-01-23 12:18:36', '2019-01-23 12:18:43');

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
(3, 'Sha Md. Nawaz Sharif', 'sharifn121@gmail.com', '$2y$10$28YQheGy1A3bXqP0DEjA1ulpXWQH1PodeP2Hji6qVCxpcH7B3DntW', 1, NULL, NULL, NULL, NULL, NULL, 'zl6r8Ixx81CVvkK3Bal3IGS9faaoR6hJTLaYxWjcNnlrTuivjLTT5E1Ppr4F', '2019-01-25 10:50:45', '2019-01-25 10:50:45');

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
(1, 'Cortez', 'john@doe.com', '$2y$10$oMNeFx9zi8E.8VLpVee2bOxNOlzj.Mv.mA9qQ1A9x7QIHk3LhBF.m', 1, NULL, '4rJ7VdeluB', '2019-01-20 03:50:12', '2019-01-20 03:50:12'),
(2, 'Amani', 'admin@doe.com', '$2y$10$oMNeFx9zi8E.8VLpVee2bOxNOlzj.Mv.mA9qQ1A9x7QIHk3LhBF.m', 1, NULL, 'PYh6TIRgWf', '2019-01-20 03:50:12', '2019-01-20 03:50:12'),
(3, 'Irving', 'clerk@doe.com', '$2y$10$oMNeFx9zi8E.8VLpVee2bOxNOlzj.Mv.mA9qQ1A9x7QIHk3LhBF.m', 1, NULL, '3kDTJziw45', '2019-01-20 03:50:12', '2019-01-20 03:50:12');

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
  `updated_at` timestamp NULL DEFAULT NULL,
  `delivary_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `reference`, `courier_id`, `courier`, `customer_id`, `address_id`, `order_status_id`, `payment`, `discounts`, `total_products`, `total_shipping`, `tax`, `total`, `total_paid`, `invoice`, `label_url`, `tracking_number`, `created_at`, `updated_at`, `delivary_address`) VALUES
(10, '893f0ce6-ca8e-4e79-a6a8-782d68a8c509', 1, NULL, 3, 8, 1, 'stripe', '0.00', '50.00', '0.00', '0.00', '50.00', '50.00', NULL, NULL, NULL, '2019-01-25 10:54:40', '2019-01-25 10:54:40', NULL),
(11, '2a031001-7cb6-4762-9e99-2cfdbb2a1961', 1, NULL, 3, 8, 1, 'stripe', '0.00', '10.00', '0.00', '0.00', '10.00', '10.00', NULL, NULL, NULL, '2019-01-25 12:55:21', '2019-01-25 12:55:21', NULL),
(12, '021ddd52-c0fa-4912-b5bb-b0ff7c09222e', 1, NULL, 3, 8, 1, 'stripe', '0.00', '5.00', '0.00', '0.00', '5.00', '5.00', NULL, NULL, NULL, '2019-01-25 13:00:20', '2019-01-25 13:00:20', NULL),
(13, '1dd2d080-ee24-4dbd-9a01-2b53a74fd09c', 1, NULL, 3, 8, 1, 'stripe', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, NULL, '2019-01-25 13:01:18', '2019-01-25 13:01:18', NULL),
(14, '9589c880-b8d6-4154-a3a3-5c7fb8f9f3f6', 1, NULL, 3, 8, 1, 'stripe', '0.00', '5.00', '0.00', '0.00', '5.00', '5.00', NULL, NULL, NULL, '2019-01-25 13:34:05', '2019-01-25 13:34:05', NULL),
(15, 'b0fea5a1-f892-4862-be7f-c175f0c0313c', 1, NULL, 3, 8, 1, 'stripe', '0.00', '5.00', '0.00', '0.00', '5.00', '5.00', NULL, NULL, NULL, '2019-01-25 13:36:47', '2019-01-25 13:36:47', NULL),
(16, '9fb37276-207d-4bce-bd57-58b61753ce30', 1, NULL, 3, 8, 1, 'stripe', '0.00', '5.00', '0.00', '0.00', '5.00', '5.00', NULL, NULL, NULL, '2019-01-25 13:43:15', '2019-01-25 13:43:15', NULL),
(17, '59c44d77-baad-4eab-854f-7de36e659847', 1, NULL, 3, 8, 1, 'stripe', '0.00', '5.00', '0.00', '0.00', '5.00', '5.00', NULL, NULL, NULL, '2019-01-25 14:08:06', '2019-01-25 14:08:06', NULL),
(18, '56feac70-d488-41d4-ad0b-bca2c83493a6', 1, NULL, 3, 8, 1, 'stripe', '0.00', '5.00', '0.00', '0.00', '5.00', '5.00', NULL, NULL, NULL, '2019-01-25 14:22:10', '2019-01-25 14:22:10', NULL),
(19, 'eec00de6-30b4-4dc7-8368-5d93724eb187', 1, NULL, 3, 8, 1, 'stripe', '0.00', '5.00', '0.00', '0.00', '5.00', '5.00', NULL, NULL, NULL, '2019-01-25 14:23:41', '2019-01-25 14:23:41', NULL),
(20, '25569498-6d09-46bd-a816-79ef02cb56ae', 1, NULL, 3, 8, 1, 'stripe', '0.00', '100.00', '0.00', '0.00', '105.00', '105.00', NULL, NULL, NULL, '2019-01-25 14:34:04', '2019-01-25 14:34:04', NULL),
(21, 'c353ff3a-35d1-47b1-8d4d-769f96158ae4', 1, NULL, 3, 8, 1, 'stripe', '0.00', '30.00', '0.00', '0.00', '40.00', '40.00', NULL, NULL, NULL, '2019-01-25 14:35:13', '2019-01-25 14:35:13', NULL),
(22, '983a6dab-e180-43bb-9d29-17557c3b24a3', 1, NULL, 3, 8, 1, 'stripe', '0.00', '2.00', '0.00', '0.00', '7.00', '7.00', NULL, NULL, NULL, '2019-01-28 12:37:34', '2019-01-28 12:37:34', NULL),
(23, 'a4673571-9668-4e09-a5ac-9ba4faafbfdd', 2, NULL, 3, 8, 3, 'stripe', '0.00', '12.00', '0.00', '0.00', '112.00', '112.00', NULL, NULL, NULL, '2019-01-28 13:06:08', '2019-01-28 13:09:26', NULL),
(24, '9e3595d3-d03c-4c1a-a47b-033a2bebf75f', 3, NULL, 3, 8, 1, 'stripe', '0.00', '10.00', '0.00', '0.00', '10.00', '10.00', NULL, NULL, NULL, '2019-01-28 13:12:36', '2019-01-28 13:12:36', NULL),
(25, '0088b3df-cb15-4871-8f50-0082ca64babd', 2, NULL, 3, 8, 1, 'stripe', '0.00', '5.00', '0.00', '0.00', '105.00', '105.00', NULL, NULL, NULL, '2019-01-28 13:15:38', '2019-01-28 13:15:38', NULL),
(26, '9eb26451-fd44-4145-bbe5-f69c5cc4e077', 3, NULL, 3, 8, 1, 'stripe', '0.00', '5.00', '0.00', '0.00', '5.00', '5.00', NULL, NULL, NULL, '2019-01-28 13:28:01', '2019-01-28 13:28:01', NULL),
(27, '02fa662b-afd8-4632-b299-280932dcdd52', 3, NULL, 3, 8, 1, 'stripe', '0.00', '10.00', '0.00', '0.00', '10.00', '10.00', NULL, NULL, NULL, '2019-01-28 13:39:20', '2019-01-28 13:39:20', NULL),
(28, '6130c5b2-6fcb-4b86-8376-5adce94d742b', 2, NULL, 3, 8, 1, 'stripe', '0.00', '5.00', '0.00', '0.00', '105.00', '105.00', NULL, NULL, NULL, '2019-01-28 13:49:56', '2019-01-28 13:49:56', NULL),
(29, '1824baa6-2068-4d29-b824-1c289d5f06b4', 2, NULL, 3, 9, 1, 'stripe', '0.00', '5.00', '0.00', '0.00', '105.00', '105.00', NULL, NULL, NULL, '2019-01-29 10:33:30', '2019-01-29 10:33:30', NULL);

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

--
-- Dumping data for table `order_product`
--

INSERT INTO `order_product` (`id`, `order_id`, `product_id`, `product_attribute_id`, `quantity`, `product_name`, `product_sku`, `product_description`, `product_price`) VALUES
(2, 10, 11, NULL, 8, 'Voluptas sunt ex omnis consectetur neque dolorem repellendus id.', '1052037', '<p>Laudantium labore voluptatem magni voluptate beatae. Quo non quam quas magni. Facere error magnam animi pariatur saepe ab. Id qui et nulla laboriosam deleniti odit aut.</p>', '5.00'),
(3, 10, 7, NULL, 2, 'Voluptatem dolorem dolor perferendis reiciendis excepturi.', '1022511', '<p>Sunt rerum beatae aliquam nemo. Tempore ut non quia deserunt voluptas.</p>', '5.00'),
(4, 11, 11, NULL, 1, 'Voluptas sunt ex omnis consectetur neque dolorem repellendus id.', '1052037', '<p>Laudantium labore voluptatem magni voluptate beatae. Quo non quam quas magni. Facere error magnam animi pariatur saepe ab. Id qui et nulla laboriosam deleniti odit aut.</p>', '5.00'),
(5, 11, 1, NULL, 1, 'Tempora voluptates est dolore rerum eius fuga.', '1006436', 'Asperiores nam quas blanditiis officia aliquam rerum consequuntur dolore. Natus aut velit earum qui vero voluptas rerum. Sit sint quas voluptates.', '5.00'),
(6, 12, 11, NULL, 1, 'Voluptas sunt ex omnis consectetur neque dolorem repellendus id.', '1052037', '<p>Laudantium labore voluptatem magni voluptate beatae. Quo non quam quas magni. Facere error magnam animi pariatur saepe ab. Id qui et nulla laboriosam deleniti odit aut.</p>', '5.00'),
(7, 14, 11, NULL, 1, 'Voluptas sunt ex omnis consectetur neque dolorem repellendus id.', '1052037', '<p>Laudantium labore voluptatem magni voluptate beatae. Quo non quam quas magni. Facere error magnam animi pariatur saepe ab. Id qui et nulla laboriosam deleniti odit aut.</p>', '5.00'),
(8, 15, 12, NULL, 1, 'Id sit aliquam minima commodi voluptates.', '1077542', '<p>Voluptate voluptates est nisi impedit exercitationem corrupti. Molestiae laboriosam odio est excepturi. At quia incidunt aut ut et ut.</p>', '5.00'),
(9, 16, 11, NULL, 1, 'Voluptas sunt ex omnis consectetur neque dolorem repellendus id.', '1052037', '<p>Laudantium labore voluptatem magni voluptate beatae. Quo non quam quas magni. Facere error magnam animi pariatur saepe ab. Id qui et nulla laboriosam deleniti odit aut.</p>', '5.00'),
(10, 17, 1, NULL, 1, 'Tempora voluptates est dolore rerum eius fuga.', '1006436', 'Asperiores nam quas blanditiis officia aliquam rerum consequuntur dolore. Natus aut velit earum qui vero voluptas rerum. Sit sint quas voluptates.', '5.00'),
(11, 18, 11, NULL, 1, 'Voluptas sunt ex omnis consectetur neque dolorem repellendus id.', '1052037', '<p>Laudantium labore voluptatem magni voluptate beatae. Quo non quam quas magni. Facere error magnam animi pariatur saepe ab. Id qui et nulla laboriosam deleniti odit aut.</p>', '5.00'),
(12, 19, 1, NULL, 1, 'Tempora voluptates est dolore rerum eius fuga.', '1006436', 'Asperiores nam quas blanditiis officia aliquam rerum consequuntur dolore. Natus aut velit earum qui vero voluptas rerum. Sit sint quas voluptates.', '5.00'),
(13, 20, 12, NULL, 1, 'Id sit aliquam minima commodi voluptates.', '1077542', '<p>Voluptate voluptates est nisi impedit exercitationem corrupti. Molestiae laboriosam odio est excepturi. At quia incidunt aut ut et ut.</p>', '5.00'),
(14, 21, 2, NULL, 1, 'Temporibus ut enim voluptate quas fugit voluptates error.', '1079161', 'Et voluptatem sint in suscipit. Reiciendis non delectus voluptatibus. Id et est voluptatibus quibusdam et rerum. Voluptatem et tempore necessitatibus voluptatum eum vel.', '5.00'),
(15, 21, 3, NULL, 1, 'Voluptas repellendus commodi porro consequatur.', '1050528', 'Laborum aperiam enim ea earum doloremque. In necessitatibus qui harum sed quis placeat fugit soluta. Voluptatem fugit minima repudiandae eos esse labore.', '5.00'),
(16, 22, 2, NULL, 1, 'Temporibus ut enim voluptate quas fugit voluptates error.', '1079161', 'Et voluptatem sint in suscipit. Reiciendis non delectus voluptatibus. Id et est voluptatibus quibusdam et rerum. Voluptatem et tempore necessitatibus voluptatum eum vel.', '5.00'),
(17, 23, 13, NULL, 1, 'test', '99901', '<p><gwmw class=\"ginger-module-highlighter-mistake-type-1\" id=\"gwmw-15479825403890623465777\">terst</gwmw></p>', '12.00'),
(18, 24, 11, NULL, 1, 'Voluptas sunt ex omnis consectetur neque dolorem repellendus id.', '1052037', '<p>Laudantium labore voluptatem magni voluptate beatae. Quo non quam quas magni. Facere error magnam animi pariatur saepe ab. Id qui et nulla laboriosam deleniti odit aut.</p>', '5.00'),
(19, 24, 1, NULL, 1, 'Tempora voluptates est dolore rerum eius fuga.', '1006436', 'Asperiores nam quas blanditiis officia aliquam rerum consequuntur dolore. Natus aut velit earum qui vero voluptas rerum. Sit sint quas voluptates.', '5.00'),
(20, 25, 12, NULL, 1, 'Id sit aliquam minima commodi voluptates.', '1077542', '<p>Voluptate voluptates est nisi impedit exercitationem corrupti. Molestiae laboriosam odio est excepturi. At quia incidunt aut ut et ut.</p>', '5.00'),
(21, 26, 11, NULL, 1, 'Voluptas sunt ex omnis consectetur neque dolorem repellendus id.', '1052037', '<p>Laudantium labore voluptatem magni voluptate beatae. Quo non quam quas magni. Facere error magnam animi pariatur saepe ab. Id qui et nulla laboriosam deleniti odit aut.</p>', '5.00'),
(22, 27, 11, NULL, 2, 'Voluptas sunt ex omnis consectetur neque dolorem repellendus id.', '1052037', '<p>Laudantium labore voluptatem magni voluptate beatae. Quo non quam quas magni. Facere error magnam animi pariatur saepe ab. Id qui et nulla laboriosam deleniti odit aut.</p>', '5.00'),
(23, 28, 12, NULL, 1, 'Id sit aliquam minima commodi voluptates.', '1077542', '<p>Voluptate voluptates est nisi impedit exercitationem corrupti. Molestiae laboriosam odio est excepturi. At quia incidunt aut ut et ut.</p>', '5.00'),
(24, 29, 4, NULL, 1, 'Accusantium distinctio architecto quia ut.', '1052166', '<p>Ex repellat saepe vero id odio ipsum. Tempora reiciendis id fugit quisquam illum est minus. At natus dolorem non voluptatem voluptatum quae corporis. Maiores nulla officia iusto voluptatem.</p>', '5.00');

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

--
-- Dumping data for table `order_statuses`
--

INSERT INTO `order_statuses` (`id`, `name`, `color`, `created_at`, `updated_at`) VALUES
(1, 'panding', 'blue', '2019-01-25 10:31:28', '2019-01-25 10:31:28'),
(2, 'close', 'red', '2019-01-25 10:31:54', '2019-01-25 10:31:54'),
(3, 'shipping', 'green', '2019-01-25 10:32:11', '2019-01-25 10:32:11');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 'create-product', 'Create product', '', '2019-01-20 03:50:12', '2019-01-20 03:50:12'),
(2, 'view-product', 'View product', '', '2019-01-20 03:50:12', '2019-01-20 03:50:12'),
(3, 'update-product', 'Update product', '', '2019-01-20 03:50:12', '2019-01-20 03:50:12'),
(4, 'delete-product', 'Delete product', '', '2019-01-20 03:50:12', '2019-01-20 03:50:12'),
(5, 'update-order', 'Update order', '', '2019-01-20 03:50:12', '2019-01-20 03:50:12');

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
  `topsell` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sub_category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `brand_id`, `sku`, `name`, `slug`, `description`, `cover`, `quantity`, `price`, `sale_price`, `status`, `length`, `width`, `height`, `distance_unit`, `weight`, `mass_unit`, `topsell`, `created_at`, `updated_at`, `sub_category_id`) VALUES
(1, NULL, '1006436', 'Tempora voluptates est dolore rerum eius fuga.', 'tempora-voluptates-est-dolore-rerum-eius-fuga', '<p>Asperiores nam quas blanditiis officia aliquam rerum consequuntur dolore. Natus aut velit earum qui vero voluptas rerum. Sit <gwmw class=\"ginger-module-highlighter-mistake-type-1\" id=\"gwmw-15490390483471944187561\">sint</gwmw> <gwmw class=\"ginger-module-highlighter-mistake-type-1\" id=\"gwmw-15490390483480704388422\">quas</gwmw> <gwmw class=\"ginger-module-highlighter-mistake-type-1\" id=\"gwmw-15490390483486249431055\">voluptates</gwmw>.</p>', 'products/DLGxyLEvl1n0b8KugJH5u54hwXAthIOH0plVmzQw.jpeg', 6, '5.00', NULL, 1, NULL, NULL, NULL, NULL, '5.00', 'lbs', 1, '2019-01-20 03:50:13', '2019-02-01 10:37:36', NULL),
(2, NULL, '1079161', 'Temporibus ut enim voluptate quas fugit voluptates error.', 'temporibus-ut-enim-voluptate-quas-fugit-voluptates-error', '<p>Et <gwmw class=\"ginger-module-highlighter-mistake-type-1\" id=\"gwmw-15491207577412563078715\">voluptatem</gwmw> <gwmw class=\"ginger-module-highlighter-mistake-type-1\" id=\"gwmw-15491207577414316916340\">sint</gwmw> in <gwmw class=\"ginger-module-highlighter-mistake-type-1\" id=\"gwmw-15491207577417445781908\">suscipit</gwmw>. Reiciendis non delectus voluptatibus. Id et est voluptatibus quibusdam et rerum. Voluptatem et tempore necessitatibus voluptatum eum vel.</p>', 'products/t4B9uLZzIlY9PFe3yDFo6i1tVegdGQj8ByZUqcjB.jpeg', 8, '5.00', NULL, 1, NULL, NULL, NULL, NULL, '5.00', 'lbs', 1, '2019-01-20 03:50:13', '2019-02-02 09:19:32', NULL),
(3, NULL, '1050528', 'Voluptas repellendus commodi porro consequatur.', 'voluptas-repellendus-commodi-porro-consequatur', '<p>Laborum aperiam enim ea earum doloremque. In necessitatibus qui harum sed quis placeat fugit soluta. Voluptatem fugit minima repudiandae eos esse labore.</p>', 'products/YfbYCkWEjDLk7TlVU7DCO5kT303iIq05G7hdf6x0.jpeg', 9, '5.00', NULL, 1, NULL, NULL, NULL, NULL, '5.00', 'lbs', 1, '2019-01-20 03:50:13', '2019-02-02 09:22:48', NULL),
(4, NULL, '1052166', 'Accusantium distinctio architecto quia ut.', 'accusantium-distinctio-architecto-quia-ut', '<p>Ex repellat saepe vero id odio ipsum. Tempora reiciendis id fugit quisquam illum est minus. At natus dolorem non voluptatem voluptatum quae corporis. Maiores nulla officia iusto voluptatem.</p>', 'products/su7rK9J1simRg5n3mzUa5L54oUsM52JRhVGd0hNR.jpeg', 9, '5.00', NULL, 1, NULL, NULL, NULL, NULL, '5.00', 'lbs', 1, '2019-01-20 03:50:13', '2019-02-02 09:23:16', NULL),
(5, NULL, '1008433', 'Et ipsum eos qui iusto ut.', 'et-ipsum-eos-qui-iusto-ut', '<p>Molestiae harum aut cupiditate odit sit velit consequuntur. Et <gwmw class=\"ginger-module-highlighter-mistake-type-1\" id=\"gwmw-15480006620438821675700\">nihil</gwmw> <gwmw class=\"ginger-module-highlighter-mistake-type-1\" id=\"gwmw-15480006620432405980656\">animi</gwmw> modi. Quos quas magnam deserunt similique quibusdam.</p>', 'products/7FjhSNNjZoNCbZ1g6P8dUkeAkg2jVxPg8SMXhVjr.jpeg', 10, '5.00', NULL, 1, NULL, NULL, NULL, NULL, '5.00', 'lbs', 1, '2019-01-20 03:50:13', '2019-01-20 10:11:09', NULL),
(6, NULL, '1065003', 'Molestiae fugit sed aut sequi deleniti dolores sed.', 'molestiae-fugit-sed-aut-sequi-deleniti-dolores-sed', '<p>Et illo nemo non quia temporibus praesentium expedita. Qui et ut et voluptas non illum nemo. Ipsum ut est reprehenderit et iusto excepturi asperiores autem. At <gwmw class=\"ginger-module-highlighter-mistake-type-1\" id=\"gwmw-15490527793150766843286\">velit</gwmw> in <gwmw class=\"ginger-module-highlighter-mistake-type-1\" id=\"gwmw-15490527793159306671283\">molestiae</gwmw> <gwmw class=\"ginger-module-highlighter-mistake-type-1\" id=\"gwmw-15490527793157826344025\">quos</gwmw> <gwmw class=\"ginger-module-highlighter-mistake-type-1\" id=\"gwmw-15490527793154600477609\">vel</gwmw> <gwmw class=\"ginger-module-highlighter-mistake-type-1\" id=\"gwmw-15490527793150881756148\">labore</gwmw>.</p>', 'products/s9Oc9BQzgiECdziFYDmDSCdawOaEMq3hkfOfYewe.jpeg', 10, '5.00', NULL, 1, NULL, NULL, NULL, NULL, '5.00', 'lbs', 1, '2019-01-20 03:50:13', '2019-02-01 14:26:23', NULL),
(7, NULL, '1022511', 'Voluptatem dolorem dolor perferendis reiciendis excepturi.', 'voluptatem-dolorem-dolor-perferendis-reiciendis-excepturi', '<p>Sunt rerum beatae aliquam nemo. Tempore ut non quia deserunt voluptas.</p>', 'products/1h9L47WswvN4uTr2Yxcs6MNK9stCM1kSzff75YTu.jpeg', 8, '5.00', NULL, 1, NULL, NULL, NULL, NULL, '5.00', 'lbs', 1, '2019-01-20 03:50:13', '2019-01-25 10:54:40', NULL),
(8, NULL, '1003578', 'Debitis itaque accusantium excepturi nostrum.', 'debitis-itaque-accusantium-excepturi-nostrum', '<p>Eum neque maxime sint omnis ipsam. Qui dolore doloremque nobis doloremque. <gwmw class=\"ginger-module-highlighter-mistake-type-1\" id=\"gwmw-15480007648854991503056\">Quisquam</gwmw> <gwmw class=\"ginger-module-highlighter-mistake-type-1\" id=\"gwmw-15480007648856705980869\">illum</gwmw> <gwmw class=\"ginger-module-highlighter-mistake-type-1\" id=\"gwmw-15480007648850991396666\">sed</gwmw> culpa <gwmw class=\"ginger-module-highlighter-mistake-type-1\" id=\"gwmw-15480007648850838367527\">voluptatem</gwmw> <gwmw class=\"ginger-module-highlighter-mistake-type-1\" id=\"gwmw-15480007648850150212123\">dolorem</gwmw>.</p>', 'products/QS0TxjiJVdxVOZn5mF5od6tlS4SZF3R7qtKx36cc.jpeg', 10, '5.00', NULL, 1, NULL, NULL, NULL, NULL, '5.00', 'lbs', 1, '2019-01-20 03:50:13', '2019-01-20 10:13:03', NULL),
(9, NULL, '1110551', 'Quia nulla aut sint adipisci reprehenderit laboriosam eveniet.', 'quia-nulla-aut-sint-adipisci-reprehenderit-laboriosam-eveniet', '<p>Est nesciunt ullam soluta iste aspernatur aspernatur. Sit <gwmw class=\"ginger-module-highlighter-mistake-type-1\" id=\"gwmw-15480004593673863328641\">dolorem</gwmw> <gwmw class=\"ginger-module-highlighter-mistake-type-1\" id=\"gwmw-15480004593686676382442\">labore</gwmw> <gwmw class=\"ginger-module-highlighter-mistake-type-1\" id=\"gwmw-15480004593683058107524\">facere</gwmw> <gwmw class=\"ginger-module-highlighter-mistake-type-1\" id=\"gwmw-15480004593685491607674\">doloribus</gwmw> in. Ratione aut et sed assumenda aliquam est non maiores. Error dolore consequatur quia eveniet omnis perferendis labore aut.</p>', 'products/bvsMUaLjMZxAJ57oqQKcYyGGkaD7FFBZCFMJ1gXM.jpeg', 10, '5.00', NULL, 1, NULL, NULL, NULL, NULL, '5.00', 'lbs', 0, '2019-01-20 03:50:13', '2019-01-20 10:07:46', NULL),
(10, NULL, '1097707', 'Qui tenetur architecto molestiae debitis.', 'qui-tenetur-architecto-molestiae-debitis', '<p><gwmw class=\"ginger-module-highlighter-mistake-type-1\" id=\"gwmw-15480006895738123978249\">Deserunt</gwmw> <gwmw class=\"ginger-module-highlighter-mistake-type-1\" id=\"gwmw-15480006895730963526874\">ea</gwmw> et <gwmw class=\"ginger-module-highlighter-mistake-type-1\" id=\"gwmw-15480006895734696449858\">exercitationem</gwmw> <gwmw class=\"ginger-module-highlighter-mistake-type-1\" id=\"gwmw-15480006895730181545485\">quod</gwmw> <gwmw class=\"ginger-module-highlighter-mistake-type-1\" id=\"gwmw-15480006895735297166085\">dignissimos</gwmw>. Id eum ab esse autem voluptas nesciunt. <gwmw class=\"ginger-module-highlighter-mistake-type-1\" id=\"gwmw-15480006906705890990750\">Unde</gwmw> <gwmw class=\"ginger-module-highlighter-mistake-type-1\" id=\"gwmw-15480006906707881658132\">facere</gwmw> <gwmw class=\"ginger-module-highlighter-mistake-type-1\" id=\"gwmw-15480006906709129222290\">laborum</gwmw> <gwmw class=\"ginger-module-highlighter-mistake-type-1\" id=\"gwmw-15480006906700389387800\">sed</gwmw> <gwmw class=\"ginger-module-highlighter-mistake-type-1\" id=\"gwmw-15480006906702602426572\">adipisci</gwmw> culpa <gwmw class=\"ginger-module-highlighter-mistake-type-1\" id=\"gwmw-15480006906708349624418\">quod</gwmw>.</p>\r\n\r\n<div class=\"ginger-module-correctionBubble\" contenteditable=\"false\" style=\"padding: 0px; top: 50px;\">\r\n<div class=\"ginger-module-correctionBubble-container ginger-module-correctionBubble-container-loggedout\" style=\"display: none;\">\r\n<div class=\"ginger-module-correctionBubble-login\">Log in</div>\r\n\r\n<div class=\"ginger-module-correctionBubble-body\">to use Ginger</div>\r\n</div>\r\n\r\n<div class=\"ginger-module-correctionBubble-container ginger-module-correctionBubble-container-loggedin\">\r\n<div class=\"ginger-module-correctionBubble-limited\">Limited mode</div>\r\n\r\n<div class=\"ginger-module-correctionBubble-body\"><gwbm class=\"ginger-module-correctionBubbleService-mistake-type-1\" id=\"gwbm-15480006895738123978249\">Decent<gwbmo><a class=\"ginger-module-correctionBubbleService-mistake-bubble-approve\" title=\"Approve the Suggestion\"></a><a class=\"ginger-module-correctionBubbleService-mistake-bubble-add\" title=\"Add to Personal Dictionary\"></a></gwbmo></gwbm> <gwbm class=\"ginger-module-correctionBubbleService-mistake-type-1 ginger-module-correctionBubbleService-mistake-nosuggestion\" id=\"gwbm-15480006895730963526874\">ea<gwbmo><a class=\"ginger-module-correctionBubbleService-mistake-bubble-add\" title=\"Add to Personal Dictionary\"></a></gwbmo></gwbm> et <gwbm class=\"ginger-module-correctionBubbleService-mistake-type-1 ginger-module-correctionBubbleService-mistake-nosuggestion\" id=\"gwbm-15480006895734696449858\">exercitationem<gwbmo><a class=\"ginger-module-correctionBubbleService-mistake-bubble-add\" title=\"Add to Personal Dictionary\"></a></gwbmo></gwbm> <gwbm class=\"ginger-module-correctionBubbleService-mistake-type-1\" id=\"gwbm-15480006895730181545485\">quad<gwbmo><a class=\"ginger-module-correctionBubbleService-mistake-bubble-approve\" title=\"Approve the Suggestion\"></a><a class=\"ginger-module-correctionBubbleService-mistake-bubble-add\" title=\"Add to Personal Dictionary\"></a></gwbmo></gwbm> <gwbm class=\"ginger-module-correctionBubbleService-mistake-type-1 ginger-module-correctionBubbleService-mistake-nosuggestion\" id=\"gwbm-15480006895735297166085\">dignissimos<gwbmo><a class=\"ginger-module-correctionBubbleService-mistake-bubble-add\" title=\"Add to Personal Dictionary\"></a></gwbmo></gwbm></div>\r\n<a class=\"ginger-module-correctionBubble-close\" href=\"javascript:\" title=\"Ignore mistake\">&times;</a></div>\r\n</div>', 'products/PUuFcHFtSq74G9REmRxYvl2O2ktXmmp1dxhEEPAz.jpeg', 10, '5.00', NULL, 1, NULL, NULL, NULL, NULL, '5.00', 'lbs', 0, '2019-01-20 03:50:13', '2019-01-20 10:11:51', NULL),
(11, 3, '1052037', 'Voluptas sunt ex omnis consectetur neque dolorem repellendus id.', 'voluptas-sunt-ex-omnis-consectetur-neque-dolorem-repellendus-id', '<p>Laudantium labore voluptatem magni voluptate beatae. Quo non quam quas magni. Facere error magnam animi pariatur saepe ab. Id qui et nulla laboriosam deleniti odit aut.</p>', 'products/FGP0cwFIK4XAmZu40kqKXdRPjIp6eppdDG0Hy3Q8.jpeg', 300, '5.00', NULL, 1, NULL, NULL, NULL, NULL, '5.00', 'lbs', 0, '2019-01-20 03:50:13', '2019-02-02 09:16:43', NULL),
(12, 2, '1077542', 'Id sit aliquam minima commodi voluptates.', 'id-sit-aliquam-minima-commodi-voluptates', '<p>Voluptate voluptates est nisi impedit exercitationem corrupti. Molestiae laboriosam odio est excepturi. At quia incidunt aut ut et ut.</p>', 'products/MalZHpliStNIxrJIG3RxIxm02yEQuWQtJIePhCsN.jpeg', 6, '5.00', NULL, 1, NULL, NULL, NULL, NULL, '5.00', 'lbs', 1, '2019-01-20 03:50:13', '2019-02-01 10:36:34', NULL),
(13, 2, '99901', 'test', 'test', '<p><gwmw class=\"ginger-module-highlighter-mistake-type-1\" id=\"gwmw-15490389583351601000836\">terst</gwmw></p>', 'products/gcWgyrPoQUBuIPO7v3PtTYzPQC7xqi42TbUyRJ1y.jpeg', 43, '12.00', NULL, 1, NULL, NULL, NULL, NULL, '0.00', 'lbs', 1, '2019-01-20 04:37:26', '2019-02-01 10:36:12', NULL);

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
(8, 9, 'products/QWQm2UtwUXc4Vbcrax2zWXtxQ7uHJnpjN0sIH1Ds.jpeg'),
(9, 7, 'products/sZXp54MKVqBdHKP298paNHHhc8AHB7ZgV9izJ83i.jpeg'),
(14, 6, 'products/exR1dwnOtH8TyW60RjyvUHu4gwBjCoUpRTanvr2Q.jpeg'),
(15, 5, 'products/S9RutJT8H7Vv5kA2MmXm09N1qZtlv3DF5gs0No0h.jpeg'),
(16, 10, 'products/XXfxd3r68Ljeysaj2DgJvWLzBklP4XTSKjg7jRve.jpeg'),
(17, 8, 'products/owxifnZVU5ylYwxZ3jl90yNfqrSq2LIbRYe4uTP3.jpeg'),
(18, 8, 'products/UwNCaLur4nYQsCnMM3MmZNXYrsvdBC71z8eu043R.jpeg'),
(19, 8, 'products/3JcXkOhyszCn7VednHfrG9Sok9LuYH7jVfL0y0sS.jpeg'),
(20, 13, 'products/yYJqoxCMKV5DyEPIagvvfVWOZO81D9YWVfkB8Zh5.jpeg'),
(21, 12, 'products/fGHURQmrhwLNkSeKPi4RqMDvllIatRIGTurYqWB4.jpeg'),
(22, 11, 'products/YB3t5SPZwKN4hFzGScyVYOuIMXILkHR745Wzvdze.jpeg'),
(23, 1, 'products/muhA8dbqAT6Xo828x1IH894RTU04jYCVc67S4brT.jpeg'),
(24, 2, 'products/vZXNwkpB2KGfO9elfbdV8fogtnyhIVt0lJ6vQXhe.jpeg'),
(25, 3, 'products/y5Ngto8dEokOAK3Y4QBkqI2VzfEmkT4uniUnEwym.jpeg'),
(26, 4, 'products/KRQGYLYm8pQNoSn5QrVkUJApi6KdndltC0xLnQ8V.jpeg');

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
(1, 'Abra', 169, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(2, 'Agusan del Norte', 169, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(3, 'Agusan del Sur', 169, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(4, 'Aklan', 169, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(5, 'Albay', 169, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(6, 'Antique', 169, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(7, 'Apayao', 169, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(8, 'Aurora', 169, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(9, 'Basilan', 169, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(10, 'Bataan', 169, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(11, 'Batanes', 169, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(12, 'Batangas', 169, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(13, 'Benguet', 169, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(14, 'Biliran', 169, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(15, 'Bohol', 169, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(16, 'Bukidnon', 169, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(17, 'Bulacan', 169, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(18, 'Cagayan', 169, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(19, 'Camarines Norte', 169, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(20, 'Camarines Sur', 169, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(21, 'Camiguin', 169, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(22, 'Capiz', 169, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(23, 'Catanduanes', 169, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(24, 'Cavite', 169, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(25, 'Cebu', 169, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(26, 'Compostela Valley', 169, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(27, 'Cotabato', 169, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(28, 'Davao del Norte', 169, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(29, 'Davao del Sur', 169, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(30, 'Davao Oriental', 169, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(31, 'Eastern Samar', 169, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(32, 'Guimaras', 169, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(33, 'Ifugao', 169, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(34, 'Ilocos Norte', 169, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(35, 'Ilocos Sur', 169, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(36, 'Iloilo', 169, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(37, 'Isabela', 169, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(38, 'Kalinga', 169, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(39, 'La Union', 169, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(40, 'Laguna', 169, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(41, 'Lanao del Norte', 169, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(42, 'Lanao del Sur', 169, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(43, 'Leyte', 169, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(44, 'Maguindanao', 169, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(45, 'Marinduque', 169, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(46, 'Masbate', 169, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(47, 'Metro Manila', 169, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(48, 'Misamis Occidental', 169, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(49, 'Misamis Oriental', 169, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(50, 'Mountain Province', 169, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(51, 'Negros Occidental', 169, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(52, 'Negros Oriental', 169, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(53, 'Northern Samar', 169, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(54, 'Nueva Ecija', 169, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(55, 'Nueva Vizcaya', 169, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(56, 'Occidental Mindoro', 169, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(57, 'Oriental Mindoro', 169, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(58, 'Palawan', 169, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(59, 'Pampanga', 169, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(60, 'Pangasinan', 169, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(61, 'Quezon', 169, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(62, 'Quirino', 169, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(63, 'Rizal', 169, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(64, 'Romblon', 169, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(65, 'Samar', 169, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(66, 'Sarangani', 169, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(67, 'Siquijor', 169, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(68, 'Sorsogon', 169, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(69, 'South Cotabato', 169, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(70, 'Southern Leyte', 169, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(71, 'Sultan Kudarat', 169, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(72, 'Sulu', 169, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(73, 'Surigao del Norte', 169, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(74, 'Surigao del Sur', 169, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(75, 'Tarlac', 169, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(76, 'Tawi-Tawi', 169, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(77, 'Zambales', 169, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(78, 'Zamboanga del Norte', 169, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(79, 'Zamboanga del Sur', 169, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13'),
(80, 'Zamboanga Sibugay', 169, 1, '2019-01-20 03:50:13', '2019-01-20 03:50:13');

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
(1, 'superadmin', 'Super Admin', '', '2019-01-20 03:50:12', '2019-01-20 03:50:12'),
(2, 'admin', 'Admin', '', '2019-01-20 03:50:12', '2019-01-20 03:50:12'),
(3, 'clerk', 'Clerk', '', '2019-01-20 03:50:12', '2019-01-20 03:50:12');

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
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `name` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `image` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `status` int(11) NOT NULL,
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attribute_values`
--
ALTER TABLE `attribute_values`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `order_product`
--
ALTER TABLE `order_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `order_statuses`
--
ALTER TABLE `order_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `product_attributes`
--
ALTER TABLE `product_attributes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

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
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
