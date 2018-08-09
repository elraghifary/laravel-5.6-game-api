-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 09, 2018 at 01:00 AM
-- Server version: 5.7.19
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `game-api`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `account_id` int(10) UNSIGNED NOT NULL,
  `username` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `gold` int(11) NOT NULL DEFAULT '1000',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_login` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`account_id`, `username`, `email`, `password`, `access_token`, `gold`, `create_date`, `last_login`) VALUES
(1, 'Elra', 'elraghifary@gmail.com', '$2y$10$BKY6FU36OC8/UjbGHraoyOBw9LMFOcY5F6hpspGb5AXmnuC5.dJHm', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6ImY3YmExYmVmMDM4ZTY0YTM4MTAyMTJmODIyNTQwZTg1ZDQ5MDAwMmNmMGMxZDE3NmNkMTg1MTI3NmFlNTk0ODIwMDgxZDEyZDg1YTdmYzQ5In0.eyJhdWQiOiIxIiwianRpIjoiZjdiYTFiZWYwMzhlNjRhMzgxMDIxMmY4MjI1NDBlODVkNDkwMDAyY2YwYzFkMTc2Y2QxODUxMjc2YWU1OTQ4MjAwODFkMTJkODVhN2ZjNDkiLCJpYXQiOjE1MzM3MjYzMzQsIm5iZiI6MTUzMzcyNjMzNCwiZXhwIjoxNTY1MjYyMzMzLCJzdWIiOiIxIiwic2NvcGVzIjpbXX0.JOIgqrJkS-AabQzS39tmr5rhUOCNLvBG5m16vBYsj9kxwd7Dw1ck7jbmZUlIZbVqU36MHKdQD77Z6NIo9i7pp3IM3eu1uLqsH6JSOQPywZCOZPUKog9zTeoua_x_mMEDAAWFKgc2IjTpQQOouxvXMyVEtSzTKwtmiZWPtlUC8vVFMd7-ngWMd-1BSGjroGS-xYeoPmqG-PnljzJwrw9l-QPbVuaFJXE-9usZeSfDefh27B-c-P7eHK-wLeTpXTQ5VPRPVqQ_UzV1TcG7pqt7yUaxighS0kx2NepofchHF6L1Kb1IuYKYw1ZL28uS3pAYebwrGFPCnT5eu37ieegjsK7AgFjPsYFw_1IH1QM_gatESTvbweuesZoQfaLfHHB-_y-JOryEItCFLq-1PNFOniE5LyQULeR5J020JbS_0CygQyitFlP_2ucEojV-h7jKIuBPUNdWH5mazelwrIytzN4PfqDmsFT7cJelqfAIZhUrS4vEWJJsjqimVJuvx4Kt2HfxU-IkptdjSfzn-Z8YEPp5YJ5KulpQ8mAdbEnp8ysCA1yadT5YORM7lldhWO2EJwROUdeBTDcaHGPg8U4K_69IdOwLTMCqhYieHZk4KAWQH313-mqz86gHeTj7E8senrRyJAwuwZ3IzphGeps7Xold74kwhqBgLxA_BdBEWzw', 1000, '2018-08-08 04:04:51', '2018-08-08 04:05:34'),
(2, 'ghifaryelra', 'ghifaryelra@gmail.com', '$2y$10$7o/bqaFdRQQOYWokNQIIx.I0erSAP1J6bVyPmw9clzA32HfWjMQxe', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6ImIwYmFjNzkyYzkxNDk4YTY2NjkxNWFmZWJmMTc2M2Y2OGNmZWYwZDc1NzhiODEzYmRlNTMyNDU2MWE3Mjc3OGIwOTkzY2VjZDE2MGIzMWNmIn0.eyJhdWQiOiIxIiwianRpIjoiYjBiYWM3OTJjOTE0OThhNjY2OTE1YWZlYmYxNzYzZjY4Y2ZlZjBkNzU3OGI4MTNiZGU1MzI0NTYxYTcyNzc4YjA5OTNjZWNkMTYwYjMxY2YiLCJpYXQiOjE1MzM3NDE0MDAsIm5iZiI6MTUzMzc0MTQwMCwiZXhwIjoxNTY1Mjc3Mzk5LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.mT7rTnSxaiM9ukyM4hXrWuhseg9mXhXv6efyq_2r3xrAwEp0ijMLUALaYoiCdeWU7NEFvxEA4it0b-EeREAWC3VQhys7iDUJ6jnMi7yTwZIic4HeRS-IOy0butqH7oZM_e_7AULHwHivX6dhLBQTchaGALD-X4LqhhpSCdDk9tooJ9cL2Y9lKHd9HLNJ5Z5MIdnWnaWumiYTulN3M--AbiKlW4B0Jb_EPMwVVcrHfA_9XyzxguWTTYKVtwoywNxRW4mY8kS-P2P5oslpp257YWjI_unsltK8_uEvdA71ZQLNjFF87Mp9TGS1B2dWWubOIYqQIc7OkmRoGwqqUkjbii-JpH94X8AqAp1gav0nOHJ4WVrj0yXq7mogzQjEBQK5VCdhbIWXEO7FEoON_hggFGoLxEiAnU6UVKfJeFaNT71A5e1dfRsjvTZcEYdFPQ7GMQJzrAckBsakF7ADhFwzpiS97EUeR4vtQGE-uAaVaSHQQkp7NarSswqlcGwC9JWgfFyFJewErBkzbSJWP_0mZCrdf76srzwjnInqHDVybCQ0tVBUouDYMF0VMK6JWQw1wBSIg9cKf3ZH-FVMNrQHjgteMGD7PrQmCLw7yblstmPuv3oaMp23SbCl9TFsquAylCPVbaG5BQSrYaiXD2euMBocsE9rRZGJLZLFJVysHBI', 500, '2018-08-08 07:46:37', '2018-08-08 12:19:47'),
(3, 'johndoe', 'johndoe@example.com', '$2y$10$Sg3ZQ/QMrW70.OZSGqRNTeWfNWAGHsuVw/YOb3DFPpsdmcQRG2tFy', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjI5NDQ5MDE0MDcxYjU4NTRiODExNTRkZTE0ZjQwMmY3NWEwNWIwOTgyOWQzYzZhN2RhZWMyZmY2OTBiMTg2OGFhOTFlNzRlMzExMGQ2NDQzIn0.eyJhdWQiOiIxIiwianRpIjoiMjk0NDkwMTQwNzFiNTg1NGI4MTE1NGRlMTRmNDAyZjc1YTA1YjA5ODI5ZDNjNmE3ZGFlYzJmZjY5MGIxODY4YWE5MWU3NGUzMTEwZDY0NDMiLCJpYXQiOjE1MzM3NzUzNzQsIm5iZiI6MTUzMzc3NTM3NCwiZXhwIjoxNTY1MzExMzczLCJzdWIiOiIzIiwic2NvcGVzIjpbXX0.WHJMRJmwN6UwDbyegAAyR7IbtsHB5lImDdPr_0tojk-syDBOjplvN_TPS-JuyUAIFtfLYsKuROmSQ0t9d5oXJlwr_OwoWTMcTFFePINPFV-QR7RwLB4ZBBHr6JFnsie8J3dkKlRGOGaTeI0txtQxNgJJMJr5hBx9s_e0NvMG2xGzn-b23B0IYTQJB2-Xn3Q_nd9Xec5uikfyTxKjd0Yuz5jv4ytHEJBckXMmGC5heSm0Ug2u3vL5UUN06Eg2OcP-fCNm7mvnGx3wZuLxIY05_VhdAy71D_sveFBAQXhh7FehpGsLCCfuN3GjXqlD1Z4A5a9nO3N5jXQG415RPDVXyEUftALq6Cp-JYs-goEfE2Ii2WxEvD1S3NcbFmVUvsC25efIZk3874anrTtJMAQeWita2fC4RJUKZE4JIZNfjvjPjgZh6_IR6XlUL7UffF-78K6bqI6VhdDSgZokPNwx-F8atjB1xFrMH2pWkDozq2c1bIqmrdzFkh19990r_g5-D-4Ap_ijWNOs1SKlCNXwz1PIgpQ2NTucZFCfkkvREpwEJfXgue8xBuWvdlTr27ILV_BmfVYMv5RCS5BtDF4CC-AHPLR2tuvZikzMlZldeFGnb43URQSv3g79ZXYt93QLgX4i1MpTHMIRTFxDVVh4A1A-pKVL_eY6T9RZCkv4Les', 800, '2018-08-08 17:42:48', '2018-08-08 17:43:10');

-- --------------------------------------------------------

--
-- Table structure for table `account_items`
--

CREATE TABLE `account_items` (
  `item_id` int(10) UNSIGNED NOT NULL,
  `account_id` int(10) UNSIGNED NOT NULL,
  `base_item_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `account_items`
