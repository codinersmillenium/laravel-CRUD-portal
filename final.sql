-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Nov 2021 pada 01.41
-- Versi server: 10.4.20-MariaDB
-- Versi PHP: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `final`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_01_13_092008_create_sessions_table', 1),
(7, '2021_01_14_094956_create_roles_table', 1),
(8, '2021_01_14_095021_add_roles_fields_to_users_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('admin@gmail.com', '$2y$10$eJiKjKhgpx7TPNxwk0FTFOE4luz./j6eUJPQoG/VuBVcT2CcCtaX6', '2021-11-22 05:07:01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengajar`
--

CREATE TABLE `pengajar` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_lahir` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cabang` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pengajar`
--

INSERT INTO `pengajar` (`id`, `nama`, `tanggal_lahir`, `alamat`, `cabang`, `level`, `created_at`, `updated_at`) VALUES
(1, 'Dinda Suci Hartati S.I', '24-06-1997', 'Kpg. Dago No. 489', 'bumi_asri', 'ppc1-4', NULL, NULL),
(2, 'Siti Sahara Spd', '24-06-1996', 'Dk. Daan No. 591', 'bumi_asri', 'ppc1-4', NULL, NULL),
(3, 'Aurora Ilsa Nasyiah', '23-06-1997', 'Ki. Cikapayang No. 993', 'bumi_asri', 'ppc1-4', NULL, NULL),
(4, 'Jamal Uwais', '22-06-1996', 'Ki. Basket No. 63', 'bumi_asri', 'ppc1-4', NULL, NULL),
(5, 'Nabila Uyainah', '25-06-1995', 'Ki. Badak No. 351', 'bumi_asri', 'ppc1-4', NULL, NULL),
(6, 'Satya Manullang', '20-06-1996', 'Dk. Sugiyopranoto No. 954', 'bumi_asri', 'ppc1-4', NULL, NULL),
(7, 'Kasim Budiman', '26-06-1995', 'Jln. Banal No. 219', 'bumi_asri', 'ppc1-4', NULL, NULL),
(8, 'Agnes Hana Winarsih M.Kom.', '24-06-1994', 'Ki. Padang No. 190', 'bumi_asri', 'ppc1-4', NULL, NULL),
(9, 'Joko Marpaung M.Kom.', '21-06-1993', 'Ds. Supomo No. 588', 'bumi_asri', 'ppc1-4', NULL, NULL),
(10, 'Baktianto Kusumo S.E.', '20-06-1998', 'Kpg. Casablanca No. 773', 'bumi_asri', 'ppc1-4', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', '2021-11-20 22:00:57', '2021-11-20 22:00:57'),
(2, 'Student', '2021-11-20 22:00:57', '2021-11-20 22:00:57'),
(3, 'Teacher', '2021-11-20 22:00:57', '2021-11-20 22:00:57');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('CoYddFCh54Cm2D9FfRuYewP19Qtuh1wpwDQ2ZETg', 4, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiVGt3N1pRRVhtemxQOXJWZktWa1hBNG1iM05vWHNYYzd0ZEdZbFBmSiI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM1OiJodHRwOi8vbG9jYWxob3N0OjgwMDAvYWRtaW4vc3R1ZGVudCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjQ7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCQ1VGJwazEzOS9JNGpHeGpIQi5QTDhPajFwc05oUzdGYlU0Qmd4LnJ4WFU2eUU2ZWN6QUhkMiI7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkNVRicGsxMzkvSTRqR3hqSEIuUEw4T2oxcHNOaFM3RmJVNEJneC5yeFhVNnlFNmVjekFIZDIiO30=', 1637628038);

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_lahir` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cabang` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`id`, `nama`, `tanggal_lahir`, `alamat`, `cabang`, `level`, `created_at`, `updated_at`) VALUES
(1, 'Aldo vabel', '24-06-2002', 'Kpg. Dago No. 489', 'bumi_asri', 'ppc1-4', NULL, NULL),
(2, 'Durriah', '24-06-2002', 'Dk. Daan No. 591', 'bumi_asri', 'ppc1-4', NULL, NULL),
(3, 'Sukrina Paujiah', '23-06-2001', 'Ki. Cikapayang No. 993', 'bumi_asri', 'pc-1-6', NULL, NULL),
(4, 'Melvi Hafizah', '22-06-1996', 'Ki. Basket No. 63', 'bumi_asri', 'hpc-1-6', NULL, NULL),
(5, 'Dewi Aminah', '25-06-1995', 'Ki. Badak No. 351', 'bumi_asri', 'pg-14', NULL, NULL),
(6, 'Nur Samina', '20-06-1996', 'Dk. Sugiyopranoto No. 954', 'bumi_asri', 'ppc1-4', NULL, NULL),
(7, 'Sahala Martua', '26-06-1995', 'Jln. Banal No. 219', 'bumi_asri', 'toodler', NULL, NULL),
(8, 'Khoirul Azwar', '24-06-1994', 'Ki. Padang No. 190', 'bumi_asri', 'inter1-4', NULL, NULL),
(9, 'Syafwan Ananda', '21-06-1993', 'Ds. Supomo No. 588', 'bumi_asri', 'ppc1-4', NULL, NULL),
(10, 'Khoirul anwar', '20-06-1998', 'Kpg. Casablanca No. 773', 'bumi_asri', 'kc-1-3', NULL, NULL);

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
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `student_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_licence_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `teacher_qualifications` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`, `role_id`, `student_address`, `student_licence_number`, `teacher_qualifications`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$rud8.L5SV71fKhaIoxqqGe/KZGLi/OWvfJgWA7rSHFCsPIVxg2tm2', NULL, NULL, NULL, NULL, NULL, '2021-11-20 22:01:49', '2021-11-20 22:06:32', 1, 'klsejkf', 'dnjsenfm', NULL),
(2, 'student', 'student@gmail.com', NULL, '$2y$10$I5wY05PClynSk4YgGO.B7eFhW8mg3/fn3l9ieJXB3oObdPbn/RkbO', NULL, NULL, NULL, NULL, NULL, '2021-11-20 23:47:04', '2021-11-20 23:47:04', 2, 'sjhrdnejs', '12345678', NULL),
(3, 'teacher', 'teacher@gmail.com', NULL, '$2y$10$xHb4heVfTeDpoedk8/SneuwNvoU4sXa6eEendwYaIc8Vvnf0j7FTm', NULL, NULL, NULL, NULL, NULL, '2021-11-20 23:48:05', '2021-11-20 23:48:05', 3, NULL, NULL, 'terkualifikasi'),
(4, 'tes', 'tes@gmail.com', NULL, '$2y$10$5Tbpk139/I4jGxjHB.PL8Oj1psNhS7FbU4Bgx.rxXU6yE6eczAHd2', NULL, NULL, NULL, NULL, NULL, '2021-11-22 05:15:57', '2021-11-22 05:15:57', 1, 'tfhf', '464546', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indeks untuk tabel `pengajar`
--
ALTER TABLE `pengajar`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `pengajar`
--
ALTER TABLE `pengajar`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
