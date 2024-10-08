-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Sep 2024 pada 05.37
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sekolah`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `desc` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `abouts`
--

INSERT INTO `abouts` (`id`, `title`, `desc`, `image`, `is_active`, `created_at`, `updated_at`) VALUES
(2, 'test about', 'test about', 'foto_diri/1725329621_about.jpg', '0', '2024-09-02 19:13:41', '2024-09-02 19:13:41');

-- --------------------------------------------------------

--
-- Struktur dari tabel `authors`
--

CREATE TABLE `authors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `banks`
--

CREATE TABLE `banks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sandi_bank` varchar(20) NOT NULL,
  `nama_bank` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `banks`
--

INSERT INTO `banks` (`id`, `sandi_bank`, `nama_bank`) VALUES
(1, '002', 'Bank BRI'),
(2, '008', 'Bank Mandiri'),
(3, '009', 'Bank BNI'),
(4, '427', 'Bank Syariah Indonesia (Eks. BNI Syariah)'),
(5, '451', 'Bank Syariah Indonesia (Eks. Bank Syariah Mandiri, BSM)'),
(6, '422', 'Bank Syariah Indonesia (Eks. BRI Syariah)'),
(7, '200', 'Bank BTN'),
(8, '022', 'Bank CIMB'),
(9, '022', 'Bank CIMB Niaga Syariah'),
(10, '147', 'Bank Muamalat'),
(11, '213', 'Bank BTPN'),
(12, '547', 'Bank BTPN Syariah'),
(13, '213', 'Bank Jenius'),
(14, '013', 'Bank Permata'),
(15, '013', 'Bank Permata Syariah'),
(16, '046', 'Bank DBS Indonesia'),
(17, '046', 'Digibank'),
(18, '011', 'BANK DANAMON'),
(19, '016', 'BANK MAYBANK (BII)'),
(20, '426', 'BANK MEGA'),
(21, '153', 'BANK SINARMAS'),
(22, '950', 'BANK COMMONWEALTH'),
(23, '028', 'BANK OCBC NISP'),
(24, '441', 'BANK BUKOPIN'),
(25, '521', 'BANK BUKOPIN SYARIAH'),
(26, '536', 'BANK BCA SYARIAH'),
(27, '026', 'BANK LIPPO'),
(28, '031', 'CITIBANK'),
(29, '789', 'INDOSAT DOMPETKU'),
(30, '911', 'LINKAJA'),
(31, '023', 'Bank UOB Indonesia'),
(32, '023', 'TMRW by UOB Indonesia'),
(33, '542', 'Bank Jago (Bank Artos Indonesia)'),
(34, '490', 'Bank NEO Commerce (Akulaku)'),
(35, '110', 'BANK JABAR BJB (JAWA BARAT)'),
(36, '425', 'BANK JABAR BJB SYARIAH (JAWA BARAT)'),
(37, '111', 'BANK DKI JAKARTA'),
(38, '112', 'BPD DIY (YOGYAKARTA)'),
(39, '113', 'BANK JATENG (JAWA TENGAH)'),
(40, '114', 'BANK JATIM (JAWA TIMUR)'),
(41, '115', 'BANK JAMBI'),
(42, '116', 'BANK ACEH'),
(43, '116', 'BANK ACEH SYARIAH'),
(44, '117', 'BANK SUMUT'),
(45, '118', 'BANK NAGARI (BANK SUMBAR)'),
(46, '119', 'BANK RIAU KEPRI'),
(47, '120', 'BANK SUMSEL BABEL (SUMATERA SELATAN BANGKA BELITUNG)'),
(48, '121', 'BANK LAMPUNG'),
(49, '122', 'BANK KALSEL (BANK KALIMANTAN SELATAN)'),
(50, '123', 'BANK KALBAR (BANK KALIMANTAN BARAT)'),
(51, '124', 'BANK KALTIMTARA (BANK KALIMANTAN TIMUR DAN UTARA)'),
(52, '125', 'BANK KALTENG (BANK KALIMANTAN TENGAH)'),
(53, '126', 'BANK SULSELBAR (BANK SULAWESI SELATAN DAN BARAT)'),
(54, '127', 'BANK SULUTGO (BANK SULAWESI UTARA DAN GORONTALO)'),
(55, '128', 'BANK NTB'),
(56, '128', 'BANK NTB SYARIAH'),
(57, '129', 'BANK BPD BALI'),
(58, '130', 'BANK NTT'),
(59, '131', 'BANK MALUKU MALUT'),
(60, '132', 'BANK PAPUA'),
(61, '133', 'BANK BENGKULU'),
(62, '134', 'BANK SULTENG (BANK SULAWESI TENGAH)'),
(63, '135', 'BANK SULTRA (BANK SULAWESI TENGGARA)'),
(64, '137', 'BANK BANTEN'),
(65, '003', 'BANK EKSPOR INDONESIA'),
(66, '019', 'BANK PANIN'),
(67, '517', 'BANK PANIN DUBAI SYARIAH'),
(68, '020', 'BANK ARTA NIAGA KENCANA'),
(69, '030', 'AMERICAN EXPRESS BANK LTD'),
(70, '031', 'CITIBANK'),
(71, '032', 'JP. MORGAN CHASE BANK, N.A.'),
(72, '033', 'BANK OF AMERICA, N.A'),
(73, '034', 'ING INDONESIA BANK'),
(74, '036', 'BANK CCB INDONESIA'),
(75, '037', 'BANK ARTHA GRAHA INTERNASIONAL'),
(76, '039', 'BANK CREDIT AGRICOLE INDOSUEZ'),
(77, '040', 'THE BANGKOK BANK COMP. LTD'),
(78, '042', 'MUFG BANK'),
(79, '045', 'BANK SUMITOMO MITSUI INDONESIA'),
(80, '047', 'BANK RESONA PERDANIA'),
(81, '048', 'BANK MIZUHO INDONESIA'),
(82, '050', 'STANDARD CHARTERED BANK'),
(83, '052', 'BANK ABN AMRO'),
(84, '053', 'BANK KEPPEL TATLEE BUANA'),
(85, '054', 'BANK CAPITAL INDONESIA'),
(86, '057', 'BANK BNP PARIBAS INDONESIA'),
(87, '059', 'KOREA EXCHANGE BANK DANAMON'),
(88, '060', 'RABOBANK INTERNASIONAL INDONESIA'),
(89, '061', 'BANK ANZ INDONESIA'),
(90, '069', 'BANK OF CHINA'),
(91, '076', 'BANK BUMI ARTA'),
(92, '087', 'BANK HSBC INDONESIA'),
(93, '087', 'BANK EKONOMI (Lebur dengan Bank HSBC)'),
(94, '088', 'BANK ANTARDAERAH'),
(95, '089', 'BANK HAGA'),
(96, '093', 'BANK IFI'),
(97, '095', 'BANK J TRUST INDONESIA'),
(98, '097', 'BANK MAYAPADA'),
(99, '145', 'BANK NUSANTARA PARAHYANGAN'),
(100, '146', 'BANK SWADESI (BANK OF INDIA INDONESIA)'),
(101, '151', 'BANK MESTIKA'),
(102, '152', 'BANK SHINHAN INDONESIA (BANK METRO EXPRESS)'),
(103, '157', 'BANK MASPION INDONESIA'),
(104, '159', 'BANK HAGAKITA'),
(105, '161', 'BANK GANESHA'),
(106, '162', 'BANK WINDU KENTJANA'),
(107, '164', 'BANK ICBC INDONESIA (HALIM INDONESIA BANK)'),
(108, '166', 'BANK HARMONI INTERNATIONAL'),
(109, '167', 'BANK QNB INDONESIA'),
(110, '212', 'BANK WOORI SAUDARA'),
(111, '405', 'BANK VICTORIA SYARIAH'),
(112, '459', 'BANK BISNIS INTERNASIONAL'),
(113, '466', 'BANK SRI PARTHA'),
(114, '472', 'BANK JASA JAKARTA'),
(115, '484', 'BANK HANA (KEB HANA BANK)'),
(116, '485', 'BANK MNC'),
(117, '490', 'BANK YUDHA BHAKTI'),
(118, '491', 'BANK MITRANIAGA'),
(119, '494', 'BANK BRI AGRO'),
(120, '498', 'BANK SBI INDONESIA (BANK INDOMONEX)'),
(121, '501', 'BANK DIGITAL BCA (BCA DIGITAL)'),
(122, '503', 'BANK NATIONAL NOBU (BANK ALFINDO)'),
(123, '506', 'BANK MEGA SYARIAH'),
(124, '513', 'BANK INA PERDANA'),
(125, '517', 'BANK PANIN DUBAI SYARIAH'),
(126, '520', 'PRIMA MASTER BANK'),
(127, '521', 'BANK PERSYARIKATAN INDONESIA'),
(128, '525', 'BANK AKITA'),
(129, '526', 'BANK DINAR INDONESIA'),
(130, '531', 'ANGLOMAS INTERNASIONAL BANK'),
(131, '523', 'BANK SAHABAT SAMPEORNA (BANK DIPO INTERNATIONAL)'),
(132, '535', 'BANK KESEJAHTERAAN EKONOMI'),
(133, '548', 'BANK MULTIARTA SENTOSA'),
(134, '553', 'BANK MAYORA INDONESIA'),
(135, '555', 'BANK INDEX SELINDO'),
(136, '558', 'BANK EKSEKUTIF'),
(137, '559', 'CENTRATAMA NASIONAL BANK'),
(138, '562', 'BANK FAMA INTERNASIONAL'),
(139, '564', 'BANK MANDIRI TASPEN POS (BANK SINAR HARAPAN BALI)'),
(140, '566', 'BANK VICTORIA INTERNATIONAL'),
(141, '567', 'BANK HARDA INTERNASIONAL'),
(142, '945', 'IBK BANK INDONESIA'),
(143, '946', 'BANK MERINCORP'),
(144, '947', 'BANK MAYBANK INDOCORP'),
(145, '949', 'BANK CTBC INDONESIA (CHINA TRUST)'),
(146, '688', 'BPR KS (KARYAJATNIKA SEDAYA)');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bank_accounts`
--

CREATE TABLE `bank_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `account_number` bigint(20) UNSIGNED NOT NULL,
  `account_name` varchar(255) NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `is_primary` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `beritas`
