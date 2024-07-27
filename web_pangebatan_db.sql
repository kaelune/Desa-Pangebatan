-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Jul 27, 2024 at 06:41 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web_pangebatan_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `photo`, `token`, `created_at`, `updated_at`) VALUES
(1, 'Desa Pangebatan', 'desapangebatan.brebes@gmail.com', '$2y$10$nBDzNVCzQDfIF0BTDBOPQOeZD8wsAxaZBpcXBmMz21vdOUVjncvOy', 'admin.png', '', NULL, '2024-07-14 17:12:58');

-- --------------------------------------------------------

--
-- Table structure for table `archives`
--

CREATE TABLE `archives` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `month` text NOT NULL,
  `year` text NOT NULL,
  `total_post` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `archives`
--

INSERT INTO `archives` (`id`, `month`, `year`, `total_post`, `created_at`, `updated_at`) VALUES
(1, '07', '2022', 0, NULL, '2024-07-11 00:18:38'),
(2, '08', '2022', 0, NULL, '2024-07-11 00:18:32'),
(3, '09', '2022', 0, NULL, '2024-07-11 00:18:29'),
(4, '10', '2022', 0, NULL, '2024-07-11 00:18:26'),
(5, '07', '2024', 7, '2024-07-11 00:28:10', '2024-07-11 00:41:06');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `photo` text NOT NULL,
  `url` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `photo`, `url`, `created_at`, `updated_at`) VALUES
(1, 'client_1665550385.png', NULL, '2022-10-11 22:18:51', '2022-10-11 22:53:10'),
(2, 'client_1665550398.png', NULL, '2022-10-11 22:18:59', '2022-10-11 22:53:18'),
(3, 'client_1665550405.png', NULL, '2022-10-11 22:19:07', '2022-10-11 22:53:25'),
(4, 'client_1665550412.png', NULL, '2022-10-11 22:19:15', '2022-10-11 22:53:32'),
(5, 'client_1665550418.png', NULL, '2022-10-11 22:19:26', '2022-10-11 22:53:38'),
(6, 'client_1665550426.png', NULL, '2022-10-11 22:19:35', '2022-10-11 22:53:46');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `person_name` text NOT NULL,
  `person_email` text NOT NULL,
  `person_comment` text NOT NULL,
  `person_type` text NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `degree` text NOT NULL,
  `institute` text NOT NULL,
  `time` text NOT NULL,
  `item_order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`id`, `degree`, `institute`, `time`, `item_order`, `created_at`, `updated_at`) VALUES
(1, 'Peningkatan Kualitas Pendidikan', 'Meningkatkan akses dan kualitas pendidikan bagi anak-anak desa', '2015-2019', 1, '2022-10-10 05:23:35', '2024-07-10 21:02:15'),
(2, 'Program Kesehatan Masyarakat', 'Meningkatkan kesehatan dan kesejahteraan warga desa.', '2013-2015', 2, '2022-10-10 05:23:55', '2024-07-10 21:03:26'),
(3, 'Pengembangan Kegiatan Seni dan Budaya', 'Melestarikan dan mengembangkan seni dan budaya lokal.', '2011-2013', 3, '2022-10-10 05:24:11', '2024-07-10 21:03:47');

-- --------------------------------------------------------

--
-- Table structure for table `experiences`
--

CREATE TABLE `experiences` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company` text NOT NULL,
  `designation` text NOT NULL,
  `time` text NOT NULL,
  `item_order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `experiences`
--

INSERT INTO `experiences` (`id`, `company`, `designation`, `time`, `item_order`, `created_at`, `updated_at`) VALUES
(1, 'Pengembangan UMKM', 'Meningkatkan kesejahteraan ekonomi warga melalui pengembangan usaha mikro, kecil, dan menengah.', '2022-Present', 1, '2022-10-10 22:22:49', '2024-07-10 21:04:14'),
(2, 'Pertanian dan Peternakan Berkelanjutan', 'Meningkatkan produktivitas dan keberlanjutan sektor pertanian dan peternakan.', '2021-2022', 2, '2022-10-10 22:23:09', '2024-07-10 21:04:27'),
(3, 'Pariwisata Desa', 'Mengembangkan potensi pariwisata desa untuk meningkatkan perekonomian lokal.', '2019-2021', 3, '2022-10-10 22:23:26', '2024-07-10 21:04:46');

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
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `created_at`, `updated_at`) VALUES
(1, 'Bagaimana cara mengurus KTP baru di Desa Pangebatan?', 'Untuk mengurus KTP baru, warga Desa Pangebatan harus datang ke kantor desa dengan membawa fotokopi Kartu Keluarga (KK) dan surat pengantar dari RT/RW. Setelah itu, lengkapi formulir permohonan KTP yang disediakan di kantor desa. Proses ini biasanya memakan waktu sekitar 7-10 hari kerja.', '2024-07-11 03:26:08', '2024-07-11 05:25:39'),
(2, 'Apakah ada pelayanan kesehatan gratis di desa?', 'Ya, Desa Pangebatan menyediakan pelayanan kesehatan gratis melalui program posyandu yang diadakan setiap bulan. Posyandu melayani pemeriksaan kesehatan ibu dan anak, imunisasi, dan penyuluhan kesehatan. Untuk informasi lebih lanjut, silakan menghubungi petugas kesehatan desa.', '2024-07-11 03:26:28', '2024-07-11 05:26:04'),
(3, 'Bagaimana cara mendapatkan surat keterangan domisili?', 'Untuk mendapatkan surat keterangan domisili, Anda perlu membawa fotokopi KTP dan KK ke kantor desa. Isi formulir permohonan yang disediakan, kemudian surat akan diproses dan bisa diambil setelah 1-2 hari kerja.', '2024-07-11 03:26:37', '2024-07-11 05:26:50'),
(5, 'Apa saja syarat untuk mendapatkan bantuan sosial desa?', 'Syarat untuk mendapatkan bantuan sosial desa meliputi KTP dan KK yang masih berlaku, serta surat keterangan tidak mampu dari RT/RW setempat. Dokumen tersebut harus dibawa ke kantor desa untuk diverifikasi oleh petugas terkait.', '2024-07-11 05:27:08', '2024-07-11 05:27:08'),
(6, 'Bagaimana cara mengajukan proposal kegiatan masyarakat?', 'Proposal kegiatan masyarakat bisa diajukan dengan menyertakan rincian kegiatan, anggaran yang dibutuhkan, dan tanda tangan persetujuan dari RT/RW. Proposal harus diajukan ke kantor desa untuk ditinjau dan disetujui oleh Kepala Desa dan Badan Permusyawaratan Desa (BPD).', '2024-07-11 05:27:28', '2024-07-11 05:27:28'),
(7, 'Apakah desa memiliki program pinjaman modal usaha?', 'Ya, Desa Pangebatan memiliki program pinjaman modal usaha bagi warga yang ingin mengembangkan UMKM. Program ini dilakukan bekerja sama dengan koperasi desa. Untuk informasi lebih lanjut dan cara mengajukan pinjaman, silakan menghubungi kantor desa atau koperasi desa.', '2024-07-11 05:27:45', '2024-07-11 05:27:45'),
(8, 'Bagaimana cara mendapatkan layanan air bersih di desa?', 'Untuk mendapatkan layanan air bersih, warga harus mendaftar di kantor desa dengan membawa fotokopi KTP dan KK. Setelah itu, petugas desa akan melakukan survei lokasi untuk pemasangan jaringan air bersih. Proses ini biasanya memakan waktu sekitar 1-2 minggu.', '2024-07-11 05:28:04', '2024-07-11 05:28:04'),
(9, 'Bagaimana cara mendaftar sebagai peserta program pendidikan dan pelatihan desa?', 'Untuk mendaftar sebagai peserta program pendidikan dan pelatihan desa, warga perlu mengisi formulir pendaftaran yang tersedia di kantor desa atau melalui website desa. Pastikan Anda membawa fotokopi KTP dan dokumen pendukung lainnya sesuai dengan jenis pelatihan yang diikuti.', '2024-07-11 05:28:24', '2024-07-11 05:28:24'),
(10, 'Apa saja pelayanan administrasi yang bisa dilakukan secara online?', 'Beberapa pelayanan administrasi yang bisa dilakukan secara online melalui website desa meliputi pengajuan surat keterangan domisili, surat keterangan usaha, serta permohonan informasi publik. Warga dapat mengisi formulir online dan mengunggah dokumen yang dibutuhkan. Proses selanjutnya akan diinformasikan melalui email atau telepon.', '2024-07-11 05:28:43', '2024-07-11 05:28:43'),
(11, 'Bagaimana cara mengajukan keluhan atau saran terkait pelayanan desa?', 'Warga dapat mengajukan keluhan atau saran terkait pelayanan desa melalui fitur pengaduan online yang tersedia di website desa. Isi formulir pengaduan dengan lengkap, termasuk deskripsi masalah dan kontak yang bisa dihubungi. Pengaduan akan ditindaklanjuti oleh petugas desa dan hasilnya akan diberitahukan kepada pengadu.', '2024-07-11 05:29:03', '2024-07-11 05:29:03');

-- --------------------------------------------------------

--
-- Table structure for table `home_banner_images`
--

CREATE TABLE `home_banner_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_banner_images`
--

INSERT INTO `home_banner_images` (`id`, `image`, `created_at`, `updated_at`) VALUES
(3, 'banner_image_1721050551.jpg', '2024-07-10 08:57:03', '2024-07-15 06:35:51'),
(4, 'banner_image_1721050561.jpg', '2024-07-10 08:57:20', '2024-07-15 06:36:02'),
(5, 'banner_image_1721050582.jpg', '2024-07-10 09:21:25', '2024-07-15 06:36:22'),
(6, 'banner_image_1721050594.jpg', '2024-07-11 20:48:45', '2024-07-15 06:36:35'),
(7, 'banner_image_1721050621.jpg', '2024-07-15 06:37:01', '2024-07-15 06:37:01'),
(8, 'banner_image_1721050636.jpg', '2024-07-15 06:37:16', '2024-07-15 06:37:16'),
(9, 'banner_image_1721056864.jpg', '2024-07-15 08:21:04', '2024-07-15 08:21:04'),
(10, 'banner_image_1721056872.jpg', '2024-07-15 08:21:12', '2024-07-15 08:21:12');

-- --------------------------------------------------------

--
-- Table structure for table `home_page_items`
--

CREATE TABLE `home_page_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `banner_title` text DEFAULT NULL,
  `banner_name` text NOT NULL,
  `banner_designation` text DEFAULT NULL,
  `banner_description` text DEFAULT NULL,
  `banner_button_text` text DEFAULT NULL,
  `banner_button_url` text DEFAULT NULL,
  `banner_photo` text NOT NULL,
  `about_subtitle` text DEFAULT NULL,
  `about_title` text NOT NULL,
  `about_description` text DEFAULT NULL,
  `about_person_name` text DEFAULT NULL,
  `about_person_phone` text DEFAULT NULL,
  `about_person_email` text DEFAULT NULL,
  `about_icon1` text DEFAULT NULL,
  `about_icon1_url` text DEFAULT NULL,
  `about_icon2` text DEFAULT NULL,
  `about_icon2_url` text DEFAULT NULL,
  `about_icon3` text DEFAULT NULL,
  `about_icon3_url` text DEFAULT NULL,
  `about_icon4` text DEFAULT NULL,
  `about_icon4_url` text DEFAULT NULL,
  `about_icon5` text DEFAULT NULL,
  `about_icon5_url` text DEFAULT NULL,
  `about_photo` text NOT NULL,
  `about_status` text NOT NULL,
  `skill_subtitle` text DEFAULT NULL,
  `skill_title` text DEFAULT NULL,
  `skill_status` text NOT NULL,
  `qualification_subtitle` text DEFAULT NULL,
  `qualification_title` text DEFAULT NULL,
  `qualification_status` text NOT NULL,
  `education_title` text DEFAULT NULL,
  `experience_title` text DEFAULT NULL,
  `counter1_number` text NOT NULL,
  `counter1_name` text NOT NULL,
  `counter2_number` text NOT NULL,
  `counter2_name` text NOT NULL,
  `counter3_number` text NOT NULL,
  `counter3_name` text NOT NULL,
  `counter4_number` text NOT NULL,
  `counter4_name` text NOT NULL,
  `counter_background` text NOT NULL,
  `counter_status` text NOT NULL,
  `testimonial_subtitle` text DEFAULT NULL,
  `testimonial_title` text DEFAULT NULL,
  `testimonial_background` text NOT NULL,
  `testimonial_status` text NOT NULL,
  `client_subtitle` text DEFAULT NULL,
  `client_title` text DEFAULT NULL,
  `client_status` text NOT NULL,
  `service_subtitle` text DEFAULT NULL,
  `service_title` text DEFAULT NULL,
  `service_total` int(11) NOT NULL,
  `service_status` text NOT NULL,
  `portfolio_subtitle` text DEFAULT NULL,
  `portfolio_title` text DEFAULT NULL,
  `portfolio_status` text NOT NULL,
  `blog_subtitle` text DEFAULT NULL,
  `blog_title` text DEFAULT NULL,
  `blog_status` text NOT NULL,
  `seo_title` text DEFAULT NULL,
  `seo_meta_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_page_items`
