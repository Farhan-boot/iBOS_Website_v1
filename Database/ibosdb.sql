-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 25, 2021 at 08:03 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ibosdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_actions`
--

CREATE TABLE `wp_actionscheduler_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `hook` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scheduled_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `args` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schedule` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `attempts` int(11) NOT NULL DEFAULT 0,
  `last_attempt_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `extended_args` varchar(8000) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_actionscheduler_actions`
--

INSERT INTO `wp_actionscheduler_actions` (`action_id`, `hook`, `status`, `scheduled_date_gmt`, `scheduled_date_local`, `args`, `schedule`, `group_id`, `attempts`, `last_attempt_gmt`, `last_attempt_local`, `claim_id`, `extended_args`) VALUES
(164, 'action_scheduler/migration_hook', 'complete', '2021-06-20 09:38:04', '2021-06-20 09:38:04', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1624181884;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1624181884;}', 1, 1, '2021-06-20 09:38:31', '2021-06-20 09:38:31', 0, NULL),
(165, 'wp_mail_smtp_admin_notifications_update', 'complete', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '[1]', 'O:28:\"ActionScheduler_NullSchedule\":0:{}', 2, 1, '2021-06-20 09:39:07', '2021-06-20 09:39:07', 0, NULL),
(166, 'action_scheduler/migration_hook', 'complete', '2021-06-28 05:58:14', '2021-06-28 05:58:14', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1624859894;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1624859894;}', 1, 1, '2021-06-28 05:59:15', '2021-06-28 05:59:15', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_claims`
--