--

CREATE TABLE `beritas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `beritas`
--

INSERT INTO `beritas` (`id`, `title`, `slug`, `content`, `kategori_id`, `thumbnail`, `is_active`, `created_by`, `created_at`, `updated_at`) VALUES
(4, 'test berita', 'test-berita', 'test test', 1, 'foto_diri/1724814656_berita.jpg', '0', 1, '2024-08-27 20:10:56', '2024-08-27 20:10:56');

-- --------------------------------------------------------

--
-- Struktur dari tabel `berkas_murids`
--

CREATE TABLE `berkas_murids` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `kartu_keluarga` varchar(255) DEFAULT NULL,
  `akte_kelahiran` varchar(255) DEFAULT NULL,
  `surat_kelakuan_baik` varchar(255) DEFAULT NULL,
  `surat_sehat` varchar(255) DEFAULT NULL,
  `surat_tidak_buta_warna` varchar(255) DEFAULT NULL,
  `rapor` varchar(255) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `ijazah` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `book_code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `author_id` bigint(20) UNSIGNED NOT NULL,
  `publisher_id` bigint(20) UNSIGNED NOT NULL,
  `publication_year` year(4) NOT NULL,
  `isbn` varchar(50) NOT NULL,
  `stock` int(11) NOT NULL,
  `is_available` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `borrowings`
