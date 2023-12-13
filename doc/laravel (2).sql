-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 13, 2023 lúc 09:40 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `laravel`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 71, '2023-11-30 07:32:35', '2023-11-30 07:32:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart_products`
--

CREATE TABLE `cart_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_size` varchar(255) NOT NULL,
  `product_quantity` smallint(6) NOT NULL,
  `product_price` double NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `cart_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`, `created_at`, `updated_at`) VALUES
(31, 'MEN', NULL, '2023-11-26 02:22:34', '2023-11-26 02:22:34'),
(32, 'WOMEN', NULL, '2023-11-26 02:22:48', '2023-11-26 02:22:48'),
(36, 'KID', NULL, '2023-12-13 01:56:29', '2023-12-13 01:56:29'),
(37, 'ACCERSSORIES', NULL, '2023-12-13 01:56:50', '2023-12-13 02:02:17'),
(38, 'BAGS', NULL, '2023-12-13 01:56:59', '2023-12-13 02:01:56'),
(39, 'SHOES', NULL, '2023-12-13 01:57:10', '2023-12-13 02:01:22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category_product`
--

CREATE TABLE `category_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category_product`
--

INSERT INTO `category_product` (`id`, `category_id`, `product_id`, `created_at`, `updated_at`) VALUES
(37, 32, 48, NULL, NULL),
(38, 32, 49, NULL, NULL),
(39, 32, 50, NULL, NULL),
(40, 32, 51, NULL, NULL),
(42, 32, 53, NULL, NULL),
(43, 32, 54, NULL, NULL),
(44, 32, 55, NULL, NULL),
(45, 32, 56, NULL, NULL),
(46, 31, 57, NULL, NULL),
(47, 31, 58, NULL, NULL),
(48, 31, 59, NULL, NULL),
(49, 31, 60, NULL, NULL),
(53, 31, 63, NULL, NULL),
(54, 31, 64, NULL, NULL),
(55, 38, 65, NULL, NULL),
(56, 38, 66, NULL, NULL),
(57, 38, 67, NULL, NULL),
(58, 38, 68, NULL, NULL),
(59, 38, 69, NULL, NULL),
(60, 39, 70, NULL, NULL),
(61, 39, 71, NULL, NULL),
(62, 39, 72, NULL, NULL),
(63, 39, 73, NULL, NULL),
(64, 39, 74, NULL, NULL),
(65, 36, 75, NULL, NULL),
(66, 36, 76, NULL, NULL),
(67, 36, 77, NULL, NULL),
(68, 36, 78, NULL, NULL),
(69, 36, 79, NULL, NULL),
(70, 37, 80, NULL, NULL),
(71, 37, 81, NULL, NULL),
(72, 37, 82, NULL, NULL),
(73, 37, 83, NULL, NULL),
(74, 37, 84, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `value` double NOT NULL,
  `expery_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `coupons`
--

INSERT INTO `coupons` (`id`, `name`, `type`, `value`, `expery_date`, `created_at`, `updated_at`) VALUES
(18, 'Coupon', 'money', 10, '2025-01-12 17:00:00', '2023-12-13 02:03:52', '2023-12-13 02:03:52'),
(19, 'Coupon 1', 'money', 10, '2025-01-12 17:00:00', '2023-12-13 09:10:34', '2023-12-13 09:10:34'),
(20, 'Coupon 2', 'money', 10, '2025-01-12 17:00:00', '2023-12-13 09:10:34', '2023-12-13 09:10:34'),
(21, 'Coupon 3', 'money', 10, '2025-01-12 17:00:00', '2023-12-13 09:10:34', '2023-12-13 09:10:34'),
(22, 'Coupon 4', 'money', 10, '2025-01-12 17:00:00', '2023-12-13 09:10:34', '2023-12-13 09:10:34'),
(23, 'Coupon 5', 'money', 10, '2025-01-12 17:00:00', '2023-12-13 09:10:34', '2023-12-13 09:10:34'),
(24, 'Coupon 6', 'money', 10, '2025-01-12 17:00:00', '2023-12-13 09:10:34', '2023-12-13 09:10:34'),
(25, 'Coupon 7', 'money', 10, '2025-01-12 17:00:00', '2023-12-13 09:10:34', '2023-12-13 09:10:34'),
(26, 'Coupon 8', 'money', 10, '2025-01-12 17:00:00', '2023-12-13 09:10:34', '2023-12-13 09:10:34'),
(27, 'Coupon 9', 'money', 10, '2025-01-12 17:00:00', '2023-12-13 09:10:34', '2023-12-13 09:10:34'),
(28, 'Coupon 10', 'money', 10, '2025-01-12 17:00:00', '2023-12-13 09:10:34', '2023-12-13 09:10:34');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `coupon_user`
--

CREATE TABLE `coupon_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `value` double NOT NULL,
  `coupon_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `coupon_user`
--

INSERT INTO `coupon_user` (`id`, `user_id`, `value`, `coupon_id`, `created_at`, `updated_at`) VALUES
(6, 71, 10, 18, NULL, NULL),
(7, 71, 10, 19, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
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
-- Cấu trúc bảng cho bảng `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) NOT NULL,
  `imageable_id` bigint(20) UNSIGNED NOT NULL,
  `imageable_type` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `images`
--

INSERT INTO `images` (`id`, `url`, `imageable_id`, `imageable_type`, `created_at`, `updated_at`) VALUES
(90, '1701961167.png', 44, 'App\\Models\\Product', '2023-12-07 07:59:27', '2023-12-07 07:59:27'),
(91, '1701961167.png', 44, 'App\\Models\\Product', '2023-12-07 08:26:44', '2023-12-07 08:26:44'),
(92, '1701963265.png', 45, 'App\\Models\\Product', '2023-12-07 08:34:25', '2023-12-07 08:34:25'),
(93, '1702407337.jpg', 46, 'App\\Models\\Product', '2023-12-12 11:55:38', '2023-12-12 11:55:38'),
(94, '1702407386.jpg', 47, 'App\\Models\\Product', '2023-12-12 11:56:26', '2023-12-12 11:56:26'),
(95, '1702459203.jpg', 48, 'App\\Models\\Product', '2023-12-13 02:20:03', '2023-12-13 02:20:03'),
(96, '1702459450.jpg', 49, 'App\\Models\\Product', '2023-12-13 02:24:10', '2023-12-13 02:24:10'),
(97, '1702459742.jpg', 50, 'App\\Models\\Product', '2023-12-13 02:29:02', '2023-12-13 02:29:02'),
(98, '1702459872.jpg', 51, 'App\\Models\\Product', '2023-12-13 02:31:12', '2023-12-13 02:31:12'),
(99, '1702459991.jpg', 52, 'App\\Models\\Product', '2023-12-13 02:33:11', '2023-12-13 02:33:11'),
(100, '1702460080.jpg', 53, 'App\\Models\\Product', '2023-12-13 02:34:40', '2023-12-13 02:34:40'),
(101, '1702460151.jpg', 54, 'App\\Models\\Product', '2023-12-13 02:35:51', '2023-12-13 02:35:51'),
(102, '1702460244.jpg', 55, 'App\\Models\\Product', '2023-12-13 02:37:24', '2023-12-13 02:37:24'),
(103, '1702460302.jpg', 56, 'App\\Models\\Product', '2023-12-13 02:38:22', '2023-12-13 02:38:22'),
(104, '1702460466.jpg', 57, 'App\\Models\\Product', '2023-12-13 02:41:06', '2023-12-13 02:41:06'),
(105, '1702460598.jpg', 58, 'App\\Models\\Product', '2023-12-13 02:43:18', '2023-12-13 02:43:18'),
(106, '1702460647.jpg', 59, 'App\\Models\\Product', '2023-12-13 02:44:07', '2023-12-13 02:44:07'),
(107, '1702460817.jpg', 60, 'App\\Models\\Product', '2023-12-13 02:46:57', '2023-12-13 02:46:57'),
(108, '1702462076.jpg', 61, 'App\\Models\\Product', '2023-12-13 03:07:56', '2023-12-13 03:07:56'),
(109, '1702462076.jpg', 61, 'App\\Models\\Product', '2023-12-13 03:08:07', '2023-12-13 03:08:07'),
(110, '1702471310.jpg', 62, 'App\\Models\\Product', '2023-12-13 05:41:50', '2023-12-13 05:41:50'),
(111, '1702471310.jpg', 62, 'App\\Models\\Product', '2023-12-13 05:49:47', '2023-12-13 05:49:47'),
(112, '1702497931.jpg', 63, 'App\\Models\\Product', '2023-12-13 13:05:31', '2023-12-13 13:05:31'),
(113, '1702497982.jpg', 64, 'App\\Models\\Product', '2023-12-13 13:06:22', '2023-12-13 13:06:22'),
(114, '1702498091.jpg', 65, 'App\\Models\\Product', '2023-12-13 13:08:11', '2023-12-13 13:08:11'),
(115, '1702498121.jpg', 66, 'App\\Models\\Product', '2023-12-13 13:08:42', '2023-12-13 13:08:42'),
(116, '1702498148.jpeg', 67, 'App\\Models\\Product', '2023-12-13 13:09:08', '2023-12-13 13:09:08'),
(117, '1702498188.jpg', 68, 'App\\Models\\Product', '2023-12-13 13:09:48', '2023-12-13 13:09:48'),
(118, '1702498230.jpg', 69, 'App\\Models\\Product', '2023-12-13 13:10:30', '2023-12-13 13:10:30'),
(119, '1702498339.jpeg', 70, 'App\\Models\\Product', '2023-12-13 13:12:19', '2023-12-13 13:12:19'),
(120, '1702498389.jpeg', 71, 'App\\Models\\Product', '2023-12-13 13:13:09', '2023-12-13 13:13:09'),
(121, '1702498439.png', 72, 'App\\Models\\Product', '2023-12-13 13:14:00', '2023-12-13 13:14:00'),
(122, '1702498476.jpeg', 73, 'App\\Models\\Product', '2023-12-13 13:14:36', '2023-12-13 13:14:36'),
(123, '1702498506.png', 74, 'App\\Models\\Product', '2023-12-13 13:15:06', '2023-12-13 13:15:06'),
(124, '1702498638.jpg', 75, 'App\\Models\\Product', '2023-12-13 13:17:18', '2023-12-13 13:17:18'),
(125, '1702498697.jpg', 76, 'App\\Models\\Product', '2023-12-13 13:18:17', '2023-12-13 13:18:17'),
(126, '1702498726.jpg', 77, 'App\\Models\\Product', '2023-12-13 13:18:46', '2023-12-13 13:18:46'),
(127, '1702498766.jpg', 78, 'App\\Models\\Product', '2023-12-13 13:19:27', '2023-12-13 13:19:27'),
(128, '1702498808.jpg', 79, 'App\\Models\\Product', '2023-12-13 13:20:08', '2023-12-13 13:20:08'),
(129, '1702499024.jpg', 80, 'App\\Models\\Product', '2023-12-13 13:23:44', '2023-12-13 13:23:44'),
(130, '1702499054.jpg', 81, 'App\\Models\\Product', '2023-12-13 13:24:14', '2023-12-13 13:24:14'),
(131, '1702499081.jpg', 82, 'App\\Models\\Product', '2023-12-13 13:24:42', '2023-12-13 13:24:42'),
(132, '1702499116.jpg', 83, 'App\\Models\\Product', '2023-12-13 13:25:17', '2023-12-13 13:25:17'),
(133, '1702499149.jpg', 84, 'App\\Models\\Product', '2023-12-13 13:25:49', '2023-12-13 13:25:49'),
(134, '1702499968.png', 75, 'App\\Models\\User', '2023-12-13 13:39:28', '2023-12-13 13:39:28');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_11_22_124111_create_permission_tables', 1),
(6, '2023_11_23_121355_create_products_table', 1),
(7, '2023_11_23_121509_create_categories_table', 1),
(8, '2023_11_23_121912_create_product_details_table', 1),
(9, '2023_11_23_122026_create_images_table', 1),
(10, '2023_11_23_122135_create_carts_table', 1),
(11, '2023_11_23_122835_create_cart_products_table', 1),
(12, '2023_11_23_122948_create_coupons_table', 1),
(13, '2023_11_23_123057_create_orders_table', 1),
(14, '2023_11_23_123236_create_product_orders_table', 1),
(15, '2023_11_23_123401_create_coupon_user_table', 1),
(16, '2023_11_25_085948_refactor_field_parent_id_in_categories_table', 2),
(17, '2023_11_27_154654_refactor_field_in_cart_products_table', 3),
(18, '2023_11_30_115213_refator_field_in_cart_products_table', 4),
(19, '2023_12_01_151358_remove_order_id_coupon_user_table', 5),
(20, '2023_12_01_151508_add_payment_in_order_table', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 71),
(1, 'App\\Models\\User', 72),
(1, 'App\\Models\\User', 75),
(2, 'App\\Models\\User', 71),
(2, 'App\\Models\\User', 75),
(3, 'App\\Models\\User', 71),
(3, 'App\\Models\\User', 75),
(4, 'App\\Models\\User', 71),
(4, 'App\\Models\\User', 75),
(5, 'App\\Models\\User', 27),
(5, 'App\\Models\\User', 71),
(5, 'App\\Models\\User', 75);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) NOT NULL,
  `total` double NOT NULL,
  `ship` double NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_phone` varchar(255) NOT NULL,
  `customer_address` text NOT NULL,
  `note` text NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payment` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `status`, `total`, `ship`, `customer_name`, `customer_email`, `customer_phone`, `customer_address`, `note`, `user_id`, `created_at`, `updated_at`, `payment`) VALUES
