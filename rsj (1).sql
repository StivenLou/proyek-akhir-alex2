-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 01, 2023 at 10:21 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rsj`
--

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `registration_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `polyclinic_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `registration_code`, `name`, `polyclinic_id`, `created_at`, `updated_at`) VALUES
(1, 'DAPW20230201001', 'Adit Pewek', 4, '2023-01-29 16:00:32', '2023-02-01 13:56:25'),
(2, 'DDMM20230201002', 'Didin Mulam Marzuki', 1, '2023-01-29 16:04:02', '2023-01-29 16:04:02'),
(3, 'DML20230201003', 'Moses Limbong', 4, '2023-01-29 16:04:50', '2023-01-29 16:04:50'),
(4, 'DRS20230201004', 'Rohot Simanjuntak', 5, '2023-01-29 16:05:14', '2023-01-29 16:05:14'),
(5, 'DFF20230201005', 'Feri Febrian', 6, '2023-01-31 22:49:58', '2023-01-31 22:49:58'),
(6, 'DJ20230201006', 'Jajang', 4, '2023-01-31 22:50:23', '2023-01-31 22:50:23'),
(7, 'DR20230201007', 'Rosa', 1, '2023-01-31 22:50:44', '2023-01-31 22:50:44'),
(8, 'DQ20230201008', 'Queen', 1, '2023-01-31 22:51:04', '2023-01-31 22:51:04'),
(9, 'DJ20230201009', 'Jarjit', 5, '2023-01-31 22:51:26', '2023-01-31 22:51:26'),
(10, 'DP20230201010', 'Putri', 5, '2023-01-31 22:51:46', '2023-01-31 22:51:46'),
(11, 'DE20230201011', 'Elsa', 6, '2023-01-31 22:52:07', '2023-01-31 22:52:07'),
(12, 'DC20230201012', 'Cantik', 6, '2023-01-31 22:52:29', '2023-01-31 22:52:29'),
(13, 'DB20230201013', 'Bran', 7, '2023-01-31 22:52:45', '2023-01-31 22:52:45'),
(14, 'DB20230201014', 'Brian', 7, '2023-01-31 22:52:58', '2023-01-31 22:52:58'),
(15, 'DS20230201015', 'Simanjuntak', 7, '2023-01-31 22:53:13', '2023-01-31 22:53:13');

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2019_08_19_000000_create_failed_jobs_table', 1),
(2, '2023_01_25_102548_create_polyclinics_table', 2);

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
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `registration_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthdate` date NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `polyclinic_id` bigint(20) UNSIGNED NOT NULL,
  `doctor_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id`, `registration_code`, `name`, `birthdate`, `gender`, `polyclinic_id`, `doctor_id`, `created_at`, `updated_at`) VALUES
(1, 'PE20230201001', 'Elis', '2023-01-30', 'Wanita', 1, 2, '2023-01-29 16:57:55', '2023-01-29 16:57:55'),
(2, 'PN20230201002', 'Nono', '2023-01-05', 'Pria', 1, 2, '2023-01-31 22:54:35', '2023-01-31 22:54:35'),
(3, 'PP20230201003', 'Putra', '2023-01-08', 'Pria', 1, 2, '2023-01-31 22:55:02', '2023-01-31 22:55:02'),
(4, 'PP20230201004', 'Pajak', '2021-01-01', 'Pria', 1, 7, '2023-01-31 22:56:15', '2023-01-31 22:56:15'),
(5, 'PA20230201005', 'Aa', '2023-01-09', 'Pria', 1, 7, '2023-01-31 22:56:45', '2023-01-31 22:56:45'),
(6, 'PO20230201006', 'Ojan', '2023-01-10', 'Pria', 1, 7, '2023-01-31 22:57:15', '2023-01-31 22:57:15'),
(8, 'PT20230201007', 'Telo', '2023-01-11', 'Pria', 1, 8, '2023-01-31 22:58:32', '2023-01-31 22:58:32'),
(9, 'PF20230201008', 'Firdaus', '2023-01-12', 'Pria', 1, 8, '2023-01-31 22:59:01', '2023-01-31 22:59:01'),
(10, 'PY20230201009', 'Yayan', '2023-01-13', 'Pria', 1, 8, '2023-01-31 22:59:27', '2023-01-31 22:59:27'),
(11, 'PA20230201010', 'Ali', '2023-01-23', 'Wanita', 4, 1, '2023-01-31 23:00:05', '2023-01-31 23:00:05'),
(13, 'PA20230201011', 'Alo', '2023-01-16', 'Pria', 4, 1, '2023-01-31 23:00:57', '2023-01-31 23:00:57'),
(14, 'PA20230201012', 'Ale', '2023-01-15', 'Pria', 4, 1, '2023-01-31 23:01:44', '2023-01-31 23:01:44'),
(15, 'PS20230201013', 'Sa', '2023-01-17', 'Pria', 4, 3, '2023-01-31 23:02:15', '2023-01-31 23:02:15'),
(16, 'PS20230201014', 'Si', '2023-01-18', 'Wanita', 4, 3, '2023-01-31 23:02:42', '2023-01-31 23:02:42'),
(17, 'PS20230201015', 'Su', '2023-01-18', 'Wanita', 4, 3, '2023-01-31 23:03:08', '2023-01-31 23:03:08'),
(18, 'PP20230201016', 'Pa', '2022-12-01', 'Pria', 4, 6, '2023-01-31 23:04:01', '2023-01-31 23:04:01'),
(19, 'PP20230201017', 'Pi', '2022-12-02', 'Pria', 4, 6, '2023-01-31 23:04:38', '2023-01-31 23:04:38'),
(20, 'PP20230201018', 'Pe', '2022-12-03', 'Pria', 4, 6, '2023-01-31 23:05:15', '2023-01-31 23:05:15'),
(21, 'PW20230201019', 'Wa', '2016-01-01', 'Wanita', 5, 4, '2023-01-31 23:06:03', '2023-01-31 23:06:03'),
(22, 'PW20230201020', 'We', '2016-03-30', 'Pria', 5, 4, '2023-01-31 23:06:41', '2023-01-31 23:06:41'),
(23, 'PW20230201021', 'Wo', '2021-12-30', 'Pria', 5, 4, '2023-01-31 23:07:17', '2023-01-31 23:07:17'),
(24, 'PY20230201022', 'Ya', '2022-05-02', 'Wanita', 5, 9, '2023-01-31 23:08:21', '2023-01-31 23:08:21'),
(25, 'PY20230201023', 'Ye', '2022-07-13', 'Wanita', 5, 9, '2023-01-31 23:08:59', '2023-01-31 23:08:59'),
(26, 'PY20230201024', 'Yi', '2022-08-14', 'Pria', 5, 9, '2023-01-31 23:09:26', '2023-01-31 23:09:26'),
(27, 'PD20230201025', 'Du', '2021-01-05', 'Pria', 5, 10, '2023-01-31 23:10:14', '2023-01-31 23:10:14'),
(28, 'PD20230201026', 'Da', '2021-07-26', 'Pria', 5, 10, '2023-01-31 23:10:34', '2023-01-31 23:10:34'),
(29, 'PD20230201027', 'Di', '2021-09-20', 'Wanita', 5, 10, '2023-01-31 23:11:04', '2023-01-31 23:11:04'),
(30, 'PV20230201028', 'Vi', '2023-01-23', 'Wanita', 6, 5, '2023-01-31 23:12:12', '2023-01-31 23:12:12'),
(32, 'PV20230201029', 'Vo', '2023-01-19', 'Wanita', 6, 5, '2023-01-31 23:13:39', '2023-01-31 23:13:39'),
(33, 'PV20230201030', 'Va', '2023-01-21', 'Wanita', 6, 5, '2023-01-31 23:14:19', '2023-01-31 23:14:19'),
(34, 'PA20230201031', 'Ai', '2023-01-19', 'Wanita', 6, 11, '2023-01-31 23:15:06', '2023-01-31 23:15:06'),
(35, 'PA20230201032', 'Ae', '2023-01-13', 'Wanita', 6, 11, '2023-01-31 23:15:25', '2023-01-31 23:15:25'),
(36, 'PA20230201033', 'Ao', '2023-01-27', 'Wanita', 6, 11, '2023-01-31 23:15:47', '2023-01-31 23:15:47'),
(37, 'PK20230201034', 'Ka', '2023-01-05', 'Wanita', 6, 12, '2023-01-31 23:16:18', '2023-01-31 23:16:18'),
(38, 'PK20230201035', 'Ki', '2023-01-14', 'Wanita', 6, 12, '2023-01-31 23:16:50', '2023-01-31 23:16:50'),
(39, 'PK20230201036', 'Ku', '2023-01-22', 'Wanita', 6, 12, '2023-01-31 23:17:17', '2023-01-31 23:17:17'),
(40, 'PJ20230201037', 'Ja', '2023-01-30', 'Pria', 7, 13, '2023-01-31 23:17:56', '2023-01-31 23:17:56'),
(41, 'PJ20230201038', 'Je', '2023-01-28', 'Pria', 7, 13, '2023-01-31 23:18:18', '2023-01-31 23:18:18'),
(42, 'PJ20230201039', 'Ji', '2023-01-16', 'Pria', 7, 13, '2023-01-31 23:18:42', '2023-01-31 23:18:42'),
(43, 'PL20230201040', 'La', '2023-01-15', 'Pria', 7, 14, '2023-01-31 23:19:00', '2023-01-31 23:19:00'),
(44, 'PL20230201041', 'Li', '2023-01-16', 'Pria', 7, 14, '2023-01-31 23:19:25', '2023-01-31 23:19:25'),
(45, 'PL20230201042', 'Lo', '2023-01-21', 'Pria', 7, 14, '2023-01-31 23:19:42', '2023-01-31 23:19:42'),
(46, 'PH20230201043', 'Ha', '2023-01-30', 'Wanita', 7, 15, '2023-01-31 23:20:11', '2023-01-31 23:20:11'),
(47, 'PH20230201044', 'Hi', '2023-01-29', 'Pria', 7, 15, '2023-01-31 23:20:42', '2023-01-31 23:20:42'),
(48, 'PH20230201045', 'Hu', '2023-01-31', 'Wanita', 7, 15, '2023-01-31 23:21:01', '2023-01-31 23:21:01');

-- --------------------------------------------------------

--
-- Table structure for table `polyclinics`
--

CREATE TABLE `polyclinics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `polyclinics`
--