--

CREATE TABLE `borrowings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `borrow_code` varchar(255) NOT NULL,
  `member_id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `borrow_date` date NOT NULL,
  `return_date` date NOT NULL,
  `lateness` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_jurusans`
--

CREATE TABLE `data_jurusans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jurusan_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_murids`
--

CREATE TABLE `data_murids` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `nis` bigint(20) DEFAULT NULL,
  `nisn` bigint(20) DEFAULT NULL,
  `tempat_lahir` varchar(255) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `agama` enum('Islam','Kristen Katolik','Kristen Protestan','Hindu','Budha','Konghucu') DEFAULT NULL,
  `telp` varchar(255) DEFAULT NULL,
  `whatsapp` varchar(255) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `asal_sekolah` varchar(255) DEFAULT NULL,
  `proses` enum('Pendaftaran','Berkas','Murid','Ditolak') NOT NULL DEFAULT 'Pendaftaran',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `data_murids`
--

INSERT INTO `data_murids` (`id`, `user_id`, `nis`, `nisn`, `tempat_lahir`, `tgl_lahir`, `agama`, `telp`, `whatsapp`, `alamat`, `asal_sekolah`, `proses`, `created_at`, `updated_at`) VALUES
(4, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pendaftaran', '2024-09-06 19:07:53', '2024-09-06 19:07:53'),
(5, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pendaftaran', '2024-09-06 19:14:06', '2024-09-06 19:14:06'),
(6, 9, NULL, NULL, NULL, NULL, NULL, NULL, '1234', NULL, 'test', 'Pendaftaran', '2024-09-07 21:03:00', '2024-09-07 21:03:00'),
(7, 10, NULL, NULL, NULL, NULL, NULL, NULL, '21313', NULL, 'test', 'Pendaftaran', '2024-09-07 23:16:00', '2024-09-07 23:16:00'),
(8, 11, NULL, NULL, NULL, NULL, NULL, NULL, '3121', NULL, 'test', 'Pendaftaran', '2024-09-07 23:20:40', '2024-09-07 23:20:40'),
(9, 12, NULL, NULL, NULL, NULL, NULL, NULL, '32131', NULL, 'test', 'Pendaftaran', '2024-09-07 23:38:21', '2024-09-07 23:38:21'),
(10, 13, NULL, NULL, NULL, NULL, NULL, NULL, '3213123', NULL, 'test', 'Pendaftaran', '2024-09-07 23:59:27', '2024-09-07 23:59:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_orang_tuas`
--

