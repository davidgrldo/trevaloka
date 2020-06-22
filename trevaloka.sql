-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 26 Apr 2020 pada 16.29
-- Versi server: 5.7.24
-- Versi PHP: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trevaloka`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `travel_packages_id` int(11) NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `galleries`
--

INSERT INTO `galleries` (`id`, `travel_packages_id`, `image`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 2, 'assets/gallery/XnRv9iQdAmWPIgTpGWzHJ23ZiCveSyXiYZcJyeVI.jpeg', NULL, '2020-03-27 07:15:23', '2020-03-27 23:55:04'),
(2, 2, 'assets/gallery/WQ0YIHC3rxhdGrp2wcUvH2IXjLhdtDvwbBgC3Nic.jpeg', '2020-03-27 08:12:18', '2020-03-27 08:12:12', '2020-03-27 08:12:18'),
(3, 3, 'assets/gallery/CzxsZZVKjT7Y6RTmoZpskBFcvD36gcax2J9kJj2n.jpeg', NULL, '2020-03-27 11:30:49', '2020-03-27 23:54:37'),
(4, 4, 'assets/gallery/ri34Qxgm6k3JT8kvjimDFqC2W70dDpYrAgzAYqz2.jpeg', NULL, '2020-03-27 11:30:59', '2020-03-27 23:54:47'),
(5, 5, 'assets/gallery/6W3ppqfUwFjQhCBLwBKIWCt8IR1ciiFdirXtCkT7.jpeg', NULL, '2020-03-27 11:31:08', '2020-03-27 23:54:56'),
(6, 2, 'assets/gallery/ZoEtGNINc1yXh2D4uP8J2IjXDswZyQUPMbTggJCL.jpeg', NULL, '2020-03-27 23:57:07', '2020-03-27 23:57:07'),
(7, 3, 'assets/gallery/UCKnK40QeDjtyGzeOPr45fjCkRihA6OrCG00gcnR.jpeg', NULL, '2020-03-27 23:57:22', '2020-03-27 23:58:56'),
(8, 4, 'assets/gallery/1lh3K9pFBCUgyP71vUT3UnaELliO0be8llUlAmE7.jpeg', NULL, '2020-03-27 23:57:32', '2020-03-27 23:57:32'),
(9, 5, 'assets/gallery/k0x4WryNMFai91ktXMhTceBPcXSV3m5R8Fu3zxwP.jpeg', NULL, '2020-03-27 23:57:42', '2020-03-27 23:57:42');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_03_24_075915_create_travel_packages_table', 1),
(5, '2020_03_24_084430_create_galleries_table', 2),
(6, '2020_03_24_085016_create_transactions_table', 3),
(7, '2020_03_24_085453_create_transaction_details_table', 4),
(8, '2020_03_24_173650_add_roles_field_to_users_table', 5),
(9, '2020_03_25_065145_add_username_field_to_users_table', 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `travel_packages_id` int(11) NOT NULL,
  `users_id` int(11) DEFAULT NULL,
  `additional_visa` int(11) NOT NULL,
  `transaction_total` int(11) NOT NULL,
  `transaction_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transactions`
--

INSERT INTO `transactions` (`id`, `travel_packages_id`, `users_id`, `additional_visa`, `transaction_total`, `transaction_status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 190, 290, 'SUCCESS', NULL, '2020-03-27 17:21:00', '2020-03-27 10:44:19'),
(2, 2, 3, 0, 100, 'PENDING', NULL, '2020-03-28 03:02:51', '2020-03-28 03:22:46'),
(3, 4, 2, 0, 10, 'SUCCESS', NULL, '2020-03-28 06:31:46', '2020-03-28 06:44:54'),
(4, 4, 2, 380, 400, 'PENDING', NULL, '2020-03-28 06:36:02', '2020-03-28 06:43:35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaction_details`
--

CREATE TABLE `transaction_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transactions_id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_visa` tinyint(1) NOT NULL,
  `doe_passport` date NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transaction_details`
--

INSERT INTO `transaction_details` (`id`, `transactions_id`, `username`, `nationality`, `is_visa`, `doe_passport`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'davidgrldo', 'ID', 1, '2020-03-27', NULL, '2020-03-27 15:59:02', '2020-03-27 15:59:06'),
(2, 2, 'admin', 'ID', 0, '2025-03-28', NULL, '2020-03-28 03:02:51', '2020-03-28 03:02:51'),
(3, 3, '', 'ID', 0, '2025-03-28', NULL, '2020-03-28 06:31:46', '2020-03-28 06:31:46'),
(4, 4, '', 'ID', 0, '2025-03-28', '2020-03-28 06:36:06', '2020-03-28 06:36:02', '2020-03-28 06:36:06'),
(5, 4, 'davidgrldo', 'ID', 1, '2020-04-30', NULL, '2020-03-28 06:42:25', '2020-03-28 06:42:25'),
(6, 4, 'admin', 'ID', 1, '2020-03-31', NULL, '2020-03-28 06:43:27', '2020-03-28 06:43:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `travel_packages`
--

CREATE TABLE `travel_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured_event` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foods` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `departure_date` date NOT NULL,
  `duration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `travel_packages`
--

INSERT INTO `travel_packages` (`id`, `title`, `slug`, `location`, `about`, `featured_event`, `language`, `foods`, `departure_date`, `duration`, `type`, `price`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Nusa Penida', 'nusa-penida', 'Bali', 'wisata di bali', 'Pameran Adat', 'Indonesia', 'Mie Goreng', '2020-03-25', '20D', 'Open trip', 1000000, '2020-03-25 05:35:00', NULL, '2020-03-25 05:35:00'),
(2, 'Candi Borobudur', 'candi-borobudur', 'Jawa Tengah', 'Salah satu keajaiban dunia', 'Borobudur Nite', 'Indonesia', 'Sego Godog', '2020-04-25', '4D', 'Open trip', 100, NULL, '2020-03-25 04:22:49', '2020-03-25 04:22:49'),
(3, 'Dummy 1', 'dummy-1', 'Bekaso', 'Dummyu', 'Dummy', 'Dummy', 'Dummy', '2020-04-23', '20D', 'Open trip', 90, NULL, '2020-03-27 11:28:14', '2020-03-27 11:28:14'),
(4, 'Dummy2', 'dummy2', 'Bekasi', 'test', 'test', 'test', 'test', '2020-11-28', '12D', 'Open trip', 10, NULL, '2020-03-27 11:28:54', '2020-03-27 11:28:54'),
(5, 'Test', 'test', 'test', 'test', 'test', 'test', 'test', '2030-02-20', '2D', 'Open trip', 32, NULL, '2020-03-27 11:29:39', '2020-03-27 11:29:39');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `roles` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USER',
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `roles`, `username`) VALUES
(1, 'David Geraldo', 'davidgrldo123@gmail.com', NULL, '$2y$10$ADQON0hpEsGD3DDaf1ls8.39RNFImmT1bxC97wQS6lzkYdsh3oB2O', 'sMtOOeCXmTzV8ftxYASDEHhzpakNR2MNN6XgRsn9TV6eHpT1s3rCEPxR8Jp0', '2020-03-24 11:32:20', '2020-03-24 11:32:20', 'ADMIN', 'davidgrldo'),
(2, 'Analaizer Eva', 'analaizer@trevaloka.com', '2020-03-24 23:05:59', '$2y$10$H.GE.yhtEmmhGYCinzF6ye.kjAkcxqn.ccIHUe0Tixdruywpn3oRu', '3e5zzjc3o6kfuguxhyUboIHxT4aZQqfyzqS49mn7xaqLz54gvhRgaUv580qy', '2020-03-24 23:05:00', '2020-03-24 23:05:59', 'USER', ''),
(3, 'Admin Trevaloka', 'admin@trevaloka.com', '2020-03-28 03:02:36', '$2y$10$zf6.mIVvuzQgdTz6W2jUvOc83ybwslpnzhOC/FEoSXRsciQAioSPK', 'vClQHP1ElMPrWjeWxYyXwrqyyuUxPRXEpulaLnD9rCcyLaXJ8d5WoCvQ9HZq', '2020-03-25 00:09:59', '2020-03-28 03:02:36', 'ADMIN', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `travel_packages`
--
ALTER TABLE `travel_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `transaction_details`
--
ALTER TABLE `transaction_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `travel_packages`
--
ALTER TABLE `travel_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
