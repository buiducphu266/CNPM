-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 05, 2021 lúc 09:40 AM
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
(3, 'admin@gmail.com', NULL, '$2y$10$/cahopPNTs46PBMy6GL4dOadT8SlAk/oPaHl3N7uFVS7FL0RfUIWG', 'a8W7C6bkAvOkS7aqheRmD14INt4XZRffV62v1vIzjqeoZsU0HFjwEJBOPufi', '2021-10-21 08:05:00', '2021-11-02 06:38:47'),
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
(10, 'Tay Cầm Xbox One S Đen Đỏ DAWN SHADOW Edition + Cáp Cable USB Chơi Game Tối Ưu Cho FO4 / FIFA / PC', '<p><strong>Tay Cầm Xbox One S Đen Đỏ DAWN SHADOW Edition + C&aacute;p Cable USB Chơi Game Tối Ưu Cho FO4 / FIFA / PC | H&Agrave;NG MỚI VỀ</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://shoptaycam.com/wp-content/uploads/2021/09/one-s-do-db-1024x768.png\" style=\"height:765px; width:1020px\" /></p>\r\n\r\n<p>&ndash;&nbsp;<strong>Gi&aacute; thị trường</strong>&nbsp;<strong>1.890.000 &ndash; 2.150.000 VND</strong>&nbsp;&ndash;&gt; Giảm Chỉ C&ograve;n&nbsp;<strong>1.490.000 VNĐ</strong>&nbsp;Đến&nbsp;<strong>30/12/2021</strong></p>\r\n\r\n<p>&ndash;&nbsp;<strong>Bảo H&agrave;nh</strong>:&nbsp;<strong>1 Đổi 1 Trong 3 ng&agrave;y, Bảo h&agrave;nh 06 Th&aacute;ng</strong></p>\r\n\r\n<p><strong>&ndash; H&atilde;ng Sản Xuất</strong>: Microsoft</p>\r\n\r\n<p>&ndash;&nbsp;<strong>M&agrave;u Sắc</strong>: Đen Đỏ&nbsp;DAWN SHADOW như ảnh</p>\r\n\r\n<p>&ndash;&nbsp;<strong>Đ&oacute;ng Hộ</strong>p: Tay cầm Xbox One S DAWN SHADOW + Cab USB + Bộ bọc cần analog tối ưu bảo vệ tay cầm</p>\r\n\r\n<p><img alt=\"\" src=\"https://shoptaycam.com/wp-content/uploads/2021/09/one-s-do-db-2-1024x682.png\" style=\"height:679px; width:1020px\" /></p>', '<h4>Khuyến m&atilde;i hot nhất:</h4>\r\n\r\n<ul>\r\n	<li>- Tặng&nbsp;ngay Giftcard l&ecirc;n tới 50K cho đơn h&agrave;ng tr&ecirc;n 2.000.000 VNĐ</li>\r\n	<li>- Tặng ngay Giftcard l&ecirc;n tới 100K cho đơn h&agrave;ng tr&ecirc;n 5.000.000 VNĐ</li>\r\n	<li>- Phiếu mua h&agrave;ng trị gi&aacute; 50.000 VNĐ trong lần mua h&agrave;ng tiếp theo tại SHOP</li>\r\n</ul>', 6, 1677000, 1500000, '/storage/uploads/2021/10/16/one-s-do-db-300x300.png', 15, 1, '2021-10-15 20:36:42', '2021-11-02 06:40:57');

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
(1, 'Bùi Đức Phú', 'admin@gmail.com', NULL, '$2y$10$HXpibG14Kkl5rC9dMJXmUufWEAacUcnrBaOfNKW8baTWtDlhQaMPy', 'Z616ifaJSGRveaiMbnsPEDboL8LlmMIBFN5sqg15m3beAs7uv0U3AMpXodMy', NULL, '2021-09-08 03:44:44'),
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