CREATE TABLE `data_orang_tuas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `nama_ayah` varchar(255) DEFAULT NULL,
  `pendidikan_ayah` enum('SD','SMP','SMA/SMK','S1','S2','S3') DEFAULT NULL,
  `telp_ayah` varchar(255) DEFAULT NULL,
  `pekerjaan_ayah` enum('Wiraswasta','Wirausaha','ASN','Buruh') DEFAULT NULL,
  `alamat_ayah` varchar(255) DEFAULT NULL,
  `nama_ibu` varchar(255) DEFAULT NULL,
  `pendidikan_ibu` enum('SD','SMP','SMA/SMK','S1','S2','S3') DEFAULT NULL,
  `telp_ibu` varchar(255) DEFAULT NULL,
  `pekerjaan_ibu` enum('Ibu Rumah Tangga','Wiraswasta','Wirausaha','ASN','Buruh') DEFAULT NULL,
  `alamat_ibu` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_payment_spps`
--

CREATE TABLE `detail_payment_spps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payment_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `sender` varchar(255) DEFAULT NULL,
  `bank_sender` varchar(255) DEFAULT NULL,
  `destination_bank` varchar(255) DEFAULT NULL,
  `month` varchar(255) NOT NULL,
  `amount` bigint(20) NOT NULL,
  `status` enum('paid','unpaid') NOT NULL,
  `file` varchar(255) DEFAULT NULL,
  `date_file` date DEFAULT NULL,
  `approve_by` bigint(20) UNSIGNED DEFAULT NULL,
  `approve_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `desc` text NOT NULL,
  `slug` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `acara` datetime NOT NULL,
  `lokasi` varchar(255) NOT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `events`
--

INSERT INTO `events` (`id`, `title`, `desc`, `slug`, `content`, `thumbnail`, `acara`, `lokasi`, `is_active`, `created_at`, `updated_at`) VALUES
(12, 'test event 1', 'test event 1', 'test-event-1', 'test event 1', 'foto_diri/1725327899_event.jpg', '2024-09-03 08:44:00', 'test event 1', '0', '2024-09-02 18:44:59', '2024-09-02 18:44:59');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `footers`
--

CREATE TABLE `footers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `instagram` varchar(255) NOT NULL,
  `twitter` varchar(255) NOT NULL,
  `youtube` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `telp` varchar(255) NOT NULL,
  `whatsapp` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `desc` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `image_sliders`
--

CREATE TABLE `image_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `urutan` int(11) NOT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `image_sliders`
--

