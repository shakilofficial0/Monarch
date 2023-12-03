-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 30, 2023 at 07:40 AM
-- Server version: 10.5.19-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u920477801_XSystem`
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
  `zip` int(11) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT '0',
  `profile_image` text DEFAULT NULL,
  `login_details` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`login_details`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`id`, `user_id`, `designation`, `address`, `state`, `zip`, `status`, `profile_image`, `login_details`, `created_at`, `updated_at`) VALUES
(5, 5, NULL, NULL, NULL, NULL, '0', NULL, NULL, '2023-09-19 10:31:02', '2023-09-19 10:31:02'),
(6, 6, NULL, NULL, NULL, NULL, '0', NULL, NULL, '2023-09-19 11:40:11', '2023-09-19 11:40:11'),
(8, 10, NULL, NULL, NULL, NULL, '0', NULL, NULL, '2023-09-27 00:24:06', '2023-09-27 00:24:06');

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
('19KBNJWO9bazcMWFZ3CQDxtaUURPGbEuhwxN1hpW', NULL, '45.128.163.132', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:98.0) Gecko/20100101 Firefox/98.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNnphSFBHV0FNTFM1amJPZzloTEhwblNicmF1UktsM1VlWGFXZ3JFNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHBzOi8vYWNjb3VudHMuY29kZWJ1bWJsZS5uZXQvc3lzdGVtL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1698497096),
('1aZmDTB4p6psVmfniFlth9bboRMffBahmzbnMliZ', NULL, '34.23.194.168', 'ZoominfoBot (zoominfobot at zoominfo dot com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVUEwY3hIQnl0ZGlzeUdJdEVWNWtjT0xOd0ZaVjRQVTRJajFvNDNHMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYWNjb3VudHMuY29kZWJ1bWJsZS5uZXQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1698084824),
('2RVRYat8nsYysfozzmgWkZCiz0HmWzqB6LOTIchA', NULL, '198.251.73.117', 'IonCrawl (https://www.ionos.de/terms-gtc/faq-crawler-en/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoieXE4eFVrZE9zYmk4QWdheHlGTkkzV1dXcVpKOWtsMVBrVUFnNTRxVCI7czo2OiJsb2NhbGUiO3M6MjoicnUiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjUwOiJodHRwczovL2FjY291bnRzLmNvZGVidW1ibGUubmV0L2NoYW5nZS1sYW5ndWFnZS9ydSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1698134261),
('3DOyeM7ZWItOkqagZhhxarcG1SFSrRAjBBPukNig', NULL, '13.58.58.245', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMlVWRm90Y211bUY0bE51b3FuRHoyZ3hkcFhKWGNrdDhHZmZIVzN3bCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTQ6Imh0dHBzOi8vYWNjb3VudHMuY29kZWJ1bWJsZS5uZXQvc3lzdGVtL2ZvcmdvdC1wYXNzd29yZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1698050884),
('3m6MOQPVulOGnwhVY6ikxwPnl6LHazODJ7yFer5w', NULL, '47.128.49.189', 'Mozilla/5.0 (Linux; Android 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; Bytespider; spider-feedback@bytedance.com)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVjlNa2F1NzZpcXJpYU1WTDJmT1RnWEc2OUpiVGo3dmpsRHRKUnVXVCI7czo2OiJsb2NhbGUiO3M6MjoiZXMiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjUwOiJodHRwczovL2FjY291bnRzLmNvZGVidW1ibGUubmV0L2NoYW5nZS1sYW5ndWFnZS9lcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1698366488),
('44qiMt6ndh53NNtuSH6BP8jGt1ZORfJlmfRLgJkx', NULL, '86.16.34.40', 'Mozilla/5.0 (Linux; Android 5.0; SM-G900P Build/LRX21T) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.5590.1358 Mobile Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQm1NR3Q0UHIzcHZhZkJTOHFOZnVFMVVPQmpsRExTTXVkZnBmbXBkTSI7czo2OiJsb2NhbGUiO3M6MjoiamEiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjUwOiJodHRwczovL2FjY291bnRzLmNvZGVidW1ibGUubmV0L2NoYW5nZS1sYW5ndWFnZS9qYSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1698588308),
('4YavA9OK4i8uyPRb03v8iprtdnWT2QbHA8X1ukBV', NULL, '198.251.73.113', 'IonCrawl (https://www.ionos.de/terms-gtc/faq-crawler-en/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoicEJDb2g2NnVXc29NQ0pXbUFrZ2RMRGNicU10U2gwSjZHZVZHM3dXZSI7czo2OiJsb2NhbGUiO3M6Mjoia28iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjUwOiJodHRwczovL2FjY291bnRzLmNvZGVidW1ibGUubmV0L2NoYW5nZS1sYW5ndWFnZS9rbyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1698134260),
('5uZ4Cm8yGGgMUYMg8gebaTrif2izXpYbwZaYcBG2', NULL, '47.128.20.34', 'Mozilla/5.0 (Linux; Android 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; Bytespider; spider-feedback@bytedance.com)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSm50OTBKSUJZNE5sc0x0cFBBT043N1Y1VkVuaUhVQVdTdDFpQ2tSMyI7czo2OiJsb2NhbGUiO3M6MjoiZW4iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjUwOiJodHRwczovL2FjY291bnRzLmNvZGVidW1ibGUubmV0L2NoYW5nZS1sYW5ndWFnZS9lbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1698346798),
('5y2leTeBdK0saTHu4ryv61o51c1spxfiAm2HJO3y', 5, '103.97.163.76', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiMXcxYTU3b2RrWTBPU2g3TEpnTU9va3U3UkphMWdDVnk4UHRiWThnTyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHBzOi8vYWNjb3VudHMuY29kZWJ1bWJsZS5uZXQvaGF3ay9ob21lIjt9czozOiJ1cmwiO2E6MDp7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjU7fQ==', 1698651588),
('7beK0u8FkYJ8EICeHzqETI3F1Z3POP4rUdpZzudq', NULL, '13.58.58.245', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZDZYT2ZIcTZVSEVFRVBFSEhHaUxLY3F5ZU1MRXJSU0dFa2VMcmp0UiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYWNjb3VudHMuY29kZWJ1bWJsZS5uZXQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1698050884),
('7hToKnXPa7QG5FpSiPt2vfPNOwFHGsRXKP1xy8i2', NULL, '13.58.58.245', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWEc5a3E0U21mcXZMVnB6Y0s3dXJuWnFkdmtyUWNQdXFIZjRBY2l3diI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHBzOi8vYWNjb3VudHMuY29kZWJ1bWJsZS5uZXQvc3lzdGVtL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1698050884),
('7MD0NCwHvjCGyeIqiUROQcXuWbRpOd7MMm4HY1BQ', NULL, '47.128.39.55', 'Mozilla/5.0 (Linux; Android 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; Bytespider; spider-feedback@bytedance.com)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVHd1WGdmWFYwYm1SaEhrNTVVZkRVbXQ5R0VzR0lUbnB3T1BRWU4xSCI7czo2OiJsb2NhbGUiO3M6MjoiaXQiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjUwOiJodHRwczovL2FjY291bnRzLmNvZGVidW1ibGUubmV0L2NoYW5nZS1sYW5ndWFnZS9pdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1698460240),
('7SLNUNwbOAc3EaKL5tFU5mAoUkC1iGQ93g0vmt1o', NULL, '13.58.58.245', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMlhzMFNGZzJxOGhGODA5U3FvWlpVcG81UTBVSVdYTUdKeUFIVU5ZVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYWNjb3VudHMuY29kZWJ1bWJsZS5uZXQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1698050885),
('868Z4Gz6vZyXQLMvUuODucQWQuA4QjbJeGbzXXrs', NULL, '18.116.71.144', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWnpCTmlsN1dzY2QydnlLT2pKNFZQaTlXeWJ4WFdiYWcxUURzYWFTViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHBzOi8vYWNjb3VudHMuY29kZWJ1bWJsZS5uZXQvc3lzdGVtL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1698443172),
('9C3BGAL1MQhwUEfxNW8gx7EUKxDxMehVJdaqdjuM', NULL, '13.58.58.245', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMkxTWXNyNmlCSmZIMnlkalRZSUlCVDhVNmloMlNwdEJ1ZWExTzBIUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYWNjb3VudHMuY29kZWJ1bWJsZS5uZXQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1698050885),
('9HbEOUOOp71UiWYNic37vVBKRnR6VDtwbmTZEDQz', NULL, '47.128.37.97', 'Mozilla/5.0 (Linux; Android 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; Bytespider; spider-feedback@bytedance.com)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNlAybkFUT2NQTE9lVnJPR0Nxdjg0TVVONGJwM21YeDZSY21zWTVzUyI7czo2OiJsb2NhbGUiO3M6MjoiYm4iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjUwOiJodHRwczovL2FjY291bnRzLmNvZGVidW1ibGUubmV0L2NoYW5nZS1sYW5ndWFnZS9ibiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1698546117),
('9NKUs0dmkUCPM0UaClxL8kcYR7C8U2kYmXO0qcSE', NULL, '162.142.125.223', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMXppa001bWR5ZkQ1S0xERm5mNjN1dzlYWDRzVVlad3RJREZpM1l5biI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYWNjb3VudHMuY29kZWJ1bWJsZS5uZXQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1698124146),
('AAQtSJ6FyRsPHvdofHkw03J0mcseeX6kvile7diT', NULL, '198.251.73.99', 'IonCrawl (https://www.ionos.de/terms-gtc/faq-crawler-en/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTjAzMVU4cEgyTVNvb1dOQlUwRHRYQzRqM21nZlFkWkRRVG1XSmsxcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYWNjb3VudHMuY29kZWJ1bWJsZS5uZXQvc3lzdGVtL3JlZ2lzdGVyIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1698134267),
('acwJp6HW8pvdt6Vc0hXQoRPfQuz1mjhaxlJxb7mg', NULL, '198.251.73.89', 'IonCrawl (https://www.ionos.de/terms-gtc/faq-crawler-en/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoieUI1S1R1cmduUU10c2RQWWFSZlBNN1N3NlplNEpEekkyMkxuVlBsViI7czo2OiJsb2NhbGUiO3M6MjoiYXIiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjUwOiJodHRwczovL2FjY291bnRzLmNvZGVidW1ibGUubmV0L2NoYW5nZS1sYW5ndWFnZS9hciI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1698134260),
('aPJ0qVn6pzqb6tgB9SbOjpJSRnaB40xRt605rfcS', NULL, '198.251.73.99', 'IonCrawl (https://www.ionos.de/terms-gtc/faq-crawler-en/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicXpSWWlCTjNsd0JidDhGNkduRVdZRWZBU25IQWdmbXJZckxGNEpNYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYWNjb3VudHMuY29kZWJ1bWJsZS5uZXQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1698134266),
('AvG9ZXzXGCxaz31relIKLH8Bwl6BI8vnACyWGfdX', NULL, '103.146.42.188', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNERnaGpxVDI4OGhHdVh4OGpncXVBRWFTd2tmT2hhQ0ZsNHFRMG5zZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHBzOi8vYWNjb3VudHMuY29kZWJ1bWJsZS5uZXQvc3lzdGVtL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1698580851),
('bLhd6eGNeCGoaNw9beBEGAiqj57tXiIbUfpYDavm', NULL, '47.128.20.246', 'Mozilla/5.0 (Linux; Android 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; Bytespider; spider-feedback@bytedance.com)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWEkwN092NzFJZWcyMUlaOEpnUGdwamRSdUFBb21IV3BlQkNZdzBFTyI7czo2OiJsb2NhbGUiO3M6Mjoia28iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjUwOiJodHRwczovL2FjY291bnRzLmNvZGVidW1ibGUubmV0L2NoYW5nZS1sYW5ndWFnZS9rbyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1698479982),
('BZmII1OsGeMxL7aT1jsFfEa2mR3yJM3RJEVM6HaI', NULL, '13.58.58.245', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiempINXgzM1VFYjc4bnZCbE9Idm9oWEo1eFQ5dmdVMm5QNjlhRFlnOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHBzOi8vYWNjb3VudHMuY29kZWJ1bWJsZS5uZXQvc3lzdGVtL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1698050885),
('CsJMWn0DO1nPic1cHe7nLfu1DeKls2COXpMQNiPe', NULL, '13.58.58.245', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUjl4ZHJzVVJGNjY3YWxZbjJ4S1pwZUl2RnRFY3haSm16dmNOaFBYRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHBzOi8vYWNjb3VudHMuY29kZWJ1bWJsZS5uZXQvc3lzdGVtL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1698050885),
('cz3zlkMLdNzsmZa7ANQ5oEgol54Cp0UBeawXI9bT', NULL, '52.167.144.145', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/103.0.5060.134 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN3RwRG1LS0k2RjFZNUszWWlPSVZKczNOQkdxOUthRG5LeVRjWVlicyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHBzOi8vYWNjb3VudHMuY29kZWJ1bWJsZS5uZXQvc3lzdGVtL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1698383194),
('dtI1G3nWK7xtP6Qshssp6pwFV51sR9Bpcf3HGcfX', NULL, '13.58.58.245', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOWY0SkQycmFHUTYzRGVoMFdNcGdPc3NMSGJCNDltSmlsQ3BST3JGUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHBzOi8vYWNjb3VudHMuY29kZWJ1bWJsZS5uZXQvc3lzdGVtL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1698050885),
('eAkY7BQvS33d0gaMNROtQQegHGRrrM76fnk0OyY1', NULL, '198.251.73.99', 'IonCrawl (https://www.ionos.de/terms-gtc/faq-crawler-en/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidDczTXVyUERoZ0cxeE9mTjJzNGVhZ3E1M1RRUUVxQkhWaEl2OTZXaiI7czo2OiJsb2NhbGUiO3M6MjoiZGUiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjUwOiJodHRwczovL2FjY291bnRzLmNvZGVidW1ibGUubmV0L2NoYW5nZS1sYW5ndWFnZS9kZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1698134260),
('eBEuT1a5sq8pyooB4nOcPwHL80fVLACukG6lr7mm', NULL, '51.222.253.19', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoienI0R1h5ZXhtUnNZUmtsNHV6cFhobzgwdVhMNWQ4YUVaOW40eXBhaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHBzOi8vYWNjb3VudHMuY29kZWJ1bWJsZS5uZXQvc3lzdGVtL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1698505136),
('Es5ScNvcJ3GayxKIBwO67mytUmXIpz2VBhqTmdK2', NULL, '13.58.58.245', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiczVINTR1a1FacHRMSGVXNEFzQ09iSTJESncyelNOV2UzTEltOTk5NiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYWNjb3VudHMuY29kZWJ1bWJsZS5uZXQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1698050885),
('eVg7YgOWrZsDj4HrT7paUQ509dg1pCFh65rx5uXM', NULL, '198.251.73.109', 'IonCrawl (https://www.ionos.de/terms-gtc/faq-crawler-en/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidGpQTUlncVZzcHRsQjlFcVdQNkt1a0FUQWluVk9TV2JORkIwM1h0OCI7czo2OiJsb2NhbGUiO3M6MjoiZW4iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjUwOiJodHRwczovL2FjY291bnRzLmNvZGVidW1ibGUubmV0L2NoYW5nZS1sYW5ndWFnZS9lbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1698134260),
('exdndieYiPUuE0uWw5NyhV4KQnbTxUC1gi5pmC0a', NULL, '162.142.125.223', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNWs1VFJialAyb3hqeFNiZ3p4cU5yQ0FiVUJsdHNrR0xvZDNXNlAwQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHBzOi8vYWNjb3VudHMuY29kZWJ1bWJsZS5uZXQvc3lzdGVtL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1698124148),
('FddmzjBtIH5pncsqo1tQfvUH3jtILzXSd87trOLz', NULL, '172.96.81.174', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.5478.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQWVvajdONllSMVUyUDRtdDZWdXBkQVJtUXZlczl3d05vUEY1cmZKeSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHBzOi8vYWNjb3VudHMuY29kZWJ1bWJsZS5uZXQvc3lzdGVtL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1698139657),
('FvLowxMqfKQ1k1FQ41Fl4SnXcN40741dU5PyajS4', NULL, '216.244.66.248', 'Mozilla/5.0 (compatible; DotBot/1.2; +https://opensiteexplorer.org/dotbot; help@moz.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid1AwTjdlQUt1YzB4OXRiSXVnakRsWEV3MHFQbnJlTGJxbFFLT01ROSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYWNjb3VudHMuY29kZWJ1bWJsZS5uZXQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1698336708),
('G2N2AjD5vSYTdGTyUBES9AnwnHhltjIEU9aJ08Zm', NULL, '198.251.73.69', 'IonCrawl (https://www.ionos.de/terms-gtc/faq-crawler-en/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVnhZWjRacnVOZkpjZnppbXBJYzF5Rm1pbmdlSWljdlVYdHRsRWNoRiI7czo2OiJsb2NhbGUiO3M6MjoiaXQiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjUwOiJodHRwczovL2FjY291bnRzLmNvZGVidW1ibGUubmV0L2NoYW5nZS1sYW5ndWFnZS9pdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1698134260),
('GRKnKOP4hfBDmQQmbdxpt0ZpiwVfu3sJI1jLC1jD', NULL, '198.251.73.99', 'IonCrawl (https://www.ionos.de/terms-gtc/faq-crawler-en/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWGI1ZkFQNzZJSGFPbEtWbFpuOG94Tm93UjJpUDQzYmw4R2dHR05SaSI7czo2OiJsb2NhbGUiO3M6MjoiYm4iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjUwOiJodHRwczovL2FjY291bnRzLmNvZGVidW1ibGUubmV0L2NoYW5nZS1sYW5ndWFnZS9ibiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1698134263),
('gu4pvvzU93KoS6DZmyRs1CsqbuSiwFobY8FmPE9T', NULL, '198.251.73.89', 'IonCrawl (https://www.ionos.de/terms-gtc/faq-crawler-en/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMlR5ZmtDRVdXOWdJdlB0N0ltQUdBMGdRUFdGOTloYWIxcm5qRWVrUyI7czo2OiJsb2NhbGUiO3M6MjoiZXMiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjUwOiJodHRwczovL2FjY291bnRzLmNvZGVidW1ibGUubmV0L2NoYW5nZS1sYW5ndWFnZS9lcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1698134263),
('gyqRrAIn0iN6uzWVSUXsP4tpt7o5333JsndqkerR', NULL, '13.58.58.245', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN09pRlJHelNjb0pPOVNQam12Q0ZhQnhVZmEwTDZxd0NwOHVoVDZyWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYWNjb3VudHMuY29kZWJ1bWJsZS5uZXQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1698050883),
('h2650CLSSDhlkAXNNwFNvk1rVS9P06T5Vb7oVOLh', NULL, '13.58.58.245', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZkV1OG8wbzdBQk9hWmVJMjd2Z25iaHN3WGtJOW5XelJ2WEo0QlE3cCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYWNjb3VudHMuY29kZWJ1bWJsZS5uZXQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1698050885),
('hA51oAoP01Xo3l1vQCMjzN75puGRaif4EQJD0ZPo', NULL, '13.58.58.245', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMEFvd1BLcjNjc3kxeTNBdWpHN0w1TktxZ2VtSlM2UEpCek9aNzNsTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHBzOi8vYWNjb3VudHMuY29kZWJ1bWJsZS5uZXQvc3lzdGVtL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1698050885),
('hcIQcAGRStXUKgRKNf53co6KMzaaBpvTyRNDxlBe', NULL, '13.58.58.245', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicDRtOEJDM3FzTEVxZUhMcUZTWTk3aXo2dEx5OGRhTjEyY3l2b05rWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHBzOi8vYWNjb3VudHMuY29kZWJ1bWJsZS5uZXQvc3lzdGVtL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1698050885),
('HiQyCDLDGY9SIYS62skrhnijGfnCxf2Le8DTKzvM', NULL, '13.58.58.245', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicFYyQ0x1TDJ6N0dQMGh3VU1hc2htM001cDlxdjUyVFdhOGpLS3BQaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHBzOi8vYWNjb3VudHMuY29kZWJ1bWJsZS5uZXQvc3lzdGVtL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1698050885),
('Hk9G8rL1B06p2Lv1Lp4G3GDa99G1NwqSwuz8RzWZ', NULL, '35.227.42.10', 'ZoominfoBot (zoominfobot at zoominfo dot com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVm5JWHpDSmxkZVZnYmFCazlXNlpqV3AxRDBEQzFjM1RPRkJ5N21ldiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYWNjb3VudHMuY29kZWJ1bWJsZS5uZXQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1698100351),
('I0snacpAAd3FjiQ7xYihiRE9te4YLNYPaY9adgcQ', NULL, '13.58.58.245', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibW5QM0lBQ3JycE1vdlpVcmRiU2hnMTVFZGtlUWVORzQwd2xOdW1OViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHBzOi8vYWNjb3VudHMuY29kZWJ1bWJsZS5uZXQvc3lzdGVtL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1698050884),
('ihRC2A2JmyAhkjhUn7URxhvhZCYVkdNzFU5WP4GG', NULL, '103.97.163.76', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.69', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibnVaZGJBcUJSNU9SM0VXNW9zZnEzeDdvVnBnWWMzVjNPR25ocXBLZSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHBzOi8vYWNjb3VudHMuY29kZWJ1bWJsZS5uZXQvc3lzdGVtL2xvZ2luIjt9fQ==', 1698555123),
('iK36skPs4ZlDI2ARpGwlBLjlegJBdbnJMOBtHceX', NULL, '13.58.58.245', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNXFaTlQ1SXdkdDZsRnl1WFdMUkI1cVJPdW1CdTdxSktpMzA5V08yUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYWNjb3VudHMuY29kZWJ1bWJsZS5uZXQvc3lzdGVtL3JlZ2lzdGVyIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1698050884),
('ik5FcgLc2quYKeoqjH2AN2IwFLwxdHG2g4xvhu2H', NULL, '198.251.73.109', 'IonCrawl (https://www.ionos.de/terms-gtc/faq-crawler-en/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRHZZNk5rWE1ReG1wTjM1Q3ZiOXZFUmxLM2pSMlpQNWNBOXNlMzNTaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYWNjb3VudHMuY29kZWJ1bWJsZS5uZXQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1698132550),
('iSmLKwK8WMgTlNfyF2UngK8h90vzVruJXv2RaRFv', NULL, '13.58.58.245', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic0lSQW9LTkZPT2R3eWZhNVA5ZFo5Vms4YWM3NlpaN0FsVk1kdTlnRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHBzOi8vYWNjb3VudHMuY29kZWJ1bWJsZS5uZXQvc3lzdGVtL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1698050885),
('j1JggKYLqH8YjyEhk0uOGbCFYsT4af8YCSYaXi0F', NULL, '13.58.58.245', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYmx6RWtudUhKVkwzVGZQVTh1N0sweHdyMVM1Q29aTU10dk4wY2o2RSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYWNjb3VudHMuY29kZWJ1bWJsZS5uZXQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1698050885),
('JCQhpo2hS8swzFferkY8675WXPmAJvK5x93umWoh', NULL, '13.58.58.245', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoicHIzQ0lmckFhZDhLR3ZzRk9OckltV05JNXM2TDNhNVFTUWpPZHVleiI7czo2OiJsb2NhbGUiO3M6MjoiZnIiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjUwOiJodHRwczovL2FjY291bnRzLmNvZGVidW1ibGUubmV0L2NoYW5nZS1sYW5ndWFnZS9mciI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1698050884),
('jhTRiEPlApVSL2RmQSoKWE2OL4yfDU12uIFRbOyb', NULL, '45.128.163.132', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:98.0) Gecko/20100101 Firefox/98.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ2xJeWg2ZnFJb0VDZDc5cEZHYml6eUYxc2FqenJ5OVBvY1A1MGV2QSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYWNjb3VudHMuY29kZWJ1bWJsZS5uZXQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1698497095),
('JSZxfBUfQ97jVgFgHv6GfHQ8r6U2W20NPSpw57af', NULL, '45.81.39.201', 'python-requests/2.31.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMGtlUDQ2emQweWxSZE5CbzBPWjhiRUcwNFdyYlp6NEZUa3cxZVFHdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYWNjb3VudHMuY29kZWJ1bWJsZS5uZXQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1698500701),
('JXmpChUKTXiRv3oYiaWfl9uulcj4ntr2krW9hsAe', NULL, '13.58.58.245', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiclIyQWR2NXdTZkRxeXprcEw0VU1oVW5QbDJZWlRCSmpsZ1RzZkswQyI7czo2OiJsb2NhbGUiO3M6MjoiYXIiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjUwOiJodHRwczovL2FjY291bnRzLmNvZGVidW1ibGUubmV0L2NoYW5nZS1sYW5ndWFnZS9hciI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1698050884),
('kaN0gYJOcCtTBXYQVg1VJMFZxlJdv9wYVtPG02YA', NULL, '13.58.58.245', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibjByTGkyTkZiQU1GUE5BMk8zWmV3Z0FKc2EyRmtuVTltcHVheW1qUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYWNjb3VudHMuY29kZWJ1bWJsZS5uZXQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1698050885),
('KiZmuA50WxT9BEsRWPnULhv72UIf9mskC8bOTZTp', NULL, '13.58.58.245', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic1EyOWZ6T0dPd01kRlRQUWZxQm0wZ3FHZ0pZdmFaQ0ZwWnVCeU1oMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHBzOi8vYWNjb3VudHMuY29kZWJ1bWJsZS5uZXQvc3lzdGVtL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1698050885),
('L8VBP4fAOvYasBtu320iw0tpcQSVcAY3XVUckoQG', NULL, '35.196.21.185', 'ZoominfoBot (zoominfobot at zoominfo dot com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMTNyT0lhN3dOSzZTSFBBaTNVcGk0NWFRVE9kRlRKZWR4eHVEVzIzRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHBzOi8vYWNjb3VudHMuY29kZWJ1bWJsZS5uZXQvc3lzdGVtL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1698113699),
('li87f8dWsweAyplbSAV8WyKnXLdddsuBaFcV9fE6', NULL, '13.58.58.245', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZjRaYVcxdHVXb0pYdmZvTjJLTHdrWGlJa2p6SzZRR0xhWk1aMno0MCI7czo2OiJsb2NhbGUiO3M6MjoiZXMiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjUwOiJodHRwczovL2FjY291bnRzLmNvZGVidW1ibGUubmV0L2NoYW5nZS1sYW5ndWFnZS9lcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1698050884),
('lmx3KHlqiAAYH6nL43kV4OdDGd1P8rloXExTCzEs', NULL, '13.58.58.245', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN0pYM1FOM0RJSGxqZnJuZjk3empYQm9FOEQ3Ym5VZ1NFeXRVd3ppaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYWNjb3VudHMuY29kZWJ1bWJsZS5uZXQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1698050885),
('LQ04IzI2w1iclVVJbs8n4aMRrmzpZJFvEiRPSIpc', NULL, '47.128.29.88', 'Mozilla/5.0 (Linux; Android 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; Bytespider; spider-feedback@bytedance.com)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTnBEMXZ1eTBidlp6cllFUDNyRWJEaWhpdHQxZ2U3R1hTSktWSUJ0YyI7czo2OiJsb2NhbGUiO3M6MjoiaGkiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjUwOiJodHRwczovL2FjY291bnRzLmNvZGVidW1ibGUubmV0L2NoYW5nZS1sYW5ndWFnZS9oaSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1698415721),
('m0DfUxCTkOxsnaRPkgS21YQmNYyHMNEyeChzivCn', NULL, '157.55.39.205', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/103.0.5060.134 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS3ZOdDlRSWZwS1BWNmZLTGxhV3czVTZGaHBwU2h3RW5GYkt4R0tZbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHBzOi8vYWNjb3VudHMuY29kZWJ1bWJsZS5uZXQvc3lzdGVtL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1698575514),
('m3xc6Mcj0rlj7dLBdIhe9g6MHRHIPeBRVgFLcmBj', NULL, '13.58.58.245', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWjFPQW9qMXk4V1l1d3RPS0tiY3pNcndtMkdqU3JrRk82Nm9kRDc2WSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYWNjb3VudHMuY29kZWJ1bWJsZS5uZXQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1698050885),
('mNIpR9sI6hkJN3ecXXxGBIaVXvRUCTIHTFHfUchf', NULL, '13.58.58.245', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidlR0QXBUUkhZMmtpY2RnQXlhU2ZsRHRSNHZmVVRVTWxON0pUbUM5SyI7czo2OiJsb2NhbGUiO3M6MjoiaGkiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjUwOiJodHRwczovL2FjY291bnRzLmNvZGVidW1ibGUubmV0L2NoYW5nZS1sYW5ndWFnZS9oaSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1698050884),
('OECpfwV0jKPIHCBm3jGJ46gqcb6mZmrASUqLPU2F', NULL, '13.58.58.245', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNmM5TEE3T1NNcDdFeUhacU51UFJxWG5hajF0NXRxV2pXSVBzdDRBQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYWNjb3VudHMuY29kZWJ1bWJsZS5uZXQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1698050884),
('oMKty9PWw9QqFY90W4qrs7liNw3d96RkxEkiirMc', NULL, '13.58.58.245', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidTdwemFHNEZkaExhWFQ5Z00yRjJwUVZGUDRlenY4eVA5Z0xROXpqMCI7czo2OiJsb2NhbGUiO3M6MjoiZGUiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjUwOiJodHRwczovL2FjY291bnRzLmNvZGVidW1ibGUubmV0L2NoYW5nZS1sYW5ndWFnZS9kZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1698050884),
('Ox8bA7SsCy9vAN3gPyoYND3kBj9y3VEy2txnPZC5', NULL, '198.251.73.109', 'IonCrawl (https://www.ionos.de/terms-gtc/faq-crawler-en/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUEV2TnE2OXhXcTFmOWUxbEVjeUtxbk04dUxRNXVTd3FaWHo5U2JYZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHBzOi8vYWNjb3VudHMuY29kZWJ1bWJsZS5uZXQvc3lzdGVtL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1698132562),
('P3HgBLTjlVRWt9EI2BMAWtQoFo6wSYcFGGOCOzPF', NULL, '13.58.58.245', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiOEg4OGhRZHFjMldtUzJTV2FYSmlRS2RoOWExSTBTeklnUWRjOWQwNSI7czo2OiJsb2NhbGUiO3M6MjoiYm4iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjUwOiJodHRwczovL2FjY291bnRzLmNvZGVidW1ibGUubmV0L2NoYW5nZS1sYW5ndWFnZS9ibiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1698050884),
('PC3avVgRXLLuHTV0JycF59oPV52CgEpBGQUOIKPZ', NULL, '13.58.58.245', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZklMQnBSTEZnYXl1RlNhbDBMbHVIUVJ0WlJjUElQb2RqeEVYS2NodCI7czo2OiJsb2NhbGUiO3M6MjoiZW4iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjUwOiJodHRwczovL2FjY291bnRzLmNvZGVidW1ibGUubmV0L2NoYW5nZS1sYW5ndWFnZS9lbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1698050884),
('pjGJOgLxd4idld5Qz4F2PXW14lzOf9MaAXRg8v5q', NULL, '13.58.58.245', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQk5oenNLZFd5NjVuV01YMGVBV0hxUGFVS3lrV1REN25ldnRZTGhMbCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHBzOi8vYWNjb3VudHMuY29kZWJ1bWJsZS5uZXQvc3lzdGVtL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1698050885),
('pSzs7hC1RH76KNL3PEHuQ2pAQSazf8FVddT35CjV', NULL, '207.46.13.116', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/103.0.5060.134 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQkZyRm80MXZIYnlQWmJEZ3o5Q0djVW5tSWhuaG1iWExxeTJhdTlxOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYWNjb3VudHMuY29kZWJ1bWJsZS5uZXQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1698629287),
('q5YL2grcHs7fhT816w4XXXllVBSzW0xh7aL9187Z', NULL, '13.58.58.245', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSk04ZzFvMUdTVkZYSmVaSWdPVXRzeVdOWDdpU1U3WTZDc2tyVDdyViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHBzOi8vYWNjb3VudHMuY29kZWJ1bWJsZS5uZXQvc3lzdGVtL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1698050885),
('Q9H7W5407Ymq1fIyyJidK6EgRwQ7jxc6qdcMNRKg', NULL, '103.97.163.76', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.69', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoicmlzd01oRkNQaHIwZWY2a1dOT01nd2lHeDdZcEQ0MnlFdEdKWUEyUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHBzOi8vYWNjb3VudHMuY29kZWJ1bWJsZS5uZXQvc3lzdGVtL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo2OiJsb2NhbGUiO3M6MjoiZW4iO30=', 1698523579),
('qbwbCivAnmToe0mrsIaY92HEu8XaVwAt7ORUbBib', NULL, '13.58.58.245', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoia0xYTzBKQnBkdzRBNDNXS2ZJRFhSTFZFc2pqSU9seUN6S1NCUU9UVSI7czo2OiJsb2NhbGUiO3M6MjoicnUiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjUwOiJodHRwczovL2FjY291bnRzLmNvZGVidW1ibGUubmV0L2NoYW5nZS1sYW5ndWFnZS9ydSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1698050884),
('rq04JmGWtFxTjp1ek6dWRo1rwM5nUpXrBIQmyPFY', NULL, '13.58.58.245', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTEFoNURSVWFIOTZhWE1CYjIxMDBqdlQyYWFoQmMzVXNOc0dRZXRVbSI7czo2OiJsb2NhbGUiO3M6MjoiaXQiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjUwOiJodHRwczovL2FjY291bnRzLmNvZGVidW1ibGUubmV0L2NoYW5nZS1sYW5ndWFnZS9pdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1698050884),
('rw9DsieZzbPkhsRakEfyxZQ054cBwtl5ysycXqF6', NULL, '47.128.50.14', 'Mozilla/5.0 (Linux; Android 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; Bytespider; spider-feedback@bytedance.com)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiYXAyRDlQdTZoM3JxaEdGNGd2eDZLbkVvTFZ6WWRKT0dUWEZ4alZyZiI7czo2OiJsb2NhbGUiO3M6MjoiZGUiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjUwOiJodHRwczovL2FjY291bnRzLmNvZGVidW1ibGUubmV0L2NoYW5nZS1sYW5ndWFnZS9kZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1698384288),
('SliMpXpXv80AA4C0qJj0nTwqcLc2SUstwfnCoQFt', NULL, '47.128.47.177', 'Mozilla/5.0 (Linux; Android 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; Bytespider; spider-feedback@bytedance.com)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSmwwU2h3eEczSkNleEZUQjZZNE05QlllY2FWM29mNkRJWlNIUndXbiI7czo2OiJsb2NhbGUiO3M6MjoiZnIiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjUwOiJodHRwczovL2FjY291bnRzLmNvZGVidW1ibGUubmV0L2NoYW5nZS1sYW5ndWFnZS9mciI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1698503139),
('SVFe0ZB4gos0W522I0khiJqdZAqrAfP7z53f8YHc', NULL, '13.58.58.245', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicG1QQ04xY3ViVFdZOXp0QUVSZ2V5bTlwbjlXVDNLZEU1QzFFSmxxUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHBzOi8vYWNjb3VudHMuY29kZWJ1bWJsZS5uZXQvc3lzdGVtL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1698050885),
('T0aBcnRp6WmSMqk8tyM7jaG2qT1GhRymLa5W2pIa', NULL, '35.227.42.10', 'ZoominfoBot (zoominfobot at zoominfo dot com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQXk3dEp6UHJQbDJQS3NvVkRYSWJCd2gyalM2MzAyS0tyWUZDWmRCUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHBzOi8vYWNjb3VudHMuY29kZWJ1bWJsZS5uZXQvc3lzdGVtL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1698100352),
('tNzpZDHY7tO42blKSYo2uMPQMhlIapqG5g39CsZw', NULL, '198.251.73.69', 'IonCrawl (https://www.ionos.de/terms-gtc/faq-crawler-en/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidmJ5U3NrMVBSVGFQUFFvZklaRVhQZTlQdnFyYXVXTUJjYXVDdUNOciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTQ6Imh0dHBzOi8vYWNjb3VudHMuY29kZWJ1bWJsZS5uZXQvc3lzdGVtL2ZvcmdvdC1wYXNzd29yZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1698134261),
('toYvFCw0F21kp1MN6U1Ea0kjJuErwUuC2RyYLXcC', NULL, '13.58.58.245', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidmxWSGhpVE10SUxpSXpIWnViMTJUUXVxUm1OSXY3SmF5Qm5rUkdYcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYWNjb3VudHMuY29kZWJ1bWJsZS5uZXQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1698050885),
('ttx4VDFEp22k746HifPT0eBcfdg53WRMThB3Ofxe', NULL, '13.58.58.245', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSWloVVBwS0VxOUtsVTY1bmdiMTdMUzV1ekNqRTBSODdES3Z5cHpRVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHBzOi8vYWNjb3VudHMuY29kZWJ1bWJsZS5uZXQvc3lzdGVtL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1698050885),
('TXCRl68RpRIxZ7TMwtjdUUEP8CdcnnYrsewC1PCd', NULL, '198.251.73.109', 'IonCrawl (https://www.ionos.de/terms-gtc/faq-crawler-en/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiYkhPQmswaW5ibFNUZ2g3VWl5a1V2SjJYTU05bU83MVJMTlRwSHNyVSI7czo2OiJsb2NhbGUiO3M6MjoiZnIiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjUwOiJodHRwczovL2FjY291bnRzLmNvZGVidW1ibGUubmV0L2NoYW5nZS1sYW5ndWFnZS9mciI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1698134261),
('tyEXfg4onJW9yCV203xH6wVls8H6CgH0wR2pWTTZ', NULL, '13.58.58.245', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSURDenk1dk12dll4WHhjWXdRV1RGbnpkZU5OYVprWUlnYXZIbnNpUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYWNjb3VudHMuY29kZWJ1bWJsZS5uZXQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1698050884),
('Ucz94MrrBx0mUs2WjBjaZET7iZWJe1j8o2sCZu93', NULL, '40.77.167.52', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/103.0.5060.134 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia3J3bU1ZdlFBbnFmYmlTMHhsN0RIbFhXSzdvUW1GRm1SSVJTOTREaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHBzOi8vYWNjb3VudHMuY29kZWJ1bWJsZS5uZXQvc3lzdGVtL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1698352466),
('UkmI3LF2oQHZCMfutmdXtk5sUg4ZEOH42x9ctGRw', NULL, '207.46.13.36', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/103.0.5060.134 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTDdxc0lEWmd5MmJLazF0T1p4eWNYNXczS0RMYzV2cHdBa3JqcDZoQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHBzOi8vYWNjb3VudHMuY29kZWJ1bWJsZS5uZXQvc3lzdGVtL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1698438888),
('UROFCriosAHZWL2AGcQqA9iXFLRLDU8RwYNZnlpe', NULL, '47.128.19.242', 'Mozilla/5.0 (Linux; Android 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; Bytespider; spider-feedback@bytedance.com)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoibDJZRkd4cTZlQ3VZNWYyUTFydnFERXNoSjYwVmxmNGpGWm5FbVV5SCI7czo2OiJsb2NhbGUiO3M6MjoiYXIiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjUwOiJodHRwczovL2FjY291bnRzLmNvZGVidW1ibGUubmV0L2NoYW5nZS1sYW5ndWFnZS9hciI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1698402085),
('VVafcvJaoeNShRR1HmW5hiS5Xv6qwQ8xO97bxfem', NULL, '47.128.39.116', 'Mozilla/5.0 (Linux; Android 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; Bytespider; spider-feedback@bytedance.com)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoicVNaTU9jNThHTjdXdDV6eEpJWVNIQlNYMzl3YnhuZTlNbldNOHJLbCI7czo2OiJsb2NhbGUiO3M6MjoicnUiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjUwOiJodHRwczovL2FjY291bnRzLmNvZGVidW1ibGUubmV0L2NoYW5nZS1sYW5ndWFnZS9ydSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1698440049),
('VVriCJFVRe1nuHaTM2vshIcs88Mq5YSTZakwAWfF', NULL, '13.58.58.245', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTTdUekVkcVRKbUtia0JrSVBGQTNpbTBuanlnWFdTdGlWVTlKT3ZTcSI7czo2OiJsb2NhbGUiO3M6MjoiamEiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjUwOiJodHRwczovL2FjY291bnRzLmNvZGVidW1ibGUubmV0L2NoYW5nZS1sYW5ndWFnZS9qYSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1698050884),
('VXaqCek67kJLwskDOyZOunQVl4qpB6FUjxR4ODRs', NULL, '35.196.21.185', 'ZoominfoBot (zoominfobot at zoominfo dot com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU1ltUVNUNkV4eWZOT1BZSWRFcVExV3FJWGhMbFZvU0x3TkU4WjMxNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYWNjb3VudHMuY29kZWJ1bWJsZS5uZXQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1698113698),
('VzCd39sV2kBiosmpQ3DizO2BuqWgRG8AeHQYqDQK', NULL, '40.77.167.126', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/103.0.5060.134 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYUM0VDdHakNnZVJEOGtlZXVtaDN5N3hlZDF4dlM4RHpCSmxQRFpJMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHBzOi8vYWNjb3VudHMuY29kZWJ1bWJsZS5uZXQvc3lzdGVtL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1698527572),
('vZDJqnaQIIJCgvEzp3IJwc9Wzt2EoLptJSamfGaV', NULL, '13.58.58.245', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiaHpCVFVQS3R6WVV2WEM0VWRSaTU4WnhkVU9Gd3RLanpIVlZPcGdkTSI7czo2OiJsb2NhbGUiO3M6Mjoia28iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjUwOiJodHRwczovL2FjY291bnRzLmNvZGVidW1ibGUubmV0L2NoYW5nZS1sYW5ndWFnZS9rbyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1698050884),
('XlOTvri2VW0cLrCdBPzOaTcxZGu4w70dNxZaS2Mq', NULL, '198.251.73.117', 'IonCrawl (https://www.ionos.de/terms-gtc/faq-crawler-en/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiaDZqa1dYM2lvQmhPazlPWEtrakdWUkk5RU1XNHpCZUtpMmRjVUNnOCI7czo2OiJsb2NhbGUiO3M6MjoiaGkiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjUwOiJodHRwczovL2FjY291bnRzLmNvZGVidW1ibGUubmV0L2NoYW5nZS1sYW5ndWFnZS9oaSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1698134260),
('ybC0TEQbL3uydUmeXIXY1fCFpUArrbDJP6yHOb6O', NULL, '34.23.194.168', 'ZoominfoBot (zoominfobot at zoominfo dot com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiekV1RmpYanhrQ216WWJxdm9jdWZGRlVldHczTURIUnU5TnRPRG5iMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHBzOi8vYWNjb3VudHMuY29kZWJ1bWJsZS5uZXQvc3lzdGVtL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1698084825),
('YT5L27BD8VLVzmMe0gH192PdBQWmQlHxD4sCOWCH', NULL, '52.167.144.145', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/103.0.5060.134 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWTZqZjJ6cTk4VFBqQjZPYzFHUHRxRm1CbnhVUEFCNUtnWXpEelhLWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHBzOi8vYWNjb3VudHMuY29kZWJ1bWJsZS5uZXQvc3lzdGVtL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1698612094),
('zEFMh0XjqvJw0tashwOuvqP2OCrvlo4xXHhwJw2n', NULL, '198.251.73.113', 'IonCrawl (https://www.ionos.de/terms-gtc/faq-crawler-en/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidFF5NXdkTFlqRkdnbXlGRDBsaTJHOWcyalFJMjBJV1BtS0pjTHoyTiI7czo2OiJsb2NhbGUiO3M6MjoiamEiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjUwOiJodHRwczovL2FjY291bnRzLmNvZGVidW1ibGUubmV0L2NoYW5nZS1sYW5ndWFnZS9qYSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1698134260);

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
(32, 'shakilofficial0', '1w1a57odkY0OSh7LJgMOoku7RJa1gCVy8PtbY8gO', '103.97.163.76', 'login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76', 'Microsoft Edge 118.0.2088', 'Windows 10', 'Desktop', '2023-10-30 13:39:48', 'login', NULL);

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
(5, 'shakilofficial0', 'S. M. Shakil Ahmed', 'shakilofficial0@gmail.com', '+8801701328902', '2023-09-19 14:45:57', '$2y$10$4MsjHgD61MH74FwYFgbHaOGkynYcqq3OWeNLwUre6St9aADtEMkh6', NULL, NULL, 'cO9KRAOQSnmAUveBy3ZCedRioEfJdg7f9toMWHGEHmd05XfGT9fwzxDYAv8V', '2023-09-19 10:31:02', '2023-10-30 13:37:22'),
(6, 'shakilofficial1', 'S. M. Shakil Ahmed', 'shakilofficialyt@gmail.com', '+8801701328901', NULL, '$2y$10$3S6AQNl/jcbbde2qrqmlnusjBCHlnE0hW6VK09Umgvr9/12.zR3mG', NULL, NULL, NULL, '2023-09-19 11:40:11', '2023-09-19 11:40:44'),
(8, 'mdsaifurrahmann', 'Md. Saifur Rahman', 'saifur@codebumble.net', '+8801774606507', NULL, '$2y$10$3S6AQNl/jcbbde2qrqmlnusjBCHlnE0hW6VK09Umgvr9/12.zR3mG', NULL, NULL, NULL, '2023-09-19 11:40:11', '2023-09-19 11:40:44'),
(10, 'gelamefygy', 'Marvin Francis', 'japogol580@cdeter.com', '+1 (559) 719-2616', '2023-09-27 00:24:38', '$2y$10$DR3MmyFKPKPBayg2m.b5SubdXz4JLdRhcaCpb1.bfQh0/QgKv.WeG', NULL, NULL, NULL, '2023-09-27 00:24:06', '2023-09-27 00:24:38');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

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