--

INSERT INTO `account_items` (`item_id`, `account_id`, `base_item_id`, `quantity`, `last_update`) VALUES
(1, 1, 1, 5, '2018-08-08 07:38:14'),
(2, 2, 1, 50, '2018-08-08 12:19:47'),
(3, 3, 1, 20, '2018-08-08 17:43:10');

-- --------------------------------------------------------

--
-- Table structure for table `base_items`
--

CREATE TABLE `base_items` (
  `base_item_id` int(10) UNSIGNED NOT NULL,
  `item_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `base_items`
--

INSERT INTO `base_items` (`base_item_id`, `item_name`, `last_update`) VALUES
(1, 'Apple', '2018-08-08 11:18:50'),
(2, 'Red Potion', '2018-08-08 11:18:50');

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
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2018_08_08_093005_create_accounts_table', 1),
(9, '2018_08_08_102359_create_account_items_table', 1),
(10, '2018_08_08_102734_create_shops_table', 1),
(11, '2018_08_08_102846_create_base_items_table', 1),
(12, '2018_08_08_103116_add_relationships_to_account_items_table', 1),
(13, '2018_08_08_103416_add_relationships_to_shops_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('29449014071b5854b81154de14f402f75a05b09829d3c6a7daec2ff690b1868aa91e74e3110d6443', 3, 1, 'Personal Access Token', '[]', 0, '2018-08-08 17:42:53', '2018-08-08 17:42:53', '2019-08-09 00:42:53'),
('b0bac792c91498a666915afebf1763f68cfef0d7578b813bde5324561a72778b0993cecd160b31cf', 2, 1, 'Personal Access Token', '[]', 0, '2018-08-08 08:16:39', '2018-08-08 08:16:39', '2019-08-08 15:16:39'),
('f7ba1bef038e64a3810212f822540e85d490002cf0c1d176cd1851276ae594820081d12d85a7fc49', 1, 1, 'Personal Access Token', '[]', 1, '2018-08-08 04:05:33', '2018-08-08 04:05:33', '2019-08-08 11:05:33');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'xdtT78RawzJbrtERxyaagQ5f9U3qJkE4r1shKl6W', 'http://localhost', 1, 0, 0, '2018-08-08 04:04:15', '2018-08-08 04:04:15'),
(2, NULL, 'Laravel Password Grant Client', 'ZkJPJj4GB7wvKtNgFTj4ESDQaygg3K7WMKPrqS8K', 'http://localhost', 0, 1, 0, '2018-08-08 04:04:15', '2018-08-08 04:04:15');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2018-08-08 04:04:15', '2018-08-08 04:04:15');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `shops`
--

CREATE TABLE `shops` (
  `shop_id` int(10) UNSIGNED NOT NULL,
  `base_item_id` int(10) UNSIGNED NOT NULL,
  `gold_price` int(11) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shops`
--

INSERT INTO `shops` (`shop_id`, `base_item_id`, `gold_price`, `last_update`) VALUES
(1, 1, 10, '2018-08-08 11:40:04'),
(2, 2, 50, '2018-08-08 11:40:04');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`account_id`),
  ADD UNIQUE KEY `accounts_username_unique` (`username`),
  ADD UNIQUE KEY `accounts_email_unique` (`email`);

--
-- Indexes for table `account_items`
--
ALTER TABLE `account_items`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `account_items_account_id_foreign` (`account_id`),
  ADD KEY `account_items_base_item_id_foreign` (`base_item_id`);

--
-- Indexes for table `base_items`
--
ALTER TABLE `base_items`
  ADD PRIMARY KEY (`base_item_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`shop_id`),
  ADD KEY `shops_base_item_id_foreign` (`base_item_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `account_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `account_items`
--
ALTER TABLE `account_items`
  MODIFY `item_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `base_items`
--
ALTER TABLE `base_items`
  MODIFY `base_item_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shops`
--
ALTER TABLE `shops`
  MODIFY `shop_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account_items`
--
ALTER TABLE `account_items`
  ADD CONSTRAINT `account_items_account_id_foreign` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`account_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `account_items_base_item_id_foreign` FOREIGN KEY (`base_item_id`) REFERENCES `base_items` (`base_item_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `shops`
--
ALTER TABLE `shops`
  ADD CONSTRAINT `shops_base_item_id_foreign` FOREIGN KEY (`base_item_id`) REFERENCES `base_items` (`base_item_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