INSERT INTO `polyclinics` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Poli Gigi', '2023-01-25 05:08:37', '2023-01-25 05:08:37'),
(4, 'Poli Anak', '2023-01-25 05:19:37', '2023-01-25 05:19:37'),
(5, 'Poli Kulit', '2023-01-25 05:19:58', '2023-01-25 05:20:43'),
(6, 'Poli Kandungan', '2023-01-31 22:48:43', '2023-01-31 22:49:00'),
(7, 'Poli Mata', '2023-01-31 22:49:13', '2023-01-31 22:49:13');

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
-- Indexes for dumped tables
--

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doctors_polyclinic_id_foreign` (`polyclinic_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `patients_polyclinic_id_foreign` (`polyclinic_id`),
  ADD KEY `patients_doctor_id_foreign` (`doctor_id`);

--
-- Indexes for table `polyclinics`
--
ALTER TABLE `polyclinics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `polyclinics`
--
ALTER TABLE `polyclinics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `doctors`
--
ALTER TABLE `doctors`
  ADD CONSTRAINT `doctors_polyclinic_id_foreign` FOREIGN KEY (`polyclinic_id`) REFERENCES `polyclinics` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `patients`
--
ALTER TABLE `patients`
  ADD CONSTRAINT `patients_doctor_id_foreign` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `patients_polyclinic_id_foreign` FOREIGN KEY (`polyclinic_id`) REFERENCES `polyclinics` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