(24, 'pending', 404.2, 20, 'Truong Phat', 'phat@gmail.com', '0947383335', 'Da Nang', '123 street', 71, '2023-12-13 03:10:08', '2023-12-13 03:10:08', 'monney'),
(25, 'Success', 442, 20, 'Truong Phat', 'phat@gmail.com', '0947383335', 'Da Nang', '123 street', 71, '2023-12-13 05:48:41', '2023-12-13 05:49:04', 'monney');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('truongphat0812@gmail.com', '$2y$10$.djcKl2O/JC1FJsPYvkjWuU2HEjzlhOVL4X3WT9nWvrCNT8x3IxlC', '2023-11-27 09:10:14');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `display_name` varchar(255) DEFAULT NULL,
  `group` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `group`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'create-user', 'Create user', 'User', 'web', '2023-11-23 07:02:07', '2023-11-23 07:02:07'),
(2, 'update-user', 'Update user', 'User', 'web', '2023-11-23 07:02:07', '2023-11-23 07:02:07'),
(3, 'show-user', 'Show user', 'User', 'web', '2023-11-23 07:02:07', '2023-11-23 07:02:07'),
(4, 'delete-user', 'Delete user', 'User', 'web', '2023-11-23 07:02:07', '2023-11-23 07:02:07'),
(5, 'create-role', 'Create Role', 'Role', 'web', '2023-11-23 07:02:07', '2023-11-23 07:02:07'),
(6, 'update-role', 'Update Role', 'Role', 'web', '2023-11-23 07:02:07', '2023-11-23 07:02:07'),
(7, 'show-role', 'Show Role', 'Role', 'web', '2023-11-23 07:02:07', '2023-11-23 07:02:07'),
(8, 'delete-role', 'Delete Role', 'Role', 'web', '2023-11-23 07:02:07', '2023-11-23 07:02:07'),
(9, 'create-category', 'Create category', 'category', 'web', '2023-11-23 07:02:07', '2023-11-23 07:02:07'),
(10, 'update-category', 'Update category', 'category', 'web', '2023-11-23 07:02:07', '2023-11-23 07:02:07'),
(11, 'show-category', 'Show category', 'category', 'web', '2023-11-23 07:02:07', '2023-11-23 07:02:07'),
(12, 'delete-category', 'Delete category', 'category', 'web', '2023-11-23 07:02:07', '2023-11-23 07:02:07'),
(13, 'create-product', 'Create product', 'product', 'web', '2023-11-23 07:02:07', '2023-11-23 07:02:07'),
(14, 'update-product', 'Update product', 'product', 'web', '2023-11-23 07:02:07', '2023-11-23 07:02:07'),
(15, 'show-product', 'Show product', 'product', 'web', '2023-11-23 07:02:07', '2023-11-23 07:02:07'),
(16, 'delete-product', 'Delete product', 'product', 'web', '2023-11-23 07:02:07', '2023-11-23 07:02:07'),
(17, 'create-coupon', 'Create coupon', 'coupon', 'web', '2023-11-23 07:02:07', '2023-11-23 07:02:07'),
(18, 'update-coupon', 'Update coupon', 'coupon', 'web', '2023-11-23 07:02:07', '2023-11-23 07:02:07'),
(19, 'show-coupon', 'Show coupon', 'coupon', 'web', '2023-11-23 07:02:07', '2023-11-23 07:02:07'),
(20, 'delete-coupon', 'Delete coupon', 'coupon', 'web', '2023-11-23 07:02:07', '2023-11-23 07:02:07'),
(21, 'list-order', 'list order', 'orders', 'web', '2023-12-01 11:26:33', '2023-12-01 11:26:33'),
(22, 'update-order-status', 'Update order status', 'orders', 'web', '2023-12-01 11:26:33', '2023-12-01 11:26:33');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
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
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `sale` smallint(6) NOT NULL DEFAULT 0,
  `price` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `sale`, `price`, `created_at`, `updated_at`) VALUES