--

INSERT INTO `home_page_items` (`id`, `banner_title`, `banner_name`, `banner_designation`, `banner_description`, `banner_button_text`, `banner_button_url`, `banner_photo`, `about_subtitle`, `about_title`, `about_description`, `about_person_name`, `about_person_phone`, `about_person_email`, `about_icon1`, `about_icon1_url`, `about_icon2`, `about_icon2_url`, `about_icon3`, `about_icon3_url`, `about_icon4`, `about_icon4_url`, `about_icon5`, `about_icon5_url`, `about_photo`, `about_status`, `skill_subtitle`, `skill_title`, `skill_status`, `qualification_subtitle`, `qualification_title`, `qualification_status`, `education_title`, `experience_title`, `counter1_number`, `counter1_name`, `counter2_number`, `counter2_name`, `counter3_number`, `counter3_name`, `counter4_number`, `counter4_name`, `counter_background`, `counter_status`, `testimonial_subtitle`, `testimonial_title`, `testimonial_background`, `testimonial_status`, `client_subtitle`, `client_title`, `client_status`, `service_subtitle`, `service_title`, `service_total`, `service_status`, `portfolio_subtitle`, `portfolio_title`, `portfolio_status`, `blog_subtitle`, `blog_title`, `blog_status`, `seo_title`, `seo_meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Selamat Datang', 'Pangebatan', 'Brebes', 'Bersama Membangun Desa, Menjaga Tradisi, Menggapai Kemajuan  dan Berkelanjutan untuk Generasi Masa Depan', 'Kunjungi Galeri', 'https://pilar.hadifamily.com', 'home_banner.png', 'Sambutan', 'Kepala Desa Pangebatan', 'Assalamu’alaikum warahmatullahi wabarakatuh,\r\nSalam sejahtera untuk kita semua.\r\n\r\nSelamat datang di website resmi Desa Pangebatan. Saya merasa bangga dan terhormat dapat memperkenalkan desa kami kepada Anda. Website ini kami hadirkan sebagai sarana informasi dan komunikasi untuk seluruh warga serta pihak-pihak yang ingin mengenal lebih dekat Desa Pangebatan.\r\n\r\nDengan semangat gotong royong dan kerja sama, kami berkomitmen untuk terus membangun desa yang lebih maju, sejahtera, dan berkelanjutan. Kami berharap, melalui website ini, Anda dapat menemukan informasi yang bermanfaat mengenai program dan kegiatan desa, potensi lokal, serta layanan publik yang kami sediakan.\r\n\r\nMari bersama-sama kita wujudkan Desa Pangebatan yang lebih baik. Terima kasih atas kunjungannya.\r\n\r\nWassalamu’alaikum warahmatullahi wabarakatuh.', 'Lukman Hakim', '-', 'desapangebatan.brebes@gmail.com', 'fab fa-instagram', 'https://instagram.com/desapangebatan.brebes', NULL, '#', NULL, '#', NULL, '#', NULL, NULL, 'home_about.jpg', 'Show', 'info Desa', 'PENCAPAIAN DESA', 'Show', 'Program Desa', 'Program Inovasi Desa', 'Show', 'Social', 'Ekonomi', '999', 'Total Penduduk', '98', 'Kepala Keluarga', '901', 'Perempuan', '123', 'Laki-laki', 'counter_background.jpg', 'Show', 'Testimoni Warga Desa', 'Apa Yang Warga Desa Katakan', 'testimonial_background.jpg', 'Show', 'Prestasi Desa', 'Penghargaan Yang Telah Kami Raih', 'Hide', 'Pelayanan Desa', 'Kami Siap Membantu Anda', 6, 'Show', 'Kegiatan Desa', 'Realisasi Program Kerja Desa', 'Show', 'Berita Desa Terbaru', 'Kumpulan Informasi Tentang Desa', 'Show', 'Home', 'Home', NULL, '2024-07-15 06:54:15');

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_02_18_035205_create_admins_table', 1),
(7, '2022_10_08_040311_create_home_page_items_table', 2),
(8, '2022_10_09_111716_create_skills_table', 3),
(10, '2022_10_10_111847_create_education_table', 4),
(11, '2022_10_11_041432_create_experiences_table', 5),
(12, '2022_10_11_080841_create_testimonials_table', 6),
(13, '2022_10_12_041106_create_clients_table', 7),
(14, '2022_10_12_082021_create_services_table', 8),
(15, '2022_10_15_031920_create_page_items_table', 9),
(16, '2022_10_15_100235_create_portfolio_categories_table', 10),
(17, '2022_10_15_115527_create_portfolios_table', 11),
(18, '2022_10_16_093404_create_portfolio_photos_table', 12),
(19, '2022_10_17_045513_create_portfolio_videos_table', 13),
(20, '2022_10_19_032156_create_post_categories_table', 14),
(21, '2022_10_19_190419_create_posts_table', 15),
(22, '2022_10_20_063438_create_archives_table', 16),
(23, '2022_10_22_034319_create_comments_table', 17),
(24, '2022_10_22_034610_create_replies_table', 18),
(25, '2022_10_22_104040_create_settings_table', 19),
(26, '2024_07_10_144040_create_home_banner_images_table', 20),
(27, '2024_07_11_094750_create_faqs_table', 21),
(28, '2024_07_11_141321_create_profiles_table', 22),
(29, '2024_07_12_063704_create_receive_messages_table', 23),
(30, '2024_07_15_161227_create_photos_table', 24),
(31, '2024_07_15_161248_create_videos_table', 24);

-- --------------------------------------------------------

--
-- Table structure for table `page_items`
--

CREATE TABLE `page_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `services_heading` text NOT NULL,
  `services_banner` text NOT NULL,
  `services_seo_title` text DEFAULT NULL,
  `services_seo_meta_description` text DEFAULT NULL,
  `portfolios_heading` text NOT NULL,
  `portfolios_banner` text NOT NULL,
  `portfolios_seo_title` text DEFAULT NULL,
  `portfolios_seo_meta_description` text DEFAULT NULL,
  `about_heading` text NOT NULL,
  `about_banner` text NOT NULL,
  `about_photo` text DEFAULT NULL,
  `about_description` text NOT NULL,
  `about_history` text DEFAULT NULL,
  `about_vision` text DEFAULT NULL,
  `about_mission` text DEFAULT NULL,
  `about_seo_title` text DEFAULT NULL,
  `about_seo_meta_description` text DEFAULT NULL,
  `contact_heading` text NOT NULL,
  `contact_banner` text NOT NULL,
  `contact_address` text NOT NULL,
  `contact_email` text NOT NULL,
  `contact_phone` text NOT NULL,
  `contact_map_iframe` text NOT NULL,
  `contact_seo_title` text DEFAULT NULL,
  `contact_seo_meta_description` text DEFAULT NULL,
  `faq_heading` text NOT NULL,
  `faq_banner` text NOT NULL,
  `faq_seo_title` text DEFAULT NULL,
  `faq_seo_meta_description` text DEFAULT NULL,
  `blog_heading` text NOT NULL,
  `blog_banner` text NOT NULL,
  `blog_seo_title` text DEFAULT NULL,
  `blog_seo_meta_description` text DEFAULT NULL,
  `category_banner` text NOT NULL,
  `archive_banner` text NOT NULL,
  `archive_seo_title` text DEFAULT NULL,
  `archive_seo_meta_description` text DEFAULT NULL,
  `search_banner` text NOT NULL,
  `search_seo_title` text DEFAULT NULL,
  `search_seo_meta_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_items`
--

INSERT INTO `page_items` (`id`, `services_heading`, `services_banner`, `services_seo_title`, `services_seo_meta_description`, `portfolios_heading`, `portfolios_banner`, `portfolios_seo_title`, `portfolios_seo_meta_description`, `about_heading`, `about_banner`, `about_photo`, `about_description`, `about_history`, `about_vision`, `about_mission`, `about_seo_title`, `about_seo_meta_description`, `contact_heading`, `contact_banner`, `contact_address`, `contact_email`, `contact_phone`, `contact_map_iframe`, `contact_seo_title`, `contact_seo_meta_description`, `faq_heading`, `faq_banner`, `faq_seo_title`, `faq_seo_meta_description`, `blog_heading`, `blog_banner`, `blog_seo_title`, `blog_seo_meta_description`, `category_banner`, `archive_banner`, `archive_seo_title`, `archive_seo_meta_description`, `search_banner`, `search_seo_title`, `search_seo_meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Pelayanan', 'banner_services_1721057128.jpg', 'Pelayanan', 'Pelayanan', 'Kegiatan Desa', 'banner_portfolios_1721057120.jpg', 'Kegiatan Desa', 'Kegiatan Desa', 'Tentang Kami', 'banner_about_1721056929.jpg', 'photo_about_1721056929.jpg', '<p>LOKASI DESA</p><p>Desa Pangebatan adalah sebuah desa yang terletak di Kecamatan Bantarkwung, Kabupaten Brebes, Provinsi Jawa Tengah. Desa ini dikelilingi oleh pemandangan alam yang indah, dengan hamparan sawah hijau, sungai yang mengalir jernih, dan perbukitan yang menyegarkan mata. Bahasa yg digunakan oleh masyarakat Desa Pangebatan juga terbilang unik karena hanya sebagian kecil saja yang berbahasa Jawa adapun selebihnya mnggunakan bahasa Sunda. Jumlah penduduk desa ini adalah yang terpadat di Kecamatan Bantarkawung. Sepanjang batas timur desa ini merupakan aliran Sungai Pemali. Desa Pangebatan dilintasi jalan penghubung Salem-Bumiayu.</p><p>&nbsp;</p><p>PARIWISATA DESA</p><p>Desa Pangebatan memiliki berbagai potensi alam yang dapat dikembangkan sebagai objek wisata. Keindahan alam desa ini menawarkan peluang besar untuk pariwisata berbasis alam dan ekowisata. Tempat wisata yang terkenal di daerah ini adalah Cipanas dan Demangsakti. Cipanas merupakan destinasi wisata air panas yang sering dikunjungi oleh masyarakat. Wisata ini memiliki kolam renang dari air panas belerang, spot foto berupa taman, terdapat tiga tipe kamar mandi yaitu kamar mandi VIP(bagi yang ingin berendam), kamar mandi bilas, dan kamar mandi umum. Selain itu, terdapat Demangsakti dimana merupakan taman dengan lahan yang cukup luas, terdapat parkiran, lapangan voli di samping taman, serta memiliki suasana yang sejuk.</p><p>&nbsp;</p><p>EKONOMI DESA</p><p>Perekonomian Desa Pangebatan didominasi oleh sektor pertanian. Mayoritas warga desa bekerja sebagai petani yang menanam padi. Hal ini dilihat dari hamparan sawah yang luas ketika memasuki Desa Pangebatan, sepanjang jalan kiri dan kanan. &nbsp;Selain itu, terdapat pasar desa dan beberapa UMKM seperti produksi batu bata yang termasuk dalam meningkatkan kesejahteraan warga, olahan makanan seperti kripik, jajanan pasar, dan lainnya yang ikut mendorong ekonomi pemerintah desa.</p><p>&nbsp;</p><p>INFRASTRUKTUR DESA</p><p>Desa Pangebatan memiliki fasilitas pendidikan yang cukup memadai dengan adanya sekolah dasar, menengah pertama, dan menengah atas. Terdapat 7 SD Negeri, 1 MI, 2 SMPN, SMP BU, Muh, 2 MTS, SMANSA Bantarkawung, SMK Ma\'arif NU 2 Bantarkawung, SMK Muh, SMA Islam As-salam. Untuk mendukung peningkatan kualitas pendidikan, pemerintah desa bekerja sama dengan berbagai pihak untuk menyediakan sarana dan prasarana yang lebih baik, termasuk program digitalisasi pembelajaran. Program ini mencakup pengadaan perangkat komputer dan akses internet di sekolah-sekolah.</p><p>Di bidang kesehatan, Desa Pangebatan memiliki posyandu yang rutin memberikan layanan kesehatan kepada ibu dan anak, termasuk imunisasi dan penyuluhan kesehatan. Selain itu, terdapat juga puskesmas yang memberikan pelayanan kesehatan dasar kepada seluruh warga desa. Pemerintah desa aktif dalam mengkampanyekan pola hidup sehat dan menjaga lingkungan agar tetap bersih dan sehat.</p><p>Pembangunan infrastruktur menjadi salah satu prioritas utama Desa Pangebatan. Jalan-jalan desa telah diperbaiki dan diperluas untuk memudahkan akses transportasi dan mendukung perekonomian lokal. Pemerintah desa juga menyediakan layanan air bersih yang telah mencapai seluruh rumah tangga, serta layanan listrik yang stabil.</p><p>Desa Pangebatan memiliki kantor desa yang berfungsi sebagai pusat pelayanan publik. Berbagai layanan administrasi seperti pembuatan KTP, KK, surat keterangan domisili, dan izin usaha dapat dilakukan dengan mudah di kantor desa. Pemerintah desa berkomitmen untuk memberikan pelayanan yang cepat, transparan, dan ramah kepada seluruh warganya.</p><p>Dengan segala potensi yang dimilikinya, Desa Pangebatan terus berupaya untuk menjadi desa yang mandiri, sejahtera, dan berdaya saing. Pemerintah desa bersama seluruh warga bekerja keras untuk mencapai visi dan misi pembangunan yang berkelanjutan demi masa depan yang lebih baik.<br>&nbsp;</p>', 'Desa Pangebatan terletak di wilayah Kecamatan Bantarkawung, Kabupaten Brebes, Provinsi Jawa Tengah. Sejarah Desa Pangebatan bermula dari kisah seorang pemimpin lokal bernama Ki Suryono yang bermigrasi bersama keluarganya pada tahun 1920. Mereka menemukan sebuah kawasan yang subur dengan potensi alam yang melimpah. Ki Suryono, yang dikenal sebagai tokoh bijaksana dan penuh semangat gotong royong, memutuskan untuk mendirikan sebuah pemukiman yang nantinya dikenal sebagai Desa Pangebatan.\r\n\r\nNama Pangebatan berasal dari kata \"pangebat\" yang dalam bahasa setempat berarti \"tempat yang aman dan damai\". Ki Suryono memilih nama ini untuk mencerminkan harapannya agar desa ini menjadi tempat yang sejahtera dan harmonis bagi semua warganya. Pada awal berdirinya, penduduk desa ini sebagian besar terdiri dari petani dan nelayan yang memanfaatkan kekayaan alam sekitar untuk memenuhi kebutuhan hidup mereka.\r\n\r\nSeiring berjalannya waktu, Desa Pangebatan mengalami perkembangan yang signifikan. Infrastruktur dasar seperti jalan, jembatan, dan fasilitas umum mulai dibangun dengan gotong royong warga. Pada tahun 1950, Desa Pangebatan secara resmi diakui oleh pemerintah kolonial Belanda dan dimasukkan ke dalam administrasi resmi.\r\n\r\nPada era kemerdekaan, Desa Pangebatan terus berkembang dengan berbagai program pembangunan yang difasilitasi oleh pemerintah pusat dan daerah. Berkat sumber daya alam yang melimpah dan kerja keras masyarakatnya, Desa Pangebatan berhasil menjadi salah satu desa dengan tingkat kesejahteraan yang baik di wilayahnya. Berbagai program pembangunan seperti irigasi, pendidikan, dan kesehatan telah berhasil meningkatkan kualitas hidup masyarakat desa.\r\n\r\nKini, Desa Pangebatan dikenal sebagai desa yang maju dengan penduduk yang beragam profesinya, mulai dari petani, peternak, hingga pengrajin. Desa ini juga memiliki potensi wisata alam yang menarik, seperti air terjun dan hutan lindung, yang mulai dikembangkan sebagai destinasi wisata. Warisan budaya dan tradisi yang kuat, seperti upacara adat dan kesenian lokal, tetap dijaga dan dilestarikan oleh masyarakat desa.', '\"Memajukan dan Meningkatkan Kesejahteraan Masyarakat\"', 'Memaksimalkan anggaran dana desa dan meningkatkan swadaya masyarakat.', 'Tentang Kami', 'Tentang Kami', 'Kontak', 'banner_contact_1721057072.jpg', 'Desa Pangebatan Kecamatan Bantarkawung\r\nPemerintah Kabupaten Brebes', 'desapangebatan@gmail.com\r\ninfo.pangebatan@gmail.com', '+21-222-2222-2222\r\n+21-222-2222-4444', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d31663.578497399223!2d108.91195231366088!3d-7.246837011506121!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e6f8458cb809c63%3A0x5027a76e3566c20!2sPangebatan%2C%20Kec.%20Bantarkawung%2C%20Kabupaten%20Brebes%2C%20Jawa%20Tengah!5e0!3m2!1sid!2sid!4v1720684243348!5m2!1sid!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Kontak', 'Kontak', 'FAQS', 'banner_blog_1666212050.jpg', NULL, NULL, 'Berita Desa', 'banner_blog_1721057064.jpg', 'Berita Desa', 'Berita Desa', 'banner_category_1721057044.jpg', 'banner_archive_1721057014.jpg', 'Arsip', 'Arsip', 'banner_search_1666218337.jpg', 'Search', 'Search', NULL, '2024-07-15 08:25:28');

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `photo` text NOT NULL,
  `caption` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `photo`, `caption`, `created_at`, `updated_at`) VALUES
(1, '1721060055.jpg', NULL, '2024-07-15 09:14:15', '2024-07-15 09:14:15');

-- --------------------------------------------------------

--
-- Table structure for table `portfolios`
--

CREATE TABLE `portfolios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `portfolio_category_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `slug` text NOT NULL,
  `description` text NOT NULL,
  `photo` text NOT NULL,
  `banner` text NOT NULL,
  `project_client` text DEFAULT NULL,
  `project_company` text DEFAULT NULL,
  `project_start_date` text DEFAULT NULL,
  `project_end_date` text DEFAULT NULL,
  `project_cost` text DEFAULT NULL,
  `project_website` text DEFAULT NULL,
  `seo_title` text DEFAULT NULL,
  `seo_meta_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolios`
--

INSERT INTO `portfolios` (`id`, `portfolio_category_id`, `name`, `slug`, `description`, `photo`, `banner`, `project_client`, `project_company`, `project_start_date`, `project_end_date`, `project_cost`, `project_website`, `seo_title`, `seo_meta_description`, `created_at`, `updated_at`) VALUES
(15, 1, 'Pembangunan dan Perbaikan Jalan Desa', 'pembangunan-jalan', '<p>Pembangunan dan perbaikan jalan desa bertujuan untuk meningkatkan aksesibilitas dan konektivitas antarwilayah dalam desa, sehingga memudahkan mobilitas warga dan transportasi hasil pertanian serta produk lokal. Jalan yang baik akan mendukung perekonomian desa dengan mempermudah akses ke pasar, sekolah, dan fasilitas kesehatan.</p><p><strong>Timeline:</strong></p><ul><li>Januari - Maret: Perencanaan dan survei lapangan</li><li>April - Juni: Pelaksanaan pembangunan dan perbaikan jalan</li><li>Juli: Inspeksi dan penyelesaian akhir</li></ul><p><strong>Penyelenggara:</strong></p><ul><li>Pemerintah Desa bekerja sama dengan Dinas Pekerjaan Umum dan Penataan Ruang Kabupaten</li></ul><p><strong>Biaya:</strong></p><ul><li>Total: Rp 500.000.000<ul><li>Sumber: Anggaran Pendapatan dan Belanja Desa (APBDes) dan bantuan pemerintah daerah</li></ul></li></ul>', 'portfolio_photo_1720676819.jpg', 'portfolio_banner_1720676819.jpg', 'Kepala Desa', 'Kantor Desa dan Pemerintah Kota', 'Januari 2023', 'Juli 2023', 'Rp 500.000.000', NULL, 'Pembangunan Desa', 'Pembangunan Desa', '2024-07-10 22:46:59', '2024-07-10 23:03:00'),
(16, 1, 'Penyediaan Air Bersih', 'air-bersih', '<p>Penyediaan air bersih bertujuan untuk memastikan seluruh warga desa memiliki akses terhadap air bersih yang layak. Program ini melibatkan pembangunan sumur bor, instalasi jaringan pipa, dan penyuluhan tentang pengelolaan air bersih untuk menjaga kesehatan dan mencegah penyakit yang disebabkan oleh air yang tercemar.</p><p><strong>Timeline:</strong></p><ul><li>Februari: Perencanaan dan studi kelayakan</li><li>Maret - Mei: Pembangunan sumur bor dan jaringan pipa</li><li>Juni: Uji coba dan penyuluhan kepada warga</li></ul><p><strong>Penyelenggara:</strong></p><ul><li>Pemerintah Desa bekerja sama dengan Dinas Kesehatan dan Dinas Pekerjaan Umum</li></ul><p><strong>Biaya:</strong></p><ul><li>Total: Rp 300.000.000<ul><li>Sumber: APBDes dan bantuan dari program pemerintah pusat</li></ul></li></ul>', 'portfolio_photo_1720677740.jpg', 'portfolio_banner_1720676996.jpg', 'Kepala Desa', 'Kantor Desa dan Pemerintah Kota', 'Februari 2024', 'Juni 2024', 'Rp 300.000.000', NULL, 'Air Bersih', 'Air Bersih', '2024-07-10 22:49:56', '2024-07-10 23:03:17'),
(17, 2, 'Peningkatan Kualitas Pendidikan', 'kualitas-pendidikan', '<p>Peningkatan kualitas pendidikan bertujuan untuk memberikan akses pendidikan yang lebih baik bagi anak-anak desa. Program ini mencakup pembangunan dan perbaikan fasilitas pendidikan, penyediaan perpustakaan desa, pelatihan guru, dan program beasiswa bagi siswa berprestasi dan kurang mampu.</p><p><strong>Timeline:</strong></p><ul><li>Januari - Maret: Identifikasi kebutuhan dan perencanaan</li><li>April - Juni: Pelaksanaan pembangunan dan perbaikan fasilitas</li><li>Juli - Desember: Pelatihan guru dan pemberian beasiswa</li></ul><p><strong>Penyelenggara:</strong></p><ul><li>Pemerintah Desa bekerja sama dengan Dinas Pendidikan dan NGO pendidikan</li></ul><p><strong>Biaya:</strong></p><ul><li>Total: Rp 400.000.000<ul><li>Sumber: APBDes, bantuan pemerintah daerah, dan sumbangan swasta</li></ul></li></ul>', 'portfolio_photo_1720677723.jpg', 'portfolio_banner_1720677200.jpg', 'Kepala Desa', 'Pemerintah Desa dan Dinas Pendidikan', 'Januari 2024', 'Juni 2024', 'Rp 400.000.000', NULL, 'Kualitas Pendidikan', 'Kualitas Pendidikan', '2024-07-10 22:53:20', '2024-07-10 23:03:25'),
(18, 2, 'Program Kesehatan Masyarakat', 'kesehatan-masyarakat', '<p>Program kesehatan masyarakat bertujuan untuk meningkatkan kesehatan warga desa melalui berbagai kegiatan seperti pelayanan posyandu, imunisasi, penyuluhan kesehatan, dan program kesehatan ibu dan anak. Program ini fokus pada pencegahan penyakit dan peningkatan kesehatan ibu dan anak.</p><p><strong>Timeline:</strong></p><ul><li>Setiap bulan: Pelayanan posyandu dan imunisasi</li><li>Setiap triwulan: Penyuluhan kesehatan</li><li>Sepanjang tahun: Program kesehatan ibu dan anak</li></ul><p><strong>Penyelenggara:</strong></p><ul><li>Pemerintah Desa bekerja sama dengan Puskesmas dan Dinas Kesehatan</li></ul><p><strong>Biaya:</strong></p><ul><li>Total: Rp 200.000.000 per tahun<ul><li>Sumber: APBDes dan bantuan dari program kesehatan pemerintah pusat</li></ul></li></ul>', 'portfolio_photo_1720677683.jpg', 'portfolio_banner_1720677378.jpg', 'Kepala Puskesmas', 'Puskesmas dan Dinas Kesehatan', 'Agust 2023', 'Juni 2024', 'Rp 200.000.000', NULL, 'Kesehatan Masyarakat', 'Kesehatan Masyarakat', '2024-07-10 22:56:18', '2024-07-10 23:03:33'),
(19, 3, 'Pengembangan UMKM', 'pengembangan-umkm', '<p>Pengembangan UMKM bertujuan untuk meningkatkan kesejahteraan ekonomi warga desa melalui pengembangan usaha mikro, kecil, dan menengah. Program ini meliputi pelatihan keterampilan, akses permodalan, dan pemasaran produk lokal. Dengan UMKM yang berkembang, diharapkan perekonomian desa akan lebih stabil dan berdaya saing.</p><p><strong>Timeline:</strong></p><ul><li>Januari - Februari: Identifikasi kebutuhan dan perencanaan</li><li>Maret - Mei: Pelatihan keterampilan dan manajemen usaha</li><li>Juni - Desember: Pendampingan dan akses permodalan</li></ul><p><strong>Penyelenggara:</strong></p><ul><li>Pemerintah Desa bekerja sama dengan Dinas Koperasi dan UKM serta lembaga keuangan</li></ul><p><strong>Biaya:</strong></p><ul><li>Total: Rp 300.000.000<ul><li>Sumber: APBDes, bantuan pemerintah, dan kemitraan dengan lembaga keuangan</li></ul></li></ul>', 'portfolio_photo_1720677520.jpg', 'portfolio_banner_1720677520.jpg', 'Kepala Desa', 'Dinas Koperasi dan UKM serta lembaga keuangan', 'Januari 2024', 'Juni 2024', 'Rp 300.000.000', NULL, 'Pengembangan UMKM', 'Pengembangan UMKM', '2024-07-10 22:58:40', '2024-07-10 23:03:41'),
(20, 3, 'Pariwisata Desa', 'pariwisata-desa', '<p>Pariwisata desa bertujuan untuk mengembangkan potensi pariwisata lokal sebagai sumber pendapatan alternatif dan meningkatkan perekonomian desa. Program ini meliputi promosi destinasi wisata desa, pengembangan homestay, dan pelatihan pemandu wisata. Dengan pengembangan pariwisata yang baik, diharapkan desa dapat menarik wisatawan dari luar dan memperkenalkan budaya lokal kepada pengunjung.</p><p><strong>Timeline:</strong></p><ul><li>Januari - Februari: Studi kelayakan dan perencanaan</li><li>Maret - Juni: Pengembangan infrastruktur pariwisata seperti homestay dan jalur hiking</li><li>Juli - Desember: Pelatihan pemandu wisata dan promosi pariwisata</li></ul><p><strong>Penyelenggara:</strong></p><ul><li>Pemerintah Desa bekerja sama dengan komunitas pariwisata lokal dan Dinas Pariwisata</li></ul><p><strong>Biaya:</strong></p><ul><li>Total: Rp 400.000.000<ul><li>Sumber: APBDes, dana CSR dari perusahaan lokal, dan bantuan dari pemerintah provinsi</li></ul></li></ul><p>Setiap kegiatan di atas didesain untuk mendukung pembangunan holistik desa, mempertimbangkan aspek infrastruktur, sosial, dan ekonomi untuk meningkatkan kualitas hidup warga. Penyelenggaraan kegiatan dilakukan secara terencana dengan melibatkan berbagai pihak terkait, baik pemerintah desa, instansi terkait, komunitas lokal, dan sektor swasta untuk memastikan keberlanjutan dan efektivitas implementasi program-program pembangunan desa.</p>', 'portfolio_photo_1720677640.jpg', 'portfolio_banner_1720677640.jpg', 'Kepala Desa', 'komunitas pariwisata lokal dan Dinas Pariwisata', 'Januari 2023', 'Juni 2024', 'Rp 400.000.000', NULL, 'Pariwisata Desa', 'Pariwisata Desa', '2024-07-10 23:00:40', '2024-07-10 23:05:36');

-- --------------------------------------------------------

--
-- Table structure for table `portfolio_categories`
--

CREATE TABLE `portfolio_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolio_categories`
--

INSERT INTO `portfolio_categories` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
(1, 'Infrastruktur', '2022-10-15 04:15:02', '2024-07-10 22:40:17'),
(2, 'Sosial', '2022-10-15 04:15:16', '2024-07-10 22:40:35'),
(3, 'Ekonomi', '2022-10-15 04:15:25', '2024-07-10 22:40:52');

-- --------------------------------------------------------

--
-- Table structure for table `portfolio_photos`
--

CREATE TABLE `portfolio_photos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `portfolio_id` int(11) NOT NULL,
  `photo` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolio_photos`
--

INSERT INTO `portfolio_photos` (`id`, `portfolio_id`, `photo`, `created_at`, `updated_at`) VALUES
(15, 15, 'portfolio_gallery_photo_1721061815.jpg', '2024-07-15 09:43:35', '2024-07-15 09:43:35');

-- --------------------------------------------------------

--
-- Table structure for table `portfolio_videos`
--

CREATE TABLE `portfolio_videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `portfolio_id` int(11) NOT NULL,
  `caption` text NOT NULL,
  `video_id` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_category_id` int(11) NOT NULL,
  `title` text NOT NULL,
  `slug` text NOT NULL,
  `short_description` text NOT NULL,
  `description` text NOT NULL,
  `photo` text NOT NULL,
  `banner` text NOT NULL,
  `show_comment` text NOT NULL,
  `seo_title` text DEFAULT NULL,
  `seo_meta_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `post_category_id`, `title`, `slug`, `short_description`, `description`, `photo`, `banner`, `show_comment`, `seo_title`, `seo_meta_description`, `created_at`, `updated_at`) VALUES
(10, 2, 'Peresmian Jalan Desa Baru Menjadi Pendorong Ekonomi Lokal', 'jalan-desa', 'Pemerintah Desa Pangebatan meresmikan jalan baru sepanjang 2 kilometer yang menghubungkan pemukiman warga dengan sentra ekonomi desa.', '<p>Pemerintah Desa Pangebatan meresmikan jalan baru sepanjang 2 kilometer yang menghubungkan pemukiman warga dengan sentra ekonomi desa. Jalan yang dilengkapi dengan lapisan aspal baru ini diresmikan pada tanggal 15 Mei 2024, dengan dihadiri oleh Bapak Suryanto, Kepala Desa Pangebatan, dan seluruh warga masyarakat. Pembangunan jalan ini dilakukan sebagai bagian dari upaya Pemerintah Desa untuk meningkatkan aksesibilitas dan konektivitas antarwilayah di desa, serta mendukung transportasi hasil pertanian dan produk lokal.</p><p>Jalan baru ini memberikan dampak signifikan terhadap perekonomian desa. Warga sekarang dapat dengan mudah mengakses pasar tradisional yang sebelumnya sulit dijangkau akibat kondisi jalan yang buruk. Hal ini berpotensi meningkatkan penjualan hasil pertanian secara langsung, serta mengurangi biaya logistik yang sebelumnya tinggi akibat transportasi yang sulit.</p><p>Menurut Bapak Suryanto, Kepala Desa Pangebatan, \"Pembangunan jalan baru ini adalah salah satu langkah strategis untuk memajukan desa kita. Dengan akses yang lebih baik, kita harapkan perekonomian desa dapat tumbuh lebih baik lagi dan kesejahteraan warga meningkat.\"</p>', 'post_photo_1720682890.jpg', 'post_banner_1720682890.jpg', 'Yes', 'Jalan Desa', 'Jalan Desa', '2024-07-11 00:28:10', '2024-07-11 00:28:10'),
(11, 2, 'Penyediaan Air Bersih Capai 100% Coverage di Desa Pangebatan', 'penyediaan-air-bersih', 'Pemerintah Desa Pangebatan telah berhasil menyediakan akses air bersih kepada seluruh rumah tangga di desa, mencapai 100% cakupan pada tanggal 20 Juni 2024.', '<p>Pemerintah Desa Pangebatan telah berhasil menyediakan akses air bersih kepada seluruh rumah tangga di desa, mencapai 100% cakupan pada tanggal 20 Juni 2024. Program penyediaan air bersih ini melibatkan pembangunan sumur bor dan instalasi jaringan pipa yang menjangkau seluruh pemukiman warga desa.</p><p>Sebelum program ini diluncurkan, sebagian besar warga desa bergantung pada sumur gali yang kurang terjamin kebersihannya. Kini, dengan tersedianya air bersih yang mudah diakses, warga tidak hanya mendapatkan akses yang lebih nyaman namun juga meningkatkan kesehatan dan sanitasi di desa.</p><p>\"Kami sangat bersyukur dengan adanya penyediaan air bersih ini. Sebelumnya, kami harus mengambil air dari sumur gali yang seringkali kualitasnya kurang baik,\" ujar Ibu Siti, salah seorang warga desa. \"Sekarang, hidup kami menjadi lebih mudah dan sehat. Terima kasih kepada Pemerintah Desa atas perhatian dan kerja kerasnya.\"</p>', 'post_photo_1720683056.jpg', 'post_banner_1720683056.jpg', 'Yes', 'Penyediaan Air Bersih', 'Penyediaan Air Bersih', '2024-07-11 00:30:35', '2024-07-11 00:30:56'),
(12, 4, 'Peningkatan Kualitas Pendidikan Melalui Program Digitalisasi Pembelajaran', 'digitatalisasi-pembelajaran', 'Pemerintah Desa Pangebatan meluncurkan program digitalisasi pembelajaran untuk meningkatkan kualitas pendidikan di desa.', '<p>Pemerintah Desa Pangebatan meluncurkan program digitalisasi pembelajaran untuk meningkatkan kualitas pendidikan di desa. Program ini melibatkan pengadaan perangkat komputer dan akses internet di sekolah-sekolah desa serta pelatihan bagi guru-guru dalam penggunaan teknologi informasi dan komunikasi (TIK) dalam proses pembelajaran.</p><p>Dengan adanya program ini, diharapkan pembelajaran di desa dapat lebih interaktif dan mendukung pemahaman yang lebih baik bagi siswa. Selain itu, program ini juga bertujuan untuk mengurangi kesenjangan pendidikan antara desa dan perkotaan dengan memanfaatkan teknologi.</p><p>\"Program digitalisasi ini adalah langkah maju yang sangat signifikan bagi pendidikan di desa kami,\" kata Bapak Joko, seorang guru di SDN Pangebatan. \"Anak-anak kami sekarang dapat belajar dengan lebih menyenangkan dan efektif. Ini membuka pintu untuk pengetahuan yang lebih luas dan kesempatan yang lebih baik untuk masa depan mereka.\"</p>', 'post_photo_1720683152.jpg', 'post_banner_1720683152.jpg', 'Yes', 'Digitalisasi Pembelajaran', 'Digitalisasi Pembelajaran', '2024-07-11 00:32:32', '2024-07-11 00:32:55'),
(13, 5, 'Pelatihan Kewirausahaan Meningkatkan UMKM di Desa Pangebatan', 'pelatihan-kewirausahaan', 'Pemerintah Desa Pangebatan bekerjasama dengan lembaga swadaya masyarakat meluncurkan program pelatihan kewirausahaan.', '<p>Pemerintah Desa Pangebatan bekerjasama dengan lembaga swadaya masyarakat meluncurkan program pelatihan kewirausahaan untuk membantu pengembangan usaha mikro, kecil, dan menengah (UMKM) di desa. Program ini meliputi pelatihan manajemen usaha, pemasaran online, dan akses permodalan.</p><p>Dengan adanya pelatihan ini, para pelaku UMKM di desa mampu meningkatkan kualitas produk dan daya saingnya di pasar. Beberapa pengusaha lokal telah berhasil mengembangkan usahanya dan menjangkau pasar yang lebih luas.</p><p>\"Saya sangat bersyukur dengan adanya pelatihan ini. Saya sekarang bisa lebih memahami bagaimana cara mengelola usaha saya dengan baik,\" ujar Pak Budi, seorang pemilik warung makan di desa. \"Hasilnya, pendapatan saya meningkat dan saya bisa menyediakan lebih banyak lapangan kerja bagi warga desa.\"</p>', 'post_photo_1720683266.jpg', 'post_banner_1720683266.jpg', 'Yes', 'Pelatihan Kewirausahaan', 'Pelatihan Kewirausahaan', '2024-07-11 00:34:26', '2024-07-11 00:34:58'),
(14, 4, 'Pelayanan Kesehatan Posyandu Capai Partisipasi Tinggi', 'pelayanan-sosial', 'Pelayanan posyandu di Desa Pangebatan mencatat partisipasi tinggi dari warga, terutama ibu hamil, balita, dan lansia.', '<p>Pelayanan posyandu di Desa Pangebatan mencatat partisipasi tinggi dari warga, terutama ibu hamil, balita, dan lansia. Program posyandu rutin ini tidak hanya menyediakan pemeriksaan kesehatan rutin tetapi juga edukasi tentang gizi, perawatan ibu dan anak, serta imunisasi.</p><p>\"Posyandu sangat membantu saya dalam memantau perkembangan kesehatan anak saya,\" ujar Ibu Desi, seorang ibu rumah tangga di desa. \"Dengan adanya posyandu, saya lebih mudah mendapatkan informasi kesehatan yang berguna untuk keluarga kami.\"</p>', 'post_photo_1720683431.jpg', 'post_banner_1720683431.jpg', 'Yes', 'Pelayanan Social', 'Pelayanan Social', '2024-07-11 00:37:11', '2024-07-11 00:37:11'),
(15, 2, 'Festival Budaya Desa Pangebatan Meriahkan Hari Ulang Tahun Desa', 'festival-budaya', 'Desa Pangebatan merayakan hari ulang tahunnya yang ke-75 dengan menggelar festival budaya selama tiga hari berturut-turut', '<p>Desa Pangebatan merayakan hari ulang tahunnya yang ke-75 dengan menggelar festival budaya selama tiga hari berturut-turut. Festival ini menampilkan berbagai seni tradisional seperti tari-tarian daerah, musik tradisional, serta pameran kuliner dan kerajinan tangan.</p><p>\"Festival ini bukan hanya sebagai ajang hiburan tetapi juga sebagai upaya untuk melestarikan budaya lokal,\" kata Bapak Joko, Ketua Panitia Festival Budaya. \"Kami berharap generasi muda dapat lebih mengenal dan mencintai warisan budaya yang kita miliki.\"</p>', 'post_photo_1720683556.jpg', 'post_banner_1720683556.jpg', 'Yes', 'Festival Budaya', 'Festival Budaya', '2024-07-11 00:39:16', '2024-07-11 00:39:16'),
(16, 6, 'Program Lingkungan \"Desa Bersih\" Dorong Kesadaran Lingkungan', 'desa-bersih', 'Pemerintah Desa Pangebatan meluncurkan program \"Desa Bersih\" yang bertujuan untuk meningkatkan kesadaran masyarakat.', '<p>Pemerintah Desa Pangebatan meluncurkan program \"Desa Bersih\" yang bertujuan untuk meningkatkan kesadaran masyarakat tentang kebersihan lingkungan. Program ini melibatkan kegiatan pembersihan lingkungan, pengelolaan sampah, dan kampanye kebersihan.</p><p>\"Dengan program ini, kami berharap bisa menjaga kebersihan desa dan lingkungan sekitar,\" ujar Ibu Ani, seorang warga desa yang aktif dalam program \"Desa Bersih\". \"Semua warga diajak untuk berpartisipasi aktif dalam menjaga kebersihan, karena lingkungan yang bersih adalah tanggung jawab bersama kita.\"</p><p>Setiap berita tersebut mencerminkan berbagai inisiatif dan kegiatan yang dilakukan oleh Pemerintah Desa Pangebatan untuk meningkatkan kualitas hidup dan kesejahteraan masyarakatnya. Dengan adanya berita-berita ini, diharapkan masyarakat desa dapat lebih memahami dan mengapresiasi upaya yang telah dilakukan oleh pemerintah desa serta meningkatkan partisipasi mereka dalam pembangunan dan pembinaan desa.</p>', 'post_photo_1720683689.jpg', 'post_banner_1720683689.jpg', 'Yes', 'Desa Bersih', 'Desa Bersih', '2024-07-11 00:41:06', '2024-07-11 00:41:29');

-- --------------------------------------------------------

--
-- Table structure for table `post_categories`
--

CREATE TABLE `post_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` text NOT NULL,
  `category_slug` text NOT NULL,
  `category_seo_title` text DEFAULT NULL,
  `category_seo_meta_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_categories`
--

INSERT INTO `post_categories` (`id`, `category_name`, `category_slug`, `category_seo_title`, `category_seo_meta_description`, `created_at`, `updated_at`) VALUES
(2, 'Pembangunan Infrastruktur', 'pembangunan-infrastruktur', 'Pembangunan Infrastruktur', 'Pembangunan Infrastruktur', '2022-10-18 21:30:19', '2024-07-11 00:23:33'),
(4, 'Pelayanan Sosial dan Kesejahteraan', 'pelayanan-sosial', 'Pelayanan Sosial dan Kesejahteraan', 'Pelayanan Sosial dan Kesejahteraan', '2022-10-19 15:19:38', '2024-07-11 00:24:16'),
(5, 'Ekonomi dan Pemberdayaan Masyarakat', 'pemberdayaan-masyarakat', 'Ekonomi dan Pemberdayaan Masyarakat', 'Ekonomi dan Pemberdayaan Masyarakat', '2022-10-19 15:19:55', '2024-07-11 00:24:47'),
(6, 'Budaya dan Kebersamaan', 'budaya-dan-Kebersamaan', 'Budaya dan Kebersamaan', 'Budaya dan Kebersamaan', '2022-10-19 15:20:09', '2024-07-11 00:25:17');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `designation` text NOT NULL,
  `photo` text NOT NULL,
  `job_des` text NOT NULL,
  `address` text DEFAULT NULL,
  `phone` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `name`, `designation`, `photo`, `job_des`, `address`, `phone`, `email`, `created_at`, `updated_at`) VALUES
