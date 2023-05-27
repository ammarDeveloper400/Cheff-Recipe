-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 18, 2023 at 01:10 PM
-- Server version: 8.0.27
-- PHP Version: 7.4.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cheff`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_general_ci,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `title`, `description`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'About Us', '## What is Lorem Ipsum?\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem **Ipsum passage**s, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\n### What is Lorem Ipsum?\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book._ It has survived not only five centuries_, <u>but also the leap into electronic typesetting</u>, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\n### What is Lorem Ipsum?\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2023-02-15 10:29:08.060000', '2023-03-17 18:22:30.872000', '2023-02-15 10:29:10.424000', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `abouts_components`
--

CREATE TABLE `abouts_components` (
  `id` int UNSIGNED NOT NULL,
  `entity_id` int UNSIGNED DEFAULT NULL,
  `component_id` int UNSIGNED DEFAULT NULL,
  `component_type` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `field` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `abouts_components`
--

INSERT INTO `abouts_components` (`id`, `entity_id`, `component_id`, `component_type`, `field`, `order`) VALUES
(1, 1, 1, 'static.about-us-circles', 'circleblock', 2),
(2, 1, 2, 'static.about-us-circles', 'circleblock', 3),
(3, 1, 3, 'static.about-us-circles', 'circleblock', 4),
(8, 1, 1, 'static.sections', 'aboutsections', 1);

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int UNSIGNED NOT NULL,
  `action` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `properties` json DEFAULT NULL,
  `conditions` json DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `action`, `subject`, `properties`, `conditions`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'plugin::upload.read', NULL, '{}', '[]', '2023-02-02 18:13:15.830000', '2023-02-02 18:13:15.830000', NULL, NULL),
(2, 'plugin::upload.configure-view', NULL, '{}', '[]', '2023-02-02 18:13:15.839000', '2023-02-02 18:13:15.839000', NULL, NULL),
(3, 'plugin::upload.assets.create', NULL, '{}', '[]', '2023-02-02 18:13:15.846000', '2023-02-02 18:13:15.846000', NULL, NULL),
(4, 'plugin::upload.assets.update', NULL, '{}', '[]', '2023-02-02 18:13:15.854000', '2023-02-02 18:13:15.854000', NULL, NULL),
(5, 'plugin::upload.assets.download', NULL, '{}', '[]', '2023-02-02 18:13:15.863000', '2023-02-02 18:13:15.863000', NULL, NULL),
(6, 'plugin::upload.assets.copy-link', NULL, '{}', '[]', '2023-02-02 18:13:15.874000', '2023-02-02 18:13:15.874000', NULL, NULL),
(7, 'plugin::upload.read', NULL, '{}', '[\"admin::is-creator\"]', '2023-02-02 18:13:15.889000', '2023-02-02 18:13:15.889000', NULL, NULL),
(8, 'plugin::upload.configure-view', NULL, '{}', '[]', '2023-02-02 18:13:15.902000', '2023-02-02 18:13:15.902000', NULL, NULL),
(9, 'plugin::upload.assets.create', NULL, '{}', '[]', '2023-02-02 18:13:15.923000', '2023-02-02 18:13:15.923000', NULL, NULL),
(10, 'plugin::upload.assets.update', NULL, '{}', '[\"admin::is-creator\"]', '2023-02-02 18:13:15.936000', '2023-02-02 18:13:15.936000', NULL, NULL),
(11, 'plugin::upload.assets.download', NULL, '{}', '[]', '2023-02-02 18:13:15.946000', '2023-02-02 18:13:15.946000', NULL, NULL),
(12, 'plugin::upload.assets.copy-link', NULL, '{}', '[]', '2023-02-02 18:13:15.953000', '2023-02-02 18:13:15.953000', NULL, NULL),
(16, 'plugin::content-manager.explorer.delete', 'plugin::users-permissions.user', '{}', '[]', '2023-02-02 18:13:16.010000', '2023-02-02 18:13:16.010000', NULL, NULL),
(17, 'plugin::content-manager.single-types.configure-view', NULL, '{}', '[]', '2023-02-02 18:13:16.019000', '2023-02-02 18:13:16.019000', NULL, NULL),
(18, 'plugin::content-manager.collection-types.configure-view', NULL, '{}', '[]', '2023-02-02 18:13:16.026000', '2023-02-02 18:13:16.026000', NULL, NULL),
(19, 'plugin::content-manager.components.configure-layout', NULL, '{}', '[]', '2023-02-02 18:13:16.034000', '2023-02-02 18:13:16.034000', NULL, NULL),
(20, 'plugin::content-type-builder.read', NULL, '{}', '[]', '2023-02-02 18:13:16.041000', '2023-02-02 18:13:16.041000', NULL, NULL),
(21, 'plugin::email.settings.read', NULL, '{}', '[]', '2023-02-02 18:13:16.050000', '2023-02-02 18:13:16.050000', NULL, NULL),
(22, 'plugin::upload.read', NULL, '{}', '[]', '2023-02-02 18:13:16.059000', '2023-02-02 18:13:16.059000', NULL, NULL),
(23, 'plugin::upload.assets.create', NULL, '{}', '[]', '2023-02-02 18:13:16.072000', '2023-02-02 18:13:16.072000', NULL, NULL),
(24, 'plugin::upload.assets.update', NULL, '{}', '[]', '2023-02-02 18:13:16.082000', '2023-02-02 18:13:16.082000', NULL, NULL),
(25, 'plugin::upload.assets.download', NULL, '{}', '[]', '2023-02-02 18:13:16.091000', '2023-02-02 18:13:16.091000', NULL, NULL),
(26, 'plugin::upload.assets.copy-link', NULL, '{}', '[]', '2023-02-02 18:13:16.105000', '2023-02-02 18:13:16.105000', NULL, NULL),
(27, 'plugin::upload.configure-view', NULL, '{}', '[]', '2023-02-02 18:13:16.113000', '2023-02-02 18:13:16.113000', NULL, NULL),
(28, 'plugin::upload.settings.read', NULL, '{}', '[]', '2023-02-02 18:13:16.122000', '2023-02-02 18:13:16.122000', NULL, NULL),
(29, 'plugin::users-permissions.roles.create', NULL, '{}', '[]', '2023-02-02 18:13:16.128000', '2023-02-02 18:13:16.128000', NULL, NULL),
(30, 'plugin::users-permissions.roles.read', NULL, '{}', '[]', '2023-02-02 18:13:16.136000', '2023-02-02 18:13:16.136000', NULL, NULL),
(31, 'plugin::users-permissions.roles.update', NULL, '{}', '[]', '2023-02-02 18:13:16.141000', '2023-02-02 18:13:16.141000', NULL, NULL),
(32, 'plugin::users-permissions.roles.delete', NULL, '{}', '[]', '2023-02-02 18:13:16.148000', '2023-02-02 18:13:16.148000', NULL, NULL),
(33, 'plugin::users-permissions.providers.read', NULL, '{}', '[]', '2023-02-02 18:13:16.154000', '2023-02-02 18:13:16.154000', NULL, NULL),
(34, 'plugin::users-permissions.providers.update', NULL, '{}', '[]', '2023-02-02 18:13:16.161000', '2023-02-02 18:13:16.161000', NULL, NULL),
(35, 'plugin::users-permissions.email-templates.read', NULL, '{}', '[]', '2023-02-02 18:13:16.167000', '2023-02-02 18:13:16.167000', NULL, NULL),
(36, 'plugin::users-permissions.email-templates.update', NULL, '{}', '[]', '2023-02-02 18:13:16.173000', '2023-02-02 18:13:16.173000', NULL, NULL),
(37, 'plugin::users-permissions.advanced-settings.read', NULL, '{}', '[]', '2023-02-02 18:13:16.180000', '2023-02-02 18:13:16.180000', NULL, NULL),
(38, 'plugin::users-permissions.advanced-settings.update', NULL, '{}', '[]', '2023-02-02 18:13:16.187000', '2023-02-02 18:13:16.187000', NULL, NULL),
(39, 'plugin::i18n.locale.create', NULL, '{}', '[]', '2023-02-02 18:13:16.196000', '2023-02-02 18:13:16.196000', NULL, NULL),
(40, 'plugin::i18n.locale.read', NULL, '{}', '[]', '2023-02-02 18:13:16.208000', '2023-02-02 18:13:16.208000', NULL, NULL),
(41, 'plugin::i18n.locale.update', NULL, '{}', '[]', '2023-02-02 18:13:16.215000', '2023-02-02 18:13:16.215000', NULL, NULL),
(42, 'plugin::i18n.locale.delete', NULL, '{}', '[]', '2023-02-02 18:13:16.222000', '2023-02-02 18:13:16.222000', NULL, NULL),
(43, 'admin::marketplace.read', NULL, '{}', '[]', '2023-02-02 18:13:16.231000', '2023-02-02 18:13:16.231000', NULL, NULL),
(44, 'admin::marketplace.plugins.install', NULL, '{}', '[]', '2023-02-02 18:13:16.240000', '2023-02-02 18:13:16.240000', NULL, NULL),
(45, 'admin::marketplace.plugins.uninstall', NULL, '{}', '[]', '2023-02-02 18:13:16.247000', '2023-02-02 18:13:16.247000', NULL, NULL),
(46, 'admin::webhooks.create', NULL, '{}', '[]', '2023-02-02 18:13:16.254000', '2023-02-02 18:13:16.254000', NULL, NULL),
(47, 'admin::webhooks.read', NULL, '{}', '[]', '2023-02-02 18:13:16.265000', '2023-02-02 18:13:16.265000', NULL, NULL),
(48, 'admin::webhooks.update', NULL, '{}', '[]', '2023-02-02 18:13:16.274000', '2023-02-02 18:13:16.274000', NULL, NULL),
(49, 'admin::webhooks.delete', NULL, '{}', '[]', '2023-02-02 18:13:16.281000', '2023-02-02 18:13:16.281000', NULL, NULL),
(50, 'admin::users.create', NULL, '{}', '[]', '2023-02-02 18:13:16.286000', '2023-02-02 18:13:16.286000', NULL, NULL),
(51, 'admin::users.read', NULL, '{}', '[]', '2023-02-02 18:13:16.296000', '2023-02-02 18:13:16.296000', NULL, NULL),
(52, 'admin::users.update', NULL, '{}', '[]', '2023-02-02 18:13:16.304000', '2023-02-02 18:13:16.304000', NULL, NULL),
(53, 'admin::users.delete', NULL, '{}', '[]', '2023-02-02 18:13:16.314000', '2023-02-02 18:13:16.314000', NULL, NULL),
(54, 'admin::roles.create', NULL, '{}', '[]', '2023-02-02 18:13:16.324000', '2023-02-02 18:13:16.324000', NULL, NULL),
(55, 'admin::roles.read', NULL, '{}', '[]', '2023-02-02 18:13:16.334000', '2023-02-02 18:13:16.334000', NULL, NULL),
(56, 'admin::roles.update', NULL, '{}', '[]', '2023-02-02 18:13:16.343000', '2023-02-02 18:13:16.343000', NULL, NULL),
(57, 'admin::roles.delete', NULL, '{}', '[]', '2023-02-02 18:13:16.350000', '2023-02-02 18:13:16.350000', NULL, NULL),
(58, 'admin::api-tokens.access', NULL, '{}', '[]', '2023-02-02 18:13:16.362000', '2023-02-02 18:13:16.362000', NULL, NULL),
(59, 'admin::api-tokens.create', NULL, '{}', '[]', '2023-02-02 18:13:16.375000', '2023-02-02 18:13:16.375000', NULL, NULL),
(60, 'admin::api-tokens.read', NULL, '{}', '[]', '2023-02-02 18:13:16.391000', '2023-02-02 18:13:16.391000', NULL, NULL),
(61, 'admin::api-tokens.update', NULL, '{}', '[]', '2023-02-02 18:13:16.400000', '2023-02-02 18:13:16.400000', NULL, NULL),
(62, 'admin::api-tokens.regenerate', NULL, '{}', '[]', '2023-02-02 18:13:16.408000', '2023-02-02 18:13:16.408000', NULL, NULL),
(63, 'admin::api-tokens.delete', NULL, '{}', '[]', '2023-02-02 18:13:16.416000', '2023-02-02 18:13:16.416000', NULL, NULL),
(64, 'admin::project-settings.update', NULL, '{}', '[]', '2023-02-02 18:13:16.423000', '2023-02-02 18:13:16.423000', NULL, NULL),
(65, 'admin::project-settings.read', NULL, '{}', '[]', '2023-02-02 18:13:16.436000', '2023-02-02 18:13:16.436000', NULL, NULL),
(79, 'plugin::content-manager.explorer.delete', 'api::category.category', '{}', '[]', '2023-02-02 19:13:53.758000', '2023-02-02 19:13:53.758000', NULL, NULL),
(80, 'plugin::content-manager.explorer.publish', 'api::category.category', '{}', '[]', '2023-02-02 19:13:53.765000', '2023-02-02 19:13:53.765000', NULL, NULL),
(87, 'plugin::content-manager.explorer.delete', 'api::sub-category.sub-category', '{}', '[]', '2023-02-02 19:14:43.417000', '2023-02-02 19:14:43.417000', NULL, NULL),
(88, 'plugin::content-manager.explorer.publish', 'api::sub-category.sub-category', '{}', '[]', '2023-02-02 19:14:43.424000', '2023-02-02 19:14:43.424000', NULL, NULL),
(92, 'plugin::content-manager.explorer.delete', 'api::recipe.recipe', '{}', '[]', '2023-02-04 19:04:01.875000', '2023-02-04 19:04:01.875000', NULL, NULL),
(93, 'plugin::content-manager.explorer.publish', 'api::recipe.recipe', '{}', '[]', '2023-02-04 19:04:01.880000', '2023-02-04 19:04:01.880000', NULL, NULL),
(94, 'plugin::content-manager.explorer.create', 'api::section.section', '{\"fields\": [\"title\", \"sub_title\", \"recipes\"]}', '[]', '2023-02-04 19:05:08.926000', '2023-02-04 19:05:08.926000', NULL, NULL),
(95, 'plugin::content-manager.explorer.read', 'api::section.section', '{\"fields\": [\"title\", \"sub_title\", \"recipes\"]}', '[]', '2023-02-04 19:05:08.934000', '2023-02-04 19:05:08.934000', NULL, NULL),
(96, 'plugin::content-manager.explorer.update', 'api::section.section', '{\"fields\": [\"title\", \"sub_title\", \"recipes\"]}', '[]', '2023-02-04 19:05:08.940000', '2023-02-04 19:05:08.940000', NULL, NULL),
(97, 'plugin::content-manager.explorer.delete', 'api::section.section', '{}', '[]', '2023-02-04 19:05:08.946000', '2023-02-04 19:05:08.946000', NULL, NULL),
(98, 'plugin::content-manager.explorer.publish', 'api::section.section', '{}', '[]', '2023-02-04 19:05:08.952000', '2023-02-04 19:05:08.952000', NULL, NULL),
(102, 'plugin::content-manager.explorer.delete', 'api::homepage.homepage', '{}', '[]', '2023-02-04 19:07:12.472000', '2023-02-04 19:07:12.472000', NULL, NULL),
(116, 'plugin::content-manager.explorer.create', 'api::sub-category.sub-category', '{\"fields\": [\"title\", \"sub_title\", \"category\", \"image\", \"recipes\"]}', '[]', '2023-02-04 19:13:46.170000', '2023-02-04 19:13:46.170000', NULL, NULL),
(118, 'plugin::content-manager.explorer.read', 'api::sub-category.sub-category', '{\"fields\": [\"title\", \"sub_title\", \"category\", \"image\", \"recipes\"]}', '[]', '2023-02-04 19:13:46.182000', '2023-02-04 19:13:46.182000', NULL, NULL),
(120, 'plugin::content-manager.explorer.update', 'api::sub-category.sub-category', '{\"fields\": [\"title\", \"sub_title\", \"category\", \"image\", \"recipes\"]}', '[]', '2023-02-04 19:13:46.193000', '2023-02-04 19:13:46.193000', NULL, NULL),
(121, 'plugin::content-manager.explorer.create', 'api::homepage.homepage', '{\"fields\": [\"sections\", \"main_title\", \"sub_title\", \"button_text\", \"sub_sub_title\"]}', '[]', '2023-02-04 19:22:11.216000', '2023-02-04 19:22:11.216000', NULL, NULL),
(122, 'plugin::content-manager.explorer.read', 'api::homepage.homepage', '{\"fields\": [\"sections\", \"main_title\", \"sub_title\", \"button_text\", \"sub_sub_title\"]}', '[]', '2023-02-04 19:22:11.223000', '2023-02-04 19:22:11.223000', NULL, NULL),
(123, 'plugin::content-manager.explorer.update', 'api::homepage.homepage', '{\"fields\": [\"sections\", \"main_title\", \"sub_title\", \"button_text\", \"sub_sub_title\"]}', '[]', '2023-02-04 19:22:11.231000', '2023-02-04 19:22:11.231000', NULL, NULL),
(125, 'plugin::content-manager.explorer.create', 'api::footer.footer', '{\"fields\": [\"copyright\", \"pages\"]}', '[]', '2023-02-15 10:14:03.790000', '2023-02-15 10:14:03.790000', NULL, NULL),
(129, 'plugin::content-manager.explorer.read', 'api::footer.footer', '{\"fields\": [\"copyright\", \"pages\"]}', '[]', '2023-02-15 10:14:03.822000', '2023-02-15 10:14:03.822000', NULL, NULL),
(133, 'plugin::content-manager.explorer.update', 'api::footer.footer', '{\"fields\": [\"copyright\", \"pages\"]}', '[]', '2023-02-15 10:14:03.923000', '2023-02-15 10:14:03.923000', NULL, NULL),
(136, 'plugin::content-manager.explorer.delete', 'api::footer.footer', '{}', '[]', '2023-02-15 10:14:03.941000', '2023-02-15 10:14:03.941000', NULL, NULL),
(137, 'plugin::content-manager.explorer.delete', 'api::page.page', '{}', '[]', '2023-02-15 10:14:03.945000', '2023-02-15 10:14:03.945000', NULL, NULL),
(138, 'plugin::content-manager.explorer.publish', 'api::page.page', '{}', '[]', '2023-02-15 10:14:03.957000', '2023-02-15 10:14:03.957000', NULL, NULL),
(142, 'plugin::content-manager.explorer.delete', 'api::about.about', '{}', '[]', '2023-02-15 10:25:28.290000', '2023-02-15 10:25:28.290000', NULL, NULL),
(143, 'plugin::content-manager.explorer.publish', 'api::about.about', '{}', '[]', '2023-02-15 10:25:28.296000', '2023-02-15 10:25:28.296000', NULL, NULL),
(147, 'plugin::content-manager.explorer.create', 'api::lead.lead', '{\"fields\": [\"email\", \"name\", \"msg\", \"status\"]}', '[]', '2023-02-15 12:32:59.265000', '2023-02-15 12:32:59.265000', NULL, NULL),
(148, 'plugin::content-manager.explorer.read', 'api::lead.lead', '{\"fields\": [\"email\", \"name\", \"msg\", \"status\"]}', '[]', '2023-02-15 12:32:59.278000', '2023-02-15 12:32:59.278000', NULL, NULL),
(149, 'plugin::content-manager.explorer.update', 'api::lead.lead', '{\"fields\": [\"email\", \"name\", \"msg\", \"status\"]}', '[]', '2023-02-15 12:32:59.284000', '2023-02-15 12:32:59.284000', NULL, NULL),
(150, 'plugin::content-manager.explorer.delete', 'api::lead.lead', '{}', '[]', '2023-02-15 12:32:59.289000', '2023-02-15 12:32:59.289000', NULL, NULL),
(152, 'plugin::content-manager.explorer.create', 'api::wishlist.wishlist', '{\"fields\": [\"users_permissions_user\", \"recipes\"]}', '[]', '2023-02-16 18:34:12.711000', '2023-02-16 18:34:12.711000', NULL, NULL),
(154, 'plugin::content-manager.explorer.read', 'api::wishlist.wishlist', '{\"fields\": [\"users_permissions_user\", \"recipes\"]}', '[]', '2023-02-16 18:34:12.724000', '2023-02-16 18:34:12.724000', NULL, NULL),
(156, 'plugin::content-manager.explorer.update', 'api::wishlist.wishlist', '{\"fields\": [\"users_permissions_user\", \"recipes\"]}', '[]', '2023-02-16 18:34:12.738000', '2023-02-16 18:34:12.738000', NULL, NULL),
(157, 'plugin::content-manager.explorer.delete', 'api::wishlist.wishlist', '{}', '[]', '2023-02-16 18:34:12.746000', '2023-02-16 18:34:12.746000', NULL, NULL),
(164, 'plugin::content-manager.explorer.delete', 'api::searche.searche', '{}', '[]', '2023-02-16 18:34:52.458000', '2023-02-16 18:34:52.458000', NULL, NULL),
(171, 'plugin::content-manager.explorer.delete', 'api::download.download', '{}', '[]', '2023-02-16 18:47:55.409000', '2023-02-16 18:47:55.409000', NULL, NULL),
(175, 'plugin::content-manager.explorer.delete', 'api::freemium.freemium', '{}', '[]', '2023-02-16 18:49:04.265000', '2023-02-16 18:49:04.265000', NULL, NULL),
(234, 'plugin::content-manager.explorer.delete', 'api::save.save', '{}', '[]', '2023-02-18 20:22:10.698000', '2023-02-18 20:22:10.698000', NULL, NULL),
(239, 'plugin::content-manager.explorer.create', 'api::download.download', '{\"fields\": [\"recipe\", \"user_id\", \"trial\", \"subscription\"]}', '[]', '2023-03-08 10:31:21.971000', '2023-03-08 10:31:21.971000', NULL, NULL),
(241, 'plugin::content-manager.explorer.create', 'api::save.save', '{\"fields\": [\"recipe\", \"user_id\", \"trial\", \"subscription\"]}', '[]', '2023-03-08 10:31:21.984000', '2023-03-08 10:31:21.984000', NULL, NULL),
(242, 'plugin::content-manager.explorer.create', 'api::searche.searche', '{\"fields\": [\"title\", \"users_permissions_user\", \"user_id\", \"trial\", \"subscription\"]}', '[]', '2023-03-08 10:31:21.990000', '2023-03-08 10:31:21.990000', NULL, NULL),
(245, 'plugin::content-manager.explorer.read', 'api::download.download', '{\"fields\": [\"recipe\", \"user_id\", \"trial\", \"subscription\"]}', '[]', '2023-03-08 10:31:22.009000', '2023-03-08 10:31:22.009000', NULL, NULL),
(247, 'plugin::content-manager.explorer.read', 'api::save.save', '{\"fields\": [\"recipe\", \"user_id\", \"trial\", \"subscription\"]}', '[]', '2023-03-08 10:31:22.023000', '2023-03-08 10:31:22.023000', NULL, NULL),
(248, 'plugin::content-manager.explorer.read', 'api::searche.searche', '{\"fields\": [\"title\", \"users_permissions_user\", \"user_id\", \"trial\", \"subscription\"]}', '[]', '2023-03-08 10:31:22.030000', '2023-03-08 10:31:22.030000', NULL, NULL),
(251, 'plugin::content-manager.explorer.update', 'api::download.download', '{\"fields\": [\"recipe\", \"user_id\", \"trial\", \"subscription\"]}', '[]', '2023-03-08 10:31:22.050000', '2023-03-08 10:31:22.050000', NULL, NULL),
(253, 'plugin::content-manager.explorer.update', 'api::save.save', '{\"fields\": [\"recipe\", \"user_id\", \"trial\", \"subscription\"]}', '[]', '2023-03-08 10:31:22.062000', '2023-03-08 10:31:22.062000', NULL, NULL),
(254, 'plugin::content-manager.explorer.update', 'api::searche.searche', '{\"fields\": [\"title\", \"users_permissions_user\", \"user_id\", \"trial\", \"subscription\"]}', '[]', '2023-03-08 10:31:22.068000', '2023-03-08 10:31:22.068000', NULL, NULL),
(256, 'plugin::content-manager.explorer.delete', 'api::plan.plan', '{}', '[]', '2023-03-08 10:31:22.082000', '2023-03-08 10:31:22.082000', NULL, NULL),
(257, 'plugin::content-manager.explorer.delete', 'api::subscription.subscription', '{}', '[]', '2023-03-08 10:31:22.089000', '2023-03-08 10:31:22.089000', NULL, NULL),
(258, 'plugin::content-manager.explorer.publish', 'api::plan.plan', '{}', '[]', '2023-03-08 10:31:22.095000', '2023-03-08 10:31:22.095000', NULL, NULL),
(261, 'plugin::content-manager.explorer.create', 'api::subscription.subscription', '{\"fields\": [\"users_permissions_user\", \"plan\", \"subscribed_at\", \"days\", \"expires\", \"amount_paid\", \"saves\", \"searches\", \"downloads\", \"active\", \"refund_requested\", \"refunded\", \"refund_rejected\", \"refund_msg\", \"upgraded_to\", \"unsubscribe_msg\", \"aisearches\"]}', '[]', '2023-03-08 10:44:46.567000', '2023-03-08 10:44:46.567000', NULL, NULL),
(264, 'plugin::content-manager.explorer.read', 'api::subscription.subscription', '{\"fields\": [\"users_permissions_user\", \"plan\", \"subscribed_at\", \"days\", \"expires\", \"amount_paid\", \"saves\", \"searches\", \"downloads\", \"active\", \"refund_requested\", \"refunded\", \"refund_rejected\", \"refund_msg\", \"upgraded_to\", \"unsubscribe_msg\", \"aisearches\"]}', '[]', '2023-03-08 10:44:46.593000', '2023-03-08 10:44:46.593000', NULL, NULL),
(267, 'plugin::content-manager.explorer.update', 'api::subscription.subscription', '{\"fields\": [\"users_permissions_user\", \"plan\", \"subscribed_at\", \"days\", \"expires\", \"amount_paid\", \"saves\", \"searches\", \"downloads\", \"active\", \"refund_requested\", \"refunded\", \"refund_rejected\", \"refund_msg\", \"upgraded_to\", \"unsubscribe_msg\", \"aisearches\"]}', '[]', '2023-03-08 10:44:46.618000', '2023-03-08 10:44:46.618000', NULL, NULL),
(268, 'plugin::content-manager.explorer.delete', 'api::aisearch.aisearch', '{}', '[]', '2023-03-08 10:44:46.626000', '2023-03-08 10:44:46.626000', NULL, NULL),
(270, 'plugin::content-manager.explorer.create', 'api::aisearch.aisearch', '{\"fields\": [\"title\", \"subscription\", \"trial\", \"users_permissions_user\"]}', '[]', '2023-03-09 16:41:32.002000', '2023-03-09 16:41:32.002000', NULL, NULL),
(272, 'plugin::content-manager.explorer.read', 'api::aisearch.aisearch', '{\"fields\": [\"title\", \"subscription\", \"trial\", \"users_permissions_user\"]}', '[]', '2023-03-09 16:41:32.016000', '2023-03-09 16:41:32.016000', NULL, NULL),
(274, 'plugin::content-manager.explorer.update', 'api::aisearch.aisearch', '{\"fields\": [\"title\", \"subscription\", \"trial\", \"users_permissions_user\"]}', '[]', '2023-03-09 16:41:32.031000', '2023-03-09 16:41:32.031000', NULL, NULL),
(278, 'plugin::content-manager.explorer.create', 'api::freemium.freemium', '{\"fields\": [\"searches\", \"downloads\", \"saves\", \"aisearches\"]}', '[]', '2023-03-10 02:37:42.296000', '2023-03-10 02:37:42.296000', NULL, NULL),
(279, 'plugin::content-manager.explorer.read', 'api::freemium.freemium', '{\"fields\": [\"searches\", \"downloads\", \"saves\", \"aisearches\"]}', '[]', '2023-03-10 02:37:42.304000', '2023-03-10 02:37:42.304000', NULL, NULL),
(280, 'plugin::content-manager.explorer.update', 'api::freemium.freemium', '{\"fields\": [\"searches\", \"downloads\", \"saves\", \"aisearches\"]}', '[]', '2023-03-10 02:37:42.312000', '2023-03-10 02:37:42.312000', NULL, NULL),
(281, 'plugin::content-manager.explorer.create', 'api::plan.plan', '{\"fields\": [\"title\", \"sub_title\", \"plan_benefits.title\", \"plan_benefits.available\", \"type\", \"price\", \"searches\", \"saves\", \"downloads\", \"stripe_id\", \"paypal_id\", \"featured\", \"image\", \"days\", \"aisearches\"]}', '[]', '2023-03-10 02:38:26.078000', '2023-03-10 02:38:26.078000', NULL, NULL),
(282, 'plugin::content-manager.explorer.read', 'api::plan.plan', '{\"fields\": [\"title\", \"sub_title\", \"plan_benefits.title\", \"plan_benefits.available\", \"type\", \"price\", \"searches\", \"saves\", \"downloads\", \"stripe_id\", \"paypal_id\", \"featured\", \"image\", \"days\", \"aisearches\"]}', '[]', '2023-03-10 02:38:26.087000', '2023-03-10 02:38:26.087000', NULL, NULL),
(283, 'plugin::content-manager.explorer.update', 'api::plan.plan', '{\"fields\": [\"title\", \"sub_title\", \"plan_benefits.title\", \"plan_benefits.available\", \"type\", \"price\", \"searches\", \"saves\", \"downloads\", \"stripe_id\", \"paypal_id\", \"featured\", \"image\", \"days\", \"aisearches\"]}', '[]', '2023-03-10 02:38:26.093000', '2023-03-10 02:38:26.093000', NULL, NULL),
(287, 'plugin::content-manager.explorer.delete', 'api::bcategory.bcategory', '{}', '[]', '2023-03-11 18:08:11.161000', '2023-03-11 18:08:11.161000', NULL, NULL),
(288, 'plugin::content-manager.explorer.publish', 'api::bcategory.bcategory', '{}', '[]', '2023-03-11 18:08:11.169000', '2023-03-11 18:08:11.169000', NULL, NULL),
(292, 'plugin::content-manager.explorer.delete', 'api::blog.blog', '{}', '[]', '2023-03-11 18:09:10.716000', '2023-03-11 18:09:10.716000', NULL, NULL),
(293, 'plugin::content-manager.explorer.publish', 'api::blog.blog', '{}', '[]', '2023-03-11 18:09:10.724000', '2023-03-11 18:09:10.724000', NULL, NULL),
(300, 'plugin::content-manager.explorer.create', 'api::bcategory.bcategory', '{\"fields\": [\"title\", \"blogs\", \"image\"]}', '[]', '2023-03-11 19:04:34.025000', '2023-03-11 19:04:34.025000', NULL, NULL),
(301, 'plugin::content-manager.explorer.read', 'api::bcategory.bcategory', '{\"fields\": [\"title\", \"blogs\", \"image\"]}', '[]', '2023-03-11 19:04:34.049000', '2023-03-11 19:04:34.049000', NULL, NULL),
(302, 'plugin::content-manager.explorer.update', 'api::bcategory.bcategory', '{\"fields\": [\"title\", \"blogs\", \"image\"]}', '[]', '2023-03-11 19:04:34.059000', '2023-03-11 19:04:34.059000', NULL, NULL),
(315, 'plugin::content-manager.explorer.create', 'api::pdf.pdf', '{\"fields\": [\"logo\"]}', '[]', '2023-03-16 11:41:04.347000', '2023-03-16 11:41:04.347000', NULL, NULL),
(316, 'plugin::content-manager.explorer.read', 'api::pdf.pdf', '{\"fields\": [\"logo\"]}', '[]', '2023-03-16 11:41:04.360000', '2023-03-16 11:41:04.360000', NULL, NULL),
(317, 'plugin::content-manager.explorer.update', 'api::pdf.pdf', '{\"fields\": [\"logo\"]}', '[]', '2023-03-16 11:41:04.366000', '2023-03-16 11:41:04.366000', NULL, NULL),
(318, 'plugin::content-manager.explorer.delete', 'api::pdf.pdf', '{}', '[]', '2023-03-16 11:41:04.371000', '2023-03-16 11:41:04.371000', NULL, NULL),
(319, 'plugin::content-manager.explorer.create', 'api::category.category', '{\"fields\": [\"title\", \"sub_title\", \"sub_categories\", \"image\", \"banner\", \"recipes\"]}', '[]', '2023-03-17 11:54:04.698000', '2023-03-17 11:54:04.698000', NULL, NULL),
(321, 'plugin::content-manager.explorer.read', 'api::category.category', '{\"fields\": [\"title\", \"sub_title\", \"sub_categories\", \"image\", \"banner\", \"recipes\"]}', '[]', '2023-03-17 11:54:04.714000', '2023-03-17 11:54:04.714000', NULL, NULL),
(323, 'plugin::content-manager.explorer.update', 'api::category.category', '{\"fields\": [\"title\", \"sub_title\", \"sub_categories\", \"image\", \"banner\", \"recipes\"]}', '[]', '2023-03-17 11:54:04.727000', '2023-03-17 11:54:04.727000', NULL, NULL),
(334, 'plugin::content-manager.explorer.create', 'api::page.page', '{\"fields\": [\"title\", \"sub_title\", \"header\", \"slug\", \"body\"]}', '[]', '2023-03-17 20:21:19.528000', '2023-03-17 20:21:19.528000', NULL, NULL),
(335, 'plugin::content-manager.explorer.read', 'api::page.page', '{\"fields\": [\"title\", \"sub_title\", \"header\", \"slug\", \"body\"]}', '[]', '2023-03-17 20:21:19.537000', '2023-03-17 20:21:19.537000', NULL, NULL),
(336, 'plugin::content-manager.explorer.update', 'api::page.page', '{\"fields\": [\"title\", \"sub_title\", \"header\", \"slug\", \"body\"]}', '[]', '2023-03-17 20:21:19.544000', '2023-03-17 20:21:19.544000', NULL, NULL),
(337, 'plugin::content-manager.explorer.create', 'api::about.about', '{\"fields\": [\"title\", \"circleblock.title\", \"circleblock.image\", \"circleblock.description\", \"gallery\", \"banner\", \"aboutsections.type\", \"aboutsections.title\", \"aboutsections.description\", \"aboutsections.image\", \"description\"]}', '[]', '2023-03-17 20:21:56.362000', '2023-03-17 20:21:56.362000', NULL, NULL),
(338, 'plugin::content-manager.explorer.read', 'api::about.about', '{\"fields\": [\"title\", \"circleblock.title\", \"circleblock.image\", \"circleblock.description\", \"gallery\", \"banner\", \"aboutsections.type\", \"aboutsections.title\", \"aboutsections.description\", \"aboutsections.image\", \"description\"]}', '[]', '2023-03-17 20:21:56.412000', '2023-03-17 20:21:56.412000', NULL, NULL),
(339, 'plugin::content-manager.explorer.update', 'api::about.about', '{\"fields\": [\"title\", \"circleblock.title\", \"circleblock.image\", \"circleblock.description\", \"gallery\", \"banner\", \"aboutsections.type\", \"aboutsections.title\", \"aboutsections.description\", \"aboutsections.image\", \"description\"]}', '[]', '2023-03-17 20:21:56.464000', '2023-03-17 20:21:56.464000', NULL, NULL),
(340, 'plugin::content-manager.explorer.create', 'api::blog.blog', '{\"fields\": [\"title\", \"author\", \"short_description\", \"image\", \"bcategory\", \"description\"]}', '[]', '2023-03-17 20:22:21.864000', '2023-03-17 20:22:21.864000', NULL, NULL),
(341, 'plugin::content-manager.explorer.read', 'api::blog.blog', '{\"fields\": [\"title\", \"author\", \"short_description\", \"image\", \"bcategory\", \"description\"]}', '[]', '2023-03-17 20:22:21.872000', '2023-03-17 20:22:21.872000', NULL, NULL),
(342, 'plugin::content-manager.explorer.update', 'api::blog.blog', '{\"fields\": [\"title\", \"author\", \"short_description\", \"image\", \"bcategory\", \"description\"]}', '[]', '2023-03-17 20:22:21.881000', '2023-03-17 20:22:21.881000', NULL, NULL),
(343, 'plugin::content-manager.explorer.create', 'plugin::users-permissions.user', '{\"fields\": [\"username\", \"email\", \"provider\", \"password\", \"resetPasswordToken\", \"confirmationToken\", \"confirmed\", \"blocked\", \"role\", \"wishlists\", \"searches\", \"searches_local\", \"searchese\", \"downloads\", \"saves\", \"subscriptions\", \"aisearches\", \"fullname\", \"phone\", \"address\", \"pic\", \"delete_reason\", \"prints\"]}', '[]', '2023-03-18 12:38:59.147000', '2023-03-18 12:38:59.147000', NULL, NULL),
(344, 'plugin::content-manager.explorer.create', 'api::print.print', '{\"fields\": [\"recipe\", \"users_permissions_user\"]}', '[]', '2023-03-18 12:38:59.155000', '2023-03-18 12:38:59.155000', NULL, NULL),
(345, 'plugin::content-manager.explorer.create', 'api::recipe.recipe', '{\"fields\": [\"title\", \"sub_title\", \"description\", \"ingredients\", \"optional_ingredients\", \"directions\", \"nutritional_information\", \"note\", \"image\", \"sub_category\", \"servings\", \"cook_time\", \"ai\", \"category\", \"print\"]}', '[]', '2023-03-18 12:38:59.161000', '2023-03-18 12:38:59.161000', NULL, NULL),
(346, 'plugin::content-manager.explorer.read', 'plugin::users-permissions.user', '{\"fields\": [\"username\", \"email\", \"provider\", \"password\", \"resetPasswordToken\", \"confirmationToken\", \"confirmed\", \"blocked\", \"role\", \"wishlists\", \"searches\", \"searches_local\", \"searchese\", \"downloads\", \"saves\", \"subscriptions\", \"aisearches\", \"fullname\", \"phone\", \"address\", \"pic\", \"delete_reason\", \"prints\"]}', '[]', '2023-03-18 12:38:59.168000', '2023-03-18 12:38:59.168000', NULL, NULL),
(347, 'plugin::content-manager.explorer.read', 'api::print.print', '{\"fields\": [\"recipe\", \"users_permissions_user\"]}', '[]', '2023-03-18 12:38:59.173000', '2023-03-18 12:38:59.173000', NULL, NULL),
(348, 'plugin::content-manager.explorer.read', 'api::recipe.recipe', '{\"fields\": [\"title\", \"sub_title\", \"description\", \"ingredients\", \"optional_ingredients\", \"directions\", \"nutritional_information\", \"note\", \"image\", \"sub_category\", \"servings\", \"cook_time\", \"ai\", \"category\", \"print\"]}', '[]', '2023-03-18 12:38:59.179000', '2023-03-18 12:38:59.179000', NULL, NULL),
(349, 'plugin::content-manager.explorer.update', 'plugin::users-permissions.user', '{\"fields\": [\"username\", \"email\", \"provider\", \"password\", \"resetPasswordToken\", \"confirmationToken\", \"confirmed\", \"blocked\", \"role\", \"wishlists\", \"searches\", \"searches_local\", \"searchese\", \"downloads\", \"saves\", \"subscriptions\", \"aisearches\", \"fullname\", \"phone\", \"address\", \"pic\", \"delete_reason\", \"prints\"]}', '[]', '2023-03-18 12:38:59.185000', '2023-03-18 12:38:59.185000', NULL, NULL),
(350, 'plugin::content-manager.explorer.update', 'api::print.print', '{\"fields\": [\"recipe\", \"users_permissions_user\"]}', '[]', '2023-03-18 12:38:59.190000', '2023-03-18 12:38:59.190000', NULL, NULL),
(351, 'plugin::content-manager.explorer.update', 'api::recipe.recipe', '{\"fields\": [\"title\", \"sub_title\", \"description\", \"ingredients\", \"optional_ingredients\", \"directions\", \"nutritional_information\", \"note\", \"image\", \"sub_category\", \"servings\", \"cook_time\", \"ai\", \"category\", \"print\"]}', '[]', '2023-03-18 12:38:59.196000', '2023-03-18 12:38:59.196000', NULL, NULL),
(352, 'plugin::content-manager.explorer.delete', 'api::print.print', '{}', '[]', '2023-03-18 12:38:59.201000', '2023-03-18 12:38:59.201000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions_role_links`
--

CREATE TABLE `admin_permissions_role_links` (
  `id` int UNSIGNED NOT NULL,
  `permission_id` int UNSIGNED DEFAULT NULL,
  `role_id` int UNSIGNED DEFAULT NULL,
  `permission_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_permissions_role_links`
--

INSERT INTO `admin_permissions_role_links` (`id`, `permission_id`, `role_id`, `permission_order`) VALUES
(1, 1, 2, 1),
(2, 2, 2, 2),
(3, 3, 2, 3),
(4, 4, 2, 4),
(5, 5, 2, 5),
(6, 6, 2, 6),
(7, 7, 3, 1),
(8, 8, 3, 2),
(9, 9, 3, 3),
(10, 10, 3, 4),
(11, 11, 3, 5),
(12, 12, 3, 6),
(16, 16, 1, 4),
(17, 17, 1, 5),
(18, 18, 1, 6),
(19, 19, 1, 7),
(20, 20, 1, 8),
(21, 21, 1, 9),
(22, 22, 1, 10),
(23, 23, 1, 11),
(24, 24, 1, 12),
(25, 25, 1, 13),
(26, 26, 1, 14),
(27, 27, 1, 15),
(28, 28, 1, 16),
(29, 29, 1, 17),
(30, 30, 1, 18),
(31, 31, 1, 19),
(32, 32, 1, 20),
(33, 33, 1, 21),
(34, 34, 1, 22),
(35, 35, 1, 23),
(36, 36, 1, 24),
(37, 37, 1, 25),
(38, 38, 1, 26),
(39, 39, 1, 27),
(40, 40, 1, 28),
(41, 41, 1, 29),
(42, 42, 1, 30),
(43, 43, 1, 31),
(44, 44, 1, 32),
(45, 45, 1, 33),
(46, 46, 1, 34),
(47, 47, 1, 35),
(48, 48, 1, 36),
(49, 49, 1, 37),
(50, 50, 1, 38),
(51, 51, 1, 39),
(52, 52, 1, 40),
(53, 53, 1, 41),
(54, 54, 1, 42),
(55, 55, 1, 43),
(56, 56, 1, 44),
(57, 57, 1, 45),
(58, 58, 1, 46),
(59, 59, 1, 47),
(60, 60, 1, 48),
(61, 61, 1, 49),
(62, 62, 1, 50),
(63, 63, 1, 51),
(64, 64, 1, 52),
(65, 65, 1, 53),
(79, 79, 1, 57),
(80, 80, 1, 58),
(87, 87, 1, 65),
(88, 88, 1, 66),
(92, 92, 1, 70),
(93, 93, 1, 71),
(94, 94, 1, 72),
(95, 95, 1, 73),
(96, 96, 1, 74),
(97, 97, 1, 75),
(98, 98, 1, 76),
(102, 102, 1, 80),
(116, 116, 1, 85),
(118, 118, 1, 87),
(120, 120, 1, 89),
(121, 121, 1, 90),
(122, 122, 1, 91),
(123, 123, 1, 92),
(125, 125, 1, 94),
(129, 129, 1, 98),
(133, 133, 1, 102),
(136, 136, 1, 105),
(137, 137, 1, 106),
(138, 138, 1, 107),
(142, 142, 1, 111),
(143, 143, 1, 112),
(147, 147, 1, 116),
(148, 148, 1, 117),
(149, 149, 1, 118),
(150, 150, 1, 119),
(152, 152, 1, 121),
(154, 154, 1, 123),
(156, 156, 1, 125),
(157, 157, 1, 126),
(164, 164, 1, 133),
(171, 171, 1, 140),
(175, 175, 1, 144),
(234, 234, 1, 169),
(239, 239, 1, 171),
(241, 241, 1, 173),
(242, 242, 1, 174),
(245, 245, 1, 177),
(247, 247, 1, 179),
(248, 248, 1, 180),
(251, 251, 1, 183),
(253, 253, 1, 185),
(254, 254, 1, 186),
(256, 256, 1, 188),
(257, 257, 1, 189),
(258, 258, 1, 190),
(261, 261, 1, 193),
(264, 264, 1, 196),
(267, 267, 1, 199),
(268, 268, 1, 200),
(270, 270, 1, 202),
(272, 272, 1, 204),
(274, 274, 1, 206),
(278, 278, 1, 210),
(279, 279, 1, 211),
(280, 280, 1, 212),
(281, 281, 1, 213),
(282, 282, 1, 214),
(283, 283, 1, 215),
(287, 287, 1, 219),
(288, 288, 1, 220),
(292, 292, 1, 224),
(293, 293, 1, 225),
(300, 300, 1, 232),
(301, 301, 1, 233),
(302, 302, 1, 234),
(315, 315, 1, 247),
(316, 316, 1, 248),
(317, 317, 1, 249),
(318, 318, 1, 250),
(319, 319, 1, 251),
(321, 321, 1, 253),
(323, 323, 1, 255),
(334, 334, 1, 260),
(335, 335, 1, 261),
(336, 336, 1, 262),
(337, 337, 1, 263),
(338, 338, 1, 264),
(339, 339, 1, 265),
(340, 340, 1, 266),
(341, 341, 1, 267),
(342, 342, 1, 268),
(343, 343, 1, 269),
(344, 344, 1, 270),
(345, 345, 1, 271),
(346, 346, 1, 272),
(347, 347, 1, 273),
(348, 348, 1, 274),
(349, 349, 1, 275),
(350, 350, 1, 276),
(351, 351, 1, 277),
(352, 352, 1, 278);

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `code`, `description`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Super Admin', 'strapi-super-admin', 'Super Admins can access and manage all features and settings.', '2023-02-02 18:13:15.811000', '2023-02-02 18:13:15.811000', NULL, NULL),
(2, 'Editor', 'strapi-editor', 'Editors can manage and publish contents including those of other users.', '2023-02-02 18:13:15.819000', '2023-02-02 18:13:15.819000', NULL, NULL),
(3, 'Author', 'strapi-author', 'Authors can manage the content they have created.', '2023-02-02 18:13:15.825000', '2023-02-02 18:13:15.825000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `reset_password_token` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `registration_token` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `prefered_language` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `firstname`, `lastname`, `username`, `email`, `password`, `reset_password_token`, `registration_token`, `is_active`, `blocked`, `prefered_language`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'The', 'Cheff', NULL, 'mahevstark@gmail.com', '$2a$10$DPYAAm02JAAMKV5nlLLYueTfiwgr12iGIi5ZcgfDAHE0JWNS8Lhs.', NULL, NULL, 1, 0, NULL, '2023-02-02 18:36:58.135000', '2023-02-02 18:36:58.135000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users_roles_links`
--

CREATE TABLE `admin_users_roles_links` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `role_id` int UNSIGNED DEFAULT NULL,
  `role_order` double UNSIGNED DEFAULT NULL,
  `user_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_users_roles_links`
--

INSERT INTO `admin_users_roles_links` (`id`, `user_id`, `role_id`, `role_order`, `user_order`) VALUES
(1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `aisearches`
--

CREATE TABLE `aisearches` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `trial` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `aisearches`
--

INSERT INTO `aisearches` (`id`, `title`, `trial`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'sd', 0, '2023-03-08 10:47:39.511000', '2023-03-08 10:47:39.511000', 1, 1),
(2, NULL, 1, '2023-03-10 02:08:56.167000', '2023-03-10 02:08:56.167000', NULL, NULL),
(3, NULL, 1, '2023-03-10 02:43:31.395000', '2023-03-10 02:43:31.395000', NULL, NULL),
(4, NULL, 1, '2023-03-10 02:43:58.408000', '2023-03-10 02:43:58.408000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `aisearches_subscription_links`
--

CREATE TABLE `aisearches_subscription_links` (
  `id` int UNSIGNED NOT NULL,
  `aisearch_id` int UNSIGNED DEFAULT NULL,
  `subscription_id` int UNSIGNED DEFAULT NULL,
  `aisearch_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `aisearches_subscription_links`
--

INSERT INTO `aisearches_subscription_links` (`id`, `aisearch_id`, `subscription_id`, `aisearch_order`) VALUES
(1, 4, 1, 1),
(2, 2, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `aisearches_users_permissions_user_links`
--

CREATE TABLE `aisearches_users_permissions_user_links` (
  `id` int UNSIGNED NOT NULL,
  `aisearch_id` int UNSIGNED DEFAULT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `aisearch_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `aisearches_users_permissions_user_links`
--

INSERT INTO `aisearches_users_permissions_user_links` (`id`, `aisearch_id`, `user_id`, `aisearch_order`) VALUES
(1, 1, 2, 1),
(2, 2, 2, 2),
(3, 3, 4, 1),
(4, 4, 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `bcategories`
--

CREATE TABLE `bcategories` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bcategories`
--

INSERT INTO `bcategories` (`id`, `title`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Updates', '2023-03-11 18:18:02.315000', '2023-03-11 19:05:04.183000', '2023-03-11 18:18:03.700000', 1, 1),
(2, 'Latest', '2023-03-11 18:18:14.398000', '2023-03-11 19:04:57.800000', '2023-03-11 18:18:14.989000', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `author` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_general_ci,
  `short_description` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `author`, `description`, `short_description`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Lorem ipsum is a text', 'Mahev', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry ', '2023-03-11 18:19:12.520000', '2023-03-11 18:19:58.759000', '2023-03-11 18:19:13.159000', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `blogs_bcategory_links`
--

CREATE TABLE `blogs_bcategory_links` (
  `id` int UNSIGNED NOT NULL,
  `blog_id` int UNSIGNED DEFAULT NULL,
  `bcategory_id` int UNSIGNED DEFAULT NULL,
  `blog_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blogs_bcategory_links`
--

INSERT INTO `blogs_bcategory_links` (`id`, `blog_id`, `bcategory_id`, `blog_order`) VALUES
(1, 1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sub_title` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `sub_title`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Mexican', NULL, '2023-02-04 19:08:44.006000', '2023-02-04 19:08:44.401000', '2023-02-04 19:08:44.398000', 1, 1),
(2, 'Indian', NULL, '2023-02-04 19:09:13.463000', '2023-02-04 19:09:13.751000', '2023-02-04 19:09:13.748000', 1, 1),
(3, 'AI', 'AI generated recipes', '2023-03-09 17:19:21.651000', '2023-03-09 17:19:23.041000', '2023-03-09 17:19:23.036000', 1, 1),
(4, 'Python', 'Python', '2023-03-17 11:59:49.450000', '2023-03-17 11:59:50.133000', '2023-03-17 11:59:50.129000', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `components_static_about_us_circles`
--

CREATE TABLE `components_static_about_us_circles` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `components_static_about_us_circles`
--

INSERT INTO `components_static_about_us_circles` (`id`, `title`, `description`) VALUES
(1, 'DEDICATED EDUCATORS', 'Our classes are taught by dedicated and experienced educators. Using proven teaching strategies, they make sure that every student finds a path to success.'),
(2, 'FIRST-RATE COURSE OFFERINGS', 'We embrace a learning environment that will prepare you for the path ahead. Our classes incorporate traditional learning styles as well as hands-on experiences.'),
(3, 'OUR MISSION', 'Your success is our priority. To support our inclusive community, we provide a personal approach, tailoring learning methods to each student\'s needs.');

-- --------------------------------------------------------

--
-- Table structure for table `components_static_plan_benefits`
--

CREATE TABLE `components_static_plan_benefits` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `available` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `components_static_sections`
--

CREATE TABLE `components_static_sections` (
  `id` int UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `components_static_sections`
--

INSERT INTO `components_static_sections` (`id`, `type`, `title`, `description`) VALUES
(1, 'The Author', 'mahev', 'lsdfj lskf jasldkf sldkf jalkdf jsadlkfsad');

-- --------------------------------------------------------

--
-- Table structure for table `downloads`
--

CREATE TABLE `downloads` (
  `id` int UNSIGNED NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL,
  `trial` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `downloads`
--

INSERT INTO `downloads` (`id`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`, `trial`) VALUES
(9, '2023-02-18 21:16:50.911000', '2023-02-18 21:16:50.911000', NULL, NULL, NULL),
(10, '2023-02-18 21:17:39.044000', '2023-02-18 21:17:39.044000', NULL, NULL, NULL),
(11, '2023-02-18 21:18:24.140000', '2023-02-18 21:18:24.140000', NULL, NULL, NULL),
(12, '2023-02-18 21:20:06.682000', '2023-02-18 21:20:06.682000', NULL, NULL, NULL),
(13, '2023-02-18 21:20:28.998000', '2023-02-18 21:20:28.998000', NULL, NULL, NULL),
(14, '2023-02-18 21:20:45.330000', '2023-02-18 21:20:45.330000', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `downloads_recipe_links`
--

CREATE TABLE `downloads_recipe_links` (
  `id` int UNSIGNED NOT NULL,
  `download_id` int UNSIGNED DEFAULT NULL,
  `recipe_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `downloads_recipe_links`
--

INSERT INTO `downloads_recipe_links` (`id`, `download_id`, `recipe_id`) VALUES
(9, 9, 3),
(10, 10, 3),
(11, 11, 3),
(12, 12, 3),
(13, 13, 3),
(14, 14, 3);

-- --------------------------------------------------------

--
-- Table structure for table `downloads_subscription_links`
--

CREATE TABLE `downloads_subscription_links` (
  `id` int UNSIGNED NOT NULL,
  `download_id` int UNSIGNED DEFAULT NULL,
  `subscription_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `downloads_user_id_links`
--

CREATE TABLE `downloads_user_id_links` (
  `id` int UNSIGNED NOT NULL,
  `download_id` int UNSIGNED DEFAULT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `download_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `downloads_user_id_links`
--

INSERT INTO `downloads_user_id_links` (`id`, `download_id`, `user_id`, `download_order`) VALUES
(9, 9, 3, 1),
(10, 10, 3, 2),
(11, 11, 3, 3),
(12, 12, 3, 4),
(13, 13, 3, 5),
(14, 14, 3, 6);

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `alternative_text` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `caption` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `width` int DEFAULT NULL,
  `height` int DEFAULT NULL,
  `formats` json DEFAULT NULL,
  `hash` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ext` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `mime` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `size` decimal(10,2) DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `preview_url` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `provider_metadata` json DEFAULT NULL,
  `folder_path` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `name`, `alternative_text`, `caption`, `width`, `height`, `formats`, `hash`, `ext`, `mime`, `size`, `url`, `preview_url`, `provider`, `provider_metadata`, `folder_path`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, '6363979_authentic-tacos-al-pastor_allrecipes-732be2e0ae9b48239095a48303d52c8f.webp', NULL, NULL, 600, 514, '{\"small\": {\"ext\": \".webp\", \"url\": \"https://esta-v2.s3.ap-south-1.amazonaws.com/small_6363979_authentic_tacos_al_pastor_allrecipes_732be2e0ae9b48239095a48303d52c8f_709d134217.webp\", \"hash\": \"small_6363979_authentic_tacos_al_pastor_allrecipes_732be2e0ae9b48239095a48303d52c8f_709d134217\", \"mime\": \"image/webp\", \"name\": \"small_6363979_authentic-tacos-al-pastor_allrecipes-732be2e0ae9b48239095a48303d52c8f.webp\", \"path\": null, \"size\": 29.39, \"width\": 500, \"height\": 428}, \"thumbnail\": {\"ext\": \".webp\", \"url\": \"https://esta-v2.s3.ap-south-1.amazonaws.com/thumbnail_6363979_authentic_tacos_al_pastor_allrecipes_732be2e0ae9b48239095a48303d52c8f_709d134217.webp\", \"hash\": \"thumbnail_6363979_authentic_tacos_al_pastor_allrecipes_732be2e0ae9b48239095a48303d52c8f_709d134217\", \"mime\": \"image/webp\", \"name\": \"thumbnail_6363979_authentic-tacos-al-pastor_allrecipes-732be2e0ae9b48239095a48303d52c8f.webp\", \"path\": null, \"size\": 8.44, \"width\": 182, \"height\": 156}}', '6363979_authentic_tacos_al_pastor_allrecipes_732be2e0ae9b48239095a48303d52c8f_709d134217', '.webp', 'image/webp', '38.92', 'https://esta-v2.s3.ap-south-1.amazonaws.com/6363979_authentic_tacos_al_pastor_allrecipes_732be2e0ae9b48239095a48303d52c8f_709d134217.webp', NULL, 'aws-s3', NULL, '/', '2023-02-04 19:08:36.975000', '2023-02-04 19:08:36.975000', 1, 1),
(2, 'download.jpg', NULL, NULL, 259, 194, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"https://esta-v2.s3.ap-south-1.amazonaws.com/thumbnail_download_a88eee0697.jpg\", \"hash\": \"thumbnail_download_a88eee0697\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_download.jpg\", \"path\": null, \"size\": 12.54, \"width\": 208, \"height\": 156}}', 'download_a88eee0697', '.jpg', 'image/jpeg', '13.64', 'https://esta-v2.s3.ap-south-1.amazonaws.com/download_a88eee0697.jpg', NULL, 'aws-s3', NULL, '/', '2023-02-04 19:09:10.350000', '2023-02-04 19:10:01.716000', 1, 1),
(3, 'GettyImages-639389404-5c450e724cedfd00015b09d5.jpg', NULL, NULL, 1500, 1000, '{\"large\": {\"ext\": \".jpg\", \"url\": \"https://esta-v2.s3.ap-south-1.amazonaws.com/large_Getty_Images_639389404_5c450e724cedfd00015b09d5_e5de0b9720.jpg\", \"hash\": \"large_Getty_Images_639389404_5c450e724cedfd00015b09d5_e5de0b9720\", \"mime\": \"image/jpeg\", \"name\": \"large_GettyImages-639389404-5c450e724cedfd00015b09d5.jpg\", \"path\": null, \"size\": 121.78, \"width\": 1000, \"height\": 667}, \"small\": {\"ext\": \".jpg\", \"url\": \"https://esta-v2.s3.ap-south-1.amazonaws.com/small_Getty_Images_639389404_5c450e724cedfd00015b09d5_e5de0b9720.jpg\", \"hash\": \"small_Getty_Images_639389404_5c450e724cedfd00015b09d5_e5de0b9720\", \"mime\": \"image/jpeg\", \"name\": \"small_GettyImages-639389404-5c450e724cedfd00015b09d5.jpg\", \"path\": null, \"size\": 42.32, \"width\": 500, \"height\": 333}, \"medium\": {\"ext\": \".jpg\", \"url\": \"https://esta-v2.s3.ap-south-1.amazonaws.com/medium_Getty_Images_639389404_5c450e724cedfd00015b09d5_e5de0b9720.jpg\", \"hash\": \"medium_Getty_Images_639389404_5c450e724cedfd00015b09d5_e5de0b9720\", \"mime\": \"image/jpeg\", \"name\": \"medium_GettyImages-639389404-5c450e724cedfd00015b09d5.jpg\", \"path\": null, \"size\": 79.49, \"width\": 750, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"https://esta-v2.s3.ap-south-1.amazonaws.com/thumbnail_Getty_Images_639389404_5c450e724cedfd00015b09d5_e5de0b9720.jpg\", \"hash\": \"thumbnail_Getty_Images_639389404_5c450e724cedfd00015b09d5_e5de0b9720\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_GettyImages-639389404-5c450e724cedfd00015b09d5.jpg\", \"path\": null, \"size\": 12.97, \"width\": 234, \"height\": 156}}', 'Getty_Images_639389404_5c450e724cedfd00015b09d5_e5de0b9720', '.jpg', 'image/jpeg', '146.02', 'https://esta-v2.s3.ap-south-1.amazonaws.com/Getty_Images_639389404_5c450e724cedfd00015b09d5_e5de0b9720.jpg', NULL, 'aws-s3', NULL, '/', '2023-02-04 19:09:41.673000', '2023-02-04 19:09:41.673000', 1, 1),
(4, 'caramelised-onion-and-thyme-foccacia-84689-1.jpeg', NULL, NULL, 1200, 630, '{\"large\": {\"ext\": \".jpeg\", \"url\": \"https://esta-v2.s3.ap-south-1.amazonaws.com/large_caramelised_onion_and_thyme_foccacia_84689_1_96d356ec0e.jpeg\", \"hash\": \"large_caramelised_onion_and_thyme_foccacia_84689_1_96d356ec0e\", \"mime\": \"image/jpeg\", \"name\": \"large_caramelised-onion-and-thyme-foccacia-84689-1.jpeg\", \"path\": null, \"size\": 111.99, \"width\": 1000, \"height\": 525}, \"small\": {\"ext\": \".jpeg\", \"url\": \"https://esta-v2.s3.ap-south-1.amazonaws.com/small_caramelised_onion_and_thyme_foccacia_84689_1_96d356ec0e.jpeg\", \"hash\": \"small_caramelised_onion_and_thyme_foccacia_84689_1_96d356ec0e\", \"mime\": \"image/jpeg\", \"name\": \"small_caramelised-onion-and-thyme-foccacia-84689-1.jpeg\", \"path\": null, \"size\": 35.36, \"width\": 500, \"height\": 263}, \"medium\": {\"ext\": \".jpeg\", \"url\": \"https://esta-v2.s3.ap-south-1.amazonaws.com/medium_caramelised_onion_and_thyme_foccacia_84689_1_96d356ec0e.jpeg\", \"hash\": \"medium_caramelised_onion_and_thyme_foccacia_84689_1_96d356ec0e\", \"mime\": \"image/jpeg\", \"name\": \"medium_caramelised-onion-and-thyme-foccacia-84689-1.jpeg\", \"path\": null, \"size\": 70.71, \"width\": 750, \"height\": 394}, \"thumbnail\": {\"ext\": \".jpeg\", \"url\": \"https://esta-v2.s3.ap-south-1.amazonaws.com/thumbnail_caramelised_onion_and_thyme_foccacia_84689_1_96d356ec0e.jpeg\", \"hash\": \"thumbnail_caramelised_onion_and_thyme_foccacia_84689_1_96d356ec0e\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_caramelised-onion-and-thyme-foccacia-84689-1.jpeg\", \"path\": null, \"size\": 10.53, \"width\": 245, \"height\": 129}}', 'caramelised_onion_and_thyme_foccacia_84689_1_96d356ec0e', '.jpeg', 'image/jpeg', '151.01', 'https://esta-v2.s3.ap-south-1.amazonaws.com/caramelised_onion_and_thyme_foccacia_84689_1_96d356ec0e.jpeg', NULL, 'aws-s3', NULL, '/', '2023-02-04 19:12:09.445000', '2023-02-04 19:12:09.445000', 1, 1),
(5, 'crispypotatoskins_72318_16x9.jpg', NULL, NULL, 800, 450, '{\"small\": {\"ext\": \".jpg\", \"url\": \"https://esta-v2.s3.ap-south-1.amazonaws.com/small_crispypotatoskins_72318_16x9_2ad57e7a81.jpg\", \"hash\": \"small_crispypotatoskins_72318_16x9_2ad57e7a81\", \"mime\": \"image/jpeg\", \"name\": \"small_crispypotatoskins_72318_16x9.jpg\", \"path\": null, \"size\": 33.5, \"width\": 500, \"height\": 281}, \"medium\": {\"ext\": \".jpg\", \"url\": \"https://esta-v2.s3.ap-south-1.amazonaws.com/medium_crispypotatoskins_72318_16x9_2ad57e7a81.jpg\", \"hash\": \"medium_crispypotatoskins_72318_16x9_2ad57e7a81\", \"mime\": \"image/jpeg\", \"name\": \"medium_crispypotatoskins_72318_16x9.jpg\", \"path\": null, \"size\": 61.24, \"width\": 750, \"height\": 422}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"https://esta-v2.s3.ap-south-1.amazonaws.com/thumbnail_crispypotatoskins_72318_16x9_2ad57e7a81.jpg\", \"hash\": \"thumbnail_crispypotatoskins_72318_16x9_2ad57e7a81\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_crispypotatoskins_72318_16x9.jpg\", \"path\": null, \"size\": 11.05, \"width\": 245, \"height\": 138}}', 'crispypotatoskins_72318_16x9_2ad57e7a81', '.jpg', 'image/jpeg', '67.89', 'https://esta-v2.s3.ap-south-1.amazonaws.com/crispypotatoskins_72318_16x9_2ad57e7a81.jpg', NULL, 'aws-s3', NULL, '/', '2023-02-04 19:17:15.868000', '2023-02-04 19:17:15.868000', 1, 1),
(6, 'calamari-and-chorizo_zlqkxi.jpg', NULL, NULL, 660, 440, '{\"small\": {\"ext\": \".jpg\", \"url\": \"https://esta-v2.s3.ap-south-1.amazonaws.com/small_calamari_and_chorizo_zlqkxi_96e088ec43.jpg\", \"hash\": \"small_calamari_and_chorizo_zlqkxi_96e088ec43\", \"mime\": \"image/jpeg\", \"name\": \"small_calamari-and-chorizo_zlqkxi.jpg\", \"path\": null, \"size\": 32.09, \"width\": 500, \"height\": 333}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"https://esta-v2.s3.ap-south-1.amazonaws.com/thumbnail_calamari_and_chorizo_zlqkxi_96e088ec43.jpg\", \"hash\": \"thumbnail_calamari_and_chorizo_zlqkxi_96e088ec43\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_calamari-and-chorizo_zlqkxi.jpg\", \"path\": null, \"size\": 10.12, \"width\": 234, \"height\": 156}}', 'calamari_and_chorizo_zlqkxi_96e088ec43', '.jpg', 'image/jpeg', '48.35', 'https://esta-v2.s3.ap-south-1.amazonaws.com/calamari_and_chorizo_zlqkxi_96e088ec43.jpg', NULL, 'aws-s3', NULL, '/', '2023-02-04 19:19:01.714000', '2023-02-04 19:19:01.714000', 1, 1),
(7, '1383163801466.jpeg', NULL, NULL, 616, 462, '{\"small\": {\"ext\": \".jpeg\", \"url\": \"https://esta-v2.s3.ap-south-1.amazonaws.com/small_1383163801466_9d73f93fb5.jpeg\", \"hash\": \"small_1383163801466_9d73f93fb5\", \"mime\": \"image/jpeg\", \"name\": \"small_1383163801466.jpeg\", \"path\": null, \"size\": 34.67, \"width\": 500, \"height\": 375}, \"thumbnail\": {\"ext\": \".jpeg\", \"url\": \"https://esta-v2.s3.ap-south-1.amazonaws.com/thumbnail_1383163801466_9d73f93fb5.jpeg\", \"hash\": \"thumbnail_1383163801466_9d73f93fb5\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_1383163801466.jpeg\", \"path\": null, \"size\": 8.66, \"width\": 208, \"height\": 156}}', '1383163801466_9d73f93fb5', '.jpeg', 'image/jpeg', '41.76', 'https://esta-v2.s3.ap-south-1.amazonaws.com/1383163801466_9d73f93fb5.jpeg', NULL, 'aws-s3', NULL, '/', '2023-02-04 19:20:25.486000', '2023-02-04 19:20:25.486000', 1, 1),
(8, 'abou1.png', NULL, NULL, 365, 365, '{\"thumbnail\": {\"ext\": \".png\", \"url\": \"https://esta-v2.s3.ap-south-1.amazonaws.com/thumbnail_abou1_97d333df96.png\", \"hash\": \"thumbnail_abou1_97d333df96\", \"mime\": \"image/png\", \"name\": \"thumbnail_abou1.png\", \"path\": null, \"size\": 3.01, \"width\": 156, \"height\": 156}}', 'abou1_97d333df96', '.png', 'image/png', '9.28', 'https://esta-v2.s3.ap-south-1.amazonaws.com/abou1_97d333df96.png', NULL, 'aws-s3', NULL, '/', '2023-02-15 10:26:49.190000', '2023-02-15 10:26:49.190000', 1, 1),
(9, 'about2.png', NULL, NULL, 365, 365, '{\"thumbnail\": {\"ext\": \".png\", \"url\": \"https://esta-v2.s3.ap-south-1.amazonaws.com/thumbnail_about2_dac4903f35.png\", \"hash\": \"thumbnail_about2_dac4903f35\", \"mime\": \"image/png\", \"name\": \"thumbnail_about2.png\", \"path\": null, \"size\": 5.42, \"width\": 156, \"height\": 156}}', 'about2_dac4903f35', '.png', 'image/png', '18.10', 'https://esta-v2.s3.ap-south-1.amazonaws.com/about2_dac4903f35.png', NULL, 'aws-s3', NULL, '/', '2023-02-15 10:27:15.179000', '2023-02-15 10:27:15.179000', 1, 1),
(10, 'about3.png', NULL, NULL, 365, 365, '{\"thumbnail\": {\"ext\": \".png\", \"url\": \"https://esta-v2.s3.ap-south-1.amazonaws.com/thumbnail_about3_5b740447a6.png\", \"hash\": \"thumbnail_about3_5b740447a6\", \"mime\": \"image/png\", \"name\": \"thumbnail_about3.png\", \"path\": null, \"size\": 4.86, \"width\": 156, \"height\": 156}}', 'about3_5b740447a6', '.png', 'image/png', '15.60', 'https://esta-v2.s3.ap-south-1.amazonaws.com/about3_5b740447a6.png', NULL, 'aws-s3', NULL, '/', '2023-02-15 10:27:32.435000', '2023-02-15 10:27:32.435000', 1, 1),
(11, 'rs=w_1280.webp', NULL, NULL, 1280, 853, '{\"large\": {\"ext\": \".webp\", \"url\": \"https://esta-v2.s3.ap-south-1.amazonaws.com/large_rs_w_1280_8a79141590.webp\", \"hash\": \"large_rs_w_1280_8a79141590\", \"mime\": \"image/webp\", \"name\": \"large_rs=w_1280.webp\", \"path\": null, \"size\": 40.41, \"width\": 1000, \"height\": 666}, \"small\": {\"ext\": \".webp\", \"url\": \"https://esta-v2.s3.ap-south-1.amazonaws.com/small_rs_w_1280_8a79141590.webp\", \"hash\": \"small_rs_w_1280_8a79141590\", \"mime\": \"image/webp\", \"name\": \"small_rs=w_1280.webp\", \"path\": null, \"size\": 17.85, \"width\": 500, \"height\": 333}, \"medium\": {\"ext\": \".webp\", \"url\": \"https://esta-v2.s3.ap-south-1.amazonaws.com/medium_rs_w_1280_8a79141590.webp\", \"hash\": \"medium_rs_w_1280_8a79141590\", \"mime\": \"image/webp\", \"name\": \"medium_rs=w_1280.webp\", \"path\": null, \"size\": 29.07, \"width\": 750, \"height\": 500}, \"thumbnail\": {\"ext\": \".webp\", \"url\": \"https://esta-v2.s3.ap-south-1.amazonaws.com/thumbnail_rs_w_1280_8a79141590.webp\", \"hash\": \"thumbnail_rs_w_1280_8a79141590\", \"mime\": \"image/webp\", \"name\": \"thumbnail_rs=w_1280.webp\", \"path\": null, \"size\": 6.63, \"width\": 234, \"height\": 156}}', 'rs_w_1280_8a79141590', '.webp', 'image/webp', '61.26', 'https://esta-v2.s3.ap-south-1.amazonaws.com/rs_w_1280_8a79141590.webp', NULL, 'aws-s3', NULL, '/', '2023-02-15 10:28:31.112000', '2023-02-15 10:28:31.112000', 1, 1),
(12, 'rs=w_1280 (4).webp', NULL, NULL, 1280, 933, '{\"large\": {\"ext\": \".webp\", \"url\": \"https://esta-v2.s3.ap-south-1.amazonaws.com/large_rs_w_1280_4_2c17801bb3.webp\", \"hash\": \"large_rs_w_1280_4_2c17801bb3\", \"mime\": \"image/webp\", \"name\": \"large_rs=w_1280 (4).webp\", \"path\": null, \"size\": 24.26, \"width\": 1000, \"height\": 729}, \"small\": {\"ext\": \".webp\", \"url\": \"https://esta-v2.s3.ap-south-1.amazonaws.com/small_rs_w_1280_4_2c17801bb3.webp\", \"hash\": \"small_rs_w_1280_4_2c17801bb3\", \"mime\": \"image/webp\", \"name\": \"small_rs=w_1280 (4).webp\", \"path\": null, \"size\": 9.79, \"width\": 500, \"height\": 364}, \"medium\": {\"ext\": \".webp\", \"url\": \"https://esta-v2.s3.ap-south-1.amazonaws.com/medium_rs_w_1280_4_2c17801bb3.webp\", \"hash\": \"medium_rs_w_1280_4_2c17801bb3\", \"mime\": \"image/webp\", \"name\": \"medium_rs=w_1280 (4).webp\", \"path\": null, \"size\": 16.99, \"width\": 750, \"height\": 547}, \"thumbnail\": {\"ext\": \".webp\", \"url\": \"https://esta-v2.s3.ap-south-1.amazonaws.com/thumbnail_rs_w_1280_4_2c17801bb3.webp\", \"hash\": \"thumbnail_rs_w_1280_4_2c17801bb3\", \"mime\": \"image/webp\", \"name\": \"thumbnail_rs=w_1280 (4).webp\", \"path\": null, \"size\": 3.21, \"width\": 214, \"height\": 156}}', 'rs_w_1280_4_2c17801bb3', '.webp', 'image/webp', '40.43', 'https://esta-v2.s3.ap-south-1.amazonaws.com/rs_w_1280_4_2c17801bb3.webp', NULL, 'aws-s3', NULL, '/', '2023-02-15 10:28:59.781000', '2023-02-15 10:28:59.781000', 1, 1),
(13, 'rs=w_1280 (1).webp', NULL, NULL, 1280, 853, '{\"large\": {\"ext\": \".webp\", \"url\": \"https://esta-v2.s3.ap-south-1.amazonaws.com/large_rs_w_1280_1_14d96dfd7c.webp\", \"hash\": \"large_rs_w_1280_1_14d96dfd7c\", \"mime\": \"image/webp\", \"name\": \"large_rs=w_1280 (1).webp\", \"path\": null, \"size\": 36.11, \"width\": 1000, \"height\": 666}, \"small\": {\"ext\": \".webp\", \"url\": \"https://esta-v2.s3.ap-south-1.amazonaws.com/small_rs_w_1280_1_14d96dfd7c.webp\", \"hash\": \"small_rs_w_1280_1_14d96dfd7c\", \"mime\": \"image/webp\", \"name\": \"small_rs=w_1280 (1).webp\", \"path\": null, \"size\": 16.91, \"width\": 500, \"height\": 333}, \"medium\": {\"ext\": \".webp\", \"url\": \"https://esta-v2.s3.ap-south-1.amazonaws.com/medium_rs_w_1280_1_14d96dfd7c.webp\", \"hash\": \"medium_rs_w_1280_1_14d96dfd7c\", \"mime\": \"image/webp\", \"name\": \"medium_rs=w_1280 (1).webp\", \"path\": null, \"size\": 26.99, \"width\": 750, \"height\": 500}, \"thumbnail\": {\"ext\": \".webp\", \"url\": \"https://esta-v2.s3.ap-south-1.amazonaws.com/thumbnail_rs_w_1280_1_14d96dfd7c.webp\", \"hash\": \"thumbnail_rs_w_1280_1_14d96dfd7c\", \"mime\": \"image/webp\", \"name\": \"thumbnail_rs=w_1280 (1).webp\", \"path\": null, \"size\": 6.58, \"width\": 234, \"height\": 156}}', 'rs_w_1280_1_14d96dfd7c', '.webp', 'image/webp', '52.33', 'https://esta-v2.s3.ap-south-1.amazonaws.com/rs_w_1280_1_14d96dfd7c.webp', NULL, 'aws-s3', NULL, '/', '2023-02-15 10:28:59.784000', '2023-02-15 10:28:59.784000', 1, 1),
(14, 'rs=w_1280 (5).webp', NULL, NULL, 1280, 853, '{\"large\": {\"ext\": \".webp\", \"url\": \"https://esta-v2.s3.ap-south-1.amazonaws.com/large_rs_w_1280_5_fd80c19ead.webp\", \"hash\": \"large_rs_w_1280_5_fd80c19ead\", \"mime\": \"image/webp\", \"name\": \"large_rs=w_1280 (5).webp\", \"path\": null, \"size\": 45.68, \"width\": 1000, \"height\": 666}, \"small\": {\"ext\": \".webp\", \"url\": \"https://esta-v2.s3.ap-south-1.amazonaws.com/small_rs_w_1280_5_fd80c19ead.webp\", \"hash\": \"small_rs_w_1280_5_fd80c19ead\", \"mime\": \"image/webp\", \"name\": \"small_rs=w_1280 (5).webp\", \"path\": null, \"size\": 20, \"width\": 500, \"height\": 333}, \"medium\": {\"ext\": \".webp\", \"url\": \"https://esta-v2.s3.ap-south-1.amazonaws.com/medium_rs_w_1280_5_fd80c19ead.webp\", \"hash\": \"medium_rs_w_1280_5_fd80c19ead\", \"mime\": \"image/webp\", \"name\": \"medium_rs=w_1280 (5).webp\", \"path\": null, \"size\": 32.99, \"width\": 750, \"height\": 500}, \"thumbnail\": {\"ext\": \".webp\", \"url\": \"https://esta-v2.s3.ap-south-1.amazonaws.com/thumbnail_rs_w_1280_5_fd80c19ead.webp\", \"hash\": \"thumbnail_rs_w_1280_5_fd80c19ead\", \"mime\": \"image/webp\", \"name\": \"thumbnail_rs=w_1280 (5).webp\", \"path\": null, \"size\": 7.41, \"width\": 234, \"height\": 156}}', 'rs_w_1280_5_fd80c19ead', '.webp', 'image/webp', '68.71', 'https://esta-v2.s3.ap-south-1.amazonaws.com/rs_w_1280_5_fd80c19ead.webp', NULL, 'aws-s3', NULL, '/', '2023-02-15 10:28:59.835000', '2023-02-15 10:28:59.835000', 1, 1),
(15, 'rs=w_1280.webp', NULL, NULL, 1280, 853, '{\"large\": {\"ext\": \".webp\", \"url\": \"https://esta-v2.s3.ap-south-1.amazonaws.com/large_rs_w_1280_e7503e1c52.webp\", \"hash\": \"large_rs_w_1280_e7503e1c52\", \"mime\": \"image/webp\", \"name\": \"large_rs=w_1280.webp\", \"path\": null, \"size\": 40.41, \"width\": 1000, \"height\": 666}, \"small\": {\"ext\": \".webp\", \"url\": \"https://esta-v2.s3.ap-south-1.amazonaws.com/small_rs_w_1280_e7503e1c52.webp\", \"hash\": \"small_rs_w_1280_e7503e1c52\", \"mime\": \"image/webp\", \"name\": \"small_rs=w_1280.webp\", \"path\": null, \"size\": 17.85, \"width\": 500, \"height\": 333}, \"medium\": {\"ext\": \".webp\", \"url\": \"https://esta-v2.s3.ap-south-1.amazonaws.com/medium_rs_w_1280_e7503e1c52.webp\", \"hash\": \"medium_rs_w_1280_e7503e1c52\", \"mime\": \"image/webp\", \"name\": \"medium_rs=w_1280.webp\", \"path\": null, \"size\": 29.07, \"width\": 750, \"height\": 500}, \"thumbnail\": {\"ext\": \".webp\", \"url\": \"https://esta-v2.s3.ap-south-1.amazonaws.com/thumbnail_rs_w_1280_e7503e1c52.webp\", \"hash\": \"thumbnail_rs_w_1280_e7503e1c52\", \"mime\": \"image/webp\", \"name\": \"thumbnail_rs=w_1280.webp\", \"path\": null, \"size\": 6.63, \"width\": 234, \"height\": 156}}', 'rs_w_1280_e7503e1c52', '.webp', 'image/webp', '61.26', 'https://esta-v2.s3.ap-south-1.amazonaws.com/rs_w_1280_e7503e1c52.webp', NULL, 'aws-s3', NULL, '/', '2023-02-15 10:28:59.930000', '2023-02-15 10:28:59.930000', 1, 1),
(16, 'rs=w_1280 (2).webp', NULL, NULL, 1280, 853, '{\"large\": {\"ext\": \".webp\", \"url\": \"https://esta-v2.s3.ap-south-1.amazonaws.com/large_rs_w_1280_2_8a8e001838.webp\", \"hash\": \"large_rs_w_1280_2_8a8e001838\", \"mime\": \"image/webp\", \"name\": \"large_rs=w_1280 (2).webp\", \"path\": null, \"size\": 52.51, \"width\": 1000, \"height\": 666}, \"small\": {\"ext\": \".webp\", \"url\": \"https://esta-v2.s3.ap-south-1.amazonaws.com/small_rs_w_1280_2_8a8e001838.webp\", \"hash\": \"small_rs_w_1280_2_8a8e001838\", \"mime\": \"image/webp\", \"name\": \"small_rs=w_1280 (2).webp\", \"path\": null, \"size\": 20.55, \"width\": 500, \"height\": 333}, \"medium\": {\"ext\": \".webp\", \"url\": \"https://esta-v2.s3.ap-south-1.amazonaws.com/medium_rs_w_1280_2_8a8e001838.webp\", \"hash\": \"medium_rs_w_1280_2_8a8e001838\", \"mime\": \"image/webp\", \"name\": \"medium_rs=w_1280 (2).webp\", \"path\": null, \"size\": 36.86, \"width\": 750, \"height\": 500}, \"thumbnail\": {\"ext\": \".webp\", \"url\": \"https://esta-v2.s3.ap-south-1.amazonaws.com/thumbnail_rs_w_1280_2_8a8e001838.webp\", \"hash\": \"thumbnail_rs_w_1280_2_8a8e001838\", \"mime\": \"image/webp\", \"name\": \"thumbnail_rs=w_1280 (2).webp\", \"path\": null, \"size\": 6.77, \"width\": 234, \"height\": 156}}', 'rs_w_1280_2_8a8e001838', '.webp', 'image/webp', '88.46', 'https://esta-v2.s3.ap-south-1.amazonaws.com/rs_w_1280_2_8a8e001838.webp', NULL, 'aws-s3', NULL, '/', '2023-02-15 10:29:00.029000', '2023-02-15 10:29:00.029000', 1, 1),
(17, 'rs=w_1280 (3).webp', NULL, NULL, 1280, 855, '{\"large\": {\"ext\": \".webp\", \"url\": \"https://esta-v2.s3.ap-south-1.amazonaws.com/large_rs_w_1280_3_c611708598.webp\", \"hash\": \"large_rs_w_1280_3_c611708598\", \"mime\": \"image/webp\", \"name\": \"large_rs=w_1280 (3).webp\", \"path\": null, \"size\": 137.37, \"width\": 1000, \"height\": 668}, \"small\": {\"ext\": \".webp\", \"url\": \"https://esta-v2.s3.ap-south-1.amazonaws.com/small_rs_w_1280_3_c611708598.webp\", \"hash\": \"small_rs_w_1280_3_c611708598\", \"mime\": \"image/webp\", \"name\": \"small_rs=w_1280 (3).webp\", \"path\": null, \"size\": 37.82, \"width\": 500, \"height\": 334}, \"medium\": {\"ext\": \".webp\", \"url\": \"https://esta-v2.s3.ap-south-1.amazonaws.com/medium_rs_w_1280_3_c611708598.webp\", \"hash\": \"medium_rs_w_1280_3_c611708598\", \"mime\": \"image/webp\", \"name\": \"medium_rs=w_1280 (3).webp\", \"path\": null, \"size\": 80.98, \"width\": 750, \"height\": 501}, \"thumbnail\": {\"ext\": \".webp\", \"url\": \"https://esta-v2.s3.ap-south-1.amazonaws.com/thumbnail_rs_w_1280_3_c611708598.webp\", \"hash\": \"thumbnail_rs_w_1280_3_c611708598\", \"mime\": \"image/webp\", \"name\": \"thumbnail_rs=w_1280 (3).webp\", \"path\": null, \"size\": 8.84, \"width\": 234, \"height\": 156}}', 'rs_w_1280_3_c611708598', '.webp', 'image/webp', '270.03', 'https://esta-v2.s3.ap-south-1.amazonaws.com/rs_w_1280_3_c611708598.webp', NULL, 'aws-s3', NULL, '/', '2023-02-15 10:29:00.302000', '2023-02-15 10:29:00.302000', 1, 1),
(18, 'check_logo_full.png', NULL, NULL, 504, 320, '{\"small\": {\"ext\": \".png\", \"url\": \"https://esta-v2.s3.ap-south-1.amazonaws.com/small_check_logo_full_df989a7e7b.png\", \"hash\": \"small_check_logo_full_df989a7e7b\", \"mime\": \"image/png\", \"name\": \"small_check_logo_full.png\", \"path\": null, \"size\": 114.3, \"width\": 500, \"height\": 317}, \"thumbnail\": {\"ext\": \".png\", \"url\": \"https://esta-v2.s3.ap-south-1.amazonaws.com/thumbnail_check_logo_full_df989a7e7b.png\", \"hash\": \"thumbnail_check_logo_full_df989a7e7b\", \"mime\": \"image/png\", \"name\": \"thumbnail_check_logo_full.png\", \"path\": null, \"size\": 36.89, \"width\": 245, \"height\": 156}}', 'check_logo_full_df989a7e7b', '.png', 'image/png', '24.50', 'https://esta-v2.s3.ap-south-1.amazonaws.com/check_logo_full_df989a7e7b.png', NULL, 'aws-s3', NULL, '/', '2023-02-21 14:56:07.428000', '2023-02-21 14:56:07.428000', 1, 1),
(19, 'download.jpg', NULL, NULL, 259, 194, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"https://esta-v2.s3.ap-south-1.amazonaws.com/thumbnail_download_a083c7d8bd.jpg\", \"hash\": \"thumbnail_download_a083c7d8bd\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_download.jpg\", \"path\": null, \"size\": 12.54, \"width\": 208, \"height\": 156}}', 'download_a083c7d8bd', '.jpg', 'image/jpeg', '13.64', 'https://esta-v2.s3.ap-south-1.amazonaws.com/download_a083c7d8bd.jpg', NULL, 'aws-s3', NULL, '/', '2023-02-21 14:56:40.923000', '2023-03-11 19:04:54.427000', 1, 1),
(20, 'grocery_887fea139e.jpg', NULL, NULL, 400, 300, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"https://esta-v2.s3.ap-south-1.amazonaws.com/thumbnail_grocery_887fea139e_4d29af0b7d.jpg\", \"hash\": \"thumbnail_grocery_887fea139e_4d29af0b7d\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_grocery_887fea139e.jpg\", \"path\": null, \"size\": 12.58, \"width\": 208, \"height\": 156}}', 'grocery_887fea139e_4d29af0b7d', '.jpg', 'image/jpeg', '40.95', 'https://esta-v2.s3.ap-south-1.amazonaws.com/grocery_887fea139e_4d29af0b7d.jpg', NULL, 'aws-s3', NULL, '/', '2023-02-21 15:06:07.125000', '2023-02-21 15:06:07.125000', 1, 1),
(21, '6.jpg', NULL, NULL, 1920, 957, '{\"large\": {\"ext\": \".jpg\", \"url\": \"https://esta-v2.s3.ap-south-1.amazonaws.com/large_6_9db25b1af3.jpg\", \"hash\": \"large_6_9db25b1af3\", \"mime\": \"image/jpeg\", \"name\": \"large_6.jpg\", \"path\": null, \"size\": 44.41, \"width\": 1000, \"height\": 498}, \"small\": {\"ext\": \".jpg\", \"url\": \"https://esta-v2.s3.ap-south-1.amazonaws.com/small_6_9db25b1af3.jpg\", \"hash\": \"small_6_9db25b1af3\", \"mime\": \"image/jpeg\", \"name\": \"small_6.jpg\", \"path\": null, \"size\": 16.22, \"width\": 500, \"height\": 249}, \"medium\": {\"ext\": \".jpg\", \"url\": \"https://esta-v2.s3.ap-south-1.amazonaws.com/medium_6_9db25b1af3.jpg\", \"hash\": \"medium_6_9db25b1af3\", \"mime\": \"image/jpeg\", \"name\": \"medium_6.jpg\", \"path\": null, \"size\": 29.03, \"width\": 750, \"height\": 374}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"https://esta-v2.s3.ap-south-1.amazonaws.com/thumbnail_6_9db25b1af3.jpg\", \"hash\": \"thumbnail_6_9db25b1af3\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_6.jpg\", \"path\": null, \"size\": 5.79, \"width\": 245, \"height\": 122}}', '6_9db25b1af3', '.jpg', 'image/jpeg', '113.73', 'https://esta-v2.s3.ap-south-1.amazonaws.com/6_9db25b1af3.jpg', NULL, 'aws-s3', NULL, '/', '2023-02-21 15:09:29.879000', '2023-02-21 15:09:29.879000', 1, 1),
(22, 'busyconsumers_0.jpg', NULL, NULL, 1540, 800, '{\"large\": {\"ext\": \".jpg\", \"url\": \"https://esta-v2.s3.ap-south-1.amazonaws.com/large_busyconsumers_0_0a07288240.jpg\", \"hash\": \"large_busyconsumers_0_0a07288240\", \"mime\": \"image/jpeg\", \"name\": \"large_busyconsumers_0.jpg\", \"path\": null, \"size\": 148.23, \"width\": 1000, \"height\": 519}, \"small\": {\"ext\": \".jpg\", \"url\": \"https://esta-v2.s3.ap-south-1.amazonaws.com/small_busyconsumers_0_0a07288240.jpg\", \"hash\": \"small_busyconsumers_0_0a07288240\", \"mime\": \"image/jpeg\", \"name\": \"small_busyconsumers_0.jpg\", \"path\": null, \"size\": 48.74, \"width\": 500, \"height\": 260}, \"medium\": {\"ext\": \".jpg\", \"url\": \"https://esta-v2.s3.ap-south-1.amazonaws.com/medium_busyconsumers_0_0a07288240.jpg\", \"hash\": \"medium_busyconsumers_0_0a07288240\", \"mime\": \"image/jpeg\", \"name\": \"medium_busyconsumers_0.jpg\", \"path\": null, \"size\": 95.55, \"width\": 750, \"height\": 390}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"https://esta-v2.s3.ap-south-1.amazonaws.com/thumbnail_busyconsumers_0_0a07288240.jpg\", \"hash\": \"thumbnail_busyconsumers_0_0a07288240\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_busyconsumers_0.jpg\", \"path\": null, \"size\": 13.6, \"width\": 245, \"height\": 127}}', 'busyconsumers_0_0a07288240', '.jpg', 'image/jpeg', '263.68', 'https://esta-v2.s3.ap-south-1.amazonaws.com/busyconsumers_0_0a07288240.jpg', NULL, 'aws-s3', NULL, '/1', '2023-03-12 10:41:24.890000', '2023-03-12 10:41:24.890000', NULL, NULL),
(23, '249c1bf3-9683-4fe8-aef6-380db3548634.png', NULL, NULL, 512, 512, '{\"small\": {\"ext\": \".png\", \"url\": \"https://esta-v2.s3.ap-south-1.amazonaws.com/small_249c1bf3_9683_4fe8_aef6_380db3548634_227c85f37c.png\", \"hash\": \"small_249c1bf3_9683_4fe8_aef6_380db3548634_227c85f37c\", \"mime\": \"image/png\", \"name\": \"small_249c1bf3-9683-4fe8-aef6-380db3548634.png\", \"path\": null, \"size\": 395.44, \"width\": 500, \"height\": 500}, \"thumbnail\": {\"ext\": \".png\", \"url\": \"https://esta-v2.s3.ap-south-1.amazonaws.com/thumbnail_249c1bf3_9683_4fe8_aef6_380db3548634_227c85f37c.png\", \"hash\": \"thumbnail_249c1bf3_9683_4fe8_aef6_380db3548634_227c85f37c\", \"mime\": \"image/png\", \"name\": \"thumbnail_249c1bf3-9683-4fe8-aef6-380db3548634.png\", \"path\": null, \"size\": 44.29, \"width\": 156, \"height\": 156}}', '249c1bf3_9683_4fe8_aef6_380db3548634_227c85f37c', '.png', 'image/png', '145.24', 'https://esta-v2.s3.ap-south-1.amazonaws.com/249c1bf3_9683_4fe8_aef6_380db3548634_227c85f37c.png', NULL, 'aws-s3', NULL, '/1', '2023-03-12 10:43:47.933000', '2023-03-12 10:43:47.933000', NULL, NULL),
(24, 'mee3-removebg-preview (1).png', NULL, NULL, 335, 745, '{\"small\": {\"ext\": \".png\", \"url\": \"https://esta-v2.s3.ap-south-1.amazonaws.com/small_mee3_removebg_preview_1_f1b246b887.png\", \"hash\": \"small_mee3_removebg_preview_1_f1b246b887\", \"mime\": \"image/png\", \"name\": \"small_mee3-removebg-preview (1).png\", \"path\": null, \"size\": 153.9, \"width\": 225, \"height\": 500}, \"thumbnail\": {\"ext\": \".png\", \"url\": \"https://esta-v2.s3.ap-south-1.amazonaws.com/thumbnail_mee3_removebg_preview_1_f1b246b887.png\", \"hash\": \"thumbnail_mee3_removebg_preview_1_f1b246b887\", \"mime\": \"image/png\", \"name\": \"thumbnail_mee3-removebg-preview (1).png\", \"path\": null, \"size\": 21.3, \"width\": 70, \"height\": 156}}', 'mee3_removebg_preview_1_f1b246b887', '.png', 'image/png', '80.78', 'https://esta-v2.s3.ap-south-1.amazonaws.com/mee3_removebg_preview_1_f1b246b887.png', NULL, 'aws-s3', NULL, '/1', '2023-03-12 10:56:25.710000', '2023-03-12 10:56:25.710000', NULL, NULL),
(25, 'photo-1542838132-92c53300491e.jpg', NULL, NULL, 1000, 750, '{\"small\": {\"ext\": \".jpg\", \"url\": \"https://esta-v2.s3.ap-south-1.amazonaws.com/small_photo_1542838132_92c53300491e_4557e74d4d.jpg\", \"hash\": \"small_photo_1542838132_92c53300491e_4557e74d4d\", \"mime\": \"image/jpeg\", \"name\": \"small_photo-1542838132-92c53300491e.jpg\", \"path\": null, \"size\": 59.4, \"width\": 500, \"height\": 375}, \"medium\": {\"ext\": \".jpg\", \"url\": \"https://esta-v2.s3.ap-south-1.amazonaws.com/medium_photo_1542838132_92c53300491e_4557e74d4d.jpg\", \"hash\": \"medium_photo_1542838132_92c53300491e_4557e74d4d\", \"mime\": \"image/jpeg\", \"name\": \"medium_photo-1542838132-92c53300491e.jpg\", \"path\": null, \"size\": 125.4, \"width\": 750, \"height\": 563}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"https://esta-v2.s3.ap-south-1.amazonaws.com/thumbnail_photo_1542838132_92c53300491e_4557e74d4d.jpg\", \"hash\": \"thumbnail_photo_1542838132_92c53300491e_4557e74d4d\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_photo-1542838132-92c53300491e.jpg\", \"path\": null, \"size\": 12.37, \"width\": 208, \"height\": 156}}', 'photo_1542838132_92c53300491e_4557e74d4d', '.jpg', 'image/jpeg', '211.82', 'https://esta-v2.s3.ap-south-1.amazonaws.com/photo_1542838132_92c53300491e_4557e74d4d.jpg', NULL, 'aws-s3', NULL, '/1', '2023-03-12 10:56:48.294000', '2023-03-12 10:56:48.294000', NULL, NULL),
(26, 'icon-only.png', NULL, NULL, 168, 252, '{\"thumbnail\": {\"ext\": \".png\", \"url\": \"https://esta-v2.s3.ap-south-1.amazonaws.com/thumbnail_icon_only_9735f8d453.png\", \"hash\": \"thumbnail_icon_only_9735f8d453\", \"mime\": \"image/png\", \"name\": \"thumbnail_icon-only.png\", \"path\": null, \"size\": 32.36, \"width\": 104, \"height\": 156}}', 'icon_only_9735f8d453', '.png', 'image/png', '17.67', 'https://esta-v2.s3.ap-south-1.amazonaws.com/icon_only_9735f8d453.png', NULL, 'aws-s3', NULL, '/', '2023-03-16 11:41:39.128000', '2023-03-17 11:59:45.556000', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `files_folder_links`
--

CREATE TABLE `files_folder_links` (
  `id` int UNSIGNED NOT NULL,
  `file_id` int UNSIGNED DEFAULT NULL,
  `folder_id` int UNSIGNED DEFAULT NULL,
  `file_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `files_folder_links`
--

INSERT INTO `files_folder_links` (`id`, `file_id`, `folder_id`, `file_order`) VALUES
(1, 22, 1, 1),
(2, 23, 1, 2),
(3, 24, 1, 3),
(4, 25, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `files_related_morphs`
--

CREATE TABLE `files_related_morphs` (
  `id` int UNSIGNED NOT NULL,
  `file_id` int UNSIGNED DEFAULT NULL,
  `related_id` int UNSIGNED DEFAULT NULL,
  `related_type` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `field` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `files_related_morphs`
--

INSERT INTO `files_related_morphs` (`id`, `file_id`, `related_id`, `related_type`, `field`, `order`) VALUES
(1, 1, 1, 'api::category.category', 'image', 1),
(2, 2, 2, 'api::category.category', 'image', 1),
(6, 3, 1, 'api::sub-category.sub-category', 'image', 1),
(7, 4, 1, 'api::recipe.recipe', 'image', 1),
(8, 5, 2, 'api::recipe.recipe', 'image', 1),
(9, 6, 3, 'api::recipe.recipe', 'image', 1),
(10, 7, 4, 'api::recipe.recipe', 'image', 1),
(31, 19, 1, 'api::blog.blog', 'image', 1),
(32, 19, 2, 'api::bcategory.bcategory', 'image', 1),
(33, 12, 1, 'api::bcategory.bcategory', 'image', 1),
(36, 25, 4, 'plugin::users-permissions.user', 'pic', 1),
(48, 26, 1, 'api::pdf.pdf', 'logo', 1),
(49, 26, 4, 'api::category.category', 'image', 1),
(50, 8, 1, 'static.about-us-circles', 'image', 1),
(51, 9, 2, 'static.about-us-circles', 'image', 1),
(52, 10, 3, 'static.about-us-circles', 'image', 1),
(53, 20, 1, 'static.sections', 'image', 1),
(54, 12, 1, 'api::about.about', 'gallery', 1),
(55, 13, 1, 'api::about.about', 'gallery', 2),
(56, 14, 1, 'api::about.about', 'gallery', 3),
(57, 15, 1, 'api::about.about', 'gallery', 4),
(58, 16, 1, 'api::about.about', 'gallery', 5),
(59, 17, 1, 'api::about.about', 'gallery', 6),
(60, 13, 1, 'api::about.about', 'banner', 1);

-- --------------------------------------------------------

--
-- Table structure for table `footers`
--

CREATE TABLE `footers` (
  `id` int UNSIGNED NOT NULL,
  `copyright` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `footers`
--

INSERT INTO `footers` (`id`, `copyright`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'sdf', '2023-03-09 16:55:05.985000', '2023-03-09 16:55:17.877000', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `footers_pages_links`
--

CREATE TABLE `footers_pages_links` (
  `id` int UNSIGNED NOT NULL,
  `footer_id` int UNSIGNED DEFAULT NULL,
  `page_id` int UNSIGNED DEFAULT NULL,
  `page_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `footers_pages_links`
--

INSERT INTO `footers_pages_links` (`id`, `footer_id`, `page_id`, `page_order`) VALUES
(1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `freemiums`
--

CREATE TABLE `freemiums` (
  `id` int UNSIGNED NOT NULL,
  `searches` int DEFAULT NULL,
  `downloads` int DEFAULT NULL,
  `saves` int DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL,
  `aisearches` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `freemiums`
--

INSERT INTO `freemiums` (`id`, `searches`, `downloads`, `saves`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`, `aisearches`) VALUES
(1, 3, 30000, 3, '2023-02-18 20:20:54.347000', '2023-03-10 02:37:56.172000', 1, 1, 300000);

-- --------------------------------------------------------

--
-- Table structure for table `homepages`
--

CREATE TABLE `homepages` (
  `id` int UNSIGNED NOT NULL,
  `main_title` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sub_title` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `button_text` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL,
  `sub_sub_title` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `homepages`
--

INSERT INTO `homepages` (`id`, `main_title`, `sub_title`, `button_text`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`, `sub_sub_title`) VALUES
(1, 'Your journey to better %food% starts here', 'Think delicious food is underated? So do we.', 'Start Cooking', '2023-02-04 19:21:29.294000', '2023-02-04 19:22:16.830000', 1, 1, ' We will help you get the best experience possible.');

-- --------------------------------------------------------

--
-- Table structure for table `homepages_sections_links`
--

CREATE TABLE `homepages_sections_links` (
  `id` int UNSIGNED NOT NULL,
  `homepage_id` int UNSIGNED DEFAULT NULL,
  `section_id` int UNSIGNED DEFAULT NULL,
  `section_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `homepages_sections_links`
--

INSERT INTO `homepages_sections_links` (`id`, `homepage_id`, `section_id`, `section_order`) VALUES
(1, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `i18n_locale`
--

CREATE TABLE `i18n_locale` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `i18n_locale`
--

INSERT INTO `i18n_locale` (`id`, `name`, `code`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'English (en)', 'en', '2023-02-02 18:13:15.518000', '2023-02-02 18:13:15.518000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `leads`
--

CREATE TABLE `leads` (
  `id` int UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `msg` longtext COLLATE utf8mb4_general_ci,
  `status` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sub_title` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `body` longtext COLLATE utf8mb4_general_ci,
  `slug` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `sub_title`, `body`, `slug`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'sdf', 'sdf', 'dfsf', NULL, '2023-03-09 16:55:13.962000', '2023-03-09 16:55:13.962000', NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pdfs`
--

CREATE TABLE `pdfs` (
  `id` int UNSIGNED NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pdfs`
--

INSERT INTO `pdfs` (`id`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, '2023-03-16 11:41:42.040000', '2023-03-16 11:41:42.040000', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sub_title` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `searches` int DEFAULT NULL,
  `saves` int DEFAULT NULL,
  `downloads` int DEFAULT NULL,
  `stripe_id` int DEFAULT NULL,
  `paypal_id` int DEFAULT NULL,
  `featured` tinyint(1) DEFAULT NULL,
  `days` int DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL,
  `aisearches` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `plans`
--

INSERT INTO `plans` (`id`, `title`, `sub_title`, `type`, `price`, `searches`, `saves`, `downloads`, `stripe_id`, `paypal_id`, `featured`, `days`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `aisearches`) VALUES
(1, 'Plan 1', 'Plan 1', 'Weekly', '29', 3, 3, 3, NULL, NULL, 1, 20, '2023-03-17 21:18:36.664000', '2023-03-17 21:18:37.765000', '2023-03-17 21:18:37.760000', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `plans_components`
--

CREATE TABLE `plans_components` (
  `id` int UNSIGNED NOT NULL,
  `entity_id` int UNSIGNED DEFAULT NULL,
  `component_id` int UNSIGNED DEFAULT NULL,
  `component_type` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `field` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prints`
--

CREATE TABLE `prints` (
  `id` int UNSIGNED NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prints_recipe_links`
--

CREATE TABLE `prints_recipe_links` (
  `id` int UNSIGNED NOT NULL,
  `print_id` int UNSIGNED DEFAULT NULL,
  `recipe_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prints_users_permissions_user_links`
--

CREATE TABLE `prints_users_permissions_user_links` (
  `id` int UNSIGNED NOT NULL,
  `print_id` int UNSIGNED DEFAULT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `print_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `recipes`
--

CREATE TABLE `recipes` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sub_title` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_general_ci,
  `ingredients` longtext COLLATE utf8mb4_general_ci,
  `optional_ingredients` longtext COLLATE utf8mb4_general_ci,
  `directions` longtext COLLATE utf8mb4_general_ci,
  `nutritional_information` longtext COLLATE utf8mb4_general_ci,
  `note` longtext COLLATE utf8mb4_general_ci,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL,
  `servings` longtext COLLATE utf8mb4_general_ci,
  `cook_time` longtext COLLATE utf8mb4_general_ci,
  `ai` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recipes`
--

INSERT INTO `recipes` (`id`, `title`, `sub_title`, `description`, `ingredients`, `optional_ingredients`, `directions`, `nutritional_information`, `note`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `servings`, `cook_time`, `ai`) VALUES
(1, 'Focaccia with Caramelized Onions', NULL, 'Focaccia with Caramelized Onions is a delicious and easy to make bread recipe. It\'s made with a classic focaccia dough, topped with caramelized onions, fresh herbs, and a sprinkle of sea salt. It\'s perfect as an appetizer, side dish, or as a base for sandwiches.', 'Dough:\n3 cups all-purpose flour\n1 envelope instant dry yeast\n1 tsp sugar\n1 tsp salt\n1/4 cup olive oil\n1 cup warm water\nToppings:\n\n2 large onions, thinly sliced\n2 cloves of garlic, minced\n2 tbsp olive oil\n1 tsp sugar\nSalt and black pepper, to taste\n2 tbsp fresh herbs (rosemary, thyme, or basil), finely chopped\n1 tsp sea salt', '', 'In a large bowl, combine the flour, yeast, sugar, and salt. Mix well.\nAdd the olive oil and warm water to the flour mixture. Mix until the dough comes together and forms a ball.\nKnead the dough for about 5-8 minutes, until it becomes smooth and elastic.\nPlace the dough in a greased bowl, cover it with plastic wrap, and let it rise in a warm place for about 1 hour, or until it has doubled in size.\nPreheat the oven to 425°F (220°C). Grease a baking sheet or line with parchment paper.\nIn a pan, heat 2 tbsp of olive oil over medium heat. Add the onions, garlic, sugar, salt, and pepper. Cook the onions for about 15 minutes or until they are golden brown and caramelized.\nRoll out the dough to a thickness of about 1/2 inch. Place it on the prepared baking sheet.\nMake dimples on the dough with your fingers. Brush the dough with olive oil and sprinkle with fresh herbs.\nTop the dough with the caramelized onions and sprinkle with sea salt.\nBake the focaccia for about 20-25 minutes, or until the crust is golden brown.\nLet the focaccia cool for a few minutes before slicing and serving.\nCook time: 45 minutes\nServings: 8\n', 'Saturated Fat: 2g\nCholesterol: 0mg\nSodium: 394mg\nCarbohydrates: 28g\nFiber: 1g\nSugar: 2g\nProtein: 4g', 'You can add different types of toppings such as sliced tomatoes, olives, or roasted vegetables. You can also add different types of cheeses such as mozzarella, goat cheese, or gorgonzola. And you can also add different types of herbs such as rosemary, thyme, or basil.', '2023-02-04 19:12:12.688000', '2023-02-04 19:14:06.551000', '2023-02-04 19:12:14.460000', 1, 1, NULL, NULL, NULL),
(2, 'Crispy Potato Skins', NULL, 'Crispy Potato Skins are a popular appetizer dish made by baking or frying thin slices of potato, typically from a russet potato, until they are crispy and golden brown. The potato slices are then topped with various ingredients such as cheese, bacon, sour cream, and chives. They are often served as a side dish or an appetizer in bars, pubs and restaurants. The crispy texture and savory toppings make it a perfect snack for parties or gatherings.', '-4 large russet potatoes\n-Salt\n-Oil for frying or baking\n-1 cup shredded cheese\n-1/2 cup crumbled bacon\n-Sour cream and chopped chives, for serving\n-Chives or green onions, chopped\n-Additional toppings can include diced or shredded chicken, diced tomatoes, diced onion, diced bell peppers, salsa, or guacamole.', NULL, '1. Preheat the oven to 400 degrees F.\n\n2. Scrub the potatoes and prick them all over with a fork.\n\n3. Bake the potatoes in the preheated oven for 45-50 minutes, or until they are cooked through.\n\n4. Remove the potatoes from the oven and let them cool until they can be handled.\n\n5. Cut the potatoes in half lengthwise and scoop out the insides, leaving about 1/4 inch of potato flesh on the skin.\n\n6. Cut the potato skins into wedges and season them with salt.\n\n7. Heat the oil in a large skillet or deep fryer to 375 degrees F.\n\n8. Fry the potato skins in batches until they are golden brown and crispy, about 2-3 minutes per side.', NULL, NULL, '2023-02-04 19:17:21.239000', '2023-02-04 19:17:25.780000', '2023-02-04 19:17:25.775000', 1, 1, NULL, NULL, NULL),
(3, 'Calamari and chorizo skewers', NULL, 'Calamari and chorizo skewers is a delicious and easy-to-make appetizer that combines the tender and savory flavor of calamari with the spicy and smoky flavor of chorizo. This dish is perfect for any occasion, whether it\'s a casual get-together or a formal event. The skewers are marinated in a mixture of olive oil, garlic, lemon juice, and herbs, which infuses the calamari and chorizo with a tangy and savory flavor.', '1 pound calamari, cleaned and cut into 1-inch pieces\n8 oz chorizo sausage, cut into 1-inch pieces\n1/4 cup olive oil\n2 cloves of garlic, minced\n2 tablespoons lemon juice\n1 teaspoon dried oregano\n1/2 teaspoon smoked paprika\nSalt and pepper, to taste\nSkewers (soaked in water for at least 30 minutes)\nLemon wedges and chopped parsley, for serving \n', NULL, '1. In a large bowl, mix together the olive oil, garlic, lemon juice, oregano, smoked paprika, salt and pepper.\n2. Add the calamari and chorizo to the bowl and toss to coat well with the marinade. Cover the bowl and refrigerate for at least 1 hour, or up to 4 hours.\n3. Preheat grill or grill pan over medium-high heat.\n4. Thread the calamari and chorizo pieces onto the skewers, alternating between the two.\n5. Grill the skewers for 2-3 minutes per side or until the calamari is slightly charred and cooked through and the chorizo is cooked through.\n6. Remove the skewers from the grill and let them rest for a few minutes.\n7. Serve the skewers with lemon wedges and chopped parsley, if desired.\n8. Enjoy your Calamari and Chorizo Skewers as an appetizer or as a main dish.\n\nCook time: 20-25 minutes\nServings:  4-6', NULL, NULL, '2023-02-04 19:19:06.545000', '2023-02-04 19:19:07.264000', '2023-02-04 19:19:07.261000', 1, 1, NULL, NULL, NULL),
(4, 'Creamy Shrimp and Grits', NULL, 'This classic southern dish features tender shrimp in a creamy sauce served over creamy grits. It makes a comforting and satisfying main course.', '\n1 lb. raw shrimp, peeled and deveined\n1 tbsp butter\n1 tbsp olive oil\n1/4 cup diced onion\n1 clove garlic, minced\n1/4 cup heavy cream\n1/4 cup chicken broth\n1/4 cup grated Parmesan cheese\n1/4 tsp paprika\nSalt and pepper, to taste\n1 cup water\n1/2 cup grits\n1/4 cup milk', NULL, '\nIn a pan, melt the butter and olive oil over medium heat.\nAdd the onion and garlic, and sauté until softened.\nAdd the shrimp, and cook until pink and cooked through.\nStir in the cream, chicken broth, Parmesan cheese, and paprika, and season with salt and pepper.\nBring the water to a boil in a pot, and gradually stir in the grits.\nReduce heat to low, cover, and simmer for 5-7 minutes, or until the grits are creamy.\nStir in milk and season with salt and pepper.\nServe the shrimp mixture over the grits.\nCook Time: 20 minutes\n\nServings: 4', 'Fat: 22g\nSodium: 600mg\nCarbohydrates: 22g\nProtein: 22g', 'This recipe can be easily modified by using different types of seafood or by adding vegetables such as bell peppers or mushrooms. You can also use different types of cheese or seasonings to suit your taste.', '2023-02-04 19:20:29.882000', '2023-02-04 19:20:30.517000', '2023-02-04 19:20:30.514000', 1, 1, NULL, NULL, NULL),
(5, 'loog', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-18 19:48:53.089000', '2023-02-18 19:48:53.089000', '2023-02-18 19:48:53.085000', NULL, NULL, NULL, NULL, NULL),
(6, 'chawal', NULL, '\n\nChawal is a traditional Indian dish made with rice, spices, and vegetables. It is cooked in a flavorful broth and can be served as a main dish or side dish. It is a simple yet delicious dish that is sure to please any palate.', '\n\nIngredients:\n\n-1 cup long grain white rice\n-1 teaspoon salt\n-2 cups water\n-1 tablespoon butter or oil (optional)', NULL, '\n\nIngredients:\n\n- 2 cups of long grain white rice\n- 2 tablespoons of butter\n- 2 cups of water\n- Salt to taste\n\nInstructions:\n\n1. Rinse the rice in a fine mesh strainer until the water runs clear.\n\n2. Melt the butter in a medium saucepan over medium heat.\n\n3. Add the rice and stir to coat with the butter.\n\n4. Add the water and salt and bring to a boil.\n\n5. Reduce the heat to low and cover the pan.\n\n6. Simmer for 15-20 minutes, or until the water is absorbed and the rice is tender.\n\n7. Fluff the rice with a fork and serve.', NULL, NULL, '2023-03-09 23:57:37.246000', '2023-03-09 23:57:37.246000', '2023-03-09 23:57:37.242000', NULL, NULL, NULL, NULL, NULL),
(7, 'chawal', NULL, 'This simple and delicious recipe for chawal (rice) is a great side dish for any meal.', '1 cup long-grain white rice\n2 cups water\n1 teaspoon salt', NULL, NULL, 'Serving size: 1/4 cup\nCalories: 100\nFat: 0g\nCarbohydrates: 21g\nProtein: 2g', '', '2023-03-10 02:00:36.164000', '2023-03-10 02:00:36.164000', '2023-03-10 02:00:36.157000', NULL, NULL, NULL, ' 18 minutes', NULL),
(8, 'chawal', NULL, 'This simple and delicious recipe for chawal (rice) is a great side dish for any meal.', '1 cup long-grain white rice\n2 cups water\n1 teaspoon salt', NULL, NULL, 'Serving size: 1/4 cup\nCalories: 100\nFat: 0g\nCarbohydrates: 21g\nProtein: 2g', '', '2023-03-10 02:02:15.916000', '2023-03-10 02:02:15.916000', '2023-03-10 02:02:15.909000', NULL, NULL, NULL, ' 18 minutes', NULL),
(9, 'chawal', NULL, 'This simple and delicious recipe for chawal (rice) is a great side dish for any meal.', '1 cup long-grain white rice\n2 cups water\n1 teaspoon salt', NULL, '1. Rinse the rice in a fine-mesh strainer until the water runs clear.\n2. Place the rice, water, and salt in a medium saucepan and bring to a boil over high heat.\n3. Reduce the heat to low, cover, and simmer for 18 minutes.\n4. Remove from the heat and let stand, covered, for 5 minutes.\n5. Fluff with a fork and serve.\n\nNutrition Information:\nServing size: 1/4 cup\nCalories: 100\nFat: 0g\nCarbohydrates: 21g\nProtein: 2g', 'Serving size: 1/4 cup\nCalories: 100\nFat: 0g\nCarbohydrates: 21g\nProtein: 2g', '', '2023-03-10 02:04:06.250000', '2023-03-10 02:04:06.250000', '2023-03-10 02:04:06.244000', NULL, NULL, NULL, ' 18 minutes', NULL),
(10, 'chawal', NULL, 'This simple and delicious recipe for chawal (rice) is a great side dish for any meal.', '1 cup long-grain white rice\n2 cups water\n1 teaspoon salt', NULL, '1. Rinse the rice in a fine-mesh strainer until the water runs clear.\n2. Place the rice, water, and salt in a medium saucepan and bring to a boil over high heat.\n3. Reduce the heat to low, cover, and simmer for 18 minutes.\n4. Remove from the heat and let stand, covered, for 5 minutes.\n5. Fluff with a fork and serve.\n\nNutrition Information:\nServing size: 1/4 cup\nCalories: 100\nFat: 0g\nCarbohydrates: 21g\nProtein: 2g', 'Serving size: 1/4 cup\nCalories: 100\nFat: 0g\nCarbohydrates: 21g\nProtein: 2g', '', '2023-03-10 02:08:56.102000', '2023-03-10 02:08:56.102000', '2023-03-10 02:08:56.097000', NULL, NULL, NULL, ' 18 minutes', NULL),
(11, 'briyani', NULL, 'This is a delicious and flavorful briyani recipe that is sure to please everyone.', '2 cups basmati rice \n 2 tablespoons vegetable oil \n 1 onion, chopped \n 2 cloves garlic, minced \n 1 teaspoon ground ginger \n 1 teaspoon ground cumin \n 1 teaspoon ground coriander \n 1/2 teaspoon ground turmeric \n 1/2 teaspoon ground cardamom \n 1/2 teaspoon ground cinnamon \n 1/4 teaspoon ground cloves \n 1/4 teaspoon ground nutmeg \n 1/4 teaspoon cayenne pepper \n 2 cups vegetable broth \n 1/2 cup frozen peas \n 1/2 cup chopped cashews \n 1/4 cup chopped fresh cilantro \n Salt and pepper to taste', NULL, '1. Rinse the rice in a fine mesh strainer until the water runs clear. \n 2. Heat the oil in a large pot over medium heat. Add the onion and garlic and cook until softened, about 5 minutes. \n 3. Add the ginger, cumin, coriander, turmeric, cardamom, cinnamon, cloves, nutmeg, and cayenne pepper and cook for 1 minute. \n 4. Add the rice and stir to coat with the spices. Add the broth and bring to a boil. Reduce the heat to low, cover, and simmer for 15 minutes. \n 5. Add the peas, cashews, and optional ingredients, if using. Cover and simmer for 10 minutes. \n 6. Remove from the heat and let stand for 5 minutes. Fluff with a fork and stir in the cilantro. Season with salt and pepper to taste. Serve hot.', 'Calories: 456 \n Fat: 16g \n Carbohydrates: 64g \n Protein: 10g \n Sodium: 545mg \n Fiber: 5g', 'This recipe can be easily doubled or tripled to serve more people.', '2023-03-10 02:36:04.296000', '2023-03-10 02:36:04.296000', '2023-03-10 02:36:04.290000', NULL, NULL, NULL, '30 minutes', NULL),
(12, 'beaf', NULL, 'This is a delicious and easy-to-make beef recipe that is sure to please everyone at the dinner table.', '1 lb. ground beef \n 1 onion, diced \n 2 cloves garlic, minced \n 1/2 cup ketchup \n 1/4 cup Worcestershire sauce \n 1/4 cup brown sugar \n 1 teaspoon chili powder \n 1 teaspoon salt \n 1/2 teaspoon pepper', NULL, 'In a large skillet over medium-high heat, cook the ground beef until no longer pink. Drain off any excess fat. \n Add the onion, garlic, bell pepper, and celery (if using) and cook until the vegetables are softened, about 5 minutes. \n Add the ketchup, Worcestershire sauce, brown sugar, chili powder, salt, and pepper. Stir to combine. \n Reduce the heat to low and simmer for 10 minutes, stirring occasionally. \n Serve over rice or noodles.', 'Calories: 300 \n Fat: 10g \n Protein: 20g \n Carbohydrates: 25g \n Fiber: 2g \n Sodium: 600mg', 'This recipe can also be made with ground turkey or chicken.', '2023-03-10 02:41:31.768000', '2023-03-10 02:41:31.768000', '2023-03-10 02:41:31.762000', NULL, NULL, NULL, '20 minutes', NULL),
(13, 'beaf', NULL, 'This is a delicious and easy-to-make beef recipe that is sure to please everyone at the dinner table.', '1 lb. ground beef \n 1 onion, diced \n 2 cloves garlic, minced \n 1/2 cup ketchup \n 1/4 cup Worcestershire sauce \n 1/4 cup brown sugar \n 1 teaspoon chili powder \n 1 teaspoon salt \n 1/2 teaspoon pepper', NULL, 'In a large skillet over medium-high heat, cook the ground beef until no longer pink. Drain off any excess fat. \n Add the onion, garlic, bell pepper, and celery (if using) and cook until the vegetables are softened, about 5 minutes. \n Add the ketchup, Worcestershire sauce, brown sugar, chili powder, salt, and pepper. Stir to combine. \n Reduce the heat to low and simmer for 10 minutes, stirring occasionally. \n Serve over rice or noodles.', 'Calories: 300 \n Fat: 10g \n Protein: 20g \n Carbohydrates: 25g \n Fiber: 2g \n Sodium: 600mg', 'This recipe can also be made with ground turkey or chicken.', '2023-03-10 02:43:31.374000', '2023-03-10 02:43:31.374000', '2023-03-10 02:43:31.370000', NULL, NULL, NULL, '20 minutes', NULL),
(14, 'mutton', NULL, 'This is a delicious and easy mutton recipe that is sure to please everyone.', '1 kg mutton \n 2 onions, chopped \n 2 tomatoes, chopped \n 2 tablespoons ginger-garlic paste \n 2 tablespoons coriander powder \n 1 teaspoon cumin powder \n 1 teaspoon garam masala \n 2 tablespoons oil \n Salt to taste', NULL, '1. Heat oil in a pan and add the chopped onions. Fry until golden brown. \n 2. Add the ginger-garlic paste and fry for a few minutes. \n 3. Add the chopped tomatoes and fry until they are soft. \n 4. Add the coriander powder, cumin powder, garam masala, red chilli powder and turmeric powder. Fry for a few minutes. \n 5. Add the mutton and salt to taste. Fry for a few minutes. \n 6. Add 1 cup of water and cover the pan. Cook until the mutton is tender. \n 7. Serve hot with rice or roti.', 'Calories: 400 kcal \n Protein: 25 g \n Fat: 20 g \n Carbohydrates: 10 g \n Fiber: 2 g', 'You can add more spices to the recipe according to your taste.', '2023-03-10 02:43:58.388000', '2023-03-10 02:43:58.388000', '2023-03-10 02:43:58.384000', NULL, NULL, NULL, '45 minutes', NULL),
(15, 'chawal alu', NULL, 'This chawal alu recipe is a delicious and easy to make dish that is perfect for any occasion. It is made with rice, potatoes, and a variety of spices and herbs. It is a great side dish or main course.', '2 cups basmati rice \n 2 potatoes, peeled and diced \n 2 tablespoons vegetable oil \n 1 teaspoon cumin seeds \n 1 teaspoon mustard seeds \n 1 teaspoon turmeric powder \n 1 teaspoon garam masala \n 1 teaspoon red chili powder \n 1 teaspoon coriander powder \n 1 teaspoon salt \n 2 tablespoons chopped cilantro \n 2 tablespoons chopped mint leaves', NULL, '1. Wash the rice and soak it in water for 30 minutes. \n 2. Heat the oil in a large pot over medium heat. Add the cumin and mustard seeds and cook until they start to sizzle. \n 3. Add the potatoes and cook for 5 minutes, stirring occasionally. \n 4. Add the turmeric, garam masala, red chili powder, coriander powder, and salt. Stir to combine. \n 5. Add the rice and stir to combine. Add 2 cups of water and bring to a boil. \n 6. Reduce the heat to low, cover the pot, and cook for 15 minutes. \n 7. Remove the lid and fluff the rice with a fork. Add the cilantro and mint leaves and stir to combine. \n 8. Serve hot with your favorite accompaniments.', 'Calories: 250 \n Fat: 7g \n Carbohydrates: 40g \n Protein: 5g', 'You can add other vegetables such as carrots, peas, or bell peppers to the dish for added flavor and nutrition.', '2023-03-11 11:42:14.169000', '2023-03-11 11:42:14.169000', '2023-03-11 11:42:14.155000', NULL, NULL, NULL, '30 minutes', NULL),
(16, 'Creamy Shrimp and Grits (12)', NULL, 'This classic southern dish features tender shrimp in a creamy sauce served over creamy grits. \nIt makes a comforting and satisfying main course.\nDirections: \nIn a pan, melt the butter and olive oil over medium heat.\nAdd the onion and garlic, and sauté until softened.\nAdd the shrimp, and cook until pink and cooked through.\nStir in the cream, chicken broth, Parmesan cheese, and paprika, and season with salt and pepper.\nBring the water to a boil in a pot, and gradually stir in the grits.\nReduce heat to low, cover, and simmer for 5-7 minutes, or until the grits are creamy.\nStir in milk and season with salt and pepper.\nServe the shrimp mixture over the grits.\nCook Time: 20 minutes\nServings: 4', '1 lb. raw shrimp, peeled and deveined\n1 tbsp butter\n1 tbsp olive oil\n1/4 cup diced onion\n1 clove garlic, minced\n1/4 cup heavy cream\n1/4 cup chicken broth\n1/4 cup grated Parmesan cheese\n1/4 tsp paprika\nSalt and pepper, to taste\n1 cup water\n1/2 cup grits\n1/4 cup milk\nNutrional Information: Fat: 22g\nSodium: 600mg\nCarbohydrates: 22g\nProtein: 22g\nCook Time: \nServing:', '', 'In a pan, melt the butter and olive oil over medium heat.\nAdd the onion and garlic, and sauté until softened.\nAdd the shrimp, and cook until pink and cooked through.\nStir in the cream, chicken broth, Parmesan cheese, and paprika, and season with salt and pepper.\nBring the water to a boil in a pot, and gradually stir in the grits.\nReduce heat to low, cover, and simmer for 5-7 minutes, or until the grits are creamy.\nStir in milk and season with salt and pepper.\nServe the shrimp mixture over the grits.\nCook Time: 20 minutes\nServings: 4', '', ' This recipe can be easily modified by using different types of seafood or by adding vegetables such \nas bell peppers or mushrooms. You can also use different types of cheese or seasonings to suit your taste.\nTheCheffRecipes.com\n', '2023-03-17 12:08:59.353000', '2023-03-17 12:08:59.353000', '2023-03-17 12:08:59.348000', NULL, NULL, '4', '', 0),
(17, 'Creamy Shrimp and Grits (11)', NULL, 'This classic southern dish features tender shrimp in a creamy sauce served over creamy grits. \nIt makes a comforting and satisfying main course.\nDirections: \nIn a pan, melt the butter and olive oil over medium heat.\nAdd the onion and garlic, and sauté until softened.\nAdd the shrimp, and cook until pink and cooked through.\nStir in the cream, chicken broth, Parmesan cheese, and paprika, and season with salt and pepper.\nBring the water to a boil in a pot, and gradually stir in the grits.\nReduce heat to low, cover, and simmer for 5-7 minutes, or until the grits are creamy.\nStir in milk and season with salt and pepper.\nServe the shrimp mixture over the grits.\nCook Time: 20 minutes\nServings: 4', '1 lb. raw shrimp, peeled and deveined\n1 tbsp butter\n1 tbsp olive oil\n1/4 cup diced onion\n1 clove garlic, minced\n1/4 cup heavy cream\n1/4 cup chicken broth\n1/4 cup grated Parmesan cheese\n1/4 tsp paprika\nSalt and pepper, to taste\n1 cup water\n1/2 cup grits\n1/4 cup milk\nNutrional Information: Fat: 22g\nSodium: 600mg\nCarbohydrates: 22g\nProtein: 22g\nCook Time: \nServing:', '', 'In a pan, melt the butter and olive oil over medium heat.\nAdd the onion and garlic, and sauté until softened.\nAdd the shrimp, and cook until pink and cooked through.\nStir in the cream, chicken broth, Parmesan cheese, and paprika, and season with salt and pepper.\nBring the water to a boil in a pot, and gradually stir in the grits.\nReduce heat to low, cover, and simmer for 5-7 minutes, or until the grits are creamy.\nStir in milk and season with salt and pepper.\nServe the shrimp mixture over the grits.\nCook Time: 20 minutes\nServings: 4', '', ' This recipe can be easily modified by using different types of seafood or by adding vegetables such \nas bell peppers or mushrooms. You can also use different types of cheese or seasonings to suit your taste.\nTheCheffRecipes.com\n', '2023-03-17 12:08:59.394000', '2023-03-17 12:08:59.394000', '2023-03-17 12:08:59.391000', NULL, NULL, '4', '', 0),
(18, 'Creamy Shrimp and Grits (12)', NULL, 'This classic southern dish features tender shrimp in a creamy sauce served over creamy grits. \nIt makes a comforting and satisfying main course.\nDirections: \nIn a pan, melt the butter and olive oil over medium heat.\nAdd the onion and garlic, and sauté until softened.\nAdd the shrimp, and cook until pink and cooked through.\nStir in the cream, chicken broth, Parmesan cheese, and paprika, and season with salt and pepper.\nBring the water to a boil in a pot, and gradually stir in the grits.\nReduce heat to low, cover, and simmer for 5-7 minutes, or until the grits are creamy.\nStir in milk and season with salt and pepper.\nServe the shrimp mixture over the grits.\nCook Time: 20 minutes\nServings: 4', '1 lb. raw shrimp, peeled and deveined\n1 tbsp butter\n1 tbsp olive oil\n1/4 cup diced onion\n1 clove garlic, minced\n1/4 cup heavy cream\n1/4 cup chicken broth\n1/4 cup grated Parmesan cheese\n1/4 tsp paprika\nSalt and pepper, to taste\n1 cup water\n1/2 cup grits\n1/4 cup milk\nNutrional Information: Fat: 22g\nSodium: 600mg\nCarbohydrates: 22g\nProtein: 22g\nCook Time: \nServing:', '', 'In a pan, melt the butter and olive oil over medium heat.\nAdd the onion and garlic, and sauté until softened.\nAdd the shrimp, and cook until pink and cooked through.\nStir in the cream, chicken broth, Parmesan cheese, and paprika, and season with salt and pepper.\nBring the water to a boil in a pot, and gradually stir in the grits.\nReduce heat to low, cover, and simmer for 5-7 minutes, or until the grits are creamy.\nStir in milk and season with salt and pepper.\nServe the shrimp mixture over the grits.\nCook Time: 20 minutes\nServings: 4', '', ' This recipe can be easily modified by using different types of seafood or by adding vegetables such \nas bell peppers or mushrooms. You can also use different types of cheese or seasonings to suit your taste.\nTheCheffRecipes.com\n', '2023-03-17 12:09:37.178000', '2023-03-17 12:09:37.178000', '2023-03-17 12:09:37.176000', NULL, NULL, '4', '', 0),
(19, 'Creamy Shrimp and Grits (11)', NULL, 'This classic southern dish features tender shrimp in a creamy sauce served over creamy grits. \nIt makes a comforting and satisfying main course.\nDirections: \nIn a pan, melt the butter and olive oil over medium heat.\nAdd the onion and garlic, and sauté until softened.\nAdd the shrimp, and cook until pink and cooked through.\nStir in the cream, chicken broth, Parmesan cheese, and paprika, and season with salt and pepper.\nBring the water to a boil in a pot, and gradually stir in the grits.\nReduce heat to low, cover, and simmer for 5-7 minutes, or until the grits are creamy.\nStir in milk and season with salt and pepper.\nServe the shrimp mixture over the grits.\nCook Time: 20 minutes\nServings: 4', '1 lb. raw shrimp, peeled and deveined\n1 tbsp butter\n1 tbsp olive oil\n1/4 cup diced onion\n1 clove garlic, minced\n1/4 cup heavy cream\n1/4 cup chicken broth\n1/4 cup grated Parmesan cheese\n1/4 tsp paprika\nSalt and pepper, to taste\n1 cup water\n1/2 cup grits\n1/4 cup milk\nNutrional Information: Fat: 22g\nSodium: 600mg\nCarbohydrates: 22g\nProtein: 22g\nCook Time: \nServing:', '', 'In a pan, melt the butter and olive oil over medium heat.\nAdd the onion and garlic, and sauté until softened.\nAdd the shrimp, and cook until pink and cooked through.\nStir in the cream, chicken broth, Parmesan cheese, and paprika, and season with salt and pepper.\nBring the water to a boil in a pot, and gradually stir in the grits.\nReduce heat to low, cover, and simmer for 5-7 minutes, or until the grits are creamy.\nStir in milk and season with salt and pepper.\nServe the shrimp mixture over the grits.\nCook Time: 20 minutes\nServings: 4', '', ' This recipe can be easily modified by using different types of seafood or by adding vegetables such \nas bell peppers or mushrooms. You can also use different types of cheese or seasonings to suit your taste.\nTheCheffRecipes.com\n', '2023-03-17 12:09:37.211000', '2023-03-17 12:09:37.211000', '2023-03-17 12:09:37.210000', NULL, NULL, '4', '', 0),
(20, NULL, NULL, 'Test', NULL, NULL, NULL, NULL, NULL, '2023-03-17 12:21:01.961000', '2023-03-17 12:21:01.961000', '2023-03-17 12:21:01.952000', NULL, NULL, NULL, NULL, 0),
(21, 'Creamy Shrimp and Grits (13)', NULL, 'This classic southern dish features tender shrimp in a creamy sauce served over creamy grits. \nIt makes a comforting and satisfying main course.\nDirections: \nIn a pan, melt the butter and olive oil over medium heat.\nAdd the onion and garlic, and sauté until softened.\nAdd the shrimp, and cook until pink and cooked through.\nStir in the cream, chicken broth, Parmesan cheese, and paprika, and season with salt and pepper.\nBring the water to a boil in a pot, and gradually stir in the grits.\nReduce heat to low, cover, and simmer for 5-7 minutes, or until the grits are creamy.\nStir in milk and season with salt and pepper.\nServe the shrimp mixture over the grits.\nCook Time: 20 minutes\nServings: 4', '1 lb. raw shrimp, peeled and deveined\n1 tbsp butter\n1 tbsp olive oil\n1/4 cup diced onion\n1 clove garlic, minced\n1/4 cup heavy cream\n1/4 cup chicken broth\n1/4 cup grated Parmesan cheese\n1/4 tsp paprika\nSalt and pepper, to taste\n1 cup water\n1/2 cup grits\n1/4 cup milk\nNutrional Information: Fat: 22g\nSodium: 600mg\nCarbohydrates: 22g\nProtein: 22g\nCook Time: \nServing:', '', 'In a pan, melt the butter and olive oil over medium heat.\nAdd the onion and garlic, and sauté until softened.\nAdd the shrimp, and cook until pink and cooked through.\nStir in the cream, chicken broth, Parmesan cheese, and paprika, and season with salt and pepper.\nBring the water to a boil in a pot, and gradually stir in the grits.\nReduce heat to low, cover, and simmer for 5-7 minutes, or until the grits are creamy.\nStir in milk and season with salt and pepper.\nServe the shrimp mixture over the grits.\nCook Time: 20 minutes\nServings: 4', '', ' This recipe can be easily modified by using different types of seafood or by adding vegetables such \nas bell peppers or mushrooms. You can also use different types of cheese or seasonings to suit your taste.\nThanks again for stopping by and happy cooking!\n', '2023-03-17 12:24:32.914000', '2023-03-17 12:24:32.914000', '2023-03-17 12:24:32.908000', NULL, NULL, '4', '', 0),
(22, 'Creamy Shrimp and Grits (12)', NULL, 'This classic southern dish features tender shrimp in a creamy sauce served over creamy grits. \nIt makes a comforting and satisfying main course.\nDirections: \nIn a pan, melt the butter and olive oil over medium heat.\nAdd the onion and garlic, and sauté until softened.\nAdd the shrimp, and cook until pink and cooked through.\nStir in the cream, chicken broth, Parmesan cheese, and paprika, and season with salt and pepper.\nBring the water to a boil in a pot, and gradually stir in the grits.\nReduce heat to low, cover, and simmer for 5-7 minutes, or until the grits are creamy.\nStir in milk and season with salt and pepper.\nServe the shrimp mixture over the grits.\nCook Time: 20 minutes\nServings: 4', '1 lb. raw shrimp, peeled and deveined\n1 tbsp butter\n1 tbsp olive oil\n1/4 cup diced onion\n1 clove garlic, minced\n1/4 cup heavy cream\n1/4 cup chicken broth\n1/4 cup grated Parmesan cheese\n1/4 tsp paprika\nSalt and pepper, to taste\n1 cup water\n1/2 cup grits\n1/4 cup milk\nNutrional Information: Fat: 22g\nSodium: 600mg\nCarbohydrates: 22g\nProtein: 22g\nCook Time: \nServing:', '', 'In a pan, melt the butter and olive oil over medium heat.\nAdd the onion and garlic, and sauté until softened.\nAdd the shrimp, and cook until pink and cooked through.\nStir in the cream, chicken broth, Parmesan cheese, and paprika, and season with salt and pepper.\nBring the water to a boil in a pot, and gradually stir in the grits.\nReduce heat to low, cover, and simmer for 5-7 minutes, or until the grits are creamy.\nStir in milk and season with salt and pepper.\nServe the shrimp mixture over the grits.\nCook Time: 20 minutes\nServings: 4', '', ' This recipe can be easily modified by using different types of seafood or by adding vegetables such \nas bell peppers or mushrooms. You can also use different types of cheese or seasonings to suit your taste.\nTheCheffRecipes.com\n', '2023-03-17 12:24:32.976000', '2023-03-17 12:24:32.976000', '2023-03-17 12:24:32.969000', NULL, NULL, '4', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `recipes_category_links`
--

CREATE TABLE `recipes_category_links` (
  `id` int UNSIGNED NOT NULL,
  `recipe_id` int UNSIGNED DEFAULT NULL,
  `category_id` int UNSIGNED DEFAULT NULL,
  `recipe_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recipes_category_links`
--

INSERT INTO `recipes_category_links` (`id`, `recipe_id`, `category_id`, `recipe_order`) VALUES
(1, 20, 4, 1),
(2, 21, 4, 2),
(3, 22, 4, 3);

-- --------------------------------------------------------

--
-- Table structure for table `recipes_sub_category_links`
--

CREATE TABLE `recipes_sub_category_links` (
  `id` int UNSIGNED NOT NULL,
  `recipe_id` int UNSIGNED DEFAULT NULL,
  `sub_category_id` int UNSIGNED DEFAULT NULL,
  `recipe_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recipes_sub_category_links`
--

INSERT INTO `recipes_sub_category_links` (`id`, `recipe_id`, `sub_category_id`, `recipe_order`) VALUES
(2, 1, 1, 1),
(3, 2, 1, 2),
(4, 3, 1, 3),
(5, 4, 1, 4),
(6, 5, 1, 5),
(7, 7, 3, 1),
(8, 8, 3, 2),
(9, 9, 3, 3),
(10, 10, 3, 4),
(11, 11, 3, 5),
(12, 12, 3, 6),
(13, 13, 3, 7),
(14, 14, 3, 8),
(15, 15, 3, 9);

-- --------------------------------------------------------

--
-- Table structure for table `saves`
--

CREATE TABLE `saves` (
  `id` int UNSIGNED NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL,
  `trial` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `saves`
--

INSERT INTO `saves` (`id`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`, `trial`) VALUES
(1, '2023-02-18 20:23:22.516000', '2023-02-18 20:23:22.516000', NULL, NULL, NULL),
(19, '2023-02-18 21:29:21.524000', '2023-02-18 21:29:21.524000', NULL, NULL, NULL),
(39, '2023-03-12 11:44:01.043000', '2023-03-12 11:44:01.043000', NULL, NULL, 1),
(40, '2023-03-17 12:29:15.395000', '2023-03-17 12:29:15.395000', NULL, NULL, 1),
(41, '2023-03-17 12:29:50.417000', '2023-03-17 12:29:50.417000', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `saves_recipe_links`
--

CREATE TABLE `saves_recipe_links` (
  `id` int UNSIGNED NOT NULL,
  `save_id` int UNSIGNED DEFAULT NULL,
  `recipe_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `saves_recipe_links`
--

INSERT INTO `saves_recipe_links` (`id`, `save_id`, `recipe_id`) VALUES
(1, 1, 1),
(19, 19, 3),
(39, 39, 3),
(40, 40, 21),
(41, 41, 20);

-- --------------------------------------------------------

--
-- Table structure for table `saves_subscription_links`
--

CREATE TABLE `saves_subscription_links` (
  `id` int UNSIGNED NOT NULL,
  `save_id` int UNSIGNED DEFAULT NULL,
  `subscription_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `saves_user_id_links`
--

CREATE TABLE `saves_user_id_links` (
  `id` int UNSIGNED NOT NULL,
  `save_id` int UNSIGNED DEFAULT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `save_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `saves_user_id_links`
--

INSERT INTO `saves_user_id_links` (`id`, `save_id`, `user_id`, `save_order`) VALUES
(18, 19, 3, 1),
(38, 39, 4, 1),
(39, 40, 13, 1),
(40, 41, 13, 2);

-- --------------------------------------------------------

--
-- Table structure for table `searches`
--

CREATE TABLE `searches` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL,
  `trial` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `searches`
--

INSERT INTO `searches` (`id`, `title`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`, `trial`) VALUES
(1, 'chicken', '2023-02-18 19:16:15.327000', '2023-02-18 19:16:15.327000', NULL, NULL, NULL),
(2, 'chicken f', '2023-02-18 19:18:20.188000', '2023-02-18 19:18:20.188000', NULL, NULL, NULL),
(3, 'chicken f', '2023-02-18 19:20:41.070000', '2023-02-18 19:20:41.070000', NULL, NULL, NULL),
(4, 'chicken f', '2023-02-18 19:20:52.603000', '2023-02-18 19:20:52.603000', NULL, NULL, NULL),
(5, 'chicken f', '2023-02-18 19:21:04.985000', '2023-02-18 19:21:04.985000', NULL, NULL, NULL),
(6, 'chicken f', '2023-02-18 19:21:53.652000', '2023-02-18 19:21:53.652000', NULL, NULL, NULL),
(7, 'chicken f', '2023-02-18 19:23:24.129000', '2023-02-18 19:42:03.418000', NULL, NULL, NULL),
(8, 'chicken f', '2023-02-18 19:27:10.021000', '2023-02-18 19:27:10.021000', NULL, NULL, NULL),
(9, 'chicken fe', '2023-02-18 19:29:08.649000', '2023-02-18 19:29:08.649000', NULL, NULL, NULL),
(10, 'chicken fe', '2023-02-18 19:31:27.615000', '2023-02-18 19:31:27.615000', NULL, NULL, NULL),
(11, 'chicken fe', '2023-02-18 19:31:30.686000', '2023-02-18 19:31:30.686000', NULL, NULL, NULL),
(12, '55', '2023-02-18 19:32:19.864000', '2023-02-18 19:32:19.864000', 1, 1, NULL),
(13, 'chicken fe', '2023-02-18 19:32:59.467000', '2023-02-18 19:32:59.467000', NULL, NULL, NULL),
(14, 'chicken fe', '2023-02-18 19:38:05.829000', '2023-02-18 19:38:05.829000', NULL, NULL, NULL),
(15, 'chicken fe', '2023-02-18 19:38:35.012000', '2023-02-18 19:38:35.012000', NULL, NULL, NULL),
(16, 'chicken fe', '2023-02-18 19:38:36.655000', '2023-02-18 19:38:36.655000', NULL, NULL, NULL),
(17, 'chicken fe', '2023-02-18 19:38:40.905000', '2023-02-18 19:38:40.905000', NULL, NULL, NULL),
(18, 'chicken fe', '2023-02-18 19:39:10.060000', '2023-02-18 19:39:10.060000', NULL, NULL, NULL),
(19, 'chicken fe', '2023-02-18 19:39:18.267000', '2023-02-18 19:39:18.267000', NULL, NULL, NULL),
(20, 'chicken fe', '2023-02-18 19:39:28.252000', '2023-02-18 19:39:28.252000', NULL, NULL, NULL),
(21, NULL, '2023-02-18 19:40:04.805000', '2023-02-18 19:40:04.805000', NULL, NULL, NULL),
(22, 'loog', '2023-02-18 19:50:38.512000', '2023-02-18 19:50:38.512000', NULL, NULL, NULL),
(23, 'chicken fe', '2023-02-18 19:57:21.512000', '2023-02-18 19:57:21.512000', NULL, NULL, NULL),
(24, 'chicken fe', '2023-02-18 19:58:06.679000', '2023-02-18 19:58:06.679000', NULL, NULL, NULL),
(25, 'chicken fe', '2023-02-18 20:00:35.725000', '2023-02-18 20:00:35.725000', NULL, NULL, NULL),
(26, 'chicken fe', '2023-02-18 20:01:53.453000', '2023-02-18 20:01:53.453000', NULL, NULL, NULL),
(27, 'chicken fe', '2023-02-18 20:10:21.716000', '2023-02-18 20:10:21.716000', NULL, NULL, NULL),
(28, NULL, '2023-02-18 20:17:16.995000', '2023-02-18 20:17:16.995000', NULL, NULL, NULL),
(29, 'chicken fe', '2023-03-09 16:52:02.184000', '2023-03-09 16:52:02.184000', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `searches_subscription_links`
--

CREATE TABLE `searches_subscription_links` (
  `id` int UNSIGNED NOT NULL,
  `searche_id` int UNSIGNED DEFAULT NULL,
  `subscription_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `searches_users_permissions_user_links`
--

CREATE TABLE `searches_users_permissions_user_links` (
  `id` int UNSIGNED NOT NULL,
  `searche_id` int UNSIGNED DEFAULT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `searche_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `searches_user_id_links`
--

CREATE TABLE `searches_user_id_links` (
  `id` int UNSIGNED NOT NULL,
  `searche_id` int UNSIGNED DEFAULT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `searche_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `searches_user_id_links`
--

INSERT INTO `searches_user_id_links` (`id`, `searche_id`, `user_id`, `searche_order`) VALUES
(1, 26, 2, 1),
(2, 28, 2, 2),
(3, 29, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sub_title` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `title`, `sub_title`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Popular', 'most popular recipes', '2023-02-04 19:10:37.659000', '2023-02-04 19:20:48.469000', '2023-02-04 19:10:38.342000', 1, 1),
(2, 'Recommended', 'What we recommend the most', '2023-02-04 20:14:44.667000', '2023-02-04 20:14:57.435000', '2023-02-04 20:14:45.956000', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sections_recipes_links`
--

CREATE TABLE `sections_recipes_links` (
  `id` int UNSIGNED NOT NULL,
  `section_id` int UNSIGNED DEFAULT NULL,
  `recipe_id` int UNSIGNED DEFAULT NULL,
  `recipe_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sections_recipes_links`
--

INSERT INTO `sections_recipes_links` (`id`, `section_id`, `recipe_id`, `recipe_order`) VALUES
(1, 1, 1, 1),
(2, 1, 2, 4),
(3, 1, 4, 3),
(4, 1, 3, 2),
(5, 2, 2, 2),
(6, 2, 3, 1),
(7, 2, 4, 3);

-- --------------------------------------------------------

--
-- Table structure for table `strapi-paypal_paypal-payment`
--

CREATE TABLE `strapi-paypal_paypal-payment` (
  `id` int UNSIGNED NOT NULL,
  `txn_date` datetime(6) DEFAULT NULL,
  `transaction_id` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `is_txn_successful` tinyint(1) DEFAULT NULL,
  `txn_message` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `txn_error_message` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `txn_amount` decimal(10,2) DEFAULT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `customer_email` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi-paypal_paypal-product`
--

CREATE TABLE `strapi-paypal_paypal-product` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `currency` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `is_subscription` tinyint(1) DEFAULT NULL,
  `interval` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `trial_period_days` int DEFAULT NULL,
  `paypal_order_id` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `paypal_subcription_id` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `paypal_links` json DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi-stripe_ss-payment`
--

CREATE TABLE `strapi-stripe_ss-payment` (
  `id` int UNSIGNED NOT NULL,
  `txn_date` datetime(6) DEFAULT NULL,
  `transaction_id` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `is_txn_successful` tinyint(1) DEFAULT NULL,
  `txn_message` longtext COLLATE utf8mb4_general_ci,
  `txn_error_message` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `txn_amount` decimal(10,2) DEFAULT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `customer_email` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi-stripe_ss-product`
--

CREATE TABLE `strapi-stripe_ss-product` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_general_ci,
  `price` decimal(10,2) DEFAULT NULL,
  `currency` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `is_subscription` tinyint(1) DEFAULT NULL,
  `interval` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `trial_period_days` int DEFAULT NULL,
  `stripe_product_id` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `stripe_price_id` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `stripe_plan_id` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `strapi-stripe_ss-product`
--

INSERT INTO `strapi-stripe_ss-product` (`id`, `title`, `slug`, `description`, `price`, `currency`, `is_subscription`, `interval`, `trial_period_days`, `stripe_product_id`, `stripe_price_id`, `stripe_plan_id`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'ds', NULL, 'ds', '5.00', 'usd', 1, 'month', NULL, 'prod_NOgBOQFAylYZLB', '', 'plan_NOgBHfimaRwViD', '2023-02-21 15:11:36.691000', '2023-02-21 15:11:36.691000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `strapi_api_tokens`
--

CREATE TABLE `strapi_api_tokens` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `access_key` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `last_used_at` datetime(6) DEFAULT NULL,
  `expires_at` datetime(6) DEFAULT NULL,
  `lifespan` bigint DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_api_token_permissions`
--

CREATE TABLE `strapi_api_token_permissions` (
  `id` int UNSIGNED NOT NULL,
  `action` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_api_token_permissions_token_links`
--

CREATE TABLE `strapi_api_token_permissions_token_links` (
  `id` int UNSIGNED NOT NULL,
  `api_token_permission_id` int UNSIGNED DEFAULT NULL,
  `api_token_id` int UNSIGNED DEFAULT NULL,
  `api_token_permission_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_core_store_settings`
--

CREATE TABLE `strapi_core_store_settings` (
  `id` int UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `value` longtext COLLATE utf8mb4_general_ci,
  `type` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `environment` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tag` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `strapi_core_store_settings`
--

INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(1, 'strapi_content_types_schema', '{\"admin::permission\":{\"collectionName\":\"admin_permissions\",\"info\":{\"name\":\"Permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::role\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_permissions\",\"info\":{\"name\":\"Permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::role\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"permission\",\"connection\":\"default\",\"uid\":\"admin::permission\",\"plugin\":\"admin\",\"globalId\":\"AdminPermission\"},\"admin::user\":{\"collectionName\":\"admin_users\",\"info\":{\"name\":\"User\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"configurable\":false,\"private\":true,\"type\":\"relation\",\"relation\":\"manyToMany\",\"inversedBy\":\"users\",\"target\":\"admin::role\",\"collectionName\":\"strapi_users_roles\"},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_users\",\"info\":{\"name\":\"User\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"configurable\":false,\"private\":true,\"type\":\"relation\",\"relation\":\"manyToMany\",\"inversedBy\":\"users\",\"target\":\"admin::role\",\"collectionName\":\"strapi_users_roles\"},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"user\",\"connection\":\"default\",\"uid\":\"admin::user\",\"plugin\":\"admin\",\"globalId\":\"AdminUser\"},\"admin::role\":{\"collectionName\":\"admin_roles\",\"info\":{\"name\":\"Role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToMany\",\"mappedBy\":\"roles\",\"target\":\"admin::user\"},\"permissions\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"mappedBy\":\"role\",\"target\":\"admin::permission\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_roles\",\"info\":{\"name\":\"Role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToMany\",\"mappedBy\":\"roles\",\"target\":\"admin::user\"},\"permissions\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"mappedBy\":\"role\",\"target\":\"admin::permission\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"role\",\"connection\":\"default\",\"uid\":\"admin::role\",\"plugin\":\"admin\",\"globalId\":\"AdminRole\"},\"admin::api-token\":{\"collectionName\":\"strapi_api_tokens\",\"info\":{\"name\":\"Api Token\",\"singularName\":\"api-token\",\"pluralName\":\"api-tokens\",\"displayName\":\"Api Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"read-only\",\"full-access\",\"custom\"],\"configurable\":false,\"required\":true,\"default\":\"read-only\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::api-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_api_tokens\",\"info\":{\"name\":\"Api Token\",\"singularName\":\"api-token\",\"pluralName\":\"api-tokens\",\"displayName\":\"Api Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"read-only\",\"full-access\",\"custom\"],\"configurable\":false,\"required\":true,\"default\":\"read-only\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::api-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"api-token\",\"connection\":\"default\",\"uid\":\"admin::api-token\",\"plugin\":\"admin\",\"globalId\":\"AdminApiToken\"},\"admin::api-token-permission\":{\"collectionName\":\"strapi_api_token_permissions\",\"info\":{\"name\":\"API Token Permission\",\"description\":\"\",\"singularName\":\"api-token-permission\",\"pluralName\":\"api-token-permissions\",\"displayName\":\"API Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::api-token\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_api_token_permissions\",\"info\":{\"name\":\"API Token Permission\",\"description\":\"\",\"singularName\":\"api-token-permission\",\"pluralName\":\"api-token-permissions\",\"displayName\":\"API Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::api-token\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"api-token-permission\",\"connection\":\"default\",\"uid\":\"admin::api-token-permission\",\"plugin\":\"admin\",\"globalId\":\"AdminApiTokenPermission\"},\"plugin::upload.file\":{\"collectionName\":\"files\",\"info\":{\"singularName\":\"file\",\"pluralName\":\"files\",\"displayName\":\"File\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"type\":\"relation\",\"relation\":\"morphToMany\",\"configurable\":false},\"folder\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"files\",\"private\":true},\"folderPath\":{\"type\":\"string\",\"min\":1,\"required\":true,\"private\":true},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"indexes\":[{\"name\":\"upload_files_folder_path_index\",\"columns\":[\"folder_path\"],\"type\":null},{\"name\":\"upload_files_created_at_index\",\"columns\":[\"created_at\"],\"type\":null},{\"name\":\"upload_files_updated_at_index\",\"columns\":[\"updated_at\"],\"type\":null},{\"name\":\"upload_files_name_index\",\"columns\":[\"name\"],\"type\":null},{\"name\":\"upload_files_size_index\",\"columns\":[\"size\"],\"type\":null},{\"name\":\"upload_files_ext_index\",\"columns\":[\"ext\"],\"type\":null}],\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"files\",\"info\":{\"singularName\":\"file\",\"pluralName\":\"files\",\"displayName\":\"File\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"type\":\"relation\",\"relation\":\"morphToMany\",\"configurable\":false},\"folder\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"files\",\"private\":true},\"folderPath\":{\"type\":\"string\",\"min\":1,\"required\":true,\"private\":true}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"file\",\"connection\":\"default\",\"uid\":\"plugin::upload.file\",\"plugin\":\"upload\",\"globalId\":\"UploadFile\"},\"plugin::upload.folder\":{\"collectionName\":\"upload_folders\",\"info\":{\"singularName\":\"folder\",\"pluralName\":\"folders\",\"displayName\":\"Folder\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"required\":true},\"pathId\":{\"type\":\"integer\",\"unique\":true,\"required\":true},\"parent\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"children\"},\"children\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.folder\",\"mappedBy\":\"parent\"},\"files\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.file\",\"mappedBy\":\"folder\"},\"path\":{\"type\":\"string\",\"min\":1,\"required\":true},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"indexes\":[{\"name\":\"upload_folders_path_id_index\",\"columns\":[\"path_id\"],\"type\":\"unique\"},{\"name\":\"upload_folders_path_index\",\"columns\":[\"path\"],\"type\":\"unique\"}],\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"upload_folders\",\"info\":{\"singularName\":\"folder\",\"pluralName\":\"folders\",\"displayName\":\"Folder\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"required\":true},\"pathId\":{\"type\":\"integer\",\"unique\":true,\"required\":true},\"parent\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"children\"},\"children\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.folder\",\"mappedBy\":\"parent\"},\"files\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.file\",\"mappedBy\":\"folder\"},\"path\":{\"type\":\"string\",\"min\":1,\"required\":true}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"folder\",\"connection\":\"default\",\"uid\":\"plugin::upload.folder\",\"plugin\":\"upload\",\"globalId\":\"UploadFolder\"},\"plugin::strapi-paypal.paypal-product\":{\"info\":{\"tableName\":\"PaypalProduct\",\"singularName\":\"paypal-product\",\"pluralName\":\"paypal-products\",\"displayName\":\"Product\",\"description\":\"Paypal Products\",\"kind\":\"collectionType\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"title\":{\"type\":\"string\",\"min\":1,\"required\":true,\"configurable\":false},\"slug\":{\"type\":\"uid\",\"targetField\":\"title\",\"unique\":true,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"min\":1,\"required\":true,\"configurable\":false},\"price\":{\"type\":\"decimal\",\"required\":true,\"configurable\":false},\"currency\":{\"type\":\"string\",\"min\":1,\"required\":true,\"configurable\":false},\"isSubscription\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"interval\":{\"type\":\"string\",\"configurable\":false},\"trialPeriodDays\":{\"type\":\"integer\",\"configurable\":false},\"paypalOrderId\":{\"type\":\"string\",\"configurable\":false},\"paypalSubcriptionId\":{\"type\":\"string\",\"configurable\":false},\"paypalLinks\":{\"type\":\"json\",\"configurable\":false},\"paypalPayment\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::strapi-paypal.paypal-payment\",\"mappedBy\":\"paypalProduct\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"info\":{\"tableName\":\"PaypalProduct\",\"singularName\":\"paypal-product\",\"pluralName\":\"paypal-products\",\"displayName\":\"Product\",\"description\":\"Paypal Products\",\"kind\":\"collectionType\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"title\":{\"type\":\"string\",\"min\":1,\"required\":true,\"configurable\":false},\"slug\":{\"type\":\"uid\",\"targetField\":\"title\",\"unique\":true,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"min\":1,\"required\":true,\"configurable\":false},\"price\":{\"type\":\"decimal\",\"required\":true,\"configurable\":false},\"currency\":{\"type\":\"string\",\"min\":1,\"required\":true,\"configurable\":false},\"isSubscription\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"interval\":{\"type\":\"string\",\"configurable\":false},\"trialPeriodDays\":{\"type\":\"integer\",\"configurable\":false},\"paypalOrderId\":{\"type\":\"string\",\"configurable\":false},\"paypalSubcriptionId\":{\"type\":\"string\",\"configurable\":false},\"paypalLinks\":{\"type\":\"json\",\"configurable\":false},\"paypalPayment\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::strapi-paypal.paypal-payment\",\"mappedBy\":\"paypalProduct\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"paypal-product\",\"connection\":\"default\",\"uid\":\"plugin::strapi-paypal.paypal-product\",\"plugin\":\"strapi-paypal\",\"collectionName\":\"strapi-paypal_paypal-product\",\"globalId\":\"StrapiPaypalPaypalProduct\"},\"plugin::strapi-paypal.paypal-payment\":{\"info\":{\"tableName\":\"PaypalPayment\",\"singularName\":\"paypal-payment\",\"pluralName\":\"paypal-payments\",\"displayName\":\"Payment\",\"description\":\"Paypal Payment\",\"kind\":\"collectionType\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"txnDate\":{\"type\":\"datetime\",\"required\":true,\"configurable\":false},\"transactionId\":{\"type\":\"string\",\"maxLength\":250,\"required\":true,\"configurable\":false},\"isTxnSuccessful\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"txnMessage\":{\"type\":\"string\",\"maxLength\":5000,\"configurable\":false},\"txnErrorMessage\":{\"type\":\"string\",\"maxLength\":250,\"configurable\":false},\"txnAmount\":{\"type\":\"decimal\",\"required\":true,\"configurable\":false},\"customerName\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"customerEmail\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"paypalProduct\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::strapi-paypal.paypal-product\",\"inversedBy\":\"paypalPayment\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"info\":{\"tableName\":\"PaypalPayment\",\"singularName\":\"paypal-payment\",\"pluralName\":\"paypal-payments\",\"displayName\":\"Payment\",\"description\":\"Paypal Payment\",\"kind\":\"collectionType\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"txnDate\":{\"type\":\"datetime\",\"required\":true,\"configurable\":false},\"transactionId\":{\"type\":\"string\",\"maxLength\":250,\"required\":true,\"configurable\":false},\"isTxnSuccessful\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"txnMessage\":{\"type\":\"string\",\"maxLength\":5000,\"configurable\":false},\"txnErrorMessage\":{\"type\":\"string\",\"maxLength\":250,\"configurable\":false},\"txnAmount\":{\"type\":\"decimal\",\"required\":true,\"configurable\":false},\"customerName\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"customerEmail\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"paypalProduct\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::strapi-paypal.paypal-product\",\"inversedBy\":\"paypalPayment\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"paypal-payment\",\"connection\":\"default\",\"uid\":\"plugin::strapi-paypal.paypal-payment\",\"plugin\":\"strapi-paypal\",\"collectionName\":\"strapi-paypal_paypal-payment\",\"globalId\":\"StrapiPaypalPaypalPayment\"},\"plugin::i18n.locale\":{\"info\":{\"singularName\":\"locale\",\"pluralName\":\"locales\",\"collectionName\":\"locales\",\"displayName\":\"Locale\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"info\":{\"singularName\":\"locale\",\"pluralName\":\"locales\",\"collectionName\":\"locales\",\"displayName\":\"Locale\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"locale\",\"connection\":\"default\",\"uid\":\"plugin::i18n.locale\",\"plugin\":\"i18n\",\"collectionName\":\"i18n_locale\",\"globalId\":\"I18NLocale\"},\"plugin::users-permissions.permission\":{\"collectionName\":\"up_permissions\",\"info\":{\"name\":\"permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"permissions\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_permissions\",\"info\":{\"name\":\"permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"permissions\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"permission\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.permission\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsPermission\"},\"plugin::users-permissions.role\":{\"collectionName\":\"up_roles\",\"info\":{\"name\":\"role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.permission\",\"mappedBy\":\"role\",\"configurable\":false},\"users\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"mappedBy\":\"role\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_roles\",\"info\":{\"name\":\"role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.permission\",\"mappedBy\":\"role\",\"configurable\":false},\"users\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"mappedBy\":\"role\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"role\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.role\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsRole\"},\"plugin::users-permissions.user\":{\"collectionName\":\"up_users\",\"info\":{\"name\":\"user\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"options\":{\"draftAndPublish\":false,\"timestamps\":true},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"users\",\"configurable\":false},\"wishlists\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::wishlist.wishlist\",\"mappedBy\":\"users_permissions_user\"},\"searches\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::searche.searche\"},\"searches_local\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::searche.searche\",\"mappedBy\":\"users_permissions_user\"},\"searchese\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::searche.searche\",\"mappedBy\":\"user_id\"},\"downloads\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::download.download\",\"mappedBy\":\"user_id\"},\"saves\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::save.save\",\"mappedBy\":\"user_id\"},\"subscriptions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::subscription.subscription\",\"mappedBy\":\"users_permissions_user\"},\"aisearches\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::aisearch.aisearch\",\"mappedBy\":\"users_permissions_user\"},\"fullname\":{\"type\":\"string\"},\"phone\":{\"type\":\"string\"},\"address\":{\"type\":\"string\"},\"pic\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\"]},\"delete_reason\":{\"type\":\"text\"},\"prints\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::print.print\",\"mappedBy\":\"users_permissions_user\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"config\":{\"attributes\":{\"resetPasswordToken\":{\"hidden\":true},\"confirmationToken\":{\"hidden\":true},\"provider\":{\"hidden\":true}}},\"kind\":\"collectionType\",\"__filename__\":\"schema.json\",\"__schema__\":{\"collectionName\":\"up_users\",\"info\":{\"name\":\"user\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"options\":{\"draftAndPublish\":false,\"timestamps\":true},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"users\",\"configurable\":false},\"wishlists\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::wishlist.wishlist\",\"mappedBy\":\"users_permissions_user\"},\"searches\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::searche.searche\"},\"searches_local\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::searche.searche\",\"mappedBy\":\"users_permissions_user\"},\"searchese\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::searche.searche\",\"mappedBy\":\"user_id\"},\"downloads\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::download.download\",\"mappedBy\":\"user_id\"},\"saves\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::save.save\",\"mappedBy\":\"user_id\"},\"subscriptions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::subscription.subscription\",\"mappedBy\":\"users_permissions_user\"},\"aisearches\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::aisearch.aisearch\",\"mappedBy\":\"users_permissions_user\"},\"fullname\":{\"type\":\"string\"},\"phone\":{\"type\":\"string\"},\"address\":{\"type\":\"string\"},\"pic\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\"]},\"delete_reason\":{\"type\":\"text\"},\"prints\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::print.print\",\"mappedBy\":\"users_permissions_user\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"user\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.user\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsUser\"},\"plugin::strapi-stripe.ss-product\":{\"info\":{\"tableName\":\"StripeProduct\",\"singularName\":\"ss-product\",\"pluralName\":\"ss-products\",\"displayName\":\"Product\",\"description\":\"Stripe Products\",\"kind\":\"collectionType\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"title\":{\"type\":\"string\",\"min\":1,\"required\":true,\"configurable\":false},\"slug\":{\"type\":\"uid\",\"targetField\":\"title\",\"unique\":true,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"text\",\"min\":1,\"required\":true,\"configurable\":false},\"price\":{\"type\":\"decimal\",\"required\":true,\"configurable\":false},\"currency\":{\"type\":\"string\",\"min\":1,\"required\":true,\"configurable\":false},\"productImage\":{\"type\":\"media\",\"required\":true,\"configurable\":false},\"isSubscription\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"interval\":{\"type\":\"string\",\"configurable\":false},\"trialPeriodDays\":{\"type\":\"integer\",\"configurable\":false},\"stripeProductId\":{\"type\":\"string\",\"min\":3,\"required\":true,\"configurable\":false},\"stripePriceId\":{\"type\":\"string\",\"min\":3,\"configurable\":false},\"stripePlanId\":{\"type\":\"string\",\"min\":3,\"configurable\":false},\"stripePayment\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::strapi-stripe.ss-payment\",\"mappedBy\":\"stripeProduct\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"info\":{\"tableName\":\"StripeProduct\",\"singularName\":\"ss-product\",\"pluralName\":\"ss-products\",\"displayName\":\"Product\",\"description\":\"Stripe Products\",\"kind\":\"collectionType\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"title\":{\"type\":\"string\",\"min\":1,\"required\":true,\"configurable\":false},\"slug\":{\"type\":\"uid\",\"targetField\":\"title\",\"unique\":true,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"text\",\"min\":1,\"required\":true,\"configurable\":false},\"price\":{\"type\":\"decimal\",\"required\":true,\"configurable\":false},\"currency\":{\"type\":\"string\",\"min\":1,\"required\":true,\"configurable\":false},\"productImage\":{\"type\":\"media\",\"required\":true,\"configurable\":false},\"isSubscription\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"interval\":{\"type\":\"string\",\"configurable\":false},\"trialPeriodDays\":{\"type\":\"integer\",\"configurable\":false},\"stripeProductId\":{\"type\":\"string\",\"min\":3,\"required\":true,\"configurable\":false},\"stripePriceId\":{\"type\":\"string\",\"min\":3,\"configurable\":false},\"stripePlanId\":{\"type\":\"string\",\"min\":3,\"configurable\":false},\"stripePayment\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::strapi-stripe.ss-payment\",\"mappedBy\":\"stripeProduct\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"ss-product\",\"connection\":\"default\",\"uid\":\"plugin::strapi-stripe.ss-product\",\"plugin\":\"strapi-stripe\",\"collectionName\":\"strapi-stripe_ss-product\",\"globalId\":\"StrapiStripeSsProduct\"},\"plugin::strapi-stripe.ss-payment\":{\"info\":{\"tableName\":\"StripePayment\",\"singularName\":\"ss-payment\",\"pluralName\":\"ss-payments\",\"displayName\":\"Payment\",\"description\":\"Stripe Payment\",\"kind\":\"collectionType\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"txnDate\":{\"type\":\"datetime\",\"required\":true,\"configurable\":false},\"transactionId\":{\"type\":\"string\",\"maxLength\":250,\"required\":true,\"configurable\":false},\"isTxnSuccessful\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"txnMessage\":{\"type\":\"text\",\"maxLength\":5000,\"configurable\":false},\"txnErrorMessage\":{\"type\":\"string\",\"maxLength\":250,\"configurable\":false},\"txnAmount\":{\"type\":\"decimal\",\"required\":true,\"configurable\":false},\"customerName\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"customerEmail\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"stripeProduct\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::strapi-stripe.ss-product\",\"inversedBy\":\"stripePayment\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"info\":{\"tableName\":\"StripePayment\",\"singularName\":\"ss-payment\",\"pluralName\":\"ss-payments\",\"displayName\":\"Payment\",\"description\":\"Stripe Payment\",\"kind\":\"collectionType\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"txnDate\":{\"type\":\"datetime\",\"required\":true,\"configurable\":false},\"transactionId\":{\"type\":\"string\",\"maxLength\":250,\"required\":true,\"configurable\":false},\"isTxnSuccessful\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"txnMessage\":{\"type\":\"text\",\"maxLength\":5000,\"configurable\":false},\"txnErrorMessage\":{\"type\":\"string\",\"maxLength\":250,\"configurable\":false},\"txnAmount\":{\"type\":\"decimal\",\"required\":true,\"configurable\":false},\"customerName\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"customerEmail\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"stripeProduct\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::strapi-stripe.ss-product\",\"inversedBy\":\"stripePayment\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"ss-payment\",\"connection\":\"default\",\"uid\":\"plugin::strapi-stripe.ss-payment\",\"plugin\":\"strapi-stripe\",\"collectionName\":\"strapi-stripe_ss-payment\",\"globalId\":\"StrapiStripeSsPayment\"},\"api::about.about\":{\"kind\":\"singleType\",\"collectionName\":\"abouts\",\"info\":{\"singularName\":\"about\",\"pluralName\":\"abouts\",\"displayName\":\"About\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"title\":{\"type\":\"string\"},\"circleblock\":{\"displayName\":\"about us circles\",\"type\":\"component\",\"repeatable\":true,\"component\":\"static.about-us-circles\"},\"gallery\":{\"type\":\"media\",\"multiple\":true,\"required\":false,\"allowedTypes\":[\"images\"]},\"banner\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\"]},\"aboutsections\":{\"displayName\":\"sections\",\"type\":\"component\",\"repeatable\":true,\"component\":\"static.sections\"},\"description\":{\"type\":\"richtext\",\"options\":{\"output\":\"HTML\",\"preset\":\"rich\"},\"customField\":\"plugin::ckeditor.CKEditor\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"abouts\",\"info\":{\"singularName\":\"about\",\"pluralName\":\"abouts\",\"displayName\":\"About\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"title\":{\"type\":\"string\"},\"circleblock\":{\"displayName\":\"about us circles\",\"type\":\"component\",\"repeatable\":true,\"component\":\"static.about-us-circles\"},\"gallery\":{\"type\":\"media\",\"multiple\":true,\"required\":false,\"allowedTypes\":[\"images\"]},\"banner\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\"]},\"aboutsections\":{\"displayName\":\"sections\",\"type\":\"component\",\"repeatable\":true,\"component\":\"static.sections\"},\"description\":{\"type\":\"customField\",\"options\":{\"output\":\"HTML\",\"preset\":\"rich\"},\"customField\":\"plugin::ckeditor.CKEditor\"}},\"kind\":\"singleType\"},\"modelType\":\"contentType\",\"modelName\":\"about\",\"connection\":\"default\",\"uid\":\"api::about.about\",\"apiName\":\"about\",\"globalId\":\"About\",\"actions\":{},\"lifecycles\":{}},\"api::aisearch.aisearch\":{\"kind\":\"collectionType\",\"collectionName\":\"aisearches\",\"info\":{\"singularName\":\"aisearch\",\"pluralName\":\"aisearches\",\"displayName\":\"aisearch\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"title\":{\"type\":\"string\"},\"subscription\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::subscription.subscription\",\"inversedBy\":\"aisearches\"},\"trial\":{\"type\":\"boolean\",\"default\":true},\"users_permissions_user\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.user\",\"inversedBy\":\"aisearches\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"aisearches\",\"info\":{\"singularName\":\"aisearch\",\"pluralName\":\"aisearches\",\"displayName\":\"aisearch\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"title\":{\"type\":\"string\"},\"subscription\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::subscription.subscription\",\"inversedBy\":\"aisearches\"},\"trial\":{\"type\":\"boolean\",\"default\":true},\"users_permissions_user\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.user\",\"inversedBy\":\"aisearches\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"aisearch\",\"connection\":\"default\",\"uid\":\"api::aisearch.aisearch\",\"apiName\":\"aisearch\",\"globalId\":\"Aisearch\",\"actions\":{},\"lifecycles\":{}},\"api::bcategory.bcategory\":{\"kind\":\"collectionType\",\"collectionName\":\"bcategories\",\"info\":{\"singularName\":\"bcategory\",\"pluralName\":\"bcategories\",\"displayName\":\"bcategory\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"title\":{\"type\":\"string\"},\"blogs\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::blog.blog\",\"mappedBy\":\"bcategory\"},\"image\":{\"allowedTypes\":[\"images\"],\"type\":\"media\",\"multiple\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"bcategories\",\"info\":{\"singularName\":\"bcategory\",\"pluralName\":\"bcategories\",\"displayName\":\"bcategory\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"title\":{\"type\":\"string\"},\"blogs\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::blog.blog\",\"mappedBy\":\"bcategory\"},\"image\":{\"allowedTypes\":[\"images\"],\"type\":\"media\",\"multiple\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"bcategory\",\"connection\":\"default\",\"uid\":\"api::bcategory.bcategory\",\"apiName\":\"bcategory\",\"globalId\":\"Bcategory\",\"actions\":{},\"lifecycles\":{}},\"api::blog.blog\":{\"kind\":\"collectionType\",\"collectionName\":\"blogs\",\"info\":{\"singularName\":\"blog\",\"pluralName\":\"blogs\",\"displayName\":\"blog\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"title\":{\"type\":\"string\"},\"author\":{\"type\":\"string\"},\"short_description\":{\"type\":\"string\"},\"image\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\"]},\"bcategory\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::bcategory.bcategory\",\"inversedBy\":\"blogs\"},\"description\":{\"type\":\"richtext\",\"options\":{\"output\":\"HTML\",\"preset\":\"rich\"},\"customField\":\"plugin::ckeditor.CKEditor\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"blogs\",\"info\":{\"singularName\":\"blog\",\"pluralName\":\"blogs\",\"displayName\":\"blog\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"title\":{\"type\":\"string\"},\"author\":{\"type\":\"string\"},\"short_description\":{\"type\":\"string\"},\"image\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\"]},\"bcategory\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::bcategory.bcategory\",\"inversedBy\":\"blogs\"},\"description\":{\"type\":\"customField\",\"options\":{\"output\":\"HTML\",\"preset\":\"rich\"},\"customField\":\"plugin::ckeditor.CKEditor\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"blog\",\"connection\":\"default\",\"uid\":\"api::blog.blog\",\"apiName\":\"blog\",\"globalId\":\"Blog\",\"actions\":{},\"lifecycles\":{}},\"api::category.category\":{\"kind\":\"collectionType\",\"collectionName\":\"categories\",\"info\":{\"singularName\":\"category\",\"pluralName\":\"categories\",\"displayName\":\"Category\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"title\":{\"type\":\"string\"},\"sub_title\":{\"type\":\"string\"},\"sub_categories\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::sub-category.sub-category\",\"mappedBy\":\"category\"},\"image\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\"]},\"banner\":{\"allowedTypes\":[\"images\"],\"type\":\"media\",\"multiple\":false},\"recipes\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::recipe.recipe\",\"mappedBy\":\"category\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"categories\",\"info\":{\"singularName\":\"category\",\"pluralName\":\"categories\",\"displayName\":\"Category\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"title\":{\"type\":\"string\"},\"sub_title\":{\"type\":\"string\"},\"sub_categories\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::sub-category.sub-category\",\"mappedBy\":\"category\"},\"image\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\"]},\"banner\":{\"allowedTypes\":[\"images\"],\"type\":\"media\",\"multiple\":false},\"recipes\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::recipe.recipe\",\"mappedBy\":\"category\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"category\",\"connection\":\"default\",\"uid\":\"api::category.category\",\"apiName\":\"category\",\"globalId\":\"Category\",\"actions\":{},\"lifecycles\":{}},\"api::download.download\":{\"kind\":\"collectionType\",\"collectionName\":\"downloads\",\"info\":{\"singularName\":\"download\",\"pluralName\":\"downloads\",\"displayName\":\"Download\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"recipe\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::recipe.recipe\"},\"user_id\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.user\",\"inversedBy\":\"downloads\"},\"trial\":{\"type\":\"boolean\",\"default\":true},\"subscription\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::subscription.subscription\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"downloads\",\"info\":{\"singularName\":\"download\",\"pluralName\":\"downloads\",\"displayName\":\"Download\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"recipe\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::recipe.recipe\"},\"user_id\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.user\",\"inversedBy\":\"downloads\"},\"trial\":{\"type\":\"boolean\",\"default\":true},\"subscription\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::subscription.subscription\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"download\",\"connection\":\"default\",\"uid\":\"api::download.download\",\"apiName\":\"download\",\"globalId\":\"Download\",\"actions\":{},\"lifecycles\":{}},\"api::footer.footer\":{\"kind\":\"singleType\",\"collectionName\":\"footers\",\"info\":{\"singularName\":\"footer\",\"pluralName\":\"footers\",\"displayName\":\"Footer\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"copyright\":{\"type\":\"string\"},\"pages\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::page.page\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"footers\",\"info\":{\"singularName\":\"footer\",\"pluralName\":\"footers\",\"displayName\":\"Footer\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"copyright\":{\"type\":\"string\"},\"pages\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::page.page\"}},\"kind\":\"singleType\"},\"modelType\":\"contentType\",\"modelName\":\"footer\",\"connection\":\"default\",\"uid\":\"api::footer.footer\",\"apiName\":\"footer\",\"globalId\":\"Footer\",\"actions\":{},\"lifecycles\":{}},\"api::freemium.freemium\":{\"kind\":\"singleType\",\"collectionName\":\"freemiums\",\"info\":{\"singularName\":\"freemium\",\"pluralName\":\"freemiums\",\"displayName\":\"freemium\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"searches\":{\"type\":\"integer\"},\"downloads\":{\"type\":\"integer\"},\"saves\":{\"type\":\"integer\"},\"aisearches\":{\"type\":\"integer\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"freemiums\",\"info\":{\"singularName\":\"freemium\",\"pluralName\":\"freemiums\",\"displayName\":\"freemium\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"searches\":{\"type\":\"integer\"},\"downloads\":{\"type\":\"integer\"},\"saves\":{\"type\":\"integer\"},\"aisearches\":{\"type\":\"integer\"}},\"kind\":\"singleType\"},\"modelType\":\"contentType\",\"modelName\":\"freemium\",\"connection\":\"default\",\"uid\":\"api::freemium.freemium\",\"apiName\":\"freemium\",\"globalId\":\"Freemium\",\"actions\":{},\"lifecycles\":{}},\"api::homepage.homepage\":{\"kind\":\"singleType\",\"collectionName\":\"homepages\",\"info\":{\"singularName\":\"homepage\",\"pluralName\":\"homepages\",\"displayName\":\"homepage\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"sections\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::section.section\"},\"main_title\":{\"type\":\"string\"},\"sub_title\":{\"type\":\"string\"},\"button_text\":{\"type\":\"string\"},\"sub_sub_title\":{\"type\":\"string\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"homepages\",\"info\":{\"singularName\":\"homepage\",\"pluralName\":\"homepages\",\"displayName\":\"homepage\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"sections\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::section.section\"},\"main_title\":{\"type\":\"string\"},\"sub_title\":{\"type\":\"string\"},\"button_text\":{\"type\":\"string\"},\"sub_sub_title\":{\"type\":\"string\"}},\"kind\":\"singleType\"},\"modelType\":\"contentType\",\"modelName\":\"homepage\",\"connection\":\"default\",\"uid\":\"api::homepage.homepage\",\"apiName\":\"homepage\",\"globalId\":\"Homepage\",\"actions\":{},\"lifecycles\":{}},\"api::lead.lead\":{\"kind\":\"collectionType\",\"collectionName\":\"leads\",\"info\":{\"singularName\":\"lead\",\"pluralName\":\"leads\",\"displayName\":\"Lead\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"email\":{\"type\":\"string\"},\"name\":{\"type\":\"string\"},\"msg\":{\"type\":\"richtext\"},\"status\":{\"type\":\"enumeration\",\"enum\":[\"New\",\"Spam\",\"Solved\"]},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"leads\",\"info\":{\"singularName\":\"lead\",\"pluralName\":\"leads\",\"displayName\":\"Lead\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"email\":{\"type\":\"string\"},\"name\":{\"type\":\"string\"},\"msg\":{\"type\":\"richtext\"},\"status\":{\"type\":\"enumeration\",\"enum\":[\"New\",\"Spam\",\"Solved\"]}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"lead\",\"connection\":\"default\",\"uid\":\"api::lead.lead\",\"apiName\":\"lead\",\"globalId\":\"Lead\",\"actions\":{},\"lifecycles\":{}},\"api::page.page\":{\"kind\":\"collectionType\",\"collectionName\":\"pages\",\"info\":{\"singularName\":\"page\",\"pluralName\":\"pages\",\"displayName\":\"page\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"title\":{\"type\":\"string\",\"required\":true,\"maxLength\":20},\"sub_title\":{\"type\":\"string\",\"required\":true},\"header\":{\"type\":\"media\",\"multiple\":true,\"required\":true,\"allowedTypes\":[\"images\"]},\"slug\":{\"type\":\"string\"},\"body\":{\"type\":\"richtext\",\"options\":{\"output\":\"HTML\",\"preset\":\"rich\"},\"customField\":\"plugin::ckeditor.CKEditor\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"pages\",\"info\":{\"singularName\":\"page\",\"pluralName\":\"pages\",\"displayName\":\"page\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"title\":{\"type\":\"string\",\"required\":true,\"maxLength\":20},\"sub_title\":{\"type\":\"string\",\"required\":true},\"header\":{\"type\":\"media\",\"multiple\":true,\"required\":true,\"allowedTypes\":[\"images\"]},\"slug\":{\"type\":\"string\"},\"body\":{\"type\":\"customField\",\"options\":{\"output\":\"HTML\",\"preset\":\"rich\"},\"customField\":\"plugin::ckeditor.CKEditor\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"page\",\"connection\":\"default\",\"uid\":\"api::page.page\",\"apiName\":\"page\",\"globalId\":\"Page\",\"actions\":{},\"lifecycles\":{}},\"api::pdf.pdf\":{\"kind\":\"singleType\",\"collectionName\":\"pdfs\",\"info\":{\"singularName\":\"pdf\",\"pluralName\":\"pdfs\",\"displayName\":\"Pdf\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"logo\":{\"allowedTypes\":[\"images\"],\"type\":\"media\",\"multiple\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"pdfs\",\"info\":{\"singularName\":\"pdf\",\"pluralName\":\"pdfs\",\"displayName\":\"Pdf\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"logo\":{\"allowedTypes\":[\"images\"],\"type\":\"media\",\"multiple\":false}},\"kind\":\"singleType\"},\"modelType\":\"contentType\",\"modelName\":\"pdf\",\"connection\":\"default\",\"uid\":\"api::pdf.pdf\",\"apiName\":\"pdf\",\"globalId\":\"Pdf\",\"actions\":{},\"lifecycles\":{}},\"api::plan.plan\":{\"kind\":\"collectionType\",\"collectionName\":\"plans\",\"info\":{\"singularName\":\"plan\",\"pluralName\":\"plans\",\"displayName\":\"Plans\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"title\":{\"type\":\"string\"},\"sub_title\":{\"type\":\"string\"},\"plan_benefits\":{\"displayName\":\"plan_benefits\",\"type\":\"component\",\"repeatable\":true,\"component\":\"static.plan-benefits\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"Weekly\",\"Monthly\",\"Yearly\"]},\"price\":{\"type\":\"string\"},\"searches\":{\"type\":\"integer\"},\"saves\":{\"type\":\"integer\"},\"downloads\":{\"type\":\"integer\"},\"stripe_id\":{\"type\":\"integer\"},\"paypal_id\":{\"type\":\"integer\"},\"featured\":{\"type\":\"boolean\"},\"image\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\"]},\"days\":{\"type\":\"integer\"},\"aisearches\":{\"type\":\"integer\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"plans\",\"info\":{\"singularName\":\"plan\",\"pluralName\":\"plans\",\"displayName\":\"Plans\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"title\":{\"type\":\"string\"},\"sub_title\":{\"type\":\"string\"},\"plan_benefits\":{\"displayName\":\"plan_benefits\",\"type\":\"component\",\"repeatable\":true,\"component\":\"static.plan-benefits\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"Weekly\",\"Monthly\",\"Yearly\"]},\"price\":{\"type\":\"string\"},\"searches\":{\"type\":\"integer\"},\"saves\":{\"type\":\"integer\"},\"downloads\":{\"type\":\"integer\"},\"stripe_id\":{\"type\":\"integer\"},\"paypal_id\":{\"type\":\"integer\"},\"featured\":{\"type\":\"boolean\"},\"image\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\"]},\"days\":{\"type\":\"integer\"},\"aisearches\":{\"type\":\"integer\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"plan\",\"connection\":\"default\",\"uid\":\"api::plan.plan\",\"apiName\":\"plan\",\"globalId\":\"Plan\",\"actions\":{},\"lifecycles\":{}},\"api::print.print\":{\"kind\":\"collectionType\",\"collectionName\":\"prints\",\"info\":{\"singularName\":\"print\",\"pluralName\":\"prints\",\"displayName\":\"print\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"recipe\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::recipe.recipe\",\"inversedBy\":\"print\"},\"users_permissions_user\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.user\",\"inversedBy\":\"prints\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"prints\",\"info\":{\"singularName\":\"print\",\"pluralName\":\"prints\",\"displayName\":\"print\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"recipe\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::recipe.recipe\",\"inversedBy\":\"print\"},\"users_permissions_user\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.user\",\"inversedBy\":\"prints\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"print\",\"connection\":\"default\",\"uid\":\"api::print.print\",\"apiName\":\"print\",\"globalId\":\"Print\",\"actions\":{},\"lifecycles\":{}},\"api::recipe.recipe\":{\"kind\":\"collectionType\",\"collectionName\":\"recipes\",\"info\":{\"singularName\":\"recipe\",\"pluralName\":\"recipes\",\"displayName\":\"Recipe\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"title\":{\"type\":\"string\"},\"sub_title\":{\"type\":\"string\"},\"description\":{\"type\":\"richtext\"},\"ingredients\":{\"type\":\"richtext\"},\"optional_ingredients\":{\"type\":\"richtext\"},\"directions\":{\"type\":\"richtext\"},\"nutritional_information\":{\"type\":\"richtext\"},\"note\":{\"type\":\"richtext\"},\"image\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\"]},\"sub_category\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::sub-category.sub-category\",\"inversedBy\":\"recipes\"},\"servings\":{\"type\":\"richtext\"},\"cook_time\":{\"type\":\"richtext\"},\"ai\":{\"type\":\"boolean\",\"default\":false},\"category\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::category.category\",\"inversedBy\":\"recipes\"},\"print\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::print.print\",\"mappedBy\":\"recipe\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"recipes\",\"info\":{\"singularName\":\"recipe\",\"pluralName\":\"recipes\",\"displayName\":\"Recipe\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"title\":{\"type\":\"string\"},\"sub_title\":{\"type\":\"string\"},\"description\":{\"type\":\"richtext\"},\"ingredients\":{\"type\":\"richtext\"},\"optional_ingredients\":{\"type\":\"richtext\"},\"directions\":{\"type\":\"richtext\"},\"nutritional_information\":{\"type\":\"richtext\"},\"note\":{\"type\":\"richtext\"},\"image\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\"]},\"sub_category\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::sub-category.sub-category\",\"inversedBy\":\"recipes\"},\"servings\":{\"type\":\"richtext\"},\"cook_time\":{\"type\":\"richtext\"},\"ai\":{\"type\":\"boolean\",\"default\":false},\"category\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::category.category\",\"inversedBy\":\"recipes\"},\"print\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::print.print\",\"mappedBy\":\"recipe\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"recipe\",\"connection\":\"default\",\"uid\":\"api::recipe.recipe\",\"apiName\":\"recipe\",\"globalId\":\"Recipe\",\"actions\":{},\"lifecycles\":{}},\"api::save.save\":{\"kind\":\"collectionType\",\"collectionName\":\"saves\",\"info\":{\"singularName\":\"save\",\"pluralName\":\"saves\",\"displayName\":\"save\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"recipe\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::recipe.recipe\"},\"user_id\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.user\",\"inversedBy\":\"saves\"},\"trial\":{\"type\":\"boolean\",\"default\":true},\"subscription\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::subscription.subscription\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"saves\",\"info\":{\"singularName\":\"save\",\"pluralName\":\"saves\",\"displayName\":\"save\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"recipe\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::recipe.recipe\"},\"user_id\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.user\",\"inversedBy\":\"saves\"},\"trial\":{\"type\":\"boolean\",\"default\":true},\"subscription\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::subscription.subscription\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"save\",\"connection\":\"default\",\"uid\":\"api::save.save\",\"apiName\":\"save\",\"globalId\":\"Save\",\"actions\":{},\"lifecycles\":{}},\"api::searche.searche\":{\"kind\":\"collectionType\",\"collectionName\":\"searches\",\"info\":{\"singularName\":\"searche\",\"pluralName\":\"searches\",\"displayName\":\"Searches\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"title\":{\"type\":\"string\"},\"users_permissions_user\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.user\",\"inversedBy\":\"searches_local\"},\"user_id\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.user\",\"inversedBy\":\"searchese\"},\"trial\":{\"type\":\"boolean\",\"default\":true},\"subscription\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::subscription.subscription\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"searches\",\"info\":{\"singularName\":\"searche\",\"pluralName\":\"searches\",\"displayName\":\"Searches\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"title\":{\"type\":\"string\"},\"users_permissions_user\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.user\",\"inversedBy\":\"searches_local\"},\"user_id\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.user\",\"inversedBy\":\"searchese\"},\"trial\":{\"type\":\"boolean\",\"default\":true},\"subscription\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::subscription.subscription\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"searche\",\"connection\":\"default\",\"uid\":\"api::searche.searche\",\"apiName\":\"searche\",\"globalId\":\"Searche\",\"actions\":{},\"lifecycles\":{}},\"api::section.section\":{\"kind\":\"collectionType\",\"collectionName\":\"sections\",\"info\":{\"singularName\":\"section\",\"pluralName\":\"sections\",\"displayName\":\"section\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"title\":{\"type\":\"string\"},\"sub_title\":{\"type\":\"string\"},\"recipes\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::recipe.recipe\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"sections\",\"info\":{\"singularName\":\"section\",\"pluralName\":\"sections\",\"displayName\":\"section\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"title\":{\"type\":\"string\"},\"sub_title\":{\"type\":\"string\"},\"recipes\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::recipe.recipe\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"section\",\"connection\":\"default\",\"uid\":\"api::section.section\",\"apiName\":\"section\",\"globalId\":\"Section\",\"actions\":{},\"lifecycles\":{}},\"api::sub-category.sub-category\":{\"kind\":\"collectionType\",\"collectionName\":\"sub_categories\",\"info\":{\"singularName\":\"sub-category\",\"pluralName\":\"sub-categories\",\"displayName\":\"Sub Category\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"title\":{\"type\":\"string\"},\"sub_title\":{\"type\":\"string\"},\"category\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::category.category\",\"inversedBy\":\"sub_categories\"},\"image\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\"]},\"recipes\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::recipe.recipe\",\"mappedBy\":\"sub_category\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"sub_categories\",\"info\":{\"singularName\":\"sub-category\",\"pluralName\":\"sub-categories\",\"displayName\":\"Sub Category\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"title\":{\"type\":\"string\"},\"sub_title\":{\"type\":\"string\"},\"category\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::category.category\",\"inversedBy\":\"sub_categories\"},\"image\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\"]},\"recipes\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::recipe.recipe\",\"mappedBy\":\"sub_category\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"sub-category\",\"connection\":\"default\",\"uid\":\"api::sub-category.sub-category\",\"apiName\":\"sub-category\",\"globalId\":\"SubCategory\",\"actions\":{},\"lifecycles\":{}},\"api::subscription.subscription\":{\"kind\":\"collectionType\",\"collectionName\":\"subscriptions\",\"info\":{\"singularName\":\"subscription\",\"pluralName\":\"subscriptions\",\"displayName\":\"Subscription\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"users_permissions_user\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.user\",\"inversedBy\":\"subscriptions\"},\"plan\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::plan.plan\"},\"subscribed_at\":{\"type\":\"date\"},\"days\":{\"type\":\"integer\"},\"expires\":{\"type\":\"date\"},\"amount_paid\":{\"type\":\"integer\"},\"saves\":{\"type\":\"integer\"},\"searches\":{\"type\":\"integer\"},\"downloads\":{\"type\":\"integer\"},\"active\":{\"type\":\"boolean\"},\"refund_requested\":{\"type\":\"boolean\"},\"refunded\":{\"type\":\"boolean\"},\"refund_rejected\":{\"type\":\"boolean\"},\"refund_msg\":{\"type\":\"text\"},\"upgraded_to\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::subscription.subscription\"},\"unsubscribe_msg\":{\"type\":\"text\"},\"aisearches\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::aisearch.aisearch\",\"mappedBy\":\"subscription\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"subscriptions\",\"info\":{\"singularName\":\"subscription\",\"pluralName\":\"subscriptions\",\"displayName\":\"Subscription\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"users_permissions_user\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.user\",\"inversedBy\":\"subscriptions\"},\"plan\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::plan.plan\"},\"subscribed_at\":{\"type\":\"date\"},\"days\":{\"type\":\"integer\"},\"expires\":{\"type\":\"date\"},\"amount_paid\":{\"type\":\"integer\"},\"saves\":{\"type\":\"integer\"},\"searches\":{\"type\":\"integer\"},\"downloads\":{\"type\":\"integer\"},\"active\":{\"type\":\"boolean\"},\"refund_requested\":{\"type\":\"boolean\"},\"refunded\":{\"type\":\"boolean\"},\"refund_rejected\":{\"type\":\"boolean\"},\"refund_msg\":{\"type\":\"text\"},\"upgraded_to\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::subscription.subscription\"},\"unsubscribe_msg\":{\"type\":\"text\"},\"aisearches\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::aisearch.aisearch\",\"mappedBy\":\"subscription\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"subscription\",\"connection\":\"default\",\"uid\":\"api::subscription.subscription\",\"apiName\":\"subscription\",\"globalId\":\"Subscription\",\"actions\":{},\"lifecycles\":{}},\"api::wishlist.wishlist\":{\"kind\":\"collectionType\",\"collectionName\":\"wishlists\",\"info\":{\"singularName\":\"wishlist\",\"pluralName\":\"wishlists\",\"displayName\":\"Wishlist\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"users_permissions_user\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.user\",\"inversedBy\":\"wishlists\"},\"recipes\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::recipe.recipe\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"wishlists\",\"info\":{\"singularName\":\"wishlist\",\"pluralName\":\"wishlists\",\"displayName\":\"Wishlist\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"users_permissions_user\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.user\",\"inversedBy\":\"wishlists\"},\"recipes\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::recipe.recipe\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"wishlist\",\"connection\":\"default\",\"uid\":\"api::wishlist.wishlist\",\"apiName\":\"wishlist\",\"globalId\":\"Wishlist\",\"actions\":{},\"lifecycles\":{}}}', 'object', NULL, NULL);
INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(2, 'plugin_content_manager_configuration_content_types::admin::user', '{\"uid\":\"admin::user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"firstname\",\"defaultSortBy\":\"firstname\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"firstname\":{\"edit\":{\"label\":\"firstname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"firstname\",\"searchable\":true,\"sortable\":true}},\"lastname\":{\"edit\":{\"label\":\"lastname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastname\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"resetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"resetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"registrationToken\":{\"edit\":{\"label\":\"registrationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"registrationToken\",\"searchable\":true,\"sortable\":true}},\"isActive\":{\"edit\":{\"label\":\"isActive\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"isActive\",\"searchable\":true,\"sortable\":true}},\"roles\":{\"edit\":{\"label\":\"roles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"roles\",\"searchable\":false,\"sortable\":false}},\"blocked\":{\"edit\":{\"label\":\"blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blocked\",\"searchable\":true,\"sortable\":true}},\"preferedLanguage\":{\"edit\":{\"label\":\"preferedLanguage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"preferedLanguage\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"firstname\",\"lastname\",\"username\"],\"edit\":[[{\"name\":\"firstname\",\"size\":6},{\"name\":\"lastname\",\"size\":6}],[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"resetPasswordToken\",\"size\":6}],[{\"name\":\"registrationToken\",\"size\":6},{\"name\":\"isActive\",\"size\":4}],[{\"name\":\"roles\",\"size\":6},{\"name\":\"blocked\",\"size\":4}],[{\"name\":\"preferedLanguage\",\"size\":6}]]}}', 'object', NULL, NULL),
(3, 'plugin_content_manager_configuration_content_types::admin::api-token', '{\"uid\":\"admin::api-token\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"accessKey\":{\"edit\":{\"label\":\"accessKey\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"accessKey\",\"searchable\":true,\"sortable\":true}},\"lastUsedAt\":{\"edit\":{\"label\":\"lastUsedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastUsedAt\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"expiresAt\":{\"edit\":{\"label\":\"expiresAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"expiresAt\",\"searchable\":true,\"sortable\":true}},\"lifespan\":{\"edit\":{\"label\":\"lifespan\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lifespan\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6},{\"name\":\"accessKey\",\"size\":6}],[{\"name\":\"lastUsedAt\",\"size\":6},{\"name\":\"permissions\",\"size\":6}],[{\"name\":\"expiresAt\",\"size\":6},{\"name\":\"lifespan\",\"size\":4}]]}}', 'object', NULL, NULL),
(4, 'plugin_content_manager_configuration_content_types::admin::api-token-permission', '{\"uid\":\"admin::api-token-permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"token\":{\"edit\":{\"label\":\"token\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"token\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"token\",\"createdAt\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"token\",\"size\":6}]]}}', 'object', NULL, NULL),
(5, 'plugin_content_manager_configuration_content_types::admin::permission', '{\"uid\":\"admin::permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"subject\":{\"edit\":{\"label\":\"subject\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"subject\",\"searchable\":true,\"sortable\":true}},\"properties\":{\"edit\":{\"label\":\"properties\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"properties\",\"searchable\":false,\"sortable\":false}},\"conditions\":{\"edit\":{\"label\":\"conditions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"conditions\",\"searchable\":false,\"sortable\":false}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"subject\",\"role\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"subject\",\"size\":6}],[{\"name\":\"properties\",\"size\":12}],[{\"name\":\"conditions\",\"size\":12}],[{\"name\":\"role\",\"size\":6}]]}}', 'object', NULL, NULL),
(6, 'plugin_content_manager_configuration_content_types::admin::role', '{\"uid\":\"admin::role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"code\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"users\":{\"edit\":{\"label\":\"users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"users\",\"searchable\":false,\"sortable\":false}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"description\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}],[{\"name\":\"description\",\"size\":6},{\"name\":\"users\",\"size\":6}],[{\"name\":\"permissions\",\"size\":6}]]}}', 'object', NULL, NULL),
(7, 'plugin_content_manager_configuration_content_types::plugin::upload.file', '{\"uid\":\"plugin::upload.file\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"alternativeText\":{\"edit\":{\"label\":\"alternativeText\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"alternativeText\",\"searchable\":true,\"sortable\":true}},\"caption\":{\"edit\":{\"label\":\"caption\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"caption\",\"searchable\":true,\"sortable\":true}},\"width\":{\"edit\":{\"label\":\"width\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"width\",\"searchable\":true,\"sortable\":true}},\"height\":{\"edit\":{\"label\":\"height\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"height\",\"searchable\":true,\"sortable\":true}},\"formats\":{\"edit\":{\"label\":\"formats\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"formats\",\"searchable\":false,\"sortable\":false}},\"hash\":{\"edit\":{\"label\":\"hash\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"hash\",\"searchable\":true,\"sortable\":true}},\"ext\":{\"edit\":{\"label\":\"ext\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ext\",\"searchable\":true,\"sortable\":true}},\"mime\":{\"edit\":{\"label\":\"mime\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"mime\",\"searchable\":true,\"sortable\":true}},\"size\":{\"edit\":{\"label\":\"size\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"size\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"url\",\"searchable\":true,\"sortable\":true}},\"previewUrl\":{\"edit\":{\"label\":\"previewUrl\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"previewUrl\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"provider\",\"searchable\":true,\"sortable\":true}},\"provider_metadata\":{\"edit\":{\"label\":\"provider_metadata\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"provider_metadata\",\"searchable\":false,\"sortable\":false}},\"folder\":{\"edit\":{\"label\":\"folder\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"folder\",\"searchable\":true,\"sortable\":true}},\"folderPath\":{\"edit\":{\"label\":\"folderPath\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"folderPath\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"alternativeText\",\"caption\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"alternativeText\",\"size\":6}],[{\"name\":\"caption\",\"size\":6},{\"name\":\"width\",\"size\":4}],[{\"name\":\"height\",\"size\":4}],[{\"name\":\"formats\",\"size\":12}],[{\"name\":\"hash\",\"size\":6},{\"name\":\"ext\",\"size\":6}],[{\"name\":\"mime\",\"size\":6},{\"name\":\"size\",\"size\":4}],[{\"name\":\"url\",\"size\":6},{\"name\":\"previewUrl\",\"size\":6}],[{\"name\":\"provider\",\"size\":6}],[{\"name\":\"provider_metadata\",\"size\":12}],[{\"name\":\"folder\",\"size\":6},{\"name\":\"folderPath\",\"size\":6}]]}}', 'object', NULL, NULL),
(8, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.permission', '{\"uid\":\"plugin::users-permissions.permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"role\",\"createdAt\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"role\",\"size\":6}]]}}', 'object', NULL, NULL),
(9, 'plugin_content_manager_configuration_content_types::plugin::upload.folder', '{\"uid\":\"plugin::upload.folder\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"pathId\":{\"edit\":{\"label\":\"pathId\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"pathId\",\"searchable\":true,\"sortable\":true}},\"parent\":{\"edit\":{\"label\":\"parent\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"parent\",\"searchable\":true,\"sortable\":true}},\"children\":{\"edit\":{\"label\":\"children\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"children\",\"searchable\":false,\"sortable\":false}},\"files\":{\"edit\":{\"label\":\"files\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"files\",\"searchable\":false,\"sortable\":false}},\"path\":{\"edit\":{\"label\":\"path\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"path\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"pathId\",\"parent\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"pathId\",\"size\":4}],[{\"name\":\"parent\",\"size\":6},{\"name\":\"children\",\"size\":6}],[{\"name\":\"files\",\"size\":6},{\"name\":\"path\",\"size\":6}]]}}', 'object', NULL, NULL),
(10, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.user', '{\"uid\":\"plugin::users-permissions.user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"username\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"DESC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"provider\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"resetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"resetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"confirmationToken\":{\"edit\":{\"label\":\"confirmationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"confirmationToken\",\"searchable\":true,\"sortable\":true}},\"confirmed\":{\"edit\":{\"label\":\"confirmed\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"confirmed\",\"searchable\":true,\"sortable\":true}},\"blocked\":{\"edit\":{\"label\":\"blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blocked\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"wishlists\":{\"edit\":{\"label\":\"wishlists\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"wishlists\",\"searchable\":false,\"sortable\":false}},\"searches\":{\"edit\":{\"label\":\"searches\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"title\"},\"list\":{\"label\":\"searches\",\"searchable\":false,\"sortable\":false}},\"searches_local\":{\"edit\":{\"label\":\"searches_local\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"title\"},\"list\":{\"label\":\"searches_local\",\"searchable\":false,\"sortable\":false}},\"searchese\":{\"edit\":{\"label\":\"searchese\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"title\"},\"list\":{\"label\":\"searchese\",\"searchable\":false,\"sortable\":false}},\"downloads\":{\"edit\":{\"label\":\"downloads\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"downloads\",\"searchable\":false,\"sortable\":false}},\"saves\":{\"edit\":{\"label\":\"saves\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"saves\",\"searchable\":false,\"sortable\":false}},\"subscriptions\":{\"edit\":{\"label\":\"subscriptions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"subscriptions\",\"searchable\":false,\"sortable\":false}},\"aisearches\":{\"edit\":{\"label\":\"aisearches\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"title\"},\"list\":{\"label\":\"aisearches\",\"searchable\":false,\"sortable\":false}},\"fullname\":{\"edit\":{\"label\":\"fullname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"fullname\",\"searchable\":true,\"sortable\":true}},\"phone\":{\"edit\":{\"label\":\"phone\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"phone\",\"searchable\":true,\"sortable\":true}},\"address\":{\"edit\":{\"label\":\"address\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"address\",\"searchable\":true,\"sortable\":true}},\"pic\":{\"edit\":{\"label\":\"pic\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"pic\",\"searchable\":false,\"sortable\":false}},\"delete_reason\":{\"edit\":{\"label\":\"delete_reason\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"delete_reason\",\"searchable\":true,\"sortable\":true}},\"prints\":{\"edit\":{\"label\":\"prints\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"prints\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"username\",\"email\",\"confirmed\",\"searches\"],\"edit\":[[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"confirmed\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4},{\"name\":\"role\",\"size\":6}],[{\"name\":\"wishlists\",\"size\":6}],[{\"name\":\"downloads\",\"size\":6},{\"name\":\"searches\",\"size\":6}],[{\"name\":\"searches_local\",\"size\":6},{\"name\":\"searchese\",\"size\":6}],[{\"name\":\"saves\",\"size\":6},{\"name\":\"subscriptions\",\"size\":6}],[{\"name\":\"aisearches\",\"size\":6},{\"name\":\"fullname\",\"size\":6}],[{\"name\":\"phone\",\"size\":6},{\"name\":\"address\",\"size\":6}],[{\"name\":\"pic\",\"size\":6},{\"name\":\"delete_reason\",\"size\":6}],[{\"name\":\"prints\",\"size\":6}]]}}', 'object', NULL, NULL),
(11, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.role', '{\"uid\":\"plugin::users-permissions.role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"users\":{\"edit\":{\"label\":\"users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"users\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6},{\"name\":\"permissions\",\"size\":6}],[{\"name\":\"users\",\"size\":6}]]}}', 'object', NULL, NULL),
(12, 'plugin_content_manager_configuration_content_types::plugin::i18n.locale', '{\"uid\":\"plugin::i18n.locale\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"code\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"createdAt\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}]]}}', 'object', NULL, NULL),
(13, 'plugin_upload_settings', '{\"sizeOptimization\":true,\"responsiveDimensions\":true,\"autoOrientation\":false}', 'object', NULL, NULL),
(14, 'plugin_upload_view_configuration', '{\"pageSize\":10,\"sort\":\"createdAt:DESC\"}', 'object', NULL, NULL),
(15, 'plugin_upload_metrics', '{\"weeklySchedule\":\"21 36 10 * * 3\",\"lastWeeklyUpdate\":1678858583720}', 'object', NULL, NULL),
(16, 'plugin_users-permissions_grant', '{\"email\":{\"enabled\":true,\"icon\":\"envelope\"},\"discord\":{\"enabled\":false,\"icon\":\"discord\",\"key\":\"\",\"secret\":\"\",\"callback\":\"http://192.168.18.3:1700/api/auth/discord/callback\",\"scope\":[\"identify\",\"email\"]},\"facebook\":{\"enabled\":false,\"icon\":\"facebook-square\",\"key\":\"\",\"secret\":\"\",\"callback\":\"http://192.168.18.3:1700/api/auth/facebook/callback\",\"scope\":[\"email\"]},\"google\":{\"enabled\":false,\"icon\":\"google\",\"key\":\"\",\"secret\":\"\",\"callback\":\"http://192.168.18.3:1700/api/auth/google/callback\",\"scope\":[\"email\"]},\"github\":{\"enabled\":false,\"icon\":\"github\",\"key\":\"\",\"secret\":\"\",\"callback\":\"http://192.168.18.3:1700/api/auth/github/callback\",\"scope\":[\"user\",\"user:email\"]},\"microsoft\":{\"enabled\":false,\"icon\":\"windows\",\"key\":\"\",\"secret\":\"\",\"callback\":\"http://192.168.18.3:1700/api/auth/microsoft/callback\",\"scope\":[\"user.read\"]},\"twitter\":{\"enabled\":false,\"icon\":\"twitter\",\"key\":\"\",\"secret\":\"\",\"callback\":\"http://192.168.18.3:1700/api/auth/twitter/callback\"},\"instagram\":{\"enabled\":false,\"icon\":\"instagram\",\"key\":\"\",\"secret\":\"\",\"callback\":\"http://192.168.18.3:1700/api/auth/instagram/callback\",\"scope\":[\"user_profile\"]},\"vk\":{\"enabled\":false,\"icon\":\"vk\",\"key\":\"\",\"secret\":\"\",\"callback\":\"http://192.168.18.3:1700/api/auth/vk/callback\",\"scope\":[\"email\"]},\"twitch\":{\"enabled\":false,\"icon\":\"twitch\",\"key\":\"\",\"secret\":\"\",\"callback\":\"http://192.168.18.3:1700/api/auth/twitch/callback\",\"scope\":[\"user:read:email\"]},\"linkedin\":{\"enabled\":false,\"icon\":\"linkedin\",\"key\":\"\",\"secret\":\"\",\"callback\":\"http://192.168.18.3:1700/api/auth/linkedin/callback\",\"scope\":[\"r_liteprofile\",\"r_emailaddress\"]},\"cognito\":{\"enabled\":false,\"icon\":\"aws\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my.subdomain.com\",\"callback\":\"http://192.168.18.3:1700/api/auth/cognito/callback\",\"scope\":[\"email\",\"openid\",\"profile\"]},\"reddit\":{\"enabled\":false,\"icon\":\"reddit\",\"key\":\"\",\"secret\":\"\",\"state\":true,\"callback\":\"http://192.168.18.3:1700/api/auth/reddit/callback\",\"scope\":[\"identity\"]},\"auth0\":{\"enabled\":false,\"icon\":\"\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my-tenant.eu\",\"callback\":\"http://192.168.18.3:1700/api/auth/auth0/callback\",\"scope\":[\"openid\",\"email\",\"profile\"]},\"cas\":{\"enabled\":false,\"icon\":\"book\",\"key\":\"\",\"secret\":\"\",\"callback\":\"http://192.168.18.3:1700/api/auth/cas/callback\",\"scope\":[\"openid email\"],\"subdomain\":\"my.subdomain.com/cas\"}}', 'object', NULL, NULL),
(17, 'plugin_users-permissions_email', '{\"reset_password\":{\"display\":\"Email.template.reset_password\",\"icon\":\"sync\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"estamart42@gmail.com\"},\"response_email\":\"\",\"object\":\"Reset password\",\"message\":\"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>\"}},\"email_confirmation\":{\"display\":\"Email.template.email_confirmation\",\"icon\":\"check-square\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Account confirmation\",\"message\":\"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>\"}}}', 'object', NULL, NULL),
(18, 'plugin_users-permissions_advanced', '{\"unique_email\":true,\"allow_register\":true,\"email_confirmation\":false,\"email_reset_password\":\"https://oyster-app-hxfhx.ondigitalocean.app/reset\",\"email_confirmation_redirection\":\"\",\"default_role\":\"authenticated\"}', 'object', NULL, NULL),
(19, 'plugin_i18n_default_locale', '\"en\"', 'string', NULL, NULL),
(20, 'core_admin_auth', '{\"providers\":{\"autoRegister\":false,\"defaultRole\":null}}', 'object', NULL, NULL),
(21, 'core_admin_project-settings', '{\"menuLogo\":{\"name\":\"cheff_logo_icon.png\",\"hash\":\"cheff_logo_icon_3bace5c4e4\",\"url\":\"https://esta-v2.s3.ap-south-1.amazonaws.com/cheff_logo_icon_3bace5c4e4.png\",\"width\":168,\"height\":252,\"ext\":\".png\",\"size\":54.58,\"provider\":\"aws-s3\"},\"authLogo\":{}}', 'object', NULL, NULL),
(24, 'plugin_content_manager_configuration_content_types::api::category.category', '{\"uid\":\"api::category.category\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"sub_title\":{\"edit\":{\"label\":\"sub_title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"sub_title\",\"searchable\":true,\"sortable\":true}},\"sub_categories\":{\"edit\":{\"label\":\"sub_categories\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"title\"},\"list\":{\"label\":\"sub_categories\",\"searchable\":false,\"sortable\":false}},\"image\":{\"edit\":{\"label\":\"image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"image\",\"searchable\":false,\"sortable\":false}},\"banner\":{\"edit\":{\"label\":\"banner\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"banner\",\"searchable\":false,\"sortable\":false}},\"recipes\":{\"edit\":{\"label\":\"recipes\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"title\"},\"list\":{\"label\":\"recipes\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"sub_title\",\"createdAt\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"sub_title\",\"size\":6}],[{\"name\":\"sub_categories\",\"size\":6},{\"name\":\"image\",\"size\":6}],[{\"name\":\"banner\",\"size\":6},{\"name\":\"recipes\",\"size\":6}]]}}', 'object', NULL, NULL),
(25, 'plugin_content_manager_configuration_content_types::api::sub-category.sub-category', '{\"uid\":\"api::sub-category.sub-category\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"sub_title\":{\"edit\":{\"label\":\"sub_title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"sub_title\",\"searchable\":true,\"sortable\":true}},\"category\":{\"edit\":{\"label\":\"category\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"title\"},\"list\":{\"label\":\"category\",\"searchable\":true,\"sortable\":true}},\"image\":{\"edit\":{\"label\":\"image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"image\",\"searchable\":false,\"sortable\":false}},\"recipes\":{\"edit\":{\"label\":\"recipes\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"title\"},\"list\":{\"label\":\"recipes\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"sub_title\",\"category\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"sub_title\",\"size\":6}],[{\"name\":\"category\",\"size\":6},{\"name\":\"image\",\"size\":6}],[{\"name\":\"recipes\",\"size\":6}]]}}', 'object', NULL, NULL),
(26, 'plugin_content_manager_configuration_content_types::api::recipe.recipe', '{\"uid\":\"api::recipe.recipe\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"DESC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"sub_title\":{\"edit\":{\"label\":\"sub_title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"sub_title\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":false,\"sortable\":false}},\"ingredients\":{\"edit\":{\"label\":\"ingredients\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ingredients\",\"searchable\":false,\"sortable\":false}},\"optional_ingredients\":{\"edit\":{\"label\":\"optional_ingredients\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"optional_ingredients\",\"searchable\":false,\"sortable\":false}},\"directions\":{\"edit\":{\"label\":\"directions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"directions\",\"searchable\":false,\"sortable\":false}},\"nutritional_information\":{\"edit\":{\"label\":\"nutritional_information\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"nutritional_information\",\"searchable\":false,\"sortable\":false}},\"note\":{\"edit\":{\"label\":\"note\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"note\",\"searchable\":false,\"sortable\":false}},\"image\":{\"edit\":{\"label\":\"image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"image\",\"searchable\":false,\"sortable\":false}},\"sub_category\":{\"edit\":{\"label\":\"sub_category\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"title\"},\"list\":{\"label\":\"sub_category\",\"searchable\":true,\"sortable\":true}},\"servings\":{\"edit\":{\"label\":\"servings\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"servings\",\"searchable\":false,\"sortable\":false}},\"cook_time\":{\"edit\":{\"label\":\"cook_time\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"cook_time\",\"searchable\":false,\"sortable\":false}},\"ai\":{\"edit\":{\"label\":\"ai\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ai\",\"searchable\":true,\"sortable\":true}},\"category\":{\"edit\":{\"label\":\"category\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"title\"},\"list\":{\"label\":\"category\",\"searchable\":true,\"sortable\":true}},\"print\":{\"edit\":{\"label\":\"print\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"print\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"sub_title\",\"image\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"sub_title\",\"size\":6}],[{\"name\":\"description\",\"size\":12}],[{\"name\":\"ingredients\",\"size\":12}],[{\"name\":\"optional_ingredients\",\"size\":12}],[{\"name\":\"directions\",\"size\":12}],[{\"name\":\"nutritional_information\",\"size\":12}],[{\"name\":\"note\",\"size\":12}],[{\"name\":\"image\",\"size\":6},{\"name\":\"sub_category\",\"size\":6}],[{\"name\":\"servings\",\"size\":12}],[{\"name\":\"cook_time\",\"size\":12}],[{\"name\":\"ai\",\"size\":4},{\"name\":\"category\",\"size\":6}],[{\"name\":\"print\",\"size\":6}]]}}', 'object', NULL, NULL),
(27, 'plugin_content_manager_configuration_content_types::api::section.section', '{\"uid\":\"api::section.section\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"sub_title\":{\"edit\":{\"label\":\"sub_title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"sub_title\",\"searchable\":true,\"sortable\":true}},\"recipes\":{\"edit\":{\"label\":\"recipes\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"title\"},\"list\":{\"label\":\"recipes\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"sub_title\",\"recipes\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"sub_title\",\"size\":6}],[{\"name\":\"recipes\",\"size\":6}]]}}', 'object', NULL, NULL),
(28, 'plugin_content_manager_configuration_content_types::api::homepage.homepage', '{\"uid\":\"api::homepage.homepage\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"main_title\",\"defaultSortBy\":\"main_title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"sections\":{\"edit\":{\"label\":\"sections\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"title\"},\"list\":{\"label\":\"sections\",\"searchable\":false,\"sortable\":false}},\"main_title\":{\"edit\":{\"label\":\"main_title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"main_title\",\"searchable\":true,\"sortable\":true}},\"sub_title\":{\"edit\":{\"label\":\"sub_title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"sub_title\",\"searchable\":true,\"sortable\":true}},\"button_text\":{\"edit\":{\"label\":\"button_text\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"button_text\",\"searchable\":true,\"sortable\":true}},\"sub_sub_title\":{\"edit\":{\"label\":\"sub_sub_title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"sub_sub_title\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"sections\",\"main_title\",\"sub_title\"],\"edit\":[[{\"name\":\"sections\",\"size\":6},{\"name\":\"main_title\",\"size\":6}],[{\"name\":\"sub_title\",\"size\":6},{\"name\":\"button_text\",\"size\":6}],[{\"name\":\"sub_sub_title\",\"size\":6}]]}}', 'object', NULL, NULL),
(29, 'plugin_content_manager_configuration_content_types::api::footer.footer', '{\"uid\":\"api::footer.footer\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"copyright\",\"defaultSortBy\":\"copyright\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"copyright\":{\"edit\":{\"label\":\"copyright\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"copyright\",\"searchable\":true,\"sortable\":true}},\"pages\":{\"edit\":{\"label\":\"pages\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"title\"},\"list\":{\"label\":\"pages\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"copyright\",\"pages\",\"createdAt\"],\"edit\":[[{\"name\":\"copyright\",\"size\":6},{\"name\":\"pages\",\"size\":6}]]}}', 'object', NULL, NULL);
INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(30, 'plugin_content_manager_configuration_content_types::api::page.page', '{\"uid\":\"api::page.page\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"sub_title\":{\"edit\":{\"label\":\"sub_title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"sub_title\",\"searchable\":true,\"sortable\":true}},\"body\":{\"edit\":{\"label\":\"body\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"body\",\"searchable\":false,\"sortable\":false}},\"header\":{\"edit\":{\"label\":\"header\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"header\",\"searchable\":false,\"sortable\":false}},\"slug\":{\"edit\":{\"label\":\"slug\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"slug\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"sub_title\",\"header\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"sub_title\",\"size\":6}],[{\"name\":\"body\",\"size\":12}],[{\"name\":\"header\",\"size\":6},{\"name\":\"slug\",\"size\":6}]]}}', 'object', NULL, NULL),
(31, 'plugin_content_manager_configuration_components::static.about-us-circles', '{\"uid\":\"static.about-us-circles\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"image\":{\"edit\":{\"label\":\"image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"image\",\"searchable\":false,\"sortable\":false}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"title\",\"image\"],\"edit\":[[{\"name\":\"title\",\"size\":6}],[{\"name\":\"image\",\"size\":6}],[{\"name\":\"description\",\"size\":12}]]},\"isComponent\":true}', 'object', NULL, NULL),
(32, 'plugin_content_manager_configuration_content_types::api::about.about', '{\"uid\":\"api::about.about\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"circleblock\":{\"edit\":{\"label\":\"circleblock\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"circleblock\",\"searchable\":false,\"sortable\":false}},\"gallery\":{\"edit\":{\"label\":\"gallery\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"gallery\",\"searchable\":false,\"sortable\":false}},\"banner\":{\"edit\":{\"label\":\"banner\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"banner\",\"searchable\":false,\"sortable\":false}},\"aboutsections\":{\"edit\":{\"label\":\"aboutsections\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"aboutsections\",\"searchable\":false,\"sortable\":false}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"circleblock\",\"gallery\"],\"edit\":[[{\"name\":\"title\",\"size\":6}],[{\"name\":\"description\",\"size\":12}],[{\"name\":\"circleblock\",\"size\":12}],[{\"name\":\"gallery\",\"size\":6},{\"name\":\"banner\",\"size\":6}],[{\"name\":\"aboutsections\",\"size\":12}]]}}', 'object', NULL, NULL),
(33, 'plugin_content_manager_configuration_content_types::api::lead.lead', '{\"uid\":\"api::lead.lead\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"email\",\"defaultSortBy\":\"email\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"msg\":{\"edit\":{\"label\":\"msg\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"msg\",\"searchable\":false,\"sortable\":false}},\"status\":{\"edit\":{\"label\":\"status\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"status\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"email\",\"name\",\"status\"],\"edit\":[[{\"name\":\"email\",\"size\":6},{\"name\":\"name\",\"size\":6}],[{\"name\":\"msg\",\"size\":12}],[{\"name\":\"status\",\"size\":6}]]}}', 'object', NULL, NULL),
(34, 'plugin_content_manager_configuration_content_types::api::wishlist.wishlist', '{\"uid\":\"api::wishlist.wishlist\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"users_permissions_user\":{\"edit\":{\"label\":\"users_permissions_user\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"users_permissions_user\",\"searchable\":true,\"sortable\":true}},\"recipes\":{\"edit\":{\"label\":\"recipes\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"title\"},\"list\":{\"label\":\"recipes\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"users_permissions_user\",\"recipes\",\"createdAt\"],\"edit\":[[{\"name\":\"users_permissions_user\",\"size\":6},{\"name\":\"recipes\",\"size\":6}]]}}', 'object', NULL, NULL),
(35, 'plugin_content_manager_configuration_content_types::api::searche.searche', '{\"uid\":\"api::searche.searche\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"DESC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"users_permissions_user\":{\"edit\":{\"label\":\"users_permissions_user\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"users_permissions_user\",\"searchable\":true,\"sortable\":true}},\"user_id\":{\"edit\":{\"label\":\"user_id\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"user_id\",\"searchable\":true,\"sortable\":true}},\"trial\":{\"edit\":{\"label\":\"trial\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"trial\",\"searchable\":true,\"sortable\":true}},\"subscription\":{\"edit\":{\"label\":\"subscription\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"subscription\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"createdAt\",\"users_permissions_user\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"users_permissions_user\",\"size\":6}],[{\"name\":\"user_id\",\"size\":6},{\"name\":\"trial\",\"size\":4}],[{\"name\":\"subscription\",\"size\":6}]]}}', 'object', NULL, NULL),
(36, 'plugin_content_manager_configuration_content_types::api::download.download', '{\"uid\":\"api::download.download\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"recipe\":{\"edit\":{\"label\":\"recipe\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"title\"},\"list\":{\"label\":\"recipe\",\"searchable\":true,\"sortable\":true}},\"user_id\":{\"edit\":{\"label\":\"user_id\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"user_id\",\"searchable\":true,\"sortable\":true}},\"trial\":{\"edit\":{\"label\":\"trial\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"trial\",\"searchable\":true,\"sortable\":true}},\"subscription\":{\"edit\":{\"label\":\"subscription\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"subscription\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"recipe\",\"createdAt\",\"user_id\"],\"edit\":[[{\"name\":\"recipe\",\"size\":6},{\"name\":\"user_id\",\"size\":6}],[{\"name\":\"trial\",\"size\":4},{\"name\":\"subscription\",\"size\":6}]]}}', 'object', NULL, NULL),
(37, 'plugin_content_manager_configuration_content_types::api::freemium.freemium', '{\"uid\":\"api::freemium.freemium\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"searches\":{\"edit\":{\"label\":\"searches\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"searches\",\"searchable\":true,\"sortable\":true}},\"downloads\":{\"edit\":{\"label\":\"downloads\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"downloads\",\"searchable\":true,\"sortable\":true}},\"saves\":{\"edit\":{\"label\":\"saves\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"saves\",\"searchable\":true,\"sortable\":true}},\"aisearches\":{\"edit\":{\"label\":\"aisearches\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"aisearches\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"searches\",\"downloads\",\"saves\"],\"edit\":[[{\"name\":\"searches\",\"size\":4},{\"name\":\"downloads\",\"size\":4},{\"name\":\"saves\",\"size\":4}],[{\"name\":\"aisearches\",\"size\":4}]]}}', 'object', NULL, NULL),
(39, 'plugin_content_manager_configuration_content_types::api::save.save', '{\"uid\":\"api::save.save\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"recipe\":{\"edit\":{\"label\":\"recipe\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"title\"},\"list\":{\"label\":\"recipe\",\"searchable\":true,\"sortable\":true}},\"user_id\":{\"edit\":{\"label\":\"user_id\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"user_id\",\"searchable\":true,\"sortable\":true}},\"trial\":{\"edit\":{\"label\":\"trial\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"trial\",\"searchable\":true,\"sortable\":true}},\"subscription\":{\"edit\":{\"label\":\"subscription\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"subscription\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"recipe\",\"createdAt\",\"user_id\"],\"edit\":[[{\"name\":\"recipe\",\"size\":6},{\"name\":\"user_id\",\"size\":6}],[{\"name\":\"trial\",\"size\":4},{\"name\":\"subscription\",\"size\":6}]]}}', 'object', NULL, NULL),
(40, 'plugin_content_manager_configuration_content_types::plugin::strapi-stripe.ss-product', '{\"uid\":\"plugin::strapi-stripe.ss-product\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"slug\":{\"edit\":{\"label\":\"slug\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"slug\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"price\":{\"edit\":{\"label\":\"price\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"price\",\"searchable\":true,\"sortable\":true}},\"currency\":{\"edit\":{\"label\":\"currency\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"currency\",\"searchable\":true,\"sortable\":true}},\"productImage\":{\"edit\":{\"label\":\"productImage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"productImage\",\"searchable\":false,\"sortable\":false}},\"isSubscription\":{\"edit\":{\"label\":\"isSubscription\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"isSubscription\",\"searchable\":true,\"sortable\":true}},\"interval\":{\"edit\":{\"label\":\"interval\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"interval\",\"searchable\":true,\"sortable\":true}},\"trialPeriodDays\":{\"edit\":{\"label\":\"trialPeriodDays\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"trialPeriodDays\",\"searchable\":true,\"sortable\":true}},\"stripeProductId\":{\"edit\":{\"label\":\"stripeProductId\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"stripeProductId\",\"searchable\":true,\"sortable\":true}},\"stripePriceId\":{\"edit\":{\"label\":\"stripePriceId\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"stripePriceId\",\"searchable\":true,\"sortable\":true}},\"stripePlanId\":{\"edit\":{\"label\":\"stripePlanId\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"stripePlanId\",\"searchable\":true,\"sortable\":true}},\"stripePayment\":{\"edit\":{\"label\":\"stripePayment\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"transactionId\"},\"list\":{\"label\":\"stripePayment\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"slug\",\"description\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"slug\",\"size\":6}],[{\"name\":\"description\",\"size\":6},{\"name\":\"price\",\"size\":4}],[{\"name\":\"currency\",\"size\":6},{\"name\":\"productImage\",\"size\":6}],[{\"name\":\"isSubscription\",\"size\":4},{\"name\":\"interval\",\"size\":6}],[{\"name\":\"trialPeriodDays\",\"size\":4},{\"name\":\"stripeProductId\",\"size\":6}],[{\"name\":\"stripePriceId\",\"size\":6},{\"name\":\"stripePlanId\",\"size\":6}],[{\"name\":\"stripePayment\",\"size\":6}]]}}', 'object', NULL, NULL),
(41, 'plugin_content_manager_configuration_content_types::plugin::strapi-stripe.ss-payment', '{\"uid\":\"plugin::strapi-stripe.ss-payment\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"transactionId\",\"defaultSortBy\":\"transactionId\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"txnDate\":{\"edit\":{\"label\":\"txnDate\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"txnDate\",\"searchable\":true,\"sortable\":true}},\"transactionId\":{\"edit\":{\"label\":\"transactionId\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"transactionId\",\"searchable\":true,\"sortable\":true}},\"isTxnSuccessful\":{\"edit\":{\"label\":\"isTxnSuccessful\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"isTxnSuccessful\",\"searchable\":true,\"sortable\":true}},\"txnMessage\":{\"edit\":{\"label\":\"txnMessage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"txnMessage\",\"searchable\":true,\"sortable\":true}},\"txnErrorMessage\":{\"edit\":{\"label\":\"txnErrorMessage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"txnErrorMessage\",\"searchable\":true,\"sortable\":true}},\"txnAmount\":{\"edit\":{\"label\":\"txnAmount\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"txnAmount\",\"searchable\":true,\"sortable\":true}},\"customerName\":{\"edit\":{\"label\":\"customerName\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"customerName\",\"searchable\":true,\"sortable\":true}},\"customerEmail\":{\"edit\":{\"label\":\"customerEmail\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"customerEmail\",\"searchable\":true,\"sortable\":true}},\"stripeProduct\":{\"edit\":{\"label\":\"stripeProduct\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"title\"},\"list\":{\"label\":\"stripeProduct\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"txnDate\",\"transactionId\",\"isTxnSuccessful\"],\"edit\":[[{\"name\":\"txnDate\",\"size\":6},{\"name\":\"transactionId\",\"size\":6}],[{\"name\":\"isTxnSuccessful\",\"size\":4},{\"name\":\"txnMessage\",\"size\":6}],[{\"name\":\"txnErrorMessage\",\"size\":6},{\"name\":\"txnAmount\",\"size\":4}],[{\"name\":\"customerName\",\"size\":6},{\"name\":\"customerEmail\",\"size\":6}],[{\"name\":\"stripeProduct\",\"size\":6}]]}}', 'object', NULL, NULL),
(42, 'plugin_content_manager_configuration_content_types::plugin::strapi-paypal.paypal-product', '{\"uid\":\"plugin::strapi-paypal.paypal-product\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"slug\":{\"edit\":{\"label\":\"slug\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"slug\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"price\":{\"edit\":{\"label\":\"price\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"price\",\"searchable\":true,\"sortable\":true}},\"currency\":{\"edit\":{\"label\":\"currency\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"currency\",\"searchable\":true,\"sortable\":true}},\"isSubscription\":{\"edit\":{\"label\":\"isSubscription\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"isSubscription\",\"searchable\":true,\"sortable\":true}},\"interval\":{\"edit\":{\"label\":\"interval\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"interval\",\"searchable\":true,\"sortable\":true}},\"trialPeriodDays\":{\"edit\":{\"label\":\"trialPeriodDays\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"trialPeriodDays\",\"searchable\":true,\"sortable\":true}},\"paypalOrderId\":{\"edit\":{\"label\":\"paypalOrderId\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"paypalOrderId\",\"searchable\":true,\"sortable\":true}},\"paypalSubcriptionId\":{\"edit\":{\"label\":\"paypalSubcriptionId\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"paypalSubcriptionId\",\"searchable\":true,\"sortable\":true}},\"paypalLinks\":{\"edit\":{\"label\":\"paypalLinks\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"paypalLinks\",\"searchable\":false,\"sortable\":false}},\"paypalPayment\":{\"edit\":{\"label\":\"paypalPayment\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"transactionId\"},\"list\":{\"label\":\"paypalPayment\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"slug\",\"description\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"slug\",\"size\":6}],[{\"name\":\"description\",\"size\":6},{\"name\":\"price\",\"size\":4}],[{\"name\":\"currency\",\"size\":6},{\"name\":\"isSubscription\",\"size\":4}],[{\"name\":\"interval\",\"size\":6},{\"name\":\"trialPeriodDays\",\"size\":4}],[{\"name\":\"paypalOrderId\",\"size\":6},{\"name\":\"paypalSubcriptionId\",\"size\":6}],[{\"name\":\"paypalLinks\",\"size\":12}],[{\"name\":\"paypalPayment\",\"size\":6}]]}}', 'object', NULL, NULL),
(43, 'plugin_content_manager_configuration_content_types::plugin::strapi-paypal.paypal-payment', '{\"uid\":\"plugin::strapi-paypal.paypal-payment\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"transactionId\",\"defaultSortBy\":\"transactionId\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"txnDate\":{\"edit\":{\"label\":\"txnDate\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"txnDate\",\"searchable\":true,\"sortable\":true}},\"transactionId\":{\"edit\":{\"label\":\"transactionId\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"transactionId\",\"searchable\":true,\"sortable\":true}},\"isTxnSuccessful\":{\"edit\":{\"label\":\"isTxnSuccessful\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"isTxnSuccessful\",\"searchable\":true,\"sortable\":true}},\"txnMessage\":{\"edit\":{\"label\":\"txnMessage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"txnMessage\",\"searchable\":true,\"sortable\":true}},\"txnErrorMessage\":{\"edit\":{\"label\":\"txnErrorMessage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"txnErrorMessage\",\"searchable\":true,\"sortable\":true}},\"txnAmount\":{\"edit\":{\"label\":\"txnAmount\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"txnAmount\",\"searchable\":true,\"sortable\":true}},\"customerName\":{\"edit\":{\"label\":\"customerName\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"customerName\",\"searchable\":true,\"sortable\":true}},\"customerEmail\":{\"edit\":{\"label\":\"customerEmail\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"customerEmail\",\"searchable\":true,\"sortable\":true}},\"paypalProduct\":{\"edit\":{\"label\":\"paypalProduct\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"title\"},\"list\":{\"label\":\"paypalProduct\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"txnDate\",\"transactionId\",\"isTxnSuccessful\"],\"edit\":[[{\"name\":\"txnDate\",\"size\":6},{\"name\":\"transactionId\",\"size\":6}],[{\"name\":\"isTxnSuccessful\",\"size\":4},{\"name\":\"txnMessage\",\"size\":6}],[{\"name\":\"txnErrorMessage\",\"size\":6},{\"name\":\"txnAmount\",\"size\":4}],[{\"name\":\"customerName\",\"size\":6},{\"name\":\"customerEmail\",\"size\":6}],[{\"name\":\"paypalProduct\",\"size\":6}]]}}', 'object', NULL, NULL),
(44, 'plugin_strapi-stripe_stripeSetting', '{\"isLiveMode\":false,\"stripeLivePubKey\":\"pk_test_THXAgeQkC1eJBgHfqeWdTn2p\",\"stripeLiveSecKey\":\"sk_test_X8hPp5e31V73Bxe6V1q8N8rR\",\"stripeTestPubKey\":\"pk_test_THXAgeQkC1eJBgHfqeWdTn2p\",\"stripeTestSecKey\":\"sk_test_X8hPp5e31V73Bxe6V1q8N8rR\",\"checkoutSuccessUrl\":\"http://localhost:3000/payment/success/stripe\",\"checkoutCancelUrl\":\"http://localhost:3000/payment/failed/stripe\",\"currency\":\"usd\",\"callbackUrl\":\"\",\"paymentMethods\":[\"card\"]}', 'object', 'development', NULL),
(45, 'plugin_content_manager_configuration_components::static.plan-benefits', '{\"uid\":\"static.plan-benefits\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"available\":{\"edit\":{\"label\":\"available\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"available\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"available\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"available\",\"size\":4}]]},\"isComponent\":true}', 'object', NULL, NULL),
(46, 'plugin_content_manager_configuration_content_types::api::plan.plan', '{\"uid\":\"api::plan.plan\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"sub_title\":{\"edit\":{\"label\":\"sub_title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"sub_title\",\"searchable\":true,\"sortable\":true}},\"plan_benefits\":{\"edit\":{\"label\":\"plan_benefits\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"plan_benefits\",\"searchable\":false,\"sortable\":false}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"price\":{\"edit\":{\"label\":\"price\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"price\",\"searchable\":true,\"sortable\":true}},\"searches\":{\"edit\":{\"label\":\"searches\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"searches\",\"searchable\":true,\"sortable\":true}},\"saves\":{\"edit\":{\"label\":\"saves\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"saves\",\"searchable\":true,\"sortable\":true}},\"downloads\":{\"edit\":{\"label\":\"downloads\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"downloads\",\"searchable\":true,\"sortable\":true}},\"stripe_id\":{\"edit\":{\"label\":\"stripe_id\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"stripe_id\",\"searchable\":true,\"sortable\":true}},\"paypal_id\":{\"edit\":{\"label\":\"paypal_id\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"paypal_id\",\"searchable\":true,\"sortable\":true}},\"featured\":{\"edit\":{\"label\":\"featured\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"featured\",\"searchable\":true,\"sortable\":true}},\"image\":{\"edit\":{\"label\":\"image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"image\",\"searchable\":false,\"sortable\":false}},\"days\":{\"edit\":{\"label\":\"days\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"days\",\"searchable\":true,\"sortable\":true}},\"aisearches\":{\"edit\":{\"label\":\"aisearches\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"aisearches\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"sub_title\",\"plan_benefits\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"sub_title\",\"size\":6}],[{\"name\":\"plan_benefits\",\"size\":12}],[{\"name\":\"type\",\"size\":6},{\"name\":\"price\",\"size\":6}],[{\"name\":\"searches\",\"size\":4},{\"name\":\"saves\",\"size\":4},{\"name\":\"downloads\",\"size\":4}],[{\"name\":\"stripe_id\",\"size\":4},{\"name\":\"paypal_id\",\"size\":4},{\"name\":\"featured\",\"size\":4}],[{\"name\":\"image\",\"size\":6},{\"name\":\"days\",\"size\":4}],[{\"name\":\"aisearches\",\"size\":4}]]}}', 'object', NULL, NULL),
(47, 'plugin_content_manager_configuration_content_types::api::subscription.subscription', '{\"uid\":\"api::subscription.subscription\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"users_permissions_user\":{\"edit\":{\"label\":\"users_permissions_user\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"users_permissions_user\",\"searchable\":true,\"sortable\":true}},\"plan\":{\"edit\":{\"label\":\"plan\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"title\"},\"list\":{\"label\":\"plan\",\"searchable\":true,\"sortable\":true}},\"subscribed_at\":{\"edit\":{\"label\":\"subscribed_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"subscribed_at\",\"searchable\":true,\"sortable\":true}},\"days\":{\"edit\":{\"label\":\"days\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"days\",\"searchable\":true,\"sortable\":true}},\"expires\":{\"edit\":{\"label\":\"expires\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"expires\",\"searchable\":true,\"sortable\":true}},\"amount_paid\":{\"edit\":{\"label\":\"amount_paid\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"amount_paid\",\"searchable\":true,\"sortable\":true}},\"saves\":{\"edit\":{\"label\":\"saves\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"saves\",\"searchable\":true,\"sortable\":true}},\"searches\":{\"edit\":{\"label\":\"searches\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"searches\",\"searchable\":true,\"sortable\":true}},\"downloads\":{\"edit\":{\"label\":\"downloads\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"downloads\",\"searchable\":true,\"sortable\":true}},\"active\":{\"edit\":{\"label\":\"active\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"active\",\"searchable\":true,\"sortable\":true}},\"refund_requested\":{\"edit\":{\"label\":\"refund_requested\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"refund_requested\",\"searchable\":true,\"sortable\":true}},\"refunded\":{\"edit\":{\"label\":\"refunded\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"refunded\",\"searchable\":true,\"sortable\":true}},\"refund_rejected\":{\"edit\":{\"label\":\"refund_rejected\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"refund_rejected\",\"searchable\":true,\"sortable\":true}},\"refund_msg\":{\"edit\":{\"label\":\"refund_msg\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"refund_msg\",\"searchable\":true,\"sortable\":true}},\"upgraded_to\":{\"edit\":{\"label\":\"upgraded_to\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"upgraded_to\",\"searchable\":true,\"sortable\":true}},\"unsubscribe_msg\":{\"edit\":{\"label\":\"unsubscribe_msg\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"unsubscribe_msg\",\"searchable\":true,\"sortable\":true}},\"aisearches\":{\"edit\":{\"label\":\"aisearches\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"title\"},\"list\":{\"label\":\"aisearches\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"users_permissions_user\",\"plan\",\"subscribed_at\"],\"edit\":[[{\"name\":\"users_permissions_user\",\"size\":6},{\"name\":\"plan\",\"size\":6}],[{\"name\":\"subscribed_at\",\"size\":4},{\"name\":\"days\",\"size\":4},{\"name\":\"expires\",\"size\":4}],[{\"name\":\"amount_paid\",\"size\":4},{\"name\":\"saves\",\"size\":4},{\"name\":\"searches\",\"size\":4}],[{\"name\":\"downloads\",\"size\":4},{\"name\":\"active\",\"size\":4},{\"name\":\"refund_requested\",\"size\":4}],[{\"name\":\"refunded\",\"size\":4},{\"name\":\"refund_rejected\",\"size\":4}],[{\"name\":\"refund_msg\",\"size\":6},{\"name\":\"upgraded_to\",\"size\":6}],[{\"name\":\"unsubscribe_msg\",\"size\":6},{\"name\":\"aisearches\",\"size\":6}]]}}', 'object', NULL, NULL),
(48, 'plugin_content_manager_configuration_content_types::api::aisearch.aisearch', '{\"uid\":\"api::aisearch.aisearch\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"users_permissions_user\":{\"edit\":{\"label\":\"users_permissions_user\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"users_permissions_user\",\"searchable\":true,\"sortable\":true}},\"subscription\":{\"edit\":{\"label\":\"subscription\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"subscription\",\"searchable\":true,\"sortable\":true}},\"trial\":{\"edit\":{\"label\":\"trial\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"trial\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"users_permissions_user\",\"subscription\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"users_permissions_user\",\"size\":6}],[{\"name\":\"subscription\",\"size\":6},{\"name\":\"trial\",\"size\":4}]]}}', 'object', NULL, NULL),
(49, 'plugin_content_manager_configuration_content_types::api::bcategory.bcategory', '{\"uid\":\"api::bcategory.bcategory\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"blogs\":{\"edit\":{\"label\":\"blogs\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"title\"},\"list\":{\"label\":\"blogs\",\"searchable\":false,\"sortable\":false}},\"image\":{\"edit\":{\"label\":\"image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"image\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"createdAt\",\"updatedAt\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"blogs\",\"size\":6}],[{\"name\":\"image\",\"size\":6}]]}}', 'object', NULL, NULL),
(50, 'plugin_content_manager_configuration_content_types::api::blog.blog', '{\"uid\":\"api::blog.blog\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"author\":{\"edit\":{\"label\":\"author\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"author\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":false,\"sortable\":false}},\"short_description\":{\"edit\":{\"label\":\"short_description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"short_description\",\"searchable\":true,\"sortable\":true}},\"image\":{\"edit\":{\"label\":\"image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"image\",\"searchable\":false,\"sortable\":false}},\"bcategory\":{\"edit\":{\"label\":\"bcategory\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"title\"},\"list\":{\"label\":\"bcategory\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"author\",\"short_description\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"author\",\"size\":6}],[{\"name\":\"description\",\"size\":12}],[{\"name\":\"short_description\",\"size\":6},{\"name\":\"image\",\"size\":6}],[{\"name\":\"bcategory\",\"size\":6}]]}}', 'object', NULL, NULL),
(51, 'plugin_upload_api-folder', '{\"id\":1}', 'object', NULL, NULL),
(52, 'plugin_content_manager_configuration_components::static.sections', '{\"uid\":\"static.sections\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"type\",\"defaultSortBy\":\"type\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"image\":{\"edit\":{\"label\":\"image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"image\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"type\",\"title\",\"description\"],\"edit\":[[{\"name\":\"type\",\"size\":6},{\"name\":\"title\",\"size\":6}],[{\"name\":\"description\",\"size\":6},{\"name\":\"image\",\"size\":6}]]},\"isComponent\":true}', 'object', NULL, NULL);
INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(53, 'plugin_content_manager_configuration_content_types::api::pdf.pdf', '{\"uid\":\"api::pdf.pdf\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"logo\":{\"edit\":{\"label\":\"logo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"logo\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"logo\",\"createdAt\",\"updatedAt\"],\"edit\":[[{\"name\":\"logo\",\"size\":6}]]}}', 'object', NULL, NULL),
(54, 'plugin_content_manager_configuration_content_types::api::print.print', '{\"uid\":\"api::print.print\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"recipe\":{\"edit\":{\"label\":\"recipe\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"title\"},\"list\":{\"label\":\"recipe\",\"searchable\":true,\"sortable\":true}},\"users_permissions_user\":{\"edit\":{\"label\":\"users_permissions_user\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"users_permissions_user\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"recipe\",\"users_permissions_user\",\"createdAt\"],\"edit\":[[{\"name\":\"recipe\",\"size\":6},{\"name\":\"users_permissions_user\",\"size\":6}]]}}', 'object', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `strapi_database_schema`
--

CREATE TABLE `strapi_database_schema` (
  `id` int UNSIGNED NOT NULL,
  `schema` json DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `hash` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `strapi_database_schema`
--

INSERT INTO `strapi_database_schema` (`id`, `schema`, `time`, `hash`) VALUES
(56, '{\"tables\": [{\"name\": \"strapi_core_store_settings\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"key\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"value\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"environment\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"tag\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"strapi_webhooks\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"url\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"headers\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"events\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"enabled\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"strapi_ee_store_settings\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"key\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"value\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"admin_permissions\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"action\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"subject\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"properties\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"conditions\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"admin_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"admin_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"admin_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"admin_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"admin_users\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"firstname\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"lastname\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"username\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"email\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"password\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"reset_password_token\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"registration_token\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"is_active\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"blocked\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"prefered_language\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"admin_users_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"admin_users_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"admin_users_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"admin_users_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"admin_roles\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"code\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"description\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"admin_roles_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"admin_roles_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"admin_roles_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"admin_roles_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"strapi_api_tokens\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"description\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"access_key\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"last_used_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"expires_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"lifespan\", \"type\": \"bigInteger\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"strapi_api_tokens_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"strapi_api_tokens_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"strapi_api_tokens_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"strapi_api_tokens_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"strapi_api_token_permissions\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"action\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"strapi_api_token_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"strapi_api_token_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"strapi_api_token_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"strapi_api_token_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"files\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"alternative_text\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"caption\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"width\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"height\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"formats\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"hash\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"ext\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"mime\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [10, 2], \"name\": \"size\", \"type\": \"decimal\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"url\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"preview_url\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"provider\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"provider_metadata\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"folder_path\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"upload_files_folder_path_index\", \"type\": null, \"columns\": [\"folder_path\"]}, {\"name\": \"upload_files_created_at_index\", \"type\": null, \"columns\": [\"created_at\"]}, {\"name\": \"upload_files_updated_at_index\", \"type\": null, \"columns\": [\"updated_at\"]}, {\"name\": \"upload_files_name_index\", \"type\": null, \"columns\": [\"name\"]}, {\"name\": \"upload_files_size_index\", \"type\": null, \"columns\": [\"size\"]}, {\"name\": \"upload_files_ext_index\", \"type\": null, \"columns\": [\"ext\"]}, {\"name\": \"files_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"files_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"files_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"files_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"upload_folders\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"path_id\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"path\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"upload_folders_path_id_index\", \"type\": \"unique\", \"columns\": [\"path_id\"]}, {\"name\": \"upload_folders_path_index\", \"type\": \"unique\", \"columns\": [\"path\"]}, {\"name\": \"upload_folders_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"upload_folders_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"upload_folders_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"upload_folders_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"strapi-paypal_paypal-product\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"slug\", \"type\": \"string\", \"unique\": true, \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"description\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [10, 2], \"name\": \"price\", \"type\": \"decimal\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"currency\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"is_subscription\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"interval\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"trial_period_days\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"paypal_order_id\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"paypal_subcription_id\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"paypal_links\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"strapi-paypal_paypal-product_slug_unique\", \"type\": \"unique\", \"columns\": [\"slug\"]}, {\"name\": \"strapi-paypal_paypal-product_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"strapi-paypal_paypal-product_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"strapi-paypal_paypal-product_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"strapi-paypal_paypal-product_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"strapi-paypal_paypal-payment\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"txn_date\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"transaction_id\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"is_txn_successful\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"txn_message\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"txn_error_message\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [10, 2], \"name\": \"txn_amount\", \"type\": \"decimal\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"customer_name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"customer_email\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"strapi-paypal_paypal-payment_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"strapi-paypal_paypal-payment_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"strapi-paypal_paypal-payment_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"strapi-paypal_paypal-payment_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"i18n_locale\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"code\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"i18n_locale_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"i18n_locale_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"i18n_locale_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"i18n_locale_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_permissions\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"action\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"up_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"up_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_roles\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"description\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_roles_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"up_roles_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"up_roles_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_roles_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_users\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"username\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"email\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"provider\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"password\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"reset_password_token\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"confirmation_token\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"confirmed\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"blocked\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"fullname\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"phone\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"address\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"delete_reason\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_users_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"up_users_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"up_users_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_users_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"strapi-stripe_ss-product\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"slug\", \"type\": \"string\", \"unique\": true, \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"description\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [10, 2], \"name\": \"price\", \"type\": \"decimal\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"currency\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"is_subscription\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"interval\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"trial_period_days\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"stripe_product_id\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"stripe_price_id\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"stripe_plan_id\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"strapi-stripe_ss-product_slug_unique\", \"type\": \"unique\", \"columns\": [\"slug\"]}, {\"name\": \"strapi-stripe_ss-product_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"strapi-stripe_ss-product_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"strapi-stripe_ss-product_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"strapi-stripe_ss-product_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"strapi-stripe_ss-payment\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"txn_date\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"transaction_id\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"is_txn_successful\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"txn_message\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"txn_error_message\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [10, 2], \"name\": \"txn_amount\", \"type\": \"decimal\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"customer_name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"customer_email\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"strapi-stripe_ss-payment_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"strapi-stripe_ss-payment_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"strapi-stripe_ss-payment_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"strapi-stripe_ss-payment_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"abouts\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"description\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"abouts_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"abouts_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"abouts_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"abouts_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"aisearches\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"trial\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"aisearches_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"aisearches_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"aisearches_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"aisearches_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"bcategories\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"bcategories_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"bcategories_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"bcategories_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"bcategories_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"blogs\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"author\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"short_description\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"description\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"blogs_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"blogs_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"blogs_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"blogs_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"categories\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"sub_title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"categories_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"categories_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"categories_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"categories_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"downloads\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"trial\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"downloads_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"downloads_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"downloads_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"downloads_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"footers\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"copyright\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"footers_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"footers_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"footers_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"footers_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"freemiums\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"searches\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"downloads\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"saves\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"aisearches\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"freemiums_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"freemiums_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"freemiums_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"freemiums_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"homepages\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"main_title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"sub_title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"button_text\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"sub_sub_title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"homepages_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"homepages_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"homepages_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"homepages_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"leads\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"email\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"msg\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"status\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"leads_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"leads_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"leads_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"leads_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"pages\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"sub_title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"slug\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"body\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"pages_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"pages_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"pages_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"pages_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"pdfs\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"pdfs_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"pdfs_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"pdfs_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"pdfs_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"plans\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"sub_title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"price\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"searches\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"saves\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"downloads\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"stripe_id\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"paypal_id\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"featured\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"days\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"aisearches\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"plans_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"plans_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"plans_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"plans_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"prints\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"prints_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"prints_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"prints_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"prints_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"recipes\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"sub_title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"description\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"ingredients\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"optional_ingredients\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"directions\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"nutritional_information\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"note\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"servings\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"cook_time\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"ai\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"recipes_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"recipes_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"recipes_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"recipes_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"saves\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"trial\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"saves_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"saves_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"saves_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"saves_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"searches\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"trial\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"searches_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"searches_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"searches_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"searches_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"sections\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"sub_title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"sections_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"sections_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"sections_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"sections_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"sub_categories\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"sub_title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"sub_categories_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"sub_categories_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"sub_categories_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"sub_categories_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"subscriptions\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"subscribed_at\", \"type\": \"date\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"days\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"expires\", \"type\": \"date\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"amount_paid\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"saves\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"searches\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"downloads\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"active\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"refund_requested\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"refunded\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"refund_rejected\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"refund_msg\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"unsubscribe_msg\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"subscriptions_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"subscriptions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"subscriptions_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"subscriptions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"wishlists\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"wishlists_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"wishlists_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"wishlists_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"wishlists_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"components_static_about_us_circles\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"description\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_static_plan_benefits\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"available\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_static_sections\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"description\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"admin_permissions_role_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"permission_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"role_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"permission_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"admin_permissions_role_links_fk\", \"columns\": [\"permission_id\"]}, {\"name\": \"admin_permissions_role_links_inv_fk\", \"columns\": [\"role_id\"]}, {\"name\": \"admin_permissions_role_links_unique\", \"type\": \"unique\", \"columns\": [\"permission_id\", \"role_id\"]}, {\"name\": \"admin_permissions_role_links_order_inv_fk\", \"columns\": [\"permission_order\"]}], \"foreignKeys\": [{\"name\": \"admin_permissions_role_links_fk\", \"columns\": [\"permission_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"admin_permissions\", \"referencedColumns\": [\"id\"]}, {\"name\": \"admin_permissions_role_links_inv_fk\", \"columns\": [\"role_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"admin_roles\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"admin_users_roles_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"user_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"role_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"role_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"user_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"admin_users_roles_links_fk\", \"columns\": [\"user_id\"]}, {\"name\": \"admin_users_roles_links_inv_fk\", \"columns\": [\"role_id\"]}, {\"name\": \"admin_users_roles_links_unique\", \"type\": \"unique\", \"columns\": [\"user_id\", \"role_id\"]}, {\"name\": \"admin_users_roles_links_order_fk\", \"columns\": [\"role_order\"]}, {\"name\": \"admin_users_roles_links_order_inv_fk\", \"columns\": [\"user_order\"]}], \"foreignKeys\": [{\"name\": \"admin_users_roles_links_fk\", \"columns\": [\"user_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"admin_users_roles_links_inv_fk\", \"columns\": [\"role_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"admin_roles\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"strapi_api_token_permissions_token_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"api_token_permission_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"api_token_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"api_token_permission_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"strapi_api_token_permissions_token_links_fk\", \"columns\": [\"api_token_permission_id\"]}, {\"name\": \"strapi_api_token_permissions_token_links_inv_fk\", \"columns\": [\"api_token_id\"]}, {\"name\": \"strapi_api_token_permissions_token_links_unique\", \"type\": \"unique\", \"columns\": [\"api_token_permission_id\", \"api_token_id\"]}, {\"name\": \"strapi_api_token_permissions_token_links_order_inv_fk\", \"columns\": [\"api_token_permission_order\"]}], \"foreignKeys\": [{\"name\": \"strapi_api_token_permissions_token_links_fk\", \"columns\": [\"api_token_permission_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"strapi_api_token_permissions\", \"referencedColumns\": [\"id\"]}, {\"name\": \"strapi_api_token_permissions_token_links_inv_fk\", \"columns\": [\"api_token_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"strapi_api_tokens\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"files_related_morphs\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"file_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"related_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"related_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"files_related_morphs_fk\", \"columns\": [\"file_id\"]}], \"foreignKeys\": [{\"name\": \"files_related_morphs_fk\", \"columns\": [\"file_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"files\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"files_folder_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"file_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"folder_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"file_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"files_folder_links_fk\", \"columns\": [\"file_id\"]}, {\"name\": \"files_folder_links_inv_fk\", \"columns\": [\"folder_id\"]}, {\"name\": \"files_folder_links_unique\", \"type\": \"unique\", \"columns\": [\"file_id\", \"folder_id\"]}, {\"name\": \"files_folder_links_order_inv_fk\", \"columns\": [\"file_order\"]}], \"foreignKeys\": [{\"name\": \"files_folder_links_fk\", \"columns\": [\"file_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"files\", \"referencedColumns\": [\"id\"]}, {\"name\": \"files_folder_links_inv_fk\", \"columns\": [\"folder_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"upload_folders\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"upload_folders_parent_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"folder_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"inv_folder_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"folder_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"upload_folders_parent_links_fk\", \"columns\": [\"folder_id\"]}, {\"name\": \"upload_folders_parent_links_inv_fk\", \"columns\": [\"inv_folder_id\"]}, {\"name\": \"upload_folders_parent_links_unique\", \"type\": \"unique\", \"columns\": [\"folder_id\", \"inv_folder_id\"]}, {\"name\": \"upload_folders_parent_links_order_inv_fk\", \"columns\": [\"folder_order\"]}], \"foreignKeys\": [{\"name\": \"upload_folders_parent_links_fk\", \"columns\": [\"folder_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"upload_folders\", \"referencedColumns\": [\"id\"]}, {\"name\": \"upload_folders_parent_links_inv_fk\", \"columns\": [\"inv_folder_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"upload_folders\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"strapi_paypal_paypal_payment_paypal_product_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"paypal_payment_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"paypal_product_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"paypal_payment_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"strapi_paypal_paypal_payment_paypal_product_links_fk\", \"columns\": [\"paypal_payment_id\"]}, {\"name\": \"strapi_paypal_paypal_payment_paypal_product_links_inv_fk\", \"columns\": [\"paypal_product_id\"]}, {\"name\": \"strapi_paypal_paypal_payment_paypal_product_links_unique\", \"type\": \"unique\", \"columns\": [\"paypal_payment_id\", \"paypal_product_id\"]}, {\"name\": \"strapi_paypal_paypal_payment_paypal_product_links_order_inv_fk\", \"columns\": [\"paypal_payment_order\"]}], \"foreignKeys\": [{\"name\": \"strapi_paypal_paypal_payment_paypal_product_links_fk\", \"columns\": [\"paypal_payment_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"strapi-paypal_paypal-payment\", \"referencedColumns\": [\"id\"]}, {\"name\": \"strapi_paypal_paypal_payment_paypal_product_links_inv_fk\", \"columns\": [\"paypal_product_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"strapi-paypal_paypal-product\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_permissions_role_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"permission_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"role_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"permission_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_permissions_role_links_fk\", \"columns\": [\"permission_id\"]}, {\"name\": \"up_permissions_role_links_inv_fk\", \"columns\": [\"role_id\"]}, {\"name\": \"up_permissions_role_links_unique\", \"type\": \"unique\", \"columns\": [\"permission_id\", \"role_id\"]}, {\"name\": \"up_permissions_role_links_order_inv_fk\", \"columns\": [\"permission_order\"]}], \"foreignKeys\": [{\"name\": \"up_permissions_role_links_fk\", \"columns\": [\"permission_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_permissions\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_permissions_role_links_inv_fk\", \"columns\": [\"role_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_roles\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_users_role_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"user_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"role_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"user_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_users_role_links_fk\", \"columns\": [\"user_id\"]}, {\"name\": \"up_users_role_links_inv_fk\", \"columns\": [\"role_id\"]}, {\"name\": \"up_users_role_links_unique\", \"type\": \"unique\", \"columns\": [\"user_id\", \"role_id\"]}, {\"name\": \"up_users_role_links_order_inv_fk\", \"columns\": [\"user_order\"]}], \"foreignKeys\": [{\"name\": \"up_users_role_links_fk\", \"columns\": [\"user_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_users_role_links_inv_fk\", \"columns\": [\"role_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_roles\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_users_searches_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"user_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"searche_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"searche_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_users_searches_links_fk\", \"columns\": [\"user_id\"]}, {\"name\": \"up_users_searches_links_inv_fk\", \"columns\": [\"searche_id\"]}, {\"name\": \"up_users_searches_links_unique\", \"type\": \"unique\", \"columns\": [\"user_id\", \"searche_id\"]}, {\"name\": \"up_users_searches_links_order_fk\", \"columns\": [\"searche_order\"]}], \"foreignKeys\": [{\"name\": \"up_users_searches_links_fk\", \"columns\": [\"user_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_users_searches_links_inv_fk\", \"columns\": [\"searche_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"searches\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"strapi_stripe_ss_payment_stripe_product_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"ss_payment_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"ss_product_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"ss_payment_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"strapi_stripe_ss_payment_stripe_product_links_fk\", \"columns\": [\"ss_payment_id\"]}, {\"name\": \"strapi_stripe_ss_payment_stripe_product_links_inv_fk\", \"columns\": [\"ss_product_id\"]}, {\"name\": \"strapi_stripe_ss_payment_stripe_product_links_unique\", \"type\": \"unique\", \"columns\": [\"ss_payment_id\", \"ss_product_id\"]}, {\"name\": \"strapi_stripe_ss_payment_stripe_product_links_order_inv_fk\", \"columns\": [\"ss_payment_order\"]}], \"foreignKeys\": [{\"name\": \"strapi_stripe_ss_payment_stripe_product_links_fk\", \"columns\": [\"ss_payment_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"strapi-stripe_ss-payment\", \"referencedColumns\": [\"id\"]}, {\"name\": \"strapi_stripe_ss_payment_stripe_product_links_inv_fk\", \"columns\": [\"ss_product_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"strapi-stripe_ss-product\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"abouts_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"abouts_field_index\", \"type\": null, \"columns\": [\"field\"]}, {\"name\": \"abouts_component_type_index\", \"type\": null, \"columns\": [\"component_type\"]}, {\"name\": \"abouts_entity_fk\", \"columns\": [\"entity_id\"]}, {\"name\": \"abouts_unique\", \"type\": \"unique\", \"columns\": [\"entity_id\", \"component_id\", \"field\", \"component_type\"]}], \"foreignKeys\": [{\"name\": \"abouts_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"abouts\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"aisearches_subscription_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"aisearch_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"subscription_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"aisearch_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"aisearches_subscription_links_fk\", \"columns\": [\"aisearch_id\"]}, {\"name\": \"aisearches_subscription_links_inv_fk\", \"columns\": [\"subscription_id\"]}, {\"name\": \"aisearches_subscription_links_unique\", \"type\": \"unique\", \"columns\": [\"aisearch_id\", \"subscription_id\"]}, {\"name\": \"aisearches_subscription_links_order_inv_fk\", \"columns\": [\"aisearch_order\"]}], \"foreignKeys\": [{\"name\": \"aisearches_subscription_links_fk\", \"columns\": [\"aisearch_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"aisearches\", \"referencedColumns\": [\"id\"]}, {\"name\": \"aisearches_subscription_links_inv_fk\", \"columns\": [\"subscription_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"subscriptions\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"aisearches_users_permissions_user_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"aisearch_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"user_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"aisearch_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"aisearches_users_permissions_user_links_fk\", \"columns\": [\"aisearch_id\"]}, {\"name\": \"aisearches_users_permissions_user_links_inv_fk\", \"columns\": [\"user_id\"]}, {\"name\": \"aisearches_users_permissions_user_links_unique\", \"type\": \"unique\", \"columns\": [\"aisearch_id\", \"user_id\"]}, {\"name\": \"aisearches_users_permissions_user_links_order_inv_fk\", \"columns\": [\"aisearch_order\"]}], \"foreignKeys\": [{\"name\": \"aisearches_users_permissions_user_links_fk\", \"columns\": [\"aisearch_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"aisearches\", \"referencedColumns\": [\"id\"]}, {\"name\": \"aisearches_users_permissions_user_links_inv_fk\", \"columns\": [\"user_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"blogs_bcategory_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"blog_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"bcategory_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"blog_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"blogs_bcategory_links_fk\", \"columns\": [\"blog_id\"]}, {\"name\": \"blogs_bcategory_links_inv_fk\", \"columns\": [\"bcategory_id\"]}, {\"name\": \"blogs_bcategory_links_unique\", \"type\": \"unique\", \"columns\": [\"blog_id\", \"bcategory_id\"]}, {\"name\": \"blogs_bcategory_links_order_inv_fk\", \"columns\": [\"blog_order\"]}], \"foreignKeys\": [{\"name\": \"blogs_bcategory_links_fk\", \"columns\": [\"blog_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"blogs\", \"referencedColumns\": [\"id\"]}, {\"name\": \"blogs_bcategory_links_inv_fk\", \"columns\": [\"bcategory_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"bcategories\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"downloads_recipe_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"download_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"recipe_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"downloads_recipe_links_fk\", \"columns\": [\"download_id\"]}, {\"name\": \"downloads_recipe_links_inv_fk\", \"columns\": [\"recipe_id\"]}, {\"name\": \"downloads_recipe_links_unique\", \"type\": \"unique\", \"columns\": [\"download_id\", \"recipe_id\"]}], \"foreignKeys\": [{\"name\": \"downloads_recipe_links_fk\", \"columns\": [\"download_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"downloads\", \"referencedColumns\": [\"id\"]}, {\"name\": \"downloads_recipe_links_inv_fk\", \"columns\": [\"recipe_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"recipes\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"downloads_user_id_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"download_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"user_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"download_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"downloads_user_id_links_fk\", \"columns\": [\"download_id\"]}, {\"name\": \"downloads_user_id_links_inv_fk\", \"columns\": [\"user_id\"]}, {\"name\": \"downloads_user_id_links_unique\", \"type\": \"unique\", \"columns\": [\"download_id\", \"user_id\"]}, {\"name\": \"downloads_user_id_links_order_inv_fk\", \"columns\": [\"download_order\"]}], \"foreignKeys\": [{\"name\": \"downloads_user_id_links_fk\", \"columns\": [\"download_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"downloads\", \"referencedColumns\": [\"id\"]}, {\"name\": \"downloads_user_id_links_inv_fk\", \"columns\": [\"user_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"downloads_subscription_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"download_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"subscription_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"downloads_subscription_links_fk\", \"columns\": [\"download_id\"]}, {\"name\": \"downloads_subscription_links_inv_fk\", \"columns\": [\"subscription_id\"]}, {\"name\": \"downloads_subscription_links_unique\", \"type\": \"unique\", \"columns\": [\"download_id\", \"subscription_id\"]}], \"foreignKeys\": [{\"name\": \"downloads_subscription_links_fk\", \"columns\": [\"download_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"downloads\", \"referencedColumns\": [\"id\"]}, {\"name\": \"downloads_subscription_links_inv_fk\", \"columns\": [\"subscription_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"subscriptions\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"footers_pages_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"footer_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"page_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"page_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"footers_pages_links_fk\", \"columns\": [\"footer_id\"]}, {\"name\": \"footers_pages_links_inv_fk\", \"columns\": [\"page_id\"]}, {\"name\": \"footers_pages_links_unique\", \"type\": \"unique\", \"columns\": [\"footer_id\", \"page_id\"]}, {\"name\": \"footers_pages_links_order_fk\", \"columns\": [\"page_order\"]}], \"foreignKeys\": [{\"name\": \"footers_pages_links_fk\", \"columns\": [\"footer_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"footers\", \"referencedColumns\": [\"id\"]}, {\"name\": \"footers_pages_links_inv_fk\", \"columns\": [\"page_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"pages\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"homepages_sections_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"homepage_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"section_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"section_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"homepages_sections_links_fk\", \"columns\": [\"homepage_id\"]}, {\"name\": \"homepages_sections_links_inv_fk\", \"columns\": [\"section_id\"]}, {\"name\": \"homepages_sections_links_unique\", \"type\": \"unique\", \"columns\": [\"homepage_id\", \"section_id\"]}, {\"name\": \"homepages_sections_links_order_fk\", \"columns\": [\"section_order\"]}], \"foreignKeys\": [{\"name\": \"homepages_sections_links_fk\", \"columns\": [\"homepage_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"homepages\", \"referencedColumns\": [\"id\"]}, {\"name\": \"homepages_sections_links_inv_fk\", \"columns\": [\"section_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"sections\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"plans_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"plans_field_index\", \"type\": null, \"columns\": [\"field\"]}, {\"name\": \"plans_component_type_index\", \"type\": null, \"columns\": [\"component_type\"]}, {\"name\": \"plans_entity_fk\", \"columns\": [\"entity_id\"]}, {\"name\": \"plans_unique\", \"type\": \"unique\", \"columns\": [\"entity_id\", \"component_id\", \"field\", \"component_type\"]}], \"foreignKeys\": [{\"name\": \"plans_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"plans\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"prints_recipe_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"print_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"recipe_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"prints_recipe_links_fk\", \"columns\": [\"print_id\"]}, {\"name\": \"prints_recipe_links_inv_fk\", \"columns\": [\"recipe_id\"]}, {\"name\": \"prints_recipe_links_unique\", \"type\": \"unique\", \"columns\": [\"print_id\", \"recipe_id\"]}], \"foreignKeys\": [{\"name\": \"prints_recipe_links_fk\", \"columns\": [\"print_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"prints\", \"referencedColumns\": [\"id\"]}, {\"name\": \"prints_recipe_links_inv_fk\", \"columns\": [\"recipe_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"recipes\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"prints_users_permissions_user_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"print_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"user_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"print_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"prints_users_permissions_user_links_fk\", \"columns\": [\"print_id\"]}, {\"name\": \"prints_users_permissions_user_links_inv_fk\", \"columns\": [\"user_id\"]}, {\"name\": \"prints_users_permissions_user_links_unique\", \"type\": \"unique\", \"columns\": [\"print_id\", \"user_id\"]}, {\"name\": \"prints_users_permissions_user_links_order_inv_fk\", \"columns\": [\"print_order\"]}], \"foreignKeys\": [{\"name\": \"prints_users_permissions_user_links_fk\", \"columns\": [\"print_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"prints\", \"referencedColumns\": [\"id\"]}, {\"name\": \"prints_users_permissions_user_links_inv_fk\", \"columns\": [\"user_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"recipes_sub_category_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"recipe_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"sub_category_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"recipe_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"recipes_sub_category_links_fk\", \"columns\": [\"recipe_id\"]}, {\"name\": \"recipes_sub_category_links_inv_fk\", \"columns\": [\"sub_category_id\"]}, {\"name\": \"recipes_sub_category_links_unique\", \"type\": \"unique\", \"columns\": [\"recipe_id\", \"sub_category_id\"]}, {\"name\": \"recipes_sub_category_links_order_inv_fk\", \"columns\": [\"recipe_order\"]}], \"foreignKeys\": [{\"name\": \"recipes_sub_category_links_fk\", \"columns\": [\"recipe_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"recipes\", \"referencedColumns\": [\"id\"]}, {\"name\": \"recipes_sub_category_links_inv_fk\", \"columns\": [\"sub_category_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"sub_categories\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"recipes_category_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"recipe_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"category_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"recipe_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"recipes_category_links_fk\", \"columns\": [\"recipe_id\"]}, {\"name\": \"recipes_category_links_inv_fk\", \"columns\": [\"category_id\"]}, {\"name\": \"recipes_category_links_unique\", \"type\": \"unique\", \"columns\": [\"recipe_id\", \"category_id\"]}, {\"name\": \"recipes_category_links_order_inv_fk\", \"columns\": [\"recipe_order\"]}], \"foreignKeys\": [{\"name\": \"recipes_category_links_fk\", \"columns\": [\"recipe_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"recipes\", \"referencedColumns\": [\"id\"]}, {\"name\": \"recipes_category_links_inv_fk\", \"columns\": [\"category_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"categories\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"saves_recipe_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"save_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"recipe_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"saves_recipe_links_fk\", \"columns\": [\"save_id\"]}, {\"name\": \"saves_recipe_links_inv_fk\", \"columns\": [\"recipe_id\"]}, {\"name\": \"saves_recipe_links_unique\", \"type\": \"unique\", \"columns\": [\"save_id\", \"recipe_id\"]}], \"foreignKeys\": [{\"name\": \"saves_recipe_links_fk\", \"columns\": [\"save_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"saves\", \"referencedColumns\": [\"id\"]}, {\"name\": \"saves_recipe_links_inv_fk\", \"columns\": [\"recipe_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"recipes\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"saves_user_id_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"save_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"user_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"save_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"saves_user_id_links_fk\", \"columns\": [\"save_id\"]}, {\"name\": \"saves_user_id_links_inv_fk\", \"columns\": [\"user_id\"]}, {\"name\": \"saves_user_id_links_unique\", \"type\": \"unique\", \"columns\": [\"save_id\", \"user_id\"]}, {\"name\": \"saves_user_id_links_order_inv_fk\", \"columns\": [\"save_order\"]}], \"foreignKeys\": [{\"name\": \"saves_user_id_links_fk\", \"columns\": [\"save_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"saves\", \"referencedColumns\": [\"id\"]}, {\"name\": \"saves_user_id_links_inv_fk\", \"columns\": [\"user_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"saves_subscription_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"save_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"subscription_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"saves_subscription_links_fk\", \"columns\": [\"save_id\"]}, {\"name\": \"saves_subscription_links_inv_fk\", \"columns\": [\"subscription_id\"]}, {\"name\": \"saves_subscription_links_unique\", \"type\": \"unique\", \"columns\": [\"save_id\", \"subscription_id\"]}], \"foreignKeys\": [{\"name\": \"saves_subscription_links_fk\", \"columns\": [\"save_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"saves\", \"referencedColumns\": [\"id\"]}, {\"name\": \"saves_subscription_links_inv_fk\", \"columns\": [\"subscription_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"subscriptions\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"searches_users_permissions_user_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"searche_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"user_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"searche_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"searches_users_permissions_user_links_fk\", \"columns\": [\"searche_id\"]}, {\"name\": \"searches_users_permissions_user_links_inv_fk\", \"columns\": [\"user_id\"]}, {\"name\": \"searches_users_permissions_user_links_unique\", \"type\": \"unique\", \"columns\": [\"searche_id\", \"user_id\"]}, {\"name\": \"searches_users_permissions_user_links_order_inv_fk\", \"columns\": [\"searche_order\"]}], \"foreignKeys\": [{\"name\": \"searches_users_permissions_user_links_fk\", \"columns\": [\"searche_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"searches\", \"referencedColumns\": [\"id\"]}, {\"name\": \"searches_users_permissions_user_links_inv_fk\", \"columns\": [\"user_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"searches_user_id_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"searche_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"user_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"searche_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"searches_user_id_links_fk\", \"columns\": [\"searche_id\"]}, {\"name\": \"searches_user_id_links_inv_fk\", \"columns\": [\"user_id\"]}, {\"name\": \"searches_user_id_links_unique\", \"type\": \"unique\", \"columns\": [\"searche_id\", \"user_id\"]}, {\"name\": \"searches_user_id_links_order_inv_fk\", \"columns\": [\"searche_order\"]}], \"foreignKeys\": [{\"name\": \"searches_user_id_links_fk\", \"columns\": [\"searche_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"searches\", \"referencedColumns\": [\"id\"]}, {\"name\": \"searches_user_id_links_inv_fk\", \"columns\": [\"user_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"searches_subscription_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"searche_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"subscription_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"searches_subscription_links_fk\", \"columns\": [\"searche_id\"]}, {\"name\": \"searches_subscription_links_inv_fk\", \"columns\": [\"subscription_id\"]}, {\"name\": \"searches_subscription_links_unique\", \"type\": \"unique\", \"columns\": [\"searche_id\", \"subscription_id\"]}], \"foreignKeys\": [{\"name\": \"searches_subscription_links_fk\", \"columns\": [\"searche_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"searches\", \"referencedColumns\": [\"id\"]}, {\"name\": \"searches_subscription_links_inv_fk\", \"columns\": [\"subscription_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"subscriptions\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"sections_recipes_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"section_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"recipe_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"recipe_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"sections_recipes_links_fk\", \"columns\": [\"section_id\"]}, {\"name\": \"sections_recipes_links_inv_fk\", \"columns\": [\"recipe_id\"]}, {\"name\": \"sections_recipes_links_unique\", \"type\": \"unique\", \"columns\": [\"section_id\", \"recipe_id\"]}, {\"name\": \"sections_recipes_links_order_fk\", \"columns\": [\"recipe_order\"]}], \"foreignKeys\": [{\"name\": \"sections_recipes_links_fk\", \"columns\": [\"section_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"sections\", \"referencedColumns\": [\"id\"]}, {\"name\": \"sections_recipes_links_inv_fk\", \"columns\": [\"recipe_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"recipes\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"sub_categories_category_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"sub_category_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"category_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"sub_category_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"sub_categories_category_links_fk\", \"columns\": [\"sub_category_id\"]}, {\"name\": \"sub_categories_category_links_inv_fk\", \"columns\": [\"category_id\"]}, {\"name\": \"sub_categories_category_links_unique\", \"type\": \"unique\", \"columns\": [\"sub_category_id\", \"category_id\"]}, {\"name\": \"sub_categories_category_links_order_inv_fk\", \"columns\": [\"sub_category_order\"]}], \"foreignKeys\": [{\"name\": \"sub_categories_category_links_fk\", \"columns\": [\"sub_category_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"sub_categories\", \"referencedColumns\": [\"id\"]}, {\"name\": \"sub_categories_category_links_inv_fk\", \"columns\": [\"category_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"categories\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"subscriptions_users_permissions_user_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"subscription_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"user_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"subscription_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"subscriptions_users_permissions_user_links_fk\", \"columns\": [\"subscription_id\"]}, {\"name\": \"subscriptions_users_permissions_user_links_inv_fk\", \"columns\": [\"user_id\"]}, {\"name\": \"subscriptions_users_permissions_user_links_unique\", \"type\": \"unique\", \"columns\": [\"subscription_id\", \"user_id\"]}, {\"name\": \"subscriptions_users_permissions_user_links_order_inv_fk\", \"columns\": [\"subscription_order\"]}], \"foreignKeys\": [{\"name\": \"subscriptions_users_permissions_user_links_fk\", \"columns\": [\"subscription_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"subscriptions\", \"referencedColumns\": [\"id\"]}, {\"name\": \"subscriptions_users_permissions_user_links_inv_fk\", \"columns\": [\"user_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"subscriptions_plan_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"subscription_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"plan_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"subscriptions_plan_links_fk\", \"columns\": [\"subscription_id\"]}, {\"name\": \"subscriptions_plan_links_inv_fk\", \"columns\": [\"plan_id\"]}, {\"name\": \"subscriptions_plan_links_unique\", \"type\": \"unique\", \"columns\": [\"subscription_id\", \"plan_id\"]}], \"foreignKeys\": [{\"name\": \"subscriptions_plan_links_fk\", \"columns\": [\"subscription_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"subscriptions\", \"referencedColumns\": [\"id\"]}, {\"name\": \"subscriptions_plan_links_inv_fk\", \"columns\": [\"plan_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"plans\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"subscriptions_upgraded_to_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"subscription_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"inv_subscription_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"subscriptions_upgraded_to_links_fk\", \"columns\": [\"subscription_id\"]}, {\"name\": \"subscriptions_upgraded_to_links_inv_fk\", \"columns\": [\"inv_subscription_id\"]}, {\"name\": \"subscriptions_upgraded_to_links_unique\", \"type\": \"unique\", \"columns\": [\"subscription_id\", \"inv_subscription_id\"]}], \"foreignKeys\": [{\"name\": \"subscriptions_upgraded_to_links_fk\", \"columns\": [\"subscription_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"subscriptions\", \"referencedColumns\": [\"id\"]}, {\"name\": \"subscriptions_upgraded_to_links_inv_fk\", \"columns\": [\"inv_subscription_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"subscriptions\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"wishlists_users_permissions_user_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"wishlist_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"user_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"wishlist_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"wishlists_users_permissions_user_links_fk\", \"columns\": [\"wishlist_id\"]}, {\"name\": \"wishlists_users_permissions_user_links_inv_fk\", \"columns\": [\"user_id\"]}, {\"name\": \"wishlists_users_permissions_user_links_unique\", \"type\": \"unique\", \"columns\": [\"wishlist_id\", \"user_id\"]}, {\"name\": \"wishlists_users_permissions_user_links_order_inv_fk\", \"columns\": [\"wishlist_order\"]}], \"foreignKeys\": [{\"name\": \"wishlists_users_permissions_user_links_fk\", \"columns\": [\"wishlist_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"wishlists\", \"referencedColumns\": [\"id\"]}, {\"name\": \"wishlists_users_permissions_user_links_inv_fk\", \"columns\": [\"user_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"wishlists_recipes_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"wishlist_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"recipe_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"recipe_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"wishlists_recipes_links_fk\", \"columns\": [\"wishlist_id\"]}, {\"name\": \"wishlists_recipes_links_inv_fk\", \"columns\": [\"recipe_id\"]}, {\"name\": \"wishlists_recipes_links_unique\", \"type\": \"unique\", \"columns\": [\"wishlist_id\", \"recipe_id\"]}, {\"name\": \"wishlists_recipes_links_order_fk\", \"columns\": [\"recipe_order\"]}], \"foreignKeys\": [{\"name\": \"wishlists_recipes_links_fk\", \"columns\": [\"wishlist_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"wishlists\", \"referencedColumns\": [\"id\"]}, {\"name\": \"wishlists_recipes_links_inv_fk\", \"columns\": [\"recipe_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"recipes\", \"referencedColumns\": [\"id\"]}]}]}', '2023-03-18 12:38:58', 'fde08cc97248dae2503bccee6a51bd41');

-- --------------------------------------------------------

--
-- Table structure for table `strapi_ee_store_settings`
--

CREATE TABLE `strapi_ee_store_settings` (
  `id` int UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `value` longtext COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_migrations`
--

CREATE TABLE `strapi_migrations` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_paypal_paypal_payment_paypal_product_links`
--

CREATE TABLE `strapi_paypal_paypal_payment_paypal_product_links` (
  `id` int UNSIGNED NOT NULL,
  `paypal_payment_id` int UNSIGNED DEFAULT NULL,
  `paypal_product_id` int UNSIGNED DEFAULT NULL,
  `paypal_payment_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_stripe_ss_payment_stripe_product_links`
--

CREATE TABLE `strapi_stripe_ss_payment_stripe_product_links` (
  `id` int UNSIGNED NOT NULL,
  `ss_payment_id` int UNSIGNED DEFAULT NULL,
  `ss_product_id` int UNSIGNED DEFAULT NULL,
  `ss_payment_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_webhooks`
--

CREATE TABLE `strapi_webhooks` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `url` longtext COLLATE utf8mb4_general_ci,
  `headers` json DEFAULT NULL,
  `events` json DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` int UNSIGNED NOT NULL,
  `subscribed_at` date DEFAULT NULL,
  `days` int DEFAULT NULL,
  `expires` date DEFAULT NULL,
  `amount_paid` int DEFAULT NULL,
  `saves` int DEFAULT NULL,
  `searches` int DEFAULT NULL,
  `downloads` int DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `refund_requested` tinyint(1) DEFAULT NULL,
  `refunded` tinyint(1) DEFAULT NULL,
  `refund_rejected` tinyint(1) DEFAULT NULL,
  `refund_msg` longtext COLLATE utf8mb4_general_ci,
  `unsubscribe_msg` longtext COLLATE utf8mb4_general_ci,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `subscribed_at`, `days`, `expires`, `amount_paid`, `saves`, `searches`, `downloads`, `active`, `refund_requested`, `refunded`, `refund_rejected`, `refund_msg`, `unsubscribe_msg`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, '2023-03-09', 20, '2023-03-11', 3000, 20, 23, 500, 1, 0, 0, 0, NULL, NULL, '2023-03-17 21:19:20.293000', '2023-03-17 21:19:20.293000', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions_plan_links`
--

CREATE TABLE `subscriptions_plan_links` (
  `id` int UNSIGNED NOT NULL,
  `subscription_id` int UNSIGNED DEFAULT NULL,
  `plan_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subscriptions_plan_links`
--

INSERT INTO `subscriptions_plan_links` (`id`, `subscription_id`, `plan_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions_upgraded_to_links`
--

CREATE TABLE `subscriptions_upgraded_to_links` (
  `id` int UNSIGNED NOT NULL,
  `subscription_id` int UNSIGNED DEFAULT NULL,
  `inv_subscription_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions_users_permissions_user_links`
--

CREATE TABLE `subscriptions_users_permissions_user_links` (
  `id` int UNSIGNED NOT NULL,
  `subscription_id` int UNSIGNED DEFAULT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `subscription_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subscriptions_users_permissions_user_links`
--

INSERT INTO `subscriptions_users_permissions_user_links` (`id`, `subscription_id`, `user_id`, `subscription_order`) VALUES
(1, 1, 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sub_title` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `title`, `sub_title`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Breakfast', NULL, '2023-02-04 19:09:43.942000', '2023-02-04 19:13:10.924000', '2023-02-04 19:09:44.329000', 1, 1),
(2, 'Dinners', NULL, '2023-02-04 19:10:03.744000', '2023-02-04 19:13:53.123000', '2023-02-04 19:10:04.140000', 1, 1),
(3, 'AI', 'AI generated recipes', '2023-03-09 17:19:30.910000', '2023-03-09 17:19:35.837000', '2023-03-09 17:19:32.298000', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories_category_links`
--

CREATE TABLE `sub_categories_category_links` (
  `id` int UNSIGNED NOT NULL,
  `sub_category_id` int UNSIGNED DEFAULT NULL,
  `category_id` int UNSIGNED DEFAULT NULL,
  `sub_category_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sub_categories_category_links`
--

INSERT INTO `sub_categories_category_links` (`id`, `sub_category_id`, `category_id`, `sub_category_order`) VALUES
(2, 2, 2, 1),
(3, 1, 2, 2),
(4, 3, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `upload_folders`
--

CREATE TABLE `upload_folders` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `path_id` int DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `upload_folders`
--

INSERT INTO `upload_folders` (`id`, `name`, `path_id`, `path`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'API Uploads', 1, '/1', '2023-03-12 10:41:23.914000', '2023-03-12 10:41:23.914000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `upload_folders_parent_links`
--

CREATE TABLE `upload_folders_parent_links` (
  `id` int UNSIGNED NOT NULL,
  `folder_id` int UNSIGNED DEFAULT NULL,
  `inv_folder_id` int UNSIGNED DEFAULT NULL,
  `folder_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `up_permissions`
--

CREATE TABLE `up_permissions` (
  `id` int UNSIGNED NOT NULL,
  `action` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `up_permissions`
--

INSERT INTO `up_permissions` (`id`, `action`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'plugin::users-permissions.user.me', '2023-02-02 18:13:15.491000', '2023-02-02 18:13:15.491000', NULL, NULL),
(2, 'plugin::users-permissions.auth.changePassword', '2023-02-02 18:13:15.491000', '2023-02-02 18:13:15.491000', NULL, NULL),
(3, 'plugin::users-permissions.auth.callback', '2023-02-02 18:13:15.500000', '2023-02-02 18:13:15.500000', NULL, NULL),
(4, 'plugin::users-permissions.auth.connect', '2023-02-02 18:13:15.500000', '2023-02-02 18:13:15.500000', NULL, NULL),
(5, 'plugin::users-permissions.auth.forgotPassword', '2023-02-02 18:13:15.500000', '2023-02-02 18:13:15.500000', NULL, NULL),
(6, 'plugin::users-permissions.auth.resetPassword', '2023-02-02 18:13:15.500000', '2023-02-02 18:13:15.500000', NULL, NULL),
(7, 'plugin::users-permissions.auth.register', '2023-02-02 18:13:15.500000', '2023-02-02 18:13:15.500000', NULL, NULL),
(8, 'plugin::users-permissions.auth.emailConfirmation', '2023-02-02 18:13:15.500000', '2023-02-02 18:13:15.500000', NULL, NULL),
(9, 'plugin::users-permissions.auth.sendEmailConfirmation', '2023-02-02 18:13:15.500000', '2023-02-02 18:13:15.500000', NULL, NULL),
(10, 'api::section.section.find', '2023-02-04 19:39:24.946000', '2023-02-04 19:39:24.946000', NULL, NULL),
(11, 'api::section.section.findOne', '2023-02-04 19:39:24.946000', '2023-02-04 19:39:24.946000', NULL, NULL),
(12, 'api::section.section.find', '2023-02-04 19:40:29.402000', '2023-02-04 19:40:29.402000', NULL, NULL),
(13, 'api::section.section.findOne', '2023-02-04 19:40:29.402000', '2023-02-04 19:40:29.402000', NULL, NULL),
(14, 'api::category.category.find', '2023-02-04 19:44:06.516000', '2023-02-04 19:44:06.516000', NULL, NULL),
(15, 'api::category.category.findOne', '2023-02-04 19:44:06.516000', '2023-02-04 19:44:06.516000', NULL, NULL),
(16, 'api::homepage.homepage.find', '2023-02-04 19:44:12.712000', '2023-02-04 19:44:12.712000', NULL, NULL),
(17, 'api::recipe.recipe.find', '2023-02-04 19:44:19.597000', '2023-02-04 19:44:19.597000', NULL, NULL),
(18, 'api::recipe.recipe.findOne', '2023-02-04 19:44:19.597000', '2023-02-04 19:44:19.597000', NULL, NULL),
(19, 'api::sub-category.sub-category.find', '2023-02-04 19:44:22.545000', '2023-02-04 19:44:22.545000', NULL, NULL),
(20, 'api::sub-category.sub-category.findOne', '2023-02-04 19:44:22.545000', '2023-02-04 19:44:22.545000', NULL, NULL),
(21, 'api::category.category.find', '2023-02-04 19:44:52.505000', '2023-02-04 19:44:52.505000', NULL, NULL),
(22, 'api::homepage.homepage.find', '2023-02-04 19:44:52.505000', '2023-02-04 19:44:52.505000', NULL, NULL),
(23, 'api::category.category.findOne', '2023-02-04 19:44:52.505000', '2023-02-04 19:44:52.505000', NULL, NULL),
(24, 'api::recipe.recipe.find', '2023-02-04 19:44:52.505000', '2023-02-04 19:44:52.505000', NULL, NULL),
(25, 'api::recipe.recipe.findOne', '2023-02-04 19:44:52.505000', '2023-02-04 19:44:52.505000', NULL, NULL),
(26, 'api::sub-category.sub-category.find', '2023-02-04 19:44:52.505000', '2023-02-04 19:44:52.505000', NULL, NULL),
(27, 'api::sub-category.sub-category.findOne', '2023-02-04 19:44:52.505000', '2023-02-04 19:44:52.505000', NULL, NULL),
(28, 'api::about.about.find', '2023-02-15 10:29:36.983000', '2023-02-15 10:29:36.983000', NULL, NULL),
(29, 'api::about.about.find', '2023-02-15 10:29:42.472000', '2023-02-15 10:29:42.472000', NULL, NULL),
(30, 'api::footer.footer.find', '2023-02-15 10:31:57.757000', '2023-02-15 10:31:57.757000', NULL, NULL),
(31, 'api::footer.footer.find', '2023-02-15 10:32:07.385000', '2023-02-15 10:32:07.385000', NULL, NULL),
(32, 'plugin::users-permissions.auth.changePassword', '2023-02-18 19:14:06.792000', '2023-02-18 19:14:06.792000', NULL, NULL),
(33, 'api::searche.searche.find', '2023-02-18 19:16:13.137000', '2023-02-18 19:16:13.137000', NULL, NULL),
(34, 'api::searche.searche.findOne', '2023-02-18 19:16:13.137000', '2023-02-18 19:16:13.137000', NULL, NULL),
(35, 'api::searche.searche.create', '2023-02-18 19:16:13.137000', '2023-02-18 19:16:13.137000', NULL, NULL),
(36, 'api::searche.searche.update', '2023-02-18 19:24:42.649000', '2023-02-18 19:24:42.649000', NULL, NULL),
(37, 'plugin::users-permissions.user.update', '2023-02-18 19:42:50.378000', '2023-02-18 19:42:50.378000', NULL, NULL),
(38, 'api::recipe.recipe.create', '2023-02-18 19:48:50.708000', '2023-02-18 19:48:50.708000', NULL, NULL),
(39, 'api::download.download.create', '2023-02-18 20:17:34.012000', '2023-02-18 20:17:34.012000', NULL, NULL),
(40, 'api::download.download.find', '2023-02-18 20:17:34.012000', '2023-02-18 20:17:34.012000', NULL, NULL),
(41, 'api::freemium.freemium.find', '2023-02-18 20:20:09.350000', '2023-02-18 20:20:09.350000', NULL, NULL),
(42, 'api::freemium.freemium.find', '2023-02-18 20:20:14.704000', '2023-02-18 20:20:14.704000', NULL, NULL),
(43, 'api::save.save.create', '2023-02-18 20:23:14.195000', '2023-02-18 20:23:14.195000', NULL, NULL),
(44, 'api::save.save.find', '2023-02-18 20:23:14.195000', '2023-02-18 20:23:14.195000', NULL, NULL),
(45, 'api::save.save.delete', '2023-02-18 21:11:16.842000', '2023-02-18 21:11:16.842000', NULL, NULL),
(47, 'api::recipe.recipe.searchai', '2023-03-08 10:32:25.254000', '2023-03-08 10:32:25.254000', NULL, NULL),
(48, 'api::aisearch.aisearch.find', '2023-03-09 16:41:59.582000', '2023-03-09 16:41:59.582000', NULL, NULL),
(49, 'api::plan.plan.find', '2023-03-09 16:43:04.891000', '2023-03-09 16:43:04.891000', NULL, NULL),
(50, 'api::plan.plan.findOne', '2023-03-09 16:43:21.455000', '2023-03-09 16:43:21.455000', NULL, NULL),
(51, 'api::subscription.subscription.find', '2023-03-09 16:43:21.455000', '2023-03-09 16:43:21.455000', NULL, NULL),
(52, 'api::subscription.subscription.findOne', '2023-03-09 16:43:21.455000', '2023-03-09 16:43:21.455000', NULL, NULL),
(53, 'api::recipe.recipe.searchai', '2023-03-09 16:51:54.942000', '2023-03-09 16:51:54.942000', NULL, NULL),
(54, 'api::page.page.find', '2023-03-09 16:57:17.188000', '2023-03-09 16:57:17.188000', NULL, NULL),
(55, 'api::page.page.findOne', '2023-03-09 16:57:17.188000', '2023-03-09 16:57:17.188000', NULL, NULL),
(56, 'api::page.page.find', '2023-03-09 16:57:49.026000', '2023-03-09 16:57:49.026000', NULL, NULL),
(57, 'api::page.page.findOne', '2023-03-09 16:57:49.026000', '2023-03-09 16:57:49.026000', NULL, NULL),
(58, 'plugin::users-permissions.role.findOne', '2023-03-10 02:56:33.781000', '2023-03-10 02:56:33.781000', NULL, NULL),
(59, 'plugin::users-permissions.role.find', '2023-03-10 02:56:33.781000', '2023-03-10 02:56:33.781000', NULL, NULL),
(60, 'api::bcategory.bcategory.find', '2023-03-11 18:09:25.541000', '2023-03-11 18:09:25.541000', NULL, NULL),
(61, 'api::bcategory.bcategory.findOne', '2023-03-11 18:09:25.541000', '2023-03-11 18:09:25.541000', NULL, NULL),
(62, 'api::blog.blog.find', '2023-03-11 18:09:25.541000', '2023-03-11 18:09:25.541000', NULL, NULL),
(63, 'api::blog.blog.findOne', '2023-03-11 18:09:25.541000', '2023-03-11 18:09:25.541000', NULL, NULL),
(64, 'plugin::users-permissions.auth.register', '2023-03-11 19:40:34.049000', '2023-03-11 19:40:34.049000', NULL, NULL),
(65, 'plugin::email.email.send', '2023-03-11 19:45:49.164000', '2023-03-11 19:45:49.164000', NULL, NULL),
(66, 'plugin::email.email.send', '2023-03-11 19:45:54.002000', '2023-03-11 19:45:54.002000', NULL, NULL),
(67, 'api::recipe.recipe.updateprofile', '2023-03-12 08:36:59.191000', '2023-03-12 08:36:59.191000', NULL, NULL),
(68, 'plugin::upload.content-api.upload', '2023-03-12 10:41:21.404000', '2023-03-12 10:41:21.404000', NULL, NULL),
(69, 'api::subscription.subscription.consume', '2023-03-12 11:31:33.917000', '2023-03-12 11:31:33.917000', NULL, NULL),
(70, 'api::recipe.recipe.deletemyaccount', '2023-03-12 12:16:14.961000', '2023-03-12 12:16:14.961000', NULL, NULL),
(71, 'api::recipe.recipe.deletemyaccount2', '2023-03-12 12:22:59.719000', '2023-03-12 12:22:59.719000', NULL, NULL),
(72, 'api::recipe.recipe.deletemyaccount3', '2023-03-12 12:25:13.923000', '2023-03-12 12:25:13.923000', NULL, NULL),
(73, 'api::recipe.recipe.create', '2023-03-17 12:08:13.263000', '2023-03-17 12:08:13.263000', NULL, NULL),
(74, 'api::category.category.create', '2023-03-17 12:09:33.634000', '2023-03-17 12:09:33.634000', NULL, NULL),
(75, 'api::subscription.subscription.find', '2023-03-17 20:41:14.108000', '2023-03-17 20:41:14.108000', NULL, NULL),
(76, 'api::download.download.find', '2023-03-18 11:04:09.260000', '2023-03-18 11:04:09.260000', NULL, NULL),
(77, 'api::print.print.create', '2023-03-18 12:39:10.505000', '2023-03-18 12:39:10.505000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `up_permissions_role_links`
--

CREATE TABLE `up_permissions_role_links` (
  `id` int UNSIGNED NOT NULL,
  `permission_id` int UNSIGNED DEFAULT NULL,
  `role_id` int UNSIGNED DEFAULT NULL,
  `permission_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `up_permissions_role_links`
--

INSERT INTO `up_permissions_role_links` (`id`, `permission_id`, `role_id`, `permission_order`) VALUES
(1, 2, 1, 1),
(2, 1, 1, 1),
(3, 3, 2, 1),
(4, 4, 2, 1),
(5, 5, 2, 1),
(6, 6, 2, 2),
(7, 7, 2, 2),
(8, 8, 2, 2),
(9, 9, 2, 2),
(10, 11, 2, 3),
(11, 10, 2, 3),
(12, 12, 1, 2),
(13, 13, 1, 2),
(14, 14, 2, 4),
(15, 15, 2, 4),
(16, 16, 2, 5),
(17, 17, 2, 6),
(18, 18, 2, 6),
(19, 19, 2, 7),
(20, 20, 2, 7),
(21, 21, 1, 3),
(22, 22, 1, 3),
(23, 23, 1, 3),
(24, 24, 1, 3),
(25, 25, 1, 3),
(26, 26, 1, 4),
(27, 27, 1, 4),
(28, 28, 2, 8),
(29, 29, 1, 5),
(30, 30, 2, 9),
(31, 31, 1, 6),
(32, 32, 2, 10),
(33, 33, 1, 7),
(34, 34, 1, 7),
(35, 35, 1, 7),
(36, 36, 1, 8),
(37, 37, 1, 9),
(38, 38, 1, 10),
(39, 39, 1, 11),
(40, 40, 1, 11),
(41, 41, 1, 12),
(42, 42, 2, 11),
(43, 43, 1, 13),
(44, 44, 1, 13),
(45, 45, 1, 14),
(47, 47, 1, 15),
(48, 48, 1, 16),
(49, 49, 1, 17),
(50, 50, 1, 18),
(51, 51, 1, 18),
(52, 52, 1, 19),
(53, 53, 2, 12),
(54, 54, 1, 20),
(55, 55, 1, 20),
(56, 56, 2, 13),
(57, 57, 2, 13),
(58, 58, 2, 14),
(59, 59, 2, 14),
(60, 63, 2, 15),
(61, 60, 2, 15),
(62, 62, 2, 15),
(63, 61, 2, 15),
(64, 64, 1, 21),
(65, 65, 1, 22),
(66, 66, 2, 16),
(67, 67, 1, 23),
(68, 68, 1, 24),
(69, 69, 1, 25),
(70, 70, 1, 26),
(71, 71, 1, 27),
(72, 72, 1, 28),
(73, 73, 2, 17),
(74, 74, 2, 18),
(75, 75, 2, 19),
(76, 76, 2, 20),
(77, 77, 1, 29);

-- --------------------------------------------------------

--
-- Table structure for table `up_roles`
--

CREATE TABLE `up_roles` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `up_roles`
--

INSERT INTO `up_roles` (`id`, `name`, `description`, `type`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Authenticated', 'Default role given to authenticated user.', 'authenticated', '2023-02-02 18:13:15.480000', '2023-03-18 12:39:10.500000', NULL, NULL),
(2, 'Public', 'Default role given to unauthenticated user.', 'public', '2023-02-02 18:13:15.484000', '2023-03-18 11:04:09.246000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `up_users`
--

CREATE TABLE `up_users` (
  `id` int UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `reset_password_token` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `confirmation_token` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `confirmed` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `delete_reason` longtext COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `up_users`
--

INSERT INTO `up_users` (`id`, `username`, `email`, `provider`, `password`, `reset_password_token`, `confirmation_token`, `confirmed`, `blocked`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`, `fullname`, `phone`, `address`, `delete_reason`) VALUES
(1, 'mahev', 'csgenius786@gmail.com', 'local', '$2a$10$rg9Sz.cVtyZAPek5I42XzuihbzLI.h3wQmVt5gzR.R/4V.sCJS9IG', NULL, NULL, 1, 0, '2023-02-02 18:42:45.113000', '2023-02-18 19:45:22.956000', NULL, 1, NULL, NULL, NULL, NULL),
(2, 'mahev+2', 'csgenius786+2@gmail.com', 'local', '$2a$10$8mX3Zkkr/pc/ZAhVSj5.c.fo9/fCzPBsSlnMhp3WanueguS77WGaK', NULL, NULL, 1, 0, '2023-02-18 19:14:52.099000', '2023-03-12 08:37:35.400000', NULL, NULL, 'mahev', NULL, NULL, NULL),
(3, '1676734670090-mahev@gmail.com', '1676734670090-mahev@gmail.com', 'local', '$2a$10$2PTv4eTfXFFW7nkMpvl9mO6qMFRa6DwujwdV39uS2c8GuEAyjFVnq', NULL, NULL, 1, 0, '2023-02-18 20:37:53.453000', '2023-02-18 20:37:53.453000', NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'a-delete-user-1678606102475', 'a-delete-user-1678606102475@thechefsrecipes.com', 'local', '$2a$10$MT75pKz/CjvCLKWbGLh5zuTQ2QxL/449aG7Xf6ETF415wfnQ9zYEC', NULL, NULL, 1, 0, '2023-03-09 16:50:29.043000', '2023-03-12 12:28:22.485000', NULL, NULL, 'a-delete-user-1678606102475', 'a-delete-user-1678606102475', 'a-delete-user-1678606102475', 'sdf sd fsdf sdf sdf sdf dsf s'),
(5, 'mahevstark@gmail.com', 'mahevstark@gmail.com', 'local', '$2a$10$djyXePyxGlbcjUAz4FESn./gVpFWZ3aio4fHWBM5jVY/IEZcP/owy', NULL, 'e8fa128ec8227ab0dcae917e1eb76f4a4010f22b', 0, 0, '2023-03-11 19:40:04.951000', '2023-03-11 19:40:04.976000', NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'fictiondevelopers42@gmail.com', 'fictiondevelopers42@gmail.com', 'local', '$2a$10$XN/FHL70gpDqZhl47Whc6.ssWgLlAp..xxBuzsYYKQBZesXntJ/2y', NULL, '7f0a978120d418adbe4fcd68cb91b3b1f1c47d9b', 0, 0, '2023-03-11 19:41:01.796000', '2023-03-11 19:41:01.813000', NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'fictiondevelopers43@gmail.com', 'fictiondevelopers43@gmail.com', 'local', '$2a$10$c/gWCsNVogw0sr7TvBPO5.eZO19voUW2azqlZKKbPb7ehLBScXOWm', NULL, '71f3b2caddc41e34454e0a9d74dc27528d2f3cf9', 0, 0, '2023-03-11 19:43:36.586000', '2023-03-11 19:43:36.607000', NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'cheff222', 'cheff3332@gmail.com', 'local', '$2a$10$PSetkml5QU295ZgwZiGvY.VrGGS/m2wfXxWq/eykdQ3HLJrmNLoT.', NULL, '9bac65e4fe100d9fcbec136575797e5e13b79484', 0, 0, '2023-03-11 19:45:22.453000', '2023-03-11 19:45:22.475000', NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'cheff2232', 'cheff33332@gmail.com', 'local', '$2a$10$GGmCKgP6yQ2E3VnPa13fDu5vPyCFrQQ1ehEh4f/S1CrkE6HhjtA.O', NULL, 'cb9eb32e63024485b866dbeefa0a46c0c694e713', 0, 0, '2023-03-11 19:48:53.676000', '2023-03-11 19:48:53.698000', NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'cheff22323', 'cheff333332@gmail.com', 'local', '$2a$10$twRwXkiTokctJ0djz.gfCekMttUuLI9M5R8Wl7Jmyn4AFS2bC7h0i', NULL, 'f0bb1ddc3e410ef85645aaa4c60c7966a59e0b1a', 0, 0, '2023-03-11 19:49:03.484000', '2023-03-11 19:49:03.502000', NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'cheffe22323', 'cheff33e3332@gmail.com', 'local', '$2a$10$lofHDNWfcBXPv1V.zdpMGOubR7DzOEVVJLMXO5XyEWVof9Qht5Bpi', NULL, NULL, 1, 0, '2023-03-11 19:49:29.085000', '2023-03-11 19:49:29.085000', NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'chefefe22323', 'cheff33e3e332@gmail.com', 'local', '$2a$10$ZG519C3dKVnuQfav2/mDm.2JYSWF/gkVzZNIt.kdq04FDG3cY9EK.', NULL, '65720c899d47f0cff35ce68fa354a1ceddc1173f', 0, 0, '2023-03-11 19:49:41.859000', '2023-03-12 11:04:52.543000', NULL, NULL, 'mahev', 'sdfsd', 'sdfd', NULL),
(13, 'cheff@gmail.com', 'cheff@gmail.com', 'local', '$2a$10$I5dH8KDZtQtGqf3uzfSQYeLneiByFcT/JQueTNFG62ZUBeTjtQWt2', NULL, NULL, 1, 0, '2023-03-12 12:28:39.749000', '2023-03-17 12:26:49.820000', NULL, 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `up_users_role_links`
--

CREATE TABLE `up_users_role_links` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `role_id` int UNSIGNED DEFAULT NULL,
  `user_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `up_users_role_links`
--

INSERT INTO `up_users_role_links` (`id`, `user_id`, `role_id`, `user_order`) VALUES
(1, 1, 1, 1),
(2, 2, 1, 2),
(3, 3, 1, 3),
(4, 4, 1, 4),
(5, 5, 1, 5),
(6, 6, 1, 6),
(7, 7, 1, 7),
(8, 8, 1, 8),
(9, 9, 1, 9),
(10, 10, 1, 10),
(11, 11, 1, 11),
(12, 12, 1, 12),
(13, 13, 1, 13);

-- --------------------------------------------------------

--
-- Table structure for table `up_users_searches_links`
--

CREATE TABLE `up_users_searches_links` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `searche_id` int UNSIGNED DEFAULT NULL,
  `searche_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` int UNSIGNED NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wishlists_recipes_links`
--

CREATE TABLE `wishlists_recipes_links` (
  `id` int UNSIGNED NOT NULL,
  `wishlist_id` int UNSIGNED DEFAULT NULL,
  `recipe_id` int UNSIGNED DEFAULT NULL,
  `recipe_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wishlists_users_permissions_user_links`
--

CREATE TABLE `wishlists_users_permissions_user_links` (
  `id` int UNSIGNED NOT NULL,
  `wishlist_id` int UNSIGNED DEFAULT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `wishlist_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `abouts_created_by_id_fk` (`created_by_id`),
  ADD KEY `abouts_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `abouts_components`
--
ALTER TABLE `abouts_components`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `abouts_unique` (`entity_id`,`component_id`,`field`,`component_type`),
  ADD KEY `abouts_field_index` (`field`),
  ADD KEY `abouts_component_type_index` (`component_type`),
  ADD KEY `abouts_entity_fk` (`entity_id`);

--
-- Indexes for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `admin_permissions_role_links`
--
ALTER TABLE `admin_permissions_role_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_role_links_unique` (`permission_id`,`role_id`),
  ADD KEY `admin_permissions_role_links_fk` (`permission_id`),
  ADD KEY `admin_permissions_role_links_inv_fk` (`role_id`),
  ADD KEY `admin_permissions_role_links_order_inv_fk` (`permission_order`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_roles_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_roles_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_users_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_users_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `admin_users_roles_links`
--
ALTER TABLE `admin_users_roles_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_roles_links_unique` (`user_id`,`role_id`),
  ADD KEY `admin_users_roles_links_fk` (`user_id`),
  ADD KEY `admin_users_roles_links_inv_fk` (`role_id`),
  ADD KEY `admin_users_roles_links_order_fk` (`role_order`),
  ADD KEY `admin_users_roles_links_order_inv_fk` (`user_order`);

--
-- Indexes for table `aisearches`
--
ALTER TABLE `aisearches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aisearches_created_by_id_fk` (`created_by_id`),
  ADD KEY `aisearches_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `aisearches_subscription_links`
--
ALTER TABLE `aisearches_subscription_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `aisearches_subscription_links_unique` (`aisearch_id`,`subscription_id`),
  ADD KEY `aisearches_subscription_links_fk` (`aisearch_id`),
  ADD KEY `aisearches_subscription_links_inv_fk` (`subscription_id`),
  ADD KEY `aisearches_subscription_links_order_inv_fk` (`aisearch_order`);

--
-- Indexes for table `aisearches_users_permissions_user_links`
--
ALTER TABLE `aisearches_users_permissions_user_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `aisearches_users_permissions_user_links_unique` (`aisearch_id`,`user_id`),
  ADD KEY `aisearches_users_permissions_user_links_fk` (`aisearch_id`),
  ADD KEY `aisearches_users_permissions_user_links_inv_fk` (`user_id`),
  ADD KEY `aisearches_users_permissions_user_links_order_inv_fk` (`aisearch_order`);

--
-- Indexes for table `bcategories`
--
ALTER TABLE `bcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bcategories_created_by_id_fk` (`created_by_id`),
  ADD KEY `bcategories_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blogs_created_by_id_fk` (`created_by_id`),
  ADD KEY `blogs_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `blogs_bcategory_links`
--
ALTER TABLE `blogs_bcategory_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blogs_bcategory_links_unique` (`blog_id`,`bcategory_id`),
  ADD KEY `blogs_bcategory_links_fk` (`blog_id`),
  ADD KEY `blogs_bcategory_links_inv_fk` (`bcategory_id`),
  ADD KEY `blogs_bcategory_links_order_inv_fk` (`blog_order`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_created_by_id_fk` (`created_by_id`),
  ADD KEY `categories_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `components_static_about_us_circles`
--
ALTER TABLE `components_static_about_us_circles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_static_plan_benefits`
--
ALTER TABLE `components_static_plan_benefits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_static_sections`
--
ALTER TABLE `components_static_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `downloads`
--
ALTER TABLE `downloads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `downloads_created_by_id_fk` (`created_by_id`),
  ADD KEY `downloads_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `downloads_recipe_links`
--
ALTER TABLE `downloads_recipe_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `downloads_recipe_links_unique` (`download_id`,`recipe_id`),
  ADD KEY `downloads_recipe_links_fk` (`download_id`),
  ADD KEY `downloads_recipe_links_inv_fk` (`recipe_id`);

--
-- Indexes for table `downloads_subscription_links`
--
ALTER TABLE `downloads_subscription_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `downloads_subscription_links_unique` (`download_id`,`subscription_id`),
  ADD KEY `downloads_subscription_links_fk` (`download_id`),
  ADD KEY `downloads_subscription_links_inv_fk` (`subscription_id`);

--
-- Indexes for table `downloads_user_id_links`
--
ALTER TABLE `downloads_user_id_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `downloads_user_id_links_unique` (`download_id`,`user_id`),
  ADD KEY `downloads_user_id_links_fk` (`download_id`),
  ADD KEY `downloads_user_id_links_inv_fk` (`user_id`),
  ADD KEY `downloads_user_id_links_order_inv_fk` (`download_order`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `upload_files_folder_path_index` (`folder_path`),
  ADD KEY `upload_files_created_at_index` (`created_at`),
  ADD KEY `upload_files_updated_at_index` (`updated_at`),
  ADD KEY `upload_files_name_index` (`name`),
  ADD KEY `upload_files_size_index` (`size`),
  ADD KEY `upload_files_ext_index` (`ext`),
  ADD KEY `files_created_by_id_fk` (`created_by_id`),
  ADD KEY `files_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `files_folder_links`
--
ALTER TABLE `files_folder_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `files_folder_links_unique` (`file_id`,`folder_id`),
  ADD KEY `files_folder_links_fk` (`file_id`),
  ADD KEY `files_folder_links_inv_fk` (`folder_id`),
  ADD KEY `files_folder_links_order_inv_fk` (`file_order`);

--
-- Indexes for table `files_related_morphs`
--
ALTER TABLE `files_related_morphs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_related_morphs_fk` (`file_id`);

--
-- Indexes for table `footers`
--
ALTER TABLE `footers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `footers_created_by_id_fk` (`created_by_id`),
  ADD KEY `footers_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `footers_pages_links`
--
ALTER TABLE `footers_pages_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `footers_pages_links_unique` (`footer_id`,`page_id`),
  ADD KEY `footers_pages_links_fk` (`footer_id`),
  ADD KEY `footers_pages_links_inv_fk` (`page_id`),
  ADD KEY `footers_pages_links_order_fk` (`page_order`);

--
-- Indexes for table `freemiums`
--
ALTER TABLE `freemiums`
  ADD PRIMARY KEY (`id`),
  ADD KEY `freemiums_created_by_id_fk` (`created_by_id`),
  ADD KEY `freemiums_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `homepages`
--
ALTER TABLE `homepages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `homepages_created_by_id_fk` (`created_by_id`),
  ADD KEY `homepages_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `homepages_sections_links`
--
ALTER TABLE `homepages_sections_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `homepages_sections_links_unique` (`homepage_id`,`section_id`),
  ADD KEY `homepages_sections_links_fk` (`homepage_id`),
  ADD KEY `homepages_sections_links_inv_fk` (`section_id`),
  ADD KEY `homepages_sections_links_order_fk` (`section_order`);

--
-- Indexes for table `i18n_locale`
--
ALTER TABLE `i18n_locale`
  ADD PRIMARY KEY (`id`),
  ADD KEY `i18n_locale_created_by_id_fk` (`created_by_id`),
  ADD KEY `i18n_locale_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `leads`
--
ALTER TABLE `leads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leads_created_by_id_fk` (`created_by_id`),
  ADD KEY `leads_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pages_created_by_id_fk` (`created_by_id`),
  ADD KEY `pages_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `pdfs`
--
ALTER TABLE `pdfs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pdfs_created_by_id_fk` (`created_by_id`),
  ADD KEY `pdfs_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `plans_created_by_id_fk` (`created_by_id`),
  ADD KEY `plans_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `plans_components`
--
ALTER TABLE `plans_components`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `plans_unique` (`entity_id`,`component_id`,`field`,`component_type`),
  ADD KEY `plans_field_index` (`field`),
  ADD KEY `plans_component_type_index` (`component_type`),
  ADD KEY `plans_entity_fk` (`entity_id`);

--
-- Indexes for table `prints`
--
ALTER TABLE `prints`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prints_created_by_id_fk` (`created_by_id`),
  ADD KEY `prints_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `prints_recipe_links`
--
ALTER TABLE `prints_recipe_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `prints_recipe_links_unique` (`print_id`,`recipe_id`),
  ADD KEY `prints_recipe_links_fk` (`print_id`),
  ADD KEY `prints_recipe_links_inv_fk` (`recipe_id`);

--
-- Indexes for table `prints_users_permissions_user_links`
--
ALTER TABLE `prints_users_permissions_user_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `prints_users_permissions_user_links_unique` (`print_id`,`user_id`),
  ADD KEY `prints_users_permissions_user_links_fk` (`print_id`),
  ADD KEY `prints_users_permissions_user_links_inv_fk` (`user_id`),
  ADD KEY `prints_users_permissions_user_links_order_inv_fk` (`print_order`);

--
-- Indexes for table `recipes`
--
ALTER TABLE `recipes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `recipes_created_by_id_fk` (`created_by_id`),
  ADD KEY `recipes_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `recipes_category_links`
--
ALTER TABLE `recipes_category_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `recipes_category_links_unique` (`recipe_id`,`category_id`),
  ADD KEY `recipes_category_links_fk` (`recipe_id`),
  ADD KEY `recipes_category_links_inv_fk` (`category_id`),
  ADD KEY `recipes_category_links_order_inv_fk` (`recipe_order`);

--
-- Indexes for table `recipes_sub_category_links`
--
ALTER TABLE `recipes_sub_category_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `recipes_sub_category_links_unique` (`recipe_id`,`sub_category_id`),
  ADD KEY `recipes_sub_category_links_fk` (`recipe_id`),
  ADD KEY `recipes_sub_category_links_inv_fk` (`sub_category_id`),
  ADD KEY `recipes_sub_category_links_order_inv_fk` (`recipe_order`);

--
-- Indexes for table `saves`
--
ALTER TABLE `saves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `saves_created_by_id_fk` (`created_by_id`),
  ADD KEY `saves_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `saves_recipe_links`
--
ALTER TABLE `saves_recipe_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `saves_recipe_links_unique` (`save_id`,`recipe_id`),
  ADD KEY `saves_recipe_links_fk` (`save_id`),
  ADD KEY `saves_recipe_links_inv_fk` (`recipe_id`);

--
-- Indexes for table `saves_subscription_links`
--
ALTER TABLE `saves_subscription_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `saves_subscription_links_unique` (`save_id`,`subscription_id`),
  ADD KEY `saves_subscription_links_fk` (`save_id`),
  ADD KEY `saves_subscription_links_inv_fk` (`subscription_id`);

--
-- Indexes for table `saves_user_id_links`
--
ALTER TABLE `saves_user_id_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `saves_user_id_links_unique` (`save_id`,`user_id`),
  ADD KEY `saves_user_id_links_fk` (`save_id`),
  ADD KEY `saves_user_id_links_inv_fk` (`user_id`),
  ADD KEY `saves_user_id_links_order_inv_fk` (`save_order`);

--
-- Indexes for table `searches`
--
ALTER TABLE `searches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `searches_created_by_id_fk` (`created_by_id`),
  ADD KEY `searches_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `searches_subscription_links`
--
ALTER TABLE `searches_subscription_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `searches_subscription_links_unique` (`searche_id`,`subscription_id`),
  ADD KEY `searches_subscription_links_fk` (`searche_id`),
  ADD KEY `searches_subscription_links_inv_fk` (`subscription_id`);

--
-- Indexes for table `searches_users_permissions_user_links`
--
ALTER TABLE `searches_users_permissions_user_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `searches_users_permissions_user_links_unique` (`searche_id`,`user_id`),
  ADD KEY `searches_users_permissions_user_links_fk` (`searche_id`),
  ADD KEY `searches_users_permissions_user_links_inv_fk` (`user_id`),
  ADD KEY `searches_users_permissions_user_links_order_inv_fk` (`searche_order`);

--
-- Indexes for table `searches_user_id_links`
--
ALTER TABLE `searches_user_id_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `searches_user_id_links_unique` (`searche_id`,`user_id`),
  ADD KEY `searches_user_id_links_fk` (`searche_id`),
  ADD KEY `searches_user_id_links_inv_fk` (`user_id`),
  ADD KEY `searches_user_id_links_order_inv_fk` (`searche_order`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sections_created_by_id_fk` (`created_by_id`),
  ADD KEY `sections_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `sections_recipes_links`
--
ALTER TABLE `sections_recipes_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sections_recipes_links_unique` (`section_id`,`recipe_id`),
  ADD KEY `sections_recipes_links_fk` (`section_id`),
  ADD KEY `sections_recipes_links_inv_fk` (`recipe_id`),
  ADD KEY `sections_recipes_links_order_fk` (`recipe_order`);

--
-- Indexes for table `strapi-paypal_paypal-payment`
--
ALTER TABLE `strapi-paypal_paypal-payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi-paypal_paypal-payment_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi-paypal_paypal-payment_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `strapi-paypal_paypal-product`
--
ALTER TABLE `strapi-paypal_paypal-product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `strapi-paypal_paypal-product_slug_unique` (`slug`),
  ADD KEY `strapi-paypal_paypal-product_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi-paypal_paypal-product_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `strapi-stripe_ss-payment`
--
ALTER TABLE `strapi-stripe_ss-payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi-stripe_ss-payment_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi-stripe_ss-payment_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `strapi-stripe_ss-product`
--
ALTER TABLE `strapi-stripe_ss-product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `strapi-stripe_ss-product_slug_unique` (`slug`),
  ADD KEY `strapi-stripe_ss-product_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi-stripe_ss-product_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_api_tokens_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_api_tokens_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `strapi_api_token_permissions`
--
ALTER TABLE `strapi_api_token_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_api_token_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_api_token_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `strapi_api_token_permissions_token_links`
--
ALTER TABLE `strapi_api_token_permissions_token_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `strapi_api_token_permissions_token_links_unique` (`api_token_permission_id`,`api_token_id`),
  ADD KEY `strapi_api_token_permissions_token_links_fk` (`api_token_permission_id`),
  ADD KEY `strapi_api_token_permissions_token_links_inv_fk` (`api_token_id`),
  ADD KEY `strapi_api_token_permissions_token_links_order_inv_fk` (`api_token_permission_order`);

--
-- Indexes for table `strapi_core_store_settings`
--
ALTER TABLE `strapi_core_store_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strapi_database_schema`
--
ALTER TABLE `strapi_database_schema`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strapi_ee_store_settings`
--
ALTER TABLE `strapi_ee_store_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strapi_migrations`
--
ALTER TABLE `strapi_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strapi_paypal_paypal_payment_paypal_product_links`
--
ALTER TABLE `strapi_paypal_paypal_payment_paypal_product_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `strapi_paypal_paypal_payment_paypal_product_links_unique` (`paypal_payment_id`,`paypal_product_id`),
  ADD KEY `strapi_paypal_paypal_payment_paypal_product_links_fk` (`paypal_payment_id`),
  ADD KEY `strapi_paypal_paypal_payment_paypal_product_links_inv_fk` (`paypal_product_id`),
  ADD KEY `strapi_paypal_paypal_payment_paypal_product_links_order_inv_fk` (`paypal_payment_order`);

--
-- Indexes for table `strapi_stripe_ss_payment_stripe_product_links`
--
ALTER TABLE `strapi_stripe_ss_payment_stripe_product_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `strapi_stripe_ss_payment_stripe_product_links_unique` (`ss_payment_id`,`ss_product_id`),
  ADD KEY `strapi_stripe_ss_payment_stripe_product_links_fk` (`ss_payment_id`),
  ADD KEY `strapi_stripe_ss_payment_stripe_product_links_inv_fk` (`ss_product_id`),
  ADD KEY `strapi_stripe_ss_payment_stripe_product_links_order_inv_fk` (`ss_payment_order`);

--
-- Indexes for table `strapi_webhooks`
--
ALTER TABLE `strapi_webhooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscriptions_created_by_id_fk` (`created_by_id`),
  ADD KEY `subscriptions_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `subscriptions_plan_links`
--
ALTER TABLE `subscriptions_plan_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscriptions_plan_links_unique` (`subscription_id`,`plan_id`),
  ADD KEY `subscriptions_plan_links_fk` (`subscription_id`),
  ADD KEY `subscriptions_plan_links_inv_fk` (`plan_id`);

--
-- Indexes for table `subscriptions_upgraded_to_links`
--
ALTER TABLE `subscriptions_upgraded_to_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscriptions_upgraded_to_links_unique` (`subscription_id`,`inv_subscription_id`),
  ADD KEY `subscriptions_upgraded_to_links_fk` (`subscription_id`),
  ADD KEY `subscriptions_upgraded_to_links_inv_fk` (`inv_subscription_id`);

--
-- Indexes for table `subscriptions_users_permissions_user_links`
--
ALTER TABLE `subscriptions_users_permissions_user_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscriptions_users_permissions_user_links_unique` (`subscription_id`,`user_id`),
  ADD KEY `subscriptions_users_permissions_user_links_fk` (`subscription_id`),
  ADD KEY `subscriptions_users_permissions_user_links_inv_fk` (`user_id`),
  ADD KEY `subscriptions_users_permissions_user_links_order_inv_fk` (`subscription_order`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_categories_created_by_id_fk` (`created_by_id`),
  ADD KEY `sub_categories_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `sub_categories_category_links`
--
ALTER TABLE `sub_categories_category_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sub_categories_category_links_unique` (`sub_category_id`,`category_id`),
  ADD KEY `sub_categories_category_links_fk` (`sub_category_id`),
  ADD KEY `sub_categories_category_links_inv_fk` (`category_id`),
  ADD KEY `sub_categories_category_links_order_inv_fk` (`sub_category_order`);

--
-- Indexes for table `upload_folders`
--
ALTER TABLE `upload_folders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `upload_folders_path_id_index` (`path_id`),
  ADD UNIQUE KEY `upload_folders_path_index` (`path`),
  ADD KEY `upload_folders_created_by_id_fk` (`created_by_id`),
  ADD KEY `upload_folders_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `upload_folders_parent_links`
--
ALTER TABLE `upload_folders_parent_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `upload_folders_parent_links_unique` (`folder_id`,`inv_folder_id`),
  ADD KEY `upload_folders_parent_links_fk` (`folder_id`),
  ADD KEY `upload_folders_parent_links_inv_fk` (`inv_folder_id`),
  ADD KEY `upload_folders_parent_links_order_inv_fk` (`folder_order`);

--
-- Indexes for table `up_permissions`
--
ALTER TABLE `up_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `up_permissions_role_links`
--
ALTER TABLE `up_permissions_role_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `up_permissions_role_links_unique` (`permission_id`,`role_id`),
  ADD KEY `up_permissions_role_links_fk` (`permission_id`),
  ADD KEY `up_permissions_role_links_inv_fk` (`role_id`),
  ADD KEY `up_permissions_role_links_order_inv_fk` (`permission_order`);

--
-- Indexes for table `up_roles`
--
ALTER TABLE `up_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_roles_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_roles_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `up_users`
--
ALTER TABLE `up_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_users_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_users_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `up_users_role_links`
--
ALTER TABLE `up_users_role_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `up_users_role_links_unique` (`user_id`,`role_id`),
  ADD KEY `up_users_role_links_fk` (`user_id`),
  ADD KEY `up_users_role_links_inv_fk` (`role_id`),
  ADD KEY `up_users_role_links_order_inv_fk` (`user_order`);

--
-- Indexes for table `up_users_searches_links`
--
ALTER TABLE `up_users_searches_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `up_users_searches_links_unique` (`user_id`,`searche_id`),
  ADD KEY `up_users_searches_links_fk` (`user_id`),
  ADD KEY `up_users_searches_links_inv_fk` (`searche_id`),
  ADD KEY `up_users_searches_links_order_fk` (`searche_order`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wishlists_created_by_id_fk` (`created_by_id`),
  ADD KEY `wishlists_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `wishlists_recipes_links`
--
ALTER TABLE `wishlists_recipes_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wishlists_recipes_links_unique` (`wishlist_id`,`recipe_id`),
  ADD KEY `wishlists_recipes_links_fk` (`wishlist_id`),
  ADD KEY `wishlists_recipes_links_inv_fk` (`recipe_id`),
  ADD KEY `wishlists_recipes_links_order_fk` (`recipe_order`);

--
-- Indexes for table `wishlists_users_permissions_user_links`
--
ALTER TABLE `wishlists_users_permissions_user_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wishlists_users_permissions_user_links_unique` (`wishlist_id`,`user_id`),
  ADD KEY `wishlists_users_permissions_user_links_fk` (`wishlist_id`),
  ADD KEY `wishlists_users_permissions_user_links_inv_fk` (`user_id`),
  ADD KEY `wishlists_users_permissions_user_links_order_inv_fk` (`wishlist_order`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `abouts_components`
--
ALTER TABLE `abouts_components`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=353;

--
-- AUTO_INCREMENT for table `admin_permissions_role_links`
--
ALTER TABLE `admin_permissions_role_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=353;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_users_roles_links`
--
ALTER TABLE `admin_users_roles_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `aisearches`
--
ALTER TABLE `aisearches`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `aisearches_subscription_links`
--
ALTER TABLE `aisearches_subscription_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `aisearches_users_permissions_user_links`
--
ALTER TABLE `aisearches_users_permissions_user_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `bcategories`
--
ALTER TABLE `bcategories`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blogs_bcategory_links`
--
ALTER TABLE `blogs_bcategory_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `components_static_about_us_circles`
--
ALTER TABLE `components_static_about_us_circles`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `components_static_plan_benefits`
--
ALTER TABLE `components_static_plan_benefits`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `components_static_sections`
--
ALTER TABLE `components_static_sections`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `downloads`
--
ALTER TABLE `downloads`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `downloads_recipe_links`
--
ALTER TABLE `downloads_recipe_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `downloads_subscription_links`
--
ALTER TABLE `downloads_subscription_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `downloads_user_id_links`
--
ALTER TABLE `downloads_user_id_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `files_folder_links`
--
ALTER TABLE `files_folder_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `files_related_morphs`
--
ALTER TABLE `files_related_morphs`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `footers`
--
ALTER TABLE `footers`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `footers_pages_links`
--
ALTER TABLE `footers_pages_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `freemiums`
--
ALTER TABLE `freemiums`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `homepages`
--
ALTER TABLE `homepages`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `homepages_sections_links`
--
ALTER TABLE `homepages_sections_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `i18n_locale`
--
ALTER TABLE `i18n_locale`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `leads`
--
ALTER TABLE `leads`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pdfs`
--
ALTER TABLE `pdfs`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `plans_components`
--
ALTER TABLE `plans_components`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prints`
--
ALTER TABLE `prints`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prints_recipe_links`
--
ALTER TABLE `prints_recipe_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prints_users_permissions_user_links`
--
ALTER TABLE `prints_users_permissions_user_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `recipes`
--
ALTER TABLE `recipes`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `recipes_category_links`
--
ALTER TABLE `recipes_category_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `recipes_sub_category_links`
--
ALTER TABLE `recipes_sub_category_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `saves`
--
ALTER TABLE `saves`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `saves_recipe_links`
--
ALTER TABLE `saves_recipe_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `saves_subscription_links`
--
ALTER TABLE `saves_subscription_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `saves_user_id_links`
--
ALTER TABLE `saves_user_id_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `searches`
--
ALTER TABLE `searches`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `searches_subscription_links`
--
ALTER TABLE `searches_subscription_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `searches_users_permissions_user_links`
--
ALTER TABLE `searches_users_permissions_user_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `searches_user_id_links`
--
ALTER TABLE `searches_user_id_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sections_recipes_links`
--
ALTER TABLE `sections_recipes_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `strapi-paypal_paypal-payment`
--
ALTER TABLE `strapi-paypal_paypal-payment`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi-paypal_paypal-product`
--
ALTER TABLE `strapi-paypal_paypal-product`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi-stripe_ss-payment`
--
ALTER TABLE `strapi-stripe_ss-payment`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi-stripe_ss-product`
--
ALTER TABLE `strapi-stripe_ss-product`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_api_token_permissions`
--
ALTER TABLE `strapi_api_token_permissions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_api_token_permissions_token_links`
--
ALTER TABLE `strapi_api_token_permissions_token_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_core_store_settings`
--
ALTER TABLE `strapi_core_store_settings`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `strapi_database_schema`
--
ALTER TABLE `strapi_database_schema`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `strapi_ee_store_settings`
--
ALTER TABLE `strapi_ee_store_settings`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_migrations`
--
ALTER TABLE `strapi_migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_paypal_paypal_payment_paypal_product_links`
--
ALTER TABLE `strapi_paypal_paypal_payment_paypal_product_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_stripe_ss_payment_stripe_product_links`
--
ALTER TABLE `strapi_stripe_ss_payment_stripe_product_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_webhooks`
--
ALTER TABLE `strapi_webhooks`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subscriptions_plan_links`
--
ALTER TABLE `subscriptions_plan_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subscriptions_upgraded_to_links`
--
ALTER TABLE `subscriptions_upgraded_to_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscriptions_users_permissions_user_links`
--
ALTER TABLE `subscriptions_users_permissions_user_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sub_categories_category_links`
--
ALTER TABLE `sub_categories_category_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `upload_folders`
--
ALTER TABLE `upload_folders`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `upload_folders_parent_links`
--
ALTER TABLE `upload_folders_parent_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `up_permissions`
--
ALTER TABLE `up_permissions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `up_permissions_role_links`
--
ALTER TABLE `up_permissions_role_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `up_roles`
--
ALTER TABLE `up_roles`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `up_users`
--
ALTER TABLE `up_users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `up_users_role_links`
--
ALTER TABLE `up_users_role_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `up_users_searches_links`
--
ALTER TABLE `up_users_searches_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wishlists_recipes_links`
--
ALTER TABLE `wishlists_recipes_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wishlists_users_permissions_user_links`
--
ALTER TABLE `wishlists_users_permissions_user_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `abouts`
--
ALTER TABLE `abouts`
  ADD CONSTRAINT `abouts_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `abouts_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `abouts_components`
--
ALTER TABLE `abouts_components`
  ADD CONSTRAINT `abouts_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `abouts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD CONSTRAINT `admin_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `admin_permissions_role_links`
--
ALTER TABLE `admin_permissions_role_links`
  ADD CONSTRAINT `admin_permissions_role_links_fk` FOREIGN KEY (`permission_id`) REFERENCES `admin_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `admin_permissions_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD CONSTRAINT `admin_roles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_roles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD CONSTRAINT `admin_users_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_users_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `admin_users_roles_links`
--
ALTER TABLE `admin_users_roles_links`
  ADD CONSTRAINT `admin_users_roles_links_fk` FOREIGN KEY (`user_id`) REFERENCES `admin_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `admin_users_roles_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `aisearches`
--
ALTER TABLE `aisearches`
  ADD CONSTRAINT `aisearches_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `aisearches_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `aisearches_subscription_links`
--
ALTER TABLE `aisearches_subscription_links`
  ADD CONSTRAINT `aisearches_subscription_links_fk` FOREIGN KEY (`aisearch_id`) REFERENCES `aisearches` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `aisearches_subscription_links_inv_fk` FOREIGN KEY (`subscription_id`) REFERENCES `subscriptions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `aisearches_users_permissions_user_links`
--
ALTER TABLE `aisearches_users_permissions_user_links`
  ADD CONSTRAINT `aisearches_users_permissions_user_links_fk` FOREIGN KEY (`aisearch_id`) REFERENCES `aisearches` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `aisearches_users_permissions_user_links_inv_fk` FOREIGN KEY (`user_id`) REFERENCES `up_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bcategories`
--
ALTER TABLE `bcategories`
  ADD CONSTRAINT `bcategories_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `bcategories_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `blogs_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `blogs_bcategory_links`
--
ALTER TABLE `blogs_bcategory_links`
  ADD CONSTRAINT `blogs_bcategory_links_fk` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blogs_bcategory_links_inv_fk` FOREIGN KEY (`bcategory_id`) REFERENCES `bcategories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `categories_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `downloads`
--
ALTER TABLE `downloads`
  ADD CONSTRAINT `downloads_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `downloads_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `downloads_recipe_links`
--
ALTER TABLE `downloads_recipe_links`
  ADD CONSTRAINT `downloads_recipe_links_fk` FOREIGN KEY (`download_id`) REFERENCES `downloads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `downloads_recipe_links_inv_fk` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `downloads_subscription_links`
--
ALTER TABLE `downloads_subscription_links`
  ADD CONSTRAINT `downloads_subscription_links_fk` FOREIGN KEY (`download_id`) REFERENCES `downloads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `downloads_subscription_links_inv_fk` FOREIGN KEY (`subscription_id`) REFERENCES `subscriptions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `downloads_user_id_links`
--
ALTER TABLE `downloads_user_id_links`
  ADD CONSTRAINT `downloads_user_id_links_fk` FOREIGN KEY (`download_id`) REFERENCES `downloads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `downloads_user_id_links_inv_fk` FOREIGN KEY (`user_id`) REFERENCES `up_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `files`
--
ALTER TABLE `files`
  ADD CONSTRAINT `files_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `files_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `files_folder_links`
--
ALTER TABLE `files_folder_links`
  ADD CONSTRAINT `files_folder_links_fk` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `files_folder_links_inv_fk` FOREIGN KEY (`folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `files_related_morphs`
--
ALTER TABLE `files_related_morphs`
  ADD CONSTRAINT `files_related_morphs_fk` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `footers`
--
ALTER TABLE `footers`
  ADD CONSTRAINT `footers_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `footers_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `footers_pages_links`
--
ALTER TABLE `footers_pages_links`
  ADD CONSTRAINT `footers_pages_links_fk` FOREIGN KEY (`footer_id`) REFERENCES `footers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `footers_pages_links_inv_fk` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `freemiums`
--
ALTER TABLE `freemiums`
  ADD CONSTRAINT `freemiums_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `freemiums_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `homepages`
--
ALTER TABLE `homepages`
  ADD CONSTRAINT `homepages_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `homepages_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `homepages_sections_links`
--
ALTER TABLE `homepages_sections_links`
  ADD CONSTRAINT `homepages_sections_links_fk` FOREIGN KEY (`homepage_id`) REFERENCES `homepages` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `homepages_sections_links_inv_fk` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `i18n_locale`
--
ALTER TABLE `i18n_locale`
  ADD CONSTRAINT `i18n_locale_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `i18n_locale_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `leads`
--
ALTER TABLE `leads`
  ADD CONSTRAINT `leads_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `leads_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `pages`
--
ALTER TABLE `pages`
  ADD CONSTRAINT `pages_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `pages_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `pdfs`
--
ALTER TABLE `pdfs`
  ADD CONSTRAINT `pdfs_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `pdfs_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `plans`
--
ALTER TABLE `plans`
  ADD CONSTRAINT `plans_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `plans_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `plans_components`
--
ALTER TABLE `plans_components`
  ADD CONSTRAINT `plans_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `plans` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `prints`
--
ALTER TABLE `prints`
  ADD CONSTRAINT `prints_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `prints_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `prints_recipe_links`
--
ALTER TABLE `prints_recipe_links`
  ADD CONSTRAINT `prints_recipe_links_fk` FOREIGN KEY (`print_id`) REFERENCES `prints` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `prints_recipe_links_inv_fk` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `prints_users_permissions_user_links`
--
ALTER TABLE `prints_users_permissions_user_links`
  ADD CONSTRAINT `prints_users_permissions_user_links_fk` FOREIGN KEY (`print_id`) REFERENCES `prints` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `prints_users_permissions_user_links_inv_fk` FOREIGN KEY (`user_id`) REFERENCES `up_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `recipes`
--
ALTER TABLE `recipes`
  ADD CONSTRAINT `recipes_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `recipes_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `recipes_category_links`
--
ALTER TABLE `recipes_category_links`
  ADD CONSTRAINT `recipes_category_links_fk` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `recipes_category_links_inv_fk` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `recipes_sub_category_links`
--
ALTER TABLE `recipes_sub_category_links`
  ADD CONSTRAINT `recipes_sub_category_links_fk` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `recipes_sub_category_links_inv_fk` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `saves`
--
ALTER TABLE `saves`
  ADD CONSTRAINT `saves_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `saves_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `saves_recipe_links`
--
ALTER TABLE `saves_recipe_links`
  ADD CONSTRAINT `saves_recipe_links_fk` FOREIGN KEY (`save_id`) REFERENCES `saves` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `saves_recipe_links_inv_fk` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `saves_subscription_links`
--
ALTER TABLE `saves_subscription_links`
  ADD CONSTRAINT `saves_subscription_links_fk` FOREIGN KEY (`save_id`) REFERENCES `saves` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `saves_subscription_links_inv_fk` FOREIGN KEY (`subscription_id`) REFERENCES `subscriptions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `saves_user_id_links`
--
ALTER TABLE `saves_user_id_links`
  ADD CONSTRAINT `saves_user_id_links_fk` FOREIGN KEY (`save_id`) REFERENCES `saves` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `saves_user_id_links_inv_fk` FOREIGN KEY (`user_id`) REFERENCES `up_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `searches`
--
ALTER TABLE `searches`
  ADD CONSTRAINT `searches_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `searches_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `searches_subscription_links`
--
ALTER TABLE `searches_subscription_links`
  ADD CONSTRAINT `searches_subscription_links_fk` FOREIGN KEY (`searche_id`) REFERENCES `searches` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `searches_subscription_links_inv_fk` FOREIGN KEY (`subscription_id`) REFERENCES `subscriptions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `searches_users_permissions_user_links`
--
ALTER TABLE `searches_users_permissions_user_links`
  ADD CONSTRAINT `searches_users_permissions_user_links_fk` FOREIGN KEY (`searche_id`) REFERENCES `searches` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `searches_users_permissions_user_links_inv_fk` FOREIGN KEY (`user_id`) REFERENCES `up_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `searches_user_id_links`
--
ALTER TABLE `searches_user_id_links`
  ADD CONSTRAINT `searches_user_id_links_fk` FOREIGN KEY (`searche_id`) REFERENCES `searches` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `searches_user_id_links_inv_fk` FOREIGN KEY (`user_id`) REFERENCES `up_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sections`
--
ALTER TABLE `sections`
  ADD CONSTRAINT `sections_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `sections_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `sections_recipes_links`
--
ALTER TABLE `sections_recipes_links`
  ADD CONSTRAINT `sections_recipes_links_fk` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sections_recipes_links_inv_fk` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `strapi-paypal_paypal-payment`
--
ALTER TABLE `strapi-paypal_paypal-payment`
  ADD CONSTRAINT `strapi-paypal_paypal-payment_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi-paypal_paypal-payment_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi-paypal_paypal-product`
--
ALTER TABLE `strapi-paypal_paypal-product`
  ADD CONSTRAINT `strapi-paypal_paypal-product_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi-paypal_paypal-product_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi-stripe_ss-payment`
--
ALTER TABLE `strapi-stripe_ss-payment`
  ADD CONSTRAINT `strapi-stripe_ss-payment_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi-stripe_ss-payment_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi-stripe_ss-product`
--
ALTER TABLE `strapi-stripe_ss-product`
  ADD CONSTRAINT `strapi-stripe_ss-product_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi-stripe_ss-product_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  ADD CONSTRAINT `strapi_api_tokens_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_api_tokens_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_api_token_permissions`
--
ALTER TABLE `strapi_api_token_permissions`
  ADD CONSTRAINT `strapi_api_token_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_api_token_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_api_token_permissions_token_links`
--
ALTER TABLE `strapi_api_token_permissions_token_links`
  ADD CONSTRAINT `strapi_api_token_permissions_token_links_fk` FOREIGN KEY (`api_token_permission_id`) REFERENCES `strapi_api_token_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `strapi_api_token_permissions_token_links_inv_fk` FOREIGN KEY (`api_token_id`) REFERENCES `strapi_api_tokens` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `strapi_paypal_paypal_payment_paypal_product_links`
--
ALTER TABLE `strapi_paypal_paypal_payment_paypal_product_links`
  ADD CONSTRAINT `strapi_paypal_paypal_payment_paypal_product_links_fk` FOREIGN KEY (`paypal_payment_id`) REFERENCES `strapi-paypal_paypal-payment` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `strapi_paypal_paypal_payment_paypal_product_links_inv_fk` FOREIGN KEY (`paypal_product_id`) REFERENCES `strapi-paypal_paypal-product` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `strapi_stripe_ss_payment_stripe_product_links`
--
ALTER TABLE `strapi_stripe_ss_payment_stripe_product_links`
  ADD CONSTRAINT `strapi_stripe_ss_payment_stripe_product_links_fk` FOREIGN KEY (`ss_payment_id`) REFERENCES `strapi-stripe_ss-payment` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `strapi_stripe_ss_payment_stripe_product_links_inv_fk` FOREIGN KEY (`ss_product_id`) REFERENCES `strapi-stripe_ss-product` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD CONSTRAINT `subscriptions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `subscriptions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `subscriptions_plan_links`
--
ALTER TABLE `subscriptions_plan_links`
  ADD CONSTRAINT `subscriptions_plan_links_fk` FOREIGN KEY (`subscription_id`) REFERENCES `subscriptions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subscriptions_plan_links_inv_fk` FOREIGN KEY (`plan_id`) REFERENCES `plans` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subscriptions_upgraded_to_links`
--
ALTER TABLE `subscriptions_upgraded_to_links`
  ADD CONSTRAINT `subscriptions_upgraded_to_links_fk` FOREIGN KEY (`subscription_id`) REFERENCES `subscriptions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subscriptions_upgraded_to_links_inv_fk` FOREIGN KEY (`inv_subscription_id`) REFERENCES `subscriptions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subscriptions_users_permissions_user_links`
--
ALTER TABLE `subscriptions_users_permissions_user_links`
  ADD CONSTRAINT `subscriptions_users_permissions_user_links_fk` FOREIGN KEY (`subscription_id`) REFERENCES `subscriptions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subscriptions_users_permissions_user_links_inv_fk` FOREIGN KEY (`user_id`) REFERENCES `up_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD CONSTRAINT `sub_categories_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `sub_categories_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `sub_categories_category_links`
--
ALTER TABLE `sub_categories_category_links`
  ADD CONSTRAINT `sub_categories_category_links_fk` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sub_categories_category_links_inv_fk` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `upload_folders`
--
ALTER TABLE `upload_folders`
  ADD CONSTRAINT `upload_folders_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `upload_folders_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `upload_folders_parent_links`
--
ALTER TABLE `upload_folders_parent_links`
  ADD CONSTRAINT `upload_folders_parent_links_fk` FOREIGN KEY (`folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `upload_folders_parent_links_inv_fk` FOREIGN KEY (`inv_folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `up_permissions`
--
ALTER TABLE `up_permissions`
  ADD CONSTRAINT `up_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `up_permissions_role_links`
--
ALTER TABLE `up_permissions_role_links`
  ADD CONSTRAINT `up_permissions_role_links_fk` FOREIGN KEY (`permission_id`) REFERENCES `up_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `up_permissions_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `up_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `up_roles`
--
ALTER TABLE `up_roles`
  ADD CONSTRAINT `up_roles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_roles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `up_users`
--
ALTER TABLE `up_users`
  ADD CONSTRAINT `up_users_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_users_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `up_users_role_links`
--
ALTER TABLE `up_users_role_links`
  ADD CONSTRAINT `up_users_role_links_fk` FOREIGN KEY (`user_id`) REFERENCES `up_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `up_users_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `up_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `up_users_searches_links`
--
ALTER TABLE `up_users_searches_links`
  ADD CONSTRAINT `up_users_searches_links_fk` FOREIGN KEY (`user_id`) REFERENCES `up_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `up_users_searches_links_inv_fk` FOREIGN KEY (`searche_id`) REFERENCES `searches` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD CONSTRAINT `wishlists_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `wishlists_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `wishlists_recipes_links`
--
ALTER TABLE `wishlists_recipes_links`
  ADD CONSTRAINT `wishlists_recipes_links_fk` FOREIGN KEY (`wishlist_id`) REFERENCES `wishlists` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wishlists_recipes_links_inv_fk` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `wishlists_users_permissions_user_links`
--
ALTER TABLE `wishlists_users_permissions_user_links`
  ADD CONSTRAINT `wishlists_users_permissions_user_links_fk` FOREIGN KEY (`wishlist_id`) REFERENCES `wishlists` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wishlists_users_permissions_user_links_inv_fk` FOREIGN KEY (`user_id`) REFERENCES `up_users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
