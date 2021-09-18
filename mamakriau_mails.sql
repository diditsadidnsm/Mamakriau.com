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
-- Database: `mamakriau_mails`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `mama_eav_attributes_bigint`
--

CREATE TABLE `mama_eav_attributes_bigint` (
  `id` bigint(64) UNSIGNED NOT NULL,
  `id_entity` bigint(64) UNSIGNED DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `value` bigint(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mama_eav_attributes_bool`
--

CREATE TABLE `mama_eav_attributes_bool` (
  `id` bigint(64) UNSIGNED NOT NULL,
  `id_entity` bigint(64) UNSIGNED DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `value` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `mama_eav_attributes_bool`
--

INSERT INTO `mama_eav_attributes_bool` (`id`, `id_entity`, `name`, `value`) VALUES
(1, 2, 'IsDisabled', 0),
(3, 3, 'IncomingUseSsl', 1),
(4, 3, 'OutgoingUseSsl', 1),
(5, 3, 'EnableSieve', 0),
(6, 3, 'EnableThreading', 1),
(7, 3, 'UseFullEmailAddressAsLogin', 1),
(8, 3, 'SetExternalAccessServers', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mama_eav_attributes_datetime`
--

CREATE TABLE `mama_eav_attributes_datetime` (
  `id` bigint(64) UNSIGNED NOT NULL,
  `id_entity` bigint(64) UNSIGNED DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `value` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mama_eav_attributes_double`
--

CREATE TABLE `mama_eav_attributes_double` (
  `id` bigint(64) UNSIGNED NOT NULL,
  `id_entity` bigint(64) UNSIGNED DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `value` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mama_eav_attributes_int`
--

CREATE TABLE `mama_eav_attributes_int` (
  `id` bigint(64) UNSIGNED NOT NULL,
  `id_entity` bigint(64) UNSIGNED DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `value` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `mama_eav_attributes_int`
--

INSERT INTO `mama_eav_attributes_int` (`id`, `id_entity`, `name`, `value`) VALUES
(1, 2, 'IdChannel', 1),
(3, 3, 'TenantId', 0),
(4, 3, 'IncomingPort', 993),
(5, 3, 'OutgoingPort', 465),
(6, 3, 'SievePort', 4190),
(7, 4, 'ErrorLoginsCount', 10),
(8, 4, 'Time', 1613375877);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mama_eav_attributes_mediumblob`
--

CREATE TABLE `mama_eav_attributes_mediumblob` (
  `id` bigint(64) UNSIGNED NOT NULL,
  `id_entity` bigint(64) UNSIGNED DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `value` mediumblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mama_eav_attributes_string`
--

CREATE TABLE `mama_eav_attributes_string` (
  `id` bigint(64) UNSIGNED NOT NULL,
  `id_entity` bigint(64) UNSIGNED DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `mama_eav_attributes_string`
--

INSERT INTO `mama_eav_attributes_string` (`id`, `id_entity`, `name`, `value`) VALUES
(1, 1, 'Login', 'Default'),
(2, 1, 'Password', '239ac32f4a8f9102048daa4353b8f50a'),
(3, 2, 'Name', 'Default'),
(4, 2, 'Description', ''),
(5, 2, 'WebDomain', ''),
(9, 3, 'Name', 'MamakRiau Mails'),
(10, 3, 'IncomingServer', 'imap.test.mamakriau.com'),
(11, 3, 'OutgoingServer', 'smtp.test.mamakriau.com'),
(12, 3, 'SmtpAuthType', '2'),
(13, 3, 'SmtpLogin', ''),
(14, 3, 'SmtpPassword', ''),
(15, 3, 'OwnerType', 'superadmin'),
(16, 4, 'Email', 'riau_mariana@mamakriau.com'),
(17, 4, 'IpAddress', '36.72.213.186');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mama_eav_attributes_text`
--

CREATE TABLE `mama_eav_attributes_text` (
  `id` bigint(64) UNSIGNED NOT NULL,
  `id_entity` bigint(64) UNSIGNED DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `mama_eav_attributes_text`
--

INSERT INTO `mama_eav_attributes_text` (`id`, `id_entity`, `name`, `value`) VALUES
(1, 3, 'Domains', '*');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mama_eav_entities`
--

CREATE TABLE `mama_eav_entities` (
  `id` bigint(64) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `parent_uuid` char(36) NOT NULL,
  `entity_type` varchar(255) DEFAULT NULL,
  `module_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `mama_eav_entities`
--

INSERT INTO `mama_eav_entities` (`id`, `uuid`, `parent_uuid`, `entity_type`, `module_name`) VALUES
(1, 'c54e0769-9580-498f-9dae-20ec984ec3ed', '', 'Aurora\\Modules\\Core\\Classes\\Channel', 'Core'),
(2, '3ccd2a4d-c63d-4998-a6ca-b626e58c60d1', '', 'Aurora\\Modules\\Core\\Classes\\Tenant', 'Core'),
(3, '5f1a8233-d03b-43b0-af05-d9ffaf43b48a', '', 'Aurora\\Modules\\Mail\\Classes\\Server', 'Mail'),
(4, 'ff98d2e9-031c-4ae5-92cb-bb2eb965287d', '', 'Aurora\\Modules\\Core\\Classes\\UserBlock', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mama_min_hashes`
--

CREATE TABLE `mama_min_hashes` (
  `hash_id` varchar(32) NOT NULL DEFAULT '',
  `user_id` bigint(64) DEFAULT NULL,
  `hash` varchar(20) NOT NULL DEFAULT '',
  `data` text DEFAULT NULL,
  `expire_date` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `mama_eav_attributes_bigint`
--
ALTER TABLE `mama_eav_attributes_bigint`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_unique` (`id_entity`,`name`),
  ADD KEY `idx_value` (`value`),
  ADD KEY `idx_name` (`name`),
  ADD KEY `fk_id_entity_idx` (`id_entity`);

--
-- Indeks untuk tabel `mama_eav_attributes_bool`
--
ALTER TABLE `mama_eav_attributes_bool`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_unique` (`id_entity`,`name`),
  ADD KEY `idx_value` (`value`),
  ADD KEY `idx_name` (`name`),
  ADD KEY `fk_id_entity_idx` (`id_entity`);

--
-- Indeks untuk tabel `mama_eav_attributes_datetime`
--
ALTER TABLE `mama_eav_attributes_datetime`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_unique` (`id_entity`,`name`),
  ADD KEY `idx_value` (`value`),
  ADD KEY `idx_name` (`name`),
  ADD KEY `fk_id_entity_idx` (`id_entity`);

--
-- Indeks untuk tabel `mama_eav_attributes_double`
--
ALTER TABLE `mama_eav_attributes_double`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_unique` (`id_entity`,`name`),
  ADD KEY `idx_name` (`name`),
  ADD KEY `fk_id_entity_idx` (`id_entity`);

--
-- Indeks untuk tabel `mama_eav_attributes_int`
--
ALTER TABLE `mama_eav_attributes_int`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_unique` (`id_entity`,`name`),
  ADD KEY `idx_value` (`value`),
  ADD KEY `idx_name` (`name`),
  ADD KEY `fk_id_entity_idx` (`id_entity`);

--
-- Indeks untuk tabel `mama_eav_attributes_mediumblob`
--
ALTER TABLE `mama_eav_attributes_mediumblob`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_unique` (`id_entity`,`name`),
  ADD KEY `idx_name` (`name`),
  ADD KEY `fk_id_entity_idx` (`id_entity`);

--
-- Indeks untuk tabel `mama_eav_attributes_string`
--
ALTER TABLE `mama_eav_attributes_string`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_unique` (`id_entity`,`name`),
  ADD KEY `idx_value` (`value`),
  ADD KEY `idx_name` (`name`),
  ADD KEY `fk_id_entity_idx` (`id_entity`);

--
-- Indeks untuk tabel `mama_eav_attributes_text`
--
ALTER TABLE `mama_eav_attributes_text`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_unique` (`id_entity`,`name`),
  ADD KEY `idx_name` (`name`),
  ADD KEY `fk_id_entity_idx` (`id_entity`);

--
-- Indeks untuk tabel `mama_eav_entities`
--
ALTER TABLE `mama_eav_entities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_uuid` (`uuid`),
  ADD KEY `idx_parent_uuid` (`parent_uuid`),
  ADD KEY `idx_entity_type` (`entity_type`);

--
-- Indeks untuk tabel `mama_min_hashes`
--
ALTER TABLE `mama_min_hashes`
  ADD KEY `mama_min_hash_index` (`hash`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `mama_eav_attributes_bigint`
--
ALTER TABLE `mama_eav_attributes_bigint`
  MODIFY `id` bigint(64) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `mama_eav_attributes_bool`
--
ALTER TABLE `mama_eav_attributes_bool`
  MODIFY `id` bigint(64) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `mama_eav_attributes_datetime`
--
ALTER TABLE `mama_eav_attributes_datetime`
  MODIFY `id` bigint(64) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `mama_eav_attributes_double`
--
ALTER TABLE `mama_eav_attributes_double`
  MODIFY `id` bigint(64) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `mama_eav_attributes_int`
--
ALTER TABLE `mama_eav_attributes_int`
  MODIFY `id` bigint(64) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `mama_eav_attributes_mediumblob`
--
ALTER TABLE `mama_eav_attributes_mediumblob`
  MODIFY `id` bigint(64) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `mama_eav_attributes_string`
--
ALTER TABLE `mama_eav_attributes_string`
  MODIFY `id` bigint(64) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `mama_eav_attributes_text`
--
ALTER TABLE `mama_eav_attributes_text`
  MODIFY `id` bigint(64) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `mama_eav_entities`
--
ALTER TABLE `mama_eav_entities`
  MODIFY `id` bigint(64) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `mama_eav_attributes_bigint`
--
ALTER TABLE `mama_eav_attributes_bigint`
  ADD CONSTRAINT `mama_fk_eav_attributes_bigint_id_entity` FOREIGN KEY (`id_entity`) REFERENCES `mama_eav_entities` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `mama_eav_attributes_bool`
--
ALTER TABLE `mama_eav_attributes_bool`
  ADD CONSTRAINT `mama_fk_eav_attributes_bool_id_entity` FOREIGN KEY (`id_entity`) REFERENCES `mama_eav_entities` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `mama_eav_attributes_datetime`
--
ALTER TABLE `mama_eav_attributes_datetime`
  ADD CONSTRAINT `mama_fk_eav_attributes_datetime_id_entity` FOREIGN KEY (`id_entity`) REFERENCES `mama_eav_entities` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `mama_eav_attributes_double`
--
ALTER TABLE `mama_eav_attributes_double`
  ADD CONSTRAINT `mama_fk_eav_attributes_double_id_entity` FOREIGN KEY (`id_entity`) REFERENCES `mama_eav_entities` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `mama_eav_attributes_int`
--
ALTER TABLE `mama_eav_attributes_int`
  ADD CONSTRAINT `mama_fk_eav_attributes_int_id_entity` FOREIGN KEY (`id_entity`) REFERENCES `mama_eav_entities` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `mama_eav_attributes_mediumblob`
--
ALTER TABLE `mama_eav_attributes_mediumblob`
  ADD CONSTRAINT `mama_fk_eav_attributes_mediumblob_id_entity` FOREIGN KEY (`id_entity`) REFERENCES `mama_eav_entities` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `mama_eav_attributes_string`
--
ALTER TABLE `mama_eav_attributes_string`
  ADD CONSTRAINT `mama_fk_eav_attributes_string_id_entity` FOREIGN KEY (`id_entity`) REFERENCES `mama_eav_entities` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `mama_eav_attributes_text`
--
ALTER TABLE `mama_eav_attributes_text`
  ADD CONSTRAINT `mama_fk_eav_attributes_text_id_entity` FOREIGN KEY (`id_entity`) REFERENCES `mama_eav_entities` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
