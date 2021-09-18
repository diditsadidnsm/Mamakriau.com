-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 18 Sep 2021 pada 08.04
-- Versi server: 10.3.24-MariaDB-cll-lve
-- Versi PHP: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mamakriau_nsm`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `about`
--

INSERT INTO `about` (`id`, `title`, `description`, `image`) VALUES
(1, 'Nashiruddien Sadid M', 'test', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `sub` text DEFAULT NULL,
  `button` varchar(255) NOT NULL,
  `link` text DEFAULT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `banner`
--

INSERT INTO `banner` (`id`, `title`, `sub`, `button`, `link`, `image`) VALUES
(1, 'Nashiruddien Sadid M', '<p>The full name of Nashiruddien Sadid Mustaqim is usually called Sadid. I like to type on the keyboard because of that I pursue programming. I prefer teamwork but I can also work individually. In terms of formal education, I haven&#39;t finished but that doesn&#39;t stop me from studying.</p>\r\n', 'Download My CV', 'test', 'default.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bravo_attrs`
--

CREATE TABLE `bravo_attrs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `display_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hide_in_single` tinyint(4) DEFAULT NULL,
  `hide_in_filter_search` tinyint(4) DEFAULT NULL,
  `position` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `bravo_attrs`
--

INSERT INTO `bravo_attrs` (`id`, `name`, `slug`, `service`, `create_user`, `update_user`, `created_at`, `updated_at`, `deleted_at`, `display_type`, `hide_in_single`, `hide_in_filter_search`, `position`) VALUES
(1, 'Travel Styles', 'travel-styles', 'tour', NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33', NULL, NULL, NULL, NULL, NULL),
(2, 'Facilities', 'facilities', 'tour', NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33', NULL, NULL, NULL, NULL, NULL),
(3, 'Space Type', 'space-type', 'space', NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', NULL, NULL, NULL, NULL, NULL),
(4, 'Amenities', 'amenities', 'space', NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', NULL, NULL, NULL, NULL, NULL),
(5, 'Property type', 'property-type', 'hotel', NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', NULL, NULL, NULL, NULL, NULL),
(6, 'Facilities', 'facilities-1', 'hotel', NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', NULL, NULL, NULL, NULL, NULL),
(7, 'Hotel Service', 'hotel-service', 'hotel', NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', NULL, NULL, NULL, NULL, NULL),
(8, 'Room Amenities', 'room-amenities', 'hotel_room', NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', NULL, NULL, NULL, NULL, NULL),
(9, 'Car Type', 'car-type', 'car', NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', NULL, NULL, 1, NULL, NULL),
(10, 'Car Features', 'car-features', 'car', NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', NULL, NULL, NULL, NULL, NULL),
(11, 'Event Type', 'event-type', 'event', NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `bravo_attrs_translations`
--

CREATE TABLE `bravo_attrs_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `locale` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `bravo_bookings`
--

CREATE TABLE `bravo_bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `payment_id` int(11) DEFAULT NULL,
  `gateway` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `object_id` int(11) DEFAULT NULL,
  `object_model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `total_guests` int(11) DEFAULT NULL,
  `currency` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deposit` decimal(10,2) DEFAULT NULL,
  `deposit_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commission` decimal(10,2) DEFAULT NULL,
  `commission_type` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `buyer_fees` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_before_fees` decimal(10,2) DEFAULT NULL,
  `paid_vendor` tinyint(4) DEFAULT NULL,
  `object_child_id` bigint(20) DEFAULT NULL,
  `number` smallint(6) DEFAULT NULL,
  `paid` decimal(10,2) DEFAULT NULL,
  `pay_now` decimal(10,2) DEFAULT NULL,
  `wallet_credit_used` double DEFAULT NULL,
  `wallet_total_used` double DEFAULT NULL,
  `wallet_transaction_id` bigint(20) DEFAULT NULL,
  `is_refund_wallet` tinyint(4) DEFAULT NULL,
  `vendor_service_fee_amount` decimal(8,2) DEFAULT NULL,
  `vendor_service_fee` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `bravo_bookings`
--

INSERT INTO `bravo_bookings` (`id`, `code`, `vendor_id`, `customer_id`, `payment_id`, `gateway`, `object_id`, `object_model`, `start_date`, `end_date`, `total`, `total_guests`, `currency`, `status`, `deposit`, `deposit_type`, `commission`, `commission_type`, `email`, `first_name`, `last_name`, `phone`, `address`, `address2`, `city`, `state`, `zip_code`, `country`, `customer_notes`, `create_user`, `update_user`, `deleted_at`, `created_at`, `updated_at`, `buyer_fees`, `total_before_fees`, `paid_vendor`, `object_child_id`, `number`, `paid`, `pay_now`, `wallet_credit_used`, `wallet_total_used`, `wallet_transaction_id`, `is_refund_wallet`, `vendor_service_fee_amount`, `vendor_service_fee`) VALUES
(1, '703f6536aa9c487030fadf9f8a79f714', 1, 18, NULL, NULL, 9, 'hotel', '2021-08-25 00:00:00', '2021-08-27 00:00:00', 800.00, 1, NULL, 'draft', NULL, NULL, 70.00, '{\"amount\":\"10\",\"type\":\"percent\"}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, '2021-08-25 00:40:30', '2021-08-25 00:40:30', '[{\"name\":\"Service fee\",\"desc\":\"This helps us run our platform and offer services like 24\\/7 support on your trip.\",\"name_ja\":\"\\u30b5\\u30fc\\u30d3\\u30b9\\u6599\",\"desc_ja\":\"\\u3053\\u308c\\u306b\\u3088\\u308a\\u3001\\u5f53\\u793e\\u306e\\u30d7\\u30e9\\u30c3\\u30c8\\u30d5\\u30a9\\u30fc\\u30e0\\u3092\\u5b9f\\u884c\\u3057\\u3001\\u65c5\\u884c\\u4e2d\\u306b\",\"price\":\"100\",\"type\":\"one_time\"}]', 700.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, '\"\"');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bravo_booking_meta`
--

CREATE TABLE `bravo_booking_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `booking_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `val` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `bravo_booking_meta`
--

INSERT INTO `bravo_booking_meta` (`id`, `booking_id`, `name`, `val`, `create_user`, `update_user`, `created_at`, `updated_at`) VALUES
(1, 1, 'duration', NULL, NULL, NULL, NULL, NULL),
(2, 1, 'base_price', '550.00', NULL, NULL, NULL, NULL),
(3, 1, 'sale_price', NULL, NULL, NULL, NULL, NULL),
(4, 1, 'guests', '1', NULL, NULL, NULL, NULL),
(5, 1, 'adults', '1', NULL, NULL, NULL, NULL),
(6, 1, 'children', '0', NULL, NULL, NULL, NULL),
(7, 1, 'extra_price', '[]', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `bravo_booking_payments`
--

CREATE TABLE `bravo_booking_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `booking_id` int(11) DEFAULT NULL,
  `payment_gateway` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `currency` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `converted_amount` decimal(10,2) DEFAULT NULL,
  `converted_currency` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exchange_rate` decimal(10,2) DEFAULT NULL,
  `status` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logs` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_model` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `wallet_transaction_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `bravo_booking_time_slots`
--

CREATE TABLE `bravo_booking_time_slots` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `booking_id` int(11) DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_model` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `duration` double(255,2) DEFAULT NULL,
  `duration_unit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `bravo_cars`
--

CREATE TABLE `bravo_cars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8 NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `banner_image_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_lat` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_lng` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_zoom` int(11) DEFAULT NULL,
  `is_featured` tinyint(4) DEFAULT NULL,
  `gallery` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faqs` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number` tinyint(4) DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `sale_price` decimal(12,2) DEFAULT NULL,
  `is_instant` tinyint(4) DEFAULT 0,
  `enable_extra_price` tinyint(4) DEFAULT NULL,
  `extra_price` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_by_days` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passenger` tinyint(4) DEFAULT 0,
  `gear` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `baggage` tinyint(4) DEFAULT 0,
  `door` tinyint(4) DEFAULT 0,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_state` tinyint(4) DEFAULT 1,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `review_score` decimal(2,1) DEFAULT NULL,
  `ical_import_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enable_service_fee` tinyint(4) DEFAULT NULL,
  `service_fee` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `bravo_cars`
--

INSERT INTO `bravo_cars` (`id`, `title`, `slug`, `content`, `image_id`, `banner_image_id`, `location_id`, `address`, `map_lat`, `map_lng`, `map_zoom`, `is_featured`, `gallery`, `video`, `faqs`, `number`, `price`, `sale_price`, `is_instant`, `enable_extra_price`, `extra_price`, `discount_by_days`, `passenger`, `gear`, `baggage`, `door`, `status`, `default_state`, `create_user`, `update_user`, `deleted_at`, `created_at`, `updated_at`, `review_score`, `ical_import_url`, `enable_service_fee`, `service_fee`) VALUES
(1, 'BMW-X6-facelift', 'bmw-x6-facelift', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 142, 135, 1, 'Arrondissement de Paris', '21.054831', '105.796077', 12, 1, '154,155,156,157,158,159,160', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"When should I check the transmission fluid?\",\"content\":\"You should check the transmission fluid regularly. Try to check it at least once a month or at the sign of any trouble, for instance if there is any hesitation when you shift gears in an automatic.\"},{\"title\":\"How do I check the transmission fluid?\",\"content\":\"It\\u2019s not hard to check your transmission fluid if the vehicle is an automatic. This link to the Dummies guide to checking your transmission fluid has step-by-step instructions and illustrations that show you where to locate the dipstick. What you want is clear, pink transmission fluid. If it is low, top it up. If it is dark, smells burnt or has bits in it then you need to get it changed by at a reliable auto repair shop.\"},{\"title\":\"Is it really that important to check the transmission fluid?\",\"content\":\"Yes, it can be. Often times the symptoms you\\u2019ll experience from low or dirty transmission fluid will be the same as transmission problems. If you check the fluid levels regularly and refill as necessary then you\\u2019ll know if there are any symptoms of trouble that it\\u2019s not because the fluid levels are low and you need to see a mechanic.\"},{\"title\":\"Are there different types of transmission fluid?\",\"content\":\"How do I know what to buy? Yes, there are many different types of transmission fluid, each designed for a certain transmission. Different vehicles require different transmission fluids and the age of the car can also be a factor because newer transmissions take different types of transmission fluids than older vehicles. Don\\u2019t guess! Find out which type of transmission fluid is required for your vehicle by checking your owner\\u2019s manual.\"},{\"title\":\"What is a transmission flush and should I get one?\",\"content\":\"A transmission flush is used by some auto repair shops with the goal of flushing out debris.  Auto Tech does not do any sort of transmission flush.  Flushing an older transmission can cause harmful sediment to get stuck in the solenoids of the transmission. We heavily favor regular maintenance to lengthen the life of your transmission.  We service the transmission by changing fluid and the filter and do not recommend having your transmission flushed.\"},{\"title\":\"How do I know I have a fluid leak from the transmission?\",\"content\":\"Transmission fluid is slightly pink in color \\u2013 it will appear pink or red, or possibly more brownish if the transmission fluid is dirty and needs to be replaced. When you feel transmission fluid it will be slick and oily on your fingers. It smells much like oil unless it is dirty, in which case it will smell burnt. Usually transmission fluid leaks around the front or middle of your vehicle, so if you find puddles of reddish liquid there it is probably transmission fluid. Another clue is if in addition to the leak your transmission is not working well and you notice changes in the way it sounds when you shift gears, or if shifting gears is not working as well. In this case you likely have a leak of transmission fluid that is impacting how your transmission operates.\"}]', 3, 500.00, 210.00, 0, 1, '[{\"name\":\"Child Toddler Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Infant Child Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"GPS Satellite\",\"price\":\"200\",\"type\":\"one_time\"}]', NULL, 5, 'Auto', 4, 4, 'publish', 1, 1, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', 5.0, NULL, NULL, NULL),
(2, '2019 Honda Clarity', '2019-honda-clarityt-1', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 143, 135, 1, 'Arrondissement de Paris', '21.039771', '105.777203', 12, 0, '154,155,156,157,158,159,160', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"When should I check the transmission fluid?\",\"content\":\"You should check the transmission fluid regularly. Try to check it at least once a month or at the sign of any trouble, for instance if there is any hesitation when you shift gears in an automatic.\"},{\"title\":\"How do I check the transmission fluid?\",\"content\":\"It\\u2019s not hard to check your transmission fluid if the vehicle is an automatic. This link to the Dummies guide to checking your transmission fluid has step-by-step instructions and illustrations that show you where to locate the dipstick. What you want is clear, pink transmission fluid. If it is low, top it up. If it is dark, smells burnt or has bits in it then you need to get it changed by at a reliable auto repair shop.\"},{\"title\":\"Is it really that important to check the transmission fluid?\",\"content\":\"Yes, it can be. Often times the symptoms you\\u2019ll experience from low or dirty transmission fluid will be the same as transmission problems. If you check the fluid levels regularly and refill as necessary then you\\u2019ll know if there are any symptoms of trouble that it\\u2019s not because the fluid levels are low and you need to see a mechanic.\"},{\"title\":\"Are there different types of transmission fluid?\",\"content\":\"How do I know what to buy? Yes, there are many different types of transmission fluid, each designed for a certain transmission. Different vehicles require different transmission fluids and the age of the car can also be a factor because newer transmissions take different types of transmission fluids than older vehicles. Don\\u2019t guess! Find out which type of transmission fluid is required for your vehicle by checking your owner\\u2019s manual.\"},{\"title\":\"What is a transmission flush and should I get one?\",\"content\":\"A transmission flush is used by some auto repair shops with the goal of flushing out debris.  Auto Tech does not do any sort of transmission flush.  Flushing an older transmission can cause harmful sediment to get stuck in the solenoids of the transmission. We heavily favor regular maintenance to lengthen the life of your transmission.  We service the transmission by changing fluid and the filter and do not recommend having your transmission flushed.\"},{\"title\":\"How do I know I have a fluid leak from the transmission?\",\"content\":\"Transmission fluid is slightly pink in color \\u2013 it will appear pink or red, or possibly more brownish if the transmission fluid is dirty and needs to be replaced. When you feel transmission fluid it will be slick and oily on your fingers. It smells much like oil unless it is dirty, in which case it will smell burnt. Usually transmission fluid leaks around the front or middle of your vehicle, so if you find puddles of reddish liquid there it is probably transmission fluid. Another clue is if in addition to the leak your transmission is not working well and you notice changes in the way it sounds when you shift gears, or if shifting gears is not working as well. In this case you likely have a leak of transmission fluid that is impacting how your transmission operates.\"}]', 2, 300.00, 0.00, 1, 1, '[{\"name\":\"Child Toddler Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Infant Child Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"GPS Satellite\",\"price\":\"200\",\"type\":\"one_time\"}]', NULL, 4, 'Auto', 9, 4, 'publish', 1, 1, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', 5.0, NULL, NULL, NULL),
(3, '2019 Honda Clarity', '2019-honda-clarityt', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 143, 135, 3, 'Arrondissement de Paris', '21.031217', '105.773698', 12, 0, '154,155,156,157,158,159,160', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"When should I check the transmission fluid?\",\"content\":\"You should check the transmission fluid regularly. Try to check it at least once a month or at the sign of any trouble, for instance if there is any hesitation when you shift gears in an automatic.\"},{\"title\":\"How do I check the transmission fluid?\",\"content\":\"It\\u2019s not hard to check your transmission fluid if the vehicle is an automatic. This link to the Dummies guide to checking your transmission fluid has step-by-step instructions and illustrations that show you where to locate the dipstick. What you want is clear, pink transmission fluid. If it is low, top it up. If it is dark, smells burnt or has bits in it then you need to get it changed by at a reliable auto repair shop.\"},{\"title\":\"Is it really that important to check the transmission fluid?\",\"content\":\"Yes, it can be. Often times the symptoms you\\u2019ll experience from low or dirty transmission fluid will be the same as transmission problems. If you check the fluid levels regularly and refill as necessary then you\\u2019ll know if there are any symptoms of trouble that it\\u2019s not because the fluid levels are low and you need to see a mechanic.\"},{\"title\":\"Are there different types of transmission fluid?\",\"content\":\"How do I know what to buy? Yes, there are many different types of transmission fluid, each designed for a certain transmission. Different vehicles require different transmission fluids and the age of the car can also be a factor because newer transmissions take different types of transmission fluids than older vehicles. Don\\u2019t guess! Find out which type of transmission fluid is required for your vehicle by checking your owner\\u2019s manual.\"},{\"title\":\"What is a transmission flush and should I get one?\",\"content\":\"A transmission flush is used by some auto repair shops with the goal of flushing out debris.  Auto Tech does not do any sort of transmission flush.  Flushing an older transmission can cause harmful sediment to get stuck in the solenoids of the transmission. We heavily favor regular maintenance to lengthen the life of your transmission.  We service the transmission by changing fluid and the filter and do not recommend having your transmission flushed.\"},{\"title\":\"How do I know I have a fluid leak from the transmission?\",\"content\":\"Transmission fluid is slightly pink in color \\u2013 it will appear pink or red, or possibly more brownish if the transmission fluid is dirty and needs to be replaced. When you feel transmission fluid it will be slick and oily on your fingers. It smells much like oil unless it is dirty, in which case it will smell burnt. Usually transmission fluid leaks around the front or middle of your vehicle, so if you find puddles of reddish liquid there it is probably transmission fluid. Another clue is if in addition to the leak your transmission is not working well and you notice changes in the way it sounds when you shift gears, or if shifting gears is not working as well. In this case you likely have a leak of transmission fluid that is impacting how your transmission operates.\"}]', 5, 300.00, 0.00, 1, 1, '[{\"name\":\"Child Toddler Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Infant Child Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"GPS Satellite\",\"price\":\"200\",\"type\":\"one_time\"}]', NULL, 7, 'Auto', 10, 4, 'publish', 1, 1, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', 4.5, NULL, NULL, NULL),
(4, '2019 BMW M6 Gran Coupe', '2019-bmw-m6-gran-coupe', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 144, 135, 1, 'Arrondissement de Paris', '21.020161', '105.789655', 12, 0, '154,155,156,157,158,159,160', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"When should I check the transmission fluid?\",\"content\":\"You should check the transmission fluid regularly. Try to check it at least once a month or at the sign of any trouble, for instance if there is any hesitation when you shift gears in an automatic.\"},{\"title\":\"How do I check the transmission fluid?\",\"content\":\"It\\u2019s not hard to check your transmission fluid if the vehicle is an automatic. This link to the Dummies guide to checking your transmission fluid has step-by-step instructions and illustrations that show you where to locate the dipstick. What you want is clear, pink transmission fluid. If it is low, top it up. If it is dark, smells burnt or has bits in it then you need to get it changed by at a reliable auto repair shop.\"},{\"title\":\"Is it really that important to check the transmission fluid?\",\"content\":\"Yes, it can be. Often times the symptoms you\\u2019ll experience from low or dirty transmission fluid will be the same as transmission problems. If you check the fluid levels regularly and refill as necessary then you\\u2019ll know if there are any symptoms of trouble that it\\u2019s not because the fluid levels are low and you need to see a mechanic.\"},{\"title\":\"Are there different types of transmission fluid?\",\"content\":\"How do I know what to buy? Yes, there are many different types of transmission fluid, each designed for a certain transmission. Different vehicles require different transmission fluids and the age of the car can also be a factor because newer transmissions take different types of transmission fluids than older vehicles. Don\\u2019t guess! Find out which type of transmission fluid is required for your vehicle by checking your owner\\u2019s manual.\"},{\"title\":\"What is a transmission flush and should I get one?\",\"content\":\"A transmission flush is used by some auto repair shops with the goal of flushing out debris.  Auto Tech does not do any sort of transmission flush.  Flushing an older transmission can cause harmful sediment to get stuck in the solenoids of the transmission. We heavily favor regular maintenance to lengthen the life of your transmission.  We service the transmission by changing fluid and the filter and do not recommend having your transmission flushed.\"},{\"title\":\"How do I know I have a fluid leak from the transmission?\",\"content\":\"Transmission fluid is slightly pink in color \\u2013 it will appear pink or red, or possibly more brownish if the transmission fluid is dirty and needs to be replaced. When you feel transmission fluid it will be slick and oily on your fingers. It smells much like oil unless it is dirty, in which case it will smell burnt. Usually transmission fluid leaks around the front or middle of your vehicle, so if you find puddles of reddish liquid there it is probably transmission fluid. Another clue is if in addition to the leak your transmission is not working well and you notice changes in the way it sounds when you shift gears, or if shifting gears is not working as well. In this case you likely have a leak of transmission fluid that is impacting how your transmission operates.\"}]', 2, 300.00, 0.00, 0, 1, '[{\"name\":\"Child Toddler Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Infant Child Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"GPS Satellite\",\"price\":\"200\",\"type\":\"one_time\"}]', NULL, 4, 'Auto', 4, 4, 'publish', 1, 1, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', 4.0, NULL, NULL, NULL),
(5, '2019 Audi S3', '2019-audi-s3', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 145, 135, 5, 'Arrondissement de Paris', '21.014873', '105.794117', 12, 0, '154,155,156,157,158,159,160', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"When should I check the transmission fluid?\",\"content\":\"You should check the transmission fluid regularly. Try to check it at least once a month or at the sign of any trouble, for instance if there is any hesitation when you shift gears in an automatic.\"},{\"title\":\"How do I check the transmission fluid?\",\"content\":\"It\\u2019s not hard to check your transmission fluid if the vehicle is an automatic. This link to the Dummies guide to checking your transmission fluid has step-by-step instructions and illustrations that show you where to locate the dipstick. What you want is clear, pink transmission fluid. If it is low, top it up. If it is dark, smells burnt or has bits in it then you need to get it changed by at a reliable auto repair shop.\"},{\"title\":\"Is it really that important to check the transmission fluid?\",\"content\":\"Yes, it can be. Often times the symptoms you\\u2019ll experience from low or dirty transmission fluid will be the same as transmission problems. If you check the fluid levels regularly and refill as necessary then you\\u2019ll know if there are any symptoms of trouble that it\\u2019s not because the fluid levels are low and you need to see a mechanic.\"},{\"title\":\"Are there different types of transmission fluid?\",\"content\":\"How do I know what to buy? Yes, there are many different types of transmission fluid, each designed for a certain transmission. Different vehicles require different transmission fluids and the age of the car can also be a factor because newer transmissions take different types of transmission fluids than older vehicles. Don\\u2019t guess! Find out which type of transmission fluid is required for your vehicle by checking your owner\\u2019s manual.\"},{\"title\":\"What is a transmission flush and should I get one?\",\"content\":\"A transmission flush is used by some auto repair shops with the goal of flushing out debris.  Auto Tech does not do any sort of transmission flush.  Flushing an older transmission can cause harmful sediment to get stuck in the solenoids of the transmission. We heavily favor regular maintenance to lengthen the life of your transmission.  We service the transmission by changing fluid and the filter and do not recommend having your transmission flushed.\"},{\"title\":\"How do I know I have a fluid leak from the transmission?\",\"content\":\"Transmission fluid is slightly pink in color \\u2013 it will appear pink or red, or possibly more brownish if the transmission fluid is dirty and needs to be replaced. When you feel transmission fluid it will be slick and oily on your fingers. It smells much like oil unless it is dirty, in which case it will smell burnt. Usually transmission fluid leaks around the front or middle of your vehicle, so if you find puddles of reddish liquid there it is probably transmission fluid. Another clue is if in addition to the leak your transmission is not working well and you notice changes in the way it sounds when you shift gears, or if shifting gears is not working as well. In this case you likely have a leak of transmission fluid that is impacting how your transmission operates.\"}]', 4, 300.00, 0.00, 0, 1, '[{\"name\":\"Child Toddler Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Infant Child Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"GPS Satellite\",\"price\":\"200\",\"type\":\"one_time\"}]', NULL, 3, 'Auto', 8, 4, 'publish', 1, 1, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', 4.0, NULL, NULL, NULL),
(6, 'Vinfast Fadil Plus', 'vinfast-fadil-plus', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 146, 135, 1, 'Arrondissement de Paris', '21.018398', '105.812820', 12, 0, '154,155,156,157,158,159,160', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"When should I check the transmission fluid?\",\"content\":\"You should check the transmission fluid regularly. Try to check it at least once a month or at the sign of any trouble, for instance if there is any hesitation when you shift gears in an automatic.\"},{\"title\":\"How do I check the transmission fluid?\",\"content\":\"It\\u2019s not hard to check your transmission fluid if the vehicle is an automatic. This link to the Dummies guide to checking your transmission fluid has step-by-step instructions and illustrations that show you where to locate the dipstick. What you want is clear, pink transmission fluid. If it is low, top it up. If it is dark, smells burnt or has bits in it then you need to get it changed by at a reliable auto repair shop.\"},{\"title\":\"Is it really that important to check the transmission fluid?\",\"content\":\"Yes, it can be. Often times the symptoms you\\u2019ll experience from low or dirty transmission fluid will be the same as transmission problems. If you check the fluid levels regularly and refill as necessary then you\\u2019ll know if there are any symptoms of trouble that it\\u2019s not because the fluid levels are low and you need to see a mechanic.\"},{\"title\":\"Are there different types of transmission fluid?\",\"content\":\"How do I know what to buy? Yes, there are many different types of transmission fluid, each designed for a certain transmission. Different vehicles require different transmission fluids and the age of the car can also be a factor because newer transmissions take different types of transmission fluids than older vehicles. Don\\u2019t guess! Find out which type of transmission fluid is required for your vehicle by checking your owner\\u2019s manual.\"},{\"title\":\"What is a transmission flush and should I get one?\",\"content\":\"A transmission flush is used by some auto repair shops with the goal of flushing out debris.  Auto Tech does not do any sort of transmission flush.  Flushing an older transmission can cause harmful sediment to get stuck in the solenoids of the transmission. We heavily favor regular maintenance to lengthen the life of your transmission.  We service the transmission by changing fluid and the filter and do not recommend having your transmission flushed.\"},{\"title\":\"How do I know I have a fluid leak from the transmission?\",\"content\":\"Transmission fluid is slightly pink in color \\u2013 it will appear pink or red, or possibly more brownish if the transmission fluid is dirty and needs to be replaced. When you feel transmission fluid it will be slick and oily on your fingers. It smells much like oil unless it is dirty, in which case it will smell burnt. Usually transmission fluid leaks around the front or middle of your vehicle, so if you find puddles of reddish liquid there it is probably transmission fluid. Another clue is if in addition to the leak your transmission is not working well and you notice changes in the way it sounds when you shift gears, or if shifting gears is not working as well. In this case you likely have a leak of transmission fluid that is impacting how your transmission operates.\"}]', 2, 400.00, 0.00, 0, 1, '[{\"name\":\"Child Toddler Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Infant Child Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"GPS Satellite\",\"price\":\"200\",\"type\":\"one_time\"}]', NULL, 3, 'Auto', 6, 4, 'publish', 1, 5, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', 4.0, NULL, NULL, NULL),
(7, 'Mercedes Benz', 'mercedes-benz', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 147, 135, 1, 'Arrondissement de Paris', '21.025769', '105.829635', 12, 1, '154,155,156,157,158,159,160', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"When should I check the transmission fluid?\",\"content\":\"You should check the transmission fluid regularly. Try to check it at least once a month or at the sign of any trouble, for instance if there is any hesitation when you shift gears in an automatic.\"},{\"title\":\"How do I check the transmission fluid?\",\"content\":\"It\\u2019s not hard to check your transmission fluid if the vehicle is an automatic. This link to the Dummies guide to checking your transmission fluid has step-by-step instructions and illustrations that show you where to locate the dipstick. What you want is clear, pink transmission fluid. If it is low, top it up. If it is dark, smells burnt or has bits in it then you need to get it changed by at a reliable auto repair shop.\"},{\"title\":\"Is it really that important to check the transmission fluid?\",\"content\":\"Yes, it can be. Often times the symptoms you\\u2019ll experience from low or dirty transmission fluid will be the same as transmission problems. If you check the fluid levels regularly and refill as necessary then you\\u2019ll know if there are any symptoms of trouble that it\\u2019s not because the fluid levels are low and you need to see a mechanic.\"},{\"title\":\"Are there different types of transmission fluid?\",\"content\":\"How do I know what to buy? Yes, there are many different types of transmission fluid, each designed for a certain transmission. Different vehicles require different transmission fluids and the age of the car can also be a factor because newer transmissions take different types of transmission fluids than older vehicles. Don\\u2019t guess! Find out which type of transmission fluid is required for your vehicle by checking your owner\\u2019s manual.\"},{\"title\":\"What is a transmission flush and should I get one?\",\"content\":\"A transmission flush is used by some auto repair shops with the goal of flushing out debris.  Auto Tech does not do any sort of transmission flush.  Flushing an older transmission can cause harmful sediment to get stuck in the solenoids of the transmission. We heavily favor regular maintenance to lengthen the life of your transmission.  We service the transmission by changing fluid and the filter and do not recommend having your transmission flushed.\"},{\"title\":\"How do I know I have a fluid leak from the transmission?\",\"content\":\"Transmission fluid is slightly pink in color \\u2013 it will appear pink or red, or possibly more brownish if the transmission fluid is dirty and needs to be replaced. When you feel transmission fluid it will be slick and oily on your fingers. It smells much like oil unless it is dirty, in which case it will smell burnt. Usually transmission fluid leaks around the front or middle of your vehicle, so if you find puddles of reddish liquid there it is probably transmission fluid. Another clue is if in addition to the leak your transmission is not working well and you notice changes in the way it sounds when you shift gears, or if shifting gears is not working as well. In this case you likely have a leak of transmission fluid that is impacting how your transmission operates.\"}]', 1, 200.00, 0.00, 0, 1, '[{\"name\":\"Child Toddler Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Infant Child Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"GPS Satellite\",\"price\":\"200\",\"type\":\"one_time\"}]', NULL, 4, 'Auto', 4, 4, 'publish', 1, 4, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', 4.3, NULL, NULL, NULL),
(8, 'Vinfast Lux SA2.0 Plus', 'vinfast-lux-sa20-plus', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 148, 135, 1, 'Arrondissement de Paris', '21.017437', '105.831179', 12, 0, '154,155,156,157,158,159,160', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"When should I check the transmission fluid?\",\"content\":\"You should check the transmission fluid regularly. Try to check it at least once a month or at the sign of any trouble, for instance if there is any hesitation when you shift gears in an automatic.\"},{\"title\":\"How do I check the transmission fluid?\",\"content\":\"It\\u2019s not hard to check your transmission fluid if the vehicle is an automatic. This link to the Dummies guide to checking your transmission fluid has step-by-step instructions and illustrations that show you where to locate the dipstick. What you want is clear, pink transmission fluid. If it is low, top it up. If it is dark, smells burnt or has bits in it then you need to get it changed by at a reliable auto repair shop.\"},{\"title\":\"Is it really that important to check the transmission fluid?\",\"content\":\"Yes, it can be. Often times the symptoms you\\u2019ll experience from low or dirty transmission fluid will be the same as transmission problems. If you check the fluid levels regularly and refill as necessary then you\\u2019ll know if there are any symptoms of trouble that it\\u2019s not because the fluid levels are low and you need to see a mechanic.\"},{\"title\":\"Are there different types of transmission fluid?\",\"content\":\"How do I know what to buy? Yes, there are many different types of transmission fluid, each designed for a certain transmission. Different vehicles require different transmission fluids and the age of the car can also be a factor because newer transmissions take different types of transmission fluids than older vehicles. Don\\u2019t guess! Find out which type of transmission fluid is required for your vehicle by checking your owner\\u2019s manual.\"},{\"title\":\"What is a transmission flush and should I get one?\",\"content\":\"A transmission flush is used by some auto repair shops with the goal of flushing out debris.  Auto Tech does not do any sort of transmission flush.  Flushing an older transmission can cause harmful sediment to get stuck in the solenoids of the transmission. We heavily favor regular maintenance to lengthen the life of your transmission.  We service the transmission by changing fluid and the filter and do not recommend having your transmission flushed.\"},{\"title\":\"How do I know I have a fluid leak from the transmission?\",\"content\":\"Transmission fluid is slightly pink in color \\u2013 it will appear pink or red, or possibly more brownish if the transmission fluid is dirty and needs to be replaced. When you feel transmission fluid it will be slick and oily on your fingers. It smells much like oil unless it is dirty, in which case it will smell burnt. Usually transmission fluid leaks around the front or middle of your vehicle, so if you find puddles of reddish liquid there it is probably transmission fluid. Another clue is if in addition to the leak your transmission is not working well and you notice changes in the way it sounds when you shift gears, or if shifting gears is not working as well. In this case you likely have a leak of transmission fluid that is impacting how your transmission operates.\"}]', 4, 600.00, 0.00, 0, 1, '[{\"name\":\"Child Toddler Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Infant Child Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"GPS Satellite\",\"price\":\"200\",\"type\":\"one_time\"}]', NULL, 3, 'Auto', 8, 4, 'publish', 1, 4, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', 4.0, NULL, NULL, NULL),
(9, 'Honda Civic', 'honda-civic', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 149, 135, 6, 'Arrondissement de Paris', '21.047879', '105.809731', 12, 1, '154,155,156,157,158,159,160', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"When should I check the transmission fluid?\",\"content\":\"You should check the transmission fluid regularly. Try to check it at least once a month or at the sign of any trouble, for instance if there is any hesitation when you shift gears in an automatic.\"},{\"title\":\"How do I check the transmission fluid?\",\"content\":\"It\\u2019s not hard to check your transmission fluid if the vehicle is an automatic. This link to the Dummies guide to checking your transmission fluid has step-by-step instructions and illustrations that show you where to locate the dipstick. What you want is clear, pink transmission fluid. If it is low, top it up. If it is dark, smells burnt or has bits in it then you need to get it changed by at a reliable auto repair shop.\"},{\"title\":\"Is it really that important to check the transmission fluid?\",\"content\":\"Yes, it can be. Often times the symptoms you\\u2019ll experience from low or dirty transmission fluid will be the same as transmission problems. If you check the fluid levels regularly and refill as necessary then you\\u2019ll know if there are any symptoms of trouble that it\\u2019s not because the fluid levels are low and you need to see a mechanic.\"},{\"title\":\"Are there different types of transmission fluid?\",\"content\":\"How do I know what to buy? Yes, there are many different types of transmission fluid, each designed for a certain transmission. Different vehicles require different transmission fluids and the age of the car can also be a factor because newer transmissions take different types of transmission fluids than older vehicles. Don\\u2019t guess! Find out which type of transmission fluid is required for your vehicle by checking your owner\\u2019s manual.\"},{\"title\":\"What is a transmission flush and should I get one?\",\"content\":\"A transmission flush is used by some auto repair shops with the goal of flushing out debris.  Auto Tech does not do any sort of transmission flush.  Flushing an older transmission can cause harmful sediment to get stuck in the solenoids of the transmission. We heavily favor regular maintenance to lengthen the life of your transmission.  We service the transmission by changing fluid and the filter and do not recommend having your transmission flushed.\"},{\"title\":\"How do I know I have a fluid leak from the transmission?\",\"content\":\"Transmission fluid is slightly pink in color \\u2013 it will appear pink or red, or possibly more brownish if the transmission fluid is dirty and needs to be replaced. When you feel transmission fluid it will be slick and oily on your fingers. It smells much like oil unless it is dirty, in which case it will smell burnt. Usually transmission fluid leaks around the front or middle of your vehicle, so if you find puddles of reddish liquid there it is probably transmission fluid. Another clue is if in addition to the leak your transmission is not working well and you notice changes in the way it sounds when you shift gears, or if shifting gears is not working as well. In this case you likely have a leak of transmission fluid that is impacting how your transmission operates.\"}]', 3, 450.00, 0.00, 1, 1, '[{\"name\":\"Child Toddler Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Infant Child Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"GPS Satellite\",\"price\":\"200\",\"type\":\"one_time\"}]', NULL, 3, 'Auto', 6, 4, 'publish', 1, 4, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', 4.7, NULL, NULL, NULL),
(10, 'Toyota Prius Plus', 'toyota-prius-plus', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 150, 135, 7, 'Arrondissement de Paris', '21.025449', '105.804412', 12, 0, '154,155,156,157,158,159,160', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"When should I check the transmission fluid?\",\"content\":\"You should check the transmission fluid regularly. Try to check it at least once a month or at the sign of any trouble, for instance if there is any hesitation when you shift gears in an automatic.\"},{\"title\":\"How do I check the transmission fluid?\",\"content\":\"It\\u2019s not hard to check your transmission fluid if the vehicle is an automatic. This link to the Dummies guide to checking your transmission fluid has step-by-step instructions and illustrations that show you where to locate the dipstick. What you want is clear, pink transmission fluid. If it is low, top it up. If it is dark, smells burnt or has bits in it then you need to get it changed by at a reliable auto repair shop.\"},{\"title\":\"Is it really that important to check the transmission fluid?\",\"content\":\"Yes, it can be. Often times the symptoms you\\u2019ll experience from low or dirty transmission fluid will be the same as transmission problems. If you check the fluid levels regularly and refill as necessary then you\\u2019ll know if there are any symptoms of trouble that it\\u2019s not because the fluid levels are low and you need to see a mechanic.\"},{\"title\":\"Are there different types of transmission fluid?\",\"content\":\"How do I know what to buy? Yes, there are many different types of transmission fluid, each designed for a certain transmission. Different vehicles require different transmission fluids and the age of the car can also be a factor because newer transmissions take different types of transmission fluids than older vehicles. Don\\u2019t guess! Find out which type of transmission fluid is required for your vehicle by checking your owner\\u2019s manual.\"},{\"title\":\"What is a transmission flush and should I get one?\",\"content\":\"A transmission flush is used by some auto repair shops with the goal of flushing out debris.  Auto Tech does not do any sort of transmission flush.  Flushing an older transmission can cause harmful sediment to get stuck in the solenoids of the transmission. We heavily favor regular maintenance to lengthen the life of your transmission.  We service the transmission by changing fluid and the filter and do not recommend having your transmission flushed.\"},{\"title\":\"How do I know I have a fluid leak from the transmission?\",\"content\":\"Transmission fluid is slightly pink in color \\u2013 it will appear pink or red, or possibly more brownish if the transmission fluid is dirty and needs to be replaced. When you feel transmission fluid it will be slick and oily on your fingers. It smells much like oil unless it is dirty, in which case it will smell burnt. Usually transmission fluid leaks around the front or middle of your vehicle, so if you find puddles of reddish liquid there it is probably transmission fluid. Another clue is if in addition to the leak your transmission is not working well and you notice changes in the way it sounds when you shift gears, or if shifting gears is not working as well. In this case you likely have a leak of transmission fluid that is impacting how your transmission operates.\"}]', 4, 199.00, 0.00, 1, 1, '[{\"name\":\"Child Toddler Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Infant Child Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"GPS Satellite\",\"price\":\"200\",\"type\":\"one_time\"}]', NULL, 10, 'Auto', 10, 4, 'publish', 1, 6, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', 4.5, NULL, NULL, NULL);
INSERT INTO `bravo_cars` (`id`, `title`, `slug`, `content`, `image_id`, `banner_image_id`, `location_id`, `address`, `map_lat`, `map_lng`, `map_zoom`, `is_featured`, `gallery`, `video`, `faqs`, `number`, `price`, `sale_price`, `is_instant`, `enable_extra_price`, `extra_price`, `discount_by_days`, `passenger`, `gear`, `baggage`, `door`, `status`, `default_state`, `create_user`, `update_user`, `deleted_at`, `created_at`, `updated_at`, `review_score`, `ical_import_url`, `enable_service_fee`, `service_fee`) VALUES
(11, 'Vinfast Lux V8 (SUV)', 'vinfast-lux-v8-suv', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 151, 135, 8, 'Arrondissement de Paris', '21.020001', '105.836670', 12, 1, '154,155,156,157,158,159,160', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"When should I check the transmission fluid?\",\"content\":\"You should check the transmission fluid regularly. Try to check it at least once a month or at the sign of any trouble, for instance if there is any hesitation when you shift gears in an automatic.\"},{\"title\":\"How do I check the transmission fluid?\",\"content\":\"It\\u2019s not hard to check your transmission fluid if the vehicle is an automatic. This link to the Dummies guide to checking your transmission fluid has step-by-step instructions and illustrations that show you where to locate the dipstick. What you want is clear, pink transmission fluid. If it is low, top it up. If it is dark, smells burnt or has bits in it then you need to get it changed by at a reliable auto repair shop.\"},{\"title\":\"Is it really that important to check the transmission fluid?\",\"content\":\"Yes, it can be. Often times the symptoms you\\u2019ll experience from low or dirty transmission fluid will be the same as transmission problems. If you check the fluid levels regularly and refill as necessary then you\\u2019ll know if there are any symptoms of trouble that it\\u2019s not because the fluid levels are low and you need to see a mechanic.\"},{\"title\":\"Are there different types of transmission fluid?\",\"content\":\"How do I know what to buy? Yes, there are many different types of transmission fluid, each designed for a certain transmission. Different vehicles require different transmission fluids and the age of the car can also be a factor because newer transmissions take different types of transmission fluids than older vehicles. Don\\u2019t guess! Find out which type of transmission fluid is required for your vehicle by checking your owner\\u2019s manual.\"},{\"title\":\"What is a transmission flush and should I get one?\",\"content\":\"A transmission flush is used by some auto repair shops with the goal of flushing out debris.  Auto Tech does not do any sort of transmission flush.  Flushing an older transmission can cause harmful sediment to get stuck in the solenoids of the transmission. We heavily favor regular maintenance to lengthen the life of your transmission.  We service the transmission by changing fluid and the filter and do not recommend having your transmission flushed.\"},{\"title\":\"How do I know I have a fluid leak from the transmission?\",\"content\":\"Transmission fluid is slightly pink in color \\u2013 it will appear pink or red, or possibly more brownish if the transmission fluid is dirty and needs to be replaced. When you feel transmission fluid it will be slick and oily on your fingers. It smells much like oil unless it is dirty, in which case it will smell burnt. Usually transmission fluid leaks around the front or middle of your vehicle, so if you find puddles of reddish liquid there it is probably transmission fluid. Another clue is if in addition to the leak your transmission is not working well and you notice changes in the way it sounds when you shift gears, or if shifting gears is not working as well. In this case you likely have a leak of transmission fluid that is impacting how your transmission operates.\"}]', 3, 250.00, 0.00, 0, 1, '[{\"name\":\"Child Toddler Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Infant Child Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"GPS Satellite\",\"price\":\"200\",\"type\":\"one_time\"}]', NULL, 6, 'Auto', 9, 4, 'publish', 1, 5, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', 4.3, NULL, NULL, NULL),
(12, 'Vinfast Lux A2.0 Plus', 'vinfast-lux-a20-plus', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 152, 135, 3, 'Arrondissement de Paris', '21.051244', '105.777988', 12, 1, '154,155,156,157,158,159,160', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"When should I check the transmission fluid?\",\"content\":\"You should check the transmission fluid regularly. Try to check it at least once a month or at the sign of any trouble, for instance if there is any hesitation when you shift gears in an automatic.\"},{\"title\":\"How do I check the transmission fluid?\",\"content\":\"It\\u2019s not hard to check your transmission fluid if the vehicle is an automatic. This link to the Dummies guide to checking your transmission fluid has step-by-step instructions and illustrations that show you where to locate the dipstick. What you want is clear, pink transmission fluid. If it is low, top it up. If it is dark, smells burnt or has bits in it then you need to get it changed by at a reliable auto repair shop.\"},{\"title\":\"Is it really that important to check the transmission fluid?\",\"content\":\"Yes, it can be. Often times the symptoms you\\u2019ll experience from low or dirty transmission fluid will be the same as transmission problems. If you check the fluid levels regularly and refill as necessary then you\\u2019ll know if there are any symptoms of trouble that it\\u2019s not because the fluid levels are low and you need to see a mechanic.\"},{\"title\":\"Are there different types of transmission fluid?\",\"content\":\"How do I know what to buy? Yes, there are many different types of transmission fluid, each designed for a certain transmission. Different vehicles require different transmission fluids and the age of the car can also be a factor because newer transmissions take different types of transmission fluids than older vehicles. Don\\u2019t guess! Find out which type of transmission fluid is required for your vehicle by checking your owner\\u2019s manual.\"},{\"title\":\"What is a transmission flush and should I get one?\",\"content\":\"A transmission flush is used by some auto repair shops with the goal of flushing out debris.  Auto Tech does not do any sort of transmission flush.  Flushing an older transmission can cause harmful sediment to get stuck in the solenoids of the transmission. We heavily favor regular maintenance to lengthen the life of your transmission.  We service the transmission by changing fluid and the filter and do not recommend having your transmission flushed.\"},{\"title\":\"How do I know I have a fluid leak from the transmission?\",\"content\":\"Transmission fluid is slightly pink in color \\u2013 it will appear pink or red, or possibly more brownish if the transmission fluid is dirty and needs to be replaced. When you feel transmission fluid it will be slick and oily on your fingers. It smells much like oil unless it is dirty, in which case it will smell burnt. Usually transmission fluid leaks around the front or middle of your vehicle, so if you find puddles of reddish liquid there it is probably transmission fluid. Another clue is if in addition to the leak your transmission is not working well and you notice changes in the way it sounds when you shift gears, or if shifting gears is not working as well. In this case you likely have a leak of transmission fluid that is impacting how your transmission operates.\"}]', 2, 350.00, 0.00, 1, 1, '[{\"name\":\"Child Toddler Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Infant Child Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"GPS Satellite\",\"price\":\"200\",\"type\":\"one_time\"}]', NULL, 4, 'Auto', 6, 4, 'publish', 1, 4, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', 4.8, NULL, NULL, NULL),
(13, 'Vinfast Fadil Standard', 'vinfast-fadil-standard', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 153, 135, 1, 'Arrondissement de Paris', '21.053326', '105.841475', 12, 0, '154,155,156,157,158,159,160', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"When should I check the transmission fluid?\",\"content\":\"You should check the transmission fluid regularly. Try to check it at least once a month or at the sign of any trouble, for instance if there is any hesitation when you shift gears in an automatic.\"},{\"title\":\"How do I check the transmission fluid?\",\"content\":\"It\\u2019s not hard to check your transmission fluid if the vehicle is an automatic. This link to the Dummies guide to checking your transmission fluid has step-by-step instructions and illustrations that show you where to locate the dipstick. What you want is clear, pink transmission fluid. If it is low, top it up. If it is dark, smells burnt or has bits in it then you need to get it changed by at a reliable auto repair shop.\"},{\"title\":\"Is it really that important to check the transmission fluid?\",\"content\":\"Yes, it can be. Often times the symptoms you\\u2019ll experience from low or dirty transmission fluid will be the same as transmission problems. If you check the fluid levels regularly and refill as necessary then you\\u2019ll know if there are any symptoms of trouble that it\\u2019s not because the fluid levels are low and you need to see a mechanic.\"},{\"title\":\"Are there different types of transmission fluid?\",\"content\":\"How do I know what to buy? Yes, there are many different types of transmission fluid, each designed for a certain transmission. Different vehicles require different transmission fluids and the age of the car can also be a factor because newer transmissions take different types of transmission fluids than older vehicles. Don\\u2019t guess! Find out which type of transmission fluid is required for your vehicle by checking your owner\\u2019s manual.\"},{\"title\":\"What is a transmission flush and should I get one?\",\"content\":\"A transmission flush is used by some auto repair shops with the goal of flushing out debris.  Auto Tech does not do any sort of transmission flush.  Flushing an older transmission can cause harmful sediment to get stuck in the solenoids of the transmission. We heavily favor regular maintenance to lengthen the life of your transmission.  We service the transmission by changing fluid and the filter and do not recommend having your transmission flushed.\"},{\"title\":\"How do I know I have a fluid leak from the transmission?\",\"content\":\"Transmission fluid is slightly pink in color \\u2013 it will appear pink or red, or possibly more brownish if the transmission fluid is dirty and needs to be replaced. When you feel transmission fluid it will be slick and oily on your fingers. It smells much like oil unless it is dirty, in which case it will smell burnt. Usually transmission fluid leaks around the front or middle of your vehicle, so if you find puddles of reddish liquid there it is probably transmission fluid. Another clue is if in addition to the leak your transmission is not working well and you notice changes in the way it sounds when you shift gears, or if shifting gears is not working as well. In this case you likely have a leak of transmission fluid that is impacting how your transmission operates.\"}]', 4, 400.00, 0.00, 0, 1, '[{\"name\":\"Child Toddler Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Infant Child Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"GPS Satellite\",\"price\":\"200\",\"type\":\"one_time\"}]', NULL, 3, 'Auto', 8, 4, 'publish', 1, 5, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', 4.0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `bravo_car_dates`
--

CREATE TABLE `bravo_car_dates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `target_id` bigint(20) DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `number` tinyint(4) DEFAULT NULL,
  `active` tinyint(4) DEFAULT 0,
  `note_to_customer` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note_to_admin` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_instant` tinyint(4) DEFAULT 0,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `bravo_car_term`
--

CREATE TABLE `bravo_car_term` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `term_id` int(11) DEFAULT NULL,
  `target_id` int(11) DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `bravo_car_term`
--

INSERT INTO `bravo_car_term` (`id`, `term_id`, `target_id`, `create_user`, `update_user`, `created_at`, `updated_at`) VALUES
(1, 62, 1, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(2, 63, 1, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(3, 65, 1, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(4, 66, 1, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(5, 68, 1, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(6, 61, 2, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(7, 63, 2, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(8, 64, 2, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(9, 65, 2, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(10, 66, 2, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(11, 67, 2, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(12, 68, 2, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(13, 61, 3, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(14, 62, 3, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(15, 63, 3, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(16, 64, 3, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(17, 65, 3, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(18, 66, 3, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(19, 67, 3, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(20, 68, 3, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(21, 61, 4, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(22, 62, 4, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(23, 63, 4, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(24, 65, 4, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(25, 66, 4, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(26, 67, 4, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(27, 68, 4, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(28, 61, 5, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(29, 62, 5, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(30, 63, 5, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(31, 64, 5, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(32, 65, 5, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(33, 66, 5, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(34, 67, 5, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(35, 68, 5, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(36, 61, 6, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(37, 62, 6, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(38, 63, 6, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(39, 64, 6, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(40, 65, 6, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(41, 66, 6, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(42, 67, 6, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(43, 62, 7, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(44, 64, 7, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(45, 65, 7, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(46, 68, 7, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(47, 61, 8, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(48, 62, 8, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(49, 63, 8, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(50, 64, 8, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(51, 65, 8, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(52, 67, 8, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(53, 61, 9, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(54, 62, 9, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(55, 65, 9, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(56, 67, 9, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(57, 68, 9, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(58, 61, 10, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(59, 63, 10, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(60, 64, 10, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(61, 65, 10, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(62, 67, 10, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(63, 68, 10, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(64, 61, 11, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(65, 62, 11, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(66, 63, 11, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(67, 64, 11, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(68, 65, 11, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(69, 66, 11, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(70, 67, 11, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(71, 68, 11, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(72, 61, 12, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(73, 62, 12, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(74, 64, 12, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(75, 66, 12, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(76, 67, 12, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(77, 68, 12, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(78, 61, 13, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(79, 62, 13, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(80, 63, 13, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(81, 64, 13, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(82, 65, 13, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(83, 66, 13, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(84, 68, 13, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(85, 69, 1, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(86, 70, 1, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(87, 71, 1, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(88, 72, 1, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(89, 73, 1, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(90, 74, 1, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(91, 69, 2, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(92, 70, 2, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(93, 71, 2, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(94, 72, 2, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(95, 73, 2, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(96, 74, 2, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(97, 69, 3, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(98, 70, 3, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(99, 71, 3, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(100, 72, 3, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(101, 73, 3, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(102, 74, 3, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(103, 69, 4, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(104, 70, 4, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(105, 71, 4, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(106, 72, 4, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(107, 73, 4, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(108, 74, 4, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(109, 69, 5, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(110, 70, 5, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(111, 71, 5, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(112, 72, 5, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(113, 73, 5, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(114, 74, 5, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(115, 69, 6, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(116, 70, 6, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(117, 71, 6, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(118, 72, 6, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(119, 73, 6, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(120, 74, 6, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(121, 69, 7, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(122, 70, 7, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(123, 71, 7, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(124, 72, 7, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(125, 73, 7, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(126, 74, 7, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(127, 69, 8, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(128, 70, 8, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(129, 71, 8, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(130, 72, 8, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(131, 73, 8, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(132, 74, 8, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(133, 69, 9, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(134, 70, 9, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(135, 71, 9, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(136, 72, 9, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(137, 73, 9, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(138, 74, 9, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(139, 69, 10, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(140, 70, 10, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(141, 71, 10, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(142, 72, 10, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(143, 73, 10, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(144, 74, 10, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(145, 69, 11, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(146, 70, 11, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(147, 71, 11, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(148, 72, 11, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(149, 73, 11, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(150, 74, 11, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(151, 69, 12, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(152, 70, 12, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(153, 71, 12, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(154, 72, 12, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(155, 73, 12, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(156, 74, 12, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(157, 69, 13, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(158, 70, 13, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(159, 71, 13, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(160, 72, 13, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(161, 73, 13, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(162, 74, 13, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bravo_car_translations`
--

CREATE TABLE `bravo_car_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `origin_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faqs` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `bravo_contact`
--

CREATE TABLE `bravo_contact` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `bravo_contact`
--

INSERT INTO `bravo_contact` (`id`, `name`, `email`, `message`, `status`, `create_user`, `update_user`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Eric Jones', 'eric.jones.z.mail@gmail.com', 'Good day, \r\n\r\nMy name is Eric and unlike a lot of emails you might get, I wanted to instead provide you with a word of encouragement – Congratulations\r\n\r\nWhat for?  \r\n\r\nPart of my job is to check out websites and the work you’ve done with emeraldoffical.com definitely stands out. \r\n\r\nIt’s clear you took building a website seriously and made a real investment of time and resources into making it top quality.\r\n\r\nThere is, however, a catch… more accurately, a question…\r\n\r\nSo when someone like me happens to find your site – maybe at the top of the search results (nice job BTW) or just through a random link, how do you know? \r\n\r\nMore importantly, how do you make a connection with that person?\r\n\r\nStudies show that 7 out of 10 visitors don’t stick around – they’re there one second and then gone with the wind.\r\n\r\nHere’s a way to create INSTANT engagement that you may not have known about… \r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know INSTANTLY that they’re interested – so that you can talk to that lead while they’re literally checking out emeraldoffical.com.\r\n\r\nCLICK HERE https://talkwithwebvisitors.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nIt could be a game-changer for your business – and it gets even better… once you’ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation – immediately (and there’s literally a 100X difference between contacting someone within 5 minutes versus 30 minutes.)\r\n\r\nPlus then, even if you don’t close a deal right away, you can connect later on with text messages for new offers, content links, even just follow up notes to build a relationship.\r\n\r\nEverything I’ve just described is simple, easy, and effective. \r\n\r\nCLICK HERE https://talkwithwebvisitors.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=emeraldoffical.com', 'sent', NULL, NULL, NULL, '2021-08-24 12:29:47', '2021-08-24 12:29:47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bravo_enquiries`
--

CREATE TABLE `bravo_enquiries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `object_id` int(11) DEFAULT NULL,
  `object_model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendor_id` bigint(20) DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish_date` datetime DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `bravo_events`
--

CREATE TABLE `bravo_events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8 NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `banner_image_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_lat` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_lng` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_zoom` int(11) DEFAULT NULL,
  `is_featured` tinyint(4) DEFAULT NULL,
  `gallery` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faqs` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ticket_types` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `start_time` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `sale_price` decimal(12,2) DEFAULT NULL,
  `is_instant` tinyint(4) DEFAULT 0,
  `enable_extra_price` tinyint(4) DEFAULT NULL,
  `extra_price` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `review_score` decimal(2,1) DEFAULT NULL,
  `ical_import_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_state` tinyint(4) DEFAULT 1,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `end_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration_unit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enable_service_fee` tinyint(4) DEFAULT NULL,
  `service_fee` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `surrounding` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `bravo_events`
--

INSERT INTO `bravo_events` (`id`, `title`, `slug`, `content`, `image_id`, `banner_image_id`, `location_id`, `address`, `map_lat`, `map_lng`, `map_zoom`, `is_featured`, `gallery`, `video`, `faqs`, `ticket_types`, `duration`, `start_time`, `price`, `sale_price`, `is_instant`, `enable_extra_price`, `extra_price`, `review_score`, `ical_import_url`, `status`, `default_state`, `create_user`, `update_user`, `deleted_at`, `created_at`, `updated_at`, `end_time`, `duration_unit`, `enable_service_fee`, `service_fee`, `surrounding`) VALUES
(1, 'Andante & Allegro Event Design', 'andante-allegro-event-design', '<p>Start and end in San Francisco! With the in-depth cultural event Northern California Summer 2019, you have a 8 day event package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 162, 180, 1, 'Arrondissement de Paris', '48.852754', '2.339155', 12, 0, '174,175,176,177,178,179', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Can children come to events?\",\"content\":\"Unless otherwise stated, children are always welcome, but please be aware that most of our events are aimed at an adult audience.  Children must be supervised at all times.\"},{\"title\":\"Is there seating at events?\",\"content\":\"Yes, we always provide a variety of seating for all ticketholders unless it\\u2019s a dance event or art show opening.  One of our crew will always be on hand to assist you in finding a seat if you need one.\"},{\"title\":\"Where can I park?\",\"content\":\"There is a wide choice of places to park, however most are not free so please do check before you come on the Southampton City Council website.  We have no onsite parking.\"},{\"title\":\"Are you near public transport?\",\"content\":\"Very.  There is a bus stop a few doors up and the train station is about 7 minutes gentle walk away.\"},{\"title\":\"Is it safe to come at night?\",\"content\":\"To our knowledge, none of our customers has had any bad experience, however we do recommend that if you are worried you stick to the roads rather than walk through the parks.  The roads are well-lit and generally there are a lot of people about at night.\"},{\"title\":\"Can I come on my own?\",\"content\":\"YES!  Many of our customers come alone to events, it\\u2019s never a problem and you will be welcomed warmly.\"}]', '[{\"code\":\"ticket_vip\",\"name\":\"Ticket Vip\",\"name_ja\":\"\\u30c1\\u30b1\\u30c3\\u30c8VIP\",\"name_egy\":null,\"price\":\"1000\",\"number\":\"10\"},{\"code\":\"ticket_group_tickets\",\"name\":\"Group Tickets\",\"name_ja\":\"\\u30b0\\u30eb\\u30fc\\u30d7\\u30c1\\u30b1\\u30c3\\u30c8\",\"name_egy\":null,\"price\":\"500\",\"number\":\"10\"}]', 1, '20:00', 2000.00, 0.00, 0, 1, '[{\"name\":\"Event service\",\"price\":\"100\",\"type\":\"one_time\"}]', 4.8, NULL, 'publish', 1, 1, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', NULL, NULL, NULL, NULL, NULL),
(2, 'Painted Desert Event Designs', 'painted-desert-event-designs', '<p>Start and end in San Francisco! With the in-depth cultural event Northern California Summer 2019, you have a 8 day event package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 163, 181, 1, 'Porte de Vanves', '48.853917', '2.307199', 12, 1, '174,175,176,177,178,179', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Can children come to events?\",\"content\":\"Unless otherwise stated, children are always welcome, but please be aware that most of our events are aimed at an adult audience.  Children must be supervised at all times.\"},{\"title\":\"Is there seating at events?\",\"content\":\"Yes, we always provide a variety of seating for all ticketholders unless it\\u2019s a dance event or art show opening.  One of our crew will always be on hand to assist you in finding a seat if you need one.\"},{\"title\":\"Where can I park?\",\"content\":\"There is a wide choice of places to park, however most are not free so please do check before you come on the Southampton City Council website.  We have no onsite parking.\"},{\"title\":\"Are you near public transport?\",\"content\":\"Very.  There is a bus stop a few doors up and the train station is about 7 minutes gentle walk away.\"},{\"title\":\"Is it safe to come at night?\",\"content\":\"To our knowledge, none of our customers has had any bad experience, however we do recommend that if you are worried you stick to the roads rather than walk through the parks.  The roads are well-lit and generally there are a lot of people about at night.\"},{\"title\":\"Can I come on my own?\",\"content\":\"YES!  Many of our customers come alone to events, it\\u2019s never a problem and you will be welcomed warmly.\"}]', '[{\"code\":\"ticket_vip\",\"name\":\"Ticket Vip\",\"name_ja\":\"\\u30c1\\u30b1\\u30c3\\u30c8VIP\",\"name_egy\":null,\"price\":\"1000\",\"number\":\"10\"},{\"code\":\"ticket_group_tickets\",\"name\":\"Group Tickets\",\"name_ja\":\"\\u30b0\\u30eb\\u30fc\\u30d7\\u30c1\\u30b1\\u30c3\\u30c8\",\"name_egy\":null,\"price\":\"500\",\"number\":\"10\"}]', 2, '19:00', 900.00, 709.00, 0, 1, '[{\"name\":\"Event service\",\"price\":\"100\",\"type\":\"one_time\"}]', 4.3, NULL, 'publish', 1, 1, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', NULL, NULL, NULL, NULL, NULL),
(3, 'Bamboo Grove Event Planning', 'bamboo-grove-event-planning', '<p>Start and end in San Francisco! With the in-depth cultural event Northern California Summer 2019, you have a 8 day event package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 164, 182, 1, 'Petit-Montrouge', '48.884900', '2.346377', 12, 1, '174,175,176,177,178,179', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Can children come to events?\",\"content\":\"Unless otherwise stated, children are always welcome, but please be aware that most of our events are aimed at an adult audience.  Children must be supervised at all times.\"},{\"title\":\"Is there seating at events?\",\"content\":\"Yes, we always provide a variety of seating for all ticketholders unless it\\u2019s a dance event or art show opening.  One of our crew will always be on hand to assist you in finding a seat if you need one.\"},{\"title\":\"Where can I park?\",\"content\":\"There is a wide choice of places to park, however most are not free so please do check before you come on the Southampton City Council website.  We have no onsite parking.\"},{\"title\":\"Are you near public transport?\",\"content\":\"Very.  There is a bus stop a few doors up and the train station is about 7 minutes gentle walk away.\"},{\"title\":\"Is it safe to come at night?\",\"content\":\"To our knowledge, none of our customers has had any bad experience, however we do recommend that if you are worried you stick to the roads rather than walk through the parks.  The roads are well-lit and generally there are a lot of people about at night.\"},{\"title\":\"Can I come on my own?\",\"content\":\"YES!  Many of our customers come alone to events, it\\u2019s never a problem and you will be welcomed warmly.\"}]', '[{\"code\":\"ticket_vip\",\"name\":\"Ticket Vip\",\"name_ja\":\"\\u30c1\\u30b1\\u30c3\\u30c8VIP\",\"name_egy\":null,\"price\":\"1000\",\"number\":\"10\"},{\"code\":\"ticket_group_tickets\",\"name\":\"Group Tickets\",\"name_ja\":\"\\u30b0\\u30eb\\u30fc\\u30d7\\u30c1\\u30b1\\u30c3\\u30c8\",\"name_egy\":null,\"price\":\"500\",\"number\":\"10\"}]', 4, '19:00', 1500.00, 524.00, 0, 1, '[{\"name\":\"Event service\",\"price\":\"100\",\"type\":\"one_time\"}]', 4.5, NULL, 'publish', 1, 4, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', NULL, NULL, NULL, NULL, NULL),
(4, 'Aspen Glade Weddings & Events', 'aspen-glade-weddings-events', '<p>Start and end in San Francisco! With the in-depth cultural event Northern California Summer 2019, you have a 8 day event package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 165, 180, 2, 'New York', '40.707891', '-74.008825', 12, 1, '174,175,176,177,178,179', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Can children come to events?\",\"content\":\"Unless otherwise stated, children are always welcome, but please be aware that most of our events are aimed at an adult audience.  Children must be supervised at all times.\"},{\"title\":\"Is there seating at events?\",\"content\":\"Yes, we always provide a variety of seating for all ticketholders unless it\\u2019s a dance event or art show opening.  One of our crew will always be on hand to assist you in finding a seat if you need one.\"},{\"title\":\"Where can I park?\",\"content\":\"There is a wide choice of places to park, however most are not free so please do check before you come on the Southampton City Council website.  We have no onsite parking.\"},{\"title\":\"Are you near public transport?\",\"content\":\"Very.  There is a bus stop a few doors up and the train station is about 7 minutes gentle walk away.\"},{\"title\":\"Is it safe to come at night?\",\"content\":\"To our knowledge, none of our customers has had any bad experience, however we do recommend that if you are worried you stick to the roads rather than walk through the parks.  The roads are well-lit and generally there are a lot of people about at night.\"},{\"title\":\"Can I come on my own?\",\"content\":\"YES!  Many of our customers come alone to events, it\\u2019s never a problem and you will be welcomed warmly.\"}]', '[{\"code\":\"ticket_vip\",\"name\":\"Ticket Vip\",\"name_ja\":\"\\u30c1\\u30b1\\u30c3\\u30c8VIP\",\"name_egy\":null,\"price\":\"1000\",\"number\":\"10\"},{\"code\":\"ticket_group_tickets\",\"name\":\"Group Tickets\",\"name_ja\":\"\\u30b0\\u30eb\\u30fc\\u30d7\\u30c1\\u30b1\\u30c3\\u30c8\",\"name_egy\":null,\"price\":\"500\",\"number\":\"10\"}]', 1, '17:00', 850.00, 0.00, 0, 1, '[{\"name\":\"Event service\",\"price\":\"100\",\"type\":\"one_time\"}]', 4.3, NULL, 'publish', 1, 1, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', NULL, NULL, NULL, NULL, NULL),
(5, 'Southwest States (Ex Los Angeles) ', 'southwest-states', '<p>Start and end in San Francisco! With the in-depth cultural event Northern California Summer 2019, you have a 8 day event package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 166, 181, 2, 'Regal Cinemas Battery Park 11', '40.714578', '-73.983888', 12, 0, '174,175,176,177,178,179', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Can children come to events?\",\"content\":\"Unless otherwise stated, children are always welcome, but please be aware that most of our events are aimed at an adult audience.  Children must be supervised at all times.\"},{\"title\":\"Is there seating at events?\",\"content\":\"Yes, we always provide a variety of seating for all ticketholders unless it\\u2019s a dance event or art show opening.  One of our crew will always be on hand to assist you in finding a seat if you need one.\"},{\"title\":\"Where can I park?\",\"content\":\"There is a wide choice of places to park, however most are not free so please do check before you come on the Southampton City Council website.  We have no onsite parking.\"},{\"title\":\"Are you near public transport?\",\"content\":\"Very.  There is a bus stop a few doors up and the train station is about 7 minutes gentle walk away.\"},{\"title\":\"Is it safe to come at night?\",\"content\":\"To our knowledge, none of our customers has had any bad experience, however we do recommend that if you are worried you stick to the roads rather than walk through the parks.  The roads are well-lit and generally there are a lot of people about at night.\"},{\"title\":\"Can I come on my own?\",\"content\":\"YES!  Many of our customers come alone to events, it\\u2019s never a problem and you will be welcomed warmly.\"}]', '[{\"code\":\"ticket_vip\",\"name\":\"Ticket Vip\",\"name_ja\":\"\\u30c1\\u30b1\\u30c3\\u30c8VIP\",\"name_egy\":null,\"price\":\"1000\",\"number\":\"10\"},{\"code\":\"ticket_group_tickets\",\"name\":\"Group Tickets\",\"name_ja\":\"\\u30b0\\u30eb\\u30fc\\u30d7\\u30c1\\u30b1\\u30c3\\u30c8\",\"name_egy\":null,\"price\":\"500\",\"number\":\"10\"}]', 6, '18:00', 1900.00, 864.00, 0, 1, '[{\"name\":\"Event service\",\"price\":\"100\",\"type\":\"one_time\"}]', 4.5, NULL, 'publish', 1, 6, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', NULL, NULL, NULL, NULL, NULL),
(6, 'Spanish Moss Event Design', 'spanish-moss-event-design', '<p>Start and end in San Francisco! With the in-depth cultural event Northern California Summer 2019, you have a 8 day event package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 167, 182, 2, 'Prince St Station', '40.720161', '-74.009628', 12, 1, '174,175,176,177,178,179', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Can children come to events?\",\"content\":\"Unless otherwise stated, children are always welcome, but please be aware that most of our events are aimed at an adult audience.  Children must be supervised at all times.\"},{\"title\":\"Is there seating at events?\",\"content\":\"Yes, we always provide a variety of seating for all ticketholders unless it\\u2019s a dance event or art show opening.  One of our crew will always be on hand to assist you in finding a seat if you need one.\"},{\"title\":\"Where can I park?\",\"content\":\"There is a wide choice of places to park, however most are not free so please do check before you come on the Southampton City Council website.  We have no onsite parking.\"},{\"title\":\"Are you near public transport?\",\"content\":\"Very.  There is a bus stop a few doors up and the train station is about 7 minutes gentle walk away.\"},{\"title\":\"Is it safe to come at night?\",\"content\":\"To our knowledge, none of our customers has had any bad experience, however we do recommend that if you are worried you stick to the roads rather than walk through the parks.  The roads are well-lit and generally there are a lot of people about at night.\"},{\"title\":\"Can I come on my own?\",\"content\":\"YES!  Many of our customers come alone to events, it\\u2019s never a problem and you will be welcomed warmly.\"}]', '[{\"code\":\"ticket_vip\",\"name\":\"Ticket Vip\",\"name_ja\":\"\\u30c1\\u30b1\\u30c3\\u30c8VIP\",\"name_egy\":null,\"price\":\"1000\",\"number\":\"10\"},{\"code\":\"ticket_group_tickets\",\"name\":\"Group Tickets\",\"name_ja\":\"\\u30b0\\u30eb\\u30fc\\u30d7\\u30c1\\u30b1\\u30c3\\u30c8\",\"name_egy\":null,\"price\":\"500\",\"number\":\"10\"}]', 8, '19:00', 600.00, 0.00, 0, 1, '[{\"name\":\"Event service\",\"price\":\"100\",\"type\":\"one_time\"}]', 4.3, NULL, 'publish', 1, 6, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', NULL, NULL, NULL, NULL, NULL),
(7, 'Eastern Discovery', 'eastern-discovery', '<p>Start and end in San Francisco! With the in-depth cultural event Northern California Summer 2019, you have a 8 day event package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 168, 180, 2, 'Pier 36 New York', '40.708581', '-73.998817', 12, 0, '174,175,176,177,178,179', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Can children come to events?\",\"content\":\"Unless otherwise stated, children are always welcome, but please be aware that most of our events are aimed at an adult audience.  Children must be supervised at all times.\"},{\"title\":\"Is there seating at events?\",\"content\":\"Yes, we always provide a variety of seating for all ticketholders unless it\\u2019s a dance event or art show opening.  One of our crew will always be on hand to assist you in finding a seat if you need one.\"},{\"title\":\"Where can I park?\",\"content\":\"There is a wide choice of places to park, however most are not free so please do check before you come on the Southampton City Council website.  We have no onsite parking.\"},{\"title\":\"Are you near public transport?\",\"content\":\"Very.  There is a bus stop a few doors up and the train station is about 7 minutes gentle walk away.\"},{\"title\":\"Is it safe to come at night?\",\"content\":\"To our knowledge, none of our customers has had any bad experience, however we do recommend that if you are worried you stick to the roads rather than walk through the parks.  The roads are well-lit and generally there are a lot of people about at night.\"},{\"title\":\"Can I come on my own?\",\"content\":\"YES!  Many of our customers come alone to events, it\\u2019s never a problem and you will be welcomed warmly.\"}]', '[{\"code\":\"ticket_vip\",\"name\":\"Ticket Vip\",\"name_ja\":\"\\u30c1\\u30b1\\u30c3\\u30c8VIP\",\"name_egy\":null,\"price\":\"1000\",\"number\":\"10\"},{\"code\":\"ticket_group_tickets\",\"name\":\"Group Tickets\",\"name_ja\":\"\\u30b0\\u30eb\\u30fc\\u30d7\\u30c1\\u30b1\\u30c3\\u30c8\",\"name_egy\":null,\"price\":\"500\",\"number\":\"10\"}]', 6, '15:00', 2100.00, 440.00, 0, 1, '[{\"name\":\"Event service\",\"price\":\"100\",\"type\":\"one_time\"}]', 4.3, NULL, 'publish', 1, 6, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', NULL, NULL, NULL, NULL, NULL),
(8, 'Pink Crescent Moon Events', 'pink-crescent-moon-events', '<p>Start and end in San Francisco! With the in-depth cultural event Northern California Summer 2019, you have a 8 day event package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 169, 181, 3, 'Trimmer Springs Rd, Sanger', '36.822484', '-119.365266', 12, 0, '174,175,176,177,178,179', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Can children come to events?\",\"content\":\"Unless otherwise stated, children are always welcome, but please be aware that most of our events are aimed at an adult audience.  Children must be supervised at all times.\"},{\"title\":\"Is there seating at events?\",\"content\":\"Yes, we always provide a variety of seating for all ticketholders unless it\\u2019s a dance event or art show opening.  One of our crew will always be on hand to assist you in finding a seat if you need one.\"},{\"title\":\"Where can I park?\",\"content\":\"There is a wide choice of places to park, however most are not free so please do check before you come on the Southampton City Council website.  We have no onsite parking.\"},{\"title\":\"Are you near public transport?\",\"content\":\"Very.  There is a bus stop a few doors up and the train station is about 7 minutes gentle walk away.\"},{\"title\":\"Is it safe to come at night?\",\"content\":\"To our knowledge, none of our customers has had any bad experience, however we do recommend that if you are worried you stick to the roads rather than walk through the parks.  The roads are well-lit and generally there are a lot of people about at night.\"},{\"title\":\"Can I come on my own?\",\"content\":\"YES!  Many of our customers come alone to events, it\\u2019s never a problem and you will be welcomed warmly.\"}]', '[{\"code\":\"ticket_vip\",\"name\":\"Ticket Vip\",\"name_ja\":\"\\u30c1\\u30b1\\u30c3\\u30c8VIP\",\"name_egy\":null,\"price\":\"1000\",\"number\":\"10\"},{\"code\":\"ticket_group_tickets\",\"name\":\"Group Tickets\",\"name_ja\":\"\\u30b0\\u30eb\\u30fc\\u30d7\\u30c1\\u30b1\\u30c3\\u30c8\",\"name_egy\":null,\"price\":\"500\",\"number\":\"10\"}]', 4, '21:00', 700.00, 0.00, 0, 1, '[{\"name\":\"Event service\",\"price\":\"100\",\"type\":\"one_time\"}]', 4.0, NULL, 'publish', 1, 6, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', NULL, NULL, NULL, NULL, NULL),
(9, 'Northern Lights Event Planners', 'northern-lights-event-planners', '<p>Start and end in San Francisco! With the in-depth cultural event Northern California Summer 2019, you have a 8 day event package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 170, 182, 4, 'United States', '37.040023', '-95.643144', 12, 1, '174,175,176,177,178,179', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Can children come to events?\",\"content\":\"Unless otherwise stated, children are always welcome, but please be aware that most of our events are aimed at an adult audience.  Children must be supervised at all times.\"},{\"title\":\"Is there seating at events?\",\"content\":\"Yes, we always provide a variety of seating for all ticketholders unless it\\u2019s a dance event or art show opening.  One of our crew will always be on hand to assist you in finding a seat if you need one.\"},{\"title\":\"Where can I park?\",\"content\":\"There is a wide choice of places to park, however most are not free so please do check before you come on the Southampton City Council website.  We have no onsite parking.\"},{\"title\":\"Are you near public transport?\",\"content\":\"Very.  There is a bus stop a few doors up and the train station is about 7 minutes gentle walk away.\"},{\"title\":\"Is it safe to come at night?\",\"content\":\"To our knowledge, none of our customers has had any bad experience, however we do recommend that if you are worried you stick to the roads rather than walk through the parks.  The roads are well-lit and generally there are a lot of people about at night.\"},{\"title\":\"Can I come on my own?\",\"content\":\"YES!  Many of our customers come alone to events, it\\u2019s never a problem and you will be welcomed warmly.\"}]', '[{\"code\":\"ticket_vip\",\"name\":\"Ticket Vip\",\"name_ja\":\"\\u30c1\\u30b1\\u30c3\\u30c8VIP\",\"name_egy\":null,\"price\":\"1000\",\"number\":\"10\"},{\"code\":\"ticket_group_tickets\",\"name\":\"Group Tickets\",\"name_ja\":\"\\u30b0\\u30eb\\u30fc\\u30d7\\u30c1\\u30b1\\u30c3\\u30c8\",\"name_egy\":null,\"price\":\"500\",\"number\":\"10\"}]', 1, '20:00', 800.00, 600.00, 0, 1, '[{\"name\":\"Event service\",\"price\":\"100\",\"type\":\"one_time\"}]', 4.0, NULL, 'publish', 1, 6, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', NULL, NULL, NULL, NULL, NULL),
(10, 'Origami Crane Wedding Planners', 'origami-crane-wedding-planners', '<p>Start and end in San Francisco! With the in-depth cultural event Northern California Summer 2019, you have a 8 day event package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 171, 180, 5, 'Washington, DC, USA', '34.049345', '-118.248479', 12, 0, '174,175,176,177,178,179', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Can children come to events?\",\"content\":\"Unless otherwise stated, children are always welcome, but please be aware that most of our events are aimed at an adult audience.  Children must be supervised at all times.\"},{\"title\":\"Is there seating at events?\",\"content\":\"Yes, we always provide a variety of seating for all ticketholders unless it\\u2019s a dance event or art show opening.  One of our crew will always be on hand to assist you in finding a seat if you need one.\"},{\"title\":\"Where can I park?\",\"content\":\"There is a wide choice of places to park, however most are not free so please do check before you come on the Southampton City Council website.  We have no onsite parking.\"},{\"title\":\"Are you near public transport?\",\"content\":\"Very.  There is a bus stop a few doors up and the train station is about 7 minutes gentle walk away.\"},{\"title\":\"Is it safe to come at night?\",\"content\":\"To our knowledge, none of our customers has had any bad experience, however we do recommend that if you are worried you stick to the roads rather than walk through the parks.  The roads are well-lit and generally there are a lot of people about at night.\"},{\"title\":\"Can I come on my own?\",\"content\":\"YES!  Many of our customers come alone to events, it\\u2019s never a problem and you will be welcomed warmly.\"}]', '[{\"code\":\"ticket_vip\",\"name\":\"Ticket Vip\",\"name_ja\":\"\\u30c1\\u30b1\\u30c3\\u30c8VIP\",\"name_egy\":null,\"price\":\"1000\",\"number\":\"10\"},{\"code\":\"ticket_group_tickets\",\"name\":\"Group Tickets\",\"name_ja\":\"\\u30b0\\u30eb\\u30fc\\u30d7\\u30c1\\u30b1\\u30c3\\u30c8\",\"name_egy\":null,\"price\":\"500\",\"number\":\"10\"}]', 2, '18:00', 400.00, 0.00, 0, 1, '[{\"name\":\"Event service\",\"price\":\"100\",\"type\":\"one_time\"}]', 5.0, NULL, 'publish', 1, 6, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', NULL, NULL, NULL, NULL, NULL),
(11, 'New York – Discover America', 'new-york-discover-america', '<p>Start and end in San Francisco! With the in-depth cultural event Northern California Summer 2019, you have a 8 day event package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 172, 181, 6, 'New Jersey', '40.035329', '-74.417227', 12, 1, '174,175,176,177,178,179', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Can children come to events?\",\"content\":\"Unless otherwise stated, children are always welcome, but please be aware that most of our events are aimed at an adult audience.  Children must be supervised at all times.\"},{\"title\":\"Is there seating at events?\",\"content\":\"Yes, we always provide a variety of seating for all ticketholders unless it\\u2019s a dance event or art show opening.  One of our crew will always be on hand to assist you in finding a seat if you need one.\"},{\"title\":\"Where can I park?\",\"content\":\"There is a wide choice of places to park, however most are not free so please do check before you come on the Southampton City Council website.  We have no onsite parking.\"},{\"title\":\"Are you near public transport?\",\"content\":\"Very.  There is a bus stop a few doors up and the train station is about 7 minutes gentle walk away.\"},{\"title\":\"Is it safe to come at night?\",\"content\":\"To our knowledge, none of our customers has had any bad experience, however we do recommend that if you are worried you stick to the roads rather than walk through the parks.  The roads are well-lit and generally there are a lot of people about at night.\"},{\"title\":\"Can I come on my own?\",\"content\":\"YES!  Many of our customers come alone to events, it\\u2019s never a problem and you will be welcomed warmly.\"}]', '[{\"code\":\"ticket_vip\",\"name\":\"Ticket Vip\",\"name_ja\":\"\\u30c1\\u30b1\\u30c3\\u30c8VIP\",\"name_egy\":null,\"price\":\"1000\",\"number\":\"10\"},{\"code\":\"ticket_group_tickets\",\"name\":\"Group Tickets\",\"name_ja\":\"\\u30b0\\u30eb\\u30fc\\u30d7\\u30c1\\u30b1\\u30c3\\u30c8\",\"name_egy\":null,\"price\":\"500\",\"number\":\"10\"}]', 5, '14:00', 300.00, 0.00, 0, 1, '[{\"name\":\"Event service\",\"price\":\"100\",\"type\":\"one_time\"}]', 4.8, NULL, 'publish', 1, 5, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', NULL, NULL, NULL, NULL, NULL),
(12, 'Event of Washington, D.C. Highlights', 'event-of-washington-dc-highlights', '<p>Start and end in San Francisco! With the in-depth cultural event Northern California Summer 2019, you have a 8 day event package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 173, 182, 7, 'Francisco Parnassus Campus', '37.782668', '-122.425058', 12, 1, '174,175,176,177,178,179', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Can children come to events?\",\"content\":\"Unless otherwise stated, children are always welcome, but please be aware that most of our events are aimed at an adult audience.  Children must be supervised at all times.\"},{\"title\":\"Is there seating at events?\",\"content\":\"Yes, we always provide a variety of seating for all ticketholders unless it\\u2019s a dance event or art show opening.  One of our crew will always be on hand to assist you in finding a seat if you need one.\"},{\"title\":\"Where can I park?\",\"content\":\"There is a wide choice of places to park, however most are not free so please do check before you come on the Southampton City Council website.  We have no onsite parking.\"},{\"title\":\"Are you near public transport?\",\"content\":\"Very.  There is a bus stop a few doors up and the train station is about 7 minutes gentle walk away.\"},{\"title\":\"Is it safe to come at night?\",\"content\":\"To our knowledge, none of our customers has had any bad experience, however we do recommend that if you are worried you stick to the roads rather than walk through the parks.  The roads are well-lit and generally there are a lot of people about at night.\"},{\"title\":\"Can I come on my own?\",\"content\":\"YES!  Many of our customers come alone to events, it\\u2019s never a problem and you will be welcomed warmly.\"}]', '[{\"code\":\"ticket_vip\",\"name\":\"Ticket Vip\",\"name_ja\":\"\\u30c1\\u30b1\\u30c3\\u30c8VIP\",\"name_egy\":null,\"price\":\"1000\",\"number\":\"10\"},{\"code\":\"ticket_group_tickets\",\"name\":\"Group Tickets\",\"name_ja\":\"\\u30b0\\u30eb\\u30fc\\u30d7\\u30c1\\u30b1\\u30c3\\u30c8\",\"name_egy\":null,\"price\":\"500\",\"number\":\"10\"}]', 6, '17:00', 2100.00, 525.00, 0, 1, '[{\"name\":\"Event service\",\"price\":\"100\",\"type\":\"one_time\"}]', 4.4, NULL, 'publish', 1, 1, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `bravo_event_dates`
--

CREATE TABLE `bravo_event_dates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `target_id` bigint(20) DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `ticket_types` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(4) DEFAULT 0,
  `note_to_customer` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note_to_admin` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_instant` tinyint(4) DEFAULT 0,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `price` decimal(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `bravo_event_term`
--

CREATE TABLE `bravo_event_term` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `term_id` int(11) DEFAULT NULL,
  `target_id` int(11) DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `bravo_event_term`
--

INSERT INTO `bravo_event_term` (`id`, `term_id`, `target_id`, `create_user`, `update_user`, `created_at`, `updated_at`) VALUES
(1, 75, 1, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(2, 76, 1, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(3, 78, 1, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(4, 79, 1, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(5, 81, 1, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(6, 82, 1, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(7, 76, 2, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(8, 77, 2, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(9, 78, 2, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(10, 79, 2, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(11, 80, 2, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(12, 81, 2, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(13, 75, 3, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(14, 77, 3, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(15, 78, 3, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(16, 79, 3, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(17, 80, 3, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(18, 75, 4, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(19, 77, 4, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(20, 80, 4, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(21, 82, 4, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(22, 76, 5, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(23, 77, 5, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(24, 78, 5, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(25, 79, 5, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(26, 80, 5, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(27, 81, 5, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(28, 82, 5, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(29, 75, 6, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(30, 76, 6, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(31, 77, 6, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(32, 78, 6, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(33, 80, 6, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(34, 82, 6, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(35, 76, 7, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(36, 77, 7, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(37, 78, 7, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(38, 79, 7, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(39, 80, 7, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(40, 81, 7, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(41, 82, 7, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(42, 75, 8, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(43, 76, 8, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(44, 78, 8, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(45, 79, 8, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(46, 76, 9, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(47, 77, 9, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(48, 79, 9, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(49, 81, 9, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(50, 75, 10, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(51, 76, 10, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(52, 78, 10, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(53, 79, 10, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(54, 81, 10, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(55, 75, 11, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(56, 76, 11, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(57, 79, 11, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(58, 82, 11, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(59, 76, 12, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(60, 77, 12, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(61, 79, 12, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bravo_event_translations`
--

CREATE TABLE `bravo_event_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `origin_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faqs` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `surrounding` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `bravo_hotels`
--

CREATE TABLE `bravo_hotels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8 NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `banner_image_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_lat` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_lng` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_zoom` int(11) DEFAULT NULL,
  `is_featured` tinyint(4) DEFAULT NULL,
  `gallery` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `star_rate` smallint(6) DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `check_in_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `check_out_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `allow_full_day` smallint(6) DEFAULT NULL,
  `sale_price` decimal(12,2) DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `review_score` decimal(2,1) DEFAULT NULL,
  `ical_import_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enable_extra_price` tinyint(4) DEFAULT NULL,
  `extra_price` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min_day_before_booking` int(11) DEFAULT NULL,
  `min_day_stays` int(11) DEFAULT NULL,
  `enable_service_fee` tinyint(4) DEFAULT NULL,
  `service_fee` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `surrounding` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `bravo_hotels`
--

INSERT INTO `bravo_hotels` (`id`, `title`, `slug`, `content`, `image_id`, `banner_image_id`, `location_id`, `address`, `map_lat`, `map_lng`, `map_zoom`, `is_featured`, `gallery`, `video`, `policy`, `star_rate`, `price`, `check_in_time`, `check_out_time`, `allow_full_day`, `sale_price`, `status`, `create_user`, `update_user`, `deleted_at`, `created_at`, `updated_at`, `review_score`, `ical_import_url`, `enable_extra_price`, `extra_price`, `min_day_before_booking`, `min_day_stays`, `enable_service_fee`, `service_fee`, `surrounding`) VALUES
(1, 'Hotel Stanford', 'hotel-stanford', '<p>Built in 1986, Hotel Stanford is a distinct addition to New York (NY) and a smart choice for travelers. The excitement of the city center is only 0 KM away. No less exceptional is the hotel’s easy access to the city’s myriad attractions and landmarks, such as Toto Music Studio, British Virgin Islands Tourist Board, L’Atelier Du Chocolat. Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 67, 94, 1, 'Arrondissement de Paris', '19.148665', '72.839670', 12, 0, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '[{\"title\":\"Guarantee Policy\",\"content\":\"- A valid credit card will be required upon booking;\\r\\n- For credit card reservations, the same card(s) must be presented upon check in at the respective hotels;\\r\\n- Management reserves the right to cancel any reservations without notice if we are notified of any fraud or illegal activities associated with the full payments received.\"},{\"title\":\"Children Policy\",\"content\":\"- Child under 5-year old: free of charge.\\r\\n- Child from 5-year old to under 12-year old: surcharge $10\\/person\\/room\\/night.\\r\\n- Child from 12-year old or extra Adult: surcharge $15\\/person\\/room\\/night.\"},{\"title\":\"Cancellation\\/Amendment Policy\",\"content\":\"- If cancellation\\/amendment is made 72 hours prior to your arrival date, no fee will be charged.\\r\\n- If cancellation\\/amendment is made within 72 hours, including reservations made within 72 hours of your arrival, 1st night\\u2019s room rate and tax will be charged\\r\\n- In case of no-show, 100% room rate and tax will be charged.\\r\\n- Early Bird\\/Long Stay\\/Last Min\\/Package Rates are Non - changeable & Non - refundable\"},{\"title\":\"Late check-out policy\",\"content\":\"- Late check-out is subject to room availability\\r\\n- 12:00 to 17:00 check-out: 50% room rate surcharge\\r\\n- After 17:00 check-out: 100% room rate surcharge\"}]', 5, 300.00, '12:00AM', '11:00AM', NULL, NULL, 'publish', 1, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:35', 4.2, NULL, 1, '[{\"name\":\"Service VIP \",\"price\":\"200\",\"type\":\"one_time\"},{\"name\":\"Breakfasts\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL),
(2, 'Hotel WBF Hommachi', 'hotel-wbf-homachi', '<p>Built in 1986, Hotel Stanford is a distinct addition to New York (NY) and a smart choice for travelers. The excitement of the city center is only 0 KM away. No less exceptional is the hotel’s easy access to the city’s myriad attractions and landmarks, such as Toto Music Studio, British Virgin Islands Tourist Board, L’Atelier Du Chocolat. Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 68, 93, 1, 'Porte de Vanves', '19.110390', '72.832764', 12, 0, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '[{\"title\":\"Guarantee Policy\",\"content\":\"- A valid credit card will be required upon booking;\\r\\n- For credit card reservations, the same card(s) must be presented upon check in at the respective hotels;\\r\\n- Management reserves the right to cancel any reservations without notice if we are notified of any fraud or illegal activities associated with the full payments received.\"},{\"title\":\"Children Policy\",\"content\":\"- Child under 5-year old: free of charge.\\r\\n- Child from 5-year old to under 12-year old: surcharge $10\\/person\\/room\\/night.\\r\\n- Child from 12-year old or extra Adult: surcharge $15\\/person\\/room\\/night.\"},{\"title\":\"Cancellation\\/Amendment Policy\",\"content\":\"- If cancellation\\/amendment is made 72 hours prior to your arrival date, no fee will be charged.\\r\\n- If cancellation\\/amendment is made within 72 hours, including reservations made within 72 hours of your arrival, 1st night\\u2019s room rate and tax will be charged\\r\\n- In case of no-show, 100% room rate and tax will be charged.\\r\\n- Early Bird\\/Long Stay\\/Last Min\\/Package Rates are Non - changeable & Non - refundable\"},{\"title\":\"Late check-out policy\",\"content\":\"- Late check-out is subject to room availability\\r\\n- 12:00 to 17:00 check-out: 50% room rate surcharge\\r\\n- After 17:00 check-out: 100% room rate surcharge\"}]', 5, 350.00, '12:00AM', '11:00AM', NULL, NULL, 'publish', 1, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:35', 5.0, NULL, 1, '[{\"name\":\"Service VIP \",\"price\":\"200\",\"type\":\"one_time\"},{\"name\":\"Breakfasts\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL),
(3, 'Castello Casole Hotel', 'castello-casole-hotel', '<p>Built in 1986, Hotel Stanford is a distinct addition to New York (NY) and a smart choice for travelers. The excitement of the city center is only 0 KM away. No less exceptional is the hotel’s easy access to the city’s myriad attractions and landmarks, such as Toto Music Studio, British Virgin Islands Tourist Board, L’Atelier Du Chocolat. Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 69, 96, 1, 'Petit-Montrouge', '19.077946', '72.838255', 12, 0, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '[{\"title\":\"Guarantee Policy\",\"content\":\"- A valid credit card will be required upon booking;\\r\\n- For credit card reservations, the same card(s) must be presented upon check in at the respective hotels;\\r\\n- Management reserves the right to cancel any reservations without notice if we are notified of any fraud or illegal activities associated with the full payments received.\"},{\"title\":\"Children Policy\",\"content\":\"- Child under 5-year old: free of charge.\\r\\n- Child from 5-year old to under 12-year old: surcharge $10\\/person\\/room\\/night.\\r\\n- Child from 12-year old or extra Adult: surcharge $15\\/person\\/room\\/night.\"},{\"title\":\"Cancellation\\/Amendment Policy\",\"content\":\"- If cancellation\\/amendment is made 72 hours prior to your arrival date, no fee will be charged.\\r\\n- If cancellation\\/amendment is made within 72 hours, including reservations made within 72 hours of your arrival, 1st night\\u2019s room rate and tax will be charged\\r\\n- In case of no-show, 100% room rate and tax will be charged.\\r\\n- Early Bird\\/Long Stay\\/Last Min\\/Package Rates are Non - changeable & Non - refundable\"},{\"title\":\"Late check-out policy\",\"content\":\"- Late check-out is subject to room availability\\r\\n- 12:00 to 17:00 check-out: 50% room rate surcharge\\r\\n- After 17:00 check-out: 100% room rate surcharge\"}]', 5, 350.00, '12:00AM', '11:00AM', NULL, NULL, 'publish', 1, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:35', 4.3, NULL, 1, '[{\"name\":\"Service VIP \",\"price\":\"200\",\"type\":\"one_time\"},{\"name\":\"Breakfasts\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL),
(4, 'Redac Gateway Hotel', 'redac-gateway-hotel', '<p>Built in 1986, Hotel Stanford is a distinct addition to New York (NY) and a smart choice for travelers. The excitement of the city center is only 0 KM away. No less exceptional is the hotel’s easy access to the city’s myriad attractions and landmarks, such as Toto Music Studio, British Virgin Islands Tourist Board, L’Atelier Du Chocolat. Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 70, 95, 1, 'Petit-Montrouge', '19.031217', '72.851982', 12, 0, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '[{\"title\":\"Guarantee Policy\",\"content\":\"- A valid credit card will be required upon booking;\\r\\n- For credit card reservations, the same card(s) must be presented upon check in at the respective hotels;\\r\\n- Management reserves the right to cancel any reservations without notice if we are notified of any fraud or illegal activities associated with the full payments received.\"},{\"title\":\"Children Policy\",\"content\":\"- Child under 5-year old: free of charge.\\r\\n- Child from 5-year old to under 12-year old: surcharge $10\\/person\\/room\\/night.\\r\\n- Child from 12-year old or extra Adult: surcharge $15\\/person\\/room\\/night.\"},{\"title\":\"Cancellation\\/Amendment Policy\",\"content\":\"- If cancellation\\/amendment is made 72 hours prior to your arrival date, no fee will be charged.\\r\\n- If cancellation\\/amendment is made within 72 hours, including reservations made within 72 hours of your arrival, 1st night\\u2019s room rate and tax will be charged\\r\\n- In case of no-show, 100% room rate and tax will be charged.\\r\\n- Early Bird\\/Long Stay\\/Last Min\\/Package Rates are Non - changeable & Non - refundable\"},{\"title\":\"Late check-out policy\",\"content\":\"- Late check-out is subject to room availability\\r\\n- 12:00 to 17:00 check-out: 50% room rate surcharge\\r\\n- After 17:00 check-out: 100% room rate surcharge\"}]', 5, 500.00, '12:00AM', '11:00AM', NULL, NULL, 'publish', 1, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:35', 4.3, NULL, 1, '[{\"name\":\"Service VIP \",\"price\":\"200\",\"type\":\"one_time\"},{\"name\":\"Breakfasts\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL),
(5, 'Studio Allston Hotel', 'studio-allston-hotel', '<p>Built in 1986, Hotel Stanford is a distinct addition to New York (NY) and a smart choice for travelers. The excitement of the city center is only 0 KM away. No less exceptional is the hotel’s easy access to the city’s myriad attractions and landmarks, such as Toto Music Studio, British Virgin Islands Tourist Board, L’Atelier Du Chocolat. Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 71, 96, 5, 'New York', '18.972786', '72.819724', 12, 0, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '[{\"title\":\"Guarantee Policy\",\"content\":\"- A valid credit card will be required upon booking;\\r\\n- For credit card reservations, the same card(s) must be presented upon check in at the respective hotels;\\r\\n- Management reserves the right to cancel any reservations without notice if we are notified of any fraud or illegal activities associated with the full payments received.\"},{\"title\":\"Children Policy\",\"content\":\"- Child under 5-year old: free of charge.\\r\\n- Child from 5-year old to under 12-year old: surcharge $10\\/person\\/room\\/night.\\r\\n- Child from 12-year old or extra Adult: surcharge $15\\/person\\/room\\/night.\"},{\"title\":\"Cancellation\\/Amendment Policy\",\"content\":\"- If cancellation\\/amendment is made 72 hours prior to your arrival date, no fee will be charged.\\r\\n- If cancellation\\/amendment is made within 72 hours, including reservations made within 72 hours of your arrival, 1st night\\u2019s room rate and tax will be charged\\r\\n- In case of no-show, 100% room rate and tax will be charged.\\r\\n- Early Bird\\/Long Stay\\/Last Min\\/Package Rates are Non - changeable & Non - refundable\"},{\"title\":\"Late check-out policy\",\"content\":\"- Late check-out is subject to room availability\\r\\n- 12:00 to 17:00 check-out: 50% room rate surcharge\\r\\n- After 17:00 check-out: 100% room rate surcharge\"}]', 5, 500.00, '12:00AM', '11:00AM', NULL, NULL, 'publish', 4, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:35', 4.4, NULL, 1, '[{\"name\":\"Service VIP \",\"price\":\"200\",\"type\":\"one_time\"},{\"name\":\"Breakfasts\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL),
(6, 'EnVision Hotel Boston', 'envision-hotel-biston', '<p>Built in 1986, Hotel Stanford is a distinct addition to New York (NY) and a smart choice for travelers. The excitement of the city center is only 0 KM away. No less exceptional is the hotel’s easy access to the city’s myriad attractions and landmarks, such as Toto Music Studio, British Virgin Islands Tourist Board, L’Atelier Du Chocolat. Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 72, 96, 3, 'New York', '18.873011', '72.975724', 12, 0, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '[{\"title\":\"Guarantee Policy\",\"content\":\"- A valid credit card will be required upon booking;\\r\\n- For credit card reservations, the same card(s) must be presented upon check in at the respective hotels;\\r\\n- Management reserves the right to cancel any reservations without notice if we are notified of any fraud or illegal activities associated with the full payments received.\"},{\"title\":\"Children Policy\",\"content\":\"- Child under 5-year old: free of charge.\\r\\n- Child from 5-year old to under 12-year old: surcharge $10\\/person\\/room\\/night.\\r\\n- Child from 12-year old or extra Adult: surcharge $15\\/person\\/room\\/night.\"},{\"title\":\"Cancellation\\/Amendment Policy\",\"content\":\"- If cancellation\\/amendment is made 72 hours prior to your arrival date, no fee will be charged.\\r\\n- If cancellation\\/amendment is made within 72 hours, including reservations made within 72 hours of your arrival, 1st night\\u2019s room rate and tax will be charged\\r\\n- In case of no-show, 100% room rate and tax will be charged.\\r\\n- Early Bird\\/Long Stay\\/Last Min\\/Package Rates are Non - changeable & Non - refundable\"},{\"title\":\"Late check-out policy\",\"content\":\"- Late check-out is subject to room availability\\r\\n- 12:00 to 17:00 check-out: 50% room rate surcharge\\r\\n- After 17:00 check-out: 100% room rate surcharge\"}]', 5, 700.00, '12:00AM', '11:00AM', NULL, NULL, 'publish', 5, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:35', 4.5, NULL, 1, '[{\"name\":\"Service VIP \",\"price\":\"200\",\"type\":\"one_time\"},{\"name\":\"Breakfasts\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL),
(7, 'Crowne Plaza Hotel', 'crowne-plaza-hotel', '<p>Built in 1986, Hotel Stanford is a distinct addition to New York (NY) and a smart choice for travelers. The excitement of the city center is only 0 KM away. No less exceptional is the hotel’s easy access to the city’s myriad attractions and landmarks, such as Toto Music Studio, British Virgin Islands Tourist Board, L’Atelier Du Chocolat. Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 73, 95, 2, 'New York', '19.001355', '73.111444', 12, 0, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '[{\"title\":\"Guarantee Policy\",\"content\":\"- A valid credit card will be required upon booking;\\r\\n- For credit card reservations, the same card(s) must be presented upon check in at the respective hotels;\\r\\n- Management reserves the right to cancel any reservations without notice if we are notified of any fraud or illegal activities associated with the full payments received.\"},{\"title\":\"Children Policy\",\"content\":\"- Child under 5-year old: free of charge.\\r\\n- Child from 5-year old to under 12-year old: surcharge $10\\/person\\/room\\/night.\\r\\n- Child from 12-year old or extra Adult: surcharge $15\\/person\\/room\\/night.\"},{\"title\":\"Cancellation\\/Amendment Policy\",\"content\":\"- If cancellation\\/amendment is made 72 hours prior to your arrival date, no fee will be charged.\\r\\n- If cancellation\\/amendment is made within 72 hours, including reservations made within 72 hours of your arrival, 1st night\\u2019s room rate and tax will be charged\\r\\n- In case of no-show, 100% room rate and tax will be charged.\\r\\n- Early Bird\\/Long Stay\\/Last Min\\/Package Rates are Non - changeable & Non - refundable\"},{\"title\":\"Late check-out policy\",\"content\":\"- Late check-out is subject to room availability\\r\\n- 12:00 to 17:00 check-out: 50% room rate surcharge\\r\\n- After 17:00 check-out: 100% room rate surcharge\"}]', 5, 900.00, '12:00AM', '11:00AM', NULL, NULL, 'publish', 6, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:35', 4.8, NULL, 1, '[{\"name\":\"Service VIP \",\"price\":\"200\",\"type\":\"one_time\"},{\"name\":\"Breakfasts\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL),
(8, 'Stewart Hotel', 'stewart-hotel', '<p>Built in 1986, Hotel Stanford is a distinct addition to New York (NY) and a smart choice for travelers. The excitement of the city center is only 0 KM away. No less exceptional is the hotel’s easy access to the city’s myriad attractions and landmarks, such as Toto Music Studio, British Virgin Islands Tourist Board, L’Atelier Du Chocolat. Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 74, 93, 5, 'New York', '19.080542', '73.010551', 12, 0, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '[{\"title\":\"Guarantee Policy\",\"content\":\"- A valid credit card will be required upon booking;\\r\\n- For credit card reservations, the same card(s) must be presented upon check in at the respective hotels;\\r\\n- Management reserves the right to cancel any reservations without notice if we are notified of any fraud or illegal activities associated with the full payments received.\"},{\"title\":\"Children Policy\",\"content\":\"- Child under 5-year old: free of charge.\\r\\n- Child from 5-year old to under 12-year old: surcharge $10\\/person\\/room\\/night.\\r\\n- Child from 12-year old or extra Adult: surcharge $15\\/person\\/room\\/night.\"},{\"title\":\"Cancellation\\/Amendment Policy\",\"content\":\"- If cancellation\\/amendment is made 72 hours prior to your arrival date, no fee will be charged.\\r\\n- If cancellation\\/amendment is made within 72 hours, including reservations made within 72 hours of your arrival, 1st night\\u2019s room rate and tax will be charged\\r\\n- In case of no-show, 100% room rate and tax will be charged.\\r\\n- Early Bird\\/Long Stay\\/Last Min\\/Package Rates are Non - changeable & Non - refundable\"},{\"title\":\"Late check-out policy\",\"content\":\"- Late check-out is subject to room availability\\r\\n- 12:00 to 17:00 check-out: 50% room rate surcharge\\r\\n- After 17:00 check-out: 100% room rate surcharge\"}]', 5, 900.00, '12:00AM', '11:00AM', NULL, NULL, 'publish', 6, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:35', 4.5, NULL, 1, '[{\"name\":\"Service VIP \",\"price\":\"200\",\"type\":\"one_time\"},{\"name\":\"Breakfasts\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL),
(9, 'Parian Holiday Villas', 'parian-holiday-villas', '<p>Built in 1986, Hotel Stanford is a distinct addition to New York (NY) and a smart choice for travelers. The excitement of the city center is only 0 KM away. No less exceptional is the hotel’s easy access to the city’s myriad attractions and landmarks, such as Toto Music Studio, British Virgin Islands Tourist Board, L’Atelier Du Chocolat. Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 75, 94, 1, 'Regal Cinemas Battery Park', '19.161637', '72.997510', 12, 1, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '[{\"title\":\"Guarantee Policy\",\"content\":\"- A valid credit card will be required upon booking;\\r\\n- For credit card reservations, the same card(s) must be presented upon check in at the respective hotels;\\r\\n- Management reserves the right to cancel any reservations without notice if we are notified of any fraud or illegal activities associated with the full payments received.\"},{\"title\":\"Children Policy\",\"content\":\"- Child under 5-year old: free of charge.\\r\\n- Child from 5-year old to under 12-year old: surcharge $10\\/person\\/room\\/night.\\r\\n- Child from 12-year old or extra Adult: surcharge $15\\/person\\/room\\/night.\"},{\"title\":\"Cancellation\\/Amendment Policy\",\"content\":\"- If cancellation\\/amendment is made 72 hours prior to your arrival date, no fee will be charged.\\r\\n- If cancellation\\/amendment is made within 72 hours, including reservations made within 72 hours of your arrival, 1st night\\u2019s room rate and tax will be charged\\r\\n- In case of no-show, 100% room rate and tax will be charged.\\r\\n- Early Bird\\/Long Stay\\/Last Min\\/Package Rates are Non - changeable & Non - refundable\"},{\"title\":\"Late check-out policy\",\"content\":\"- Late check-out is subject to room availability\\r\\n- 12:00 to 17:00 check-out: 50% room rate surcharge\\r\\n- After 17:00 check-out: 100% room rate surcharge\"}]', 5, 550.00, '12:00AM', '11:00AM', NULL, NULL, 'publish', 1, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:35', 4.3, NULL, 1, '[{\"name\":\"Service VIP \",\"price\":\"200\",\"type\":\"one_time\"},{\"name\":\"Breakfasts\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL),
(10, 'Dylan Hotel', 'dylan-hotel', '<p>Built in 1986, Hotel Stanford is a distinct addition to New York (NY) and a smart choice for travelers. The excitement of the city center is only 0 KM away. No less exceptional is the hotel’s easy access to the city’s myriad attractions and landmarks, such as Toto Music Studio, British Virgin Islands Tourist Board, L’Atelier Du Chocolat. Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 64, 93, 2, 'Regal Cinemas Battery', '19.229727', '72.984470', 12, 1, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '[{\"title\":\"Guarantee Policy\",\"content\":\"- A valid credit card will be required upon booking;\\r\\n- For credit card reservations, the same card(s) must be presented upon check in at the respective hotels;\\r\\n- Management reserves the right to cancel any reservations without notice if we are notified of any fraud or illegal activities associated with the full payments received.\"},{\"title\":\"Children Policy\",\"content\":\"- Child under 5-year old: free of charge.\\r\\n- Child from 5-year old to under 12-year old: surcharge $10\\/person\\/room\\/night.\\r\\n- Child from 12-year old or extra Adult: surcharge $15\\/person\\/room\\/night.\"},{\"title\":\"Cancellation\\/Amendment Policy\",\"content\":\"- If cancellation\\/amendment is made 72 hours prior to your arrival date, no fee will be charged.\\r\\n- If cancellation\\/amendment is made within 72 hours, including reservations made within 72 hours of your arrival, 1st night\\u2019s room rate and tax will be charged\\r\\n- In case of no-show, 100% room rate and tax will be charged.\\r\\n- Early Bird\\/Long Stay\\/Last Min\\/Package Rates are Non - changeable & Non - refundable\"},{\"title\":\"Late check-out policy\",\"content\":\"- Late check-out is subject to room availability\\r\\n- 12:00 to 17:00 check-out: 50% room rate surcharge\\r\\n- After 17:00 check-out: 100% room rate surcharge\"}]', 5, 550.00, '12:00AM', '11:00AM', NULL, NULL, 'publish', 5, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:35', 4.3, NULL, 1, '[{\"name\":\"Service VIP \",\"price\":\"200\",\"type\":\"one_time\"},{\"name\":\"Breakfasts\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL),
(11, 'The May Fair Hotel', 'the-may-fair-hotel', '<p>Built in 1986, Hotel Stanford is a distinct addition to New York (NY) and a smart choice for travelers. The excitement of the city center is only 0 KM away. No less exceptional is the hotel’s easy access to the city’s myriad attractions and landmarks, such as Toto Music Studio, British Virgin Islands Tourist Board, L’Atelier Du Chocolat. Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 67, 95, 1, 'Paris Cinemas Battery', '19.277696', '72.887009', 12, 0, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '[{\"title\":\"Guarantee Policy\",\"content\":\"- A valid credit card will be required upon booking;\\r\\n- For credit card reservations, the same card(s) must be presented upon check in at the respective hotels;\\r\\n- Management reserves the right to cancel any reservations without notice if we are notified of any fraud or illegal activities associated with the full payments received.\"},{\"title\":\"Children Policy\",\"content\":\"- Child under 5-year old: free of charge.\\r\\n- Child from 5-year old to under 12-year old: surcharge $10\\/person\\/room\\/night.\\r\\n- Child from 12-year old or extra Adult: surcharge $15\\/person\\/room\\/night.\"},{\"title\":\"Cancellation\\/Amendment Policy\",\"content\":\"- If cancellation\\/amendment is made 72 hours prior to your arrival date, no fee will be charged.\\r\\n- If cancellation\\/amendment is made within 72 hours, including reservations made within 72 hours of your arrival, 1st night\\u2019s room rate and tax will be charged\\r\\n- In case of no-show, 100% room rate and tax will be charged.\\r\\n- Early Bird\\/Long Stay\\/Last Min\\/Package Rates are Non - changeable & Non - refundable\"},{\"title\":\"Late check-out policy\",\"content\":\"- Late check-out is subject to room availability\\r\\n- 12:00 to 17:00 check-out: 50% room rate surcharge\\r\\n- After 17:00 check-out: 100% room rate surcharge\"}]', 4, 550.00, '12:00AM', '11:00AM', NULL, NULL, 'publish', 4, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:35', 4.2, NULL, 1, '[{\"name\":\"Service VIP \",\"price\":\"200\",\"type\":\"one_time\"},{\"name\":\"Breakfasts\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `bravo_hotel_rooms`
--

CREATE TABLE `bravo_hotel_rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `gallery` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `number` smallint(6) DEFAULT NULL,
  `beds` tinyint(4) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `adults` tinyint(4) DEFAULT NULL,
  `children` tinyint(4) DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ical_import_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min_day_stays` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `bravo_hotel_rooms`
--

INSERT INTO `bravo_hotel_rooms` (`id`, `title`, `content`, `image_id`, `gallery`, `video`, `price`, `parent_id`, `number`, `beds`, `size`, `adults`, `children`, `status`, `create_user`, `update_user`, `deleted_at`, `created_at`, `updated_at`, `ical_import_url`, `min_day_stays`) VALUES
(1, 'Room Kerama Islands', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 67, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', 350.00, 1, 6, 4, 200, 9, 3, 'publish', 1, NULL, NULL, '2021-08-10 07:39:34', NULL, NULL, NULL),
(2, 'Room Sheraton Hotel', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 69, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', 350.00, 1, 8, 5, 200, 5, 2, 'publish', 1, NULL, NULL, '2021-08-10 07:39:34', NULL, NULL, NULL),
(3, 'Double Room With Town View', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 64, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', 350.00, 1, 7, 3, 200, 8, 3, 'publish', 1, NULL, NULL, '2021-08-10 07:39:34', NULL, NULL, NULL),
(4, 'Standard Double Room', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 63, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', 350.00, 1, 10, 4, 200, 5, 5, 'publish', 1, NULL, NULL, '2021-08-10 07:39:34', NULL, NULL, NULL),
(5, 'Room Kerama Islands', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 67, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', 350.00, 2, 6, 5, 200, 8, 1, 'publish', 1, NULL, NULL, '2021-08-10 07:39:34', NULL, NULL, NULL),
(6, 'Room Sheraton Hotel', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 69, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', 350.00, 2, 6, 3, 200, 6, 2, 'publish', 1, NULL, NULL, '2021-08-10 07:39:34', NULL, NULL, NULL),
(7, 'Double Room With Town View', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 64, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', 350.00, 2, 8, 3, 200, 6, 3, 'publish', 1, NULL, NULL, '2021-08-10 07:39:34', NULL, NULL, NULL),
(8, 'Standard Double Room', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 63, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', 350.00, 2, 7, 3, 200, 6, 2, 'publish', 1, NULL, NULL, '2021-08-10 07:39:34', NULL, NULL, NULL),
(9, 'Room Kerama Islands', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 67, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', 350.00, 3, 5, 3, 200, 7, 2, 'publish', 1, NULL, NULL, '2021-08-10 07:39:34', NULL, NULL, NULL),
(10, 'Room Sheraton Hotel', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 69, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', 350.00, 3, 8, 3, 200, 9, 5, 'publish', 1, NULL, NULL, '2021-08-10 07:39:34', NULL, NULL, NULL),
(11, 'Double Room With Town View', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 64, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', 350.00, 3, 9, 3, 200, 8, 2, 'publish', 1, NULL, NULL, '2021-08-10 07:39:34', NULL, NULL, NULL),
(12, 'Standard Double Room', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 63, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', 350.00, 3, 6, 2, 200, 7, 1, 'publish', 1, NULL, NULL, '2021-08-10 07:39:34', NULL, NULL, NULL),
(13, 'Room Kerama Islands', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 67, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', 350.00, 4, 10, 2, 200, 10, 2, 'publish', 1, NULL, NULL, '2021-08-10 07:39:34', NULL, NULL, NULL),
(14, 'Room Sheraton Hotel', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 69, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', 350.00, 4, 8, 2, 200, 7, 5, 'publish', 1, NULL, NULL, '2021-08-10 07:39:34', NULL, NULL, NULL),
(15, 'Double Room With Town View', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 64, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', 350.00, 4, 7, 3, 200, 8, 5, 'publish', 1, NULL, NULL, '2021-08-10 07:39:34', NULL, NULL, NULL),
(16, 'Standard Double Room', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 63, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', 350.00, 4, 9, 4, 200, 9, 2, 'publish', 1, NULL, NULL, '2021-08-10 07:39:34', NULL, NULL, NULL),
(17, 'Room Kerama Islands', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 67, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', 350.00, 5, 8, 5, 200, 8, 4, 'publish', 4, NULL, NULL, '2021-08-10 07:39:34', NULL, NULL, NULL),
(18, 'Room Sheraton Hotel', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 69, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', 350.00, 5, 5, 2, 200, 8, 3, 'publish', 4, NULL, NULL, '2021-08-10 07:39:34', NULL, NULL, NULL),
(19, 'Double Room With Town View', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 64, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', 350.00, 5, 9, 4, 200, 7, 3, 'publish', 4, NULL, NULL, '2021-08-10 07:39:34', NULL, NULL, NULL),
(20, 'Standard Double Room', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 63, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', 350.00, 5, 10, 5, 200, 9, 5, 'publish', 4, NULL, NULL, '2021-08-10 07:39:34', NULL, NULL, NULL),
(21, 'Room Kerama Islands', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 67, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', 350.00, 6, 5, 3, 200, 8, 2, 'publish', 5, NULL, NULL, '2021-08-10 07:39:34', NULL, NULL, NULL),
(22, 'Room Sheraton Hotel', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 69, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', 350.00, 6, 8, 4, 200, 8, 2, 'publish', 5, NULL, NULL, '2021-08-10 07:39:34', NULL, NULL, NULL),
(23, 'Double Room With Town View', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 64, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', 350.00, 6, 10, 2, 200, 7, 5, 'publish', 5, NULL, NULL, '2021-08-10 07:39:34', NULL, NULL, NULL),
(24, 'Standard Double Room', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 63, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', 350.00, 6, 10, 4, 200, 5, 2, 'publish', 5, NULL, NULL, '2021-08-10 07:39:34', NULL, NULL, NULL),
(25, 'Room Kerama Islands', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 67, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', 350.00, 7, 7, 5, 200, 6, 1, 'publish', 6, NULL, NULL, '2021-08-10 07:39:34', NULL, NULL, NULL),
(26, 'Room Sheraton Hotel', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 69, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', 350.00, 7, 5, 4, 200, 10, 4, 'publish', 6, NULL, NULL, '2021-08-10 07:39:34', NULL, NULL, NULL),
(27, 'Double Room With Town View', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 64, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', 350.00, 7, 5, 4, 200, 6, 4, 'publish', 6, NULL, NULL, '2021-08-10 07:39:34', NULL, NULL, NULL),
(28, 'Standard Double Room', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 63, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', 350.00, 7, 5, 4, 200, 6, 4, 'publish', 6, NULL, NULL, '2021-08-10 07:39:34', NULL, NULL, NULL),
(29, 'Room Kerama Islands', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 67, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', 350.00, 8, 6, 5, 200, 8, 5, 'publish', 6, NULL, NULL, '2021-08-10 07:39:34', NULL, NULL, NULL),
(30, 'Room Sheraton Hotel', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 69, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', 350.00, 8, 9, 3, 200, 6, 4, 'publish', 6, NULL, NULL, '2021-08-10 07:39:34', NULL, NULL, NULL),
(31, 'Double Room With Town View', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 64, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', 350.00, 8, 6, 4, 200, 8, 3, 'publish', 6, NULL, NULL, '2021-08-10 07:39:34', NULL, NULL, NULL),
(32, 'Standard Double Room', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 63, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', 350.00, 8, 10, 4, 200, 9, 1, 'publish', 6, NULL, NULL, '2021-08-10 07:39:34', NULL, NULL, NULL),
(33, 'Room Kerama Islands', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 67, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', 350.00, 9, 8, 5, 200, 8, 1, 'publish', 1, NULL, NULL, '2021-08-10 07:39:34', NULL, NULL, NULL),
(34, 'Room Sheraton Hotel', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 69, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', 350.00, 9, 9, 2, 200, 7, 3, 'publish', 1, NULL, NULL, '2021-08-10 07:39:34', NULL, NULL, NULL),
(35, 'Double Room With Town View', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 64, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', 350.00, 9, 7, 3, 200, 6, 4, 'publish', 1, NULL, NULL, '2021-08-10 07:39:34', NULL, NULL, NULL),
(36, 'Standard Double Room', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 63, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', 350.00, 9, 9, 3, 200, 10, 2, 'publish', 1, NULL, NULL, '2021-08-10 07:39:34', NULL, NULL, NULL),
(37, 'Room Kerama Islands', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 67, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', 350.00, 10, 7, 4, 200, 7, 3, 'publish', 5, NULL, NULL, '2021-08-10 07:39:34', NULL, NULL, NULL),
(38, 'Room Sheraton Hotel', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 69, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', 350.00, 10, 7, 5, 200, 5, 5, 'publish', 5, NULL, NULL, '2021-08-10 07:39:34', NULL, NULL, NULL),
(39, 'Double Room With Town View', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 64, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', 350.00, 10, 8, 2, 200, 10, 5, 'publish', 5, NULL, NULL, '2021-08-10 07:39:34', NULL, NULL, NULL),
(40, 'Standard Double Room', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 63, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', 350.00, 10, 8, 4, 200, 5, 2, 'publish', 5, NULL, NULL, '2021-08-10 07:39:34', NULL, NULL, NULL),
(41, 'Room Kerama Islands', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 67, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', 350.00, 11, 7, 3, 200, 9, 1, 'publish', 4, NULL, NULL, '2021-08-10 07:39:34', NULL, NULL, NULL),
(42, 'Room Sheraton Hotel', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 69, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', 350.00, 11, 8, 5, 200, 5, 1, 'publish', 4, NULL, NULL, '2021-08-10 07:39:34', NULL, NULL, NULL),
(43, 'Double Room With Town View', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 64, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', 350.00, 11, 6, 2, 200, 9, 4, 'publish', 4, NULL, NULL, '2021-08-10 07:39:34', NULL, NULL, NULL),
(44, 'Standard Double Room', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 63, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', 350.00, 11, 6, 2, 200, 5, 5, 'publish', 4, NULL, NULL, '2021-08-10 07:39:34', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `bravo_hotel_room_bookings`
--

CREATE TABLE `bravo_hotel_room_bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `room_id` bigint(20) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `booking_id` bigint(20) DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `number` smallint(6) DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `bravo_hotel_room_bookings`
--

INSERT INTO `bravo_hotel_room_bookings` (`id`, `room_id`, `parent_id`, `booking_id`, `start_date`, `end_date`, `number`, `price`, `create_user`, `update_user`, `created_at`, `updated_at`) VALUES
(1, 33, 9, 1, '2021-08-24 17:00:00', '2021-08-26 17:00:00', 1, 700.00, 18, NULL, '2021-08-25 00:40:30', '2021-08-25 00:40:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bravo_hotel_room_dates`
--

CREATE TABLE `bravo_hotel_room_dates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `target_id` bigint(20) DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `max_guests` tinyint(4) DEFAULT NULL,
  `active` tinyint(4) DEFAULT 0,
  `note_to_customer` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note_to_admin` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_instant` tinyint(4) DEFAULT 0,
  `number` smallint(6) DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `bravo_hotel_room_term`
--

CREATE TABLE `bravo_hotel_room_term` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `term_id` int(11) DEFAULT NULL,
  `target_id` int(11) DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `bravo_hotel_room_term`
--

INSERT INTO `bravo_hotel_room_term` (`id`, `term_id`, `target_id`, `create_user`, `update_user`, `created_at`, `updated_at`) VALUES
(1, 57, 1, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(2, 58, 1, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(3, 59, 1, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(4, 60, 1, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(5, 56, 2, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(6, 57, 2, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(7, 58, 2, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(8, 59, 2, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(9, 56, 3, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(10, 57, 3, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(11, 58, 3, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(12, 60, 3, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(13, 56, 4, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(14, 57, 4, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(15, 58, 4, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(16, 60, 4, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(17, 56, 5, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(18, 57, 5, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(19, 59, 5, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(20, 60, 5, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(21, 56, 6, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(22, 58, 6, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(23, 59, 6, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(24, 60, 6, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(25, 56, 7, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(26, 57, 7, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(27, 58, 7, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(28, 60, 7, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(29, 56, 8, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(30, 57, 8, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(31, 59, 8, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(32, 60, 8, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(33, 56, 9, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(34, 57, 9, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(35, 58, 9, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(36, 59, 9, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(37, 60, 9, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(38, 56, 10, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(39, 57, 10, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(40, 58, 10, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(41, 59, 10, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(42, 60, 10, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(43, 56, 11, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(44, 57, 11, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(45, 58, 11, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(46, 56, 12, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(47, 57, 12, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(48, 58, 12, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(49, 59, 12, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(50, 60, 12, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(51, 56, 13, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(52, 57, 13, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(53, 58, 13, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(54, 59, 13, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(55, 60, 13, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(56, 57, 14, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(57, 58, 14, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(58, 59, 14, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(59, 60, 14, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(60, 57, 15, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(61, 58, 15, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(62, 60, 15, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(63, 56, 16, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(64, 57, 16, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(65, 58, 16, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(66, 59, 16, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(67, 60, 16, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(68, 56, 17, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(69, 57, 17, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(70, 59, 17, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(71, 57, 18, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(72, 58, 18, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(73, 60, 18, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(74, 56, 19, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(75, 58, 19, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(76, 59, 19, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(77, 60, 19, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(78, 56, 20, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(79, 57, 20, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(80, 58, 20, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(81, 59, 20, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(82, 56, 21, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(83, 57, 21, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(84, 58, 21, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(85, 59, 21, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(86, 60, 21, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(87, 57, 22, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(88, 58, 22, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(89, 59, 22, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(90, 60, 22, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(91, 56, 23, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(92, 57, 23, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(93, 58, 23, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(94, 59, 23, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(95, 60, 23, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(96, 56, 24, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(97, 57, 24, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(98, 59, 24, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(99, 60, 24, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(100, 56, 25, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(101, 57, 25, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(102, 58, 25, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(103, 59, 25, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(104, 60, 25, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(105, 57, 26, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(106, 58, 26, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(107, 59, 26, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(108, 60, 26, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(109, 56, 27, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(110, 57, 27, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(111, 58, 27, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(112, 59, 27, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(113, 60, 27, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(114, 56, 28, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(115, 57, 28, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(116, 58, 28, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(117, 59, 28, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(118, 56, 29, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(119, 57, 29, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(120, 58, 29, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(121, 59, 29, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(122, 60, 29, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(123, 56, 30, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(124, 57, 30, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(125, 58, 30, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(126, 59, 30, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(127, 56, 31, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(128, 57, 31, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(129, 58, 31, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(130, 60, 31, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(131, 56, 32, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(132, 57, 32, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(133, 58, 32, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(134, 60, 32, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(135, 58, 33, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(136, 59, 33, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(137, 60, 33, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(138, 56, 34, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(139, 57, 34, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(140, 59, 34, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(141, 60, 34, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(142, 57, 35, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(143, 59, 35, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(144, 60, 35, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(145, 56, 36, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(146, 58, 36, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(147, 60, 36, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(148, 56, 37, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(149, 57, 37, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(150, 58, 37, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(151, 59, 37, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(152, 60, 37, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(153, 56, 38, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(154, 58, 38, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(155, 56, 39, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(156, 58, 39, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(157, 59, 39, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(158, 60, 39, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(159, 56, 40, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(160, 57, 40, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(161, 58, 40, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(162, 59, 40, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(163, 60, 40, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(164, 56, 41, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(165, 57, 41, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(166, 58, 41, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(167, 59, 41, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(168, 60, 41, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(169, 56, 42, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(170, 57, 42, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(171, 58, 42, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(172, 59, 42, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(173, 60, 42, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(174, 56, 43, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(175, 57, 43, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(176, 58, 43, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(177, 59, 43, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(178, 60, 43, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(179, 56, 44, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(180, 57, 44, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(181, 58, 44, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(182, 59, 44, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(183, 60, 44, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bravo_hotel_room_translations`
--

CREATE TABLE `bravo_hotel_room_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `origin_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `bravo_hotel_term`
--

CREATE TABLE `bravo_hotel_term` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `term_id` int(11) DEFAULT NULL,
  `target_id` int(11) DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `bravo_hotel_term`
--

INSERT INTO `bravo_hotel_term` (`id`, `term_id`, `target_id`, `create_user`, `update_user`, `created_at`, `updated_at`) VALUES
(1, 42, 1, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(2, 43, 1, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(3, 44, 1, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(4, 45, 1, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(5, 46, 1, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(6, 47, 1, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(7, 48, 1, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(8, 43, 2, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(9, 44, 2, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(10, 46, 2, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(11, 47, 2, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(12, 48, 2, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(13, 42, 3, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(14, 43, 3, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(15, 44, 3, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(16, 45, 3, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(17, 46, 3, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(18, 47, 3, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(19, 48, 3, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(20, 43, 4, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(21, 44, 4, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(22, 45, 4, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(23, 46, 4, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(24, 47, 4, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(25, 48, 4, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(26, 42, 5, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(27, 43, 5, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(28, 44, 5, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(29, 45, 5, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(30, 46, 5, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(31, 47, 5, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(32, 48, 5, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(33, 42, 6, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(34, 43, 6, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(35, 44, 6, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(36, 45, 6, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(37, 46, 6, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(38, 47, 6, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(39, 48, 6, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(40, 42, 7, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(41, 43, 7, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(42, 44, 7, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(43, 45, 7, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(44, 46, 7, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(45, 47, 7, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(46, 48, 7, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(47, 42, 8, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(48, 43, 8, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(49, 44, 8, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(50, 45, 8, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(51, 46, 8, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(52, 47, 8, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(53, 48, 8, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(54, 42, 9, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(55, 43, 9, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(56, 44, 9, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(57, 45, 9, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(58, 46, 9, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(59, 48, 9, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(60, 42, 10, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(61, 43, 10, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(62, 45, 10, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(63, 46, 10, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(64, 47, 10, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(65, 48, 10, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(66, 42, 11, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(67, 43, 11, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(68, 44, 11, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(69, 45, 11, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(70, 46, 11, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(71, 49, 1, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(72, 50, 1, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(73, 51, 1, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(74, 52, 1, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(75, 53, 1, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(76, 52, 2, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(77, 53, 2, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(78, 54, 2, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(79, 55, 2, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(80, 50, 3, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(81, 51, 3, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(82, 52, 3, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(83, 53, 3, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(84, 54, 3, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(85, 55, 3, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(86, 50, 4, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(87, 52, 4, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(88, 53, 4, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(89, 55, 4, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(90, 49, 5, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(91, 50, 5, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(92, 53, 5, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(93, 54, 5, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(94, 55, 5, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(95, 49, 6, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(96, 51, 6, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(97, 52, 6, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(98, 53, 6, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(99, 54, 6, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(100, 55, 6, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(101, 49, 7, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(102, 50, 7, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(103, 51, 7, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(104, 54, 7, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(105, 55, 7, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(106, 50, 8, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(107, 51, 8, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(108, 52, 8, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(109, 53, 8, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(110, 55, 8, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(111, 49, 9, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(112, 50, 9, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(113, 51, 9, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(114, 55, 9, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(115, 49, 10, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(116, 52, 10, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(117, 55, 10, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(118, 49, 11, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(119, 52, 11, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(120, 53, 11, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(121, 54, 11, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(122, 55, 11, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bravo_hotel_translations`
--

CREATE TABLE `bravo_hotel_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `origin_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `surrounding` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `bravo_locations`
--

CREATE TABLE `bravo_locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `map_lat` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_lng` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_zoom` int(11) DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_lft` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `_rgt` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `banner_image_id` int(11) DEFAULT NULL,
  `trip_ideas` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `bravo_locations`
--

INSERT INTO `bravo_locations` (`id`, `name`, `content`, `slug`, `image_id`, `map_lat`, `map_lng`, `map_zoom`, `status`, `_lft`, `_rgt`, `parent_id`, `create_user`, `update_user`, `deleted_at`, `origin_id`, `lang`, `created_at`, `updated_at`, `banner_image_id`, `trip_ideas`) VALUES
(1, 'Paris', 'New York, a city that doesnt sleep, as Frank Sinatra sang. The Big Apple is one of the largest cities in the United States and one of the most popular in the whole country and the world. Millions of tourists visit it every year attracted by its various iconic symbols and its wide range of leisure and cultural offer. New York is the birth place of new trends and developments in many fields such as art, gastronomy, technology,...', 'paris', 106, '48.856613', '2.352222', 12, 'publish', 1, 2, NULL, 1, NULL, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33', 111, '\"[{\\\"title\\\":\\\"Experiencing the best jazz in Harlem, birthplace of bebop\\\",\\\"link\\\":\\\"#\\\",\\\"content\\\":\\\"New Orleans might be the home of jazz, but New York City is where many of the genre\\u2019s greats became stars \\u2013 and Harlem was at the heart of it.The neighborhood experienced a rebirth during the...\\\",\\\"image_id\\\":\\\"112\\\"},{\\\"title\\\":\\\"Reflections from the road: transformative \\u2018Big Trip\\u2019 experiences\\\",\\\"link\\\":\\\"#\\\",\\\"content\\\":\\\"Whether it\\u2019s a gap year after finishing school, a well-earned sabbatical from work or an overseas adventure in celebration of your retirement, a big trip is a rite of passage for every traveller, with myriad life lessons to be ...\\\",\\\"image_id\\\":\\\"113\\\"}]\"'),
(2, 'New York, United States', NULL, 'new-york-united-states', 107, '40.712776', '-74.005974', 12, 'publish', 3, 4, NULL, 1, NULL, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33', NULL, NULL),
(3, 'California', NULL, 'california', 108, '36.778259', '-119.417931', 12, 'publish', 5, 6, NULL, 1, NULL, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33', NULL, NULL),
(4, 'United States', NULL, 'united-states', 109, '37.090240', '-95.712891', 12, 'publish', 7, 8, NULL, 1, NULL, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33', NULL, NULL),
(5, 'Los Angeles', NULL, 'los-angeles', 110, '34.052235', '-118.243683', 12, 'publish', 9, 10, NULL, 1, NULL, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33', NULL, NULL),
(6, 'New Jersey', NULL, 'new-jersey', 106, '40.058323', '-74.405663', 12, 'publish', 11, 12, NULL, 1, NULL, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33', NULL, NULL),
(7, 'San Francisco', NULL, 'san-francisco', 107, '37.774929', '-122.419418', 12, 'publish', 13, 14, NULL, 1, NULL, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33', NULL, NULL),
(8, 'Virginia', NULL, 'virginia', 108, '37.431572', '-78.656891', 12, 'publish', 15, 16, NULL, 1, NULL, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `bravo_location_translations`
--

CREATE TABLE `bravo_location_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `locale` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `trip_ideas` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `bravo_payouts`
--

CREATE TABLE `bravo_payouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` bigint(20) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payout_method` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_info` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note_to_admin` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note_to_vendor` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_process_by` int(11) DEFAULT NULL,
  `pay_date` timestamp NULL DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `bravo_review`
--

CREATE TABLE `bravo_review` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `object_id` int(11) DEFAULT NULL,
  `object_model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate_number` int(11) DEFAULT NULL,
  `author_ip` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish_date` datetime DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `vendor_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `bravo_review`
--

INSERT INTO `bravo_review` (`id`, `object_id`, `object_model`, `title`, `content`, `rate_number`, `author_ip`, `status`, `publish_date`, `create_user`, `update_user`, `deleted_at`, `lang`, `created_at`, `updated_at`, `vendor_id`) VALUES
(1, 1, 'tour', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2021-08-10 14:39:33', 7, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33', 1),
(2, 1, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2021-08-10 14:39:33', 12, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33', 1),
(3, 1, 'tour', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:33', 7, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33', 1),
(4, 2, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2021-08-10 14:39:33', 11, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33', 1),
(5, 2, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2021-08-10 14:39:33', 12, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33', 1),
(6, 2, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:33', 15, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33', 1),
(7, 3, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:33', 13, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33', 4),
(8, 3, 'tour', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:33', 9, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33', 4),
(9, 3, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:33', 10, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33', 4),
(10, 4, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:33', 8, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33', 1),
(11, 4, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:33', 7, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33', 1),
(12, 4, 'tour', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2021-08-10 14:39:33', 15, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33', 1),
(13, 4, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2021-08-10 14:39:33', 10, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33', 1),
(14, 5, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2021-08-10 14:39:33', 11, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33', 4),
(15, 5, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:33', 14, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33', 4),
(16, 5, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2021-08-10 14:39:33', 10, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33', 4),
(17, 6, 'tour', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2021-08-10 14:39:33', 16, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33', 4),
(18, 6, 'tour', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:33', 12, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33', 4),
(19, 6, 'tour', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2021-08-10 14:39:33', 13, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33', 4),
(20, 7, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2021-08-10 14:39:33', 13, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33', 4),
(21, 7, 'tour', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:33', 11, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33', 4),
(22, 7, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2021-08-10 14:39:33', 15, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33', 4),
(23, 7, 'tour', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2021-08-10 14:39:33', 15, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33', 4),
(24, 8, 'tour', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2021-08-10 14:39:33', 9, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33', 5),
(25, 8, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:33', 13, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33', 5),
(26, 8, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:33', 12, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33', 5),
(27, 8, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:33', 15, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33', 5),
(28, 9, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2021-08-10 14:39:33', 9, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33', 6),
(29, 9, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:33', 13, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33', 6),
(30, 9, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2021-08-10 14:39:33', 10, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33', 6),
(31, 10, 'tour', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:33', 10, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33', 6),
(32, 10, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:33', 14, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33', 6),
(33, 10, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2021-08-10 14:39:33', 8, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33', 6),
(34, 11, 'tour', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2021-08-10 14:39:33', 8, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33', 5),
(35, 11, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2021-08-10 14:39:33', 8, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33', 5),
(36, 11, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2021-08-10 14:39:33', 13, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33', 5),
(37, 11, 'tour', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2021-08-10 14:39:33', 10, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33', 5),
(38, 12, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:33', 8, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33', 1),
(39, 13, 'tour', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2021-08-10 14:39:33', 8, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33', 5),
(40, 13, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2021-08-10 14:39:33', 12, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33', 5),
(41, 13, 'tour', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:33', 10, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33', 5),
(42, 13, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:33', 11, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33', 5),
(43, 14, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2021-08-10 14:39:33', 13, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33', 1),
(44, 14, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2021-08-10 14:39:33', 13, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33', 1),
(45, 14, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2021-08-10 14:39:33', 7, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33', 1),
(46, 15, 'tour', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2021-08-10 14:39:33', 10, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33', 5),
(47, 15, 'tour', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2021-08-10 14:39:33', 9, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33', 5),
(48, 15, 'tour', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:33', 12, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33', 5),
(49, 15, 'tour', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:33', 12, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33', 5),
(50, 15, 'tour', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:33', 8, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33', 5),
(51, 16, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:33', 8, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33', 1),
(52, 16, 'tour', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:33', 12, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33', 1),
(53, 1, 'space', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2021-08-10 14:39:34', 7, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', 1),
(54, 1, 'space', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2021-08-10 14:39:34', 8, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', 1),
(55, 1, 'space', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:34', 7, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', 1),
(56, 1, 'space', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:34', 15, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', 1),
(57, 2, 'space', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:34', 14, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', 1),
(58, 2, 'space', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2021-08-10 14:39:34', 15, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', 1),
(59, 2, 'space', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:34', 13, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', 1),
(60, 3, 'space', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:34', 7, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', 5),
(61, 3, 'space', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2021-08-10 14:39:34', 14, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', 5),
(62, 3, 'space', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2021-08-10 14:39:34', 15, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', 5),
(63, 4, 'space', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:34', 12, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', 4),
(64, 5, 'space', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2021-08-10 14:39:34', 12, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', 5),
(65, 5, 'space', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:34', 10, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', 5),
(66, 5, 'space', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2021-08-10 14:39:34', 14, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', 5),
(67, 5, 'space', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2021-08-10 14:39:34', 10, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', 5),
(68, 6, 'space', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:34', 16, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', 4),
(69, 6, 'space', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:34', 7, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', 4),
(70, 6, 'space', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:34', 16, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', 4),
(71, 6, 'space', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2021-08-10 14:39:34', 12, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', 4),
(72, 7, 'space', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2021-08-10 14:39:34', 11, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', 4),
(73, 7, 'space', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2021-08-10 14:39:34', 15, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', 4),
(74, 7, 'space', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2021-08-10 14:39:34', 12, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', 4),
(75, 7, 'space', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:34', 14, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', 4),
(76, 8, 'space', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2021-08-10 14:39:34', 16, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', 6),
(77, 8, 'space', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:34', 7, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', 6),
(78, 8, 'space', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2021-08-10 14:39:34', 7, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', 6),
(79, 9, 'space', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:34', 11, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', 4),
(80, 9, 'space', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2021-08-10 14:39:34', 10, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', 4),
(81, 10, 'space', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:34', 13, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', 1),
(82, 10, 'space', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2021-08-10 14:39:34', 11, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', 1),
(83, 11, 'space', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2021-08-10 14:39:34', 8, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', 6),
(84, 11, 'space', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:34', 11, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', 6),
(85, 1, 'hotel', 'Nothing good this time', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:34', 16, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', 1),
(86, 1, 'hotel', 'Beautiful spot with a lovely view', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2021-08-10 14:39:34', 10, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', 1),
(87, 1, 'hotel', 'Beautiful spot with a lovely view', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:34', 10, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', 1),
(88, 1, 'hotel', 'Beautiful spot with a lovely view', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:34', 16, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', 1),
(89, 1, 'hotel', 'Beautiful spot with a lovely view', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:34', 9, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', 1),
(90, 2, 'hotel', 'Beautiful spot with a lovely view', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2021-08-10 14:39:34', 16, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', 1),
(91, 2, 'hotel', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2021-08-10 14:39:34', 11, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', 1),
(92, 2, 'hotel', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2021-08-10 14:39:34', 7, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', 1),
(93, 3, 'hotel', 'Beautiful spot with a lovely view', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:34', 15, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', 1),
(94, 3, 'hotel', 'Beautiful spot with a lovely view', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2021-08-10 14:39:34', 9, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', 1),
(95, 3, 'hotel', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:34', 13, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', 1),
(96, 4, 'hotel', 'Nothing good this time', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:34', 12, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', 1),
(97, 4, 'hotel', 'Beautiful spot with a lovely view', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2021-08-10 14:39:34', 16, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', 1),
(98, 4, 'hotel', 'Nothing good this time', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:34', 11, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', 1),
(99, 5, 'hotel', 'Nothing good this time', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:34', 11, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', 4),
(100, 5, 'hotel', 'Beautiful spot with a lovely view', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:34', 10, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', 4),
(101, 5, 'hotel', 'Good location, quality should be better', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:34', 14, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', 4),
(102, 5, 'hotel', 'Beautiful spot with a lovely view', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2021-08-10 14:39:34', 12, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', 4),
(103, 5, 'hotel', 'Beautiful spot with a lovely view', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2021-08-10 14:39:34', 10, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', 4),
(104, 6, 'hotel', 'Beautiful spot with a lovely view', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2021-08-10 14:39:34', 8, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', 5),
(105, 6, 'hotel', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:34', 15, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', 5),
(106, 7, 'hotel', 'Good location, quality should be better', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2021-08-10 14:39:34', 15, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', 6),
(107, 7, 'hotel', 'Beautiful spot with a lovely view', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2021-08-10 14:39:34', 9, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', 6),
(108, 7, 'hotel', 'Nothing good this time', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2021-08-10 14:39:34', 10, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', 6),
(109, 7, 'hotel', 'Good location, quality should be better', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:34', 7, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', 6),
(110, 8, 'hotel', 'Good location, quality should be better', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2021-08-10 14:39:34', 7, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', 6),
(111, 8, 'hotel', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2021-08-10 14:39:34', 14, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', 6),
(112, 8, 'hotel', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:34', 7, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', 6),
(113, 8, 'hotel', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:34', 7, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', 6),
(114, 9, 'hotel', 'Good location, quality should be better', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:34', 8, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', 1),
(115, 9, 'hotel', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2021-08-10 14:39:34', 16, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', 1),
(116, 9, 'hotel', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:34', 9, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', 1),
(117, 10, 'hotel', 'Beautiful spot with a lovely view', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:34', 14, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', 5),
(118, 10, 'hotel', 'Good location, quality should be better', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2021-08-10 14:39:34', 11, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', 5),
(119, 10, 'hotel', 'Nothing good this time', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:34', 8, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', 5),
(120, 11, 'hotel', 'Good location, quality should be better', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:34', 10, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', 4),
(121, 11, 'hotel', 'Good location, quality should be better', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:34', 13, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', 4);
INSERT INTO `bravo_review` (`id`, `object_id`, `object_model`, `title`, `content`, `rate_number`, `author_ip`, `status`, `publish_date`, `create_user`, `update_user`, `deleted_at`, `lang`, `created_at`, `updated_at`, `vendor_id`) VALUES
(122, 11, 'hotel', 'Beautiful spot with a lovely view', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:34', 12, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', 4),
(123, 11, 'hotel', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:34', 16, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', 4),
(124, 11, 'hotel', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2021-08-10 14:39:34', 9, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', 4),
(125, 1, 'car', 'Great Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2021-08-10 14:39:35', 13, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', 1),
(126, 1, 'car', 'Great Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2021-08-10 14:39:35', 13, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', 1),
(127, 1, 'car', 'Good Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2021-08-10 14:39:35', 14, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', 1),
(128, 2, 'car', 'Great Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2021-08-10 14:39:35', 11, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', 1),
(129, 2, 'car', 'Good Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2021-08-10 14:39:35', 9, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', 1),
(130, 3, 'car', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:35', 9, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', 1),
(131, 3, 'car', 'Good Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2021-08-10 14:39:35', 13, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', 1),
(132, 3, 'car', 'Great Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:35', 8, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', 1),
(133, 3, 'car', 'Car was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2021-08-10 14:39:35', 14, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', 1),
(134, 4, 'car', 'Car was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:35', 8, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', 1),
(135, 4, 'car', 'Good Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:35', 11, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', 1),
(136, 5, 'car', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:35', 7, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', 1),
(137, 5, 'car', 'Great Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:35', 7, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', 1),
(138, 5, 'car', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:35', 8, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', 1),
(139, 6, 'car', 'Great Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:35', 9, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', 5),
(140, 6, 'car', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:35', 16, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', 5),
(141, 7, 'car', 'Car was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:35', 7, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', 4),
(142, 7, 'car', 'Good Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2021-08-10 14:39:35', 8, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', 4),
(143, 7, 'car', 'Car was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:35', 9, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', 4),
(144, 8, 'car', 'Good Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:35', 15, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', 4),
(145, 8, 'car', 'Car was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:35', 15, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', 4),
(146, 8, 'car', 'Good Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:35', 14, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', 4),
(147, 9, 'car', 'Great Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2021-08-10 14:39:35', 16, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', 4),
(148, 9, 'car', 'Good Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2021-08-10 14:39:35', 11, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', 4),
(149, 9, 'car', 'Great Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:35', 9, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', 4),
(150, 10, 'car', 'Great Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:35', 7, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', 6),
(151, 10, 'car', 'Good Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2021-08-10 14:39:35', 15, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', 6),
(152, 10, 'car', 'Good Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2021-08-10 14:39:35', 10, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', 6),
(153, 10, 'car', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:35', 15, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', 6),
(154, 11, 'car', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:35', 11, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', 5),
(155, 11, 'car', 'Great Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:35', 13, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', 5),
(156, 11, 'car', 'Great Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:35', 8, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', 5),
(157, 11, 'car', 'Good Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2021-08-10 14:39:35', 13, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', 5),
(158, 12, 'car', 'Great Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:35', 15, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', 4),
(159, 12, 'car', 'Car was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2021-08-10 14:39:35', 12, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', 4),
(160, 12, 'car', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2021-08-10 14:39:35', 14, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', 4),
(161, 12, 'car', 'Great Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2021-08-10 14:39:35', 8, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', 4),
(162, 13, 'car', 'Car was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:35', 15, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', 5),
(163, 13, 'car', 'Good Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:35', 11, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', 5),
(164, 1, 'event', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2021-08-10 14:39:35', 14, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', 1),
(165, 1, 'event', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2021-08-10 14:39:35', 15, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', 1),
(166, 1, 'event', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:35', 10, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', 1),
(167, 1, 'event', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2021-08-10 14:39:35', 10, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', 1),
(168, 2, 'event', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:35', 15, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', 1),
(169, 2, 'event', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:35', 15, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', 1),
(170, 2, 'event', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2021-08-10 14:39:35', 11, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', 1),
(171, 3, 'event', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2021-08-10 14:39:35', 11, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', 4),
(172, 3, 'event', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:35', 16, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', 4),
(173, 4, 'event', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:35', 16, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', 1),
(174, 4, 'event', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2021-08-10 14:39:35', 13, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', 1),
(175, 4, 'event', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:35', 8, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', 1),
(176, 5, 'event', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2021-08-10 14:39:35', 15, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', 6),
(177, 5, 'event', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:35', 13, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', 6),
(178, 6, 'event', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:35', 11, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', 6),
(179, 6, 'event', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:35', 16, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', 6),
(180, 6, 'event', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2021-08-10 14:39:35', 7, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', 6),
(181, 7, 'event', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:35', 14, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', 6),
(182, 7, 'event', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2021-08-10 14:39:35', 13, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', 6),
(183, 7, 'event', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:35', 15, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', 6),
(184, 8, 'event', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:35', 12, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', 6),
(185, 8, 'event', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:35', 15, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', 6),
(186, 9, 'event', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:35', 13, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', 6),
(187, 9, 'event', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:35', 10, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', 6),
(188, 10, 'event', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2021-08-10 14:39:35', 14, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', 6),
(189, 10, 'event', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2021-08-10 14:39:35', 9, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', 6),
(190, 10, 'event', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2021-08-10 14:39:35', 13, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', 6),
(191, 10, 'event', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2021-08-10 14:39:35', 11, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', 6),
(192, 11, 'event', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2021-08-10 14:39:35', 8, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', 5),
(193, 11, 'event', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2021-08-10 14:39:35', 12, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', 5),
(194, 11, 'event', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:35', 8, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', 5),
(195, 11, 'event', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2021-08-10 14:39:35', 11, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', 5),
(196, 12, 'event', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:35', 11, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', 1),
(197, 12, 'event', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2021-08-10 14:39:35', 10, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', 1),
(198, 12, 'event', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:35', 16, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', 1),
(199, 12, 'event', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2021-08-10 14:39:35', 11, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', 1),
(200, 12, 'event', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2021-08-10 14:39:35', 14, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `bravo_review_meta`
--

CREATE TABLE `bravo_review_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `review_id` int(11) DEFAULT NULL,
  `object_id` int(11) DEFAULT NULL,
  `object_model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `val` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `bravo_review_meta`
--

INSERT INTO `bravo_review_meta` (`id`, `review_id`, `object_id`, `object_model`, `name`, `val`, `create_user`, `update_user`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'tour', 'Service', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(2, 1, 1, 'tour', 'Organization', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(3, 1, 1, 'tour', 'Friendliness', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(4, 1, 1, 'tour', 'Area Expert', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(5, 1, 1, 'tour', 'Safety', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(6, 2, 1, 'tour', 'Service', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(7, 2, 1, 'tour', 'Organization', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(8, 2, 1, 'tour', 'Friendliness', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(9, 2, 1, 'tour', 'Area Expert', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(10, 2, 1, 'tour', 'Safety', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(11, 3, 1, 'tour', 'Service', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(12, 3, 1, 'tour', 'Organization', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(13, 3, 1, 'tour', 'Friendliness', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(14, 3, 1, 'tour', 'Area Expert', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(15, 3, 1, 'tour', 'Safety', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(16, 4, 2, 'tour', 'Service', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(17, 4, 2, 'tour', 'Organization', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(18, 4, 2, 'tour', 'Friendliness', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(19, 4, 2, 'tour', 'Area Expert', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(20, 4, 2, 'tour', 'Safety', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(21, 5, 2, 'tour', 'Service', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(22, 5, 2, 'tour', 'Organization', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(23, 5, 2, 'tour', 'Friendliness', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(24, 5, 2, 'tour', 'Area Expert', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(25, 5, 2, 'tour', 'Safety', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(26, 6, 2, 'tour', 'Service', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(27, 6, 2, 'tour', 'Organization', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(28, 6, 2, 'tour', 'Friendliness', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(29, 6, 2, 'tour', 'Area Expert', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(30, 6, 2, 'tour', 'Safety', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(31, 7, 3, 'tour', 'Service', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(32, 7, 3, 'tour', 'Organization', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(33, 7, 3, 'tour', 'Friendliness', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(34, 7, 3, 'tour', 'Area Expert', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(35, 7, 3, 'tour', 'Safety', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(36, 8, 3, 'tour', 'Service', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(37, 8, 3, 'tour', 'Organization', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(38, 8, 3, 'tour', 'Friendliness', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(39, 8, 3, 'tour', 'Area Expert', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(40, 8, 3, 'tour', 'Safety', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(41, 9, 3, 'tour', 'Service', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(42, 9, 3, 'tour', 'Organization', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(43, 9, 3, 'tour', 'Friendliness', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(44, 9, 3, 'tour', 'Area Expert', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(45, 9, 3, 'tour', 'Safety', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(46, 10, 4, 'tour', 'Service', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(47, 10, 4, 'tour', 'Organization', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(48, 10, 4, 'tour', 'Friendliness', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(49, 10, 4, 'tour', 'Area Expert', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(50, 10, 4, 'tour', 'Safety', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(51, 11, 4, 'tour', 'Service', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(52, 11, 4, 'tour', 'Organization', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(53, 11, 4, 'tour', 'Friendliness', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(54, 11, 4, 'tour', 'Area Expert', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(55, 11, 4, 'tour', 'Safety', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(56, 12, 4, 'tour', 'Service', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(57, 12, 4, 'tour', 'Organization', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(58, 12, 4, 'tour', 'Friendliness', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(59, 12, 4, 'tour', 'Area Expert', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(60, 12, 4, 'tour', 'Safety', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(61, 13, 4, 'tour', 'Service', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(62, 13, 4, 'tour', 'Organization', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(63, 13, 4, 'tour', 'Friendliness', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(64, 13, 4, 'tour', 'Area Expert', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(65, 13, 4, 'tour', 'Safety', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(66, 14, 5, 'tour', 'Service', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(67, 14, 5, 'tour', 'Organization', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(68, 14, 5, 'tour', 'Friendliness', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(69, 14, 5, 'tour', 'Area Expert', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(70, 14, 5, 'tour', 'Safety', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(71, 15, 5, 'tour', 'Service', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(72, 15, 5, 'tour', 'Organization', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(73, 15, 5, 'tour', 'Friendliness', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(74, 15, 5, 'tour', 'Area Expert', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(75, 15, 5, 'tour', 'Safety', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(76, 16, 5, 'tour', 'Service', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(77, 16, 5, 'tour', 'Organization', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(78, 16, 5, 'tour', 'Friendliness', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(79, 16, 5, 'tour', 'Area Expert', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(80, 16, 5, 'tour', 'Safety', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(81, 17, 6, 'tour', 'Service', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(82, 17, 6, 'tour', 'Organization', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(83, 17, 6, 'tour', 'Friendliness', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(84, 17, 6, 'tour', 'Area Expert', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(85, 17, 6, 'tour', 'Safety', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(86, 18, 6, 'tour', 'Service', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(87, 18, 6, 'tour', 'Organization', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(88, 18, 6, 'tour', 'Friendliness', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(89, 18, 6, 'tour', 'Area Expert', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(90, 18, 6, 'tour', 'Safety', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(91, 19, 6, 'tour', 'Service', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(92, 19, 6, 'tour', 'Organization', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(93, 19, 6, 'tour', 'Friendliness', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(94, 19, 6, 'tour', 'Area Expert', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(95, 19, 6, 'tour', 'Safety', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(96, 20, 7, 'tour', 'Service', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(97, 20, 7, 'tour', 'Organization', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(98, 20, 7, 'tour', 'Friendliness', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(99, 20, 7, 'tour', 'Area Expert', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(100, 20, 7, 'tour', 'Safety', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(101, 21, 7, 'tour', 'Service', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(102, 21, 7, 'tour', 'Organization', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(103, 21, 7, 'tour', 'Friendliness', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(104, 21, 7, 'tour', 'Area Expert', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(105, 21, 7, 'tour', 'Safety', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(106, 22, 7, 'tour', 'Service', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(107, 22, 7, 'tour', 'Organization', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(108, 22, 7, 'tour', 'Friendliness', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(109, 22, 7, 'tour', 'Area Expert', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(110, 22, 7, 'tour', 'Safety', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(111, 23, 7, 'tour', 'Service', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(112, 23, 7, 'tour', 'Organization', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(113, 23, 7, 'tour', 'Friendliness', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(114, 23, 7, 'tour', 'Area Expert', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(115, 23, 7, 'tour', 'Safety', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(116, 24, 8, 'tour', 'Service', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(117, 24, 8, 'tour', 'Organization', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(118, 24, 8, 'tour', 'Friendliness', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(119, 24, 8, 'tour', 'Area Expert', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(120, 24, 8, 'tour', 'Safety', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(121, 25, 8, 'tour', 'Service', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(122, 25, 8, 'tour', 'Organization', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(123, 25, 8, 'tour', 'Friendliness', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(124, 25, 8, 'tour', 'Area Expert', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(125, 25, 8, 'tour', 'Safety', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(126, 26, 8, 'tour', 'Service', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(127, 26, 8, 'tour', 'Organization', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(128, 26, 8, 'tour', 'Friendliness', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(129, 26, 8, 'tour', 'Area Expert', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(130, 26, 8, 'tour', 'Safety', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(131, 27, 8, 'tour', 'Service', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(132, 27, 8, 'tour', 'Organization', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(133, 27, 8, 'tour', 'Friendliness', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(134, 27, 8, 'tour', 'Area Expert', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(135, 27, 8, 'tour', 'Safety', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(136, 28, 9, 'tour', 'Service', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(137, 28, 9, 'tour', 'Organization', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(138, 28, 9, 'tour', 'Friendliness', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(139, 28, 9, 'tour', 'Area Expert', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(140, 28, 9, 'tour', 'Safety', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(141, 29, 9, 'tour', 'Service', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(142, 29, 9, 'tour', 'Organization', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(143, 29, 9, 'tour', 'Friendliness', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(144, 29, 9, 'tour', 'Area Expert', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(145, 29, 9, 'tour', 'Safety', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(146, 30, 9, 'tour', 'Service', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(147, 30, 9, 'tour', 'Organization', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(148, 30, 9, 'tour', 'Friendliness', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(149, 30, 9, 'tour', 'Area Expert', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(150, 30, 9, 'tour', 'Safety', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(151, 31, 10, 'tour', 'Service', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(152, 31, 10, 'tour', 'Organization', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(153, 31, 10, 'tour', 'Friendliness', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(154, 31, 10, 'tour', 'Area Expert', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(155, 31, 10, 'tour', 'Safety', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(156, 32, 10, 'tour', 'Service', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(157, 32, 10, 'tour', 'Organization', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(158, 32, 10, 'tour', 'Friendliness', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(159, 32, 10, 'tour', 'Area Expert', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(160, 32, 10, 'tour', 'Safety', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(161, 33, 10, 'tour', 'Service', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(162, 33, 10, 'tour', 'Organization', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(163, 33, 10, 'tour', 'Friendliness', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(164, 33, 10, 'tour', 'Area Expert', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(165, 33, 10, 'tour', 'Safety', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(166, 34, 11, 'tour', 'Service', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(167, 34, 11, 'tour', 'Organization', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(168, 34, 11, 'tour', 'Friendliness', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(169, 34, 11, 'tour', 'Area Expert', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(170, 34, 11, 'tour', 'Safety', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(171, 35, 11, 'tour', 'Service', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(172, 35, 11, 'tour', 'Organization', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(173, 35, 11, 'tour', 'Friendliness', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(174, 35, 11, 'tour', 'Area Expert', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(175, 35, 11, 'tour', 'Safety', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(176, 36, 11, 'tour', 'Service', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(177, 36, 11, 'tour', 'Organization', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(178, 36, 11, 'tour', 'Friendliness', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(179, 36, 11, 'tour', 'Area Expert', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(180, 36, 11, 'tour', 'Safety', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(181, 37, 11, 'tour', 'Service', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(182, 37, 11, 'tour', 'Organization', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(183, 37, 11, 'tour', 'Friendliness', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(184, 37, 11, 'tour', 'Area Expert', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(185, 37, 11, 'tour', 'Safety', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(186, 38, 12, 'tour', 'Service', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(187, 38, 12, 'tour', 'Organization', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(188, 38, 12, 'tour', 'Friendliness', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(189, 38, 12, 'tour', 'Area Expert', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(190, 38, 12, 'tour', 'Safety', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(191, 39, 13, 'tour', 'Service', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(192, 39, 13, 'tour', 'Organization', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(193, 39, 13, 'tour', 'Friendliness', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(194, 39, 13, 'tour', 'Area Expert', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(195, 39, 13, 'tour', 'Safety', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(196, 40, 13, 'tour', 'Service', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(197, 40, 13, 'tour', 'Organization', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(198, 40, 13, 'tour', 'Friendliness', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(199, 40, 13, 'tour', 'Area Expert', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(200, 40, 13, 'tour', 'Safety', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(201, 41, 13, 'tour', 'Service', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(202, 41, 13, 'tour', 'Organization', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(203, 41, 13, 'tour', 'Friendliness', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(204, 41, 13, 'tour', 'Area Expert', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(205, 41, 13, 'tour', 'Safety', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(206, 42, 13, 'tour', 'Service', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(207, 42, 13, 'tour', 'Organization', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(208, 42, 13, 'tour', 'Friendliness', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(209, 42, 13, 'tour', 'Area Expert', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(210, 42, 13, 'tour', 'Safety', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(211, 43, 14, 'tour', 'Service', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(212, 43, 14, 'tour', 'Organization', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(213, 43, 14, 'tour', 'Friendliness', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(214, 43, 14, 'tour', 'Area Expert', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(215, 43, 14, 'tour', 'Safety', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(216, 44, 14, 'tour', 'Service', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(217, 44, 14, 'tour', 'Organization', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(218, 44, 14, 'tour', 'Friendliness', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(219, 44, 14, 'tour', 'Area Expert', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(220, 44, 14, 'tour', 'Safety', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(221, 45, 14, 'tour', 'Service', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(222, 45, 14, 'tour', 'Organization', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(223, 45, 14, 'tour', 'Friendliness', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(224, 45, 14, 'tour', 'Area Expert', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(225, 45, 14, 'tour', 'Safety', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(226, 46, 15, 'tour', 'Service', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(227, 46, 15, 'tour', 'Organization', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(228, 46, 15, 'tour', 'Friendliness', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(229, 46, 15, 'tour', 'Area Expert', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(230, 46, 15, 'tour', 'Safety', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(231, 47, 15, 'tour', 'Service', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(232, 47, 15, 'tour', 'Organization', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(233, 47, 15, 'tour', 'Friendliness', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(234, 47, 15, 'tour', 'Area Expert', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(235, 47, 15, 'tour', 'Safety', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(236, 48, 15, 'tour', 'Service', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(237, 48, 15, 'tour', 'Organization', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(238, 48, 15, 'tour', 'Friendliness', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(239, 48, 15, 'tour', 'Area Expert', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(240, 48, 15, 'tour', 'Safety', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(241, 49, 15, 'tour', 'Service', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(242, 49, 15, 'tour', 'Organization', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(243, 49, 15, 'tour', 'Friendliness', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(244, 49, 15, 'tour', 'Area Expert', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(245, 49, 15, 'tour', 'Safety', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(246, 50, 15, 'tour', 'Service', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(247, 50, 15, 'tour', 'Organization', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(248, 50, 15, 'tour', 'Friendliness', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(249, 50, 15, 'tour', 'Area Expert', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(250, 50, 15, 'tour', 'Safety', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(251, 51, 16, 'tour', 'Service', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(252, 51, 16, 'tour', 'Organization', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(253, 51, 16, 'tour', 'Friendliness', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(254, 51, 16, 'tour', 'Area Expert', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(255, 51, 16, 'tour', 'Safety', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(256, 52, 16, 'tour', 'Service', '5', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(257, 52, 16, 'tour', 'Organization', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(258, 52, 16, 'tour', 'Friendliness', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(259, 52, 16, 'tour', 'Area Expert', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(260, 52, 16, 'tour', 'Safety', '4', 1, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(261, 53, 1, 'space', 'Sleep', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(262, 53, 1, 'space', 'Location', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(263, 53, 1, 'space', 'Service', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(264, 53, 1, 'space', 'Clearness', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(265, 53, 1, 'space', 'Rooms', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(266, 54, 1, 'space', 'Sleep', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(267, 54, 1, 'space', 'Location', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(268, 54, 1, 'space', 'Service', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(269, 54, 1, 'space', 'Clearness', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(270, 54, 1, 'space', 'Rooms', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(271, 55, 1, 'space', 'Sleep', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(272, 55, 1, 'space', 'Location', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(273, 55, 1, 'space', 'Service', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(274, 55, 1, 'space', 'Clearness', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(275, 55, 1, 'space', 'Rooms', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(276, 56, 1, 'space', 'Sleep', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(277, 56, 1, 'space', 'Location', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(278, 56, 1, 'space', 'Service', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(279, 56, 1, 'space', 'Clearness', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(280, 56, 1, 'space', 'Rooms', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(281, 57, 2, 'space', 'Sleep', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(282, 57, 2, 'space', 'Location', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(283, 57, 2, 'space', 'Service', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(284, 57, 2, 'space', 'Clearness', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(285, 57, 2, 'space', 'Rooms', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(286, 58, 2, 'space', 'Sleep', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(287, 58, 2, 'space', 'Location', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(288, 58, 2, 'space', 'Service', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(289, 58, 2, 'space', 'Clearness', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(290, 58, 2, 'space', 'Rooms', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(291, 59, 2, 'space', 'Sleep', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(292, 59, 2, 'space', 'Location', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(293, 59, 2, 'space', 'Service', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(294, 59, 2, 'space', 'Clearness', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(295, 59, 2, 'space', 'Rooms', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(296, 60, 3, 'space', 'Sleep', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(297, 60, 3, 'space', 'Location', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(298, 60, 3, 'space', 'Service', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(299, 60, 3, 'space', 'Clearness', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(300, 60, 3, 'space', 'Rooms', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(301, 61, 3, 'space', 'Sleep', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(302, 61, 3, 'space', 'Location', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(303, 61, 3, 'space', 'Service', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(304, 61, 3, 'space', 'Clearness', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(305, 61, 3, 'space', 'Rooms', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(306, 62, 3, 'space', 'Sleep', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(307, 62, 3, 'space', 'Location', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(308, 62, 3, 'space', 'Service', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(309, 62, 3, 'space', 'Clearness', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(310, 62, 3, 'space', 'Rooms', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(311, 63, 4, 'space', 'Sleep', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(312, 63, 4, 'space', 'Location', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(313, 63, 4, 'space', 'Service', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(314, 63, 4, 'space', 'Clearness', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(315, 63, 4, 'space', 'Rooms', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(316, 64, 5, 'space', 'Sleep', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(317, 64, 5, 'space', 'Location', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(318, 64, 5, 'space', 'Service', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(319, 64, 5, 'space', 'Clearness', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(320, 64, 5, 'space', 'Rooms', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(321, 65, 5, 'space', 'Sleep', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(322, 65, 5, 'space', 'Location', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(323, 65, 5, 'space', 'Service', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(324, 65, 5, 'space', 'Clearness', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(325, 65, 5, 'space', 'Rooms', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(326, 66, 5, 'space', 'Sleep', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(327, 66, 5, 'space', 'Location', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(328, 66, 5, 'space', 'Service', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(329, 66, 5, 'space', 'Clearness', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(330, 66, 5, 'space', 'Rooms', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(331, 67, 5, 'space', 'Sleep', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(332, 67, 5, 'space', 'Location', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(333, 67, 5, 'space', 'Service', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(334, 67, 5, 'space', 'Clearness', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(335, 67, 5, 'space', 'Rooms', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(336, 68, 6, 'space', 'Sleep', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(337, 68, 6, 'space', 'Location', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(338, 68, 6, 'space', 'Service', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(339, 68, 6, 'space', 'Clearness', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(340, 68, 6, 'space', 'Rooms', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(341, 69, 6, 'space', 'Sleep', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(342, 69, 6, 'space', 'Location', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(343, 69, 6, 'space', 'Service', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(344, 69, 6, 'space', 'Clearness', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(345, 69, 6, 'space', 'Rooms', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(346, 70, 6, 'space', 'Sleep', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(347, 70, 6, 'space', 'Location', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(348, 70, 6, 'space', 'Service', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(349, 70, 6, 'space', 'Clearness', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(350, 70, 6, 'space', 'Rooms', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(351, 71, 6, 'space', 'Sleep', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(352, 71, 6, 'space', 'Location', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(353, 71, 6, 'space', 'Service', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(354, 71, 6, 'space', 'Clearness', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(355, 71, 6, 'space', 'Rooms', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(356, 72, 7, 'space', 'Sleep', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(357, 72, 7, 'space', 'Location', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(358, 72, 7, 'space', 'Service', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(359, 72, 7, 'space', 'Clearness', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(360, 72, 7, 'space', 'Rooms', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(361, 73, 7, 'space', 'Sleep', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(362, 73, 7, 'space', 'Location', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(363, 73, 7, 'space', 'Service', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(364, 73, 7, 'space', 'Clearness', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(365, 73, 7, 'space', 'Rooms', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(366, 74, 7, 'space', 'Sleep', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(367, 74, 7, 'space', 'Location', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(368, 74, 7, 'space', 'Service', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(369, 74, 7, 'space', 'Clearness', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(370, 74, 7, 'space', 'Rooms', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(371, 75, 7, 'space', 'Sleep', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(372, 75, 7, 'space', 'Location', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(373, 75, 7, 'space', 'Service', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(374, 75, 7, 'space', 'Clearness', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(375, 75, 7, 'space', 'Rooms', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(376, 76, 8, 'space', 'Sleep', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(377, 76, 8, 'space', 'Location', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(378, 76, 8, 'space', 'Service', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(379, 76, 8, 'space', 'Clearness', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(380, 76, 8, 'space', 'Rooms', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(381, 77, 8, 'space', 'Sleep', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(382, 77, 8, 'space', 'Location', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(383, 77, 8, 'space', 'Service', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(384, 77, 8, 'space', 'Clearness', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(385, 77, 8, 'space', 'Rooms', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(386, 78, 8, 'space', 'Sleep', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(387, 78, 8, 'space', 'Location', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(388, 78, 8, 'space', 'Service', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(389, 78, 8, 'space', 'Clearness', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(390, 78, 8, 'space', 'Rooms', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(391, 79, 9, 'space', 'Sleep', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(392, 79, 9, 'space', 'Location', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(393, 79, 9, 'space', 'Service', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(394, 79, 9, 'space', 'Clearness', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(395, 79, 9, 'space', 'Rooms', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(396, 80, 9, 'space', 'Sleep', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(397, 80, 9, 'space', 'Location', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(398, 80, 9, 'space', 'Service', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(399, 80, 9, 'space', 'Clearness', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(400, 80, 9, 'space', 'Rooms', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(401, 81, 10, 'space', 'Sleep', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(402, 81, 10, 'space', 'Location', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(403, 81, 10, 'space', 'Service', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(404, 81, 10, 'space', 'Clearness', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(405, 81, 10, 'space', 'Rooms', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(406, 82, 10, 'space', 'Sleep', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(407, 82, 10, 'space', 'Location', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(408, 82, 10, 'space', 'Service', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(409, 82, 10, 'space', 'Clearness', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(410, 82, 10, 'space', 'Rooms', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(411, 83, 11, 'space', 'Sleep', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(412, 83, 11, 'space', 'Location', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(413, 83, 11, 'space', 'Service', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(414, 83, 11, 'space', 'Clearness', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(415, 83, 11, 'space', 'Rooms', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(416, 84, 11, 'space', 'Sleep', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(417, 84, 11, 'space', 'Location', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(418, 84, 11, 'space', 'Service', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(419, 84, 11, 'space', 'Clearness', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(420, 84, 11, 'space', 'Rooms', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(421, 85, 1, 'hotel', 'Sleep', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(422, 85, 1, 'hotel', 'Location', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(423, 85, 1, 'hotel', 'Service', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(424, 85, 1, 'hotel', 'Clearness', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(425, 85, 1, 'hotel', 'Rooms', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(426, 86, 1, 'hotel', 'Sleep', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(427, 86, 1, 'hotel', 'Location', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(428, 86, 1, 'hotel', 'Service', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(429, 86, 1, 'hotel', 'Clearness', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(430, 86, 1, 'hotel', 'Rooms', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(431, 87, 1, 'hotel', 'Sleep', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(432, 87, 1, 'hotel', 'Location', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(433, 87, 1, 'hotel', 'Service', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(434, 87, 1, 'hotel', 'Clearness', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(435, 87, 1, 'hotel', 'Rooms', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(436, 88, 1, 'hotel', 'Sleep', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(437, 88, 1, 'hotel', 'Location', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(438, 88, 1, 'hotel', 'Service', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(439, 88, 1, 'hotel', 'Clearness', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(440, 88, 1, 'hotel', 'Rooms', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(441, 89, 1, 'hotel', 'Sleep', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(442, 89, 1, 'hotel', 'Location', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(443, 89, 1, 'hotel', 'Service', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(444, 89, 1, 'hotel', 'Clearness', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(445, 89, 1, 'hotel', 'Rooms', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(446, 90, 2, 'hotel', 'Sleep', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(447, 90, 2, 'hotel', 'Location', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(448, 90, 2, 'hotel', 'Service', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(449, 90, 2, 'hotel', 'Clearness', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(450, 90, 2, 'hotel', 'Rooms', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(451, 91, 2, 'hotel', 'Sleep', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(452, 91, 2, 'hotel', 'Location', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(453, 91, 2, 'hotel', 'Service', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(454, 91, 2, 'hotel', 'Clearness', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(455, 91, 2, 'hotel', 'Rooms', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(456, 92, 2, 'hotel', 'Sleep', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(457, 92, 2, 'hotel', 'Location', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(458, 92, 2, 'hotel', 'Service', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(459, 92, 2, 'hotel', 'Clearness', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(460, 92, 2, 'hotel', 'Rooms', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(461, 93, 3, 'hotel', 'Sleep', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(462, 93, 3, 'hotel', 'Location', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(463, 93, 3, 'hotel', 'Service', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(464, 93, 3, 'hotel', 'Clearness', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(465, 93, 3, 'hotel', 'Rooms', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(466, 94, 3, 'hotel', 'Sleep', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(467, 94, 3, 'hotel', 'Location', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(468, 94, 3, 'hotel', 'Service', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(469, 94, 3, 'hotel', 'Clearness', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(470, 94, 3, 'hotel', 'Rooms', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(471, 95, 3, 'hotel', 'Sleep', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(472, 95, 3, 'hotel', 'Location', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(473, 95, 3, 'hotel', 'Service', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(474, 95, 3, 'hotel', 'Clearness', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(475, 95, 3, 'hotel', 'Rooms', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(476, 96, 4, 'hotel', 'Sleep', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(477, 96, 4, 'hotel', 'Location', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(478, 96, 4, 'hotel', 'Service', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(479, 96, 4, 'hotel', 'Clearness', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(480, 96, 4, 'hotel', 'Rooms', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(481, 97, 4, 'hotel', 'Sleep', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(482, 97, 4, 'hotel', 'Location', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(483, 97, 4, 'hotel', 'Service', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(484, 97, 4, 'hotel', 'Clearness', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(485, 97, 4, 'hotel', 'Rooms', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(486, 98, 4, 'hotel', 'Sleep', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(487, 98, 4, 'hotel', 'Location', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(488, 98, 4, 'hotel', 'Service', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(489, 98, 4, 'hotel', 'Clearness', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(490, 98, 4, 'hotel', 'Rooms', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(491, 99, 5, 'hotel', 'Sleep', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(492, 99, 5, 'hotel', 'Location', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(493, 99, 5, 'hotel', 'Service', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(494, 99, 5, 'hotel', 'Clearness', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(495, 99, 5, 'hotel', 'Rooms', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(496, 100, 5, 'hotel', 'Sleep', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(497, 100, 5, 'hotel', 'Location', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(498, 100, 5, 'hotel', 'Service', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(499, 100, 5, 'hotel', 'Clearness', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(500, 100, 5, 'hotel', 'Rooms', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(501, 101, 5, 'hotel', 'Sleep', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(502, 101, 5, 'hotel', 'Location', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(503, 101, 5, 'hotel', 'Service', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(504, 101, 5, 'hotel', 'Clearness', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(505, 101, 5, 'hotel', 'Rooms', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(506, 102, 5, 'hotel', 'Sleep', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(507, 102, 5, 'hotel', 'Location', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(508, 102, 5, 'hotel', 'Service', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(509, 102, 5, 'hotel', 'Clearness', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(510, 102, 5, 'hotel', 'Rooms', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(511, 103, 5, 'hotel', 'Sleep', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(512, 103, 5, 'hotel', 'Location', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(513, 103, 5, 'hotel', 'Service', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(514, 103, 5, 'hotel', 'Clearness', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(515, 103, 5, 'hotel', 'Rooms', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(516, 104, 6, 'hotel', 'Sleep', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(517, 104, 6, 'hotel', 'Location', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(518, 104, 6, 'hotel', 'Service', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(519, 104, 6, 'hotel', 'Clearness', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(520, 104, 6, 'hotel', 'Rooms', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(521, 105, 6, 'hotel', 'Sleep', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(522, 105, 6, 'hotel', 'Location', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(523, 105, 6, 'hotel', 'Service', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(524, 105, 6, 'hotel', 'Clearness', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(525, 105, 6, 'hotel', 'Rooms', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(526, 106, 7, 'hotel', 'Sleep', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(527, 106, 7, 'hotel', 'Location', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(528, 106, 7, 'hotel', 'Service', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(529, 106, 7, 'hotel', 'Clearness', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(530, 106, 7, 'hotel', 'Rooms', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(531, 107, 7, 'hotel', 'Sleep', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(532, 107, 7, 'hotel', 'Location', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(533, 107, 7, 'hotel', 'Service', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(534, 107, 7, 'hotel', 'Clearness', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(535, 107, 7, 'hotel', 'Rooms', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(536, 108, 7, 'hotel', 'Sleep', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(537, 108, 7, 'hotel', 'Location', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34');
INSERT INTO `bravo_review_meta` (`id`, `review_id`, `object_id`, `object_model`, `name`, `val`, `create_user`, `update_user`, `created_at`, `updated_at`) VALUES
(538, 108, 7, 'hotel', 'Service', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(539, 108, 7, 'hotel', 'Clearness', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(540, 108, 7, 'hotel', 'Rooms', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(541, 109, 7, 'hotel', 'Sleep', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(542, 109, 7, 'hotel', 'Location', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(543, 109, 7, 'hotel', 'Service', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(544, 109, 7, 'hotel', 'Clearness', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(545, 109, 7, 'hotel', 'Rooms', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(546, 110, 8, 'hotel', 'Sleep', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(547, 110, 8, 'hotel', 'Location', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(548, 110, 8, 'hotel', 'Service', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(549, 110, 8, 'hotel', 'Clearness', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(550, 110, 8, 'hotel', 'Rooms', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(551, 111, 8, 'hotel', 'Sleep', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(552, 111, 8, 'hotel', 'Location', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(553, 111, 8, 'hotel', 'Service', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(554, 111, 8, 'hotel', 'Clearness', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(555, 111, 8, 'hotel', 'Rooms', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(556, 112, 8, 'hotel', 'Sleep', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(557, 112, 8, 'hotel', 'Location', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(558, 112, 8, 'hotel', 'Service', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(559, 112, 8, 'hotel', 'Clearness', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(560, 112, 8, 'hotel', 'Rooms', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(561, 113, 8, 'hotel', 'Sleep', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(562, 113, 8, 'hotel', 'Location', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(563, 113, 8, 'hotel', 'Service', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(564, 113, 8, 'hotel', 'Clearness', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(565, 113, 8, 'hotel', 'Rooms', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(566, 114, 9, 'hotel', 'Sleep', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(567, 114, 9, 'hotel', 'Location', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(568, 114, 9, 'hotel', 'Service', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(569, 114, 9, 'hotel', 'Clearness', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(570, 114, 9, 'hotel', 'Rooms', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(571, 115, 9, 'hotel', 'Sleep', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(572, 115, 9, 'hotel', 'Location', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(573, 115, 9, 'hotel', 'Service', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(574, 115, 9, 'hotel', 'Clearness', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(575, 115, 9, 'hotel', 'Rooms', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(576, 116, 9, 'hotel', 'Sleep', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(577, 116, 9, 'hotel', 'Location', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(578, 116, 9, 'hotel', 'Service', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(579, 116, 9, 'hotel', 'Clearness', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(580, 116, 9, 'hotel', 'Rooms', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(581, 117, 10, 'hotel', 'Sleep', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(582, 117, 10, 'hotel', 'Location', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(583, 117, 10, 'hotel', 'Service', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(584, 117, 10, 'hotel', 'Clearness', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(585, 117, 10, 'hotel', 'Rooms', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(586, 118, 10, 'hotel', 'Sleep', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(587, 118, 10, 'hotel', 'Location', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(588, 118, 10, 'hotel', 'Service', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(589, 118, 10, 'hotel', 'Clearness', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(590, 118, 10, 'hotel', 'Rooms', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(591, 119, 10, 'hotel', 'Sleep', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(592, 119, 10, 'hotel', 'Location', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(593, 119, 10, 'hotel', 'Service', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(594, 119, 10, 'hotel', 'Clearness', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(595, 119, 10, 'hotel', 'Rooms', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(596, 120, 11, 'hotel', 'Sleep', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(597, 120, 11, 'hotel', 'Location', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(598, 120, 11, 'hotel', 'Service', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(599, 120, 11, 'hotel', 'Clearness', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(600, 120, 11, 'hotel', 'Rooms', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(601, 121, 11, 'hotel', 'Sleep', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(602, 121, 11, 'hotel', 'Location', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(603, 121, 11, 'hotel', 'Service', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(604, 121, 11, 'hotel', 'Clearness', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(605, 121, 11, 'hotel', 'Rooms', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(606, 122, 11, 'hotel', 'Sleep', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(607, 122, 11, 'hotel', 'Location', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(608, 122, 11, 'hotel', 'Service', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(609, 122, 11, 'hotel', 'Clearness', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(610, 122, 11, 'hotel', 'Rooms', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(611, 123, 11, 'hotel', 'Sleep', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(612, 123, 11, 'hotel', 'Location', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(613, 123, 11, 'hotel', 'Service', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(614, 123, 11, 'hotel', 'Clearness', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(615, 123, 11, 'hotel', 'Rooms', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(616, 124, 11, 'hotel', 'Sleep', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(617, 124, 11, 'hotel', 'Location', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(618, 124, 11, 'hotel', 'Service', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(619, 124, 11, 'hotel', 'Clearness', '5', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(620, 124, 11, 'hotel', 'Rooms', '4', 1, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(621, 125, 1, 'car', 'Equipment', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(622, 125, 1, 'car', 'Comfortable', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(623, 125, 1, 'car', 'Climate Control', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(624, 125, 1, 'car', 'Facility', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(625, 125, 1, 'car', 'Aftercare', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(626, 126, 1, 'car', 'Equipment', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(627, 126, 1, 'car', 'Comfortable', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(628, 126, 1, 'car', 'Climate Control', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(629, 126, 1, 'car', 'Facility', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(630, 126, 1, 'car', 'Aftercare', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(631, 127, 1, 'car', 'Equipment', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(632, 127, 1, 'car', 'Comfortable', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(633, 127, 1, 'car', 'Climate Control', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(634, 127, 1, 'car', 'Facility', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(635, 127, 1, 'car', 'Aftercare', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(636, 128, 2, 'car', 'Equipment', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(637, 128, 2, 'car', 'Comfortable', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(638, 128, 2, 'car', 'Climate Control', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(639, 128, 2, 'car', 'Facility', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(640, 128, 2, 'car', 'Aftercare', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(641, 129, 2, 'car', 'Equipment', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(642, 129, 2, 'car', 'Comfortable', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(643, 129, 2, 'car', 'Climate Control', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(644, 129, 2, 'car', 'Facility', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(645, 129, 2, 'car', 'Aftercare', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(646, 130, 3, 'car', 'Equipment', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(647, 130, 3, 'car', 'Comfortable', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(648, 130, 3, 'car', 'Climate Control', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(649, 130, 3, 'car', 'Facility', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(650, 130, 3, 'car', 'Aftercare', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(651, 131, 3, 'car', 'Equipment', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(652, 131, 3, 'car', 'Comfortable', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(653, 131, 3, 'car', 'Climate Control', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(654, 131, 3, 'car', 'Facility', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(655, 131, 3, 'car', 'Aftercare', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(656, 132, 3, 'car', 'Equipment', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(657, 132, 3, 'car', 'Comfortable', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(658, 132, 3, 'car', 'Climate Control', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(659, 132, 3, 'car', 'Facility', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(660, 132, 3, 'car', 'Aftercare', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(661, 133, 3, 'car', 'Equipment', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(662, 133, 3, 'car', 'Comfortable', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(663, 133, 3, 'car', 'Climate Control', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(664, 133, 3, 'car', 'Facility', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(665, 133, 3, 'car', 'Aftercare', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(666, 134, 4, 'car', 'Equipment', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(667, 134, 4, 'car', 'Comfortable', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(668, 134, 4, 'car', 'Climate Control', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(669, 134, 4, 'car', 'Facility', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(670, 134, 4, 'car', 'Aftercare', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(671, 135, 4, 'car', 'Equipment', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(672, 135, 4, 'car', 'Comfortable', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(673, 135, 4, 'car', 'Climate Control', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(674, 135, 4, 'car', 'Facility', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(675, 135, 4, 'car', 'Aftercare', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(676, 136, 5, 'car', 'Equipment', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(677, 136, 5, 'car', 'Comfortable', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(678, 136, 5, 'car', 'Climate Control', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(679, 136, 5, 'car', 'Facility', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(680, 136, 5, 'car', 'Aftercare', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(681, 137, 5, 'car', 'Equipment', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(682, 137, 5, 'car', 'Comfortable', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(683, 137, 5, 'car', 'Climate Control', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(684, 137, 5, 'car', 'Facility', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(685, 137, 5, 'car', 'Aftercare', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(686, 138, 5, 'car', 'Equipment', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(687, 138, 5, 'car', 'Comfortable', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(688, 138, 5, 'car', 'Climate Control', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(689, 138, 5, 'car', 'Facility', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(690, 138, 5, 'car', 'Aftercare', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(691, 139, 6, 'car', 'Equipment', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(692, 139, 6, 'car', 'Comfortable', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(693, 139, 6, 'car', 'Climate Control', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(694, 139, 6, 'car', 'Facility', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(695, 139, 6, 'car', 'Aftercare', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(696, 140, 6, 'car', 'Equipment', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(697, 140, 6, 'car', 'Comfortable', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(698, 140, 6, 'car', 'Climate Control', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(699, 140, 6, 'car', 'Facility', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(700, 140, 6, 'car', 'Aftercare', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(701, 141, 7, 'car', 'Equipment', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(702, 141, 7, 'car', 'Comfortable', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(703, 141, 7, 'car', 'Climate Control', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(704, 141, 7, 'car', 'Facility', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(705, 141, 7, 'car', 'Aftercare', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(706, 142, 7, 'car', 'Equipment', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(707, 142, 7, 'car', 'Comfortable', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(708, 142, 7, 'car', 'Climate Control', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(709, 142, 7, 'car', 'Facility', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(710, 142, 7, 'car', 'Aftercare', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(711, 143, 7, 'car', 'Equipment', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(712, 143, 7, 'car', 'Comfortable', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(713, 143, 7, 'car', 'Climate Control', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(714, 143, 7, 'car', 'Facility', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(715, 143, 7, 'car', 'Aftercare', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(716, 144, 8, 'car', 'Equipment', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(717, 144, 8, 'car', 'Comfortable', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(718, 144, 8, 'car', 'Climate Control', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(719, 144, 8, 'car', 'Facility', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(720, 144, 8, 'car', 'Aftercare', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(721, 145, 8, 'car', 'Equipment', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(722, 145, 8, 'car', 'Comfortable', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(723, 145, 8, 'car', 'Climate Control', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(724, 145, 8, 'car', 'Facility', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(725, 145, 8, 'car', 'Aftercare', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(726, 146, 8, 'car', 'Equipment', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(727, 146, 8, 'car', 'Comfortable', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(728, 146, 8, 'car', 'Climate Control', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(729, 146, 8, 'car', 'Facility', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(730, 146, 8, 'car', 'Aftercare', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(731, 147, 9, 'car', 'Equipment', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(732, 147, 9, 'car', 'Comfortable', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(733, 147, 9, 'car', 'Climate Control', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(734, 147, 9, 'car', 'Facility', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(735, 147, 9, 'car', 'Aftercare', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(736, 148, 9, 'car', 'Equipment', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(737, 148, 9, 'car', 'Comfortable', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(738, 148, 9, 'car', 'Climate Control', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(739, 148, 9, 'car', 'Facility', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(740, 148, 9, 'car', 'Aftercare', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(741, 149, 9, 'car', 'Equipment', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(742, 149, 9, 'car', 'Comfortable', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(743, 149, 9, 'car', 'Climate Control', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(744, 149, 9, 'car', 'Facility', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(745, 149, 9, 'car', 'Aftercare', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(746, 150, 10, 'car', 'Equipment', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(747, 150, 10, 'car', 'Comfortable', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(748, 150, 10, 'car', 'Climate Control', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(749, 150, 10, 'car', 'Facility', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(750, 150, 10, 'car', 'Aftercare', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(751, 151, 10, 'car', 'Equipment', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(752, 151, 10, 'car', 'Comfortable', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(753, 151, 10, 'car', 'Climate Control', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(754, 151, 10, 'car', 'Facility', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(755, 151, 10, 'car', 'Aftercare', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(756, 152, 10, 'car', 'Equipment', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(757, 152, 10, 'car', 'Comfortable', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(758, 152, 10, 'car', 'Climate Control', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(759, 152, 10, 'car', 'Facility', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(760, 152, 10, 'car', 'Aftercare', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(761, 153, 10, 'car', 'Equipment', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(762, 153, 10, 'car', 'Comfortable', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(763, 153, 10, 'car', 'Climate Control', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(764, 153, 10, 'car', 'Facility', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(765, 153, 10, 'car', 'Aftercare', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(766, 154, 11, 'car', 'Equipment', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(767, 154, 11, 'car', 'Comfortable', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(768, 154, 11, 'car', 'Climate Control', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(769, 154, 11, 'car', 'Facility', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(770, 154, 11, 'car', 'Aftercare', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(771, 155, 11, 'car', 'Equipment', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(772, 155, 11, 'car', 'Comfortable', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(773, 155, 11, 'car', 'Climate Control', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(774, 155, 11, 'car', 'Facility', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(775, 155, 11, 'car', 'Aftercare', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(776, 156, 11, 'car', 'Equipment', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(777, 156, 11, 'car', 'Comfortable', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(778, 156, 11, 'car', 'Climate Control', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(779, 156, 11, 'car', 'Facility', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(780, 156, 11, 'car', 'Aftercare', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(781, 157, 11, 'car', 'Equipment', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(782, 157, 11, 'car', 'Comfortable', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(783, 157, 11, 'car', 'Climate Control', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(784, 157, 11, 'car', 'Facility', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(785, 157, 11, 'car', 'Aftercare', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(786, 158, 12, 'car', 'Equipment', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(787, 158, 12, 'car', 'Comfortable', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(788, 158, 12, 'car', 'Climate Control', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(789, 158, 12, 'car', 'Facility', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(790, 158, 12, 'car', 'Aftercare', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(791, 159, 12, 'car', 'Equipment', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(792, 159, 12, 'car', 'Comfortable', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(793, 159, 12, 'car', 'Climate Control', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(794, 159, 12, 'car', 'Facility', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(795, 159, 12, 'car', 'Aftercare', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(796, 160, 12, 'car', 'Equipment', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(797, 160, 12, 'car', 'Comfortable', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(798, 160, 12, 'car', 'Climate Control', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(799, 160, 12, 'car', 'Facility', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(800, 160, 12, 'car', 'Aftercare', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(801, 161, 12, 'car', 'Equipment', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(802, 161, 12, 'car', 'Comfortable', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(803, 161, 12, 'car', 'Climate Control', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(804, 161, 12, 'car', 'Facility', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(805, 161, 12, 'car', 'Aftercare', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(806, 162, 13, 'car', 'Equipment', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(807, 162, 13, 'car', 'Comfortable', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(808, 162, 13, 'car', 'Climate Control', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(809, 162, 13, 'car', 'Facility', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(810, 162, 13, 'car', 'Aftercare', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(811, 163, 13, 'car', 'Equipment', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(812, 163, 13, 'car', 'Comfortable', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(813, 163, 13, 'car', 'Climate Control', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(814, 163, 13, 'car', 'Facility', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(815, 163, 13, 'car', 'Aftercare', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(816, 164, 1, 'event', 'Service', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(817, 164, 1, 'event', 'Organization', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(818, 164, 1, 'event', 'Friendliness', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(819, 164, 1, 'event', 'Area Expert', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(820, 164, 1, 'event', 'Safety', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(821, 165, 1, 'event', 'Service', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(822, 165, 1, 'event', 'Organization', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(823, 165, 1, 'event', 'Friendliness', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(824, 165, 1, 'event', 'Area Expert', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(825, 165, 1, 'event', 'Safety', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(826, 166, 1, 'event', 'Service', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(827, 166, 1, 'event', 'Organization', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(828, 166, 1, 'event', 'Friendliness', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(829, 166, 1, 'event', 'Area Expert', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(830, 166, 1, 'event', 'Safety', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(831, 167, 1, 'event', 'Service', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(832, 167, 1, 'event', 'Organization', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(833, 167, 1, 'event', 'Friendliness', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(834, 167, 1, 'event', 'Area Expert', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(835, 167, 1, 'event', 'Safety', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(836, 168, 2, 'event', 'Service', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(837, 168, 2, 'event', 'Organization', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(838, 168, 2, 'event', 'Friendliness', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(839, 168, 2, 'event', 'Area Expert', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(840, 168, 2, 'event', 'Safety', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(841, 169, 2, 'event', 'Service', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(842, 169, 2, 'event', 'Organization', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(843, 169, 2, 'event', 'Friendliness', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(844, 169, 2, 'event', 'Area Expert', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(845, 169, 2, 'event', 'Safety', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(846, 170, 2, 'event', 'Service', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(847, 170, 2, 'event', 'Organization', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(848, 170, 2, 'event', 'Friendliness', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(849, 170, 2, 'event', 'Area Expert', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(850, 170, 2, 'event', 'Safety', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(851, 171, 3, 'event', 'Service', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(852, 171, 3, 'event', 'Organization', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(853, 171, 3, 'event', 'Friendliness', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(854, 171, 3, 'event', 'Area Expert', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(855, 171, 3, 'event', 'Safety', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(856, 172, 3, 'event', 'Service', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(857, 172, 3, 'event', 'Organization', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(858, 172, 3, 'event', 'Friendliness', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(859, 172, 3, 'event', 'Area Expert', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(860, 172, 3, 'event', 'Safety', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(861, 173, 4, 'event', 'Service', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(862, 173, 4, 'event', 'Organization', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(863, 173, 4, 'event', 'Friendliness', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(864, 173, 4, 'event', 'Area Expert', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(865, 173, 4, 'event', 'Safety', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(866, 174, 4, 'event', 'Service', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(867, 174, 4, 'event', 'Organization', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(868, 174, 4, 'event', 'Friendliness', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(869, 174, 4, 'event', 'Area Expert', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(870, 174, 4, 'event', 'Safety', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(871, 175, 4, 'event', 'Service', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(872, 175, 4, 'event', 'Organization', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(873, 175, 4, 'event', 'Friendliness', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(874, 175, 4, 'event', 'Area Expert', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(875, 175, 4, 'event', 'Safety', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(876, 176, 5, 'event', 'Service', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(877, 176, 5, 'event', 'Organization', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(878, 176, 5, 'event', 'Friendliness', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(879, 176, 5, 'event', 'Area Expert', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(880, 176, 5, 'event', 'Safety', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(881, 177, 5, 'event', 'Service', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(882, 177, 5, 'event', 'Organization', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(883, 177, 5, 'event', 'Friendliness', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(884, 177, 5, 'event', 'Area Expert', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(885, 177, 5, 'event', 'Safety', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(886, 178, 6, 'event', 'Service', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(887, 178, 6, 'event', 'Organization', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(888, 178, 6, 'event', 'Friendliness', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(889, 178, 6, 'event', 'Area Expert', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(890, 178, 6, 'event', 'Safety', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(891, 179, 6, 'event', 'Service', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(892, 179, 6, 'event', 'Organization', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(893, 179, 6, 'event', 'Friendliness', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(894, 179, 6, 'event', 'Area Expert', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(895, 179, 6, 'event', 'Safety', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(896, 180, 6, 'event', 'Service', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(897, 180, 6, 'event', 'Organization', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(898, 180, 6, 'event', 'Friendliness', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(899, 180, 6, 'event', 'Area Expert', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(900, 180, 6, 'event', 'Safety', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(901, 181, 7, 'event', 'Service', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(902, 181, 7, 'event', 'Organization', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(903, 181, 7, 'event', 'Friendliness', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(904, 181, 7, 'event', 'Area Expert', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(905, 181, 7, 'event', 'Safety', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(906, 182, 7, 'event', 'Service', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(907, 182, 7, 'event', 'Organization', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(908, 182, 7, 'event', 'Friendliness', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(909, 182, 7, 'event', 'Area Expert', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(910, 182, 7, 'event', 'Safety', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(911, 183, 7, 'event', 'Service', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(912, 183, 7, 'event', 'Organization', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(913, 183, 7, 'event', 'Friendliness', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(914, 183, 7, 'event', 'Area Expert', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(915, 183, 7, 'event', 'Safety', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(916, 184, 8, 'event', 'Service', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(917, 184, 8, 'event', 'Organization', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(918, 184, 8, 'event', 'Friendliness', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(919, 184, 8, 'event', 'Area Expert', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(920, 184, 8, 'event', 'Safety', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(921, 185, 8, 'event', 'Service', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(922, 185, 8, 'event', 'Organization', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(923, 185, 8, 'event', 'Friendliness', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(924, 185, 8, 'event', 'Area Expert', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(925, 185, 8, 'event', 'Safety', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(926, 186, 9, 'event', 'Service', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(927, 186, 9, 'event', 'Organization', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(928, 186, 9, 'event', 'Friendliness', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(929, 186, 9, 'event', 'Area Expert', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(930, 186, 9, 'event', 'Safety', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(931, 187, 9, 'event', 'Service', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(932, 187, 9, 'event', 'Organization', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(933, 187, 9, 'event', 'Friendliness', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(934, 187, 9, 'event', 'Area Expert', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(935, 187, 9, 'event', 'Safety', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(936, 188, 10, 'event', 'Service', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(937, 188, 10, 'event', 'Organization', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(938, 188, 10, 'event', 'Friendliness', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(939, 188, 10, 'event', 'Area Expert', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(940, 188, 10, 'event', 'Safety', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(941, 189, 10, 'event', 'Service', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(942, 189, 10, 'event', 'Organization', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(943, 189, 10, 'event', 'Friendliness', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(944, 189, 10, 'event', 'Area Expert', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(945, 189, 10, 'event', 'Safety', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(946, 190, 10, 'event', 'Service', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(947, 190, 10, 'event', 'Organization', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(948, 190, 10, 'event', 'Friendliness', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(949, 190, 10, 'event', 'Area Expert', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(950, 190, 10, 'event', 'Safety', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(951, 191, 10, 'event', 'Service', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(952, 191, 10, 'event', 'Organization', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(953, 191, 10, 'event', 'Friendliness', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(954, 191, 10, 'event', 'Area Expert', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(955, 191, 10, 'event', 'Safety', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(956, 192, 11, 'event', 'Service', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(957, 192, 11, 'event', 'Organization', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(958, 192, 11, 'event', 'Friendliness', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(959, 192, 11, 'event', 'Area Expert', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(960, 192, 11, 'event', 'Safety', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(961, 193, 11, 'event', 'Service', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(962, 193, 11, 'event', 'Organization', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(963, 193, 11, 'event', 'Friendliness', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(964, 193, 11, 'event', 'Area Expert', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(965, 193, 11, 'event', 'Safety', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(966, 194, 11, 'event', 'Service', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(967, 194, 11, 'event', 'Organization', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(968, 194, 11, 'event', 'Friendliness', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(969, 194, 11, 'event', 'Area Expert', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(970, 194, 11, 'event', 'Safety', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(971, 195, 11, 'event', 'Service', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(972, 195, 11, 'event', 'Organization', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(973, 195, 11, 'event', 'Friendliness', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(974, 195, 11, 'event', 'Area Expert', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(975, 195, 11, 'event', 'Safety', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(976, 196, 12, 'event', 'Service', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(977, 196, 12, 'event', 'Organization', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(978, 196, 12, 'event', 'Friendliness', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(979, 196, 12, 'event', 'Area Expert', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(980, 196, 12, 'event', 'Safety', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(981, 197, 12, 'event', 'Service', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(982, 197, 12, 'event', 'Organization', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(983, 197, 12, 'event', 'Friendliness', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(984, 197, 12, 'event', 'Area Expert', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(985, 197, 12, 'event', 'Safety', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(986, 198, 12, 'event', 'Service', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(987, 198, 12, 'event', 'Organization', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(988, 198, 12, 'event', 'Friendliness', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(989, 198, 12, 'event', 'Area Expert', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(990, 198, 12, 'event', 'Safety', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(991, 199, 12, 'event', 'Service', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(992, 199, 12, 'event', 'Organization', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(993, 199, 12, 'event', 'Friendliness', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(994, 199, 12, 'event', 'Area Expert', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(995, 199, 12, 'event', 'Safety', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(996, 200, 12, 'event', 'Service', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(997, 200, 12, 'event', 'Organization', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(998, 200, 12, 'event', 'Friendliness', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(999, 200, 12, 'event', 'Area Expert', '5', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(1000, 200, 12, 'event', 'Safety', '4', 1, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bravo_seo`
--

CREATE TABLE `bravo_seo` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `object_id` int(11) DEFAULT NULL,
  `object_model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_index` tinyint(4) DEFAULT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_image` int(11) DEFAULT NULL,
  `seo_share` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `bravo_services`
--

CREATE TABLE `bravo_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8 NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_lat` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_lng` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint(4) DEFAULT NULL,
  `star_rate` tinyint(4) DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `sale_price` decimal(12,2) DEFAULT NULL,
  `min_people` int(11) DEFAULT NULL,
  `max_people` int(11) DEFAULT NULL,
  `max_guests` int(11) DEFAULT NULL,
  `review_score` int(11) DEFAULT NULL,
  `min_day_before_booking` int(11) DEFAULT NULL,
  `min_day_stays` int(11) DEFAULT NULL,
  `object_id` int(11) DEFAULT NULL,
  `object_model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `bravo_service_translations`
--

CREATE TABLE `bravo_service_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `locale` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `bravo_spaces`
--

CREATE TABLE `bravo_spaces` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8 NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `banner_image_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_lat` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_lng` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_zoom` int(11) DEFAULT NULL,
  `is_featured` tinyint(4) DEFAULT NULL,
  `gallery` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faqs` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `sale_price` decimal(12,2) DEFAULT NULL,
  `is_instant` tinyint(4) DEFAULT 0,
  `allow_children` tinyint(4) DEFAULT 0,
  `allow_infant` tinyint(4) DEFAULT 0,
  `max_guests` int(11) DEFAULT NULL,
  `bed` int(11) DEFAULT NULL,
  `bathroom` int(11) DEFAULT NULL,
  `square` int(11) DEFAULT NULL,
  `enable_extra_price` tinyint(4) DEFAULT NULL,
  `extra_price` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_by_days` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_state` tinyint(4) DEFAULT 1,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `review_score` decimal(2,1) DEFAULT NULL,
  `ical_import_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min_day_before_booking` int(11) DEFAULT NULL,
  `min_day_stays` int(11) DEFAULT NULL,
  `enable_service_fee` tinyint(4) DEFAULT NULL,
  `service_fee` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `surrounding` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `bravo_spaces`
--

INSERT INTO `bravo_spaces` (`id`, `title`, `slug`, `content`, `image_id`, `banner_image_id`, `location_id`, `address`, `map_lat`, `map_lng`, `map_zoom`, `is_featured`, `gallery`, `video`, `faqs`, `price`, `sale_price`, `is_instant`, `allow_children`, `allow_infant`, `max_guests`, `bed`, `bathroom`, `square`, `enable_extra_price`, `extra_price`, `discount_by_days`, `status`, `default_state`, `create_user`, `update_user`, `deleted_at`, `created_at`, `updated_at`, `review_score`, `ical_import_url`, `min_day_before_booking`, `min_day_stays`, `enable_service_fee`, `service_fee`, `surrounding`) VALUES
(1, 'LUXURY STUDIO', 'luxury-studio', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 63, 85, 2, 'Arrondissement de Paris', '51.528564', '-0.203010', 12, 1, '76,77,78,79,80,81,82', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Check-in time?\",\"content\":\"As a rough guide, the check-in time is after 12 a.m. Let us know your arrival time in case you schedule and early check in we\\u2018ll do our best to have your room available.\"},{\"title\":\"Check-out time?\",\"content\":\"As a rough guide, the check-out time is before 12pm. If you plan a late check out kindly let us know your departure time, we\\u2019ll our best to satisfy your needs.\"},{\"title\":\"Is Reception open 24 hours?\",\"content\":\"Yes, Reception service is available 24 hours.\"},{\"title\":\"Which languages are spoken at Reception?\",\"content\":\"Italian, English, French, German and Spanish.\"},{\"title\":\"Can I leave my luggage?\",\"content\":\"Yes, we can look after your luggage. If at check in your room is not ready yet or in case of early check out after .We will store your luggage free of charge on your check-in and check-out days.\"},{\"title\":\"Internet connection?\",\"content\":\"A wireless internet connection is available throughout the hotel.\\r\\n\\r\\nThe guest rooms feature hi-speed web connectivity (both wireless and cabled).\"}]', 300.00, 567.00, 1, 0, 0, 6, 10, 9, 159, 1, '[{\"name\":\"Lawn garden\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Clearning\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Breakfasts\",\"price\":\"200\",\"type\":\"one_time\"}]', NULL, 'publish', 1, 1, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', 4.5, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'LUXURY APARTMENT', 'luxury-apartment', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 64, 85, 3, 'Porte de Vanves', '51.519592', '-0.226346', 12, 0, '76,77,78,79,80,81,82', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Check-in time?\",\"content\":\"As a rough guide, the check-in time is after 12 a.m. Let us know your arrival time in case you schedule and early check in we\\u2018ll do our best to have your room available.\"},{\"title\":\"Check-out time?\",\"content\":\"As a rough guide, the check-out time is before 12pm. If you plan a late check out kindly let us know your departure time, we\\u2019ll our best to satisfy your needs.\"},{\"title\":\"Is Reception open 24 hours?\",\"content\":\"Yes, Reception service is available 24 hours.\"},{\"title\":\"Which languages are spoken at Reception?\",\"content\":\"Italian, English, French, German and Spanish.\"},{\"title\":\"Can I leave my luggage?\",\"content\":\"Yes, we can look after your luggage. If at check in your room is not ready yet or in case of early check out after .We will store your luggage free of charge on your check-in and check-out days.\"},{\"title\":\"Internet connection?\",\"content\":\"A wireless internet connection is available throughout the hotel.\\r\\n\\r\\nThe guest rooms feature hi-speed web connectivity (both wireless and cabled).\"}]', 900.00, 0.00, 1, 0, 0, 7, 8, 3, 143, 1, '[{\"name\":\"Lawn garden\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Clearning\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Breakfasts\",\"price\":\"200\",\"type\":\"one_time\"}]', NULL, 'publish', 1, 1, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', 4.3, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'BEAUTIFUL LOFT', 'beautiful-loft', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 65, 84, 3, 'Porte de Vanves', '51.461875', '-0.211246', 12, 0, '76,77,78,79,80,81,82', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Check-in time?\",\"content\":\"As a rough guide, the check-in time is after 12 a.m. Let us know your arrival time in case you schedule and early check in we\\u2018ll do our best to have your room available.\"},{\"title\":\"Check-out time?\",\"content\":\"As a rough guide, the check-out time is before 12pm. If you plan a late check out kindly let us know your departure time, we\\u2019ll our best to satisfy your needs.\"},{\"title\":\"Is Reception open 24 hours?\",\"content\":\"Yes, Reception service is available 24 hours.\"},{\"title\":\"Which languages are spoken at Reception?\",\"content\":\"Italian, English, French, German and Spanish.\"},{\"title\":\"Can I leave my luggage?\",\"content\":\"Yes, we can look after your luggage. If at check in your room is not ready yet or in case of early check out after .We will store your luggage free of charge on your check-in and check-out days.\"},{\"title\":\"Internet connection?\",\"content\":\"A wireless internet connection is available throughout the hotel.\\r\\n\\r\\nThe guest rooms feature hi-speed web connectivity (both wireless and cabled).\"}]', 650.00, 0.00, 1, 0, 0, 8, 7, 2, 185, 1, '[{\"name\":\"Lawn garden\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Clearning\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Breakfasts\",\"price\":\"200\",\"type\":\"one_time\"}]', NULL, 'publish', 1, 5, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', 4.7, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'BEST OF WEST VILLAGE', 'best-of-west-village', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 66, 85, 4, 'Porte de Vanves', '51.427638', '-0.170752', 12, 1, '76,77,78,79,80,81,82', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Check-in time?\",\"content\":\"As a rough guide, the check-in time is after 12 a.m. Let us know your arrival time in case you schedule and early check in we\\u2018ll do our best to have your room available.\"},{\"title\":\"Check-out time?\",\"content\":\"As a rough guide, the check-out time is before 12pm. If you plan a late check out kindly let us know your departure time, we\\u2019ll our best to satisfy your needs.\"},{\"title\":\"Is Reception open 24 hours?\",\"content\":\"Yes, Reception service is available 24 hours.\"},{\"title\":\"Which languages are spoken at Reception?\",\"content\":\"Italian, English, French, German and Spanish.\"},{\"title\":\"Can I leave my luggage?\",\"content\":\"Yes, we can look after your luggage. If at check in your room is not ready yet or in case of early check out after .We will store your luggage free of charge on your check-in and check-out days.\"},{\"title\":\"Internet connection?\",\"content\":\"A wireless internet connection is available throughout the hotel.\\r\\n\\r\\nThe guest rooms feature hi-speed web connectivity (both wireless and cabled).\"}]', 800.00, 0.00, 0, 0, 0, 6, 6, 8, 164, 1, '[{\"name\":\"Lawn garden\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Clearning\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Breakfasts\",\"price\":\"200\",\"type\":\"one_time\"}]', NULL, 'publish', 1, 4, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', 4.0, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'DUPLEX GREENWICH', 'duplex-greenwich', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 67, 84, 1, 'Porte de Vanves', '51.442192', '-0.043778', 12, 1, '76,77,78,79,80,81,82', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Check-in time?\",\"content\":\"As a rough guide, the check-in time is after 12 a.m. Let us know your arrival time in case you schedule and early check in we\\u2018ll do our best to have your room available.\"},{\"title\":\"Check-out time?\",\"content\":\"As a rough guide, the check-out time is before 12pm. If you plan a late check out kindly let us know your departure time, we\\u2019ll our best to satisfy your needs.\"},{\"title\":\"Is Reception open 24 hours?\",\"content\":\"Yes, Reception service is available 24 hours.\"},{\"title\":\"Which languages are spoken at Reception?\",\"content\":\"Italian, English, French, German and Spanish.\"},{\"title\":\"Can I leave my luggage?\",\"content\":\"Yes, we can look after your luggage. If at check in your room is not ready yet or in case of early check out after .We will store your luggage free of charge on your check-in and check-out days.\"},{\"title\":\"Internet connection?\",\"content\":\"A wireless internet connection is available throughout the hotel.\\r\\n\\r\\nThe guest rooms feature hi-speed web connectivity (both wireless and cabled).\"}]', 220.00, 0.00, 0, 0, 0, 10, 3, 4, 168, 1, '[{\"name\":\"Lawn garden\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Clearning\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Breakfasts\",\"price\":\"200\",\"type\":\"one_time\"}]', NULL, 'publish', 1, 5, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', 4.8, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'THE MEATPACKING SUITES', 'the-meatpacking-suites', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 68, 83, 1, 'Porte de Vanves', '51.475135', '0.003592', 12, 0, '76,77,78,79,80,81,82', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Check-in time?\",\"content\":\"As a rough guide, the check-in time is after 12 a.m. Let us know your arrival time in case you schedule and early check in we\\u2018ll do our best to have your room available.\"},{\"title\":\"Check-out time?\",\"content\":\"As a rough guide, the check-out time is before 12pm. If you plan a late check out kindly let us know your departure time, we\\u2019ll our best to satisfy your needs.\"},{\"title\":\"Is Reception open 24 hours?\",\"content\":\"Yes, Reception service is available 24 hours.\"},{\"title\":\"Which languages are spoken at Reception?\",\"content\":\"Italian, English, French, German and Spanish.\"},{\"title\":\"Can I leave my luggage?\",\"content\":\"Yes, we can look after your luggage. If at check in your room is not ready yet or in case of early check out after .We will store your luggage free of charge on your check-in and check-out days.\"},{\"title\":\"Internet connection?\",\"content\":\"A wireless internet connection is available throughout the hotel.\\r\\n\\r\\nThe guest rooms feature hi-speed web connectivity (both wireless and cabled).\"}]', 320.00, 0.00, 1, 0, 0, 6, 7, 6, 104, 1, '[{\"name\":\"Lawn garden\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Clearning\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Breakfasts\",\"price\":\"200\",\"type\":\"one_time\"}]', NULL, 'publish', 1, 4, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', 4.3, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'EAST VILLAGE', 'east-village', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 69, 83, 1, 'Porte de Vanves', '51.524292', '-0.022489', 12, 0, '76,77,78,79,80,81,82', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Check-in time?\",\"content\":\"As a rough guide, the check-in time is after 12 a.m. Let us know your arrival time in case you schedule and early check in we\\u2018ll do our best to have your room available.\"},{\"title\":\"Check-out time?\",\"content\":\"As a rough guide, the check-out time is before 12pm. If you plan a late check out kindly let us know your departure time, we\\u2019ll our best to satisfy your needs.\"},{\"title\":\"Is Reception open 24 hours?\",\"content\":\"Yes, Reception service is available 24 hours.\"},{\"title\":\"Which languages are spoken at Reception?\",\"content\":\"Italian, English, French, German and Spanish.\"},{\"title\":\"Can I leave my luggage?\",\"content\":\"Yes, we can look after your luggage. If at check in your room is not ready yet or in case of early check out after .We will store your luggage free of charge on your check-in and check-out days.\"},{\"title\":\"Internet connection?\",\"content\":\"A wireless internet connection is available throughout the hotel.\\r\\n\\r\\nThe guest rooms feature hi-speed web connectivity (both wireless and cabled).\"}]', 300.00, 260.00, 0, 0, 0, 10, 5, 5, 129, 1, '[{\"name\":\"Lawn garden\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Clearning\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Breakfasts\",\"price\":\"200\",\"type\":\"one_time\"}]', NULL, 'publish', 1, 4, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', 4.8, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'PARIS GREENWICH VILLA', 'paris-greenwich-villa', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 70, 83, 1, 'Porte de Vanves', '51.556749', '-0.091124', 12, 0, '76,77,78,79,80,81,82', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Check-in time?\",\"content\":\"As a rough guide, the check-in time is after 12 a.m. Let us know your arrival time in case you schedule and early check in we\\u2018ll do our best to have your room available.\"},{\"title\":\"Check-out time?\",\"content\":\"As a rough guide, the check-out time is before 12pm. If you plan a late check out kindly let us know your departure time, we\\u2019ll our best to satisfy your needs.\"},{\"title\":\"Is Reception open 24 hours?\",\"content\":\"Yes, Reception service is available 24 hours.\"},{\"title\":\"Which languages are spoken at Reception?\",\"content\":\"Italian, English, French, German and Spanish.\"},{\"title\":\"Can I leave my luggage?\",\"content\":\"Yes, we can look after your luggage. If at check in your room is not ready yet or in case of early check out after .We will store your luggage free of charge on your check-in and check-out days.\"},{\"title\":\"Internet connection?\",\"content\":\"A wireless internet connection is available throughout the hotel.\\r\\n\\r\\nThe guest rooms feature hi-speed web connectivity (both wireless and cabled).\"}]', 500.00, 0.00, 0, 0, 0, 5, 10, 8, 140, 1, '[{\"name\":\"Lawn garden\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Clearning\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Breakfasts\",\"price\":\"200\",\"type\":\"one_time\"}]', NULL, 'publish', 1, 6, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', 4.7, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'LUXURY SINGLE', 'luxury-single', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 71, 84, 1, 'Porte de Vanves', '51.569555', '0.012563', 12, 1, '76,77,78,79,80,81,82', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Check-in time?\",\"content\":\"As a rough guide, the check-in time is after 12 a.m. Let us know your arrival time in case you schedule and early check in we\\u2018ll do our best to have your room available.\"},{\"title\":\"Check-out time?\",\"content\":\"As a rough guide, the check-out time is before 12pm. If you plan a late check out kindly let us know your departure time, we\\u2019ll our best to satisfy your needs.\"},{\"title\":\"Is Reception open 24 hours?\",\"content\":\"Yes, Reception service is available 24 hours.\"},{\"title\":\"Which languages are spoken at Reception?\",\"content\":\"Italian, English, French, German and Spanish.\"},{\"title\":\"Can I leave my luggage?\",\"content\":\"Yes, we can look after your luggage. If at check in your room is not ready yet or in case of early check out after .We will store your luggage free of charge on your check-in and check-out days.\"},{\"title\":\"Internet connection?\",\"content\":\"A wireless internet connection is available throughout the hotel.\\r\\n\\r\\nThe guest rooms feature hi-speed web connectivity (both wireless and cabled).\"}]', 400.00, 350.00, 1, 0, 0, 10, 7, 2, 149, 1, '[{\"name\":\"Lawn garden\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Clearning\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Breakfasts\",\"price\":\"200\",\"type\":\"one_time\"}]', NULL, 'publish', 1, 4, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', 4.5, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'LILY DALE VILLAGE', 'lily-dale-village', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 72, 83, 1, 'Porte de Vanves', '51.517883', '-0.134314', 12, 1, '76,77,78,79,80,81,82', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Check-in time?\",\"content\":\"As a rough guide, the check-in time is after 12 a.m. Let us know your arrival time in case you schedule and early check in we\\u2018ll do our best to have your room available.\"},{\"title\":\"Check-out time?\",\"content\":\"As a rough guide, the check-out time is before 12pm. If you plan a late check out kindly let us know your departure time, we\\u2019ll our best to satisfy your needs.\"},{\"title\":\"Is Reception open 24 hours?\",\"content\":\"Yes, Reception service is available 24 hours.\"},{\"title\":\"Which languages are spoken at Reception?\",\"content\":\"Italian, English, French, German and Spanish.\"},{\"title\":\"Can I leave my luggage?\",\"content\":\"Yes, we can look after your luggage. If at check in your room is not ready yet or in case of early check out after .We will store your luggage free of charge on your check-in and check-out days.\"},{\"title\":\"Internet connection?\",\"content\":\"A wireless internet connection is available throughout the hotel.\\r\\n\\r\\nThe guest rooms feature hi-speed web connectivity (both wireless and cabled).\"}]', 250.00, 0.00, 1, 0, 0, 7, 7, 9, 187, 1, '[{\"name\":\"Lawn garden\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Clearning\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Breakfasts\",\"price\":\"200\",\"type\":\"one_time\"}]', NULL, 'publish', 1, 1, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', 4.5, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'STAY GREENWICH VILLAGE', 'stay-greenwich-village', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 73, 84, 1, 'Porte de Vanves', '51.514892', '-0.176181', 12, 0, '76,77,78,79,80,81,82', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Check-in time?\",\"content\":\"As a rough guide, the check-in time is after 12 a.m. Let us know your arrival time in case you schedule and early check in we\\u2018ll do our best to have your room available.\"},{\"title\":\"Check-out time?\",\"content\":\"As a rough guide, the check-out time is before 12pm. If you plan a late check out kindly let us know your departure time, we\\u2019ll our best to satisfy your needs.\"},{\"title\":\"Is Reception open 24 hours?\",\"content\":\"Yes, Reception service is available 24 hours.\"},{\"title\":\"Which languages are spoken at Reception?\",\"content\":\"Italian, English, French, German and Spanish.\"},{\"title\":\"Can I leave my luggage?\",\"content\":\"Yes, we can look after your luggage. If at check in your room is not ready yet or in case of early check out after .We will store your luggage free of charge on your check-in and check-out days.\"},{\"title\":\"Internet connection?\",\"content\":\"A wireless internet connection is available throughout the hotel.\\r\\n\\r\\nThe guest rooms feature hi-speed web connectivity (both wireless and cabled).\"}]', 300.00, 150.00, 0, 0, 0, 7, 7, 3, 163, 1, '[{\"name\":\"Lawn garden\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Clearning\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Breakfasts\",\"price\":\"200\",\"type\":\"one_time\"}]', NULL, 'publish', 1, 6, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', 4.5, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `bravo_space_dates`
--

CREATE TABLE `bravo_space_dates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `target_id` bigint(20) DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `max_guests` tinyint(4) DEFAULT NULL,
  `active` tinyint(4) DEFAULT 0,
  `note_to_customer` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note_to_admin` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_instant` tinyint(4) DEFAULT 0,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `bravo_space_term`
--

CREATE TABLE `bravo_space_term` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `term_id` int(11) DEFAULT NULL,
  `target_id` int(11) DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `bravo_space_term`
--

INSERT INTO `bravo_space_term` (`id`, `term_id`, `target_id`, `create_user`, `update_user`, `created_at`, `updated_at`) VALUES
(1, 28, 1, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(2, 30, 1, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(3, 31, 1, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(4, 28, 2, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(5, 29, 2, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(6, 30, 2, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(7, 28, 3, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(8, 30, 3, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(9, 31, 3, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(10, 28, 4, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(11, 30, 4, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(12, 31, 4, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(13, 27, 5, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(14, 28, 5, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(15, 29, 5, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(16, 31, 5, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(17, 26, 6, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(18, 27, 6, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(19, 26, 7, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(20, 27, 7, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(21, 28, 7, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(22, 29, 7, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(23, 30, 7, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(24, 26, 8, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(25, 28, 8, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(26, 26, 9, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(27, 27, 9, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(28, 28, 9, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(29, 29, 9, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(30, 31, 9, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(31, 27, 10, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(32, 29, 10, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(33, 31, 10, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(34, 26, 11, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(35, 28, 11, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(36, 29, 11, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(37, 30, 11, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34'),
(38, 31, 11, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bravo_space_translations`
--

CREATE TABLE `bravo_space_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `origin_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faqs` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `surrounding` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `bravo_terms`
--

CREATE TABLE `bravo_terms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attr_id` int(11) DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `bravo_terms`
--

INSERT INTO `bravo_terms` (`id`, `name`, `content`, `attr_id`, `slug`, `create_user`, `update_user`, `origin_id`, `lang`, `created_at`, `updated_at`, `deleted_at`, `image_id`, `icon`) VALUES
(1, 'Cultural', NULL, 1, 'cultural', NULL, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33', NULL, NULL, NULL),
(2, 'Nature & Adventure', NULL, 1, 'nature-adventure', NULL, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33', NULL, NULL, NULL),
(3, 'Marine', NULL, 1, 'marine', NULL, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33', NULL, NULL, NULL),
(4, 'Independent', NULL, 1, 'independent', NULL, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33', NULL, NULL, NULL),
(5, 'Activities', NULL, 1, 'activities', NULL, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33', NULL, NULL, NULL),
(6, 'Festival & Events', NULL, 1, 'festival-events', NULL, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33', NULL, NULL, NULL),
(7, 'Special Interest', NULL, 1, 'special-interest', NULL, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33', NULL, NULL, NULL),
(8, 'Wifi', NULL, 2, 'wifi', NULL, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33', NULL, NULL, NULL),
(9, 'Gymnasium', NULL, 2, 'gymnasium', NULL, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33', NULL, NULL, NULL),
(10, 'Mountain Bike', NULL, 2, 'mountain-bike', NULL, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33', NULL, NULL, NULL),
(11, 'Satellite Office', NULL, 2, 'satellite-office', NULL, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33', NULL, NULL, NULL),
(12, 'Staff Lounge', NULL, 2, 'staff-lounge', NULL, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33', NULL, NULL, NULL),
(13, 'Golf Cages', NULL, 2, 'golf-cages', NULL, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33', NULL, NULL, NULL),
(14, 'Aerobics Room', NULL, 2, 'aerobics-room', NULL, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33', NULL, NULL, NULL),
(15, 'Auditorium', NULL, 3, 'auditorium', NULL, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', NULL, NULL, NULL),
(16, 'Bar', NULL, 3, 'bar', NULL, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', NULL, NULL, NULL),
(17, 'Cafe', NULL, 3, 'cafe', NULL, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', NULL, NULL, NULL),
(18, 'Ballroom', NULL, 3, 'ballroom', NULL, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', NULL, NULL, NULL),
(19, 'Dance Studio', NULL, 3, 'dance-studio', NULL, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', NULL, NULL, NULL),
(20, 'Office', NULL, 3, 'office', NULL, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', NULL, NULL, NULL),
(21, 'Party Hall', NULL, 3, 'party-hall', NULL, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', NULL, NULL, NULL),
(22, 'Recording Studio', NULL, 3, 'recording-studio', NULL, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', NULL, NULL, NULL),
(23, 'Yoga Studio', NULL, 3, 'yoga-studio', NULL, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', NULL, NULL, NULL),
(24, 'Villa', NULL, 3, 'villa', NULL, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', NULL, NULL, NULL),
(25, 'Warehouse', NULL, 3, 'warehouse', NULL, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', NULL, NULL, NULL),
(26, 'Air Conditioning', NULL, 4, 'air-conditioning', NULL, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', NULL, 86, NULL),
(27, 'Breakfast', NULL, 4, 'breakfast', NULL, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', NULL, 87, NULL),
(28, 'Kitchen', NULL, 4, 'kitchen', NULL, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', NULL, 88, NULL),
(29, 'Parking', NULL, 4, 'parking', NULL, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', NULL, 89, NULL),
(30, 'Pool', NULL, 4, 'pool', NULL, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', NULL, 90, NULL),
(31, 'Wi-Fi Internet', NULL, 4, 'wi-fi-internet', NULL, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', NULL, 91, NULL),
(32, 'Apartments', NULL, 5, 'apartments', NULL, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', NULL, NULL, NULL),
(33, 'Hotels', NULL, 5, 'hotels', NULL, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', NULL, NULL, NULL),
(34, 'Homestays', NULL, 5, 'homestays', NULL, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', NULL, NULL, NULL),
(35, 'Villas', NULL, 5, 'villas', NULL, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', NULL, NULL, NULL),
(36, 'Boats', NULL, 5, 'boats', NULL, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', NULL, NULL, NULL),
(37, 'Motels', NULL, 5, 'motels', NULL, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', NULL, NULL, NULL),
(38, 'Resorts', NULL, 5, 'resorts', NULL, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', NULL, NULL, NULL),
(39, 'Lodges', NULL, 5, 'lodges', NULL, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', NULL, NULL, NULL),
(40, 'Holiday homes', NULL, 5, 'holiday-homes', NULL, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', NULL, NULL, NULL),
(41, 'Cruises', NULL, 5, 'cruises', NULL, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', NULL, NULL, NULL),
(42, 'Wake-up call', NULL, 6, 'wake-up-call', NULL, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', NULL, NULL, 'icofont-wall-clock'),
(43, 'Car hire', NULL, 6, 'car-hire', NULL, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', NULL, NULL, 'icofont-car-alt-3'),
(44, 'Bicycle hire', NULL, 6, 'bicycle-hire', NULL, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', NULL, NULL, 'icofont-bicycle-alt-2'),
(45, 'Flat Tv', NULL, 6, 'flat-tv', NULL, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', NULL, NULL, 'icofont-imac'),
(46, 'Laundry and dry cleaning', NULL, 6, 'laundry-and-dry-cleaning', NULL, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', NULL, NULL, 'icofont-recycle-alt'),
(47, 'Internet – Wifi', NULL, 6, 'internet-wifi', NULL, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', NULL, NULL, 'icofont-wifi-alt'),
(48, 'Coffee and tea', NULL, 6, 'coffee-and-tea', NULL, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', NULL, NULL, 'icofont-tea'),
(49, 'Havana Lobby bar', NULL, 7, 'havana-lobby-bar', NULL, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', NULL, NULL, NULL),
(50, 'Fiesta Restaurant', NULL, 7, 'fiesta-restaurant', NULL, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', NULL, NULL, NULL),
(51, 'Hotel transport services', NULL, 7, 'hotel-transport-services', NULL, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', NULL, NULL, NULL),
(52, 'Free luggage deposit', NULL, 7, 'free-luggage-deposit', NULL, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', NULL, NULL, NULL),
(53, 'Laundry Services', NULL, 7, 'laundry-services', NULL, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', NULL, NULL, NULL),
(54, 'Pets welcome', NULL, 7, 'pets-welcome', NULL, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', NULL, NULL, NULL),
(55, 'Tickets', NULL, 7, 'tickets', NULL, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', NULL, NULL, NULL),
(56, 'Wake-up call', NULL, 8, 'wake-up-call-1', NULL, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', NULL, NULL, 'icofont-wall-clock'),
(57, 'Flat Tv', NULL, 8, 'flat-tv-1', NULL, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', NULL, NULL, 'icofont-imac'),
(58, 'Laundry and dry cleaning', NULL, 8, 'laundry-and-dry-cleaning-1', NULL, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', NULL, NULL, 'icofont-recycle-alt'),
(59, 'Internet – Wifi', NULL, 8, 'internet-wifi-1', NULL, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', NULL, NULL, 'icofont-wifi-alt'),
(60, 'Coffee and tea', NULL, 8, 'coffee-and-tea-1', NULL, NULL, NULL, NULL, '2021-08-10 07:39:34', '2021-08-10 07:39:34', NULL, NULL, 'icofont-tea'),
(61, 'Convertibles', NULL, 9, 'convertibles', NULL, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', NULL, 123, NULL),
(62, 'Coupes', NULL, 9, 'coupes', NULL, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', NULL, 124, NULL),
(63, 'Hatchbacks', NULL, 9, 'hatchbacks', NULL, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', NULL, 125, NULL),
(64, 'Minivans', NULL, 9, 'minivans', NULL, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', NULL, 126, NULL),
(65, 'Sedan', NULL, 9, 'sedan', NULL, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', NULL, 127, NULL),
(66, 'SUVs', NULL, 9, 'suvs', NULL, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', NULL, 128, NULL),
(67, 'Trucks', NULL, 9, 'trucks', NULL, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', NULL, 129, NULL),
(68, 'Wagons', NULL, 9, 'wagons', NULL, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', NULL, 130, NULL),
(69, 'Airbag', NULL, 10, 'airbag', NULL, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', NULL, 136, NULL),
(70, 'FM Radio', NULL, 10, 'fm-radio', NULL, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', NULL, 137, NULL),
(71, 'Power Windows', NULL, 10, 'power-windows', NULL, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', NULL, 141, NULL),
(72, 'Sensor', NULL, 10, 'sensor', NULL, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', NULL, 138, NULL),
(73, 'Speed Km', NULL, 10, 'speed-km', NULL, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', NULL, 139, NULL),
(74, 'Steering Wheel', NULL, 10, 'steering-wheel', NULL, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', NULL, 140, NULL),
(75, 'Field Day', NULL, 11, 'field-day', NULL, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', NULL, NULL, NULL),
(76, 'Glastonbury', NULL, 11, 'glastonbury', NULL, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', NULL, NULL, NULL),
(77, 'Green Man', NULL, 11, 'green-man', NULL, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', NULL, NULL, NULL),
(78, 'Latitude', NULL, 11, 'latitude', NULL, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', NULL, NULL, NULL),
(79, 'Boomtown', NULL, 11, 'boomtown', NULL, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', NULL, NULL, NULL),
(80, 'Wilderness', NULL, 11, 'wilderness', NULL, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', NULL, NULL, NULL),
(81, 'Exit Festival', NULL, 11, 'exit-festival', NULL, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', NULL, NULL, NULL),
(82, 'Primavera Sound', NULL, 11, 'primavera-sound', NULL, NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `bravo_terms_translations`
--

CREATE TABLE `bravo_terms_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `locale` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `bravo_tours`
--

CREATE TABLE `bravo_tours` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8 NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `banner_image_id` int(11) DEFAULT NULL,
  `short_desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_lat` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_lng` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_zoom` int(11) DEFAULT NULL,
  `is_featured` tinyint(4) DEFAULT NULL,
  `gallery` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `sale_price` decimal(12,2) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `min_people` int(11) DEFAULT NULL,
  `max_people` int(11) DEFAULT NULL,
  `faqs` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish_date` datetime DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `default_state` tinyint(4) DEFAULT 1,
  `include` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exclude` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `itinerary` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `review_score` decimal(2,1) DEFAULT NULL,
  `ical_import_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enable_service_fee` tinyint(4) DEFAULT NULL,
  `service_fee` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `surrounding` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min_day_before_booking` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `bravo_tours`
--

INSERT INTO `bravo_tours` (`id`, `title`, `slug`, `content`, `image_id`, `banner_image_id`, `short_desc`, `category_id`, `location_id`, `address`, `map_lat`, `map_lng`, `map_zoom`, `is_featured`, `gallery`, `video`, `price`, `sale_price`, `duration`, `min_people`, `max_people`, `faqs`, `status`, `publish_date`, `create_user`, `update_user`, `deleted_at`, `origin_id`, `lang`, `created_at`, `updated_at`, `default_state`, `include`, `exclude`, `itinerary`, `review_score`, `ical_import_url`, `enable_service_fee`, `service_fee`, `surrounding`, `min_day_before_booking`) VALUES
(1, 'American Parks Trail end Rapid City', 'american-parks-trail', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 21, 44, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 4, 1, 'Arrondissement de Paris', '48.852754', '2.339155', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', 2000.00, 497.00, 6, 1, 14, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 1, NULL, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33', 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', 4.7, NULL, NULL, NULL, NULL, NULL),
(2, 'New York: Museum of Modern Art', 'new-york-museum-of-modern-art', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 22, 45, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 2, 1, 'Porte de Vanves', '48.853917', '2.307199', 12, 1, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', 900.00, 577.00, 1, 1, 17, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 1, NULL, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33', 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', 4.7, NULL, NULL, NULL, NULL, NULL),
(3, 'Los Angeles to San Francisco Express ', 'los-angeles-to-san-francisco-express', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 23, 46, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 1, 1, 'Petit-Montrouge', '48.884900', '2.346377', 12, 1, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', 1500.00, 177.00, 9, 1, 10, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 4, NULL, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33', 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', 4.0, NULL, NULL, NULL, NULL, NULL),
(4, 'Paris Vacation Travel ', 'paris-vacation-travel', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 24, 47, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 2, 2, 'New York', '40.707891', '-74.008825', 12, 1, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', 850.00, 330.00, 8, 1, 18, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 1, NULL, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:34', 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', 4.5, NULL, NULL, NULL, NULL, NULL),
(5, 'Southwest States (Ex Los Angeles) ', 'southwest-states', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 25, 48, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 3, 2, 'Regal Cinemas Battery Park 11', '40.714578', '-73.983888', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', 1900.00, 1277.00, 1, 1, 11, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 4, NULL, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:34', 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', 4.7, NULL, NULL, NULL, NULL, NULL),
(6, 'Eastern Discovery (Start New Orleans)', 'eastern-discovery-start-new-orleans', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 26, 49, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 3, 2, 'Prince St Station', '40.720161', '-74.009628', 12, 1, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', 2100.00, 231.00, 5, 1, 16, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 4, NULL, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:34', 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', 4.7, NULL, NULL, NULL, NULL, NULL),
(7, 'Eastern Discovery', 'eastern-discovery', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 27, 50, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 4, 2, 'Pier 36 New York', '40.708581', '-73.998817', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', 2100.00, 1607.00, 6, 1, 17, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 4, NULL, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:34', 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', 4.8, NULL, NULL, NULL, NULL, NULL),
(8, 'Pure Luxe in Punta Mita', 'pure-luxe-in-punta-mita', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 28, 51, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 3, 3, 'Trimmer Springs Rd, Sanger', '36.822484', '-119.365266', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', 2100.00, 364.00, 3, 1, 13, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 5, NULL, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:34', 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', 4.3, NULL, NULL, NULL, NULL, NULL),
(9, 'Tastes and Sounds of the South 2019', 'tastes-and-sounds-of-the-south-2019', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 29, 52, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 2, 4, 'United States', '37.040023', '-95.643144', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', 2100.00, 532.00, 6, 1, 19, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 6, NULL, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:34', 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', 4.7, NULL, NULL, NULL, NULL, NULL),
(10, 'Giverny and Versailles Small Group Day Trip', 'giverny-and-versailles-small-group-day-trip', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 30, 53, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 4, 5, 'Washington, DC, USA', '34.049345', '-118.248479', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', 2100.00, 624.00, 7, 1, 11, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 6, NULL, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:34', 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', 4.3, NULL, NULL, NULL, NULL, NULL),
(11, 'Trip of New York – Discover America', 'trip-of-new-york-discover-america', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 31, 54, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 3, 6, 'New Jersey', '40.035329', '-74.417227', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', 2100.00, 1078.00, 8, 1, 16, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 5, NULL, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:34', 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', 5.0, NULL, NULL, NULL, NULL, NULL),
(12, 'Segway Tour of Washington, D.C. Highlights', 'segway-tour-of-washington-dc-highlights', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 32, 55, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 4, 7, 'Francisco Parnassus Campus', '37.782668', '-122.425058', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', 2100.00, 1498.00, 7, 1, 12, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 1, NULL, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:34', 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', 4.0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `bravo_tours` (`id`, `title`, `slug`, `content`, `image_id`, `banner_image_id`, `short_desc`, `category_id`, `location_id`, `address`, `map_lat`, `map_lng`, `map_zoom`, `is_featured`, `gallery`, `video`, `price`, `sale_price`, `duration`, `min_people`, `max_people`, `faqs`, `status`, `publish_date`, `create_user`, `update_user`, `deleted_at`, `origin_id`, `lang`, `created_at`, `updated_at`, `default_state`, `include`, `exclude`, `itinerary`, `review_score`, `ical_import_url`, `enable_service_fee`, `service_fee`, `surrounding`, `min_day_before_booking`) VALUES
(13, 'Hollywood Sign Small Group Tour in Luxury Van', 'hollywood-sign-small-group-tour-in-luxury-van', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 33, 56, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 2, 8, 'Virginia', '37.445688', '-78.673668', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', 2100.00, 374.00, 9, 1, 16, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 5, NULL, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:34', 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', 4.5, NULL, NULL, NULL, NULL, NULL),
(14, 'San Francisco Express Never Ceases', 'san-francisco-express', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 34, 57, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 4, 7, 'Comprehensive Cancer Center', '37.757522', '-122.447984', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', 2100.00, 1155.00, 1, 1, 13, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 1, NULL, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:34', 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', 5.0, NULL, NULL, NULL, NULL, NULL),
(15, 'Cannes and Antibes Night Tour', 'cannes-and-antibes-night-tour', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 35, 58, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 2, 1, 'UCSF Helen Diller Family', '36.201066', '-88.112292', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', 2100.00, 1071.00, 3, 1, 15, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 5, NULL, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:34', 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', 4.4, NULL, NULL, NULL, NULL, NULL),
(16, 'River Cruise Tour on the Seine', 'river-cruise-tour-on-the-seine', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 36, 59, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 4, 1, 'Nevada, US', '36.401066', '-88.312292', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', 2100.00, 960.00, 8, 1, 11, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 1, NULL, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:34', 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', 4.0, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `bravo_tour_category`
--

CREATE TABLE `bravo_tour_category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_lft` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `_rgt` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `bravo_tour_category`
--

INSERT INTO `bravo_tour_category` (`id`, `name`, `content`, `slug`, `status`, `_lft`, `_rgt`, `parent_id`, `create_user`, `update_user`, `deleted_at`, `origin_id`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'City trips', '', 'city-trips', 'publish', 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(2, 'Ecotourism', '', 'ecotourism', 'publish', 3, 4, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(3, 'Escorted tour', '', 'escorted-tour', 'publish', 5, 6, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(4, 'Ligula', '', 'ligula', 'publish', 7, 8, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bravo_tour_category_translations`
--

CREATE TABLE `bravo_tour_category_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `locale` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `bravo_tour_dates`
--

CREATE TABLE `bravo_tour_dates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `target_id` bigint(20) DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `person_types` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_guests` tinyint(4) DEFAULT NULL,
  `active` tinyint(4) DEFAULT 0,
  `note_to_customer` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note_to_admin` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_instant` tinyint(4) DEFAULT 0,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `bravo_tour_meta`
--

CREATE TABLE `bravo_tour_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tour_id` int(11) DEFAULT NULL,
  `enable_person_types` tinyint(4) DEFAULT NULL,
  `person_types` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enable_extra_price` tinyint(4) DEFAULT NULL,
  `extra_price` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_by_people` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enable_open_hours` tinyint(4) DEFAULT NULL,
  `open_hours` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `bravo_tour_meta`
--

INSERT INTO `bravo_tour_meta` (`id`, `tour_id`, `enable_person_types`, `person_types`, `enable_extra_price`, `extra_price`, `discount_by_people`, `enable_open_hours`, `open_hours`, `create_user`, `update_user`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 2, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 3, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 4, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 5, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 6, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 7, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 8, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 9, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 10, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 11, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 12, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 13, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 14, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 15, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 16, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `bravo_tour_term`
--

CREATE TABLE `bravo_tour_term` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `term_id` int(11) DEFAULT NULL,
  `tour_id` int(11) DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `bravo_tour_term`
--

INSERT INTO `bravo_tour_term` (`id`, `term_id`, `tour_id`, `create_user`, `update_user`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(2, 2, 1, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(3, 4, 1, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(4, 6, 1, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(5, 1, 2, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(6, 2, 2, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(7, 4, 2, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(8, 5, 2, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(9, 6, 2, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(10, 2, 3, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(11, 3, 3, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(12, 4, 3, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(13, 5, 3, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(14, 6, 3, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(15, 7, 3, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(16, 4, 4, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(17, 6, 4, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(18, 7, 4, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(19, 1, 5, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(20, 2, 5, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(21, 3, 5, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(22, 6, 5, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(23, 7, 5, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(24, 2, 6, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(25, 3, 6, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(26, 5, 6, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(27, 6, 6, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(28, 7, 6, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(29, 1, 7, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(30, 2, 7, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(31, 3, 7, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(32, 4, 7, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(33, 5, 7, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(34, 6, 7, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(35, 1, 8, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(36, 2, 8, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(37, 3, 8, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(38, 5, 8, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(39, 6, 8, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(40, 7, 8, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(41, 2, 9, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(42, 3, 9, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(43, 5, 9, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(44, 6, 9, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(45, 1, 10, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(46, 2, 10, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(47, 3, 10, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(48, 4, 10, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(49, 5, 10, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(50, 7, 10, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(51, 1, 11, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(52, 2, 11, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(53, 5, 11, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(54, 7, 11, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(55, 1, 12, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(56, 2, 12, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(57, 3, 12, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(58, 4, 12, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(59, 5, 12, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(60, 2, 13, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(61, 4, 13, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(62, 5, 13, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(63, 6, 13, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(64, 2, 14, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(65, 3, 14, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(66, 4, 14, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(67, 5, 14, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(68, 6, 14, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(69, 7, 14, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(70, 2, 15, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(71, 3, 15, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(72, 6, 15, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(73, 1, 16, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(74, 2, 16, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(75, 4, 16, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(76, 8, 1, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(77, 9, 1, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(78, 10, 1, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(79, 11, 1, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(80, 13, 1, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(81, 14, 1, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(82, 8, 2, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(83, 9, 2, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(84, 11, 2, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(85, 12, 2, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(86, 13, 2, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(87, 14, 2, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(88, 8, 3, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(89, 9, 3, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(90, 10, 3, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(91, 11, 3, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(92, 12, 3, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(93, 8, 4, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(94, 9, 4, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(95, 12, 4, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(96, 13, 4, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(97, 8, 5, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(98, 9, 5, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(99, 11, 5, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(100, 12, 5, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(101, 14, 5, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(102, 8, 6, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(103, 10, 6, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(104, 11, 6, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(105, 12, 6, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(106, 13, 6, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(107, 14, 6, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(108, 9, 7, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(109, 10, 7, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(110, 11, 7, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(111, 12, 7, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(112, 14, 7, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(113, 8, 8, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(114, 12, 8, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(115, 13, 8, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(116, 8, 9, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(117, 9, 9, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(118, 13, 9, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(119, 14, 9, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(120, 8, 10, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(121, 9, 10, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(122, 10, 10, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(123, 11, 10, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(124, 12, 10, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(125, 14, 10, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(126, 8, 11, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(127, 11, 11, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(128, 12, 11, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(129, 14, 11, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(130, 8, 12, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(131, 11, 12, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(132, 8, 13, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(133, 10, 13, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(134, 11, 13, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(135, 13, 13, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(136, 8, 14, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(137, 9, 14, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(138, 10, 14, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(139, 11, 14, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(140, 14, 14, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(141, 9, 15, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(142, 10, 15, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(143, 12, 15, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(144, 13, 15, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(145, 14, 15, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(146, 8, 16, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(147, 9, 16, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(148, 10, 16, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(149, 11, 16, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(150, 14, 16, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bravo_tour_translations`
--

CREATE TABLE `bravo_tour_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `locale` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8 NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faqs` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `include` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exclude` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `itinerary` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `surrounding` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `category`
--

INSERT INTO `category` (`id`, `slug`, `title`) VALUES
(1, 'motherboard', 'Motherboard'),
(2, 'processor', 'Processor'),
(3, 'ram', 'RAM');

-- --------------------------------------------------------

--
-- Struktur dari tabel `core_inbox`
--

CREATE TABLE `core_inbox` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from_user` bigint(20) DEFAULT NULL,
  `to_user` bigint(20) DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_model` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` tinyint(4) DEFAULT 0,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `core_inbox_messages`
--

CREATE TABLE `core_inbox_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `inbox_id` bigint(20) DEFAULT NULL,
  `from_user` bigint(20) DEFAULT NULL,
  `to_user` bigint(20) DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` tinyint(4) DEFAULT 0,
  `is_read` tinyint(4) DEFAULT 0,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `core_languages`
--

CREATE TABLE `core_languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flag` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `last_build_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `core_languages`
--

INSERT INTO `core_languages` (`id`, `locale`, `name`, `flag`, `status`, `create_user`, `update_user`, `last_build_at`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'en', 'English', 'gb', 'publish', 1, NULL, NULL, NULL, '2021-08-10 07:39:32', '2021-08-10 07:39:32'),
(2, 'ja', 'Japanese', 'jp', 'publish', 1, NULL, NULL, NULL, '2021-08-10 07:39:32', '2021-08-10 07:39:32'),
(3, 'egy', 'Egyptian', 'eg', 'publish', 1, NULL, NULL, NULL, '2021-08-10 07:39:32', '2021-08-10 07:39:32');

-- --------------------------------------------------------

--
-- Struktur dari tabel `core_menus`
--

CREATE TABLE `core_menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `items` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `core_menus`
--

INSERT INTO `core_menus` (`id`, `name`, `items`, `create_user`, `update_user`, `origin_id`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'Main Menu', '[{\"name\":\"Home\",\"url\":\"\\/\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"Home Page\",\"url\":\"\\/\",\"item_model\":\"custom\",\"children\":[]},{\"name\":\"Home Page v2\",\"url\":\"\\/page\\/home-page-v2\",\"item_model\":\"custom\",\"children\":[]},{\"name\":\"Home Hotel\",\"url\":\"\\/page\\/hotel\",\"item_model\":\"custom\",\"children\":[]},{\"name\":\"Home Tour Agency\",\"url\":\"\\/page\\/home-tour-agency\",\"item_model\":\"custom\",\"children\":[]},{\"name\":\"Home Tour\",\"url\":\"\\/page\\/tour\",\"item_model\":\"custom\",\"children\":[]},{\"name\":\"Home Space\",\"url\":\"\\/page\\/space\",\"item_model\":\"custom\",\"children\":[]},{\"name\":\"Home Car\",\"url\":\"\\/page\\/car\",\"item_model\":\"custom\",\"children\":[]}]},{\"name\":\"Hotel\",\"url\":\"\\/hotel\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"Hotel List\",\"url\":\"\\/hotel\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Hotel Map\",\"url\":\"\\/hotel?_layout=map\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Hotel Detail\",\"url\":\"\\/hotel\\/parian-holiday-villas\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]}]},{\"name\":\"Tours\",\"url\":\"\\/tour\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"Tour List\",\"url\":\"\\/tour\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Tour Map\",\"url\":\"\\/tour?_layout=map\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Tour Detail\",\"url\":\"\\/tour\\/paris-vacation-travel\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]}]},{\"name\":\"Space\",\"url\":\"\\/space\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"Space List\",\"url\":\"\\/space\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Space Map\",\"url\":\"\\/space?_layout=map\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Space Detail\",\"url\":\"\\/space\\/stay-greenwich-village\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]}]},{\"name\":\"Car\",\"url\":\"\\/car\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"Car List\",\"url\":\"\\/car\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Car Map\",\"url\":\"\\/car?_layout=map\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Car Detail\",\"url\":\"\\/car\\/vinfast-lux-a20-plus\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]}]},{\"name\":\"Event\",\"url\":\"\\/event\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"Event List\",\"url\":\"\\/event\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Event Map\",\"url\":\"\\/event?_layout=map\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Event Detail\",\"url\":\"\\/event\\/aspen-glade-weddings-events\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]}]},{\"name\":\"Pages\",\"url\":\"#\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"News List\",\"url\":\"\\/news\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"News Detail\",\"url\":\"\\/news\\/morning-in-the-northern-sea\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Location Detail\",\"url\":\"\\/location\\/paris\",\"item_model\":\"custom\",\"children\":[]},{\"name\":\"Become a vendor\",\"url\":\"\\/page\\/become-a-vendor\",\"item_model\":\"custom\",\"children\":[]}]},{\"name\":\"Contact\",\"url\":\"\\/contact\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]}]', 1, NULL, NULL, NULL, '2021-08-10 07:39:33', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `core_menu_translations`
--

CREATE TABLE `core_menu_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `origin_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `items` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `core_menu_translations`
--

INSERT INTO `core_menu_translations` (`id`, `origin_id`, `locale`, `items`, `create_user`, `update_user`, `created_at`, `updated_at`) VALUES
(1, 1, 'ja', '[{\"name\":\"\\u30db\\u30fc\\u30e0\",\"url\":\"\\/ja\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"\\u30db\\u30fc\\u30e0\\u30da\\u30fc\\u30b8\",\"url\":\"\\/ja\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"\\u30db\\u30fc\\u30e0\\u30db\\u30c6\\u30eb\",\"url\":\"\\/ja\\/page\\/hotel\",\"item_model\":\"custom\",\"children\":[]},{\"name\":\"\\u30db\\u30fc\\u30e0 \\u30c4\\u30a2\\u30fc\",\"url\":\"\\/ja\\/page\\/tour\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"\\u30db\\u30fc\\u30e0\\u30b9\\u30da\\u30fc\\u30b9\",\"url\":\"\\/ja\\/page\\/space\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]}]},{\"name\":\"\\u30db\\u30c6\\u30eb\",\"url\":\"\\/ja\\/hotel\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"\\u30db\\u30c6\\u30eb\\u4e00\\u89a7\",\"url\":\"\\/ja\\/hotel\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"\\u30db\\u30c6\\u30eb\\u306e\\u8a73\\u7d30\",\"url\":\"\\/ja\\/hotel\\/parian-holiday-villas\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]}]},{\"name\":\"\\u30c4\\u30a2\\u30fc\",\"url\":\"\\/ja\\/tour\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"\\u30c4\\u30a2\\u30fc\\u30ea\\u30b9\\u30c8\",\"url\":\"\\/ja\\/tour\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"\\u30c4\\u30a2\\u30fc\\u30de\\u30c3\\u30d7\",\"url\":\"\\/ja\\/tour?_layout=map\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"\\u30c4\\u30a2\\u30fc\\u8a73\\u7d30\",\"url\":\"\\/ja\\/tour\\/paris-vacation-travel\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]}]},{\"name\":\"\\u30b9\\u30da\\u30fc\\u30b9\",\"url\":\"\\/ja\\/space\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"\\u30b9\\u30da\\u30fc\\u30b9\\u30ea\\u30b9\\u30c8\",\"url\":\"\\/ja\\/space\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"\\u30b9\\u30da\\u30fc\\u30b9\\u306e\\u8a73\\u7d30\",\"url\":\"\\/ja\\/space\\/stay-greenwich-village\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]}]},{\"name\":\"\\u30da\\u30fc\\u30b8\",\"url\":\"#\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"\\u30cb\\u30e5\\u30fc\\u30b9\\u4e00\\u89a7\",\"url\":\"\\/ja\\/news\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"\\u30cb\\u30e5\\u30fc\\u30b9\\u8a73\\u7d30\",\"url\":\"\\/ja\\/news\\/morning-in-the-northern-sea\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"\\u5834\\u6240\\u306e\\u8a73\\u7d30\",\"url\":\"\\/ja\\/location\\/paris\",\"item_model\":\"custom\",\"children\":[]},{\"name\":\"\\u30d9\\u30f3\\u30c0\\u30fc\\u306b\\u306a\\u308b\",\"url\":\"\\/ja\\/page\\/become-a-vendor\",\"item_model\":\"custom\",\"children\":[]}]},{\"name\":\"\\u63a5\\u89e6\",\"url\":\"\\/ja\\/contact\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]}]', 1, NULL, '2021-08-10 07:39:33', NULL),
(2, 1, 'egy', '[{\"name\":\"Home\",\"url\":\"\\/egy\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"Home Page\",\"url\":\"\\/egy\",\"item_model\":\"custom\",\"children\":[]},{\"name\":\"Home Hotel\",\"url\":\"\\/egy\\/page\\/hotel\",\"item_model\":\"custom\",\"children\":[]},{\"name\":\"Home Tour\",\"url\":\"\\/egy\\/page\\/tour\",\"item_model\":\"custom\",\"children\":[]},{\"name\":\"Home Space\",\"url\":\"\\/egy\\/page\\/space\",\"item_model\":\"custom\",\"children\":[]},{\"name\":\"Home Car\",\"url\":\"\\/egy\\/page\\/car\",\"item_model\":\"custom\",\"children\":[]}]},{\"name\":\"Hotel\",\"url\":\"\\/egy\\/hotel\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"Hotel List\",\"url\":\"\\/egy\\/hotel\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Hotel Map\",\"url\":\"\\/egy\\/hotel?_layout=map\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Hotel Detail\",\"url\":\"\\/egy\\/hotel\\/parian-holiday-villas\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]}]},{\"name\":\"Tours\",\"url\":\"\\/egy\\/tour\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"Tour List\",\"url\":\"\\/egy\\/tour\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Tour Map\",\"url\":\"\\/egy\\/tour?_layout=map\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Tour Detail\",\"url\":\"\\/egy\\/tour\\/paris-vacation-travel\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]}]},{\"name\":\"Space\",\"url\":\"\\/egy\\/space\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"Space List\",\"url\":\"\\/egy\\/space\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Space Map\",\"url\":\"\\/egy\\/space?_layout=map\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Space Detail\",\"url\":\"\\/egy\\/space\\/stay-greenwich-village\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]}]},{\"name\":\"Car\",\"url\":\"\\/egy\\/car\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"Car List\",\"url\":\"\\/egy\\/car\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Car Map\",\"url\":\"\\/egy\\/car?_layout=map\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Car Detail\",\"url\":\"\\/egy\\/car\\/vinfast-lux-a20-plus\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]}]},{\"name\":\"Pages\",\"url\":\"#\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"News List\",\"url\":\"\\/egy\\/news\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"News Detail\",\"url\":\"\\/egy\\/news\\/morning-in-the-northern-sea\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Location Detail\",\"url\":\"\\/egy\\/location\\/paris\",\"item_model\":\"custom\",\"children\":[]},{\"name\":\"Become a vendor\",\"url\":\"\\/egy\\/page\\/become-a-vendor\",\"item_model\":\"custom\",\"children\":[]}]},{\"name\":\"Contact\",\"url\":\"\\/egy\\/contact\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]}]', 1, NULL, '2021-08-10 07:39:33', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `core_model_has_permissions`
--

CREATE TABLE `core_model_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `core_model_has_roles`
--

CREATE TABLE `core_model_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `core_model_has_roles`
--

INSERT INTO `core_model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 2),
(1, 'App\\User', 4),
(1, 'App\\User', 5),
(1, 'App\\User', 6),
(1, 'App\\User', 18),
(2, 'App\\User', 3),
(2, 'App\\User', 8),
(2, 'App\\User', 9),
(2, 'App\\User', 10),
(2, 'App\\User', 11),
(2, 'App\\User', 12),
(2, 'App\\User', 13),
(2, 'App\\User', 14),
(2, 'App\\User', 15),
(2, 'App\\User', 16),
(2, 'App\\User', 17),
(3, 'App\\User', 1),
(3, 'App\\User', 7);

-- --------------------------------------------------------

--
-- Struktur dari tabel `core_news`
--

CREATE TABLE `core_news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `core_news`
--

INSERT INTO `core_news` (`id`, `title`, `content`, `slug`, `status`, `cat_id`, `image_id`, `create_user`, `update_user`, `deleted_at`, `origin_id`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'The day on Paris', ' From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception  From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception <br/>From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception<br/>\r\n    From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 'the-day-on-paris', 'publish', 4, 114, 1, NULL, NULL, NULL, NULL, '2021-08-10 07:39:33', NULL),
(2, 'Pure Luxe in Punta Mita', ' From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception <br/>From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception<br/>\r\n    From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 'pure-luxe-in-punta-mita', 'publish', 4, 115, 1, NULL, NULL, NULL, NULL, '2021-08-10 07:39:33', NULL),
(3, 'All Aboard the Rocky Mountaineer', ' From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception  From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception <br/>From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception<br/>\r\n    From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 'all-aboard-the-rocky-mountaineer', 'publish', 3, 116, 1, NULL, NULL, NULL, NULL, '2021-08-10 07:39:33', NULL),
(4, 'City Spotlight: Philadelphia', ' From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception  From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception <br/>From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception<br/>\r\n    From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 'city-spotlight-philadelphia', 'publish', 1, 117, 1, NULL, NULL, NULL, NULL, '2021-08-10 07:39:33', NULL),
(5, 'Tiptoe through the Tulips of Washington', ' From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception  From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception <br/>From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception<br/>\r\n    From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 'tiptoe-through-the-tulips-of-washington', 'publish', 3, 118, 1, NULL, NULL, NULL, NULL, '2021-08-10 07:39:33', NULL),
(6, 'A Seaside Reset in Laguna Beach', ' From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception  From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception <br/>From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception<br/>\r\n    From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 'a-seaside-reset-in-laguna-beach', 'publish', 3, 119, 1, NULL, NULL, NULL, NULL, '2021-08-10 07:39:33', NULL),
(7, 'America  National Parks with Denver', ' From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception  From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception <br/>From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception<br/>\r\n    From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 'america-national-parks-with-denver', 'publish', 1, 120, 1, NULL, NULL, NULL, NULL, '2021-08-10 07:39:33', NULL),
(8, 'Morning in the Northern sea', ' From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception  From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception <br/>From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception<br/>\r\n    From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 'morning-in-the-northern-sea', 'publish', 2, 115, 1, NULL, NULL, NULL, NULL, '2021-08-10 07:39:33', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `core_news_category`
--

CREATE TABLE `core_news_category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_lft` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `_rgt` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `core_news_category`
--

INSERT INTO `core_news_category` (`id`, `name`, `content`, `slug`, `status`, `_lft`, `_rgt`, `parent_id`, `create_user`, `update_user`, `deleted_at`, `created_at`, `updated_at`, `origin_id`, `lang`) VALUES
(1, 'Adventure Travel', NULL, 'adventure-travel', 'publish', 1, 2, NULL, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33', NULL, NULL),
(2, 'Ecotourism', NULL, 'ecotourism', 'publish', 3, 4, NULL, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33', NULL, NULL),
(3, 'Sea Travel ', NULL, 'sea-travel', 'publish', 5, 6, NULL, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33', NULL, NULL),
(4, 'Hosted Tour', NULL, 'hosted-tour', 'publish', 7, 8, NULL, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33', NULL, NULL),
(5, 'City trips ', NULL, 'city-trips', 'publish', 9, 10, NULL, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33', NULL, NULL),
(6, 'Escorted Tour ', NULL, 'escorted-tour', 'publish', 11, 12, NULL, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `core_news_category_translations`
--

CREATE TABLE `core_news_category_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `origin_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `core_news_tag`
--

CREATE TABLE `core_news_tag` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `news_id` int(11) DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `core_news_translations`
--

CREATE TABLE `core_news_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `origin_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `core_notifications`
--

CREATE TABLE `core_notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from_user` bigint(20) DEFAULT NULL,
  `to_user` bigint(20) DEFAULT NULL,
  `is_read` tinyint(4) DEFAULT 0,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_group` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_id` bigint(20) DEFAULT NULL,
  `target_parent_id` bigint(20) DEFAULT NULL,
  `params` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `core_pages`
--

CREATE TABLE `core_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish_date` datetime DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `template_id` int(11) DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `header_style` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_logo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `core_pages`
--

INSERT INTO `core_pages` (`id`, `slug`, `title`, `content`, `short_desc`, `status`, `publish_date`, `image_id`, `template_id`, `create_user`, `update_user`, `deleted_at`, `origin_id`, `lang`, `created_at`, `updated_at`, `header_style`, `custom_logo`) VALUES
(1, 'home-page', 'Home Page', NULL, NULL, 'publish', NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2021-08-10 07:39:33', NULL, NULL, NULL),
(2, 'tour', 'Home Tour', NULL, NULL, 'publish', NULL, NULL, 2, 1, NULL, NULL, NULL, NULL, '2021-08-10 07:39:33', NULL, NULL, NULL),
(3, 'space', 'Home Space', NULL, NULL, 'publish', NULL, NULL, 3, 1, NULL, NULL, NULL, NULL, '2021-08-10 07:39:33', NULL, NULL, NULL),
(4, 'hotel', 'Home Hotel', NULL, NULL, 'publish', NULL, NULL, 4, 1, NULL, NULL, NULL, NULL, '2021-08-10 07:39:33', NULL, NULL, NULL),
(5, 'become-a-vendor', 'Become a vendor', NULL, NULL, 'publish', NULL, NULL, 5, 1, NULL, NULL, NULL, NULL, '2021-08-10 07:39:33', NULL, NULL, NULL),
(6, 'car', 'Home Car', NULL, NULL, 'publish', NULL, NULL, 6, 1, NULL, NULL, NULL, NULL, '2021-08-10 07:39:33', NULL, NULL, NULL),
(7, 'home-page-v2', 'Home Page v2', NULL, NULL, 'publish', NULL, NULL, 8, 1, NULL, NULL, NULL, NULL, '2021-08-10 07:39:33', NULL, 'transparent', 200),
(8, 'home-tour-agency', 'Home Tour Agency', NULL, NULL, 'publish', NULL, NULL, 7, 1, NULL, NULL, NULL, NULL, '2021-08-10 07:39:33', NULL, 'transparent', 200),
(9, 'privacy-policy', 'Privacy policy', '<h1>Privacy policy</h1>\n<p> This privacy policy (\"Policy\") describes how the personally identifiable information (\"Personal Information\") you may provide on the <a target=\"_blank\" href=\"http://dev.bookingcore.org\" rel=\"noreferrer noopener\">dev.bookingcore.org</a> website (\"Website\" or \"Service\") and any of its related products and services (collectively, \"Services\") is collected, protected and used. It also describes the choices available to you regarding our use of your Personal Information and how you can access and update this information. This Policy is a legally binding agreement between you (\"User\", \"you\" or \"your\") and this Website operator (\"Operator\", \"we\", \"us\" or \"our\"). By accessing and using the Website and Services, you acknowledge that you have read, understood, and agree to be bound by the terms of this Agreement. This Policy does not apply to the practices of companies that we do not own or control, or to individuals that we do not employ or manage.</p>\n<h2>Automatic collection of information</h2>\n<p>When you open the Website, our servers automatically record information that your browser sends. This data may include information such as your device\'s IP address, browser type and version, operating system type and version, language preferences or the webpage you were visiting before you came to the Website and Services, pages of the Website and Services that you visit, the time spent on those pages, information you search for on the Website, access times and dates, and other statistics.</p>\n<p>Information collected automatically is used only to identify potential cases of abuse and establish statistical information regarding the usage and traffic of the Website and Services. This statistical information is not otherwise aggregated in such a way that would identify any particular user of the system.</p>\n<h2>Collection of personal information</h2>\n<p>You can access and use the Website and Services without telling us who you are or revealing any information by which someone could identify you as a specific, identifiable individual. If, however, you wish to use some of the features on the Website, you may be asked to provide certain Personal Information (for example, your name and e-mail address). We receive and store any information you knowingly provide to us when you create an account, publish content,  or fill any online forms on the Website. When required, this information may include the following:</p>\n<ul><li>Personal details such as name, country of residence, etc.</li>\n<li>Contact information such as email address, address, etc.</li>\n<li>Account details such as user name, unique user ID, password, etc.</li>\n<li>Information about other individuals such as your family members, friends, etc.</li>\n</ul><p>Some of the information we collect is directly from you via the Website and Services. However, we may also collect Personal Information about you from other sources such as public databases and our joint marketing partners. You can choose not to provide us with your Personal Information, but then you may not be able to take advantage of some of the features on the Website. Users who are uncertain about what information is mandatory are welcome to contact us.</p>\n<h2>Use and processing of collected information</h2>\n<p>In order to make the Website and Services available to you, or to meet a legal obligation, we need to collect and use certain Personal Information. If you do not provide the information that we request, we may not be able to provide you with the requested products or services. Any of the information we collect from you may be used for the following purposes:</p>\n<ul><li>Create and manage user accounts</li>\n<li>Send administrative information</li>\n<li>Request user feedback</li>\n<li>Improve user experience</li>\n<li>Enforce terms and conditions and policies</li>\n<li>Run and operate the Website and Services</li>\n</ul><p>Processing your Personal Information depends on how you interact with the Website and Services, where you are located in the world and if one of the following applies: (i) you have given your consent for one or more specific purposes; this, however, does not apply, whenever the processing of Personal Information is subject to European data protection law; (ii) provision of information is necessary for the performance of an agreement with you and/or for any pre-contractual obligations thereof; (iii) processing is necessary for compliance with a legal obligation to which you are subject; (iv) processing is related to a task that is carried out in the public interest or in the exercise of official authority vested in us; (v) processing is necessary for the purposes of the legitimate interests pursued by us or by a third party.</p>\n<p> Note that under some legislations we may be allowed to process information until you object to such processing (by opting out), without having to rely on consent or any other of the following legal bases below. In any case, we will be happy to clarify the specific legal basis that applies to the processing, and in particular whether the provision of Personal Information is a statutory or contractual requirement, or a requirement necessary to enter into a contract.</p>\n<h2>Managing information</h2>\n<p>You are able to delete certain Personal Information we have about you. The Personal Information you can delete may change as the Website and Services change. When you delete Personal Information, however, we may maintain a copy of the unrevised Personal Information in our records for the duration necessary to comply with our obligations to our affiliates and partners, and for the purposes described below. If you would like to delete your Personal Information or permanently delete your account, you can do so by contacting us.</p>\n<h2>Disclosure of information</h2>\n<p> Depending on the requested Services or as necessary to complete any transaction or provide any service you have requested, we may share your information with your consent with our trusted third parties that work with us, any other affiliates and subsidiaries we rely upon to assist in the operation of the Website and Services available to you. We do not share Personal Information with unaffiliated third parties. These service providers are not authorized to use or disclose your information except as necessary to perform services on our behalf or comply with legal requirements. We may share your Personal Information for these purposes only with third parties whose privacy policies are consistent with ours or who agree to abide by our policies with respect to Personal Information. These third parties are given Personal Information they need only in order to perform their designated functions, and we do not authorize them to use or disclose Personal Information for their own marketing or other purposes.</p>\n<p>We will disclose any Personal Information we collect, use or receive if required or permitted by law, such as to comply with a subpoena, or similar legal process, and when we believe in good faith that disclosure is necessary to protect our rights, protect your safety or the safety of others, investigate fraud, or respond to a government request.</p>\n<h2>Retention of information</h2>\n<p>We will retain and use your Personal Information for the period necessary to comply with our legal obligations, resolve disputes, and enforce our agreements unless a longer retention period is required or permitted by law. We may use any aggregated data derived from or incorporating your Personal Information after you update or delete it, but not in a manner that would identify you personally. Once the retention period expires, Personal Information shall be deleted. Therefore, the right to access, the right to erasure, the right to rectification and the right to data portability cannot be enforced after the expiration of the retention period.</p>\n<h2>The rights of users</h2>\n<p>You may exercise certain rights regarding your information processed by us. In particular, you have the right to do the following: (i) you have the right to withdraw consent where you have previously given your consent to the processing of your information; (ii) you have the right to object to the processing of your information if the processing is carried out on a legal basis other than consent; (iii) you have the right to learn if information is being processed by us, obtain disclosure regarding certain aspects of the processing and obtain a copy of the information undergoing processing; (iv) you have the right to verify the accuracy of your information and ask for it to be updated or corrected; (v) you have the right, under certain circumstances, to restrict the processing of your information, in which case, we will not process your information for any purpose other than storing it; (vi) you have the right, under certain circumstances, to obtain the erasure of your Personal Information from us; (vii) you have the right to receive your information in a structured, commonly used and machine readable format and, if technically feasible, to have it transmitted to another controller without any hindrance. This provision is applicable provided that your information is processed by automated means and that the processing is based on your consent, on a contract which you are part of or on pre-contractual obligations thereof.</p>\n<h2>Privacy of children</h2>\n<p>We do not knowingly collect any Personal Information from children under the age of 18. If you are under the age of 18, please do not submit any Personal Information through the Website and Services. We encourage parents and legal guardians to monitor their children\'s Internet usage and to help enforce this Policy by instructing their children never to provide Personal Information through the Website and Services without their permission. If you have reason to believe that a child under the age of 18 has provided Personal Information to us through the Website and Services, please contact us. You must also be old enough to consent to the processing of your Personal Information in your country (in some countries we may allow your parent or guardian to do so on your behalf).</p>\n<h2>Cookies</h2>\n<p>The Website and Services use \"cookies\" to help personalize your online experience. A cookie is a text file that is placed on your hard disk by a web page server. Cookies cannot be used to run programs or deliver viruses to your computer. Cookies are uniquely assigned to you, and can only be read by a web server in the domain that issued the cookie to you.</p>\n<p>We may use cookies to collect, store, and track information for statistical purposes to operate the Website and Services. You have the ability to accept or decline cookies. Most web browsers automatically accept cookies, but you can usually modify your browser setting to decline cookies if you prefer. To learn more about cookies and how to manage them, visit <a target=\"_blank\" href=\"https://www.internetcookies.org\" rel=\"noreferrer noopener\">internetcookies.org</a></p>\n<h2>Do Not Track signals</h2>\n<p>Some browsers incorporate a Do Not Track feature that signals to websites you visit that you do not want to have your online activity tracked. Tracking is not the same as using or collecting information in connection with a website. For these purposes, tracking refers to collecting personally identifiable information from consumers who use or visit a website or online service as they move across different websites over time. How browsers communicate the Do Not Track signal is not yet uniform. As a result, the Website and Services are not yet set up to interpret or respond to Do Not Track signals communicated by your browser. Even so, as described in more detail throughout this Policy, we limit our use and collection of your personal information.</p>\n<h2>Email marketing</h2>\n<p>We offer electronic newsletters to which you may voluntarily subscribe at any time. We are committed to keeping your e-mail address confidential and will not disclose your email address to any third parties except as allowed in the information use and processing section or for the purposes of utilizing a third party provider to send such emails. We will maintain the information sent via e-mail in accordance with applicable laws and regulations.</p>\n<p>In compliance with the CAN-SPAM Act, all e-mails sent from us will clearly state who the e-mail is from and provide clear information on how to contact the sender. You may choose to stop receiving our newsletter or marketing emails by following the unsubscribe instructions included in these emails or by contacting us. However, you will continue to receive essential transactional emails.</p>\n<h2>Links to other resources</h2>\n<p>The Website and Services contain links to other resources that are not owned or controlled by us. Please be aware that we are not responsible for the privacy practices of such other resources or third parties. We encourage you to be aware when you leave the Website and Services and to read the privacy statements of each and every resource that may collect Personal Information.</p>\n<h2>Information security</h2>\n<p>We secure information you provide on computer servers in a controlled, secure environment, protected from unauthorized access, use, or disclosure. We maintain reasonable administrative, technical, and physical safeguards in an effort to protect against unauthorized access, use, modification, and disclosure of Personal Information in its control and custody. However, no data transmission over the Internet or wireless network can be guaranteed. Therefore, while we strive to protect your Personal Information, you acknowledge that (i) there are security and privacy limitations of the Internet which are beyond our control; (ii) the security, integrity, and privacy of any and all information and data exchanged between you and the Website and Services cannot be guaranteed; and (iii) any such information and data may be viewed or tampered with in transit by a third party, despite best efforts.</p>\n<h2>Data breach</h2>\n<p>In the event we become aware that the security of the Website and Services has been compromised or users Personal Information has been disclosed to unrelated third parties as a result of external activity, including, but not limited to, security attacks or fraud, we reserve the right to take reasonably appropriate measures, including, but not limited to, investigation and reporting, as well as notification to and cooperation with law enforcement authorities. In the event of a data breach, we will make reasonable efforts to notify affected individuals if we believe that there is a reasonable risk of harm to the user as a result of the breach or if notice is otherwise required by law. When we do, we will post a notice on the Website, send you an email.</p>\n<h2>Changes and amendments</h2>\n<p>We reserve the right to modify this Policy or its terms relating to the Website and Services from time to time in our discretion and will notify you of any material changes to the way in which we treat Personal Information. When we do, we will post a notification on the main page of the Website. We may also provide notice to you in other ways in our discretion, such as through contact information you have provided. Any updated version of this Policy will be effective immediately upon the posting of the revised Policy unless otherwise specified. Your continued use of the Website and Services after the effective date of the revised Policy (or such other act specified at that time) will constitute your consent to those changes. However, we will not, without your consent, use your Personal Information in a manner materially different than what was stated at the time your Personal Information was collected. Policy was created with <a style=\"color:inherit;\" target=\"_blank\" href=\"https://www.websitepolicies.com/privacy-policy-generator\" rel=\"noreferrer noopener\">WebsitePolicies</a>.</p>\n<h2>Acceptance of this policy</h2>\n<p>You acknowledge that you have read this Policy and agree to all its terms and conditions. By accessing and using the Website and Services you agree to be bound by this Policy. If you do not agree to abide by the terms of this Policy, you are not authorized to access or use the Website and Services.</p>\n<h2>Contacting us</h2>\n<p>If you would like to contact us to understand more about this Policy or wish to contact us concerning any matter relating to individual rights and your Personal Information, you may do so via the <a target=\"_blank\" href=\"http://dev.bookingcore.org/contact\" rel=\"noreferrer noopener\">contact form</a></p>\n<p>This document was last updated on October 6, 2020</p>', NULL, 'publish', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `core_page_translations`
--

CREATE TABLE `core_page_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `origin_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `core_permissions`
--

CREATE TABLE `core_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `core_permissions`
--

INSERT INTO `core_permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'report_view', 'web', '2021-08-10 07:39:29', '2021-08-10 07:39:29'),
(2, 'contact_manage', 'web', '2021-08-10 07:39:29', '2021-08-10 07:39:29'),
(3, 'newsletter_manage', 'web', '2021-08-10 07:39:29', '2021-08-10 07:39:29'),
(4, 'language_manage', 'web', '2021-08-10 07:39:29', '2021-08-10 07:39:29'),
(5, 'language_translation', 'web', '2021-08-10 07:39:29', '2021-08-10 07:39:29'),
(6, 'booking_view', 'web', '2021-08-10 07:39:29', '2021-08-10 07:39:29'),
(7, 'booking_update', 'web', '2021-08-10 07:39:29', '2021-08-10 07:39:29'),
(8, 'booking_manage_others', 'web', '2021-08-10 07:39:29', '2021-08-10 07:39:29'),
(9, 'enquiry_view', 'web', '2021-08-10 07:39:29', '2021-08-10 07:39:29'),
(10, 'enquiry_update', 'web', '2021-08-10 07:39:29', '2021-08-10 07:39:29'),
(11, 'enquiry_manage_others', 'web', '2021-08-10 07:39:29', '2021-08-10 07:39:29'),
(12, 'template_view', 'web', '2021-08-10 07:39:29', '2021-08-10 07:39:29'),
(13, 'template_create', 'web', '2021-08-10 07:39:29', '2021-08-10 07:39:29'),
(14, 'template_update', 'web', '2021-08-10 07:39:29', '2021-08-10 07:39:29'),
(15, 'template_delete', 'web', '2021-08-10 07:39:29', '2021-08-10 07:39:29'),
(16, 'news_view', 'web', '2021-08-10 07:39:29', '2021-08-10 07:39:29'),
(17, 'news_create', 'web', '2021-08-10 07:39:29', '2021-08-10 07:39:29'),
(18, 'news_update', 'web', '2021-08-10 07:39:29', '2021-08-10 07:39:29'),
(19, 'news_delete', 'web', '2021-08-10 07:39:29', '2021-08-10 07:39:29'),
(20, 'news_manage_others', 'web', '2021-08-10 07:39:29', '2021-08-10 07:39:29'),
(21, 'role_view', 'web', '2021-08-10 07:39:29', '2021-08-10 07:39:29'),
(22, 'role_create', 'web', '2021-08-10 07:39:29', '2021-08-10 07:39:29'),
(23, 'role_update', 'web', '2021-08-10 07:39:29', '2021-08-10 07:39:29'),
(24, 'role_delete', 'web', '2021-08-10 07:39:29', '2021-08-10 07:39:29'),
(25, 'permission_view', 'web', '2021-08-10 07:39:29', '2021-08-10 07:39:29'),
(26, 'permission_create', 'web', '2021-08-10 07:39:29', '2021-08-10 07:39:29'),
(27, 'permission_update', 'web', '2021-08-10 07:39:29', '2021-08-10 07:39:29'),
(28, 'permission_delete', 'web', '2021-08-10 07:39:29', '2021-08-10 07:39:29'),
(29, 'dashboard_access', 'web', '2021-08-10 07:39:29', '2021-08-10 07:39:29'),
(30, 'dashboard_vendor_access', 'web', '2021-08-10 07:39:29', '2021-08-10 07:39:29'),
(31, 'setting_update', 'web', '2021-08-10 07:39:29', '2021-08-10 07:39:29'),
(32, 'menu_view', 'web', '2021-08-10 07:39:29', '2021-08-10 07:39:29'),
(33, 'menu_create', 'web', '2021-08-10 07:39:29', '2021-08-10 07:39:29'),
(34, 'menu_update', 'web', '2021-08-10 07:39:29', '2021-08-10 07:39:29'),
(35, 'menu_delete', 'web', '2021-08-10 07:39:29', '2021-08-10 07:39:29'),
(36, 'user_view', 'web', '2021-08-10 07:39:30', '2021-08-10 07:39:30'),
(37, 'user_create', 'web', '2021-08-10 07:39:30', '2021-08-10 07:39:30'),
(38, 'user_update', 'web', '2021-08-10 07:39:30', '2021-08-10 07:39:30'),
(39, 'user_delete', 'web', '2021-08-10 07:39:30', '2021-08-10 07:39:30'),
(40, 'page_view', 'web', '2021-08-10 07:39:30', '2021-08-10 07:39:30'),
(41, 'page_create', 'web', '2021-08-10 07:39:30', '2021-08-10 07:39:30'),
(42, 'page_update', 'web', '2021-08-10 07:39:30', '2021-08-10 07:39:30'),
(43, 'page_delete', 'web', '2021-08-10 07:39:30', '2021-08-10 07:39:30'),
(44, 'page_manage_others', 'web', '2021-08-10 07:39:30', '2021-08-10 07:39:30'),
(45, 'setting_view', 'web', '2021-08-10 07:39:30', '2021-08-10 07:39:30'),
(46, 'media_upload', 'web', '2021-08-10 07:39:30', '2021-08-10 07:39:30'),
(47, 'media_manage', 'web', '2021-08-10 07:39:30', '2021-08-10 07:39:30'),
(48, 'tour_view', 'web', '2021-08-10 07:39:30', '2021-08-10 07:39:30'),
(49, 'tour_create', 'web', '2021-08-10 07:39:30', '2021-08-10 07:39:30'),
(50, 'tour_update', 'web', '2021-08-10 07:39:30', '2021-08-10 07:39:30'),
(51, 'tour_delete', 'web', '2021-08-10 07:39:30', '2021-08-10 07:39:30'),
(52, 'tour_manage_others', 'web', '2021-08-10 07:39:30', '2021-08-10 07:39:30'),
(53, 'tour_manage_attributes', 'web', '2021-08-10 07:39:30', '2021-08-10 07:39:30'),
(54, 'location_view', 'web', '2021-08-10 07:39:30', '2021-08-10 07:39:30'),
(55, 'location_create', 'web', '2021-08-10 07:39:30', '2021-08-10 07:39:30'),
(56, 'location_update', 'web', '2021-08-10 07:39:30', '2021-08-10 07:39:30'),
(57, 'location_delete', 'web', '2021-08-10 07:39:30', '2021-08-10 07:39:30'),
(58, 'location_manage_others', 'web', '2021-08-10 07:39:30', '2021-08-10 07:39:30'),
(59, 'review_manage_others', 'web', '2021-08-10 07:39:30', '2021-08-10 07:39:30'),
(60, 'system_log_view', 'web', '2021-08-10 07:39:30', '2021-08-10 07:39:30'),
(61, 'space_view', 'web', '2021-08-10 07:39:30', '2021-08-10 07:39:30'),
(62, 'space_create', 'web', '2021-08-10 07:39:30', '2021-08-10 07:39:30'),
(63, 'space_update', 'web', '2021-08-10 07:39:30', '2021-08-10 07:39:30'),
(64, 'space_delete', 'web', '2021-08-10 07:39:30', '2021-08-10 07:39:30'),
(65, 'space_manage_others', 'web', '2021-08-10 07:39:30', '2021-08-10 07:39:30'),
(66, 'space_manage_attributes', 'web', '2021-08-10 07:39:30', '2021-08-10 07:39:30'),
(67, 'hotel_view', 'web', '2021-08-10 07:39:30', '2021-08-10 07:39:30'),
(68, 'hotel_create', 'web', '2021-08-10 07:39:30', '2021-08-10 07:39:30'),
(69, 'hotel_update', 'web', '2021-08-10 07:39:30', '2021-08-10 07:39:30'),
(70, 'hotel_delete', 'web', '2021-08-10 07:39:30', '2021-08-10 07:39:30'),
(71, 'hotel_manage_others', 'web', '2021-08-10 07:39:30', '2021-08-10 07:39:30'),
(72, 'hotel_manage_attributes', 'web', '2021-08-10 07:39:30', '2021-08-10 07:39:30'),
(73, 'car_view', 'web', '2021-08-10 07:39:30', '2021-08-10 07:39:30'),
(74, 'car_create', 'web', '2021-08-10 07:39:30', '2021-08-10 07:39:30'),
(75, 'car_update', 'web', '2021-08-10 07:39:30', '2021-08-10 07:39:30'),
(76, 'car_delete', 'web', '2021-08-10 07:39:30', '2021-08-10 07:39:30'),
(77, 'car_manage_others', 'web', '2021-08-10 07:39:30', '2021-08-10 07:39:30'),
(78, 'car_manage_attributes', 'web', '2021-08-10 07:39:30', '2021-08-10 07:39:30'),
(79, 'event_view', 'web', '2021-08-10 07:39:30', '2021-08-10 07:39:30'),
(80, 'event_create', 'web', '2021-08-10 07:39:30', '2021-08-10 07:39:30'),
(81, 'event_update', 'web', '2021-08-10 07:39:30', '2021-08-10 07:39:30'),
(82, 'event_delete', 'web', '2021-08-10 07:39:31', '2021-08-10 07:39:31'),
(83, 'event_manage_others', 'web', '2021-08-10 07:39:31', '2021-08-10 07:39:31'),
(84, 'event_manage_attributes', 'web', '2021-08-10 07:39:31', '2021-08-10 07:39:31'),
(85, 'social_manage_forum', 'web', '2021-08-10 07:39:31', '2021-08-10 07:39:31'),
(86, 'plugin_manage', 'web', '2021-08-10 07:39:31', '2021-08-10 07:39:31'),
(87, 'vendor_payout_view', 'web', '2021-08-10 07:39:31', '2021-08-10 07:39:31'),
(88, 'vendor_payout_manage', 'web', '2021-08-10 07:39:31', '2021-08-10 07:39:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `core_roles`
--

CREATE TABLE `core_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `core_roles`
--

INSERT INTO `core_roles` (`id`, `name`, `guard_name`, `origin_id`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'vendor', 'web', NULL, NULL, '2021-08-10 07:39:31', '2021-08-10 07:39:31'),
(2, 'customer', 'web', NULL, NULL, '2021-08-10 07:39:32', '2021-08-10 07:39:32'),
(3, 'administrator', 'web', NULL, NULL, '2021-08-10 07:39:32', '2021-08-10 07:39:32');

-- --------------------------------------------------------

--
-- Struktur dari tabel `core_role_has_permissions`
--

CREATE TABLE `core_role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `core_role_has_permissions`
--

INSERT INTO `core_role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 3),
(2, 3),
(3, 3),
(4, 3),
(5, 3),
(6, 3),
(7, 3),
(8, 3),
(9, 1),
(9, 3),
(10, 1),
(10, 3),
(11, 3),
(12, 3),
(13, 3),
(14, 3),
(15, 3),
(16, 3),
(17, 3),
(18, 3),
(19, 3),
(20, 3),
(21, 3),
(22, 3),
(23, 3),
(24, 3),
(25, 3),
(26, 3),
(27, 3),
(28, 3),
(29, 3),
(30, 1),
(30, 3),
(31, 3),
(32, 3),
(33, 3),
(34, 3),
(35, 3),
(36, 3),
(37, 3),
(38, 3),
(39, 3),
(40, 3),
(41, 3),
(42, 3),
(43, 3),
(44, 3),
(45, 3),
(46, 1),
(46, 3),
(47, 3),
(48, 1),
(48, 3),
(49, 1),
(49, 3),
(50, 1),
(50, 3),
(51, 1),
(51, 3),
(52, 3),
(53, 3),
(54, 3),
(55, 3),
(56, 3),
(57, 3),
(58, 3),
(59, 3),
(60, 3),
(61, 1),
(61, 3),
(62, 1),
(62, 3),
(63, 1),
(63, 3),
(64, 1),
(64, 3),
(65, 3),
(66, 3),
(67, 1),
(67, 3),
(68, 1),
(68, 3),
(69, 1),
(69, 3),
(70, 1),
(70, 3),
(71, 3),
(72, 3),
(73, 1),
(73, 3),
(74, 1),
(74, 3),
(75, 1),
(75, 3),
(76, 1),
(76, 3),
(77, 3),
(78, 3),
(79, 1),
(79, 3),
(80, 1),
(80, 3),
(81, 1),
(81, 3),
(82, 1),
(82, 3),
(83, 3),
(84, 3),
(85, 3),
(86, 3),
(87, 3),
(88, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `core_settings`
--

CREATE TABLE `core_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `val` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `autoload` tinyint(4) DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `core_settings`
--

INSERT INTO `core_settings` (`id`, `name`, `group`, `val`, `autoload`, `create_user`, `update_user`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'site_locale', 'general', 'en', NULL, 1, 1, NULL, NULL, '2021-08-10 14:45:32'),
(2, 'site_enable_multi_lang', 'general', '1', NULL, 1, 1, NULL, NULL, '2021-08-10 14:45:32'),
(3, 'enable_rtl_egy', 'general', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'menu_locations', 'general', '{\"primary\":1}', NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'admin_email', 'general', 'contact@bookingcore.com', NULL, 1, 1, NULL, NULL, '2021-08-10 14:45:32'),
(6, 'email_from_name', 'general', 'Booking Core', NULL, 1, 1, NULL, NULL, '2021-08-10 14:45:32'),
(7, 'email_from_address', 'general', 'contact@bookingcore.com', NULL, 1, 1, NULL, NULL, '2021-08-10 14:45:32'),
(8, 'logo_id', 'general', '208', NULL, 1, 1, NULL, NULL, '2021-08-10 15:13:31'),
(9, 'site_favicon', 'general', '209', NULL, 1, 1, NULL, NULL, '2021-08-10 15:14:06'),
(10, 'topbar_left_text', 'general', '<div class=\"socials\">\r\n<a href=\"#\"><i class=\"fa fa-facebook\"></i></a>\r\n<a href=\"#\"><i class=\"fa fa-linkedin\"></i></a>\r\n<a href=\"#\"><i class=\"fa fa-google-plus\"></i></a>\r\n</div>\r\n<span class=\"line\"></span>\r\n<a href=\"diditsadidnsm180818@gmail.com\">diditsadidnsm180818@gmail.com</a>', NULL, 1, 1, NULL, NULL, '2021-08-10 14:54:11'),
(11, 'footer_text_left', 'general', '<p>Copyright &copy; 2021 by Didit Sadid NSM</p>', NULL, 1, 1, NULL, NULL, '2021-08-10 14:45:32'),
(12, 'footer_text_right', 'general', '<p>Mroom Indonesia</p>', NULL, 1, 1, NULL, NULL, '2021-08-10 14:45:32'),
(13, 'list_widget_footer', 'general', '[{\"title\":\"NEED HELP?\",\"size\":\"3\",\"content\":\"<div class=\\\"contact\\\">\\r\\n        <div class=\\\"c-title\\\">\\r\\n            Call Us\\r\\n        <\\/div>\\r\\n        <div class=\\\"sub\\\">\\r\\n            + 00 222 44 5678\\r\\n        <\\/div>\\r\\n    <\\/div>\\r\\n    <div class=\\\"contact\\\">\\r\\n        <div class=\\\"c-title\\\">\\r\\n            Email for Us\\r\\n        <\\/div>\\r\\n        <div class=\\\"sub\\\">\\r\\n            hello@yoursite.com\\r\\n        <\\/div>\\r\\n    <\\/div>\\r\\n    <div class=\\\"contact\\\">\\r\\n        <div class=\\\"c-title\\\">\\r\\n            Follow Us\\r\\n        <\\/div>\\r\\n        <div class=\\\"sub\\\">\\r\\n            <a href=\\\"#\\\">\\r\\n                <i class=\\\"icofont-facebook\\\"><\\/i>\\r\\n            <\\/a>\\r\\n            <a href=\\\"#\\\">\\r\\n               <i class=\\\"icofont-twitter\\\"><\\/i>\\r\\n            <\\/a>\\r\\n            <a href=\\\"#\\\">\\r\\n                <i class=\\\"icofont-youtube-play\\\"><\\/i>\\r\\n            <\\/a>\\r\\n        <\\/div>\\r\\n    <\\/div>\"},{\"title\":\"COMPANY\",\"size\":\"3\",\"content\":\"<ul>\\r\\n    <li><a href=\\\"#\\\">About Us<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">Community Blog<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">Rewards<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">Work with Us<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">Meet the Team<\\/a><\\/li>\\r\\n<\\/ul>\"},{\"title\":\"SUPPORT\",\"size\":\"3\",\"content\":\"<ul>\\r\\n    <li><a href=\\\"#\\\">Account<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">Legal<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">Contact<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">Affiliate Program<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">Privacy Policy<\\/a><\\/li>\\r\\n<\\/ul>\"},{\"title\":\"SETTINGS\",\"size\":\"3\",\"content\":\"<ul>\\r\\n<li><a href=\\\"#\\\">Setting 1<\\/a><\\/li>\\r\\n<li><a href=\\\"#\\\">Setting 2<\\/a><\\/li>\\r\\n<\\/ul>\"}]', NULL, 1, 1, NULL, NULL, '2021-08-10 14:45:32'),
(14, 'list_widget_footer_ja', 'general', '[{\"title\":\"\\u52a9\\u3051\\u304c\\u5fc5\\u8981\\uff1f\",\"size\":\"3\",\"content\":\"<div class=\\\"contact\\\">\\r\\n        <div class=\\\"c-title\\\">\\r\\n            \\u304a\\u96fb\\u8a71\\u304f\\u3060\\u3055\\u3044\\r\\n        <\\/div>\\r\\n        <div class=\\\"sub\\\">\\r\\n            + 00 222 44 5678\\r\\n        <\\/div>\\r\\n    <\\/div>\\r\\n    <div class=\\\"contact\\\">\\r\\n        <div class=\\\"c-title\\\">\\r\\n            \\u90f5\\u4fbf\\u7269\\r\\n        <\\/div>\\r\\n        <div class=\\\"sub\\\">\\r\\n            hello@yoursite.com\\r\\n        <\\/div>\\r\\n    <\\/div>\\r\\n    <div class=\\\"contact\\\">\\r\\n        <div class=\\\"c-title\\\">\\r\\n            \\u30d5\\u30a9\\u30ed\\u30fc\\u3059\\u308b\\r\\n        <\\/div>\\r\\n        <div class=\\\"sub\\\">\\r\\n            <a href=\\\"#\\\">\\r\\n                <i class=\\\"icofont-facebook\\\"><\\/i>\\r\\n            <\\/a>\\r\\n            <a href=\\\"#\\\">\\r\\n                <i class=\\\"icofont-twitter\\\"><\\/i>\\r\\n            <\\/a>\\r\\n            <a href=\\\"#\\\">\\r\\n                <i class=\\\"icofont-youtube-play\\\"><\\/i>\\r\\n            <\\/a>\\r\\n        <\\/div>\\r\\n    <\\/div>\"},{\"title\":\"\\u4f1a\\u793e\",\"size\":\"3\",\"content\":\"<ul>\\r\\n    <li><a href=\\\"#\\\">\\u7d04, \\u7565<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">\\u30b3\\u30df\\u30e5\\u30cb\\u30c6\\u30a3\\u30d6\\u30ed\\u30b0<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">\\u5831\\u916c<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">\\u3068\\u9023\\u643a<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">\\u30c1\\u30fc\\u30e0\\u306b\\u4f1a\\u3046<\\/a><\\/li>\\r\\n<\\/ul>\"},{\"title\":\"\\u30b5\\u30dd\\u30fc\\u30c8\",\"size\":\"3\",\"content\":\"<ul>\\r\\n    <li><a href=\\\"#\\\">\\u30a2\\u30ab\\u30a6\\u30f3\\u30c8<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">\\u6cd5\\u7684<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">\\u63a5\\u89e6<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">\\u30a2\\u30d5\\u30a3\\u30ea\\u30a8\\u30a4\\u30c8\\u30d7\\u30ed\\u30b0\\u30e9\\u30e0<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">\\u500b\\u4eba\\u60c5\\u5831\\u4fdd\\u8b77\\u65b9\\u91dd<\\/a><\\/li>\\r\\n<\\/ul>\"},{\"title\":\"\\u8a2d\\u5b9a\",\"size\":\"3\",\"content\":\"<ul>\\r\\n<li><a href=\\\"#\\\">\\u8a2d\\u5b9a1<\\/a><\\/li>\\r\\n<li><a href=\\\"#\\\">\\u8a2d\\u5b9a2<\\/a><\\/li>\\r\\n<\\/ul>\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'page_contact_title', 'general', 'We\'d love to hear from you', NULL, 1, 1, NULL, NULL, '2021-08-10 14:45:32'),
(16, 'page_contact_sub_title', 'general', 'Send us a message and we\'ll respond as soon as possible', NULL, 1, 1, NULL, NULL, '2021-08-10 14:45:32'),
(17, 'page_contact_desc', 'general', '<h3>Mroom Indonesia</h3>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>Tell. + 00 222 444 33</p>\r\n<p>Email. hello@yoursite.com</p>\r\n<p>1355 Market St, Suite 900San, Francisco, CA 94103 United States</p>', NULL, 1, 1, NULL, NULL, '2021-08-10 14:45:32'),
(18, 'page_contact_image', 'general', '9', NULL, 1, 1, NULL, NULL, '2021-08-10 14:45:32'),
(19, 'home_page_id', 'general', '1', NULL, 1, 1, NULL, NULL, '2021-08-10 14:45:32'),
(20, 'page_contact_title', 'general', 'We\'d love to hear from you', NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'page_contact_title_ja', 'general', 'あなたからの御一報をお待ち', NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'page_contact_sub_title', 'general', 'Send us a message and we\'ll respond as soon as possible', NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'page_contact_sub_title_ja', 'general', '私たちにメッセージを送ってください、私たちはできるだ', NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'page_contact_desc', 'general', '<!DOCTYPE html><html><head></head><body><h3>Booking Core</h3><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>Tell. + 00 222 444 33</p><p>Email. hello@yoursite.com</p><p>1355 Market St, Suite 900San, Francisco, CA 94103 United States</p></body></html>', NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'page_contact_image', 'general', '9', NULL, NULL, NULL, NULL, NULL, NULL),
(26, 'currency_main', 'payment', 'usd', NULL, NULL, NULL, NULL, NULL, NULL),
(27, 'currency_format', 'payment', 'left', NULL, NULL, NULL, NULL, NULL, NULL),
(28, 'currency_decimal', 'payment', ',', NULL, NULL, NULL, NULL, NULL, NULL),
(29, 'currency_thousand', 'payment', '.', NULL, NULL, NULL, NULL, NULL, NULL),
(30, 'currency_no_decimal', 'payment', '0', NULL, NULL, NULL, NULL, NULL, NULL),
(31, 'extra_currency', 'payment', '[{\"currency_main\":\"eur\",\"currency_format\":\"left\",\"currency_thousand\":\".\",\"currency_decimal\":\",\",\"currency_no_decimal\":\"2\",\"rate\":\"0.902807\"},{\"currency_main\":\"jpy\",\"currency_format\":\"right_space\",\"currency_thousand\":\".\",\"currency_decimal\":\",\",\"currency_no_decimal\":\"0\",\"rate\":\"0.00917113\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(32, 'map_provider', 'advance', 'gmap', NULL, NULL, NULL, NULL, NULL, NULL),
(33, 'map_gmap_key', 'advance', '', NULL, NULL, NULL, NULL, NULL, NULL),
(34, 'g_offline_payment_enable', 'payment', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(35, 'g_offline_payment_name', 'payment', 'Offline Payment', NULL, NULL, NULL, NULL, NULL, NULL),
(36, 'date_format', 'general', 'm/d/Y', NULL, 1, 1, NULL, NULL, '2021-08-10 14:45:32'),
(37, 'site_title', 'general', 'Mroom Indonesia', NULL, 1, 1, NULL, NULL, '2021-08-10 14:45:32'),
(38, 'site_timezone', 'general', 'Asia/Jakarta', NULL, 1, 1, NULL, NULL, '2021-08-10 14:45:32'),
(39, 'site_title', 'general', 'Booking Core', NULL, NULL, NULL, NULL, NULL, NULL),
(40, 'email_header', 'general', '', NULL, 1, NULL, NULL, NULL, '2021-08-10 18:18:17'),
(41, 'email_footer', 'general', '', NULL, 1, NULL, NULL, NULL, '2021-08-10 18:18:17'),
(42, 'enable_mail_user_registered', 'user', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(43, 'user_content_email_registered', 'user', '<h1 style=\"text-align: center\">Welcome!</h1>\r\n                    <h3>Hello [first_name] [last_name]</h3>\r\n                    <p>Thank you for signing up with Booking Core! We hope you enjoy your time with us.</p>\r\n                    <p>Regards,</p>\r\n                    <p>Booking Core</p>', NULL, NULL, NULL, NULL, NULL, NULL),
(44, 'admin_enable_mail_user_registered', 'user', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(45, 'admin_content_email_user_registered', 'user', '<h3>Hello Administrator</h3>\r\n                    <p>We have new registration</p>\r\n                    <p>Full name: [first_name] [last_name]</p>\r\n                    <p>Email: [email]</p>\r\n                    <p>Regards,</p>\r\n                    <p>Booking Core</p>', NULL, NULL, NULL, NULL, NULL, NULL),
(46, 'user_content_email_forget_password', 'user', '<h1>Hello!</h1>\r\n                    <p>You are receiving this email because we received a password reset request for your account.</p>\r\n                    <p style=\"text-align: center\">[button_reset_password]</p>\r\n                    <p>This password reset link expire in 60 minutes.</p>\r\n                    <p>If you did not request a password reset, no further action is required.\r\n                    </p>\r\n                    <p>Regards,</p>\r\n                    <p>Booking Core</p>', NULL, NULL, NULL, NULL, NULL, NULL),
(47, 'email_driver', 'email', 'log', NULL, NULL, NULL, NULL, NULL, NULL),
(48, 'email_host', 'email', 'smtp.mailgun.org', NULL, NULL, NULL, NULL, NULL, NULL),
(49, 'email_port', 'email', '587', NULL, NULL, NULL, NULL, NULL, NULL),
(50, 'email_encryption', 'email', 'tls', NULL, NULL, NULL, NULL, NULL, NULL),
(51, 'email_username', 'email', '', NULL, NULL, NULL, NULL, NULL, NULL),
(52, 'email_password', 'email', '', NULL, NULL, NULL, NULL, NULL, NULL),
(53, 'email_mailgun_domain', 'email', '', NULL, NULL, NULL, NULL, NULL, NULL),
(54, 'email_mailgun_secret', 'email', '', NULL, NULL, NULL, NULL, NULL, NULL),
(55, 'email_mailgun_endpoint', 'email', 'api.mailgun.net', NULL, NULL, NULL, NULL, NULL, NULL),
(56, 'email_postmark_token', 'email', '', NULL, NULL, NULL, NULL, NULL, NULL),
(57, 'email_ses_key', 'email', '', NULL, NULL, NULL, NULL, NULL, NULL),
(58, 'email_ses_secret', 'email', '', NULL, NULL, NULL, NULL, NULL, NULL),
(59, 'email_ses_region', 'email', 'us-east-1', NULL, NULL, NULL, NULL, NULL, NULL),
(60, 'email_sparkpost_secret', 'email', '', NULL, NULL, NULL, NULL, NULL, NULL),
(61, 'booking_enquiry_for_hotel', 'enquiry', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(62, 'booking_enquiry_for_tour', 'enquiry', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(63, 'booking_enquiry_for_space', 'enquiry', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(64, 'booking_enquiry_for_car', 'enquiry', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(65, 'booking_enquiry_for_event', 'enquiry', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(66, 'booking_enquiry_type', 'enquiry', 'booking_and_enquiry', NULL, NULL, NULL, NULL, NULL, NULL),
(67, 'booking_enquiry_enable_mail_to_vendor', 'enquiry', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(68, 'booking_enquiry_mail_to_vendor_content', 'enquiry', '<h3>Hello [vendor_name]</h3>\r\n                            <p>You get new inquiry request from [email]</p>\r\n                            <p>Name :[name]</p>\r\n                            <p>Emai:[email]</p>\r\n                            <p>Phone:[phone]</p>\r\n                            <p>Content:[note]</p>\r\n                            <p>Service:[service_link]</p>\r\n                            <p>Regards,</p>\r\n                            <p>Booking Core</p>\r\n                            </div>', NULL, NULL, NULL, NULL, NULL, NULL),
(69, 'booking_enquiry_enable_mail_to_admin', 'enquiry', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(70, 'booking_enquiry_mail_to_admin_content', 'enquiry', '<h3>Hello Administrator</h3>\r\n                            <p>You get new inquiry request from [email]</p>\r\n                            <p>Name :[name]</p>\r\n                            <p>Emai:[email]</p>\r\n                            <p>Phone:[phone]</p>\r\n                            <p>Content:[note]</p>\r\n                            <p>Service:[service_link]</p>\r\n                            <p>Vendor:[vendor_link]</p>\r\n                            <p>Regards,</p>\r\n                            <p>Booking Core</p>', NULL, NULL, NULL, NULL, NULL, NULL),
(71, 'vendor_enable', 'vendor', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(72, 'vendor_commission_type', 'vendor', 'percent', NULL, NULL, NULL, NULL, NULL, NULL),
(73, 'vendor_commission_amount', 'vendor', '10', NULL, NULL, NULL, NULL, NULL, NULL),
(74, 'vendor_role', 'vendor', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(75, 'role_verify_fields', 'vendor', '{\"phone\":{\"name\":\"Phone\",\"type\":\"text\",\"roles\":[\"1\",\"2\",\"3\"],\"required\":null,\"order\":null,\"icon\":\"fa fa-phone\"},\"id_card\":{\"name\":\"ID Card\",\"type\":\"file\",\"roles\":[\"1\",\"2\",\"3\"],\"required\":\"1\",\"order\":\"0\",\"icon\":\"fa fa-id-card\"},\"trade_license\":{\"name\":\"Trade License\",\"type\":\"multi_files\",\"roles\":[\"1\",\"3\"],\"required\":\"1\",\"order\":\"0\",\"icon\":\"fa fa-copyright\"}}', NULL, NULL, NULL, NULL, NULL, NULL),
(76, 'enable_mail_vendor_registered', 'vendor', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(77, 'vendor_content_email_registered', 'vendor', '<h1 style=\"text-align: center;\">Welcome!</h1>\r\n                            <h3>Hello [first_name] [last_name]</h3>\r\n                            <p>Thank you for signing up with Booking Core! We hope you enjoy your time with us.</p>\r\n                            <p>Regards,</p>\r\n                            <p>Booking Core</p>', NULL, NULL, NULL, NULL, NULL, NULL),
(78, 'admin_enable_mail_vendor_registered', 'vendor', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(79, 'admin_content_email_vendor_registered', 'vendor', '<h3>Hello Administrator</h3>\r\n                            <p>An user has been registered as Vendor. Please check the information bellow:</p>\r\n                            <p>Full name: [first_name] [last_name]</p>\r\n                            <p>Email: [email]</p>\r\n                            <p>Registration date: [created_at]</p>\r\n                            <p>You can approved the request here: [link_approved]</p>\r\n                            <p>Regards,</p>\r\n                            <p>Booking Core</p>', NULL, NULL, NULL, NULL, NULL, NULL),
(80, 'cookie_agreement_enable', 'advance', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(81, 'cookie_agreement_button_text', 'advance', 'Got it', NULL, NULL, NULL, NULL, NULL, NULL),
(82, 'cookie_agreement_content', 'advance', '<p>This website requires cookies to provide all of its features. By using our website, you agree to our use of cookies. <a href=\'#\'>More info</a></p>', NULL, NULL, NULL, NULL, NULL, NULL),
(83, 'logo_invoice_id', 'booking', '208', NULL, 1, NULL, NULL, NULL, '2021-08-10 18:18:17'),
(84, 'invoice_company_info', 'booking', '<p><span style=\"font-size: 14pt;\"><strong>Mroom Indonesia</strong></span></p>\r\n<p>Ha Noi, Viet Nam</p>\r\n<p>www.mamakriau.com</p>', NULL, 1, NULL, NULL, NULL, '2021-08-10 18:18:17'),
(85, 'news_page_list_title', 'news', 'News', NULL, NULL, NULL, NULL, NULL, NULL),
(86, 'news_page_list_banner', 'news', '121', NULL, NULL, NULL, NULL, NULL, NULL),
(87, 'news_sidebar', 'news', '[{\"title\":null,\"content\":null,\"type\":\"search_form\"},{\"title\":\"About Us\",\"content\":\"Nam dapibus nisl vitae elit fringilla rutrum. Aenean sollicitudin, erat a elementum rutrum, neque sem pretium metus, quis mollis nisl nunc et massa\",\"type\":\"content_text\"},{\"title\":\"Recent News\",\"content\":null,\"type\":\"recent_news\"},{\"title\":\"Categories\",\"content\":null,\"type\":\"category\"},{\"title\":\"Tags\",\"content\":null,\"type\":\"tag\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(88, 'tour_page_search_title', 'tour', 'Search for tour', NULL, NULL, NULL, NULL, NULL, NULL),
(89, 'tour_page_limit_item', 'tour', '9', NULL, NULL, NULL, NULL, NULL, NULL),
(90, 'tour_page_search_banner', 'tour', '20', NULL, NULL, NULL, NULL, NULL, NULL),
(91, 'tour_layout_search', 'tour', 'normal', NULL, NULL, NULL, NULL, NULL, NULL),
(92, 'tour_enable_review', 'tour', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(93, 'tour_review_approved', 'tour', '0', NULL, NULL, NULL, NULL, NULL, NULL),
(94, 'tour_review_stats', 'tour', '[{\"title\":\"Service\"},{\"title\":\"Organization\"},{\"title\":\"Friendliness\"},{\"title\":\"Area Expert\"},{\"title\":\"Safety\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(95, 'tour_booking_buyer_fees', 'tour', '[{\"name\":\"Service fee\",\"desc\":\"This helps us run our platform and offer services like 24\\/7 support on your trip.\",\"name_ja\":\"\\u30b5\\u30fc\\u30d3\\u30b9\\u6599\",\"desc_ja\":\"\\u3053\\u308c\\u306b\\u3088\\u308a\\u3001\\u5f53\\u793e\\u306e\\u30d7\\u30e9\\u30c3\\u30c8\\u30d5\\u30a9\\u30fc\\u30e0\\u3092\\u5b9f\\u884c\\u3057\\u3001\\u65c5\\u884c\\u4e2d\\u306b\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(96, 'tour_map_search_fields', 'tour', '[{\"field\":\"location\",\"attr\":null,\"position\":\"1\"},{\"field\":\"category\",\"attr\":null,\"position\":\"2\"},{\"field\":\"date\",\"attr\":null,\"position\":\"3\"},{\"field\":\"price\",\"attr\":null,\"position\":\"4\"},{\"field\":\"advance\",\"attr\":null,\"position\":\"5\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(97, 'tour_search_fields', 'tour', '[{\"title\":\"Location\",\"field\":\"location\",\"size\":\"6\",\"position\":\"1\"},{\"title\":\"From - To\",\"field\":\"date\",\"size\":\"6\",\"position\":\"2\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(98, 'space_page_search_title', 'space', 'Search for space', NULL, NULL, NULL, NULL, NULL, NULL),
(99, 'space_page_limit_item', 'space', '9', NULL, NULL, NULL, NULL, NULL, NULL),
(100, 'space_page_search_banner', 'space', '62', NULL, NULL, NULL, NULL, NULL, NULL),
(101, 'space_layout_search', 'space', 'normal', NULL, NULL, NULL, NULL, NULL, NULL),
(102, 'space_enable_review', 'space', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(103, 'space_review_approved', 'space', '0', NULL, NULL, NULL, NULL, NULL, NULL),
(104, 'space_review_stats', 'space', '[{\"title\":\"Sleep\"},{\"title\":\"Location\"},{\"title\":\"Service\"},{\"title\":\"Clearness\"},{\"title\":\"Rooms\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(105, 'space_booking_buyer_fees', 'space', '[{\"name\":\"Cleaning fee\",\"desc\":\"One-time fee charged by host to cover the cost of cleaning their space.\",\"name_ja\":\"\\u30af\\u30ea\\u30fc\\u30cb\\u30f3\\u30b0\\u4ee3\",\"desc_ja\":\"\\u30b9\\u30da\\u30fc\\u30b9\\u3092\\u6383\\u9664\\u3059\\u308b\\u8cbb\\u7528\\u3092\\u30db\\u30b9\\u30c8\\u304c\\u8acb\\u6c42\\u3059\\u308b1\\u56de\\u9650\\u308a\\u306e\\u6599\\u91d1\\u3002\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Service fee\",\"desc\":\"This helps us run our platform and offer services like 24\\/7 support on your trip.\",\"name_ja\":\"\\u30b5\\u30fc\\u30d3\\u30b9\\u6599\",\"desc_ja\":\"\\u3053\\u308c\\u306b\\u3088\\u308a\\u3001\\u5f53\\u793e\\u306e\\u30d7\\u30e9\\u30c3\\u30c8\\u30d5\\u30a9\\u30fc\\u30e0\\u3092\\u5b9f\\u884c\\u3057\\u3001\\u65c5\\u884c\\u4e2d\\u306b\",\"price\":\"200\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(106, 'space_map_search_fields', 'space', '[{\"field\":\"location\",\"attr\":null,\"position\":\"1\"},{\"field\":\"attr\",\"attr\":\"3\",\"position\":\"2\"},{\"field\":\"date\",\"attr\":null,\"position\":\"3\"},{\"field\":\"price\",\"attr\":null,\"position\":\"4\"},{\"field\":\"advance\",\"attr\":null,\"position\":\"5\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(107, 'space_search_fields', 'tour', '[{\"title\":\"Location\",\"field\":\"location\",\"size\":\"4\",\"position\":\"1\"},{\"title\":\"From - To\",\"field\":\"date\",\"size\":\"4\",\"position\":\"2\"},{\"title\":\"Guests\",\"field\":\"guests\",\"size\":\"4\",\"position\":\"3\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(108, 'hotel_page_search_title', 'hotel', 'Search for hotel', NULL, NULL, NULL, NULL, NULL, NULL),
(109, 'hotel_page_limit_item', 'hotel', '9', NULL, NULL, NULL, NULL, NULL, NULL),
(110, 'hotel_page_search_banner', 'hotel', '92', NULL, NULL, NULL, NULL, NULL, NULL),
(111, 'hotel_layout_item_search', 'hotel', 'list', NULL, NULL, NULL, NULL, NULL, NULL),
(112, 'hotel_attribute_show_in_listing_page', 'hotel', '6', NULL, NULL, NULL, NULL, NULL, NULL),
(113, 'hotel_layout_search', 'hotel', 'normal', NULL, NULL, NULL, NULL, NULL, NULL),
(114, 'hotel_enable_review', 'hotel', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(115, 'hotel_review_approved', 'hotel', '0', NULL, NULL, NULL, NULL, NULL, NULL),
(116, 'hotel_review_stats', 'hotel', '[{\"title\":\"Service\"},{\"title\":\"Organization\"},{\"title\":\"Friendliness\"},{\"title\":\"Area Expert\"},{\"title\":\"Safety\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(117, 'hotel_booking_buyer_fees', 'hotel', '[{\"name\":\"Service fee\",\"desc\":\"This helps us run our platform and offer services like 24\\/7 support on your trip.\",\"name_ja\":\"\\u30b5\\u30fc\\u30d3\\u30b9\\u6599\",\"desc_ja\":\"\\u3053\\u308c\\u306b\\u3088\\u308a\\u3001\\u5f53\\u793e\\u306e\\u30d7\\u30e9\\u30c3\\u30c8\\u30d5\\u30a9\\u30fc\\u30e0\\u3092\\u5b9f\\u884c\\u3057\\u3001\\u65c5\\u884c\\u4e2d\\u306b\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(118, 'hotel_map_search_fields', 'hotel', '[{\"field\":\"location\",\"attr\":null,\"position\":\"1\"},{\"field\":\"attr\",\"attr\":\"7\",\"position\":\"2\"},{\"field\":\"date\",\"attr\":null,\"position\":\"3\"},{\"field\":\"price\",\"attr\":null,\"position\":\"4\"},{\"field\":\"advance\",\"attr\":null,\"position\":\"5\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(119, 'hotel_search_fields', 'hotel', '[{\"title\":\"Location\",\"field\":\"location\",\"size\":\"4\",\"position\":\"1\"},{\"title\":\"Check In - Out\",\"field\":\"date\",\"size\":\"4\",\"position\":\"2\"},{\"title\":\"Guests\",\"field\":\"guests\",\"size\":\"4\",\"position\":\"3\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(120, 'car_page_search_title', 'car', 'Search for car', NULL, NULL, NULL, NULL, NULL, NULL),
(121, 'car_page_limit_item', 'car', '9', NULL, NULL, NULL, NULL, NULL, NULL),
(122, 'car_page_search_banner', 'car', '62', NULL, NULL, NULL, NULL, NULL, NULL),
(123, 'car_layout_search', 'car', 'normal', NULL, NULL, NULL, NULL, NULL, NULL),
(124, 'car_enable_review', 'car', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(125, 'car_review_approved', 'car', '0', NULL, NULL, NULL, NULL, NULL, NULL),
(126, 'car_review_stats', 'car', '[{\"title\":\"Equipment\"},{\"title\":\"Comfortable\"},{\"title\":\"Climate Control\"},{\"title\":\"Facility\"},{\"title\":\"Aftercare\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(127, 'car_booking_buyer_fees', 'car', '[{\"name\":\"Equipment fee\",\"desc\":\"One-time fee charged by host to cover the cost of cleaning their space.\",\"name_ja\":\"\\u30af\\u30ea\\u30fc\\u30cb\\u30f3\\u30b0\\u4ee3\",\"desc_ja\":\"\\u30b9\\u30da\\u30fc\\u30b9\\u3092\\u6383\\u9664\\u3059\\u308b\\u8cbb\\u7528\\u3092\\u30db\\u30b9\\u30c8\\u304c\\u8acb\\u6c42\\u3059\\u308b1\\u56de\\u9650\\u308a\\u306e\\u6599\\u91d1\\u3002\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Facility fee\",\"desc\":\"This helps us run our platform and offer services like 24\\/7 support on your trip.\",\"name_ja\":\"\\u30b5\\u30fc\\u30d3\\u30b9\\u6599\",\"desc_ja\":\"\\u3053\\u308c\\u306b\\u3088\\u308a\\u3001\\u5f53\\u793e\\u306e\\u30d7\\u30e9\\u30c3\\u30c8\\u30d5\\u30a9\\u30fc\\u30e0\\u3092\\u5b9f\\u884c\\u3057\\u3001\\u65c5\\u884c\\u4e2d\\u306b\",\"price\":\"200\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(128, 'car_map_search_fields', 'car', '[{\"field\":\"location\",\"attr\":null,\"position\":\"1\"},{\"field\":\"attr\",\"attr\":\"9\",\"position\":\"2\"},{\"field\":\"date\",\"attr\":null,\"position\":\"3\"},{\"field\":\"price\",\"attr\":null,\"position\":\"4\"},{\"field\":\"advance\",\"attr\":null,\"position\":\"5\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(129, 'car_search_fields', 'car', '[{\"title\":\"Location\",\"field\":\"location\",\"size\":\"6\",\"position\":\"1\"},{\"title\":\"From - To\",\"field\":\"date\",\"size\":\"6\",\"position\":\"2\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(130, 'event_page_search_title', 'event', 'Search for event', NULL, NULL, NULL, NULL, NULL, NULL),
(131, 'event_page_limit_item', 'event', '9', NULL, NULL, NULL, NULL, NULL, NULL),
(132, 'event_page_search_banner', 'event', '161', NULL, NULL, NULL, NULL, NULL, NULL),
(133, 'event_layout_search', 'event', 'normal', NULL, NULL, NULL, NULL, NULL, NULL),
(134, 'event_enable_review', 'event', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(135, 'event_review_approved', 'event', '0', NULL, NULL, NULL, NULL, NULL, NULL),
(136, 'event_review_stats', 'event', '[{\"title\":\"Service\"},{\"title\":\"Organization\"},{\"title\":\"Friendliness\"},{\"title\":\"Area Expert\"},{\"title\":\"Safety\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(137, 'event_booking_buyer_fees', 'event', '[{\"name\":\"Service fee\",\"desc\":\"This helps us run our platform and offer services like 24\\/7 support on your trip.\",\"name_ja\":\"\\u30b5\\u30fc\\u30d3\\u30b9\\u6599\",\"desc_ja\":\"\\u3053\\u308c\\u306b\\u3088\\u308a\\u3001\\u5f53\\u793e\\u306e\\u30d7\\u30e9\\u30c3\\u30c8\\u30d5\\u30a9\\u30fc\\u30e0\\u3092\\u5b9f\\u884c\\u3057\\u3001\\u65c5\\u884c\\u4e2d\\u306b\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(138, 'event_map_search_fields', 'event', '[{\"field\":\"location\",\"attr\":null,\"position\":\"1\"},{\"field\":\"category\",\"attr\":null,\"position\":\"2\"},{\"field\":\"date\",\"attr\":null,\"position\":\"3\"},{\"field\":\"price\",\"attr\":null,\"position\":\"4\"},{\"field\":\"advance\",\"attr\":null,\"position\":\"5\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(139, 'event_search_fields', 'event', '[{\"title\":\"Location\",\"field\":\"location\",\"size\":\"6\",\"position\":\"1\"},{\"title\":\"From - To\",\"field\":\"date\",\"size\":\"6\",\"position\":\"2\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(140, 'update_to_110', NULL, '1', NULL, NULL, NULL, NULL, '2021-08-10 07:39:53', '2021-08-10 07:39:53'),
(141, 'update_to_120', NULL, '1', NULL, NULL, NULL, NULL, '2021-08-10 07:39:54', '2021-08-10 07:39:54'),
(142, 'update_to_130', NULL, '1', NULL, NULL, NULL, NULL, '2021-08-10 07:39:54', '2021-08-10 07:39:54'),
(143, 'update_to_140', NULL, '1', NULL, NULL, NULL, NULL, '2021-08-10 07:39:55', '2021-08-10 07:39:55'),
(144, 'update_to_150', NULL, '1', NULL, NULL, NULL, NULL, '2021-08-10 07:39:56', '2021-08-10 07:39:56'),
(145, 'update_to_151', NULL, '1', NULL, NULL, NULL, NULL, '2021-08-10 07:39:56', '2021-08-10 07:39:56'),
(146, 'update_to_160', NULL, '1', NULL, NULL, NULL, NULL, '2021-08-10 07:39:56', '2021-08-10 07:39:56'),
(147, 'booking_enquiry_enable_mail_to_vendor_content', 'enquiry', '<h3>Hello [vendor_name]</h3>\r\n                            <p>You get new inquiry request from [email]</p>\r\n                            <p>Name :[name]</p>\r\n                            <p>Emai:[email]</p>\r\n                            <p>Phone:[phone]</p>\r\n                            <p>Content:[note]</p>\r\n                            <p>Service:[service_link]</p>\r\n                            <p>Regards,</p>\r\n                            <p>Booking Core</p>\r\n                            </div>', NULL, NULL, NULL, NULL, NULL, NULL),
(148, 'booking_enquiry_enable_mail_to_admin_content', 'enquiry', '<h3>Hello Administrator</h3>\r\n                            <p>You get new inquiry request from [email]</p>\r\n                            <p>Name :[name]</p>\r\n                            <p>Emai:[email]</p>\r\n                            <p>Phone:[phone]</p>\r\n                            <p>Content:[note]</p>\r\n                            <p>Service:[service_link]</p>\r\n                            <p>Vendor:[vendor_link]</p>\r\n                            <p>Regards,</p>\r\n                            <p>Booking Core</p>', NULL, NULL, NULL, NULL, NULL, NULL),
(149, 'update_to_170', NULL, '1', NULL, NULL, NULL, NULL, '2021-08-10 07:39:58', '2021-08-10 07:39:58'),
(150, 'check_db_engine', NULL, '1', NULL, NULL, NULL, NULL, '2021-08-10 07:39:58', '2021-08-10 07:39:58'),
(151, 'wallet_credit_exchange_rate', NULL, '1', NULL, NULL, NULL, NULL, '2021-08-10 07:39:58', '2021-08-10 07:39:58'),
(152, 'wallet_deposit_rate', NULL, '1', NULL, NULL, NULL, NULL, '2021-08-10 07:39:58', '2021-08-10 07:39:58'),
(153, 'wallet_deposit_type', NULL, 'list', NULL, NULL, NULL, NULL, '2021-08-10 07:39:58', '2021-08-10 07:39:58'),
(154, 'wallet_deposit_lists', NULL, '[{\"name\":\"100$\",\"amount\":100,\"credit\":100},{\"name\":\"Bonus 10%\",\"amount\":500,\"credit\":550},{\"name\":\"Bonus 15%\",\"amount\":1000,\"credit\":1150}]', NULL, NULL, NULL, NULL, '2021-08-10 07:39:58', '2021-08-10 07:39:58'),
(155, 'wallet_new_deposit_admin_subject', NULL, 'New credit purchase', NULL, NULL, NULL, NULL, '2021-08-10 07:39:58', '2021-08-10 07:39:58'),
(156, 'wallet_new_deposit_admin_content', NULL, '\r\n            <h1>Hello [first_name]!</h1>\r\n            <p>New order has been made:</p>\r\n            <p>User ID: [create_user]</p>\r\n            <p>Amount: [amount]</p>\r\n            <p>Credit: [credit]</p>\r\n            <p>Gateway: [payment_gateway]</p>\r\n            <p>Regards,<br>Booking Core</p>', NULL, NULL, NULL, NULL, '2021-08-10 07:39:58', '2021-08-10 07:39:58'),
(157, 'wallet_new_deposit_customer_subject', NULL, 'Thank you for your purchasing', NULL, NULL, NULL, NULL, '2021-08-10 07:39:58', '2021-08-10 07:39:58'),
(158, 'wallet_new_deposit_customer_content', NULL, '\r\n            <h1>Hello [first_name]!</h1>\r\n            <p>New order has been made:</p>\r\n            <p>User ID: [create_user]</p>\r\n            <p>Amount: [amount]</p>\r\n            <p>Credit: [credit]</p>\r\n            <p>Gateway: [payment_gateway]</p>\r\n            <p>Regards,<br>Booking Core</p>', NULL, NULL, NULL, NULL, '2021-08-10 07:39:58', '2021-08-10 07:39:58'),
(159, 'wallet_update_deposit_admin_subject', NULL, 'Credit purchase updated', NULL, NULL, NULL, NULL, '2021-08-10 07:39:58', '2021-08-10 07:39:58'),
(160, 'wallet_update_deposit_admin_content', NULL, '\r\n            <h1>Hello [first_name]!</h1>\r\n            <p>Order has been updated:</p>\r\n            <p>Order Status: <strong>[status_name]</strong></p>\r\n            <p>User ID: [create_user]</p>\r\n            <p>Amount: [amount]</p>\r\n            <p>Credit: [credit]</p>\r\n            <p>Gateway: [payment_gateway]</p>\r\n            <p>Regards,<br>Booking Core</p>', NULL, NULL, NULL, NULL, '2021-08-10 07:39:58', '2021-08-10 07:39:58'),
(161, 'wallet_update_deposit_customer_subject', NULL, 'Your credit purchase updated', NULL, NULL, NULL, NULL, '2021-08-10 07:39:58', '2021-08-10 07:39:58'),
(162, 'wallet_update_deposit_customer_content', NULL, '\r\n            <h1>Hello [first_name]!</h1>\r\n            <p>Order has been updated:</p>\r\n            <p>Order Status: <strong>[status_name]</strong></p>\r\n            <p>User ID: [create_user]</p>\r\n            <p>Amount: [amount]</p>\r\n            <p>Credit: [credit]</p>\r\n            <p>Gateway: [payment_gateway]</p>\r\n            <p>Regards,<br>Booking Core</p>', NULL, NULL, NULL, NULL, '2021-08-10 07:39:58', '2021-08-10 07:39:58'),
(163, 'update_to_181', NULL, '1', NULL, NULL, NULL, NULL, '2021-08-10 07:39:58', '2021-08-10 07:39:58'),
(164, 'update_to_182', NULL, '1', NULL, NULL, NULL, NULL, '2021-08-10 07:39:58', '2021-08-10 07:39:58'),
(165, 'update_to_190', NULL, '1', NULL, NULL, NULL, NULL, '2021-08-10 07:39:58', '2021-08-10 07:39:58'),
(166, 'update_to_200', NULL, '2.0.9', NULL, NULL, NULL, NULL, '2021-08-10 07:39:58', '2021-08-10 07:39:58'),
(167, 'site_desc', 'general', '', NULL, 1, 1, NULL, '2021-08-10 07:45:20', '2021-08-10 14:45:32'),
(168, 'site_first_day_of_the_weekin_calendar', 'general', '1', NULL, 1, 1, NULL, '2021-08-10 07:45:20', '2021-08-10 14:45:32'),
(169, 'enable_rtl', 'general', '', NULL, 1, 1, NULL, '2021-08-10 07:45:20', '2021-08-10 14:45:32'),
(170, 'booking_enable_recaptcha', 'booking', '', NULL, 1, NULL, NULL, '2021-08-10 18:18:17', '2021-08-10 18:18:17'),
(171, 'booking_term_conditions', 'booking', '', NULL, 1, NULL, NULL, '2021-08-10 18:18:17', '2021-08-10 18:18:17'),
(172, 'booking_guest_checkout', 'booking', '', NULL, 1, NULL, NULL, '2021-08-10 18:18:17', '2021-08-10 18:18:17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `core_subscribers`
--

CREATE TABLE `core_subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `core_tags`
--

CREATE TABLE `core_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `update_user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `core_tags`
--

INSERT INTO `core_tags` (`id`, `name`, `slug`, `content`, `create_user`, `update_user`, `deleted_at`, `origin_id`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'park', 'park', NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(2, 'National park', 'national-park', NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(3, 'Moutain', 'moutain', NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(4, 'Travel', 'travel', NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(5, 'Summer', 'summer', NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33'),
(6, 'Walking', 'walking', NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-10 07:39:33', '2021-08-10 07:39:33');

-- --------------------------------------------------------

--
-- Struktur dari tabel `core_tag_translations`
--

CREATE TABLE `core_tag_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `origin_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `core_templates`
--

CREATE TABLE `core_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `core_templates`
--

INSERT INTO `core_templates` (`id`, `title`, `content`, `type_id`, `create_user`, `update_user`, `origin_id`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'Home Page', '[{\"type\":\"form_search_all_service\",\"name\":\"Form Search All Service\",\"model\":{\"service_types\":[\"hotel\",\"space\",\"tour\",\"car\",\"event\"],\"title\":\"Hi There!\",\"sub_title\":\"Where would you like to go?\",\"bg_image\":16,\"style\":\"carousel\",\"list_slider\":[{\"_active\":true,\"bg_image\":47},{\"_active\":true,\"bg_image\":16}]},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"offer_block\",\"name\":\"Offer Block\",\"model\":{\"list_item\":[{\"_active\":false,\"title\":\"Special Offers\",\"desc\":\"Find Your Perfect Hotels Get the best<br>\\nprices on 20,000+ properties<br>\\nthe best prices on\",\"background_image\":17,\"link_title\":\"See Deals\",\"link_more\":\"#\",\"featured_text\":\"HOLIDAY SALE\"},{\"_active\":true,\"title\":\"Newsletters\",\"desc\":\"Join for free and get our <br>\\ntailored newsletters full of <br>\\nhot travel deals.\",\"background_image\":18,\"link_title\":\"Sign Up\",\"link_more\":\"/register\",\"featured_icon\":\"icofont-email\"},{\"_active\":true,\"title\":\"Travel Tips\",\"desc\":\"Tips from our travel experts to <br>\\nmake your next trip even<br>\\nbetter.\",\"background_image\":19,\"link_title\":\"Sign Up\",\"link_more\":\"/register\",\"featured_text\":null,\"featured_icon\":\"icofont-island-alt\"}]},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_hotel\",\"name\":\"Hotel: List Items\",\"model\":{\"title\":\"Bestseller Listing\",\"desc\":\"Hotel highly rated for thoughtful design\",\"number\":4,\"style\":\"normal\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"asc\",\"is_featured\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_locations\",\"name\":\"List Locations\",\"model\":{\"service_type\":[\"space\",\"hotel\",\"tour\"],\"title\":\"Top Destinations\",\"desc\":\"It is a long established fact that a reader\",\"number\":6,\"layout\":\"style_4\",\"order\":\"id\",\"order_by\":\"asc\",\"to_location_detail\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_tours\",\"name\":\"Tour: List Items\",\"model\":{\"title\":\"Our best promotion tours\",\"number\":6,\"style\":\"box_shadow\",\"category_id\":\"\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"asc\",\"is_featured\":\"\",\"desc\":\"Most popular destinations\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_space\",\"name\":\"Space: List Items\",\"model\":{\"title\":\"Rental Listing\",\"desc\":\"Homes highly rated for thoughtful design\",\"number\":4,\"style\":\"normal\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"desc\",\"is_featured\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_car\",\"name\":\"Car: List Items\",\"model\":{\"title\":\"Car Trending\",\"desc\":\"Book incredible things to do around the world.\",\"number\":8,\"style\":\"normal\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"desc\",\"is_featured\":\"\"},\"component\":\"RegularBlock\",\"open\":true},{\"type\":\"list_event\",\"name\":\"Event: List Items\",\"model\":{\"title\":\"Classical Music Event \",\"desc\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry\",\"number\":4,\"style\":\"normal\",\"location_id\":\"\",\"order\":\"\",\"order_by\":\"\",\"is_featured\":\"\"},\"component\":\"RegularBlock\",\"open\":true},{\"type\": \"list_news\", \"name\": \"News: List Items\", \"model\": {\"title\": \"Read the latest from blog\", \"desc\": \"Contrary to popular belief\", \"number\": 6, \"category_id\": null, \"order\": \"id\", \"order_by\": \"asc\"}, \"component\": \"RegularBlock\", \"open\": true, \"is_container\": false},{\"type\":\"call_to_action\",\"name\":\"Call To Action\",\"model\":{\"title\":\"Know your city?\",\"sub_title\":\"Join 2000+ locals & 1200+ contributors from 3000 cities\",\"link_title\":\"Become Local Expert\",\"link_more\":\"#\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"testimonial\",\"name\":\"List Testimonial\",\"model\":{\"title\":\"Our happy clients\",\"list_item\":[{\"_active\":false,\"name\":\"Eva Hicks\",\"desc\":\"Faucibus tristique felis potenti ultrices ornare rhoncus semper hac facilisi Rutrum tellus lorem sem velit nisi non pharetra in dui. \",\"number_star\":5,\"avatar\":1},{\"_active\":false,\"name\":\"Donald Wolf\",\"desc\":\"Faucibus tristique felis potenti ultrices ornare rhoncus semper hac facilisi Rutrum tellus lorem sem velit nisi non pharetra in dui. \",\"number_star\":6,\"avatar\":2},{\"_active\":false,\"name\":\"Charlie Harrington\",\"desc\":\"Faucibus tristique felis potenti ultrices ornare rhoncus semper hac facilisi Rutrum tellus lorem sem velit nisi non pharetra in dui.\",\"number_star\":5,\"avatar\":3}]},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false}]', NULL, 1, NULL, NULL, NULL, '2021-08-10 07:39:33', NULL),
(2, 'Home Tour', '[{\"type\":\"form_search_tour\",\"name\":\"Tour: Form Search\",\"model\":{\"title\":\"Love where you\'re going\",\"sub_title\":\"Book incredible things to do around the world.\",\"bg_image\":20},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_featured_item\",\"name\":\"List Featured Item\",\"model\":{\"list_item\":[{\"_active\":false,\"title\":\"1,000+ local guides\",\"sub_title\":\"Morbi semper fames lobortis ac hac penatibus\",\"icon_image\":5},{\"_active\":false,\"title\":\"Handcrafted experiences\",\"sub_title\":\"Morbi semper fames lobortis ac hac penatibus\",\"icon_image\":4},{\"_active\":false,\"title\":\"96% happy travelers\",\"sub_title\":\"Morbi semper fames lobortis ac hac penatibus\",\"icon_image\":6}]},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_tours\",\"name\":\"Tour: List Items\",\"model\":{\"title\":\"Trending Tours\",\"number\":5,\"style\":\"carousel\",\"category_id\":\"\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"desc\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_locations\",\"name\":\"List Locations\",\"model\":{\"title\":\"Top Destinations\",\"number\":5,\"order\":\"id\",\"order_by\":\"desc\",\"service_type\":\"tour\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_tours\",\"name\":\"Tour: List Items\",\"model\":{\"title\":\"Local Experiences You’ll Love\",\"number\":8,\"style\":\"normal\",\"category_id\":\"\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"asc\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"call_to_action\",\"name\":\"Call To Action\",\"model\":{\"title\":\"Know your city?\",\"sub_title\":\"Join 2000+ locals & 1200+ contributors from 3000 cities\",\"link_title\":\"Become Local Expert\",\"link_more\":\"#\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"testimonial\",\"name\":\"List Testimonial\",\"model\":{\"title\":\"Our happy clients\",\"list_item\":[{\"_active\":false,\"name\":\"Eva Hicks\",\"desc\":\"Faucibus tristique felis potenti ultrices ornare rhoncus semper hac facilisi Rutrum tellus lorem sem velit nisi non pharetra in dui. \",\"number_star\":5,\"avatar\":1},{\"_active\":false,\"name\":\"Donald Wolf\",\"desc\":\"Faucibus tristique felis potenti ultrices ornare rhoncus semper hac facilisi Rutrum tellus lorem sem velit nisi non pharetra in dui. \",\"number_star\":6,\"avatar\":2},{\"_active\":false,\"name\":\"Charlie Harrington\",\"desc\":\"Faucibus tristique felis potenti ultrices ornare rhoncus semper hac facilisi Rutrum tellus lorem sem velit nisi non pharetra in dui.\",\"number_star\":5,\"avatar\":3}]},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false}]', NULL, 1, NULL, NULL, NULL, '2021-08-10 07:39:33', NULL),
(3, 'Home Space', '[{\"type\":\"form_search_space\",\"name\":\"Space: Form Search\",\"model\":{\"title\":\"Find your next rental\",\"sub_title\":\"Book incredible things to do around the world.\",\"bg_image\":61},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_space\",\"name\":\"Space: List Items\",\"model\":{\"title\":\"Recommended Homes\",\"number\":5,\"style\":\"carousel\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"asc\",\"desc\":\"Homes highly rated for thoughtful design\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"space_term_featured_box\",\"name\":\"Space: Term Featured Box\",\"model\":{\"title\":\"Find a Home Type\",\"desc\":\"It is a long established fact that a reader\",\"term_space\":[\"26\",\"27\",\"28\",\"29\",\"30\",\"31\"]},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_locations\",\"name\":\"List Locations\",\"model\":{\"service_type\":\"space\",\"title\":\"Top Destinations\",\"number\":6,\"order\":\"id\",\"order_by\":\"desc\",\"layout\":\"style_2\",\"desc\":\"It is a long established fact that a reader\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_space\",\"name\":\"Space: List Items\",\"model\":{\"title\":\" Rental Listing\",\"desc\":\"Homes highly rated for thoughtful design\",\"number\":4,\"style\":\"normal\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"desc\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"call_to_action\",\"name\":\"Call To Action\",\"model\":{\"title\":\"Know your city?\",\"sub_title\":\"Join 2000+ locals & 1200+ contributors from 3000 cities\",\"link_title\":\"Become Local Expert\",\"link_more\":\"#\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false}]', NULL, 1, NULL, NULL, NULL, '2021-08-10 07:39:33', NULL),
(4, 'Home Hotel', '[{\"type\":\"form_search_hotel\",\"name\":\"Hotel: Form Search\",\"model\":{\"title\":\"Find Your Perfect Hotels\",\"sub_title\":\"Get the best prices on 20,000+ properties\",\"bg_image\":92},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_featured_item\",\"name\":\"List Featured Item\",\"model\":{\"list_item\":[{\"_active\":false,\"title\":\"20,000+ properties\",\"sub_title\":\"Morbi semper fames lobortis ac hac penatibus\",\"icon_image\":103,\"order\":null},{\"_active\":false,\"title\":\"Trust & Safety\",\"sub_title\":\"Morbi semper fames lobortis ac hac penatibus\",\"icon_image\":104,\"order\":null},{\"_active\":true,\"title\":\"Best Price Guarantee\",\"sub_title\":\"Morbi semper fames lobortis ac hac penatibus\",\"icon_image\":105,\"order\":null}],\"style\":\"normal\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_hotel\",\"name\":\"Hotel: List Items\",\"model\":{\"title\":\"Last Minute Deals\",\"desc\":\"Hotel highly rated for thoughtful design\",\"number\":5,\"style\":\"carousel\",\"location_id\":\"\",\"order\":\"\",\"order_by\":\"\",\"is_featured\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_locations\",\"name\":\"List Locations\",\"model\":{\"service_type\":\"hotel\",\"title\":\"Top Destinations\",\"desc\":\"It is a long established fact that a reader\",\"number\":6,\"layout\":\"style_3\",\"order\":\"\",\"order_by\":\"\",\"to_location_detail\":false},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"text\",\"name\":\"Text\",\"model\":{\"content\":\"<h2><span style=\\\"color: #1a2b48; font-family: Poppins, sans-serif; font-size: 28px; font-weight: 500; background-color: #ffffff;\\\">Why be a Local Expert</span></h2>\\n<div><span style=\\\"color: #5e6d77; font-family: Poppins, sans-serif; font-size: 10pt; background-color: #ffffff;\\\">Varius massa maecenas et id dictumst mattis</span></div>\",\"class\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_featured_item\",\"name\":\"List Featured Item\",\"model\":{\"list_item\":[{\"_active\":false,\"title\":\"Earn an additional income\",\"sub_title\":\"Ut elit tellus, luctus nec ullamcorper mattis\",\"icon_image\":15,\"order\":null},{\"_active\":false,\"title\":\"Open your network\",\"sub_title\":\"Ut elit tellus, luctus nec ullamcorper mattis\",\"icon_image\":14,\"order\":null},{\"_active\":false,\"title\":\"Practice your language\",\"sub_title\":\"Ut elit tellus, luctus nec ullamcorper mattis\",\"icon_image\":13,\"order\":null}],\"style\":\"style3\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_hotel\",\"name\":\"Hotel: List Items\",\"model\":{\"title\":\"Bestseller Listing\",\"desc\":\"Hotel highly rated for thoughtful design\",\"number\":8,\"style\":\"normal\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"asc\",\"is_featured\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false}]', NULL, 1, NULL, NULL, NULL, '2021-08-10 07:39:33', NULL),
(5, 'Become a vendor', '[{\"type\":\"vendor_register_form\",\"name\":\"Vendor Register Form\",\"model\":{\"title\":\"Become a vendor\",\"desc\":\"Join our community to unlock your greatest asset and welcome paying guests into your home.\",\"youtube\":\"https://www.youtube.com/watch?v=AmZ0WrEaf34\",\"bg_image\":11},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"text\",\"name\":\"Text\",\"model\":{\"content\":\"<h3><strong>How does it work?</strong></h3>\",\"class\":\"text-center\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_featured_item\",\"name\":\"List Featured Item\",\"model\":{\"list_item\":[{\"_active\":false,\"title\":\"Sign up\",\"sub_title\":\"Click edit button to change this text  to change this text\",\"icon_image\":null,\"order\":null},{\"_active\":false,\"title\":\" Add your services\",\"sub_title\":\" Click edit button to change this text  to change this text\",\"icon_image\":null,\"order\":null},{\"_active\":true,\"title\":\"Get bookings\",\"sub_title\":\" Click edit button to change this text  to change this text\",\"icon_image\":null,\"order\":null}],\"style\":\"style2\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"video_player\",\"name\":\"Video Player\",\"model\":{\"title\":\"Share the beauty of your city\",\"youtube\":\"https://www.youtube.com/watch?v=hHUbLv4ThOo\",\"bg_image\":12},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"text\",\"name\":\"Text\",\"model\":{\"content\":\"<h3><strong>Why be a Local Expert</strong></h3>\",\"class\":\"text-center ptb60\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_featured_item\",\"name\":\"List Featured Item\",\"model\":{\"list_item\":[{\"_active\":false,\"title\":\"Earn an additional income\",\"sub_title\":\" Ut elit tellus, luctus nec ullamcorper mattis\",\"icon_image\":15,\"order\":null},{\"_active\":true,\"title\":\"Open your network\",\"sub_title\":\" Ut elit tellus, luctus nec ullamcorper mattis\",\"icon_image\":14,\"order\":null},{\"_active\":true,\"title\":\"Practice your language\",\"sub_title\":\" Ut elit tellus, luctus nec ullamcorper mattis\",\"icon_image\":13,\"order\":null}],\"style\":\"style3\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"faqs\",\"name\":\"FAQ List\",\"model\":{\"title\":\"FAQs\",\"list_item\":[{\"_active\":false,\"title\":\"How will I receive my payment?\",\"sub_title\":\" Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.\"},{\"_active\":true,\"title\":\"How do I upload products?\",\"sub_title\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.\"},{\"_active\":true,\"title\":\"How do I update or extend my availabilities?\",\"sub_title\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.\\n\"},{\"_active\":true,\"title\":\"How do I increase conversion rate?\",\"sub_title\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.\"}]},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false}]', NULL, 1, NULL, NULL, NULL, '2021-08-10 07:39:33', NULL),
(6, 'Home Car', '[{\"type\":\"form_search_car\",\"name\":\"Car: Form Search\",\"model\":{\"title\":\"Search Rental Car Deals\",\"sub_title\":\"Book better cars from local hosts across the US and around the world.\",\"bg_image\":122},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_featured_item\",\"name\":\"List Featured Item\",\"model\":{\"list_item\":[{\"_active\":true,\"title\":\"Free Cancellation\",\"sub_title\":\"Morbi semper fames lobortis ac\",\"icon_image\":103,\"order\":null},{\"_active\":true,\"title\":\"No Hidden Costs\",\"sub_title\":\"Morbi semper fames lobortis\",\"icon_image\":104,\"order\":null},{\"_active\":true,\"title\":\"24/7 Customer Care\",\"sub_title\":\"Morbi semper fames lobortis\",\"icon_image\":105,\"order\":null}],\"style\":\"normal\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"car_term_featured_box\",\"name\":\"Car: Term Featured Box\",\"model\":{\"title\":\"Browse by categories\",\"desc\":\"Book incredible things to do around the world.\",\"term_car\":[\"68\",\"67\",\"66\",\"65\",\"64\",\"63\",\"62\",\"61\"]},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_car\",\"name\":\"Car: List Items\",\"model\":{\"title\":\"Trending used cars\",\"desc\":\"Book incredible things to do around the world.\",\"number\":8,\"style\":\"normal\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"desc\",\"is_featured\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"how_it_works\",\"name\":\"How It Works\",\"model\":{\"title\":\"How does it work?\",\"list_item\":[{\"_active\":false,\"title\":\"Find The Car\",\"sub_title\":\"Lorem Ipsum is simply dummy text of the printing\",\"icon_image\":132,\"order\":null},{\"_active\":false,\"title\":\"Book It\",\"sub_title\":\"Lorem Ipsum is simply dummy text of the printing\",\"icon_image\":133,\"order\":null},{\"_active\":false,\"title\":\"Grab And Go\",\"sub_title\":\"Lorem Ipsum is simply dummy text of the printing\",\"icon_image\":134,\"order\":null}],\"background_image\":131},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_locations\",\"name\":\"List Locations\",\"model\":{\"service_type\":[\"car\"],\"title\":\"Top destinations\",\"desc\":\"Lorem Ipsum is simply dummy text of the printing\",\"number\":6,\"layout\":\"style_2\",\"order\":\"id\",\"order_by\":\"asc\",\"to_location_detail\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false}]', NULL, 1, NULL, NULL, NULL, '2021-08-10 07:39:33', NULL),
(7, 'Home Tour Agency', '[{\"type\":\"form_search_tour\",\"name\":\"Tour: Form Search\",\"model\":{\"title\":\"Love where you\'re going\",\"sub_title\":\"Book incredible things to do around the world.\",\"bg_image\":20,\"style\":\"carousel_v2\",\"list_slider\":[{\"_active\":true,\"title\":\"Love where you\'re going\",\"desc\":\"Book incredible things to do around the world.\",\"bg_image\":199}]},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_tours\",\"name\":\"Tour: List Items\",\"model\":{\"title\":\"Go to Venice\",\"number\":5,\"style\":\"carousel_simple\",\"category_id\":\"\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"asc\",\"desc\":\"It is a long established fact that a reader will be distracted by the readable content of a page ...\",\"is_featured\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"call_to_action\",\"name\":\"Call To Action\",\"model\":{\"title\":\"Sale up for new year\",\"sub_title\":\"Curabitur blandit tempus\",\"link_title\":\"Read More\",\"link_more\":\"#\",\"bg_color\":\"\",\"style\":\"style_2\",\"bg_image\":196},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_tours\",\"name\":\"Tour: List Items\",\"model\":{\"title\":\"Popular tour in the month\",\"number\":8,\"style\":\"carousel\",\"category_id\":\"\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"desc\",\"desc\":\"Local Experiences You’ll Love \",\"is_featured\":true},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"call_to_action\",\"name\":\"Call To Action\",\"model\":{\"title\":\"Enjoy your holiday\",\"sub_title\":\"Curabitur blandit tempus porttitor\",\"link_title\":\"Explore\",\"link_more\":\"#\",\"style\":\"style_3\",\"bg_color\":\"\",\"bg_image\":197},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_featured_item\",\"name\":\"List Featured Item\",\"model\":{\"list_item\":[{\"_active\":true,\"title\":\"1,000+ local guides\",\"sub_title\":\"Morbi semper fames lobortis ac hac penatibus\",\"icon_image\":183},{\"_active\":true,\"title\":\"Handcrafted experiences\",\"sub_title\":\"Morbi semper fames lobortis ac hac penatibus\",\"icon_image\":187},{\"_active\":true,\"title\":\"96% happy travelers\",\"sub_title\":\"Morbi semper fames lobortis ac hac penatibus\",\"icon_image\":185}],\"style\":\"style4\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"box_category_tour\",\"name\":\"Tour: Box Category\",\"model\":{\"title\":\"Top activity\",\"desc\":\"One way to vertically center is to use my-auto\",\"list_item\":[{\"_active\":true,\"category_id\":\"4\",\"image_id\":189},{\"_active\":true,\"category_id\":\"3\",\"image_id\":190},{\"_active\":true,\"category_id\":\"2\",\"image_id\":191},{\"_active\":true,\"category_id\":\"1\",\"image_id\":192},{\"_active\":true,\"category_id\":\"2\",\"image_id\":190}]},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"client_feedback\",\"name\":\"Client Feedback\",\"model\":{\"title\":\"\",\"image_id\":198,\"list_item\":[{\"_active\":false,\"title\":\"Babila Ebwélé\",\"sub_title\":\"BookingCore\",\"desc\":\"We had 10 days. Iguazu Falls, Rio, and Paraty. We had Orico as a guide for the first 4 days...he was fabulous.  \"},{\"_active\":true,\"title\":\"DoQuan\",\"sub_title\":\"Travel\",\"desc\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry\"}]},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_news\",\"name\":\"News: List Items\",\"model\":{\"title\":\"Recent Articles\",\"desc\":\" One way to vertically center is to use my-auto \",\"number\":3,\"category_id\":\"\",\"order\":\"id\",\"order_by\":\"asc\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false}]', NULL, 1, NULL, NULL, NULL, '2021-08-10 07:39:33', NULL),
(8, 'Home Page v2', '[{\"type\":\"form_search_all_service\",\"name\":\"Form Search All Service\",\"model\":{\"title_for_car\":\"\",\"title_for_event\":\"\",\"title_for_hotel\":\"\",\"title_for_space\":\"\",\"title_for_tour\":\"\",\"service_types\":[\"hotel\",\"tour\",\"space\",\"event\",\"car\"],\"title\":\"\",\"sub_title\":\"\",\"style\":\"carousel_v2\",\"bg_image\":\"\",\"list_slider\":[{\"_active\":true,\"title\":\"The best tour experience\",\"desc\":\" Without the crowds\",\"bg_image\":194},{\"_active\":true,\"title\":\"The best tour experience\",\"desc\":\"This Place is Alive\",\"bg_image\":193}],\"hide_form_search\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_featured_item\",\"name\":\"List Featured Item\",\"model\":{\"list_item\":[{\"_active\":true,\"title\":\"BEST SELECTION\",\"sub_title\":\"Morbi semper fames lobortis ac hac penatibus\",\"icon_image\":184,\"order\":null},{\"_active\":true,\"title\":\"BEST PRICE GUARANTEE\",\"sub_title\":\"Morbi semper fames lobortis ac hac penatibus\",\"icon_image\":186,\"order\":null},{\"_active\":true,\"title\":\"24/7 SUPPORT\",\"sub_title\":\"Morbi semper fames lobortis ac hac penatibus\",\"icon_image\":188,\"order\":null}],\"style\":\"style5\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_hotel\",\"name\":\"Hotel: List Items\",\"model\":{\"title\":\"Hotel Best\",\"desc\":\"Morbi semper fames lobortis ac hac penatibus\",\"number\":\"\",\"style\":\"carousel\",\"location_id\":\"\",\"order\":\"\",\"order_by\":\"\",\"is_featured\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"call_to_action\",\"name\":\"Call To Action\",\"model\":{\"title\":\"Discount 50% Off\",\"sub_title\":\"Curabitur blandit tempus porttitor\",\"link_title\":\"Read More\",\"link_more\":\"#\",\"style\":\"style_2\",\"bg_color\":\"\",\"bg_image\":195},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"space_term_featured_box\",\"name\":\"Space: Term Featured Box\",\"model\":{\"title\":\"Top Comfort Service\",\"desc\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry\",\"term_space\":[\"27\",\"28\",\"29\",\"30\",\"31\",\"26\"]},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_space\",\"name\":\"Space: List Items\",\"model\":{\"title\":\"Service Featured Phoenix Resort\",\"desc\":\"There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form\",\"number\":8,\"style\":\"normal\",\"location_id\":\"\",\"order\":\"\",\"order_by\":\"\",\"is_featured\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"client_feedback\",\"name\":\"Client Feedback\",\"model\":{\"image_id\":198,\"list_item\":[{\"_active\":true,\"title\":\"DoQuan\",\"sub_title\":\"Travel\",\"desc\":\"Faucibus tristique felis potenti ultrices ornare rhoncus semper hac facilisi Rutrum tellus lorem sem velit nisi non pharetra in dui. Faucibus tristique felis potenti ultrices ornare rhoncus semper hac facilisi Rutrum tellus lorem sem velit nisi non pharetra in dui. Faucibus tristique felis potenti ultrices ornare rhoncus semper hac facilisi Rutrum tellus lorem sem velit nisi non pharetra in dui. Faucibus tristique felis potenti ultrices ornare rhoncus semper hac facilisi Rutrum tellus lorem sem velit nisi non pharetra in dui. \"},{\"_active\":true,\"title\":\"HoangAnh\",\"sub_title\":\"Travel\",\"desc\":\"Faucibus tristique felis potenti ultrices ornare rhoncus semper hac facilisi Rutrum tellus lorem sem velit nisi non pharetra in dui. Faucibus tristique felis potenti ultrices ornare rhoncus semper hac facilisi Rutrum tellus lorem sem velit nisi non pharetra in dui. \"}]},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_locations\",\"name\":\"List Locations\",\"model\":{\"service_type\":[\"hotel\",\"space\",\"tour\"],\"title\":\"Travel Highlights\",\"desc\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry\",\"number\":3,\"layout\":\"style_4\",\"order\":\"id\",\"order_by\":\"asc\",\"custom_ids\":\"\",\"to_location_detail\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_tours\",\"name\":\"Tour: List Items\",\"model\":{\"title\":\"Viet Nam Travel\",\"desc\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry\",\"number\":5,\"style\":\"normal\",\"category_id\":\"\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"asc\",\"is_featured\":true},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_news\",\"name\":\"News: List Items\",\"model\":{\"title\":\"Travel News\",\"desc\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry\",\"number\":3,\"category_id\":\"\",\"order\":\"id\",\"order_by\":\"asc\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false}]', NULL, 1, NULL, NULL, NULL, '2021-08-10 07:39:33', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `core_template_translations`
--

CREATE TABLE `core_template_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `origin_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `core_template_translations`
--

INSERT INTO `core_template_translations` (`id`, `origin_id`, `locale`, `title`, `content`, `create_user`, `update_user`, `created_at`, `updated_at`) VALUES
(1, 1, 'ja', 'Home Page', '[{\"type\":\"form_search_all_service\",\"name\":\"Form Search All Service\",\"model\":{\"service_types\":[\"hotel\",\"space\",\"tour\",\"car\"],\"title\":\"こんにちは！\",\"sub_title\":\"どこに行きたい？\",\"bg_image\":16},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"offer_block\",\"name\":\"Offer Block\",\"model\":{\"list_item\":[{\"_active\":true,\"title\":\"特別オファー\",\"desc\":\"最適なホテルを探す<br>\\n20,000以上の物件の価格<br>\\n上の最高の価格\",\"background_image\":17,\"link_title\":\"取引\",\"link_more\":\"#\",\"featured_text\":\"ホリデーセール\"},{\"_active\":true,\"title\":\"ニュースレター\",\"desc\":\"無料で参加して取得 <br>\\nに合わせたニュースレター<br>\\nホット旅行情報。\",\"background_image\":18,\"link_title\":\"サインアップ\",\"link_more\":\"/register\",\"featured_icon\":\"icofont-email\"},{\"_active\":true,\"title\":\"旅行のヒント\",\"desc\":\"旅行の専門家からのヒント <br>\\nあなたの次の<br>\\nより良い。\",\"background_image\":19,\"link_title\":\"サインアップ\",\"link_more\":\"/register\",\"featured_text\":null,\"featured_icon\":\"icofont-island-alt\"}]},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_hotel\",\"name\":\"Hotel: List Items\",\"model\":{\"title\":\"ベストセラーリスト\",\"desc\":\"思慮深いデザインで高い評価を得ているホテル\",\"number\":4,\"style\":\"normal\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"asc\",\"is_featured\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_locations\",\"name\":\"List Locations\",\"model\":{\"service_type\":[\"space\",\"hotel\",\"tour\"],\"title\":\"人気の目的地\",\"desc\":\"読者が\",\"number\":6,\"layout\":\"style_4\",\"order\":\"id\",\"order_by\":\"asc\",\"to_location_detail\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_tours\",\"name\":\"Tour: List Items\",\"model\":{\"title\":\"最高のプロモーションツアー\",\"number\":6,\"style\":\"box_shadow\",\"category_id\":\"\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"asc\",\"is_featured\":\"\",\"desc\":\"最も人気のある目的地\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_space\",\"name\":\"Space: List Items\",\"model\":{\"title\":\"賃貸物件\",\"desc\":\"思慮深いデザインで高い評価を受けている家\",\"number\":4,\"style\":\"normal\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"desc\",\"is_featured\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_car\",\"name\":\"Car: List Items\",\"model\":{\"title\":\"Car Trending\",\"desc\":\"Book incredible things to do around the world.\",\"number\":8,\"style\":\"normal\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"desc\",\"is_featured\":\"\"},\"component\":\"RegularBlock\",\"open\":true},{\"type\": \"list_news\", \"name\": \"News: List Items\", \"model\": {\"title\": \"Read the latest from blog\", \"desc\": \"Contrary to popular belief\", \"number\": 6, \"category_id\": null, \"order\": \"id\", \"order_by\": \"asc\"}, \"component\": \"RegularBlock\", \"open\": true, \"is_container\": false},{\"type\":\"call_to_action\",\"name\":\"Call To Action\",\"model\":{\"title\":\"あなたの街を知？\",\"sub_title\":\"3000以上の都市から2000人以上の地元民と\",\"link_title\":\"ローカルエ\",\"link_more\":\"#\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"testimonial\",\"name\":\"List Testimonial\",\"model\":{\"title\":\"私たちの幸せなクライアント\",\"list_item\":[{\"_active\":false,\"name\":\"Eva Hicks\",\"desc\":\"右ずへやん間申ゃ投法けゃイ仙一もと政情ルた食的て代下ずせに丈律ルラモト聞探チト棋90績ム的社ず置攻景リフノケ内兼唱堅ゃフぼ。場ルアハ美\",\"number_star\":5,\"avatar\":1},{\"_active\":false,\"name\":\"Donald Wolf\",\"desc\":\"右ずへやん間申ゃ投法けゃイ仙一もと政情ルた食的て代下ずせに丈律ルラモト聞探チト棋90績ム的社ず置攻景リフノケ内兼唱堅ゃフぼ。場ルアハ美\",\"number_star\":6,\"avatar\":2},{\"_active\":true,\"name\":\"Charlie Harrington\",\"desc\":\"右ずへやん間申ゃ投法けゃイ仙一もと政情ルた食的て代下ずせに丈律ルラモト聞探チト棋90績ム的社ず置攻景リフノケ内兼唱堅ゃフぼ。場ルアハ美\",\"number_star\":5,\"avatar\":3}]},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false}]', 1, NULL, '2021-08-10 07:39:33', NULL),
(2, 2, 'ja', 'Home Tour', '[{\"type\":\"form_search_tour\",\"name\":\"Tour: Form Search\",\"model\":{\"title\":\"どこへ行くのが大好き\",\"sub_title\":\"世界中で信じられないようなことを予約しましょう。\",\"bg_image\":20},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_featured_item\",\"name\":\"List Featured Item\",\"model\":{\"list_item\":[{\"_active\":true,\"title\":\"1,000+ ローカルガイド\",\"sub_title\":\"プロのツアーガイドとーガイドとーガイドと 験。 光の\",\"icon_image\":5},{\"_active\":true,\"title\":\"手作りの体験\",\"sub_title\":\"プロのツアーガイドとーガイドとーガイドと 験。 光の\",\"icon_image\":4},{\"_active\":true,\"title\":\"96% 幸せな旅行者\",\"sub_title\":\"プロのツアーガイドとーガイドとーガイドと 験。 光の\",\"icon_image\":6}]},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_tours\",\"name\":\"Tour: List Items\",\"model\":{\"title\":\"トレンドツアー\",\"number\":5,\"style\":\"carousel\",\"category_id\":\"\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"desc\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_locations\",\"name\":\"List Locations\",\"model\":{\"title\":\"人気の目的地\",\"number\":5,\"order\":\"id\",\"order_by\":\"desc\",\"service_type\":\"tour\",\"desc\":\"\",\"layout\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_tours\",\"name\":\"Tour: List Items\",\"model\":{\"title\":\"あなたが好きになるローカル体験\",\"number\":8,\"style\":\"normal\",\"category_id\":\"\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"asc\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"call_to_action\",\"name\":\"Call To Action\",\"model\":{\"title\":\"っていますか？\",\"sub_title\":\"3000以上の都市から2000人以上の地元民と1200人以上の貢献者に参加する\",\"link_title\":\"ローカルエ\",\"link_more\":\"#\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"testimonial\",\"name\":\"List Testimonial\",\"model\":{\"title\":\"私たちの幸せなクライアント\",\"list_item\":[{\"_active\":false,\"name\":\"Eva Hicks\",\"desc\":\"融づ苦佐とき百配ほづあ禁安テクミ真覧チヱフ行乗ぱたば外味ナ演庭コヲ旅見ヨコ優成コネ治確はろね訪来終島抄がん。\",\"number_star\":5,\"avatar\":1},{\"_active\":false,\"name\":\"Donald Wolf\",\"desc\":\"融づ苦佐とき百配ほづあ禁安テクミ真覧チヱフ行乗ぱたば外味ナ演庭コヲ旅見ヨコ優成コネ治確はろね訪来終島抄がん。\",\"number_star\":6,\"avatar\":2},{\"_active\":true,\"name\":\"Charlie Harrington\",\"desc\":\"右ずへやん間申ゃ投法けゃイ仙一もと政情ルた食的て代下ずせに丈律ルラモト聞探チト棋90績ム的社ず置攻景リフノケ内兼唱堅ゃフぼ。場ルアハ美\",\"number_star\":5,\"avatar\":3}]},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false}]', 1, NULL, '2021-08-10 07:39:33', NULL),
(3, 3, 'ja', 'Home Space', '[{\"type\":\"form_search_space\",\"name\":\"Space: Form Search\",\"model\":{\"title\":\"次のレンタルを探す\",\"sub_title\":\"世界中で信じられないようなことを予約しましょう。\",\"bg_image\":61},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_space\",\"name\":\"Space: List Items\",\"model\":{\"title\":\"おすすめの家\",\"number\":5,\"style\":\"carousel\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"asc\",\"desc\":\"思慮深いデザインで高い評価を受けている家\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"space_term_featured_box\",\"name\":\"Space: Term Featured Box\",\"model\":{\"title\":\"ホームタイプを見つける\",\"desc\":\"これは、読者はその長い既成の事実であります\",\"term_space\":[\"26\",\"27\",\"28\",\"29\",\"30\",\"31\"]},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_locations\",\"name\":\"List Locations\",\"model\":{\"service_type\":\"space\",\"title\":\"人気の目的地\",\"number\":6,\"order\":\"id\",\"order_by\":\"desc\",\"layout\":\"style_2\",\"desc\":\"これは、読者はその長い既成の事実であります\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_space\",\"name\":\"Space: List Items\",\"model\":{\"title\":\"賃貸物件\",\"desc\":\"思慮深いデザインで高い評価を受けている家\",\"number\":4,\"style\":\"normal\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"desc\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"call_to_action\",\"name\":\"Call To Action\",\"model\":{\"title\":\"っていますか？\",\"sub_title\":\"3000以上の都市から2000人以上の地元民と1200人以上の貢献者に参加する\",\"link_title\":\"ローカルエ\",\"link_more\":\"#\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false}]', 1, NULL, '2021-08-10 07:39:33', NULL),
(4, 4, 'ja', 'Home Hotel', '[{\"type\":\"form_search_hotel\",\"name\":\"Hotel: Form Search\",\"model\":{\"title\":\"最適なホテルを探す\",\"sub_title\":\"20,000以上のプロパティで最高の価格を取得\",\"bg_image\":92},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_featured_item\",\"name\":\"List Featured Item\",\"model\":{\"list_item\":[{\"_active\":false,\"title\":\"20,000以上のプロパティ\",\"sub_title\":\"これは飢饉は常にlobortis交流pede Suspendisseたです\",\"icon_image\":103,\"order\":null},{\"_active\":false,\"title\":\"信頼と安全性\",\"sub_title\":\"これは飢饉は常にlobortis交流pede Suspendisseたです\",\"icon_image\":104,\"order\":null},{\"_active\":false,\"title\":\"ベストプライス保証\",\"sub_title\":\"これは飢饉は常にlobortis交流pede Suspendisseたです\",\"icon_image\":105,\"order\":null}],\"style\":\"normal\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_hotel\",\"name\":\"Hotel: List Items\",\"model\":{\"title\":\"直前予約\",\"desc\":\"思慮深いデザインで高い評価を得ているホテル\",\"number\":5,\"style\":\"carousel\",\"location_id\":\"\",\"order\":\"\",\"order_by\":\"\",\"is_featured\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_locations\",\"name\":\"List Locations\",\"model\":{\"service_type\":\"hotel\",\"title\":\"人気の目的地\",\"desc\":\"それは長い間確立された事実であり、\",\"number\":6,\"layout\":\"style_3\",\"order\":\"\",\"order_by\":\"\",\"to_location_detail\":false},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"text\",\"name\":\"Text\",\"model\":{\"content\":\"<h2><span style=\\\"color: #1a2b48; font-family: Poppins, sans-serif; font-size: 28px; font-weight: 500; background-color: #ffffff;\\\">ローカルエキスパートになる理由</span></h2>\\n<div><span style=\\\"color: #5e6d77; font-family: Poppins, sans-serif; font-size: 10pt; background-color: #ffffff;\\\">様々な質量マエケナスとその格言不動産</span></div>\\n<div id=\\\"gtx-trans\\\" style=\\\"position: absolute; left: -118px; top: 55.8125px;\\\">\\n<div class=\\\"gtx-trans-icon\\\">&nbsp;</div>\\n</div>\",\"class\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_featured_item\",\"name\":\"List Featured Item\",\"model\":{\"list_item\":[{\"_active\":false,\"title\":\"追加の収入を得る\",\"sub_title\":\"Ut elit tellus, luctus nec ullamcorper mattis\",\"icon_image\":15,\"order\":null},{\"_active\":false,\"title\":\"ネットワークを開く\",\"sub_title\":\"Ut elit tellus, luctus nec ullamcorper mattis\",\"icon_image\":14,\"order\":null},{\"_active\":false,\"title\":\"あなたの言語を練習する\",\"sub_title\":\"Ut elit tellus, luctus nec ullamcorper mattis\",\"icon_image\":13,\"order\":null}],\"style\":\"style3\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_hotel\",\"name\":\"Hotel: List Items\",\"model\":{\"title\":\"ベストセラーリスト\",\"desc\":\"思慮深いデザインで高い評価を得ているホテル\",\"number\":8,\"style\":\"normal\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"asc\",\"is_featured\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false}]', 1, NULL, '2021-08-10 07:39:33', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `core_translations`
--

CREATE TABLE `core_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `string` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `last_build_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `core_vendor_plans`
--

CREATE TABLE `core_vendor_plans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `base_commission` int(11) NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish_date` datetime DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `core_vendor_plan_meta`
--

CREATE TABLE `core_vendor_plan_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_plan_id` int(11) NOT NULL,
  `post_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enable` tinyint(4) DEFAULT NULL,
  `maximum_create` int(11) DEFAULT NULL,
  `auto_publish` tinyint(4) DEFAULT NULL,
  `commission` int(11) DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `expertise`
--

CREATE TABLE `expertise` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `sub` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `expertise`
--

INSERT INTO `expertise` (`id`, `title`, `sub`, `image`) VALUES
(1, 'Test Title', '<p>Test</p>\r\n', ''),
(2, 'Test Yuk', '<p>Test Yuk</p>\r\n', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `favorites`
--

CREATE TABLE `favorites` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `favorite_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `location_category`
--

CREATE TABLE `location_category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_lft` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `_rgt` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `location_category`
--

INSERT INTO `location_category` (`id`, `name`, `icon_class`, `content`, `slug`, `status`, `_lft`, `_rgt`, `parent_id`, `create_user`, `update_user`, `deleted_at`, `origin_id`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'Education', 'icofont-education', NULL, NULL, 'publish', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Health', 'fa fa-hospital-o', NULL, NULL, 'publish', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Transportation', 'fa fa-subway', NULL, NULL, 'publish', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `location_category_translations`
--

CREATE TABLE `location_category_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `locale` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `media_files`
--

CREATE TABLE `media_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_extension` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `app_id` int(11) DEFAULT NULL,
  `app_user_id` int(11) DEFAULT NULL,
  `file_width` int(11) DEFAULT NULL,
  `file_height` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `media_files`
--

INSERT INTO `media_files` (`id`, `file_name`, `file_path`, `file_size`, `file_type`, `file_extension`, `create_user`, `update_user`, `deleted_at`, `app_id`, `app_user_id`, `file_width`, `file_height`, `created_at`, `updated_at`) VALUES
(1, 'avatar', 'demo/general/avatar.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'avatar-2', 'demo/general/avatar-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'avatar-3', 'demo/general/avatar-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'ico_adventurous', 'demo/general/ico_adventurous.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'ico_localguide', 'demo/general/ico_localguide.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'ico_maps', 'demo/general/ico_maps.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'ico_paymethod', 'demo/general/ico_paymethod.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'logo', 'demo/general/logo.svg', NULL, 'image/svg+xml', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'bg_contact', 'demo/general/bg-contact.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'favicon', 'demo/general/favicon.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'thumb-vendor-register', 'demo/general/thumb-vendor-register.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'bg-video-vendor-register1', 'demo/general/bg-video-vendor-register1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'ico_chat_1', 'demo/general/ico_chat_1.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'ico_friendship_1', 'demo/general/ico_friendship_1.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'ico_piggy-bank_1', 'demo/general/ico_piggy-bank_1.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'home-mix', 'demo/general/home-mix.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'image_home_mix_1', 'demo/general/image_home_mix_1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'image_home_mix_2', 'demo/general/image_home_mix_2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'image_home_mix_3', 'demo/general/image_home_mix_3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'banner-search', 'demo/tour/banner-search.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'tour-1', 'demo/tour/tour-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'tour-2', 'demo/tour/tour-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'tour-3', 'demo/tour/tour-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'tour-4', 'demo/tour/tour-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'tour-5', 'demo/tour/tour-5.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 'tour-6', 'demo/tour/tour-6.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 'tour-7', 'demo/tour/tour-7.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 'tour-8', 'demo/tour/tour-8.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 'tour-9', 'demo/tour/tour-9.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 'tour-10', 'demo/tour/tour-10.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 'tour-11', 'demo/tour/tour-11.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 'tour-12', 'demo/tour/tour-12.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 'tour-13', 'demo/tour/tour-13.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 'tour-14', 'demo/tour/tour-14.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 'tour-15', 'demo/tour/tour-15.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 'tour-16', 'demo/tour/tour-16.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 'gallery-1', 'demo/tour/gallery-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 'gallery-2', 'demo/tour/gallery-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 'gallery-3', 'demo/tour/gallery-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 'gallery-4', 'demo/tour/gallery-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 'gallery-5', 'demo/tour/gallery-5.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 'gallery-6', 'demo/tour/gallery-6.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 'gallery-7', 'demo/tour/gallery-7.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, 'banner-tour-1', 'demo/tour/banner-detail/banner-tour-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, 'banner-tour-2', 'demo/tour/banner-detail/banner-tour-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, 'banner-tour-3', 'demo/tour/banner-detail/banner-tour-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, 'banner-tour-4', 'demo/tour/banner-detail/banner-tour-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, 'banner-tour-5', 'demo/tour/banner-detail/banner-tour-5.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, 'banner-tour-6', 'demo/tour/banner-detail/banner-tour-6.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, 'banner-tour-7', 'demo/tour/banner-detail/banner-tour-7.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, 'banner-tour-8', 'demo/tour/banner-detail/banner-tour-8.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, 'banner-tour-9', 'demo/tour/banner-detail/banner-tour-9.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, 'banner-tour-10', 'demo/tour/banner-detail/banner-tour-10.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, 'banner-tour-11', 'demo/tour/banner-detail/banner-tour-11.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, 'banner-tour-12', 'demo/tour/banner-detail/banner-tour-12.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, 'banner-tour-13', 'demo/tour/banner-detail/banner-tour-13.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, 'banner-tour-14', 'demo/tour/banner-detail/banner-tour-14.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, 'banner-tour-15', 'demo/tour/banner-detail/banner-tour-15.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, 'banner-tour-16', 'demo/tour/banner-detail/banner-tour-16.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, 'banner-tour-17', 'demo/tour/banner-detail/banner-tour-17.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, 'banner-search-space', 'demo/space/banner-search-space.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, 'banner-search-space-2', 'demo/space/banner-search-space-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, 'space-1', 'demo/space/space-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(64, 'space-2', 'demo/space/space-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, 'space-3', 'demo/space/space-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, 'space-4', 'demo/space/space-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(67, 'space-5', 'demo/space/space-5.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(68, 'space-6', 'demo/space/space-6.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(69, 'space-7', 'demo/space/space-7.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(70, 'space-8', 'demo/space/space-8.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(71, 'space-9', 'demo/space/space-9.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(72, 'space-10', 'demo/space/space-10.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(73, 'space-11', 'demo/space/space-11.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(74, 'space-12', 'demo/space/space-12.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(75, 'space-13', 'demo/space/space-13.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(76, 'space-gallery-1', 'demo/space/gallery/space-gallery-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(77, 'space-gallery-2', 'demo/space/gallery/space-gallery-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(78, 'space-gallery-3', 'demo/space/gallery/space-gallery-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(79, 'space-gallery-4', 'demo/space/gallery/space-gallery-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(80, 'space-gallery-5', 'demo/space/gallery/space-gallery-5.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(81, 'space-gallery-6', 'demo/space/gallery/space-gallery-6.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(82, 'space-gallery-7', 'demo/space/gallery/space-gallery-7.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(83, 'space-single-1', 'demo/space/space-single-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(84, 'space-single-2', 'demo/space/space-single-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(85, 'space-single-3', 'demo/space/space-single-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(86, 'icon-space-box-1', 'demo/space/featured-box/icon-space-box-1.png', NULL, 'image/png', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(87, 'icon-space-box-2', 'demo/space/featured-box/icon-space-box-2.png', NULL, 'image/png', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(88, 'icon-space-box-3', 'demo/space/featured-box/icon-space-box-3.png', NULL, 'image/png', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(89, 'icon-space-box-4', 'demo/space/featured-box/icon-space-box-4.png', NULL, 'image/png', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(90, 'icon-space-box-5', 'demo/space/featured-box/icon-space-box-5.png', NULL, 'image/png', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(91, 'icon-space-box-6', 'demo/space/featured-box/icon-space-box-6.png', NULL, 'image/png', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(92, 'banner-search-hotel', 'demo/hotel/banner-search-hotel.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(93, 'hotel-featured-1', 'demo/hotel/hotel-featured-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(94, 'hotel-featured-2', 'demo/hotel/hotel-featured-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(95, 'hotel-featured-3', 'demo/hotel/hotel-featured-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(96, 'hotel-featured-4', 'demo/hotel/hotel-featured-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(97, 'hotel-gallery-1', 'demo/hotel/gallery/hotel-gallery-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(98, 'hotel-gallery-2', 'demo/hotel/gallery/hotel-gallery-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(99, 'hotel-gallery-3', 'demo/hotel/gallery/hotel-gallery-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(100, 'hotel-gallery-4', 'demo/hotel/gallery/hotel-gallery-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(101, 'hotel-gallery-5', 'demo/hotel/gallery/hotel-gallery-5.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(102, 'hotel-gallery-6', 'demo/hotel/gallery/hotel-gallery-6.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(103, 'hotel-icon-1', 'demo/hotel/hotel-icon-1.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(104, 'hotel-icon-2', 'demo/hotel/hotel-icon-2.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(105, 'hotel-icon-3', 'demo/hotel/hotel-icon-3.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(106, 'location-1', 'demo/location/location-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(107, 'location-2', 'demo/location/location-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(108, 'location-3', 'demo/location/location-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(109, 'location-4', 'demo/location/location-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(110, 'location-5', 'demo/location/location-5.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(111, 'banner-location-1', 'demo/location/banner-detail/banner-location-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(112, 'trip-idea-1', 'demo/location/trip-idea/trip-idea-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(113, 'trip-idea-2', 'demo/location/trip-idea/trip-idea-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(114, 'news-1', 'demo/news/news-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(115, 'news-2', 'demo/news/news-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(116, 'news-3', 'demo/news/news-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(117, 'news-4', 'demo/news/news-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(118, 'news-5', 'demo/news/news-5.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(119, 'news-6', 'demo/news/news-6.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(120, 'news-7', 'demo/news/news-7.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(121, 'news-banner', 'demo/news/news-banner.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(122, 'banner-search-car', 'demo/car/banner-search-car.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(123, 'Convertibles', 'demo/car/terms/convertibles.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(124, 'Coupes', 'demo/car/terms/couple.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(125, 'Hatchbacks', 'demo/car/terms/hatchback.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(126, 'Minivans', 'demo/car/terms/minivans.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(127, 'Sedan', 'demo/car/terms/sedan.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(128, 'SUVs', 'demo/car/terms/suv.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(129, 'Trucks', 'demo/car/terms/trucks.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(130, 'Wagons', 'demo/car/terms/wagons.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(131, 'home-car-bg-1', 'demo/car/home-car-bg-1.png', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(132, 'number-1', 'demo/car/number-1.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(133, 'number-2', 'demo/car/number-2.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(134, 'number-3', 'demo/car/number-3.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(135, 'banner-car-single', 'demo/car/banner-single.jpg', NULL, 'image/jpg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(136, 'Airbag', 'demo/car/feature/Airbag.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(137, 'FM Radio', 'demo/car/feature/Radio.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(138, 'Sensor', 'demo/car/feature/Sensor.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(139, 'Speed Km', 'demo/car/feature/Speed.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(140, 'Steering Wheel', 'demo/car/feature/Steering.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(141, 'Power Windows', 'demo/car/feature/Windows.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(142, 'car-1', 'demo/car/car-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(143, 'car-2', 'demo/car/car-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(144, 'car-3', 'demo/car/car-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(145, 'car-4', 'demo/car/car-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(146, 'car-5', 'demo/car/car-5.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(147, 'car-6', 'demo/car/car-6.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(148, 'car-7', 'demo/car/car-7.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(149, 'car-8', 'demo/car/car-8.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(150, 'car-9', 'demo/car/car-9.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(151, 'car-10', 'demo/car/car-10.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(152, 'car-11', 'demo/car/car-11.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(153, 'car-12', 'demo/car/car-12.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(154, 'car-gallery-1', 'demo/car/gallery-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(155, 'car-gallery-2', 'demo/car/gallery-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(156, 'car-gallery-3', 'demo/car/gallery-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(157, 'car-gallery-4', 'demo/car/gallery-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(158, 'car-gallery-5', 'demo/car/gallery-5.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(159, 'car-gallery-6', 'demo/car/gallery-6.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(160, 'car-gallery-7', 'demo/car/gallery-7.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(161, 'banner-search-event', 'demo/event/banner-search.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(162, 'event-1', 'demo/event/event-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(163, 'event-2', 'demo/event/event-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(164, 'event-3', 'demo/event/event-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(165, 'event-4', 'demo/event/event-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(166, 'event-5', 'demo/event/event-5.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(167, 'event-6', 'demo/event/event-6.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(168, 'event-7', 'demo/event/event-7.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(169, 'event-8', 'demo/event/event-8.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(170, 'event-9', 'demo/event/event-9.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(171, 'event-10', 'demo/event/event-10.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(172, 'event-11', 'demo/event/event-11.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(173, 'event-12', 'demo/event/event-12.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(174, 'gallery-event-1', 'demo/event/gallery-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(175, 'gallery-event-2', 'demo/event/gallery-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(176, 'gallery-event-3', 'demo/event/gallery-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(177, 'gallery-event-4', 'demo/event/gallery-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(178, 'gallery-event-5', 'demo/event/gallery-5.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(179, 'gallery-event-6', 'demo/event/gallery-6.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(180, 'banner-event-1', 'demo/event/banner-detail/banner-event-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(181, 'banner-event-2', 'demo/event/banner-detail/banner-event-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(182, 'banner-event-3', 'demo/event/banner-detail/banner-event-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(183, 'icon_global', 'demo/general/icon_global.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(184, 'icon_global_white', 'demo/general/icon_global_white.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(185, 'icon_price', 'demo/general/icon_price.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(186, 'icon_price_white', 'demo/general/icon_price_white.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(187, 'icon_support', 'demo/general/icon_support.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(188, 'icon_support_white', 'demo/general/icon_support_white.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(189, 'box-tour-1', 'demo/tour/box-tour-1.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(190, 'box-tour-2', 'demo/tour/box-tour-2.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(191, 'box-tour-3', 'demo/tour/box-tour-3.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(192, 'box-tour-4', 'demo/tour/box-tour-4.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(193, 'banner-new-1', 'demo/general/banner-new-1.jpg', NULL, 'image/jpg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(194, 'banner-new-2', 'demo/general/banner-new-2.jpg', NULL, 'image/jpg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(195, 'call-to-action-bg-1', 'demo/general/call-to-action-bg-1.jpg', NULL, 'image/jpg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(196, 'call-to-action-bg-2', 'demo/general/call-to-action-bg-2.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(197, 'call-to-action-bg-3', 'demo/general/call-to-action-bg-3.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(198, 'customer-feedback', 'demo/general/customer-feedback.jpg', NULL, 'image/jpg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(199, 'customer-feedback-2', 'demo/general/customer-feedback-2.jpg', NULL, 'image/jpg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(200, 'logo-white', 'demo/general/logo_white.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(208, 'webpnet-resizeimage-removebg-preview', '0000/1/2021/08/10/webpnet-resizeimage-removebg-preview.png', '7536', 'image/png', 'png', 1, NULL, NULL, NULL, NULL, 148, 43, '2021-08-10 15:13:25', '2021-08-10 15:13:25'),
(209, 'download', '0000/1/2021/08/10/download.jpg', '5906', 'image/jpeg', 'jpg', 1, NULL, NULL, NULL, NULL, 225, 225, '2021-08-10 15:13:59', '2021-08-10 15:13:59');

-- --------------------------------------------------------

--
-- Struktur dari tabel `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_id` bigint(20) NOT NULL,
  `to_id` bigint(20) NOT NULL,
  `body` varchar(5000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_11_06_222923_create_transactions_table', 1),
(4, '2018_11_07_192923_create_transfers_table', 1),
(5, '2018_11_07_202152_update_transfers_table', 1),
(6, '2018_11_15_124230_create_wallets_table', 1),
(7, '2018_11_19_164609_update_transactions_table', 1),
(8, '2018_11_20_133759_add_fee_transfers_table', 1),
(9, '2018_11_22_131953_add_status_transfers_table', 1),
(10, '2018_11_22_133438_drop_refund_transfers_table', 1),
(11, '2019_03_13_174533_create_permission_tables', 1),
(12, '2019_03_17_114820_create_table_core_pages', 1),
(13, '2019_03_17_140539_create_media_files_table', 1),
(14, '2019_03_20_072502_create_bravo_tours', 1),
(15, '2019_03_20_081256_create_core_news_category_table', 1),
(16, '2019_03_27_081940_create_core_setting_table', 1),
(17, '2019_03_28_101009_create_bravo_booking_table', 1),
(18, '2019_03_28_165911_create_booking_meta_table', 1),
(19, '2019_03_29_093236_update_bookings_table', 1),
(20, '2019_04_01_045229_create_user_meta_table', 1),
(21, '2019_04_01_150630_create_menu_table', 1),
(22, '2019_04_02_150630_create_core_news_table', 1),
(23, '2019_04_03_073553_bravo_tour_category', 1),
(24, '2019_04_03_080159_bravo_location', 1),
(25, '2019_04_05_143248_create_core_templates_table', 1),
(26, '2019_04_18_152537_create_bravo_tours_meta_table', 1),
(27, '2019_05_07_085430_create_core_languages_table', 1),
(28, '2019_05_07_085442_create_core_translations_table', 1),
(29, '2019_05_13_111553_update_status_transfers_table', 1),
(30, '2019_05_17_074008_create_bravo_review', 1),
(31, '2019_05_17_074048_create_bravo_review_meta', 1),
(32, '2019_05_17_113042_create_tour_attrs_table', 1),
(33, '2019_05_21_084235_create_bravo_contact_table', 1),
(34, '2019_05_28_152845_create_core_subscribers_table', 1),
(35, '2019_06_17_142338_bravo_seo', 1),
(36, '2019_06_25_103755_add_exchange_status_transfers_table', 1),
(37, '2019_07_03_070406_update_from_1_0_to_1_1', 1),
(38, '2019_07_08_075436_create_core_vendor_plans', 1),
(39, '2019_07_08_083733_create_vendors_plan_payments', 1),
(40, '2019_07_11_083501_update_from_110_to_120', 1),
(41, '2019_07_29_184926_decimal_places_wallets_table', 1),
(42, '2019_07_30_072809_create_space_table', 1),
(43, '2019_07_30_072809_create_tour_dates_table', 1),
(44, '2019_08_05_031018_create_core_vendor_plan_meta_table', 1),
(45, '2019_08_09_163909_create_inbox_table', 1),
(46, '2019_08_16_094354_update_from_120_to_130', 1),
(47, '2019_08_20_162106_create_table_user_upgrade_requests', 1),
(48, '2019_09_13_070650_update_from_130_to_140', 1),
(49, '2019_09_20_072809_create_hotel_table', 1),
(50, '2019_09_22_192348_create_messages_table', 1),
(51, '2019_10_02_193759_add_discount_transfers_table', 1),
(52, '2019_10_16_211433_create_favorites_table', 1),
(53, '2019_10_18_223259_add_avatar_to_users', 1),
(54, '2019_10_20_211056_add_messenger_color_to_users', 1),
(55, '2019_10_22_000539_add_dark_mode_to_users', 1),
(56, '2019_10_22_151319_create_car_table', 1),
(57, '2019_10_22_151319_create_social_table', 1),
(58, '2019_10_25_214038_add_active_status_to_users', 1),
(59, '2019_11_05_092516_update_from_140_to_150', 1),
(60, '2019_11_18_085024_update_from_150_to_151', 1),
(61, '2020_03_09_102753_update_from_151_to_160', 1),
(62, '2020_04_02_150631_create_core_tags_table', 1),
(63, '2020_04_05_101016_create_event_table', 1),
(64, '2020_05_16_073120_update_from_160_to_170', 1),
(65, '2020_11_23_092238_create_notifications_table', 1),
(66, '2021_04_02_150632_create_core_tag_new_table', 1),
(67, '2021_04_20_102158_update_from_190_to_200', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('28c3d53a-c1b1-45dd-838a-6df27774153c', 'App\\Notifications\\AdminChannelServices', 'App\\User', 18, '{\"id\":\"28c3d53a-c1b1-45dd-838a-6df27774153c\",\"for_admin\":1,\"notification\":{\"id\":18,\"name\":\"Javore.com\",\"avatar\":\"https:\\/\\/www.nsm.mamakriau.com\\/images\\/avatar.png\",\"link\":\"https:\\/\\/www.nsm.mamakriau.com\\/admin\\/module\\/user\\/userUpgradeRequest\",\"type\":\"user_upgrade_request\",\"message\":\"Javore.com has requested to become a vendor\"}}', '2021-08-10 15:03:24', '2021-08-10 15:02:01', '2021-08-10 15:03:24'),
('35b9f038-6a66-47fb-b356-04981a549b8f', 'App\\Notifications\\PrivateChannelServices', 'App\\User', 18, '{\"id\":\"35b9f038-6a66-47fb-b356-04981a549b8f\",\"for_admin\":0,\"notification\":{\"id\":18,\"event\":\"VendorApproved\",\"to\":\"vendor\",\"name\":\"Javore.com\",\"avatar\":\"https:\\/\\/www.nsm.mamakriau.com\\/images\\/avatar.png\",\"link\":\"https:\\/\\/www.nsm.mamakriau.com\\/user\\/dashboard\",\"type\":\"user_upgrade_request\",\"message\":\"Your upgrade request has approved already\"}}', NULL, '2021-08-10 15:03:28', '2021-08-10 15:03:28');

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `date` date NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `total` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `status` enum('waiting','paid','delivered','cancel') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders_confirm`
--

CREATE TABLE `orders_confirm` (
  `id` int(11) NOT NULL,
  `id_orders` int(11) NOT NULL,
  `account_name` varchar(255) NOT NULL,
  `account_number` varchar(50) NOT NULL,
  `nominal` int(11) NOT NULL,
  `note` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders_detail`
--

CREATE TABLE `orders_detail` (
  `id` int(11) NOT NULL,
  `id_orders` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `qty` int(4) NOT NULL,
  `subtotal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `is_available` tinyint(1) NOT NULL DEFAULT 1,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `product`
--

INSERT INTO `product` (`id`, `id_category`, `slug`, `title`, `description`, `price`, `is_available`, `image`) VALUES
(1, 2, 'amd-ryzen-5-3400g-radeon-rx-vega-11-graphics-4-core-37-ghz-am4', 'AMD Ryzen 5 3400G Radeon RX Vega 11 Graphics 4-Core 3.7 GHz AM4', 'AMD Ryzen 5 3400G Radeon RX Vega 11 Graphics 4-Core 3.7 GHz AM4 AMD Ryzen 5 3400G Radeon RX Vega 11 Graphics 4-Core 3.7 GHz AM4 AMD Ryzen 5 3400G Radeon RX Vega 11 Graphics 4-Core 3.7 GHz AM4', 2450000, 1, 'amd-ryzen-5-3400g-radeon-rx-vega-11-graphics-4-core-37-ghz-am4-20200206120808.jpg'),
(2, 1, 'motherboard-asrock-b450m-steel-legend', 'Motherboard ASRock B450M Steel Legend', 'Motherboard ASRock B450M Steel Legend Motherboard ASRock B450M Steel Legend Motherboard ASRock B450M Steel Legend Motherboard ASRock B450M Steel Legend', 1600000, 1, 'motherboard-asrock-b450m-steel-legend-20200206120905.png'),
(3, 3, 'team-t-force-delta-rgb-ddr4-8gb-2xgb-3000mhz-pc24000-ram-memory', 'Team T-Force Delta RGB DDR4 8gb 2xgb 3000mhz PC24000 RAM Memory', 'Team T-Force Delta RGB DDR4 8gb 2xgb 3000mhz PC24000 RAM Memory Team T-Force Delta RGB DDR4 8gb 2xgb 3000mhz PC24000 RAM Memory Team T-Force Delta RGB DDR4 8gb 2xgb 3000mhz PC24000 RAM Memory', 800000, 1, 'team-t-force-delta-rgb-ddr4-8gb-2xgb-3000mhz-pc24000-ram-memory-20200206121043.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `social_forums`
--

CREATE TABLE `social_forums` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_image` bigint(20) DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `social_forums`
--

INSERT INTO `social_forums` (`id`, `name`, `content`, `slug`, `status`, `icon`, `icon_image`, `create_user`, `update_user`, `created_at`, `updated_at`) VALUES
(1, 'Solo Travel', NULL, 'solo-travel', 'publish', 'fa fa-cloud', NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(2, 'Road Trips', NULL, 'road-trips', 'publish', 'fa fa-bear', NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(3, 'Travel Gadgets and Gear', NULL, 'travel-gadgets-and-gear', 'publish', 'fa fa-gear', NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(4, 'Family Travel', NULL, 'family-travel', 'publish', 'fa fa-map-o', NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(5, 'Honeymoons and Romance', NULL, 'honeymoons-and-romance', 'publish', 'fa fa-heartbeat', NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(6, 'Outdoors', NULL, 'outdoors', 'publish', 'fa fa-paper-plane-o', NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35'),
(7, 'Traveling with Pets', NULL, 'traveling-with-pets', 'publish', 'fa fa-paw', NULL, NULL, NULL, '2021-08-10 07:39:35', '2021-08-10 07:39:35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `social_groups`
--

CREATE TABLE `social_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_image` bigint(20) DEFAULT NULL,
  `banner_image` bigint(20) DEFAULT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner_id` bigint(20) DEFAULT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `social_group_user`
--

CREATE TABLE `social_group_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `group_id` bigint(20) DEFAULT NULL,
  `role` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `social_posts`
--

CREATE TABLE `social_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `forum_id` bigint(20) DEFAULT NULL,
  `group_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `file_id` bigint(20) DEFAULT NULL,
  `file_ids` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish_date` datetime DEFAULT NULL,
  `comment_disabled_by` bigint(20) DEFAULT NULL,
  `privary` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `privacy` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `social_post_comments`
--

CREATE TABLE `social_post_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `file_id` bigint(20) DEFAULT NULL,
  `file_ids` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `social_user_follow`
--

CREATE TABLE `social_user_follow` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from_user` bigint(20) DEFAULT NULL,
  `to_user` bigint(20) DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','member') NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `role`, `is_active`, `image`) VALUES
(1, 'Admin', 'admin@mail.com', '$2y$10$MgoeVKkiyRaOu0ASMBGaf.7mOlLjfb96iLGvzyafh6/JkE6IWCYiK', 'admin', 1, NULL),
(2, 'Nashiruddien Sadid M', 'nsm180818@gmail.com', '$2y$10$srCXELoHIkzGTuP8a54kUuy2GGkpVLmfdDm2lRuNK6EM3WQa8o6dG', 'admin', 1, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active_status` tinyint(1) NOT NULL DEFAULT 0,
  `dark_mode` tinyint(1) NOT NULL DEFAULT 0,
  `messenger_color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#2180f3',
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'avatar.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` int(11) DEFAULT NULL,
  `last_login_at` datetime DEFAULT NULL,
  `avatar_id` bigint(20) DEFAULT NULL,
  `bio` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `vendor_commission_amount` int(11) DEFAULT NULL,
  `vendor_commission_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payment_gateway` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_guests` int(11) DEFAULT NULL,
  `locale` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verify_submit_status` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_verified` smallint(6) DEFAULT NULL,
  `user_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `first_name`, `last_name`, `email`, `active_status`, `dark_mode`, `messenger_color`, `avatar`, `email_verified_at`, `password`, `address`, `address2`, `phone`, `birthday`, `city`, `state`, `country`, `zip_code`, `last_login_at`, `avatar_id`, `bio`, `status`, `create_user`, `update_user`, `vendor_commission_amount`, `vendor_commission_type`, `deleted_at`, `remember_token`, `created_at`, `updated_at`, `payment_gateway`, `total_guests`, `locale`, `business_name`, `verify_submit_status`, `is_verified`, `user_name`) VALUES
(1, 'System Admin', 'System', 'Admin', 'admin@dev.com', 0, 0, '#2180f3', 'avatar.png', '2021-08-10 07:39:32', '$2y$10$WlegWkH557ENQXIMZoPqEe846ELNiDBTbY5K0dyH5jvCg6NNT/dEK', NULL, NULL, '112 666 888', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, NULL, NULL, 'DPoZKwOSiHGEzNR7vjbxruBkLqSXFqlMLvTf1NtK5jrFrFD2JDeFdQ4whVDT', '2021-08-10 07:39:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, '', 'Vendor', '01', 'vendor1@dev.com', 0, 0, '#2180f3', 'avatar.png', '2021-08-10 07:39:32', '$2y$10$uiQlai9mlbj4e0zAE5GCgOSBg3wyAw78EyVUTJKpOd8Zf8I8afyvC', NULL, NULL, '112 666 888', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-10 07:39:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, '', 'Customer', '01', 'customer1@dev.com', 0, 0, '#2180f3', 'avatar.png', '2021-08-10 07:39:32', '$2y$10$BbH/2i3/oI..tm5W/T8t7Ou/YpYj5/jXn0s.8eC8zYuMLau0EigiK', NULL, NULL, '112 666 888', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-10 07:39:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, '', 'Elise', 'Aarohi', 'Aarohi@dev.com', 0, 0, '#2180f3', 'avatar.png', '2021-08-10 07:39:32', '$2y$10$lZ3bVFe24muWgWLXC7FSKOs4g32eFxafZHVLRfDUdGi.zDL/dIZKW', NULL, NULL, '112 666 888', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-10 07:39:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, '', 'Kaytlyn', 'Alvapriya', 'Alvapriya@dev.com', 0, 0, '#2180f3', 'avatar.png', '2021-08-10 07:39:32', '$2y$10$dsZrV8CX1Se2FmW3gWse4OBf/5lZtMmtciIeMGKLyi/TsesyK8m7S', NULL, NULL, '112 666 888', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-10 07:39:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, '', 'Lynne', 'Victoria', 'Victoria@dev.com', 0, 0, '#2180f3', 'avatar.png', '2021-08-10 07:39:32', '$2y$10$mDT2YPAqUnCUWY34khb6yudrkRWaqIOLFKrpGHXFNFutdhRCliIhq', NULL, NULL, '112 666 888', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-10 07:39:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, '', 'Do', 'Quan', 'quandq@gmail.com', 0, 0, '#2180f3', 'avatar.png', '2021-08-10 07:39:32', '$2y$10$omkTDsLvHYPyXspJvqPRGufG4pltitnHkeYn80CGHRjVO4Fm7XQwK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'publish', NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-10 07:39:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, '', 'William', 'Diana', 'Diana@dev.com', 0, 0, '#2180f3', 'avatar.png', NULL, '$2y$10$N/3XPaQcfnENTpKMVVvXmOgCRPOn6C2xIskvBeKIjA9VHdtOOvMBm', NULL, NULL, '888 999 777', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-10 07:39:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, '', 'Sarah', 'Violet', 'Violet@dev.com', 0, 0, '#2180f3', 'avatar.png', NULL, '$2y$10$jztSRK5kFcJSUfniC4FFWe8rp9UjQh47dtIWX3N/mJyd0//PSjFIa', NULL, NULL, '888 999 777', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-10 07:39:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, '', 'Paul', 'Amora', 'Amora@dev.com', 0, 0, '#2180f3', 'avatar.png', NULL, '$2y$10$kO0ZfiyOr9K2W7e5tiV.B.CtL582tkZarmPDJhtQ0rI58.XVrw6xW', NULL, NULL, '888 999 777', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-10 07:39:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, '', 'Richard', 'Davina', 'Davina@dev.com', 0, 0, '#2180f3', 'avatar.png', NULL, '$2y$10$JJfISFFxnLQc6CN/Gtg4o.tEuSNpctngnPrj6MyHVT1n4ntjMGTU2', NULL, NULL, '888 999 777', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-10 07:39:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, '', 'Shushi', 'Yashashree', 'Yashashree@dev.com', 0, 0, '#2180f3', 'avatar.png', NULL, '$2y$10$Hh0o77E6eJeicGB02FpTeO7QKJ1vVEKKVRzMRNqKunHKfFW5pCLsa', NULL, NULL, '888 999 777', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-10 07:39:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, '', 'Anne', 'Nami', 'Nami@dev.com', 0, 0, '#2180f3', 'avatar.png', NULL, '$2y$10$pW8yAAGylIKavZMsV4NgzOUP.tSRxEFqlEhZqgKcSDD4maPnwFnJe', NULL, NULL, '888 999 777', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-10 07:39:33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, '', 'Bush', 'Elise', 'Elise@dev.com', 0, 0, '#2180f3', 'avatar.png', NULL, '$2y$10$.72VG4fmqlSmBDCRJy3ozuD/KEJj2GERa0ANTfX.f2KyEMKe4/x0G', NULL, NULL, '888 999 777', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-10 07:39:33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, '', 'Elizabeth', 'Norah', 'Norah@dev.com', 0, 0, '#2180f3', 'avatar.png', NULL, '$2y$10$4JjP/frs.W70UlTBLRGjU.r2JUvKH2Fewq3daWe4tHwi.vnSyYhOK', NULL, NULL, '888 999 777', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-10 07:39:33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, '', 'James', 'Alia', 'Alia@dev.com', 0, 0, '#2180f3', 'avatar.png', NULL, '$2y$10$DBsWNhij7X3GShdjcWAX3.FcSMiuK5H1rCBh7DNefdWExPic8pJwW', NULL, NULL, '888 999 777', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-10 07:39:33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, '', 'John', 'Dakshi', 'Dakshi@dev.com', 0, 0, '#2180f3', 'avatar.png', NULL, '$2y$10$fgkQuBUjly3oHQ3cgy7pluGsiRlLIc2BjEVf8hgXvkfDguokqoX/e', NULL, NULL, '888 999 777', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-10 07:39:33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'Nashiruddien Mustaqim', 'Nashiruddien', 'Mustaqim', 'diditsadidnsm180818@gmail.com', 0, 0, '#2180f3', 'avatar.png', NULL, '$2y$10$K.JmQpB5sXoQG3J5xkPViOstmSA8a17MZC1fI.Tbl/Q1g0BAKuLnG', NULL, NULL, '+6285692650482', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'publish', NULL, NULL, NULL, NULL, NULL, 'YMfWLlj4f8wJPx4NZGd3HHzfzn0lk46obBVImUHVNt00weZZf3hL35npM7g3', '2021-08-10 15:02:01', '2021-08-10 15:02:01', NULL, NULL, NULL, 'Javore.com', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_meta`
--

CREATE TABLE `user_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `val` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_transactions`
--

CREATE TABLE `user_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payable_id` bigint(20) UNSIGNED NOT NULL,
  `wallet_id` bigint(20) UNSIGNED DEFAULT NULL,
  `type` enum('deposit','withdraw') COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(64,0) NOT NULL,
  `confirmed` tinyint(1) NOT NULL,
  `meta` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `payment_id` bigint(20) DEFAULT NULL,
  `booking_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_transfers`
--

CREATE TABLE `user_transfers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_id` bigint(20) UNSIGNED NOT NULL,
  `to_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `to_id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('exchange','transfer','paid','refund','gift') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'transfer',
  `status_last` enum('exchange','transfer','paid','refund','gift') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deposit_id` bigint(20) UNSIGNED NOT NULL,
  `withdraw_id` bigint(20) UNSIGNED NOT NULL,
  `discount` decimal(64,0) NOT NULL DEFAULT 0,
  `fee` decimal(64,0) NOT NULL DEFAULT 0,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_upgrade_request`
--

CREATE TABLE `user_upgrade_request` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `role_request` int(11) DEFAULT NULL,
  `approved_time` datetime DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approved_by` int(11) DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `user_upgrade_request`
--

INSERT INTO `user_upgrade_request` (`id`, `user_id`, `role_request`, `approved_time`, `status`, `approved_by`, `create_user`, `update_user`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 18, 1, '2021-08-10 22:03:28', 'approved', 1, 1, NULL, NULL, '2021-08-10 15:02:01', '2021-08-10 15:03:28');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_wallets`
--

CREATE TABLE `user_wallets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `holder_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `holder_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `balance` decimal(64,0) NOT NULL DEFAULT 0,
  `decimal_places` smallint(6) NOT NULL DEFAULT 2,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `user_wallets`
--

INSERT INTO `user_wallets` (`id`, `holder_type`, `holder_id`, `name`, `slug`, `description`, `balance`, `decimal_places`, `created_at`, `updated_at`, `create_user`, `update_user`) VALUES
(1, 'App\\User', 1, 'Default Wallet', 'default', NULL, 0, 2, '2021-08-10 07:41:05', '2021-08-10 07:41:05', NULL, NULL),
(2, 'App\\User', 18, 'Default Wallet', 'default', NULL, 0, 2, '2021-08-10 15:02:07', '2021-08-10 15:02:07', NULL, NULL),
(3, 'App\\User', 17, 'Default Wallet', 'default', NULL, 0, 2, '2021-08-10 15:03:50', '2021-08-10 15:03:50', NULL, NULL),
(4, 'App\\User', 16, 'Default Wallet', 'default', NULL, 0, 2, '2021-08-10 15:03:50', '2021-08-10 15:03:50', NULL, NULL),
(5, 'App\\User', 15, 'Default Wallet', 'default', NULL, 0, 2, '2021-08-10 15:03:50', '2021-08-10 15:03:50', NULL, NULL),
(6, 'App\\User', 14, 'Default Wallet', 'default', NULL, 0, 2, '2021-08-10 15:03:50', '2021-08-10 15:03:50', NULL, NULL),
(7, 'App\\User', 13, 'Default Wallet', 'default', NULL, 0, 2, '2021-08-10 15:03:50', '2021-08-10 15:03:50', NULL, NULL),
(8, 'App\\User', 12, 'Default Wallet', 'default', NULL, 0, 2, '2021-08-10 15:03:50', '2021-08-10 15:03:50', NULL, NULL),
(9, 'App\\User', 11, 'Default Wallet', 'default', NULL, 0, 2, '2021-08-10 15:03:50', '2021-08-10 15:03:50', NULL, NULL),
(10, 'App\\User', 10, 'Default Wallet', 'default', NULL, 0, 2, '2021-08-10 15:03:50', '2021-08-10 15:03:50', NULL, NULL),
(11, 'App\\User', 9, 'Default Wallet', 'default', NULL, 0, 2, '2021-08-10 15:03:50', '2021-08-10 15:03:50', NULL, NULL),
(12, 'App\\User', 8, 'Default Wallet', 'default', NULL, 0, 2, '2021-08-10 15:03:50', '2021-08-10 15:03:50', NULL, NULL),
(13, 'App\\User', 7, 'Default Wallet', 'default', NULL, 0, 2, '2021-08-10 15:03:50', '2021-08-10 15:03:50', NULL, NULL),
(14, 'App\\User', 6, 'Default Wallet', 'default', NULL, 0, 2, '2021-08-10 15:03:50', '2021-08-10 15:03:50', NULL, NULL),
(15, 'App\\User', 5, 'Default Wallet', 'default', NULL, 0, 2, '2021-08-10 15:03:50', '2021-08-10 15:03:50', NULL, NULL),
(16, 'App\\User', 4, 'Default Wallet', 'default', NULL, 0, 2, '2021-08-10 15:03:50', '2021-08-10 15:03:50', NULL, NULL),
(17, 'App\\User', 3, 'Default Wallet', 'default', NULL, 0, 2, '2021-08-10 15:03:50', '2021-08-10 15:03:50', NULL, NULL),
(18, 'App\\User', 2, 'Default Wallet', 'default', NULL, 0, 2, '2021-08-10 15:03:50', '2021-08-10 15:03:50', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_wishlist`
--

CREATE TABLE `user_wishlist` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `object_id` int(11) DEFAULT NULL,
  `object_model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `vendors_plan_payments`
--

CREATE TABLE `vendors_plan_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `payment_gateway` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `free_trial` int(11) NOT NULL,
  `price_per` enum('onetime','per_time') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'onetime',
  `price_unit` enum('day','month','year') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'day',
  `status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `bravo_attrs`
--
ALTER TABLE `bravo_attrs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `bravo_attrs_translations`
--
ALTER TABLE `bravo_attrs_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bravo_attrs_translations_origin_id_locale_unique` (`origin_id`,`locale`);

--
-- Indeks untuk tabel `bravo_bookings`
--
ALTER TABLE `bravo_bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `bravo_booking_meta`
--
ALTER TABLE `bravo_booking_meta`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `bravo_booking_payments`
--
ALTER TABLE `bravo_booking_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `bravo_booking_time_slots`
--
ALTER TABLE `bravo_booking_time_slots`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `bravo_cars`
--
ALTER TABLE `bravo_cars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bravo_cars_slug_index` (`slug`);

--
-- Indeks untuk tabel `bravo_car_dates`
--
ALTER TABLE `bravo_car_dates`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `bravo_car_term`
--
ALTER TABLE `bravo_car_term`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `bravo_car_translations`
--
ALTER TABLE `bravo_car_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bravo_car_translations_locale_index` (`locale`);

--
-- Indeks untuk tabel `bravo_contact`
--
ALTER TABLE `bravo_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `bravo_enquiries`
--
ALTER TABLE `bravo_enquiries`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `bravo_events`
--
ALTER TABLE `bravo_events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bravo_events_slug_index` (`slug`);

--
-- Indeks untuk tabel `bravo_event_dates`
--
ALTER TABLE `bravo_event_dates`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `bravo_event_term`
--
ALTER TABLE `bravo_event_term`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `bravo_event_translations`
--
ALTER TABLE `bravo_event_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bravo_event_translations_locale_index` (`locale`);

--
-- Indeks untuk tabel `bravo_hotels`
--
ALTER TABLE `bravo_hotels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bravo_hotels_slug_index` (`slug`);

--
-- Indeks untuk tabel `bravo_hotel_rooms`
--
ALTER TABLE `bravo_hotel_rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `bravo_hotel_room_bookings`
--
ALTER TABLE `bravo_hotel_room_bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `bravo_hotel_room_dates`
--
ALTER TABLE `bravo_hotel_room_dates`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `bravo_hotel_room_term`
--
ALTER TABLE `bravo_hotel_room_term`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `bravo_hotel_room_translations`
--
ALTER TABLE `bravo_hotel_room_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bravo_hotel_room_translations_locale_index` (`locale`);

--
-- Indeks untuk tabel `bravo_hotel_term`
--
ALTER TABLE `bravo_hotel_term`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `bravo_hotel_translations`
--
ALTER TABLE `bravo_hotel_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bravo_hotel_translations_locale_index` (`locale`);

--
-- Indeks untuk tabel `bravo_locations`
--
ALTER TABLE `bravo_locations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bravo_locations__lft__rgt_parent_id_index` (`_lft`,`_rgt`,`parent_id`);

--
-- Indeks untuk tabel `bravo_location_translations`
--
ALTER TABLE `bravo_location_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bravo_location_translations_origin_id_locale_unique` (`origin_id`,`locale`);

--
-- Indeks untuk tabel `bravo_payouts`
--
ALTER TABLE `bravo_payouts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `bravo_review`
--
ALTER TABLE `bravo_review`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `bravo_review_meta`
--
ALTER TABLE `bravo_review_meta`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `bravo_seo`
--
ALTER TABLE `bravo_seo`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `bravo_services`
--
ALTER TABLE `bravo_services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bravo_services_slug_index` (`slug`);

--
-- Indeks untuk tabel `bravo_service_translations`
--
ALTER TABLE `bravo_service_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bravo_service_translations_origin_id_locale_unique` (`origin_id`,`locale`);

--
-- Indeks untuk tabel `bravo_spaces`
--
ALTER TABLE `bravo_spaces`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bravo_spaces_slug_index` (`slug`);

--
-- Indeks untuk tabel `bravo_space_dates`
--
ALTER TABLE `bravo_space_dates`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `bravo_space_term`
--
ALTER TABLE `bravo_space_term`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `bravo_space_translations`
--
ALTER TABLE `bravo_space_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bravo_space_translations_locale_index` (`locale`);

--
-- Indeks untuk tabel `bravo_terms`
--
ALTER TABLE `bravo_terms`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `bravo_terms_translations`
--
ALTER TABLE `bravo_terms_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bravo_terms_translations_origin_id_locale_unique` (`origin_id`,`locale`);

--
-- Indeks untuk tabel `bravo_tours`
--
ALTER TABLE `bravo_tours`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bravo_tours_slug_index` (`slug`);

--
-- Indeks untuk tabel `bravo_tour_category`
--
ALTER TABLE `bravo_tour_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bravo_tour_category__lft__rgt_parent_id_index` (`_lft`,`_rgt`,`parent_id`);

--
-- Indeks untuk tabel `bravo_tour_category_translations`
--
ALTER TABLE `bravo_tour_category_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bravo_tour_category_translations_origin_id_locale_unique` (`origin_id`,`locale`);

--
-- Indeks untuk tabel `bravo_tour_dates`
--
ALTER TABLE `bravo_tour_dates`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `bravo_tour_meta`
--
ALTER TABLE `bravo_tour_meta`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `bravo_tour_term`
--
ALTER TABLE `bravo_tour_term`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `bravo_tour_translations`
--
ALTER TABLE `bravo_tour_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bravo_tour_translations_origin_id_locale_unique` (`origin_id`,`locale`),
  ADD KEY `bravo_tour_translations_slug_index` (`slug`);

--
-- Indeks untuk tabel `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `core_inbox`
--
ALTER TABLE `core_inbox`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `core_inbox_messages`
--
ALTER TABLE `core_inbox_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `core_languages`
--
ALTER TABLE `core_languages`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `core_menus`
--
ALTER TABLE `core_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `core_menu_translations`
--
ALTER TABLE `core_menu_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_menu_translations_locale_index` (`locale`);

--
-- Indeks untuk tabel `core_model_has_permissions`
--
ALTER TABLE `core_model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `core_model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `core_model_has_roles`
--
ALTER TABLE `core_model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `core_model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `core_news`
--
ALTER TABLE `core_news`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `core_news_category`
--
ALTER TABLE `core_news_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_news_category__lft__rgt_parent_id_index` (`_lft`,`_rgt`,`parent_id`);

--
-- Indeks untuk tabel `core_news_category_translations`
--
ALTER TABLE `core_news_category_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_news_category_translations_locale_index` (`locale`);

--
-- Indeks untuk tabel `core_news_tag`
--
ALTER TABLE `core_news_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `core_news_translations`
--
ALTER TABLE `core_news_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_news_translations_locale_index` (`locale`);

--
-- Indeks untuk tabel `core_notifications`
--
ALTER TABLE `core_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `core_pages`
--
ALTER TABLE `core_pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_pages_slug_index` (`slug`);

--
-- Indeks untuk tabel `core_page_translations`
--
ALTER TABLE `core_page_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `core_page_translations_origin_id_locale_unique` (`origin_id`,`locale`),
  ADD KEY `core_page_translations_locale_index` (`locale`);

--
-- Indeks untuk tabel `core_permissions`
--
ALTER TABLE `core_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `core_roles`
--
ALTER TABLE `core_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `core_role_has_permissions`
--
ALTER TABLE `core_role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `core_role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indeks untuk tabel `core_settings`
--
ALTER TABLE `core_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `core_subscribers`
--
ALTER TABLE `core_subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `core_tags`
--
ALTER TABLE `core_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `core_tag_translations`
--
ALTER TABLE `core_tag_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_tag_translations_locale_index` (`locale`);

--
-- Indeks untuk tabel `core_templates`
--
ALTER TABLE `core_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `core_template_translations`
--
ALTER TABLE `core_template_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_template_translations_locale_index` (`locale`);

--
-- Indeks untuk tabel `core_translations`
--
ALTER TABLE `core_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `core_vendor_plans`
--
ALTER TABLE `core_vendor_plans`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `core_vendor_plan_meta`
--
ALTER TABLE `core_vendor_plan_meta`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `expertise`
--
ALTER TABLE `expertise`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `location_category`
--
ALTER TABLE `location_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `location_category__lft__rgt_parent_id_index` (`_lft`,`_rgt`,`parent_id`);

--
-- Indeks untuk tabel `location_category_translations`
--
ALTER TABLE `location_category_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `location_category_translations_origin_id_locale_unique` (`origin_id`,`locale`);

--
-- Indeks untuk tabel `media_files`
--
ALTER TABLE `media_files`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indeks untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `orders_confirm`
--
ALTER TABLE `orders_confirm`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `orders_detail`
--
ALTER TABLE `orders_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `social_forums`
--
ALTER TABLE `social_forums`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `social_groups`
--
ALTER TABLE `social_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `social_group_user`
--
ALTER TABLE `social_group_user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `social_posts`
--
ALTER TABLE `social_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `social_post_comments`
--
ALTER TABLE `social_post_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `social_user_follow`
--
ALTER TABLE `social_user_follow`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_user_name_unique` (`user_name`);

--
-- Indeks untuk tabel `user_meta`
--
ALTER TABLE `user_meta`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_transactions`
--
ALTER TABLE `user_transactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_transactions_uuid_unique` (`uuid`),
  ADD KEY `user_transactions_payable_type_payable_id_index` (`payable_type`,`payable_id`),
  ADD KEY `payable_type_ind` (`payable_type`,`payable_id`,`type`),
  ADD KEY `payable_confirmed_ind` (`payable_type`,`payable_id`,`confirmed`),
  ADD KEY `payable_type_confirmed_ind` (`payable_type`,`payable_id`,`type`,`confirmed`),
  ADD KEY `user_transactions_type_index` (`type`),
  ADD KEY `user_transactions_wallet_id_foreign` (`wallet_id`);

--
-- Indeks untuk tabel `user_transfers`
--
ALTER TABLE `user_transfers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_transfers_uuid_unique` (`uuid`),
  ADD KEY `user_transfers_from_type_from_id_index` (`from_type`,`from_id`),
  ADD KEY `user_transfers_to_type_to_id_index` (`to_type`,`to_id`),
  ADD KEY `user_transfers_deposit_id_foreign` (`deposit_id`),
  ADD KEY `user_transfers_withdraw_id_foreign` (`withdraw_id`);

--
-- Indeks untuk tabel `user_upgrade_request`
--
ALTER TABLE `user_upgrade_request`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_wallets`
--
ALTER TABLE `user_wallets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_wallets_holder_type_holder_id_slug_unique` (`holder_type`,`holder_id`,`slug`),
  ADD KEY `user_wallets_holder_type_holder_id_index` (`holder_type`,`holder_id`),
  ADD KEY `user_wallets_slug_index` (`slug`);

--
-- Indeks untuk tabel `user_wishlist`
--
ALTER TABLE `user_wishlist`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `vendors_plan_payments`
--
ALTER TABLE `vendors_plan_payments`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `bravo_attrs`
--
ALTER TABLE `bravo_attrs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `bravo_attrs_translations`
--
ALTER TABLE `bravo_attrs_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `bravo_bookings`
--
ALTER TABLE `bravo_bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `bravo_booking_meta`
--
ALTER TABLE `bravo_booking_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `bravo_booking_payments`
--
ALTER TABLE `bravo_booking_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `bravo_booking_time_slots`
--
ALTER TABLE `bravo_booking_time_slots`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `bravo_cars`
--
ALTER TABLE `bravo_cars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `bravo_car_dates`
--
ALTER TABLE `bravo_car_dates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `bravo_car_term`
--
ALTER TABLE `bravo_car_term`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT untuk tabel `bravo_car_translations`
--
ALTER TABLE `bravo_car_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `bravo_contact`
--
ALTER TABLE `bravo_contact`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `bravo_enquiries`
--
ALTER TABLE `bravo_enquiries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `bravo_events`
--
ALTER TABLE `bravo_events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `bravo_event_dates`
--
ALTER TABLE `bravo_event_dates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `bravo_event_term`
--
ALTER TABLE `bravo_event_term`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT untuk tabel `bravo_event_translations`
--
ALTER TABLE `bravo_event_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `bravo_hotels`
--
ALTER TABLE `bravo_hotels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `bravo_hotel_rooms`
--
ALTER TABLE `bravo_hotel_rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT untuk tabel `bravo_hotel_room_bookings`
--
ALTER TABLE `bravo_hotel_room_bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `bravo_hotel_room_dates`
--
ALTER TABLE `bravo_hotel_room_dates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `bravo_hotel_room_term`
--
ALTER TABLE `bravo_hotel_room_term`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;

--
-- AUTO_INCREMENT untuk tabel `bravo_hotel_room_translations`
--
ALTER TABLE `bravo_hotel_room_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `bravo_hotel_term`
--
ALTER TABLE `bravo_hotel_term`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT untuk tabel `bravo_hotel_translations`
--
ALTER TABLE `bravo_hotel_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `bravo_locations`
--
ALTER TABLE `bravo_locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `bravo_location_translations`
--
ALTER TABLE `bravo_location_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `bravo_payouts`
--
ALTER TABLE `bravo_payouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `bravo_review`
--
ALTER TABLE `bravo_review`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT untuk tabel `bravo_review_meta`
--
ALTER TABLE `bravo_review_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1001;

--
-- AUTO_INCREMENT untuk tabel `bravo_seo`
--
ALTER TABLE `bravo_seo`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `bravo_services`
--
ALTER TABLE `bravo_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `bravo_service_translations`
--
ALTER TABLE `bravo_service_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `bravo_spaces`
--
ALTER TABLE `bravo_spaces`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `bravo_space_dates`
--
ALTER TABLE `bravo_space_dates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `bravo_space_term`
--
ALTER TABLE `bravo_space_term`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT untuk tabel `bravo_space_translations`
--
ALTER TABLE `bravo_space_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `bravo_terms`
--
ALTER TABLE `bravo_terms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT untuk tabel `bravo_terms_translations`
--
ALTER TABLE `bravo_terms_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `bravo_tours`
--
ALTER TABLE `bravo_tours`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `bravo_tour_category`
--
ALTER TABLE `bravo_tour_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `bravo_tour_category_translations`
--
ALTER TABLE `bravo_tour_category_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `bravo_tour_dates`
--
ALTER TABLE `bravo_tour_dates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `bravo_tour_meta`
--
ALTER TABLE `bravo_tour_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `bravo_tour_term`
--
ALTER TABLE `bravo_tour_term`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT untuk tabel `bravo_tour_translations`
--
ALTER TABLE `bravo_tour_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `core_inbox`
--
ALTER TABLE `core_inbox`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `core_inbox_messages`
--
ALTER TABLE `core_inbox_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `core_languages`
--
ALTER TABLE `core_languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `core_menus`
--
ALTER TABLE `core_menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `core_menu_translations`
--
ALTER TABLE `core_menu_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `core_news`
--
ALTER TABLE `core_news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `core_news_category`
--
ALTER TABLE `core_news_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `core_news_category_translations`
--
ALTER TABLE `core_news_category_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `core_news_tag`
--
ALTER TABLE `core_news_tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `core_news_translations`
--
ALTER TABLE `core_news_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `core_notifications`
--
ALTER TABLE `core_notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `core_pages`
--
ALTER TABLE `core_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `core_page_translations`
--
ALTER TABLE `core_page_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `core_permissions`
--
ALTER TABLE `core_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT untuk tabel `core_roles`
--
ALTER TABLE `core_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `core_settings`
--
ALTER TABLE `core_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173;

--
-- AUTO_INCREMENT untuk tabel `core_subscribers`
--
ALTER TABLE `core_subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `core_tags`
--
ALTER TABLE `core_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `core_tag_translations`
--
ALTER TABLE `core_tag_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `core_templates`
--
ALTER TABLE `core_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `core_template_translations`
--
ALTER TABLE `core_template_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `core_translations`
--
ALTER TABLE `core_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `core_vendor_plans`
--
ALTER TABLE `core_vendor_plans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `core_vendor_plan_meta`
--
ALTER TABLE `core_vendor_plan_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `expertise`
--
ALTER TABLE `expertise`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `location_category`
--
ALTER TABLE `location_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `location_category_translations`
--
ALTER TABLE `location_category_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `media_files`
--
ALTER TABLE `media_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=210;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT untuk tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `orders_confirm`
--
ALTER TABLE `orders_confirm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `orders_detail`
--
ALTER TABLE `orders_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `social_forums`
--
ALTER TABLE `social_forums`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `social_groups`
--
ALTER TABLE `social_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `social_group_user`
--
ALTER TABLE `social_group_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `social_posts`
--
ALTER TABLE `social_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `social_post_comments`
--
ALTER TABLE `social_post_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `social_user_follow`
--
ALTER TABLE `social_user_follow`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `user_meta`
--
ALTER TABLE `user_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `user_transactions`
--
ALTER TABLE `user_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `user_transfers`
--
ALTER TABLE `user_transfers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `user_upgrade_request`
--
ALTER TABLE `user_upgrade_request`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `user_wallets`
--
ALTER TABLE `user_wallets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `user_wishlist`
--
ALTER TABLE `user_wishlist`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `vendors_plan_payments`
--
ALTER TABLE `vendors_plan_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `core_model_has_permissions`
--
ALTER TABLE `core_model_has_permissions`
  ADD CONSTRAINT `core_model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `core_permissions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `core_model_has_roles`
--
ALTER TABLE `core_model_has_roles`
  ADD CONSTRAINT `core_model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `core_roles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `core_role_has_permissions`
--
ALTER TABLE `core_role_has_permissions`
  ADD CONSTRAINT `core_role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `core_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `core_role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `core_roles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `user_transactions`
--
ALTER TABLE `user_transactions`
  ADD CONSTRAINT `user_transactions_wallet_id_foreign` FOREIGN KEY (`wallet_id`) REFERENCES `user_wallets` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `user_transfers`
--
ALTER TABLE `user_transfers`
  ADD CONSTRAINT `user_transfers_deposit_id_foreign` FOREIGN KEY (`deposit_id`) REFERENCES `user_transactions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_transfers_withdraw_id_foreign` FOREIGN KEY (`withdraw_id`) REFERENCES `user_transactions` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
