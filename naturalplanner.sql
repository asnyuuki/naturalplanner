-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2022 at 10:43 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `naturalplanner`
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
(1, 'admin', 'Site administrator'),
(2, 'user', 'Regular User');

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_permissions`
--

CREATE TABLE `auth_groups_permissions` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_groups_permissions`
--

INSERT INTO `auth_groups_permissions` (`group_id`, `permission_id`) VALUES
(1, 1),
(1, 2),
(2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_groups_users`
--

INSERT INTO `auth_groups_users` (`group_id`, `user_id`) VALUES
(1, 7),
(2, 6),
(2, 8),
(2, 9),
(2, 10);

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
(2, '::1', 'asnyuuki', NULL, '2022-06-07 03:14:59', 0),
(3, '::1', 'abimanyu10', NULL, '2022-06-07 03:15:15', 0),
(4, '::1', 'abimanyu', NULL, '2022-06-07 03:15:26', 0),
(5, '::1', 'asnyuuki10', 4, '2022-06-07 03:18:05', 0),
(6, '::1', 'okysaputraa10@gmail.com', 4, '2022-06-07 03:30:27', 0),
(7, '::1', 'cemara123@gmail.com', 5, '2022-06-07 03:33:25', 1),
(8, '::1', 'abimanyu.065120115@unpak.ac.id', 6, '2022-06-07 03:36:45', 1),
(9, '::1', 'abimanyu.065120115@unpak.ac.id', 6, '2022-06-07 03:43:27', 1),
(10, '::1', 'abimanyu.065120115@unpak.ac.id', 6, '2022-06-07 04:00:16', 1),
(11, '::1', 'abimanyu.065120115@unpak.ac.id', 6, '2022-06-07 04:12:35', 1),
(12, '::1', 'abimanyu.065120115@unpak.ac.id', 6, '2022-06-07 04:13:26', 1),
(13, '::1', 'abimanyu.065120115@unpak.ac.id', 6, '2022-06-07 04:26:20', 1),
(14, '::1', 'abimanyu.065120115@unpak.ac.id', 6, '2022-06-07 05:03:18', 1),
(15, '::1', 'abimanyu.065120115@unpak.ac.id', 6, '2022-06-07 05:03:43', 1),
(16, '::1', 'abimanyu.065120115@unpak.ac.id', 6, '2022-06-07 05:12:08', 1),
(17, '::1', 'abimanyu.065120115@unpak.ac.id', 6, '2022-06-07 05:12:56', 1),
(18, '::1', 'abimanyu.065120115@unpak.ac.id', 6, '2022-06-07 05:13:08', 1),
(19, '::1', 'abimanyu.065120115@unpak.ac.id', 6, '2022-06-07 05:14:34', 1),
(20, '::1', 'abimanyu.065120115@unpak.ac.id', 6, '2022-06-07 05:14:53', 1),
(21, '::1', 'abimanyu.065120115@unpak.ac.id', 6, '2022-06-07 05:15:45', 1),
(22, '::1', 'anya@unpak.ac.id', 7, '2022-06-07 05:18:48', 1),
(23, '::1', 'anya@unpak.ac.id', 7, '2022-06-07 05:19:12', 1),
(24, '::1', 'andre@unpak.ac.id', 8, '2022-06-07 05:37:10', 1),
(25, '::1', 'anya@unpak.ac.id', 7, '2022-06-07 05:46:33', 1),
(26, '::1', 'andre@unpak.ac.id', 8, '2022-06-07 05:47:14', 1),
(27, '::1', 'andre@unpak.ac.id', 8, '2022-06-07 05:48:02', 1),
(28, '::1', 'andre@unpak.ac.id', 8, '2022-06-07 05:54:45', 1),
(29, '::1', 'anya@unpak.ac.id', 7, '2022-06-07 05:55:00', 1),
(30, '::1', 'andre@unpak.ac.id', 8, '2022-06-07 05:55:22', 1),
(31, '::1', 'anya@unpak.ac.id', 7, '2022-06-07 06:02:06', 1),
(32, '::1', 'andre@unpak.ac.id', 8, '2022-06-07 06:04:29', 1),
(33, '::1', 'anya@unpak.ac.id', 7, '2022-06-07 06:14:09', 1),
(34, '::1', 'anya@unpak.ac.id', 7, '2022-06-07 07:57:37', 1),
(35, '::1', 'anya@unpak.ac.id', 7, '2022-06-07 07:59:33', 1),
(36, '::1', 'andre@unpak.ac.id', 8, '2022-06-07 08:00:07', 1),
(37, '::1', 'andre@unpak.ac.id', 8, '2022-06-07 08:02:03', 1),
(38, '::1', 'anya@unpak.ac.id', 7, '2022-06-07 08:02:20', 1),
(39, '::1', 'abimanyu@unpak.ac.id', 9, '2022-06-07 08:04:12', 1),
(40, '::1', 'anya@unpak.ac.id', 7, '2022-06-07 08:07:16', 1),
(41, '::1', 'elvan@unpak.ac.id', 10, '2022-06-07 08:09:55', 1),
(42, '::1', 'anya@unpak.ac.id', 7, '2022-06-07 08:25:24', 1),
(43, '::1', 'abimanyu@unpak.ac.id', 9, '2022-06-07 08:48:39', 1),
(44, '::1', 'abimanyu@unpak.ac.id', 9, '2022-06-07 09:18:56', 1),
(45, '::1', 'abimanyu@unpak.ac.id', 9, '2022-06-07 09:30:07', 1),
(46, '::1', 'abimanyu@unpak.ac.id', 9, '2022-06-07 09:31:41', 1),
(47, '::1', 'anya@unpak.ac.id', 7, '2022-06-07 09:31:54', 1);

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
(1, 'manage-users', 'Manage All Users'),
(2, 'manage-profile', 'Manage user\'s profile');

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
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(1, '2017-11-20-223112', 'Myth\\Auth\\Database\\Migrations\\CreateAuthTables', 'default', 'Myth\\Auth', 1654436825, 1);

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
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `force_pass_reset` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `fullname`, `user_image`, `password_hash`, `reset_hash`, `reset_at`, `reset_expires`, `activate_hash`, `status`, `status_message`, `active`, `force_pass_reset`, `created_at`, `updated_at`, `deleted_at`) VALUES
(6, 'abimanyu.065120115@unpak.ac.id', 'asnyuuki', NULL, 'default.svg', '$2y$10$ABk9O6/K/v87lwQ3CxW1wu9CBTKRSLQX0QQOJIKnrGl9cpperPy7S', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-06-07 03:36:30', '2022-06-07 03:36:30', NULL),
(7, 'anya@unpak.ac.id', 'abimanyu', NULL, 'default.svg', '$2y$10$DK743aMNflAErUeWYFXQMukaOQiDCET0J9Fuw736PvEZjdpK43/HC', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-06-07 05:18:40', '2022-06-07 05:18:40', NULL),
(8, 'andre@unpak.ac.id', 'andrehermawan', NULL, 'default.svg', '$2y$10$I/u549aeaU0RJU1m8th6XurK2Sve9vQgomnuNWMdlQ.rnrnijFslW', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-06-07 05:37:06', '2022-06-07 05:37:06', NULL),
(9, 'abimanyu@unpak.ac.id', 'abimanyuokysaputra', NULL, 'default.svg', '$2y$10$ZY6ZJt6SO4RYxDO1zbzDyeu0YXlbAy6ZlHzturfEtmM/OIq7m2zqa', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-06-07 07:56:14', '2022-06-07 07:56:14', NULL),
(10, 'elvan@unpak.ac.id', 'elvan', NULL, 'default.svg', '$2y$10$8AL239gzb/7wJLikK9u53ub9aUZITGJq5RHGoKdaaB.YM/EyoxgiC', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-06-07 08:09:36', '2022-06-07 08:09:36', NULL);

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
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
