-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 03, 2023 at 07:36 PM
-- Server version: 10.6.15-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u265494692_XSystem`
--

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
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(5, '2019_08_19_000000_create_failed_jobs_table', 1),
(6, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(7, '2023_08_11_213437_profile', 1),
(8, '2023_09_19_093302_create_sessions_table', 2),
(9, '2023_09_20_134516_userdumplog', 3),
(10, '2023_10_07_174554_settings', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `zip` tinytext DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT '0',
  `profile_image` text DEFAULT NULL,
  `system_role` text DEFAULT 'user',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`id`, `user_id`, `designation`, `address`, `state`, `zip`, `status`, `profile_image`, `system_role`, `created_at`, `updated_at`) VALUES
(5, 5, 'CEO, Codebumble', 'Khilgaon, Dhaka', 'Dhaka', '1219', '0', NULL, 'admin', '2023-09-19 10:31:02', '2023-09-19 10:31:02');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('79eWbw9NhWFqnf5eyoOuIrZjmfMhYL1dSYg25kD2', NULL, '47.89.193.162', 'Mozilla/5.0 (Linux; Android 11; M2004J15SC) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY2lwVm1JaUY3Q29rcElFQ3VTYXIzVUkxRFJTb0lES092MnZGZTJidiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHBzOi8vYWNjb3VudHMuY29kZWJ1bWJsZS5uZXQvbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1701632010),
('CRY15zPNE5W5EW0eGJxt0HRiDKziHuQw4O6zNXtQ', NULL, '47.89.193.162', 'Mozilla/5.0 (Linux; Android 11; M2004J15SC) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMURvblRPNFI5UVNOdUROUGZNMVBiM3RROGVsbnRPbFE3djFhZWh6VSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYWNjb3VudHMuY29kZWJ1bWJsZS5uZXQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1701632009),
('G6xY7z5EnzKwgOuviMU2Zm55Aa772Q2LW0upWqBc', NULL, '103.144.48.40', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWkVDWHIxR3luYmMyRFJVOWI3U1BDNGkyaGhhdndBNHJYZ1FrMXF2aiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHBzOi8vYWNjb3VudHMuY29kZWJ1bWJsZS5uZXQvbG9naW4iO31zOjY6ImxvY2FsZSI7czoyOiJlbiI7fQ==', 1701622940),
('o6hWF5WqssswcYN4zsuSgvNWHnXmhcn8Ky0oed20', 5, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36 Edg/119.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSnNveHQ2WWw1TUs2U0xBaWVrdEZYMEFGQkRmckEySDl2c2Z4dnhzSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9oYXdrL2hvbWUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTo1O30=', 1701631713),
('UMAJ0LhZLkE5srSfXlrkYAHtBhes3ESw5lOs0yX5', 5, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiOXdnZDVVQW5vYldFSmhkaWRaVXRwVk9GZmM3SmhtcG04QktpRGhQTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9oYXdrL3Rlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTo1O30=', 1701632094);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(1, 'login', '1', NULL, NULL),
(2, 'registration', '1', NULL, NULL),
(3, 'social-login', '0', NULL, NULL),
(4, 'social-registration', '0', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userdumplog`
--

