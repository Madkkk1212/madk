-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 22, 2023 at 02:13 PM
-- Server version: 5.7.33
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci4login`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_activation_attempts`
--

CREATE TABLE `auth_activation_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups`
--

CREATE TABLE `auth_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_groups`
--

INSERT INTO `auth_groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'site administrator'),
(2, 'user', 'reguler user');

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_permissions`
--

CREATE TABLE `auth_groups_permissions` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_groups_permissions`
--

INSERT INTO `auth_groups_permissions` (`group_id`, `permission_id`) VALUES
(1, 1),
(1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_groups_users`
--

INSERT INTO `auth_groups_users` (`group_id`, `user_id`) VALUES
(1, 2),
(2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `auth_logins`
--

CREATE TABLE `auth_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_logins`
--

INSERT INTO `auth_logins` (`id`, `ip_address`, `email`, `user_id`, `date`, `success`) VALUES
(1, '::1', 'madk1212@gmail.com', 1, '2023-08-18 04:42:26', 0),
(2, '::1', 'madk1212@gmail.com', NULL, '2023-08-18 04:42:42', 0),
(3, '::1', 'Afifmadk1212@gmail.com', 2, '2023-08-18 04:43:16', 1),
(4, '::1', 'Afifmadk1212@gmail.com', 2, '2023-08-18 06:01:01', 1),
(5, '::1', 'Afifmadk1212@gmail.com', 2, '2023-08-18 06:46:43', 1),
(6, '::1', 'Afifmadk1212@gmail.com', 2, '2023-08-18 07:43:51', 1),
(7, '::1', 'Afifmadk1212@gmail.com', 2, '2023-08-18 07:56:35', 1),
(8, '::1', 'ad\\', NULL, '2023-08-18 08:02:06', 0),
(9, '::1', 'Afifmadk1212@gmail.com', 2, '2023-08-18 08:02:11', 1),
(10, '::1', 'admin', NULL, '2023-08-18 09:12:13', 0),
(11, '::1', 'Afifmadk1212@gmail.com', 2, '2023-08-18 09:12:20', 1),
(12, '::1', 'Afifmadk1212@gmail.com', 2, '2023-08-18 09:13:56', 1),
(13, '::1', 'Afifmadk1212@gmail.com', 2, '2023-08-18 09:14:18', 1),
(14, '::1', 'Afifmadk1212@gmail.com', 2, '2023-08-18 09:48:38', 1),
(15, '::1', 'Afifmadk1212@gmail.com', 2, '2023-08-18 14:34:22', 1),
(16, '::1', 'user123@gmail.com', 3, '2023-08-19 03:35:59', 1),
(17, '::1', 'Afifmadk1212@gmail.com', 2, '2023-08-19 05:21:08', 1),
(18, '::1', 'afifmadk1212@gmail.com', NULL, '2023-08-19 05:21:58', 0),
(19, '::1', 'Afifmadk1212@gmail.com', 2, '2023-08-19 05:22:03', 1),
(20, '::1', 'Afifmadk1212@gmail.com', 2, '2023-08-19 05:23:38', 1),
(21, '::1', 'Afifmadk1212@gmail.com', 2, '2023-08-19 05:25:47', 1),
(22, '::1', 'user123@gmail.com', 3, '2023-08-19 05:26:54', 1),
(23, '::1', 'Afifmadk1212@gmail.com', 2, '2023-08-19 05:28:49', 1),
(24, '::1', 'user123@gmail.com', 3, '2023-08-19 05:29:02', 1),
(25, '::1', 'user123@gmail.com', 3, '2023-08-19 05:42:55', 1),
(26, '::1', 'user123@gmail.com', 3, '2023-08-19 07:13:52', 1),
(27, '::1', 'Afifmadk1212@gmail.com', 2, '2023-08-19 07:14:08', 1),
(28, '::1', 'admin', NULL, '2023-08-19 07:16:10', 0),
(29, '::1', 'Afifmadk1212@gmail.com', 2, '2023-08-19 07:16:16', 1),
(30, '::1', 'user123@gmail.com', 3, '2023-08-19 07:21:18', 1),
(31, '::1', 'Afifmadk1212@gmail.com', 2, '2023-08-19 07:42:34', 1),
(32, '::1', 'user123@gmail.com', 3, '2023-08-19 08:00:30', 1),
(33, '::1', 'Afifmadk1212@gmail.com', 2, '2023-08-19 08:01:40', 1),
(34, '::1', 'Afifmadk1212@gmail.com', 2, '2023-08-20 03:28:37', 1),
(35, '::1', 'Afifmadk1212@gmail.com', 2, '2023-08-20 04:14:23', 1),
(36, '::1', 'Afifmadk1212@gmail.com', 2, '2023-08-20 04:14:43', 1),
(37, '::1', 'Afifmadk1212@gmail.com', 2, '2023-08-20 11:53:11', 1),
(38, '::1', 'user1', NULL, '2023-08-20 12:08:34', 0),
(39, '::1', 'user1', NULL, '2023-08-20 12:08:41', 0),
(40, '::1', 'user123@gmail.com', 3, '2023-08-20 12:08:48', 1),
(41, '::1', 'Afifmadk1212@gmail.com', 2, '2023-08-20 12:46:48', 1),
(42, '::1', 'admin', NULL, '2023-08-21 03:58:53', 0),
(43, '::1', 'Afifmadk1212@gmail.com', 2, '2023-08-21 03:58:58', 1),
(44, '::1', 'user123@gmail.com', 3, '2023-08-21 03:59:08', 1),
(45, '::1', 'Afifmadk1212@gmail.com', 2, '2023-08-21 09:18:10', 1),
(46, '::1', 'Afifmadk1212@gmail.com', 2, '2023-08-21 13:51:33', 1),
(47, '::1', 'Afifmadk1212@gmail.com', 2, '2023-08-21 15:54:58', 1),
(48, '::1', 'Afifmadk1212@gmail.com', 2, '2023-08-22 07:33:31', 1),
(49, '::1', 'admin', NULL, '2023-08-22 11:13:14', 0),
(50, '::1', 'admin', NULL, '2023-08-22 11:13:20', 0),
(51, '::1', 'Afifmadk1212@gmail.com', 2, '2023-08-22 11:13:33', 1),
(52, '::1', 'Afifmadk1212@gmail.com', 2, '2023-08-22 11:14:29', 1),
(53, '::1', 'user123@gmail.com', 3, '2023-08-22 11:16:02', 1),
(54, '::1', 'Afifmadk1212@gmail.com', 2, '2023-08-22 11:19:56', 1),
(55, '::1', 'user1', NULL, '2023-08-22 11:21:56', 0),
(56, '::1', 'user1', NULL, '2023-08-22 11:22:01', 0),
(57, '::1', 'user1', NULL, '2023-08-22 11:22:06', 0),
(58, '::1', 'user1', NULL, '2023-08-22 11:22:16', 0),
(59, '::1', 'Afifmadk1212@gmail.com', 2, '2023-08-22 11:23:21', 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permissions`
--

CREATE TABLE `auth_permissions` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_permissions`
--

INSERT INTO `auth_permissions` (`id`, `name`, `description`) VALUES
(1, 'manage-users', 'manage all user'),
(2, 'manage-profile', 'manage user\'s profile');

-- --------------------------------------------------------

--
-- Table structure for table `auth_reset_attempts`
--

CREATE TABLE `auth_reset_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_tokens`
--

CREATE TABLE `auth_tokens` (
  `id` int(11) UNSIGNED NOT NULL,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `expires` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_users_permissions`
--

CREATE TABLE `auth_users_permissions` (
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `datapenjualan`
--

CREATE TABLE `datapenjualan` (
  `id` int(11) NOT NULL,
  `kodepelanggan` varchar(50) NOT NULL,
  `kodebarang` varchar(50) NOT NULL,
  `namabarang` varchar(100) NOT NULL,
  `harga` varchar(20) NOT NULL,
  `jumlah` varchar(20) NOT NULL,
  `totalharga` varchar(20) NOT NULL,
  `metodepembayaran` varchar(20) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `datapenjualan`
--

INSERT INTO `datapenjualan` (`id`, `kodepelanggan`, `kodebarang`, `namabarang`, `harga`, `jumlah`, `totalharga`, `metodepembayaran`, `keterangan`) VALUES
(1, '', '4444', 'buku', '12000', '1', '12000', 'bri', 'asdasdasdasd');

-- --------------------------------------------------------

--
-- Table structure for table `distributor`
--

CREATE TABLE `distributor` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nomor` varchar(20) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `kodepelanggan` varchar(20) NOT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `distributor`
--

INSERT INTO `distributor` (`id`, `nama`, `nomor`, `alamat`, `kodepelanggan`, `created_at`, `updated_at`) VALUES
(1, 'Madk', '082121212121', 'jl.asdasjkdjas', '1234', NULL, NULL),
(2, 'Saipo', '0855656565', 'Jl.asdasd ', '1111', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2017-11-20-223112', 'Myth\\Auth\\Database\\Migrations\\CreateAuthTables', 'default', 'Myth\\Auth', 1692004085, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `user_image` varchar(255) NOT NULL DEFAULT 'default.svg',
  `password_hash` varchar(255) NOT NULL,
  `reset_hash` varchar(255) DEFAULT NULL,
  `reset_at` datetime DEFAULT NULL,
  `reset_expires` datetime DEFAULT NULL,
  `activate_hash` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `force_pass_reset` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `fullname`, `user_image`, `password_hash`, `reset_hash`, `reset_at`, `reset_expires`, `activate_hash`, `status`, `status_message`, `active`, `force_pass_reset`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'madk1212@gmail.com', 'alex', NULL, 'default.svg', '$2y$10$j07CGoNievHEu.Yyn64az.2k9pulzokz.PratBNrjI9OSEiniyTI2', NULL, NULL, NULL, 'ff2d43e78b0c9f20644da624e841b1d5', NULL, NULL, 0, 0, '2023-08-18 04:41:07', '2023-08-18 04:41:07', NULL),
(2, 'Afifmadk1212@gmail.com', 'admin', 'hallo guyys', 'default.svg', '$2y$10$Xnq9tp.Psn7ltKaG3niySubnjICk9MdtiT3F7lX9AZEGKOgq5cr3K', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2023-08-18 04:43:04', '2023-08-18 04:43:04', NULL),
(3, 'user123@gmail.com', 'user1', NULL, 'default.svg', '$2y$10$PiAVMSuZiIlIzxgQInZ3B.RPTGeh902GeO.PI5N/jg8BTaDHBDAa.', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2023-08-19 03:35:49', '2023-08-19 03:35:49', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups`
--
ALTER TABLE `auth_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD KEY `auth_groups_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `group_id_permission_id` (`group_id`,`permission_id`);

--
-- Indexes for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD KEY `auth_groups_users_user_id_foreign` (`user_id`),
  ADD KEY `group_id_user_id` (`group_id`,`user_id`);

--
-- Indexes for table `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_tokens_user_id_foreign` (`user_id`),
  ADD KEY `selector` (`selector`);

--
-- Indexes for table `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD KEY `auth_users_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `user_id_permission_id` (`user_id`,`permission_id`);

--
-- Indexes for table `datapenjualan`
--
ALTER TABLE `datapenjualan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `distributor`
--
ALTER TABLE `distributor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_groups`
--
ALTER TABLE `auth_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `datapenjualan`
--
ALTER TABLE `datapenjualan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `distributor`
--
ALTER TABLE `distributor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD CONSTRAINT `auth_groups_permissions_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD CONSTRAINT `auth_groups_users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD CONSTRAINT `auth_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD CONSTRAINT `auth_users_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_users_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
