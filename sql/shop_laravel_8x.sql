-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 27, 2021 lúc 04:26 PM
-- Phiên bản máy phục vụ: 10.4.18-MariaDB
-- Phiên bản PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shop_laravel_8x`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `topic` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumb` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `abouts`
--

INSERT INTO `abouts` (`id`, `topic`, `content`, `thumb`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Our Story', '<p>Ph&acirc;n bố theo c&aacute;c ch&ugrave;m ca bệnh, ổ dịch: Ch&ugrave;m li&ecirc;n quan ổ dịch Bạch Trữ, Tiến Thắng - M&ecirc; Linh (28); Li&ecirc;n quan c&aacute;c tỉnh c&oacute; dịch (13), Ch&ugrave;m s&agrave;ng lọc ho sốt (6), Ch&ugrave;m F1 của c&aacute;c trường hợp s&agrave;ng lọc ho sốt (6), ch&ugrave;m li&ecirc;n quan c&aacute;c tỉnh c&oacute; dịch (thứ ph&aacute;t: 4) Ch&ugrave;m li&ecirc;n quan ổ dịch chợ Ninh Hiệp, Gia L&acirc;m (3); Ch&ugrave;m li&ecirc;n quan ổ dịch L&ecirc; Đức Thọ, Mỹ Đ&igrave;nh (3); Ch&ugrave;m li&ecirc;n quan ổ dịch tại S&agrave;i Sơn, TT Quốc Oai (3); ch&ugrave;m ổ dịch Trần Quang Diệu Đống Đa (2), Ch&ugrave;m ổ dịch Nam Dư, Lĩnh Nam - Ho&agrave;ng Mai (2).</p>', '/storage/uploads/2021/11/04/about-01.jpg', 1, NULL, '2021-11-04 08:48:49'),
(2, 'Our Mission', '<p>Ph&acirc;n bố 16 ca cộng đồng theo 9 quận/huyện, thuộc 4 ch&ugrave;m: S&agrave;ng lọc ho sốt (6); Li&ecirc;n quan c&aacute;c tỉnh c&oacute; dịch (5), Ch&ugrave;m li&ecirc;n quan ổ dịch chợ Ninh Hiệp, Gia L&acirc;m (3), Ch&ugrave;m ho sốt thứ ph&aacute;t (2). Trong đ&oacute;, quận Ho&agrave;ng Mai c&oacute; 4 ca, Gia L&acirc;m (1), Ph&uacute; Xuy&ecirc;n (2), Nam Từ Li&ecirc;m (1), M&ecirc; Linh (1), Long Bi&ecirc;n (1), H&agrave; Đ&ocirc;ng (2). Bắc Từ Li&ecirc;m (2), Ba Đ&igrave;nh (2).</p>', '/storage/uploads/2021/11/04/about-02.jpg', 1, NULL, '2021-11-04 08:48:28');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `member_id` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_price` int(11) NOT NULL,
  `status` int(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `carts`
--

INSERT INTO `carts` (`id`, `member_id`, `note`, `total_price`, `status`, `created_at`, `updated_at`) VALUES
(21, 3, NULL, 4500000, 0, '2021-10-27 03:04:07', '2021-10-27 03:04:07'),
(22, 4, 'aaaa', 5790000, 0, '2021-10-27 03:07:52', '2021-10-27 03:07:52'),
(23, 4, NULL, 3000000, 0, '2021-11-02 02:29:12', '2021-11-02 02:29:12'),
(24, 3, NULL, 4500000, 0, '2021-11-02 06:40:57', '2021-11-02 06:40:57');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart_details`
--

CREATE TABLE `cart_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cart_details`
--

INSERT INTO `cart_details` (`id`, `order_id`, `product_id`, `qty`, `price`, `created_at`, `updated_at`) VALUES
(5, 21, 10, 3, 1500000, '2021-10-27 03:04:07', '2021-10-27 03:04:07'),
(6, 22, 7, 1, 1290000, '2021-10-27 03:07:52', '2021-10-27 03:07:52'),
(7, 22, 10, 3, 1500000, '2021-10-27 03:07:52', '2021-10-27 03:07:52'),
(8, 23, 10, 2, 1500000, '2021-11-02 02:29:12', '2021-11-02 02:29:12'),
(9, 24, 10, 3, 1500000, '2021-11-02 06:40:57', '2021-11-02 06:40:57');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `contacts`
--

INSERT INTO `contacts` (`id`, `address`, `phone`, `email`, `created_at`, `updated_at`) VALUES
(1, '173 Phương Canh - Nam Từ Liêm - Hà Nội', '0856800200', 'buiducphu.266@gmail.com', NULL, '2021-11-04 06:02:22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_member` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`id`, `id_member`, `name`, `phone`, `address`, `email`, `created_at`, `updated_at`) VALUES
(26, 3, 'Bùi Đức Phú', '0856800200', 'Ngõ 173-Phương Canh-Nam Từ Liêm-Hà Nội', 'buiducphu.266@gmail.com', '2021-10-21 08:05:00', '2021-10-26 03:56:27'),
(29, 4, 'bùi đức phú', '0856800200', 'Ngõ 157b- Chùa Láng-Đống Đa-Hà Nội', 'trangngu@gmail.com', '2021-10-27 03:07:24', '2021-10-27 03:07:24');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
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
-- Cấu trúc bảng cho bảng `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(5, 'default', '{\"uuid\":\"537cd039-c860-4c6e-bb18-d82097e8d486\",\"displayName\":\"App\\\\Jobs\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMail\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\SendMail\\\":11:{s:8:\\\"\\u0000*\\u0000email\\\";s:23:\\\"buiducphu.266@gmail.com\\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2021-08-26 09:59:25.128002\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1629971965, 1629971960);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `members`
--

CREATE TABLE `members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `members`
--

INSERT INTO `members` (`id`, `username`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'admin@gmail.com', NULL, '$2y$10$pnjRTBokYKWr5DqxsiA0X./RJEOAFqRIPfOheVyuLQQcYiH4r4wXW', 'WRUrLPnSqVgUAYNzKnMQjoItu6atDqYwk8zVLbdC4l4Kjy76RTAiucAX47EH', '2021-10-21 08:05:00', '2021-11-13 19:40:11'),
(4, 'Buiducphu.266@gmail.com', NULL, '$2y$10$wb65KMqW3Pz04SWB3uWwauTzahZ.uoDsfUCkTbP3nukIjqcyaA.8W', '1Us8qf5TgfkGegWSGWce5foyeQUYcaOr8i4nnTKnFttnWp2ALkEOLAElIfoR', '2021-10-27 03:07:24', '2021-10-27 03:07:24');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menus`
--

INSERT INTO `menus` (`id`, `name`, `parent_id`, `description`, `content`, `active`, `created_at`, `updated_at`) VALUES
(5, 'Tay Cầm F04', 0, 'Tay Cầm F04', '<p>Tay Cầm F04</p>', 1, '2021-09-03 02:18:05', '2021-09-03 02:18:05'),
(6, 'Tay Cầm Xbox', 0, 'Tay Cầm Xbox', '<p>Tay Cầm Xbox</p>', 1, '2021-09-03 02:18:33', '2021-09-03 02:18:33'),
(7, 'Tay Cầm PS4/PS5', 0, 'Tay Cầm PS4/PS5', '<p>Tay Cầm PS4/PS5</p>', 1, '2021-09-03 02:19:08', '2021-09-03 02:19:08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_05_26_121348_create_menus_table', 1),
(5, '2021_05_29_085033_create_products_table', 1),
(6, '2021_08_08_034227_create_sliders_table', 1),
(7, '2021_08_20_041947_create_customers_table', 1),
(8, '2021_08_20_042013_create_carts_table', 1),
(9, '2021_08_25_085311_create_jobs_table', 2),
(10, '2019_12_14_000001_create_personal_access_tokens_table', 3),
(11, '2021_09_04_075217_create_permission_tables', 3),
(12, '2021_10_10_135724_create_cart_detail', 4),
(13, '2021_10_10_152100_create_cart_details_table', 5),
(14, '2021_10_20_071722_create_user_customer', 6),
(15, '2021_10_20_072530_create_user_customers_table', 7),
(16, '2021_10_20_073231_create_user_customers_table', 8),
(17, '2021_10_20_073600_create_user_customers_table', 9),
(18, '2021_10_20_081623_create_members_table', 10),
(19, '2021_11_03_140150_create_contacts_table', 11),
(20, '2021_11_03_145700_create_abouts_table', 12);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(3, 'App\\Models\\User', 1),
(4, 'App\\Models\\User', 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'edit', 'web', '2021-09-05 01:59:50', '2021-09-05 01:59:50'),
(2, 'view', 'web', '2021-09-05 01:59:50', '2021-09-05 01:59:50'),
(3, 'add', 'web', '2021-09-05 01:59:50', '2021-09-05 01:59:50'),
(4, 'delete', 'web', '2021-09-05 01:59:50', '2021-09-05 01:59:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
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
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `price_sale` int(11) DEFAULT NULL,
  `thumb` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int(10) NOT NULL,
  `active` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `content`, `menu_id`, `price`, `price_sale`, `thumb`, `qty`, `active`, `created_at`, `updated_at`) VALUES
(4, 'Tay Cầm Xbox One X / Xbox Seri X Chính Hãng Đen Carbon Black + Tặng Kèm Cáp Cable USB Chơi Game Tối Ưu Cho FO4 / FIFA', '<p><strong>Tay Cầm Xbox One X / Xbox Seri X Ch&iacute;nh H&atilde;ng Đen Carbon Black + Tặng K&egrave;m C&aacute;p Cable USB Chơi Game Tối Ưu Cho FO4 / FIFA / PC&nbsp;được ph&acirc;n phối ch&iacute;nh thức tại Shoptaycam.com tại H&agrave; Nội gi&aacute; tốt h&agrave;ng đầu</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://shoptaycam.com/wp-content/uploads/2021/08/one-x-black-2-1024x765.png\" style=\"height:762px; width:1020px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://shoptaycam.com/wp-content/uploads/2021/08/xbox-one-x-%C4%91en-c%C3%A1p-3-1024x765.png\" style=\"height:762px; width:1020px\" /></p>\r\n\r\n<p>Th&ocirc;ng tin chi tiết về sản phẩm tay cầm&nbsp;<strong>XBOX ONE X Ch&iacute;nh h&atilde;ng m&agrave;u Đen Carbon Black&nbsp;</strong>Tại&nbsp;<strong>Shoptaycam.com</strong></p>\r\n\r\n<p>&ndash;&nbsp;<strong>Gi&aacute; thị trường</strong>&nbsp;<strong>1.750.000 &ndash; 1.899.000 VND</strong>&nbsp;&ndash;&gt; Giảm Chỉ C&ograve;n&nbsp;<strong>1.699.000 VNĐ</strong>&nbsp;Đến&nbsp;<strong>30/12/2021</strong></p>\r\n\r\n<p>&ndash;&nbsp;<strong>Bảo H&agrave;nh</strong>:&nbsp;<strong>&nbsp;06 Th&aacute;ng</strong></p>\r\n\r\n<p><strong>&ndash; H&atilde;ng Sản Xuất</strong>: Microsoft</p>\r\n\r\n<p>&ndash;&nbsp;<strong>M&agrave;u Sắc</strong>: ĐEN BLACK CARBON</p>\r\n\r\n<p>&ndash;&nbsp;<strong>Đ&oacute;ng Hộ</strong>p:</p>\r\n\r\n<ul>\r\n	<li>Tay cầm Xbox One X Ch&iacute;nh h&atilde;ng M&agrave;u Đen Carbon Black</li>\r\n	<li>D&acirc;y Cable kết nối Typc-c</li>\r\n	<li>Bộ bọc cần analog tay cầm cho Xbox One X</li>\r\n	<li>S&aacute;ch Hướng Dẫn &amp; hộp đi k&egrave;m</li>\r\n</ul>\r\n\r\n<p>&ndash;&nbsp;<strong>Hỗ Trợ&nbsp;Kết nối</strong>:&nbsp;<strong>Tay Cầm Xbox One X</strong>&nbsp;<strong>Đen Carbon Black</strong>&nbsp;Ch&iacute;nh h&atilde;ng shop ph&acirc;n phối hỗ trợ kết nối</p>\r\n\r\n<p>1.&nbsp;<strong>Kh&ocirc;ng D&acirc;y</strong>&nbsp;( Bạn cần th&ecirc;m 1 Wireless Adapter cho Tay Cầm XBox One X</p>\r\n\r\n<p>2.&nbsp;<strong>Bluetooth</strong>&nbsp;( Nếu bạn d&ugrave;ng PC kh&ocirc;ng c&oacute; Blutooth cần mua th&ecirc;m USB 4.0 hỗ trợ bluetooth&nbsp; v&agrave; Laptop c&oacute; Blutooth th&igrave; bạn sử dụng&nbsp;<strong>Tay Cầm Xbox One X&nbsp;TRẮNG ROBOT WHITE</strong>&nbsp;1 c&aacute;ch b&igrave;nh thường bằng kh&ocirc;ng d&acirc;y )</p>\r\n\r\n<p>3.&nbsp;<strong>C&oacute; D&acirc;y:</strong>&nbsp;Bạn cắm Trực tiếp v&agrave;o d&acirc;y C&aacute;p USB Biến Xbox One S th&agrave;nh 1 tay cầm c&oacute; d&acirc;y với tốc độ ổn định</p>\r\n\r\n<p>&ndash;&nbsp;<strong>Hỗ Trợ Window</strong>: tốt nhất cho WIN 10, WIN 8 v&agrave; WIN 7 ( khi c&agrave;i th&ecirc;m driver )</p>\r\n\r\n<p>&ndash; Phần mềm hỗ trợ Window 7:&nbsp;<strong>http://digiex.net/downloads/download-center-2-0/xbox-one-content/apps-pc/13601-xbox-one-controller-usb-drivers-windows-pc-download.html</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://shoptaycam.com/wp-content/uploads/2021/08/one-x-trang-vs-den-1024x680.png\" style=\"height:677px; width:1020px\" /></p>', '<h4>Khuyến m&atilde;i hot nhất:</h4>\r\n\r\n<ul>\r\n	<li>- Tặng&nbsp;ngay sạc dự ph&ograve;ng trị gi&aacute; 500.000 VNĐ</li>\r\n</ul>', 6, 1890000, 1690000, '/storage/uploads/2021/09/04/one-x-black-2-300x300.png', 0, 1, '2021-09-03 02:39:07', '2021-09-04 00:01:16'),
(5, 'Tay Cầm Xbox One X Chính Hãng + Cáp Cable USB-C Theo SEAL Tối Ưu Cho FO4 / FIFA / PC', '<p><strong>Tay Cầm Xbox One X Ch&iacute;nh H&atilde;ng M&agrave;u Đen Carbon + C&aacute;p Cable USB Chơi Game Tối Ưu Cho FO4 / FIFA / PC | PHI&Ecirc;N BẢN 2020 được ph&acirc;n phối ch&iacute;nh thức tại Shoptaycam.com tại H&agrave; Nội gi&aacute; tốt h&agrave;ng đầu</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://shoptaycam.com/wp-content/uploads/2020/11/one-x-k%C3%A8m-recever-1024x767.png\" style=\"height:764px; width:1020px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Th&ocirc;ng tin chi tiết về sản phẩm tay cầm&nbsp;<strong>XBOX ONE X Ch&iacute;nh h&atilde;ng</strong>&nbsp;Tại&nbsp;<strong>Shoptaycam.com</strong></p>\r\n\r\n<p>&ndash;&nbsp;<strong>Gi&aacute; thị trường</strong>&nbsp;<strong>1.699.000 &ndash; 1.990.000 VND</strong>&nbsp;&ndash;&gt; Giảm Chỉ C&ograve;n&nbsp;<strong>1.799.000 VNĐ</strong>&nbsp;Đến&nbsp;<strong>30/12/2020</strong></p>\r\n\r\n<p>&ndash;&nbsp;<strong>Bảo H&agrave;nh</strong>:&nbsp;<strong>1 Đổi 1 Trong 3 ng&agrave;y, Bảo h&agrave;nh 06 Th&aacute;ng</strong></p>\r\n\r\n<p><strong>&ndash; H&atilde;ng Sản Xuất</strong>: Microsoft</p>\r\n\r\n<p>&ndash;&nbsp;<strong>M&agrave;u Sắc</strong>: ĐEN CARBON BLACK</p>\r\n\r\n<p>&ndash;&nbsp;<strong>Đ&oacute;ng Hộ</strong>p: Tay cầm Xbox One X Ch&iacute;nh h&atilde;ng + USB-c Cable Zin Ch&iacute;nh h&atilde;ng theo SEAL USB + Bộ bọc cần analog tay cầm cho Xbox One X +&nbsp; S&aacute;ch Hướng Dẫn &amp; hộp đi k&egrave;m ( như h&igrave;nh )</p>\r\n\r\n<p>&ndash;&nbsp;<strong>Hỗ Trợ&nbsp;Kết nối</strong>:&nbsp;<strong>Tay Cầm Xbox One X</strong>&nbsp;Ch&iacute;nh h&atilde;ng shop ph&acirc;n phối hỗ trợ kết nối</p>\r\n\r\n<p>1.&nbsp;<strong>Kh&ocirc;ng D&acirc;y</strong>&nbsp;( Bạn cần th&ecirc;m 1 Wireless Adapter )</p>\r\n\r\n<p>2.&nbsp;<strong>Bluetooth</strong>&nbsp;( Nếu bạn d&ugrave;ng PC kh&ocirc;ng c&oacute; Blutooth cần mua th&ecirc;m USB 4.0 hỗ trợ bluetooth&nbsp; v&agrave; Laptop c&oacute; Blutooth th&igrave; bạn sử dụng&nbsp;<strong>Tay Cầm Xbox One X</strong>&nbsp;1 c&aacute;ch b&igrave;nh thường bằng kh&ocirc;ng d&acirc;y )</p>\r\n\r\n<p>3.&nbsp;<strong>C&oacute; D&acirc;y:</strong>&nbsp;Bạn cắm Trực tiếp v&agrave;o d&acirc;y C&aacute;p USB Biến Xbox One S th&agrave;nh 1 tay cầm c&oacute; d&acirc;y với tốc độ ổn định</p>\r\n\r\n<p>&ndash;&nbsp;<strong>Hỗ Trợ Window</strong>: tốt nhất cho WIN 10, WIN 8 v&agrave; WIN 7 ( khi c&agrave;i th&ecirc;m driver )</p>\r\n\r\n<p>&ndash; Phần mềm hỗ trợ Window 7:&nbsp;<strong>http://digiex.net/downloads/download-center-2-0/xbox-one-content/apps-pc/13601-xbox-one-controller-usb-drivers-windows-pc-download.html</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://shoptaycam.com/wp-content/uploads/2020/11/f64b6101-d0dd-4a44-9a6b-04544689bc09-1-1024x576.jpg\" style=\"height:574px; width:1020px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://shoptaycam.com/wp-content/uploads/2020/11/d3575ab5-8fb5-4247-b343-d767bfa76eaf.jpg\" style=\"height:594px; width:1056px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://shoptaycam.com/wp-content/uploads/2020/11/e340d941-42c3-4649-9e60-aa046fb48abc.jpg\" style=\"height:594px; width:1056px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://shoptaycam.com/wp-content/uploads/2020/11/00d9cecf-ec6c-41c7-8c0b-98cdf4f98bde-1024x288.jpg\" style=\"height:287px; width:1020px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://shoptaycam.com/wp-content/uploads/2020/11/fdc1de73-6a9d-4c04-b05f-d10bb7eef3ad.a4c540ea7696f71034b7a2e09aa59f66-1-1024x1024.jpeg\" style=\"height:1020px; width:1020px\" /><img alt=\"\" src=\"https://shoptaycam.com/wp-content/uploads/2020/11/a9032f89-62fa-4299-a6cd-21d9dded3595.302552e836d70af032a598801c2e9c23-1024x1024.jpeg\" style=\"height:1020px; width:1020px\" /><img alt=\"\" src=\"https://shoptaycam.com/wp-content/uploads/2020/11/8f46b277-426c-45db-b7f8-02aa1fa3815a.a6618498faa9c33ee1bd1128220fbc33-1024x1024.jpeg\" style=\"height:1020px; width:1020px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://shoptaycam.com/wp-content/uploads/2020/11/one-x-k%C3%A8m-recever-1024x767.png\" style=\"height:764px; width:1020px\" /></p>', '<h4>Khuyến m&atilde;i hot nhất:</h4>\r\n\r\n<ul>\r\n	<li>- Tặng&nbsp;ngay tặng thẻ điện thoại trị gi&aacute; 100.000 VND</li>\r\n</ul>', 6, 2000000, 1799000, '/storage/uploads/2021/09/04/one-x-cáp.png', 0, 1, '2021-09-03 02:44:12', '2021-09-04 00:01:35'),
(6, 'Dock Sạc Tay Cầm PS5 Sony DualSense 5, Đế Sạc Tay Cầm PS5 Chính Hãng Xịn Iplay | DualSense PS5 Charging Station', '<p><strong>Dock Sạc Tay Cầm PS5 Sony DualSense 5, Đế Sạc Tay Cầm PS5 Ch&iacute;nh H&atilde;ng Xịn Iplay | DualSense PS5 Charging Station</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://shoptaycam.com/wp-content/uploads/2021/04/bandicam-2021-04-16-18-00-50-887_Fotor-1024x1024.jpg\" style=\"height:1020px; width:1020px\" /></p>\r\n\r\n<p>Dock Sạc Tay Cầm PS5 Sony DualSense 5, Đế Sạc Tay Cầm PS5 Ch&iacute;nh H&atilde;ng Xịn Iplay | Top B&aacute;n Chạy Shoptaycam</p>\r\n\r\n<p>DualSense 5 charging station | PS5 charging station</p>\r\n\r\n<p>Dock Sạc Tay Cầm PS5 Sony DualSense 5 L&agrave; sản phẩm cực k&igrave; tiện dụng cho những ai đang sử dụng tay cầm PS5|</p>\r\n\r\n<p>Sản phẩm Dock sạc PS5 n&agrave;y tại #shoptaycam gi&uacute;p anh em c&oacute; thẻ sạc 2 tay cầm c&ugrave;ng 1 l&uacute;c gi&uacute;p bạn tiết kiệm thời gian sạc pin</p>\r\n\r\n<p>H&igrave;nh ảnh sản phẩm như ảnh chụp của shoptaycam</p>\r\n\r\n<p>Th&ocirc;ng số kĩ thuật sản phẩm Dock Sạc Tay Cầm PS5 Iplay</p>\r\n\r\n<p>&ndash; Thời gian sạc: 2-3h</p>\r\n\r\n<p>&ndash; Điện &aacute;p đầu v&agrave;o: 5V</p>\r\n\r\n<p>&ndash; D&ograve;ng điện đầu v&agrave;o: 1000-2600mA</p>\r\n\r\n<p>&ndash; K&iacute;ch thước sản phẩm: 6,5*6*19cm &ndash; 168g</p>\r\n\r\n<p><img alt=\"\" src=\"https://shoptaycam.com/wp-content/uploads/2021/04/DOCK-S%E1%BA%A0C-PS5-IPLAY-1024x1024.jpg\" style=\"height:1020px; width:1020px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://shoptaycam.com/wp-content/uploads/2021/04/bandicam-2021-04-16-18-00-48-539_Fotor-1024x1024.jpg\" style=\"height:1020px; width:1020px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://shoptaycam.com/wp-content/uploads/2021/04/bandicam-2021-04-16-18-00-49-138_Fotor-1024x1024.jpg\" style=\"height:1020px; width:1020px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://shoptaycam.com/wp-content/uploads/2021/04/bandicam-2021-04-16-18-00-49-697_Fotor-1024x1024.jpg\" style=\"height:1020px; width:1020px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://shoptaycam.com/wp-content/uploads/2021/04/bandicam-2021-04-16-18-00-50-231_Fotor-1024x1024.jpg\" style=\"height:1020px; width:1020px\" /></p>', '<h4>Khuyến m&atilde;i hot nhất:</h4>\r\n\r\n<ul>\r\n	<li>- Tặng&nbsp;ngay Giftcard l&ecirc;n tới 50K cho đơn h&agrave;ng tr&ecirc;n 2.000.000 VNĐ</li>\r\n	<li>- Tặng ngay Giftcard l&ecirc;n tới 100K cho đơn h&agrave;ng tr&ecirc;n 5.000.000 VNĐ</li>\r\n	<li>- Phiếu mua h&agrave;ng trị gi&aacute; 50.000 VNĐ trong lần mua h&agrave;ng tiếp theo tại SHOP</li>\r\n</ul>', 7, 2400000, 1999000, '/storage/uploads/2021/09/04/DOCK-SẠC-PS5-IPLAY.jpg', 0, 1, '2021-09-03 03:06:06', '2021-09-03 23:47:51'),
(7, 'Tay Cầm Sony DualSense 5 PS5 Chĩnh Hãng + Top Gamepad Chơi Game Tối Ưu Cho PC / FO4 / FIFA', '<p><strong>Tay Cầm Sony DualSense 5 PS5 Chĩnh H&atilde;ng + Top Gamepad Chơi Game Tối Ưu Cho PC / FO4 / FIFA | H&Agrave;NG NHẬP KHẨU</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://shoptaycam.com/wp-content/uploads/2020/11/ps5-2-1024x767.png\" style=\"height:764px; width:1020px\" /></p>\r\n\r\n<p>Ngo&agrave;i tay cầm Xbox One S, One X đang được rất nhiều GAME thủ Chuy&ecirc;n Nghiệp, Cao Thủ hay c&aacute;c Youtuber nổi tiếng l&agrave;ng FIFA đang sử dụng th&igrave;<strong>&nbsp;tay cầm Sony DualShock 5 PS5</strong>&nbsp;mới nhất v&agrave; trước đ&oacute; l&agrave; DualShock 4 PS4 cũng l&agrave; 1 trong những tay cầm TỐT NHẤT hiện nay AE c&oacute; thể sử dụng tr&ecirc;n PC / thi đấu FO4 / FIFA ONLINE 4 V&agrave; đặt biệt những ai đ&atilde; l&agrave;m quen với c&aacute;c tay cầm tr&ecirc;n thệ thống PS2 PS3 PS4 PS5</p>\r\n\r\n<p><strong>Gi&aacute; sản phẩm</strong>: Giảm chỉ c&ograve;n&nbsp;<strong>1.799.000 VNĐ</strong>&nbsp;gi&agrave;nh cho 100 Bạn Đặt H&agrave;ng Sớm Nhất Đến&nbsp;<strong>30-12-2021</strong></p>\r\n\r\n<p><strong>Bảo h&agrave;nh</strong>: Bảo h&agrave;nh 1 đổi 1 trong 01 Th&aacute;ng</p>\r\n\r\n<p>Bộ sản phẩm&nbsp;<strong>Tay cầm Sony DualShock 5 PS5</strong>&nbsp;bao gồm:</p>\r\n\r\n<p>&ndash; 01 Tay cầm PS5 Dualsense ch&iacute;nh h&atilde;ng + hộp fullbox như h&igrave;nh + giấy bảo h&agrave;nh</p>\r\n\r\n<p>&ndash; tặng k&egrave;m 01 Bộ bọc cần cực tốt cho Dual Shock 5 PS5 Như H&igrave;nh Dưới</p>\r\n\r\n<p>&ndash; Trợ gi&aacute; mua USB Blutooth 4.0 Với Gi&aacute; l&agrave; 50.000 VNĐ</p>\r\n\r\n<p><img alt=\"\" src=\"https://shoptaycam.com/wp-content/uploads/2020/11/bandicam-2020-11-20-00-06-09-402_Fotor-1024x1024.jpg\" style=\"height:1020px; width:1020px\" /></p>\r\n\r\n<p><img alt=\"Tay Cầm Sony DualSense 5 PS5 Chĩnh Hãng + Top Gamepad Chơi Game Tối Ưu Cho PC / FO4 / FIFA | HÀNG NHẬP KHẨU\" src=\"https://shoptaycam.com/wp-content/uploads/2021/06/ps5-nhap-2-1024x768.png\" style=\"height:765px; width:1020px\" title=\"Tay Cầm Sony DualSense 5 PS5 Chĩnh Hãng + Top Gamepad Chơi Game Tối Ưu Cho PC / FO4 / FIFA | HÀNG NHẬP KHẨU\" /></p>\r\n\r\n<p><strong>Tay Cầm Sony DualSense 5 PS5 Chĩnh H&atilde;ng + Top Gamepad Chơi Game Tối Ưu Cho PC / FO4 / FIFA | H&Agrave;NG NHẬP KHẨU</strong></p>\r\n\r\n<p><img alt=\"Tay Cầm Sony DualSense 5 PS5 Chĩnh Hãng + Top Gamepad Chơi Game Tối Ưu Cho PC / FO4 / FIFA | HÀNG NHẬP KHẨU\" src=\"https://shoptaycam.com/wp-content/uploads/2021/06/ps5-nhap-1-1024x682.png\" style=\"height:679px; width:1020px\" /></p>\r\n\r\n<p><strong>Tay Cầm Sony DualSense 5 PS5 Chĩnh H&atilde;ng + Top Gamepad Chơi Game Tối Ưu Cho PC / FO4 / FIFA | H&Agrave;NG NHẬP KHẨU</strong></p>\r\n\r\n<p>Điều đầu ti&ecirc;n ch&uacute;ng ta c&oacute; thể nhận thấy ngay<strong>&nbsp;Tay Cầm&nbsp;DualSense PS5</strong>&nbsp;đ&atilde; được thiết kế lại, theo kiểu bo tr&ograve;n hơn v&agrave; đi k&egrave;m với hai t&ocirc;ng m&agrave;u trắng v&agrave; đen phối v&agrave;o nhau. N&uacute;t Share giờ đ&acirc;y đ&atilde; được thay thế bằng n&uacute;t Create với t&iacute;nh năng gi&uacute;p game thủ tạo ra những nội dung game ho&agrave;nh tr&aacute;ng</p>\r\n\r\n<p><strong>Tay cầm DualSense PS5&nbsp;</strong>năm nay được Sony cải tiến với nhiều c&ocirc;ng nghệ đ&aacute;ng ch&uacute; &yacute; như Haptic Feedback v&agrave; Adaptive Trigger, cho ph&eacute;p nh&agrave; ph&aacute;t triển game điều chỉnh độ rung dựa tr&ecirc;n sự căng thẳng của người chơi để đem đến cảm gi&aacute;c ch&iacute;nh x&aacute;c hơn so với c&ocirc;ng nghệ rung truyền thống</p>\r\n\r\n<p><strong>Tay cầm DualSense PS5&nbsp;</strong>Sử dụng một motor đặc biệt để&nbsp; t&ugrave;y biến lực nhấn của c&ograve; L2 v&agrave; R2, tay cầm DualSense của PlayStation 5 cho ph&eacute;p m&ocirc; phỏng ch&acirc;n thật độ nặng của c&ograve; s&uacute;ng, của cung t&ecirc;n hay b&agrave;n đạp ga trong những tựa game đua xe cực kỳ ch&acirc;n thật</p>\r\n\r\n<p><strong>Tay Cầm&nbsp;Sony DualShock 5 PS5 PlayStation 5</strong>&nbsp;Ch&iacute;nh H&atilde;ng với những th&ocirc;ng số chi tiết:</p>\r\n\r\n<ul>\r\n	<li>Dimensions: Approx. 160mm x 66mm x 106mm (excludes largest projection) (width x height x depth)</li>\r\n	<li>Weight: Approx. 280g</li>\r\n	<li>Buttons: PS button, Create button, Options button, Directional buttons (Up/Down/Left/Right), Action buttons (Triangle, Circle, Cross, Square),R1/L1 button, R2/L2 button (with Trigger Effect)Left stick / L3 button, Right stick / R3 button, Touch Pad button, MUTE button</li>\r\n	<li>Touch Pad: 2 Point Touch Pad, Capacitive Type, Click Mechanism</li>\r\n	<li>Motion Sensor: Six-axis motion sensing system (three-axis gyroscope + three-axis accelerometer)</li>\r\n	<li>Audio: Built-in Microphone Array, Built-in Mono Speaker, Stereo Headset JackOutput : 48kHz/16bit, Input : 24kHz/16bit</li>\r\n	<li>Feedback: Trigger Effect (on R2/L2 button), Vibration (haptic feedback by dual actuators), Indicators (Light bar / Player indicator / MUTE status)</li>\r\n	<li>Ports: USB Type-C&reg; port (Hi-Speed USB), Stereo Headset Jack, Charging Terminals</li>\r\n	<li>Communication: Wireless: Bluetooth&reg; Ver5.1</li>\r\n	<li>Wired: USB connection (HID, Audio)</li>\r\n	<li>Battery Type: Built-in rechargeable lithium-ion battery</li>\r\n	<li>Voltage: DC 3.65V</li>\r\n	<li>Capacity: 1,560mAh</li>\r\n</ul>\r\n\r\n<p><img alt=\"\" src=\"https://shoptaycam.com/wp-content/uploads/2020/11/ps5-1024x576.png\" style=\"height:574px; width:1020px\" /></p>', '<h4>Khuyến m&atilde;i hot nhất:</h4>\r\n\r\n<ul>\r\n	<li>- Tặng&nbsp;ngay Giftcard l&ecirc;n tới 50K cho đơn h&agrave;ng tr&ecirc;n 2.000.000 VNĐ</li>\r\n	<li>- Tặng ngay Giftcard l&ecirc;n tới 100K cho đơn h&agrave;ng tr&ecirc;n 5.000.000 VNĐ</li>\r\n	<li>- Phiếu mua h&agrave;ng trị gi&aacute; 50.000 VNĐ trong lần mua h&agrave;ng tiếp theo tại SHOP</li>\r\n</ul>', 7, 1500000, 1290000, '/storage/uploads/2021/09/04/c4ced5e4-6dd2-44d4-b8cf-795336f18864.b36f9bb71bcf08d98fd96c6d656da5d5-1024x1024.png', 19, 1, '2021-09-03 03:08:47', '2021-10-15 20:42:17'),
(10, 'Tay Cầm Xbox One S Đen Đỏ DAWN SHADOW Edition + Cáp Cable USB Chơi Game Tối Ưu Cho FO4 / FIFA / PC', '<p><strong>Tay Cầm Xbox One S Đen Đỏ DAWN SHADOW Edition + C&aacute;p Cable USB Chơi Game Tối Ưu Cho FO4 / FIFA / PC | H&Agrave;NG MỚI VỀ</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://shoptaycam.com/wp-content/uploads/2021/09/one-s-do-db-1024x768.png\" style=\"height:765px; width:1020px\" /></p>\r\n\r\n<p>&ndash;&nbsp;<strong>Gi&aacute; thị trường</strong>&nbsp;<strong>1.890.000 &ndash; 2.150.000 VND</strong>&nbsp;&ndash;&gt; Giảm Chỉ C&ograve;n&nbsp;<strong>1.490.000 VNĐ</strong>&nbsp;Đến&nbsp;<strong>30/12/2021</strong></p>\r\n\r\n<p>&ndash;&nbsp;<strong>Bảo H&agrave;nh</strong>:&nbsp;<strong>1 Đổi 1 Trong 3 ng&agrave;y, Bảo h&agrave;nh 06 Th&aacute;ng</strong></p>\r\n\r\n<p><strong>&ndash; H&atilde;ng Sản Xuất</strong>: Microsoft</p>\r\n\r\n<p>&ndash;&nbsp;<strong>M&agrave;u Sắc</strong>: Đen Đỏ&nbsp;DAWN SHADOW như ảnh</p>\r\n\r\n<p>&ndash;&nbsp;<strong>Đ&oacute;ng Hộ</strong>p: Tay cầm Xbox One S DAWN SHADOW + Cab USB + Bộ bọc cần analog tối ưu bảo vệ tay cầm</p>\r\n\r\n<p><img alt=\"\" src=\"https://shoptaycam.com/wp-content/uploads/2021/09/one-s-do-db-2-1024x682.png\" style=\"height:679px; width:1020px\" /></p>', '<h4>Khuyến m&atilde;i hot nhất:</h4>\r\n\r\n<ul>\r\n	<li>- Tặng&nbsp;ngay Giftcard l&ecirc;n tới 50K cho đơn h&agrave;ng tr&ecirc;n 2.000.000 VNĐ</li>\r\n	<li>- Tặng ngay Giftcard l&ecirc;n tới 100K cho đơn h&agrave;ng tr&ecirc;n 5.000.000 VNĐ</li>\r\n	<li>- Phiếu mua h&agrave;ng trị gi&aacute; 50.000 VNĐ trong lần mua h&agrave;ng tiếp theo tại SHOP</li>\r\n</ul>', 6, 1677000, 1500000, '/storage/uploads/2021/11/19/one-s-do-db-300x300.png', 15, 1, '2021-10-15 20:36:42', '2021-11-19 03:00:20'),
(11, 'Tay Cầm Sony DualSense 5 PS5 Đen Midnight Black Chĩnh Hãng Top Gamepad Cho PC / FO4 / FIFA', '<h4>Khuyến m&atilde;i hot nhất:</h4>\r\n\r\n<ul>\r\n	<li>- Tặng&nbsp;ngay Giftcard l&ecirc;n tới 50K cho đơn h&agrave;ng tr&ecirc;n 2.000.000 VNĐ</li>\r\n	<li>- Tặng ngay Giftcard l&ecirc;n tới 100K cho đơn h&agrave;ng tr&ecirc;n 5.000.000 VNĐ</li>\r\n	<li>- Phiếu mua h&agrave;ng trị gi&aacute; 50.000 VNĐ trong lần mua h&agrave;ng tiếp theo tại SHOP</li>\r\n</ul>', '<p>Tay Cầm Sony DualSense 5 PS5 Đen Midnight Black Chĩnh H&atilde;ng Top Gamepad Cho PC / FO4 / FIFA | H&Agrave;NG NHẬP KHẨU</p>\r\n\r\n<p><img alt=\"\" src=\"https://shoptaycam.com/wp-content/uploads/2021/08/ps5-black-1024x766.png\" style=\"height:763px; width:1020px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://shoptaycam.com/wp-content/uploads/2021/08/ps5-black-2-1024x681.png\" style=\"height:678px; width:1020px\" />&nbsp;<img alt=\"\" src=\"https://shoptaycam.com/wp-content/uploads/2021/08/ps5-black-3-1024x767.png\" style=\"height:764px; width:1020px\" /></p>', 7, 1900000, 1800000, '/storage/uploads/2021/11/25/ps5-black-300x300.png', 10, 1, '2021-11-24 19:34:26', '2021-11-24 19:35:03'),
(12, 'Tay Cầm Sony DualShock 4 PS4 Cũ 2nd + Kèm Cáp USB Chơi Game Tối Ưu Cho PC / FO4 / FIFA', '<p><strong>Tay Cầm Sony DualShock 4 PS4 Cũ 2nd Tặng K&egrave;m C&aacute;p USB Chơi Game Tối Ưu Cho PC / FO4 / FIFA | H&Agrave;NG MỚI VỀ<br />\r\nTay Cầm Sony DualShock 4 PS4 Cũ 2nd H&agrave; N&ocirc;i TPHCM Đ&agrave; Nẵng giao COD To&agrave;n QuốcTặng K&egrave;m C&aacute;p USB Chơi Game Tối Ưu Cho PC / FO4 / FIFA | H&Agrave;NG MỚI VỀ tại #shoptaycam</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://shoptaycam.com/wp-content/uploads/2019/12/f91041d4-e83a-41ce-861e-4873e0c674e8_3.7fae6f754ce8fd6de13e37dfd6da4056-1024x963.jpeg\" style=\"height:959px; width:1020px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://shoptaycam.com/wp-content/uploads/2021/08/ps4-2nd-1-1024x766.png\" style=\"height:763px; width:1020px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://shoptaycam.com/wp-content/uploads/2021/08/ps4-2nd-2-1024x680.png\" style=\"height:677px; width:1020px\" /></p>\r\n\r\n<p><strong>Bộ sản phẩm Tay cầm&nbsp;Sony DualShock 4&nbsp; PS4 cũ 2nd bao gồm:</strong></p>\r\n\r\n<ol>\r\n	<li>&ndash; 01 tay cầm ch&iacute;nh h&atilde;ng cũ 2nd m&agrave;u đen black nobox</li>\r\n	<li>&ndash; tặng k&egrave;m 01 d&acirc;y sạc tay cầm kết nối c&oacute; d&acirc;y</li>\r\n	<li>&ndash; tặng k&egrave;m 01 Bộ bọc cần cực tốt cho Dual Shock 4</li>\r\n	<li>&ndash; Trợ gi&aacute; mua&nbsp;<a href=\"https://shoptaycam.com/san-pham/usb-blutooth-csr-4-0-dongle-hang-xin-toi-uu-ket-noi-cho-pc-xbox-one-s-dual-shock-4-loa-dien-thoai-ban-chay/\"><strong>USB Blutooth 4.0</strong></a>&nbsp;Với Gi&aacute; l&agrave; 9<strong>0.000 VNĐ</strong></li>\r\n</ol>\r\n\r\n<ul>\r\n	<li><strong>Bảo H&agrave;nh: 1 đổi trong 01 th&aacute;ng</strong></li>\r\n</ul>', '<h4>Khuyến m&atilde;i hot nhất:</h4>\r\n\r\n<ul>\r\n	<li>- Tặng&nbsp;ngay Giftcard l&ecirc;n tới 50K cho đơn h&agrave;ng tr&ecirc;n 2.000.000 VNĐ</li>\r\n	<li>- Tặng ngay Giftcard l&ecirc;n tới 100K cho đơn h&agrave;ng tr&ecirc;n 5.000.000 VNĐ</li>\r\n	<li>- Phiếu mua h&agrave;ng trị gi&aacute; 50.000 VNĐ trong lần mua h&agrave;ng tiếp theo tại SHOP</li>\r\n</ul>', 7, 1000000, 780000, '/storage/uploads/2021/11/25/5e35ba5e-5c6c-442a-a133-26b6f6c45b90_2.db142c19ba0cf6665807ffcb4da0cd41-300x300.jpeg', 10, 1, '2021-11-24 19:37:02', '2021-11-24 19:39:14'),
(13, 'Tay Cầm Sony DualShock 4 PS4 Đen BLACK Hàng Renew + Cáp USB Chơi Game Tối Ưu Cho PC / FO4 / FIFA', '<p><strong>Tay Cầm Sony DualShock 4 PS4 Đen BLACK + C&aacute;p USB Chơi Game Tối Ưu Cho PC / FO4 / FIFA | H&Agrave;NG MỚI VỀ</strong></p>\r\n\r\n<p><img alt=\"Tay Cầm Sony DualShock 4 PS4 Đen BLACK + Cáp USB Chơi Game Tối Ưu Cho PC / FO4 / FIFA | HÀNG MỚI VỀ\" src=\"https://shoptaycam.com/wp-content/uploads/2021/07/tay-cam-ps4-reenew-1024x768.png\" style=\"height:765px; width:1020px\" /></p>\r\n\r\n<p>Tay Cầm Sony DualShock 4 PS4 Đen BLACK + C&aacute;p USB Chơi Game Tối Ưu Cho PC / FO4 / FIFA | H&Agrave;NG MỚI VỀ</p>\r\n\r\n<p><strong>Bộ sản phẩm Tay cầm&nbsp;Sony DualShock 4 bao gồm:</strong></p>\r\n\r\n<ol>\r\n	<li>&ndash; 01 tay cầm ch&iacute;nh h&atilde;ng m&agrave;u đen black nobox</li>\r\n	<li>&ndash; tặng k&egrave;m 01 d&acirc;y sạc tay cầm kết nối c&oacute; d&acirc;y</li>\r\n	<li>&ndash; tặng k&egrave;m 01 Bộ bọc cần cực tốt cho Dual Shock 4</li>\r\n	<li>&ndash; Trợ gi&aacute; mua&nbsp;<a href=\"https://shoptaycam.com/san-pham/usb-blutooth-csr-4-0-dongle-hang-xin-toi-uu-ket-noi-cho-pc-xbox-one-s-dual-shock-4-loa-dien-thoai-ban-chay/\"><strong>USB Blutooth 4.0</strong></a>&nbsp;Với Gi&aacute; l&agrave; 9<strong>0.000 VNĐ</strong></li>\r\n</ol>\r\n\r\n<ul>\r\n	<li><strong>Bảo H&agrave;nh: 1 đổi trong 01 th&aacute;ng</strong></li>\r\n</ul>\r\n\r\n<p><img alt=\"Tay Cầm Sony DualShock 4 PS4 Đen BLACK + Cáp USB Chơi Game Tối Ưu Cho PC / FO4 / FIFA | HÀNG MỚI VỀ\" src=\"https://shoptaycam.com/wp-content/uploads/2021/07/tay-cam-ps4-reenew-2-1024x679.png\" style=\"height:676px; width:1020px\" /></p>\r\n\r\n<p><strong>Tay Cầm Sony DualShock 4 PS4 Đen BLACK + C&aacute;p USB Chơi Game Tối Ưu Cho PC / FO4 / FIFA | H&Agrave;NG MỚI VỀ</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://shoptaycam.com/wp-content/uploads/2021/07/5e35ba5e-5c6c-442a-a133-26b6f6c45b90_2.db142c19ba0cf6665807ffcb4da0cd41-1024x963.jpeg\" style=\"height:959px; width:1020px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://shoptaycam.com/wp-content/uploads/2021/07/8205acd9-9e9a-4948-80c3-da81b63575d3_1.dc35527ca824446f516d11951d5a7430.jpeg\" style=\"height:1000px; width:1000px\" /></p>\r\n\r\n<ul>\r\n	<li><strong>Phần M&ecirc;m DS4</strong>&nbsp;Hỗ Trợ Kết Dualshock PS4 Nối PC Laptop :<a href=\"https://github.com/Ryochan7/DS4Windows/releases\"><strong>&nbsp;https://github.com/Ryochan7/DS4Windows/releases</strong></a></li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><strong>Tay cầm Sony DualShock 4 PS4</strong>&nbsp;phi&ecirc;n bản được Sony cải tiến một số chi tiết như: xuất hiện dải đ&egrave;n LED tr&ecirc;n touch pad gi&uacute;p game thủ định vị tay cầm tốt hơn trong điều kiện thiếu s&aacute;ng cũng như ph&acirc;n biệt với tay cầm của người chơi kh&aacute;c, bộ n&uacute;t điều khiển được thay đổi th&agrave;nh đen nh&aacute;m gi&uacute;p b&aacute;m tay hơn.</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><strong>Tay cầm Sony DualShock 4 PS4</strong>&nbsp;l&agrave; tay cầm thế hệ mới được Sony ph&aacute;t triển d&agrave;nh ri&ecirc;ng cho m&aacute;y Playstation 4 nhằm định nghĩa c&aacute;ch m&agrave; c&aacute;c game tr&ecirc;n hệ m&aacute;y Next-Gen n&ecirc;n được điều khiển, DualShock&reg;4 l&agrave; sự kết hợp của những t&iacute;nh năng mới cộng với cơ chế điều khiển tự do ch&iacute;nh x&aacute;c. C&aacute;c cần angalog được cải tiến v&agrave; cac n&uacute;t c&ograve; cho ph&eacute;p người chơi thao t&aacute;c với độ ch&iacute;nh x&aacute;c cực cao, trong khi đ&oacute; c&aacute;c c&ocirc;ng nghệ ti&ecirc;n tiến mới như touch pad đa điểm, loa v&agrave; đ&egrave;n t&iacute;ch hợp cho ph&eacute;p người chơi c&oacute; những c&aacute;ch trải nghiệm v&agrave; tương t&aacute;c mới mẻ với những tựa game Next-Gen. Chưa kể tới việc th&ecirc;m v&agrave;o n&uacute;t Share cho ph&eacute;p bạn ăn mừng v&agrave; Upload c&aacute;c gi&acirc;y ph&uacute;t tuyệt vời của bạn tr&ecirc;n m&aacute;y PS4 chỉ với một n&uacute;t bấm.</li>\r\n	<li><strong>Tay cầm Sony DualShock 4 PS4 c&oacute;&nbsp;</strong>Khả năng điều khiển ch&iacute;nh x&aacute;c</li>\r\n</ul>\r\n\r\n<p>Cảm nhận, h&igrave;nh d&aacute;ng, v&agrave; độ nhạy của c&aacute;c cần analog v&agrave; n&uacute;t c&ograve; DualShock&reg;4 đ&atilde; được n&acirc;ng cấp nhằm cho ph&eacute;p người chơi khả năng điều khiển tuyệt đối với c&aacute;c game tr&ecirc;n PS4. Đ&egrave;n t&iacute;ch hợp ở trong tay cầm ngo&agrave;i việc cho đẹp c&ograve;n c&oacute; t&aacute;c dụng thể hiện c&aacute;c th&ocirc;ng số trong một số game, ngo&agrave;i ra đ&egrave;n n&agrave;y c&ograve;n đ&oacute;ng vai tr&ograve; thay thế cho PSmove trong việc tương t&aacute;c với c&aacute;c ứng dụng hoặc game.</p>\r\n\r\n<ul>\r\n	<li><strong>Tay cầm Sony DualShock 4 PS4&nbsp;</strong>Khả năng chia sẻ trong tầm tay của tay cầm</li>\r\n</ul>\r\n\r\n<p>Việc th&ecirc;m v&agrave;o n&uacute;t Share khiến việc chia sẻ những khoảnh khắc tuyệt vời đơn giản chỉ với một n&uacute;t bấm. Upload c&aacute;c đoạn gameplay v&agrave; screenshots trực tiếp từ m&aacute;y PS4 hoặc live-stream c&aacute;c đoạn gameplay của bạn, tất cả trở n&ecirc;n thật đơn giản v&agrave; quan trọng nhất l&agrave; n&oacute; kh&ocirc;ng l&agrave;m gi&aacute;n đoạn qu&aacute; tr&igrave;nh chơi của bạn.</p>\r\n\r\n<ul>\r\n	<li><strong>Tay cầm Sony DualShock 4 PS4&nbsp;</strong>Mang lại một trải nghiệm mới: C&aacute;c t&iacute;nh năng mang t&iacute;nh đột ph&aacute; như touch pad, đ&egrave;n v&agrave; loa t&iacute;ch hợp mang lại người chơi những trải nghiệm mới mẽ v&agrave; tr&ecirc;n tay cầm c&oacute; t&iacute;ch hợp jack cắm headset cộng với jack 3.5mm cho cung cấp cho người chơi một c&aacute;ch thức giao tiếp tiện nghi trong c&aacute;c trận chi&ecirc;n đ&ocirc;ng thới cung cấp giải ph&aacute;p &acirc;mt hanh cho c&aacute;c game thủ muốn trải nghiệm game một c&aacute;ch ri&ecirc;ng tư m&agrave; kh&ocirc;ng bị ai quấy rầy. Nhưng bạn phải lưu &yacute; khả năng chat voice chỉ c&oacute; thể hoạt động tốt nhất với headset k&egrave;m theo v&agrave; c&oacute; thể kh&ocirc;ng tương th&iacute;ch với một số tai nghe nhất định.</li>\r\n	<li><strong>Tay cầm Sony DualShock 4 PS4&nbsp;</strong>Sạc hiệu quả &ndash; tay cầm c&oacute; thể dễ d&agrave;ng sạc bằng c&aacute;ch cấm v&agrave;o m&aacute;y PS4, tay cầm sẽ được sạc ngay cả khi m&aacute;y ở trong chế độ Standby, hoặc bạn c&oacute; thể kết nối tay cầm với bất kỳ c&aacute;c cổng USB kh&aacute;c để sạc chỉ với một sợi d&acirc;y mico-USB.</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><strong>Th&ocirc;ng số kĩ thuật của tay cầm&nbsp;Sony DualShock 4 PS4</strong></li>\r\n</ul>\r\n\r\n<p>&ndash; K&iacute;ch thước (d&agrave;i-rộng-cao): 162mm x x 98mm x 52mm (Gần như kh&ocirc;ng kh&aacute;c biệt g&igrave; với DualShock 3: 160mm x 97mm x 55mm).</p>\r\n\r\n<p>&ndash; C&acirc;n nặng: 210g (DualShock 192g).</p>\r\n\r\n<p>&ndash; C&aacute;c n&uacute;t bấm kh&ocirc;ng c&oacute; nhiều thay đổi ngo&agrave;i 2 ph&iacute;m select v&agrave; start được thay thế bởi touchpad, bổ sung n&uacute;t share.</p>\r\n\r\n<p>&ndash; Touchpad: cảm ứng điện dung nhận diện 2 điểm v&agrave; c&oacute; thể click được.</p>\r\n\r\n<p>&ndash; Cảm biến chuyển động Six-Axis, đ&egrave;n LED phối hợp c&ugrave;ng Eye Toy để x&aacute;c định vị tr&iacute;.</p>\r\n\r\n<p>&ndash; Đ&egrave;n LED với khả năng hiển thị 3 m&agrave;u đ&oacute;ng vai tr&ograve; cung cấp th&ocirc;ng tin cho người chơi, v&iacute; dụ như t&igrave;nh trạng của nh&acirc;n vật.</p>\r\n\r\n<p>&ndash; Cổng kết nối: USB (micro B), headphone (giao tiếp tương tự PSP).</p>\r\n\r\n<p>&ndash; Pin Li-ion 800mAh.</p>', '<h4>Khuyến m&atilde;i hot nhất:</h4>\r\n\r\n<ul>\r\n	<li>- Tặng&nbsp;ngay Giftcard l&ecirc;n tới 50K cho đơn h&agrave;ng tr&ecirc;n 2.000.000 VNĐ</li>\r\n	<li>- Tặng ngay Giftcard l&ecirc;n tới 100K cho đơn h&agrave;ng tr&ecirc;n 5.000.000 VNĐ</li>\r\n	<li>- Phiếu mua h&agrave;ng trị gi&aacute; 50.000 VNĐ trong lần mua h&agrave;ng tiếp theo tại SHOP</li>\r\n</ul>', 7, 1200000, 950000, '/storage/uploads/2021/11/25/tay-cam-ps4-reenew-300x300.png', 10, 1, '2021-11-24 19:52:08', '2021-11-24 22:20:55'),
(14, 'Tay Cầm Sony DualSense 5 PS5 Đỏ Cosmic Red Chĩnh Hãng Top Gamepad Cho PC / FO4 / FIFA', '<p>Tay Cầm Sony DualSense 5 PS5 Đỏ Cosmic Red Chĩnh H&atilde;ng Top Gamepad Cho PC / FO4 / FIFA | H&Agrave;NG NHẬP KHẨU</p>\r\n\r\n<p><img alt=\"\" src=\"https://shoptaycam.com/wp-content/uploads/2021/08/ps5-red-1024x765.png\" style=\"height:762px; width:1020px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://shoptaycam.com/wp-content/uploads/2021/08/ps5-red-2-1024x768.png\" style=\"height:765px; width:1020px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://shoptaycam.com/wp-content/uploads/2021/08/ps5-black-vs-red-1024x682.png\" style=\"height:679px; width:1020px\" /></p>', '<h4>Khuyến m&atilde;i hot nhất:</h4>\r\n\r\n<ul>\r\n	<li>- Tặng&nbsp;ngay Giftcard l&ecirc;n tới 50K cho đơn h&agrave;ng tr&ecirc;n 2.000.000 VNĐ</li>\r\n	<li>- Tặng ngay Giftcard l&ecirc;n tới 100K cho đơn h&agrave;ng tr&ecirc;n 5.000.000 VNĐ</li>\r\n	<li>- Phiếu mua h&agrave;ng trị gi&aacute; 50.000 VNĐ trong lần mua h&agrave;ng tiếp theo tại SHOP</li>\r\n</ul>', 7, 2500000, 1900000, '/storage/uploads/2021/11/25/ps5-red-300x300.png', 10, 1, '2021-11-24 20:29:57', '2021-11-24 22:20:43'),
(15, 'Tay Cầm Sony DualShock 4 PS4 Chĩnh Hãng Màu Xanh Midnight Blue + Cáp USB Chơi Game Tối Ưu Cho PC / FO4 / FIFA', '<p><strong>Tay Cầm Sony DualShock 4 PS4 Chĩnh H&atilde;ng M&agrave;u Xanh Midnight Blue + C&aacute;p USB Chơi Game Tối Ưu Cho PC / FO4 / FIFA | B&Aacute;N CHẠY &ndash; FREESHIP</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://shoptaycam.com/wp-content/uploads/2019/01/ps4-midnight-1024x766.png\" style=\"height:763px; width:1020px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://shoptaycam.com/wp-content/uploads/2019/01/8a99035b-07e4-47b8-b896-b63e654af74f_2.14fd907615d123877dbcc58574f1296b-1-1024x983.jpeg\" style=\"height:979px; width:1020px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://shoptaycam.com/wp-content/uploads/2019/01/tay-cam-choi-game-tay-cam-dualshock-4-ps4-chinh-hang-tai-ha-noi-tphcm-uy-tin-mau-xanh-duong-Midnight-Blue-1-1024x709.jpg\" style=\"height:706px; width:1020px\" /></p>\r\n\r\n<p>Ngo&agrave;i tay cầm Xbox One S đang được rất nhiều GAME thủ Chuy&ecirc;n Nghiệp, Cao Thủ hay c&aacute;c Youtuber nổi tiếng l&agrave;ng FIFA đang sử dụng th&igrave;&nbsp;<strong>tay cầm Sony DualShock 4 PS4</strong>&nbsp;cũng l&agrave; 1 trong những tay cầm TỐT NHẤT hiện nay AE c&oacute; thể sử dụng tr&ecirc;n PC / thi đấu FO4 / FIFA ONLINE 4 V&agrave; đặt biệt những ai đ&atilde; l&agrave;m quen với c&aacute;c tay cầm tr&ecirc;n thệ thống PS2 PS3 PS4</p>\r\n\r\n<p>Theo đ&aacute;nh gi&aacute; từ<strong>&nbsp;#Shoptaycam.com</strong>&nbsp;PS4 c&ugrave;ng với ONE S l&agrave; 2 tay cầm Cao Cấp b&aacute;n chạy nhất v&agrave; gi&aacute; trị sử dụng tốt nhất đến AE Game thủ ( PS4 C&ograve;n tốt cho ae đ&atilde; l&agrave;m quen với việc đ&aacute; PES từ thời PS2 vs PS3 v&igrave; Form gần như kh&ocirc;ng nhiều thay đổi ) v&agrave; Dualshock ( Tay PS4 ) Đang l&agrave; mẫu tay cầm cao cấp nhất của SONY</p>\r\n\r\n<p>Mẫu tay cầm&nbsp;<strong>DualShock 4 PS4</strong>&nbsp;được<strong>&nbsp;Shoptaycam&nbsp;</strong>ph&acirc;n phối l&agrave; mẫu ch&iacute;nh h&atilde;ng của Sony Việt Nam V&agrave; được bảo h&agrave;nh 12 Th&aacute;ng</p>\r\n\r\n<ul>\r\n	<li><strong>Gi&aacute; sản phẩm</strong>: Gi&aacute; Thị Trường&nbsp;<strong>1.390.000</strong>&nbsp;<strong>VNĐ</strong>&ndash;&gt; Giảm chỉ c&ograve;n&nbsp;<strong>1.350.000 VNĐ gi&agrave;nh cho</strong>&nbsp;100 Bạn Đặt H&agrave;ng Sớm Nhất Đến 31-02-2019</li>\r\n	<li><strong>Bảo h&agrave;nh:&nbsp;</strong>Bảo h&agrave;nh&nbsp;ch&iacute;nh h&atilde;ng 12 th&aacute;ng tại trung t&acirc;m bảo h&agrave;nh Sony</li>\r\n</ul>\r\n\r\n<p><strong>Bộ sản phẩm Tay cầm&nbsp;Sony DualShock 4 PS4 Chĩnh H&atilde;ng bao gồm:</strong></p>\r\n\r\n<ol>\r\n	<li>&ndash; 01 tay cầm ch&iacute;nh h&atilde;ng m&agrave;u&nbsp;<strong>Xanh Midnight Blue</strong>&nbsp;+ hộp fullbox như h&igrave;nh + giấy bảo h&agrave;nh</li>\r\n	<li>&ndash; tặng k&egrave;m 01 d&acirc;y sạc tay cầm kết nối c&oacute; d&acirc;y</li>\r\n	<li>&ndash; tặng k&egrave;m 01 Bộ bọc cần cực tốt cho Dual Shock 4 Như H&igrave;nh Dưới</li>\r\n	<li>&ndash; Trợ gi&aacute; mua&nbsp;<a href=\"https://shoptaycam.com/san-pham/usb-blutooth-csr-4-0-dongle-hang-xin-toi-uu-ket-noi-cho-pc-xbox-one-s-dual-shock-4-loa-dien-thoai-ban-chay/\"><strong>USB Blutooth 4.0</strong></a>&nbsp;Với Gi&aacute; l&agrave;&nbsp;<strong>50.000 VNĐ&nbsp;</strong></li>\r\n</ol>\r\n\r\n<ul>\r\n	<li><strong>Vận Chuyển: HOT Miễn Ph&iacute; Vận Chuyển COD To&agrave;n Quốc&nbsp;</strong><strong>gi&agrave;nh cho</strong>&nbsp;100 Bạn Đặt H&agrave;ng Sớm Nhất</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><strong>Phần M&ecirc;m DS4</strong>&nbsp;Hỗ Trợ Kết Dualshock PS4 Nối PC Laptop :<a href=\"https://github.com/Ryochan7/DS4Windows/releases\"><strong>&nbsp;https://github.com/Ryochan7/DS4Windows/releases</strong></a></li>\r\n</ul>\r\n\r\n<p><img alt=\"\" src=\"https://shoptaycam.com/wp-content/uploads/2019/01/tay-cam-choi-game-tay-cam-dualshock-4-ps4-chinh-hang-tai-ha-noi-tphcm-uy-tin-mau-xanh-duong-Midnight-Blue-1-4-1024x709.jpg\" style=\"height:706px; width:1020px\" />&nbsp;<img alt=\"\" src=\"https://shoptaycam.com/wp-content/uploads/2019/01/tay-cam-choi-game-tay-cam-dualshock-4-ps4-chinh-hang-tai-ha-noi-tphcm-uy-tin-mau-xanh-duong-Midnight-Blue-1-3-1024x709.jpg\" style=\"height:706px; width:1020px\" /></p>\r\n\r\n<ul>\r\n	<li><strong>Tay cầm Sony DualShock 4 PS4</strong>&nbsp;phi&ecirc;n bản được Sony cải tiến một số chi tiết như: xuất hiện dải đ&egrave;n LED tr&ecirc;n touch pad gi&uacute;p game thủ định vị tay cầm tốt hơn trong điều kiện thiếu s&aacute;ng cũng như ph&acirc;n biệt với tay cầm của người chơi kh&aacute;c, bộ n&uacute;t điều khiển được thay đổi th&agrave;nh đen nh&aacute;m gi&uacute;p b&aacute;m tay hơn.</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><strong>Tay cầm Sony DualShock 4 PS4</strong>&nbsp;l&agrave; tay cầm thế hệ mới được Sony ph&aacute;t triển d&agrave;nh ri&ecirc;ng cho m&aacute;y Playstation 4 nhằm định nghĩa c&aacute;ch m&agrave; c&aacute;c game tr&ecirc;n hệ m&aacute;y Next-Gen n&ecirc;n được điều khiển, DualShock&reg;4 l&agrave; sự kết hợp của những t&iacute;nh năng mới cộng với cơ chế điều khiển tự do ch&iacute;nh x&aacute;c. C&aacute;c cần angalog được cải tiến v&agrave; cac n&uacute;t c&ograve; cho ph&eacute;p người chơi thao t&aacute;c với độ ch&iacute;nh x&aacute;c cực cao, trong khi đ&oacute; c&aacute;c c&ocirc;ng nghệ ti&ecirc;n tiến mới như touch pad đa điểm, loa v&agrave; đ&egrave;n t&iacute;ch hợp cho ph&eacute;p người chơi c&oacute; những c&aacute;ch trải nghiệm v&agrave; tương t&aacute;c mới mẻ với những tựa game Next-Gen. Chưa kể tới việc th&ecirc;m v&agrave;o n&uacute;t Share cho ph&eacute;p bạn ăn mừng v&agrave; Upload c&aacute;c gi&acirc;y ph&uacute;t tuyệt vời của bạn tr&ecirc;n m&aacute;y PS4 chỉ với một n&uacute;t bấm.</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><strong>Tay cầm Sony DualShock 4 PS4 c&oacute;&nbsp;</strong>Khả năng điều khiển ch&iacute;nh x&aacute;c</li>\r\n</ul>\r\n\r\n<p>Cảm nhận, h&igrave;nh d&aacute;ng, v&agrave; độ nhạy của c&aacute;c cần analog v&agrave; n&uacute;t c&ograve; DualShock&reg;4 đ&atilde; được n&acirc;ng cấp nhằm cho ph&eacute;p người chơi khả năng điều khiển tuyệt đối với c&aacute;c game tr&ecirc;n PS4. Đ&egrave;n t&iacute;ch hợp ở trong tay cầm ngo&agrave;i việc cho đẹp c&ograve;n c&oacute; t&aacute;c dụng thể hiện c&aacute;c th&ocirc;ng số trong một số game, ngo&agrave;i ra đ&egrave;n n&agrave;y c&ograve;n đ&oacute;ng vai tr&ograve; thay thế cho PSmove trong việc tương t&aacute;c với c&aacute;c ứng dụng hoặc game.</p>\r\n\r\n<ul>\r\n	<li><strong>Tay cầm Sony DualShock 4 PS4&nbsp;</strong>Khả năng chia sẻ trong tầm tay của tay cầm</li>\r\n</ul>\r\n\r\n<p>Việc th&ecirc;m v&agrave;o n&uacute;t Share khiến việc chia sẻ những khoảnh khắc tuyệt vời đơn giản chỉ với một n&uacute;t bấm. Upload c&aacute;c đoạn gameplay v&agrave; screenshots trực tiếp từ m&aacute;y PS4 hoặc live-stream c&aacute;c đoạn gameplay của bạn, tất cả trở n&ecirc;n thật đơn giản v&agrave; quan trọng nhất l&agrave; n&oacute; kh&ocirc;ng l&agrave;m gi&aacute;n đoạn qu&aacute; tr&igrave;nh chơi của bạn.</p>\r\n\r\n<ul>\r\n	<li><strong>Tay cầm Sony DualShock 4 PS4&nbsp;</strong>Mang lại một trải nghiệm mới: C&aacute;c t&iacute;nh năng mang t&iacute;nh đột ph&aacute; như touch pad, đ&egrave;n v&agrave; loa t&iacute;ch hợp mang lại người chơi những trải nghiệm mới mẽ v&agrave; tr&ecirc;n tay cầm c&oacute; t&iacute;ch hợp jack cắm headset cộng với jack 3.5mm cho cung cấp cho người chơi một c&aacute;ch thức giao tiếp tiện nghi trong c&aacute;c trận chi&ecirc;n đ&ocirc;ng thới cung cấp giải ph&aacute;p &acirc;mt hanh cho c&aacute;c game thủ muốn trải nghiệm game một c&aacute;ch ri&ecirc;ng tư m&agrave; kh&ocirc;ng bị ai quấy rầy. Nhưng bạn phải lưu &yacute; khả năng chat voice chỉ c&oacute; thể hoạt động tốt nhất với headset k&egrave;m theo v&agrave; c&oacute; thể kh&ocirc;ng tương th&iacute;ch với một số tai nghe nhất định.</li>\r\n	<li><strong>Tay cầm Sony DualShock 4 PS4&nbsp;</strong>Sạc hiệu quả &ndash; tay cầm c&oacute; thể dễ d&agrave;ng sạc bằng c&aacute;ch cấm v&agrave;o m&aacute;y PS4, tay cầm sẽ được sạc ngay cả khi m&aacute;y ở trong chế độ Standby, hoặc bạn c&oacute; thể kết nối tay cầm với bất kỳ c&aacute;c cổng USB kh&aacute;c để sạc chỉ với một sợi d&acirc;y mico-USB.</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><strong>Th&ocirc;ng số kĩ thuật của tay cầm&nbsp;Sony DualShock 4 PS4</strong></li>\r\n</ul>\r\n\r\n<p>&ndash; K&iacute;ch thước (d&agrave;i-rộng-cao): 162mm x x 98mm x 52mm (Gần như kh&ocirc;ng kh&aacute;c biệt g&igrave; với DualShock 3: 160mm x 97mm x 55mm).</p>\r\n\r\n<p>&ndash; C&acirc;n nặng: 210g (DualShock 192g).</p>\r\n\r\n<p>&ndash; C&aacute;c n&uacute;t bấm kh&ocirc;ng c&oacute; nhiều thay đổi ngo&agrave;i 2 ph&iacute;m select v&agrave; start được thay thế bởi touchpad, bổ sung n&uacute;t share.</p>\r\n\r\n<p>&ndash; Touchpad: cảm ứng điện dung nhận diện 2 điểm v&agrave; c&oacute; thể click được.</p>\r\n\r\n<p>&ndash; Cảm biến chuyển động Six-Axis, đ&egrave;n LED phối hợp c&ugrave;ng Eye Toy để x&aacute;c định vị tr&iacute;.</p>\r\n\r\n<p>&ndash; Đ&egrave;n LED với khả năng hiển thị 3 m&agrave;u đ&oacute;ng vai tr&ograve; cung cấp th&ocirc;ng tin cho người chơi, v&iacute; dụ như t&igrave;nh trạng của nh&acirc;n vật.</p>\r\n\r\n<p>&ndash; Cổng kết nối: USB (micro B), headphone (giao tiếp tương tự PSP).</p>\r\n\r\n<p>&ndash; Pin Li-ion 1000mAh.</p>\r\n\r\n<p><img alt=\"\" src=\"https://shoptaycam.com/wp-content/uploads/2019/01/tay-cam-choi-game-tay-cam-dualshock-4-ps4-chinh-hang-tai-ha-noi-tphcm-uy-tin-mau-xanh-duong-Midnight-Blue-1-2-1024x709.jpg\" style=\"height:706px; width:1020px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://shoptaycam.com/wp-content/uploads/2019/01/tay-cam-choi-game-tay-cam-dualshock-4-ps4-chinh-hang-tai-ha-noi-tphcm-uy-tin-gia-re-shoptaycam-1024x576.jpg\" style=\"height:574px; width:1020px\" /></p>', '<h4>Khuyến m&atilde;i hot nhất:</h4>\r\n\r\n<ul>\r\n	<li>- Tặng&nbsp;ngay Giftcard l&ecirc;n tới 50K cho đơn h&agrave;ng tr&ecirc;n 2.000.000 VNĐ</li>\r\n	<li>- Tặng ngay Giftcard l&ecirc;n tới 100K cho đơn h&agrave;ng tr&ecirc;n 5.000.000 VNĐ</li>\r\n	<li>- Phiếu mua h&agrave;ng trị gi&aacute; 50.000 VNĐ trong lần mua h&agrave;ng tiếp theo tại SHOP</li>\r\n</ul>', 7, 4200000, 3950000, '/storage/uploads/2021/11/25/8a99035b-07e4-47b8-b896-b63e654af74f_2.14fd907615d123877dbcc58574f1296b-300x300.jpeg', 10, 1, '2021-11-24 21:24:39', '2021-11-24 21:24:39'),
(16, 'Tay Cầm Xbox One S Trắng Phantom White Edition + Cáp Cable USB Chơi Game Tối Ưu Cho FO4 / FIFA / PC', '<p><strong>Tay Cầm Xbox One S Trắng Phantom White Edition + C&aacute;p Cable USB Chơi Game Tối Ưu Cho FO4 / FIFA / PC | H&Agrave;NG MỚI VỀ</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://shoptaycam.com/wp-content/uploads/2021/09/one-s-trang-shadow-1024x769.png\" style=\"height:766px; width:1020px\" /></p>\r\n\r\n<p>&ndash;&nbsp;<strong>Gi&aacute; thị trường</strong>&nbsp;<strong>1.890.000 &ndash; 2.150.000 VND</strong>&nbsp;&ndash;&gt; Giảm Chỉ C&ograve;n&nbsp;<strong>1.490.000 VNĐ</strong>&nbsp;Đến&nbsp;<strong>30/12/2021</strong></p>\r\n\r\n<p>&ndash;&nbsp;<strong>Bảo H&agrave;nh</strong>:&nbsp;<strong>1 Đổi 1 Trong 3 ng&agrave;y, Bảo h&agrave;nh 06 Th&aacute;ng</strong></p>\r\n\r\n<p><strong>&ndash; H&atilde;ng Sản Xuất</strong>: Microsoft</p>\r\n\r\n<p>&ndash;&nbsp;<strong>M&agrave;u Sắc</strong>: Trắng Phantom White như ảnh</p>\r\n\r\n<p>&ndash;&nbsp;<strong>Đ&oacute;ng Hộ</strong>p: Tay cầm Xbox One S Phantom White + Cab USB + Bộ bọc cần analog tối ưu bảo vệ tay cầm</p>\r\n\r\n<p><img alt=\"\" src=\"https://shoptaycam.com/wp-content/uploads/2021/09/one-s-phantom-white-1024x680.png\" style=\"height:677px; width:1020px\" /></p>', '<h4>Khuyến m&atilde;i hot nhất:</h4>\r\n\r\n<ul>\r\n	<li>- Tặng&nbsp;ngay Giftcard l&ecirc;n tới 50K cho đơn h&agrave;ng tr&ecirc;n 2.000.000 VNĐ</li>\r\n	<li>- Tặng ngay Giftcard l&ecirc;n tới 100K cho đơn h&agrave;ng tr&ecirc;n 5.000.000 VNĐ</li>\r\n	<li>- Phiếu mua h&agrave;ng trị gi&aacute; 50.000 VNĐ trong lần mua h&agrave;ng tiếp theo tại SHOP</li>\r\n</ul>', 6, 2400000, 2199000, '/storage/uploads/2021/11/25/one-s-trang-shadow-300x300.png', 10, 1, '2021-11-24 21:27:04', '2021-11-24 21:27:04'),
(17, 'Tay Cầm Xbox One S Trắng WHITE + Cáp Cable USB Chơi Game Tối Ưu Cho FO4 / FIFA / PC', '<p><strong>Tay Cầm Xbox One S Trắng WHITE + C&aacute;p Cable USB Chơi Game Tối Ưu Cho FO4 / FIFA / PC | H&Agrave;NG MỚI VỀ</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://shoptaycam.com/wp-content/uploads/2021/06/ONE-S-TR%E1%BA%AENG-RENEW-1024x768.png\" style=\"height:765px; width:1020px\" /></p>\r\n\r\n<p>&ndash;&nbsp;<strong>Gi&aacute; thị trường</strong>&nbsp;<strong>1.350.000 &ndash; 1.650.000 VND</strong>&nbsp;&ndash;&gt; Giảm Chỉ C&ograve;n&nbsp;<strong>1.190.000 VNĐ</strong>&nbsp;Đến&nbsp;<strong>30/12/2021</strong></p>\r\n\r\n<p>&ndash;&nbsp;<strong>Bảo H&agrave;nh</strong>:&nbsp;<strong>1 Đổi 1 Trong 3 ng&agrave;y, Bảo h&agrave;nh 06 Th&aacute;ng</strong></p>\r\n\r\n<p><strong>&ndash; H&atilde;ng Sản Xuất</strong>: Microsoft</p>\r\n\r\n<p>&ndash;&nbsp;<strong>M&agrave;u Sắc</strong>: Trắng</p>\r\n\r\n<p>&ndash;&nbsp;<strong>Đ&oacute;ng Hộ</strong>p: Tay cầm Xbox One S Trắng + Cab USB + Bộ bọc cần analog tối ưu bảo vệ tay cầm</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&ndash;&nbsp;<strong>Hỗ Trợ&nbsp;Kết nối</strong>: tay cầm Xbox One S Ch&iacute;nh h&atilde;ng shop ph&acirc;n phối hỗ trợ kết nối</p>\r\n\r\n<p>1.&nbsp;<strong>Kh&ocirc;ng D&acirc;y</strong>&nbsp;( Bạn cần th&ecirc;m 1 Wireless Adapter )</p>\r\n\r\n<p>2.&nbsp;<strong>Bluetooth</strong>&nbsp;( Nếu bạn d&ugrave;ng PC kh&ocirc;ng c&oacute; Blutooth cần mua th&ecirc;m USB 4.0 hỗ trợ bluetooth&nbsp; v&agrave; Laptop c&oacute; Blutooth th&igrave; bạn sử dụng Xbox One S 1 c&aacute;ch b&igrave;nh thường bằng kh&ocirc;ng d&acirc;y )</p>\r\n\r\n<p>3.&nbsp;<strong>C&oacute; D&acirc;y:</strong>&nbsp;Bạn cắm Trực tiếp v&agrave;o d&acirc;y C&aacute;p USB Biến Xbox One S th&agrave;nh 1 tay cầm c&oacute; d&acirc;y với tốc độ ổn định</p>\r\n\r\n<p>&ndash;&nbsp;<strong>Hỗ Trợ Window</strong>: WIN 10, WIN 8 v&agrave; WIN 7</p>\r\n\r\n<p>&ndash; Phần mềm hỗ trợ Window 7:&nbsp;<strong>http://digiex.net/downloads/download-center-2-0/xbox-one-content/apps-pc/13601-xbox-one-controller-usb-drivers-windows-pc-download.html</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://shoptaycam.com/wp-content/uploads/2018/06/Tay-cam-xbox-one-s-chinh-hang-co-day-cap-usb-cho-pc-bluetooth-gia-tai-ha-noi-tphcm-shoptaycam.com-08-1024x788.jpg\" style=\"height:785px; width:1020px\" /><img alt=\"\" src=\"https://shoptaycam.com/wp-content/uploads/2018/06/Tay-cam-xbox-one-s-chinh-hang-co-day-cap-usb-cho-pc-bluetooth-gia-tai-ha-noi-tphcm-shoptaycam.com-09-1024x782.jpg\" style=\"height:779px; width:1020px\" /><img alt=\"\" src=\"https://shoptaycam.com/wp-content/uploads/2018/06/Tay-cam-xbox-one-s-chinh-hang-co-day-cap-usb-cho-pc-bluetooth-gia-tai-ha-noi-tphcm-shoptaycam.com-10-1024x776.jpg\" style=\"height:773px; width:1020px\" /><img alt=\"\" src=\"https://shoptaycam.com/wp-content/uploads/2021/06/ONE-S-TR%E1%BA%AENG-RENEW-2-1024x682.png\" style=\"height:679px; width:1020px\" /></p>', '<h4>Khuyến m&atilde;i hot nhất:</h4>\r\n\r\n<ul>\r\n	<li>- Tặng&nbsp;ngay Giftcard l&ecirc;n tới 50K cho đơn h&agrave;ng tr&ecirc;n 2.000.000 VNĐ</li>\r\n	<li>- Tặng ngay Giftcard l&ecirc;n tới 100K cho đơn h&agrave;ng tr&ecirc;n 5.000.000 VNĐ</li>\r\n	<li>- Phiếu mua h&agrave;ng trị gi&aacute; 50.000 VNĐ trong lần mua h&agrave;ng tiếp theo tại SHOP</li>\r\n</ul>', 6, 1300000, 1200000, '/storage/uploads/2021/11/25/ONE-S-TRẮNG-RENEW-300x300.png', 10, 1, '2021-11-24 21:29:50', '2021-11-24 21:29:50'),
(18, 'Tay Cầm Xbox One S Xanh MineCraft Creeper + Cáp Cable USB Chơi Game Tối Ưu Cho FO4 / FIFA / PC', '<p><strong>Tay Cầm Xbox One S Xanh MineCraft Creeper + C&aacute;p Cable USB Chơi Game Tối Ưu Cho FO4 / FIFA / PC | H&Agrave;NG MỚI VỀ</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://shoptaycam.com/wp-content/uploads/2021/09/one-s-craf-1024x764.png\" style=\"height:761px; width:1020px\" /></p>\r\n\r\n<p>&ndash;&nbsp;<strong>Gi&aacute; thị trường</strong>&nbsp;<strong>1.650.000 &ndash; 1.850.000 VND</strong>&nbsp;&ndash;&gt; Giảm Chỉ C&ograve;n&nbsp;<strong>1.490.000 VNĐ</strong>&nbsp;Đến&nbsp;<strong>30/12/2021</strong></p>\r\n\r\n<p>&ndash;&nbsp;<strong>Bảo H&agrave;nh</strong>:&nbsp;<strong>1 Đổi 1 Trong 3 ng&agrave;y, Bảo h&agrave;nh 06 Th&aacute;ng</strong></p>\r\n\r\n<p><strong>&ndash; H&atilde;ng Sản Xuất</strong>: Microsoft</p>\r\n\r\n<p>&ndash;&nbsp;<strong>M&agrave;u Sắc</strong>: Xanh</p>\r\n\r\n<p>&ndash;&nbsp;<strong>Đ&oacute;ng Hộ</strong>p: Tay cầm Xbox One S Trắng + Cab USB + Bộ bọc cần analog tối ưu bảo vệ tay cầm</p>\r\n\r\n<p><img alt=\"\" src=\"https://shoptaycam.com/wp-content/uploads/2021/09/one-s-craf-2-1024x767.png\" style=\"height:764px; width:1020px\" /></p>\r\n\r\n<p>&ndash;&nbsp;<strong>Hỗ Trợ&nbsp;Kết nối</strong>: tay cầm Xbox One S Ch&iacute;nh h&atilde;ng shop ph&acirc;n phối hỗ trợ kết nối</p>\r\n\r\n<p>1.&nbsp;<strong>Kh&ocirc;ng D&acirc;y</strong>&nbsp;( Bạn cần th&ecirc;m 1 Wireless Adapter )</p>\r\n\r\n<p>2.&nbsp;<strong>Bluetooth</strong>&nbsp;( Nếu bạn d&ugrave;ng PC kh&ocirc;ng c&oacute; Blutooth cần mua th&ecirc;m USB 4.0 hỗ trợ bluetooth&nbsp; v&agrave; Laptop c&oacute; Blutooth th&igrave; bạn sử dụng Xbox One S 1 c&aacute;ch b&igrave;nh thường bằng kh&ocirc;ng d&acirc;y )</p>\r\n\r\n<p>3.&nbsp;<strong>C&oacute; D&acirc;y:</strong>&nbsp;Bạn cắm Trực tiếp v&agrave;o d&acirc;y C&aacute;p USB Biến Xbox One S th&agrave;nh 1 tay cầm c&oacute; d&acirc;y với tốc độ ổn định</p>\r\n\r\n<p>&ndash;&nbsp;<strong>Hỗ Trợ Window</strong>: WIN 10, WIN 8 v&agrave; WIN 7</p>\r\n\r\n<p>&ndash; Phần mềm hỗ trợ Window 7:&nbsp;<strong>http://digiex.net/downloads/download-center-2-0/xbox-one-content/apps-pc/13601-xbox-one-controller-usb-drivers-windows-pc-download.html</strong></p>', '<h4>Khuyến m&atilde;i hot nhất:</h4>\r\n\r\n<ul>\r\n	<li>- Tặng&nbsp;ngay Giftcard l&ecirc;n tới 50K cho đơn h&agrave;ng tr&ecirc;n 2.000.000 VNĐ</li>\r\n	<li>- Tặng ngay Giftcard l&ecirc;n tới 100K cho đơn h&agrave;ng tr&ecirc;n 5.000.000 VNĐ</li>\r\n	<li>- Phiếu mua h&agrave;ng trị gi&aacute; 50.000 VNĐ trong lần mua h&agrave;ng tiếp theo tại SHOP</li>\r\n</ul>', 6, 2450000, 2399000, '/storage/uploads/2021/11/25/one-s-craf-300x300.png', 10, 1, '2021-11-24 21:35:50', '2021-11-24 21:35:50');
INSERT INTO `products` (`id`, `name`, `description`, `content`, `menu_id`, `price`, `price_sale`, `thumb`, `qty`, `active`, `created_at`, `updated_at`) VALUES
(19, 'Tay Cầm Xbox One S Chính Hãng Màu Trắng Arctic Camo Special Edition + Cáp Cable USB + Bọc Cần Analog', '<p><strong>Tay Cầm Xbox One S Ch&iacute;nh H&atilde;ng M&agrave;u Trắng Arctic Camo Special Edition + C&aacute;p Cable USB + Bọc Cần Analog | TOP B&Aacute;N CHẠY</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://shoptaycam.com/wp-content/uploads/2020/09/bandicam-2020-09-22-16-06-38-039_Fotor-1024x768.jpg\" style=\"height:765px; width:1020px\" /></p>\r\n\r\n<p><strong>Th&ocirc;ng tin chi tiết về sản phẩm tay cầm XBOX ONE S Ch&iacute;nh h&atilde;ng M&agrave;u Trắng Arctic Camo Special Edition Tại Shoptaycam.com</strong><br />\r\n&ndash; Gi&aacute; thị trường&nbsp;<strong>2.190.000 VND</strong>&nbsp;&ndash;&gt; Giảm Chỉ C&ograve;n&nbsp;<strong>1.790.000</strong>&nbsp;VNĐ Đến 30/12/2020<br />\r\n&ndash; Bảo H&agrave;nh: 1 Đổi 1 Trong 03 ng&agrave;y, Bảo h&agrave;nh&nbsp;<strong>06 Th&aacute;ng</strong></p>\r\n\r\n<p>&ndash; H&atilde;ng Sản Xuất: Microsoft</p>\r\n\r\n<p>&ndash; M&agrave;u Sắc: Trắng Arctic Camo<br />\r\n&ndash; Đ&oacute;ng Hộp: Tay cầm Xbox One S Ch&iacute;nh h&atilde;ng Trắng Arctic Camo + C&aacute;p Cable USB + Bọc Cần Analog Cực Xịn + S&aacute;ch Hướng Dẫn &amp; hộp đi k&egrave;m ( như h&igrave;nh )</p>\r\n\r\n<p>&ndash; Hỗ Trợ Kết nối: tay cầm Xbox One S Ch&iacute;nh h&atilde;ng shop ph&acirc;n phối hỗ trợ kết nối<br />\r\n1. Kh&ocirc;ng D&acirc;y ( Bạn cần th&ecirc;m 1 Wireless Adapter )<br />\r\n2. Bluetooth ( Nếu bạn d&ugrave;ng PC kh&ocirc;ng c&oacute; Blutooth cần mua th&ecirc;m USB 4.0 hỗ trợ bluetooth v&agrave; Laptop c&oacute; Blutooth th&igrave; bạn sử dụng Xbox One S 1 c&aacute;ch b&igrave;nh thường bằng kh&ocirc;ng d&acirc;y )<br />\r\n3. C&oacute; D&acirc;y: Bạn cắm Trực tiếp v&agrave;o d&acirc;y C&aacute;p USB Biến Xbox One S th&agrave;nh 1 tay cầm c&oacute; d&acirc;y với tốc độ ổn định<br />\r\n&ndash; Hỗ Trợ Window: WIN 10 tốt nhất, WIN 8 v&agrave; WIN 7 ( cần c&agrave;i th&ecirc;m driver )</p>\r\n\r\n<p><img alt=\"\" src=\"https://shoptaycam.com/wp-content/uploads/2020/09/1f564e7f-b401-496d-9334-3fbc3efa01de-1024x576.jpg\" style=\"height:574px; width:1020px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://shoptaycam.com/wp-content/uploads/2020/09/8dbc6a2c-23d8-415a-9f8d-e48b7248404a-1024x576.jpg\" style=\"height:574px; width:1020px\" />&nbsp;<img alt=\"\" src=\"https://shoptaycam.com/wp-content/uploads/2020/09/6fe3c4b6-949c-43d9-9f5a-ea554a25df7d-1024x576.jpg\" style=\"height:574px; width:1020px\" />&nbsp;<img alt=\"\" src=\"https://shoptaycam.com/wp-content/uploads/2020/09/7e8304e8-cffd-429d-ab56-75f7581b94cf-1024x576.jpg\" style=\"height:574px; width:1020px\" /></p>', '<h4>Khuyến m&atilde;i hot nhất:</h4>\r\n\r\n<ul>\r\n	<li>- Tặng&nbsp;ngay Giftcard l&ecirc;n tới 50K cho đơn h&agrave;ng tr&ecirc;n 2.000.000 VNĐ</li>\r\n	<li>- Tặng ngay Giftcard l&ecirc;n tới 100K cho đơn h&agrave;ng tr&ecirc;n 5.000.000 VNĐ</li>\r\n	<li>- Phiếu mua h&agrave;ng trị gi&aacute; 50.000 VNĐ trong lần mua h&agrave;ng tiếp theo tại SHOP</li>\r\n</ul>', 6, 3800000, 3400000, '/storage/uploads/2021/11/25/bandicam-2020-09-22-16-16-28-565_Fotor-1024x1024.jpg', 10, 1, '2021-11-24 21:59:46', '2021-11-24 21:59:46'),
(20, 'Tay Cầm Xbox One S Đen Phantom Black Edition + Cáp Cable USB Chơi Game Tối Ưu Cho FO4 / FIFA / PC', '<h4>Khuyến m&atilde;i hot nhất:</h4>\r\n\r\n<ul>\r\n	<li>- Tặng&nbsp;ngay Giftcard l&ecirc;n tới 50K cho đơn h&agrave;ng tr&ecirc;n 2.000.000 VNĐ</li>\r\n	<li>- Tặng ngay Giftcard l&ecirc;n tới 100K cho đơn h&agrave;ng tr&ecirc;n 5.000.000 VNĐ</li>\r\n	<li>- Phiếu mua h&agrave;ng trị gi&aacute; 50.000 VNĐ trong lần mua h&agrave;ng tiếp theo tại SHOP</li>\r\n</ul>', '<p><strong>Tay Cầm Xbox One S Đen Phantom Black Edition + C&aacute;p Cable USB Chơi Game Tối Ưu Cho FO4 / FIFA / PC | H&Agrave;NG MỚI VỀ</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://shoptaycam.com/wp-content/uploads/2021/09/one-s-den-shadow-1024x768.png\" style=\"height:765px; width:1020px\" /></p>\r\n\r\n<p>&ndash;&nbsp;<strong>Gi&aacute; thị trường</strong>&nbsp;<strong>1.890.000 &ndash; 2.150.000 VND</strong>&nbsp;&ndash;&gt; Giảm Chỉ C&ograve;n&nbsp;<strong>1.490.000 VNĐ</strong>&nbsp;Đến&nbsp;<strong>30/12/2021</strong></p>\r\n\r\n<p>&ndash;&nbsp;<strong>Bảo H&agrave;nh</strong>:&nbsp;<strong>1 Đổi 1 Trong 3 ng&agrave;y, Bảo h&agrave;nh 06 Th&aacute;ng</strong></p>\r\n\r\n<p><strong>&ndash; H&atilde;ng Sản Xuất</strong>: Microsoft</p>\r\n\r\n<p>&ndash;&nbsp;<strong>M&agrave;u Sắc</strong>: Đen Phantom Black như ảnh</p>\r\n\r\n<p>&ndash;&nbsp;<strong>Đ&oacute;ng Hộ</strong>p: Tay cầm Xbox One S Phantom Black + Cab USB + Bộ bọc cần analog tối ưu bảo vệ tay cầm</p>\r\n\r\n<p><img alt=\"\" src=\"https://shoptaycam.com/wp-content/uploads/2021/09/one-s-den-shadow-2-1024x683.png\" style=\"height:680px; width:1020px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://shoptaycam.com/wp-content/uploads/2021/09/Collage_Fotor-01-10-1024x768.jpg\" style=\"height:765px; width:1020px\" /></p>', 6, 1690000, 1490000, '/storage/uploads/2021/11/25/one-s-den-shadow-300x300.png', 10, 1, '2021-11-24 22:31:42', '2021-11-24 22:31:42'),
(21, 'Tay Cầm Xbox One S Đen BLACK Renew+ Cáp Cable USB Chơi Game Tối Ưu Cho FO4 / FIFA / PC', '<p><strong>Tay Cầm Xbox One S Đen BLACK 99% + C&aacute;p Cable USB Chơi Game Tối Ưu Cho FO4 / FIFA / PC | H&Agrave;NG MỚI VỀ</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://shoptaycam.com/wp-content/uploads/2021/06/ONE-S-%C4%90EN-RENEW-3-1024x767.png\" style=\"height:764px; width:1020px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://shoptaycam.com/wp-content/uploads/2021/06/ONE-S-%C4%90EN-RENEW-2-1024x768.png\" style=\"height:765px; width:1020px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://shoptaycam.com/wp-content/uploads/2021/06/ONE-S-%C4%90EN-RENEW-1-1024x682.png\" style=\"height:679px; width:1020px\" /></p>', '<h4>Khuyến m&atilde;i hot nhất:</h4>\r\n\r\n<ul>\r\n	<li>- Tặng&nbsp;ngay Giftcard l&ecirc;n tới 50K cho đơn h&agrave;ng tr&ecirc;n 2.000.000 VNĐ</li>\r\n	<li>- Tặng ngay Giftcard l&ecirc;n tới 100K cho đơn h&agrave;ng tr&ecirc;n 5.000.000 VNĐ</li>\r\n	<li>- Phiếu mua h&agrave;ng trị gi&aacute; 50.000 VNĐ trong lần mua h&agrave;ng tiếp theo tại SHOP</li>\r\n</ul>', 5, 1590000, 1390000, '/storage/uploads/2021/11/25/ONE-S-ĐEN-RENEW-3-300x300.png', 10, 1, '2021-11-24 22:36:31', '2021-11-24 22:36:31'),
(22, 'Tay Cầm Chơi Game E-dra EGP7601 Wireless Không Dây Chính Hãng cho PC / Laptop / Mobile Tối Ưu FO4 / FIFA / PC, Laptop', '<p><strong>Tay Cầm Chơi Game E-dra EGP7601 Wireless Kh&ocirc;ng D&acirc;y Ch&iacute;nh H&atilde;ng cho PC / Laptop / Mobile Tối Ưu FO4 / FIFA / PC, Laptop | H&Agrave;NG MỚI VỀ</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://shoptaycam.com/wp-content/uploads/2021/07/EDRA-1024x760.png\" style=\"height:757px; width:1020px\" /></p>\r\n\r\n<p>Th&ocirc;ng tin chung về&nbsp;<strong>Tay Cầm Chơi Game E-dra EGP7601 Wireless Kh&ocirc;ng D&acirc;y Ch&iacute;nh H&atilde;ng tại #shoptaycam.com</strong><br />\r\n&ndash; Model: EGP7601<br />\r\n&ndash; M&agrave;u sắc: Đen<br />\r\n&ndash; Kết nối:&nbsp;<strong>Bluetooth</strong>,&nbsp;<strong>Wireless</strong>&nbsp;v&agrave;&nbsp;<strong>c&oacute; d&acirc;y cho PC, Laptop ( AE cắm d&acirc;y c&aacute;p v&agrave; tay cầm l&agrave; quẩy game được ngay )</strong><br />\r\n&ndash; Y&ecirc;u cầu hệ thống: Windows 7, Windows 8, Windows 8.1, Windows 10, Android<br />\r\n&ndash; Khối lượng: 189g</p>\r\n\r\n<ul>\r\n	<li><strong>Bảo h&agrave;nh</strong>: 12 th&aacute;ng ch&iacute;nh h&atilde;ng</li>\r\n</ul>\r\n\r\n<p><img alt=\"\" src=\"https://shoptaycam.com/wp-content/uploads/2021/07/EDRA-2-1024x765.png\" style=\"height:762px; width:1020px\" /></p>\r\n\r\n<p><strong>Tay Cầm Chơi Game E-dra EGP7601 về mặt thiết kế</strong>&nbsp;ch&uacute;ng ta c&oacute; thể thấy ngay E-Dra EGP7601 mang thiết kế rất quen thuộc với cần Analog đối xứng v&agrave; b&aacute;ng cầm tay thu&ocirc;n d&agrave;i (giống với tay cần của Sony PS4)</p>\r\n\r\n<p>Đ&acirc;y ch&iacute;nh l&agrave; lợi thế lớn cho<strong>Tay Cầm Chơi Game E-dra EGP7601&nbsp;</strong>khi gi&uacute;p cho game thủ khi đ&atilde; quen form của tay cầm PS4 sẽ dễ l&agrave;m quen ngay từ đầu. K&iacute;ch thước của tay rất vừa vặn, kh&ocirc;ng qu&aacute; to v&agrave; kh&ocirc;ng nhỏ, cầm chắc tay v&agrave; trọng lượng kh&aacute; nhẹ. Nh&igrave;n chung về thiết kế cầm nắm,&nbsp;<strong>Tay Cầm Chơi Game E-dra EGP7601</strong>&nbsp;<em>Shoptaycam</em>&nbsp;đ&aacute;nh gi&aacute; rất cao.</p>\r\n\r\n<p><strong>Tay Cầm Chơi Game E-dra EGP7601 c&oacute; khả năng kết nối cực k&igrave; đa dạng: tay cầm của E dra&nbsp;</strong>hỗ trợ 2 kết nối kh&ocirc;ng d&acirc;y 2.4Ghz (c&oacute; đầu nhận USB) v&agrave; Bluetooth, điều n&agrave;y gi&uacute;p cho tay c&oacute; thể kết nối được với nhiều thiết bị, từ PC cho tới Điện thoại, TV&hellip;&hellip; EGC7601 hỗ trợ hệ điều h&agrave;nh Windows v&agrave; Android.</p>\r\n\r\n<p>V&agrave; c&ograve;n 1 c&aacute;ch kết nối v&ocirc; c&ugrave;ng quen thuộc v&agrave; tốc độ tốt nhất, AE ch&uacute;ng ta chỉ cần cắm d&acirc;y c&aacute;p v&agrave;o tay v&agrave; 1 đầu v&agrave;o cổng usb M&aacute;y t&iacute;nh, PC, Laptop th&igrave;&nbsp;<strong>Tay Cầm Chơi Game E-dra EGP7601&nbsp;</strong>sẽ sử dụng được ngay</p>\r\n\r\n<p>Hơi tiếc&nbsp;<strong>E-dra EGP7601</strong>&nbsp;kh&ocirc;ng hỗ trợ iOS</p>\r\n\r\n<p><strong>Tay Cầm Chơi Game E-dra EGP7601&nbsp;</strong>c&oacute;&nbsp;<strong>c</strong>ần analog c&oacute; chất lượng rất tốt, với deadzone thấp v&agrave; độ mượt m&agrave; ho&agrave;n hảo, ngay cả c&aacute;c game y&ecirc;u cầu c&acirc;n analog c&oacute; độ ch&iacute;nh x&aacute;c cao v&agrave; mượt như đua xe hay c&aacute;c game bắn s&uacute;ng,&nbsp;<strong>Tay Cầm Chơi Game E-dra EGP7601</strong>&nbsp;c&oacute; thể đ&aacute;p ứng rất tốt. C&aacute;c ph&iacute;m bấm ch&iacute;nh AB-XY cho cảm g&aacute;c bấm tốt, nảy v&agrave; độ nặng vừa phải, ph&iacute;m D-PAD cũng kh&aacute; ổn. C&aacute;c n&uacute;t &ldquo;c&ograve;&rdquo;, cũng cho chất lượng bấm rất tốt, kh&ocirc;ng c&oacute; điểm ch&ecirc;.</p>\r\n\r\n<p><strong>Tay Cầm Chơi Game E-dra EGP7601</strong>&nbsp;sử dụng pin sạc ( pin liền v&agrave;o tay cầm ) v&agrave; sạc qua ng&otilde; USB th&ocirc;ng dụng (c&oacute; d&acirc;y sạc đi k&egrave;m). Pin Tay Cầm Chơi Game E-dra EGP7601&nbsp;c&oacute; dụng lượng 600mAh cho thời lượng sử dụng 10 &ndash; 15 giờ li&ecirc;n tục</p>\r\n\r\n<p><img alt=\"\" src=\"https://shoptaycam.com/wp-content/uploads/2021/07/EDRA-3-1024x680.png\" style=\"height:677px; width:1020px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://shoptaycam.com/wp-content/uploads/2021/07/EDRA-4-1024x679.png\" style=\"height:676px; width:1020px\" /></p>', '<h4>Khuyến m&atilde;i hot nhất:</h4>\r\n\r\n<ul>\r\n	<li>- Tặng&nbsp;ngay Giftcard l&ecirc;n tới 50K cho đơn h&agrave;ng tr&ecirc;n 2.000.000 VNĐ</li>\r\n	<li>- Tặng ngay Giftcard l&ecirc;n tới 100K cho đơn h&agrave;ng tr&ecirc;n 5.000.000 VNĐ</li>\r\n	<li>- Phiếu mua h&agrave;ng trị gi&aacute; 50.000 VNĐ trong lần mua h&agrave;ng tiếp theo tại SHOP</li>\r\n</ul>', 5, 900000, 650000, '/storage/uploads/2021/11/25/EDRA-300x300.png', 10, 1, '2021-11-24 22:43:10', '2021-11-24 22:43:10'),
(23, 'Tay Cầm Chơi Game GameSir T4 Pro Không Dây Chính Hãng cho PC / Laptop / Mobile TỐT CHO FO4 / FIFA + Bọc Cần', '<p><strong>Tay Cầm Chơi Game GameSir T4 Pro Kh&ocirc;ng D&acirc;y Ch&iacute;nh H&atilde;ng cho PC / Laptop / Mobile TỐT CHO FO4 / FIFA + Bọc Cần | B&Aacute;N RẤT CHẠY</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://shoptaycam.com/wp-content/uploads/2020/09/bandicam-2020-09-22-16-06-36-227_Fotor-1024x768.jpg\" style=\"height:765px; width:1020px\" /></p>\r\n\r\n<p><strong>&ndash; Gi&aacute; Giảm Chỉ C&ograve;n 699.000&nbsp;VNĐ Đến 31<em>/12/2021 cho 100 BẠN NHANH TAY NHẤT đặt h&agrave;ng tại #shoptaycam</em></strong></p>\r\n\r\n<p>&ndash;&nbsp;<strong>Bảo H&agrave;nh:</strong>&nbsp;<strong>1 Đổi 1 Trong 3 ng&agrave;y, Bảo h&agrave;nh 3 Th&aacute;ng</strong></p>\r\n\r\n<p>&ndash;&nbsp;<strong>M&agrave;u Sắc</strong>: ĐEN</p>\r\n\r\n<p>&ndash;&nbsp;<strong>Đ&oacute;ng Hộp</strong>: Tay cầm GAMESIR T4W &amp; hộp nguy&ecirc;n SEAL + s&aacute;ch HD sử dụng V&agrave; Tặng K&egrave;m Bọc Cần Cực Tối</p>\r\n\r\n<p><img alt=\"\" src=\"https://shoptaycam.com/wp-content/uploads/2020/09/Picture7.png\" style=\"height:997px; width:998px\" />&nbsp;<img alt=\"\" src=\"https://shoptaycam.com/wp-content/uploads/2020/09/Picture6.png\" style=\"height:997px; width:998px\" />&nbsp;<img alt=\"\" src=\"https://shoptaycam.com/wp-content/uploads/2020/09/Picture5.png\" style=\"height:997px; width:997px\" />&nbsp;<img alt=\"\" src=\"https://shoptaycam.com/wp-content/uploads/2020/09/Picture4.png\" style=\"height:997px; width:997px\" />&nbsp;<img alt=\"\" src=\"https://shoptaycam.com/wp-content/uploads/2020/09/Picture3.png\" style=\"height:997px; width:997px\" />&nbsp;<img alt=\"\" src=\"https://shoptaycam.com/wp-content/uploads/2020/09/Picture2.png\" style=\"height:997px; width:997px\" />&nbsp;<img alt=\"\" src=\"https://shoptaycam.com/wp-content/uploads/2020/09/Picture1.jpg\" style=\"height:997px; width:997px\" /></p>', '<h4>Khuyến m&atilde;i hot nhất:</h4>\r\n\r\n<ul>\r\n	<li>- Tặng&nbsp;ngay Giftcard l&ecirc;n tới 50K cho đơn h&agrave;ng tr&ecirc;n 2.000.000 VNĐ</li>\r\n	<li>- Tặng ngay Giftcard l&ecirc;n tới 100K cho đơn h&agrave;ng tr&ecirc;n 5.000.000 VNĐ</li>\r\n	<li>- Phiếu mua h&agrave;ng trị gi&aacute; 50.000 VNĐ trong lần mua h&agrave;ng tiếp theo tại SHOP</li>\r\n</ul>', 5, 790000, 690000, '/storage/uploads/2021/11/25/bandicam-2020-09-22-16-06-36-227_Fotor-300x300.jpg', 10, 1, '2021-11-24 22:45:59', '2021-11-24 22:45:59'),
(24, 'Tay Cầm Chơi Game GameSir T4W Có Dây Chính Hãng cho PC / Laptop TỐT CHO FO4 / FIFA + Bọc Cần', '<p><strong>Tay Cầm Chơi Game GameSir T4W C&oacute; D&acirc;y Ch&iacute;nh H&atilde;ng cho PC / Laptop / Điện Thoại Android + Bọc Cần | B&Aacute;N CHẠY</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://shoptaycam.com/wp-content/uploads/2019/09/t4w-new-1024x770.png\" style=\"height:767px; width:1020px\" /></p>\r\n\r\n<p><img alt=\"Tay Cầm Chơi Game GameSir T4W Có Dây Chính Hãng cho PC / Laptop TỐT CHO FO4 / FIFA + Bọc Cần | BÁN CHẠY\" src=\"https://shoptaycam.com/wp-content/uploads/2021/07/t4w-moi-1024x680.png\" style=\"height:677px; width:1020px\" /></p>\r\n\r\n<p><strong>Tay Cầm Chơi Game GameSir T4W C&oacute; D&acirc;y Ch&iacute;nh H&atilde;ng cho PC / Laptop TỐT CHO FO4 / FIFA + Bọc Cần | B&Aacute;N CHẠY</strong></p>\r\n\r\n<p><iframe frameborder=\"0\" height=\"574\" src=\"https://www.youtube.com/embed/tTajLYFksbw?feature=oembed\" width=\"1020\"></iframe></p>\r\n\r\n<p><strong>&ndash; Gi&aacute; thị trường&nbsp;550.000&nbsp;&ndash;&nbsp;650.000&nbsp;VND &ndash;&gt; Giảm Chỉ C&ograve;n&nbsp;500.000&nbsp;VNĐ Đến 31<em>/12/2020 cho 100 BẠN NHANH TAY NHẤT đặt h&agrave;ng tại #shoptaycam</em></strong></p>\r\n\r\n<p>&ndash;&nbsp;<strong>Bảo H&agrave;nh:</strong>&nbsp;<strong>1 Đổi 1 Trong 3 ng&agrave;y, Bảo h&agrave;nh 3 Th&aacute;ng</strong></p>\r\n\r\n<p>&ndash;&nbsp;<strong>M&agrave;u Sắc</strong>: ĐEN</p>\r\n\r\n<p>&ndash;&nbsp;<strong>Đ&oacute;ng Hộp</strong>: Tay cầm GAMESIR T4W &amp; hộp nguy&ecirc;n SEAL + s&aacute;ch HD sử dụng V&agrave; Tặng K&egrave;m Bọc Cần Cực Tối</p>', '<h4>Khuyến m&atilde;i hot nhất:</h4>\r\n\r\n<ul>\r\n	<li>- Tặng&nbsp;ngay Giftcard l&ecirc;n tới 50K cho đơn h&agrave;ng tr&ecirc;n 2.000.000 VNĐ</li>\r\n	<li>- Tặng ngay Giftcard l&ecirc;n tới 100K cho đơn h&agrave;ng tr&ecirc;n 5.000.000 VNĐ</li>\r\n	<li>- Phiếu mua h&agrave;ng trị gi&aacute; 50.000 VNĐ trong lần mua h&agrave;ng tiếp theo tại SHOP</li>\r\n</ul>', 5, 500000, 499000, '/storage/uploads/2021/11/25/15.47.44bandicam-2019-09-21-12-47-17-476_Fotor-600x600.jpg', 10, 1, '2021-11-24 22:48:01', '2021-11-25 08:47:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(3, 'admin', 'web', '2021-09-05 01:58:27', '2021-09-05 01:58:27'),
(4, 'staff', 'web', '2021-09-05 01:58:47', '2021-09-05 01:58:47');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 3),
(2, 3),
(2, 4),
(3, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumb` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_by` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sliders`
--

INSERT INTO `sliders` (`id`, `name`, `url`, `thumb`, `sort_by`, `active`, `created_at`, `updated_at`) VALUES
(4, 'Tay Cầm Xbox', 'http://127.0.0.1:8000/danh-muc/6-tay-cam-xbox.html', '/storage/uploads/2021/09/04/4020536_CV.jpg', 1, 1, '2021-09-03 02:48:42', '2021-09-03 23:59:19'),
(5, 'Tay Cầm F04', 'http://127.0.0.1:8000/danh-muc/5-tay-cam-f04.html', '/storage/uploads/2021/09/04/pxn-1596622306283731082810.jpg', 2, 1, '2021-09-03 03:00:59', '2021-09-03 23:59:11'),
(6, 'Tay Cầm PS4/PS5', NULL, '/storage/uploads/2021/10/19/tay_cam_ps5_nshop_ca04f0cf3e0a40368d66eb452f88a820.jpg', 3, 1, '2021-10-19 02:28:32', '2021-10-19 02:34:34');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
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
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Bùi Đức Phú', 'admin@gmail.com', NULL, '$2y$10$HXpibG14Kkl5rC9dMJXmUufWEAacUcnrBaOfNKW8baTWtDlhQaMPy', 'omW06GFQUpwJJAsJwF9tT0VhTa2Go1Jl7S4SLQvTaDpLz2Wo3uKR0JQKtHn2', NULL, '2021-09-08 03:44:44'),
(6, 'Trang Moon', 'trangngu@gmail.com', NULL, '$2y$10$lvchm.a1qlZzUWQqjv6UGuASOKEENyZCDfPQnYlRz.1bIPvtAROne', NULL, '2021-09-09 06:25:34', '2021-09-09 06:25:34');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cart_details`
--
ALTER TABLE `cart_details`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Chỉ mục cho bảng `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `members_email_unique` (`username`);

--
-- Chỉ mục cho bảng `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Chỉ mục cho bảng `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Chỉ mục cho bảng `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Chỉ mục cho bảng `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `cart_details`
--
ALTER TABLE `cart_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `members`
--
ALTER TABLE `members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
