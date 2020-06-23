-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2020 at 12:13 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chatapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from` bigint(20) UNSIGNED NOT NULL COMMENT 'From Id',
  `to` bigint(20) UNSIGNED NOT NULL COMMENT 'To Id',
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `from`, `to`, `message`, `type`, `created_at`, `updated_at`) VALUES
(1, 1, 12, 'Hello from foisal', NULL, '2019-08-18 21:38:00', '2019-08-18 11:39:24'),
(2, 12, 1, 'Hello from Amzad', NULL, '2020-06-15 18:00:00', '2020-06-09 18:00:00'),
(3, 1, 12, 'Hello from foisal', NULL, '2019-08-18 21:38:00', '2019-08-18 11:39:24'),
(5, 12, 1, 'A quick brown fox jumps over the lazy dog.A quick brown fox jumps over the lazy dog.A quick brown fox jumps over the lazy dog.A quick brown fox jumps over the lazy dog.', NULL, '2019-08-05 09:48:55', '2020-06-03 18:00:00'),
(6, 1, 12, 'A quick brown fox jumps over the lazy dog.A quick brown fox jumps over the lazy dog.', NULL, '2020-06-21 18:00:00', '2020-06-21 18:00:00'),
(7, 1, 12, 'hello world', NULL, '2020-06-22 07:57:14', '2020-06-22 07:57:14'),
(8, 1, 12, 'This message is from foisal hossain', NULL, '2020-06-22 08:01:23', '2020-06-22 08:01:23'),
(9, 1, 2, 'From foisal Hello jean', NULL, '2020-06-22 08:01:50', '2020-06-22 08:01:50'),
(10, 1, 2, 'whats up?', 0, '2020-06-22 08:01:59', '2020-06-22 08:01:59'),
(11, 1, 2, 'what happen?', 1, '2020-06-22 08:02:08', '2020-06-22 08:02:08'),
(12, 1, 3, 'fdsafdsfdsfdsfdsfdsf', NULL, '2020-06-22 08:07:37', '2020-06-22 08:07:37'),
(13, 1, 12, 'fgddsgdsgsdg', NULL, '2020-06-22 08:07:44', '2020-06-22 08:07:44'),
(14, 1, 12, 'Hello Amzad hossain?whats up?', NULL, '2020-06-22 08:10:28', '2020-06-22 08:10:28'),
(15, 1, 4, 'hey jac....whats up....what are you doing?', 0, '2020-06-22 08:11:47', '2020-06-22 08:11:47'),
(16, 1, 4, 'hey jac....whats up....what are you doing?', 1, '2020-06-22 08:11:47', '2020-06-22 08:11:47'),
(17, 1, 4, 'hello', 0, '2020-06-22 08:11:54', '2020-06-22 08:11:54'),
(18, 1, 4, 'hello', 1, '2020-06-22 08:11:54', '2020-06-22 08:11:54'),
(22, 12, 1, 'I am fine.And you? After a long time....', 1, '2020-06-22 08:17:49', '2020-06-22 08:17:49'),
(24, 12, 2, 'hey jean, how are you? what are you doing here?', 1, '2020-06-22 08:23:55', '2020-06-22 08:23:55'),
(30, 12, 1, 'Hello', 1, '2020-06-22 08:54:46', '2020-06-22 08:54:46'),
(34, 1, 12, 'fdsfdsfds', 1, '2020-06-22 10:28:47', '2020-06-22 10:28:47'),
(36, 12, 1, 'dgddg', 1, '2020-06-22 10:32:34', '2020-06-22 10:32:34'),
(37, 1, 12, 'Hello', 0, '2020-06-22 10:38:00', '2020-06-22 10:38:00'),
(38, 1, 12, 'Hello', 1, '2020-06-22 10:38:00', '2020-06-22 10:38:00'),
(40, 1, 12, 'hello hi bye bye', 1, '2020-06-22 10:41:49', '2020-06-22 10:41:49'),
(43, 1, 12, 'df', 0, '2020-06-22 10:42:09', '2020-06-22 10:42:09'),
(44, 1, 12, 'df', 1, '2020-06-22 10:42:09', '2020-06-22 10:42:09'),
(45, 12, 1, 'Tuk tak', 0, '2020-06-22 10:45:21', '2020-06-22 10:45:21'),
(46, 12, 1, 'Tuk tak', 1, '2020-06-22 10:45:21', '2020-06-22 10:45:21'),
(47, 1, 12, 'A quick brown fox jumps over the lazy dog.', 0, '2020-06-22 10:45:40', '2020-06-22 10:45:40'),
(48, 1, 12, 'A quick brown fox jumps over the lazy dog.', 1, '2020-06-22 10:45:40', '2020-06-22 10:45:40'),
(49, 12, 1, 'the lazy dog.the lazy dog.the lazy dog.the lazy dog.the lazy dog.the lazy dog.the lazy dog.the lazy dog.the lazy dog.the lazy dog.the lazy dog.the lazy dog.', 0, '2020-06-22 10:45:54', '2020-06-22 10:45:54'),
(50, 12, 1, 'the lazy dog.the lazy dog.the lazy dog.the lazy dog.the lazy dog.the lazy dog.the lazy dog.the lazy dog.the lazy dog.the lazy dog.the lazy dog.the lazy dog.', 1, '2020-06-22 10:45:54', '2020-06-22 10:45:54'),
(51, 1, 12, 'kiare eto kisu kia disos', 0, '2020-06-22 10:46:22', '2020-06-22 10:46:22'),
(52, 1, 12, 'kiare eto kisu kia disos', 1, '2020-06-22 10:46:22', '2020-06-22 10:46:22'),
(54, 12, 3, 'kiare talon stokes', 1, '2020-06-22 10:47:28', '2020-06-22 10:47:28'),
(56, 12, 3, 'kise tor', 1, '2020-06-22 10:47:31', '2020-06-22 10:47:31'),
(57, 1, 12, 'hello from faewfewfewfewf', 0, '2020-06-23 02:27:14', '2020-06-23 02:27:14'),
(58, 1, 12, 'hello from faewfewfewfewf', 1, '2020-06-23 02:27:14', '2020-06-23 02:27:14'),
(59, 1, 12, 'hgh', 0, '2020-06-23 02:27:24', '2020-06-23 02:27:24'),
(60, 1, 12, 'hgh', 1, '2020-06-23 02:27:24', '2020-06-23 02:27:24'),
(61, 1, 10, 'njok', 0, '2020-06-23 02:28:29', '2020-06-23 02:28:29'),
(62, 1, 10, 'njok', 1, '2020-06-23 02:28:29', '2020-06-23 02:28:29'),
(63, 1, 2, 'gfdgf', 0, '2020-06-23 02:28:46', '2020-06-23 02:28:46'),
(64, 1, 2, 'gfdgf', 1, '2020-06-23 02:28:46', '2020-06-23 02:28:46'),
(65, 1, 12, 'gdgddgdssdgdgdsgs', 0, '2020-06-23 02:29:24', '2020-06-23 02:29:24'),
(66, 1, 12, 'gdgddgdssdgdgdsgs', 1, '2020-06-23 02:29:24', '2020-06-23 02:29:24'),
(67, 1, 12, 'fd', 0, '2020-06-23 02:30:38', '2020-06-23 02:30:38'),
(68, 1, 12, 'fd', 1, '2020-06-23 02:30:38', '2020-06-23 02:30:38'),
(69, 1, 12, 'Tuki tuki lil', 0, '2020-06-23 02:30:50', '2020-06-23 02:30:50'),
(70, 1, 12, 'Tuki tuki lil', 1, '2020-06-23 02:30:50', '2020-06-23 02:30:50'),
(71, 12, 1, 'hello', 0, '2020-06-23 02:31:31', '2020-06-23 02:31:31'),
(72, 12, 1, 'hello', 1, '2020-06-23 02:31:31', '2020-06-23 02:31:31'),
(73, 1, 12, 'kire ki obosta', 0, '2020-06-23 02:31:38', '2020-06-23 02:31:38'),
(74, 1, 12, 'kire ki obosta', 1, '2020-06-23 02:31:38', '2020-06-23 02:31:38'),
(75, 12, 1, 'alhamdulillah valo', 0, '2020-06-23 02:31:44', '2020-06-23 02:31:44'),
(76, 12, 1, 'alhamdulillah valo', 1, '2020-06-23 02:31:44', '2020-06-23 02:31:44'),
(77, 1, 12, 'gfgfdg', 0, '2020-06-23 02:36:05', '2020-06-23 02:36:05'),
(78, 1, 12, 'gfgfdg', 1, '2020-06-23 02:36:05', '2020-06-23 02:36:05'),
(79, 1, 12, 'hello', 0, '2020-06-23 02:37:15', '2020-06-23 02:37:15'),
(80, 1, 12, 'hello', 1, '2020-06-23 02:37:15', '2020-06-23 02:37:15'),
(81, 1, 3, 'hey talon whats up ? are you there?', 0, '2020-06-23 02:37:34', '2020-06-23 02:37:34'),
(82, 1, 3, 'hey talon whats up ? are you there?', 1, '2020-06-23 02:37:34', '2020-06-23 02:37:34'),
(83, 12, 1, 'hello hi bye bye', 0, '2020-06-23 02:59:30', '2020-06-23 02:59:30'),
(84, 12, 1, 'hello hi bye bye', 1, '2020-06-23 02:59:30', '2020-06-23 02:59:30'),
(85, 1, 12, 'fdfsdfdsfdsfdsfdsfsdfsdf', 0, '2020-06-23 02:59:52', '2020-06-23 02:59:52'),
(86, 1, 12, 'fdfsdfdsfdsfdsfdsfsdfsdf', 1, '2020-06-23 02:59:52', '2020-06-23 02:59:52'),
(87, 12, 1, 'dfsafdsafgfdgfd', 0, '2020-06-23 03:05:43', '2020-06-23 03:05:43'),
(88, 12, 1, 'dfsafdsafgfdgfd', 1, '2020-06-23 03:05:43', '2020-06-23 03:05:43'),
(89, 12, 1, 'fds', 0, '2020-06-23 03:17:59', '2020-06-23 03:17:59'),
(90, 12, 1, 'fds', 1, '2020-06-23 03:17:59', '2020-06-23 03:17:59'),
(91, 13, 12, 'fdsfdsfsdffdsfsf', 0, '2020-06-23 03:18:32', '2020-06-23 03:18:32'),
(92, 13, 12, 'fdsfdsfsdffdsfsf', 1, '2020-06-23 03:18:32', '2020-06-23 03:18:32'),
(93, 13, 12, 'ggreggrgrggr', 0, '2020-06-23 03:19:08', '2020-06-23 03:19:08'),
(94, 13, 12, 'ggreggrgrggr', 1, '2020-06-23 03:19:08', '2020-06-23 03:19:08'),
(95, 12, 13, 'sdvgevgeds', 0, '2020-06-23 03:19:22', '2020-06-23 03:19:22'),
(96, 12, 13, 'sdvgevgeds', 1, '2020-06-23 03:19:22', '2020-06-23 03:19:22'),
(97, 13, 1, 'dfgfdgfdgfdgdf', 0, '2020-06-23 03:44:57', '2020-06-23 03:44:57'),
(98, 13, 1, 'dfgfdgfdgfdgdf', 1, '2020-06-23 03:44:57', '2020-06-23 03:44:57'),
(99, 1, 13, 'gdsgdsgds', 0, '2020-06-23 03:45:07', '2020-06-23 03:45:07'),
(100, 1, 13, 'gdsgdsgds', 1, '2020-06-23 03:45:07', '2020-06-23 03:45:07'),
(101, 1, 3, 'fgsedgfdsgdsgds', 0, '2020-06-23 03:45:31', '2020-06-23 03:45:31'),
(102, 1, 3, 'fgsedgfdsgdsgds', 1, '2020-06-23 03:45:31', '2020-06-23 03:45:31'),
(103, 1, 13, 'dsfdsfdsf', 0, '2020-06-23 03:45:35', '2020-06-23 03:45:35'),
(104, 1, 13, 'dsfdsfdsf', 1, '2020-06-23 03:45:35', '2020-06-23 03:45:35'),
(105, 13, 1, 'hdrhrdhrdh', 0, '2020-06-23 03:45:45', '2020-06-23 03:45:45'),
(106, 13, 1, 'hdrhrdhrdh', 1, '2020-06-23 03:45:45', '2020-06-23 03:45:45');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_06_21_144933_create_messages_table', 1),
(5, '2020_06_22_151950_create_websockets_statistics_entries_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Foisal Hossain', 'foisal@gmail.com', NULL, '$2y$10$bPBScl8wlroLMUYa4KDFB.7jeHzVEACRloiT8kOsQ5AuxqWtsLxoC', NULL, '2020-06-21 09:39:09', '2020-06-21 09:39:09'),
(2, 'Jean Ryan', 'ilarson@example.org', '2020-06-21 10:21:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'KhFZpRnjHI', '2020-06-21 10:21:30', '2020-06-21 10:21:30'),
(3, 'Talon Stokes', 'veronica.breitenberg@example.com', '2020-06-21 10:21:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'lBfZWNScfj', '2020-06-21 10:21:30', '2020-06-21 10:21:30'),
(4, 'Jacquelyn Stamm', 'carmelo.kirlin@example.net', '2020-06-21 10:21:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'YrkKlz9bF2', '2020-06-21 10:21:30', '2020-06-21 10:21:30'),
(5, 'Mrs. Danielle Waelchi Jr.', 'heber91@example.net', '2020-06-21 10:21:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'FGw0mNh4iD', '2020-06-21 10:21:30', '2020-06-21 10:21:30'),
(6, 'Constantin Lesch', 'xcarroll@example.net', '2020-06-21 10:21:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'QVukBa2Mam', '2020-06-21 10:21:30', '2020-06-21 10:21:30'),
(7, 'Kattie Harvey', 'eritchie@example.com', '2020-06-21 10:21:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'mgh8KjSa3n', '2020-06-21 10:21:30', '2020-06-21 10:21:30'),
(8, 'Prof. Cornell Wintheiser', 'paul.schoen@example.com', '2020-06-21 10:21:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rsIwfzqX2H', '2020-06-21 10:21:30', '2020-06-21 10:21:30'),
(9, 'Armando Cassin', 'luettgen.darien@example.org', '2020-06-21 10:21:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'TMh1wwYheb', '2020-06-21 10:21:30', '2020-06-21 10:21:30'),
(10, 'Dr. Angelo Gaylord', 'heller.jermey@example.org', '2020-06-21 10:21:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4543UnLgQg', '2020-06-21 10:21:30', '2020-06-21 10:21:30'),
(11, 'Jermaine Miller', 'berge.kieran@example.com', '2020-06-21 10:21:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'IadRX33kDg', '2020-06-21 10:21:30', '2020-06-21 10:21:30'),
(12, 'Amzad Hossain', 'amzad@gmail.com', NULL, '$2y$10$QWObZU.fLcALQtxVajaTGOPrxJppyIKpgw944NEwPbEmZBJ39n1dG', NULL, '2020-06-21 23:20:14', '2020-06-21 23:20:14'),
(13, 'gracious', 'gracious@gmail.com', NULL, '$2y$10$Qdl.RA8LTeDa/zGRpiY6x.boS0x.qbUWu24DhlH6r4GUB0QQHXbUu', NULL, '2020-06-23 03:06:30', '2020-06-23 03:06:30');

-- --------------------------------------------------------

--
-- Table structure for table `websockets_statistics_entries`
--

CREATE TABLE `websockets_statistics_entries` (
  `id` int(10) UNSIGNED NOT NULL,
  `app_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `peak_connection_count` int(11) NOT NULL,
  `websocket_message_count` int(11) NOT NULL,
  `api_message_count` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `websockets_statistics_entries`
--
ALTER TABLE `websockets_statistics_entries`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `websockets_statistics_entries`
--
ALTER TABLE `websockets_statistics_entries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
