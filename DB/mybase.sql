-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 09, 2023 at 10:34 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mybase`
--

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
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2023-02-06 10:08:29', '2023-02-06 10:08:29', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', 'comment', 0, 0);

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
(1, 'siteurl', 'http://localhost/Interview', 'yes'),
(2, 'home', 'http://localhost/Interview', 'yes'),
(3, 'blogname', 'Allure Aesthetic &amp; Plastic Surgery', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'mohdmonis772@gmail.com', 'yes'),
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
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:98:{s:19:\"sitemap_index\\.xml$\";s:19:\"index.php?sitemap=1\";s:31:\"([^/]+?)-sitemap([0-9]+)?\\.xml$\";s:51:\"index.php?sitemap=$matches[1]&sitemap_n=$matches[2]\";s:24:\"([a-z]+)?-?sitemap\\.xsl$\";s:39:\"index.php?yoast-sitemap-xsl=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=11&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:33:\"classic-editor/classic-editor.php\";i:2;s:20:\"yoast-seo/wp-seo.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'medical42works', 'yes'),
(41, 'stylesheet', 'medical42works', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '51917', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
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
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:1:{s:20:\"yoast-seo/wp-seo.php\";s:14:\"__return_false\";}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '11', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1691230103', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '51917', 'yes'),
(100, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:20:\"wpseo_manage_options\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:36:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:13:\"wpseo_manager\";a:2:{s:4:\"name\";s:11:\"SEO Manager\";s:12:\"capabilities\";a:38:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;s:20:\"wpseo_manage_options\";b:1;s:23:\"view_site_health_checks\";b:1;}}s:12:\"wpseo_editor\";a:2:{s:4:\"name\";s:10:\"SEO Editor\";s:12:\"capabilities\";a:36:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'widget_block', 'a:8:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:178:\"<!-- wp:group -->\n<div class=\"wp-block-group\"><!-- wp:heading -->\n<h2 id=\"recent-posts\">Recent Posts</h2>\n<!-- /wp:heading -->\n\n<!-- wp:latest-posts /--></div>\n<!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:254:\"<!-- wp:group -->\n<div class=\"wp-block-group\"><!-- wp:heading -->\n<h2 id=\"recent-comments\">Recent Comments</h2>\n<!-- /wp:heading -->\n\n<!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div>\n<!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:166:\"<!-- wp:group -->\n<div class=\"wp-block-group\"><!-- wp:heading -->\n<h2 id=\"archives\">Archives</h2>\n<!-- /wp:heading -->\n\n<!-- wp:archives /--></div>\n<!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:172:\"<!-- wp:group -->\n<div class=\"wp-block-group\"><!-- wp:heading -->\n<h2 id=\"categories\">Categories</h2>\n<!-- /wp:heading -->\n\n<!-- wp:categories /--></div>\n<!-- /wp:group -->\";}i:7;a:1:{s:7:\"content\";s:241:\"<!-- wp:image {\"id\":93,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/Interview/wp-content/uploads/2023/02/2-1.png\" alt=\"\" class=\"wp-image-93\"/></figure>\n<!-- /wp:image -->\";}i:8;a:1:{s:7:\"content\";s:259:\"<div class=\"phone_icon\">\n							<img src=\"<?php bloginfo(\'template_url\') ?>/images/phone.svg\" alt=\"\">\n						</div>\n						<div class=\"phone_info\">\n							<div class=\"phone_name\">Appointments:</div>\n							<div class=\"phone_no\">(123) 123-4567</div>\n						</div>\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:4:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";i:5;s:7:\"block-8\";}s:11:\"header_logo\";a:1:{i:0;s:7:\"block-7\";}s:12:\"phone_detail\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:8:{i:1675937311;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1675937312;a:5:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1675937367;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1675937368;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1676021460;a:1:{s:13:\"wpseo-reindex\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1676021462;a:1:{s:31:\"wpseo_permalink_structure_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1676369311;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'recovery_keys', 'a:0:{}', 'yes'),
(119, 'theme_mods_twentytwentytwo', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1675680283;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(122, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}}', 'yes'),
(123, '_site_transient_update_core', 'O:8:\"stdClass\":3:{s:7:\"updates\";a:0:{}s:15:\"version_checked\";s:3:\"5.9\";s:12:\"last_checked\";i:1675934185;}', 'no'),
(124, '_site_transient_update_plugins', 'O:8:\"stdClass\":2:{s:12:\"last_checked\";i:1675934186;s:8:\"response\";N;}', 'no'),
(127, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1675934186;s:7:\"checked\";a:5:{s:6:\"allure\";s:5:\"1.0.0\";s:14:\"medical42works\";s:5:\"1.0.0\";s:12:\"twentytwenty\";s:3:\"1.9\";s:15:\"twentytwentyone\";s:3:\"1.5\";s:15:\"twentytwentytwo\";s:3:\"1.0\";}s:8:\"response\";a:3:{s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"2.1\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.2.1.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.7.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.3.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(131, 'can_compress_scripts', '1', 'no'),
(136, 'finished_updating_comment_type', '1', 'yes'),
(137, 'current_theme', 'Medicals 42Works', 'yes'),
(138, 'theme_mods_allure', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:12:\"primary-menu\";i:3;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1675710588;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}}', 'yes'),
(139, 'theme_switched', '', 'yes'),
(143, 'recently_activated', 'a:0:{}', 'yes'),
(144, 'acf_version', '5.12.3', 'yes'),
(168, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(170, '_site_transient_timeout_browser_b9cbd8dc13f19f9e7eb854f472bfa274', '1676315367', 'no'),
(171, '_site_transient_browser_b9cbd8dc13f19f9e7eb854f472bfa274', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"109.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(172, '_site_transient_timeout_php_check_653b16e6c5979ac325fae9f9db6a18fe', '1676315369', 'no'),
(173, '_site_transient_php_check_653b16e6c5979ac325fae9f9db6a18fe', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(179, 'theme_mods_medical42works', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:12:\"primary_menu\";i:3;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(193, 'yoast_migrations_free', 'a:1:{s:7:\"version\";s:5:\"19.10\";}', 'yes'),
(194, 'wpseo', 'a:97:{s:8:\"tracking\";b:0;s:22:\"license_server_version\";b:0;s:15:\"ms_defaults_set\";b:0;s:40:\"ignore_search_engines_discouraged_notice\";b:0;s:19:\"indexing_first_time\";b:1;s:16:\"indexing_started\";b:0;s:15:\"indexing_reason\";s:26:\"permalink_settings_changed\";s:29:\"indexables_indexing_completed\";b:1;s:13:\"index_now_key\";s:0:\"\";s:7:\"version\";s:5:\"19.10\";s:16:\"previous_version\";s:0:\"\";s:20:\"disableadvanced_meta\";b:1;s:30:\"enable_headless_rest_endpoints\";b:1;s:17:\"ryte_indexability\";b:0;s:11:\"baiduverify\";s:0:\"\";s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:0:\"\";s:20:\"has_multiple_authors\";s:0:\"\";s:16:\"environment_type\";s:0:\"\";s:23:\"content_analysis_active\";b:1;s:23:\"keyword_analysis_active\";b:1;s:34:\"inclusive_language_analysis_active\";b:0;s:21:\"enable_admin_bar_menu\";b:1;s:26:\"enable_cornerstone_content\";b:1;s:18:\"enable_xml_sitemap\";b:1;s:24:\"enable_text_link_counter\";b:1;s:16:\"enable_index_now\";b:1;s:22:\"show_onboarding_notice\";b:1;s:18:\"first_activated_on\";i:1675762263;s:13:\"myyoast-oauth\";b:0;s:26:\"semrush_integration_active\";b:1;s:14:\"semrush_tokens\";a:0:{}s:20:\"semrush_country_code\";s:2:\"us\";s:19:\"permalink_structure\";s:36:\"/%year%/%monthnum%/%day%/%postname%/\";s:8:\"home_url\";s:26:\"http://localhost/Interview\";s:18:\"dynamic_permalinks\";b:0;s:17:\"category_base_url\";s:0:\"\";s:12:\"tag_base_url\";s:0:\"\";s:21:\"custom_taxonomy_slugs\";a:0:{}s:29:\"enable_enhanced_slack_sharing\";b:1;s:25:\"zapier_integration_active\";b:0;s:19:\"zapier_subscription\";a:0:{}s:14:\"zapier_api_key\";s:0:\"\";s:23:\"enable_metabox_insights\";b:1;s:23:\"enable_link_suggestions\";b:1;s:26:\"algolia_integration_active\";b:0;s:14:\"import_cursors\";a:0:{}s:13:\"workouts_data\";a:1:{s:13:\"configuration\";a:1:{s:13:\"finishedSteps\";a:0:{}}}s:28:\"configuration_finished_steps\";a:0:{}s:36:\"dismiss_configuration_workout_notice\";b:0;s:34:\"dismiss_premium_deactivated_notice\";b:0;s:19:\"importing_completed\";a:0:{}s:26:\"wincher_integration_active\";b:1;s:14:\"wincher_tokens\";a:0:{}s:36:\"wincher_automatically_add_keyphrases\";b:0;s:18:\"wincher_website_id\";s:0:\"\";s:28:\"wordproof_integration_active\";b:0;s:29:\"wordproof_integration_changed\";b:0;s:18:\"first_time_install\";b:1;s:34:\"should_redirect_after_install_free\";b:0;s:34:\"activation_redirect_timestamp_free\";i:1675762268;s:18:\"remove_feed_global\";b:0;s:27:\"remove_feed_global_comments\";b:0;s:25:\"remove_feed_post_comments\";b:0;s:19:\"remove_feed_authors\";b:0;s:22:\"remove_feed_categories\";b:0;s:16:\"remove_feed_tags\";b:0;s:29:\"remove_feed_custom_taxonomies\";b:0;s:22:\"remove_feed_post_types\";b:0;s:18:\"remove_feed_search\";b:0;s:21:\"remove_atom_rdf_feeds\";b:0;s:17:\"remove_shortlinks\";b:0;s:21:\"remove_rest_api_links\";b:0;s:20:\"remove_rsd_wlw_links\";b:0;s:19:\"remove_oembed_links\";b:0;s:16:\"remove_generator\";b:0;s:20:\"remove_emoji_scripts\";b:0;s:24:\"remove_powered_by_header\";b:0;s:22:\"remove_pingback_header\";b:0;s:28:\"clean_campaign_tracking_urls\";b:0;s:16:\"clean_permalinks\";b:0;s:32:\"clean_permalinks_extra_variables\";s:0:\"\";s:14:\"search_cleanup\";b:0;s:20:\"search_cleanup_emoji\";b:0;s:23:\"search_cleanup_patterns\";b:0;s:22:\"search_character_limit\";i:50;s:20:\"deny_search_crawling\";b:0;s:21:\"deny_wp_json_crawling\";b:0;s:27:\"redirect_search_pretty_urls\";b:0;s:29:\"least_readability_ignore_list\";a:0:{}s:27:\"least_seo_score_ignore_list\";a:0:{}s:23:\"most_linked_ignore_list\";a:0:{}s:24:\"least_linked_ignore_list\";a:0:{}s:28:\"indexables_page_reading_list\";a:5:{i:0;b:0;i:1;b:0;i:2;b:0;i:3;b:0;i:4;b:0;}s:25:\"indexables_overview_state\";s:21:\"dashboard-not-visited\";}', 'yes'),
(195, 'wpseo_titles', 'a:107:{s:17:\"forcerewritetitle\";b:0;s:9:\"separator\";s:7:\"sc-dash\";s:16:\"title-home-wpseo\";s:42:\"%%sitename%% %%page%% %%sep%% %%sitedesc%%\";s:18:\"title-author-wpseo\";s:41:\"%%name%%, Author at %%sitename%% %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:63:\"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:35:\"Page not found %%sep%% %%sitename%%\";s:25:\"social-title-author-wpseo\";s:8:\"%%name%%\";s:26:\"social-title-archive-wpseo\";s:8:\"%%date%%\";s:31:\"social-description-author-wpseo\";s:0:\"\";s:32:\"social-description-archive-wpseo\";s:0:\"\";s:29:\"social-image-url-author-wpseo\";s:0:\"\";s:30:\"social-image-url-archive-wpseo\";s:0:\"\";s:28:\"social-image-id-author-wpseo\";i:0;s:29:\"social-image-id-archive-wpseo\";i:0;s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:53:\"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.\";s:20:\"noindex-author-wpseo\";b:0;s:28:\"noindex-author-noposts-wpseo\";b:1;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:0;s:12:\"disable-date\";b:0;s:19:\"disable-post_format\";b:0;s:18:\"disable-attachment\";b:1;s:20:\"breadcrumbs-404crumb\";s:25:\"Error 404: Page not found\";s:29:\"breadcrumbs-display-blog-page\";b:1;s:20:\"breadcrumbs-boldlast\";b:0;s:25:\"breadcrumbs-archiveprefix\";s:12:\"Archives for\";s:18:\"breadcrumbs-enable\";b:1;s:16:\"breadcrumbs-home\";s:4:\"Home\";s:18:\"breadcrumbs-prefix\";s:0:\"\";s:24:\"breadcrumbs-searchprefix\";s:16:\"You searched for\";s:15:\"breadcrumbs-sep\";s:2:\"»\";s:12:\"website_name\";s:0:\"\";s:11:\"person_name\";s:0:\"\";s:11:\"person_logo\";s:0:\"\";s:22:\"alternate_website_name\";s:0:\"\";s:12:\"company_logo\";s:0:\"\";s:12:\"company_name\";s:0:\"\";s:22:\"company_alternate_name\";s:0:\"\";s:17:\"company_or_person\";s:7:\"company\";s:25:\"company_or_person_user_id\";b:0;s:17:\"stripcategorybase\";b:0;s:26:\"open_graph_frontpage_title\";s:12:\"%%sitename%%\";s:25:\"open_graph_frontpage_desc\";s:0:\"\";s:26:\"open_graph_frontpage_image\";s:0:\"\";s:10:\"title-post\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-post\";s:0:\"\";s:12:\"noindex-post\";b:0;s:23:\"display-metabox-pt-post\";b:1;s:23:\"post_types-post-maintax\";i:0;s:21:\"schema-page-type-post\";s:7:\"WebPage\";s:24:\"schema-article-type-post\";s:7:\"Article\";s:17:\"social-title-post\";s:9:\"%%title%%\";s:23:\"social-description-post\";s:0:\"\";s:21:\"social-image-url-post\";s:0:\"\";s:20:\"social-image-id-post\";i:0;s:10:\"title-page\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-page\";s:0:\"\";s:12:\"noindex-page\";b:0;s:23:\"display-metabox-pt-page\";b:1;s:23:\"post_types-page-maintax\";i:0;s:21:\"schema-page-type-page\";s:7:\"WebPage\";s:24:\"schema-article-type-page\";s:4:\"None\";s:17:\"social-title-page\";s:9:\"%%title%%\";s:23:\"social-description-page\";s:0:\"\";s:21:\"social-image-url-page\";s:0:\"\";s:20:\"social-image-id-page\";i:0;s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:29:\"display-metabox-pt-attachment\";b:1;s:29:\"post_types-attachment-maintax\";i:0;s:27:\"schema-page-type-attachment\";s:7:\"WebPage\";s:30:\"schema-article-type-attachment\";s:4:\"None\";s:18:\"title-tax-category\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:28:\"display-metabox-tax-category\";b:1;s:20:\"noindex-tax-category\";b:0;s:25:\"social-title-tax-category\";s:23:\"%%term_title%% Archives\";s:31:\"social-description-tax-category\";s:0:\"\";s:29:\"social-image-url-tax-category\";s:0:\"\";s:28:\"social-image-id-tax-category\";i:0;s:18:\"title-tax-post_tag\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:28:\"display-metabox-tax-post_tag\";b:1;s:20:\"noindex-tax-post_tag\";b:0;s:25:\"social-title-tax-post_tag\";s:23:\"%%term_title%% Archives\";s:31:\"social-description-tax-post_tag\";s:0:\"\";s:29:\"social-image-url-tax-post_tag\";s:0:\"\";s:28:\"social-image-id-tax-post_tag\";i:0;s:21:\"title-tax-post_format\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:31:\"display-metabox-tax-post_format\";b:1;s:23:\"noindex-tax-post_format\";b:1;s:28:\"social-title-tax-post_format\";s:23:\"%%term_title%% Archives\";s:34:\"social-description-tax-post_format\";s:0:\"\";s:32:\"social-image-url-tax-post_format\";s:0:\"\";s:31:\"social-image-id-tax-post_format\";i:0;s:14:\"person_logo_id\";i:0;s:15:\"company_logo_id\";i:0;s:17:\"company_logo_meta\";b:0;s:16:\"person_logo_meta\";b:0;s:29:\"open_graph_frontpage_image_id\";i:0;}', 'yes'),
(196, 'wpseo_social', 'a:19:{s:13:\"facebook_site\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:11:\"myspace_url\";s:0:\"\";s:16:\"og_default_image\";s:0:\"\";s:19:\"og_default_image_id\";s:0:\"\";s:18:\"og_frontpage_title\";s:0:\"\";s:17:\"og_frontpage_desc\";s:0:\"\";s:18:\"og_frontpage_image\";s:0:\"\";s:21:\"og_frontpage_image_id\";s:0:\"\";s:9:\"opengraph\";b:1;s:13:\"pinterest_url\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:7:\"twitter\";b:1;s:12:\"twitter_site\";s:0:\"\";s:17:\"twitter_card_type\";s:19:\"summary_large_image\";s:11:\"youtube_url\";s:0:\"\";s:13:\"wikipedia_url\";s:0:\"\";s:17:\"other_social_urls\";a:0:{}}', 'yes'),
(227, 'widget_recent-comments', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(228, 'widget_recent-posts', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(246, '_transient_health-check-site-status-result', '{\"good\":12,\"recommended\":5,\"critical\":2}', 'yes'),
(373, '_transient_timeout_wpseo_total_unindexed_post_type_archives', '1675954892', 'no'),
(374, '_transient_wpseo_total_unindexed_post_type_archives', '0', 'no'),
(375, '_transient_timeout_wpseo_total_unindexed_general_items', '1675954897', 'no'),
(376, '_transient_wpseo_total_unindexed_general_items', '0', 'no'),
(377, '_transient_timeout_wpseo_unindexed_post_link_count', '1675954893', 'no'),
(378, '_transient_wpseo_unindexed_post_link_count', '0', 'no'),
(379, '_transient_timeout_wpseo_unindexed_term_link_count', '1675954893', 'no'),
(380, '_transient_wpseo_unindexed_term_link_count', '0', 'no'),
(512, 'category_children', 'a:0:{}', 'yes'),
(522, '_site_transient_timeout_theme_roots', '1675935986', 'no'),
(523, '_site_transient_theme_roots', 'a:1:{s:14:\"medical42works\";s:7:\"/themes\";}', 'no'),
(524, '_transient_timeout_wpseo_total_unindexed_posts_limited', '1675935106', 'no'),
(525, '_transient_wpseo_total_unindexed_posts_limited', '0', 'no'),
(526, '_transient_timeout_wpseo_total_unindexed_terms_limited', '1675935106', 'no'),
(527, '_transient_wpseo_total_unindexed_terms_limited', '0', 'no'),
(528, '_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b', '1675977415', 'no'),
(529, '_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b', '<div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: A valid URL was not provided.</p></div><div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: A valid URL was not provided.</p></div>', 'no'),
(536, '_transient_timeout_global_styles_medical42works', '1675935090', 'no'),
(537, '_transient_global_styles_medical42works', 'body{--wp--preset--color--black: #000000;--wp--preset--color--cyan-bluish-gray: #abb8c3;--wp--preset--color--white: #ffffff;--wp--preset--color--pale-pink: #f78da7;--wp--preset--color--vivid-red: #cf2e2e;--wp--preset--color--luminous-vivid-orange: #ff6900;--wp--preset--color--luminous-vivid-amber: #fcb900;--wp--preset--color--light-green-cyan: #7bdcb5;--wp--preset--color--vivid-green-cyan: #00d084;--wp--preset--color--pale-cyan-blue: #8ed1fc;--wp--preset--color--vivid-cyan-blue: #0693e3;--wp--preset--color--vivid-purple: #9b51e0;--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg,rgba(6,147,227,1) 0%,rgb(155,81,224) 100%);--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg,rgba(252,185,0,1) 0%,rgba(255,105,0,1) 100%);--wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg,rgba(255,105,0,1) 0%,rgb(207,46,46) 100%);--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);--wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);--wp--preset--gradient--blush-light-purple: linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);--wp--preset--gradient--blush-bordeaux: linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);--wp--preset--gradient--luminous-dusk: linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);--wp--preset--gradient--pale-ocean: linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);--wp--preset--gradient--electric-grass: linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);--wp--preset--gradient--midnight: linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);--wp--preset--duotone--dark-grayscale: url(\'#wp-duotone-dark-grayscale\');--wp--preset--duotone--grayscale: url(\'#wp-duotone-grayscale\');--wp--preset--duotone--purple-yellow: url(\'#wp-duotone-purple-yellow\');--wp--preset--duotone--blue-red: url(\'#wp-duotone-blue-red\');--wp--preset--duotone--midnight: url(\'#wp-duotone-midnight\');--wp--preset--duotone--magenta-yellow: url(\'#wp-duotone-magenta-yellow\');--wp--preset--duotone--purple-green: url(\'#wp-duotone-purple-green\');--wp--preset--duotone--blue-orange: url(\'#wp-duotone-blue-orange\');--wp--preset--font-size--small: 13px;--wp--preset--font-size--medium: 20px;--wp--preset--font-size--large: 36px;--wp--preset--font-size--x-large: 42px;}.has-black-color{color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-color{color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-color{color: var(--wp--preset--color--white) !important;}.has-pale-pink-color{color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-color{color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-color{color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-color{color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-color{color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-color{color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-color{color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-color{color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-color{color: var(--wp--preset--color--vivid-purple) !important;}.has-black-background-color{background-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-background-color{background-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-background-color{background-color: var(--wp--preset--color--white) !important;}.has-pale-pink-background-color{background-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-background-color{background-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-background-color{background-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-background-color{background-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-background-color{background-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-background-color{background-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-background-color{background-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-background-color{background-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-background-color{background-color: var(--wp--preset--color--vivid-purple) !important;}.has-black-border-color{border-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-border-color{border-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-border-color{border-color: var(--wp--preset--color--white) !important;}.has-pale-pink-border-color{border-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-border-color{border-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-border-color{border-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-border-color{border-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-border-color{border-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-border-color{border-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-border-color{border-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-border-color{border-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-border-color{border-color: var(--wp--preset--color--vivid-purple) !important;}.has-vivid-cyan-blue-to-vivid-purple-gradient-background{background: var(--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple) !important;}.has-light-green-cyan-to-vivid-green-cyan-gradient-background{background: var(--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan) !important;}.has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange) !important;}.has-luminous-vivid-orange-to-vivid-red-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-orange-to-vivid-red) !important;}.has-very-light-gray-to-cyan-bluish-gray-gradient-background{background: var(--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray) !important;}.has-cool-to-warm-spectrum-gradient-background{background: var(--wp--preset--gradient--cool-to-warm-spectrum) !important;}.has-blush-light-purple-gradient-background{background: var(--wp--preset--gradient--blush-light-purple) !important;}.has-blush-bordeaux-gradient-background{background: var(--wp--preset--gradient--blush-bordeaux) !important;}.has-luminous-dusk-gradient-background{background: var(--wp--preset--gradient--luminous-dusk) !important;}.has-pale-ocean-gradient-background{background: var(--wp--preset--gradient--pale-ocean) !important;}.has-electric-grass-gradient-background{background: var(--wp--preset--gradient--electric-grass) !important;}.has-midnight-gradient-background{background: var(--wp--preset--gradient--midnight) !important;}.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}.has-medium-font-size{font-size: var(--wp--preset--font-size--medium) !important;}.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}.has-x-large-font-size{font-size: var(--wp--preset--font-size--x-large) !important;}', 'no');

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
(3, 5, '_edit_last', '1'),
(4, 5, '_edit_lock', '1675689655:1'),
(5, 5, '_wp_trash_meta_status', 'publish'),
(6, 5, '_wp_trash_meta_time', '1675689798'),
(7, 5, '_wp_desired_post_slug', 'group_63e0fe2e19769'),
(8, 6, '_wp_trash_meta_status', 'publish'),
(9, 6, '_wp_trash_meta_time', '1675689798'),
(10, 6, '_wp_desired_post_slug', 'field_63e0fe54763ca'),
(11, 7, '_wp_trash_meta_status', 'publish'),
(12, 7, '_wp_trash_meta_time', '1675689799'),
(13, 7, '_wp_desired_post_slug', 'field_63e0fec9763cb'),
(14, 1, '_wp_trash_meta_status', 'publish'),
(15, 1, '_wp_trash_meta_time', '1675700319'),
(16, 1, '_wp_desired_post_slug', 'hello-world'),
(17, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(18, 3, '_wp_trash_meta_status', 'draft'),
(19, 3, '_wp_trash_meta_time', '1675700336'),
(20, 3, '_wp_desired_post_slug', 'privacy-policy'),
(21, 2, '_wp_trash_meta_status', 'publish'),
(22, 2, '_wp_trash_meta_time', '1675700337'),
(23, 2, '_wp_desired_post_slug', 'sample-page'),
(24, 11, '_edit_lock', '1675934528:1'),
(25, 14, '_edit_lock', '1675701198:1'),
(26, 16, '_edit_lock', '1675701228:1'),
(27, 18, '_edit_lock', '1675701218:1'),
(28, 20, '_menu_item_type', 'post_type'),
(29, 20, '_menu_item_menu_item_parent', '0'),
(30, 20, '_menu_item_object_id', '11'),
(31, 20, '_menu_item_object', 'page'),
(32, 20, '_menu_item_target', ''),
(33, 20, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(34, 20, '_menu_item_xfn', ''),
(35, 20, '_menu_item_url', ''),
(37, 21, '_menu_item_type', 'post_type'),
(38, 21, '_menu_item_menu_item_parent', '0'),
(39, 21, '_menu_item_object_id', '14'),
(40, 21, '_menu_item_object', 'page'),
(41, 21, '_menu_item_target', ''),
(42, 21, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(43, 21, '_menu_item_xfn', ''),
(44, 21, '_menu_item_url', ''),
(46, 22, '_menu_item_type', 'post_type'),
(47, 22, '_menu_item_menu_item_parent', '0'),
(48, 22, '_menu_item_object_id', '18'),
(49, 22, '_menu_item_object', 'page'),
(50, 22, '_menu_item_target', ''),
(51, 22, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(52, 22, '_menu_item_xfn', ''),
(53, 22, '_menu_item_url', ''),
(55, 23, '_menu_item_type', 'post_type'),
(56, 23, '_menu_item_menu_item_parent', '0'),
(57, 23, '_menu_item_object_id', '16'),
(58, 23, '_menu_item_object', 'page'),
(59, 23, '_menu_item_target', ''),
(60, 23, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(61, 23, '_menu_item_xfn', ''),
(62, 23, '_menu_item_url', ''),
(64, 11, '_edit_last', '1'),
(65, 14, '_edit_last', '1'),
(66, 18, '_edit_last', '1'),
(67, 16, '_edit_last', '1'),
(68, 24, '_wp_trash_meta_status', 'publish'),
(69, 24, '_wp_trash_meta_time', '1675762413'),
(70, 25, '_edit_last', '1'),
(71, 25, '_edit_lock', '1675882297:1'),
(72, 11, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(73, 11, '_yoast_wpseo_wordproof_timestamp', ''),
(74, 11, 'banner_title', 'Recapture the Beauty of Self-confidence'),
(75, 11, '_banner_title', 'field_63e3bb382b2bf'),
(76, 11, 'banner_subtitle', 'ALLURE AESTHETIC AND PLASTIC SURGERY LLC'),
(77, 11, '_banner_subtitle', 'field_63e3bb542b2c0'),
(78, 11, 'banner_description', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Inventore accusamus unde expedita fugiat magni natus suscipit perferendis, nobis obcaecati dolor.'),
(79, 11, '_banner_description', 'field_63e3bb632b2c1'),
(80, 11, 'banner_button_text', 'Know More '),
(81, 11, '_banner_button_text', 'field_63e3bbac2b2c2'),
(82, 11, 'banner_button_link', '#'),
(83, 11, '_banner_button_link', 'field_63e3bbbc2b2c3'),
(84, 11, 'banner_bg_image', '39'),
(85, 11, '_banner_bg_image', 'field_63e3bbd22b2c4'),
(86, 33, 'banner_title', 'Recapture the Beauty of Self-confidence'),
(87, 33, '_banner_title', 'field_63e3bb382b2bf'),
(88, 33, 'banner_subtitle', 'ALLURE AESTHETIC AND PLASTIC SURGERY LLC'),
(89, 33, '_banner_subtitle', 'field_63e3bb542b2c0'),
(90, 33, 'banner_description', ''),
(91, 33, '_banner_description', 'field_63e3bb632b2c1'),
(92, 33, 'banner_button_text', ''),
(93, 33, '_banner_button_text', 'field_63e3bbac2b2c2'),
(94, 33, 'banner_button_link', ''),
(95, 33, '_banner_button_link', 'field_63e3bbbc2b2c3'),
(96, 33, 'banner_bg_image', ''),
(97, 33, '_banner_bg_image', 'field_63e3bbd22b2c4'),
(98, 34, 'banner_title', 'Recapture the Beauty of Self-confidence'),
(99, 34, '_banner_title', 'field_63e3bb382b2bf'),
(100, 34, 'banner_subtitle', 'ALLURE AESTHETIC AND PLASTIC SURGERY LLC'),
(101, 34, '_banner_subtitle', 'field_63e3bb542b2c0'),
(102, 34, 'banner_description', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Inventore accusamus unde expedita fugiat magni natus suscipit perferendis, nobis obcaecati dolor.'),
(103, 34, '_banner_description', 'field_63e3bb632b2c1'),
(104, 34, 'banner_button_text', 'Know More '),
(105, 34, '_banner_button_text', 'field_63e3bbac2b2c2'),
(106, 34, 'banner_button_link', '#'),
(107, 34, '_banner_button_link', 'field_63e3bbbc2b2c3'),
(108, 34, 'banner_bg_image', ''),
(109, 34, '_banner_bg_image', 'field_63e3bbd22b2c4'),
(110, 35, 'banner_title', 'Recapture the Beauty of Self-confidence check'),
(111, 35, '_banner_title', 'field_63e3bb382b2bf'),
(112, 35, 'banner_subtitle', 'ALLURE AESTHETIC AND PLASTIC SURGERY LLC'),
(113, 35, '_banner_subtitle', 'field_63e3bb542b2c0'),
(114, 35, 'banner_description', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Inventore accusamus unde expedita fugiat magni natus suscipit perferendis, nobis obcaecati dolor.'),
(115, 35, '_banner_description', 'field_63e3bb632b2c1'),
(116, 35, 'banner_button_text', 'Know More '),
(117, 35, '_banner_button_text', 'field_63e3bbac2b2c2'),
(118, 35, 'banner_button_link', '#'),
(119, 35, '_banner_button_link', 'field_63e3bbbc2b2c3'),
(120, 35, 'banner_bg_image', ''),
(121, 35, '_banner_bg_image', 'field_63e3bbd22b2c4'),
(122, 36, 'banner_title', 'Recapture the Beauty of Self-confidence'),
(123, 36, '_banner_title', 'field_63e3bb382b2bf'),
(124, 36, 'banner_subtitle', 'ALLURE AESTHETIC AND PLASTIC SURGERY LLC'),
(125, 36, '_banner_subtitle', 'field_63e3bb542b2c0'),
(126, 36, 'banner_description', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Inventore accusamus unde expedita fugiat magni natus suscipit perferendis, nobis obcaecati dolor.'),
(127, 36, '_banner_description', 'field_63e3bb632b2c1'),
(128, 36, 'banner_button_text', 'Know More '),
(129, 36, '_banner_button_text', 'field_63e3bbac2b2c2'),
(130, 36, 'banner_button_link', '#'),
(131, 36, '_banner_button_link', 'field_63e3bbbc2b2c3'),
(132, 36, 'banner_bg_image', ''),
(133, 36, '_banner_bg_image', 'field_63e3bbd22b2c4'),
(134, 37, '_wp_attached_file', '2023/02/4.jpg'),
(135, 37, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:846;s:6:\"height\";i:928;s:4:\"file\";s:13:\"2023/02/4.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(136, 38, 'banner_title', 'Recapture the Beauty of Self-confidence'),
(137, 38, '_banner_title', 'field_63e3bb382b2bf'),
(138, 38, 'banner_subtitle', 'ALLURE AESTHETIC AND PLASTIC SURGERY LLC'),
(139, 38, '_banner_subtitle', 'field_63e3bb542b2c0'),
(140, 38, 'banner_description', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Inventore accusamus unde expedita fugiat magni natus suscipit perferendis, nobis obcaecati dolor.'),
(141, 38, '_banner_description', 'field_63e3bb632b2c1'),
(142, 38, 'banner_button_text', 'Know More '),
(143, 38, '_banner_button_text', 'field_63e3bbac2b2c2'),
(144, 38, 'banner_button_link', '#'),
(145, 38, '_banner_button_link', 'field_63e3bbbc2b2c3'),
(146, 38, 'banner_bg_image', '37'),
(147, 38, '_banner_bg_image', 'field_63e3bbd22b2c4'),
(148, 39, '_wp_attached_file', '2023/02/1.jpg'),
(149, 39, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:988;s:4:\"file\";s:13:\"2023/02/1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(150, 40, 'banner_title', 'Recapture the Beauty of Self-confidence'),
(151, 40, '_banner_title', 'field_63e3bb382b2bf'),
(152, 40, 'banner_subtitle', 'ALLURE AESTHETIC AND PLASTIC SURGERY LLC'),
(153, 40, '_banner_subtitle', 'field_63e3bb542b2c0'),
(154, 40, 'banner_description', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Inventore accusamus unde expedita fugiat magni natus suscipit perferendis, nobis obcaecati dolor.'),
(155, 40, '_banner_description', 'field_63e3bb632b2c1'),
(156, 40, 'banner_button_text', 'Know More '),
(157, 40, '_banner_button_text', 'field_63e3bbac2b2c2'),
(158, 40, 'banner_button_link', '#'),
(159, 40, '_banner_button_link', 'field_63e3bbbc2b2c3'),
(160, 40, 'banner_bg_image', '39'),
(161, 40, '_banner_bg_image', 'field_63e3bbd22b2c4'),
(162, 50, '_wp_attached_file', '2023/02/3.jpg'),
(163, 50, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:549;s:6:\"height\";i:549;s:4:\"file\";s:13:\"2023/02/3.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(164, 11, 'welcome_title', 'Welcome To Allure Aesthetic And Plastic Surgery Llc'),
(165, 11, '_welcome_title', 'field_63e3c29db95ea'),
(166, 11, 'welcome_content', 'Percy Lo, MD. Facs is an awarded winning.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been theLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been thePercy Lo, MD. Facs is an awarded winning.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been theLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the\r\nFacs is an awarded winning.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been theLorem Ipsum is simply dummy text of'),
(167, 11, '_welcome_content', 'field_63e3c2b3b95eb'),
(168, 11, 'welcome_button_text', 'Know More'),
(169, 11, '_welcome_button_text', 'field_63e3c2d6b95ec'),
(170, 11, 'welcome_button_link', '#'),
(171, 11, '_welcome_button_link', 'field_63e3c2e5b95ed'),
(172, 11, 'welcome_image', '50'),
(173, 11, '_welcome_image', 'field_63e3c2fab95ee'),
(174, 11, 'why_choose_us_title', 'Why Choose Us?'),
(175, 11, '_why_choose_us_title', 'field_63e3c36bb95f0'),
(176, 11, 'why_choose_us_image', '37'),
(177, 11, '_why_choose_us_image', 'field_63e3c3bbb95f1'),
(178, 51, 'banner_title', 'Recapture the Beauty of Self-confidence'),
(179, 51, '_banner_title', 'field_63e3bb382b2bf'),
(180, 51, 'banner_subtitle', 'ALLURE AESTHETIC AND PLASTIC SURGERY LLC'),
(181, 51, '_banner_subtitle', 'field_63e3bb542b2c0'),
(182, 51, 'banner_description', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Inventore accusamus unde expedita fugiat magni natus suscipit perferendis, nobis obcaecati dolor.'),
(183, 51, '_banner_description', 'field_63e3bb632b2c1'),
(184, 51, 'banner_button_text', 'Know More '),
(185, 51, '_banner_button_text', 'field_63e3bbac2b2c2'),
(186, 51, 'banner_button_link', '#'),
(187, 51, '_banner_button_link', 'field_63e3bbbc2b2c3'),
(188, 51, 'banner_bg_image', '39'),
(189, 51, '_banner_bg_image', 'field_63e3bbd22b2c4'),
(190, 51, 'welcome_title', 'Welcome To Allure Aesthetic And Plastic Surgery Llc'),
(191, 51, '_welcome_title', 'field_63e3c29db95ea'),
(192, 51, 'welcome_content', 'Percy Lo, MD. Facs is an awarded winning.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been theLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been thePercy Lo, MD. Facs is an awarded winning.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been theLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the\r\nFacs is an awarded winning.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been theLorem Ipsum is simply dummy text of'),
(193, 51, '_welcome_content', 'field_63e3c2b3b95eb'),
(194, 51, 'welcome_button_text', 'Know More'),
(195, 51, '_welcome_button_text', 'field_63e3c2d6b95ec'),
(196, 51, 'welcome_button_link', '#'),
(197, 51, '_welcome_button_link', 'field_63e3c2e5b95ed'),
(198, 51, 'welcome_image', '50'),
(199, 51, '_welcome_image', 'field_63e3c2fab95ee'),
(200, 51, 'why_choose_us_title', ''),
(201, 51, '_why_choose_us_title', 'field_63e3c36bb95f0'),
(202, 51, 'why_choose_us_image', ''),
(203, 51, '_why_choose_us_image', 'field_63e3c3bbb95f1'),
(204, 52, 'banner_title', 'Recapture the Beauty of Self-confidence'),
(205, 52, '_banner_title', 'field_63e3bb382b2bf'),
(206, 52, 'banner_subtitle', 'ALLURE AESTHETIC AND PLASTIC SURGERY LLC'),
(207, 52, '_banner_subtitle', 'field_63e3bb542b2c0'),
(208, 52, 'banner_description', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Inventore accusamus unde expedita fugiat magni natus suscipit perferendis, nobis obcaecati dolor.'),
(209, 52, '_banner_description', 'field_63e3bb632b2c1'),
(210, 52, 'banner_button_text', 'Know More '),
(211, 52, '_banner_button_text', 'field_63e3bbac2b2c2'),
(212, 52, 'banner_button_link', '#'),
(213, 52, '_banner_button_link', 'field_63e3bbbc2b2c3'),
(214, 52, 'banner_bg_image', '39'),
(215, 52, '_banner_bg_image', 'field_63e3bbd22b2c4'),
(216, 52, 'welcome_title', 'Welcome To Allure Aesthetic And Plastic Surgery Llc'),
(217, 52, '_welcome_title', 'field_63e3c29db95ea'),
(218, 52, 'welcome_content', 'Percy Lo, MD. Facs is an awarded winning.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been theLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been thePercy Lo, MD. Facs is an awarded winning.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been theLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the\r\nFacs is an awarded winning.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been theLorem Ipsum is simply dummy text of'),
(219, 52, '_welcome_content', 'field_63e3c2b3b95eb'),
(220, 52, 'welcome_button_text', 'Know More'),
(221, 52, '_welcome_button_text', 'field_63e3c2d6b95ec'),
(222, 52, 'welcome_button_link', '#'),
(223, 52, '_welcome_button_link', 'field_63e3c2e5b95ed'),
(224, 52, 'welcome_image', '50'),
(225, 52, '_welcome_image', 'field_63e3c2fab95ee'),
(226, 52, 'why_choose_us_title', 'Why Choose Us?'),
(227, 52, '_why_choose_us_title', 'field_63e3c36bb95f0'),
(228, 52, 'why_choose_us_image', '37'),
(229, 52, '_why_choose_us_image', 'field_63e3c3bbb95f1'),
(230, 62, '_wp_attached_file', '2023/02/5.jpg'),
(231, 62, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:549;s:6:\"height\";i:689;s:4:\"file\";s:13:\"2023/02/5.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(232, 11, 'lorem_title', 'Lorem Ipsum Dolor'),
(233, 11, '_lorem_title', 'field_63e3c924be85f'),
(234, 11, 'lorem_content', '<p class=\"loremcont\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the It is a long established fact that a reader will be distracted by The standard chunk of Lorem Ipsum used </p>\r\n<ul class=\"lorem_items\">\r\n<li>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the</li>\r\n<li>Lorem Ipsum is simply dummy text of the printing </li>\r\n<li>It is a long established fact that a reader will be distracted by </li>\r\n<li>There are many variations of passages of Lorem</li>\r\n<li>The standard chunk of Lorem Ipsum used</li>\r\n</ul>\r\n<div claSS=\"statistics\">\r\n<div class=\"stats_item\">\r\n<h2>123+</h2>\r\n<p>Millian Recover in Lorem Ipsum</p>\r\n</div>\r\n<div class=\"stats_item\">\r\n<h2>160+</h2>\r\n<p>Millian Recover in Lorem Ipsum</p>\r\n</div>\r\n<div class=\"stats_item\">\r\n<h2>90+</h2>\r\n<p>Millian Recover in Lorem Ipsum</p>\r\n</div>\r\n</div>'),
(235, 11, '_lorem_content', 'field_63e3c945be860'),
(236, 11, 'lorem_image', '62'),
(237, 11, '_lorem_image', 'field_63e3c959be861'),
(238, 11, 'services_title', 'Our Services'),
(239, 11, '_services_title', 'field_63e3cdc9d0232'),
(240, 11, 'services_image', '62'),
(241, 11, '_services_image', 'field_63e3cdd8d0233'),
(242, 63, 'banner_title', 'Recapture the Beauty of Self-confidence'),
(243, 63, '_banner_title', 'field_63e3bb382b2bf'),
(244, 63, 'banner_subtitle', 'ALLURE AESTHETIC AND PLASTIC SURGERY LLC'),
(245, 63, '_banner_subtitle', 'field_63e3bb542b2c0'),
(246, 63, 'banner_description', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Inventore accusamus unde expedita fugiat magni natus suscipit perferendis, nobis obcaecati dolor.'),
(247, 63, '_banner_description', 'field_63e3bb632b2c1'),
(248, 63, 'banner_button_text', 'Know More '),
(249, 63, '_banner_button_text', 'field_63e3bbac2b2c2'),
(250, 63, 'banner_button_link', '#'),
(251, 63, '_banner_button_link', 'field_63e3bbbc2b2c3'),
(252, 63, 'banner_bg_image', '39'),
(253, 63, '_banner_bg_image', 'field_63e3bbd22b2c4'),
(254, 63, 'welcome_title', 'Welcome To Allure Aesthetic And Plastic Surgery Llc'),
(255, 63, '_welcome_title', 'field_63e3c29db95ea'),
(256, 63, 'welcome_content', 'Percy Lo, MD. Facs is an awarded winning.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been theLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been thePercy Lo, MD. Facs is an awarded winning.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been theLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the\r\nFacs is an awarded winning.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been theLorem Ipsum is simply dummy text of'),
(257, 63, '_welcome_content', 'field_63e3c2b3b95eb'),
(258, 63, 'welcome_button_text', 'Know More'),
(259, 63, '_welcome_button_text', 'field_63e3c2d6b95ec'),
(260, 63, 'welcome_button_link', '#'),
(261, 63, '_welcome_button_link', 'field_63e3c2e5b95ed'),
(262, 63, 'welcome_image', '50'),
(263, 63, '_welcome_image', 'field_63e3c2fab95ee'),
(264, 63, 'why_choose_us_title', 'Why Choose Us?'),
(265, 63, '_why_choose_us_title', 'field_63e3c36bb95f0'),
(266, 63, 'why_choose_us_image', '37'),
(267, 63, '_why_choose_us_image', 'field_63e3c3bbb95f1'),
(268, 63, 'lorem_title', 'Lorem Ipsum Dolor'),
(269, 63, '_lorem_title', 'field_63e3c924be85f'),
(270, 63, 'lorem_content', '<p class=\"loremcont\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the It is a long established fact that a reader will be distracted by The standard chunk of Lorem Ipsum used </p>\r\n<ul class=\"lorem_items\">\r\n<li>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the</li>\r\n<li>Lorem Ipsum is simply dummy text of the printing </li>\r\n<li>It is a long established fact that a reader will be distracted by </li>\r\n<li>There are many variations of passages of Lorem</li>\r\n<li>The standard chunk of Lorem Ipsum used </li>\r\n</ul>'),
(271, 63, '_lorem_content', 'field_63e3c945be860'),
(272, 63, 'lorem_image', '62'),
(273, 63, '_lorem_image', 'field_63e3c959be861'),
(274, 63, 'services_title', ''),
(275, 63, '_services_title', 'field_63e3cdc9d0232'),
(276, 63, 'services_image', ''),
(277, 63, '_services_image', 'field_63e3cdd8d0233'),
(278, 64, 'banner_title', 'Recapture the Beauty of Self-confidence'),
(279, 64, '_banner_title', 'field_63e3bb382b2bf'),
(280, 64, 'banner_subtitle', 'ALLURE AESTHETIC AND PLASTIC SURGERY LLC'),
(281, 64, '_banner_subtitle', 'field_63e3bb542b2c0'),
(282, 64, 'banner_description', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Inventore accusamus unde expedita fugiat magni natus suscipit perferendis, nobis obcaecati dolor.'),
(283, 64, '_banner_description', 'field_63e3bb632b2c1'),
(284, 64, 'banner_button_text', 'Know More '),
(285, 64, '_banner_button_text', 'field_63e3bbac2b2c2'),
(286, 64, 'banner_button_link', '#'),
(287, 64, '_banner_button_link', 'field_63e3bbbc2b2c3'),
(288, 64, 'banner_bg_image', '39'),
(289, 64, '_banner_bg_image', 'field_63e3bbd22b2c4'),
(290, 64, 'welcome_title', 'Welcome To Allure Aesthetic And Plastic Surgery Llc'),
(291, 64, '_welcome_title', 'field_63e3c29db95ea'),
(292, 64, 'welcome_content', 'Percy Lo, MD. Facs is an awarded winning.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been theLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been thePercy Lo, MD. Facs is an awarded winning.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been theLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the\r\nFacs is an awarded winning.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been theLorem Ipsum is simply dummy text of'),
(293, 64, '_welcome_content', 'field_63e3c2b3b95eb'),
(294, 64, 'welcome_button_text', 'Know More'),
(295, 64, '_welcome_button_text', 'field_63e3c2d6b95ec'),
(296, 64, 'welcome_button_link', '#'),
(297, 64, '_welcome_button_link', 'field_63e3c2e5b95ed'),
(298, 64, 'welcome_image', '50'),
(299, 64, '_welcome_image', 'field_63e3c2fab95ee'),
(300, 64, 'why_choose_us_title', 'Why Choose Us?'),
(301, 64, '_why_choose_us_title', 'field_63e3c36bb95f0'),
(302, 64, 'why_choose_us_image', '37'),
(303, 64, '_why_choose_us_image', 'field_63e3c3bbb95f1'),
(304, 64, 'lorem_title', 'Lorem Ipsum Dolor'),
(305, 64, '_lorem_title', 'field_63e3c924be85f'),
(306, 64, 'lorem_content', '<p class=\"loremcont\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the It is a long established fact that a reader will be distracted by The standard chunk of Lorem Ipsum used </p>\r\n<ul class=\"lorem_items\">\r\n<li>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the</li>\r\n<li>Lorem Ipsum is simply dummy text of the printing </li>\r\n<li>It is a long established fact that a reader will be distracted by </li>\r\n<li>There are many variations of passages of Lorem</li>\r\n<li>The standard chunk of Lorem Ipsum used  check check check</li>\r\n</ul>'),
(307, 64, '_lorem_content', 'field_63e3c945be860'),
(308, 64, 'lorem_image', '62'),
(309, 64, '_lorem_image', 'field_63e3c959be861'),
(310, 64, 'services_title', ''),
(311, 64, '_services_title', 'field_63e3cdc9d0232'),
(312, 64, 'services_image', ''),
(313, 64, '_services_image', 'field_63e3cdd8d0233'),
(314, 65, 'banner_title', 'Recapture the Beauty of Self-confidence'),
(315, 65, '_banner_title', 'field_63e3bb382b2bf'),
(316, 65, 'banner_subtitle', 'ALLURE AESTHETIC AND PLASTIC SURGERY LLC'),
(317, 65, '_banner_subtitle', 'field_63e3bb542b2c0'),
(318, 65, 'banner_description', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Inventore accusamus unde expedita fugiat magni natus suscipit perferendis, nobis obcaecati dolor.'),
(319, 65, '_banner_description', 'field_63e3bb632b2c1'),
(320, 65, 'banner_button_text', 'Know More '),
(321, 65, '_banner_button_text', 'field_63e3bbac2b2c2'),
(322, 65, 'banner_button_link', '#'),
(323, 65, '_banner_button_link', 'field_63e3bbbc2b2c3'),
(324, 65, 'banner_bg_image', '39'),
(325, 65, '_banner_bg_image', 'field_63e3bbd22b2c4'),
(326, 65, 'welcome_title', 'Welcome To Allure Aesthetic And Plastic Surgery Llc'),
(327, 65, '_welcome_title', 'field_63e3c29db95ea'),
(328, 65, 'welcome_content', 'Percy Lo, MD. Facs is an awarded winning.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been theLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been thePercy Lo, MD. Facs is an awarded winning.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been theLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the\r\nFacs is an awarded winning.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been theLorem Ipsum is simply dummy text of'),
(329, 65, '_welcome_content', 'field_63e3c2b3b95eb'),
(330, 65, 'welcome_button_text', 'Know More'),
(331, 65, '_welcome_button_text', 'field_63e3c2d6b95ec'),
(332, 65, 'welcome_button_link', '#'),
(333, 65, '_welcome_button_link', 'field_63e3c2e5b95ed'),
(334, 65, 'welcome_image', '50'),
(335, 65, '_welcome_image', 'field_63e3c2fab95ee'),
(336, 65, 'why_choose_us_title', 'Why Choose Us?'),
(337, 65, '_why_choose_us_title', 'field_63e3c36bb95f0'),
(338, 65, 'why_choose_us_image', '37'),
(339, 65, '_why_choose_us_image', 'field_63e3c3bbb95f1'),
(340, 65, 'lorem_title', 'Lorem Ipsum Dolor'),
(341, 65, '_lorem_title', 'field_63e3c924be85f'),
(342, 65, 'lorem_content', '<p class=\"loremcont\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the It is a long established fact that a reader will be distracted by The standard chunk of Lorem Ipsum used </p>\r\n<ul class=\"lorem_items\">\r\n<li>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the</li>\r\n<li>Lorem Ipsum is simply dummy text of the printing </li>\r\n<li>It is a long established fact that a reader will be distracted by </li>\r\n<li>There are many variations of passages of Lorem</li>\r\n<li>The standard chunk of Lorem Ipsum used</li>\r\n</ul>'),
(343, 65, '_lorem_content', 'field_63e3c945be860'),
(344, 65, 'lorem_image', '62'),
(345, 65, '_lorem_image', 'field_63e3c959be861'),
(346, 65, 'services_title', ''),
(347, 65, '_services_title', 'field_63e3cdc9d0232'),
(348, 65, 'services_image', ''),
(349, 65, '_services_image', 'field_63e3cdd8d0233'),
(350, 66, 'banner_title', 'Recapture the Beauty of Self-confidence'),
(351, 66, '_banner_title', 'field_63e3bb382b2bf'),
(352, 66, 'banner_subtitle', 'ALLURE AESTHETIC AND PLASTIC SURGERY LLC'),
(353, 66, '_banner_subtitle', 'field_63e3bb542b2c0'),
(354, 66, 'banner_description', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Inventore accusamus unde expedita fugiat magni natus suscipit perferendis, nobis obcaecati dolor.'),
(355, 66, '_banner_description', 'field_63e3bb632b2c1'),
(356, 66, 'banner_button_text', 'Know More '),
(357, 66, '_banner_button_text', 'field_63e3bbac2b2c2'),
(358, 66, 'banner_button_link', '#'),
(359, 66, '_banner_button_link', 'field_63e3bbbc2b2c3'),
(360, 66, 'banner_bg_image', '39'),
(361, 66, '_banner_bg_image', 'field_63e3bbd22b2c4'),
(362, 66, 'welcome_title', 'Welcome To Allure Aesthetic And Plastic Surgery Llc'),
(363, 66, '_welcome_title', 'field_63e3c29db95ea'),
(364, 66, 'welcome_content', 'Percy Lo, MD. Facs is an awarded winning.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been theLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been thePercy Lo, MD. Facs is an awarded winning.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been theLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the\r\nFacs is an awarded winning.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been theLorem Ipsum is simply dummy text of'),
(365, 66, '_welcome_content', 'field_63e3c2b3b95eb'),
(366, 66, 'welcome_button_text', 'Know More'),
(367, 66, '_welcome_button_text', 'field_63e3c2d6b95ec'),
(368, 66, 'welcome_button_link', '#'),
(369, 66, '_welcome_button_link', 'field_63e3c2e5b95ed'),
(370, 66, 'welcome_image', '50'),
(371, 66, '_welcome_image', 'field_63e3c2fab95ee'),
(372, 66, 'why_choose_us_title', 'Why Choose Us?'),
(373, 66, '_why_choose_us_title', 'field_63e3c36bb95f0'),
(374, 66, 'why_choose_us_image', '37'),
(375, 66, '_why_choose_us_image', 'field_63e3c3bbb95f1'),
(376, 66, 'lorem_title', 'Lorem Ipsum Dolor'),
(377, 66, '_lorem_title', 'field_63e3c924be85f'),
(378, 66, 'lorem_content', '<p class=\"loremcont\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the It is a long established fact that a reader will be distracted by The standard chunk of Lorem Ipsum used </p>\r\n<ul class=\"lorem_items\">\r\n<li>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the</li>\r\n<li>Lorem Ipsum is simply dummy text of the printing </li>\r\n<li>It is a long established fact that a reader will be distracted by </li>\r\n<li>There are many variations of passages of Lorem</li>\r\n<li>The standard chunk of Lorem Ipsum used</li>\r\n</ul>\r\n<div claSS=\"statistics\">\r\n<div class=\"stats_item\">\r\n<h2>123+</h2>\r\n<p>Millian Recover in Lorem Ipsum</p>\r\n</div>\r\n<div class=\"stats_item\">\r\n<h2>160+</h2>\r\n<p>Millian Recover in Lorem Ipsum</p>\r\n</div>\r\n<div class=\"stats_item\">\r\n<h2>90+</h2>\r\n<p>Millian Recover in Lorem Ipsum</p>\r\n</div>\r\n</div>'),
(379, 66, '_lorem_content', 'field_63e3c945be860'),
(380, 66, 'lorem_image', '62'),
(381, 66, '_lorem_image', 'field_63e3c959be861'),
(382, 66, 'services_title', ''),
(383, 66, '_services_title', 'field_63e3cdc9d0232'),
(384, 66, 'services_image', ''),
(385, 66, '_services_image', 'field_63e3cdd8d0233'),
(386, 11, 'item_1_name', 'Lacus Doner dolor dolor'),
(387, 11, '_item_1_name', 'field_63e3d70f6e5d0'),
(388, 11, 'item_1_detail', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the\r\n'),
(389, 11, '_item_1_detail', 'field_63e3d73d6e5d1'),
(390, 11, 'item_1_image', '94'),
(391, 11, '_item_1_image', 'field_63e3d7576e5d2'),
(392, 11, 'item_2_name', 'Lacus doner dolro dolro'),
(393, 11, '_item_2_name', 'field_63e3d7746e5d3'),
(394, 11, 'item_2_detail', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the\r\n'),
(395, 11, '_item_2_detail', 'field_63e3d7856e5d4'),
(396, 11, 'item_2_image', '97'),
(397, 11, '_item_2_image', 'field_63e3d7956e5d5'),
(398, 11, 'item_3_name', 'Lacus Doner dolor dolor'),
(399, 11, '_item_3_name', 'field_63e3d7b16e5d6'),
(400, 11, 'item_3_detail', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the\r\n'),
(401, 11, '_item_3_detail', 'field_63e3d7bd6e5d7'),
(402, 11, 'item_3_image', '101'),
(403, 11, '_item_3_image', 'field_63e3d7cc6e5d8'),
(404, 76, 'banner_title', 'Recapture the Beauty of Self-confidence'),
(405, 76, '_banner_title', 'field_63e3bb382b2bf'),
(406, 76, 'banner_subtitle', 'ALLURE AESTHETIC AND PLASTIC SURGERY LLC'),
(407, 76, '_banner_subtitle', 'field_63e3bb542b2c0'),
(408, 76, 'banner_description', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Inventore accusamus unde expedita fugiat magni natus suscipit perferendis, nobis obcaecati dolor.'),
(409, 76, '_banner_description', 'field_63e3bb632b2c1'),
(410, 76, 'banner_button_text', 'Know More '),
(411, 76, '_banner_button_text', 'field_63e3bbac2b2c2'),
(412, 76, 'banner_button_link', '#'),
(413, 76, '_banner_button_link', 'field_63e3bbbc2b2c3'),
(414, 76, 'banner_bg_image', '39'),
(415, 76, '_banner_bg_image', 'field_63e3bbd22b2c4'),
(416, 76, 'welcome_title', 'Welcome To Allure Aesthetic And Plastic Surgery Llc'),
(417, 76, '_welcome_title', 'field_63e3c29db95ea'),
(418, 76, 'welcome_content', 'Percy Lo, MD. Facs is an awarded winning.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been theLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been thePercy Lo, MD. Facs is an awarded winning.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been theLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the\r\nFacs is an awarded winning.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been theLorem Ipsum is simply dummy text of'),
(419, 76, '_welcome_content', 'field_63e3c2b3b95eb'),
(420, 76, 'welcome_button_text', 'Know More'),
(421, 76, '_welcome_button_text', 'field_63e3c2d6b95ec'),
(422, 76, 'welcome_button_link', '#'),
(423, 76, '_welcome_button_link', 'field_63e3c2e5b95ed'),
(424, 76, 'welcome_image', '50'),
(425, 76, '_welcome_image', 'field_63e3c2fab95ee'),
(426, 76, 'why_choose_us_title', 'Why Choose Us?'),
(427, 76, '_why_choose_us_title', 'field_63e3c36bb95f0'),
(428, 76, 'why_choose_us_image', '37'),
(429, 76, '_why_choose_us_image', 'field_63e3c3bbb95f1'),
(430, 76, 'lorem_title', 'Lorem Ipsum Dolor'),
(431, 76, '_lorem_title', 'field_63e3c924be85f'),
(432, 76, 'lorem_content', '<p class=\"loremcont\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the It is a long established fact that a reader will be distracted by The standard chunk of Lorem Ipsum used </p>\r\n<ul class=\"lorem_items\">\r\n<li>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the</li>\r\n<li>Lorem Ipsum is simply dummy text of the printing </li>\r\n<li>It is a long established fact that a reader will be distracted by </li>\r\n<li>There are many variations of passages of Lorem</li>\r\n<li>The standard chunk of Lorem Ipsum used</li>\r\n</ul>\r\n<div claSS=\"statistics\">\r\n<div class=\"stats_item\">\r\n<h2>123+</h2>\r\n<p>Millian Recover in Lorem Ipsum</p>\r\n</div>\r\n<div class=\"stats_item\">\r\n<h2>160+</h2>\r\n<p>Millian Recover in Lorem Ipsum</p>\r\n</div>\r\n<div class=\"stats_item\">\r\n<h2>90+</h2>\r\n<p>Millian Recover in Lorem Ipsum</p>\r\n</div>\r\n</div>'),
(433, 76, '_lorem_content', 'field_63e3c945be860'),
(434, 76, 'lorem_image', '62'),
(435, 76, '_lorem_image', 'field_63e3c959be861'),
(436, 76, 'services_title', ''),
(437, 76, '_services_title', 'field_63e3cdc9d0232'),
(438, 76, 'services_image', ''),
(439, 76, '_services_image', 'field_63e3cdd8d0233'),
(440, 76, 'item_1_name', 'Lacus Doner dolor dolor'),
(441, 76, '_item_1_name', 'field_63e3d70f6e5d0'),
(442, 76, 'item_1_detail', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the\r\n'),
(443, 76, '_item_1_detail', 'field_63e3d73d6e5d1'),
(444, 76, 'item_1_image', ''),
(445, 76, '_item_1_image', 'field_63e3d7576e5d2'),
(446, 76, 'item_2_name', 'Lacus doner dolro dolro'),
(447, 76, '_item_2_name', 'field_63e3d7746e5d3'),
(448, 76, 'item_2_detail', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the\r\n'),
(449, 76, '_item_2_detail', 'field_63e3d7856e5d4'),
(450, 76, 'item_2_image', ''),
(451, 76, '_item_2_image', 'field_63e3d7956e5d5'),
(452, 76, 'item_3_name', 'Lacus Doner dolor dolor'),
(453, 76, '_item_3_name', 'field_63e3d7b16e5d6'),
(454, 76, 'item_3_detail', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the\r\n'),
(455, 76, '_item_3_detail', 'field_63e3d7bd6e5d7'),
(456, 76, 'item_3_image', ''),
(457, 76, '_item_3_image', 'field_63e3d7cc6e5d8'),
(458, 80, '_edit_last', '1'),
(459, 80, '_edit_lock', '1675934741:1'),
(460, 80, '_yoast_wpseo_estimated-reading-time-minutes', '1'),
(461, 80, '_yoast_wpseo_wordproof_timestamp', ''),
(462, 81, '_edit_last', '1'),
(463, 81, '_edit_lock', '1675934738:1'),
(464, 81, '_yoast_wpseo_estimated-reading-time-minutes', '1'),
(465, 81, '_yoast_wpseo_wordproof_timestamp', ''),
(466, 82, '_edit_last', '1'),
(467, 82, '_edit_lock', '1675934592:1'),
(468, 82, '_yoast_wpseo_estimated-reading-time-minutes', '1'),
(469, 82, '_yoast_wpseo_wordproof_timestamp', ''),
(470, 83, '_edit_last', '1'),
(471, 83, '_edit_lock', '1675934740:1'),
(472, 83, '_yoast_wpseo_estimated-reading-time-minutes', '1'),
(473, 83, '_yoast_wpseo_wordproof_timestamp', ''),
(474, 86, '_wp_attached_file', '2023/02/woomn-1.png'),
(475, 86, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:533;s:6:\"height\";i:618;s:4:\"file\";s:19:\"2023/02/woomn-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(476, 11, 'services_button_text', 'View All'),
(477, 11, '_services_button_text', 'field_63e3e181671bd'),
(478, 11, 'services_button_link', '#'),
(479, 11, '_services_button_link', 'field_63e3e19e671be'),
(480, 87, 'banner_title', 'Recapture the Beauty of Self-confidence'),
(481, 87, '_banner_title', 'field_63e3bb382b2bf'),
(482, 87, 'banner_subtitle', 'ALLURE AESTHETIC AND PLASTIC SURGERY LLC'),
(483, 87, '_banner_subtitle', 'field_63e3bb542b2c0'),
(484, 87, 'banner_description', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Inventore accusamus unde expedita fugiat magni natus suscipit perferendis, nobis obcaecati dolor.'),
(485, 87, '_banner_description', 'field_63e3bb632b2c1'),
(486, 87, 'banner_button_text', 'Know More '),
(487, 87, '_banner_button_text', 'field_63e3bbac2b2c2'),
(488, 87, 'banner_button_link', '#'),
(489, 87, '_banner_button_link', 'field_63e3bbbc2b2c3'),
(490, 87, 'banner_bg_image', '39'),
(491, 87, '_banner_bg_image', 'field_63e3bbd22b2c4'),
(492, 87, 'welcome_title', 'Welcome To Allure Aesthetic And Plastic Surgery Llc'),
(493, 87, '_welcome_title', 'field_63e3c29db95ea'),
(494, 87, 'welcome_content', 'Percy Lo, MD. Facs is an awarded winning.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been theLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been thePercy Lo, MD. Facs is an awarded winning.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been theLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the\r\nFacs is an awarded winning.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been theLorem Ipsum is simply dummy text of'),
(495, 87, '_welcome_content', 'field_63e3c2b3b95eb'),
(496, 87, 'welcome_button_text', 'Know More'),
(497, 87, '_welcome_button_text', 'field_63e3c2d6b95ec'),
(498, 87, 'welcome_button_link', '#'),
(499, 87, '_welcome_button_link', 'field_63e3c2e5b95ed'),
(500, 87, 'welcome_image', '50'),
(501, 87, '_welcome_image', 'field_63e3c2fab95ee'),
(502, 87, 'why_choose_us_title', 'Why Choose Us?'),
(503, 87, '_why_choose_us_title', 'field_63e3c36bb95f0'),
(504, 87, 'why_choose_us_image', '37'),
(505, 87, '_why_choose_us_image', 'field_63e3c3bbb95f1'),
(506, 87, 'lorem_title', 'Lorem Ipsum Dolor'),
(507, 87, '_lorem_title', 'field_63e3c924be85f'),
(508, 87, 'lorem_content', '<p class=\"loremcont\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the It is a long established fact that a reader will be distracted by The standard chunk of Lorem Ipsum used </p>\r\n<ul class=\"lorem_items\">\r\n<li>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the</li>\r\n<li>Lorem Ipsum is simply dummy text of the printing </li>\r\n<li>It is a long established fact that a reader will be distracted by </li>\r\n<li>There are many variations of passages of Lorem</li>\r\n<li>The standard chunk of Lorem Ipsum used</li>\r\n</ul>\r\n<div claSS=\"statistics\">\r\n<div class=\"stats_item\">\r\n<h2>123+</h2>\r\n<p>Millian Recover in Lorem Ipsum</p>\r\n</div>\r\n<div class=\"stats_item\">\r\n<h2>160+</h2>\r\n<p>Millian Recover in Lorem Ipsum</p>\r\n</div>\r\n<div class=\"stats_item\">\r\n<h2>90+</h2>\r\n<p>Millian Recover in Lorem Ipsum</p>\r\n</div>\r\n</div>'),
(509, 87, '_lorem_content', 'field_63e3c945be860'),
(510, 87, 'lorem_image', '62'),
(511, 87, '_lorem_image', 'field_63e3c959be861'),
(512, 87, 'services_title', 'Our Services'),
(513, 87, '_services_title', 'field_63e3cdc9d0232'),
(514, 87, 'services_image', '86'),
(515, 87, '_services_image', 'field_63e3cdd8d0233'),
(516, 87, 'item_1_name', 'Lacus Doner dolor dolor'),
(517, 87, '_item_1_name', 'field_63e3d70f6e5d0'),
(518, 87, 'item_1_detail', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the\r\n'),
(519, 87, '_item_1_detail', 'field_63e3d73d6e5d1'),
(520, 87, 'item_1_image', ''),
(521, 87, '_item_1_image', 'field_63e3d7576e5d2'),
(522, 87, 'item_2_name', 'Lacus doner dolro dolro'),
(523, 87, '_item_2_name', 'field_63e3d7746e5d3'),
(524, 87, 'item_2_detail', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the\r\n'),
(525, 87, '_item_2_detail', 'field_63e3d7856e5d4'),
(526, 87, 'item_2_image', ''),
(527, 87, '_item_2_image', 'field_63e3d7956e5d5'),
(528, 87, 'item_3_name', 'Lacus Doner dolor dolor'),
(529, 87, '_item_3_name', 'field_63e3d7b16e5d6'),
(530, 87, 'item_3_detail', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the\r\n'),
(531, 87, '_item_3_detail', 'field_63e3d7bd6e5d7'),
(532, 87, 'item_3_image', ''),
(533, 87, '_item_3_image', 'field_63e3d7cc6e5d8'),
(534, 87, 'services_button_text', 'View All'),
(535, 87, '_services_button_text', 'field_63e3e181671bd'),
(536, 87, 'services_button_link', '#'),
(537, 87, '_services_button_link', 'field_63e3e19e671be'),
(538, 88, 'banner_title', 'Recapture the Beauty of Self-confidence'),
(539, 88, '_banner_title', 'field_63e3bb382b2bf'),
(540, 88, 'banner_subtitle', 'ALLURE AESTHETIC AND PLASTIC SURGERY LLC'),
(541, 88, '_banner_subtitle', 'field_63e3bb542b2c0'),
(542, 88, 'banner_description', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Inventore accusamus unde expedita fugiat magni natus suscipit perferendis, nobis obcaecati dolor.'),
(543, 88, '_banner_description', 'field_63e3bb632b2c1'),
(544, 88, 'banner_button_text', 'Know More '),
(545, 88, '_banner_button_text', 'field_63e3bbac2b2c2'),
(546, 88, 'banner_button_link', '#'),
(547, 88, '_banner_button_link', 'field_63e3bbbc2b2c3'),
(548, 88, 'banner_bg_image', '39'),
(549, 88, '_banner_bg_image', 'field_63e3bbd22b2c4'),
(550, 88, 'welcome_title', 'Welcome To Allure Aesthetic And Plastic Surgery Llc'),
(551, 88, '_welcome_title', 'field_63e3c29db95ea'),
(552, 88, 'welcome_content', 'Percy Lo, MD. Facs is an awarded winning.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been theLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been thePercy Lo, MD. Facs is an awarded winning.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been theLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the\r\nFacs is an awarded winning.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been theLorem Ipsum is simply dummy text of'),
(553, 88, '_welcome_content', 'field_63e3c2b3b95eb'),
(554, 88, 'welcome_button_text', 'Know More'),
(555, 88, '_welcome_button_text', 'field_63e3c2d6b95ec'),
(556, 88, 'welcome_button_link', '#'),
(557, 88, '_welcome_button_link', 'field_63e3c2e5b95ed'),
(558, 88, 'welcome_image', '50'),
(559, 88, '_welcome_image', 'field_63e3c2fab95ee'),
(560, 88, 'why_choose_us_title', 'Why Choose Us?'),
(561, 88, '_why_choose_us_title', 'field_63e3c36bb95f0'),
(562, 88, 'why_choose_us_image', '37'),
(563, 88, '_why_choose_us_image', 'field_63e3c3bbb95f1'),
(564, 88, 'lorem_title', 'Lorem Ipsum Dolor'),
(565, 88, '_lorem_title', 'field_63e3c924be85f'),
(566, 88, 'lorem_content', '<p class=\"loremcont\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the It is a long established fact that a reader will be distracted by The standard chunk of Lorem Ipsum used </p>\r\n<ul class=\"lorem_items\">\r\n<li>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the</li>\r\n<li>Lorem Ipsum is simply dummy text of the printing </li>\r\n<li>It is a long established fact that a reader will be distracted by </li>\r\n<li>There are many variations of passages of Lorem</li>\r\n<li>The standard chunk of Lorem Ipsum used</li>\r\n</ul>\r\n<div claSS=\"statistics\">\r\n<div class=\"stats_item\">\r\n<h2>123+</h2>\r\n<p>Millian Recover in Lorem Ipsum</p>\r\n</div>\r\n<div class=\"stats_item\">\r\n<h2>160+</h2>\r\n<p>Millian Recover in Lorem Ipsum</p>\r\n</div>\r\n<div class=\"stats_item\">\r\n<h2>90+</h2>\r\n<p>Millian Recover in Lorem Ipsum</p>\r\n</div>\r\n</div>'),
(567, 88, '_lorem_content', 'field_63e3c945be860'),
(568, 88, 'lorem_image', '62'),
(569, 88, '_lorem_image', 'field_63e3c959be861'),
(570, 88, 'services_title', 'Our Services'),
(571, 88, '_services_title', 'field_63e3cdc9d0232'),
(572, 88, 'services_image', '62'),
(573, 88, '_services_image', 'field_63e3cdd8d0233'),
(574, 88, 'item_1_name', 'Lacus Doner dolor dolor'),
(575, 88, '_item_1_name', 'field_63e3d70f6e5d0'),
(576, 88, 'item_1_detail', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the\r\n'),
(577, 88, '_item_1_detail', 'field_63e3d73d6e5d1'),
(578, 88, 'item_1_image', ''),
(579, 88, '_item_1_image', 'field_63e3d7576e5d2'),
(580, 88, 'item_2_name', 'Lacus doner dolro dolro'),
(581, 88, '_item_2_name', 'field_63e3d7746e5d3'),
(582, 88, 'item_2_detail', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the\r\n'),
(583, 88, '_item_2_detail', 'field_63e3d7856e5d4'),
(584, 88, 'item_2_image', ''),
(585, 88, '_item_2_image', 'field_63e3d7956e5d5'),
(586, 88, 'item_3_name', 'Lacus Doner dolor dolor'),
(587, 88, '_item_3_name', 'field_63e3d7b16e5d6'),
(588, 88, 'item_3_detail', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the\r\n'),
(589, 88, '_item_3_detail', 'field_63e3d7bd6e5d7'),
(590, 88, 'item_3_image', ''),
(591, 88, '_item_3_image', 'field_63e3d7cc6e5d8'),
(592, 88, 'services_button_text', 'View All'),
(593, 88, '_services_button_text', 'field_63e3e181671bd'),
(594, 88, 'services_button_link', '#'),
(595, 88, '_services_button_link', 'field_63e3e19e671be'),
(596, 89, '_edit_last', '1'),
(597, 89, '_edit_lock', '1675879893:1'),
(598, 89, '_yoast_wpseo_content_score', '90'),
(599, 89, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(600, 89, '_yoast_wpseo_wordproof_timestamp', ''),
(601, 90, '_edit_last', '1'),
(602, 90, '_edit_lock', '1675879916:1'),
(603, 90, '_yoast_wpseo_content_score', '90'),
(604, 90, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(605, 90, '_yoast_wpseo_wordproof_timestamp', ''),
(606, 91, '_edit_last', '1'),
(607, 91, '_edit_lock', '1675879933:1'),
(608, 91, '_yoast_wpseo_content_score', '90'),
(609, 91, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(610, 91, '_yoast_wpseo_wordproof_timestamp', ''),
(611, 92, '_edit_last', '1'),
(612, 92, '_edit_lock', '1675879965:1'),
(613, 92, '_yoast_wpseo_content_score', '90'),
(614, 92, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(615, 92, '_yoast_wpseo_wordproof_timestamp', ''),
(616, 93, '_wp_attached_file', '2023/02/2-1.png'),
(617, 93, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:378;s:6:\"height\";i:73;s:4:\"file\";s:15:\"2023/02/2-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(618, 94, '_wp_attached_file', '2023/02/face.png'),
(619, 94, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:76;s:6:\"height\";i:90;s:4:\"file\";s:16:\"2023/02/face.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(620, 95, 'banner_title', 'Recapture the Beauty of Self-confidence'),
(621, 95, '_banner_title', 'field_63e3bb382b2bf'),
(622, 95, 'banner_subtitle', 'ALLURE AESTHETIC AND PLASTIC SURGERY LLC'),
(623, 95, '_banner_subtitle', 'field_63e3bb542b2c0'),
(624, 95, 'banner_description', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Inventore accusamus unde expedita fugiat magni natus suscipit perferendis, nobis obcaecati dolor.'),
(625, 95, '_banner_description', 'field_63e3bb632b2c1'),
(626, 95, 'banner_button_text', 'Know More '),
(627, 95, '_banner_button_text', 'field_63e3bbac2b2c2'),
(628, 95, 'banner_button_link', '#'),
(629, 95, '_banner_button_link', 'field_63e3bbbc2b2c3'),
(630, 95, 'banner_bg_image', '39'),
(631, 95, '_banner_bg_image', 'field_63e3bbd22b2c4'),
(632, 95, 'welcome_title', 'Welcome To Allure Aesthetic And Plastic Surgery Llc'),
(633, 95, '_welcome_title', 'field_63e3c29db95ea');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(634, 95, 'welcome_content', 'Percy Lo, MD. Facs is an awarded winning.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been theLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been thePercy Lo, MD. Facs is an awarded winning.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been theLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the\r\nFacs is an awarded winning.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been theLorem Ipsum is simply dummy text of'),
(635, 95, '_welcome_content', 'field_63e3c2b3b95eb'),
(636, 95, 'welcome_button_text', 'Know More'),
(637, 95, '_welcome_button_text', 'field_63e3c2d6b95ec'),
(638, 95, 'welcome_button_link', '#'),
(639, 95, '_welcome_button_link', 'field_63e3c2e5b95ed'),
(640, 95, 'welcome_image', '50'),
(641, 95, '_welcome_image', 'field_63e3c2fab95ee'),
(642, 95, 'why_choose_us_title', 'Why Choose Us?'),
(643, 95, '_why_choose_us_title', 'field_63e3c36bb95f0'),
(644, 95, 'why_choose_us_image', '37'),
(645, 95, '_why_choose_us_image', 'field_63e3c3bbb95f1'),
(646, 95, 'lorem_title', 'Lorem Ipsum Dolor'),
(647, 95, '_lorem_title', 'field_63e3c924be85f'),
(648, 95, 'lorem_content', '<p class=\"loremcont\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the It is a long established fact that a reader will be distracted by The standard chunk of Lorem Ipsum used </p>\r\n<ul class=\"lorem_items\">\r\n<li>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the</li>\r\n<li>Lorem Ipsum is simply dummy text of the printing </li>\r\n<li>It is a long established fact that a reader will be distracted by </li>\r\n<li>There are many variations of passages of Lorem</li>\r\n<li>The standard chunk of Lorem Ipsum used</li>\r\n</ul>\r\n<div claSS=\"statistics\">\r\n<div class=\"stats_item\">\r\n<h2>123+</h2>\r\n<p>Millian Recover in Lorem Ipsum</p>\r\n</div>\r\n<div class=\"stats_item\">\r\n<h2>160+</h2>\r\n<p>Millian Recover in Lorem Ipsum</p>\r\n</div>\r\n<div class=\"stats_item\">\r\n<h2>90+</h2>\r\n<p>Millian Recover in Lorem Ipsum</p>\r\n</div>\r\n</div>'),
(649, 95, '_lorem_content', 'field_63e3c945be860'),
(650, 95, 'lorem_image', '62'),
(651, 95, '_lorem_image', 'field_63e3c959be861'),
(652, 95, 'services_title', 'Our Services'),
(653, 95, '_services_title', 'field_63e3cdc9d0232'),
(654, 95, 'services_image', '62'),
(655, 95, '_services_image', 'field_63e3cdd8d0233'),
(656, 95, 'item_1_name', 'Lacus Doner dolor dolor'),
(657, 95, '_item_1_name', 'field_63e3d70f6e5d0'),
(658, 95, 'item_1_detail', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the\r\n'),
(659, 95, '_item_1_detail', 'field_63e3d73d6e5d1'),
(660, 95, 'item_1_image', '94'),
(661, 95, '_item_1_image', 'field_63e3d7576e5d2'),
(662, 95, 'item_2_name', 'Lacus doner dolro dolro'),
(663, 95, '_item_2_name', 'field_63e3d7746e5d3'),
(664, 95, 'item_2_detail', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the\r\n'),
(665, 95, '_item_2_detail', 'field_63e3d7856e5d4'),
(666, 95, 'item_2_image', ''),
(667, 95, '_item_2_image', 'field_63e3d7956e5d5'),
(668, 95, 'item_3_name', 'Lacus Doner dolor dolor'),
(669, 95, '_item_3_name', 'field_63e3d7b16e5d6'),
(670, 95, 'item_3_detail', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the\r\n'),
(671, 95, '_item_3_detail', 'field_63e3d7bd6e5d7'),
(672, 95, 'item_3_image', ''),
(673, 95, '_item_3_image', 'field_63e3d7cc6e5d8'),
(674, 95, 'services_button_text', 'View All'),
(675, 95, '_services_button_text', 'field_63e3e181671bd'),
(676, 95, 'services_button_link', '#'),
(677, 95, '_services_button_link', 'field_63e3e19e671be'),
(678, 96, '_wp_attached_file', '2023/02/body.png'),
(679, 96, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:80;s:6:\"height\";i:90;s:4:\"file\";s:16:\"2023/02/body.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(680, 97, '_wp_attached_file', '2023/02/body-1.png'),
(681, 97, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:80;s:6:\"height\";i:90;s:4:\"file\";s:18:\"2023/02/body-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(682, 98, '_wp_attached_file', '2023/02/BodyTite.png'),
(683, 98, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:91;s:6:\"height\";i:91;s:4:\"file\";s:20:\"2023/02/BodyTite.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(684, 99, '_wp_attached_file', '2023/02/Breast-Augmentation.png'),
(685, 99, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:94;s:6:\"height\";i:94;s:4:\"file\";s:31:\"2023/02/Breast-Augmentation.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(686, 100, '_wp_attached_file', '2023/02/Breast-Reconstruction.png'),
(687, 100, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:108;s:6:\"height\";i:79;s:4:\"file\";s:33:\"2023/02/Breast-Reconstruction.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(688, 101, '_wp_attached_file', '2023/02/male-face.png'),
(689, 101, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:80;s:6:\"height\";i:90;s:4:\"file\";s:21:\"2023/02/male-face.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(690, 102, 'banner_title', 'Recapture the Beauty of Self-confidence'),
(691, 102, '_banner_title', 'field_63e3bb382b2bf'),
(692, 102, 'banner_subtitle', 'ALLURE AESTHETIC AND PLASTIC SURGERY LLC'),
(693, 102, '_banner_subtitle', 'field_63e3bb542b2c0'),
(694, 102, 'banner_description', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Inventore accusamus unde expedita fugiat magni natus suscipit perferendis, nobis obcaecati dolor.'),
(695, 102, '_banner_description', 'field_63e3bb632b2c1'),
(696, 102, 'banner_button_text', 'Know More '),
(697, 102, '_banner_button_text', 'field_63e3bbac2b2c2'),
(698, 102, 'banner_button_link', '#'),
(699, 102, '_banner_button_link', 'field_63e3bbbc2b2c3'),
(700, 102, 'banner_bg_image', '39'),
(701, 102, '_banner_bg_image', 'field_63e3bbd22b2c4'),
(702, 102, 'welcome_title', 'Welcome To Allure Aesthetic And Plastic Surgery Llc'),
(703, 102, '_welcome_title', 'field_63e3c29db95ea'),
(704, 102, 'welcome_content', 'Percy Lo, MD. Facs is an awarded winning.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been theLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been thePercy Lo, MD. Facs is an awarded winning.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been theLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the\r\nFacs is an awarded winning.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been theLorem Ipsum is simply dummy text of'),
(705, 102, '_welcome_content', 'field_63e3c2b3b95eb'),
(706, 102, 'welcome_button_text', 'Know More'),
(707, 102, '_welcome_button_text', 'field_63e3c2d6b95ec'),
(708, 102, 'welcome_button_link', '#'),
(709, 102, '_welcome_button_link', 'field_63e3c2e5b95ed'),
(710, 102, 'welcome_image', '50'),
(711, 102, '_welcome_image', 'field_63e3c2fab95ee'),
(712, 102, 'why_choose_us_title', 'Why Choose Us?'),
(713, 102, '_why_choose_us_title', 'field_63e3c36bb95f0'),
(714, 102, 'why_choose_us_image', '37'),
(715, 102, '_why_choose_us_image', 'field_63e3c3bbb95f1'),
(716, 102, 'lorem_title', 'Lorem Ipsum Dolor'),
(717, 102, '_lorem_title', 'field_63e3c924be85f'),
(718, 102, 'lorem_content', '<p class=\"loremcont\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the It is a long established fact that a reader will be distracted by The standard chunk of Lorem Ipsum used </p>\r\n<ul class=\"lorem_items\">\r\n<li>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the</li>\r\n<li>Lorem Ipsum is simply dummy text of the printing </li>\r\n<li>It is a long established fact that a reader will be distracted by </li>\r\n<li>There are many variations of passages of Lorem</li>\r\n<li>The standard chunk of Lorem Ipsum used</li>\r\n</ul>\r\n<div claSS=\"statistics\">\r\n<div class=\"stats_item\">\r\n<h2>123+</h2>\r\n<p>Millian Recover in Lorem Ipsum</p>\r\n</div>\r\n<div class=\"stats_item\">\r\n<h2>160+</h2>\r\n<p>Millian Recover in Lorem Ipsum</p>\r\n</div>\r\n<div class=\"stats_item\">\r\n<h2>90+</h2>\r\n<p>Millian Recover in Lorem Ipsum</p>\r\n</div>\r\n</div>'),
(719, 102, '_lorem_content', 'field_63e3c945be860'),
(720, 102, 'lorem_image', '62'),
(721, 102, '_lorem_image', 'field_63e3c959be861'),
(722, 102, 'services_title', 'Our Services'),
(723, 102, '_services_title', 'field_63e3cdc9d0232'),
(724, 102, 'services_image', '62'),
(725, 102, '_services_image', 'field_63e3cdd8d0233'),
(726, 102, 'item_1_name', 'Lacus Doner dolor dolor'),
(727, 102, '_item_1_name', 'field_63e3d70f6e5d0'),
(728, 102, 'item_1_detail', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the\r\n'),
(729, 102, '_item_1_detail', 'field_63e3d73d6e5d1'),
(730, 102, 'item_1_image', '94'),
(731, 102, '_item_1_image', 'field_63e3d7576e5d2'),
(732, 102, 'item_2_name', 'Lacus doner dolro dolro'),
(733, 102, '_item_2_name', 'field_63e3d7746e5d3'),
(734, 102, 'item_2_detail', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the\r\n'),
(735, 102, '_item_2_detail', 'field_63e3d7856e5d4'),
(736, 102, 'item_2_image', '97'),
(737, 102, '_item_2_image', 'field_63e3d7956e5d5'),
(738, 102, 'item_3_name', 'Lacus Doner dolor dolor'),
(739, 102, '_item_3_name', 'field_63e3d7b16e5d6'),
(740, 102, 'item_3_detail', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the\r\n'),
(741, 102, '_item_3_detail', 'field_63e3d7bd6e5d7'),
(742, 102, 'item_3_image', '101'),
(743, 102, '_item_3_image', 'field_63e3d7cc6e5d8'),
(744, 102, 'services_button_text', 'View All'),
(745, 102, '_services_button_text', 'field_63e3e181671bd'),
(746, 102, 'services_button_link', '#'),
(747, 102, '_services_button_link', 'field_63e3e19e671be'),
(748, 82, '_thumbnail_id', '100'),
(749, 103, '_wp_attached_file', '2023/02/Facelift.png'),
(750, 103, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:79;s:6:\"height\";i:94;s:4:\"file\";s:20:\"2023/02/Facelift.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(751, 80, '_thumbnail_id', '103'),
(752, 104, '_wp_attached_file', '2023/02/Mommy-Makeover.png'),
(753, 104, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:85;s:6:\"height\";i:85;s:4:\"file\";s:26:\"2023/02/Mommy-Makeover.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(754, 105, '_wp_attached_file', '2023/02/Tummy-Tuck.png'),
(755, 105, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:71;s:6:\"height\";i:80;s:4:\"file\";s:22:\"2023/02/Tummy-Tuck.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(756, 83, '_thumbnail_id', '104'),
(757, 81, '_thumbnail_id', '105');

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
(1, 1, '2023-02-06 10:08:29', '2023-02-06 10:08:29', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2023-02-06 16:18:39', '2023-02-06 16:18:39', '', 0, 'http://localhost/Interview/?p=1', 0, 'post', '', 1),
(2, 1, '2023-02-06 10:08:29', '2023-02-06 10:08:29', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/Interview/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2023-02-06 16:18:57', '2023-02-06 16:18:57', '', 0, 'http://localhost/Interview/?page_id=2', 0, 'page', '', 0),
(3, 1, '2023-02-06 10:08:29', '2023-02-06 10:08:29', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost/Interview.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'trash', 'closed', 'open', '', 'privacy-policy__trashed', '', '', '2023-02-06 16:18:56', '2023-02-06 16:18:56', '', 0, 'http://localhost/Interview/?page_id=3', 0, 'page', '', 0),
(4, 1, '2023-02-06 10:09:28', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-02-06 10:09:28', '0000-00-00 00:00:00', '', 0, 'http://localhost/Interview/?p=4', 0, 'post', '', 0),
(5, 1, '2023-02-06 13:19:10', '2023-02-06 13:19:10', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"page_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:10:\"front_page\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Homepage Settings', 'homepage-settings', 'trash', 'closed', 'closed', '', 'group_63e0fe2e19769__trashed', '', '', '2023-02-06 13:23:18', '2023-02-06 13:23:18', '', 0, 'http://localhost/Interview/?post_type=acf-field-group&#038;p=5', 0, 'acf-field-group', '', 0),
(6, 1, '2023-02-06 13:22:20', '2023-02-06 13:22:20', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Banner', 'banner', 'trash', 'closed', 'closed', '', 'field_63e0fe54763ca__trashed', '', '', '2023-02-06 13:23:18', '2023-02-06 13:23:18', '', 5, 'http://localhost/Interview/?post_type=acf-field&#038;p=6', 0, 'acf-field', '', 0),
(7, 1, '2023-02-06 13:22:20', '2023-02-06 13:22:20', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Banner Image', 'banner_image', 'trash', 'closed', 'closed', '', 'field_63e0fec9763cb__trashed', '', '', '2023-02-06 13:23:19', '2023-02-06 13:23:19', '', 5, 'http://localhost/Interview/?post_type=acf-field&#038;p=7', 1, 'acf-field', '', 0),
(8, 1, '2023-02-06 16:18:39', '2023-02-06 16:18:39', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2023-02-06 16:18:39', '2023-02-06 16:18:39', '', 1, 'http://localhost/Interview/?p=8', 0, 'revision', '', 0),
(9, 1, '2023-02-06 16:18:56', '2023-02-06 16:18:56', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost/Interview.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2023-02-06 16:18:56', '2023-02-06 16:18:56', '', 3, 'http://localhost/Interview/?p=9', 0, 'revision', '', 0),
(10, 1, '2023-02-06 16:18:57', '2023-02-06 16:18:57', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/Interview/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2023-02-06 16:18:57', '2023-02-06 16:18:57', '', 2, 'http://localhost/Interview/?p=10', 0, 'revision', '', 0),
(11, 1, '2023-02-06 16:19:18', '2023-02-06 16:19:18', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2023-02-09 09:24:04', '2023-02-09 09:24:04', '', 0, 'http://localhost/Interview/?page_id=11', 1, 'page', '', 0),
(12, 1, '2023-02-06 16:19:02', '2023-02-06 16:19:02', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-allure', '', '', '2023-02-06 16:19:02', '2023-02-06 16:19:02', '', 0, 'http://localhost/Interview/2023/02/06/wp-global-styles-allure/', 0, 'wp_global_styles', '', 0),
(13, 1, '2023-02-06 16:19:18', '2023-02-06 16:19:18', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2023-02-06 16:19:18', '2023-02-06 16:19:18', '', 11, 'http://localhost/Interview/?p=13', 0, 'revision', '', 0),
(14, 1, '2023-02-06 16:19:38', '2023-02-06 16:19:38', '', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2023-02-06 16:33:17', '2023-02-06 16:33:17', '', 0, 'http://localhost/Interview/?page_id=14', 2, 'page', '', 0),
(15, 1, '2023-02-06 16:19:38', '2023-02-06 16:19:38', '', 'About', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2023-02-06 16:19:38', '2023-02-06 16:19:38', '', 14, 'http://localhost/Interview/?p=15', 0, 'revision', '', 0),
(16, 1, '2023-02-06 16:19:56', '2023-02-06 16:19:56', '', 'Services', '', 'publish', 'closed', 'closed', '', 'services', '', '', '2023-02-06 16:33:47', '2023-02-06 16:33:47', '', 0, 'http://localhost/Interview/?page_id=16', 3, 'page', '', 0),
(17, 1, '2023-02-06 16:19:56', '2023-02-06 16:19:56', '', 'Services', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2023-02-06 16:19:56', '2023-02-06 16:19:56', '', 16, 'http://localhost/Interview/?p=17', 0, 'revision', '', 0),
(18, 1, '2023-02-06 16:21:57', '2023-02-06 16:21:57', '', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2023-02-06 16:33:38', '2023-02-06 16:33:38', '', 0, 'http://localhost/Interview/?page_id=18', 4, 'page', '', 0),
(19, 1, '2023-02-06 16:21:57', '2023-02-06 16:21:57', '', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2023-02-06 16:21:57', '2023-02-06 16:21:57', '', 18, 'http://localhost/Interview/?p=19', 0, 'revision', '', 0),
(20, 1, '2023-02-06 16:26:49', '2023-02-06 16:26:49', ' ', '', '', 'publish', 'closed', 'closed', '', '20', '', '', '2023-02-06 16:26:49', '2023-02-06 16:26:49', '', 0, 'http://localhost/Interview/?p=20', 1, 'nav_menu_item', '', 0),
(21, 1, '2023-02-06 16:26:49', '2023-02-06 16:26:49', ' ', '', '', 'publish', 'closed', 'closed', '', '21', '', '', '2023-02-06 16:26:49', '2023-02-06 16:26:49', '', 0, 'http://localhost/Interview/?p=21', 2, 'nav_menu_item', '', 0),
(22, 1, '2023-02-06 16:26:50', '2023-02-06 16:26:50', ' ', '', '', 'publish', 'closed', 'closed', '', '22', '', '', '2023-02-06 16:26:50', '2023-02-06 16:26:50', '', 0, 'http://localhost/Interview/?p=22', 4, 'nav_menu_item', '', 0),
(23, 1, '2023-02-06 16:26:50', '2023-02-06 16:26:50', ' ', '', '', 'publish', 'closed', 'closed', '', '23', '', '', '2023-02-06 16:26:50', '2023-02-06 16:26:50', '', 0, 'http://localhost/Interview/?p=23', 3, 'nav_menu_item', '', 0),
(24, 1, '2023-02-07 09:33:32', '2023-02-07 09:33:32', '{\n    \"blogname\": {\n        \"value\": \"Allure Aesthetic & Plastic Surgery\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-07 09:33:32\"\n    },\n    \"blogdescription\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-07 09:33:32\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '359ed0d2-aa2b-40b2-bd96-b9a60530aea6', '', '', '2023-02-07 09:33:32', '2023-02-07 09:33:32', '', 0, 'http://localhost/Interview/2023/02/07/359ed0d2-aa2b-40b2-bd96-b9a60530aea6/', 0, 'customize_changeset', '', 0),
(25, 1, '2023-02-08 15:13:46', '2023-02-08 15:13:46', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"page_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:10:\"front_page\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Homepage Settings', 'homepage-settings', 'publish', 'closed', 'closed', '', 'group_63e3baeba06b9', '', '', '2023-02-08 18:02:36', '2023-02-08 18:02:36', '', 0, 'http://localhost/Interview/?post_type=acf-field-group&#038;p=25', 0, 'acf-field-group', '', 0),
(26, 1, '2023-02-08 15:13:46', '2023-02-08 15:13:46', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Banner', 'banner', 'publish', 'closed', 'closed', '', 'field_63e3bb0b2b2be', '', '', '2023-02-08 15:13:46', '2023-02-08 15:13:46', '', 25, 'http://localhost/Interview/?post_type=acf-field&p=26', 0, 'acf-field', '', 0),
(27, 1, '2023-02-08 15:13:47', '2023-02-08 15:13:47', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Banner Title', 'banner_title', 'publish', 'closed', 'closed', '', 'field_63e3bb382b2bf', '', '', '2023-02-08 15:13:47', '2023-02-08 15:13:47', '', 25, 'http://localhost/Interview/?post_type=acf-field&p=27', 1, 'acf-field', '', 0),
(28, 1, '2023-02-08 15:13:47', '2023-02-08 15:13:47', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Banner Subtitle', 'banner_subtitle', 'publish', 'closed', 'closed', '', 'field_63e3bb542b2c0', '', '', '2023-02-08 15:13:47', '2023-02-08 15:13:47', '', 25, 'http://localhost/Interview/?post_type=acf-field&p=28', 2, 'acf-field', '', 0),
(29, 1, '2023-02-08 15:13:48', '2023-02-08 15:13:48', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Banner Description', 'banner_description', 'publish', 'closed', 'closed', '', 'field_63e3bb632b2c1', '', '', '2023-02-08 15:20:39', '2023-02-08 15:20:39', '', 25, 'http://localhost/Interview/?post_type=acf-field&#038;p=29', 3, 'acf-field', '', 0),
(30, 1, '2023-02-08 15:13:48', '2023-02-08 15:13:48', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Banner Button Text', 'banner_button_text', 'publish', 'closed', 'closed', '', 'field_63e3bbac2b2c2', '', '', '2023-02-08 15:13:48', '2023-02-08 15:13:48', '', 25, 'http://localhost/Interview/?post_type=acf-field&p=30', 4, 'acf-field', '', 0),
(31, 1, '2023-02-08 15:13:48', '2023-02-08 15:13:48', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Banner Button Link', 'banner_button_link', 'publish', 'closed', 'closed', '', 'field_63e3bbbc2b2c3', '', '', '2023-02-08 15:13:48', '2023-02-08 15:13:48', '', 25, 'http://localhost/Interview/?post_type=acf-field&p=31', 5, 'acf-field', '', 0),
(32, 1, '2023-02-08 15:13:48', '2023-02-08 15:13:48', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Banner Bg Image', 'banner_bg_image', 'publish', 'closed', 'closed', '', 'field_63e3bbd22b2c4', '', '', '2023-02-08 15:13:48', '2023-02-08 15:13:48', '', 25, 'http://localhost/Interview/?post_type=acf-field&p=32', 6, 'acf-field', '', 0),
(33, 1, '2023-02-08 15:20:51', '2023-02-08 15:20:51', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2023-02-08 15:20:51', '2023-02-08 15:20:51', '', 11, 'http://localhost/Interview/?p=33', 0, 'revision', '', 0),
(34, 1, '2023-02-08 15:24:18', '2023-02-08 15:24:18', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2023-02-08 15:24:18', '2023-02-08 15:24:18', '', 11, 'http://localhost/Interview/?p=34', 0, 'revision', '', 0),
(35, 1, '2023-02-08 15:24:52', '2023-02-08 15:24:52', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2023-02-08 15:24:52', '2023-02-08 15:24:52', '', 11, 'http://localhost/Interview/?p=35', 0, 'revision', '', 0),
(36, 1, '2023-02-08 15:25:21', '2023-02-08 15:25:21', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2023-02-08 15:25:21', '2023-02-08 15:25:21', '', 11, 'http://localhost/Interview/?p=36', 0, 'revision', '', 0),
(37, 1, '2023-02-08 15:30:31', '2023-02-08 15:30:31', '', '4', '', 'inherit', 'open', 'closed', '', '4', '', '', '2023-02-08 15:30:31', '2023-02-08 15:30:31', '', 11, 'http://localhost/Interview/wp-content/uploads/2023/02/4.jpg', 0, 'attachment', 'image/jpeg', 0),
(38, 1, '2023-02-08 15:31:00', '2023-02-08 15:31:00', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2023-02-08 15:31:00', '2023-02-08 15:31:00', '', 11, 'http://localhost/Interview/?p=38', 0, 'revision', '', 0),
(39, 1, '2023-02-08 15:37:52', '2023-02-08 15:37:52', '', '1', '', 'inherit', 'open', 'closed', '', '1', '', '', '2023-02-08 15:37:52', '2023-02-08 15:37:52', '', 11, 'http://localhost/Interview/wp-content/uploads/2023/02/1.jpg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2023-02-08 15:38:02', '2023-02-08 15:38:02', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2023-02-08 15:38:02', '2023-02-08 15:38:02', '', 11, 'http://localhost/Interview/?p=40', 0, 'revision', '', 0),
(41, 1, '2023-02-08 15:49:29', '2023-02-08 15:49:29', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Welcome Section', 'welcome_section', 'publish', 'closed', 'closed', '', 'field_63e3c242b95e9', '', '', '2023-02-08 15:49:29', '2023-02-08 15:49:29', '', 25, 'http://localhost/Interview/?post_type=acf-field&p=41', 7, 'acf-field', '', 0),
(42, 1, '2023-02-08 15:49:29', '2023-02-08 15:49:29', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Welcome Title', 'welcome_title', 'publish', 'closed', 'closed', '', 'field_63e3c29db95ea', '', '', '2023-02-08 15:49:29', '2023-02-08 15:49:29', '', 25, 'http://localhost/Interview/?post_type=acf-field&p=42', 8, 'acf-field', '', 0),
(43, 1, '2023-02-08 15:49:30', '2023-02-08 15:49:30', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Welcome Content', 'welcome_content', 'publish', 'closed', 'closed', '', 'field_63e3c2b3b95eb', '', '', '2023-02-08 15:49:30', '2023-02-08 15:49:30', '', 25, 'http://localhost/Interview/?post_type=acf-field&p=43', 9, 'acf-field', '', 0),
(44, 1, '2023-02-08 15:49:30', '2023-02-08 15:49:30', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Welcome Button Text', 'welcome_button_text', 'publish', 'closed', 'closed', '', 'field_63e3c2d6b95ec', '', '', '2023-02-08 15:49:30', '2023-02-08 15:49:30', '', 25, 'http://localhost/Interview/?post_type=acf-field&p=44', 10, 'acf-field', '', 0),
(45, 1, '2023-02-08 15:49:30', '2023-02-08 15:49:30', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Welcome Button Link', 'welcome_button_link', 'publish', 'closed', 'closed', '', 'field_63e3c2e5b95ed', '', '', '2023-02-08 15:49:30', '2023-02-08 15:49:30', '', 25, 'http://localhost/Interview/?post_type=acf-field&p=45', 11, 'acf-field', '', 0),
(46, 1, '2023-02-08 15:49:30', '2023-02-08 15:49:30', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Welcome Image', 'welcome_image', 'publish', 'closed', 'closed', '', 'field_63e3c2fab95ee', '', '', '2023-02-08 15:49:30', '2023-02-08 15:49:30', '', 25, 'http://localhost/Interview/?post_type=acf-field&p=46', 12, 'acf-field', '', 0),
(47, 1, '2023-02-08 15:49:30', '2023-02-08 15:49:30', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Why Choose Us Section', 'why_choose_us_section', 'publish', 'closed', 'closed', '', 'field_63e3c345b95ef', '', '', '2023-02-08 15:49:30', '2023-02-08 15:49:30', '', 25, 'http://localhost/Interview/?post_type=acf-field&p=47', 13, 'acf-field', '', 0),
(48, 1, '2023-02-08 15:49:31', '2023-02-08 15:49:31', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Why Choose Us Title', 'why_choose_us_title', 'publish', 'closed', 'closed', '', 'field_63e3c36bb95f0', '', '', '2023-02-08 15:49:31', '2023-02-08 15:49:31', '', 25, 'http://localhost/Interview/?post_type=acf-field&p=48', 14, 'acf-field', '', 0),
(49, 1, '2023-02-08 15:49:31', '2023-02-08 15:49:31', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Why Choose Us Image', 'why_choose_us_image', 'publish', 'closed', 'closed', '', 'field_63e3c3bbb95f1', '', '', '2023-02-08 16:50:14', '2023-02-08 16:50:14', '', 25, 'http://localhost/Interview/?post_type=acf-field&#038;p=49', 15, 'acf-field', '', 0),
(50, 1, '2023-02-08 15:58:15', '2023-02-08 15:58:15', '', '3', '', 'inherit', 'open', 'closed', '', '3', '', '', '2023-02-08 15:58:15', '2023-02-08 15:58:15', '', 11, 'http://localhost/Interview/wp-content/uploads/2023/02/3.jpg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2023-02-08 15:58:26', '2023-02-08 15:58:26', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2023-02-08 15:58:26', '2023-02-08 15:58:26', '', 11, 'http://localhost/Interview/?p=51', 0, 'revision', '', 0),
(52, 1, '2023-02-08 16:06:57', '2023-02-08 16:06:57', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2023-02-08 16:06:57', '2023-02-08 16:06:57', '', 11, 'http://localhost/Interview/?p=52', 0, 'revision', '', 0),
(53, 1, '2023-02-08 16:11:10', '2023-02-08 16:11:10', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Lorem Section', 'lorem_section', 'publish', 'closed', 'closed', '', 'field_63e3c8fbbe85e', '', '', '2023-02-08 17:14:00', '2023-02-08 17:14:00', '', 25, 'http://localhost/Interview/?post_type=acf-field&#038;p=53', 25, 'acf-field', '', 0),
(54, 1, '2023-02-08 16:11:11', '2023-02-08 16:11:11', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Lorem Title', 'lorem_title', 'publish', 'closed', 'closed', '', 'field_63e3c924be85f', '', '', '2023-02-08 17:14:00', '2023-02-08 17:14:00', '', 25, 'http://localhost/Interview/?post_type=acf-field&#038;p=54', 26, 'acf-field', '', 0),
(55, 1, '2023-02-08 16:11:12', '2023-02-08 16:11:12', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Lorem Content', 'lorem_content', 'publish', 'closed', 'closed', '', 'field_63e3c945be860', '', '', '2023-02-08 17:14:00', '2023-02-08 17:14:00', '', 25, 'http://localhost/Interview/?post_type=acf-field&#038;p=55', 27, 'acf-field', '', 0),
(56, 1, '2023-02-08 16:11:12', '2023-02-08 16:11:12', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Lorem Image', 'lorem_image', 'publish', 'closed', 'closed', '', 'field_63e3c959be861', '', '', '2023-02-08 17:14:00', '2023-02-08 17:14:00', '', 25, 'http://localhost/Interview/?post_type=acf-field&#038;p=56', 28, 'acf-field', '', 0),
(57, 1, '2023-02-08 16:18:27', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2023-02-08 16:18:27', '0000-00-00 00:00:00', '', 0, 'http://localhost/Interview/?post_type=testimonial&p=57', 0, 'testimonial', '', 0),
(58, 1, '2023-02-08 16:19:48', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2023-02-08 16:19:48', '0000-00-00 00:00:00', '', 0, 'http://localhost/Interview/?post_type=testimonial&p=58', 0, 'testimonial', '', 0),
(59, 1, '2023-02-08 16:50:14', '2023-02-08 16:50:14', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Services Section', 'services_section', 'publish', 'closed', 'closed', '', 'field_63e3cda4d0231', '', '', '2023-02-08 17:14:01', '2023-02-08 17:14:01', '', 25, 'http://localhost/Interview/?post_type=acf-field&#038;p=59', 29, 'acf-field', '', 0),
(60, 1, '2023-02-08 16:50:15', '2023-02-08 16:50:15', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Services Title', 'services_title', 'publish', 'closed', 'closed', '', 'field_63e3cdc9d0232', '', '', '2023-02-08 17:14:01', '2023-02-08 17:14:01', '', 25, 'http://localhost/Interview/?post_type=acf-field&#038;p=60', 30, 'acf-field', '', 0),
(61, 1, '2023-02-08 16:50:15', '2023-02-08 16:50:15', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Services Image', 'services_image', 'publish', 'closed', 'closed', '', 'field_63e3cdd8d0233', '', '', '2023-02-08 17:14:01', '2023-02-08 17:14:01', '', 25, 'http://localhost/Interview/?post_type=acf-field&#038;p=61', 31, 'acf-field', '', 0),
(62, 1, '2023-02-08 16:56:13', '2023-02-08 16:56:13', '', '5', '', 'inherit', 'open', 'closed', '', '5', '', '', '2023-02-08 16:56:13', '2023-02-08 16:56:13', '', 11, 'http://localhost/Interview/wp-content/uploads/2023/02/5.jpg', 0, 'attachment', 'image/jpeg', 0),
(63, 1, '2023-02-08 16:56:23', '2023-02-08 16:56:23', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2023-02-08 16:56:23', '2023-02-08 16:56:23', '', 11, 'http://localhost/Interview/?p=63', 0, 'revision', '', 0),
(64, 1, '2023-02-08 16:57:04', '2023-02-08 16:57:04', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2023-02-08 16:57:04', '2023-02-08 16:57:04', '', 11, 'http://localhost/Interview/?p=64', 0, 'revision', '', 0),
(65, 1, '2023-02-08 16:57:34', '2023-02-08 16:57:34', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2023-02-08 16:57:34', '2023-02-08 16:57:34', '', 11, 'http://localhost/Interview/?p=65', 0, 'revision', '', 0),
(66, 1, '2023-02-08 17:02:16', '2023-02-08 17:02:16', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2023-02-08 17:02:16', '2023-02-08 17:02:16', '', 11, 'http://localhost/Interview/?p=66', 0, 'revision', '', 0),
(67, 1, '2023-02-08 17:13:57', '2023-02-08 17:13:57', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Item 1 Name', 'item_1_name', 'publish', 'closed', 'closed', '', 'field_63e3d70f6e5d0', '', '', '2023-02-08 17:13:57', '2023-02-08 17:13:57', '', 25, 'http://localhost/Interview/?post_type=acf-field&p=67', 16, 'acf-field', '', 0),
(68, 1, '2023-02-08 17:13:58', '2023-02-08 17:13:58', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Item 1 Detail', 'item_1_detail', 'publish', 'closed', 'closed', '', 'field_63e3d73d6e5d1', '', '', '2023-02-08 17:13:58', '2023-02-08 17:13:58', '', 25, 'http://localhost/Interview/?post_type=acf-field&p=68', 17, 'acf-field', '', 0),
(69, 1, '2023-02-08 17:13:58', '2023-02-08 17:13:58', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Item 1 Image', 'item_1_image', 'publish', 'closed', 'closed', '', 'field_63e3d7576e5d2', '', '', '2023-02-08 17:13:58', '2023-02-08 17:13:58', '', 25, 'http://localhost/Interview/?post_type=acf-field&p=69', 18, 'acf-field', '', 0),
(70, 1, '2023-02-08 17:13:58', '2023-02-08 17:13:58', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Item 2 Name', 'item_2_name', 'publish', 'closed', 'closed', '', 'field_63e3d7746e5d3', '', '', '2023-02-08 17:13:58', '2023-02-08 17:13:58', '', 25, 'http://localhost/Interview/?post_type=acf-field&p=70', 19, 'acf-field', '', 0),
(71, 1, '2023-02-08 17:13:58', '2023-02-08 17:13:58', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Item 2 Detail', 'item_2_detail', 'publish', 'closed', 'closed', '', 'field_63e3d7856e5d4', '', '', '2023-02-08 17:13:58', '2023-02-08 17:13:58', '', 25, 'http://localhost/Interview/?post_type=acf-field&p=71', 20, 'acf-field', '', 0),
(72, 1, '2023-02-08 17:13:59', '2023-02-08 17:13:59', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Item 2 Image', 'item_2_image', 'publish', 'closed', 'closed', '', 'field_63e3d7956e5d5', '', '', '2023-02-08 17:13:59', '2023-02-08 17:13:59', '', 25, 'http://localhost/Interview/?post_type=acf-field&p=72', 21, 'acf-field', '', 0),
(73, 1, '2023-02-08 17:13:59', '2023-02-08 17:13:59', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Item 3 Name', 'item_3_name', 'publish', 'closed', 'closed', '', 'field_63e3d7b16e5d6', '', '', '2023-02-08 17:13:59', '2023-02-08 17:13:59', '', 25, 'http://localhost/Interview/?post_type=acf-field&p=73', 22, 'acf-field', '', 0),
(74, 1, '2023-02-08 17:13:59', '2023-02-08 17:13:59', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Item 3 Detail', 'item_3_detail', 'publish', 'closed', 'closed', '', 'field_63e3d7bd6e5d7', '', '', '2023-02-08 17:13:59', '2023-02-08 17:13:59', '', 25, 'http://localhost/Interview/?post_type=acf-field&p=74', 23, 'acf-field', '', 0),
(75, 1, '2023-02-08 17:13:59', '2023-02-08 17:13:59', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Item 3 Image', 'item_3_image', 'publish', 'closed', 'closed', '', 'field_63e3d7cc6e5d8', '', '', '2023-02-08 17:13:59', '2023-02-08 17:13:59', '', 25, 'http://localhost/Interview/?post_type=acf-field&p=75', 24, 'acf-field', '', 0),
(76, 1, '2023-02-08 17:16:06', '2023-02-08 17:16:06', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2023-02-08 17:16:06', '2023-02-08 17:16:06', '', 11, 'http://localhost/Interview/?p=76', 0, 'revision', '', 0),
(77, 1, '2023-02-08 17:34:51', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-02-08 17:34:51', '0000-00-00 00:00:00', '', 0, 'http://localhost/Interview/?post_type=service&p=77', 0, 'service', '', 0),
(78, 1, '2023-02-08 17:35:29', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-02-08 17:35:29', '0000-00-00 00:00:00', '', 0, 'http://localhost/Interview/?post_type=service&p=78', 0, 'service', '', 0),
(79, 1, '2023-02-08 17:35:40', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2023-02-08 17:35:40', '0000-00-00 00:00:00', '', 0, 'http://localhost/Interview/?post_type=testimonial&p=79', 0, 'testimonial', '', 0),
(80, 1, '2023-02-08 17:38:32', '2023-02-08 17:38:32', 'You might look old because of your...', 'Face Lift', '', 'publish', 'closed', 'closed', '', 'face-lift', '', '', '2023-02-09 09:26:28', '2023-02-09 09:26:28', '', 0, 'http://localhost/Interview/?post_type=service&#038;p=80', 0, 'service', '', 0),
(81, 1, '2023-02-08 17:39:03', '2023-02-08 17:39:03', 'You might look old becuase of your...', 'Tummy Tuck', '', 'publish', 'closed', 'closed', '', 'tummy-tuck', '', '', '2023-02-09 09:27:56', '2023-02-09 09:27:56', '', 0, 'http://localhost/Interview/?post_type=service&#038;p=81', 0, 'service', '', 0),
(82, 1, '2023-02-08 17:39:40', '2023-02-08 17:39:40', 'losing part of your breasts, one breast...', 'Breast Reconstruction', '', 'publish', 'closed', 'closed', '', 'breast-reconstruction', '', '', '2023-02-09 09:25:22', '2023-02-09 09:25:22', '', 0, 'http://localhost/Interview/?post_type=service&#038;p=82', 0, 'service', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(83, 1, '2023-02-08 17:40:23', '2023-02-08 17:40:23', 'After giving birth to one a few...', 'Mommy Makeover Reconstruction', '', 'publish', 'closed', 'closed', '', 'mommy-makeover-reconstruction', '', '', '2023-02-09 09:27:41', '2023-02-09 09:27:41', '', 0, 'http://localhost/Interview/?post_type=service&#038;p=83', 0, 'service', '', 0),
(84, 1, '2023-02-08 17:55:02', '2023-02-08 17:55:02', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Services Button Text', 'services_button_text', 'publish', 'closed', 'closed', '', 'field_63e3e181671bd', '', '', '2023-02-08 17:55:02', '2023-02-08 17:55:02', '', 25, 'http://localhost/Interview/?post_type=acf-field&p=84', 32, 'acf-field', '', 0),
(85, 1, '2023-02-08 17:55:03', '2023-02-08 17:55:03', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Services Button Link', 'services_button_link', 'publish', 'closed', 'closed', '', 'field_63e3e19e671be', '', '', '2023-02-08 17:55:03', '2023-02-08 17:55:03', '', 25, 'http://localhost/Interview/?post_type=acf-field&p=85', 33, 'acf-field', '', 0),
(86, 1, '2023-02-08 17:59:16', '2023-02-08 17:59:16', '', 'woomn', '', 'inherit', 'open', 'closed', '', 'woomn', '', '', '2023-02-08 17:59:16', '2023-02-08 17:59:16', '', 11, 'http://localhost/Interview/wp-content/uploads/2023/02/woomn-1.png', 0, 'attachment', 'image/png', 0),
(87, 1, '2023-02-08 17:59:28', '2023-02-08 17:59:28', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2023-02-08 17:59:28', '2023-02-08 17:59:28', '', 11, 'http://localhost/Interview/?p=87', 0, 'revision', '', 0),
(88, 1, '2023-02-08 18:05:36', '2023-02-08 18:05:36', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2023-02-08 18:05:36', '2023-02-08 18:05:36', '', 11, 'http://localhost/Interview/?p=88', 0, 'revision', '', 0),
(89, 1, '2023-02-08 18:13:39', '2023-02-08 18:13:39', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam alias iste temporibus vero deleniti impedit perspiciatis hic qui labore distinctio officia, harum mollitia cumque quidem incidunt magnam architecto praesentium excepturi.\r\n\r\n', 'Debbie D.', '', 'publish', 'open', 'closed', '', 'debbie-d', '', '', '2023-02-08 18:13:39', '2023-02-08 18:13:39', '', 0, 'http://localhost/Interview/?post_type=testimonial&#038;p=89', 0, 'testimonial', '', 0),
(90, 1, '2023-02-08 18:14:12', '2023-02-08 18:14:12', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam alias iste temporibus vero deleniti impedit perspiciatis hic qui labore distinctio officia, harum mollitia cumque quidem incidunt magnam architecto praesentium excepturi.\r\n\r\n', 'Maria M.', '', 'publish', 'open', 'closed', '', 'maria-m', '', '', '2023-02-08 18:14:12', '2023-02-08 18:14:12', '', 0, 'http://localhost/Interview/?post_type=testimonial&#038;p=90', 0, 'testimonial', '', 0),
(91, 1, '2023-02-08 18:14:31', '2023-02-08 18:14:31', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam alias iste temporibus vero deleniti impedit perspiciatis hic qui labore distinctio officia, harum mollitia cumque quidem incidunt magnam architecto praesentium excepturi.\r\n\r\n', 'Frenkel F.', '', 'publish', 'open', 'closed', '', 'frenkel-f', '', '', '2023-02-08 18:14:31', '2023-02-08 18:14:31', '', 0, 'http://localhost/Interview/?post_type=testimonial&#038;p=91', 0, 'testimonial', '', 0),
(92, 1, '2023-02-08 18:14:52', '2023-02-08 18:14:52', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam alias iste temporibus vero deleniti impedit perspiciatis hic qui labore distinctio officia, harum mollitia cumque quidem incidunt magnam architecto praesentium excepturi.\r\n\r\n', 'Freddie F.', '', 'publish', 'open', 'closed', '', 'freddie-f', '', '', '2023-02-08 18:14:52', '2023-02-08 18:14:52', '', 0, 'http://localhost/Interview/?post_type=testimonial&#038;p=92', 0, 'testimonial', '', 0),
(93, 1, '2023-02-08 19:12:38', '2023-02-08 19:12:38', '', '2-1', '', 'inherit', 'open', 'closed', '', '2-1', '', '', '2023-02-08 19:12:38', '2023-02-08 19:12:38', '', 0, 'http://localhost/Interview/wp-content/uploads/2023/02/2-1.png', 0, 'attachment', 'image/png', 0),
(94, 1, '2023-02-09 09:21:52', '2023-02-09 09:21:52', '', 'face', '', 'inherit', 'open', 'closed', '', 'face', '', '', '2023-02-09 09:21:52', '2023-02-09 09:21:52', '', 11, 'http://localhost/Interview/wp-content/uploads/2023/02/face.png', 0, 'attachment', 'image/png', 0),
(95, 1, '2023-02-09 09:22:08', '2023-02-09 09:22:08', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2023-02-09 09:22:08', '2023-02-09 09:22:08', '', 11, 'http://localhost/Interview/?p=95', 0, 'revision', '', 0),
(96, 1, '2023-02-09 09:23:15', '2023-02-09 09:23:15', '', 'body', '', 'inherit', 'open', 'closed', '', 'body', '', '', '2023-02-09 09:23:15', '2023-02-09 09:23:15', '', 11, 'http://localhost/Interview/wp-content/uploads/2023/02/body.png', 0, 'attachment', 'image/png', 0),
(97, 1, '2023-02-09 09:23:16', '2023-02-09 09:23:16', '', 'body-1', '', 'inherit', 'open', 'closed', '', 'body-1', '', '', '2023-02-09 09:23:16', '2023-02-09 09:23:16', '', 11, 'http://localhost/Interview/wp-content/uploads/2023/02/body-1.png', 0, 'attachment', 'image/png', 0),
(98, 1, '2023-02-09 09:23:17', '2023-02-09 09:23:17', '', 'BodyTite', '', 'inherit', 'open', 'closed', '', 'bodytite', '', '', '2023-02-09 09:23:17', '2023-02-09 09:23:17', '', 11, 'http://localhost/Interview/wp-content/uploads/2023/02/BodyTite.png', 0, 'attachment', 'image/png', 0),
(99, 1, '2023-02-09 09:23:19', '2023-02-09 09:23:19', '', 'Breast Augmentation', '', 'inherit', 'open', 'closed', '', 'breast-augmentation', '', '', '2023-02-09 09:23:19', '2023-02-09 09:23:19', '', 11, 'http://localhost/Interview/wp-content/uploads/2023/02/Breast-Augmentation.png', 0, 'attachment', 'image/png', 0),
(100, 1, '2023-02-09 09:23:20', '2023-02-09 09:23:20', '', 'Breast Reconstruction', '', 'inherit', 'open', 'closed', '', 'breast-reconstruction-2', '', '', '2023-02-09 09:23:20', '2023-02-09 09:23:20', '', 11, 'http://localhost/Interview/wp-content/uploads/2023/02/Breast-Reconstruction.png', 0, 'attachment', 'image/png', 0),
(101, 1, '2023-02-09 09:23:52', '2023-02-09 09:23:52', '', 'male face', '', 'inherit', 'open', 'closed', '', 'male-face', '', '', '2023-02-09 09:23:52', '2023-02-09 09:23:52', '', 11, 'http://localhost/Interview/wp-content/uploads/2023/02/male-face.png', 0, 'attachment', 'image/png', 0),
(102, 1, '2023-02-09 09:24:04', '2023-02-09 09:24:04', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2023-02-09 09:24:04', '2023-02-09 09:24:04', '', 11, 'http://localhost/Interview/?p=102', 0, 'revision', '', 0),
(103, 1, '2023-02-09 09:26:21', '2023-02-09 09:26:21', '', 'Facelift', '', 'inherit', 'open', 'closed', '', 'facelift', '', '', '2023-02-09 09:26:21', '2023-02-09 09:26:21', '', 80, 'http://localhost/Interview/wp-content/uploads/2023/02/Facelift.png', 0, 'attachment', 'image/png', 0),
(104, 1, '2023-02-09 09:27:18', '2023-02-09 09:27:18', '', 'Mommy Makeover', '', 'inherit', 'open', 'closed', '', 'mommy-makeover', '', '', '2023-02-09 09:27:18', '2023-02-09 09:27:18', '', 83, 'http://localhost/Interview/wp-content/uploads/2023/02/Mommy-Makeover.png', 0, 'attachment', 'image/png', 0),
(105, 1, '2023-02-09 09:27:33', '2023-02-09 09:27:33', '', 'Tummy Tuck', '', 'inherit', 'open', 'closed', '', 'tummy-tuck-2', '', '', '2023-02-09 09:27:33', '2023-02-09 09:27:33', '', 83, 'http://localhost/Interview/wp-content/uploads/2023/02/Tummy-Tuck.png', 0, 'attachment', 'image/png', 0);

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
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'allure', 'allure', 0),
(3, 'Header Menu', 'header-menu', 0);

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
(12, 2, 0),
(20, 3, 0),
(21, 3, 0),
(22, 3, 0),
(23, 3, 0);

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
(1, 1, 'category', '', 0, 0),
(2, 2, 'wp_theme', '', 0, 1),
(3, 3, 'nav_menu', '', 0, 4);

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
(1, 1, 'nickname', 'admin'),
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
(16, 1, 'session_tokens', 'a:7:{s:64:\"9eeb786ca27706ec462462856c99a69c804e18ef9ca686a89d179dcc59e4163d\";a:4:{s:10:\"expiration\";i:1675934392;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36\";s:5:\"login\";i:1675761592;}s:64:\"da9fe00b760b9e5bd5e1b045e6713c64806d031067bd837235400721b15bb39d\";a:4:{s:10:\"expiration\";i:1675954563;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36\";s:5:\"login\";i:1675781763;}s:64:\"5e72f10d114bcb751e211389849932cf9eedfe4d099c8e2075bef568a5ba7b7b\";a:4:{s:10:\"expiration\";i:1675966729;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36\";s:5:\"login\";i:1675793929;}s:64:\"1938b0a67c3bb833edbd657d5e0525dccb9195b9d831e22696f3b358842f78b7\";a:4:{s:10:\"expiration\";i:1675966996;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36\";s:5:\"login\";i:1675794196;}s:64:\"6927025de5b7bd371b633b16425905caadda8d8b0e44570dab002d34d0f0c1e2\";a:4:{s:10:\"expiration\";i:1675968723;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36\";s:5:\"login\";i:1675795923;}s:64:\"ba32bd2e66603551fbe8dd859378c2fd638cd494379550d0b1670133ad18dcf8\";a:4:{s:10:\"expiration\";i:1676041290;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36\";s:5:\"login\";i:1675868490;}s:64:\"b029c9d1835aab9a52ff1d4c25d8a1c73e45a4ffc7f3918af6b91530ec33e0bc\";a:4:{s:10:\"expiration\";i:1676107003;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36\";s:5:\"login\";i:1675934203;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(20, 1, 'wp_yoast_notifications', 'a:1:{i:0;a:2:{s:7:\"message\";O:61:\"Yoast\\WP\\SEO\\Presenters\\Admin\\Indexing_Notification_Presenter\":3:{s:18:\"\0*\0total_unindexed\";i:16;s:9:\"\0*\0reason\";s:13:\"first_install\";s:20:\"\0*\0short_link_helper\";O:38:\"Yoast\\WP\\SEO\\Helpers\\Short_Link_Helper\":2:{s:17:\"\0*\0options_helper\";O:35:\"Yoast\\WP\\SEO\\Helpers\\Options_Helper\":0:{}s:17:\"\0*\0product_helper\";O:35:\"Yoast\\WP\\SEO\\Helpers\\Product_Helper\":0:{}}}s:7:\"options\";a:10:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:13:\"wpseo-reindex\";s:4:\"user\";O:7:\"WP_User\":8:{s:4:\"data\";O:8:\"stdClass\":10:{s:2:\"ID\";s:1:\"1\";s:10:\"user_login\";s:5:\"admin\";s:9:\"user_pass\";s:34:\"$P$BhB4fLzppQXFRRYPdouyTskweirwdG0\";s:13:\"user_nicename\";s:5:\"admin\";s:10:\"user_email\";s:22:\"mohdmonis772@gmail.com\";s:8:\"user_url\";s:26:\"http://localhost/Interview\";s:15:\"user_registered\";s:19:\"2023-02-06 10:08:28\";s:19:\"user_activation_key\";s:0:\"\";s:11:\"user_status\";s:1:\"0\";s:12:\"display_name\";s:5:\"admin\";}s:2:\"ID\";i:1;s:4:\"caps\";a:1:{s:13:\"administrator\";b:1;}s:7:\"cap_key\";s:15:\"wp_capabilities\";s:5:\"roles\";a:1:{i:0;s:13:\"administrator\";}s:7:\"allcaps\";a:63:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:20:\"wpseo_manage_options\";b:1;s:13:\"administrator\";b:1;}s:6:\"filter\";N;s:16:\"\0WP_User\0site_id\";i:1;}s:5:\"nonce\";N;s:8:\"priority\";d:0.8;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}}'),
(21, 1, 'meta-box-order_page', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:23:\"submitdiv,pageparentdiv\";s:6:\"normal\";s:81:\"acf-group_63e3baeba06b9,wpseo_meta,commentstatusdiv,commentsdiv,slugdiv,authordiv\";s:8:\"advanced\";s:0:\"\";}'),
(22, 1, 'screen_layout_page', '2'),
(23, 1, 'wp_user-settings', 'libraryContent=browse&editor=html'),
(24, 1, 'wp_user-settings-time', '1675879171'),
(25, 1, 'nav_menu_recently_edited', '3'),
(26, 1, 'closedpostboxes_testimonial', 'a:1:{i:0;s:10:\"wpseo_meta\";}'),
(27, 1, 'metaboxhidden_testimonial', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(28, 1, 'closedpostboxes_service', 'a:1:{i:0;s:10:\"wpseo_meta\";}'),
(29, 1, 'metaboxhidden_service', 'a:1:{i:0;s:7:\"slugdiv\";}');

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
(1, 'admin', '$P$BhB4fLzppQXFRRYPdouyTskweirwdG0', 'admin', 'mohdmonis772@gmail.com', 'http://localhost/Interview', '2023-02-06 10:08:28', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `wp_yoast_indexable`
--

CREATE TABLE `wp_yoast_indexable` (
  `id` int(11) UNSIGNED NOT NULL,
  `permalink` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permalink_hash` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_type` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `object_sub_type` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_id` bigint(20) DEFAULT NULL,
  `post_parent` bigint(20) DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `breadcrumb_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_public` tinyint(1) DEFAULT NULL,
  `is_protected` tinyint(1) DEFAULT 0,
  `has_public_posts` tinyint(1) DEFAULT NULL,
  `number_of_pages` int(11) UNSIGNED DEFAULT NULL,
  `canonical` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `primary_focus_keyword` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `primary_focus_keyword_score` int(3) DEFAULT NULL,
  `readability_score` int(3) DEFAULT NULL,
  `is_cornerstone` tinyint(1) DEFAULT 0,
  `is_robots_noindex` tinyint(1) DEFAULT 0,
  `is_robots_nofollow` tinyint(1) DEFAULT 0,
  `is_robots_noarchive` tinyint(1) DEFAULT 0,
  `is_robots_noimageindex` tinyint(1) DEFAULT 0,
  `is_robots_nosnippet` tinyint(1) DEFAULT 0,
  `twitter_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_image` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_image_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_image_source` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_graph_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_graph_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_graph_image` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_graph_image_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_graph_image_source` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_graph_image_meta` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_count` int(11) DEFAULT NULL,
  `incoming_link_count` int(11) DEFAULT NULL,
  `prominent_words_version` int(11) UNSIGNED DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `blog_id` bigint(20) NOT NULL DEFAULT 1,
  `language` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schema_page_type` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schema_article_type` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `has_ancestors` tinyint(1) DEFAULT 0,
  `estimated_reading_time_minutes` int(11) DEFAULT NULL,
  `version` int(11) DEFAULT 1,
  `object_last_modified` datetime DEFAULT NULL,
  `object_published_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_yoast_indexable`
--

INSERT INTO `wp_yoast_indexable` (`id`, `permalink`, `permalink_hash`, `object_id`, `object_type`, `object_sub_type`, `author_id`, `post_parent`, `title`, `description`, `breadcrumb_title`, `post_status`, `is_public`, `is_protected`, `has_public_posts`, `number_of_pages`, `canonical`, `primary_focus_keyword`, `primary_focus_keyword_score`, `readability_score`, `is_cornerstone`, `is_robots_noindex`, `is_robots_nofollow`, `is_robots_noarchive`, `is_robots_noimageindex`, `is_robots_nosnippet`, `twitter_title`, `twitter_image`, `twitter_description`, `twitter_image_id`, `twitter_image_source`, `open_graph_title`, `open_graph_description`, `open_graph_image`, `open_graph_image_id`, `open_graph_image_source`, `open_graph_image_meta`, `link_count`, `incoming_link_count`, `prominent_words_version`, `created_at`, `updated_at`, `blog_id`, `language`, `region`, `schema_page_type`, `schema_article_type`, `has_ancestors`, `estimated_reading_time_minutes`, `version`, `object_last_modified`, `object_published_at`) VALUES
(1, 'http://localhost/Interview/author/admin/', '40:ea01e8c3f89c6b7810e72243a545b131', 1, 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'https://0.gravatar.com/avatar/924457d4a244e4335aaede0514b870f1?s=500&d=mm&r=g', NULL, NULL, 'gravatar-image', NULL, NULL, 'https://0.gravatar.com/avatar/924457d4a244e4335aaede0514b870f1?s=500&d=mm&r=g', NULL, 'gravatar-image', NULL, NULL, NULL, NULL, '2023-02-07 09:31:09', '2023-02-09 03:57:57', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-02-09 09:27:56', '2023-02-06 16:19:02'),
(2, 'http://localhost/Interview/', '27:a389318a8809b6dc4d467aa120b50ce8', 11, 'post', 'page', 1, 0, NULL, NULL, 'Home', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-02-07 09:31:09', '2023-02-09 03:54:07', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2023-02-09 09:24:04', '2023-02-06 16:19:18'),
(3, 'http://localhost/Interview/about/', '33:cb7d37f7a539210269ca5ddca4f6c005', 14, 'post', 'page', 1, 0, NULL, NULL, 'About', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-02-07 09:31:09', '2023-02-08 09:31:35', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-02-06 16:33:17', '2023-02-06 16:19:38'),
(4, 'http://localhost/Interview/services/', '36:20e12eb4ac09e2148029d68964826780', 16, 'post', 'page', 1, 0, NULL, NULL, 'Services', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-02-07 09:31:09', '2023-02-08 09:31:35', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-02-06 16:33:47', '2023-02-06 16:19:56'),
(5, 'http://localhost/Interview/contact-us/', '38:9c80d5a23d233671f9c900f0569de4cd', 18, 'post', 'page', 1, 0, NULL, NULL, 'Contact Us', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-02-07 09:31:09', '2023-02-08 09:31:35', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-02-06 16:33:38', '2023-02-06 16:21:57'),
(6, 'http://localhost/Interview/?page_id=2', '37:ec0e2ddb9aa396358dbf633f9157b688', 2, 'post', 'page', 1, 0, NULL, NULL, 'Sample Page', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-07 09:31:09', '2023-02-08 09:31:35', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-02-06 16:18:57', '2023-02-06 10:08:29'),
(7, 'http://localhost/Interview/?page_id=3', '37:de036c69aaf494414344d63638e2b541', 3, 'post', 'page', 1, 0, NULL, NULL, 'Privacy Policy', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-07 09:31:09', '2023-02-08 09:31:35', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-02-06 16:18:56', '2023-02-06 10:08:29'),
(8, 'http://localhost/Interview/?p=1', '31:3370cc0bf8a6379717ba4f45c00b6e46', 1, 'post', 'post', 1, 0, NULL, NULL, 'Hello world!', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-07 09:31:09', '2023-02-08 09:31:36', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-02-06 16:18:39', '2023-02-06 10:08:29'),
(9, 'http://localhost/Interview/category/uncategorized/', '50:508d4ff74cd7ed14bd2bfe69d9d66ecd', 1, 'term', 'category', NULL, NULL, NULL, NULL, 'Uncategorized', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-02-07 09:31:10', '2023-02-08 09:31:37', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, NULL, NULL),
(10, NULL, NULL, NULL, 'system-page', '404', NULL, NULL, 'Page not found %%sep%% %%sitename%%', NULL, 'Error 404: Page not found', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-07 09:31:10', '2023-02-08 09:31:32', 1, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL),
(11, NULL, NULL, NULL, 'system-page', 'search-result', NULL, NULL, 'You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-07 09:31:10', '2023-02-08 09:31:32', 1, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL),
(12, NULL, NULL, NULL, 'date-archive', NULL, NULL, NULL, '%%date%% %%page%% %%sep%% %%sitename%%', '', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-07 09:31:10', '2023-02-08 09:31:32', 1, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL),
(13, 'http://localhost/Interview/', '27:a389318a8809b6dc4d467aa120b50ce8', NULL, 'home-page', NULL, NULL, NULL, '%%sitename%% %%page%% %%sep%% %%sitedesc%%', '', 'Home', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '%%sitename%%', '', '', '0', NULL, NULL, NULL, NULL, NULL, '2023-02-07 09:31:47', '2023-02-09 03:57:57', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-02-09 09:27:56', NULL),
(14, NULL, NULL, 24, 'post', 'customize_changeset', 1, 0, NULL, NULL, '', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-07 09:33:33', '2023-02-08 15:01:24', 1, NULL, NULL, NULL, NULL, 0, NULL, 0, '2023-02-07 09:33:32', '2023-02-07 09:33:32'),
(15, 'http://localhost/Interview/?post_type=acf-field-group&p=25', '58:ba5ce014df908aed01a6187104d805fa', 25, 'post', 'acf-field-group', 1, 0, NULL, NULL, 'Homepage Settings', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-02-08 15:13:46', '2023-02-08 12:32:36', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-02-08 18:02:36', '2023-02-08 15:13:46'),
(16, 'http://localhost/Interview/?post_type=acf-field&p=26', '52:ec27abb56b02527d1701b4cfe0587126', 26, 'post', 'acf-field', 1, 25, NULL, NULL, 'Banner', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-02-08 15:13:46', '2023-02-08 09:43:47', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2023-02-08 15:13:46', '2023-02-08 15:13:46'),
(17, 'http://localhost/Interview/?post_type=acf-field&p=27', '52:f81b6cb54027df9c1c156c6d4ffadef9', 27, 'post', 'acf-field', 1, 25, NULL, NULL, 'Banner Title', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-02-08 15:13:47', '2023-02-08 09:43:47', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-02-08 15:13:47', '2023-02-08 15:13:47'),
(18, 'http://localhost/Interview/?post_type=acf-field&p=28', '52:9cc58c111227744eab1c8fa6faa05041', 28, 'post', 'acf-field', 1, 25, NULL, NULL, 'Banner Subtitle', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-02-08 15:13:47', '2023-02-08 09:43:48', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-02-08 15:13:47', '2023-02-08 15:13:47'),
(19, 'http://localhost/Interview/?post_type=acf-field&p=29', '52:ebdd5c09255e5099ebc6839dc412aa6c', 29, 'post', 'acf-field', 1, 25, NULL, NULL, 'Banner Description', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-02-08 15:13:48', '2023-02-08 09:50:39', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2023-02-08 15:20:39', '2023-02-08 15:13:48'),
(20, 'http://localhost/Interview/?post_type=acf-field&p=30', '52:d603514a8abbbb00affec79782a8e371', 30, 'post', 'acf-field', 1, 25, NULL, NULL, 'Banner Button Text', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-02-08 15:13:48', '2023-02-08 09:43:48', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-02-08 15:13:48', '2023-02-08 15:13:48'),
(21, 'http://localhost/Interview/?post_type=acf-field&p=31', '52:cd52f6761dc0da96bb6b91214953dd39', 31, 'post', 'acf-field', 1, 25, NULL, NULL, 'Banner Button Link', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-02-08 15:13:48', '2023-02-08 09:43:48', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-02-08 15:13:48', '2023-02-08 15:13:48'),
(22, 'http://localhost/Interview/?post_type=acf-field&p=32', '52:56024491ff7fec50d3f278882b4756f4', 32, 'post', 'acf-field', 1, 25, NULL, NULL, 'Banner Bg Image', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-02-08 15:13:49', '2023-02-08 09:43:49', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-02-08 15:13:48', '2023-02-08 15:13:48'),
(23, 'http://localhost/Interview/wp-content/uploads/2023/02/4.jpg', '59:5c48d955b514a35a28da80f45bc65a9a', 37, 'post', 'attachment', 1, 11, NULL, NULL, '4', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/Interview/wp-content/uploads/2023/02/4.jpg', NULL, '37', 'attachment-image', NULL, NULL, NULL, '37', 'attachment-image', NULL, NULL, NULL, NULL, '2023-02-08 15:30:31', '2023-02-08 10:00:31', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2023-02-08 15:30:31', '2023-02-08 15:30:31'),
(24, 'http://localhost/Interview/wp-content/uploads/2023/02/1.jpg', '59:05c8441ac346bf786f09f5fecbfcc659', 39, 'post', 'attachment', 1, 11, NULL, NULL, '1', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/Interview/wp-content/uploads/2023/02/1.jpg', NULL, '39', 'attachment-image', NULL, NULL, NULL, '39', 'attachment-image', NULL, NULL, NULL, NULL, '2023-02-08 15:37:53', '2023-02-08 10:07:53', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2023-02-08 15:37:52', '2023-02-08 15:37:52'),
(25, 'http://localhost/Interview/?post_type=acf-field&p=41', '52:81df25d0ad3a75ea0ac8329b52ad3d33', 41, 'post', 'acf-field', 1, 25, NULL, NULL, 'Welcome Section', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-02-08 15:49:29', '2023-02-08 10:19:29', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2023-02-08 15:49:29', '2023-02-08 15:49:29'),
(26, 'http://localhost/Interview/?post_type=acf-field&p=42', '52:7d5ec7e02136304eb0b7af68bd1a3b40', 42, 'post', 'acf-field', 1, 25, NULL, NULL, 'Welcome Title', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-02-08 15:49:30', '2023-02-08 10:19:30', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-02-08 15:49:29', '2023-02-08 15:49:29'),
(27, 'http://localhost/Interview/?post_type=acf-field&p=43', '52:504f0c722e77bfc354f61cd9ca1afc08', 43, 'post', 'acf-field', 1, 25, NULL, NULL, 'Welcome Content', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-02-08 15:49:30', '2023-02-08 10:19:30', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-02-08 15:49:30', '2023-02-08 15:49:30'),
(28, 'http://localhost/Interview/?post_type=acf-field&p=44', '52:d10220d4e34449c4e637727618793753', 44, 'post', 'acf-field', 1, 25, NULL, NULL, 'Welcome Button Text', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-02-08 15:49:30', '2023-02-08 10:19:30', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-02-08 15:49:30', '2023-02-08 15:49:30'),
(29, 'http://localhost/Interview/?post_type=acf-field&p=45', '52:995009e416899c299d4bfd311c92d970', 45, 'post', 'acf-field', 1, 25, NULL, NULL, 'Welcome Button Link', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-02-08 15:49:30', '2023-02-08 10:19:30', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-02-08 15:49:30', '2023-02-08 15:49:30'),
(30, 'http://localhost/Interview/?post_type=acf-field&p=46', '52:251b5e832d433b43be0ac12b5369e76a', 46, 'post', 'acf-field', 1, 25, NULL, NULL, 'Welcome Image', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-02-08 15:49:30', '2023-02-08 10:19:30', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-02-08 15:49:30', '2023-02-08 15:49:30'),
(31, 'http://localhost/Interview/?post_type=acf-field&p=47', '52:438d6c55bb85b9aa2290784304dadbf9', 47, 'post', 'acf-field', 1, 25, NULL, NULL, 'Why Choose Us Section', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-02-08 15:49:31', '2023-02-08 10:19:31', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-02-08 15:49:30', '2023-02-08 15:49:30'),
(32, 'http://localhost/Interview/?post_type=acf-field&p=48', '52:9398a16bd15919e87a9cb92a91d80e87', 48, 'post', 'acf-field', 1, 25, NULL, NULL, 'Why Choose Us Title', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-02-08 15:49:31', '2023-02-08 10:19:31', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-02-08 15:49:31', '2023-02-08 15:49:31'),
(33, 'http://localhost/Interview/?post_type=acf-field&p=49', '52:6072532912f6b834899ed5bcbf28074c', 49, 'post', 'acf-field', 1, 25, NULL, NULL, 'Why Choose Us Image', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-02-08 15:49:31', '2023-02-08 11:20:14', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2023-02-08 16:50:14', '2023-02-08 15:49:31'),
(34, 'http://localhost/Interview/wp-content/uploads/2023/02/3.jpg', '59:83298d66aee0035e7793333c24a957e8', 50, 'post', 'attachment', 1, 11, NULL, NULL, '3', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/Interview/wp-content/uploads/2023/02/3.jpg', NULL, '50', 'attachment-image', NULL, NULL, NULL, '50', 'attachment-image', NULL, NULL, NULL, NULL, '2023-02-08 15:58:15', '2023-02-08 10:28:15', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2023-02-08 15:58:15', '2023-02-08 15:58:15'),
(35, 'http://localhost/Interview/?post_type=acf-field&p=53', '52:efa05e0d0022a37bffbf14326b86f7fd', 53, 'post', 'acf-field', 1, 25, NULL, NULL, 'Lorem Section', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-02-08 16:11:11', '2023-02-08 11:44:00', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2023-02-08 17:14:00', '2023-02-08 16:11:10'),
(36, 'http://localhost/Interview/?post_type=acf-field&p=54', '52:dd2e4eff448040c91449bea1701262c2', 54, 'post', 'acf-field', 1, 25, NULL, NULL, 'Lorem Title', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-02-08 16:11:11', '2023-02-08 11:44:00', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2023-02-08 17:14:00', '2023-02-08 16:11:11'),
(37, 'http://localhost/Interview/?post_type=acf-field&p=55', '52:679acb0fa052beb227bbc2ab340d68c6', 55, 'post', 'acf-field', 1, 25, NULL, NULL, 'Lorem Content', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-02-08 16:11:12', '2023-02-08 11:44:00', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2023-02-08 17:14:00', '2023-02-08 16:11:12'),
(38, 'http://localhost/Interview/?post_type=acf-field&p=56', '52:b9152661cff8a94841074361b42e84ae', 56, 'post', 'acf-field', 1, 25, NULL, NULL, 'Lorem Image', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-02-08 16:11:12', '2023-02-08 11:44:01', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2023-02-08 17:14:00', '2023-02-08 16:11:12'),
(39, 'http://localhost/Interview/?post_type=acf-field&p=59', '52:c7dbe721928cc9ef0c512760e4cd02bd', 59, 'post', 'acf-field', 1, 25, NULL, NULL, 'Services Section', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-02-08 16:50:14', '2023-02-08 11:44:01', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2023-02-08 17:14:01', '2023-02-08 16:50:14'),
(40, 'http://localhost/Interview/?post_type=acf-field&p=60', '52:a3516e70f43797485e5813310130d4b0', 60, 'post', 'acf-field', 1, 25, NULL, NULL, 'Services Title', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-02-08 16:50:15', '2023-02-08 11:44:01', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2023-02-08 17:14:01', '2023-02-08 16:50:15'),
(41, 'http://localhost/Interview/?post_type=acf-field&p=61', '52:e1d966d1373f6d09ee886fc71645557b', 61, 'post', 'acf-field', 1, 25, NULL, NULL, 'Services Image', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-02-08 16:50:15', '2023-02-08 11:44:01', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2023-02-08 17:14:01', '2023-02-08 16:50:15'),
(42, 'http://localhost/Interview/wp-content/uploads/2023/02/5.jpg', '59:88f4d607d88f51417f7dab8039e3eae1', 62, 'post', 'attachment', 1, 11, NULL, NULL, '5', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/Interview/wp-content/uploads/2023/02/5.jpg', NULL, '62', 'attachment-image', NULL, NULL, NULL, '62', 'attachment-image', NULL, NULL, NULL, NULL, '2023-02-08 16:56:13', '2023-02-08 11:26:13', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2023-02-08 16:56:13', '2023-02-08 16:56:13'),
(43, 'http://localhost/Interview/?post_type=acf-field&p=67', '52:1fea1eab75f3236d76c0b7b8388cf4dd', 67, 'post', 'acf-field', 1, 25, NULL, NULL, 'Item 1 Name', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-02-08 17:13:57', '2023-02-08 11:43:58', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2023-02-08 17:13:57', '2023-02-08 17:13:57'),
(44, 'http://localhost/Interview/?post_type=acf-field&p=68', '52:6ca34f1fc7f5362c3ee3716928cec603', 68, 'post', 'acf-field', 1, 25, NULL, NULL, 'Item 1 Detail', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-02-08 17:13:58', '2023-02-08 11:43:58', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-02-08 17:13:58', '2023-02-08 17:13:58'),
(45, 'http://localhost/Interview/?post_type=acf-field&p=69', '52:1965d6ba2d3ef0c3f3014d5b525ccb66', 69, 'post', 'acf-field', 1, 25, NULL, NULL, 'Item 1 Image', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-02-08 17:13:58', '2023-02-08 11:43:58', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-02-08 17:13:58', '2023-02-08 17:13:58'),
(46, 'http://localhost/Interview/?post_type=acf-field&p=70', '52:43e111b3d7ed5eb49c67e6f387952693', 70, 'post', 'acf-field', 1, 25, NULL, NULL, 'Item 2 Name', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-02-08 17:13:58', '2023-02-08 11:43:58', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-02-08 17:13:58', '2023-02-08 17:13:58'),
(47, 'http://localhost/Interview/?post_type=acf-field&p=71', '52:5c508571848a542a16220799124d3147', 71, 'post', 'acf-field', 1, 25, NULL, NULL, 'Item 2 Detail', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-02-08 17:13:59', '2023-02-08 11:43:59', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-02-08 17:13:58', '2023-02-08 17:13:58'),
(48, 'http://localhost/Interview/?post_type=acf-field&p=72', '52:9d666d457d337d02accdcf217a0ce9ba', 72, 'post', 'acf-field', 1, 25, NULL, NULL, 'Item 2 Image', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-02-08 17:13:59', '2023-02-08 11:43:59', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-02-08 17:13:59', '2023-02-08 17:13:59'),
(49, 'http://localhost/Interview/?post_type=acf-field&p=73', '52:3fbebb97761ace0bed24606052657cd2', 73, 'post', 'acf-field', 1, 25, NULL, NULL, 'Item 3 Name', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-02-08 17:13:59', '2023-02-08 11:43:59', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-02-08 17:13:59', '2023-02-08 17:13:59'),
(50, 'http://localhost/Interview/?post_type=acf-field&p=74', '52:8b9d13e5a912cd078d1d78d028e486d3', 74, 'post', 'acf-field', 1, 25, NULL, NULL, 'Item 3 Detail', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-02-08 17:13:59', '2023-02-08 11:43:59', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-02-08 17:13:59', '2023-02-08 17:13:59'),
(51, 'http://localhost/Interview/?post_type=acf-field&p=75', '52:0c7b807a75acfd297d193870e99e2af6', 75, 'post', 'acf-field', 1, 25, NULL, NULL, 'Item 3 Image', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-02-08 17:14:00', '2023-02-08 11:44:00', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-02-08 17:13:59', '2023-02-08 17:13:59'),
(52, 'http://localhost/Interview/service/face-lift/', '45:c0707a48fb4569d779596d9784c06350', 80, 'post', 'service', 1, 0, NULL, NULL, 'Face Lift', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/Interview/wp-content/uploads/2023/02/Facelift.png', NULL, '103', 'featured-image', NULL, NULL, 'http://localhost/Interview/wp-content/uploads/2023/02/Facelift.png', '103', 'featured-image', '{\n    \"width\": 79,\n    \"height\": 94,\n    \"url\": \"http://localhost/Interview/wp-content/uploads/2023/02/Facelift.png\",\n    \"path\": \"C:\\\\xampp\\\\htdocs\\\\Interview/wp-content/uploads/2023/02/Facelift.png\",\n    \"size\": \"full\",\n    \"id\": 103,\n    \"alt\": \"\",\n    \"pixels\": 7426,\n    \"type\": \"image/png\"\n}', 0, NULL, NULL, '2023-02-08 17:36:47', '2023-02-09 03:56:28', 1, NULL, NULL, NULL, NULL, 0, 1, 2, '2023-02-09 09:26:28', '2023-02-08 17:38:32'),
(53, 'http://localhost/Interview/service/tummy-tuck/', '46:7a5c13c3437d03c553bf44482104b276', 81, 'post', 'service', 1, 0, NULL, NULL, 'Tummy Tuck', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/Interview/wp-content/uploads/2023/02/Tummy-Tuck.png', NULL, '105', 'featured-image', NULL, NULL, 'http://localhost/Interview/wp-content/uploads/2023/02/Tummy-Tuck.png', '105', 'featured-image', '{\n    \"width\": 71,\n    \"height\": 80,\n    \"url\": \"http://localhost/Interview/wp-content/uploads/2023/02/Tummy-Tuck.png\",\n    \"path\": \"C:\\\\xampp\\\\htdocs\\\\Interview/wp-content/uploads/2023/02/Tummy-Tuck.png\",\n    \"size\": \"full\",\n    \"id\": 105,\n    \"alt\": \"\",\n    \"pixels\": 5680,\n    \"type\": \"image/png\"\n}', 0, NULL, NULL, '2023-02-08 17:38:52', '2023-02-09 03:57:57', 1, NULL, NULL, NULL, NULL, 0, 1, 2, '2023-02-09 09:27:56', '2023-02-08 17:39:03'),
(54, 'http://localhost/Interview/service/breast-reconstruction/', '57:3a14f44bd79f503aaaf7c964b82c526f', 82, 'post', 'service', 1, 0, NULL, NULL, 'Breast Reconstruction', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/Interview/wp-content/uploads/2023/02/Breast-Reconstruction.png', NULL, '100', 'featured-image', NULL, NULL, 'http://localhost/Interview/wp-content/uploads/2023/02/Breast-Reconstruction.png', '100', 'featured-image', '{\n    \"width\": 108,\n    \"height\": 79,\n    \"url\": \"http://localhost/Interview/wp-content/uploads/2023/02/Breast-Reconstruction.png\",\n    \"path\": \"C:\\\\xampp\\\\htdocs\\\\Interview/wp-content/uploads/2023/02/Breast-Reconstruction.png\",\n    \"size\": \"full\",\n    \"id\": 100,\n    \"alt\": \"\",\n    \"pixels\": 8532,\n    \"type\": \"image/png\"\n}', 0, NULL, NULL, '2023-02-08 17:39:28', '2023-02-09 03:55:22', 1, NULL, NULL, NULL, NULL, 0, 1, 2, '2023-02-09 09:25:22', '2023-02-08 17:39:40'),
(55, 'http://localhost/Interview/service/mommy-makeover-reconstruction/', '65:c9f944397b8c5fb295eb2d0e6e7d64d4', 83, 'post', 'service', 1, 0, NULL, NULL, 'Mommy Makeover Reconstruction', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/Interview/wp-content/uploads/2023/02/Mommy-Makeover.png', NULL, '104', 'featured-image', NULL, NULL, 'http://localhost/Interview/wp-content/uploads/2023/02/Mommy-Makeover.png', '104', 'featured-image', '{\n    \"width\": 85,\n    \"height\": 85,\n    \"url\": \"http://localhost/Interview/wp-content/uploads/2023/02/Mommy-Makeover.png\",\n    \"path\": \"C:\\\\xampp\\\\htdocs\\\\Interview/wp-content/uploads/2023/02/Mommy-Makeover.png\",\n    \"size\": \"full\",\n    \"id\": 104,\n    \"alt\": \"\",\n    \"pixels\": 7225,\n    \"type\": \"image/png\"\n}', 0, NULL, NULL, '2023-02-08 17:40:05', '2023-02-09 03:57:41', 1, NULL, NULL, NULL, NULL, 0, 1, 2, '2023-02-09 09:27:41', '2023-02-08 17:40:23'),
(56, 'http://localhost/Interview/?post_type=acf-field&p=84', '52:2b60d467ab0ebe87da0642e2c94379c1', 84, 'post', 'acf-field', 1, 25, NULL, NULL, 'Services Button Text', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-02-08 17:55:03', '2023-02-08 12:25:03', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2023-02-08 17:55:02', '2023-02-08 17:55:02'),
(57, 'http://localhost/Interview/?post_type=acf-field&p=85', '52:da745cefdf6ad27078c32ef9a6fcd431', 85, 'post', 'acf-field', 1, 25, NULL, NULL, 'Services Button Link', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-02-08 17:55:03', '2023-02-08 12:25:03', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-02-08 17:55:03', '2023-02-08 17:55:03'),
(58, 'http://localhost/Interview/wp-content/uploads/2023/02/woomn-1.png', '65:d7974d64054683c53d4feba44ba94c84', 86, 'post', 'attachment', 1, 11, NULL, NULL, 'woomn', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/Interview/wp-content/uploads/2023/02/woomn-1.png', NULL, '86', 'attachment-image', NULL, NULL, NULL, '86', 'attachment-image', NULL, NULL, NULL, NULL, '2023-02-08 17:59:17', '2023-02-08 12:29:17', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2023-02-08 17:59:16', '2023-02-08 17:59:16'),
(59, 'http://localhost/Interview/testimonial/debbie-d/', '48:8f3c23d258a43e534eb08ddeedb57b2a', 89, 'post', 'testimonial', 1, 0, NULL, NULL, 'Debbie D.', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 90, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-02-08 18:12:43', '2023-02-08 12:43:39', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2023-02-08 18:13:39', '2023-02-08 18:13:39'),
(60, 'http://localhost/Interview/testimonial/maria-m/', '47:4624d308746182b63b24b57bc4015b95', 90, 'post', 'testimonial', 1, 0, NULL, NULL, 'Maria M.', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 90, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-02-08 18:14:09', '2023-02-08 12:44:13', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2023-02-08 18:14:12', '2023-02-08 18:14:12'),
(61, 'http://localhost/Interview/testimonial/frenkel-f/', '49:1666be01f54e75a03a7e75f17fe12b2b', 91, 'post', 'testimonial', 1, 0, NULL, NULL, 'Frenkel F.', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 90, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-02-08 18:14:28', '2023-02-08 12:44:32', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2023-02-08 18:14:31', '2023-02-08 18:14:31'),
(62, 'http://localhost/Interview/testimonial/freddie-f/', '49:59c30806bb52f9c5805521ec1d0a961c', 92, 'post', 'testimonial', 1, 0, NULL, NULL, 'Freddie F.', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 90, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-02-08 18:14:49', '2023-02-08 12:44:53', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2023-02-08 18:14:52', '2023-02-08 18:14:52'),
(63, 'http://localhost/Interview/wp-content/uploads/2023/02/2-1.png', '61:cd76c9556a85ec92888cd4fb692b4b6b', 93, 'post', 'attachment', 1, 0, NULL, NULL, '2-1', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/Interview/wp-content/uploads/2023/02/2-1.png', NULL, '93', 'attachment-image', NULL, NULL, NULL, '93', 'attachment-image', NULL, NULL, NULL, NULL, '2023-02-08 19:12:38', '2023-02-08 13:42:38', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-02-08 19:12:38', '2023-02-08 19:12:38'),
(64, 'http://localhost/Interview/wp-content/uploads/2023/02/face.png', '62:6e43de3067a750d238f4558805df7682', 94, 'post', 'attachment', 1, 11, NULL, NULL, 'face', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/Interview/wp-content/uploads/2023/02/face.png', NULL, '94', 'attachment-image', NULL, NULL, NULL, '94', 'attachment-image', NULL, NULL, NULL, NULL, '2023-02-09 09:21:52', '2023-02-09 03:51:52', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2023-02-09 09:21:52', '2023-02-09 09:21:52'),
(65, 'http://localhost/Interview/wp-content/uploads/2023/02/body.png', '62:0775192365bad532365299aed8e73146', 96, 'post', 'attachment', 1, 11, NULL, NULL, 'body', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/Interview/wp-content/uploads/2023/02/body.png', NULL, '96', 'attachment-image', NULL, NULL, NULL, '96', 'attachment-image', NULL, NULL, NULL, NULL, '2023-02-09 09:23:15', '2023-02-09 03:53:15', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2023-02-09 09:23:15', '2023-02-09 09:23:15'),
(66, 'http://localhost/Interview/wp-content/uploads/2023/02/body-1.png', '64:97ea6488b8f472960d5f4f198dc6e294', 97, 'post', 'attachment', 1, 11, NULL, NULL, 'body-1', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/Interview/wp-content/uploads/2023/02/body-1.png', NULL, '97', 'attachment-image', NULL, NULL, NULL, '97', 'attachment-image', NULL, NULL, NULL, NULL, '2023-02-09 09:23:17', '2023-02-09 03:53:17', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2023-02-09 09:23:16', '2023-02-09 09:23:16'),
(67, 'http://localhost/Interview/wp-content/uploads/2023/02/BodyTite.png', '66:fa08bb2d7a8a616b2c555b2241d74cef', 98, 'post', 'attachment', 1, 11, NULL, NULL, 'BodyTite', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/Interview/wp-content/uploads/2023/02/BodyTite.png', NULL, '98', 'attachment-image', NULL, NULL, NULL, '98', 'attachment-image', NULL, NULL, NULL, NULL, '2023-02-09 09:23:18', '2023-02-09 03:53:18', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2023-02-09 09:23:17', '2023-02-09 09:23:17'),
(68, 'http://localhost/Interview/wp-content/uploads/2023/02/Breast-Augmentation.png', '77:cc6cf5235dbc050b89c95fb7154a3564', 99, 'post', 'attachment', 1, 11, NULL, NULL, 'Breast Augmentation', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/Interview/wp-content/uploads/2023/02/Breast-Augmentation.png', NULL, '99', 'attachment-image', NULL, NULL, NULL, '99', 'attachment-image', NULL, NULL, NULL, NULL, '2023-02-09 09:23:19', '2023-02-09 03:53:19', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2023-02-09 09:23:19', '2023-02-09 09:23:19'),
(69, 'http://localhost/Interview/wp-content/uploads/2023/02/Breast-Reconstruction.png', '79:041656d734ec806c631b4ad30a6d4b11', 100, 'post', 'attachment', 1, 11, NULL, NULL, 'Breast Reconstruction', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/Interview/wp-content/uploads/2023/02/Breast-Reconstruction.png', NULL, '100', 'attachment-image', NULL, NULL, NULL, '100', 'attachment-image', NULL, NULL, NULL, NULL, '2023-02-09 09:23:20', '2023-02-09 03:53:20', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2023-02-09 09:23:20', '2023-02-09 09:23:20'),
(70, 'http://localhost/Interview/wp-content/uploads/2023/02/male-face.png', '67:504a4f1556d50de2841a6f2fa62422e2', 101, 'post', 'attachment', 1, 11, NULL, NULL, 'male face', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/Interview/wp-content/uploads/2023/02/male-face.png', NULL, '101', 'attachment-image', NULL, NULL, NULL, '101', 'attachment-image', NULL, NULL, NULL, NULL, '2023-02-09 09:23:52', '2023-02-09 03:53:52', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2023-02-09 09:23:52', '2023-02-09 09:23:52'),
(71, 'http://localhost/Interview/wp-content/uploads/2023/02/Facelift.png', '66:15bcaf849da534a65b432a9999577acc', 103, 'post', 'attachment', 1, 80, NULL, NULL, 'Facelift', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/Interview/wp-content/uploads/2023/02/Facelift.png', NULL, '103', 'attachment-image', NULL, NULL, NULL, '103', 'attachment-image', NULL, NULL, NULL, NULL, '2023-02-09 09:26:21', '2023-02-09 03:56:21', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2023-02-09 09:26:21', '2023-02-09 09:26:21'),
(72, 'http://localhost/Interview/wp-content/uploads/2023/02/Mommy-Makeover.png', '72:730de2bcc5d39a096b25957bf5579c8d', 104, 'post', 'attachment', 1, 83, NULL, NULL, 'Mommy Makeover', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/Interview/wp-content/uploads/2023/02/Mommy-Makeover.png', NULL, '104', 'attachment-image', NULL, NULL, NULL, '104', 'attachment-image', NULL, NULL, NULL, NULL, '2023-02-09 09:27:18', '2023-02-09 03:57:18', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2023-02-09 09:27:18', '2023-02-09 09:27:18'),
(73, 'http://localhost/Interview/wp-content/uploads/2023/02/Tummy-Tuck.png', '68:70feb3614e1f817d6edea60c5b68e2bf', 105, 'post', 'attachment', 1, 83, NULL, NULL, 'Tummy Tuck', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/Interview/wp-content/uploads/2023/02/Tummy-Tuck.png', NULL, '105', 'attachment-image', NULL, NULL, NULL, '105', 'attachment-image', NULL, NULL, NULL, NULL, '2023-02-09 09:27:33', '2023-02-09 03:57:33', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2023-02-09 09:27:33', '2023-02-09 09:27:33');

-- --------------------------------------------------------

--
-- Table structure for table `wp_yoast_indexable_hierarchy`
--

CREATE TABLE `wp_yoast_indexable_hierarchy` (
  `indexable_id` int(11) UNSIGNED NOT NULL,
  `ancestor_id` int(11) UNSIGNED NOT NULL,
  `depth` int(11) UNSIGNED DEFAULT NULL,
  `blog_id` bigint(20) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_yoast_indexable_hierarchy`