(48, 'Cable Knit Sweater Black Dress', '<p>Cable Knit Sweater Black Dress</p>', 50, 139, '2023-12-13 02:20:03', '2023-12-13 02:20:03'),
(49, 'Sơmi Girl Blue Fashion', '<p>Sơmi Girl Blue Fashion</p>', 15, 149, '2023-12-13 02:24:10', '2023-12-13 02:24:10'),
(50, 'BaBy Girl`l Blue Yell', '<p>BaBy Girl`l Blue Yell</p>', 40, 179, '2023-12-13 02:29:02', '2023-12-13 02:29:02'),
(51, 'Josie Short Dress - LYP', '<p>Josie Short Dress - LYP</p>', 49, 210, '2023-12-13 02:31:12', '2023-12-13 02:31:12'),
(53, 'Long Dress Women White', '<p>Long Dress Women White</p>', 10, 321, '2023-12-13 02:34:40', '2023-12-13 02:34:40'),
(54, 'T-Shirt Black Girl', '<p>T-Shirt Black Girl</p>', 20, 100, '2023-12-13 02:35:51', '2023-12-13 02:35:51'),
(55, 'Blue Long Cost', '<p>Blue Long Cost&nbsp;</p>', 11, 400, '2023-12-13 02:37:24', '2023-12-13 02:37:24'),
(56, 'Uniform Girl', '<p>Uniform Girl</p>', 50, 450, '2023-12-13 02:38:22', '2023-12-13 02:38:22'),
(57, 'Cardigan Men', '<p>Cardigan Men</p>', 11, 149, '2023-12-13 02:41:06', '2023-12-13 02:41:06'),
(58, 'Grey T-Shirt', '<p>Grey T-Shirt</p>', 1, 50, '2023-12-13 02:43:18', '2023-12-13 02:43:18'),
(59, 'Black Jean Men', '<p>Black Jean Men</p>', 10, 219, '2023-12-13 02:44:07', '2023-12-13 02:44:07'),
(60, 'Midnight Bomber', '<p>Midnight Bomber</p>', 10, 240, '2023-12-13 02:46:57', '2023-12-13 02:46:57'),
(63, 'Black Cost', '<p>aaaaa</p>', 10, 529, '2023-12-13 13:05:31', '2023-12-13 13:05:31'),
(64, 'Red Shirt', '<p>Red Shirt</p>', 1, 49, '2023-12-13 13:06:22', '2023-12-13 13:06:22'),
(65, 'Croc-Effect Greca Goddess Mini Bag', '<p>Croc-Effect Greca Goddess Mini Bag</p>', 10, 1200, '2023-12-13 13:08:11', '2023-12-13 13:08:11'),
(66, 'Greca Goddess Small Hobo Bag', '<p>Greca Goddess Small Hobo Bag</p>', 29, 2000, '2023-12-13 13:08:41', '2023-12-13 13:08:41'),
(67, 'Greca Goddess Satin Mini Bag', '<p>Greca Goddess Satin Mini Bag</p>', 20, 2100, '2023-12-13 13:09:08', '2023-12-13 13:09:08'),
(68, 'Greca Goddess Metallic Small Hobo Bag', '<p>Greca Goddess Metallic Small Hobo Bag</p>', 10, 3000, '2023-12-13 13:09:48', '2023-12-13 13:09:48'),
(69, 'Croc-Effect Greca Sky Shoulder Bag', '<p>Croc-Effect Greca Sky Shoulder Bag</p>', 10, 1900, '2023-12-13 13:10:30', '2023-12-13 13:10:30'),
(70, 'With Bling High Heels', '<p>With Bling High Heels</p>', 10, 500, '2023-12-13 13:12:19', '2023-12-13 13:12:19'),
(71, 'Vans Old School', '<p>Vans Old School</p>', 11, 120, '2023-12-13 13:13:09', '2023-12-13 13:13:09'),
(72, 'Leather Shoes', '<p>Leather Shoes</p>', 10, 799, '2023-12-13 13:13:59', '2023-12-13 13:13:59'),
(73, 'NY SHOES', '<p>NY SHOES</p>', 10, 150, '2023-12-13 13:14:36', '2023-12-13 13:14:36'),
(74, 'Running Shoes', '<p>Running Shoes</p>', 20, 200, '2023-12-13 13:15:06', '2023-12-13 13:15:06'),
(75, 'Pink Clothe', '<p>Pink Clothe</p>', 5, 50, '2023-12-13 13:17:18', '2023-12-13 13:17:18'),
(76, 'Children\'s Casual Dress', '<p>Children\'s Casual Dress</p>', 5, 99, '2023-12-13 13:18:17', '2023-12-13 13:18:17'),
(77, 'Children\'s Casual Dress Two Plaid', '<p>Children\'s Casual Dress Two Plaid</p>', 2, 99, '2023-12-13 13:18:46', '2023-12-13 13:18:46'),
(78, 'Combo(Shirt+pant)', '<p>Combo(Shirt+pant)</p>', 5, 120, '2023-12-13 13:19:26', '2023-12-13 13:19:26'),
(79, 'Combo(Hat + Dress + Shoes)', '<p>Combo(Hat + Dress + Shoes)</p>', 5, 250, '2023-12-13 13:20:08', '2023-12-13 13:20:08'),
(80, 'Sterling Silver Embellished Huggie Hoops', '<p>Sterling Silver Embellished Huggie Hoops</p>', 20, 16, '2023-12-13 13:23:44', '2023-12-13 13:23:44'),
(81, 'Sterling Silver Sparkle Hoops and Studs Set of Two', '<p><a href=\"https://www.accessorize.com/uk/sterling-silver-sparkle-hoops-and-studs-set-of-two-5818714900.html\">Sterling Silver Sparkle Hoops and Studs Set of Two</a></p>', 2, 20, '2023-12-13 13:24:14', '2023-12-13 13:24:14'),
(82, 'Sterling Silver Embellished Huggie Hoops', '<p><a href=\"https://www.accessorize.com/uk/sterling-silver-embellished-huggie-hoops-6817173000.html\">Sterling Silver Embellished Huggie Hoops</a></p>', 5, 20, '2023-12-13 13:24:41', '2023-12-13 13:24:41'),
(83, 'Sterling Silver Flower Stud Earrings', '<p><a href=\"https://www.accessorize.com/uk/sterling-silver-flower-stud-earrings-5816999100.html\">Sterling Silver Flower Stud Earrings</a></p>', 30, 10, '2023-12-13 13:25:16', '2023-12-13 13:25:16'),
(84, 'Sterling Silver Hoop Earrings Set of Three', '<p><a href=\"https://www.accessorize.com/uk/sterling-silver-hoop-earrings-set-of-three-3814009100.html\">Sterling Silver Hoop Earrings Set of Three</a></p>', 30, 25, '2023-12-13 13:25:49', '2023-12-13 13:25:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_details`
--

CREATE TABLE `product_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `size` varchar(255) NOT NULL,
  `string` varchar(255) DEFAULT NULL,
  `quantity` smallint(6) NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_details`
--

INSERT INTO `product_details` (`id`, `size`, `string`, `quantity`, `product_id`, `created_at`, `updated_at`) VALUES
(197, 'M', NULL, 1, 48, NULL, NULL),
(198, 'XL', NULL, 1, 48, NULL, NULL),
(199, 'XS', NULL, 1, 48, NULL, NULL),
(200, 'XXL', NULL, 1, 48, NULL, NULL),
(201, 'M', NULL, 1, 49, NULL, NULL),
(202, 'M', NULL, 1, 50, NULL, NULL),
(203, 'X', NULL, 1, 50, NULL, NULL),
(204, 'XL', NULL, 1, 50, NULL, NULL),
(205, 'M', NULL, 1, 51, NULL, NULL),
(206, 'ML', NULL, 1, 51, NULL, NULL),
(207, 'XXL', NULL, 1, 51, NULL, NULL),
(208, 'XXXL', NULL, 1, 51, NULL, NULL),
(212, 'M', NULL, 1, 53, NULL, NULL),
(213, 'XXL', NULL, 1, 53, NULL, NULL),
(214, 'XX', NULL, 1, 53, NULL, NULL),
(215, 'XXX', NULL, 1, 53, NULL, NULL),
(216, 'M', NULL, 1, 54, NULL, NULL),
(217, 'M', NULL, 1, 55, NULL, NULL),
(218, 'ML', NULL, 1, 55, NULL, NULL),
(219, 'XL', NULL, 1, 55, NULL, NULL),
(220, 'M', NULL, 1, 56, NULL, NULL),
(221, 'XL', NULL, 1, 56, NULL, NULL),
(222, 'M', NULL, 1, 57, NULL, NULL),
(223, 'ML', NULL, 1, 57, NULL, NULL),
(224, 'M', NULL, 1, 58, NULL, NULL),
(225, 'XL', NULL, 1, 58, NULL, NULL),
(226, 'XXL', NULL, 1, 58, NULL, NULL),
(227, 'M', NULL, 1, 59, NULL, NULL),
(228, 'XL', NULL, 1, 59, NULL, NULL),
(229, 'XXL', NULL, 1, 59, NULL, NULL),
(230, 'M', NULL, 1, 60, NULL, NULL),
(236, 'M', NULL, 1, 63, NULL, NULL),
(237, 'X', NULL, 1, 63, NULL, NULL),
(238, 'M', NULL, 1, 64, NULL, NULL),
(239, 'M', NULL, 1, 65, NULL, NULL),
(240, 'M', NULL, 1, 66, NULL, NULL),
(241, 'M', NULL, 1, 67, NULL, NULL),
(242, 'M', NULL, 1, 68, NULL, NULL),
(243, 'M', NULL, 1, 69, NULL, NULL),
(244, '36', NULL, 1, 70, NULL, NULL),
(245, '37', NULL, 1, 70, NULL, NULL),
(246, '38', NULL, 1, 70, NULL, NULL),
(247, '39', NULL, 1, 70, NULL, NULL),
(248, '38', NULL, 1, 71, NULL, NULL),
(249, '39', NULL, 1, 71, NULL, NULL),
(250, '40', NULL, 1, 71, NULL, NULL),
(251, '41', NULL, 1, 71, NULL, NULL),
(252, '39', NULL, 1, 72, NULL, NULL),
(253, '40', NULL, 1, 72, NULL, NULL),
(254, '41', NULL, 1, 72, NULL, NULL),
(255, '42', NULL, 1, 72, NULL, NULL),
(256, '39', NULL, 1, 73, NULL, NULL),
(257, '40', NULL, 1, 73, NULL, NULL),
(258, '41', NULL, 1, 73, NULL, NULL),
(259, '39', NULL, 1, 74, NULL, NULL),
(260, '40', NULL, 1, 74, NULL, NULL),
(261, '42', NULL, 1, 74, NULL, NULL),
(262, 'M', NULL, 1, 75, NULL, NULL),
(263, 'M', NULL, 1, 76, NULL, NULL),
(264, 'M', NULL, 1, 77, NULL, NULL),
(265, 'M', NULL, 1, 78, NULL, NULL),
(266, 'M', NULL, 1, 79, NULL, NULL),
(267, 'M', NULL, 1, 80, NULL, NULL),
(268, 'M', NULL, 1, 81, NULL, NULL),
(269, 'M', NULL, 1, 82, NULL, NULL),
(270, 'M', NULL, 1, 83, NULL, NULL),
(271, 'M', NULL, 1, 84, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_orders`
--

CREATE TABLE `product_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_size` varchar(255) NOT NULL,
  `product_color` varchar(255) NOT NULL,
  `product_quantity` smallint(6) NOT NULL,
  `product_price` double NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `display_name` varchar(255) DEFAULT NULL,
  `group` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `group`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'super-admin', 'Super Admin', 'system', 'web', '2023-11-23 06:45:31', '2023-11-23 06:45:31'),
(2, 'admin', 'Admin', 'system', 'web', '2023-11-23 06:45:31', '2023-11-23 06:45:31'),
(3, 'employee', 'employee', 'system', 'web', '2023-11-23 06:45:31', '2023-11-23 06:45:31'),
(4, 'manager', 'manager', 'system', 'web', '2023-11-23 06:45:31', '2023-11-23 06:45:31'),
(5, 'user', 'user', 'system', 'web', '2023-11-23 06:45:31', '2023-11-23 06:45:31');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` text DEFAULT NULL,
  `gender` varchar(255) NOT NULL DEFAULT 'male',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `address`, `gender`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(71, 'Truong Phat', 'truongphat0812@gmail.com', '0947383335', 'Da Nang\r\nDa Nang', 'male', NULL, '$2y$10$ix1T90aRD13wUjzIZvvahupTwOKOV1o39At05Dhtz8FK3VjJNtEZi', '7hcIAyvyYmYyuczLRyfCadFzQZftSUOPhVyHjCH1i03eJpVLT9NBz3BD8MVC', '2023-11-27 09:21:42', '2023-11-27 09:21:42'),
(75, 'admin', 'admin@gmail.com', '0947383334', 'Da Nang\r\nDa Nang', 'male', NULL, '$2y$10$EWANojTSnwfs5VdEJXxH8Orp8Qt1VA.pIEuoWx7M8KdUC3s9lATPm', NULL, '2023-12-13 13:39:28', '2023-12-13 13:39:28');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `cart_products`
--
ALTER TABLE `cart_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_products_product_id_foreign` (`product_id`),
  ADD KEY `cart_products_cart_id_foreign` (`cart_id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category_product`
--
ALTER TABLE `category_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_product_category_id_foreign` (`category_id`),
  ADD KEY `category_product_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_name_unique` (`name`);

--
-- Chỉ mục cho bảng `coupon_user`
--
ALTER TABLE `coupon_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coupon_user_user_id_foreign` (`user_id`),
  ADD KEY `coupon_user_coupon_id_foreign` (`coupon_id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `images`
--
ALTER TABLE `images`
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
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

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
-- Chỉ mục cho bảng `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_details_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `product_orders`
--
ALTER TABLE `product_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_orders_order_id_foreign` (`order_id`),
  ADD KEY `product_orders_user_id_foreign` (`user_id`);

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
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `cart_products`
--
ALTER TABLE `cart_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT cho bảng `category_product`
--
ALTER TABLE `category_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT cho bảng `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `coupon_user`
--
ALTER TABLE `coupon_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT cho bảng `product_details`
--
ALTER TABLE `product_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=272;

--
-- AUTO_INCREMENT cho bảng `product_orders`
--
ALTER TABLE `product_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `cart_products`
--
ALTER TABLE `cart_products`
  ADD CONSTRAINT `cart_products_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `category_product`
--
ALTER TABLE `category_product`
  ADD CONSTRAINT `category_product_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `category_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `coupon_user`
--
ALTER TABLE `coupon_user`
  ADD CONSTRAINT `coupon_user_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `coupon_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

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
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `product_details`
--
ALTER TABLE `product_details`
  ADD CONSTRAINT `product_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `product_orders`
--
ALTER TABLE `product_orders`
  ADD CONSTRAINT `product_orders_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

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
