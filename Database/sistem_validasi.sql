-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Jun 2023 pada 10.24
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistem_validasi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_activation_attempts`
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
-- Struktur dari tabel `auth_groups`
--

CREATE TABLE `auth_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_groups`
--

INSERT INTO `auth_groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'admin prodi'),
(2, 'user', 'mahasiswa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_groups_permissions`
--

CREATE TABLE `auth_groups_permissions` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_groups_permissions`
--

INSERT INTO `auth_groups_permissions` (`group_id`, `permission_id`) VALUES
(1, 1),
(1, 2),
(2, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_groups_users`
--

INSERT INTO `auth_groups_users` (`group_id`, `user_id`) VALUES
(1, 1),
(1, 3),
(1, 4),
(1, 5),
(2, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_logins`
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
-- Dumping data untuk tabel `auth_logins`
--

INSERT INTO `auth_logins` (`id`, `ip_address`, `email`, `user_id`, `date`, `success`) VALUES
(1, '::1', 'dhimasyoga1221@gmail.com', 1, '2022-02-19 12:24:40', 1),
(2, '::1', 'dhimura17@gmail.com', 2, '2022-02-19 12:25:12', 1),
(3, '::1', 'dhimura17@gmail.com', 2, '2022-02-19 12:33:11', 1),
(4, '::1', 'dhimura17@gmail.com', 2, '2022-02-19 12:34:07', 1),
(5, '::1', 'dimas', NULL, '2022-02-19 12:34:17', 0),
(6, '::1', 'dhimasyoga1221@gmail.com', 1, '2022-02-19 12:34:25', 1),
(7, '::1', 'dhimasyoga1221@gmail.com', 1, '2022-02-21 07:35:57', 1),
(8, '::1', 'dhimura17@gmail.com', 2, '2022-02-21 07:36:08', 1),
(9, '::1', 'dhimura17@gmail.com', 2, '2022-02-21 07:38:50', 1),
(10, '::1', 'dhimasyoga1221@gmail.com', 1, '2022-02-21 07:38:56', 1),
(11, '::1', 'dhimasyoga1221@gmail.com', 1, '2022-02-24 07:44:15', 1),
(12, '::1', 'dhimasyoga1221@gmail.com', 1, '2022-03-09 07:59:58', 1),
(13, '::1', 'dhimasyoga1221@gmail.com', 1, '2022-03-09 08:00:42', 1),
(14, '::1', 'dhimasyoga1221@gmail.com', 1, '2022-03-09 19:34:13', 1),
(15, '::1', 'dhimasyoga1221@gmail.com', 1, '2022-03-10 04:52:02', 1),
(16, '::1', 'dhimura17@gmail.com', 2, '2022-03-10 08:24:57', 1),
(17, '::1', 'dhimasyoga1221@gmail.com', 1, '2022-03-10 08:25:07', 1),
(18, '::1', 'dhimasyoga1221@gmail.com', 1, '2022-03-10 13:46:46', 1),
(19, '::1', 'dhimasyoga1221@gmail.com', 1, '2022-03-11 06:42:42', 1),
(20, '::1', 'dhimasyoga1221@gmail.com', 1, '2022-03-11 17:40:42', 1),
(21, '::1', 'dhimasyoga1221@gmail.com', 1, '2022-03-11 23:29:34', 1),
(22, '::1', 'dhimasyoga1221@gmail.com', 1, '2022-03-12 04:44:35', 1),
(23, '::1', 'dhimura17@gmail.com', 2, '2022-03-12 04:53:30', 1),
(24, '::1', 'dhimura17@gmail.com', 2, '2022-03-12 18:44:14', 1),
(25, '::1', 'dhimasyoga1221@gmail.com', 1, '2022-03-12 18:44:24', 1),
(26, '::1', 'dhimasyoga1221@gmail.com', 1, '2022-03-17 00:12:56', 1),
(27, '::1', 'dhimasyoga1221@gmail.com', 1, '2022-03-18 08:23:04', 1),
(28, '::1', 'dhimasyoga1221@gmail.com', 1, '2022-03-18 19:21:15', 1),
(29, '::1', 'dhimasyoga1221@gmail.com', 1, '2022-03-26 18:01:03', 1),
(30, '::1', 'dhimasyoga1221@gmail.com', 1, '2022-03-26 18:05:31', 1),
(31, '::1', 'dhimasyoga1221@gmail.com', 1, '2022-03-28 06:18:41', 1),
(32, '::1', 'dhimura17@gmail.com', 2, '2022-03-28 06:35:03', 1),
(33, '::1', 'dhimasyoga1221@gmail.com', 1, '2022-03-28 06:36:50', 1),
(34, '::1', 'dhimura17@gmail.com', 2, '2022-03-28 06:39:18', 1),
(35, '::1', 'dhimasyoga1221@gmail.com', 1, '2022-03-28 06:39:43', 1),
(36, '::1', 'dhimasyoga1221@gmail.com', 1, '2022-03-31 07:43:56', 1),
(37, '::1', 'dhimasyoga1221@gmail.com', 1, '2022-04-01 03:39:51', 1),
(38, '::1', 'dhimasyoga1221@gmail.com', 1, '2022-04-01 07:31:08', 1),
(39, '::1', 'dhimasyoga1221@gmail.com', 1, '2022-04-02 09:13:51', 1),
(40, '::1', 'dhimasyoga1221@gmail.com', 1, '2022-04-02 09:14:52', 1),
(41, '::1', 'dhimasyoga1221@gmail.com', 1, '2022-04-02 09:14:58', 1),
(42, '::1', 'dhimasyoga1221@gmail.com', 1, '2022-04-02 09:17:08', 1),
(43, '::1', 'dhimasyoga1221@gmail.com', 1, '2022-04-02 09:17:50', 1),
(44, '::1', 'dhimasyoga1221@gmail.com', 1, '2022-04-02 12:01:05', 1),
(45, '::1', 'dhimasyoga1221@gmail.com', 1, '2022-05-10 07:20:06', 1),
(46, '::1', 'dhimasyoga1221@gmail.com', 1, '2022-05-10 08:44:01', 1),
(47, '::1', 'dhimasyoga1221@gmail.com', 1, '2022-05-18 22:48:52', 1),
(48, '::1', 'dhimasyoga1221@gmail.com', 1, '2022-05-20 03:09:58', 1),
(49, '::1', 'dhimasyoga1221@gmail.com', 1, '2022-05-26 21:27:04', 1),
(50, '::1', 'dhimasyoga1221@gmail.com', 1, '2022-05-27 01:55:35', 1),
(51, '::1', 'dhimasyoga1221@gmail.com', 1, '2022-05-27 07:10:48', 1),
(52, '::1', 'dhimasyoga1221@gmail.com', 1, '2022-05-27 13:16:10', 1),
(53, '::1', 'dhimasyoga1221@gmail.com', 1, '2022-05-27 13:47:39', 1),
(54, '::1', 'dhimasyoga1221@gmail.com', 1, '2022-05-28 00:14:48', 1),
(55, '::1', 'dhimasyoga1221@gmail.com', 1, '2022-05-29 10:44:44', 1),
(56, '::1', 'dhimasyoga1221@gmail.com', 1, '2022-05-29 11:08:53', 1),
(57, '::1', 'dhimasyoga1221@gmail.com', 1, '2022-05-29 13:33:24', 1),
(58, '::1', 'dhimasyoga1221@gmail.com', 1, '2022-05-30 02:31:09', 1),
(59, '::1', 'dhimasyoga1221@gmail.com', 1, '2022-05-30 02:32:15', 1),
(60, '::1', 'dhimasyoga1221@gmail.com', 1, '2022-05-30 07:56:42', 1),
(61, '::1', 'dhimasyoga1221@gmail.com', 1, '2022-06-04 09:36:26', 1),
(62, '::1', 'dhimasyoga1221@gmail.com', 1, '2022-06-05 00:44:05', 1),
(63, '::1', 'dhimasyoga1221@gmail.com', 1, '2022-06-05 08:04:42', 1),
(64, '::1', 'dhimasyoga1221@gmail.com', 1, '2022-06-07 08:11:10', 1),
(65, '::1', 'dhimasyoga1221@gmail.com', 1, '2022-06-08 09:58:27', 1),
(66, '::1', 'dhimasyoga1221@gmail.com', 1, '2022-06-08 10:00:22', 1),
(67, '::1', 'dhimasyoga1221@gmail.com', 1, '2022-06-13 08:54:44', 1),
(68, '::1', 'dhimasyoga1221@gmail.com', 1, '2022-06-17 12:35:28', 1),
(69, '::1', 'dhimasyoga1221@gmail.com', 1, '2022-06-19 08:36:18', 1),
(70, '::1', 'dhimura17@gmail.com', 2, '2022-06-19 08:41:44', 1),
(71, '::1', 'dhimasyoga1221@gmail.com', 1, '2022-06-19 08:41:57', 1),
(72, '::1', 'dhimas2', NULL, '2022-06-19 08:45:43', 0),
(73, '::1', 'dimas1221@gmail.com', 3, '2022-06-19 08:51:16', 1),
(74, '::1', 'dimas1221@gmail.com', 3, '2022-06-19 09:20:22', 1),
(75, '::1', 'dimas1221@gmail.com', 3, '2022-06-20 05:14:58', 1),
(76, '::1', 'dimas1221@gmail.com', 3, '2022-06-20 09:33:03', 1),
(77, '::1', 'dimas1221@gmail.com', 3, '2022-06-20 12:07:32', 1),
(78, '::1', 'dimas1221@gmail.com', 3, '2022-06-21 01:31:05', 1),
(79, '::1', 'dimas1221@gmail.com', 3, '2022-06-21 08:22:32', 1),
(80, '::1', 'dimas1221@gmail.com', 3, '2022-06-21 09:20:13', 1),
(81, '::1', 'dimas1221@gmail.com', 3, '2022-06-24 08:04:08', 1),
(82, '::1', 'dimas1221@gmail.com', 3, '2022-06-24 08:34:36', 1),
(83, '::1', 'dimas1221@gmail.com', 3, '2022-06-24 08:45:28', 1),
(84, '::1', 'dimas1221@gmail.com', 3, '2022-06-26 09:41:17', 1),
(85, '::1', 'dimas1221@gmail.com', 3, '2022-06-26 10:00:36', 1),
(86, '::1', 'dhimasyoga1221@gmail.com', 1, '2022-06-26 10:02:54', 1),
(87, '::1', 'dimas1221@gmail.com', 3, '2022-06-26 10:08:10', 1),
(88, '::1', 'dimas1221@gmail.com', 3, '2022-06-26 10:18:12', 1),
(89, '::1', 'dimas1221@gmail.com', 3, '2022-06-26 10:24:01', 1),
(90, '::1', 'dhimasyoga1221@gmail.com', 1, '2022-06-27 01:42:12', 1),
(91, '::1', 'dhimasyoga1221@gmail.com', 1, '2022-06-28 03:42:42', 1),
(92, '::1', 'dhimasyoga1221@gmail.com', 1, '2022-06-28 13:13:49', 1),
(93, '::1', 'slebew', 5, '2022-06-28 13:20:51', 0),
(94, '::1', 'slebew', 5, '2022-06-28 13:20:58', 0),
(95, '::1', 'dhimas', NULL, '2022-06-28 13:23:48', 0),
(96, '::1', 'dhimas', NULL, '2022-06-28 13:24:51', 0),
(97, '::1', 'dhimas', NULL, '2022-06-28 13:25:01', 0),
(98, '::1', 'dimas1221@gmail.com', 3, '2022-06-28 13:25:05', 1),
(99, '::1', 'dimas1221@gmail.com', 3, '2022-08-09 08:05:11', 1),
(100, '::1', 'dhimura17@gmail.com', 2, '2022-08-09 11:04:22', 1),
(101, '::1', 'slebew', 5, '2022-08-09 11:04:37', 0),
(102, '::1', 'dhimas', NULL, '2022-08-09 11:06:52', 0),
(103, '::1', 'dhimas', NULL, '2022-08-09 11:07:00', 0),
(104, '::1', 'dhimas', NULL, '2022-08-10 01:10:41', 0),
(105, '::1', 'dimas1221@gmail.com', 3, '2022-08-10 01:10:44', 1),
(106, '::1', 'dimas1221@gmail.com', 3, '2022-08-12 01:26:49', 1),
(107, '::1', 'dimas1221@gmail.com', 3, '2022-08-12 06:38:01', 1),
(108, '::1', 'dimas1221@gmail.com', 3, '2022-08-14 08:52:38', 1),
(109, '::1', 'dimas1221@gmail.com', 3, '2022-08-16 00:18:48', 1),
(110, '::1', 'dimas1221@gmail.com', 3, '2022-08-16 00:34:40', 1),
(111, '::1', 'dimas1221@gmail.com', 3, '2022-08-16 07:50:12', 1),
(112, '::1', 'dhimasyoga1221@gmail.com', 1, '2022-08-16 23:21:20', 1),
(113, '::1', 'dhimasyoga1221@gmail.com', 1, '2022-08-16 23:22:15', 1),
(114, '::1', 'dhimasyoga1221@gmail.com', 1, '2022-08-16 23:37:10', 1),
(115, '::1', 'dhimasyoga1221@gmail.com', 1, '2022-08-18 02:53:23', 1),
(116, '::1', 'dhimasyoga1221@gmail.com', 1, '2023-06-24 00:46:56', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_permissions`
--

CREATE TABLE `auth_permissions` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_permissions`
--

INSERT INTO `auth_permissions` (`id`, `name`, `description`) VALUES
(1, 'manage-users', 'manage all user'),
(2, 'manage-profile', 'manage users profile');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_reset_attempts`
--

CREATE TABLE `auth_reset_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_reset_attempts`
--

INSERT INTO `auth_reset_attempts` (`id`, `email`, `ip_address`, `user_agent`, `token`, `created_at`) VALUES
(1, 'dhimasyoga1221@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '0e1a00dbbe3dbd069b164d117214ff22', '2022-06-24 08:28:05'),
(2, 'dhimasyoga1221@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '0e1a00dbbe3dbd069b164d117214ff22', '2022-06-24 08:31:45'),
(3, 'dhimasyoga1221@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'd068ab3fc6c0ea1d2c0cefec14a3c743', '2022-06-27 01:41:23'),
(4, 'dhimasyoga1221@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'd068ab3fc6c0ea1d2c0cefec14a3c743', '2022-06-27 01:41:41');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_tokens`
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
-- Struktur dari tabel `auth_users_permissions`
--

CREATE TABLE `auth_users_permissions` (
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
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
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2017-11-20-223112', 'Myth\\Auth\\Database\\Migrations\\CreateAuthTables', 'default', 'Myth\\Auth', 1645253056, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_hasil_validasi`
--

CREATE TABLE `tb_hasil_validasi` (
  `id` int(11) NOT NULL,
  `nama_mahasiswa` varchar(255) NOT NULL,
  `nim_mahasiswa` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `prodi` varchar(255) NOT NULL,
  `hasil_validasi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_hasil_validasi`
--

INSERT INTO `tb_hasil_validasi` (`id`, `nama_mahasiswa`, `nim_mahasiswa`, `created_at`, `updated_at`, `prodi`, `hasil_validasi`) VALUES
(5, 'Dimas Setiya Prayoga', '5180411350', '2022-05-27 08:55:31', '2022-05-27 08:55:31', 'Informatika', 'lolos'),
(6, 'Agung Wirakurniawan', '5180411340', '2022-05-27 08:56:12', '2022-05-27 08:56:12', 'Informatika', 'lolos'),
(7, 'Eka Puspita Widowati ', '5180411328', '2022-05-27 08:57:01', '2022-05-27 08:57:01', 'Informatika', 'lolos'),
(8, 'Rilo Supriyatno', '5180411351', '2022-05-27 08:58:04', '2022-05-27 08:58:04', 'Informatika', 'lolos'),
(9, 'Izaaz Azaam Shahalam', '5180411386', '2022-05-27 08:58:40', '2022-05-27 08:58:40', 'Informatika', 'lolos'),
(10, 'Ahmad Aftoni', '5180411331', '2022-05-27 08:59:15', '2022-05-27 08:59:15', 'Informatika', 'gagal'),
(11, 'Muhammad Rizky Ramdani', '5180411119', '2022-05-27 09:00:28', '2022-05-27 09:00:28', 'Informatika', 'lolos'),
(12, 'Esa Juniarto', '5180411347', '2022-05-27 09:03:28', '2022-05-27 09:03:28', 'Informatika', 'lolos'),
(13, 'Apriliasni Sanjaya', '5180411229', '2022-05-27 10:11:12', '2022-06-21 02:07:39', 'Informatika', 'gagal'),
(19, 'Widodo', '5180411282', '2022-06-07 08:14:27', '2022-06-07 08:14:27', 'Informatika', 'gagal'),
(22, 'X', '5170411350', '2022-06-21 08:23:11', '2022-06-21 08:23:11', 'Informatika', 'gagal');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_mahasiswa`
--

CREATE TABLE `tb_mahasiswa` (
  `id_mhs` int(11) NOT NULL,
  `nama_mhs` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `khs` varchar(255) NOT NULL,
  `status_ta` varchar(255) NOT NULL,
  `nim` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_mahasiswa`
--

INSERT INTO `tb_mahasiswa` (`id_mhs`, `nama_mhs`, `created_at`, `updated_at`, `khs`, `status_ta`, `nim`) VALUES
(1, 'dimas', '2022-02-19 12:27:21', '2022-02-19 12:27:21', '123.pdf', '', '123'),
(2, 'contoh', '2022-03-28 06:39:37', '2022-03-28 06:39:37', 'meo.pdf', '', '12356');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `fullname` varchar(255) NOT NULL,
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
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `fullname`, `user_image`, `password_hash`, `reset_hash`, `reset_at`, `reset_expires`, `activate_hash`, `status`, `status_message`, `active`, `force_pass_reset`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'dhimasyoga1221@gmail.com', 'dhimas', '', 'default.svg', '$2y$10$AGZ5n8adlB2ldsDItyu9LO.j981qIC3sztKEHXpN6Hq507tS8.7.S', NULL, '2022-06-27 01:41:41', NULL, NULL, NULL, NULL, 1, 0, '2022-02-19 12:20:07', '2022-06-27 01:41:41', NULL),
(2, 'dhimura17@gmail.com', 'yoga', '', 'default.svg', '$2y$10$NI//XHZf44tDvKFUHNNqDuw/NjoqabuxafVncPlhmJF5Ia51NQ.wa', '2354218b39928ec491cc89a5c8a65481', NULL, '2022-06-24 09:25:28', NULL, NULL, NULL, 1, 0, '2022-02-19 12:20:34', '2022-06-24 08:25:28', NULL),
(3, 'dimas1221@gmail.com', 'naruto', '', 'default.svg', '$2y$10$TKbzp/kDchvJ0M5dsutYp.k18e9iOtQFSzcOJfCxbZqHz/G0vPbN2', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-06-19 08:51:07', '2022-06-19 08:51:07', NULL),
(4, 'setiyadimas9@gmail.com', 'yoga12', '', 'default.svg', '$2y$10$CfYE5ZRMTW2jW6CokoahluewunicdhpvYm9U7NLi6VMcoW3Q58yym', 'ced31f4fae3e16b699793f809ea54475', NULL, '2022-06-24 09:16:27', NULL, NULL, NULL, 1, 0, '2022-06-24 08:08:27', '2022-06-24 08:16:27', NULL),
(5, 'dimasyoga1221@gmail.com', 'slebew', '', 'default.svg', '$2y$10$THgvsjIexsdDa/G0kfyiHuhmTaH/ZPEkkCT6lZtCExYMv.785r/zG', NULL, NULL, NULL, '82957e0ca8a2338cb1a45825b0593543', NULL, NULL, 0, 0, '2022-06-28 13:20:39', '2022-06-28 13:20:39', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_groups`
--
ALTER TABLE `auth_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD KEY `auth_groups_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `group_id_permission_id` (`group_id`,`permission_id`);

--
-- Indeks untuk tabel `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD KEY `auth_groups_users_user_id_foreign` (`user_id`),
  ADD KEY `group_id_user_id` (`group_id`,`user_id`);

--
-- Indeks untuk tabel `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `auth_permissions`
--
ALTER TABLE `auth_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_tokens_user_id_foreign` (`user_id`),
  ADD KEY `selector` (`selector`);

--
-- Indeks untuk tabel `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD KEY `auth_users_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `user_id_permission_id` (`user_id`,`permission_id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_hasil_validasi`
--
ALTER TABLE `tb_hasil_validasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_mahasiswa`
--
ALTER TABLE `tb_mahasiswa`
  ADD PRIMARY KEY (`id_mhs`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_groups`
--
ALTER TABLE `auth_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT untuk tabel `auth_permissions`
--
ALTER TABLE `auth_permissions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `auth_tokens`
--
ALTER TABLE `auth_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tb_hasil_validasi`
--
ALTER TABLE `tb_hasil_validasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `tb_mahasiswa`
--
ALTER TABLE `tb_mahasiswa`
  MODIFY `id_mhs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD CONSTRAINT `auth_groups_permissions_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD CONSTRAINT `auth_groups_users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD CONSTRAINT `auth_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD CONSTRAINT `auth_users_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_users_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