CREATE TABLE `wp_actionscheduler_claims` (
  `claim_id` bigint(20) UNSIGNED NOT NULL,
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_groups`
--

CREATE TABLE `wp_actionscheduler_groups` (
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_actionscheduler_groups`
--

INSERT INTO `wp_actionscheduler_groups` (`group_id`, `slug`) VALUES
(1, 'action-scheduler-migration'),
(2, 'wp_mail_smtp');

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_logs`
--

CREATE TABLE `wp_actionscheduler_logs` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `log_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_actionscheduler_logs`
--

INSERT INTO `wp_actionscheduler_logs` (`log_id`, `action_id`, `message`, `log_date_gmt`, `log_date_local`) VALUES
(1, 164, 'action created', '2021-06-20 09:37:04', '2021-06-20 09:37:04'),
(2, 164, 'action started via WP Cron', '2021-06-20 09:38:31', '2021-06-20 09:38:31'),
(3, 164, 'action complete via WP Cron', '2021-06-20 09:38:31', '2021-06-20 09:38:31'),
(4, 165, 'action created', '2021-06-20 09:38:33', '2021-06-20 09:38:33'),
(5, 165, 'action started via WP Cron', '2021-06-20 09:39:06', '2021-06-20 09:39:06'),
(6, 165, 'action complete via WP Cron', '2021-06-20 09:39:07', '2021-06-20 09:39:07'),
(7, 166, 'action created', '2021-06-28 05:57:14', '2021-06-28 05:57:14'),
(8, 166, 'action started via WP Cron', '2021-06-28 05:59:15', '2021-06-28 05:59:15'),
(9, 166, 'action complete via WP Cron', '2021-06-28 05:59:15', '2021-06-28 05:59:15');

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-06-14 10:12:09', '2021-06-14 10:12:09', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/ibos', 'yes'),
(2, 'home', 'http://localhost/ibos', 'yes'),
(3, 'blogname', 'ibos', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'farhansakibjesy@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:193:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:39:\"main_slider/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:49:\"main_slider/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:69:\"main_slider/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"main_slider/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"main_slider/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:45:\"main_slider/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:28:\"main_slider/([^/]+)/embed/?$\";s:44:\"index.php?main_slider=$matches[1]&embed=true\";s:32:\"main_slider/([^/]+)/trackback/?$\";s:38:\"index.php?main_slider=$matches[1]&tb=1\";s:40:\"main_slider/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?main_slider=$matches[1]&paged=$matches[2]\";s:47:\"main_slider/([^/]+)/comment-page-([0-9]{1,})/?$\";s:51:\"index.php?main_slider=$matches[1]&cpage=$matches[2]\";s:36:\"main_slider/([^/]+)(?:/([0-9]+))?/?$\";s:50:\"index.php?main_slider=$matches[1]&page=$matches[2]\";s:28:\"main_slider/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:38:\"main_slider/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:58:\"main_slider/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"main_slider/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"main_slider/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:34:\"main_slider/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:38:\"our_client/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:48:\"our_client/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:68:\"our_client/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"our_client/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"our_client/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:44:\"our_client/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:27:\"our_client/([^/]+)/embed/?$\";s:43:\"index.php?our_client=$matches[1]&embed=true\";s:31:\"our_client/([^/]+)/trackback/?$\";s:37:\"index.php?our_client=$matches[1]&tb=1\";s:39:\"our_client/([^/]+)/page/?([0-9]{1,})/?$\";s:50:\"index.php?our_client=$matches[1]&paged=$matches[2]\";s:46:\"our_client/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?our_client=$matches[1]&cpage=$matches[2]\";s:35:\"our_client/([^/]+)(?:/([0-9]+))?/?$\";s:49:\"index.php?our_client=$matches[1]&page=$matches[2]\";s:27:\"our_client/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"our_client/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"our_client/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"our_client/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"our_client/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"our_client/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:44:\"our_technologies/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:54:\"our_technologies/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:74:\"our_technologies/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:69:\"our_technologies/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:69:\"our_technologies/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:50:\"our_technologies/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:33:\"our_technologies/([^/]+)/embed/?$\";s:49:\"index.php?our_technologies=$matches[1]&embed=true\";s:37:\"our_technologies/([^/]+)/trackback/?$\";s:43:\"index.php?our_technologies=$matches[1]&tb=1\";s:45:\"our_technologies/([^/]+)/page/?([0-9]{1,})/?$\";s:56:\"index.php?our_technologies=$matches[1]&paged=$matches[2]\";s:52:\"our_technologies/([^/]+)/comment-page-([0-9]{1,})/?$\";s:56:\"index.php?our_technologies=$matches[1]&cpage=$matches[2]\";s:41:\"our_technologies/([^/]+)(?:/([0-9]+))?/?$\";s:55:\"index.php?our_technologies=$matches[1]&page=$matches[2]\";s:33:\"our_technologies/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"our_technologies/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"our_technologies/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"our_technologies/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"our_technologies/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"our_technologies/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:44:\"blog_section_one/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:54:\"blog_section_one/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:74:\"blog_section_one/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:69:\"blog_section_one/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:69:\"blog_section_one/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:50:\"blog_section_one/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:33:\"blog_section_one/([^/]+)/embed/?$\";s:49:\"index.php?blog_section_one=$matches[1]&embed=true\";s:37:\"blog_section_one/([^/]+)/trackback/?$\";s:43:\"index.php?blog_section_one=$matches[1]&tb=1\";s:45:\"blog_section_one/([^/]+)/page/?([0-9]{1,})/?$\";s:56:\"index.php?blog_section_one=$matches[1]&paged=$matches[2]\";s:52:\"blog_section_one/([^/]+)/comment-page-([0-9]{1,})/?$\";s:56:\"index.php?blog_section_one=$matches[1]&cpage=$matches[2]\";s:41:\"blog_section_one/([^/]+)(?:/([0-9]+))?/?$\";s:55:\"index.php?blog_section_one=$matches[1]&page=$matches[2]\";s:33:\"blog_section_one/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"blog_section_one/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"blog_section_one/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"blog_section_one/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"blog_section_one/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"blog_section_one/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:44:\"blog_section_two/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:54:\"blog_section_two/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:74:\"blog_section_two/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:69:\"blog_section_two/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:69:\"blog_section_two/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:50:\"blog_section_two/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:33:\"blog_section_two/([^/]+)/embed/?$\";s:49:\"index.php?blog_section_two=$matches[1]&embed=true\";s:37:\"blog_section_two/([^/]+)/trackback/?$\";s:43:\"index.php?blog_section_two=$matches[1]&tb=1\";s:45:\"blog_section_two/([^/]+)/page/?([0-9]{1,})/?$\";s:56:\"index.php?blog_section_two=$matches[1]&paged=$matches[2]\";s:52:\"blog_section_two/([^/]+)/comment-page-([0-9]{1,})/?$\";s:56:\"index.php?blog_section_two=$matches[1]&cpage=$matches[2]\";s:41:\"blog_section_two/([^/]+)(?:/([0-9]+))?/?$\";s:55:\"index.php?blog_section_two=$matches[1]&page=$matches[2]\";s:33:\"blog_section_two/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"blog_section_two/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"blog_section_two/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"blog_section_two/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"blog_section_two/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"blog_section_two/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:43:\"our_team_member/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:53:\"our_team_member/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:73:\"our_team_member/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:68:\"our_team_member/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:68:\"our_team_member/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:49:\"our_team_member/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:32:\"our_team_member/([^/]+)/embed/?$\";s:48:\"index.php?our_team_member=$matches[1]&embed=true\";s:36:\"our_team_member/([^/]+)/trackback/?$\";s:42:\"index.php?our_team_member=$matches[1]&tb=1\";s:44:\"our_team_member/([^/]+)/page/?([0-9]{1,})/?$\";s:55:\"index.php?our_team_member=$matches[1]&paged=$matches[2]\";s:51:\"our_team_member/([^/]+)/comment-page-([0-9]{1,})/?$\";s:55:\"index.php?our_team_member=$matches[1]&cpage=$matches[2]\";s:40:\"our_team_member/([^/]+)(?:/([0-9]+))?/?$\";s:54:\"index.php?our_team_member=$matches[1]&page=$matches[2]\";s:32:\"our_team_member/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"our_team_member/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"our_team_member/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"our_team_member/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"our_team_member/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"our_team_member/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:17:\"leadin/leadin.php\";i:1;s:27:\"svg-support/svg-support.php\";i:2;s:29:\"wp-mail-smtp/wp_mail_smtp.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:59:\"C:\\xampp\\htdocs\\ibos/wp-content/plugins/akismet/akismet.php\";i:1;s:0:\"\";}', 'no'),
(40, 'template', 'iboswebsite', 'yes'),
(41, 'stylesheet', 'iboswebsite', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '49752', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '0', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1639217528', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'initial_db_version', '49752', 'yes'),
(99, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(100, 'fresh_site', '0', 'yes'),
(101, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(107, 'cron', 'a:8:{i:1625938744;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"0d04ed39571b55704c122d726248bbac\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:1:{i:0;s:7:\"WP Cron\";}s:8:\"interval\";i:60;}}}i:1625940730;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1625955130;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1625998329;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1625998381;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1625998384;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1626171130;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(108, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'nonce_key', '5v`!L%&$FopaRwXIhU~F>zt Bl#i;EF.A5gTSRjy7^i==Fum-i@zo)P:smD1<Ws5', 'no'),
(115, 'nonce_salt', '>,o/=D=LWPm/WBf6UpDMDK;[S~B!dVG.y=k}=>Y7L<Xv<If+l)=Y0R|MA238Ye[R', 'no'),
(116, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(120, 'recovery_keys', 'a:0:{}', 'yes'),
(121, 'theme_mods_twentytwentyone', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1623747510;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(123, 'https_detection_errors', 'a:2:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}s:19:\"bad_response_source\";a:1:{i:0;s:55:\"It looks like the response did not come from this site.\";}}', 'yes'),
(124, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.7.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.7.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.7.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.7.2-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.7.2\";s:7:\"version\";s:5:\"5.7.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1625912016;s:15:\"version_checked\";s:5:\"5.7.2\";s:12:\"translations\";a:0:{}}', 'no'),
(129, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1625912018;s:7:\"checked\";a:4:{s:11:\"iboswebsite\";s:3:\"1.0\";s:14:\"twentynineteen\";s:3:\"2.0\";s:12:\"twentytwenty\";s:3:\"1.7\";s:15:\"twentytwentyone\";s:3:\"1.3\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.2.0.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.7.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.3.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(130, 'auth_key', 'DAfnXbRcZDaMmK72P#/sX3Qrg[auz%OC)$F:C*2AA_bT~0uwwajY%%?i@%Hjs$9;', 'no'),
(131, 'auth_salt', '3W<%?Dam=a[(yy]S{5P zpw^2%@Efb>T@U?Sc|!@M?B)]u6Kl%%m,#uQlff{)PpF', 'no'),
(132, 'logged_in_key', 'pfDi%lN1L5<cgV( FH2|W(0_QArE>tm2P^8@CszwMuS`YV)P~[Iiiy|.:LlOFt7B', 'no'),
(133, 'logged_in_salt', '?,7^+9AD|*!Q(UmkxWQD!%.xz[Ge/=v~&^`H<Rl($)M_SIC*M#M$LrwEDCdQk>^2', 'no'),
(139, 'can_compress_scripts', '1', 'no'),
(152, 'finished_updating_comment_type', '1', 'yes'),
(178, 'current_theme', 'iBos limited', 'yes'),
(179, 'theme_mods_iboswebsite', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:5:{s:7:\"top-bar\";i:2;s:14:\"footer-company\";i:4;s:15:\"footer-Products\";i:5;s:10:\"footer-SME\";i:6;s:15:\"footer-Services\";i:7;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1623902938;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(180, 'theme_switched', '', 'yes'),
(184, 'recovery_mode_email_last_sent', '1624436568', 'yes'),
(185, 'redux-framework-tracking', 'a:3:{s:8:\"dev_mode\";b:0;s:4:\"hash\";s:32:\"24351d724682c6787dbb1c0514a7cda0\";s:14:\"allow_tracking\";s:2:\"no\";}', 'yes'),
(186, 'redux_version_upgraded_from', '3.5.4.21', 'yes'),
(187, '_transient_timeout__redux_activation_redirect', '1625938748', 'no'),
(188, '_transient__redux_activation_redirect', '1', 'no'),
(189, 'uni_pro', 'a:17:{s:8:\"last_tab\";s:1:\"0\";s:13:\"media-favicon\";a:5:{s:3:\"url\";s:65:\"http://localhost/ibos/wp-content/uploads/2021/06/ibos-favicon.svg\";s:2:\"id\";s:3:\"163\";s:6:\"height\";s:1:\"0\";s:5:\"width\";s:1:\"0\";s:9:\"thumbnail\";s:65:\"http://localhost/ibos/wp-content/uploads/2021/06/ibos-favicon.svg\";}s:10:\"media-logo\";a:5:{s:3:\"url\";s:59:\"http://localhost/ibos/wp-content/uploads/2021/06/logo-1.svg\";s:2:\"id\";s:2:\"88\";s:6:\"height\";s:2:\"38\";s:5:\"width\";s:2:\"80\";s:9:\"thumbnail\";s:59:\"http://localhost/ibos/wp-content/uploads/2021/06/logo-1.svg\";}s:10:\"opt-number\";s:0:\"\";s:24:\"opt-social-text-facebook\";s:36:\"https://www.facebook.com/iboslimited\";s:25:\"opt-social-text-instagram\";s:9:\"instagram\";s:23:\"opt-social-text-twitter\";s:7:\"twitter\";s:24:\"opt-social-text-linkedin\";s:55:\"https://www.linkedin.com/company/iboslimited/mycompany/\";s:24:\"opt-footer-text-section1\";s:50:\"The Fastest Growing Software Company in Bangladesh\";s:24:\"opt-footer-text-section2\";s:2175:\"<div class=\"col-lg-3\">\r\n                        <div class=\"single-footer-item footer-contact-btn-section\">\r\n                            <h4 class=\"footer-title\">Community</h4>\r\n                            <p class=\"footer-contact-para\">\r\n                                Join Our Linkedin Page With Over 5,000 entrepreneurs\r\n                            </p>\r\n                            <div> <a href=\"#\" class=\"btn btn-footer\">Go to Linkedin Group</a></div>\r\n                            <div class=\"footer-user-section\">\r\n                                <ul class=\"footer-user-list\">\r\n                                    <li>\r\n                                        <img src=\"assets/images/footer/user/1.png\" alt=\"iBOS\">\r\n                                    </li>\r\n                                    <li>\r\n                                        <img src=\"http://ibosbd.com/assets/images/footer/user/2.png\" alt=\"iBOS\">\r\n                                    </li>\r\n                                    <li>\r\n                                        <img src=\"http://ibosbd.com/assets/images/footer/user/3.png\" alt=\"iBOS\">\r\n                                    </li>\r\n                                    <li>\r\n                                        <img src=\"http://ibosbd.com/assets/images/footer/user/4.png\" alt=\"iBOS\">\r\n                                    </li>\r\n                                    <li>\r\n                                        <img src=\"http://ibosbd.com/assets/images/footer/user/5.png\" alt=\"iBOS\">\r\n                                    </li>\r\n                                    <li>\r\n                                        <img src=\"http://ibosbd.com/assets/images/footer/user/6.png\" alt=\"iBOS\">\r\n                                    </li>\r\n                                </ul>\r\n                                <div class=\"footer-user-para\">\r\n                                    <p>\r\n                                        <span>600+people </span> Joined in the last 30 days\r\n                                    </p>\r\n                                </div>\r\n                            </div>\r\n                        </div>\r\n                    </div>\";s:17:\"opt-footer-bottom\";s:411:\"  <ul class=\"footer-bottom-list\">\r\n                        <li>\r\n                            <a href=\"#\"> Privacy</a>\r\n                        </li>\r\n                        <li>\r\n                            <a href=\"#\"> Terms</a>\r\n                        </li>\r\n                        <li>\r\n                            <a href=\"#\">&commat; iBOS - An Akij Company</a>\r\n                        </li>\r\n     </ul>\";s:18:\"opt-Mission-Vision\";s:0:\"\";s:11:\"opt-Product\";s:0:\"\";s:14:\"opt-Google-Map\";s:0:\"\";s:15:\"opt-Our-Contact\";s:0:\"\";s:19:\"opt-Our-ProductPage\";s:0:\"\";s:24:\"opt-Our-ProductPageModal\";s:0:\"\";}', 'yes'),
(190, 'uni_pro-transients', 'a:3:{s:14:\"changed_values\";a:0:{}s:9:\"last_save\";i:1625312032;s:13:\"last_compiler\";i:1624184090;}', 'yes'),
(198, '_transient_health-check-site-status-result', '{\"good\":13,\"recommended\":7,\"critical\":0}', 'yes'),
(200, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:2:{i:0;i:2;i:2;i:4;}}', 'yes'),
(225, 'recently_activated', 'a:1:{s:36:\"contact-form-7/wp-contact-form-7.php\";i:1624859833;}', 'yes'),
(230, 'wpuxss_eml_taxonomies', 'a:3:{s:14:\"media_category\";a:12:{s:8:\"assigned\";i:1;s:9:\"eml_media\";i:1;s:6:\"labels\";a:12:{s:4:\"name\";s:16:\"Media Categories\";s:13:\"singular_name\";s:14:\"Media Category\";s:9:\"menu_name\";s:16:\"Media Categories\";s:9:\"all_items\";s:20:\"All Media Categories\";s:9:\"edit_item\";s:19:\"Edit Media Category\";s:9:\"view_item\";s:19:\"View Media Category\";s:11:\"update_item\";s:21:\"Update Media Category\";s:12:\"add_new_item\";s:22:\"Add New Media Category\";s:13:\"new_item_name\";s:23:\"New Media Category Name\";s:11:\"parent_item\";s:21:\"Parent Media Category\";s:17:\"parent_item_colon\";s:22:\"Parent Media Category:\";s:12:\"search_items\";s:23:\"Search Media Categories\";}s:12:\"hierarchical\";i:1;s:17:\"show_admin_column\";i:1;s:12:\"admin_filter\";i:1;s:21:\"media_uploader_filter\";i:1;s:25:\"media_popup_taxonomy_edit\";i:0;s:17:\"show_in_nav_menus\";i:1;s:4:\"sort\";i:0;s:12:\"show_in_rest\";i:0;s:7:\"rewrite\";a:2:{s:4:\"slug\";s:14:\"media_category\";s:10:\"with_front\";i:1;}}s:8:\"category\";a:6:{s:9:\"eml_media\";i:0;s:12:\"admin_filter\";i:1;s:21:\"media_uploader_filter\";i:1;s:25:\"media_popup_taxonomy_edit\";i:0;s:20:\"taxonomy_auto_assign\";i:0;s:8:\"assigned\";i:0;}s:8:\"post_tag\";a:6:{s:9:\"eml_media\";i:0;s:12:\"admin_filter\";i:1;s:21:\"media_uploader_filter\";i:1;s:25:\"media_popup_taxonomy_edit\";i:0;s:20:\"taxonomy_auto_assign\";i:0;s:8:\"assigned\";i:0;}}', 'yes'),
(231, 'wpuxss_eml_lib_options', 'a:11:{s:13:\"force_filters\";i:1;s:15:\"filters_to_show\";a:3:{i:0;s:5:\"types\";i:1;s:5:\"dates\";i:2;s:10:\"taxonomies\";}s:10:\"show_count\";i:1;s:16:\"include_children\";i:1;s:9:\"search_in\";a:3:{i:0;s:6:\"titles\";i:1;s:8:\"captions\";i:2;s:12:\"descriptions\";}s:13:\"media_orderby\";s:4:\"date\";s:11:\"media_order\";s:4:\"DESC\";s:12:\"natural_sort\";i:0;s:17:\"grid_show_caption\";i:0;s:17:\"grid_caption_type\";s:5:\"title\";s:24:\"enhance_media_shortcodes\";i:0;}', 'yes'),
(232, 'wpuxss_eml_tax_options', 'a:3:{s:12:\"tax_archives\";i:0;s:24:\"edit_all_as_hierarchical\";i:0;s:21:\"bulk_edit_save_button\";i:0;}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(233, 'wpuxss_eml_mimes', 'a:94:{s:3:\"svg\";a:5:{s:4:\"mime\";s:3:\"svg\";s:8:\"singular\";s:3:\"svg\";s:6:\"plural\";s:3:\"svg\";s:6:\"upload\";i:1;s:6:\"filter\";i:0;}s:8:\"3g2|3gp2\";a:5:{s:4:\"mime\";s:11:\"video/3gpp2\";s:8:\"singular\";s:11:\"video/3gpp2\";s:6:\"plural\";s:11:\"video/3gpp2\";s:6:\"upload\";i:1;s:6:\"filter\";i:0;}s:8:\"3gp|3gpp\";a:5:{s:4:\"mime\";s:10:\"video/3gpp\";s:8:\"singular\";s:10:\"video/3gpp\";s:6:\"plural\";s:10:\"video/3gpp\";s:6:\"upload\";i:1;s:6:\"filter\";i:0;}s:2:\"7z\";a:5:{s:4:\"mime\";s:27:\"application/x-7z-compressed\";s:8:\"singular\";s:27:\"application/x-7z-compressed\";s:6:\"plural\";s:27:\"application/x-7z-compressed\";s:6:\"upload\";i:1;s:6:\"filter\";i:0;}s:3:\"aac\";a:5:{s:4:\"mime\";s:9:\"audio/aac\";s:8:\"singular\";s:9:\"audio/aac\";s:6:\"plural\";s:9:\"audio/aac\";s:6:\"upload\";i:1;s:6:\"filter\";i:0;}s:7:\"asf|asx\";a:5:{s:4:\"mime\";s:14:\"video/x-ms-asf\";s:8:\"singular\";s:14:\"video/x-ms-asf\";s:6:\"plural\";s:14:\"video/x-ms-asf\";s:6:\"upload\";i:1;s:6:\"filter\";i:0;}s:3:\"avi\";a:5:{s:4:\"mime\";s:9:\"video/avi\";s:8:\"singular\";s:9:\"video/avi\";s:6:\"plural\";s:9:\"video/avi\";s:6:\"upload\";i:1;s:6:\"filter\";i:0;}s:3:\"bmp\";a:5:{s:4:\"mime\";s:9:\"image/bmp\";s:8:\"singular\";s:9:\"image/bmp\";s:6:\"plural\";s:9:\"image/bmp\";s:6:\"upload\";i:1;s:6:\"filter\";i:0;}s:5:\"class\";a:5:{s:4:\"mime\";s:16:\"application/java\";s:8:\"singular\";s:16:\"application/java\";s:6:\"plural\";s:16:\"application/java\";s:6:\"upload\";i:1;s:6:\"filter\";i:0;}s:3:\"css\";a:5:{s:4:\"mime\";s:8:\"text/css\";s:8:\"singular\";s:8:\"text/css\";s:6:\"plural\";s:8:\"text/css\";s:6:\"upload\";i:1;s:6:\"filter\";i:0;}s:3:\"csv\";a:5:{s:4:\"mime\";s:8:\"text/csv\";s:8:\"singular\";s:8:\"text/csv\";s:6:\"plural\";s:8:\"text/csv\";s:6:\"upload\";i:1;s:6:\"filter\";i:0;}s:4:\"dfxp\";a:5:{s:4:\"mime\";s:20:\"application/ttaf+xml\";s:8:\"singular\";s:20:\"application/ttaf+xml\";s:6:\"plural\";s:20:\"application/ttaf+xml\";s:6:\"upload\";i:1;s:6:\"filter\";i:0;}s:4:\"divx\";a:5:{s:4:\"mime\";s:10:\"video/divx\";s:8:\"singular\";s:10:\"video/divx\";s:6:\"plural\";s:10:\"video/divx\";s:6:\"upload\";i:1;s:6:\"filter\";i:0;}s:3:\"doc\";a:5:{s:4:\"mime\";s:18:\"application/msword\";s:8:\"singular\";s:18:\"application/msword\";s:6:\"plural\";s:18:\"application/msword\";s:6:\"upload\";i:1;s:6:\"filter\";i:0;}s:4:\"docm\";a:5:{s:4:\"mime\";s:48:\"application/vnd.ms-word.document.macroEnabled.12\";s:8:\"singular\";s:48:\"application/vnd.ms-word.document.macroEnabled.12\";s:6:\"plural\";s:48:\"application/vnd.ms-word.document.macroEnabled.12\";s:6:\"upload\";i:1;s:6:\"filter\";i:0;}s:4:\"docx\";a:5:{s:4:\"mime\";s:71:\"application/vnd.openxmlformats-officedocument.wordprocessingml.document\";s:8:\"singular\";s:71:\"application/vnd.openxmlformats-officedocument.wordprocessingml.document\";s:6:\"plural\";s:71:\"application/vnd.openxmlformats-officedocument.wordprocessingml.document\";s:6:\"upload\";i:1;s:6:\"filter\";i:0;}s:4:\"dotm\";a:5:{s:4:\"mime\";s:48:\"application/vnd.ms-word.template.macroEnabled.12\";s:8:\"singular\";s:48:\"application/vnd.ms-word.template.macroEnabled.12\";s:6:\"plural\";s:48:\"application/vnd.ms-word.template.macroEnabled.12\";s:6:\"upload\";i:1;s:6:\"filter\";i:0;}s:4:\"dotx\";a:5:{s:4:\"mime\";s:71:\"application/vnd.openxmlformats-officedocument.wordprocessingml.template\";s:8:\"singular\";s:71:\"application/vnd.openxmlformats-officedocument.wordprocessingml.template\";s:6:\"plural\";s:71:\"application/vnd.openxmlformats-officedocument.wordprocessingml.template\";s:6:\"upload\";i:1;s:6:\"filter\";i:0;}s:3:\"exe\";a:5:{s:4:\"mime\";s:24:\"application/x-msdownload\";s:8:\"singular\";s:24:\"application/x-msdownload\";s:6:\"plural\";s:24:\"application/x-msdownload\";s:6:\"filter\";i:0;s:6:\"upload\";i:0;}s:4:\"flac\";a:5:{s:4:\"mime\";s:10:\"audio/flac\";s:8:\"singular\";s:10:\"audio/flac\";s:6:\"plural\";s:10:\"audio/flac\";s:6:\"upload\";i:1;s:6:\"filter\";i:0;}s:3:\"flv\";a:5:{s:4:\"mime\";s:11:\"video/x-flv\";s:8:\"singular\";s:11:\"video/x-flv\";s:6:\"plural\";s:11:\"video/x-flv\";s:6:\"upload\";i:1;s:6:\"filter\";i:0;}s:3:\"gif\";a:5:{s:4:\"mime\";s:9:\"image/gif\";s:8:\"singular\";s:9:\"image/gif\";s:6:\"plural\";s:9:\"image/gif\";s:6:\"upload\";i:1;s:6:\"filter\";i:0;}s:7:\"gz|gzip\";a:5:{s:4:\"mime\";s:18:\"application/x-gzip\";s:8:\"singular\";s:18:\"application/x-gzip\";s:6:\"plural\";s:18:\"application/x-gzip\";s:6:\"upload\";i:1;s:6:\"filter\";i:0;}s:4:\"heic\";a:5:{s:4:\"mime\";s:10:\"image/heic\";s:8:\"singular\";s:10:\"image/heic\";s:6:\"plural\";s:10:\"image/heic\";s:6:\"upload\";i:1;s:6:\"filter\";i:0;}s:8:\"htm|html\";a:5:{s:4:\"mime\";s:9:\"text/html\";s:8:\"singular\";s:9:\"text/html\";s:6:\"plural\";s:9:\"text/html\";s:6:\"upload\";i:1;s:6:\"filter\";i:0;}s:3:\"ico\";a:5:{s:4:\"mime\";s:12:\"image/x-icon\";s:8:\"singular\";s:12:\"image/x-icon\";s:6:\"plural\";s:12:\"image/x-icon\";s:6:\"upload\";i:1;s:6:\"filter\";i:0;}s:3:\"ics\";a:5:{s:4:\"mime\";s:13:\"text/calendar\";s:8:\"singular\";s:13:\"text/calendar\";s:6:\"plural\";s:13:\"text/calendar\";s:6:\"upload\";i:1;s:6:\"filter\";i:0;}s:12:\"jpg|jpeg|jpe\";a:5:{s:4:\"mime\";s:10:\"image/jpeg\";s:8:\"singular\";s:10:\"image/jpeg\";s:6:\"plural\";s:10:\"image/jpeg\";s:6:\"upload\";i:1;s:6:\"filter\";i:0;}s:2:\"js\";a:5:{s:4:\"mime\";s:22:\"application/javascript\";s:8:\"singular\";s:22:\"application/javascript\";s:6:\"plural\";s:22:\"application/javascript\";s:6:\"upload\";i:1;s:6:\"filter\";i:0;}s:3:\"key\";a:5:{s:4:\"mime\";s:29:\"application/vnd.apple.keynote\";s:8:\"singular\";s:29:\"application/vnd.apple.keynote\";s:6:\"plural\";s:29:\"application/vnd.apple.keynote\";s:6:\"upload\";i:1;s:6:\"filter\";i:0;}s:3:\"mdb\";a:5:{s:4:\"mime\";s:25:\"application/vnd.ms-access\";s:8:\"singular\";s:25:\"application/vnd.ms-access\";s:6:\"plural\";s:25:\"application/vnd.ms-access\";s:6:\"upload\";i:1;s:6:\"filter\";i:0;}s:8:\"mid|midi\";a:5:{s:4:\"mime\";s:10:\"audio/midi\";s:8:\"singular\";s:10:\"audio/midi\";s:6:\"plural\";s:10:\"audio/midi\";s:6:\"upload\";i:1;s:6:\"filter\";i:0;}s:3:\"mka\";a:5:{s:4:\"mime\";s:16:\"audio/x-matroska\";s:8:\"singular\";s:16:\"audio/x-matroska\";s:6:\"plural\";s:16:\"audio/x-matroska\";s:6:\"upload\";i:1;s:6:\"filter\";i:0;}s:3:\"mkv\";a:5:{s:4:\"mime\";s:16:\"video/x-matroska\";s:8:\"singular\";s:16:\"video/x-matroska\";s:6:\"plural\";s:16:\"video/x-matroska\";s:6:\"upload\";i:1;s:6:\"filter\";i:0;}s:6:\"mov|qt\";a:5:{s:4:\"mime\";s:15:\"video/quicktime\";s:8:\"singular\";s:15:\"video/quicktime\";s:6:\"plural\";s:15:\"video/quicktime\";s:6:\"upload\";i:1;s:6:\"filter\";i:0;}s:11:\"mp3|m4a|m4b\";a:5:{s:4:\"mime\";s:10:\"audio/mpeg\";s:8:\"singular\";s:10:\"audio/mpeg\";s:6:\"plural\";s:10:\"audio/mpeg\";s:6:\"upload\";i:1;s:6:\"filter\";i:0;}s:7:\"mp4|m4v\";a:5:{s:4:\"mime\";s:9:\"video/mp4\";s:8:\"singular\";s:9:\"video/mp4\";s:6:\"plural\";s:9:\"video/mp4\";s:6:\"upload\";i:1;s:6:\"filter\";i:0;}s:12:\"mpeg|mpg|mpe\";a:5:{s:4:\"mime\";s:10:\"video/mpeg\";s:8:\"singular\";s:10:\"video/mpeg\";s:6:\"plural\";s:10:\"video/mpeg\";s:6:\"upload\";i:1;s:6:\"filter\";i:0;}s:3:\"mpp\";a:5:{s:4:\"mime\";s:26:\"application/vnd.ms-project\";s:8:\"singular\";s:26:\"application/vnd.ms-project\";s:6:\"plural\";s:26:\"application/vnd.ms-project\";s:6:\"upload\";i:1;s:6:\"filter\";i:0;}s:7:\"numbers\";a:5:{s:4:\"mime\";s:29:\"application/vnd.apple.numbers\";s:8:\"singular\";s:29:\"application/vnd.apple.numbers\";s:6:\"plural\";s:29:\"application/vnd.apple.numbers\";s:6:\"upload\";i:1;s:6:\"filter\";i:0;}s:3:\"odb\";a:5:{s:4:\"mime\";s:43:\"application/vnd.oasis.opendocument.database\";s:8:\"singular\";s:43:\"application/vnd.oasis.opendocument.database\";s:6:\"plural\";s:43:\"application/vnd.oasis.opendocument.database\";s:6:\"upload\";i:1;s:6:\"filter\";i:0;}s:3:\"odc\";a:5:{s:4:\"mime\";s:40:\"application/vnd.oasis.opendocument.chart\";s:8:\"singular\";s:40:\"application/vnd.oasis.opendocument.chart\";s:6:\"plural\";s:40:\"application/vnd.oasis.opendocument.chart\";s:6:\"upload\";i:1;s:6:\"filter\";i:0;}s:3:\"odf\";a:5:{s:4:\"mime\";s:42:\"application/vnd.oasis.opendocument.formula\";s:8:\"singular\";s:42:\"application/vnd.oasis.opendocument.formula\";s:6:\"plural\";s:42:\"application/vnd.oasis.opendocument.formula\";s:6:\"upload\";i:1;s:6:\"filter\";i:0;}s:3:\"odg\";a:5:{s:4:\"mime\";s:43:\"application/vnd.oasis.opendocument.graphics\";s:8:\"singular\";s:43:\"application/vnd.oasis.opendocument.graphics\";s:6:\"plural\";s:43:\"application/vnd.oasis.opendocument.graphics\";s:6:\"upload\";i:1;s:6:\"filter\";i:0;}s:3:\"odp\";a:5:{s:4:\"mime\";s:47:\"application/vnd.oasis.opendocument.presentation\";s:8:\"singular\";s:47:\"application/vnd.oasis.opendocument.presentation\";s:6:\"plural\";s:47:\"application/vnd.oasis.opendocument.presentation\";s:6:\"upload\";i:1;s:6:\"filter\";i:0;}s:3:\"ods\";a:5:{s:4:\"mime\";s:46:\"application/vnd.oasis.opendocument.spreadsheet\";s:8:\"singular\";s:46:\"application/vnd.oasis.opendocument.spreadsheet\";s:6:\"plural\";s:46:\"application/vnd.oasis.opendocument.spreadsheet\";s:6:\"upload\";i:1;s:6:\"filter\";i:0;}s:3:\"odt\";a:5:{s:4:\"mime\";s:39:\"application/vnd.oasis.opendocument.text\";s:8:\"singular\";s:39:\"application/vnd.oasis.opendocument.text\";s:6:\"plural\";s:39:\"application/vnd.oasis.opendocument.text\";s:6:\"upload\";i:1;s:6:\"filter\";i:0;}s:7:\"ogg|oga\";a:5:{s:4:\"mime\";s:9:\"audio/ogg\";s:8:\"singular\";s:9:\"audio/ogg\";s:6:\"plural\";s:9:\"audio/ogg\";s:6:\"upload\";i:1;s:6:\"filter\";i:0;}s:3:\"ogv\";a:5:{s:4:\"mime\";s:9:\"video/ogg\";s:8:\"singular\";s:9:\"video/ogg\";s:6:\"plural\";s:9:\"video/ogg\";s:6:\"upload\";i:1;s:6:\"filter\";i:0;}s:28:\"onetoc|onetoc2|onetmp|onepkg\";a:5:{s:4:\"mime\";s:19:\"application/onenote\";s:8:\"singular\";s:19:\"application/onenote\";s:6:\"plural\";s:19:\"application/onenote\";s:6:\"upload\";i:1;s:6:\"filter\";i:0;}s:4:\"oxps\";a:5:{s:4:\"mime\";s:16:\"application/oxps\";s:8:\"singular\";s:16:\"application/oxps\";s:6:\"plural\";s:16:\"application/oxps\";s:6:\"upload\";i:1;s:6:\"filter\";i:0;}s:5:\"pages\";a:5:{s:4:\"mime\";s:27:\"application/vnd.apple.pages\";s:8:\"singular\";s:27:\"application/vnd.apple.pages\";s:6:\"plural\";s:27:\"application/vnd.apple.pages\";s:6:\"upload\";i:1;s:6:\"filter\";i:0;}s:3:\"pdf\";a:5:{s:4:\"mime\";s:15:\"application/pdf\";s:8:\"singular\";s:3:\"PDF\";s:6:\"plural\";s:4:\"PDFs\";s:6:\"filter\";i:1;s:6:\"upload\";i:1;}s:3:\"png\";a:5:{s:4:\"mime\";s:9:\"image/png\";s:8:\"singular\";s:9:\"image/png\";s:6:\"plural\";s:9:\"image/png\";s:6:\"upload\";i:1;s:6:\"filter\";i:0;}s:4:\"potm\";a:5:{s:4:\"mime\";s:54:\"application/vnd.ms-powerpoint.template.macroEnabled.12\";s:8:\"singular\";s:54:\"application/vnd.ms-powerpoint.template.macroEnabled.12\";s:6:\"plural\";s:54:\"application/vnd.ms-powerpoint.template.macroEnabled.12\";s:6:\"upload\";i:1;s:6:\"filter\";i:0;}s:4:\"potx\";a:5:{s:4:\"mime\";s:69:\"application/vnd.openxmlformats-officedocument.presentationml.template\";s:8:\"singular\";s:69:\"application/vnd.openxmlformats-officedocument.presentationml.template\";s:6:\"plural\";s:69:\"application/vnd.openxmlformats-officedocument.presentationml.template\";s:6:\"upload\";i:1;s:6:\"filter\";i:0;}s:11:\"pot|pps|ppt\";a:5:{s:4:\"mime\";s:29:\"application/vnd.ms-powerpoint\";s:8:\"singular\";s:29:\"application/vnd.ms-powerpoint\";s:6:\"plural\";s:29:\"application/vnd.ms-powerpoint\";s:6:\"upload\";i:1;s:6:\"filter\";i:0;}s:4:\"ppam\";a:5:{s:4:\"mime\";s:51:\"application/vnd.ms-powerpoint.addin.macroEnabled.12\";s:8:\"singular\";s:51:\"application/vnd.ms-powerpoint.addin.macroEnabled.12\";s:6:\"plural\";s:51:\"application/vnd.ms-powerpoint.addin.macroEnabled.12\";s:6:\"upload\";i:1;s:6:\"filter\";i:0;}s:4:\"ppsm\";a:5:{s:4:\"mime\";s:55:\"application/vnd.ms-powerpoint.slideshow.macroEnabled.12\";s:8:\"singular\";s:55:\"application/vnd.ms-powerpoint.slideshow.macroEnabled.12\";s:6:\"plural\";s:55:\"application/vnd.ms-powerpoint.slideshow.macroEnabled.12\";s:6:\"upload\";i:1;s:6:\"filter\";i:0;}s:4:\"ppsx\";a:5:{s:4:\"mime\";s:70:\"application/vnd.openxmlformats-officedocument.presentationml.slideshow\";s:8:\"singular\";s:70:\"application/vnd.openxmlformats-officedocument.presentationml.slideshow\";s:6:\"plural\";s:70:\"application/vnd.openxmlformats-officedocument.presentationml.slideshow\";s:6:\"upload\";i:1;s:6:\"filter\";i:0;}s:4:\"pptm\";a:5:{s:4:\"mime\";s:58:\"application/vnd.ms-powerpoint.presentation.macroEnabled.12\";s:8:\"singular\";s:58:\"application/vnd.ms-powerpoint.presentation.macroEnabled.12\";s:6:\"plural\";s:58:\"application/vnd.ms-powerpoint.presentation.macroEnabled.12\";s:6:\"upload\";i:1;s:6:\"filter\";i:0;}s:4:\"pptx\";a:5:{s:4:\"mime\";s:73:\"application/vnd.openxmlformats-officedocument.presentationml.presentation\";s:8:\"singular\";s:73:\"application/vnd.openxmlformats-officedocument.presentationml.presentation\";s:6:\"plural\";s:73:\"application/vnd.openxmlformats-officedocument.presentationml.presentation\";s:6:\"upload\";i:1;s:6:\"filter\";i:0;}s:3:\"psd\";a:5:{s:4:\"mime\";s:24:\"application/octet-stream\";s:8:\"singular\";s:24:\"application/octet-stream\";s:6:\"plural\";s:24:\"application/octet-stream\";s:6:\"upload\";i:1;s:6:\"filter\";i:0;}s:3:\"rar\";a:5:{s:4:\"mime\";s:15:\"application/rar\";s:8:\"singular\";s:15:\"application/rar\";s:6:\"plural\";s:15:\"application/rar\";s:6:\"upload\";i:1;s:6:\"filter\";i:0;}s:6:\"ra|ram\";a:5:{s:4:\"mime\";s:17:\"audio/x-realaudio\";s:8:\"singular\";s:17:\"audio/x-realaudio\";s:6:\"plural\";s:17:\"audio/x-realaudio\";s:6:\"upload\";i:1;s:6:\"filter\";i:0;}s:3:\"rtf\";a:5:{s:4:\"mime\";s:15:\"application/rtf\";s:8:\"singular\";s:15:\"application/rtf\";s:6:\"plural\";s:15:\"application/rtf\";s:6:\"upload\";i:1;s:6:\"filter\";i:0;}s:3:\"rtx\";a:5:{s:4:\"mime\";s:13:\"text/richtext\";s:8:\"singular\";s:13:\"text/richtext\";s:6:\"plural\";s:13:\"text/richtext\";s:6:\"upload\";i:1;s:6:\"filter\";i:0;}s:4:\"sldm\";a:5:{s:4:\"mime\";s:51:\"application/vnd.ms-powerpoint.slide.macroEnabled.12\";s:8:\"singular\";s:51:\"application/vnd.ms-powerpoint.slide.macroEnabled.12\";s:6:\"plural\";s:51:\"application/vnd.ms-powerpoint.slide.macroEnabled.12\";s:6:\"upload\";i:1;s:6:\"filter\";i:0;}s:4:\"sldx\";a:5:{s:4:\"mime\";s:66:\"application/vnd.openxmlformats-officedocument.presentationml.slide\";s:8:\"singular\";s:66:\"application/vnd.openxmlformats-officedocument.presentationml.slide\";s:6:\"plural\";s:66:\"application/vnd.openxmlformats-officedocument.presentationml.slide\";s:6:\"upload\";i:1;s:6:\"filter\";i:0;}s:3:\"swf\";a:5:{s:4:\"mime\";s:29:\"application/x-shockwave-flash\";s:8:\"singular\";s:29:\"application/x-shockwave-flash\";s:6:\"plural\";s:29:\"application/x-shockwave-flash\";s:6:\"filter\";i:0;s:6:\"upload\";i:0;}s:3:\"tar\";a:5:{s:4:\"mime\";s:17:\"application/x-tar\";s:8:\"singular\";s:17:\"application/x-tar\";s:6:\"plural\";s:17:\"application/x-tar\";s:6:\"upload\";i:1;s:6:\"filter\";i:0;}s:8:\"tiff|tif\";a:5:{s:4:\"mime\";s:10:\"image/tiff\";s:8:\"singular\";s:10:\"image/tiff\";s:6:\"plural\";s:10:\"image/tiff\";s:6:\"upload\";i:1;s:6:\"filter\";i:0;}s:3:\"tsv\";a:5:{s:4:\"mime\";s:25:\"text/tab-separated-values\";s:8:\"singular\";s:25:\"text/tab-separated-values\";s:6:\"plural\";s:25:\"text/tab-separated-values\";s:6:\"upload\";i:1;s:6:\"filter\";i:0;}s:18:\"txt|asc|c|cc|h|srt\";a:5:{s:4:\"mime\";s:10:\"text/plain\";s:8:\"singular\";s:10:\"text/plain\";s:6:\"plural\";s:10:\"text/plain\";s:6:\"upload\";i:1;s:6:\"filter\";i:0;}s:3:\"vtt\";a:5:{s:4:\"mime\";s:8:\"text/vtt\";s:8:\"singular\";s:8:\"text/vtt\";s:6:\"plural\";s:8:\"text/vtt\";s:6:\"upload\";i:1;s:6:\"filter\";i:0;}s:3:\"wav\";a:5:{s:4:\"mime\";s:9:\"audio/wav\";s:8:\"singular\";s:9:\"audio/wav\";s:6:\"plural\";s:9:\"audio/wav\";s:6:\"upload\";i:1;s:6:\"filter\";i:0;}s:3:\"wax\";a:5:{s:4:\"mime\";s:14:\"audio/x-ms-wax\";s:8:\"singular\";s:14:\"audio/x-ms-wax\";s:6:\"plural\";s:14:\"audio/x-ms-wax\";s:6:\"upload\";i:1;s:6:\"filter\";i:0;}s:4:\"webm\";a:5:{s:4:\"mime\";s:10:\"video/webm\";s:8:\"singular\";s:10:\"video/webm\";s:6:\"plural\";s:10:\"video/webm\";s:6:\"upload\";i:1;s:6:\"filter\";i:0;}s:2:\"wm\";a:5:{s:4:\"mime\";s:13:\"video/x-ms-wm\";s:8:\"singular\";s:13:\"video/x-ms-wm\";s:6:\"plural\";s:13:\"video/x-ms-wm\";s:6:\"upload\";i:1;s:6:\"filter\";i:0;}s:3:\"wma\";a:5:{s:4:\"mime\";s:14:\"audio/x-ms-wma\";s:8:\"singular\";s:14:\"audio/x-ms-wma\";s:6:\"plural\";s:14:\"audio/x-ms-wma\";s:6:\"upload\";i:1;s:6:\"filter\";i:0;}s:3:\"wmv\";a:5:{s:4:\"mime\";s:14:\"video/x-ms-wmv\";s:8:\"singular\";s:14:\"video/x-ms-wmv\";s:6:\"plural\";s:14:\"video/x-ms-wmv\";s:6:\"upload\";i:1;s:6:\"filter\";i:0;}s:3:\"wmx\";a:5:{s:4:\"mime\";s:14:\"video/x-ms-wmx\";s:8:\"singular\";s:14:\"video/x-ms-wmx\";s:6:\"plural\";s:14:\"video/x-ms-wmx\";s:6:\"upload\";i:1;s:6:\"filter\";i:0;}s:6:\"wp|wpd\";a:5:{s:4:\"mime\";s:23:\"application/wordperfect\";s:8:\"singular\";s:23:\"application/wordperfect\";s:6:\"plural\";s:23:\"application/wordperfect\";s:6:\"upload\";i:1;s:6:\"filter\";i:0;}s:3:\"wri\";a:5:{s:4:\"mime\";s:24:\"application/vnd.ms-write\";s:8:\"singular\";s:24:\"application/vnd.ms-write\";s:6:\"plural\";s:24:\"application/vnd.ms-write\";s:6:\"upload\";i:1;s:6:\"filter\";i:0;}s:3:\"xcf\";a:5:{s:4:\"mime\";s:24:\"application/octet-stream\";s:8:\"singular\";s:24:\"application/octet-stream\";s:6:\"plural\";s:24:\"application/octet-stream\";s:6:\"upload\";i:1;s:6:\"filter\";i:0;}s:4:\"xlam\";a:5:{s:4:\"mime\";s:46:\"application/vnd.ms-excel.addin.macroEnabled.12\";s:8:\"singular\";s:46:\"application/vnd.ms-excel.addin.macroEnabled.12\";s:6:\"plural\";s:46:\"application/vnd.ms-excel.addin.macroEnabled.12\";s:6:\"upload\";i:1;s:6:\"filter\";i:0;}s:15:\"xla|xls|xlt|xlw\";a:5:{s:4:\"mime\";s:24:\"application/vnd.ms-excel\";s:8:\"singular\";s:24:\"application/vnd.ms-excel\";s:6:\"plural\";s:24:\"application/vnd.ms-excel\";s:6:\"upload\";i:1;s:6:\"filter\";i:0;}s:4:\"xlsb\";a:5:{s:4:\"mime\";s:53:\"application/vnd.ms-excel.sheet.binary.macroEnabled.12\";s:8:\"singular\";s:53:\"application/vnd.ms-excel.sheet.binary.macroEnabled.12\";s:6:\"plural\";s:53:\"application/vnd.ms-excel.sheet.binary.macroEnabled.12\";s:6:\"upload\";i:1;s:6:\"filter\";i:0;}s:4:\"xlsm\";a:5:{s:4:\"mime\";s:46:\"application/vnd.ms-excel.sheet.macroEnabled.12\";s:8:\"singular\";s:46:\"application/vnd.ms-excel.sheet.macroEnabled.12\";s:6:\"plural\";s:46:\"application/vnd.ms-excel.sheet.macroEnabled.12\";s:6:\"upload\";i:1;s:6:\"filter\";i:0;}s:4:\"xlsx\";a:5:{s:4:\"mime\";s:65:\"application/vnd.openxmlformats-officedocument.spreadsheetml.sheet\";s:8:\"singular\";s:65:\"application/vnd.openxmlformats-officedocument.spreadsheetml.sheet\";s:6:\"plural\";s:65:\"application/vnd.openxmlformats-officedocument.spreadsheetml.sheet\";s:6:\"upload\";i:1;s:6:\"filter\";i:0;}s:4:\"xltm\";a:5:{s:4:\"mime\";s:49:\"application/vnd.ms-excel.template.macroEnabled.12\";s:8:\"singular\";s:49:\"application/vnd.ms-excel.template.macroEnabled.12\";s:6:\"plural\";s:49:\"application/vnd.ms-excel.template.macroEnabled.12\";s:6:\"upload\";i:1;s:6:\"filter\";i:0;}s:4:\"xltx\";a:5:{s:4:\"mime\";s:68:\"application/vnd.openxmlformats-officedocument.spreadsheetml.template\";s:8:\"singular\";s:68:\"application/vnd.openxmlformats-officedocument.spreadsheetml.template\";s:6:\"plural\";s:68:\"application/vnd.openxmlformats-officedocument.spreadsheetml.template\";s:6:\"upload\";i:1;s:6:\"filter\";i:0;}s:3:\"xps\";a:5:{s:4:\"mime\";s:30:\"application/vnd.ms-xpsdocument\";s:8:\"singular\";s:30:\"application/vnd.ms-xpsdocument\";s:6:\"plural\";s:30:\"application/vnd.ms-xpsdocument\";s:6:\"upload\";i:1;s:6:\"filter\";i:0;}s:3:\"zip\";a:5:{s:4:\"mime\";s:15:\"application/zip\";s:8:\"singular\";s:15:\"application/zip\";s:6:\"plural\";s:15:\"application/zip\";s:6:\"upload\";i:1;s:6:\"filter\";i:0;}}', 'yes'),
(234, 'wpuxss_eml_mimes_backup', 'a:93:{s:12:\"jpg|jpeg|jpe\";a:5:{s:4:\"mime\";s:10:\"image/jpeg\";s:8:\"singular\";s:10:\"image/jpeg\";s:6:\"plural\";s:10:\"image/jpeg\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"gif\";a:5:{s:4:\"mime\";s:9:\"image/gif\";s:8:\"singular\";s:9:\"image/gif\";s:6:\"plural\";s:9:\"image/gif\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"png\";a:5:{s:4:\"mime\";s:9:\"image/png\";s:8:\"singular\";s:9:\"image/png\";s:6:\"plural\";s:9:\"image/png\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"bmp\";a:5:{s:4:\"mime\";s:9:\"image/bmp\";s:8:\"singular\";s:9:\"image/bmp\";s:6:\"plural\";s:9:\"image/bmp\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:8:\"tiff|tif\";a:5:{s:4:\"mime\";s:10:\"image/tiff\";s:8:\"singular\";s:10:\"image/tiff\";s:6:\"plural\";s:10:\"image/tiff\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"ico\";a:5:{s:4:\"mime\";s:12:\"image/x-icon\";s:8:\"singular\";s:12:\"image/x-icon\";s:6:\"plural\";s:12:\"image/x-icon\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"heic\";a:5:{s:4:\"mime\";s:10:\"image/heic\";s:8:\"singular\";s:10:\"image/heic\";s:6:\"plural\";s:10:\"image/heic\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:7:\"asf|asx\";a:5:{s:4:\"mime\";s:14:\"video/x-ms-asf\";s:8:\"singular\";s:14:\"video/x-ms-asf\";s:6:\"plural\";s:14:\"video/x-ms-asf\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"wmv\";a:5:{s:4:\"mime\";s:14:\"video/x-ms-wmv\";s:8:\"singular\";s:14:\"video/x-ms-wmv\";s:6:\"plural\";s:14:\"video/x-ms-wmv\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"wmx\";a:5:{s:4:\"mime\";s:14:\"video/x-ms-wmx\";s:8:\"singular\";s:14:\"video/x-ms-wmx\";s:6:\"plural\";s:14:\"video/x-ms-wmx\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:2:\"wm\";a:5:{s:4:\"mime\";s:13:\"video/x-ms-wm\";s:8:\"singular\";s:13:\"video/x-ms-wm\";s:6:\"plural\";s:13:\"video/x-ms-wm\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"avi\";a:5:{s:4:\"mime\";s:9:\"video/avi\";s:8:\"singular\";s:9:\"video/avi\";s:6:\"plural\";s:9:\"video/avi\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"divx\";a:5:{s:4:\"mime\";s:10:\"video/divx\";s:8:\"singular\";s:10:\"video/divx\";s:6:\"plural\";s:10:\"video/divx\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"flv\";a:5:{s:4:\"mime\";s:11:\"video/x-flv\";s:8:\"singular\";s:11:\"video/x-flv\";s:6:\"plural\";s:11:\"video/x-flv\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:6:\"mov|qt\";a:5:{s:4:\"mime\";s:15:\"video/quicktime\";s:8:\"singular\";s:15:\"video/quicktime\";s:6:\"plural\";s:15:\"video/quicktime\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:12:\"mpeg|mpg|mpe\";a:5:{s:4:\"mime\";s:10:\"video/mpeg\";s:8:\"singular\";s:10:\"video/mpeg\";s:6:\"plural\";s:10:\"video/mpeg\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:7:\"mp4|m4v\";a:5:{s:4:\"mime\";s:9:\"video/mp4\";s:8:\"singular\";s:9:\"video/mp4\";s:6:\"plural\";s:9:\"video/mp4\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"ogv\";a:5:{s:4:\"mime\";s:9:\"video/ogg\";s:8:\"singular\";s:9:\"video/ogg\";s:6:\"plural\";s:9:\"video/ogg\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"webm\";a:5:{s:4:\"mime\";s:10:\"video/webm\";s:8:\"singular\";s:10:\"video/webm\";s:6:\"plural\";s:10:\"video/webm\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"mkv\";a:5:{s:4:\"mime\";s:16:\"video/x-matroska\";s:8:\"singular\";s:16:\"video/x-matroska\";s:6:\"plural\";s:16:\"video/x-matroska\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:8:\"3gp|3gpp\";a:5:{s:4:\"mime\";s:10:\"video/3gpp\";s:8:\"singular\";s:10:\"video/3gpp\";s:6:\"plural\";s:10:\"video/3gpp\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:8:\"3g2|3gp2\";a:5:{s:4:\"mime\";s:11:\"video/3gpp2\";s:8:\"singular\";s:11:\"video/3gpp2\";s:6:\"plural\";s:11:\"video/3gpp2\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:18:\"txt|asc|c|cc|h|srt\";a:5:{s:4:\"mime\";s:10:\"text/plain\";s:8:\"singular\";s:10:\"text/plain\";s:6:\"plural\";s:10:\"text/plain\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"csv\";a:5:{s:4:\"mime\";s:8:\"text/csv\";s:8:\"singular\";s:8:\"text/csv\";s:6:\"plural\";s:8:\"text/csv\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"tsv\";a:5:{s:4:\"mime\";s:25:\"text/tab-separated-values\";s:8:\"singular\";s:25:\"text/tab-separated-values\";s:6:\"plural\";s:25:\"text/tab-separated-values\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"ics\";a:5:{s:4:\"mime\";s:13:\"text/calendar\";s:8:\"singular\";s:13:\"text/calendar\";s:6:\"plural\";s:13:\"text/calendar\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"rtx\";a:5:{s:4:\"mime\";s:13:\"text/richtext\";s:8:\"singular\";s:13:\"text/richtext\";s:6:\"plural\";s:13:\"text/richtext\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"css\";a:5:{s:4:\"mime\";s:8:\"text/css\";s:8:\"singular\";s:8:\"text/css\";s:6:\"plural\";s:8:\"text/css\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:8:\"htm|html\";a:5:{s:4:\"mime\";s:9:\"text/html\";s:8:\"singular\";s:9:\"text/html\";s:6:\"plural\";s:9:\"text/html\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"vtt\";a:5:{s:4:\"mime\";s:8:\"text/vtt\";s:8:\"singular\";s:8:\"text/vtt\";s:6:\"plural\";s:8:\"text/vtt\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"dfxp\";a:5:{s:4:\"mime\";s:20:\"application/ttaf+xml\";s:8:\"singular\";s:20:\"application/ttaf+xml\";s:6:\"plural\";s:20:\"application/ttaf+xml\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:11:\"mp3|m4a|m4b\";a:5:{s:4:\"mime\";s:10:\"audio/mpeg\";s:8:\"singular\";s:10:\"audio/mpeg\";s:6:\"plural\";s:10:\"audio/mpeg\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"aac\";a:5:{s:4:\"mime\";s:9:\"audio/aac\";s:8:\"singular\";s:9:\"audio/aac\";s:6:\"plural\";s:9:\"audio/aac\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:6:\"ra|ram\";a:5:{s:4:\"mime\";s:17:\"audio/x-realaudio\";s:8:\"singular\";s:17:\"audio/x-realaudio\";s:6:\"plural\";s:17:\"audio/x-realaudio\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"wav\";a:5:{s:4:\"mime\";s:9:\"audio/wav\";s:8:\"singular\";s:9:\"audio/wav\";s:6:\"plural\";s:9:\"audio/wav\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:7:\"ogg|oga\";a:5:{s:4:\"mime\";s:9:\"audio/ogg\";s:8:\"singular\";s:9:\"audio/ogg\";s:6:\"plural\";s:9:\"audio/ogg\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"flac\";a:5:{s:4:\"mime\";s:10:\"audio/flac\";s:8:\"singular\";s:10:\"audio/flac\";s:6:\"plural\";s:10:\"audio/flac\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:8:\"mid|midi\";a:5:{s:4:\"mime\";s:10:\"audio/midi\";s:8:\"singular\";s:10:\"audio/midi\";s:6:\"plural\";s:10:\"audio/midi\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"wma\";a:5:{s:4:\"mime\";s:14:\"audio/x-ms-wma\";s:8:\"singular\";s:14:\"audio/x-ms-wma\";s:6:\"plural\";s:14:\"audio/x-ms-wma\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"wax\";a:5:{s:4:\"mime\";s:14:\"audio/x-ms-wax\";s:8:\"singular\";s:14:\"audio/x-ms-wax\";s:6:\"plural\";s:14:\"audio/x-ms-wax\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"mka\";a:5:{s:4:\"mime\";s:16:\"audio/x-matroska\";s:8:\"singular\";s:16:\"audio/x-matroska\";s:6:\"plural\";s:16:\"audio/x-matroska\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"rtf\";a:5:{s:4:\"mime\";s:15:\"application/rtf\";s:8:\"singular\";s:15:\"application/rtf\";s:6:\"plural\";s:15:\"application/rtf\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:2:\"js\";a:5:{s:4:\"mime\";s:22:\"application/javascript\";s:8:\"singular\";s:22:\"application/javascript\";s:6:\"plural\";s:22:\"application/javascript\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"pdf\";a:5:{s:4:\"mime\";s:15:\"application/pdf\";s:8:\"singular\";s:15:\"application/pdf\";s:6:\"plural\";s:15:\"application/pdf\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"swf\";a:5:{s:4:\"mime\";s:29:\"application/x-shockwave-flash\";s:8:\"singular\";s:29:\"application/x-shockwave-flash\";s:6:\"plural\";s:29:\"application/x-shockwave-flash\";s:6:\"filter\";i:0;s:6:\"upload\";i:0;}s:5:\"class\";a:5:{s:4:\"mime\";s:16:\"application/java\";s:8:\"singular\";s:16:\"application/java\";s:6:\"plural\";s:16:\"application/java\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"tar\";a:5:{s:4:\"mime\";s:17:\"application/x-tar\";s:8:\"singular\";s:17:\"application/x-tar\";s:6:\"plural\";s:17:\"application/x-tar\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"zip\";a:5:{s:4:\"mime\";s:15:\"application/zip\";s:8:\"singular\";s:15:\"application/zip\";s:6:\"plural\";s:15:\"application/zip\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:7:\"gz|gzip\";a:5:{s:4:\"mime\";s:18:\"application/x-gzip\";s:8:\"singular\";s:18:\"application/x-gzip\";s:6:\"plural\";s:18:\"application/x-gzip\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"rar\";a:5:{s:4:\"mime\";s:15:\"application/rar\";s:8:\"singular\";s:15:\"application/rar\";s:6:\"plural\";s:15:\"application/rar\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:2:\"7z\";a:5:{s:4:\"mime\";s:27:\"application/x-7z-compressed\";s:8:\"singular\";s:27:\"application/x-7z-compressed\";s:6:\"plural\";s:27:\"application/x-7z-compressed\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"exe\";a:5:{s:4:\"mime\";s:24:\"application/x-msdownload\";s:8:\"singular\";s:24:\"application/x-msdownload\";s:6:\"plural\";s:24:\"application/x-msdownload\";s:6:\"filter\";i:0;s:6:\"upload\";i:0;}s:3:\"psd\";a:5:{s:4:\"mime\";s:24:\"application/octet-stream\";s:8:\"singular\";s:24:\"application/octet-stream\";s:6:\"plural\";s:24:\"application/octet-stream\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"xcf\";a:5:{s:4:\"mime\";s:24:\"application/octet-stream\";s:8:\"singular\";s:24:\"application/octet-stream\";s:6:\"plural\";s:24:\"application/octet-stream\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"doc\";a:5:{s:4:\"mime\";s:18:\"application/msword\";s:8:\"singular\";s:18:\"application/msword\";s:6:\"plural\";s:18:\"application/msword\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:11:\"pot|pps|ppt\";a:5:{s:4:\"mime\";s:29:\"application/vnd.ms-powerpoint\";s:8:\"singular\";s:29:\"application/vnd.ms-powerpoint\";s:6:\"plural\";s:29:\"application/vnd.ms-powerpoint\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"wri\";a:5:{s:4:\"mime\";s:24:\"application/vnd.ms-write\";s:8:\"singular\";s:24:\"application/vnd.ms-write\";s:6:\"plural\";s:24:\"application/vnd.ms-write\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:15:\"xla|xls|xlt|xlw\";a:5:{s:4:\"mime\";s:24:\"application/vnd.ms-excel\";s:8:\"singular\";s:24:\"application/vnd.ms-excel\";s:6:\"plural\";s:24:\"application/vnd.ms-excel\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"mdb\";a:5:{s:4:\"mime\";s:25:\"application/vnd.ms-access\";s:8:\"singular\";s:25:\"application/vnd.ms-access\";s:6:\"plural\";s:25:\"application/vnd.ms-access\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"mpp\";a:5:{s:4:\"mime\";s:26:\"application/vnd.ms-project\";s:8:\"singular\";s:26:\"application/vnd.ms-project\";s:6:\"plural\";s:26:\"application/vnd.ms-project\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"docx\";a:5:{s:4:\"mime\";s:71:\"application/vnd.openxmlformats-officedocument.wordprocessingml.document\";s:8:\"singular\";s:71:\"application/vnd.openxmlformats-officedocument.wordprocessingml.document\";s:6:\"plural\";s:71:\"application/vnd.openxmlformats-officedocument.wordprocessingml.document\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"docm\";a:5:{s:4:\"mime\";s:48:\"application/vnd.ms-word.document.macroEnabled.12\";s:8:\"singular\";s:48:\"application/vnd.ms-word.document.macroEnabled.12\";s:6:\"plural\";s:48:\"application/vnd.ms-word.document.macroEnabled.12\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"dotx\";a:5:{s:4:\"mime\";s:71:\"application/vnd.openxmlformats-officedocument.wordprocessingml.template\";s:8:\"singular\";s:71:\"application/vnd.openxmlformats-officedocument.wordprocessingml.template\";s:6:\"plural\";s:71:\"application/vnd.openxmlformats-officedocument.wordprocessingml.template\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"dotm\";a:5:{s:4:\"mime\";s:48:\"application/vnd.ms-word.template.macroEnabled.12\";s:8:\"singular\";s:48:\"application/vnd.ms-word.template.macroEnabled.12\";s:6:\"plural\";s:48:\"application/vnd.ms-word.template.macroEnabled.12\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"xlsx\";a:5:{s:4:\"mime\";s:65:\"application/vnd.openxmlformats-officedocument.spreadsheetml.sheet\";s:8:\"singular\";s:65:\"application/vnd.openxmlformats-officedocument.spreadsheetml.sheet\";s:6:\"plural\";s:65:\"application/vnd.openxmlformats-officedocument.spreadsheetml.sheet\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"xlsm\";a:5:{s:4:\"mime\";s:46:\"application/vnd.ms-excel.sheet.macroEnabled.12\";s:8:\"singular\";s:46:\"application/vnd.ms-excel.sheet.macroEnabled.12\";s:6:\"plural\";s:46:\"application/vnd.ms-excel.sheet.macroEnabled.12\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"xlsb\";a:5:{s:4:\"mime\";s:53:\"application/vnd.ms-excel.sheet.binary.macroEnabled.12\";s:8:\"singular\";s:53:\"application/vnd.ms-excel.sheet.binary.macroEnabled.12\";s:6:\"plural\";s:53:\"application/vnd.ms-excel.sheet.binary.macroEnabled.12\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"xltx\";a:5:{s:4:\"mime\";s:68:\"application/vnd.openxmlformats-officedocument.spreadsheetml.template\";s:8:\"singular\";s:68:\"application/vnd.openxmlformats-officedocument.spreadsheetml.template\";s:6:\"plural\";s:68:\"application/vnd.openxmlformats-officedocument.spreadsheetml.template\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"xltm\";a:5:{s:4:\"mime\";s:49:\"application/vnd.ms-excel.template.macroEnabled.12\";s:8:\"singular\";s:49:\"application/vnd.ms-excel.template.macroEnabled.12\";s:6:\"plural\";s:49:\"application/vnd.ms-excel.template.macroEnabled.12\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"xlam\";a:5:{s:4:\"mime\";s:46:\"application/vnd.ms-excel.addin.macroEnabled.12\";s:8:\"singular\";s:46:\"application/vnd.ms-excel.addin.macroEnabled.12\";s:6:\"plural\";s:46:\"application/vnd.ms-excel.addin.macroEnabled.12\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"pptx\";a:5:{s:4:\"mime\";s:73:\"application/vnd.openxmlformats-officedocument.presentationml.presentation\";s:8:\"singular\";s:73:\"application/vnd.openxmlformats-officedocument.presentationml.presentation\";s:6:\"plural\";s:73:\"application/vnd.openxmlformats-officedocument.presentationml.presentation\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"pptm\";a:5:{s:4:\"mime\";s:58:\"application/vnd.ms-powerpoint.presentation.macroEnabled.12\";s:8:\"singular\";s:58:\"application/vnd.ms-powerpoint.presentation.macroEnabled.12\";s:6:\"plural\";s:58:\"application/vnd.ms-powerpoint.presentation.macroEnabled.12\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"ppsx\";a:5:{s:4:\"mime\";s:70:\"application/vnd.openxmlformats-officedocument.presentationml.slideshow\";s:8:\"singular\";s:70:\"application/vnd.openxmlformats-officedocument.presentationml.slideshow\";s:6:\"plural\";s:70:\"application/vnd.openxmlformats-officedocument.presentationml.slideshow\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"ppsm\";a:5:{s:4:\"mime\";s:55:\"application/vnd.ms-powerpoint.slideshow.macroEnabled.12\";s:8:\"singular\";s:55:\"application/vnd.ms-powerpoint.slideshow.macroEnabled.12\";s:6:\"plural\";s:55:\"application/vnd.ms-powerpoint.slideshow.macroEnabled.12\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"potx\";a:5:{s:4:\"mime\";s:69:\"application/vnd.openxmlformats-officedocument.presentationml.template\";s:8:\"singular\";s:69:\"application/vnd.openxmlformats-officedocument.presentationml.template\";s:6:\"plural\";s:69:\"application/vnd.openxmlformats-officedocument.presentationml.template\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"potm\";a:5:{s:4:\"mime\";s:54:\"application/vnd.ms-powerpoint.template.macroEnabled.12\";s:8:\"singular\";s:54:\"application/vnd.ms-powerpoint.template.macroEnabled.12\";s:6:\"plural\";s:54:\"application/vnd.ms-powerpoint.template.macroEnabled.12\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"ppam\";a:5:{s:4:\"mime\";s:51:\"application/vnd.ms-powerpoint.addin.macroEnabled.12\";s:8:\"singular\";s:51:\"application/vnd.ms-powerpoint.addin.macroEnabled.12\";s:6:\"plural\";s:51:\"application/vnd.ms-powerpoint.addin.macroEnabled.12\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"sldx\";a:5:{s:4:\"mime\";s:66:\"application/vnd.openxmlformats-officedocument.presentationml.slide\";s:8:\"singular\";s:66:\"application/vnd.openxmlformats-officedocument.presentationml.slide\";s:6:\"plural\";s:66:\"application/vnd.openxmlformats-officedocument.presentationml.slide\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"sldm\";a:5:{s:4:\"mime\";s:51:\"application/vnd.ms-powerpoint.slide.macroEnabled.12\";s:8:\"singular\";s:51:\"application/vnd.ms-powerpoint.slide.macroEnabled.12\";s:6:\"plural\";s:51:\"application/vnd.ms-powerpoint.slide.macroEnabled.12\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:28:\"onetoc|onetoc2|onetmp|onepkg\";a:5:{s:4:\"mime\";s:19:\"application/onenote\";s:8:\"singular\";s:19:\"application/onenote\";s:6:\"plural\";s:19:\"application/onenote\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"oxps\";a:5:{s:4:\"mime\";s:16:\"application/oxps\";s:8:\"singular\";s:16:\"application/oxps\";s:6:\"plural\";s:16:\"application/oxps\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"xps\";a:5:{s:4:\"mime\";s:30:\"application/vnd.ms-xpsdocument\";s:8:\"singular\";s:30:\"application/vnd.ms-xpsdocument\";s:6:\"plural\";s:30:\"application/vnd.ms-xpsdocument\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"odt\";a:5:{s:4:\"mime\";s:39:\"application/vnd.oasis.opendocument.text\";s:8:\"singular\";s:39:\"application/vnd.oasis.opendocument.text\";s:6:\"plural\";s:39:\"application/vnd.oasis.opendocument.text\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"odp\";a:5:{s:4:\"mime\";s:47:\"application/vnd.oasis.opendocument.presentation\";s:8:\"singular\";s:47:\"application/vnd.oasis.opendocument.presentation\";s:6:\"plural\";s:47:\"application/vnd.oasis.opendocument.presentation\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"ods\";a:5:{s:4:\"mime\";s:46:\"application/vnd.oasis.opendocument.spreadsheet\";s:8:\"singular\";s:46:\"application/vnd.oasis.opendocument.spreadsheet\";s:6:\"plural\";s:46:\"application/vnd.oasis.opendocument.spreadsheet\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"odg\";a:5:{s:4:\"mime\";s:43:\"application/vnd.oasis.opendocument.graphics\";s:8:\"singular\";s:43:\"application/vnd.oasis.opendocument.graphics\";s:6:\"plural\";s:43:\"application/vnd.oasis.opendocument.graphics\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"odc\";a:5:{s:4:\"mime\";s:40:\"application/vnd.oasis.opendocument.chart\";s:8:\"singular\";s:40:\"application/vnd.oasis.opendocument.chart\";s:6:\"plural\";s:40:\"application/vnd.oasis.opendocument.chart\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"odb\";a:5:{s:4:\"mime\";s:43:\"application/vnd.oasis.opendocument.database\";s:8:\"singular\";s:43:\"application/vnd.oasis.opendocument.database\";s:6:\"plural\";s:43:\"application/vnd.oasis.opendocument.database\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"odf\";a:5:{s:4:\"mime\";s:42:\"application/vnd.oasis.opendocument.formula\";s:8:\"singular\";s:42:\"application/vnd.oasis.opendocument.formula\";s:6:\"plural\";s:42:\"application/vnd.oasis.opendocument.formula\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:6:\"wp|wpd\";a:5:{s:4:\"mime\";s:23:\"application/wordperfect\";s:8:\"singular\";s:23:\"application/wordperfect\";s:6:\"plural\";s:23:\"application/wordperfect\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"key\";a:5:{s:4:\"mime\";s:29:\"application/vnd.apple.keynote\";s:8:\"singular\";s:29:\"application/vnd.apple.keynote\";s:6:\"plural\";s:29:\"application/vnd.apple.keynote\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:7:\"numbers\";a:5:{s:4:\"mime\";s:29:\"application/vnd.apple.numbers\";s:8:\"singular\";s:29:\"application/vnd.apple.numbers\";s:6:\"plural\";s:29:\"application/vnd.apple.numbers\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:5:\"pages\";a:5:{s:4:\"mime\";s:27:\"application/vnd.apple.pages\";s:8:\"singular\";s:27:\"application/vnd.apple.pages\";s:6:\"plural\";s:27:\"application/vnd.apple.pages\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}}', 'no'),
(235, 'wpuxss_eml_version', '2.8.5', 'yes'),
(261, 'bodhi_svgs_plugin_version', '2.3.18', 'yes'),
(262, 'bodhi_svgs_settings', 'a:2:{s:8:\"restrict\";s:2:\"on\";s:10:\"css_target\";s:0:\"\";}', 'yes'),
(286, 'theme_mods_twentynineteen', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:6:\"menu-1\";i:2;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1623903037;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-1\";a:0:{}}}}', 'yes'),
(378, 'secret_key', '*;.M_[>p:JlXiO8aKV<h/WVmm}!@*((EaP&W(T1jGqnYzC3 U[/%8iZ)*p<$Uc5M', 'no'),
(383, 'wp_mail_smtp_initial_version', '2.8.0', 'no'),
(384, 'wp_mail_smtp_version', '2.8.0', 'no'),
(385, 'wp_mail_smtp', 'a:7:{s:4:\"mail\";a:6:{s:10:\"from_email\";s:25:\"farhansakibjesy@gmail.com\";s:9:\"from_name\";s:4:\"ibos\";s:6:\"mailer\";s:7:\"smtpcom\";s:11:\"return_path\";b:0;s:16:\"from_email_force\";b:1;s:15:\"from_name_force\";b:0;}s:4:\"smtp\";a:7:{s:7:\"autotls\";s:3:\"yes\";s:4:\"auth\";s:3:\"yes\";s:4:\"host\";s:0:\"\";s:10:\"encryption\";s:4:\"none\";s:4:\"port\";s:0:\"\";s:4:\"user\";s:0:\"\";s:4:\"pass\";s:0:\"\";}s:7:\"smtpcom\";a:2:{s:7:\"api_key\";s:0:\"\";s:7:\"channel\";s:0:\"\";}s:10:\"sendinblue\";a:2:{s:7:\"api_key\";s:0:\"\";s:6:\"domain\";s:0:\"\";}s:7:\"mailgun\";a:3:{s:7:\"api_key\";s:0:\"\";s:6:\"domain\";s:0:\"\";s:6:\"region\";s:2:\"US\";}s:8:\"sendgrid\";a:2:{s:7:\"api_key\";s:0:\"\";s:6:\"domain\";s:0:\"\";}s:5:\"gmail\";a:2:{s:9:\"client_id\";s:0:\"\";s:13:\"client_secret\";s:0:\"\";}}', 'no'),
(386, 'wp_mail_smtp_activated_time', '1624181823', 'no'),
(387, 'wp_mail_smtp_activated', 'a:1:{s:4:\"lite\";i:1624181823;}', 'yes'),
(390, 'action_scheduler_hybrid_store_demarkation', '163', 'yes'),
(391, 'schema-ActionScheduler_StoreSchema', '3.0.1624181824', 'yes'),
(392, 'schema-ActionScheduler_LoggerSchema', '2.0.1624181824', 'yes'),
(393, 'wp_mail_smtp_migration_version', '3', 'yes'),
(397, 'wp_mail_smtp_activation_prevent_redirect', '1', 'yes'),
(398, 'action_scheduler_lock_async-request-runner', '1625938779', 'yes'),
(399, 'wp_mail_smtp_review_notice', 'a:2:{s:4:\"time\";i:1624181858;s:9:\"dismissed\";b:0;}', 'yes'),
(402, 'wp_mail_smtp_connect_token', '60c20cf8d160ba86d3e0d7ce8bdc41f658fc826b6ab9a00a57badab3a8a948d8696d5d3b86f561f13b48594442932237b7f339aaae9f7d9f0e4f00c89aa52a5c', 'yes'),
(403, 'wp_mail_smtp_connect', 'ibos123456', 'yes'),
(405, 'wp_mail_smtp_notifications', 'a:4:{s:6:\"update\";i:1624181947;s:4:\"feed\";a:0:{}s:6:\"events\";a:0:{}s:9:\"dismissed\";a:0:{}}', 'yes'),
(406, 'wp_mail_smtp_debug', 'a:1:{i:0;s:35:\"Mailer: SMTP.com\r\napi_key - invalid\";}', 'no'),
(995, 'blog_category_children', 'a:0:{}', 'yes'),
(1005, 'portfolio_category_children', 'a:0:{}', 'yes'),
(1275, 'filters_children', 'a:0:{}', 'yes'),
(1543, 'category_children', 'a:0:{}', 'yes'),
(1963, 'action_scheduler_migration_status', 'complete', 'yes'),
(3153, 'leadin_portalId', '20280711', 'yes'),
(3154, 'leadin_account_name', 'iBos', 'yes'),
(3155, 'leadin_portal_domain', 'ibosbd.com', 'yes'),
(3156, 'leadin_hublet', '', 'yes'),
(4294, '_site_transient_timeout_theme_roots', '1625913817', 'no'),
(4295, '_site_transient_theme_roots', 'a:4:{s:11:\"iboswebsite\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";}', 'no'),
(4296, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1625912019;s:7:\"checked\";a:5:{s:19:\"akismet/akismet.php\";s:5:\"4.1.9\";s:9:\"hello.php\";s:5:\"1.7.2\";s:17:\"leadin/leadin.php\";s:7:\"8.0.294\";s:27:\"svg-support/svg-support.php\";s:6:\"2.3.18\";s:29:\"wp-mail-smtp/wp_mail_smtp.php\";s:5:\"2.8.0\";}s:8:\"response\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:6:\"4.1.10\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/akismet.4.1.10.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.8\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:29:\"wp-mail-smtp/wp_mail_smtp.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:26:\"w.org/plugins/wp-mail-smtp\";s:4:\"slug\";s:12:\"wp-mail-smtp\";s:6:\"plugin\";s:29:\"wp-mail-smtp/wp_mail_smtp.php\";s:11:\"new_version\";s:5:\"2.9.0\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/wp-mail-smtp/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wp-mail-smtp.2.9.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/wp-mail-smtp/assets/icon-256x256.png?rev=1755440\";s:2:\"1x\";s:65:\"https://ps.w.org/wp-mail-smtp/assets/icon-128x128.png?rev=1755440\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/wp-mail-smtp/assets/banner-1544x500.png?rev=2468655\";s:2:\"1x\";s:67:\"https://ps.w.org/wp-mail-smtp/assets/banner-772x250.png?rev=2468655\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.7.2\";s:12:\"requires_php\";s:6:\"5.6.20\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:17:\"leadin/leadin.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:20:\"w.org/plugins/leadin\";s:4:\"slug\";s:6:\"leadin\";s:6:\"plugin\";s:17:\"leadin/leadin.php\";s:11:\"new_version\";s:7:\"8.0.294\";s:3:\"url\";s:37:\"https://wordpress.org/plugins/leadin/\";s:7:\"package\";s:49:\"https://downloads.wordpress.org/plugin/leadin.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/leadin/assets/icon-256x256.png?rev=2548803\";s:2:\"1x\";s:59:\"https://ps.w.org/leadin/assets/icon-128x128.png?rev=2548803\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:62:\"https://ps.w.org/leadin/assets/banner-1544x500.png?rev=2548803\";s:2:\"1x\";s:61:\"https://ps.w.org/leadin/assets/banner-772x250.png?rev=2548803\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"svg-support/svg-support.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/svg-support\";s:4:\"slug\";s:11:\"svg-support\";s:6:\"plugin\";s:27:\"svg-support/svg-support.php\";s:11:\"new_version\";s:6:\"2.3.18\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/svg-support/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/svg-support.2.3.18.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:64:\"https://ps.w.org/svg-support/assets/icon-256x256.png?rev=1417738\";s:2:\"1x\";s:56:\"https://ps.w.org/svg-support/assets/icon.svg?rev=1417738\";s:3:\"svg\";s:56:\"https://ps.w.org/svg-support/assets/icon.svg?rev=1417738\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/svg-support/assets/banner-1544x500.jpg?rev=1215377\";s:2:\"1x\";s:66:\"https://ps.w.org/svg-support/assets/banner-772x250.jpg?rev=1215377\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_wp_attached_file', '2021/06/logo.png'),
(4, 5, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:80;s:6:\"height\";i:38;s:4:\"file\";s:16:\"2021/06/logo.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(5, 6, '_wp_attached_file', '2021/06/fev.png'),
(6, 6, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:148;s:6:\"height\";i:75;s:4:\"file\";s:15:\"2021/06/fev.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(7, 7, '_menu_item_type', 'custom'),
(8, 7, '_menu_item_menu_item_parent', '0'),
(9, 7, '_menu_item_object_id', '7'),
(10, 7, '_menu_item_object', 'custom'),
(11, 7, '_menu_item_target', ''),
(12, 7, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(13, 7, '_menu_item_xfn', ''),
(14, 7, '_menu_item_url', '#'),
(34, 10, '_menu_item_type', 'custom'),
(35, 10, '_menu_item_menu_item_parent', '0'),
(36, 10, '_menu_item_object_id', '10'),
(37, 10, '_menu_item_object', 'custom'),
(38, 10, '_menu_item_target', ''),
(39, 10, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(40, 10, '_menu_item_xfn', ''),
(41, 10, '_menu_item_url', '#'),
(61, 14, '_wp_attached_file', '2021/06/akij-cement.png'),
(62, 14, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:268;s:6:\"height\";i:101;s:4:\"file\";s:23:\"2021/06/akij-cement.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"akij-cement-150x101.png\";s:5:\"width\";i:150;s:6:\"height\";i:101;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(63, 13, '_edit_last', '1'),
(64, 13, '_thumbnail_id', '14'),
(65, 13, '_edit_lock', '1623814794:1'),
(66, 16, '_wp_attached_file', '2021/06/akij-food.png'),
(67, 16, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:268;s:6:\"height\";i:101;s:4:\"file\";s:21:\"2021/06/akij-food.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"akij-food-150x101.png\";s:5:\"width\";i:150;s:6:\"height\";i:101;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(68, 15, '_edit_last', '1'),
(69, 15, '_thumbnail_id', '16'),
(70, 15, '_edit_lock', '1623814875:1'),
(71, 18, '_wp_attached_file', '2021/06/akij-poly.png'),
(72, 18, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:268;s:6:\"height\";i:101;s:4:\"file\";s:21:\"2021/06/akij-poly.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"akij-poly-150x101.png\";s:5:\"width\";i:150;s:6:\"height\";i:101;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(73, 17, '_edit_last', '1'),
(74, 17, '_thumbnail_id', '18'),
(75, 17, '_edit_lock', '1623814896:1'),
(76, 20, '_wp_attached_file', '2021/06/akij-shipping.png'),
(77, 20, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:268;s:6:\"height\";i:101;s:4:\"file\";s:25:\"2021/06/akij-shipping.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"akij-shipping-150x101.png\";s:5:\"width\";i:150;s:6:\"height\";i:101;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(78, 19, '_edit_last', '1'),
(79, 19, '_thumbnail_id', '20'),
(80, 19, '_edit_lock', '1623927730:1'),
(81, 24, '_wp_attached_file', '2021/06/c.png'),
(82, 24, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:87;s:6:\"height\";i:99;s:4:\"file\";s:13:\"2021/06/c.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(83, 23, '_edit_last', '1'),
(85, 23, '_edit_lock', '1623905038:1'),
(86, 26, '_wp_attached_file', '2021/06/docker.png'),
(87, 26, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:87;s:6:\"height\";i:76;s:4:\"file\";s:18:\"2021/06/docker.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(88, 25, '_edit_last', '1'),
(89, 25, '_thumbnail_id', '26'),
(90, 25, '_edit_lock', '1623816513:1'),
(91, 28, '_wp_attached_file', '2021/06/flutter.png'),
(92, 28, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:81;s:6:\"height\";i:37;s:4:\"file\";s:19:\"2021/06/flutter.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(93, 27, '_edit_last', '1'),
(94, 27, '_thumbnail_id', '28'),
(95, 27, '_edit_lock', '1623816526:1'),
(96, 30, '_wp_attached_file', '2021/06/kubernetis.png'),
(97, 30, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:87;s:6:\"height\";i:87;s:4:\"file\";s:22:\"2021/06/kubernetis.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(98, 29, '_edit_last', '1'),
(99, 29, '_thumbnail_id', '30'),
(100, 29, '_edit_lock', '1623816539:1'),
(101, 31, '_edit_last', '1'),
(102, 31, '_edit_lock', '1623816555:1'),
(103, 32, '_wp_attached_file', '2021/06/net.png'),
(104, 32, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:87;s:6:\"height\";i:59;s:4:\"file\";s:15:\"2021/06/net.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(105, 31, '_thumbnail_id', '32'),
(106, 34, '_wp_attached_file', '2021/06/nginx.png'),
(107, 34, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:87;s:6:\"height\";i:26;s:4:\"file\";s:17:\"2021/06/nginx.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(108, 33, '_edit_last', '1'),
(109, 33, '_thumbnail_id', '34'),
(110, 33, '_edit_lock', '1623816566:1'),
(111, 36, '_wp_attached_file', '2021/06/nginx-1.png'),
(112, 36, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:87;s:6:\"height\";i:26;s:4:\"file\";s:19:\"2021/06/nginx-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(113, 37, '_wp_attached_file', '2021/06/python.png'),
(114, 37, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:105;s:6:\"height\";i:71;s:4:\"file\";s:18:\"2021/06/python.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(115, 35, '_edit_last', '1'),
(116, 35, '_thumbnail_id', '37'),
(117, 35, '_edit_lock', '1623926123:1'),
(119, 3, '_edit_lock', '1623832625:1'),
(122, 45, '_wp_attached_file', '2021/06/kubernetis.svg'),
(123, 46, '_wp_attached_file', '2021/06/logo.svg'),
(124, 47, '_wp_attached_file', '2021/06/c.svg'),
(125, 48, '_wp_attached_file', '2021/06/c-1.svg'),
(126, 49, '_wp_attached_file', '2021/06/c-2.svg'),
(127, 50, '_wp_attached_file', '2021/06/c-3.svg'),
(128, 51, '_wp_attached_file', '2021/06/c-4.svg'),
(129, 52, '_wp_attached_file', '2021/06/c-5.svg'),
(131, 53, '_wp_attached_file', '2021/06/c-6.svg'),
(132, 54, '_wp_attached_file', '2021/06/c-7.svg'),
(133, 55, '_wp_attached_file', '2021/06/c-8.svg'),
(134, 56, '_wp_attached_file', '2021/06/c-9.svg'),
(135, 59, '_wp_attached_file', '2021/06/c-10.svg'),
(136, 63, '_wp_attached_file', '2021/06/c-11.svg'),
(137, 64, '_wp_attached_file', '2021/06/c-12.svg'),
(139, 66, '_wp_attached_file', '2021/06/c-13.svg'),
(140, 67, '_wp_attached_file', '2021/06/c-14.svg'),
(142, 69, '_wp_attached_file', '2021/06/c-15.svg'),
(143, 70, '_wp_attached_file', '2021/06/1623620037Venezuela-sticker-symbol.svg'),
(146, 73, '_wp_attached_file', '2021/06/1623620037Venezuela-sticker-symbol-1.svg'),
(148, 75, '_wp_attached_file', '2021/06/1623620037Venezuela-sticker-symbol-2.svg'),
(149, 76, '_wp_attached_file', '2021/06/SVG_logo.svg'),
(151, 78, '_wp_attached_file', '2021/06/SVG_logo-1.svg'),
(152, 79, '_wp_attached_file', '2021/06/1623620037Venezuela-sticker-symbol-3.svg'),
(154, 81, '_wp_attached_file', '2021/06/SVG_logo-2.svg'),
(155, 82, '_wp_attached_file', '2021/06/SVG_logo-3.svg'),
(156, 82, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"file\";s:23:\"/2021/06/SVG_logo-3.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:14:\"SVG_logo-3.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:14:\"SVG_logo-3.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:14:\"SVG_logo-3.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:14:\"SVG_logo-3.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:14:\"SVG_logo-3.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:14:\"SVG_logo-3.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(157, 83, '_wp_attached_file', '2021/06/c-16.svg'),
(158, 83, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:87;s:6:\"height\";i:99;s:4:\"file\";s:17:\"/2021/06/c-16.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:8:\"c-16.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:8:\"c-16.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:8:\"c-16.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:8:\"c-16.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:8:\"c-16.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:8:\"c-16.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(159, 23, '_thumbnail_id', '83'),
(160, 23, 'inline_featured_image', '0'),
(170, 7, '_wp_old_date', '2021-06-15'),
(172, 10, '_wp_old_date', '2021-06-15'),
(193, 87, '_menu_item_type', 'custom'),
(194, 87, '_menu_item_menu_item_parent', '0'),
(195, 87, '_menu_item_object_id', '87'),
(196, 87, '_menu_item_object', 'custom'),
(197, 87, '_menu_item_target', ''),
(198, 87, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(199, 87, '_menu_item_xfn', ''),
(200, 87, '_menu_item_url', '#'),
(202, 88, '_wp_attached_file', '2021/06/logo-1.svg'),
(203, 88, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:80;s:6:\"height\";i:38;s:4:\"file\";s:19:\"/2021/06/logo-1.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:10:\"logo-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:10:\"logo-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:10:\"logo-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:10:\"logo-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:10:\"logo-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:10:\"logo-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(204, 89, '_menu_item_type', 'custom'),
(205, 89, '_menu_item_menu_item_parent', '0'),
(206, 89, '_menu_item_object_id', '89'),
(207, 89, '_menu_item_object', 'custom'),
(208, 89, '_menu_item_target', ''),
(209, 89, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(210, 89, '_menu_item_xfn', ''),
(211, 89, '_menu_item_url', '#'),
(213, 90, '_menu_item_type', 'custom'),
(214, 90, '_menu_item_menu_item_parent', '0'),
(215, 90, '_menu_item_object_id', '90'),
(216, 90, '_menu_item_object', 'custom'),
(217, 90, '_menu_item_target', ''),
(218, 90, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(219, 90, '_menu_item_xfn', ''),
(220, 90, '_menu_item_url', '#'),
(222, 91, '_menu_item_type', 'custom'),
(223, 91, '_menu_item_menu_item_parent', '0'),
(224, 91, '_menu_item_object_id', '91'),
(225, 91, '_menu_item_object', 'custom'),
(226, 91, '_menu_item_target', ''),
(227, 91, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(228, 91, '_menu_item_xfn', ''),
(229, 91, '_menu_item_url', '#'),
(231, 92, '_menu_item_type', 'custom'),
(232, 92, '_menu_item_menu_item_parent', '0'),
(233, 92, '_menu_item_object_id', '92'),
(234, 92, '_menu_item_object', 'custom'),
(235, 92, '_menu_item_target', ''),
(236, 92, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(237, 92, '_menu_item_xfn', ''),
(238, 92, '_menu_item_url', '#'),
(240, 93, '_menu_item_type', 'custom'),
(241, 93, '_menu_item_menu_item_parent', '0'),
(242, 93, '_menu_item_object_id', '93'),
(243, 93, '_menu_item_object', 'custom'),
(244, 93, '_menu_item_target', ''),
(245, 93, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(246, 93, '_menu_item_xfn', ''),
(247, 93, '_menu_item_url', '#'),
(249, 94, '_menu_item_type', 'custom'),
(250, 94, '_menu_item_menu_item_parent', '0'),
(251, 94, '_menu_item_object_id', '94'),
(252, 94, '_menu_item_object', 'custom'),
(253, 94, '_menu_item_target', ''),
(254, 94, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(255, 94, '_menu_item_xfn', ''),
(256, 94, '_menu_item_url', '#'),
(258, 95, '_menu_item_type', 'custom'),
(259, 95, '_menu_item_menu_item_parent', '0'),
(260, 95, '_menu_item_object_id', '95'),
(261, 95, '_menu_item_object', 'custom'),
(262, 95, '_menu_item_target', ''),
(263, 95, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(264, 95, '_menu_item_xfn', ''),
(265, 95, '_menu_item_url', '#'),
(267, 96, '_menu_item_type', 'custom'),
(268, 96, '_menu_item_menu_item_parent', '0'),
(269, 96, '_menu_item_object_id', '96'),
(270, 96, '_menu_item_object', 'custom'),
(271, 96, '_menu_item_target', ''),
(272, 96, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(273, 96, '_menu_item_xfn', ''),
(274, 96, '_menu_item_url', '#'),
(276, 97, '_menu_item_type', 'custom'),
(277, 97, '_menu_item_menu_item_parent', '0'),
(278, 97, '_menu_item_object_id', '97'),
(279, 97, '_menu_item_object', 'custom'),
(280, 97, '_menu_item_target', ''),
(281, 97, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(282, 97, '_menu_item_xfn', ''),
(283, 97, '_menu_item_url', '#'),
(285, 98, '_menu_item_type', 'custom'),
(286, 98, '_menu_item_menu_item_parent', '0'),
(287, 98, '_menu_item_object_id', '98'),
(288, 98, '_menu_item_object', 'custom'),
(289, 98, '_menu_item_target', ''),
(290, 98, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(291, 98, '_menu_item_xfn', ''),
(292, 98, '_menu_item_url', '#'),
(294, 99, '_menu_item_type', 'custom'),
(295, 99, '_menu_item_menu_item_parent', '0'),
(296, 99, '_menu_item_object_id', '99'),
(297, 99, '_menu_item_object', 'custom'),
(298, 99, '_menu_item_target', ''),
(299, 99, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(300, 99, '_menu_item_xfn', ''),
(301, 99, '_menu_item_url', '#'),
(303, 100, '_menu_item_type', 'custom'),
(304, 100, '_menu_item_menu_item_parent', '0'),
(305, 100, '_menu_item_object_id', '100'),
(306, 100, '_menu_item_object', 'custom'),
(307, 100, '_menu_item_target', ''),
(308, 100, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(309, 100, '_menu_item_xfn', ''),
(310, 100, '_menu_item_url', '#'),
(312, 101, '_menu_item_type', 'custom'),
(313, 101, '_menu_item_menu_item_parent', '0'),
(314, 101, '_menu_item_object_id', '101'),
(315, 101, '_menu_item_object', 'custom'),
(316, 101, '_menu_item_target', ''),
(317, 101, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(318, 101, '_menu_item_xfn', ''),
(319, 101, '_menu_item_url', '#'),
(321, 102, '_menu_item_type', 'custom'),
(322, 102, '_menu_item_menu_item_parent', '0'),
(323, 102, '_menu_item_object_id', '102'),
(324, 102, '_menu_item_object', 'custom'),
(325, 102, '_menu_item_target', ''),
(326, 102, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(327, 102, '_menu_item_xfn', ''),
(328, 102, '_menu_item_url', '#'),
(330, 103, '_menu_item_type', 'custom'),
(331, 103, '_menu_item_menu_item_parent', '0'),
(332, 103, '_menu_item_object_id', '103'),
(333, 103, '_menu_item_object', 'custom'),
(334, 103, '_menu_item_target', ''),
(335, 103, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(336, 103, '_menu_item_xfn', ''),
(337, 103, '_menu_item_url', '#'),
(339, 104, '_menu_item_type', 'custom'),
(340, 104, '_menu_item_menu_item_parent', '0'),
(341, 104, '_menu_item_object_id', '104'),
(342, 104, '_menu_item_object', 'custom'),
(343, 104, '_menu_item_target', ''),
(344, 104, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(345, 104, '_menu_item_xfn', ''),
(346, 104, '_menu_item_url', '#'),
(348, 105, '_menu_item_type', 'custom'),
(349, 105, '_menu_item_menu_item_parent', '0'),
(350, 105, '_menu_item_object_id', '105'),
(351, 105, '_menu_item_object', 'custom'),
(352, 105, '_menu_item_target', ''),
(353, 105, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(354, 105, '_menu_item_xfn', ''),
(355, 105, '_menu_item_url', '#'),
(357, 106, '_menu_item_type', 'custom'),
(358, 106, '_menu_item_menu_item_parent', '0'),
(359, 106, '_menu_item_object_id', '106'),
(360, 106, '_menu_item_object', 'custom'),
(361, 106, '_menu_item_target', ''),
(362, 106, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(363, 106, '_menu_item_xfn', ''),
(364, 106, '_menu_item_url', '#'),
(366, 107, '_menu_item_type', 'custom'),
(367, 107, '_menu_item_menu_item_parent', '0'),
(368, 107, '_menu_item_object_id', '107'),
(369, 107, '_menu_item_object', 'custom'),
(370, 107, '_menu_item_target', ''),
(371, 107, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(372, 107, '_menu_item_xfn', ''),
(373, 107, '_menu_item_url', '#'),
(375, 108, '_menu_item_type', 'custom'),
(376, 108, '_menu_item_menu_item_parent', '0'),
(377, 108, '_menu_item_object_id', '108'),
(378, 108, '_menu_item_object', 'custom'),
(379, 108, '_menu_item_target', ''),
(380, 108, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(381, 108, '_menu_item_xfn', ''),
(382, 108, '_menu_item_url', '#'),
(384, 109, '_menu_item_type', 'custom'),
(385, 109, '_menu_item_menu_item_parent', '0'),
(386, 109, '_menu_item_object_id', '109'),
(387, 109, '_menu_item_object', 'custom'),
(388, 109, '_menu_item_target', ''),
(389, 109, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(390, 109, '_menu_item_xfn', ''),
(391, 109, '_menu_item_url', '#'),
(393, 110, '_menu_item_type', 'custom'),
(394, 110, '_menu_item_menu_item_parent', '0'),
(395, 110, '_menu_item_object_id', '110'),
(396, 110, '_menu_item_object', 'custom'),
(397, 110, '_menu_item_target', ''),
(398, 110, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(399, 110, '_menu_item_xfn', ''),
(400, 110, '_menu_item_url', '#'),
(411, 112, '_menu_item_type', 'custom'),
(412, 112, '_menu_item_menu_item_parent', '0'),
(413, 112, '_menu_item_object_id', '112'),
(414, 112, '_menu_item_object', 'custom'),
(415, 112, '_menu_item_target', ''),
(416, 112, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(417, 112, '_menu_item_xfn', ''),
(418, 112, '_menu_item_url', '#'),
(420, 113, '_menu_item_type', 'custom'),
(421, 113, '_menu_item_menu_item_parent', '0'),
(422, 113, '_menu_item_object_id', '113'),
(423, 113, '_menu_item_object', 'custom'),
(424, 113, '_menu_item_target', ''),
(425, 113, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(426, 113, '_menu_item_xfn', ''),
(427, 113, '_menu_item_url', '#'),
(429, 35, '_wp_trash_meta_status', 'publish'),
(430, 35, '_wp_trash_meta_time', '1623926281'),
(431, 35, '_wp_desired_post_slug', 'auto-draft-7'),
(432, 35, 'inline_featured_image', '0'),
(433, 33, '_wp_trash_meta_status', 'publish'),
(434, 33, '_wp_trash_meta_time', '1623926281'),
(435, 33, '_wp_desired_post_slug', 'auto-draft-6'),
(436, 33, 'inline_featured_image', '0'),
(437, 31, '_wp_trash_meta_status', 'publish'),
(438, 31, '_wp_trash_meta_time', '1623926281'),
(439, 31, '_wp_desired_post_slug', 'auto-draft-5'),
(440, 31, 'inline_featured_image', '0'),
(441, 29, '_wp_trash_meta_status', 'publish'),
(442, 29, '_wp_trash_meta_time', '1623926281'),
(443, 29, '_wp_desired_post_slug', 'auto-draft-4'),
(444, 29, 'inline_featured_image', '0'),
(445, 27, '_wp_trash_meta_status', 'publish'),
(446, 27, '_wp_trash_meta_time', '1623926281'),
(447, 27, '_wp_desired_post_slug', 'auto-draft-3'),
(448, 27, 'inline_featured_image', '0'),
(449, 25, '_wp_trash_meta_status', 'publish'),
(450, 25, '_wp_trash_meta_time', '1623926281'),
(451, 25, '_wp_desired_post_slug', 'auto-draft-2'),
(452, 25, 'inline_featured_image', '0'),
(453, 23, '_wp_trash_meta_status', 'publish'),
(454, 23, '_wp_trash_meta_time', '1623926281'),
(455, 23, '_wp_desired_post_slug', 'auto-draft'),
(456, 114, 'inline_featured_image', '0'),
(457, 115, '_wp_attached_file', '2021/06/azure.svg'),
(458, 115, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:86;s:6:\"height\";i:70;s:4:\"file\";s:18:\"/2021/06/azure.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:9:\"azure.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:9:\"azure.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:9:\"azure.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:9:\"azure.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:9:\"azure.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:9:\"azure.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(459, 114, '_edit_last', '1'),
(460, 114, '_thumbnail_id', '115'),
(461, 114, '_edit_lock', '1623926160:1'),
(462, 116, 'inline_featured_image', '0'),
(463, 117, '_wp_attached_file', '2021/06/c-17.svg'),
(464, 117, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:86;s:6:\"height\";i:100;s:4:\"file\";s:17:\"/2021/06/c-17.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:8:\"c-17.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:8:\"c-17.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:8:\"c-17.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:8:\"c-17.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:8:\"c-17.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:8:\"c-17.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(465, 116, '_edit_last', '1'),
(466, 116, '_thumbnail_id', '117'),
(467, 116, '_edit_lock', '1623926173:1'),
(468, 118, 'inline_featured_image', '0'),
(469, 119, '_wp_attached_file', '2021/06/docker.svg'),
(470, 119, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:86;s:6:\"height\";i:76;s:4:\"file\";s:19:\"/2021/06/docker.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:10:\"docker.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:10:\"docker.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:10:\"docker.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:10:\"docker.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:10:\"docker.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:10:\"docker.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(471, 118, '_edit_last', '1'),
(472, 118, '_thumbnail_id', '119'),
(473, 118, '_edit_lock', '1623926190:1'),
(474, 120, 'inline_featured_image', '0'),
(475, 121, '_wp_attached_file', '2021/06/flutter.svg'),
(476, 121, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:90;s:6:\"height\";i:40;s:4:\"file\";s:20:\"/2021/06/flutter.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:11:\"flutter.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:11:\"flutter.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:11:\"flutter.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:11:\"flutter.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:11:\"flutter.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:11:\"flutter.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(477, 120, '_edit_last', '1'),
(478, 120, '_thumbnail_id', '121'),
(479, 120, '_edit_lock', '1623926206:1'),
(480, 122, 'inline_featured_image', '0'),
(481, 123, '_wp_attached_file', '2021/06/kubernetis-1.svg'),
(482, 123, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:87;s:6:\"height\";i:87;s:4:\"file\";s:25:\"/2021/06/kubernetis-1.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:16:\"kubernetis-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:16:\"kubernetis-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:16:\"kubernetis-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:16:\"kubernetis-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:16:\"kubernetis-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:16:\"kubernetis-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(483, 122, '_edit_last', '1'),
(484, 122, '_thumbnail_id', '123'),
(485, 122, '_edit_lock', '1623926219:1'),
(486, 124, 'inline_featured_image', '0'),
(487, 125, '_wp_attached_file', '2021/06/net.svg'),
(488, 125, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:87;s:6:\"height\";i:61;s:4:\"file\";s:16:\"/2021/06/net.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:7:\"net.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:7:\"net.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:7:\"net.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:7:\"net.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:7:\"net.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:7:\"net.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(489, 124, '_edit_last', '1'),
(490, 124, '_thumbnail_id', '125'),
(491, 124, '_edit_lock', '1623926231:1'),
(492, 126, 'inline_featured_image', '0'),
(493, 127, '_wp_attached_file', '2021/06/nginx.svg'),
(494, 127, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:90;s:6:\"height\";i:26;s:4:\"file\";s:18:\"/2021/06/nginx.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:9:\"nginx.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:9:\"nginx.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:9:\"nginx.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:9:\"nginx.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:9:\"nginx.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:9:\"nginx.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(495, 126, '_edit_last', '1'),
(496, 126, '_thumbnail_id', '127'),
(497, 126, '_edit_lock', '1623927670:1'),
(498, 19, '_wp_trash_meta_status', 'publish'),
(499, 19, '_wp_trash_meta_time', '1623927881'),
(500, 19, '_wp_desired_post_slug', 'auto-draft-4'),
(501, 19, 'inline_featured_image', '0'),
(502, 17, '_wp_trash_meta_status', 'publish'),
(503, 17, '_wp_trash_meta_time', '1623927881'),
(504, 17, '_wp_desired_post_slug', 'auto-draft-3'),
(505, 17, 'inline_featured_image', '0'),
(506, 15, '_wp_trash_meta_status', 'publish'),
(507, 15, '_wp_trash_meta_time', '1623927881'),
(508, 15, '_wp_desired_post_slug', 'auto-draft-2'),
(509, 15, 'inline_featured_image', '0'),
(510, 13, '_wp_trash_meta_status', 'publish'),
(511, 13, '_wp_trash_meta_time', '1623927881'),
(512, 13, '_wp_desired_post_slug', 'auto-draft'),
(513, 13, 'inline_featured_image', '0'),
(514, 128, 'inline_featured_image', '0'),
(515, 129, '_wp_attached_file', '2021/06/akij-cement.svg'),
(516, 129, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:200;s:6:\"height\";i:40;s:4:\"file\";s:24:\"/2021/06/akij-cement.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:15:\"akij-cement.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:15:\"akij-cement.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:15:\"akij-cement.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:15:\"akij-cement.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:15:\"akij-cement.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:15:\"akij-cement.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(517, 128, '_edit_last', '1'),
(518, 128, '_thumbnail_id', '129'),
(519, 128, '_edit_lock', '1623927753:1'),
(520, 130, 'inline_featured_image', '0'),
(521, 131, '_wp_attached_file', '2021/06/akij-food.svg'),
(522, 131, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:200;s:6:\"height\";i:102;s:4:\"file\";s:22:\"/2021/06/akij-food.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:13:\"akij-food.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:13:\"akij-food.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:13:\"akij-food.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:13:\"akij-food.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:13:\"akij-food.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:13:\"akij-food.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(523, 130, '_edit_last', '1'),
(524, 130, '_thumbnail_id', '131'),
(525, 130, '_edit_lock', '1623927765:1'),
(526, 132, 'inline_featured_image', '0'),
(527, 133, '_wp_attached_file', '2021/06/akij-poly-fiber.svg'),
(528, 133, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:200;s:6:\"height\";i:83;s:4:\"file\";s:28:\"/2021/06/akij-poly-fiber.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:19:\"akij-poly-fiber.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:19:\"akij-poly-fiber.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:19:\"akij-poly-fiber.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:19:\"akij-poly-fiber.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:19:\"akij-poly-fiber.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:19:\"akij-poly-fiber.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(529, 132, '_edit_last', '1'),
(530, 132, '_thumbnail_id', '133'),
(531, 132, '_edit_lock', '1623927777:1'),
(532, 134, 'inline_featured_image', '0'),
(533, 135, '_wp_attached_file', '2021/06/akij-shipping.svg'),
(534, 135, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:193;s:6:\"height\";i:101;s:4:\"file\";s:26:\"/2021/06/akij-shipping.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:17:\"akij-shipping.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:17:\"akij-shipping.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:17:\"akij-shipping.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:17:\"akij-shipping.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:17:\"akij-shipping.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:17:\"akij-shipping.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(535, 134, '_edit_last', '1'),
(536, 134, '_thumbnail_id', '135'),
(537, 134, '_edit_lock', '1623927933:1'),
(538, 7, '_wp_old_date', '2021-06-17'),
(540, 10, '_wp_old_date', '2021-06-17'),
(552, 137, '_menu_item_type', 'custom'),
(553, 137, '_menu_item_menu_item_parent', '10'),
(554, 137, '_menu_item_object_id', '137'),
(555, 137, '_menu_item_object', 'custom'),
(556, 137, '_menu_item_target', ''),
(557, 137, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(558, 137, '_menu_item_xfn', ''),
(559, 137, '_menu_item_url', '#'),
(579, 140, '_menu_item_type', 'custom'),
(580, 140, '_menu_item_menu_item_parent', '10'),
(581, 140, '_menu_item_object_id', '140'),
(582, 140, '_menu_item_object', 'custom'),
(583, 140, '_menu_item_target', ''),
(584, 140, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(585, 140, '_menu_item_xfn', ''),
(586, 140, '_menu_item_url', '#'),
(588, 2, '_edit_lock', '1624164808:1'),
(591, 142, 'inline_featured_image', '0'),
(592, 142, '_edit_lock', '1624172370:1'),
(593, 143, '_menu_item_type', 'post_type'),
(594, 143, '_menu_item_menu_item_parent', '0'),
(595, 143, '_menu_item_object_id', '142'),
(596, 143, '_menu_item_object', 'page'),
(597, 143, '_menu_item_target', ''),
(598, 143, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(599, 143, '_menu_item_xfn', ''),
(600, 143, '_menu_item_url', ''),
(601, 144, '_menu_item_type', 'post_type'),
(602, 144, '_menu_item_menu_item_parent', '0'),
(603, 144, '_menu_item_object_id', '142'),
(604, 144, '_menu_item_object', 'page'),
(605, 144, '_menu_item_target', ''),
(606, 144, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(607, 144, '_menu_item_xfn', ''),
(608, 144, '_menu_item_url', ''),
(609, 142, '_wp_page_template', 'ContactTemplate.php'),
(612, 147, 'inline_featured_image', '0'),
(613, 147, '_edit_lock', '1624164417:1'),
(622, 149, '_menu_item_type', 'post_type'),
(623, 149, '_menu_item_menu_item_parent', '0'),
(624, 149, '_menu_item_object_id', '147'),
(625, 149, '_menu_item_object', 'page'),
(626, 149, '_menu_item_target', ''),
(627, 149, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(628, 149, '_menu_item_xfn', ''),
(629, 149, '_menu_item_url', ''),
(630, 147, '_wp_page_template', 'bookDemoTemplate.php'),
(633, 153, 'inline_featured_image', '0'),
(634, 153, '_edit_last', '1'),
(635, 153, '_edit_lock', '1624163362:1'),
(636, 154, '_wp_attached_file', '2021/06/ibos-discuss.png'),
(637, 154, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:570;s:6:\"height\";i:226;s:4:\"file\";s:24:\"2021/06/ibos-discuss.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"ibos-discuss-300x119.png\";s:5:\"width\";i:300;s:6:\"height\";i:119;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"ibos-discuss-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(638, 153, '_thumbnail_id', '154'),
(639, 155, 'inline_featured_image', '0'),
(640, 155, '_edit_last', '1'),
(641, 155, '_edit_lock', '1624164392:1'),
(642, 156, '_wp_attached_file', '2021/06/akij.png'),
(643, 156, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:535;s:6:\"height\";i:445;s:4:\"file\";s:16:\"2021/06/akij.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"akij-300x250.png\";s:5:\"width\";i:300;s:6:\"height\";i:250;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"akij-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(644, 155, '_thumbnail_id', '156'),
(645, 1, '_edit_lock', '1624681819:1'),
(681, 163, '_wp_attached_file', '2021/06/ibos-favicon.svg'),
(682, 163, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:0;s:6:\"height\";i:0;s:4:\"file\";s:25:\"/2021/06/ibos-favicon.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:16:\"ibos-favicon.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:16:\"ibos-favicon.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:16:\"ibos-favicon.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:16:\"ibos-favicon.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:16:\"ibos-favicon.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:16:\"ibos-favicon.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(683, 164, 'inline_featured_image', '0'),
(684, 164, '_edit_lock', '1624251438:1'),
(685, 165, '_menu_item_type', 'post_type'),
(686, 165, '_menu_item_menu_item_parent', '0'),
(687, 165, '_menu_item_object_id', '164'),
(688, 165, '_menu_item_object', 'page'),
(689, 165, '_menu_item_target', ''),
(690, 165, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(691, 165, '_menu_item_xfn', ''),
(692, 165, '_menu_item_url', ''),
(693, 166, '_menu_item_type', 'post_type'),
(694, 166, '_menu_item_menu_item_parent', '0'),
(695, 166, '_menu_item_object_id', '164'),
(696, 166, '_menu_item_object', 'page'),
(697, 166, '_menu_item_target', ''),
(698, 166, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(699, 166, '_menu_item_xfn', ''),
(700, 166, '_menu_item_url', ''),
(701, 164, '_wp_page_template', 'aboutTemplate.php'),
(702, 7, '_wp_old_date', '2021-06-19'),
(704, 10, '_wp_old_date', '2021-06-19'),
(706, 137, '_wp_old_date', '2021-06-19'),
(709, 140, '_wp_old_date', '2021-06-19'),
(710, 143, '_wp_old_date', '2021-06-19'),
(714, 173, 'inline_featured_image', '0'),
(715, 173, '_edit_last', '1'),
(716, 173, '_edit_lock', '1624267660:1'),
(717, 174, '_wp_attached_file', '2021/06/user01.png'),
(718, 174, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:178;s:6:\"height\";i:186;s:4:\"file\";s:18:\"2021/06/user01.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"user01-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(719, 173, '_thumbnail_id', '174'),
(720, 175, 'inline_featured_image', '0'),
(721, 175, '_edit_last', '1'),
(722, 175, '_edit_lock', '1624270873:1'),
(723, 176, '_wp_attached_file', '2021/06/user06.png'),
(724, 176, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:166;s:6:\"height\";i:185;s:4:\"file\";s:18:\"2021/06/user06.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"user06-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(725, 175, '_thumbnail_id', '176'),
(726, 177, 'inline_featured_image', '0'),
(727, 177, '_edit_last', '1'),
(728, 177, '_edit_lock', '1624270929:1'),
(729, 177, '_thumbnail_id', '174'),
(730, 178, 'inline_featured_image', '0'),
(731, 178, '_edit_last', '1'),
(732, 178, '_edit_lock', '1624270962:1'),
(733, 179, '_wp_attached_file', '2021/06/user05.png'),
(734, 179, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:193;s:6:\"height\";i:185;s:4:\"file\";s:18:\"2021/06/user05.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"user05-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(735, 178, '_thumbnail_id', '179'),
(736, 180, 'inline_featured_image', '0'),
(737, 180, '_edit_last', '1'),
(738, 180, '_edit_lock', '1624271000:1'),
(739, 181, '_wp_attached_file', '2021/06/user07.png'),
(740, 181, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:176;s:6:\"height\";i:185;s:4:\"file\";s:18:\"2021/06/user07.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"user07-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(741, 180, '_thumbnail_id', '181'),
(742, 182, 'inline_featured_image', '0'),
(743, 182, '_edit_last', '1'),
(744, 182, '_edit_lock', '1624271017:1'),
(745, 183, '_wp_attached_file', '2021/06/user02.png');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(746, 183, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:181;s:6:\"height\";i:184;s:4:\"file\";s:18:\"2021/06/user02.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"user02-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(747, 182, '_thumbnail_id', '183'),
(748, 184, 'inline_featured_image', '0'),
(749, 184, '_edit_last', '1'),
(750, 184, '_edit_lock', '1624271050:1'),
(751, 185, '_wp_attached_file', '2021/06/user08.png'),
(752, 185, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:161;s:6:\"height\";i:185;s:4:\"file\";s:18:\"2021/06/user08.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"user08-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(753, 184, '_thumbnail_id', '185'),
(754, 186, 'inline_featured_image', '0'),
(755, 186, '_edit_last', '1'),
(756, 186, '_edit_lock', '1624271070:1'),
(757, 187, '_wp_attached_file', '2021/06/user04.png'),
(758, 187, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:167;s:6:\"height\";i:186;s:4:\"file\";s:18:\"2021/06/user04.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"user04-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(759, 186, '_thumbnail_id', '187'),
(760, 188, 'inline_featured_image', '0'),
(761, 188, '_edit_last', '1'),
(762, 188, '_edit_lock', '1624271117:1'),
(763, 189, '_wp_attached_file', '2021/06/user03.png'),
(764, 189, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:173;s:6:\"height\";i:185;s:4:\"file\";s:18:\"2021/06/user03.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"user03-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(765, 188, '_thumbnail_id', '189'),
(766, 190, 'inline_featured_image', '0'),
(767, 190, '_edit_last', '1'),
(768, 190, '_edit_lock', '1624271536:1'),
(769, 190, '_thumbnail_id', '176'),
(770, 190, '_wp_trash_meta_status', 'publish'),
(771, 190, '_wp_trash_meta_time', '1624271694'),
(772, 190, '_wp_desired_post_slug', 'forhad'),
(773, 188, '_wp_trash_meta_status', 'publish'),
(774, 188, '_wp_trash_meta_time', '1624271694'),
(775, 188, '_wp_desired_post_slug', 'al-amin'),
(776, 186, '_wp_trash_meta_status', 'publish'),
(777, 186, '_wp_trash_meta_time', '1624271719'),
(778, 186, '_wp_desired_post_slug', 'humaira'),
(779, 191, 'inline_featured_image', '0'),
(780, 191, '_edit_last', '1'),
(781, 191, '_edit_lock', '1624271620:1'),
(782, 191, '_thumbnail_id', '181'),
(783, 192, 'inline_featured_image', '0'),
(784, 192, '_edit_last', '1'),
(785, 192, '_edit_lock', '1624271741:1'),
(786, 192, '_thumbnail_id', '189'),
(787, 193, 'inline_featured_image', '0'),
(788, 193, '_edit_last', '1'),
(789, 193, '_edit_lock', '1624271813:1'),
(790, 194, '_wp_attached_file', '2021/06/user02-1.png'),
(791, 194, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:181;s:6:\"height\";i:184;s:4:\"file\";s:20:\"2021/06/user02-1.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"user02-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(792, 193, '_thumbnail_id', '194'),
(793, 195, 'inline_featured_image', '0'),
(794, 195, '_edit_last', '1'),
(795, 195, '_edit_lock', '1624271852:1'),
(796, 196, '_wp_attached_file', '2021/06/user08-1.png'),
(797, 196, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:161;s:6:\"height\";i:185;s:4:\"file\";s:20:\"2021/06/user08-1.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"user08-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(798, 195, '_thumbnail_id', '196'),
(799, 197, 'inline_featured_image', '0'),
(800, 197, '_edit_last', '1'),
(801, 197, '_edit_lock', '1624271886:1'),
(802, 197, '_thumbnail_id', '181'),
(803, 198, 'inline_featured_image', '0'),
(804, 198, '_edit_last', '1'),
(805, 198, '_edit_lock', '1624272159:1'),
(806, 199, '_wp_attached_file', '2021/06/user05-1.png'),
(807, 199, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:193;s:6:\"height\";i:185;s:4:\"file\";s:20:\"2021/06/user05-1.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"user05-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(808, 198, '_thumbnail_id', '199'),
(811, 202, 'inline_featured_image', '0'),
(812, 202, '_edit_lock', '1624420372:1'),
(821, 204, '_menu_item_type', 'post_type'),
(822, 204, '_menu_item_menu_item_parent', '0'),
(823, 204, '_menu_item_object_id', '202'),
(824, 204, '_menu_item_object', 'page'),
(825, 204, '_menu_item_target', ''),
(826, 204, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(827, 204, '_menu_item_xfn', ''),
(828, 204, '_menu_item_url', ''),
(829, 202, '_wp_page_template', 'blogTemplate.php'),
(833, 209, 'inline_featured_image', '0'),
(834, 209, '_edit_last', '1'),
(835, 209, '_edit_lock', '1624424350:1'),
(837, 211, '_wp_attached_file', '2021/06/blog03.png'),
(838, 211, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:810;s:6:\"height\";i:570;s:4:\"file\";s:18:\"2021/06/blog03.png\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"blog03-300x211.png\";s:5:\"width\";i:300;s:6:\"height\";i:211;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"blog03-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"blog03-768x540.png\";s:5:\"width\";i:768;s:6:\"height\";i:540;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(839, 209, '_thumbnail_id', '211'),
(841, 213, 'inline_featured_image', '0'),
(842, 213, '_edit_last', '1'),
(843, 213, '_edit_lock', '1624514960:1'),
(844, 213, '_thumbnail_id', '211'),
(846, 215, 'inline_featured_image', '0'),
(847, 215, '_edit_last', '1'),
(848, 215, '_edit_lock', '1624436146:1'),
(849, 216, '_wp_attached_file', '2021/06/Image20210623124446.png'),
(850, 216, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:185;s:6:\"height\";i:185;s:4:\"file\";s:31:\"2021/06/Image20210623124446.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"Image20210623124446-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(851, 215, '_thumbnail_id', '217'),
(852, 217, '_wp_attached_file', '2021/06/Image20210623130939.png'),
(853, 217, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:185;s:6:\"height\";i:185;s:4:\"file\";s:31:\"2021/06/Image20210623130939.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"Image20210623130939-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(861, 225, 'inline_featured_image', '0'),
(862, 225, '_edit_last', '1'),
(863, 225, '_edit_lock', '1624441271:1'),
(866, 228, 'inline_featured_image', '0'),
(867, 228, '_edit_last', '1'),
(868, 228, '_edit_lock', '1624512744:1'),
(869, 228, '_thumbnail_id', '211'),
(871, 230, 'inline_featured_image', '0'),
(872, 230, '_edit_last', '1'),
(873, 230, '_edit_lock', '1624512736:1'),
(874, 230, '_thumbnail_id', '231'),
(875, 231, '_wp_attached_file', '2021/06/blog01.png'),
(876, 231, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:810;s:6:\"height\";i:570;s:4:\"file\";s:18:\"2021/06/blog01.png\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"blog01-300x211.png\";s:5:\"width\";i:300;s:6:\"height\";i:211;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"blog01-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"blog01-768x540.png\";s:5:\"width\";i:768;s:6:\"height\";i:540;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(877, 232, 'inline_featured_image', '0'),
(878, 232, '_edit_last', '1'),
(879, 232, '_edit_lock', '1624532651:1'),
(880, 232, '_thumbnail_id', '231'),
(885, 237, 'inline_featured_image', '0'),
(886, 237, '_edit_lock', '1624695593:1'),
(889, 237, '_thumbnail_id', '231'),
(894, 242, 'inline_featured_image', '0'),
(895, 242, '_edit_lock', '1624687323:1'),
(896, 243, '_wp_attached_file', '2021/06/blog02.png'),
(897, 243, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:810;s:6:\"height\";i:570;s:4:\"file\";s:18:\"2021/06/blog02.png\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"blog02-300x211.png\";s:5:\"width\";i:300;s:6:\"height\";i:211;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"blog02-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"blog02-768x540.png\";s:5:\"width\";i:768;s:6:\"height\";i:540;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(899, 242, '_thumbnail_id', '243'),
(900, 245, 'inline_featured_image', '0'),
(901, 245, '_edit_lock', '1624684503:1'),
(902, 246, '_wp_attached_file', '2021/06/blog-img.jpg'),
(903, 246, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2121;s:6:\"height\";i:1089;s:4:\"file\";s:20:\"2021/06/blog-img.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"blog-img-300x154.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"blog-img-1024x526.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:526;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"blog-img-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"blog-img-768x394.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:394;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:21:\"blog-img-1536x789.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:789;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:22:\"blog-img-2048x1052.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1052;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(905, 245, '_thumbnail_id', '250'),
(908, 1, '_wp_trash_meta_status', 'publish'),
(909, 1, '_wp_trash_meta_time', '1624681974'),
(910, 1, '_wp_desired_post_slug', 'hello-world'),
(911, 1, 'inline_featured_image', '0'),
(912, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(913, 250, '_wp_attached_file', '2021/06/blog03-1.png'),
(914, 250, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:810;s:6:\"height\";i:570;s:4:\"file\";s:20:\"2021/06/blog03-1.png\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"blog03-1-300x211.png\";s:5:\"width\";i:300;s:6:\"height\";i:211;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"blog03-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"blog03-1-768x540.png\";s:5:\"width\";i:768;s:6:\"height\";i:540;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(919, 7, '_wp_old_date', '2021-06-21'),
(920, 10, '_wp_old_date', '2021-06-21'),
(922, 137, '_wp_old_date', '2021-06-21'),
(925, 140, '_wp_old_date', '2021-06-21'),
(926, 165, '_wp_old_date', '2021-06-21'),
(927, 143, '_wp_old_date', '2021-06-21'),
(930, 255, 'inline_featured_image', '0'),
(931, 256, '_wp_attached_file', '2021/06/001-sql-server.svg'),
(932, 256, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:27:\"/2021/06/001-sql-server.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:18:\"001-sql-server.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:18:\"001-sql-server.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:18:\"001-sql-server.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:18:\"001-sql-server.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:18:\"001-sql-server.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:18:\"001-sql-server.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(933, 255, '_edit_last', '1'),
(934, 255, '_thumbnail_id', '256'),
(935, 255, '_edit_lock', '1625048973:1'),
(936, 257, 'inline_featured_image', '0'),
(937, 257, '_edit_lock', '1625049046:1'),
(938, 258, '_menu_item_type', 'post_type'),
(939, 258, '_menu_item_menu_item_parent', '10'),
(940, 258, '_menu_item_object_id', '257'),
(941, 258, '_menu_item_object', 'page'),
(942, 258, '_menu_item_target', ''),
(943, 258, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(944, 258, '_menu_item_xfn', ''),
(945, 258, '_menu_item_url', ''),
(946, 259, '_menu_item_type', 'post_type'),
(947, 259, '_menu_item_menu_item_parent', '0'),
(948, 259, '_menu_item_object_id', '257'),
(949, 259, '_menu_item_object', 'page'),
(950, 259, '_menu_item_target', ''),
(951, 259, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(952, 259, '_menu_item_xfn', ''),
(953, 259, '_menu_item_url', ''),
(954, 257, '_wp_page_template', 'mobileAppDevelopmentTemplate.php'),
(955, 7, '_wp_old_date', '2021-06-28'),
(956, 10, '_wp_old_date', '2021-06-28'),
(958, 137, '_wp_old_date', '2021-06-28'),
(960, 140, '_wp_old_date', '2021-06-28'),
(961, 165, '_wp_old_date', '2021-06-28'),
(962, 143, '_wp_old_date', '2021-06-28'),
(964, 261, '_menu_item_type', 'post_type'),
(965, 261, '_menu_item_menu_item_parent', '0'),
(966, 261, '_menu_item_object_id', '257'),
(967, 261, '_menu_item_object', 'page'),
(968, 261, '_menu_item_target', ''),
(969, 261, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(970, 261, '_menu_item_xfn', ''),
(971, 261, '_menu_item_url', ''),
(973, 109, '_wp_old_date', '2021-06-17'),
(974, 110, '_wp_old_date', '2021-06-17'),
(975, 112, '_wp_old_date', '2021-06-17'),
(976, 113, '_wp_old_date', '2021-06-17'),
(977, 262, 'inline_featured_image', '0'),
(978, 263, '_wp_attached_file', '2021/07/android-seeklogo.svg'),
(979, 263, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:0;s:6:\"height\";i:0;s:4:\"file\";s:29:\"/2021/07/android-seeklogo.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:20:\"android-seeklogo.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:20:\"android-seeklogo.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:20:\"android-seeklogo.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:20:\"android-seeklogo.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:20:\"android-seeklogo.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:20:\"android-seeklogo.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(980, 262, '_edit_last', '1'),
(981, 262, '_thumbnail_id', '263'),
(982, 262, '_edit_lock', '1625115984:1'),
(983, 264, 'inline_featured_image', '0'),
(984, 265, '_wp_attached_file', '2021/07/angular-seeklogo.svg'),
(985, 265, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:0;s:6:\"height\";i:0;s:4:\"file\";s:29:\"/2021/07/angular-seeklogo.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:20:\"angular-seeklogo.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:20:\"angular-seeklogo.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:20:\"angular-seeklogo.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:20:\"angular-seeklogo.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:20:\"angular-seeklogo.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:20:\"angular-seeklogo.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(986, 264, '_edit_last', '1'),
(987, 264, '_thumbnail_id', '265'),
(988, 264, '_edit_lock', '1625116002:1'),
(989, 266, 'inline_featured_image', '0'),
(990, 267, '_wp_attached_file', '2021/07/django-Converted.svg'),
(991, 267, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:0;s:6:\"height\";i:0;s:4:\"file\";s:29:\"/2021/07/django-Converted.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:20:\"django-Converted.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:20:\"django-Converted.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:20:\"django-Converted.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:20:\"django-Converted.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:20:\"django-Converted.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:20:\"django-Converted.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(992, 266, '_edit_last', '1'),
(993, 266, '_thumbnail_id', '267'),
(994, 266, '_edit_lock', '1625116032:1'),
(995, 268, 'inline_featured_image', '0'),
(996, 269, '_wp_attached_file', '2021/07/dot-net-core-7.svg'),
(997, 269, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:2500;s:6:\"height\";i:1575;s:4:\"file\";s:27:\"/2021/07/dot-net-core-7.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:18:\"dot-net-core-7.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:18:\"dot-net-core-7.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:18:\"dot-net-core-7.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:18:\"dot-net-core-7.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:18:\"dot-net-core-7.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:18:\"dot-net-core-7.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(998, 268, '_edit_last', '1'),
(999, 268, '_thumbnail_id', '269'),
(1000, 268, '_edit_lock', '1625116057:1'),
(1001, 270, 'inline_featured_image', '0'),
(1002, 271, '_wp_attached_file', '2021/07/javascript-js-seeklogo.com_.svg'),
(1003, 271, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:256;s:6:\"height\";i:256;s:4:\"file\";s:40:\"/2021/07/javascript-js-seeklogo.com_.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:31:\"javascript-js-seeklogo.com_.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:31:\"javascript-js-seeklogo.com_.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:31:\"javascript-js-seeklogo.com_.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:31:\"javascript-js-seeklogo.com_.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:31:\"javascript-js-seeklogo.com_.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:31:\"javascript-js-seeklogo.com_.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(1004, 270, '_edit_last', '1'),
(1005, 270, '_thumbnail_id', '271'),
(1006, 270, '_edit_lock', '1625116075:1'),
(1007, 272, 'inline_featured_image', '0'),
(1008, 273, '_wp_attached_file', '2021/07/kotlin-seeklogo.com_.svg'),
(1009, 273, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:2500;s:6:\"height\";i:556;s:4:\"file\";s:33:\"/2021/07/kotlin-seeklogo.com_.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:24:\"kotlin-seeklogo.com_.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:24:\"kotlin-seeklogo.com_.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:24:\"kotlin-seeklogo.com_.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:24:\"kotlin-seeklogo.com_.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:24:\"kotlin-seeklogo.com_.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:24:\"kotlin-seeklogo.com_.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(1010, 272, '_edit_last', '1'),
(1011, 272, '_thumbnail_id', '273'),
(1012, 272, '_edit_lock', '1625116094:1'),
(1013, 274, 'inline_featured_image', '0'),
(1014, 275, '_wp_attached_file', '2021/07/laravel-framework-seeklogo.com-copy.svg'),
(1015, 275, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:0;s:6:\"height\";i:0;s:4:\"file\";s:48:\"/2021/07/laravel-framework-seeklogo.com-copy.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:39:\"laravel-framework-seeklogo.com-copy.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:39:\"laravel-framework-seeklogo.com-copy.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:39:\"laravel-framework-seeklogo.com-copy.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:39:\"laravel-framework-seeklogo.com-copy.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:39:\"laravel-framework-seeklogo.com-copy.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:39:\"laravel-framework-seeklogo.com-copy.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(1016, 274, '_edit_last', '1'),
(1017, 274, '_thumbnail_id', '275'),
(1018, 274, '_edit_lock', '1625116116:1'),
(1019, 276, 'inline_featured_image', '0'),
(1020, 277, '_wp_attached_file', '2021/07/Microsoft-iis.svg'),
(1021, 277, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:0;s:6:\"height\";i:0;s:4:\"file\";s:26:\"/2021/07/Microsoft-iis.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:17:\"Microsoft-iis.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:17:\"Microsoft-iis.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:17:\"Microsoft-iis.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:17:\"Microsoft-iis.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:17:\"Microsoft-iis.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:17:\"Microsoft-iis.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(1022, 276, '_edit_last', '1'),
(1023, 276, '_thumbnail_id', '277'),
(1024, 276, '_edit_lock', '1625116133:1'),
(1025, 278, 'inline_featured_image', '0'),
(1026, 279, '_wp_attached_file', '2021/07/python-seeklogo.com_.svg'),
(1027, 279, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:256;s:6:\"height\";i:255;s:4:\"file\";s:33:\"/2021/07/python-seeklogo.com_.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:24:\"python-seeklogo.com_.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:24:\"python-seeklogo.com_.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:24:\"python-seeklogo.com_.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:24:\"python-seeklogo.com_.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:24:\"python-seeklogo.com_.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:24:\"python-seeklogo.com_.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(1028, 278, '_edit_last', '1'),
(1029, 278, '_thumbnail_id', '279'),
(1030, 278, '_edit_lock', '1625116166:1'),
(1031, 280, 'inline_featured_image', '0'),
(1032, 281, '_wp_attached_file', '2021/07/React-Native.svg'),
(1033, 281, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:0;s:6:\"height\";i:0;s:4:\"file\";s:25:\"/2021/07/React-Native.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:16:\"React-Native.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:16:\"React-Native.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:16:\"React-Native.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:16:\"React-Native.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:16:\"React-Native.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:16:\"React-Native.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(1034, 280, '_edit_last', '1'),
(1035, 280, '_thumbnail_id', '281'),
(1036, 280, '_edit_lock', '1625116185:1'),
(1037, 282, 'inline_featured_image', '0'),
(1038, 283, '_wp_attached_file', '2021/07/react-seeklogo.com-2.svg'),
(1039, 283, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:256;s:6:\"height\";i:230;s:4:\"file\";s:33:\"/2021/07/react-seeklogo.com-2.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:24:\"react-seeklogo.com-2.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:24:\"react-seeklogo.com-2.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:24:\"react-seeklogo.com-2.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:24:\"react-seeklogo.com-2.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:24:\"react-seeklogo.com-2.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:24:\"react-seeklogo.com-2.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(1040, 282, '_edit_last', '1'),
(1041, 282, '_thumbnail_id', '283'),
(1042, 282, '_edit_lock', '1625116346:1'),
(1043, 7, '_wp_old_date', '2021-06-30'),
(1044, 10, '_wp_old_date', '2021-06-30'),
(1046, 137, '_wp_old_date', '2021-06-30'),
(1047, 258, '_wp_old_date', '2021-06-30'),
(1049, 140, '_wp_old_date', '2021-06-30'),
(1050, 165, '_wp_old_date', '2021-06-30'),
(1051, 143, '_wp_old_date', '2021-06-30'),
(1052, 215, '_wp_trash_meta_status', 'publish'),
(1053, 215, '_wp_trash_meta_time', '1625117785'),
(1054, 215, '_wp_desired_post_slug', 'farhan-sakib-jesy'),
(1055, 198, '_wp_trash_meta_status', 'publish'),
(1056, 198, '_wp_trash_meta_time', '1625117785'),
(1057, 198, '_wp_desired_post_slug', 'sakib'),
(1058, 197, '_wp_trash_meta_status', 'publish'),
(1059, 197, '_wp_trash_meta_time', '1625117785'),
(1060, 197, '_wp_desired_post_slug', 'rakib'),
(1061, 195, '_wp_trash_meta_status', 'publish'),
(1062, 195, '_wp_trash_meta_time', '1625117785'),
(1063, 195, '_wp_desired_post_slug', 'jesy-2'),
(1064, 193, '_wp_trash_meta_status', 'publish'),
(1065, 193, '_wp_trash_meta_time', '1625117785'),
(1066, 193, '_wp_desired_post_slug', 'urmi'),
(1067, 192, '_wp_trash_meta_status', 'publish'),
(1068, 192, '_wp_trash_meta_time', '1625117785'),
(1069, 192, '_wp_desired_post_slug', 'al-amin'),
(1070, 191, '_wp_trash_meta_status', 'publish'),
(1071, 191, '_wp_trash_meta_time', '1625117785'),
(1072, 191, '_wp_desired_post_slug', 'humaiera'),
(1073, 184, '_wp_trash_meta_status', 'publish'),
(1074, 184, '_wp_trash_meta_time', '1625117785'),
(1075, 184, '_wp_desired_post_slug', 'shade'),
(1076, 182, '_wp_trash_meta_status', 'publish'),
(1077, 182, '_wp_trash_meta_time', '1625117785'),
(1078, 182, '_wp_desired_post_slug', 'mim'),
(1079, 180, '_wp_trash_meta_status', 'publish'),
(1080, 180, '_wp_trash_meta_time', '1625117785'),
(1081, 180, '_wp_desired_post_slug', 'sayme'),
(1082, 178, '_wp_trash_meta_status', 'publish'),
(1083, 178, '_wp_trash_meta_time', '1625117785'),
(1084, 178, '_wp_desired_post_slug', 'tazbin'),
(1085, 177, '_wp_trash_meta_status', 'publish'),
(1086, 177, '_wp_trash_meta_time', '1625117785'),
(1087, 177, '_wp_desired_post_slug', 'farhan'),
(1088, 175, '_wp_trash_meta_status', 'publish'),
(1089, 175, '_wp_trash_meta_time', '1625117785'),
(1090, 175, '_wp_desired_post_slug', 'jubayer'),
(1091, 173, '_wp_trash_meta_status', 'publish'),
(1092, 173, '_wp_trash_meta_time', '1625117785'),
(1093, 173, '_wp_desired_post_slug', 'jesy'),
(1094, 284, 'inline_featured_image', '0'),
(1095, 285, '_wp_attached_file', '2021/07/ARS-Nuray-Alam-Parash-Senior-Business-Analyst.png'),
(1096, 285, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:185;s:6:\"height\";i:185;s:4:\"file\";s:57:\"2021/07/ARS-Nuray-Alam-Parash-Senior-Business-Analyst.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:57:\"ARS-Nuray-Alam-Parash-Senior-Business-Analyst-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1097, 284, '_edit_last', '1'),
(1098, 284, '_edit_lock', '1625117720:1'),
(1099, 284, '_thumbnail_id', '285'),
(1100, 286, 'inline_featured_image', '0'),
(1101, 287, '_wp_attached_file', '2021/07/Forhad-Hossain-Junior-Quality-Assurance.png'),
(1102, 287, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:185;s:6:\"height\";i:185;s:4:\"file\";s:51:\"2021/07/Forhad-Hossain-Junior-Quality-Assurance.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:51:\"Forhad-Hossain-Junior-Quality-Assurance-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1103, 286, '_edit_last', '1'),
(1104, 286, '_edit_lock', '1625117752:1'),
(1105, 286, '_thumbnail_id', '287'),
(1106, 288, 'inline_featured_image', '0'),
(1107, 289, '_wp_attached_file', '2021/07/Hussain-Ahmed-Software-Developer.png'),
(1108, 289, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:185;s:6:\"height\";i:185;s:4:\"file\";s:44:\"2021/07/Hussain-Ahmed-Software-Developer.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"Hussain-Ahmed-Software-Developer-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1109, 288, '_edit_last', '1'),
(1110, 288, '_edit_lock', '1625117784:1'),
(1111, 288, '_thumbnail_id', '289'),
(1112, 290, 'inline_featured_image', '0'),
(1113, 291, '_wp_attached_file', '2021/07/Irfanul-Hasan-Jr-Backend-Software-Developer.png'),
(1114, 291, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:185;s:6:\"height\";i:185;s:4:\"file\";s:55:\"2021/07/Irfanul-Hasan-Jr-Backend-Software-Developer.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:55:\"Irfanul-Hasan-Jr-Backend-Software-Developer-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1115, 290, '_edit_last', '1'),
(1116, 290, '_edit_lock', '1625117810:1'),
(1117, 290, '_thumbnail_id', '291'),
(1118, 292, 'inline_featured_image', '0'),
(1119, 293, '_wp_attached_file', '2021/07/Ishrat-Jahan-Junior-UIUX-Designer.png'),
(1120, 293, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:185;s:6:\"height\";i:185;s:4:\"file\";s:45:\"2021/07/Ishrat-Jahan-Junior-UIUX-Designer.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:45:\"Ishrat-Jahan-Junior-UIUX-Designer-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1121, 292, '_edit_last', '1'),
(1122, 292, '_edit_lock', '1625117843:1'),
(1123, 292, '_thumbnail_id', '293'),
(1124, 294, 'inline_featured_image', '0'),
(1125, 295, '_wp_attached_file', '2021/07/Jasmin-Akter-Jr.-Frontend-Software-Developer.png'),
(1126, 295, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:185;s:6:\"height\";i:185;s:4:\"file\";s:56:\"2021/07/Jasmin-Akter-Jr.-Frontend-Software-Developer.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:56:\"Jasmin-Akter-Jr.-Frontend-Software-Developer-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1127, 294, '_edit_last', '1'),
(1128, 294, '_edit_lock', '1625117880:1'),
(1129, 294, '_thumbnail_id', '295'),
(1130, 296, 'inline_featured_image', '0'),
(1131, 297, '_wp_attached_file', '2021/07/Layla-Anjuman-Intern-Quality-Assurance.png'),
(1132, 297, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:185;s:6:\"height\";i:185;s:4:\"file\";s:50:\"2021/07/Layla-Anjuman-Intern-Quality-Assurance.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:50:\"Layla-Anjuman-Intern-Quality-Assurance-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1133, 296, '_edit_last', '1'),
(1134, 296, '_edit_lock', '1625117911:1'),
(1135, 296, '_thumbnail_id', '297'),
(1136, 298, 'inline_featured_image', '0'),
(1137, 299, '_wp_attached_file', '2021/07/Mahmudul-Hasan-Emon-Jr.-Frontend-Software-Developer.png'),
(1138, 299, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:185;s:6:\"height\";i:185;s:4:\"file\";s:63:\"2021/07/Mahmudul-Hasan-Emon-Jr.-Frontend-Software-Developer.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:63:\"Mahmudul-Hasan-Emon-Jr.-Frontend-Software-Developer-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1139, 298, '_edit_last', '1'),
(1140, 298, '_edit_lock', '1625117955:1'),
(1141, 298, '_thumbnail_id', '299'),
(1142, 300, 'inline_featured_image', '0'),
(1143, 301, '_wp_attached_file', '2021/07/Farhan-Sakib-Jesy-Software-Developer.png'),
(1144, 301, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:185;s:6:\"height\";i:185;s:4:\"file\";s:48:\"2021/07/Farhan-Sakib-Jesy-Software-Developer.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"Farhan-Sakib-Jesy-Software-Developer-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1145, 300, '_edit_last', '1'),
(1146, 300, '_edit_lock', '1625117983:1'),
(1147, 300, '_thumbnail_id', '301'),
(1148, 302, 'inline_featured_image', '0'),
(1149, 303, '_wp_attached_file', '2021/07/Md-Al-Mahmud-Jr.-Backend-Software-Developer.png'),
(1150, 303, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:185;s:6:\"height\";i:185;s:4:\"file\";s:55:\"2021/07/Md-Al-Mahmud-Jr.-Backend-Software-Developer.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:55:\"Md-Al-Mahmud-Jr.-Backend-Software-Developer-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1151, 302, '_edit_last', '1'),
(1152, 302, '_edit_lock', '1625118020:1'),
(1153, 302, '_thumbnail_id', '303'),
(1154, 304, 'inline_featured_image', '0'),
(1155, 305, '_wp_attached_file', '2021/07/Md-Azizul-Haque-Intern-Frontend-Software-Developer.png'),
(1156, 305, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:185;s:6:\"height\";i:185;s:4:\"file\";s:62:\"2021/07/Md-Azizul-Haque-Intern-Frontend-Software-Developer.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:62:\"Md-Azizul-Haque-Intern-Frontend-Software-Developer-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1157, 304, '_edit_last', '1'),
(1158, 304, '_edit_lock', '1625118051:1'),
(1159, 304, '_thumbnail_id', '305'),
(1160, 306, 'inline_featured_image', '0'),
(1161, 307, '_wp_attached_file', '2021/07/Md-Emam-Uddin-Shahed-Jr-Backend-Software-Developer.png'),
(1162, 307, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:185;s:6:\"height\";i:185;s:4:\"file\";s:62:\"2021/07/Md-Emam-Uddin-Shahed-Jr-Backend-Software-Developer.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:62:\"Md-Emam-Uddin-Shahed-Jr-Backend-Software-Developer-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1163, 306, '_edit_last', '1'),
(1164, 306, '_edit_lock', '1625118160:1'),
(1165, 306, '_thumbnail_id', '307'),
(1166, 308, 'inline_featured_image', '0'),
(1167, 309, '_wp_attached_file', '2021/07/Md-Jahed-Hossain-Jr-Frontend-Software-Developer.png'),
(1168, 309, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:185;s:6:\"height\";i:185;s:4:\"file\";s:59:\"2021/07/Md-Jahed-Hossain-Jr-Frontend-Software-Developer.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:59:\"Md-Jahed-Hossain-Jr-Frontend-Software-Developer-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1169, 308, '_edit_last', '1'),
(1170, 308, '_edit_lock', '1625118191:1'),
(1171, 308, '_thumbnail_id', '309'),
(1172, 310, 'inline_featured_image', '0'),
(1173, 311, '_wp_attached_file', '2021/07/Md-Jubayer-Alam-Khan-Jr-Frontend-Software-Developer.png');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1174, 311, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:185;s:6:\"height\";i:185;s:4:\"file\";s:63:\"2021/07/Md-Jubayer-Alam-Khan-Jr-Frontend-Software-Developer.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:63:\"Md-Jubayer-Alam-Khan-Jr-Frontend-Software-Developer-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1175, 310, '_edit_last', '1'),
(1176, 310, '_edit_lock', '1625118242:1'),
(1177, 310, '_thumbnail_id', '311'),
(1178, 312, 'inline_featured_image', '0'),
(1179, 313, '_wp_attached_file', '2021/07/Md-Jobaidul-Islam-Support-Staff.png'),
(1180, 313, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:185;s:6:\"height\";i:185;s:4:\"file\";s:43:\"2021/07/Md-Jobaidul-Islam-Support-Staff.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:43:\"Md-Jobaidul-Islam-Support-Staff-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1181, 312, '_edit_last', '1'),
(1182, 312, '_edit_lock', '1625118278:1'),
(1183, 312, '_thumbnail_id', '313'),
(1184, 314, 'inline_featured_image', '0'),
(1185, 315, '_wp_attached_file', '2021/07/Md-Naim-Khan-Jr-Backend-Software-Developer.png'),
(1186, 315, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:185;s:6:\"height\";i:185;s:4:\"file\";s:54:\"2021/07/Md-Naim-Khan-Jr-Backend-Software-Developer.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:54:\"Md-Naim-Khan-Jr-Backend-Software-Developer-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1187, 314, '_edit_last', '1'),
(1188, 314, '_edit_lock', '1625118321:1'),
(1189, 314, '_thumbnail_id', '315'),
(1190, 316, 'inline_featured_image', '0'),
(1191, 317, '_wp_attached_file', '2021/07/Md-Saidur-Rahman-Akash-Jr-Backend-Software-Developer.png'),
(1192, 317, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:185;s:6:\"height\";i:185;s:4:\"file\";s:64:\"2021/07/Md-Saidur-Rahman-Akash-Jr-Backend-Software-Developer.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:64:\"Md-Saidur-Rahman-Akash-Jr-Backend-Software-Developer-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1193, 316, '_edit_last', '1'),
(1194, 316, '_edit_lock', '1625118354:1'),
(1195, 316, '_thumbnail_id', '317'),
(1196, 318, 'inline_featured_image', '0'),
(1197, 319, '_wp_attached_file', '2021/07/Md-Sakib-Al-Islam-Intern-Frontend-Software-Developer.png'),
(1198, 319, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:185;s:6:\"height\";i:185;s:4:\"file\";s:64:\"2021/07/Md-Sakib-Al-Islam-Intern-Frontend-Software-Developer.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:64:\"Md-Sakib-Al-Islam-Intern-Frontend-Software-Developer-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1199, 318, '_edit_last', '1'),
(1200, 318, '_edit_lock', '1625118389:1'),
(1201, 318, '_thumbnail_id', '319'),
(1202, 320, 'inline_featured_image', '0'),
(1203, 321, '_wp_attached_file', '2021/07/Md-Shafiqul-Islam-Mridul-Intern-Quality-Assurance.png'),
(1204, 321, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:185;s:6:\"height\";i:185;s:4:\"file\";s:61:\"2021/07/Md-Shafiqul-Islam-Mridul-Intern-Quality-Assurance.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:61:\"Md-Shafiqul-Islam-Mridul-Intern-Quality-Assurance-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1205, 320, '_edit_last', '1'),
(1206, 320, '_edit_lock', '1625118415:1'),
(1207, 320, '_thumbnail_id', '321'),
(1208, 322, 'inline_featured_image', '0'),
(1209, 323, '_wp_attached_file', '2021/07/Md-Sohag-Intern-Backend-Software-Developer.png'),
(1210, 323, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:185;s:6:\"height\";i:185;s:4:\"file\";s:54:\"2021/07/Md-Sohag-Intern-Backend-Software-Developer.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:54:\"Md-Sohag-Intern-Backend-Software-Developer-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1211, 322, '_edit_last', '1'),
(1212, 322, '_edit_lock', '1625118446:1'),
(1213, 322, '_thumbnail_id', '323'),
(1214, 324, 'inline_featured_image', '0'),
(1215, 325, '_wp_attached_file', '2021/07/Md.-Ebrahim-Mia-Jr-Freelance-Bidder.png'),
(1216, 325, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:185;s:6:\"height\";i:185;s:4:\"file\";s:47:\"2021/07/Md.-Ebrahim-Mia-Jr-Freelance-Bidder.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:47:\"Md.-Ebrahim-Mia-Jr-Freelance-Bidder-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1217, 324, '_edit_last', '1'),
(1218, 324, '_edit_lock', '1625132333:1'),
(1219, 324, '_thumbnail_id', '325'),
(1220, 326, 'inline_featured_image', '0'),
(1221, 327, '_wp_attached_file', '2021/07/Md.-Emdadaul-Haque-Jr.-Backend-Software-Developer.png'),
(1222, 327, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:185;s:6:\"height\";i:185;s:4:\"file\";s:61:\"2021/07/Md.-Emdadaul-Haque-Jr.-Backend-Software-Developer.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:61:\"Md.-Emdadaul-Haque-Jr.-Backend-Software-Developer-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1223, 326, '_edit_last', '1'),
(1224, 326, '_edit_lock', '1625118513:1'),
(1225, 326, '_thumbnail_id', '327'),
(1226, 328, 'inline_featured_image', '0'),
(1227, 329, '_wp_attached_file', '2021/07/Md.-Kawsar-Alam-Intern-Business-Analyst.png'),
(1228, 329, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:185;s:6:\"height\";i:185;s:4:\"file\";s:51:\"2021/07/Md.-Kawsar-Alam-Intern-Business-Analyst.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:51:\"Md.-Kawsar-Alam-Intern-Business-Analyst-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1229, 328, '_edit_last', '1'),
(1230, 328, '_edit_lock', '1625118540:1'),
(1231, 328, '_thumbnail_id', '329'),
(1232, 330, 'inline_featured_image', '0'),
(1233, 331, '_wp_attached_file', '2021/07/Md.-Mamun-Or-Rashid-Jr.-Backend-Software-Developer.png'),
(1234, 331, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:185;s:6:\"height\";i:185;s:4:\"file\";s:62:\"2021/07/Md.-Mamun-Or-Rashid-Jr.-Backend-Software-Developer.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:62:\"Md.-Mamun-Or-Rashid-Jr.-Backend-Software-Developer-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1235, 330, '_edit_last', '1'),
(1236, 330, '_edit_lock', '1625118574:1'),
(1237, 330, '_thumbnail_id', '331'),
(1238, 332, 'inline_featured_image', '0'),
(1239, 333, '_wp_attached_file', '2021/07/Md.-Nahid-Islam-Intern-Digital-Marketing.png'),
(1240, 333, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:185;s:6:\"height\";i:185;s:4:\"file\";s:52:\"2021/07/Md.-Nahid-Islam-Intern-Digital-Marketing.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:52:\"Md.-Nahid-Islam-Intern-Digital-Marketing-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1241, 332, '_edit_last', '1'),
(1242, 332, '_edit_lock', '1625118604:1'),
(1243, 332, '_thumbnail_id', '333'),
(1244, 334, 'inline_featured_image', '0'),
(1245, 335, '_wp_attached_file', '2021/07/Md.-Saddam-Hossain-Support-Staff.png'),
(1246, 335, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:185;s:6:\"height\";i:185;s:4:\"file\";s:44:\"2021/07/Md.-Saddam-Hossain-Support-Staff.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"Md.-Saddam-Hossain-Support-Staff-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1247, 334, '_edit_last', '1'),
(1248, 334, '_edit_lock', '1625118628:1'),
(1249, 334, '_thumbnail_id', '335'),
(1250, 336, 'inline_featured_image', '0'),
(1251, 337, '_wp_attached_file', '2021/07/Md.-Selim-Reza-Frontend-Software-Engineer.png'),
(1252, 337, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:185;s:6:\"height\";i:185;s:4:\"file\";s:53:\"2021/07/Md.-Selim-Reza-Frontend-Software-Engineer.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:53:\"Md.-Selim-Reza-Frontend-Software-Engineer-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1253, 336, '_edit_last', '1'),
(1254, 336, '_edit_lock', '1625118682:1'),
(1255, 336, '_thumbnail_id', '337'),
(1256, 338, 'inline_featured_image', '0'),
(1257, 339, '_wp_attached_file', '2021/07/Md.-Towhidur-Rahman-Samin-Jr-Backend-Software-Developer.png'),
(1258, 339, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:185;s:6:\"height\";i:185;s:4:\"file\";s:67:\"2021/07/Md.-Towhidur-Rahman-Samin-Jr-Backend-Software-Developer.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:67:\"Md.-Towhidur-Rahman-Samin-Jr-Backend-Software-Developer-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1259, 338, '_edit_last', '1'),
(1260, 338, '_edit_lock', '1625118716:1'),
(1261, 338, '_thumbnail_id', '339'),
(1262, 340, 'inline_featured_image', '0'),
(1263, 341, '_wp_attached_file', '2021/07/Md.-Saleh-Bin-Sayeem-Jr.-Backend-Software-Developer.png'),
(1264, 341, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:185;s:6:\"height\";i:185;s:4:\"file\";s:63:\"2021/07/Md.-Saleh-Bin-Sayeem-Jr.-Backend-Software-Developer.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:63:\"Md.-Saleh-Bin-Sayeem-Jr.-Backend-Software-Developer-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1265, 340, '_edit_last', '1'),
(1266, 340, '_edit_lock', '1625118763:1'),
(1267, 340, '_thumbnail_id', '341'),
(1268, 342, 'inline_featured_image', '0'),
(1269, 343, '_wp_attached_file', '2021/07/Md.-Selim-Reza-Frontend-Software-Engineer-1.png'),
(1270, 343, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:185;s:6:\"height\";i:185;s:4:\"file\";s:55:\"2021/07/Md.-Selim-Reza-Frontend-Software-Engineer-1.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:55:\"Md.-Selim-Reza-Frontend-Software-Engineer-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1271, 342, '_edit_last', '1'),
(1272, 342, '_edit_lock', '1625118802:1'),
(1273, 342, '_thumbnail_id', '343'),
(1274, 344, 'inline_featured_image', '0'),
(1275, 345, '_wp_attached_file', '2021/07/MD-Anamul-Arshad-Junior-UIUX-Designer.png'),
(1276, 345, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:185;s:6:\"height\";i:185;s:4:\"file\";s:49:\"2021/07/MD-Anamul-Arshad-Junior-UIUX-Designer.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:49:\"MD-Anamul-Arshad-Junior-UIUX-Designer-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1277, 344, '_edit_last', '1'),
(1278, 344, '_edit_lock', '1625118850:1'),
(1279, 344, '_thumbnail_id', '345'),
(1280, 346, 'inline_featured_image', '0'),
(1281, 347, '_wp_attached_file', '2021/07/Md-Bulbul-Ahmed-Jr.-Frontend-Software-Developer.png'),
(1282, 347, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:185;s:6:\"height\";i:185;s:4:\"file\";s:59:\"2021/07/Md-Bulbul-Ahmed-Jr.-Frontend-Software-Developer.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:59:\"Md-Bulbul-Ahmed-Jr.-Frontend-Software-Developer-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1283, 346, '_edit_last', '1'),
(1284, 346, '_edit_lock', '1625118889:1'),
(1285, 346, '_thumbnail_id', '347'),
(1286, 348, 'inline_featured_image', '0'),
(1287, 349, '_wp_attached_file', '2021/07/Naimul-Islam-Jr.-Support-Engineer.png'),
(1288, 349, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:185;s:6:\"height\";i:185;s:4:\"file\";s:45:\"2021/07/Naimul-Islam-Jr.-Support-Engineer.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:45:\"Naimul-Islam-Jr.-Support-Engineer-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1289, 348, '_edit_last', '1'),
(1290, 348, '_edit_lock', '1625118916:1'),
(1291, 348, '_thumbnail_id', '349'),
(1292, 350, 'inline_featured_image', '0'),
(1293, 351, '_wp_attached_file', '2021/07/Pritom-Tawsif-Bhuiyan-Junior-UI-UX-Designer.png'),
(1294, 351, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:185;s:6:\"height\";i:185;s:4:\"file\";s:55:\"2021/07/Pritom-Tawsif-Bhuiyan-Junior-UI-UX-Designer.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:55:\"Pritom-Tawsif-Bhuiyan-Junior-UI-UX-Designer-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1295, 350, '_edit_last', '1'),
(1296, 350, '_edit_lock', '1625118945:1'),
(1297, 350, '_thumbnail_id', '351'),
(1298, 352, 'inline_featured_image', '0'),
(1299, 353, '_wp_attached_file', '2021/07/Sadia-Afsana-Intern-Quality-Assurance.png'),
(1300, 353, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:185;s:6:\"height\";i:185;s:4:\"file\";s:49:\"2021/07/Sadia-Afsana-Intern-Quality-Assurance.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:49:\"Sadia-Afsana-Intern-Quality-Assurance-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1301, 352, '_edit_last', '1'),
(1302, 352, '_edit_lock', '1625118970:1'),
(1303, 352, '_thumbnail_id', '353'),
(1304, 354, 'inline_featured_image', '0'),
(1305, 355, '_wp_attached_file', '2021/07/Shakil-Al-Kabir-Executive.png'),
(1306, 355, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:185;s:6:\"height\";i:185;s:4:\"file\";s:37:\"2021/07/Shakil-Al-Kabir-Executive.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"Shakil-Al-Kabir-Executive-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1307, 354, '_edit_last', '1'),
(1308, 354, '_edit_lock', '1625119004:1'),
(1309, 354, '_thumbnail_id', '355'),
(1310, 356, 'inline_featured_image', '0'),
(1311, 357, '_wp_attached_file', '2021/07/Shamme-Akter-Mim-Associate-Business-Analyst.png'),
(1312, 357, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:185;s:6:\"height\";i:185;s:4:\"file\";s:55:\"2021/07/Shamme-Akter-Mim-Associate-Business-Analyst.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:55:\"Shamme-Akter-Mim-Associate-Business-Analyst-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1313, 356, '_edit_last', '1'),
(1314, 356, '_edit_lock', '1625119041:1'),
(1315, 356, '_thumbnail_id', '357'),
(1316, 358, 'inline_featured_image', '0'),
(1317, 359, '_wp_attached_file', '2021/07/Tahsin-Mahfuz-Jr-Backend-Software-Developer.png'),
(1318, 359, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:185;s:6:\"height\";i:185;s:4:\"file\";s:55:\"2021/07/Tahsin-Mahfuz-Jr-Backend-Software-Developer.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:55:\"Tahsin-Mahfuz-Jr-Backend-Software-Developer-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1319, 358, '_edit_last', '1'),
(1320, 358, '_edit_lock', '1625119070:1'),
(1321, 358, '_thumbnail_id', '359'),
(1322, 360, 'inline_featured_image', '0'),
(1323, 361, '_wp_attached_file', '2021/07/Taposhi-Rabeya-Associate-Business-Analyst.png'),
(1324, 361, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:185;s:6:\"height\";i:185;s:4:\"file\";s:53:\"2021/07/Taposhi-Rabeya-Associate-Business-Analyst.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:53:\"Taposhi-Rabeya-Associate-Business-Analyst-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1325, 360, '_edit_last', '1'),
(1326, 360, '_edit_lock', '1625119105:1'),
(1327, 360, '_thumbnail_id', '361'),
(1328, 362, 'inline_featured_image', '0'),
(1329, 363, '_wp_attached_file', '2021/07/Umme-Tasnim-Ummy-Associate-Business-Analyst.png'),
(1330, 363, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:185;s:6:\"height\";i:185;s:4:\"file\";s:55:\"2021/07/Umme-Tasnim-Ummy-Associate-Business-Analyst.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:55:\"Umme-Tasnim-Ummy-Associate-Business-Analyst-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1331, 362, '_edit_last', '1'),
(1332, 362, '_edit_lock', '1625119143:1'),
(1333, 362, '_thumbnail_id', '363'),
(1335, 365, 'inline_featured_image', '0'),
(1336, 365, '_edit_lock', '1625133019:1'),
(1337, 366, '_menu_item_type', 'post_type'),
(1338, 366, '_menu_item_menu_item_parent', '10'),
(1339, 366, '_menu_item_object_id', '365'),
(1340, 366, '_menu_item_object', 'page'),
(1341, 366, '_menu_item_target', ''),
(1342, 366, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1343, 366, '_menu_item_xfn', ''),
(1344, 366, '_menu_item_url', ''),
(1345, 367, '_menu_item_type', 'post_type'),
(1346, 367, '_menu_item_menu_item_parent', '0'),
(1347, 367, '_menu_item_object_id', '365'),
(1348, 367, '_menu_item_object', 'page'),
(1349, 367, '_menu_item_target', ''),
(1350, 367, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1351, 367, '_menu_item_xfn', ''),
(1352, 367, '_menu_item_url', ''),
(1353, 365, '_wp_page_template', 'customSoftwearDevelopmentTemplate.php'),
(1354, 369, 'inline_featured_image', '0'),
(1355, 369, '_edit_lock', '1625285974:1'),
(1356, 370, '_menu_item_type', 'post_type'),
(1357, 370, '_menu_item_menu_item_parent', '7'),
(1358, 370, '_menu_item_object_id', '369'),
(1359, 370, '_menu_item_object', 'page'),
(1360, 370, '_menu_item_target', ''),
(1361, 370, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1362, 370, '_menu_item_xfn', ''),
(1363, 370, '_menu_item_url', ''),
(1364, 371, '_menu_item_type', 'post_type'),
(1365, 371, '_menu_item_menu_item_parent', '0'),
(1366, 371, '_menu_item_object_id', '369'),
(1367, 371, '_menu_item_object', 'page'),
(1368, 371, '_menu_item_target', ''),
(1369, 371, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1370, 371, '_menu_item_xfn', ''),
(1371, 371, '_menu_item_url', ''),
(1372, 369, '_wp_page_template', 'enterprizeErpTemplate.php'),
(1373, 7, '_wp_old_date', '2021-07-01'),
(1374, 10, '_wp_old_date', '2021-07-01'),
(1376, 137, '_wp_old_date', '2021-07-01'),
(1377, 258, '_wp_old_date', '2021-07-01'),
(1378, 366, '_wp_old_date', '2021-07-01'),
(1379, 140, '_wp_old_date', '2021-07-01'),
(1380, 165, '_wp_old_date', '2021-07-01'),
(1381, 143, '_wp_old_date', '2021-07-01'),
(1382, 373, 'inline_featured_image', '0'),
(1383, 373, '_edit_lock', '1625292618:1'),
(1384, 374, '_menu_item_type', 'post_type'),
(1385, 374, '_menu_item_menu_item_parent', '10'),
(1386, 374, '_menu_item_object_id', '373'),
(1387, 374, '_menu_item_object', 'page'),
(1388, 374, '_menu_item_target', ''),
(1389, 374, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1390, 374, '_menu_item_xfn', ''),
(1391, 374, '_menu_item_url', ''),
(1392, 375, '_menu_item_type', 'post_type'),
(1393, 375, '_menu_item_menu_item_parent', '0'),
(1394, 375, '_menu_item_object_id', '373'),
(1395, 375, '_menu_item_object', 'page'),
(1396, 375, '_menu_item_target', ''),
(1397, 375, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1398, 375, '_menu_item_xfn', ''),
(1399, 375, '_menu_item_url', ''),
(1400, 373, '_wp_page_template', 'websiteDevelopmentTemplate.php');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2021-06-14 10:12:09', '2021-06-14 10:12:09', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2021-06-26 04:32:54', '2021-06-26 04:32:54', '', 0, 'http://localhost/ibos/?p=1', 0, 'post', '', 1),
(2, 1, '2021-06-14 10:12:09', '2021-06-14 10:12:09', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/ibos/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2021-06-14 10:12:09', '2021-06-14 10:12:09', '', 0, 'http://localhost/ibos/?page_id=2', 0, 'page', '', 0),
(3, 1, '2021-06-14 10:12:09', '2021-06-14 10:12:09', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost/ibos.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2021-06-14 10:12:09', '2021-06-14 10:12:09', '', 0, 'http://localhost/ibos/?page_id=3', 0, 'page', '', 0),
(5, 1, '2021-06-15 09:42:52', '2021-06-15 09:42:52', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2021-06-15 09:42:52', '2021-06-15 09:42:52', '', 0, 'http://localhost/ibos/wp-content/uploads/2021/06/logo.png', 0, 'attachment', 'image/png', 0),
(6, 1, '2021-06-15 09:50:31', '2021-06-15 09:50:31', '', 'fev', '', 'inherit', 'open', 'closed', '', 'fev', '', '', '2021-06-15 09:50:31', '2021-06-15 09:50:31', '', 0, 'http://localhost/ibos/wp-content/uploads/2021/06/fev.png', 0, 'attachment', 'image/png', 0),
(7, 1, '2021-07-03 06:12:58', '2021-06-15 10:20:26', '', 'Products', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2021-07-03 06:12:58', '2021-07-03 06:12:58', '', 0, 'http://localhost/ibos/?p=7', 1, 'nav_menu_item', '', 0),
(10, 1, '2021-07-03 06:12:58', '2021-06-15 10:41:02', '', 'Services', '', 'publish', 'closed', 'closed', '', 'services', '', '', '2021-07-03 06:12:58', '2021-07-03 06:12:58', '', 0, 'http://localhost/ibos/?p=10', 3, 'nav_menu_item', '', 0),
(13, 1, '2021-06-16 03:42:10', '2021-06-16 03:42:10', '', 'Auto Draft', '', 'trash', 'closed', 'closed', '', 'auto-draft__trashed', '', '', '2021-06-17 11:04:41', '2021-06-17 11:04:41', '', 0, 'http://localhost/ibos/?post_type=our_client&#038;p=13', 0, 'our_client', '', 0),
(14, 1, '2021-06-16 03:42:05', '2021-06-16 03:42:05', '', 'akij-cement', '', 'inherit', 'open', 'closed', '', 'akij-cement', '', '', '2021-06-16 03:42:05', '2021-06-16 03:42:05', '', 13, 'http://localhost/ibos/wp-content/uploads/2021/06/akij-cement.png', 0, 'attachment', 'image/png', 0),
(15, 1, '2021-06-16 03:42:28', '2021-06-16 03:42:28', '', 'Auto Draft', '', 'trash', 'closed', 'closed', '', 'auto-draft-2__trashed', '', '', '2021-06-17 11:04:41', '2021-06-17 11:04:41', '', 0, 'http://localhost/ibos/?post_type=our_client&#038;p=15', 0, 'our_client', '', 0),
(16, 1, '2021-06-16 03:42:24', '2021-06-16 03:42:24', '', 'akij-food', '', 'inherit', 'open', 'closed', '', 'akij-food', '', '', '2021-06-16 03:42:24', '2021-06-16 03:42:24', '', 15, 'http://localhost/ibos/wp-content/uploads/2021/06/akij-food.png', 0, 'attachment', 'image/png', 0),
(17, 1, '2021-06-16 03:43:49', '2021-06-16 03:43:49', '', 'Auto Draft', '', 'trash', 'closed', 'closed', '', 'auto-draft-3__trashed', '', '', '2021-06-17 11:04:41', '2021-06-17 11:04:41', '', 0, 'http://localhost/ibos/?post_type=our_client&#038;p=17', 0, 'our_client', '', 0),
(18, 1, '2021-06-16 03:43:46', '2021-06-16 03:43:46', '', 'akij-poly', '', 'inherit', 'open', 'closed', '', 'akij-poly', '', '', '2021-06-16 03:43:46', '2021-06-16 03:43:46', '', 17, 'http://localhost/ibos/wp-content/uploads/2021/06/akij-poly.png', 0, 'attachment', 'image/png', 0),
(19, 1, '2021-06-16 03:44:11', '2021-06-16 03:44:11', '', 'Auto Draft', '', 'trash', 'closed', 'closed', '', 'auto-draft-4__trashed', '', '', '2021-06-17 11:04:41', '2021-06-17 11:04:41', '', 0, 'http://localhost/ibos/?post_type=our_client&#038;p=19', 0, 'our_client', '', 0),
(20, 1, '2021-06-16 03:44:08', '2021-06-16 03:44:08', '', 'akij-shipping', '', 'inherit', 'open', 'closed', '', 'akij-shipping', '', '', '2021-06-16 03:44:08', '2021-06-16 03:44:08', '', 19, 'http://localhost/ibos/wp-content/uploads/2021/06/akij-shipping.png', 0, 'attachment', 'image/png', 0),
(23, 1, '2021-06-16 04:10:40', '2021-06-16 04:10:40', '', 'Auto Draft', '', 'trash', 'closed', 'closed', '', 'auto-draft__trashed', '', '', '2021-06-17 10:38:01', '2021-06-17 10:38:01', '', 0, 'http://localhost/ibos/?post_type=our_technologies&#038;p=23', 0, 'our_technologies', '', 0),
(24, 1, '2021-06-16 04:10:35', '2021-06-16 04:10:35', '', 'c', '', 'inherit', 'open', 'closed', '', 'c', '', '', '2021-06-16 04:10:35', '2021-06-16 04:10:35', '', 23, 'http://localhost/ibos/wp-content/uploads/2021/06/c.png', 0, 'attachment', 'image/png', 0),
(25, 1, '2021-06-16 04:10:55', '2021-06-16 04:10:55', '', 'Auto Draft', '', 'trash', 'closed', 'closed', '', 'auto-draft-2__trashed', '', '', '2021-06-17 10:38:01', '2021-06-17 10:38:01', '', 0, 'http://localhost/ibos/?post_type=our_technologies&#038;p=25', 0, 'our_technologies', '', 0),
(26, 1, '2021-06-16 04:10:52', '2021-06-16 04:10:52', '', 'docker', '', 'inherit', 'open', 'closed', '', 'docker', '', '', '2021-06-16 04:10:52', '2021-06-16 04:10:52', '', 25, 'http://localhost/ibos/wp-content/uploads/2021/06/docker.png', 0, 'attachment', 'image/png', 0),
(27, 1, '2021-06-16 04:11:08', '2021-06-16 04:11:08', '', 'Auto Draft', '', 'trash', 'closed', 'closed', '', 'auto-draft-3__trashed', '', '', '2021-06-17 10:38:01', '2021-06-17 10:38:01', '', 0, 'http://localhost/ibos/?post_type=our_technologies&#038;p=27', 0, 'our_technologies', '', 0),
(28, 1, '2021-06-16 04:11:04', '2021-06-16 04:11:04', '', 'flutter', '', 'inherit', 'open', 'closed', '', 'flutter', '', '', '2021-06-16 04:11:04', '2021-06-16 04:11:04', '', 27, 'http://localhost/ibos/wp-content/uploads/2021/06/flutter.png', 0, 'attachment', 'image/png', 0),
(29, 1, '2021-06-16 04:11:21', '2021-06-16 04:11:21', '', 'Auto Draft', '', 'trash', 'closed', 'closed', '', 'auto-draft-4__trashed', '', '', '2021-06-17 10:38:01', '2021-06-17 10:38:01', '', 0, 'http://localhost/ibos/?post_type=our_technologies&#038;p=29', 0, 'our_technologies', '', 0),
(30, 1, '2021-06-16 04:11:18', '2021-06-16 04:11:18', '', 'kubernetis', '', 'inherit', 'open', 'closed', '', 'kubernetis', '', '', '2021-06-16 04:11:18', '2021-06-16 04:11:18', '', 29, 'http://localhost/ibos/wp-content/uploads/2021/06/kubernetis.png', 0, 'attachment', 'image/png', 0),
(31, 1, '2021-06-16 04:11:26', '2021-06-16 04:11:26', '', 'Auto Draft', '', 'trash', 'closed', 'closed', '', 'auto-draft-5__trashed', '', '', '2021-06-17 10:38:01', '2021-06-17 10:38:01', '', 0, 'http://localhost/ibos/?post_type=our_technologies&#038;p=31', 0, 'our_technologies', '', 0),
(32, 1, '2021-06-16 04:11:35', '2021-06-16 04:11:35', '', 'net', '', 'inherit', 'open', 'closed', '', 'net', '', '', '2021-06-16 04:11:35', '2021-06-16 04:11:35', '', 31, 'http://localhost/ibos/wp-content/uploads/2021/06/net.png', 0, 'attachment', 'image/png', 0),
(33, 1, '2021-06-16 04:11:49', '2021-06-16 04:11:49', '', 'Auto Draft', '', 'trash', 'closed', 'closed', '', 'auto-draft-6__trashed', '', '', '2021-06-17 10:38:01', '2021-06-17 10:38:01', '', 0, 'http://localhost/ibos/?post_type=our_technologies&#038;p=33', 0, 'our_technologies', '', 0),
(34, 1, '2021-06-16 04:11:46', '2021-06-16 04:11:46', '', 'nginx', '', 'inherit', 'open', 'closed', '', 'nginx', '', '', '2021-06-16 04:11:46', '2021-06-16 04:11:46', '', 33, 'http://localhost/ibos/wp-content/uploads/2021/06/nginx.png', 0, 'attachment', 'image/png', 0),
(35, 1, '2021-06-16 04:12:19', '2021-06-16 04:12:19', '', 'Auto Draft', '', 'trash', 'closed', 'closed', '', 'auto-draft-7__trashed', '', '', '2021-06-17 10:38:01', '2021-06-17 10:38:01', '', 0, 'http://localhost/ibos/?post_type=our_technologies&#038;p=35', 0, 'our_technologies', '', 0),
(36, 1, '2021-06-16 04:11:59', '2021-06-16 04:11:59', '', 'nginx', '', 'inherit', 'open', 'closed', '', 'nginx-2', '', '', '2021-06-16 04:11:59', '2021-06-16 04:11:59', '', 35, 'http://localhost/ibos/wp-content/uploads/2021/06/nginx-1.png', 0, 'attachment', 'image/png', 0),
(37, 1, '2021-06-16 04:12:15', '2021-06-16 04:12:15', '', 'python', '', 'inherit', 'open', 'closed', '', 'python', '', '', '2021-06-16 04:12:15', '2021-06-16 04:12:15', '', 35, 'http://localhost/ibos/wp-content/uploads/2021/06/python.png', 0, 'attachment', 'image/png', 0),
(45, 1, '2021-06-16 10:38:51', '2021-06-16 10:38:51', '', 'kubernetis', '', 'inherit', 'open', 'closed', '', 'kubernetis-2', '', '', '2021-06-16 10:38:51', '2021-06-16 10:38:51', '', 0, 'http://localhost/ibos/wp-content/uploads/2021/06/kubernetis.svg', 0, 'attachment', 'svg', 0),
(46, 1, '2021-06-16 10:43:19', '2021-06-16 10:43:19', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo-2', '', '', '2021-06-16 10:43:19', '2021-06-16 10:43:19', '', 0, 'http://localhost/ibos/wp-content/uploads/2021/06/logo.svg', 0, 'attachment', 'svg', 0),
(47, 1, '2021-06-16 10:55:01', '2021-06-16 10:55:01', '', 'c', '', 'inherit', 'open', 'closed', '', 'c-2', '', '', '2021-06-16 10:55:01', '2021-06-16 10:55:01', '', 0, 'http://localhost/ibos/wp-content/uploads/2021/06/c.svg', 0, 'attachment', 'svg', 0),
(48, 1, '2021-06-16 11:02:45', '2021-06-16 11:02:45', '', 'c', '', 'inherit', 'open', 'closed', '', 'c-3', '', '', '2021-06-16 11:02:45', '2021-06-16 11:02:45', '', 23, 'http://localhost/ibos/wp-content/uploads/2021/06/c-1.svg', 0, 'attachment', 'svg', 0),
(49, 1, '2021-06-16 11:05:27', '2021-06-16 11:05:27', '', 'c', '', 'inherit', 'open', 'closed', '', 'c-4', '', '', '2021-06-16 11:05:27', '2021-06-16 11:05:27', '', 23, 'http://localhost/ibos/wp-content/uploads/2021/06/c-2.svg', 0, 'attachment', 'svg', 0),
(50, 1, '2021-06-16 11:08:56', '2021-06-16 11:08:56', '', 'c', '', 'inherit', 'open', 'closed', '', 'c-5', '', '', '2021-06-16 11:08:56', '2021-06-16 11:08:56', '', 23, 'http://localhost/ibos/wp-content/uploads/2021/06/c-3.svg', 0, 'attachment', 'svg', 0),
(51, 1, '2021-06-16 11:10:41', '2021-06-16 11:10:41', '', 'c', '', 'inherit', 'open', 'closed', '', 'c-6', '', '', '2021-06-16 11:10:41', '2021-06-16 11:10:41', '', 23, 'http://localhost/ibos/wp-content/uploads/2021/06/c-4.svg', 0, 'attachment', 'svg', 0),
(52, 1, '2021-06-16 11:13:08', '2021-06-16 11:13:08', '', 'c', '', 'inherit', 'open', 'closed', '', 'c-7', '', '', '2021-06-16 11:13:08', '2021-06-16 11:13:08', '', 23, 'http://localhost/ibos/wp-content/uploads/2021/06/c-5.svg', 0, 'attachment', 'svg', 0),
(53, 1, '2021-06-16 11:14:03', '2021-06-16 11:14:03', '', 'c', '', 'inherit', 'open', 'closed', '', 'c-8', '', '', '2021-06-16 11:14:03', '2021-06-16 11:14:03', '', 23, 'http://localhost/ibos/wp-content/uploads/2021/06/c-6.svg', 0, 'attachment', 'svg', 0),
(54, 1, '2021-06-16 11:15:00', '2021-06-16 11:15:00', '', 'c', '', 'inherit', 'open', 'closed', '', 'c-9', '', '', '2021-06-16 11:15:00', '2021-06-16 11:15:00', '', 23, 'http://localhost/ibos/wp-content/uploads/2021/06/c-7.svg', 0, 'attachment', 'svg', 0),
(55, 1, '2021-06-16 11:22:32', '2021-06-16 11:22:32', '', 'c', '', 'inherit', 'open', 'closed', '', 'c-10', '', '', '2021-06-16 11:22:32', '2021-06-16 11:22:32', '', 23, 'http://localhost/ibos/wp-content/uploads/2021/06/c-8.svg', 0, 'attachment', 'svg', 0),
(56, 1, '2021-06-16 11:23:02', '2021-06-16 11:23:02', '', 'c', '', 'inherit', 'open', 'closed', '', 'c-11', '', '', '2021-06-16 11:23:02', '2021-06-16 11:23:02', '', 23, 'http://localhost/ibos/wp-content/uploads/2021/06/c-9.svg', 0, 'attachment', 'svg', 0),
(59, 1, '2021-06-16 12:09:30', '2021-06-16 12:09:30', '', 'c', '', 'inherit', 'open', 'closed', '', 'c-12', '', '', '2021-06-16 12:09:30', '2021-06-16 12:09:30', '', 0, 'http://localhost/ibos/wp-content/uploads/2021/06/c-10.svg', 0, 'attachment', 'svg', 0),
(63, 1, '2021-06-16 12:16:32', '2021-06-16 12:16:32', '', 'c', '', 'inherit', 'open', 'closed', '', 'c-13', '', '', '2021-06-16 12:16:32', '2021-06-16 12:16:32', '', 0, 'http://localhost/ibos/wp-content/uploads/2021/06/c-11.svg', 0, 'attachment', 'svg', 0),
(64, 1, '2021-06-17 03:44:15', '2021-06-17 03:44:15', '', 'c', '', 'inherit', 'open', 'closed', '', 'c-14', '', '', '2021-06-17 03:44:15', '2021-06-17 03:44:15', '', 23, 'http://localhost/ibos/wp-content/uploads/2021/06/c-12.svg', 0, 'attachment', 'svg', 0),
(66, 1, '2021-06-17 03:46:30', '2021-06-17 03:46:30', '', 'c', '', 'inherit', 'open', 'closed', '', 'c-15', '', '', '2021-06-17 03:46:30', '2021-06-17 03:46:30', '', 0, 'http://localhost/ibos/wp-content/uploads/2021/06/c-13.svg', 0, 'attachment', 'svg', 0),
(67, 1, '2021-06-17 03:47:02', '2021-06-17 03:47:02', '', 'c', '', 'inherit', 'open', 'closed', '', 'c-16', '', '', '2021-06-17 03:47:02', '2021-06-17 03:47:02', '', 0, 'http://localhost/ibos/wp-content/uploads/2021/06/c-14.svg', 0, 'attachment', 'svg', 0),
(69, 1, '2021-06-17 03:49:21', '2021-06-17 03:49:21', '', 'c', '', 'inherit', 'open', 'closed', '', 'c-17', '', '', '2021-06-17 03:49:21', '2021-06-17 03:49:21', '', 0, 'http://localhost/ibos/wp-content/uploads/2021/06/c-15.svg', 0, 'attachment', 'svg', 0),
(70, 1, '2021-06-17 03:51:13', '2021-06-17 03:51:13', '', '1623620037Venezuela-sticker-symbol', '', 'inherit', 'open', 'closed', '', '1623620037venezuela-sticker-symbol', '', '', '2021-06-17 03:51:13', '2021-06-17 03:51:13', '', 0, 'http://localhost/ibos/wp-content/uploads/2021/06/1623620037Venezuela-sticker-symbol.svg', 0, 'attachment', 'svg', 0),
(73, 1, '2021-06-17 03:51:33', '2021-06-17 03:51:33', '', '1623620037Venezuela-sticker-symbol', '', 'inherit', 'open', 'closed', '', '1623620037venezuela-sticker-symbol-2', '', '', '2021-06-17 03:51:33', '2021-06-17 03:51:33', '', 0, 'http://localhost/ibos/wp-content/uploads/2021/06/1623620037Venezuela-sticker-symbol-1.svg', 0, 'attachment', 'svg', 0),
(75, 1, '2021-06-17 03:53:10', '2021-06-17 03:53:10', '', '1623620037Venezuela-sticker-symbol', '', 'inherit', 'open', 'closed', '', '1623620037venezuela-sticker-symbol-3', '', '', '2021-06-17 03:53:10', '2021-06-17 03:53:10', '', 0, 'http://localhost/ibos/wp-content/uploads/2021/06/1623620037Venezuela-sticker-symbol-2.svg', 0, 'attachment', 'svg', 0),
(76, 1, '2021-06-17 03:58:15', '2021-06-17 03:58:15', '', 'SVG_logo', '', 'inherit', 'open', 'closed', '', 'svg_logo', '', '', '2021-06-17 03:58:15', '2021-06-17 03:58:15', '', 0, 'http://localhost/ibos/wp-content/uploads/2021/06/SVG_logo.svg', 0, 'attachment', 'svg', 0),
(78, 1, '2021-06-17 03:58:47', '2021-06-17 03:58:47', '', 'SVG_logo', '', 'inherit', 'open', 'closed', '', 'svg_logo-2', '', '', '2021-06-17 04:03:59', '2021-06-17 04:03:59', '', 0, 'http://localhost/ibos/wp-content/uploads/2021/06/SVG_logo-1.svg', 0, 'attachment', 'svg', 0),
(79, 1, '2021-06-17 03:59:24', '2021-06-17 03:59:24', '', '1623620037Venezuela-sticker-symbol', '', 'inherit', 'open', 'closed', '', '1623620037venezuela-sticker-symbol-4', '', '', '2021-06-17 03:59:24', '2021-06-17 03:59:24', '', 23, 'http://localhost/ibos/wp-content/uploads/2021/06/1623620037Venezuela-sticker-symbol-3.svg', 0, 'attachment', 'svg', 0),
(81, 1, '2021-06-17 04:04:13', '2021-06-17 04:04:13', '', 'SVG_logo', '', 'inherit', 'open', 'closed', '', 'svg_logo-3', '', '', '2021-06-17 04:04:13', '2021-06-17 04:04:13', '', 0, 'http://localhost/ibos/wp-content/uploads/2021/06/SVG_logo-2.svg', 0, 'attachment', 'svg', 0),
(82, 1, '2021-06-17 04:11:45', '2021-06-17 04:11:45', '', 'SVG_logo', '', 'inherit', 'open', 'closed', '', 'svg_logo-4', '', '', '2021-06-17 04:11:45', '2021-06-17 04:11:45', '', 23, 'http://localhost/ibos/wp-content/uploads/2021/06/SVG_logo-3.svg', 0, 'attachment', 'image/svg+xml', 0),
(83, 1, '2021-06-17 04:12:20', '2021-06-17 04:12:20', '', 'c', '', 'inherit', 'open', 'closed', '', 'c-18', '', '', '2021-06-17 04:12:20', '2021-06-17 04:12:20', '', 23, 'http://localhost/ibos/wp-content/uploads/2021/06/c-16.svg', 0, 'attachment', 'image/svg+xml', 0),
(87, 1, '2021-06-17 09:28:30', '2021-06-17 06:57:47', '', 'Enterprise ERP', '', 'publish', 'closed', 'closed', '', 'jesy', '', '', '2021-06-17 09:28:30', '2021-06-17 09:28:30', '', 0, 'http://localhost/ibos/?p=87', 1, 'nav_menu_item', '', 0),
(88, 1, '2021-06-17 09:12:19', '2021-06-17 09:12:19', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo-3', '', '', '2021-06-17 09:12:19', '2021-06-17 09:12:19', '', 0, 'http://localhost/ibos/wp-content/uploads/2021/06/logo-1.svg', 0, 'attachment', 'image/svg+xml', 0),
(89, 1, '2021-06-17 09:28:30', '2021-06-17 09:15:29', '', 'Accounting', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2021-06-17 09:28:30', '2021-06-17 09:28:30', '', 0, 'http://localhost/ibos/?p=89', 2, 'nav_menu_item', '', 0),
(90, 1, '2021-06-17 09:28:30', '2021-06-17 09:15:29', '', 'HR Software', '', 'publish', 'closed', 'closed', '', 'contact-2', '', '', '2021-06-17 09:28:30', '2021-06-17 09:28:30', '', 0, 'http://localhost/ibos/?p=90', 3, 'nav_menu_item', '', 0),
(91, 1, '2021-06-17 09:28:30', '2021-06-17 09:15:29', '', 'VAT Software', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2021-06-17 09:28:30', '2021-06-17 09:28:30', '', 0, 'http://localhost/ibos/?p=91', 4, 'nav_menu_item', '', 0),
(92, 1, '2021-06-17 09:28:30', '2021-06-17 09:15:29', '', 'Ecommerce & Inventory', '', 'publish', 'closed', 'closed', '', 'book-a-demo', '', '', '2021-06-17 09:28:30', '2021-06-17 09:28:30', '', 0, 'http://localhost/ibos/?p=92', 5, 'nav_menu_item', '', 0),
(93, 1, '2021-06-17 09:28:30', '2021-06-17 09:15:29', '', 'Ratail ERP with POS', '', 'publish', 'closed', 'closed', '', 'careers', '', '', '2021-06-17 09:28:30', '2021-06-17 09:28:30', '', 0, 'http://localhost/ibos/?p=93', 6, 'nav_menu_item', '', 0),
(94, 1, '2021-06-17 09:19:12', '2021-06-17 09:19:12', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home-2', '', '', '2021-06-17 09:19:12', '2021-06-17 09:19:12', '', 0, 'http://localhost/ibos/?p=94', 1, 'nav_menu_item', '', 0),
(95, 1, '2021-06-17 09:19:12', '2021-06-17 09:19:12', '', 'About', '', 'publish', 'closed', 'closed', '', 'about-2', '', '', '2021-06-17 09:19:12', '2021-06-17 09:19:12', '', 0, 'http://localhost/ibos/?p=95', 2, 'nav_menu_item', '', 0),
(96, 1, '2021-06-17 09:19:12', '2021-06-17 09:19:12', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact-3', '', '', '2021-06-17 09:19:12', '2021-06-17 09:19:12', '', 0, 'http://localhost/ibos/?p=96', 3, 'nav_menu_item', '', 0),
(97, 1, '2021-06-17 09:19:12', '2021-06-17 09:19:12', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog-2', '', '', '2021-06-17 09:19:12', '2021-06-17 09:19:12', '', 0, 'http://localhost/ibos/?p=97', 4, 'nav_menu_item', '', 0),
(98, 1, '2021-06-17 09:19:12', '2021-06-17 09:19:12', '', 'Book a demo', '', 'publish', 'closed', 'closed', '', 'book-a-demo-2', '', '', '2021-06-17 09:19:12', '2021-06-17 09:19:12', '', 0, 'http://localhost/ibos/?p=98', 5, 'nav_menu_item', '', 0),
(99, 1, '2021-06-17 09:19:12', '2021-06-17 09:19:12', '', 'Careers', '', 'publish', 'closed', 'closed', '', 'careers-2', '', '', '2021-06-17 09:19:12', '2021-06-17 09:19:12', '', 0, 'http://localhost/ibos/?p=99', 6, 'nav_menu_item', '', 0),
(100, 1, '2021-06-17 09:28:30', '2021-06-17 09:28:30', '', 'Toute To Market (RTM)', '', 'publish', 'closed', 'closed', '', 'toute-to-market-rtm', '', '', '2021-06-17 09:28:30', '2021-06-17 09:28:30', '', 0, 'http://localhost/ibos/?p=100', 7, 'nav_menu_item', '', 0),
(101, 1, '2021-06-17 09:28:30', '2021-06-17 09:28:30', '', 'Performance Management System', '', 'publish', 'closed', 'closed', '', 'performance-management-system', '', '', '2021-06-17 09:28:30', '2021-06-17 09:28:30', '', 0, 'http://localhost/ibos/?p=101', 8, 'nav_menu_item', '', 0),
(102, 1, '2021-06-17 09:28:30', '2021-06-17 09:28:30', '', 'Email Marketing Software', '', 'publish', 'closed', 'closed', '', 'email-marketing-software', '', '', '2021-06-17 09:28:30', '2021-06-17 09:28:30', '', 0, 'http://localhost/ibos/?p=102', 9, 'nav_menu_item', '', 0),
(103, 1, '2021-06-17 09:28:30', '2021-06-17 09:28:30', '', 'CRM With Sales Software', '', 'publish', 'closed', 'closed', '', 'crm-with-sales-software', '', '', '2021-06-17 09:28:30', '2021-06-17 09:28:30', '', 0, 'http://localhost/ibos/?p=103', 10, 'nav_menu_item', '', 0),
(104, 1, '2021-06-17 09:38:26', '2021-06-17 09:38:26', '', 'Cloud ERP', '', 'publish', 'closed', 'closed', '', 'cloud-erp', '', '', '2021-06-17 09:38:26', '2021-06-17 09:38:26', '', 0, 'http://localhost/ibos/?p=104', 1, 'nav_menu_item', '', 0),
(105, 1, '2021-06-17 09:38:26', '2021-06-17 09:38:26', '', 'Accounting', '', 'publish', 'closed', 'closed', '', 'accounting', '', '', '2021-06-17 09:38:26', '2021-06-17 09:38:26', '', 0, 'http://localhost/ibos/?p=105', 2, 'nav_menu_item', '', 0),
(106, 1, '2021-06-17 09:38:26', '2021-06-17 09:38:26', '', 'HR + Payroll', '', 'publish', 'closed', 'closed', '', 'hr-payroll', '', '', '2021-06-17 09:38:26', '2021-06-17 09:38:26', '', 0, 'http://localhost/ibos/?p=106', 3, 'nav_menu_item', '', 0),
(107, 1, '2021-06-17 09:38:26', '2021-06-17 09:38:26', '', 'Time Tracking', '', 'publish', 'closed', 'closed', '', 'time-tracking', '', '', '2021-06-17 09:38:26', '2021-06-17 09:38:26', '', 0, 'http://localhost/ibos/?p=107', 4, 'nav_menu_item', '', 0),
(108, 1, '2021-06-17 09:38:26', '2021-06-17 09:38:26', '', 'CRM', '', 'publish', 'closed', 'closed', '', 'crm', '', '', '2021-06-17 09:38:26', '2021-06-17 09:38:26', '', 0, 'http://localhost/ibos/?p=108', 5, 'nav_menu_item', '', 0),
(109, 1, '2021-06-30 10:48:00', '2021-06-17 09:45:21', '', 'Website Development', '', 'publish', 'closed', 'closed', '', 'website-development', '', '', '2021-06-30 10:48:00', '2021-06-30 10:48:00', '', 0, 'http://localhost/ibos/?p=109', 1, 'nav_menu_item', '', 0),
(110, 1, '2021-06-30 10:48:00', '2021-06-17 09:45:21', '', 'Ecommerce Development', '', 'publish', 'closed', 'closed', '', 'ecommerce-development', '', '', '2021-06-30 10:48:00', '2021-06-30 10:48:00', '', 0, 'http://localhost/ibos/?p=110', 2, 'nav_menu_item', '', 0),
(112, 1, '2021-06-30 10:48:00', '2021-06-17 09:45:21', '', 'Custom Software Development', '', 'publish', 'closed', 'closed', '', 'custom-software-development', '', '', '2021-06-30 10:48:00', '2021-06-30 10:48:00', '', 0, 'http://localhost/ibos/?p=112', 4, 'nav_menu_item', '', 0),
(113, 1, '2021-06-30 10:48:00', '2021-06-17 09:45:21', '', 'Enterprise Privacy & Security', '', 'publish', 'closed', 'closed', '', 'enterprise-privacy-security', '', '', '2021-06-30 10:48:00', '2021-06-30 10:48:00', '', 0, 'http://localhost/ibos/?p=113', 5, 'nav_menu_item', '', 0),
(114, 1, '2021-06-17 10:38:23', '2021-06-17 10:38:23', '', 'Auto Draft', '', 'publish', 'closed', 'closed', '', 'auto-draft', '', '', '2021-06-17 10:38:23', '2021-06-17 10:38:23', '', 0, 'http://localhost/ibos/?post_type=our_technologies&#038;p=114', 0, 'our_technologies', '', 0),
(115, 1, '2021-06-17 10:38:20', '2021-06-17 10:38:20', '', 'azure', '', 'inherit', 'open', 'closed', '', 'azure', '', '', '2021-06-17 10:38:20', '2021-06-17 10:38:20', '', 114, 'http://localhost/ibos/wp-content/uploads/2021/06/azure.svg', 0, 'attachment', 'image/svg+xml', 0),
(116, 1, '2021-06-17 10:38:35', '2021-06-17 10:38:35', '', 'Auto Draft', '', 'publish', 'closed', 'closed', '', 'auto-draft-2', '', '', '2021-06-17 10:38:35', '2021-06-17 10:38:35', '', 0, 'http://localhost/ibos/?post_type=our_technologies&#038;p=116', 0, 'our_technologies', '', 0),
(117, 1, '2021-06-17 10:38:32', '2021-06-17 10:38:32', '', 'c', '', 'inherit', 'open', 'closed', '', 'c-19', '', '', '2021-06-17 10:38:32', '2021-06-17 10:38:32', '', 116, 'http://localhost/ibos/wp-content/uploads/2021/06/c-17.svg', 0, 'attachment', 'image/svg+xml', 0),
(118, 1, '2021-06-17 10:38:53', '2021-06-17 10:38:53', '', 'Auto Draft', '', 'publish', 'closed', 'closed', '', 'auto-draft-3', '', '', '2021-06-17 10:38:53', '2021-06-17 10:38:53', '', 0, 'http://localhost/ibos/?post_type=our_technologies&#038;p=118', 0, 'our_technologies', '', 0),
(119, 1, '2021-06-17 10:38:48', '2021-06-17 10:38:48', '', 'docker', '', 'inherit', 'open', 'closed', '', 'docker-2', '', '', '2021-06-17 10:38:48', '2021-06-17 10:38:48', '', 118, 'http://localhost/ibos/wp-content/uploads/2021/06/docker.svg', 0, 'attachment', 'image/svg+xml', 0),
(120, 1, '2021-06-17 10:39:07', '2021-06-17 10:39:07', '', 'Auto Draft', '', 'publish', 'closed', 'closed', '', 'auto-draft-4', '', '', '2021-06-17 10:39:07', '2021-06-17 10:39:07', '', 0, 'http://localhost/ibos/?post_type=our_technologies&#038;p=120', 0, 'our_technologies', '', 0),
(121, 1, '2021-06-17 10:39:03', '2021-06-17 10:39:03', '', 'flutter', '', 'inherit', 'open', 'closed', '', 'flutter-2', '', '', '2021-06-17 10:39:03', '2021-06-17 10:39:03', '', 120, 'http://localhost/ibos/wp-content/uploads/2021/06/flutter.svg', 0, 'attachment', 'image/svg+xml', 0),
(122, 1, '2021-06-17 10:39:21', '2021-06-17 10:39:21', '', 'Auto Draft', '', 'publish', 'closed', 'closed', '', 'auto-draft-5', '', '', '2021-06-17 10:39:21', '2021-06-17 10:39:21', '', 0, 'http://localhost/ibos/?post_type=our_technologies&#038;p=122', 0, 'our_technologies', '', 0),
(123, 1, '2021-06-17 10:39:18', '2021-06-17 10:39:18', '', 'kubernetis', '', 'inherit', 'open', 'closed', '', 'kubernetis-3', '', '', '2021-06-17 10:39:18', '2021-06-17 10:39:18', '', 122, 'http://localhost/ibos/wp-content/uploads/2021/06/kubernetis-1.svg', 0, 'attachment', 'image/svg+xml', 0),
(124, 1, '2021-06-17 10:39:33', '2021-06-17 10:39:33', '', 'Auto Draft', '', 'publish', 'closed', 'closed', '', 'auto-draft-6', '', '', '2021-06-17 10:39:33', '2021-06-17 10:39:33', '', 0, 'http://localhost/ibos/?post_type=our_technologies&#038;p=124', 0, 'our_technologies', '', 0),
(125, 1, '2021-06-17 10:39:30', '2021-06-17 10:39:30', '', 'net', '', 'inherit', 'open', 'closed', '', 'net-2', '', '', '2021-06-17 10:39:30', '2021-06-17 10:39:30', '', 124, 'http://localhost/ibos/wp-content/uploads/2021/06/net.svg', 0, 'attachment', 'image/svg+xml', 0),
(126, 1, '2021-06-17 10:39:45', '2021-06-17 10:39:45', '', 'Auto Draft', '', 'publish', 'closed', 'closed', '', 'auto-draft-7', '', '', '2021-06-17 10:39:45', '2021-06-17 10:39:45', '', 0, 'http://localhost/ibos/?post_type=our_technologies&#038;p=126', 0, 'our_technologies', '', 0),
(127, 1, '2021-06-17 10:39:42', '2021-06-17 10:39:42', '', 'nginx', '', 'inherit', 'open', 'closed', '', 'nginx-3', '', '', '2021-06-17 10:39:42', '2021-06-17 10:39:42', '', 126, 'http://localhost/ibos/wp-content/uploads/2021/06/nginx.svg', 0, 'attachment', 'image/svg+xml', 0),
(128, 1, '2021-06-17 11:04:56', '2021-06-17 11:04:56', '', 'Auto Draft', '', 'publish', 'closed', 'closed', '', 'auto-draft', '', '', '2021-06-17 11:04:56', '2021-06-17 11:04:56', '', 0, 'http://localhost/ibos/?post_type=our_client&#038;p=128', 0, 'our_client', '', 0),
(129, 1, '2021-06-17 11:04:53', '2021-06-17 11:04:53', '', 'akij-cement', '', 'inherit', 'open', 'closed', '', 'akij-cement-2', '', '', '2021-06-17 11:04:53', '2021-06-17 11:04:53', '', 128, 'http://localhost/ibos/wp-content/uploads/2021/06/akij-cement.svg', 0, 'attachment', 'image/svg+xml', 0),
(130, 1, '2021-06-17 11:05:08', '2021-06-17 11:05:08', '', 'Auto Draft', '', 'publish', 'closed', 'closed', '', 'auto-draft-2', '', '', '2021-06-17 11:05:08', '2021-06-17 11:05:08', '', 0, 'http://localhost/ibos/?post_type=our_client&#038;p=130', 0, 'our_client', '', 0),
(131, 1, '2021-06-17 11:05:03', '2021-06-17 11:05:03', '', 'akij-food', '', 'inherit', 'open', 'closed', '', 'akij-food-2', '', '', '2021-06-17 11:05:03', '2021-06-17 11:05:03', '', 130, 'http://localhost/ibos/wp-content/uploads/2021/06/akij-food.svg', 0, 'attachment', 'image/svg+xml', 0),
(132, 1, '2021-06-17 11:05:20', '2021-06-17 11:05:20', '', 'Auto Draft', '', 'publish', 'closed', 'closed', '', 'auto-draft-3', '', '', '2021-06-17 11:05:20', '2021-06-17 11:05:20', '', 0, 'http://localhost/ibos/?post_type=our_client&#038;p=132', 0, 'our_client', '', 0),
(133, 1, '2021-06-17 11:05:16', '2021-06-17 11:05:16', '', 'akij-poly-fiber', '', 'inherit', 'open', 'closed', '', 'akij-poly-fiber', '', '', '2021-06-17 11:05:16', '2021-06-17 11:05:16', '', 132, 'http://localhost/ibos/wp-content/uploads/2021/06/akij-poly-fiber.svg', 0, 'attachment', 'image/svg+xml', 0),
(134, 1, '2021-06-17 11:05:33', '2021-06-17 11:05:33', '', 'Auto Draft', '', 'publish', 'closed', 'closed', '', 'auto-draft-4', '', '', '2021-06-17 11:05:33', '2021-06-17 11:05:33', '', 0, 'http://localhost/ibos/?post_type=our_client&#038;p=134', 0, 'our_client', '', 0),
(135, 1, '2021-06-17 11:05:29', '2021-06-17 11:05:29', '', 'akij-shipping', '', 'inherit', 'open', 'closed', '', 'akij-shipping-2', '', '', '2021-06-17 11:05:29', '2021-06-17 11:05:29', '', 134, 'http://localhost/ibos/wp-content/uploads/2021/06/akij-shipping.svg', 0, 'attachment', 'image/svg+xml', 0),
(137, 1, '2021-07-03 06:12:58', '2021-06-19 03:49:31', '', 'E-commerce Development', '', 'publish', 'closed', 'closed', '', 'e-commerce-development', '', '', '2021-07-03 06:12:58', '2021-07-03 06:12:58', '', 0, 'http://localhost/ibos/?p=137', 5, 'nav_menu_item', '', 0),
(140, 1, '2021-07-03 06:12:58', '2021-06-19 03:49:31', '', 'Enterprise Privacy & Security', '', 'publish', 'closed', 'closed', '', 'enterprise-privacy-security-2', '', '', '2021-07-03 06:12:58', '2021-07-03 06:12:58', '', 0, 'http://localhost/ibos/?p=140', 8, 'nav_menu_item', '', 0),
(142, 1, '2021-06-19 04:29:22', '2021-06-19 04:29:22', '<!-- wp:contact-form-7/contact-form-selector {\"id\":161,\"title\":\"Contact form\"} -->\n<div class=\"wp-block-contact-form-7-contact-form-selector\">[contact-form-7 id=\"161\" title=\"Contact form\"]</div>\n<!-- /wp:contact-form-7/contact-form-selector -->', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2021-06-20 06:53:18', '2021-06-20 06:53:18', '', 0, 'http://localhost/ibos/?page_id=142', 0, 'page', '', 0),
(143, 1, '2021-07-03 06:12:58', '2021-06-19 04:29:22', ' ', '', '', 'publish', 'closed', 'closed', '', '143', '', '', '2021-07-03 06:12:58', '2021-07-03 06:12:58', '', 0, 'http://localhost/ibos/2021/06/19/143/', 10, 'nav_menu_item', '', 0),
(144, 1, '2021-06-19 04:29:22', '2021-06-19 04:29:22', ' ', '', '', 'publish', 'closed', 'closed', '', '144', '', '', '2021-06-19 04:29:22', '2021-06-19 04:29:22', '', 0, 'http://localhost/ibos/2021/06/19/144/', 7, 'nav_menu_item', '', 0),
(145, 1, '2021-06-19 04:29:22', '2021-06-19 04:29:22', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '142-revision-v1', '', '', '2021-06-19 04:29:22', '2021-06-19 04:29:22', '', 142, 'http://localhost/ibos/?p=145', 0, 'revision', '', 0),
(147, 1, '2021-06-19 10:10:48', '2021-06-19 10:10:48', '', 'Book-Demo', '', 'publish', 'closed', 'closed', '', 'book-demo', '', '', '2021-06-20 04:49:20', '2021-06-20 04:49:20', '', 0, 'http://localhost/ibos/?page_id=147', 0, 'page', '', 0),
(149, 1, '2021-06-19 10:10:49', '2021-06-19 10:10:49', ' ', '', '', 'publish', 'closed', 'closed', '', '149', '', '', '2021-06-19 10:10:49', '2021-06-19 10:10:49', '', 0, 'http://localhost/ibos/2021/06/19/149/', 8, 'nav_menu_item', '', 0),
(150, 1, '2021-06-19 10:10:48', '2021-06-19 10:10:48', '', 'Book-Demo', '', 'inherit', 'closed', 'closed', '', '147-revision-v1', '', '', '2021-06-19 10:10:48', '2021-06-19 10:10:48', '', 147, 'http://localhost/ibos/?p=150', 0, 'revision', '', 0),
(153, 1, '2021-06-20 04:03:52', '2021-06-20 04:03:52', 'With a creative approach and the best enterprise software engineers in town, iBOS has proven that it can build any type of customized system to suit our customers\' needs. With some innovative projects under its belt already, we are now looking at helping smaller and mid-size companies as well!', 'iBOS: The Most Happening Tech Company in Town', '', 'publish', 'closed', 'closed', '', 'ibos-the-most-happening-tech-company-in-town', '', '', '2021-06-20 04:20:11', '2021-06-20 04:20:11', '', 0, 'http://localhost/ibos/?post_type=blog_section_one&#038;p=153', 0, 'blog_section_one', '', 0),
(154, 1, '2021-06-20 04:03:48', '2021-06-20 04:03:48', '', 'ibos-discuss', '', 'inherit', 'open', 'closed', '', 'ibos-discuss', '', '', '2021-06-20 04:03:48', '2021-06-20 04:03:48', '', 153, 'http://localhost/ibos/wp-content/uploads/2021/06/ibos-discuss.png', 0, 'attachment', 'image/png', 0),
(155, 1, '2021-06-20 04:32:37', '2021-06-20 04:32:37', '<p class=\"single-hm-article-post\">We believe that if over 35,000 users of Akij can trust us for the past 12 years and\r\nrun all 64 of their companies on our software, you can too.</p>\r\n<p class=\"single-hm-article-post\">Being a part of one of the largest companies in the country means that we are able\r\nto use the resources and capital from other companies within our group.</p>\r\n<p class=\"single-hm-article-post\">This includes the knowledge of running the most complex business processes and\r\nknowing how to automate most of the tasks to achieve greater efficiency.</p>', 'Born Out of One of The Largest Groups of Companies in The Country.', '', 'publish', 'closed', 'closed', '', 'born-out-of-one-of-the-largest-groups-of-companies-in-the-country', '', '', '2021-06-20 04:39:47', '2021-06-20 04:39:47', '', 0, 'http://localhost/ibos/?post_type=blog_section_two&#038;p=155', 0, 'blog_section_two', '', 0),
(156, 1, '2021-06-20 04:32:34', '2021-06-20 04:32:34', '', 'akij', '', 'inherit', 'open', 'closed', '', 'akij', '', '', '2021-06-20 04:32:34', '2021-06-20 04:32:34', '', 155, 'http://localhost/ibos/wp-content/uploads/2021/06/akij.png', 0, 'attachment', 'image/png', 0),
(157, 1, '2021-06-20 04:35:40', '2021-06-20 04:35:40', '<p class=\"single-hm-article-post\">\n                                    We believe that if over 35,000 users of Akij can trust us for the past 12 years and\n                                    run all 64 of their companies on our software, you can too.\n                                </p>\n\n<p class=\"single-hm-article-post\">\n                                    Being a part of one of the largest companies in the country means that we are able\n                                    to use the resources and capital from other companies within our group.\n                                </p>\n\nThis includes the knowledge of running the most complex business processes and knowing how to automate most of the tasks to achieve greater efficiency.', 'Born Out of One of The Largest Groups of Companies in The Country.', '', 'inherit', 'closed', 'closed', '', '155-autosave-v1', '', '', '2021-06-20 04:35:40', '2021-06-20 04:35:40', '', 155, 'http://localhost/ibos/?p=157', 0, 'revision', '', 0),
(160, 1, '2021-06-20 06:47:24', '2021-06-20 06:47:24', '<!-- wp:contact-form-7/contact-form-selector {\"id\":159,\"title\":\"Contact form 1\"} -->\n<div class=\"wp-block-contact-form-7-contact-form-selector\">[contact-form-7 id=\"159\" title=\"Contact form 1\"]</div>\n<!-- /wp:contact-form-7/contact-form-selector -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '142-revision-v1', '', '', '2021-06-20 06:47:24', '2021-06-20 06:47:24', '', 142, 'http://localhost/ibos/?p=160', 0, 'revision', '', 0),
(162, 1, '2021-06-20 06:52:44', '2021-06-20 06:52:44', '<!-- wp:contact-form-7/contact-form-selector {\"id\":161,\"title\":\"Contact form\"} -->\n<div class=\"wp-block-contact-form-7-contact-form-selector\">[contact-form-7 id=\"161\" title=\"Contact form\"]</div>\n<!-- /wp:contact-form-7/contact-form-selector -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '142-revision-v1', '', '', '2021-06-20 06:52:44', '2021-06-20 06:52:44', '', 142, 'http://localhost/ibos/?p=162', 0, 'revision', '', 0),
(163, 1, '2021-06-20 10:14:45', '2021-06-20 10:14:45', '', 'ibos favicon', '', 'inherit', 'open', 'closed', '', 'ibos-favicon', '', '', '2021-06-20 10:14:45', '2021-06-20 10:14:45', '', 0, 'http://localhost/ibos/wp-content/uploads/2021/06/ibos-favicon.svg', 0, 'attachment', 'image/svg+xml', 0),
(164, 1, '2021-06-21 04:59:17', '2021-06-21 04:59:17', '', 'About Us', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2021-06-21 04:59:40', '2021-06-21 04:59:40', '', 0, 'http://localhost/ibos/?page_id=164', 0, 'page', '', 0),
(165, 1, '2021-07-03 06:12:58', '2021-06-21 04:59:17', ' ', '', '', 'publish', 'closed', 'closed', '', '165', '', '', '2021-07-03 06:12:58', '2021-07-03 06:12:58', '', 0, 'http://localhost/ibos/?p=165', 9, 'nav_menu_item', '', 0),
(166, 1, '2021-06-21 04:59:17', '2021-06-21 04:59:17', ' ', '', '', 'publish', 'closed', 'closed', '', '166', '', '', '2021-06-21 04:59:17', '2021-06-21 04:59:17', '', 0, 'http://localhost/ibos/?p=166', 9, 'nav_menu_item', '', 0),
(167, 1, '2021-06-21 04:59:17', '2021-06-21 04:59:17', '', 'About', '', 'inherit', 'closed', 'closed', '', '164-revision-v1', '', '', '2021-06-21 04:59:17', '2021-06-21 04:59:17', '', 164, 'http://localhost/ibos/?p=167', 0, 'revision', '', 0),
(168, 1, '2021-06-21 04:59:40', '2021-06-21 04:59:40', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '164-revision-v1', '', '', '2021-06-21 04:59:40', '2021-06-21 04:59:40', '', 164, 'http://localhost/ibos/?p=168', 0, 'revision', '', 0),
(173, 1, '2021-06-21 09:28:29', '2021-06-21 09:28:29', 'Graphics Designer', 'Jesy', '', 'trash', 'closed', 'closed', '', 'jesy__trashed', '', '', '2021-07-01 05:36:25', '2021-07-01 05:36:25', '', 0, 'http://localhost/ibos/?post_type=our_team_member&#038;p=173', 0, 'our_team_member', '', 0),
(174, 1, '2021-06-21 09:28:25', '2021-06-21 09:28:25', '', 'user01', '', 'inherit', 'open', 'closed', '', 'user01', '', '', '2021-06-21 09:28:25', '2021-06-21 09:28:25', '', 173, 'http://localhost/ibos/wp-content/uploads/2021/06/user01.png', 0, 'attachment', 'image/png', 0),
(175, 1, '2021-06-21 09:30:44', '2021-06-21 09:30:44', 'React Devoloper', 'Jubayer', '', 'trash', 'closed', 'closed', '', 'jubayer__trashed', '', '', '2021-07-01 05:36:25', '2021-07-01 05:36:25', '', 0, 'http://localhost/ibos/?post_type=our_team_member&#038;p=175', 0, 'our_team_member', '', 0),
(176, 1, '2021-06-21 09:30:41', '2021-06-21 09:30:41', '', 'user06', '', 'inherit', 'open', 'closed', '', 'user06', '', '', '2021-06-21 09:30:41', '2021-06-21 09:30:41', '', 175, 'http://localhost/ibos/wp-content/uploads/2021/06/user06.png', 0, 'attachment', 'image/png', 0),
(177, 1, '2021-06-21 10:24:05', '2021-06-21 10:24:05', 'Engineer', 'Sakib', '', 'trash', 'closed', 'closed', '', 'farhan__trashed', '', '', '2021-07-01 05:36:25', '2021-07-01 05:36:25', '', 0, 'http://localhost/ibos/?post_type=our_team_member&#038;p=177', 0, 'our_team_member', '', 0),
(178, 1, '2021-06-21 10:25:03', '2021-06-21 10:25:03', 'Engineer ', 'Tazbin', '', 'trash', 'closed', 'closed', '', 'tazbin__trashed', '', '', '2021-07-01 05:36:25', '2021-07-01 05:36:25', '', 0, 'http://localhost/ibos/?post_type=our_team_member&#038;p=178', 0, 'our_team_member', '', 0),
(179, 1, '2021-06-21 10:25:01', '2021-06-21 10:25:01', '', 'user05', '', 'inherit', 'open', 'closed', '', 'user05', '', '', '2021-06-21 10:25:01', '2021-06-21 10:25:01', '', 178, 'http://localhost/ibos/wp-content/uploads/2021/06/user05.png', 0, 'attachment', 'image/png', 0),
(180, 1, '2021-06-21 10:25:40', '2021-06-21 10:25:40', 'Backend Developer', 'Sayme', '', 'trash', 'closed', 'closed', '', 'sayme__trashed', '', '', '2021-07-01 05:36:25', '2021-07-01 05:36:25', '', 0, 'http://localhost/ibos/?post_type=our_team_member&#038;p=180', 0, 'our_team_member', '', 0),
(181, 1, '2021-06-21 10:25:37', '2021-06-21 10:25:37', '', 'user07', '', 'inherit', 'open', 'closed', '', 'user07', '', '', '2021-06-21 10:25:37', '2021-06-21 10:25:37', '', 180, 'http://localhost/ibos/wp-content/uploads/2021/06/user07.png', 0, 'attachment', 'image/png', 0),
(182, 1, '2021-06-21 10:26:00', '2021-06-21 10:26:00', 'Backend Developer', 'Mim', '', 'trash', 'closed', 'closed', '', 'mim__trashed', '', '', '2021-07-01 05:36:25', '2021-07-01 05:36:25', '', 0, 'http://localhost/ibos/?post_type=our_team_member&#038;p=182', 0, 'our_team_member', '', 0),
(183, 1, '2021-06-21 10:25:57', '2021-06-21 10:25:57', '', 'user02', '', 'inherit', 'open', 'closed', '', 'user02', '', '', '2021-06-21 10:25:57', '2021-06-21 10:25:57', '', 182, 'http://localhost/ibos/wp-content/uploads/2021/06/user02.png', 0, 'attachment', 'image/png', 0),
(184, 1, '2021-06-21 10:26:17', '2021-06-21 10:26:17', 'Backend Developer', 'shade', '', 'trash', 'closed', 'closed', '', 'shade__trashed', '', '', '2021-07-01 05:36:25', '2021-07-01 05:36:25', '', 0, 'http://localhost/ibos/?post_type=our_team_member&#038;p=184', 0, 'our_team_member', '', 0),
(185, 1, '2021-06-21 10:26:16', '2021-06-21 10:26:16', '', 'user08', '', 'inherit', 'open', 'closed', '', 'user08', '', '', '2021-06-21 10:26:16', '2021-06-21 10:26:16', '', 184, 'http://localhost/ibos/wp-content/uploads/2021/06/user08.png', 0, 'attachment', 'image/png', 0),
(186, 1, '2021-06-21 10:26:53', '2021-06-21 10:26:53', 'Developer', 'Humaira', '', 'trash', 'closed', 'closed', '', 'humaira__trashed', '', '', '2021-06-21 10:35:19', '2021-06-21 10:35:19', '', 0, 'http://localhost/ibos/?post_type=our_team_member&#038;p=186', 0, 'our_team_member', '', 0),
(187, 1, '2021-06-21 10:26:51', '2021-06-21 10:26:51', '', 'user04', '', 'inherit', 'open', 'closed', '', 'user04', '', '', '2021-06-21 10:26:51', '2021-06-21 10:26:51', '', 186, 'http://localhost/ibos/wp-content/uploads/2021/06/user04.png', 0, 'attachment', 'image/png', 0),
(188, 1, '2021-06-21 10:27:15', '2021-06-21 10:27:15', 'CTO', 'Al Amin', '', 'trash', 'closed', 'closed', '', 'al-amin__trashed', '', '', '2021-06-21 10:34:54', '2021-06-21 10:34:54', '', 0, 'http://localhost/ibos/?post_type=our_team_member&#038;p=188', 0, 'our_team_member', '', 0),
(189, 1, '2021-06-21 10:27:13', '2021-06-21 10:27:13', '', 'user03', '', 'inherit', 'open', 'closed', '', 'user03', '', '', '2021-06-21 10:27:13', '2021-06-21 10:27:13', '', 188, 'http://localhost/ibos/wp-content/uploads/2021/06/user03.png', 0, 'attachment', 'image/png', 0),
(190, 1, '2021-06-21 10:28:11', '2021-06-21 10:28:11', 'Engineer', 'Forhad', '', 'trash', 'closed', 'closed', '', 'forhad__trashed', '', '', '2021-06-21 10:34:54', '2021-06-21 10:34:54', '', 0, 'http://localhost/ibos/?post_type=our_team_member&#038;p=190', 0, 'our_team_member', '', 0),
(191, 1, '2021-06-21 10:35:54', '2021-06-21 10:35:54', 'developer', 'Humaiera', '', 'trash', 'closed', 'closed', '', 'humaiera__trashed', '', '', '2021-07-01 05:36:25', '2021-07-01 05:36:25', '', 0, 'http://localhost/ibos/?post_type=our_team_member&#038;p=191', 0, 'our_team_member', '', 0),
(192, 1, '2021-06-21 10:36:32', '2021-06-21 10:36:32', 'CTO', 'Al Amin', '', 'trash', 'closed', 'closed', '', 'al-amin__trashed-2', '', '', '2021-07-01 05:36:25', '2021-07-01 05:36:25', '', 0, 'http://localhost/ibos/?post_type=our_team_member&#038;p=192', 0, 'our_team_member', '', 0),
(193, 1, '2021-06-21 10:38:27', '2021-06-21 10:38:27', 'Design', 'Urmi', '', 'trash', 'closed', 'closed', '', 'urmi__trashed', '', '', '2021-07-01 05:36:25', '2021-07-01 05:36:25', '', 0, 'http://localhost/ibos/?post_type=our_team_member&#038;p=193', 0, 'our_team_member', '', 0),
(194, 1, '2021-06-21 10:38:24', '2021-06-21 10:38:24', '', 'user02', '', 'inherit', 'open', 'closed', '', 'user02-2', '', '', '2021-06-21 10:38:24', '2021-06-21 10:38:24', '', 193, 'http://localhost/ibos/wp-content/uploads/2021/06/user02-1.png', 0, 'attachment', 'image/png', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(195, 1, '2021-06-21 10:39:45', '2021-06-21 10:39:45', 'Full Stack Developer', 'Jesy', '', 'trash', 'closed', 'closed', '', 'jesy-2__trashed', '', '', '2021-07-01 05:36:25', '2021-07-01 05:36:25', '', 0, 'http://localhost/ibos/?post_type=our_team_member&#038;p=195', 0, 'our_team_member', '', 0),
(196, 1, '2021-06-21 10:39:42', '2021-06-21 10:39:42', '', 'user08', '', 'inherit', 'open', 'closed', '', 'user08-2', '', '', '2021-06-21 10:39:42', '2021-06-21 10:39:42', '', 195, 'http://localhost/ibos/wp-content/uploads/2021/06/user08-1.png', 0, 'attachment', 'image/png', 0),
(197, 1, '2021-06-21 10:40:28', '2021-06-21 10:40:28', 'Design', 'Rakib', '', 'trash', 'closed', 'closed', '', 'rakib__trashed', '', '', '2021-07-01 05:36:25', '2021-07-01 05:36:25', '', 0, 'http://localhost/ibos/?post_type=our_team_member&#038;p=197', 0, 'our_team_member', '', 0),
(198, 1, '2021-06-21 10:44:06', '2021-06-21 10:44:06', 'Graphic Designer', 'Sakib', '', 'trash', 'closed', 'closed', '', 'sakib__trashed', '', '', '2021-07-01 05:36:25', '2021-07-01 05:36:25', '', 0, 'http://localhost/ibos/?post_type=our_team_member&#038;p=198', 0, 'our_team_member', '', 0),
(199, 1, '2021-06-21 10:44:01', '2021-06-21 10:44:01', '', 'user05', '', 'inherit', 'open', 'closed', '', 'user05-2', '', '', '2021-06-21 10:44:01', '2021-06-21 10:44:01', '', 198, 'http://localhost/ibos/wp-content/uploads/2021/06/user05-1.png', 0, 'attachment', 'image/png', 0),
(202, 1, '2021-06-23 03:55:14', '2021-06-23 03:55:14', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2021-06-23 03:55:14', '2021-06-23 03:55:14', '', 0, 'http://localhost/ibos/?page_id=202', 0, 'page', '', 0),
(204, 1, '2021-06-23 03:55:14', '2021-06-23 03:55:14', ' ', '', '', 'publish', 'closed', 'closed', '', '204', '', '', '2021-06-23 03:55:14', '2021-06-23 03:55:14', '', 0, 'http://localhost/ibos/?p=204', 10, 'nav_menu_item', '', 0),
(205, 1, '2021-06-23 03:55:14', '2021-06-23 03:55:14', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '202-revision-v1', '', '', '2021-06-23 03:55:14', '2021-06-23 03:55:14', '', 202, 'http://localhost/ibos/?p=205', 0, 'revision', '', 0),
(209, 1, '2021-06-23 04:54:51', '2021-06-23 04:54:51', ' 3 Simple Ways To Save A Bunch of Money When Buying A\r\n                       ', '3 Simple Ways To Save A Bunch of Money When Buying A', '', 'publish', 'closed', 'closed', '', '3-simple-ways-to-save-a-bunch-of-money-when-buying-a-new-computer', '', '', '2021-06-23 04:56:15', '2021-06-23 04:56:15', '', 0, 'http://localhost/ibos/?post_type=blog&#038;p=209', 0, 'blog', '', 0),
(211, 1, '2021-06-23 04:55:47', '2021-06-23 04:55:47', '', 'blog03', '', 'inherit', 'open', 'closed', '', 'blog03', '', '', '2021-06-23 04:55:47', '2021-06-23 04:55:47', '', 209, 'http://localhost/ibos/wp-content/uploads/2021/06/blog03.png', 0, 'attachment', 'image/png', 0),
(213, 1, '2021-06-23 05:03:26', '2021-06-23 05:03:26', 'test', 'test', '', 'publish', 'closed', 'closed', '', 'test', '', '', '2021-06-24 05:34:54', '2021-06-24 05:34:54', '', 0, 'http://localhost/ibos/?post_type=portfolio&#038;p=213', 0, 'portfolio', '', 0),
(215, 1, '2021-06-23 06:46:23', '2021-06-23 06:46:23', 'Software Developer', 'Farhan Sakib Jesy', '', 'trash', 'closed', 'closed', '', 'farhan-sakib-jesy__trashed', '', '', '2021-07-01 05:36:25', '2021-07-01 05:36:25', '', 0, 'http://localhost/ibos/?post_type=our_team_member&#038;p=215', 0, 'our_team_member', '', 0),
(216, 1, '2021-06-23 06:46:15', '2021-06-23 06:46:15', '', 'Image20210623124446', '', 'inherit', 'open', 'closed', '', 'image20210623124446', '', '', '2021-06-23 06:46:15', '2021-06-23 06:46:15', '', 215, 'http://localhost/ibos/wp-content/uploads/2021/06/Image20210623124446.png', 0, 'attachment', 'image/png', 0),
(217, 1, '2021-06-23 07:10:03', '2021-06-23 07:10:03', '', 'Image20210623130939', '', 'inherit', 'open', 'closed', '', 'image20210623130939', '', '', '2021-06-23 07:10:03', '2021-06-23 07:10:03', '', 215, 'http://localhost/ibos/wp-content/uploads/2021/06/Image20210623130939.png', 0, 'attachment', 'image/png', 0),
(225, 1, '2021-06-23 09:43:32', '2021-06-23 09:43:32', '', '', '', 'publish', 'closed', 'closed', '', '225', '', '', '2021-06-23 09:43:32', '2021-06-23 09:43:32', '', 0, 'http://localhost/ibos/?post_type=blog&#038;p=225', 0, 'blog', '', 0),
(228, 1, '2021-06-24 04:03:37', '2021-06-24 04:03:37', 'sadsssda', 'jesy', '', 'publish', 'closed', 'closed', '', 'ff', '', '', '2021-06-24 05:34:48', '2021-06-24 05:34:48', '', 0, 'http://localhost/ibos/?post_type=portfolio&#038;p=228', 0, 'portfolio', '', 0),
(230, 1, '2021-06-24 04:47:52', '2021-06-24 04:47:52', 'ssfsfdsfd', 'jubaer', '', 'publish', 'closed', 'closed', '', 'jubaer', '', '', '2021-06-24 05:34:39', '2021-06-24 05:34:39', '', 0, 'http://localhost/ibos/?post_type=portfolio&#038;p=230', 0, 'portfolio', '', 0),
(231, 1, '2021-06-24 04:48:21', '2021-06-24 04:48:21', '', 'blog01', '', 'inherit', 'open', 'closed', '', 'blog01', '', '', '2021-06-24 04:48:21', '2021-06-24 04:48:21', '', 230, 'http://localhost/ibos/wp-content/uploads/2021/06/blog01.png', 0, 'attachment', 'image/png', 0),
(232, 1, '2021-06-24 05:22:10', '2021-06-24 05:22:10', 'da', 'sc', '', 'publish', 'closed', 'closed', '', '232', '', '', '2021-06-24 05:34:33', '2021-06-24 05:34:33', '', 0, 'http://localhost/ibos/?post_type=portfolio&#038;p=232', 0, 'portfolio', '', 0),
(237, 1, '2021-06-26 03:48:42', '2021-06-26 03:48:42', '<!-- wp:paragraph -->\n<p>Last year, COVID-19 saw a surge of migration to digital channels, permanently changing the way consumers engage with brands online.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>When we released our first State of Personalisation report back in 2017, we had identified that the shift to e-commerce had been accelerating. But we never could have imagined just how rapidly consumer expectations and behaviours would change.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>To better understand how quickly attitudes, expectations, and experiences have evolved when it comes to personalisation, Twilio Segment surveyed over 3,000 businesses and consumers worldwide (1/3 of which are from the UK). Our findings tell a compelling story about how consumer behaviour in the UK changed over the past 12 months, and how businesses reacted.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Below we highlight key insights from our second State of Personalisation report to explore trends on a global level, and discuss how businesses in the United Kingdom specifically can use these insights to understand, and guide personalisation strategies moving forward.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Last year, COVID-19 saw a surge of migration to digital channels, permanently changing the way consumers engage with brands online.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>When we released our first State of Personalisation report back in 2017, we had identified that the shift to e-commerce had been accelerating. But we never could have imagined just how rapidly consumer expectations and behaviours would change.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>To better understand how quickly attitudes, expectations, and experiences have evolved when it comes to personalisation, Twilio Segment surveyed over 3,000 businesses and consumers worldwide (1/3 of which are from the UK). Our findings tell a compelling story about how consumer behaviour in the UK changed over the past 12 months, and how businesses reacted.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Below we highlight key insights from our second State of Personalisation report to explore trends on a global level, and discuss how businesses in the United Kingdom specifically can use these insights to understand, and guide personalisation strategies moving forward.</p>\n<!-- /wp:paragraph -->', '3 Simple Ways To Save A Bunch of Money When Buying A New Computer', '', 'publish', 'open', 'open', '', '3-simple-ways-to-save-a-bunch-of-money-when-buying-a-new-computer', '', '', '2021-06-26 06:05:25', '2021-06-26 06:05:25', '', 0, 'http://localhost/ibos/?p=237', 0, 'post', '', 0),
(238, 1, '2021-06-26 03:48:42', '2021-06-26 03:48:42', '', '3 Simple Ways To Save A Bunch of Money When Buying A New Computer', '', 'inherit', 'closed', 'closed', '', '237-revision-v1', '', '', '2021-06-26 03:48:42', '2021-06-26 03:48:42', '', 237, 'http://localhost/ibos/?p=238', 0, 'revision', '', 0),
(241, 1, '2021-06-26 04:15:18', '2021-06-26 04:15:18', '<!-- wp:paragraph -->\n<p>Last year, COVID-19 saw a surge of migration to digital channels, permanently changing the way consumers engage with brands online.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>When we released our first State of Personalisation report back in 2017, we had identified that the shift to e-commerce had been accelerating. But we never could have imagined just how rapidly consumer expectations and behaviours would change.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>To better understand how quickly attitudes, expectations, and experiences have evolved when it comes to personalisation, Twilio Segment surveyed over 3,000 businesses and consumers worldwide (1/3 of which are from the UK). Our findings tell a compelling story about how consumer behaviour in the UK changed over the past 12 months, and how businesses reacted.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Below we highlight key insights from our second State of Personalisation report to explore trends on a global level, and discuss how businesses in the United Kingdom specifically can use these insights to understand, and guide personalisation strategies moving forward.</p>\n<!-- /wp:paragraph -->', '3 Simple Ways To Save A Bunch of Money When Buying A New Computer', '', 'inherit', 'closed', 'closed', '', '237-revision-v1', '', '', '2021-06-26 04:15:18', '2021-06-26 04:15:18', '', 237, 'http://localhost/ibos/?p=241', 0, 'revision', '', 0),
(242, 1, '2021-06-26 04:30:29', '2021-06-26 04:30:29', '<!-- wp:paragraph -->\n<p>With a creative approach and the best enterprise software engineers in town, iBOS has proven that it can build any type of customized system to suit our customers’ needs. With some innovative projects under its belt already, we are now looking at helping smaller and mid-size companies as well!</p>\n<!-- /wp:paragraph -->', '3 Simple Ways To Save A Bunch of Money When Buying A New Computer', '', 'publish', 'open', 'open', '', '3-simple-ways-to-save-a-bunch-of-money-when-buying-a-new-computer-2', '', '', '2021-06-26 04:30:29', '2021-06-26 04:30:29', '', 0, 'http://localhost/ibos/?p=242', 0, 'post', '', 0),
(243, 1, '2021-06-26 04:29:53', '2021-06-26 04:29:53', '', 'blog02', '', 'inherit', 'open', 'closed', '', 'blog02', '', '', '2021-06-26 04:29:53', '2021-06-26 04:29:53', '', 242, 'http://localhost/ibos/wp-content/uploads/2021/06/blog02.png', 0, 'attachment', 'image/png', 0),
(244, 1, '2021-06-26 04:30:29', '2021-06-26 04:30:29', '<!-- wp:paragraph -->\n<p>With a creative approach and the best enterprise software engineers in town, iBOS has proven that it can build any type of customized system to suit our customers’ needs. With some innovative projects under its belt already, we are now looking at helping smaller and mid-size companies as well!</p>\n<!-- /wp:paragraph -->', '3 Simple Ways To Save A Bunch of Money When Buying A New Computer', '', 'inherit', 'closed', 'closed', '', '242-revision-v1', '', '', '2021-06-26 04:30:29', '2021-06-26 04:30:29', '', 242, 'http://localhost/ibos/?p=244', 0, 'revision', '', 0),
(245, 1, '2021-06-26 04:31:38', '2021-06-26 04:31:38', '<!-- wp:paragraph -->\n<p>With a creative approach and the best enterprise software engineers in town, iBOS has proven that it can build any type of customized system to suit our customers’ needs. With some innovative projects under its belt already, we are now looking at helping smaller and mid-size companies as well!</p>\n<!-- /wp:paragraph -->', 'iBOS has proven that it can build', '', 'publish', 'open', 'open', '', 'ibos-has-proven-that-it-can-build', '', '', '2021-06-26 04:54:10', '2021-06-26 04:54:10', '', 0, 'http://localhost/ibos/?p=245', 0, 'post', '', 0),
(246, 1, '2021-06-26 04:31:32', '2021-06-26 04:31:32', '', 'blog-img', '', 'inherit', 'open', 'closed', '', 'blog-img', '', '', '2021-06-26 04:31:32', '2021-06-26 04:31:32', '', 245, 'http://localhost/ibos/wp-content/uploads/2021/06/blog-img.jpg', 0, 'attachment', 'image/jpeg', 0),
(247, 1, '2021-06-26 04:31:38', '2021-06-26 04:31:38', '<!-- wp:paragraph -->\n<p>With a creative approach and the best enterprise software engineers in town, iBOS has proven that it can build any type of customized system to suit our customers’ needs. With some innovative projects under its belt already, we are now looking at helping smaller and mid-size companies as well!</p>\n<!-- /wp:paragraph -->', 'iBOS has proven that it can build', '', 'inherit', 'closed', 'closed', '', '245-revision-v1', '', '', '2021-06-26 04:31:38', '2021-06-26 04:31:38', '', 245, 'http://localhost/ibos/?p=247', 0, 'revision', '', 0),
(249, 1, '2021-06-26 04:32:54', '2021-06-26 04:32:54', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2021-06-26 04:32:54', '2021-06-26 04:32:54', '', 1, 'http://localhost/ibos/?p=249', 0, 'revision', '', 0),
(250, 1, '2021-06-26 04:54:06', '2021-06-26 04:54:06', '', 'blog03', '', 'inherit', 'open', 'closed', '', 'blog03-2', '', '', '2021-06-26 04:54:06', '2021-06-26 04:54:06', '', 245, 'http://localhost/ibos/wp-content/uploads/2021/06/blog03-1.png', 0, 'attachment', 'image/png', 0),
(251, 1, '2021-06-26 06:04:41', '2021-06-26 06:04:41', '<!-- wp:paragraph -->\n<p>Last year, COVID-19 saw a surge of migration to digital channels, permanently changing the way consumers engage with brands online.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>When we released our first State of Personalisation report back in 2017, we had identified that the shift to e-commerce had been accelerating. But we never could have imagined just how rapidly consumer expectations and behaviours would change.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>To better understand how quickly attitudes, expectations, and experiences have evolved when it comes to personalisation, Twilio Segment surveyed over 3,000 businesses and consumers worldwide (1/3 of which are from the UK). Our findings tell a compelling story about how consumer behaviour in the UK changed over the past 12 months, and how businesses reacted.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Below we highlight key insights from our second State of Personalisation report to explore trends on a global level, and discuss how businesses in the United Kingdom specifically can use these insights to understand, and guide personalisation strategies moving forward.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Last year, COVID-19 saw a surge of migration to digital channels, permanently changing the way consumers engage with brands online.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>When we released our first State of Personalisation report back in 2017, we had identified that the shift to e-commerce had been accelerating. But we never could have imagined just how rapidly consumer expectations and behaviours would change.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>To better understand how quickly attitudes, expectations, and experiences have evolved when it comes to personalisation, Twilio Segment surveyed over 3,000 businesses and consumers worldwide (1/3 of which are from the UK). Our findings tell a compelling story about how consumer behaviour in the UK changed over the past 12 months, and how businesses reacted.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Below we highlight key insights from our second State of Personalisation report to explore trends on a global level, and discuss how businesses in the United Kingdom specifically can use these insights to understand, and guide personalisation strategies moving forward.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Last year, COVID-19 saw a surge of migration to digital channels, permanently changing the way consumers engage with brands online.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>When we released our first State of Personalisation report back in 2017, we had identified that the shift to e-commerce had been accelerating. But we never could have imagined just how rapidly consumer expectations and behaviours would change.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>To better understand how quickly attitudes, expectations, and experiences have evolved when it comes to personalisation, Twilio Segment surveyed over 3,000 businesses and consumers worldwide (1/3 of which are from the UK). Our findings tell a compelling story about how consumer behaviour in the UK changed over the past 12 months, and how businesses reacted.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Below we highlight key insights from our second State of Personalisation report to explore trends on a global level, and discuss how businesses in the United Kingdom specifically can use these insights to understand, and guide personalisation strategies moving forward.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Last year, COVID-19 saw a surge of migration to digital channels, permanently changing the way consumers engage with brands online.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>When we released our first State of Personalisation report back in 2017, we had identified that the shift to e-commerce had been accelerating. But we never could have imagined just how rapidly consumer expectations and behaviours would change.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>To better understand how quickly attitudes, expectations, and experiences have evolved when it comes to personalisation, Twilio Segment surveyed over 3,000 businesses and consumers worldwide (1/3 of which are from the UK). Our findings tell a compelling story about how consumer behaviour in the UK changed over the past 12 months, and how businesses reacted.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Below we highlight key insights from our second State of Personalisation report to explore trends on a global level, and discuss how businesses in the United Kingdom specifically can use these insights to understand, and guide personalisation strategies moving forward.</p>\n<!-- /wp:paragraph -->', '3 Simple Ways To Save A Bunch of Money When Buying A New Computer', '', 'inherit', 'closed', 'closed', '', '237-revision-v1', '', '', '2021-06-26 06:04:41', '2021-06-26 06:04:41', '', 237, 'http://localhost/ibos/?p=251', 0, 'revision', '', 0),
(252, 1, '2021-06-26 06:05:14', '2021-06-26 06:05:14', '<!-- wp:paragraph -->\n<p>Last year, COVID-19 saw a surge of migration to digital channels, permanently changing the way consumers engage with brands online.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>When we released our first State of Personalisation report back in 2017, we had identified that the shift to e-commerce had been accelerating. But we never could have imagined just how rapidly consumer expectations and behaviours would change.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>To better understand how quickly attitudes, expectations, and experiences have evolved when it comes to personalisation, Twilio Segment surveyed over 3,000 businesses and consumers worldwide (1/3 of which are from the UK). Our findings tell a compelling story about how consumer behaviour in the UK changed over the past 12 months, and how businesses reacted.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Below we highlight key insights from our second State of Personalisation report to explore trends on a global level, and discuss how businesses in the United Kingdom specifically can use these insights to understand, and guide personalisation strategies moving forward.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Last year, COVID-19 saw a surge of migration to digital channels, permanently changing the way consumers engage with brands online.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>When we released our first State of Personalisation report back in 2017, we had identified that the shift to e-commerce had been accelerating. But we never could have imagined just how rapidly consumer expectations and behaviours would change.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>To better understand how quickly attitudes, expectations, and experiences have evolved when it comes to personalisation, Twilio Segment surveyed over 3,000 businesses and consumers worldwide (1/3 of which are from the UK). Our findings tell a compelling story about how consumer behaviour in the UK changed over the past 12 months, and how businesses reacted.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Below we highlight key insights from our second State of Personalisation report to explore trends on a global level, and discuss how businesses in the United Kingdom specifically can use these insights to understand, and guide personalisation strategies moving forward.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Last year, COVID-19 saw a surge of migration to digital channels, permanently changing the way consumers engage with brands online.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>When we released our first State of Personalisation report back in 2017, we had identified that the shift to e-commerce had been accelerating. But we never could have imagined just how rapidly consumer expectations and behaviours would change.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>To better understand how quickly attitudes, expectations, and experiences have evolved when it comes to personalisation, Twilio Segment surveyed over 3,000 businesses and consumers worldwide (1/3 of which are from the UK). Our findings tell a compelling story about how consumer behaviour in the UK changed over the past 12 months, and how businesses reacted.</p>\n<!-- /wp:paragraph -->', '3 Simple Ways To Save A Bunch of Money When Buying A New Computer', '', 'inherit', 'closed', 'closed', '', '237-revision-v1', '', '', '2021-06-26 06:05:14', '2021-06-26 06:05:14', '', 237, 'http://localhost/ibos/?p=252', 0, 'revision', '', 0),
(253, 1, '2021-06-26 06:05:25', '2021-06-26 06:05:25', '<!-- wp:paragraph -->\n<p>Last year, COVID-19 saw a surge of migration to digital channels, permanently changing the way consumers engage with brands online.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>When we released our first State of Personalisation report back in 2017, we had identified that the shift to e-commerce had been accelerating. But we never could have imagined just how rapidly consumer expectations and behaviours would change.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>To better understand how quickly attitudes, expectations, and experiences have evolved when it comes to personalisation, Twilio Segment surveyed over 3,000 businesses and consumers worldwide (1/3 of which are from the UK). Our findings tell a compelling story about how consumer behaviour in the UK changed over the past 12 months, and how businesses reacted.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Below we highlight key insights from our second State of Personalisation report to explore trends on a global level, and discuss how businesses in the United Kingdom specifically can use these insights to understand, and guide personalisation strategies moving forward.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Last year, COVID-19 saw a surge of migration to digital channels, permanently changing the way consumers engage with brands online.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>When we released our first State of Personalisation report back in 2017, we had identified that the shift to e-commerce had been accelerating. But we never could have imagined just how rapidly consumer expectations and behaviours would change.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>To better understand how quickly attitudes, expectations, and experiences have evolved when it comes to personalisation, Twilio Segment surveyed over 3,000 businesses and consumers worldwide (1/3 of which are from the UK). Our findings tell a compelling story about how consumer behaviour in the UK changed over the past 12 months, and how businesses reacted.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Below we highlight key insights from our second State of Personalisation report to explore trends on a global level, and discuss how businesses in the United Kingdom specifically can use these insights to understand, and guide personalisation strategies moving forward.</p>\n<!-- /wp:paragraph -->', '3 Simple Ways To Save A Bunch of Money When Buying A New Computer', '', 'inherit', 'closed', 'closed', '', '237-revision-v1', '', '', '2021-06-26 06:05:25', '2021-06-26 06:05:25', '', 237, 'http://localhost/ibos/?p=253', 0, 'revision', '', 0),
(255, 1, '2021-06-30 10:12:41', '2021-06-30 10:12:41', '', 'Auto Draft', '', 'publish', 'closed', 'closed', '', 'auto-draft-8', '', '', '2021-06-30 10:12:41', '2021-06-30 10:12:41', '', 0, 'http://localhost/ibos/?post_type=our_technologies&#038;p=255', 0, 'our_technologies', '', 0),
(256, 1, '2021-06-30 10:12:38', '2021-06-30 10:12:38', '', '001-sql-server', '', 'inherit', 'open', 'closed', '', '001-sql-server', '', '', '2021-06-30 10:12:38', '2021-06-30 10:12:38', '', 255, 'http://localhost/ibos/wp-content/uploads/2021/06/001-sql-server.svg', 0, 'attachment', 'image/svg+xml', 0),
(257, 1, '2021-06-30 10:33:08', '2021-06-30 10:33:08', '', 'Mobile App Development', '', 'publish', 'closed', 'closed', '', 'mobile-app-development', '', '', '2021-06-30 10:33:08', '2021-06-30 10:33:08', '', 0, 'http://localhost/ibos/?page_id=257', 0, 'page', '', 0),
(258, 1, '2021-07-03 06:12:58', '2021-06-30 10:33:08', ' ', '', '', 'publish', 'closed', 'closed', '', '258', '', '', '2021-07-03 06:12:58', '2021-07-03 06:12:58', '', 0, 'http://localhost/ibos/258/', 6, 'nav_menu_item', '', 0),
(259, 1, '2021-06-30 10:33:08', '2021-06-30 10:33:08', ' ', '', '', 'publish', 'closed', 'closed', '', '259', '', '', '2021-06-30 10:33:08', '2021-06-30 10:33:08', '', 0, 'http://localhost/ibos/259/', 11, 'nav_menu_item', '', 0),
(260, 1, '2021-06-30 10:33:08', '2021-06-30 10:33:08', '', 'Mobile App Development', '', 'inherit', 'closed', 'closed', '', '257-revision-v1', '', '', '2021-06-30 10:33:08', '2021-06-30 10:33:08', '', 257, 'http://localhost/ibos/?p=260', 0, 'revision', '', 0),
(261, 1, '2021-06-30 10:48:00', '2021-06-30 10:47:58', ' ', '', '', 'publish', 'closed', 'closed', '', '261', '', '', '2021-06-30 10:48:00', '2021-06-30 10:48:00', '', 0, 'http://localhost/ibos/?p=261', 3, 'nav_menu_item', '', 0),
(262, 1, '2021-07-01 05:08:46', '2021-07-01 05:08:46', '', 'Auto Draft', '', 'publish', 'closed', 'closed', '', 'auto-draft-9', '', '', '2021-07-01 05:08:46', '2021-07-01 05:08:46', '', 0, 'http://localhost/ibos/?post_type=our_technologies&#038;p=262', 0, 'our_technologies', '', 0),
(263, 1, '2021-07-01 05:08:43', '2021-07-01 05:08:43', '', 'android-seeklogo', '', 'inherit', 'open', 'closed', '', 'android-seeklogo', '', '', '2021-07-01 05:08:43', '2021-07-01 05:08:43', '', 262, 'http://localhost/ibos/wp-content/uploads/2021/07/android-seeklogo.svg', 0, 'attachment', 'image/svg+xml', 0),
(264, 1, '2021-07-01 05:09:03', '2021-07-01 05:09:03', '', 'Auto Draft', '', 'publish', 'closed', 'closed', '', 'auto-draft-10', '', '', '2021-07-01 05:09:03', '2021-07-01 05:09:03', '', 0, 'http://localhost/ibos/?post_type=our_technologies&#038;p=264', 0, 'our_technologies', '', 0),
(265, 1, '2021-07-01 05:09:00', '2021-07-01 05:09:00', '', 'angular-seeklogo', '', 'inherit', 'open', 'closed', '', 'angular-seeklogo', '', '', '2021-07-01 05:09:00', '2021-07-01 05:09:00', '', 264, 'http://localhost/ibos/wp-content/uploads/2021/07/angular-seeklogo.svg', 0, 'attachment', 'image/svg+xml', 0),
(266, 1, '2021-07-01 05:09:29', '2021-07-01 05:09:29', '', 'Auto Draft', '', 'publish', 'closed', 'closed', '', 'auto-draft-11', '', '', '2021-07-01 05:09:29', '2021-07-01 05:09:29', '', 0, 'http://localhost/ibos/?post_type=our_technologies&#038;p=266', 0, 'our_technologies', '', 0),
(267, 1, '2021-07-01 05:09:25', '2021-07-01 05:09:25', '', 'django [Converted]', '', 'inherit', 'open', 'closed', '', 'django-converted', '', '', '2021-07-01 05:09:25', '2021-07-01 05:09:25', '', 266, 'http://localhost/ibos/wp-content/uploads/2021/07/django-Converted.svg', 0, 'attachment', 'image/svg+xml', 0),
(268, 1, '2021-07-01 05:09:59', '2021-07-01 05:09:59', '', 'Auto Draft', '', 'publish', 'closed', 'closed', '', 'auto-draft-12', '', '', '2021-07-01 05:09:59', '2021-07-01 05:09:59', '', 0, 'http://localhost/ibos/?post_type=our_technologies&#038;p=268', 0, 'our_technologies', '', 0),
(269, 1, '2021-07-01 05:09:55', '2021-07-01 05:09:55', '', 'dot-net-core-7', '', 'inherit', 'open', 'closed', '', 'dot-net-core-7', '', '', '2021-07-01 05:09:55', '2021-07-01 05:09:55', '', 268, 'http://localhost/ibos/wp-content/uploads/2021/07/dot-net-core-7.svg', 0, 'attachment', 'image/svg+xml', 0),
(270, 1, '2021-07-01 05:10:18', '2021-07-01 05:10:18', '', 'Auto Draft', '', 'publish', 'closed', 'closed', '', 'auto-draft-13', '', '', '2021-07-01 05:10:18', '2021-07-01 05:10:18', '', 0, 'http://localhost/ibos/?post_type=our_technologies&#038;p=270', 0, 'our_technologies', '', 0),
(271, 1, '2021-07-01 05:10:16', '2021-07-01 05:10:16', '', 'javascript-js-seeklogo.com', '', 'inherit', 'open', 'closed', '', 'javascript-js-seeklogo-com', '', '', '2021-07-01 05:10:16', '2021-07-01 05:10:16', '', 270, 'http://localhost/ibos/wp-content/uploads/2021/07/javascript-js-seeklogo.com_.svg', 0, 'attachment', 'image/svg+xml', 0),
(272, 1, '2021-07-01 05:10:35', '2021-07-01 05:10:35', '', 'Auto Draft', '', 'publish', 'closed', 'closed', '', 'auto-draft-14', '', '', '2021-07-01 05:10:35', '2021-07-01 05:10:35', '', 0, 'http://localhost/ibos/?post_type=our_technologies&#038;p=272', 0, 'our_technologies', '', 0),
(273, 1, '2021-07-01 05:10:32', '2021-07-01 05:10:32', '', 'kotlin-seeklogo.com', '', 'inherit', 'open', 'closed', '', 'kotlin-seeklogo-com', '', '', '2021-07-01 05:10:32', '2021-07-01 05:10:32', '', 272, 'http://localhost/ibos/wp-content/uploads/2021/07/kotlin-seeklogo.com_.svg', 0, 'attachment', 'image/svg+xml', 0),
(274, 1, '2021-07-01 05:10:58', '2021-07-01 05:10:58', '', 'Auto Draft', '', 'publish', 'closed', 'closed', '', 'auto-draft-15', '', '', '2021-07-01 05:10:58', '2021-07-01 05:10:58', '', 0, 'http://localhost/ibos/?post_type=our_technologies&#038;p=274', 0, 'our_technologies', '', 0),
(275, 1, '2021-07-01 05:10:56', '2021-07-01 05:10:56', '', 'laravel-framework-seeklogo.com copy', '', 'inherit', 'open', 'closed', '', 'laravel-framework-seeklogo-com-copy', '', '', '2021-07-01 05:10:56', '2021-07-01 05:10:56', '', 274, 'http://localhost/ibos/wp-content/uploads/2021/07/laravel-framework-seeklogo.com-copy.svg', 0, 'attachment', 'image/svg+xml', 0),
(276, 1, '2021-07-01 05:11:16', '2021-07-01 05:11:16', '', 'Auto Draft', '', 'publish', 'closed', 'closed', '', 'auto-draft-16', '', '', '2021-07-01 05:11:16', '2021-07-01 05:11:16', '', 0, 'http://localhost/ibos/?post_type=our_technologies&#038;p=276', 0, 'our_technologies', '', 0),
(277, 1, '2021-07-01 05:11:13', '2021-07-01 05:11:13', '', 'Microsoft iis', '', 'inherit', 'open', 'closed', '', 'microsoft-iis', '', '', '2021-07-01 05:11:13', '2021-07-01 05:11:13', '', 276, 'http://localhost/ibos/wp-content/uploads/2021/07/Microsoft-iis.svg', 0, 'attachment', 'image/svg+xml', 0),
(278, 1, '2021-07-01 05:11:47', '2021-07-01 05:11:47', '', 'Auto Draft', '', 'publish', 'closed', 'closed', '', 'auto-draft-17', '', '', '2021-07-01 05:11:49', '2021-07-01 05:11:49', '', 0, 'http://localhost/ibos/?post_type=our_technologies&#038;p=278', 0, 'our_technologies', '', 0),
(279, 1, '2021-07-01 05:11:42', '2021-07-01 05:11:42', '', 'python-seeklogo.com', '', 'inherit', 'open', 'closed', '', 'python-seeklogo-com', '', '', '2021-07-01 05:11:42', '2021-07-01 05:11:42', '', 278, 'http://localhost/ibos/wp-content/uploads/2021/07/python-seeklogo.com_.svg', 0, 'attachment', 'image/svg+xml', 0),
(280, 1, '2021-07-01 05:12:08', '2021-07-01 05:12:08', '', 'Auto Draft', '', 'publish', 'closed', 'closed', '', 'auto-draft-18', '', '', '2021-07-01 05:12:08', '2021-07-01 05:12:08', '', 0, 'http://localhost/ibos/?post_type=our_technologies&#038;p=280', 0, 'our_technologies', '', 0),
(281, 1, '2021-07-01 05:12:05', '2021-07-01 05:12:05', '', 'React Native', '', 'inherit', 'open', 'closed', '', 'react-native', '', '', '2021-07-01 05:12:05', '2021-07-01 05:12:05', '', 280, 'http://localhost/ibos/wp-content/uploads/2021/07/React-Native.svg', 0, 'attachment', 'image/svg+xml', 0),
(282, 1, '2021-07-01 05:12:23', '2021-07-01 05:12:23', '', 'Auto Draft', '', 'publish', 'closed', 'closed', '', 'auto-draft-19', '', '', '2021-07-01 05:12:23', '2021-07-01 05:12:23', '', 0, 'http://localhost/ibos/?post_type=our_technologies&#038;p=282', 0, 'our_technologies', '', 0),
(283, 1, '2021-07-01 05:12:21', '2021-07-01 05:12:21', '', 'react-seeklogo.com 2', '', 'inherit', 'open', 'closed', '', 'react-seeklogo-com-2', '', '', '2021-07-01 05:12:21', '2021-07-01 05:12:21', '', 282, 'http://localhost/ibos/wp-content/uploads/2021/07/react-seeklogo.com-2.svg', 0, 'attachment', 'image/svg+xml', 0),
(284, 1, '2021-07-01 05:37:43', '2021-07-01 05:37:43', 'Senior Business Analyst', 'ARS Nuray Alam Parash', '', 'publish', 'closed', 'closed', '', 'ars-nuray-alam-parash', '', '', '2021-07-01 05:37:43', '2021-07-01 05:37:43', '', 0, 'http://localhost/ibos/?post_type=our_team_member&#038;p=284', 0, 'our_team_member', '', 0),
(285, 1, '2021-07-01 05:37:28', '2021-07-01 05:37:28', '', 'ARS Nuray Alam Parash---Senior Business Analyst', '', 'inherit', 'open', 'closed', '', 'ars-nuray-alam-parash-senior-business-analyst', '', '', '2021-07-01 05:37:28', '2021-07-01 05:37:28', '', 284, 'http://localhost/ibos/wp-content/uploads/2021/07/ARS-Nuray-Alam-Parash-Senior-Business-Analyst.png', 0, 'attachment', 'image/png', 0),
(286, 1, '2021-07-01 05:38:14', '2021-07-01 05:38:14', 'Junior-Quality-Assurance', 'Forhad Hossain', '', 'publish', 'closed', 'closed', '', 'forhad-hossain', '', '', '2021-07-01 05:38:14', '2021-07-01 05:38:14', '', 0, 'http://localhost/ibos/?post_type=our_team_member&#038;p=286', 0, 'our_team_member', '', 0),
(287, 1, '2021-07-01 05:37:58', '2021-07-01 05:37:58', '', 'Forhad-Hossain----Junior-Quality-Assurance', '', 'inherit', 'open', 'closed', '', 'forhad-hossain-junior-quality-assurance', '', '', '2021-07-01 05:37:58', '2021-07-01 05:37:58', '', 286, 'http://localhost/ibos/wp-content/uploads/2021/07/Forhad-Hossain-Junior-Quality-Assurance.png', 0, 'attachment', 'image/png', 0),
(288, 1, '2021-07-01 05:38:44', '2021-07-01 05:38:44', 'Software Developer', 'Hussain Ahmed', '', 'publish', 'closed', 'closed', '', 'hussain-ahmed', '', '', '2021-07-01 05:38:47', '2021-07-01 05:38:47', '', 0, 'http://localhost/ibos/?post_type=our_team_member&#038;p=288', 0, 'our_team_member', '', 0),
(289, 1, '2021-07-01 05:38:28', '2021-07-01 05:38:28', '', 'Hussain Ahmed Software Developer', '', 'inherit', 'open', 'closed', '', 'hussain-ahmed-software-developer', '', '', '2021-07-01 05:38:28', '2021-07-01 05:38:28', '', 288, 'http://localhost/ibos/wp-content/uploads/2021/07/Hussain-Ahmed-Software-Developer.png', 0, 'attachment', 'image/png', 0),
(290, 1, '2021-07-01 05:39:13', '2021-07-01 05:39:13', 'Jr Backend Software Developer', 'Irfanul Hasan', '', 'publish', 'closed', 'closed', '', 'irfanul-hasan', '', '', '2021-07-01 05:39:13', '2021-07-01 05:39:13', '', 0, 'http://localhost/ibos/?post_type=our_team_member&#038;p=290', 0, 'our_team_member', '', 0),
(291, 1, '2021-07-01 05:39:00', '2021-07-01 05:39:00', '', 'Irfanul Hasan---Jr Backend Software Developer', '', 'inherit', 'open', 'closed', '', 'irfanul-hasan-jr-backend-software-developer', '', '', '2021-07-01 05:39:00', '2021-07-01 05:39:00', '', 290, 'http://localhost/ibos/wp-content/uploads/2021/07/Irfanul-Hasan-Jr-Backend-Software-Developer.png', 0, 'attachment', 'image/png', 0),
(292, 1, '2021-07-01 05:39:45', '2021-07-01 05:39:45', 'Junior UI-UX Designer', 'Ishrat Jahan', '', 'publish', 'closed', 'closed', '', 'ishrat-jahan', '', '', '2021-07-01 05:39:45', '2021-07-01 05:39:45', '', 0, 'http://localhost/ibos/?post_type=our_team_member&#038;p=292', 0, 'our_team_member', '', 0),
(293, 1, '2021-07-01 05:39:28', '2021-07-01 05:39:28', '', 'Ishrat Jahan Junior UIUX Designer', '', 'inherit', 'open', 'closed', '', 'ishrat-jahan-junior-uiux-designer', '', '', '2021-07-01 05:39:28', '2021-07-01 05:39:28', '', 292, 'http://localhost/ibos/wp-content/uploads/2021/07/Ishrat-Jahan-Junior-UIUX-Designer.png', 0, 'attachment', 'image/png', 0),
(294, 1, '2021-07-01 05:40:17', '2021-07-01 05:40:17', 'Jr. Frontend-Software-Developer', 'Jasmin Akter', '', 'publish', 'closed', 'closed', '', 'jasmin-akter', '', '', '2021-07-01 05:40:23', '2021-07-01 05:40:23', '', 0, 'http://localhost/ibos/?post_type=our_team_member&#038;p=294', 0, 'our_team_member', '', 0),
(295, 1, '2021-07-01 05:39:58', '2021-07-01 05:39:58', '', 'Jasmin-Akter-----Jr.-Frontend-Software-Developer', '', 'inherit', 'open', 'closed', '', 'jasmin-akter-jr-frontend-software-developer', '', '', '2021-07-01 05:39:58', '2021-07-01 05:39:58', '', 294, 'http://localhost/ibos/wp-content/uploads/2021/07/Jasmin-Akter-Jr.-Frontend-Software-Developer.png', 0, 'attachment', 'image/png', 0),
(296, 1, '2021-07-01 05:40:53', '2021-07-01 05:40:53', 'Intern Quality Assurance', 'Layla Anjuman', '', 'publish', 'closed', 'closed', '', 'layla-anjuman', '', '', '2021-07-01 05:40:53', '2021-07-01 05:40:53', '', 0, 'http://localhost/ibos/?post_type=our_team_member&#038;p=296', 0, 'our_team_member', '', 0),
(297, 1, '2021-07-01 05:40:37', '2021-07-01 05:40:37', '', 'Layla Anjuman---Intern Quality Assurance', '', 'inherit', 'open', 'closed', '', 'layla-anjuman-intern-quality-assurance', '', '', '2021-07-01 05:40:37', '2021-07-01 05:40:37', '', 296, 'http://localhost/ibos/wp-content/uploads/2021/07/Layla-Anjuman-Intern-Quality-Assurance.png', 0, 'attachment', 'image/png', 0),
(298, 1, '2021-07-01 05:41:37', '2021-07-01 05:41:37', 'Jr. Frontend Software Developer', 'Mahmudul Hasan Emon', '', 'publish', 'closed', 'closed', '', 'mahmudul-hasan-emon', '', '', '2021-07-01 05:41:37', '2021-07-01 05:41:37', '', 0, 'http://localhost/ibos/?post_type=our_team_member&#038;p=298', 0, 'our_team_member', '', 0),
(299, 1, '2021-07-01 05:41:06', '2021-07-01 05:41:06', '', 'Mahmudul-Hasan-Emon----Jr.-Frontend-Software-Developer', '', 'inherit', 'open', 'closed', '', 'mahmudul-hasan-emon-jr-frontend-software-developer', '', '', '2021-07-01 05:41:06', '2021-07-01 05:41:06', '', 298, 'http://localhost/ibos/wp-content/uploads/2021/07/Mahmudul-Hasan-Emon-Jr.-Frontend-Software-Developer.png', 0, 'attachment', 'image/png', 0),
(300, 1, '2021-07-01 05:42:04', '2021-07-01 05:42:04', 'Software Developer', 'Farhan Sakib Jesy', '', 'publish', 'closed', 'closed', '', 'farhan-sakib-jesy', '', '', '2021-07-01 05:42:04', '2021-07-01 05:42:04', '', 0, 'http://localhost/ibos/?post_type=our_team_member&#038;p=300', 0, 'our_team_member', '', 0),
(301, 1, '2021-07-01 05:41:51', '2021-07-01 05:41:51', '', 'Farhan Sakib Jesy Software Developer', '', 'inherit', 'open', 'closed', '', 'farhan-sakib-jesy-software-developer', '', '', '2021-07-01 05:41:51', '2021-07-01 05:41:51', '', 300, 'http://localhost/ibos/wp-content/uploads/2021/07/Farhan-Sakib-Jesy-Software-Developer.png', 0, 'attachment', 'image/png', 0),
(302, 1, '2021-07-01 05:42:39', '2021-07-01 05:42:39', 'Jr. Backend Software Developer', 'Md Al Mahmud', '', 'publish', 'closed', 'closed', '', 'md-al-mahmud', '', '', '2021-07-01 05:42:42', '2021-07-01 05:42:42', '', 0, 'http://localhost/ibos/?post_type=our_team_member&#038;p=302', 0, 'our_team_member', '', 0),
(303, 1, '2021-07-01 05:42:20', '2021-07-01 05:42:20', '', 'Md Al-Mahmud---Jr. Backend Software Developer', '', 'inherit', 'open', 'closed', '', 'md-al-mahmud-jr-backend-software-developer', '', '', '2021-07-01 05:42:20', '2021-07-01 05:42:20', '', 302, 'http://localhost/ibos/wp-content/uploads/2021/07/Md-Al-Mahmud-Jr.-Backend-Software-Developer.png', 0, 'attachment', 'image/png', 0),
(304, 1, '2021-07-01 05:43:09', '2021-07-01 05:43:09', 'Intern Frontend Software Developer', 'Md Azizul Haque', '', 'publish', 'closed', 'closed', '', 'md-azizul-haque', '', '', '2021-07-01 05:43:13', '2021-07-01 05:43:13', '', 0, 'http://localhost/ibos/?post_type=our_team_member&#038;p=304', 0, 'our_team_member', '', 0),
(305, 1, '2021-07-01 05:42:55', '2021-07-01 05:42:55', '', 'Md Azizul Haque---Intern Frontend Software Developer', '', 'inherit', 'open', 'closed', '', 'md-azizul-haque-intern-frontend-software-developer', '', '', '2021-07-01 05:42:55', '2021-07-01 05:42:55', '', 304, 'http://localhost/ibos/wp-content/uploads/2021/07/Md-Azizul-Haque-Intern-Frontend-Software-Developer.png', 0, 'attachment', 'image/png', 0),
(306, 1, '2021-07-01 05:43:38', '2021-07-01 05:43:38', 'Jr Backend Software Developer', 'Md Emam Uddin Shahed', '', 'publish', 'closed', 'closed', '', 'md-emam-uddin-shahed', '', '', '2021-07-01 05:43:40', '2021-07-01 05:43:40', '', 0, 'http://localhost/ibos/?post_type=our_team_member&#038;p=306', 0, 'our_team_member', '', 0),
(307, 1, '2021-07-01 05:43:25', '2021-07-01 05:43:25', '', 'Md Emam Uddin Shahed---Jr Backend Software Developer', '', 'inherit', 'open', 'closed', '', 'md-emam-uddin-shahed-jr-backend-software-developer', '', '', '2021-07-01 05:43:25', '2021-07-01 05:43:25', '', 306, 'http://localhost/ibos/wp-content/uploads/2021/07/Md-Emam-Uddin-Shahed-Jr-Backend-Software-Developer.png', 0, 'attachment', 'image/png', 0),
(308, 1, '2021-07-01 05:45:33', '2021-07-01 05:45:33', 'Jr. Frontend Software Developer', 'Md Jahed Hossain', '', 'publish', 'closed', 'closed', '', 'md-jahed-hossain', '', '', '2021-07-01 05:45:33', '2021-07-01 05:45:33', '', 0, 'http://localhost/ibos/?post_type=our_team_member&#038;p=308', 0, 'our_team_member', '', 0),
(309, 1, '2021-07-01 05:45:16', '2021-07-01 05:45:16', '', 'Md Jahed Hossain---Jr Frontend Software Developer', '', 'inherit', 'open', 'closed', '', 'md-jahed-hossain-jr-frontend-software-developer', '', '', '2021-07-01 05:45:16', '2021-07-01 05:45:16', '', 308, 'http://localhost/ibos/wp-content/uploads/2021/07/Md-Jahed-Hossain-Jr-Frontend-Software-Developer.png', 0, 'attachment', 'image/png', 0),
(310, 1, '2021-07-01 05:46:20', '2021-07-01 05:46:20', 'Jr Frontend Software Developer', 'Md Jubayer Alam Khan', '', 'publish', 'closed', 'closed', '', 'md-jubayer-alam-khan', '', '', '2021-07-01 05:46:20', '2021-07-01 05:46:20', '', 0, 'http://localhost/ibos/?post_type=our_team_member&#038;p=310', 0, 'our_team_member', '', 0),
(311, 1, '2021-07-01 05:46:03', '2021-07-01 05:46:03', '', 'Md Jubayer Alam Khan---Jr Frontend Software Developer', '', 'inherit', 'open', 'closed', '', 'md-jubayer-alam-khan-jr-frontend-software-developer', '', '', '2021-07-01 05:46:03', '2021-07-01 05:46:03', '', 310, 'http://localhost/ibos/wp-content/uploads/2021/07/Md-Jubayer-Alam-Khan-Jr-Frontend-Software-Developer.png', 0, 'attachment', 'image/png', 0),
(312, 1, '2021-07-01 05:47:00', '2021-07-01 05:47:00', 'Support Staff', 'Md Jobaidul Islam', '', 'publish', 'closed', 'closed', '', 'md-jobaidul-islam', '', '', '2021-07-01 05:47:00', '2021-07-01 05:47:00', '', 0, 'http://localhost/ibos/?post_type=our_team_member&#038;p=312', 0, 'our_team_member', '', 0),
(313, 1, '2021-07-01 05:46:49', '2021-07-01 05:46:49', '', 'Md Jobaidul Islam---Support Staff', '', 'inherit', 'open', 'closed', '', 'md-jobaidul-islam-support-staff', '', '', '2021-07-01 05:46:49', '2021-07-01 05:46:49', '', 312, 'http://localhost/ibos/wp-content/uploads/2021/07/Md-Jobaidul-Islam-Support-Staff.png', 0, 'attachment', 'image/png', 0),
(314, 1, '2021-07-01 05:47:39', '2021-07-01 05:47:39', 'Jr. Backend Software Developer', 'Md Naim Khan', '', 'publish', 'closed', 'closed', '', 'md-naim-khan', '', '', '2021-07-01 05:47:39', '2021-07-01 05:47:39', '', 0, 'http://localhost/ibos/?post_type=our_team_member&#038;p=314', 0, 'our_team_member', '', 0),
(315, 1, '2021-07-01 05:47:17', '2021-07-01 05:47:17', '', 'Md Naim Khan---Jr Backend Software Developer', '', 'inherit', 'open', 'closed', '', 'md-naim-khan-jr-backend-software-developer', '', '', '2021-07-01 05:47:17', '2021-07-01 05:47:17', '', 314, 'http://localhost/ibos/wp-content/uploads/2021/07/Md-Naim-Khan-Jr-Backend-Software-Developer.png', 0, 'attachment', 'image/png', 0),
(316, 1, '2021-07-01 05:48:13', '2021-07-01 05:48:13', 'Jr Backend Software Developer', 'Md Saidur Rahman Akash', '', 'publish', 'closed', 'closed', '', 'md-saidur-rahman-akash', '', '', '2021-07-01 05:48:13', '2021-07-01 05:48:13', '', 0, 'http://localhost/ibos/?post_type=our_team_member&#038;p=316', 0, 'our_team_member', '', 0),
(317, 1, '2021-07-01 05:47:57', '2021-07-01 05:47:57', '', 'Md Saidur Rahman Akash---Jr Backend Software Developer', '', 'inherit', 'open', 'closed', '', 'md-saidur-rahman-akash-jr-backend-software-developer', '', '', '2021-07-01 05:47:57', '2021-07-01 05:47:57', '', 316, 'http://localhost/ibos/wp-content/uploads/2021/07/Md-Saidur-Rahman-Akash-Jr-Backend-Software-Developer.png', 0, 'attachment', 'image/png', 0),
(318, 1, '2021-07-01 05:48:52', '2021-07-01 05:48:52', 'Intern Frontend Software Developer', 'Md Sakib Al Islam', '', 'publish', 'closed', 'closed', '', 'md-sakib-al-islam', '', '', '2021-07-01 05:48:52', '2021-07-01 05:48:52', '', 0, 'http://localhost/ibos/?post_type=our_team_member&#038;p=318', 0, 'our_team_member', '', 0),
(319, 1, '2021-07-01 05:48:38', '2021-07-01 05:48:38', '', 'Md Sakib Al Islam---Intern Frontend Software Developer', '', 'inherit', 'open', 'closed', '', 'md-sakib-al-islam-intern-frontend-software-developer', '', '', '2021-07-01 05:48:38', '2021-07-01 05:48:38', '', 318, 'http://localhost/ibos/wp-content/uploads/2021/07/Md-Sakib-Al-Islam-Intern-Frontend-Software-Developer.png', 0, 'attachment', 'image/png', 0),
(320, 1, '2021-07-01 05:49:16', '2021-07-01 05:49:16', 'Intern Quality Assurance', 'Md Shafiqul Islam Mridul', '', 'publish', 'closed', 'closed', '', 'md-shafiqul-islam-mridul', '', '', '2021-07-01 05:49:19', '2021-07-01 05:49:19', '', 0, 'http://localhost/ibos/?post_type=our_team_member&#038;p=320', 0, 'our_team_member', '', 0),
(321, 1, '2021-07-01 05:49:05', '2021-07-01 05:49:05', '', 'Md Shafiqul Islam Mridul---Intern Quality Assurance', '', 'inherit', 'open', 'closed', '', 'md-shafiqul-islam-mridul-intern-quality-assurance', '', '', '2021-07-01 05:49:05', '2021-07-01 05:49:05', '', 320, 'http://localhost/ibos/wp-content/uploads/2021/07/Md-Shafiqul-Islam-Mridul-Intern-Quality-Assurance.png', 0, 'attachment', 'image/png', 0),
(322, 1, '2021-07-01 05:49:44', '2021-07-01 05:49:44', 'Intern Backend Software Developer', 'Md Sohag', '', 'publish', 'closed', 'closed', '', 'md-sohag', '', '', '2021-07-01 05:49:44', '2021-07-01 05:49:44', '', 0, 'http://localhost/ibos/?post_type=our_team_member&#038;p=322', 0, 'our_team_member', '', 0),
(323, 1, '2021-07-01 05:49:30', '2021-07-01 05:49:30', '', 'Md Sohag---Intern Backend Software Developer', '', 'inherit', 'open', 'closed', '', 'md-sohag-intern-backend-software-developer', '', '', '2021-07-01 05:49:30', '2021-07-01 05:49:30', '', 322, 'http://localhost/ibos/wp-content/uploads/2021/07/Md-Sohag-Intern-Backend-Software-Developer.png', 0, 'attachment', 'image/png', 0),
(324, 1, '2021-07-01 05:50:18', '2021-07-01 05:50:18', 'Digital Marketing Executive', 'Md. Ebrahim Mia', '', 'publish', 'closed', 'closed', '', 'md-ebrahim-mia', '', '', '2021-07-01 08:21:48', '2021-07-01 08:21:48', '', 0, 'http://localhost/ibos/?post_type=our_team_member&#038;p=324', 0, 'our_team_member', '', 0),
(325, 1, '2021-07-01 05:50:04', '2021-07-01 05:50:04', '', 'Md. Ebrahim Mia---Jr Freelance Bidder', '', 'inherit', 'open', 'closed', '', 'md-ebrahim-mia-jr-freelance-bidder', '', '', '2021-07-01 05:50:04', '2021-07-01 05:50:04', '', 324, 'http://localhost/ibos/wp-content/uploads/2021/07/Md.-Ebrahim-Mia-Jr-Freelance-Bidder.png', 0, 'attachment', 'image/png', 0),
(326, 1, '2021-07-01 05:50:52', '2021-07-01 05:50:52', 'Jr. Backend Software Developer', 'Md. Emdadaul Haque', '', 'publish', 'closed', 'closed', '', 'md-emdadaul-haque', '', '', '2021-07-01 05:50:54', '2021-07-01 05:50:54', '', 0, 'http://localhost/ibos/?post_type=our_team_member&#038;p=326', 0, 'our_team_member', '', 0),
(327, 1, '2021-07-01 05:50:34', '2021-07-01 05:50:34', '', 'Md. Emdadaul Haque---Jr. Backend Software Developer', '', 'inherit', 'open', 'closed', '', 'md-emdadaul-haque-jr-backend-software-developer', '', '', '2021-07-01 05:50:34', '2021-07-01 05:50:34', '', 326, 'http://localhost/ibos/wp-content/uploads/2021/07/Md.-Emdadaul-Haque-Jr.-Backend-Software-Developer.png', 0, 'attachment', 'image/png', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(328, 1, '2021-07-01 05:51:19', '2021-07-01 05:51:19', 'Intern Business Analyst', 'Md. Kawsar Alam', '', 'publish', 'closed', 'closed', '', 'md-kawsar-alam', '', '', '2021-07-01 05:51:22', '2021-07-01 05:51:22', '', 0, 'http://localhost/ibos/?post_type=our_team_member&#038;p=328', 0, 'our_team_member', '', 0),
(329, 1, '2021-07-01 05:51:08', '2021-07-01 05:51:08', '', 'Md. Kawsar Alam---Intern Business Analyst', '', 'inherit', 'open', 'closed', '', 'md-kawsar-alam-intern-business-analyst', '', '', '2021-07-01 05:51:08', '2021-07-01 05:51:08', '', 328, 'http://localhost/ibos/wp-content/uploads/2021/07/Md.-Kawsar-Alam-Intern-Business-Analyst.png', 0, 'attachment', 'image/png', 0),
(330, 1, '2021-07-01 05:51:55', '2021-07-01 05:51:55', 'Jr. Backend Software Developer', 'Md. Mamun Or Rashid', '', 'publish', 'closed', 'closed', '', 'md-mamun-or-rashid', '', '', '2021-07-01 05:51:55', '2021-07-01 05:51:55', '', 0, 'http://localhost/ibos/?post_type=our_team_member&#038;p=330', 0, 'our_team_member', '', 0),
(331, 1, '2021-07-01 05:51:36', '2021-07-01 05:51:36', '', 'Md. Mamun Or Rashid Jr. Backend Software Developer', '', 'inherit', 'open', 'closed', '', 'md-mamun-or-rashid-jr-backend-software-developer', '', '', '2021-07-01 05:51:36', '2021-07-01 05:51:36', '', 330, 'http://localhost/ibos/wp-content/uploads/2021/07/Md.-Mamun-Or-Rashid-Jr.-Backend-Software-Developer.png', 0, 'attachment', 'image/png', 0),
(332, 1, '2021-07-01 05:52:21', '2021-07-01 05:52:21', 'Intern Digital Marketing', 'Md. Nahid Islam', '', 'publish', 'closed', 'closed', '', 'md-nahid-islam', '', '', '2021-07-01 05:52:24', '2021-07-01 05:52:24', '', 0, 'http://localhost/ibos/?post_type=our_team_member&#038;p=332', 0, 'our_team_member', '', 0),
(333, 1, '2021-07-01 05:52:09', '2021-07-01 05:52:09', '', 'Md. Nahid Islam---Intern Digital Marketing', '', 'inherit', 'open', 'closed', '', 'md-nahid-islam-intern-digital-marketing', '', '', '2021-07-01 05:52:09', '2021-07-01 05:52:09', '', 332, 'http://localhost/ibos/wp-content/uploads/2021/07/Md.-Nahid-Islam-Intern-Digital-Marketing.png', 0, 'attachment', 'image/png', 0),
(334, 1, '2021-07-01 05:52:51', '2021-07-01 05:52:51', 'Support Staff', 'Md. Saddam Hossain', '', 'publish', 'closed', 'closed', '', 'md-saddam-hossain', '', '', '2021-07-01 05:52:51', '2021-07-01 05:52:51', '', 0, 'http://localhost/ibos/?post_type=our_team_member&#038;p=334', 0, 'our_team_member', '', 0),
(335, 1, '2021-07-01 05:52:38', '2021-07-01 05:52:38', '', 'Md. Saddam Hossain---Support Staff', '', 'inherit', 'open', 'closed', '', 'md-saddam-hossain-support-staff', '', '', '2021-07-01 05:52:38', '2021-07-01 05:52:38', '', 334, 'http://localhost/ibos/wp-content/uploads/2021/07/Md.-Saddam-Hossain-Support-Staff.png', 0, 'attachment', 'image/png', 0),
(336, 1, '2021-07-01 05:53:43', '2021-07-01 05:53:43', 'Frontend Software Engineer', 'Mahmud Hasan', '', 'publish', 'closed', 'closed', '', 'mahmud-hasan', '', '', '2021-07-01 05:53:43', '2021-07-01 05:53:43', '', 0, 'http://localhost/ibos/?post_type=our_team_member&#038;p=336', 0, 'our_team_member', '', 0),
(337, 1, '2021-07-01 05:53:06', '2021-07-01 05:53:06', '', 'Md. Selim Reza---Frontend Software Engineer', '', 'inherit', 'open', 'closed', '', 'md-selim-reza-frontend-software-engineer', '', '', '2021-07-01 05:53:06', '2021-07-01 05:53:06', '', 336, 'http://localhost/ibos/wp-content/uploads/2021/07/Md.-Selim-Reza-Frontend-Software-Engineer.png', 0, 'attachment', 'image/png', 0),
(338, 1, '2021-07-01 05:54:16', '2021-07-01 05:54:16', 'Jr. Backend Software Developer', 'Md. Towhidur Rahman Samin', '', 'publish', 'closed', 'closed', '', 'md-towhidur-rahman-samin', '', '', '2021-07-01 05:54:19', '2021-07-01 05:54:19', '', 0, 'http://localhost/ibos/?post_type=our_team_member&#038;p=338', 0, 'our_team_member', '', 0),
(339, 1, '2021-07-01 05:54:00', '2021-07-01 05:54:00', '', 'Md. Towhidur Rahman Samin---Jr Backend Software Developer', '', 'inherit', 'open', 'closed', '', 'md-towhidur-rahman-samin-jr-backend-software-developer', '', '', '2021-07-01 05:54:00', '2021-07-01 05:54:00', '', 338, 'http://localhost/ibos/wp-content/uploads/2021/07/Md.-Towhidur-Rahman-Samin-Jr-Backend-Software-Developer.png', 0, 'attachment', 'image/png', 0),
(340, 1, '2021-07-01 05:55:05', '2021-07-01 05:55:05', 'Jr.-Backend Software Developer', 'Md. Saleh Bin Sayeem', '', 'publish', 'closed', 'closed', '', 'md-saleh-bin-sayeem', '', '', '2021-07-01 05:55:05', '2021-07-01 05:55:05', '', 0, 'http://localhost/ibos/?post_type=our_team_member&#038;p=340', 0, 'our_team_member', '', 0),
(341, 1, '2021-07-01 05:54:35', '2021-07-01 05:54:35', '', 'Md.-Saleh-Bin-Sayeem----Jr.-Backend-Software-Developer', '', 'inherit', 'open', 'closed', '', 'md-saleh-bin-sayeem-jr-backend-software-developer', '', '', '2021-07-01 05:54:35', '2021-07-01 05:54:35', '', 340, 'http://localhost/ibos/wp-content/uploads/2021/07/Md.-Saleh-Bin-Sayeem-Jr.-Backend-Software-Developer.png', 0, 'attachment', 'image/png', 0),
(342, 1, '2021-07-01 05:55:41', '2021-07-01 05:55:41', 'Frontend Software Engineer', 'Md.-Selim-Reza', '', 'publish', 'closed', 'closed', '', 'md-selim-reza', '', '', '2021-07-01 05:55:43', '2021-07-01 05:55:43', '', 0, 'http://localhost/ibos/?post_type=our_team_member&#038;p=342', 0, 'our_team_member', '', 0),
(343, 1, '2021-07-01 05:55:21', '2021-07-01 05:55:21', '', 'Md.-Selim-Reza----Frontend-Software-Engineer', '', 'inherit', 'open', 'closed', '', 'md-selim-reza-frontend-software-engineer-2', '', '', '2021-07-01 05:55:21', '2021-07-01 05:55:21', '', 342, 'http://localhost/ibos/wp-content/uploads/2021/07/Md.-Selim-Reza-Frontend-Software-Engineer-1.png', 0, 'attachment', 'image/png', 0),
(344, 1, '2021-07-01 05:56:33', '2021-07-01 05:56:33', 'Junior UI-UX Designer', 'MD. Anamul Arshad', '', 'publish', 'closed', 'closed', '', 'md-anamul-arshad', '', '', '2021-07-01 05:56:33', '2021-07-01 05:56:33', '', 0, 'http://localhost/ibos/?post_type=our_team_member&#038;p=344', 0, 'our_team_member', '', 0),
(345, 1, '2021-07-01 05:55:59', '2021-07-01 05:55:59', '', 'MD-Anamul-Arshad---Junior-UIUX-Designer', '', 'inherit', 'open', 'closed', '', 'md-anamul-arshad-junior-uiux-designer', '', '', '2021-07-01 05:55:59', '2021-07-01 05:55:59', '', 344, 'http://localhost/ibos/wp-content/uploads/2021/07/MD-Anamul-Arshad-Junior-UIUX-Designer.png', 0, 'attachment', 'image/png', 0),
(346, 1, '2021-07-01 05:57:10', '2021-07-01 05:57:10', 'Jr. Frontend Software Developer', 'Md. Bulbul Ahmed', '', 'publish', 'closed', 'closed', '', 'md-bulbul-ahmed', '', '', '2021-07-01 05:57:10', '2021-07-01 05:57:10', '', 0, 'http://localhost/ibos/?post_type=our_team_member&#038;p=346', 0, 'our_team_member', '', 0),
(347, 1, '2021-07-01 05:56:46', '2021-07-01 05:56:46', '', 'Md-Bulbul-Ahmed----Jr.-Frontend-Software-Developer', '', 'inherit', 'open', 'closed', '', 'md-bulbul-ahmed-jr-frontend-software-developer', '', '', '2021-07-01 05:56:46', '2021-07-01 05:56:46', '', 346, 'http://localhost/ibos/wp-content/uploads/2021/07/Md-Bulbul-Ahmed-Jr.-Frontend-Software-Developer.png', 0, 'attachment', 'image/png', 0),
(348, 1, '2021-07-01 05:57:38', '2021-07-01 05:57:38', 'Jr. Support Engineer', 'Naimul Islam', '', 'publish', 'closed', 'closed', '', 'naimul-islam', '', '', '2021-07-01 05:57:38', '2021-07-01 05:57:38', '', 0, 'http://localhost/ibos/?post_type=our_team_member&#038;p=348', 0, 'our_team_member', '', 0),
(349, 1, '2021-07-01 05:57:24', '2021-07-01 05:57:24', '', 'Naimul Islam---Jr. Support Engineer', '', 'inherit', 'open', 'closed', '', 'naimul-islam-jr-support-engineer', '', '', '2021-07-01 05:57:24', '2021-07-01 05:57:24', '', 348, 'http://localhost/ibos/wp-content/uploads/2021/07/Naimul-Islam-Jr.-Support-Engineer.png', 0, 'attachment', 'image/png', 0),
(350, 1, '2021-07-01 05:58:08', '2021-07-01 05:58:08', 'Junior UI-UX Designer', 'Pritom Tawsif Bhuiyan', '', 'publish', 'closed', 'closed', '', 'pritom-tawsif-bhuiyan', '', '', '2021-07-01 05:58:08', '2021-07-01 05:58:08', '', 0, 'http://localhost/ibos/?post_type=our_team_member&#038;p=350', 0, 'our_team_member', '', 0),
(351, 1, '2021-07-01 05:57:52', '2021-07-01 05:57:52', '', 'Pritom Tawsif Bhuiyan Junior UI UX Designer', '', 'inherit', 'open', 'closed', '', 'pritom-tawsif-bhuiyan-junior-ui-ux-designer', '', '', '2021-07-01 05:57:52', '2021-07-01 05:57:52', '', 350, 'http://localhost/ibos/wp-content/uploads/2021/07/Pritom-Tawsif-Bhuiyan-Junior-UI-UX-Designer.png', 0, 'attachment', 'image/png', 0),
(352, 1, '2021-07-01 05:58:31', '2021-07-01 05:58:31', 'Intern Quality Assurance', 'Sadia Afsana', '', 'publish', 'closed', 'closed', '', 'sadia-afsana', '', '', '2021-07-01 05:58:31', '2021-07-01 05:58:31', '', 0, 'http://localhost/ibos/?post_type=our_team_member&#038;p=352', 0, 'our_team_member', '', 0),
(353, 1, '2021-07-01 05:58:19', '2021-07-01 05:58:19', '', 'Sadia Afsana---Intern Quality Assurance', '', 'inherit', 'open', 'closed', '', 'sadia-afsana-intern-quality-assurance', '', '', '2021-07-01 05:58:19', '2021-07-01 05:58:19', '', 352, 'http://localhost/ibos/wp-content/uploads/2021/07/Sadia-Afsana-Intern-Quality-Assurance.png', 0, 'attachment', 'image/png', 0),
(354, 1, '2021-07-01 05:59:06', '2021-07-01 05:59:06', 'Executive', 'Shakil Al Kabir', '', 'publish', 'closed', 'closed', '', 'shakil-al-kabir', '', '', '2021-07-01 05:59:06', '2021-07-01 05:59:06', '', 0, 'http://localhost/ibos/?post_type=our_team_member&#038;p=354', 0, 'our_team_member', '', 0),
(355, 1, '2021-07-01 05:58:50', '2021-07-01 05:58:50', '', 'Shakil Al Kabir---Executive', '', 'inherit', 'open', 'closed', '', 'shakil-al-kabir-executive', '', '', '2021-07-01 05:58:50', '2021-07-01 05:58:50', '', 354, 'http://localhost/ibos/wp-content/uploads/2021/07/Shakil-Al-Kabir-Executive.png', 0, 'attachment', 'image/png', 0),
(356, 1, '2021-07-01 05:59:41', '2021-07-01 05:59:41', 'Associate Business Analyst', 'Shamme Akter Mim', '', 'publish', 'closed', 'closed', '', 'shamme-akter-mim', '', '', '2021-07-01 05:59:41', '2021-07-01 05:59:41', '', 0, 'http://localhost/ibos/?post_type=our_team_member&#038;p=356', 0, 'our_team_member', '', 0),
(357, 1, '2021-07-01 05:59:20', '2021-07-01 05:59:20', '', 'Shamme-Akter-Mim----Associate-Business-Analyst', '', 'inherit', 'open', 'closed', '', 'shamme-akter-mim-associate-business-analyst', '', '', '2021-07-01 05:59:20', '2021-07-01 05:59:20', '', 356, 'http://localhost/ibos/wp-content/uploads/2021/07/Shamme-Akter-Mim-Associate-Business-Analyst.png', 0, 'attachment', 'image/png', 0),
(358, 1, '2021-07-01 06:00:13', '2021-07-01 06:00:13', 'Jr. Backend Software Developer', 'Tahsin Mahfuz', '', 'publish', 'closed', 'closed', '', 'tahsin-mahfuz', '', '', '2021-07-01 06:00:13', '2021-07-01 06:00:13', '', 0, 'http://localhost/ibos/?post_type=our_team_member&#038;p=358', 0, 'our_team_member', '', 0),
(359, 1, '2021-07-01 05:59:58', '2021-07-01 05:59:58', '', 'Tahsin Mahfuz---Jr Backend Software Developer', '', 'inherit', 'open', 'closed', '', 'tahsin-mahfuz-jr-backend-software-developer', '', '', '2021-07-01 05:59:58', '2021-07-01 05:59:58', '', 358, 'http://localhost/ibos/wp-content/uploads/2021/07/Tahsin-Mahfuz-Jr-Backend-Software-Developer.png', 0, 'attachment', 'image/png', 0),
(360, 1, '2021-07-01 06:00:45', '2021-07-01 06:00:45', 'Associate Business Analyst', 'Taposhi Rabeya', '', 'publish', 'closed', 'closed', '', 'taposhi-rabeya', '', '', '2021-07-01 06:00:47', '2021-07-01 06:00:47', '', 0, 'http://localhost/ibos/?post_type=our_team_member&#038;p=360', 0, 'our_team_member', '', 0),
(361, 1, '2021-07-01 06:00:25', '2021-07-01 06:00:25', '', 'Taposhi-Rabeya----Associate-Business-Analyst', '', 'inherit', 'open', 'closed', '', 'taposhi-rabeya-associate-business-analyst', '', '', '2021-07-01 06:00:25', '2021-07-01 06:00:25', '', 360, 'http://localhost/ibos/wp-content/uploads/2021/07/Taposhi-Rabeya-Associate-Business-Analyst.png', 0, 'attachment', 'image/png', 0),
(362, 1, '2021-07-01 06:01:18', '2021-07-01 06:01:18', 'Associate Business Analyst', 'Umme Tasnim Ummy', '', 'publish', 'closed', 'closed', '', 'umme-tasnim-ummy', '', '', '2021-07-01 06:01:21', '2021-07-01 06:01:21', '', 0, 'http://localhost/ibos/?post_type=our_team_member&#038;p=362', 0, 'our_team_member', '', 0),
(363, 1, '2021-07-01 06:01:00', '2021-07-01 06:01:00', '', 'Umme Tasnim Ummy---Associate Business Analyst', '', 'inherit', 'open', 'closed', '', 'umme-tasnim-ummy-associate-business-analyst', '', '', '2021-07-01 06:01:00', '2021-07-01 06:01:00', '', 362, 'http://localhost/ibos/wp-content/uploads/2021/07/Umme-Tasnim-Ummy-Associate-Business-Analyst.png', 0, 'attachment', 'image/png', 0),
(365, 1, '2021-07-01 09:52:43', '2021-07-01 09:52:43', '', 'Custom Software Development', '', 'publish', 'closed', 'closed', '', 'custom-software-development', '', '', '2021-07-01 09:52:43', '2021-07-01 09:52:43', '', 0, 'http://localhost/ibos/?page_id=365', 0, 'page', '', 0),
(366, 1, '2021-07-03 06:12:58', '2021-07-01 09:52:43', ' ', '', '', 'publish', 'closed', 'closed', '', '366', '', '', '2021-07-03 06:12:58', '2021-07-03 06:12:58', '', 0, 'http://localhost/ibos/366/', 7, 'nav_menu_item', '', 0),
(367, 1, '2021-07-01 09:52:43', '2021-07-01 09:52:43', ' ', '', '', 'publish', 'closed', 'closed', '', '367', '', '', '2021-07-01 09:52:43', '2021-07-01 09:52:43', '', 0, 'http://localhost/ibos/367/', 12, 'nav_menu_item', '', 0),
(368, 1, '2021-07-01 09:52:43', '2021-07-01 09:52:43', '', 'Custom Software Development', '', 'inherit', 'closed', 'closed', '', '365-revision-v1', '', '', '2021-07-01 09:52:43', '2021-07-01 09:52:43', '', 365, 'http://localhost/ibos/?p=368', 0, 'revision', '', 0),
(369, 1, '2021-07-03 04:19:41', '2021-07-03 04:19:41', '', 'Enterprise ERP', '', 'publish', 'closed', 'closed', '', 'enterprise-erp', '', '', '2021-07-03 04:19:41', '2021-07-03 04:19:41', '', 0, 'http://localhost/ibos/?page_id=369', 0, 'page', '', 0),
(370, 1, '2021-07-03 06:12:58', '2021-07-03 04:19:41', ' ', '', '', 'publish', 'closed', 'closed', '', '370', '', '', '2021-07-03 06:12:58', '2021-07-03 06:12:58', '', 0, 'http://localhost/ibos/370/', 2, 'nav_menu_item', '', 0),
(371, 1, '2021-07-03 04:19:41', '2021-07-03 04:19:41', ' ', '', '', 'publish', 'closed', 'closed', '', '371', '', '', '2021-07-03 04:19:41', '2021-07-03 04:19:41', '', 0, 'http://localhost/ibos/371/', 13, 'nav_menu_item', '', 0),
(372, 1, '2021-07-03 04:19:41', '2021-07-03 04:19:41', '', 'Enterprise ERP', '', 'inherit', 'closed', 'closed', '', '369-revision-v1', '', '', '2021-07-03 04:19:41', '2021-07-03 04:19:41', '', 369, 'http://localhost/ibos/?p=372', 0, 'revision', '', 0),
(373, 1, '2021-07-03 06:12:41', '2021-07-03 06:12:41', '', 'Website Development', '', 'publish', 'closed', 'closed', '', 'website-development', '', '', '2021-07-03 06:12:41', '2021-07-03 06:12:41', '', 0, 'http://localhost/ibos/?page_id=373', 0, 'page', '', 0),
(374, 1, '2021-07-03 06:12:58', '2021-07-03 06:12:41', ' ', '', '', 'publish', 'closed', 'closed', '', '374', '', '', '2021-07-03 06:12:58', '2021-07-03 06:12:58', '', 0, 'http://localhost/ibos/374/', 4, 'nav_menu_item', '', 0),
(375, 1, '2021-07-03 06:12:41', '2021-07-03 06:12:41', ' ', '', '', 'publish', 'closed', 'closed', '', '375', '', '', '2021-07-03 06:12:41', '2021-07-03 06:12:41', '', 0, 'http://localhost/ibos/375/', 14, 'nav_menu_item', '', 0),
(376, 1, '2021-07-03 06:12:41', '2021-07-03 06:12:41', '', 'Website Development', '', 'inherit', 'closed', 'closed', '', '373-revision-v1', '', '', '2021-07-03 06:12:41', '2021-07-03 06:12:41', '', 373, 'http://localhost/ibos/?p=376', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Software', 'software', 0),
(2, 'top-bar', 'top-bar', 0),
(4, 'footer-company', 'footer-company', 0),
(5, 'footer-Products', 'footer-products', 0),
(6, 'footer-SME', 'footer-sme', 0),
(7, 'footer-Services', 'footer-services', 0),
(8, 'Software', 'software', 0),
(9, 'Software', 'software', 0),
(10, 'Software', 'software', 0),
(11, 'Enterprise ERP', 'enterprise-erp', 0),
(12, 'All', 'all', 0),
(14, 'Enterprise ERP', 'enterprise-erp', 0),
(15, 'HR Software', 'hr-software', 0),
(16, 'Retail ERP', 'retail-erp', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(7, 2, 0),
(10, 2, 0),
(87, 5, 0),
(89, 5, 0),
(90, 5, 0),
(91, 5, 0),
(92, 5, 0),
(93, 5, 0),
(94, 4, 0),
(95, 4, 0),
(96, 4, 0),
(97, 4, 0),
(98, 4, 0),
(99, 4, 0),
(100, 5, 0),
(101, 5, 0),
(102, 5, 0),
(103, 5, 0),
(104, 6, 0),
(105, 6, 0),
(106, 6, 0),
(107, 6, 0),
(108, 6, 0),
(109, 7, 0),
(110, 7, 0),
(112, 7, 0),
(113, 7, 0),
(137, 2, 0),
(140, 2, 0),
(143, 2, 0),
(144, 4, 0),
(149, 4, 0),
(165, 2, 0),
(166, 4, 0),
(204, 4, 0),
(209, 8, 0),
(213, 9, 0),
(213, 11, 0),
(225, 8, 0),
(228, 11, 0),
(230, 10, 0),
(232, 10, 0),
(237, 1, 0),
(237, 12, 0),
(237, 14, 0),
(237, 15, 0),
(237, 16, 0),
(242, 1, 0),
(242, 15, 0),
(242, 16, 0),
(245, 12, 0),
(245, 15, 0),
(258, 2, 0),
(259, 4, 0),
(261, 7, 0),
(366, 2, 0),
(367, 4, 0),
(370, 2, 0),
(371, 4, 0),
(374, 2, 0),
(375, 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2),
(2, 2, 'nav_menu', '', 0, 10),
(4, 4, 'nav_menu', '', 0, 14),
(5, 5, 'nav_menu', '', 0, 10),
(6, 6, 'nav_menu', '', 0, 5),
(7, 7, 'nav_menu', '', 0, 5),
(8, 8, 'blog_category', '', 0, 2),
(9, 9, 'portfolio_category', '', 0, 1),
(10, 10, 'filters', '', 0, 2),
(11, 11, 'filters', '', 0, 2),
(12, 12, 'category', '', 0, 2),
(14, 14, 'category', '', 0, 1),
(15, 15, 'category', '', 0, 3),
(16, 16, 'category', '', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'ibos'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '254'),
(18, 1, 'wp_user-settings', 'libraryContent=upload&editor=html&post_dfw=off'),
(19, 1, 'wp_user-settings-time', '1625127687'),
(20, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:25:\"add-post-type-main_slider\";i:1;s:26:\"add-post-type-best_service\";i:2;s:12:\"add-post_tag\";}'),
(22, 1, 'nav_menu_recently_edited', '2'),
(23, 1, 'closedpostboxes_our_technologies', 'a:0:{}'),
(24, 1, 'metaboxhidden_our_technologies', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(26, 1, 'closedpostboxes_portfolio', 'a:0:{}'),
(27, 1, 'metaboxhidden_portfolio', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(28, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(30, 1, 'session_tokens', 'a:1:{s:64:\"29f098e7d2c09d7e66232fb03f07f204ec224d2b80f07689c9aca90a1d87b3c8\";a:4:{s:10:\"expiration\";i:1626241056;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36\";s:5:\"login\";i:1625031456;}}'),
(33, 1, 'leadin_email', 'farhansakibjesy@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'ibos', '$P$BO444OfZLjQLyWJIm9U0cCDTjh//Qj/', 'ibos', 'farhansakibjesy@gmail.com', 'http://localhost/ibos', '2021-06-14 10:12:09', '', 0, 'ibos');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpmailsmtp_tasks_meta`
--

CREATE TABLE `wp_wpmailsmtp_tasks_meta` (
  `id` bigint(20) NOT NULL,
  `action` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_wpmailsmtp_tasks_meta`
--

INSERT INTO `wp_wpmailsmtp_tasks_meta` (`id`, `action`, `data`, `date`) VALUES
(1, 'wp_mail_smtp_admin_notifications_update', 'W10=', '2021-06-20 09:38:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `hook` (`hook`),
  ADD KEY `status` (`status`),
  ADD KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  ADD KEY `args` (`args`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `last_attempt_gmt` (`last_attempt_gmt`),
  ADD KEY `claim_id` (`claim_id`);

--
-- Indexes for table `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  ADD PRIMARY KEY (`claim_id`),
  ADD KEY `date_created_gmt` (`date_created_gmt`);

--
-- Indexes for table `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `slug` (`slug`(191));

--
-- Indexes for table `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `action_id` (`action_id`),
  ADD KEY `log_date_gmt` (`log_date_gmt`);

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `wp_wpmailsmtp_tasks_meta`
--
ALTER TABLE `wp_wpmailsmtp_tasks_meta`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  MODIFY `claim_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3672;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  MODIFY `group_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4376;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1403;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=378;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_wpmailsmtp_tasks_meta`
--
ALTER TABLE `wp_wpmailsmtp_tasks_meta`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
