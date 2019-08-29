-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 29 Agu 2019 pada 02.22
-- Versi Server: 10.1.22-MariaDB
-- PHP Version: 7.0.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sim_kantin_sehat`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `gambar`
--

CREATE TABLE `gambar` (
  `id` int(10) UNSIGNED NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kandungan_gizi` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `gambar`
--

INSERT INTO `gambar` (`id`, `file`, `keterangan`, `kandungan_gizi`, `created_at`, `updated_at`) VALUES
(20, '1567027222_getuk1.JPG', 'Getuk', '{\"0\":{\"nilai\":\"60\",\"kategory\":\"Energi\"},\"2\":{\"nilai\":\"0,6\",\"kategory\":\"Protein\"},\"3\":{\"nilai\":\"1,4\",\"kategory\":\"Lemak\"},\"4\":{\"nilai\":\"11,2\",\"kategory\":\"Karbohidrat\"}}', '2019-08-28 14:20:22', '2019-08-28 14:20:22'),
(21, '1567027396_lumpia.png', 'Lumpia isi sayur', '{\"0\":{\"nilai\":\"63\",\"kategory\":\"Energi\"},\"2\":{\"nilai\":\"1,9\",\"kategory\":\"Protein\"},\"3\":{\"nilai\":\"2,84\",\"kategory\":\"Lemak\"},\"4\":{\"nilai\":\"7,44\",\"kategory\":\"Karbohidrat\"}}', '2019-08-28 14:23:16', '2019-08-28 14:23:16'),
(22, '1567027575_sosis telur.jpg', 'Sosis Telur', '{\"0\":{\"nilai\":\"143\",\"kategory\":\"Energi\"},\"2\":{\"nilai\":\"12,56\",\"kategory\":\"Protein\"},\"3\":{\"nilai\":\"9,51\",\"kategory\":\"Lemak\"},\"4\":{\"nilai\":\"0,72\",\"kategory\":\"Karbohidrat\"}}', '2019-08-28 14:26:15', '2019-08-28 14:26:15'),
(23, '1567027648_molen.jpg', 'Molen Cokelat', '{\"0\":{\"nilai\":\"220\",\"kategory\":\"Energi\"},\"2\":{\"nilai\":\"3,12\",\"kategory\":\"Protein\"},\"3\":{\"nilai\":\"9,34\",\"kategory\":\"Lemak\"},\"4\":{\"nilai\":\"31,24\",\"kategory\":\"Karbohidrat\"}}', '2019-08-28 14:27:28', '2019-08-28 14:27:28'),
(24, '1567027717_roti keju.jpg', 'Roti Keju', '{\"0\":{\"nilai\":\"71\",\"kategory\":\"Energi\"},\"2\":{\"nilai\":\"2,21\",\"kategory\":\"Protein\"},\"3\":{\"nilai\":\"1,24\",\"kategory\":\"Lemak\"},\"4\":{\"nilai\":\"12,52\",\"kategory\":\"Karbohidrat\"}}', '2019-08-28 14:28:38', '2019-08-28 14:28:38'),
(25, '1567027769_donat cokelat.jpg', 'Donat Cokelat', '{\"0\":{\"nilai\":\"133\",\"kategory\":\"Energi\"},\"2\":{\"nilai\":\"1,4\",\"kategory\":\"Protein\"},\"3\":{\"nilai\":\"8,68\",\"kategory\":\"Lemak\"},\"4\":{\"nilai\":\"13,44\",\"kategory\":\"Karbohidrat\"}}', '2019-08-28 14:29:29', '2019-08-28 14:29:29'),
(26, '1567027832_pisang cokelat.jpg', 'Pisang Cokelat', '{\"0\":{\"nilai\":\"179\",\"kategory\":\"Energi\"},\"2\":{\"nilai\":\"3,43\",\"kategory\":\"Protein\"},\"3\":{\"nilai\":\"8,57\",\"kategory\":\"Lemak\"},\"4\":{\"nilai\":\"22,36\",\"kategory\":\"Karbohidrat\"}}', '2019-08-28 14:30:32', '2019-08-28 14:30:32'),
(27, '1567027903_combro2.jpg', 'Combro', '{\"0\":{\"nilai\":\"105\",\"kategory\":\"Energi\"},\"2\":{\"nilai\":\"0,8\",\"kategory\":\"Protein\"},\"3\":{\"nilai\":\"3,3\",\"kategory\":\"Lemak\"},\"4\":{\"nilai\":\"17,9\",\"kategory\":\"Karbohidrat\"}}', '2019-08-28 14:31:43', '2019-08-28 14:31:43'),
(28, '1567027954_ketan.jpg', 'Ketan', '{\"0\":{\"nilai\":\"212\",\"kategory\":\"Energi\"},\"2\":{\"nilai\":\"4\",\"kategory\":\"Protein\"},\"3\":{\"nilai\":\"4,60\",\"kategory\":\"Lemak\"},\"4\":{\"nilai\":\"38,60\",\"kategory\":\"Karbohidrat\"}}', '2019-08-28 14:32:34', '2019-08-28 14:32:34'),
(29, '1567028008_tahu isi2.jpg', 'Tahu isi', '{\"0\":{\"nilai\":\"68\",\"kategory\":\"Energi\"},\"2\":{\"nilai\":\"7,8\",\"kategory\":\"Protein\"},\"3\":{\"nilai\":\"4,6\",\"kategory\":\"Lemak\"},\"4\":{\"nilai\":\"1,6\",\"kategory\":\"Karbohidrat\"}}', '2019-08-28 14:33:28', '2019-08-28 14:33:28'),
(30, '1567028097_martabak.jpg', 'Martabak', '{\"0\":{\"nilai\":\"100\",\"kategory\":\"Energi\"},\"2\":{\"nilai\":\"3,2\",\"kategory\":\"Protein\"},\"3\":{\"nilai\":\"2,1\",\"kategory\":\"Lemak\"},\"4\":{\"nilai\":\"15,1\",\"kategory\":\"Karbohidrat\"}}', '2019-08-28 14:34:58', '2019-08-28 14:34:58'),
(31, '1567028157_pisang krispi3.jpg', 'Pisang Krispi', '{\"0\":{\"nilai\":\"179\",\"kategory\":\"Energi\"},\"2\":{\"nilai\":\"3,43\",\"kategory\":\"Protein\"},\"3\":{\"nilai\":\"8,57\",\"kategory\":\"Lemak\"},\"4\":{\"nilai\":\"22,36\",\"kategory\":\"Karbohidrat\"}}', '2019-08-28 14:35:57', '2019-08-28 14:35:57'),
(32, '1567028344_pisang krispi2.jpg', 'Nugget Pisang', '{\"0\":{\"nilai\":\"182\",\"kategory\":\"Energi\"},\"2\":{\"nilai\":\"2,94\",\"kategory\":\"Protein\"},\"3\":{\"nilai\":\"9,1\",\"kategory\":\"Lemak\"},\"4\":{\"nilai\":\"25,90\",\"kategory\":\"Karbohidrat\"}}', '2019-08-28 14:39:04', '2019-08-28 14:39:04'),
(33, '1567028392_pastel.jpg', 'Pastel', '{\"0\":{\"nilai\":\"208\",\"kategory\":\"Energi\"},\"2\":{\"nilai\":\"5,2\",\"kategory\":\"Protein\"},\"3\":{\"nilai\":\"15,4\",\"kategory\":\"Lemak\"},\"4\":{\"nilai\":\"31,4\",\"kategory\":\"Karbohidrat\"}}', '2019-08-28 14:39:53', '2019-08-28 14:39:53'),
(35, '1567028542_brownies2.jpg', 'Brownies', '{\"0\":{\"nilai\":\"129\",\"kategory\":\"Energi\"},\"2\":{\"nilai\":\"1,62\",\"kategory\":\"Protein\"},\"3\":{\"nilai\":\"4,68\",\"kategory\":\"Lemak\"},\"4\":{\"nilai\":\"21,26\",\"kategory\":\"Karbohidrat\"}}', '2019-08-28 14:42:22', '2019-08-28 14:42:22'),
(36, '1567028613_lontong.jpg', 'Lontong', '{\"0\":{\"nilai\":\"133\",\"kategory\":\"Energi\"},\"2\":{\"nilai\":\"4,3\",\"kategory\":\"Protein\"},\"3\":{\"nilai\":\"5,8\",\"kategory\":\"Lemak\"},\"4\":{\"nilai\":\"18,9\",\"kategory\":\"Karbohidrat\"}}', '2019-08-28 14:43:33', '2019-08-28 14:43:33'),
(38, '1567028719_batagor.jpg', 'Batagor', '{\"0\":{\"nilai\":\"158\",\"kategory\":\"Energi\"},\"2\":{\"nilai\":\"3,1\",\"kategory\":\"Protein\"},\"3\":{\"nilai\":\"7,98\",\"kategory\":\"Lemak\"},\"4\":{\"nilai\":\"12,5\",\"kategory\":\"Karbohidrat\"}}', '2019-08-28 14:45:20', '2019-08-28 14:45:20'),
(39, '1567028763_roti isi.jpg', 'Roti isi', '{\"0\":{\"nilai\":\"215\",\"kategory\":\"Energi\"},\"2\":{\"nilai\":\"5,29\",\"kategory\":\"Protein\"},\"3\":{\"nilai\":\"1,9\",\"kategory\":\"Lemak\"},\"4\":{\"nilai\":\"44,95\",\"kategory\":\"Karbohidrat\"}}', '2019-08-28 14:46:03', '2019-08-28 14:46:03'),
(40, '1567028845_risol.jpg', 'Risol Sayur Daging', '{\"0\":{\"nilai\":\"154\",\"kategory\":\"Energi\"},\"2\":{\"nilai\":\"3,4\",\"kategory\":\"Protein\"},\"3\":{\"nilai\":\"4,4\",\"kategory\":\"Lemak\"},\"4\":{\"nilai\":\"28,2\",\"kategory\":\"Karbohidrat\"}}', '2019-08-28 14:47:25', '2019-08-28 14:47:25'),
(42, '1567028921_dadar gulung2.jpg', 'Dadar Gulung', '{\"0\":{\"nilai\":\"139\",\"kategory\":\"Energi\"},\"2\":{\"nilai\":\"2,82\",\"kategory\":\"Protein\"},\"3\":{\"nilai\":\"6,79\",\"kategory\":\"Lemak\"},\"4\":{\"nilai\":\"17,15\",\"kategory\":\"Karbohidrat\"}}', '2019-08-28 14:48:41', '2019-08-28 14:48:41'),
(43, '1567028971_onde4.JPG', 'Onde Onde', '{\"0\":{\"nilai\":\"101\",\"kategory\":\"Energi\"},\"2\":{\"nilai\":\"1,51\",\"kategory\":\"Protein\"},\"3\":{\"nilai\":\"1,83\",\"kategory\":\"Lemak\"},\"4\":{\"nilai\":\"19,42\",\"kategory\":\"Karbohidrat\"}}', '2019-08-28 14:49:31', '2019-08-28 14:49:31'),
(45, '1567029072_puding.jpg', 'Puding', '{\"0\":{\"nilai\":\"130\",\"kategory\":\"Energi\"},\"2\":{\"nilai\":\"1\",\"kategory\":\"Protein\"},\"3\":{\"nilai\":\"0\",\"kategory\":\"Lemak\"},\"4\":{\"nilai\":\"30\",\"kategory\":\"Karbohidrat\"}}', '2019-08-28 14:51:12', '2019-08-28 14:51:12'),
(46, '1567029133_bolu3.jpg', 'Bolu', '{\"0\":{\"nilai\":\"406,9\",\"kategory\":\"Energi\"},\"2\":{\"nilai\":\"4,1\",\"kategory\":\"Protein\"},\"3\":{\"nilai\":\"2,6\",\"kategory\":\"Lemak\"},\"4\":{\"nilai\":\"90,1\",\"kategory\":\"Karbohidrat\"}}', '2019-08-28 14:52:13', '2019-08-28 14:52:13'),
(49, '1567029325_bolsu1.jpg', 'Bolsu (Bola Susu)', '{\"0\":{\"nilai\":\"212,1\",\"kategory\":\"Energi\"},\"2\":{\"nilai\":\"8,8\",\"kategory\":\"Protein\"},\"3\":{\"nilai\":\"2,2\",\"kategory\":\"Lemak\"},\"4\":{\"nilai\":\"38,1\",\"kategory\":\"Karbohidrat\"}}', '2019-08-28 14:55:25', '2019-08-28 14:55:25'),
(50, '1567029375_mie ayam.jpg', 'Mie Ayam', '{\"0\":{\"nilai\":\"421\",\"kategory\":\"Energi\"},\"2\":{\"nilai\":\"16,7\",\"kategory\":\"Protein\"},\"3\":{\"nilai\":\"18,74\",\"kategory\":\"Lemak\"},\"4\":{\"nilai\":\"46,21\",\"kategory\":\"Karbohidrat\"}}', '2019-08-28 14:56:15', '2019-08-28 14:56:15'),
(51, '1567029429_mie ayam2.jpg', 'Mie Ayam', '{\"0\":{\"nilai\":\"421\",\"kategory\":\"Energi\"},\"2\":{\"nilai\":\"16,7\",\"kategory\":\"Protein\"},\"3\":{\"nilai\":\"18,74\",\"kategory\":\"Lemak\"},\"4\":{\"nilai\":\"46,21\",\"kategory\":\"Karbohidrat\"}}', '2019-08-28 14:57:09', '2019-08-28 14:57:09'),
(52, '1567029570_sotomie.jpg', 'Soto Mie', '{\"0\":{\"nilai\":\"370\",\"kategory\":\"Energi\"},\"2\":{\"nilai\":\"21\",\"kategory\":\"Protein\"},\"3\":{\"nilai\":\"13,75\",\"kategory\":\"Lemak\"},\"4\":{\"nilai\":\"39,75\",\"kategory\":\"Karbohidrat\"}}', '2019-08-28 14:59:30', '2019-08-28 14:59:30'),
(53, '1567029618_seblak.jpg', 'Seblak Sayur', '{\"0\":{\"nilai\":\"262\",\"kategory\":\"Energi\"},\"2\":{\"nilai\":\"8,15\",\"kategory\":\"Protein\"},\"3\":{\"nilai\":\"13,31\",\"kategory\":\"Lemak\"},\"4\":{\"nilai\":\"31,15\",\"kategory\":\"Karbohidrat\"}}', '2019-08-28 15:00:18', '2019-08-28 15:00:18'),
(54, '1567029669_seblak2.jpg', 'Seblak Sayur', '{\"0\":{\"nilai\":\"262\",\"kategory\":\"Energi\"},\"2\":{\"nilai\":\"8,15\",\"kategory\":\"Protein\"},\"3\":{\"nilai\":\"13,31\",\"kategory\":\"Lemak\"},\"4\":{\"nilai\":\"31,15\",\"kategory\":\"Karbohidrat\"}}', '2019-08-28 15:01:09', '2019-08-28 15:01:09'),
(55, '1567029749_jusmanga2.jpg', 'Jus Mangga', '{\"0\":{\"nilai\":\"130\",\"kategory\":\"Energi\"},\"2\":{\"nilai\":\"0,88\",\"kategory\":\"Protein\"},\"3\":{\"nilai\":\"0,29\",\"kategory\":\"Lemak\"},\"4\":{\"nilai\":\"33,52\",\"kategory\":\"Karbohidrat\"}}', '2019-08-28 15:02:29', '2019-08-28 15:02:29'),
(56, '1567029805_melon.jpg', 'Melon', '{\"0\":{\"nilai\":\"38,2\",\"kategory\":\"Energi\"},\"2\":{\"nilai\":\"0,6\",\"kategory\":\"Protein\"},\"3\":{\"nilai\":\"0,2\",\"kategory\":\"Lemak\"},\"4\":{\"nilai\":\"8,3\",\"kategory\":\"Karbohidrat\"}}', '2019-08-28 15:03:25', '2019-08-28 15:03:25'),
(58, '1567029936_teh manis 2.jpg', 'Teh Manis', '{\"0\":{\"nilai\":\"55\",\"kategory\":\"Energi\"},\"2\":{\"nilai\":\"0\",\"kategory\":\"Protein\"},\"3\":{\"nilai\":\"0\",\"kategory\":\"Lemak\"},\"4\":{\"nilai\":\"14,36\",\"kategory\":\"Karbohidrat\"}}', '2019-08-28 15:05:36', '2019-08-28 15:05:36'),
(59, '1567030004_rujak buah.jpg', 'Rujak Buah', '{\"0\":{\"nilai\":\"121\",\"kategory\":\"Energi\"},\"2\":{\"nilai\":\"5,99\",\"kategory\":\"Protein\"},\"3\":{\"nilai\":\"6,15\",\"kategory\":\"Lemak\"},\"4\":{\"nilai\":\"12\",\"kategory\":\"Karbohidrat\"}}', '2019-08-28 15:06:44', '2019-08-28 15:06:44'),
(61, '1567030123_mie goreng.jpg', 'Mie Goreng', '{\"0\":{\"nilai\":\"350\",\"kategory\":\"Energi\"},\"2\":{\"nilai\":\"8\",\"kategory\":\"Protein\"},\"3\":{\"nilai\":\"12\",\"kategory\":\"Lemak\"},\"4\":{\"nilai\":\"52\",\"kategory\":\"Karbohidrat\"}}', '2019-08-28 15:08:44', '2019-08-28 15:08:44');

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
(2, '2019_08_28_023938_create_gambars_table', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset`
--

CREATE TABLE `password_reset` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
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
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin1@gmail.com', '$2y$10$HzEhEHyLWyELFyV1VrBQLOkssJsEskstr2fkDG1CgW4VpEGJ6.t42', 'he4smpa1z97astXoZ6EToeKrOSGIPqKYn7U4w8F7kxPdEJU3BcVQCsFRjYII', '2019-08-27 22:47:54', '2019-08-27 22:47:54'),
(2, 'Admin 2', 'admin2@gmail.com', '$2y$10$vmLJ.FbPCfpgdfjGyfS3k.s/wRFCl5NHbpst/b3.MxMrl8SBA2KAa', 'YrvDkG2OBnLxxE6rZHqKZtXkFn5DvbXQNDWKRjL4VGehTU4R9CZaUJ30yQXH', '2019-08-27 23:05:43', '2019-08-27 23:05:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gambar`
--
ALTER TABLE `gambar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
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
-- AUTO_INCREMENT for table `gambar`
--
ALTER TABLE `gambar`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