INSERT INTO `image_sliders` (`id`, `image`, `title`, `desc`, `urutan`, `is_active`, `created_at`, `updated_at`) VALUES
(5, '1725331039_1715835511_slider1.jpg', 'test 1', 'test 1', 0, '0', '2024-09-02 19:37:19', '2024-09-02 19:37:19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusans`
--

CREATE TABLE `jurusans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `singkatan` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_beritas`
--

CREATE TABLE `kategori_beritas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kategori_beritas`
--

INSERT INTO `kategori_beritas` (`id`, `nama`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Prestasi', '0', '2024-05-15 20:30:43', '2024-05-15 20:30:43');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kegiatans`
--

CREATE TABLE `kegiatans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `imagas` varchar(255) DEFAULT NULL,
  `content` text NOT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `members`
--

CREATE TABLE `members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `member_code` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_08_08_100000_create_banks_tables', 1),
(6, '2022_03_20_132856_create_jurusans_table', 1),
(7, '2022_03_20_133244_create_data_jurusans_table', 1),
(8, '2022_03_22_182953_create_kegiatans_table', 1),
(9, '2022_03_23_040838_create_image_sliders_table', 1),
(10, '2022_03_23_052723_add_field_to_image_sliders_table', 1),
(11, '2022_03_23_065335_create_abouts_table', 1),
(12, '2022_03_23_074809_create_videos_table', 1),
(13, '2022_03_24_075737_create_kategori_beritas_table', 1),
(14, '2022_03_24_075900_create_beritas_table', 1),
(15, '2022_03_24_105758_create_events_table', 1),
(16, '2022_03_24_201826_add_field_to_events_table', 1),
(17, '2022_03_24_204322_create_footers_table', 1),
(18, '2022_03_25_102915_create_permission_tables', 1),
(19, '2022_03_27_074151_create_users_details_table', 1),
(20, '2022_03_27_094236_create_data_murids_table', 1),
(21, '2022_03_28_154339_create_profile_sekolahs_table', 1),
(22, '2022_03_28_161701_create_visimisis_table', 1),
(23, '2022_03_30_084531_create_data_orang_tuas_table', 1),
(24, '2022_03_30_172737_add_value_role_in_users_table', 1),
(25, '2022_03_30_194727_add_value_role_in_users_details_table', 1),
(26, '2022_04_01_190600_add_field_to_data_murids', 1),
(27, '2022_04_01_191038_create_berkas_murids_table', 1),
(28, '2022_05_20_062053_create_authors_table', 1),
(29, '2022_05_20_062103_create_publishers_table', 1),
(30, '2022_05_20_062130_create_categories_table', 1),
(31, '2022_05_20_062140_create_books_table', 1),
(32, '2022_05_20_062219_create_members_table', 1),
(33, '2022_05_20_062236_create_borrowings_table', 1),
(34, '2022_07_16_094123_create_bank_accounts_table', 1),
(35, '2022_07_16_094821_create_payment_spps_table', 1),
(36, '2022_07_16_100447_create_detail_payment_spps_table', 1),
(37, '2022_07_16_145332_add_value_role_bendahara_in_users_table', 1),
(38, '2022_07_16_145418_add_value_role_bendahara_in_users_details_table', 1),
(39, '2022_07_29_072220_add_column_account_name_in_bank_accounts_table', 1),
(40, '2022_07_29_081354_add_column_in_detail_payment_spps_table', 1),
(41, '2022_08_01_080614_create_settings_table', 1),
(42, '2024_02_13_122740_create_table_spp_setting', 1),
(43, '2024_05_20_015046_create_inputsyarat_table', 2),
(44, '2024_05_20_023438_create_persyaratanppdb_table', 3),
(45, '2024_05_20_073909_add_status_siswa_to_persyaratanppdb_table', 4),
(46, '2024_05_24_120249_remove_email_and_foto_profile_from_persyaratanppdb_table', 5),
(47, '2024_05_24_133333_add_fields_to_persyaratanppdb_table', 6),
(48, '2024_08_18_021906_add_foto_diri_to_persyaratanppdb', 7),
(49, '2024_08_18_022616_add_foto_diri_to_persyaratanppdb', 8),
(50, '2024_08_18_065740_add_documents_to_persyaratanppdb_table', 9);

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 3),
(2, 'App\\Models\\User', 4),
(4, 'App\\Models\\User', 2),
(4, 'App\\Models\\User', 6),
(4, 'App\\Models\\User', 8),
(4, 'App\\Models\\User', 9),
(7, 'App\\Models\\User', 5),
(7, 'App\\Models\\User', 7),
(7, 'App\\Models\\User', 10),
(7, 'App\\Models\\User', 11),
(7, 'App\\Models\\User', 12),
(7, 'App\\Models\\User', 13);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `payment_spps`
--

CREATE TABLE `payment_spps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `year` bigint(20) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `January` enum('paid','unpaid','free') NOT NULL DEFAULT 'unpaid',
  `February` enum('paid','unpaid','free') NOT NULL DEFAULT 'unpaid',
  `March` enum('paid','unpaid','free') NOT NULL DEFAULT 'unpaid',
  `April` enum('paid','unpaid','free') NOT NULL DEFAULT 'unpaid',
  `May` enum('paid','unpaid','free') NOT NULL DEFAULT 'unpaid',
  `June` enum('paid','unpaid','free') NOT NULL DEFAULT 'unpaid',
  `July` enum('paid','unpaid','free') NOT NULL DEFAULT 'unpaid',
  `August` enum('paid','unpaid','free') NOT NULL DEFAULT 'unpaid',
  `September` enum('paid','unpaid','free') NOT NULL DEFAULT 'unpaid',
  `October` enum('paid','unpaid','free') NOT NULL DEFAULT 'unpaid',
  `November` enum('paid','unpaid','free') NOT NULL DEFAULT 'unpaid',
  `December` enum('paid','unpaid','free') NOT NULL DEFAULT 'unpaid',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `persyaratanppdb`
--

CREATE TABLE `persyaratanppdb` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status_siswa` varchar(255) DEFAULT NULL,
  `nama_panggilan` varchar(255) DEFAULT NULL,
  `tempat_lahir` varchar(255) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `agama` varchar(255) DEFAULT NULL,
  `anak_ke` int(11) DEFAULT NULL,
  `dari_bersaudara` int(11) DEFAULT NULL,
  `status_anak` varchar(255) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `no_hp` varchar(255) DEFAULT NULL,
  `nama_sekolah` varchar(255) DEFAULT NULL,
  `alamat_sekolah` text DEFAULT NULL,
  `nama_lengkap_ayah` varchar(255) DEFAULT NULL,
  `nama_lengkap_ibu` varchar(255) DEFAULT NULL,
  `alamat_ayah` text DEFAULT NULL,
  `alamat_ibu` text DEFAULT NULL,
  `pekerjaan_ayah` varchar(255) DEFAULT NULL,
  `pekerjaan_ibu` varchar(255) DEFAULT NULL,
  `pendidikan_terakhir_ayah` varchar(255) DEFAULT NULL,
  `pendidikan_terakhir_ibu` varchar(255) DEFAULT NULL,
  `penghasilan_perbulan_ayah` decimal(15,2) DEFAULT NULL,
  `penghasilan_perbulan_ibu` decimal(15,2) DEFAULT NULL,
  `foto_diri` varchar(255) DEFAULT NULL,
  `akta_kelahiran` varchar(255) DEFAULT NULL,
  `kartu_keluarga` varchar(255) DEFAULT NULL,
  `ktp_wali` varchar(255) DEFAULT NULL,
  `ijazah_tk` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `persyaratanppdb`
--

INSERT INTO `persyaratanppdb` (`id`, `nama`, `jenis_kelamin`, `created_at`, `updated_at`, `status_siswa`, `nama_panggilan`, `tempat_lahir`, `tanggal_lahir`, `agama`, `anak_ke`, `dari_bersaudara`, `status_anak`, `alamat`, `no_hp`, `nama_sekolah`, `alamat_sekolah`, `nama_lengkap_ayah`, `nama_lengkap_ibu`, `alamat_ayah`, `alamat_ibu`, `pekerjaan_ayah`, `pekerjaan_ibu`, `pendidikan_terakhir_ayah`, `pendidikan_terakhir_ibu`, `penghasilan_perbulan_ayah`, `penghasilan_perbulan_ibu`, `foto_diri`, `akta_kelahiran`, `kartu_keluarga`, `ktp_wali`, `ijazah_tk`) VALUES
(28, 'test', 'Laki-laki', '2024-08-18 00:11:02', '2024-09-07 23:33:53', 'Diterima', 'test', 'test', '2017-02-18', 'Islam', 1, 1, 'Anak Kandung', 'test', '1234', 'test', 'test', 'test', 'test', 'test', 'testt', 'Pegawai Negeri', 'Ibu Rumah Tangga', 'S1', 'S1', 1234.00, 1234.00, 'foto_diri/1723965062_user.png', 'foto_diri/1723965062_akte.jpg', 'foto_diri/1723965062_kk.jpg', 'foto_diri/1723965062_ktp.png', 'foto_diri/1723965062_ijazahtk.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `profile_sekolahs`
--

CREATE TABLE `profile_sekolahs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `publishers`
--

CREATE TABLE `publishers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2024-05-14 05:58:48', '2024-05-14 05:58:48'),
(2, 'Guru', 'web', '2024-05-14 05:58:48', '2024-05-14 05:58:48'),
(3, 'Staf', 'web', '2024-05-14 05:58:48', '2024-05-14 05:58:48'),
(4, 'Murid', 'web', '2024-05-14 05:58:49', '2024-05-14 05:58:49'),
(5, 'Orang Tua', 'web', '2024-05-14 05:58:49', '2024-05-14 05:58:49'),
(6, 'Alumni', 'web', '2024-05-14 05:58:49', '2024-05-14 05:58:49'),
(7, 'Guest', 'web', '2024-05-14 05:58:49', '2024-05-14 05:58:49'),
(8, 'Perpustakaan', 'web', '2024-05-14 05:58:49', '2024-05-14 05:58:49'),
(9, 'PPDB', 'web', '2024-05-14 05:58:49', '2024-05-14 05:58:49'),
(10, 'Bendahara', 'web', '2024-05-14 05:58:50', '2024-05-14 05:58:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `isEmail` tinyint(1) NOT NULL DEFAULT 0,
  `email` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `settings`
--

INSERT INTO `settings` (`id`, `isEmail`, `email`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 1, '2024-05-14 05:58:50', '2024-05-14 05:58:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `spp_setting`
--

CREATE TABLE `spp_setting` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `amount` int(11) NOT NULL DEFAULT 0,
  `update_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` enum('Admin','Guru','Staf','Murid','Orang Tua','Alumni','Guest','Perpustakaan','PPDB','Bendahara') DEFAULT NULL,
  `status` enum('Aktif','Tidak Aktif') NOT NULL,
  `foto_profile` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `role`, `status`, `foto_profile`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Kepala Sekolah', 'kepsek', 'kepsek@sch.id', 'Admin', 'Aktif', NULL, NULL, '$2y$10$bzGX0b1AxRTTEb5kNO.y2.QhXxHBNdyBrf4OHju4xXMClMy9udYie', NULL, '2024-05-14 05:58:49', '2024-05-14 05:58:49'),
(6, 'test', 'test', 'test@gmail.com', 'Murid', 'Aktif', '1723944556_file_example_JPG_100kB.jpg', NULL, '$2y$10$bzGX0b1AxRTTEb5kNO.y2.QhXxHBNdyBrf4OHju4xXMClMy9udYie', NULL, '2024-08-17 18:29:16', '2024-08-17 18:35:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users_details`
--

CREATE TABLE `users_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role` enum('Admin','Guru','Staf','Murid','Orang Tua','Alumni','Guest','Perpustakaan','PPDB','Bendahara') DEFAULT NULL,
  `mengajar` varchar(255) DEFAULT NULL,
  `nip` bigint(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `linkidln` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users_details`
--

INSERT INTO `users_details` (`id`, `user_id`, `role`, `mengajar`, `nip`, `email`, `linkidln`, `instagram`, `twitter`, `facebook`, `youtube`, `website`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 3, 'Guru', 'Matematika', 12345678, 'lusy_morisa@teknokrat.ac.id', NULL, 'test', 'test', 'test', 'test', 'test', '0', '2024-05-14 06:30:54', '2024-05-14 06:30:54'),
(2, 4, 'Guru', 'Matematika', 87654321, 'lusy1@teknokrat.ac.id', NULL, NULL, NULL, NULL, NULL, NULL, '0', '2024-05-15 22:29:18', '2024-05-15 22:29:18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `videos`
--

CREATE TABLE `videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `desc` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `videos`
--

INSERT INTO `videos` (`id`, `title`, `desc`, `url`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Judul Video Sekolah', 'Deskripsi Video Sekolah', 'https://www.youtube.com/watch?v=QD8ZZErN7EU', '0', '2024-05-15 20:20:46', '2024-05-15 21:31:11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `visimisis`
--

CREATE TABLE `visimisis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `visi` text NOT NULL,
  `misi` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `authors_name_unique` (`name`);

--
-- Indeks untuk tabel `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `bank_accounts`
--
ALTER TABLE `bank_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bank_accounts_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `beritas`
--
ALTER TABLE `beritas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `beritas_title_unique` (`title`);

--
-- Indeks untuk tabel `berkas_murids`
--
ALTER TABLE `berkas_murids`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `books_book_code_unique` (`book_code`);

--
-- Indeks untuk tabel `borrowings`
--
ALTER TABLE `borrowings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `borrowings_borrow_code_unique` (`borrow_code`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Indeks untuk tabel `data_jurusans`
--
ALTER TABLE `data_jurusans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_jurusans_jurusan_id_foreign` (`jurusan_id`);

--
-- Indeks untuk tabel `data_murids`
--
ALTER TABLE `data_murids`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_orang_tuas`
--
ALTER TABLE `data_orang_tuas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `detail_payment_spps`
--
ALTER TABLE `detail_payment_spps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detail_payment_spps_user_id_foreign` (`user_id`),
  ADD KEY `detail_payment_spps_payment_id_foreign` (`payment_id`);

--
-- Indeks untuk tabel `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `events_title_unique` (`title`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `footers`
--
ALTER TABLE `footers`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `image_sliders`
--
ALTER TABLE `image_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jurusans`
--
ALTER TABLE `jurusans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `jurusans_nama_unique` (`nama`),
  ADD UNIQUE KEY `jurusans_slug_unique` (`slug`),
  ADD UNIQUE KEY `jurusans_singkatan_unique` (`singkatan`);

--
-- Indeks untuk tabel `kategori_beritas`
--
ALTER TABLE `kategori_beritas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kategori_beritas_nama_unique` (`nama`);

--
-- Indeks untuk tabel `kegiatans`
--
ALTER TABLE `kegiatans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kegiatans_nama_unique` (`nama`);

--
-- Indeks untuk tabel `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `members_member_code_unique` (`member_code`),
  ADD UNIQUE KEY `members_user_id_unique` (`user_id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `payment_spps`
--
ALTER TABLE `payment_spps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_spps_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `persyaratanppdb`
--
ALTER TABLE `persyaratanppdb`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `profile_sekolahs`
--
ALTER TABLE `profile_sekolahs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `publishers`
--
ALTER TABLE `publishers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `publishers_name_unique` (`name`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indeks untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indeks untuk tabel `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `settings_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `spp_setting`
--
ALTER TABLE `spp_setting`
  ADD PRIMARY KEY (`id`),
  ADD KEY `spp_setting_update_by_foreign` (`update_by`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indeks untuk tabel `users_details`
--
ALTER TABLE `users_details`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `visimisis`
--
ALTER TABLE `visimisis`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `authors`
--
ALTER TABLE `authors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `banks`
--
ALTER TABLE `banks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT untuk tabel `bank_accounts`
--
ALTER TABLE `bank_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `beritas`
--
ALTER TABLE `beritas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `berkas_murids`
--
ALTER TABLE `berkas_murids`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `borrowings`
--
ALTER TABLE `borrowings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `data_jurusans`
--
ALTER TABLE `data_jurusans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `data_murids`
--
ALTER TABLE `data_murids`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `data_orang_tuas`
--
ALTER TABLE `data_orang_tuas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `detail_payment_spps`
--
ALTER TABLE `detail_payment_spps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `footers`
--
ALTER TABLE `footers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `image_sliders`
--
ALTER TABLE `image_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `jurusans`
--
ALTER TABLE `jurusans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kategori_beritas`
--
ALTER TABLE `kategori_beritas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `kegiatans`
--
ALTER TABLE `kegiatans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `members`
--
ALTER TABLE `members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT untuk tabel `payment_spps`
--
ALTER TABLE `payment_spps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `persyaratanppdb`
--
ALTER TABLE `persyaratanppdb`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `profile_sekolahs`
--
ALTER TABLE `profile_sekolahs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `publishers`
--
ALTER TABLE `publishers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `spp_setting`
--
ALTER TABLE `spp_setting`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `users_details`
--
ALTER TABLE `users_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `visimisis`
--
ALTER TABLE `visimisis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `bank_accounts`
--
ALTER TABLE `bank_accounts`
  ADD CONSTRAINT `bank_accounts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `data_jurusans`
--
ALTER TABLE `data_jurusans`
  ADD CONSTRAINT `data_jurusans_jurusan_id_foreign` FOREIGN KEY (`jurusan_id`) REFERENCES `jurusans` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `detail_payment_spps`
--
ALTER TABLE `detail_payment_spps`
  ADD CONSTRAINT `detail_payment_spps_payment_id_foreign` FOREIGN KEY (`payment_id`) REFERENCES `payment_spps` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detail_payment_spps_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `payment_spps`
--
ALTER TABLE `payment_spps`
  ADD CONSTRAINT `payment_spps_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `settings`
--
ALTER TABLE `settings`
  ADD CONSTRAINT `settings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `spp_setting`
--
ALTER TABLE `spp_setting`
  ADD CONSTRAINT `spp_setting_update_by_foreign` FOREIGN KEY (`update_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