--

INSERT INTO `wp_yoast_indexable_hierarchy` (`indexable_id`, `ancestor_id`, `depth`, `blog_id`) VALUES
(2, 0, 0, 1),
(3, 0, 0, 1),
(4, 0, 0, 1),
(5, 0, 0, 1),
(6, 0, 0, 1),
(7, 0, 0, 1),
(8, 0, 0, 1),
(9, 0, 0, 1),
(13, 0, 0, 1),
(14, 0, 0, 1),
(15, 0, 0, 1),
(19, 15, 1, 1),
(33, 15, 1, 1),
(35, 15, 1, 1),
(36, 15, 1, 1),
(37, 15, 1, 1),
(38, 15, 1, 1),
(39, 15, 1, 1),
(40, 15, 1, 1),
(41, 15, 1, 1),
(52, 0, 0, 1),
(53, 0, 0, 1),
(54, 0, 0, 1),
(55, 0, 0, 1),
(59, 0, 0, 1),
(60, 0, 0, 1),
(61, 0, 0, 1),
(62, 0, 0, 1),
(63, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_yoast_migrations`
--

CREATE TABLE `wp_yoast_migrations` (
  `id` int(11) UNSIGNED NOT NULL,
  `version` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_yoast_migrations`
--

INSERT INTO `wp_yoast_migrations` (`id`, `version`) VALUES
(1, '20171228151840'),
(2, '20171228151841'),
(3, '20190529075038'),
(4, '20191011111109'),
(5, '20200408101900'),
(6, '20200420073606'),
(7, '20200428123747'),
(8, '20200428194858'),
(9, '20200429105310'),
(10, '20200430075614'),
(11, '20200430150130'),
(12, '20200507054848'),
(13, '20200513133401'),
(14, '20200609154515'),
(15, '20200616130143'),
(16, '20200617122511'),
(17, '20200702141921'),
(18, '20200728095334'),
(19, '20201202144329'),
(20, '20201216124002'),
(21, '20201216141134'),
(22, '20210817092415'),
(23, '20211020091404');

-- --------------------------------------------------------

--
-- Table structure for table `wp_yoast_primary_term`
--

CREATE TABLE `wp_yoast_primary_term` (
  `id` int(11) UNSIGNED NOT NULL,
  `post_id` bigint(20) DEFAULT NULL,
  `term_id` bigint(20) DEFAULT NULL,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `blog_id` bigint(20) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_yoast_seo_links`
--

CREATE TABLE `wp_yoast_seo_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `target_post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `type` varchar(8) DEFAULT NULL,
  `indexable_id` int(11) UNSIGNED DEFAULT NULL,
  `target_indexable_id` int(11) UNSIGNED DEFAULT NULL,
  `height` int(11) UNSIGNED DEFAULT NULL,
  `width` int(11) UNSIGNED DEFAULT NULL,
  `size` int(11) UNSIGNED DEFAULT NULL,
  `language` varchar(32) DEFAULT NULL,
  `region` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

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
-- Indexes for table `wp_yoast_indexable`
--
ALTER TABLE `wp_yoast_indexable`
  ADD PRIMARY KEY (`id`),
  ADD KEY `object_type_and_sub_type` (`object_type`,`object_sub_type`),
  ADD KEY `object_id_and_type` (`object_id`,`object_type`),
  ADD KEY `permalink_hash_and_object_type` (`permalink_hash`,`object_type`),
  ADD KEY `subpages` (`post_parent`,`object_type`,`post_status`,`object_id`),
  ADD KEY `prominent_words` (`prominent_words_version`,`object_type`,`object_sub_type`,`post_status`),
  ADD KEY `published_sitemap_index` (`object_published_at`,`is_robots_noindex`,`object_type`,`object_sub_type`);

--
-- Indexes for table `wp_yoast_indexable_hierarchy`
--
ALTER TABLE `wp_yoast_indexable_hierarchy`
  ADD PRIMARY KEY (`indexable_id`,`ancestor_id`),
  ADD KEY `indexable_id` (`indexable_id`),
  ADD KEY `ancestor_id` (`ancestor_id`),
  ADD KEY `depth` (`depth`);

--
-- Indexes for table `wp_yoast_migrations`
--
ALTER TABLE `wp_yoast_migrations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wp_yoast_migrations_version` (`version`);

--
-- Indexes for table `wp_yoast_primary_term`
--
ALTER TABLE `wp_yoast_primary_term`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_taxonomy` (`post_id`,`taxonomy`),
  ADD KEY `post_term` (`post_id`,`term_id`);

--
-- Indexes for table `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link_direction` (`post_id`,`type`),
  ADD KEY `indexable_link_direction` (`indexable_id`,`type`);

--
-- AUTO_INCREMENT for dumped tables
--

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
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=539;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=758;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_yoast_indexable`
--
ALTER TABLE `wp_yoast_indexable`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `wp_yoast_migrations`
--
ALTER TABLE `wp_yoast_migrations`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `wp_yoast_primary_term`
--
ALTER TABLE `wp_yoast_primary_term`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