(1, 'LUKMANUL HAKIM', 'Kepala Desa', 'profile_1720889157.jpg', 'Kepala Desa bertanggung jawab untuk memimpin penyelenggaraan pemerintahan desa serta membina dan mengawasi pelaksanaan tugas seluruh aparatur desa. Kepala Desa mengambil keputusan strategis untuk pembangunan desa, menjalin hubungan baik dengan masyarakat dan pemerintah di tingkat yang lebih tinggi, serta bertanggung jawab atas penggunaan anggaran desa. Selain itu, Kepala Desa juga berperan dalam menyusun dan melaksanakan peraturan desa serta memfasilitasi musyawarah desa untuk menentukan arah pembangunan.\r\n\r\n- Memimpin penyelenggaraan pemerintahan desa.\r\n- Membina dan mengawasi pelaksanaan tugas aparatur desa.\r\n- Mengambil keputusan strategis untuk pembangunan desa.\r\n- Menjalin hubungan baik dengan masyarakat dan pemerintah di atasnya.\r\n- Bertanggung jawab atas penggunaan anggaran desa.', NULL, '-', '-', '2024-07-11 08:03:15', '2024-07-13 09:46:09'),
(3, 'AGUS SUPRIYANTO', 'Sekretaris Desa', 'profile_1720889185.jpg', 'Sekretaris Desa bertugas mengelola administrasi pemerintahan desa, termasuk menyusun dan menyampaikan laporan pemerintahan secara berkala. Sekretaris Desa membantu Kepala Desa dalam pelaksanaan tugas-tugas pemerintahan, menyusun peraturan desa, serta mengelola arsip dan dokumentasi desa. Selain itu, Sekretaris Desa bertanggung jawab untuk menyusun rencana kerja pemerintah desa (RKPDes) dan memastikan bahwa seluruh administrasi berjalan dengan tertib dan efisien.', NULL, NULL, NULL, '2024-07-11 08:30:33', '2024-07-13 09:46:25'),
(4, 'ASEP SAEFURI', 'Kasi Kesejahteraan', 'profile_1721050321.png', 'Kepala seksi kesejahteraan (Kasi Kesra) ini bertugas membantu Kepala Desa dalam melaksanakan tugas bidang pembangunan dan pemberdayaan masyarakat desa.', NULL, NULL, NULL, '2024-07-11 08:31:53', '2024-07-15 06:32:01'),
(5, 'SAMSUL MUIS', 'Kasi Pelayanan', 'profile_1721050331.png', 'Kasi Pelayanan bertugas melakukan tindakan yang mengakibatkan pengeluaran atas beban anggaran belanja sesuai bidang tugasnya, melaksanakan anggaran kegiatan sesuai bidang tugasnya, mengendalikan kegiatan sesuai bidang tugasnya, menyusun DPA (Dokumen Pelaksanaan Anggaran), DPPA (Dokumen Perubahan Pelaksanaan Anggaran), dan DPAL (Dokumen Pelaksanaan Anggaran Lanjutan) sesuai bidang tugasnya, menandatangani perjanjian kerja sama dengan penyedia atas pengadaan barang/jasa untuk kegiatan yang berada dalam bidang tugasnya, dan menyusun laporan pelaksanaan kegiatan sesuai bidang tugasnya untuk pertanggungjawaban pelaksanaan Anggaran Pendapatan dan Belanja Desa (APBDes)', NULL, NULL, NULL, '2024-07-11 08:32:31', '2024-07-15 06:32:11'),
(6, 'KOHAR', 'Kasi Pemerintahan', 'profile_1720889219.jpg', 'Kasi Pemerinthan membantu Kepala Desa untuk mempersiapkan bahan-bahan dalam perumusan kebijakan teknis penyusunan program keagamaan serta melaksanakan program pemberdayaan masyarakat dan sosial kemasyarakatan.', NULL, NULL, NULL, '2024-07-11 08:33:17', '2024-07-13 09:46:59'),
(7, 'RISWANTO', 'Kaur Keuangan', 'profile_1720891816.jpg', 'Kaur Keuangan mempunyai fungsi melaksanakan urusan keuangan seperti Pengurusan administrasi keuangan, administrasi sumber-sumber pendapatan dan pengeluaran, verifikasi administrasi keuangan, dan admnistrasi penghasilan Kepala Desa, Perangkat Desa, BPD, dan lembaga pemerintahan desa lainnya.', NULL, NULL, NULL, '2024-07-11 08:33:55', '2024-07-13 10:30:16'),
(8, 'WASHARI', 'Kaur Perencanaan', 'profile_1720712073.jpg', 'Kaur Perencanaan memiliki fungsi mengkoordinasikan urusan perencanaan seperti menginventarisir data-data dalam rangka pembangunan, menyusun rencana anggaran pendapatan dan belanja desa, evaluasi program, melakukan monitoring, penyusunan laporan.', NULL, NULL, NULL, '2024-07-11 08:34:33', '2024-07-13 09:37:04'),
(9, 'SUPRIYATIN', 'Kaur Umum', 'profile_1720889103.jpg', 'Kaur umum bertugas dalaam tata naskah, administrasi surat menyurat, arsip, dan ekspedisi, penataan administrasi perangkat desa, penyediaan prasarana perangkat desa dan kantor, penyiapan rapat, pengadministrasian aset, inventarisasi, perjalanan dinas, dan pelayanan umum.', NULL, NULL, NULL, '2024-07-11 08:35:04', '2024-07-13 10:32:45'),
(10, 'SITI JULAEHA', 'Kadus', 'profile_1720712144.jpg', 'Kadus bertugas dalam administrasi dusun seperti pendataan penduduk dan aset dusun, koordinasi kegiatan dusun, pengawasan infrastruktur, penyuluhan dan pemberdayaan masyarakat, penanganan msalah sosial, hubungan dengan pihak terkait, dan pemantuan kebijakan dan regulasi.', NULL, NULL, NULL, '2024-07-11 08:35:44', '2024-07-13 09:27:12'),
(13, 'KOHAR', 'Kadus (Plt)', 'profile_1720887370.jpg', 'Kadus bertugas dalam administrasi dusun seperti pendataan penduduk dan aset dusun, koordinasi kegiatan dusun, pengawasan infrastruktur, penyuluhan dan pemberdayaan masyarakat, penanganan msalah sosial, hubungan dengan pihak terkait, dan pemantuan kebijakan dan regulasi.', NULL, NULL, NULL, '2024-07-13 09:16:10', '2024-07-13 09:29:13'),
(16, 'MUTMAINAH', 'Kadus', 'profile_1720891864.jpg', 'Kadus bertugas dalam administrasi dusun seperti pendataan penduduk dan aset dusun, koordinasi kegiatan dusun, pengawasan infrastruktur, penyuluhan dan pemberdayaan masyarakat, penanganan msalah sosial, hubungan dengan pihak terkait, dan pemantuan kebijakan dan regulasi.', NULL, NULL, NULL, '2024-07-13 09:18:58', '2024-07-13 10:31:04'),
(17, 'ABDUL GOPAR', 'Kadus', 'profile_1721050308.png', 'Kadus bertugas dalam administrasi dusun seperti pendataan penduduk dan aset dusun, koordinasi kegiatan dusun, pengawasan infrastruktur, penyuluhan dan pemberdayaan masyarakat, penanganan msalah sosial, hubungan dengan pihak terkait, dan pemantuan kebijakan dan regulasi.', NULL, NULL, NULL, '2024-07-13 09:20:01', '2024-07-15 06:31:49'),
(18, 'HARYANTO', 'Kadus', 'profile_1720889249.jpg', 'Kadus bertugas dalam administrasi dusun seperti pendataan penduduk dan aset dusun, koordinasi kegiatan dusun, pengawasan infrastruktur, penyuluhan dan pemberdayaan masyarakat, penanganan msalah sosial, hubungan dengan pihak terkait, dan pemantuan kebijakan dan regulasi.', NULL, NULL, NULL, '2024-07-13 09:20:37', '2024-07-13 09:47:29');