CREATE TABLE `userdumplog` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `_token` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `action_type` varchar(255) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `browser` varchar(255) DEFAULT NULL,
  `platform` varchar(255) DEFAULT NULL,
  `device` varchar(255) DEFAULT NULL,
  `attempt_at` varchar(255) DEFAULT NULL,
  `attempted_action` varchar(255) DEFAULT NULL,
  `loggedout_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `userdumplog`
--

INSERT INTO `userdumplog` (`id`, `username`, `_token`, `ip`, `action_type`, `user_agent`, `browser`, `platform`, `device`, `attempt_at`, `attempted_action`, `loggedout_at`) VALUES
(23, 'shakilofficial0', 'bfNaDDXrtY8qvk2UW6VqBw650bWiUICt3itRuJcb', '127.0.0.1', 'login', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Mobile Safari/537.36 Edg/117.0.2045.31', 'Microsoft Edge 117', 'Android 6', 'Mobile', '2023-09-20 16:11:03', 'login', '2023-09-20 16:11:18'),
(24, 'shakilofficial0', 'W9m8zNQq8IUCxsdo4fXOseIt8yg4yaOZYfxU02Lp', '127.0.0.1', 'login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36 Edg/117.0.2045.31', 'Microsoft Edge 117.0.2045', 'Windows 10', 'Desktop', '2023-09-20 16:12:14', 'login', '2023-09-20 16:12:29'),
(25, 'shakilofficial0', 'y9ss3gVM6RC8YoyIdFeTuMs4swZMhUI8ysL7rAjo', '103.144.49.40', 'login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36 Edg/117.0.2045.31', 'Microsoft Edge 117.0.2045', 'Windows 10', 'Desktop', '2023-09-20 22:25:51', 'login', NULL),
(26, 'shakilofficial0', 'R0luVrYSNKq3tHsLjplgYE2ngQZ1qrzb6UDd0jtx', '103.144.49.40', 'login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36 Edg/117.0.2045.36', 'Microsoft Edge 117.0.2045', 'Windows 10', 'Desktop', '2023-09-21 22:37:18', 'login', '2023-09-21 22:37:21'),
(27, 'gelamefygy', 'kKTjj4klP1KU01fgNkusOwu3Z26i2hCx4cJ2e7N8', '103.144.49.40', 'login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36 Edg/117.0.2045.41', 'Microsoft Edge 117.0.2045', 'Windows 10', 'Desktop', '2023-09-27 00:25:07', 'login', '2023-09-27 00:25:36'),
(28, 'shakilofficial0', 'Lw8ic2f6q8YbwmHKsvdO7HTOlYVtEN19kmKNEB8d', '103.144.49.40', 'login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36 Edg/117.0.2045.47', 'Microsoft Edge 117.0.2045', 'Windows 10', 'Desktop', '2023-10-05 20:16:16', 'login', '2023-10-05 20:16:24'),
(29, 'shakilofficial0', '9sFEThNDSfytYhyFtxnPeH0Iz6GYIdQ8lm6ty4rj', '127.0.0.1', 'login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36 Edg/117.0.2045.60', 'Microsoft Edge 117.0.2045', 'Windows 10', 'Desktop', '2023-10-09 21:39:55', 'login', '2023-10-09 21:39:59'),
(30, 'shakilofficial0', 'kGkEjONah2SJckiWanzslxnXvNJsxma1FG1vujst', '103.97.163.76', 'login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76', 'Microsoft Edge 118.0.2088', 'Windows 10', 'Desktop', '2023-10-30 13:37:46', 'login', '2023-10-30 13:37:51'),
(31, 'shakilofficial0', 'IBF0fq1phhQIQqTXgXBxSvEH9ExgJ62jCeqNUeVc', '103.97.163.76', 'login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76', 'Microsoft Edge 118.0.2088', 'Windows 10', 'Desktop', '2023-10-30 13:38:02', 'login', '2023-10-30 13:39:35'),
(32, 'shakilofficial0', '1w1a57odkY0OSh7LJgMOoku7RJa1gCVy8PtbY8gO', '103.97.163.76', 'login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76', 'Microsoft Edge 118.0.2088', 'Windows 10', 'Desktop', '2023-10-30 13:39:48', 'login', NULL),
(33, 'shakilofficial0', 'S7D6S3nyzHrkLkfEotRZQkWhlwgGcdav1khsShAD', '103.144.48.40', 'login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'Microsoft Edge 119', 'Windows 10', 'Desktop', '2023-12-03 19:44:32', 'login', '2023-12-03 21:06:27'),
(34, 'shakilofficial0', 'Jsoxt6Yl5MK6SLAiektFX0AFBDfrA2H9vsfxvxsH', '127.0.0.1', 'login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'Microsoft Edge 119', 'Windows 10', 'Desktop', '2023-12-04 00:15:37', 'login', NULL),
(35, 'shakilofficial0', '9wgd5UAnobWEJhdidZUtpVOFfc7Jhmpm8BKiDhPM', '127.0.0.1', 'login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'Microsoft Edge 119', 'Windows 10', 'Desktop', '2023-12-04 01:33:59', 'login', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `name`, `email`, `mobile`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `created_at`, `updated_at`) VALUES
(5, 'shakilofficial0', 'S. M. Shakil Ahmed', 'shakilofficial0@gmail.com', '+8801701328902', '2023-09-19 14:45:57', '$2y$10$4MsjHgD61MH74FwYFgbHaOGkynYcqq3OWeNLwUre6St9aADtEMkh6', NULL, NULL, 'YZoiI1h2YUnZdcLhQ50j2cEHDn9hb37dxzEfOKHoGHNECTxQJI0reHDqF9em', '2023-09-19 10:31:02', '2023-10-30 13:37:22'),
(8, 'mdsaifurrahmann', 'Md. Saifur Rahman', 'saifur@codebumble.net', '+8801774606507', NULL, '$2y$10$3S6AQNl/jcbbde2qrqmlnusjBCHlnE0hW6VK09Umgvr9/12.zR3mG', NULL, NULL, NULL, '2023-09-19 11:40:11', '2023-09-19 11:40:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profile_user_id_foreign` (`user_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userdumplog`
--
ALTER TABLE `userdumplog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_mobile_unique` (`mobile`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `userdumplog`
--
ALTER TABLE `userdumplog`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `profile`
--
ALTER TABLE `profile`
  ADD CONSTRAINT `profile_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
