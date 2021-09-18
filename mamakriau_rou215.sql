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
-- Database: `mamakriau_rou215`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `rctc_cache`
--

CREATE TABLE `rctc_cache` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `cache_key` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `expires` datetime DEFAULT NULL,
  `data` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `rctc_cache_index`
--

CREATE TABLE `rctc_cache_index` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `mailbox` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `expires` datetime DEFAULT NULL,
  `valid` tinyint(1) NOT NULL DEFAULT 0,
  `data` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `rctc_cache_messages`
--

CREATE TABLE `rctc_cache_messages` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `mailbox` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `uid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `expires` datetime DEFAULT NULL,
  `data` longtext NOT NULL,
  `flags` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `rctc_cache_shared`
--

CREATE TABLE `rctc_cache_shared` (
  `cache_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `expires` datetime DEFAULT NULL,
  `data` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `rctc_cache_thread`
--

CREATE TABLE `rctc_cache_thread` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `mailbox` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `expires` datetime DEFAULT NULL,
  `data` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `rctc_contactgroupmembers`
--

CREATE TABLE `rctc_contactgroupmembers` (
  `contactgroup_id` int(10) UNSIGNED NOT NULL,
  `contact_id` int(10) UNSIGNED NOT NULL,
  `created` datetime NOT NULL DEFAULT '1000-01-01 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `rctc_contactgroups`
--

CREATE TABLE `rctc_contactgroups` (
  `contactgroup_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `changed` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `del` tinyint(1) NOT NULL DEFAULT 0,
  `name` varchar(128) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `rctc_contacts`
--

CREATE TABLE `rctc_contacts` (
  `contact_id` int(10) UNSIGNED NOT NULL,
  `changed` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `del` tinyint(1) NOT NULL DEFAULT 0,
  `name` varchar(128) NOT NULL DEFAULT '',
  `email` text NOT NULL,
  `firstname` varchar(128) NOT NULL DEFAULT '',
  `surname` varchar(128) NOT NULL DEFAULT '',
  `vcard` longtext DEFAULT NULL,
  `words` text DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `rctc_dictionary`
--

CREATE TABLE `rctc_dictionary` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `language` varchar(5) NOT NULL,
  `data` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `rctc_filestore`
--

CREATE TABLE `rctc_filestore` (
  `file_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `context` varchar(32) NOT NULL,
  `filename` varchar(128) NOT NULL,
  `mtime` int(10) NOT NULL,
  `data` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `rctc_identities`
--

CREATE TABLE `rctc_identities` (
  `identity_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `changed` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `del` tinyint(1) NOT NULL DEFAULT 0,
  `standard` tinyint(1) NOT NULL DEFAULT 0,
  `name` varchar(128) NOT NULL,
  `organization` varchar(128) NOT NULL DEFAULT '',
  `email` varchar(128) NOT NULL,
  `reply-to` varchar(128) NOT NULL DEFAULT '',
  `bcc` varchar(128) NOT NULL DEFAULT '',
  `signature` longtext DEFAULT NULL,
  `html_signature` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `rctc_identities`
--

INSERT INTO `rctc_identities` (`identity_id`, `user_id`, `changed`, `del`, `standard`, `name`, `organization`, `email`, `reply-to`, `bcc`, `signature`, `html_signature`) VALUES
(1, 1, '2021-04-16 13:56:21', 0, 1, '', '', 'priokus@mamakriau.com', '', '', NULL, 0),
(2, 2, '2021-04-16 20:05:25', 0, 1, '', '', 'riau_mariana@mamakriau.com', '', '', NULL, 0),
(3, 3, '2021-09-07 03:48:02', 0, 1, '', '', 'priokus@creativesstock.com', '', '', NULL, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `rctc_searches`
--

CREATE TABLE `rctc_searches` (
  `search_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `type` int(3) NOT NULL DEFAULT 0,
  `name` varchar(128) NOT NULL,
  `data` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `rctc_session`
--

CREATE TABLE `rctc_session` (
  `sess_id` varchar(128) NOT NULL,
  `changed` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `ip` varchar(40) NOT NULL,
  `vars` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `rctc_session`
--

INSERT INTO `rctc_session` (`sess_id`, `changed`, `ip`, `vars`) VALUES
('54e17b5752d9f90adf8706e223336153', '2021-09-18 08:02:45', '125.163.209.56', 'bGFuZ3VhZ2V8czo1OiJlbl9VUyI7aW1hcF9uYW1lc3BhY2V8YTo1OntzOjg6InBlcnNvbmFsIjthOjE6e2k6MDthOjI6e2k6MDtzOjY6IklOQk9YLiI7aToxO3M6MToiLiI7fX1zOjU6Im90aGVyIjtOO3M6Njoic2hhcmVkIjtOO3M6OToicHJlZml4X2luIjtzOjY6IklOQk9YLiI7czoxMDoicHJlZml4X291dCI7czo2OiJJTkJPWC4iO31pbWFwX2RlbGltaXRlcnxzOjE6Ii4iO2ltYXBfbGlzdF9jb25mfGE6Mjp7aTowO3M6NjoiSU5CT1guIjtpOjE7YTowOnt9fXVzZXJfaWR8czoxOiIyIjt1c2VybmFtZXxzOjI2OiJyaWF1X21hcmlhbmFAbWFtYWtyaWF1LmNvbSI7c3RvcmFnZV9ob3N0fHM6MTM6Im1hbWFrcmlhdS5jb20iO3N0b3JhZ2VfcG9ydHxpOjk5MztzdG9yYWdlX3NzbHxzOjM6InNzbCI7cGFzc3dvcmR8czozMjoiTWtTNTFFSDdSYy9Nei9XVCt1czBJTjBocUUzbWxFdnUiO2xvZ2luX3RpbWV8aToxNjMxOTA3MTUzO3RpbWV6b25lfHM6MTI6IkFzaWEvQmFuZ2tvayI7U1RPUkFHRV9TUEVDSUFMLVVTRXxiOjE7YXV0aF9zZWNyZXR8czozMjoiUmZRZXV2NlNCRkFLRkhWcmVYWXlxOWphc2FQUDlYb1oiO3JlcXVlc3RfdG9rZW58czozMjoieVhEbWYxQlY5MjBpMk10VnJkZXVlSnFnR3BXQUY4OFciO3Rhc2t8czo0OiJtYWlsIjtza2luX2NvbmZpZ3xhOjU6e3M6NjoibGF5b3V0IjtzOjEwOiJ3aWRlc2NyZWVuIjtzOjIyOiJqcXVlcnlfdWlfY29sb3JzX3RoZW1lIjtzOjk6ImJvb3RzdHJhcCI7czoxODoiZW1iZWRfY3NzX2xvY2F0aW9uIjtzOjE3OiIvc3R5bGVzL2VtYmVkLmNzcyI7czoxOToiZWRpdG9yX2Nzc19sb2NhdGlvbiI7czoxNzoiL3N0eWxlcy9lbWJlZC5jc3MiO3M6MjY6Im1lZGlhX2Jyb3dzZXJfY3NzX2xvY2F0aW9uIjtzOjQ6Im5vbmUiO31pbWFwX2hvc3R8czoxMzoibWFtYWtyaWF1LmNvbSI7bWJveHxzOjU6IklOQk9YIjtzb3J0X2NvbHxzOjA6IiI7c29ydF9vcmRlcnxzOjQ6IkRFU0MiO1NUT1JBR0VfVEhSRUFEfGE6Mzp7aTowO3M6MTA6IlJFRkVSRU5DRVMiO2k6MTtzOjQ6IlJFRlMiO2k6MjtzOjE0OiJPUkRFUkVEU1VCSkVDVCI7fVNUT1JBR0VfUVVPVEF8YjoxO1NUT1JBR0VfTElTVC1FWFRFTkRFRHxiOjE7cXVvdGFfZGlzcGxheXxzOjQ6InRleHQiO2xpc3RfYXR0cmlifGE6Nzp7czo0OiJuYW1lIjtzOjg6Im1lc3NhZ2VzIjtzOjI6ImlkIjtzOjExOiJtZXNzYWdlbGlzdCI7czo1OiJjbGFzcyI7czo0MjoibGlzdGluZyBtZXNzYWdlbGlzdCBzb3J0aGVhZGVyIGZpeGVkaGVhZGVyIjtzOjE1OiJhcmlhLWxhYmVsbGVkYnkiO3M6MjI6ImFyaWEtbGFiZWwtbWVzc2FnZWxpc3QiO3M6OToiZGF0YS1saXN0IjtzOjEyOiJtZXNzYWdlX2xpc3QiO3M6MTQ6ImRhdGEtbGFiZWwtbXNnIjtzOjE4OiJUaGUgbGlzdCBpcyBlbXB0eS4iO3M6NzoiY29sdW1ucyI7YTo4OntpOjA7czo3OiJ0aHJlYWRzIjtpOjE7czo3OiJzdWJqZWN0IjtpOjI7czo2OiJzdGF0dXMiO2k6MztzOjY6ImZyb210byI7aTo0O3M6NDoiZGF0ZSI7aTo1O3M6NDoic2l6ZSI7aTo2O3M6NDoiZmxhZyI7aTo3O3M6MTA6ImF0dGFjaG1lbnQiO319cGFnZXxpOjE7Zm9sZGVyc3xhOjE6e3M6NToiSU5CT1giO2E6Mjp7czozOiJjbnQiO2k6MjM1NTtzOjY6Im1heHVpZCI7aToyODIzO319dW5zZWVuX2NvdW50fGE6MTp7czo1OiJJTkJPWCI7aToxO31saXN0X21vZF9zZXF8czo0OiI1MTE4Ijs=');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rctc_system`
--

CREATE TABLE `rctc_system` (
  `name` varchar(64) NOT NULL,
  `value` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `rctc_system`
--

INSERT INTO `rctc_system` (`name`, `value`) VALUES
('roundcube-version', '2019092900');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rctc_users`
--

CREATE TABLE `rctc_users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `username` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `mail_host` varchar(128) NOT NULL,
  `created` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `last_login` datetime DEFAULT NULL,
  `failed_login` datetime DEFAULT NULL,
  `failed_login_counter` int(10) UNSIGNED DEFAULT NULL,
  `language` varchar(5) DEFAULT NULL,
  `preferences` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `rctc_users`
--

INSERT INTO `rctc_users` (`user_id`, `username`, `mail_host`, `created`, `last_login`, `failed_login`, `failed_login_counter`, `language`, `preferences`) VALUES
(1, 'priokus@mamakriau.com', 'mamakriau.com', '2021-04-16 13:56:21', '2021-09-14 14:19:44', '2021-08-29 23:55:40', 1, 'en_US', 'a:11:{s:11:\"search_mods\";a:4:{s:1:\"*\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:10:\"INBOX.Sent\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:12:\"INBOX.Drafts\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:5:\"INBOX\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}}s:14:\"message_extwin\";i:0;s:15:\"default_charset\";s:8:\"US-ASCII\";s:8:\"timezone\";s:12:\"Asia/Jakarta\";s:4:\"skin\";s:7:\"elastic\";s:11:\"client_hash\";s:16:\"MVYS0lbViXKrvdHZ\";s:9:\"junk_mbox\";s:10:\"INBOX.spam\";s:11:\"drafts_mbox\";s:12:\"INBOX.Drafts\";s:9:\"sent_mbox\";s:10:\"INBOX.Sent\";s:10:\"trash_mbox\";s:11:\"INBOX.Trash\";s:15:\"namespace_fixed\";b:1;}'),
(2, 'riau_mariana@mamakriau.com', 'mamakriau.com', '2021-04-16 20:05:25', '2021-09-18 02:32:33', '2021-08-30 00:22:54', 1, 'en_US', 'a:7:{s:11:\"search_mods\";a:4:{s:1:\"*\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:10:\"INBOX.Sent\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:12:\"INBOX.Drafts\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:5:\"INBOX\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}}s:11:\"client_hash\";s:16:\"oXy163e0iURZW0p1\";s:9:\"junk_mbox\";s:10:\"INBOX.spam\";s:11:\"drafts_mbox\";s:12:\"INBOX.Drafts\";s:9:\"sent_mbox\";s:10:\"INBOX.Sent\";s:10:\"trash_mbox\";s:11:\"INBOX.Trash\";s:15:\"namespace_fixed\";b:1;}'),
(3, 'priokus@creativesstock.com', 'mamakriau.com', '2021-09-07 03:48:02', '2021-09-07 03:48:02', NULL, NULL, 'en_US', 'a:6:{s:11:\"client_hash\";s:16:\"ALIqQo5e9NGkAAcg\";s:9:\"junk_mbox\";s:10:\"INBOX.spam\";s:11:\"drafts_mbox\";s:12:\"INBOX.Drafts\";s:9:\"sent_mbox\";s:10:\"INBOX.Sent\";s:10:\"trash_mbox\";s:11:\"INBOX.Trash\";s:15:\"namespace_fixed\";b:1;}');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `rctc_cache`
--
ALTER TABLE `rctc_cache`
  ADD PRIMARY KEY (`user_id`,`cache_key`),
  ADD KEY `rctc_expires_index` (`expires`);

--
-- Indeks untuk tabel `rctc_cache_index`
--
ALTER TABLE `rctc_cache_index`
  ADD PRIMARY KEY (`user_id`,`mailbox`),
  ADD KEY `rctc_expires_index` (`expires`);

--
-- Indeks untuk tabel `rctc_cache_messages`
--
ALTER TABLE `rctc_cache_messages`
  ADD PRIMARY KEY (`user_id`,`mailbox`,`uid`),
  ADD KEY `rctc_expires_index` (`expires`);

--
-- Indeks untuk tabel `rctc_cache_shared`
--
ALTER TABLE `rctc_cache_shared`
  ADD PRIMARY KEY (`cache_key`),
  ADD KEY `rctc_expires_index` (`expires`);

--
-- Indeks untuk tabel `rctc_cache_thread`
--
ALTER TABLE `rctc_cache_thread`
  ADD PRIMARY KEY (`user_id`,`mailbox`),
  ADD KEY `rctc_expires_index` (`expires`);

--
-- Indeks untuk tabel `rctc_contactgroupmembers`
--
ALTER TABLE `rctc_contactgroupmembers`
  ADD PRIMARY KEY (`contactgroup_id`,`contact_id`),
  ADD KEY `rctc_contactgroupmembers_contact_index` (`contact_id`);

--
-- Indeks untuk tabel `rctc_contactgroups`
--
ALTER TABLE `rctc_contactgroups`
  ADD PRIMARY KEY (`contactgroup_id`),
  ADD KEY `rctc_contactgroups_user_index` (`user_id`,`del`);

--
-- Indeks untuk tabel `rctc_contacts`
--
ALTER TABLE `rctc_contacts`
  ADD PRIMARY KEY (`contact_id`),
  ADD KEY `rctc_user_contacts_index` (`user_id`,`del`);

--
-- Indeks untuk tabel `rctc_dictionary`
--
ALTER TABLE `rctc_dictionary`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rctc_uniqueness` (`user_id`,`language`);

--
-- Indeks untuk tabel `rctc_filestore`
--
ALTER TABLE `rctc_filestore`
  ADD PRIMARY KEY (`file_id`),
  ADD UNIQUE KEY `rctc_uniqueness` (`user_id`,`context`,`filename`);

--
-- Indeks untuk tabel `rctc_identities`
--
ALTER TABLE `rctc_identities`
  ADD PRIMARY KEY (`identity_id`),
  ADD KEY `rctc_user_identities_index` (`user_id`,`del`),
  ADD KEY `rctc_email_identities_index` (`email`,`del`);

--
-- Indeks untuk tabel `rctc_searches`
--
ALTER TABLE `rctc_searches`
  ADD PRIMARY KEY (`search_id`),
  ADD UNIQUE KEY `rctc_uniqueness` (`user_id`,`type`,`name`);

--
-- Indeks untuk tabel `rctc_session`
--
ALTER TABLE `rctc_session`
  ADD PRIMARY KEY (`sess_id`),
  ADD KEY `rctc_changed_index` (`changed`);

--
-- Indeks untuk tabel `rctc_system`
--
ALTER TABLE `rctc_system`
  ADD PRIMARY KEY (`name`);

--
-- Indeks untuk tabel `rctc_users`
--
ALTER TABLE `rctc_users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `rctc_username` (`username`,`mail_host`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `rctc_contactgroups`
--
ALTER TABLE `rctc_contactgroups`
  MODIFY `contactgroup_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `rctc_contacts`
--
ALTER TABLE `rctc_contacts`
  MODIFY `contact_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `rctc_dictionary`
--
ALTER TABLE `rctc_dictionary`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `rctc_filestore`
--
ALTER TABLE `rctc_filestore`
  MODIFY `file_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `rctc_identities`
--
ALTER TABLE `rctc_identities`
  MODIFY `identity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `rctc_searches`
--
ALTER TABLE `rctc_searches`
  MODIFY `search_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `rctc_users`
--
ALTER TABLE `rctc_users`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `rctc_cache`
--
ALTER TABLE `rctc_cache`
  ADD CONSTRAINT `rctc_user_id_fk_cache` FOREIGN KEY (`user_id`) REFERENCES `rctc_users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `rctc_cache_index`
--
ALTER TABLE `rctc_cache_index`
  ADD CONSTRAINT `rctc_user_id_fk_cache_index` FOREIGN KEY (`user_id`) REFERENCES `rctc_users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `rctc_cache_messages`
--
ALTER TABLE `rctc_cache_messages`
  ADD CONSTRAINT `rctc_user_id_fk_cache_messages` FOREIGN KEY (`user_id`) REFERENCES `rctc_users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `rctc_cache_thread`
--
ALTER TABLE `rctc_cache_thread`
  ADD CONSTRAINT `rctc_user_id_fk_cache_thread` FOREIGN KEY (`user_id`) REFERENCES `rctc_users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `rctc_contactgroupmembers`
--
ALTER TABLE `rctc_contactgroupmembers`
  ADD CONSTRAINT `rctc_contact_id_fk_contacts` FOREIGN KEY (`contact_id`) REFERENCES `rctc_contacts` (`contact_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rctc_contactgroup_id_fk_contactgroups` FOREIGN KEY (`contactgroup_id`) REFERENCES `rctc_contactgroups` (`contactgroup_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `rctc_contactgroups`
--
ALTER TABLE `rctc_contactgroups`
  ADD CONSTRAINT `rctc_user_id_fk_contactgroups` FOREIGN KEY (`user_id`) REFERENCES `rctc_users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `rctc_contacts`
--
ALTER TABLE `rctc_contacts`
  ADD CONSTRAINT `rctc_user_id_fk_contacts` FOREIGN KEY (`user_id`) REFERENCES `rctc_users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `rctc_dictionary`
--
ALTER TABLE `rctc_dictionary`
  ADD CONSTRAINT `rctc_user_id_fk_dictionary` FOREIGN KEY (`user_id`) REFERENCES `rctc_users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `rctc_filestore`
--
ALTER TABLE `rctc_filestore`
  ADD CONSTRAINT `rctc_user_id_fk_filestore` FOREIGN KEY (`user_id`) REFERENCES `rctc_users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `rctc_identities`
--
ALTER TABLE `rctc_identities`
  ADD CONSTRAINT `rctc_user_id_fk_identities` FOREIGN KEY (`user_id`) REFERENCES `rctc_users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `rctc_searches`
--
ALTER TABLE `rctc_searches`
  ADD CONSTRAINT `rctc_user_id_fk_searches` FOREIGN KEY (`user_id`) REFERENCES `rctc_users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