-- --------------------------------------------------------

--
-- Table structure for table `receive_messages`
--

CREATE TABLE `receive_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `phone` text DEFAULT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `receive_messages`
--

INSERT INTO `receive_messages` (`id`, `name`, `email`, `phone`, `comment`, `created_at`, `updated_at`) VALUES
(2, 'Moelato Hadi', 'moelato@gmail.com', NULL, 'Bagaimana cara mengurus surat keterangan pindah', '2024-07-12 00:24:17', '2024-07-12 00:24:17');

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `person_name` text NOT NULL,
  `person_email` text NOT NULL,
  `person_comment` text NOT NULL,
  `person_type` text NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `slug` text NOT NULL,
  `short_description` text NOT NULL,
  `description` text NOT NULL,
  `icon` text NOT NULL,
  `photo` text NOT NULL,
  `banner` text NOT NULL,
  `seo_title` text DEFAULT NULL,
  `seo_meta_description` text DEFAULT NULL,
  `item_order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `name`, `slug`, `short_description`, `description`, `icon`, `photo`, `banner`, `seo_title`, `seo_meta_description`, `item_order`, `created_at`, `updated_at`) VALUES
(1, 'Administrasi Kependudukan', 'administrasi-kependudukan', 'Pelayanan administrasi kependudukan meliputi pembuatan (KTP),  (KK), akta kelahiran, akta kematian, dan surat pindah domisili', '<p>Pelayanan administrasi kependudukan adalah layanan yang disediakan oleh pemerintah desa untuk membantu warga dalam mengurus dokumen-dokumen kependudukan. Layanan ini meliputi pembuatan Kartu Tanda Penduduk (KTP), Kartu Keluarga (KK), akta kelahiran, akta kematian, dan surat pindah domisili.</p><p><strong>Kegiatan Utama:</strong></p><ul><li>Pendaftaran dan pembuatan KTP bagi warga yang telah mencapai usia 17 tahun atau yang baru pindah ke desa tersebut.</li><li>Pembuatan dan perbaruan KK untuk keluarga baru atau keluarga yang mengalami perubahan data.</li><li>Pengurusan akta kelahiran untuk anak yang baru lahir, serta akta kematian untuk warga yang meninggal dunia.</li><li>Pengurusan surat pindah domisili bagi warga yang pindah masuk atau keluar dari desa.</li></ul><p><strong>Manfaat:</strong></p><ul><li>Memudahkan warga dalam mendapatkan dokumen resmi yang diperlukan untuk berbagai keperluan administratif.</li><li>Meningkatkan akurasi data kependudukan di desa.</li><li>Memastikan setiap warga memiliki identitas resmi yang diakui oleh pemerintah.</li></ul>', 'fas fa-user-circle', 'service_photo_1665563815.jpg', 'service_banner_1665563815.jpg', 'Administrasi Kependudukan', 'Administrasi Kependudukan', 1, '2022-10-12 02:36:55', '2024-07-10 21:36:45'),
(2, 'Kesehatan Masyarakat', 'kesehatan-masyarakat', 'Pelayanan kesehatan masyarakat adalah layanan yang bertujuan untuk meningkatkan kesehatan dan kesejahteraan warga desa.', '<p>Pelayanan kesehatan masyarakat adalah layanan yang bertujuan untuk meningkatkan kesehatan dan kesejahteraan warga desa. Layanan ini mencakup penyuluhan kesehatan, imunisasi, pelayanan posyandu, dan program kesehatan ibu dan anak.</p><p><strong>Kegiatan Utama:</strong></p><p>Posyandu (Pos Pelayanan Terpadu) yang memberikan layanan kesehatan bagi ibu hamil, bayi, dan balita, termasuk imunisasi dan pemeriksaan rutin.<br>Penyuluhan kesehatan mengenai gizi, sanitasi, dan pencegahan penyakit.<br>Pelayanan kesehatan ibu dan anak, termasuk pemeriksaan kehamilan dan pemberian vitamin.<br>Kampanye dan edukasi tentang pentingnya menjaga kebersihan lingkungan.</p><p><strong>Manfaat:</strong></p><p>Meningkatkan kesehatan ibu dan anak serta mencegah stunting pada balita.<br>Meningkatkan kesadaran warga tentang pentingnya kesehatan dan kebersihan.<br>Mencegah dan mengendalikan penyebaran penyakit di desa.</p>', 'fas fa-user-md', 'service_photo_1665573405.jpg', 'service_banner_1665573405.jpg', 'Kesehatan Masyarakat', 'Kesehatan Masyarakat', 2, '2022-10-12 05:16:45', '2024-07-10 21:58:23'),
(3, 'Pendidikan Pengembangan SDM', 'pendidikan-pengembangan', 'Pelayanan pendidikan dan pengembangan sumber daya manusia (SDM) bertujuan untuk meningkatkan akses dan kualitas pendidikan', '<p><strong>Pelayanan pendidikan dan pengembangan sumber daya manusia (SDM) </strong>adalah layanan yang bertujuan untuk meningkatkan akses dan kualitas pendidikan serta pengembangan keterampilan warga desa. Layanan ini meliputi penyediaan fasilitas pendidikan, pelatihan keterampilan, dan program beasiswa.</p><p><strong>Kegiatan Utama:</strong></p><p>Pendirian dan pengelolaan lembaga pendidikan seperti taman kanak-kanak dan perpustakaan desa.<br>Pelatihan keterampilan bagi pemuda dan warga desa, seperti kursus komputer, menjahit, dan pertanian.<br>Program beasiswa bagi siswa berprestasi dan kurang mampu.<br>Penyuluhan dan seminar mengenai pentingnya pendidikan dan pengembangan diri.</p><p><br><strong>Manfaat:</strong></p><p>Meningkatkan kualitas pendidikan dan akses belajar bagi anak-anak desa.<br>Membekali warga dengan keterampilan yang dapat meningkatkan pendapatan mereka.<br>Meningkatkan kesadaran akan pentingnya pendidikan dan pengembangan diri.</p>', 'fas fa-chalkboard-teacher', 'service_photo_1665573484.jpg', 'service_banner_1665573484.jpg', 'Pengambangan SDM', 'Pengembangan SDM', 3, '2022-10-12 05:18:04', '2024-07-10 21:58:11'),
(4, 'Pengembangan Ekonomi Desa', 'pengembangan-ekonomi-desa', 'Pelayanan ini bertujuan untuk mengembangkan potensi ekonomi lokal dan meningkatkan kesejahteraan ekonomi warga.', '<p><strong>Pelayanan Pengelolaan dan Pengembangan Ekonomi Desa</strong></p><p>Pelayanan pengelolaan dan pengembangan ekonomi desa adalah layanan yang bertujuan untuk mengembangkan potensi ekonomi lokal dan meningkatkan kesejahteraan ekonomi warga. Layanan ini mencakup pemberdayaan UMKM, pengembangan pertanian, dan promosi pariwisata desa.</p><p><strong>Kegiatan Utama:</strong></p><p>Pelatihan dan pendampingan untuk usaha mikro, kecil, dan menengah (UMKM) di desa.<br>Penyuluhan dan pengenalan teknologi pertanian modern untuk meningkatkan hasil pertanian.<br>Pengembangan destinasi wisata desa dan promosi potensi wisata lokal.<br>Penyediaan akses permodalan dan pembiayaan bagi pelaku usaha kecil.</p><p><br><strong>Manfaat:</strong></p><p>Meningkatkan pendapatan dan kesejahteraan ekonomi warga desa.<br>Mengembangkan potensi ekonomi lokal dan menciptakan lapangan kerja.<br>Memperkenalkan dan mempromosikan potensi wisata desa kepada masyarakat luas.<br>&nbsp;</p>', 'fas fa-address-card', 'service_photo_1665573547.jpg', 'service_banner_1665573547.jpg', 'Ekonomi Desa', 'Ekonomi Desa', 4, '2022-10-12 05:19:07', '2024-07-10 21:58:41'),
(5, 'Pelayanan Sosial dan Kesejahteraan', 'social-dan-kesejahteraan', 'Pelayanan ini bertujuan untuk meningkatkan kesejahteraan sosial warga desa, khususnya mereka yang kurang mampu.', '<p><strong>Pelayanan Sosial dan Kesejahteraan</strong></p><p>Pelayanan sosial dan kesejahteraan adalah layanan yang bertujuan untuk meningkatkan kesejahteraan sosial warga desa, khususnya mereka yang kurang mampu. Layanan ini mencakup bantuan sosial, program pemberdayaan masyarakat, dan layanan kesejahteraan lansia.</p><p><strong>Kegiatan Utama:</strong></p><p>Pemberian bantuan sosial seperti sembako, bantuan tunai, dan bantuan pendidikan bagi keluarga kurang mampu.<br>Program pemberdayaan masyarakat seperti pelatihan keterampilan, kelompok usaha bersama, dan koperasi desa.<br>Pelayanan kesejahteraan lansia melalui posyandu lansia dan kegiatan sosial lainnya.<br>Program pemberdayaan perempuan untuk meningkatkan peran dan kontribusi perempuan dalam pembangunan desa.</p><p><strong>Manfaat:</strong></p><p>Meningkatkan kesejahteraan sosial dan ekonomi warga kurang mampu.<br>Memberdayakan masyarakat untuk mandiri dan berdaya saing.<br>Meningkatkan kualitas hidup lansia dan kelompok rentan lainnya.</p>', 'far fa-lightbulb', 'service_photo_1665573587.jpg', 'service_banner_1665573587.jpg', 'Social dan Kesejahteraan', 'Social dan Kesejahteraan', 5, '2022-10-12 05:19:47', '2024-07-10 22:02:50'),
(6, 'Lingkungan dan Kebersihan', 'lingkungan-dan-kebersihan', 'Pelayanan lingkungan dan kebersihan bertujuan untuk menjaga kelestarian lingkungan dan meningkatkan kebersihan desa.', '<p><strong>Pelayanan Lingkungan dan Kebersihan</strong></p><p>Pelayanan lingkungan dan kebersihan adalah layanan yang bertujuan untuk menjaga kelestarian lingkungan dan meningkatkan kebersihan desa. Layanan ini mencakup pengelolaan sampah, penghijauan, dan kampanye kebersihan.</p><p><strong>Kegiatan Utama:</strong></p><p>Program pengelolaan sampah seperti pengumpulan, pemilahan, dan daur ulang sampah.<br>Kegiatan penghijauan desa melalui penanaman pohon dan pembuatan taman desa.<br>Kampanye kebersihan lingkungan untuk mengedukasi warga tentang pentingnya menjaga kebersihan.<br>Penyuluhan tentang pengelolaan limbah rumah tangga dan pertanian yang ramah lingkungan.</p><p><strong>Manfaat:</strong></p><p>Meningkatkan kebersihan dan kenyamanan lingkungan desa.<br>Menjaga kelestarian alam dan mengurangi dampak negatif terhadap lingkungan.<br>Meningkatkan kesadaran warga tentang pentingnya menjaga lingkungan dan kebersihan.</p>', 'fas fa-smile', 'service_photo_1665573630.jpg', 'service_banner_1665573630.jpg', 'Lingkungan dan Kebersihan', 'Lingkungan dan Kebersihan', 6, '2022-10-12 05:20:30', '2024-07-10 22:10:56');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` text NOT NULL,
  `favicon` text NOT NULL,
  `logo_footer` text NOT NULL,
  `footer_text` text DEFAULT NULL,
  `footer_icon_1` text DEFAULT NULL,
  `footer_icon_1_url` text DEFAULT NULL,
  `footer_icon_2` text DEFAULT NULL,
  `footer_icon_2_url` text DEFAULT NULL,
  `footer_icon_3` text DEFAULT NULL,
  `footer_icon_3_url` text DEFAULT NULL,
  `footer_icon_4` text DEFAULT NULL,
  `footer_icon_4_url` text DEFAULT NULL,
  `footer_copyright` text NOT NULL,
  `preloader_status` text NOT NULL,
  `theme_color` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `logo`, `favicon`, `logo_footer`, `footer_text`, `footer_icon_1`, `footer_icon_1_url`, `footer_icon_2`, `footer_icon_2_url`, `footer_icon_3`, `footer_icon_3_url`, `footer_icon_4`, `footer_icon_4_url`, `footer_copyright`, `preloader_status`, `theme_color`, `created_at`, `updated_at`) VALUES
(1, 'logo_1720833667.png', 'favicon_1720920775.png', 'logo_footer_1720833667.png', 'Website ini dikelola oleh Pemerintah Desa Pangebatan untuk memberikan informasi terbaru kepada masyarakat. Hubungi kami untuk saran dan masukan.', 'fab fa-facebook-f', '#', 'fab fa-twitter', '#', 'fab fa-linkedin-in', '#', 'fab fa-instagram', '#', 'Copyright 2024', 'Show', '#3341EE', NULL, '2024-07-14 17:08:53');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `percentage` text NOT NULL,
  `side` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `name`, `percentage`, `side`, `created_at`, `updated_at`) VALUES
(1, 'Pembangunan Infrastruktur', '80', 'Left', '2022-10-09 05:36:59', '2024-07-10 20:42:47'),
(2, 'Pengelolaan Air Bersih', '85', 'Left', '2022-10-09 12:35:20', '2024-07-10 20:43:06'),
(5, 'Peningkatan Kualitas Pendidikan', '87', 'Left', '2022-10-09 12:35:54', '2024-07-10 20:43:31'),
(6, 'Pengembangan Ekonomi Lokal', '78', 'Right', '2022-10-09 12:36:04', '2024-07-10 20:43:58'),
(10, 'Pelestarian Lingkungan', '90', 'Right', '2024-07-10 20:44:23', '2024-07-10 20:44:23'),
(11, 'Kesehatan Masyarakat', '88', 'Right', '2024-07-10 20:44:46', '2024-07-10 20:44:46');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `designation` text NOT NULL,
  `comment` text NOT NULL,
  `photo` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `designation`, `comment`, `photo`, `created_at`, `updated_at`) VALUES
(1, 'Paijo', 'Petani', '\"Website desa sangat membantu saya untuk mendapatkan informasi terkini tentang kegiatan dan pengumuman di desa kami. Saya dapat dengan mudah mengetahui jadwal acara, kegiatan sosial, dan perkembangan infrastruktur. Sangat praktis dan informatif!\"', 'testimonial_1665476443.jpg', '2022-10-11 02:20:43', '2024-07-10 23:26:53'),
(2, 'Mas Joko', 'Pedagang', '\"Saya sangat mengapresiasi adanya website desa ini. Dengan mudah saya bisa mengakses informasi mengenai pelayanan publik, seperti administrasi kependudukan dan kesehatan. Fitur pengaduan online juga membantu meningkatkan responsifitas pelayanan di desa.\"', 'testimonial_1665478118.jpg', '2022-10-11 02:21:44', '2024-07-10 23:27:23'),
(3, 'Mas Tumijan', 'Pegawai Kantor Desa', '\"Website desa membantu saya untuk tetap terhubung dengan komunitas di desa, meskipun saya sering bepergian. Saya bisa melihat update tentang kegiatan sosial, pengumuman penting, dan hasil pertanian yang diperbarui secara teratur. Sangat membantu untuk merasa tetap terlibat!\"', 'testimonial_1665476532.jpg', '2022-10-11 02:22:12', '2024-07-10 23:28:22');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `video_id` text NOT NULL,
  `caption` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `video_id`, `caption`, `created_at`, `updated_at`) VALUES
(1, '51h7NSZpTYg', NULL, '2024-07-15 09:20:41', '2024-07-15 09:20:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `archives`
--
ALTER TABLE `archives`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `experiences`
--
ALTER TABLE `experiences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_banner_images`
--
ALTER TABLE `home_banner_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_page_items`
--
ALTER TABLE `home_page_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_items`
--
ALTER TABLE `page_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `portfolios`
--
ALTER TABLE `portfolios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `portfolio_categories`
--
ALTER TABLE `portfolio_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `portfolio_photos`
--
ALTER TABLE `portfolio_photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `portfolio_videos`
--
ALTER TABLE `portfolio_videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_categories`
--
ALTER TABLE `post_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `receive_messages`
--
ALTER TABLE `receive_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `archives`
--
ALTER TABLE `archives`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `experiences`
--
ALTER TABLE `experiences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `home_banner_images`
--
ALTER TABLE `home_banner_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `home_page_items`
--
ALTER TABLE `home_page_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `page_items`
--
ALTER TABLE `page_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `portfolios`
--
ALTER TABLE `portfolios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `portfolio_categories`
--
ALTER TABLE `portfolio_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `portfolio_photos`
--
ALTER TABLE `portfolio_photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `portfolio_videos`
--
ALTER TABLE `portfolio_videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `post_categories`
--
ALTER TABLE `post_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `receive_messages`
--
ALTER TABLE `receive_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
