-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  ven. 18 août 2023 à 18:27
-- Version du serveur :  10.4.8-MariaDB
-- Version de PHP :  7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `wordpress`
--

-- --------------------------------------------------------

--
-- Structure de la table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2023-04-07 12:27:50', '2023-04-07 12:27:50', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://innoventis.local', 'yes'),
(2, 'home', 'http://innoventis.local', 'yes'),
(3, 'blogname', 'Innoventis groupe', 'yes'),
(4, 'blogdescription', 'CONTRIBUER AU DÉVELOPPEMENT DE L&#039;AFRIQUE|', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'tokyrt.pro@gmail.com', 'yes'),
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
(18, 'default_category', '8', 'yes'),
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
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:21:\"polylang/polylang.php\";i:1;s:33:\"classic-editor/classic-editor.php\";i:2;s:23:\"loco-translate/loco.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:3:{i:0;s:68:\"C:\\xampp\\htdocs\\wordpress/wp-content/themes/innov/dist/activites.css\";i:1;s:59:\"C:\\xampp\\htdocs\\wordpress/wp-content/themes/innov/style.css\";i:2;s:0:\"\";}', 'no'),
(40, 'template', 'innov', 'yes'),
(41, 'stylesheet', 'innov', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '55853', 'yes'),
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
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '8', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '68', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1696422470', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '53496', 'yes'),
(100, 'wp_user_roles', 'a:6:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:10:\"loco_admin\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:10:\"translator\";a:2:{s:4:\"name\";s:10:\"Translator\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:10:\"loco_admin\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'user_count', '1', 'no'),
(103, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:6:{i:1692174471;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1692188871;a:5:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1692188906;a:3:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1692188910;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1692448071;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(121, 'recovery_keys', 'a:0:{}', 'yes'),
(122, 'https_detection_errors', 'a:2:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:32:\"La vérification SSL a échoué.\";}s:19:\"bad_response_source\";a:1:{i:0;s:58:\"Il semblerait que la réponse ne provienne pas de ce site.\";}}', 'yes'),
(124, 'theme_mods_twentytwentythree', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1680873199;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(150, 'finished_updating_comment_type', '1', 'yes'),
(156, 'theme_mods_innov', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:1:{s:8:\"top-menu\";i:2;}}', 'yes'),
(157, 'current_theme', 'Innov Theme', 'yes'),
(158, 'theme_switched', '', 'yes'),
(169, '_transient_health-check-site-status-result', '{\"good\":16,\"recommended\":5,\"critical\":1}', 'yes'),
(195, 'WPLANG', 'fr_FR', 'yes'),
(196, 'new_admin_email', 'tokyrt.pro@gmail.com', 'yes'),
(207, 'recently_activated', 'a:0:{}', 'yes'),
(214, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(243, 'polylang', 'a:15:{s:7:\"browser\";i:0;s:7:\"rewrite\";i:1;s:12:\"hide_default\";i:1;s:10:\"force_lang\";i:1;s:13:\"redirect_lang\";i:0;s:13:\"media_support\";b:1;s:9:\"uninstall\";i:0;s:4:\"sync\";a:0:{}s:10:\"post_types\";a:0:{}s:10:\"taxonomies\";a:0:{}s:7:\"domains\";a:0:{}s:7:\"version\";s:5:\"3.3.3\";s:16:\"first_activation\";i:1683704528;s:12:\"default_lang\";s:2:\"fr\";s:9:\"nav_menus\";a:1:{s:5:\"innov\";a:1:{s:8:\"top-menu\";a:2:{s:2:\"en\";i:11;s:2:\"fr\";i:2;}}}}', 'yes'),
(244, 'polylang_wpml_strings', 'a:0:{}', 'yes'),
(245, 'widget_polylang', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(252, 'category_children', 'a:0:{}', 'yes'),
(257, 'pll_dismissed_notices', 'a:1:{i:0;s:6:\"wizard\";}', 'yes'),
(280, 'loco_recent', 'a:4:{s:1:\"c\";s:21:\"Loco_data_RecentItems\";s:1:\"v\";i:0;s:1:\"d\";a:1:{s:6:\"bundle\";a:1:{s:11:\"theme.innov\";i:1685905992;}}s:1:\"t\";i:1685905992;}', 'no'),
(300, 'loco_theme_config__innov', 'a:4:{s:1:\"c\";s:23:\"Loco_config_CustomSaved\";s:1:\"v\";i:0;s:1:\"d\";a:3:{i:0;s:6:\"bundle\";i:1;a:1:{s:4:\"name\";s:11:\"Innov Theme\";}i:2;a:1:{i:0;a:3:{i:0;s:6:\"domain\";i:1;a:1:{s:4:\"name\";s:5:\"innov\";}i:2;a:1:{i:0;a:3:{i:0;s:7:\"project\";i:1;a:2:{s:4:\"name\";s:11:\"Innov Theme\";s:4:\"slug\";s:0:\"\";}i:2;a:3:{i:0;a:3:{i:0;s:6:\"source\";i:1;a:0:{}i:2;a:1:{i:0;a:3:{i:0;s:9:\"directory\";i:1;a:0:{}i:2;a:1:{i:0;s:0:\"\";}}}}i:1;a:3:{i:0;s:6:\"target\";i:1;a:0:{}i:2;a:1:{i:0;a:3:{i:0;s:9:\"directory\";i:1;a:0:{}i:2;a:1:{i:0;s:0:\"\";}}}}i:2;a:3:{i:0;s:8:\"template\";i:1;a:0:{}i:2;a:1:{i:0;a:3:{i:0;s:4:\"file\";i:1;a:0:{}i:2;a:1:{i:0;s:43:\"wp-content/themes/innov/languages/innov.pot\";}}}}}}}}}}s:1:\"t\";i:1683791977;}', 'no'),
(334, 'rewrite_rules', 'a:183:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:53:\"^(en)/wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:92:\"index.php?lang=$matches[1]&sitemap=$matches[2]&sitemap-subtype=$matches[3]&paged=$matches[4]\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:39:\"^(en)/wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:64:\"index.php?lang=$matches[1]&sitemap=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:52:\"(en)/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?lang=$matches[1]&category_name=$matches[2]&feed=$matches[3]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:47:\"(en)/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?lang=$matches[1]&category_name=$matches[2]&feed=$matches[3]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:28:\"(en)/category/(.+?)/embed/?$\";s:63:\"index.php?lang=$matches[1]&category_name=$matches[2]&embed=true\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:40:\"(en)/category/(.+?)/page/?([0-9]{1,})/?$\";s:70:\"index.php?lang=$matches[1]&category_name=$matches[2]&paged=$matches[3]\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:22:\"(en)/category/(.+?)/?$\";s:52:\"index.php?lang=$matches[1]&category_name=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:49:\"(en)/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:59:\"index.php?lang=$matches[1]&tag=$matches[2]&feed=$matches[3]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:44:\"(en)/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:59:\"index.php?lang=$matches[1]&tag=$matches[2]&feed=$matches[3]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:25:\"(en)/tag/([^/]+)/embed/?$\";s:53:\"index.php?lang=$matches[1]&tag=$matches[2]&embed=true\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:37:\"(en)/tag/([^/]+)/page/?([0-9]{1,})/?$\";s:60:\"index.php?lang=$matches[1]&tag=$matches[2]&paged=$matches[3]\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:19:\"(en)/tag/([^/]+)/?$\";s:42:\"index.php?lang=$matches[1]&tag=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:50:\"(en)/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:67:\"index.php?lang=$matches[1]&post_format=$matches[2]&feed=$matches[3]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?lang=fr&post_format=$matches[1]&feed=$matches[2]\";s:45:\"(en)/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:67:\"index.php?lang=$matches[1]&post_format=$matches[2]&feed=$matches[3]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?lang=fr&post_format=$matches[1]&feed=$matches[2]\";s:26:\"(en)/type/([^/]+)/embed/?$\";s:61:\"index.php?lang=$matches[1]&post_format=$matches[2]&embed=true\";s:21:\"type/([^/]+)/embed/?$\";s:52:\"index.php?lang=fr&post_format=$matches[1]&embed=true\";s:38:\"(en)/type/([^/]+)/page/?([0-9]{1,})/?$\";s:68:\"index.php?lang=$matches[1]&post_format=$matches[2]&paged=$matches[3]\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:59:\"index.php?lang=fr&post_format=$matches[1]&paged=$matches[2]\";s:20:\"(en)/type/([^/]+)/?$\";s:50:\"index.php?lang=$matches[1]&post_format=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:41:\"index.php?lang=fr&post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:37:\"(en)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?lang=$matches[1]&&feed=$matches[2]\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:35:\"index.php?lang=fr&&feed=$matches[1]\";s:32:\"(en)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?lang=$matches[1]&&feed=$matches[2]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:35:\"index.php?lang=fr&&feed=$matches[1]\";s:13:\"(en)/embed/?$\";s:38:\"index.php?lang=$matches[1]&&embed=true\";s:8:\"embed/?$\";s:29:\"index.php?lang=fr&&embed=true\";s:25:\"(en)/page/?([0-9]{1,})/?$\";s:45:\"index.php?lang=$matches[1]&&paged=$matches[2]\";s:20:\"page/?([0-9]{1,})/?$\";s:36:\"index.php?lang=fr&&paged=$matches[1]\";s:32:\"(en)/comment-page-([0-9]{1,})/?$\";s:55:\"index.php?lang=$matches[1]&&page_id=8&cpage=$matches[2]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:46:\"index.php?lang=fr&&page_id=8&cpage=$matches[1]\";s:7:\"(en)/?$\";s:26:\"index.php?lang=$matches[1]\";s:46:\"(en)/comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:59:\"index.php?lang=$matches[1]&&feed=$matches[2]&withcomments=1\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?lang=fr&&feed=$matches[1]&withcomments=1\";s:41:\"(en)/comments/(feed|rdf|rss|rss2|atom)/?$\";s:59:\"index.php?lang=$matches[1]&&feed=$matches[2]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?lang=fr&&feed=$matches[1]&withcomments=1\";s:22:\"(en)/comments/embed/?$\";s:38:\"index.php?lang=$matches[1]&&embed=true\";s:17:\"comments/embed/?$\";s:29:\"index.php?lang=fr&&embed=true\";s:49:\"(en)/search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:57:\"index.php?lang=$matches[1]&s=$matches[2]&feed=$matches[3]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?lang=fr&s=$matches[1]&feed=$matches[2]\";s:44:\"(en)/search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:57:\"index.php?lang=$matches[1]&s=$matches[2]&feed=$matches[3]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?lang=fr&s=$matches[1]&feed=$matches[2]\";s:25:\"(en)/search/(.+)/embed/?$\";s:51:\"index.php?lang=$matches[1]&s=$matches[2]&embed=true\";s:20:\"search/(.+)/embed/?$\";s:42:\"index.php?lang=fr&s=$matches[1]&embed=true\";s:37:\"(en)/search/(.+)/page/?([0-9]{1,})/?$\";s:58:\"index.php?lang=$matches[1]&s=$matches[2]&paged=$matches[3]\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?lang=fr&s=$matches[1]&paged=$matches[2]\";s:19:\"(en)/search/(.+)/?$\";s:40:\"index.php?lang=$matches[1]&s=$matches[2]\";s:14:\"search/(.+)/?$\";s:31:\"index.php?lang=fr&s=$matches[1]\";s:52:\"(en)/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:67:\"index.php?lang=$matches[1]&author_name=$matches[2]&feed=$matches[3]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?lang=fr&author_name=$matches[1]&feed=$matches[2]\";s:47:\"(en)/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:67:\"index.php?lang=$matches[1]&author_name=$matches[2]&feed=$matches[3]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?lang=fr&author_name=$matches[1]&feed=$matches[2]\";s:28:\"(en)/author/([^/]+)/embed/?$\";s:61:\"index.php?lang=$matches[1]&author_name=$matches[2]&embed=true\";s:23:\"author/([^/]+)/embed/?$\";s:52:\"index.php?lang=fr&author_name=$matches[1]&embed=true\";s:40:\"(en)/author/([^/]+)/page/?([0-9]{1,})/?$\";s:68:\"index.php?lang=$matches[1]&author_name=$matches[2]&paged=$matches[3]\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:59:\"index.php?lang=fr&author_name=$matches[1]&paged=$matches[2]\";s:22:\"(en)/author/([^/]+)/?$\";s:50:\"index.php?lang=$matches[1]&author_name=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:41:\"index.php?lang=fr&author_name=$matches[1]\";s:74:\"(en)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&feed=$matches[5]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:69:\"(en)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&feed=$matches[5]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:50:\"(en)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:91:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&embed=true\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:62:\"(en)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:98:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&paged=$matches[5]\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:44:\"(en)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:80:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:61:\"(en)/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:81:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&feed=$matches[4]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:56:\"(en)/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:81:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&feed=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:37:\"(en)/([0-9]{4})/([0-9]{1,2})/embed/?$\";s:75:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&embed=true\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:49:\"(en)/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:82:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&paged=$matches[4]\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:31:\"(en)/([0-9]{4})/([0-9]{1,2})/?$\";s:64:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:48:\"(en)/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:60:\"index.php?lang=$matches[1]&year=$matches[2]&feed=$matches[3]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:43:\"(en)/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:60:\"index.php?lang=$matches[1]&year=$matches[2]&feed=$matches[3]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:24:\"(en)/([0-9]{4})/embed/?$\";s:54:\"index.php?lang=$matches[1]&year=$matches[2]&embed=true\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:36:\"(en)/([0-9]{4})/page/?([0-9]{1,})/?$\";s:61:\"index.php?lang=$matches[1]&year=$matches[2]&paged=$matches[3]\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:18:\"(en)/([0-9]{4})/?$\";s:43:\"index.php?lang=$matches[1]&year=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:63:\"(en)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:49:\"index.php?lang=$matches[1]&attachment=$matches[2]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:73:\"(en)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:54:\"index.php?lang=$matches[1]&attachment=$matches[2]&tb=1\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:93:\"(en)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:88:\"(en)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:88:\"(en)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:67:\"index.php?lang=$matches[1]&attachment=$matches[2]&cpage=$matches[3]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:69:\"(en)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:60:\"index.php?lang=$matches[1]&attachment=$matches[2]&embed=true\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:58:\"(en)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:108:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&name=$matches[5]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:62:\"(en)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:102:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&name=$matches[5]&tb=1\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:82:\"(en)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:114:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&name=$matches[5]&feed=$matches[6]\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:77:\"(en)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:114:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&name=$matches[5]&feed=$matches[6]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:70:\"(en)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:115:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&name=$matches[5]&paged=$matches[6]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:77:\"(en)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:115:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&name=$matches[5]&cpage=$matches[6]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:66:\"(en)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:114:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&name=$matches[5]&page=$matches[6]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:52:\"(en)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:49:\"index.php?lang=$matches[1]&attachment=$matches[2]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:62:\"(en)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:54:\"index.php?lang=$matches[1]&attachment=$matches[2]&tb=1\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:82:\"(en)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:77:\"(en)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:77:\"(en)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:67:\"index.php?lang=$matches[1]&attachment=$matches[2]&cpage=$matches[3]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:58:\"(en)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:60:\"index.php?lang=$matches[1]&attachment=$matches[2]&embed=true\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:69:\"(en)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&cpage=$matches[5]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:56:\"(en)/([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:82:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:43:\"(en)/([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:61:\"index.php?lang=$matches[1]&year=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:32:\"(en)/.?.+?/attachment/([^/]+)/?$\";s:49:\"index.php?lang=$matches[1]&attachment=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"(en)/.?.+?/attachment/([^/]+)/trackback/?$\";s:54:\"index.php?lang=$matches[1]&attachment=$matches[2]&tb=1\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"(en)/.?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"(en)/.?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"(en)/.?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:67:\"index.php?lang=$matches[1]&attachment=$matches[2]&cpage=$matches[3]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"(en)/.?.+?/attachment/([^/]+)/embed/?$\";s:60:\"index.php?lang=$matches[1]&attachment=$matches[2]&embed=true\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:21:\"(en)/(.?.+?)/embed/?$\";s:58:\"index.php?lang=$matches[1]&pagename=$matches[2]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:25:\"(en)/(.?.+?)/trackback/?$\";s:52:\"index.php?lang=$matches[1]&pagename=$matches[2]&tb=1\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:45:\"(en)/(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?lang=$matches[1]&pagename=$matches[2]&feed=$matches[3]\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:40:\"(en)/(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?lang=$matches[1]&pagename=$matches[2]&feed=$matches[3]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:33:\"(en)/(.?.+?)/page/?([0-9]{1,})/?$\";s:65:\"index.php?lang=$matches[1]&pagename=$matches[2]&paged=$matches[3]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:40:\"(en)/(.?.+?)/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?lang=$matches[1]&pagename=$matches[2]&cpage=$matches[3]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:29:\"(en)/(.?.+?)(?:/([0-9]+))?/?$\";s:64:\"index.php?lang=$matches[1]&pagename=$matches[2]&page=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(389, 'loco_settings', 'a:4:{s:1:\"c\";s:18:\"Loco_data_Settings\";s:1:\"v\";i:0;s:1:\"d\";a:24:{s:7:\"version\";s:5:\"2.6.4\";s:8:\"gen_hash\";b:0;s:9:\"use_fuzzy\";b:1;s:9:\"fuzziness\";i:20;s:11:\"num_backups\";i:5;s:9:\"pot_alias\";a:3:{i:0;s:10:\"default.po\";i:1;s:8:\"en_US.po\";i:2;s:5:\"en.po\";}s:9:\"php_alias\";a:2:{i:0;s:3:\"php\";i:1;s:4:\"twig\";}s:9:\"jsx_alias\";a:0:{}s:10:\"fs_persist\";b:0;s:10:\"fs_protect\";i:1;s:11:\"pot_protect\";i:1;s:12:\"pot_expected\";i:1;s:12:\"max_php_size\";s:4:\"100K\";s:11:\"po_utf8_bom\";b:0;s:8:\"po_width\";s:2:\"79\";s:10:\"jed_pretty\";b:0;s:9:\"jed_clean\";b:0;s:10:\"ajax_files\";b:1;s:13:\"deepl_api_key\";s:0:\"\";s:13:\"deepl_api_url\";s:0:\"\";s:14:\"google_api_key\";s:0:\"\";s:17:\"microsoft_api_key\";s:0:\"\";s:20:\"microsoft_api_region\";s:6:\"global\";s:13:\"lecto_api_key\";s:31:\"T84NE6G-C1GM17C-K2A8ZZS-B3CNMYF\";}s:1:\"t\";i:1683880684;}', 'yes'),
(500, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:20:\"tokyrt.pro@gmail.com\";s:7:\"version\";s:3:\"6.3\";s:9:\"timestamp\";i:1692044228;}', 'no'),
(675, '_site_transient_timeout_php_check_a4e7a3af7060c530d791075f6e3eb5fa', '1692350078', 'no'),
(676, '_site_transient_php_check_a4e7a3af7060c530d791075f6e3eb5fa', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:3:\"7.0\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:0;s:13:\"is_acceptable\";b:0;}', 'no'),
(695, 'db_upgraded', '', 'yes'),
(699, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:63:\"https://downloads.wordpress.org/release/fr_FR/wordpress-6.3.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:63:\"https://downloads.wordpress.org/release/fr_FR/wordpress-6.3.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"6.3\";s:7:\"version\";s:3:\"6.3\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1692164095;s:15:\"version_checked\";s:3:\"6.3\";s:12:\"translations\";a:0:{}}', 'no'),
(714, '_site_transient_timeout_browser_c2e8770a57bb05f02fa99fc10237a511', '1692688724', 'no'),
(715, '_site_transient_browser_c2e8770a57bb05f02fa99fc10237a511', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"113.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(717, 'can_compress_scripts', '1', 'yes'),
(732, '_transient_pll_languages_list', 'a:2:{i:0;a:24:{s:7:\"term_id\";i:3;s:4:\"name\";s:7:\"English\";s:4:\"slug\";s:2:\"en\";s:10:\"term_group\";i:0;s:16:\"term_taxonomy_id\";i:3;s:5:\"count\";i:8;s:10:\"tl_term_id\";i:4;s:19:\"tl_term_taxonomy_id\";i:4;s:8:\"tl_count\";i:1;s:6:\"locale\";s:5:\"en_US\";s:6:\"is_rtl\";i:0;s:3:\"w3c\";s:5:\"en-US\";s:8:\"facebook\";s:5:\"en_US\";s:8:\"home_url\";s:38:\"http://innoventis.local/en/who-are-we/\";s:10:\"search_url\";s:27:\"http://innoventis.local/en/\";s:4:\"host\";N;s:5:\"mo_id\";s:2:\"25\";s:13:\"page_on_front\";i:27;s:14:\"page_for_posts\";b:0;s:9:\"flag_code\";s:2:\"us\";s:8:\"flag_url\";s:64:\"http://innoventis.local/wp-content/plugins/polylang/flags/us.png\";s:4:\"flag\";s:576:\"<img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAALCAMAAABBPP0LAAAAmVBMVEViZsViZMJiYrf9gnL8eWrlYkjgYkjZYkj8/PujwPybvPz4+PetraBEgfo+fvo3efkydfkqcvj8Y2T8UlL8Q0P8MzP9k4Hz8/Lu7u4DdPj9/VrKysI9fPoDc/EAZ7z7IiLHYkjp6ekCcOTk5OIASbfY/v21takAJrT5Dg6sYkjc3Nn94t2RkYD+y8KeYkjs/v7l5fz0dF22YkjWvcOLAAAAgElEQVR4AR2KNULFQBgGZ5J13KGGKvc/Cw1uPe62eb9+Jr1EUBFHSgxxjP2Eca6AfUSfVlUfBvm1Ui1bqafctqMndNkXpb01h5TLx4b6TIXgwOCHfjv+/Pz+5vPRw7txGWT2h6yO0/GaYltIp5PT1dEpLNPL/SdWjYjAAZtvRPgHJX4Xio+DSrkAAAAASUVORK5CYII=\" alt=\"English\" width=\"16\" height=\"11\" style=\"width: 16px; height: 11px;\" />\";s:15:\"custom_flag_url\";N;s:11:\"custom_flag\";N;}i:1;a:24:{s:7:\"term_id\";i:6;s:4:\"name\";s:9:\"Français\";s:4:\"slug\";s:2:\"fr\";s:10:\"term_group\";i:1;s:16:\"term_taxonomy_id\";i:6;s:5:\"count\";i:9;s:10:\"tl_term_id\";i:7;s:19:\"tl_term_taxonomy_id\";i:7;s:8:\"tl_count\";i:1;s:6:\"locale\";s:5:\"fr_FR\";s:6:\"is_rtl\";i:0;s:3:\"w3c\";s:5:\"fr-FR\";s:8:\"facebook\";s:5:\"fr_FR\";s:8:\"home_url\";s:24:\"http://innoventis.local/\";s:10:\"search_url\";s:24:\"http://innoventis.local/\";s:4:\"host\";N;s:5:\"mo_id\";s:2:\"26\";s:13:\"page_on_front\";i:8;s:14:\"page_for_posts\";b:0;s:9:\"flag_code\";s:2:\"fr\";s:8:\"flag_url\";s:64:\"http://innoventis.local/wp-content/plugins/polylang/flags/fr.png\";s:4:\"flag\";s:474:\"<img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAALCAMAAABBPP0LAAAAbFBMVEVzldTg4ODS0tLxDwDtAwDjAADD0uz39/fy8vL3k4nzgna4yOixwuXu7u7s6+zn5+fyd2rvcGPtZljYAABrjNCpvOHrWkxegsqfs93NAADpUUFRd8THAABBa7wnVbERRKa8vLyxsLCoqKigoKClCvcsAAAAXklEQVR4AS3JxUEAQQAEwZo13Mk/R9w5/7UERJCIGIgj5qfRJZEpPyNfCgJTjMR1eRRnJiExFJz5Mf1PokWr/UztIjRGQ3V486u0HO55m634U6dMcf0RNPfkVCTvKjO16xHA8miowAAAAABJRU5ErkJggg==\" alt=\"Français\" width=\"16\" height=\"11\" style=\"width: 16px; height: 11px;\" />\";s:15:\"custom_flag_url\";N;s:11:\"custom_flag\";N;}}', 'yes'),
(746, '_site_transient_timeout_theme_roots', '1692165905', 'no'),
(747, '_site_transient_theme_roots', 'a:4:{s:5:\"innov\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}', 'no'),
(748, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1692164108;s:7:\"checked\";a:4:{s:5:\"innov\";s:0:\"\";s:15:\"twentytwentyone\";s:3:\"1.8\";s:17:\"twentytwentythree\";s:3:\"1.1\";s:15:\"twentytwentytwo\";s:3:\"1.4\";}s:8:\"response\";a:1:{s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.2\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.2.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}}s:9:\"no_update\";a:2:{s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.8.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.4.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(749, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1692164110;s:8:\"response\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"5.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.5.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/akismet/assets/banner-1544x500.png?rev=2900731\";s:2:\"1x\";s:62:\"https://ps.w.org/akismet/assets/banner-772x250.png?rev=2900731\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";s:6:\"tested\";s:3:\"6.3\";s:12:\"requires_php\";s:6:\"5.6.20\";}s:21:\"polylang/polylang.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:22:\"w.org/plugins/polylang\";s:4:\"slug\";s:8:\"polylang\";s:6:\"plugin\";s:21:\"polylang/polylang.php\";s:11:\"new_version\";s:5:\"3.4.5\";s:3:\"url\";s:39:\"https://wordpress.org/plugins/polylang/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/polylang.3.4.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:61:\"https://ps.w.org/polylang/assets/icon-256x256.png?rev=1331499\";s:2:\"1x\";s:61:\"https://ps.w.org/polylang/assets/icon-128x128.png?rev=1331499\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/polylang/assets/banner-1544x500.png?rev=1405299\";s:2:\"1x\";s:63:\"https://ps.w.org/polylang/assets/banner-772x250.png?rev=1405299\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";s:6:\"tested\";s:5:\"6.2.2\";s:12:\"requires_php\";s:3:\"7.0\";}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:5:\"1.6.3\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}s:23:\"loco-translate/loco.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/loco-translate\";s:4:\"slug\";s:14:\"loco-translate\";s:6:\"plugin\";s:23:\"loco-translate/loco.php\";s:11:\"new_version\";s:5:\"2.6.4\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/loco-translate/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/loco-translate.2.6.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/loco-translate/assets/icon-256x256.png?rev=1000676\";s:2:\"1x\";s:67:\"https://ps.w.org/loco-translate/assets/icon-128x128.png?rev=1000676\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:68:\"https://ps.w.org/loco-translate/assets/banner-772x250.jpg?rev=745046\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.2\";}}s:7:\"checked\";a:5:{s:19:\"akismet/akismet.php\";s:3:\"5.1\";s:33:\"classic-editor/classic-editor.php\";s:5:\"1.6.3\";s:9:\"hello.php\";s:5:\"1.7.2\";s:23:\"loco-translate/loco.php\";s:5:\"2.6.4\";s:21:\"polylang/polylang.php\";s:5:\"3.3.3\";}}', 'no');

-- --------------------------------------------------------

--
-- Structure de la table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(9, 8, '_edit_lock', '1691745179:1'),
(10, 11, '_edit_lock', '1691164515:1'),
(11, 13, '_edit_lock', '1683883852:1'),
(12, 13, '_edit_last', '1'),
(13, 13, '_wp_page_template', 'template-contact.php'),
(14, 16, '_menu_item_type', 'post_type'),
(15, 16, '_menu_item_menu_item_parent', '0'),
(16, 16, '_menu_item_object_id', '8'),
(17, 16, '_menu_item_object', 'page'),
(18, 16, '_menu_item_target', ''),
(19, 16, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(20, 16, '_menu_item_xfn', ''),
(21, 16, '_menu_item_url', ''),
(23, 17, '_menu_item_type', 'post_type'),
(24, 17, '_menu_item_menu_item_parent', '0'),
(25, 17, '_menu_item_object_id', '13'),
(26, 17, '_menu_item_object', 'page'),
(27, 17, '_menu_item_target', ''),
(28, 17, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(29, 17, '_menu_item_xfn', ''),
(30, 17, '_menu_item_url', ''),
(32, 18, '_menu_item_type', 'post_type'),
(33, 18, '_menu_item_menu_item_parent', '0'),
(34, 18, '_menu_item_object_id', '11'),
(35, 18, '_menu_item_object', 'page'),
(36, 18, '_menu_item_target', ''),
(37, 18, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(38, 18, '_menu_item_xfn', ''),
(39, 18, '_menu_item_url', ''),
(41, 19, '_edit_last', '1'),
(42, 19, '_wp_page_template', 'secteurs-d-activite/distribution.php'),
(43, 19, '_edit_lock', '1691327858:1'),
(44, 21, '_edit_last', '1'),
(45, 21, '_wp_page_template', 'secteurs-d-activite/industrie.php'),
(46, 21, '_edit_lock', '1691169368:1'),
(65, 25, '_pll_strings_translations', 'a:2:{i:0;a:2:{i:0;s:17:\"Innoventis groupe\";i:1;s:17:\"Innoventis groupe\";}i:1;a:2:{i:0;s:47:\"CONTRIBUER AU DÉVELOPPEMENT DE L&#039;AFRIQUE|\";i:1;s:47:\"CONTRIBUER AU DÉVELOPPEMENT DE L&#039;AFRIQUE|\";}}'),
(66, 26, '_pll_strings_translations', 'a:2:{i:0;a:2:{i:0;s:17:\"Innoventis groupe\";i:1;s:17:\"Innoventis groupe\";}i:1;a:2:{i:0;s:47:\"CONTRIBUER AU DÉVELOPPEMENT DE L&#039;AFRIQUE|\";i:1;s:47:\"CONTRIBUER AU DÉVELOPPEMENT DE L&#039;AFRIQUE|\";}}'),
(67, 28, '_menu_item_type', 'custom'),
(68, 28, '_menu_item_menu_item_parent', '0'),
(69, 28, '_menu_item_object_id', '28'),
(70, 28, '_menu_item_object', 'custom'),
(71, 28, '_menu_item_target', ''),
(72, 28, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(73, 28, '_menu_item_xfn', ''),
(74, 28, '_menu_item_url', '#pll_switcher'),
(76, 16, '_wp_old_date', '2023-05-09'),
(77, 18, '_wp_old_date', '2023-05-09'),
(80, 28, '_pll_menu_item', 'a:6:{s:22:\"hide_if_no_translation\";i:0;s:12:\"hide_current\";i:1;s:10:\"force_home\";i:0;s:10:\"show_flags\";i:1;s:10:\"show_names\";i:1;s:8:\"dropdown\";i:0;}'),
(81, 17, '_wp_old_date', '2023-05-09'),
(82, 29, '_menu_item_type', 'custom'),
(83, 29, '_menu_item_menu_item_parent', '0'),
(84, 29, '_menu_item_object_id', '29'),
(85, 29, '_menu_item_object', 'custom'),
(86, 29, '_menu_item_target', ''),
(87, 29, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(88, 29, '_menu_item_xfn', ''),
(89, 29, '_menu_item_url', '#pll_switcher'),
(91, 29, '_pll_menu_item', 'a:6:{s:22:\"hide_if_no_translation\";i:0;s:12:\"hide_current\";i:1;s:10:\"force_home\";i:0;s:10:\"show_flags\";i:1;s:10:\"show_names\";i:1;s:8:\"dropdown\";i:0;}'),
(124, 29, '_wp_old_date', '2023-05-10'),
(126, 16, '_wp_old_date', '2023-05-10'),
(127, 18, '_wp_old_date', '2023-05-10'),
(130, 28, '_wp_old_date', '2023-05-10'),
(131, 17, '_wp_old_date', '2023-05-10'),
(132, 27, '_edit_lock', '1683885251:1'),
(133, 27, '_edit_last', '1'),
(134, 27, '_wp_page_template', 'default'),
(135, 11, '_edit_last', '1'),
(136, 11, '_wp_page_template', 'activites.php'),
(137, 34, '_edit_last', '1'),
(138, 34, '_edit_lock', '1691148743:1'),
(139, 34, '_wp_page_template', 'secteurs-d-activite/services.php'),
(140, 36, '_edit_last', '1'),
(141, 36, '_edit_lock', '1683883303:1'),
(142, 36, '_wp_page_template', 'secteurs-d-activite/immobilier.php'),
(143, 38, '_edit_last', '1'),
(144, 38, '_edit_lock', '1692083891:1'),
(145, 38, '_wp_page_template', 'secteurs-d-activite/negoce-et-sourcing.php'),
(146, 42, '_wp_page_template', 'activites.php'),
(147, 42, '_edit_last', '1'),
(148, 42, '_edit_lock', '1683883841:1'),
(152, 45, '_wp_page_template', 'template-contact.php'),
(153, 45, '_edit_last', '1'),
(154, 45, '_edit_lock', '1683883292:1'),
(155, 48, '_wp_page_template', 'secteurs-d-activite/immobilier.php'),
(156, 48, '_edit_last', '1'),
(157, 48, '_edit_lock', '1683883458:1'),
(158, 51, '_wp_page_template', 'secteurs-d-activite/distribution.php'),
(159, 51, '_edit_last', '1'),
(160, 51, '_edit_lock', '1691328582:1'),
(161, 54, '_wp_page_template', 'secteurs-d-activite/industrialisation.php'),
(162, 54, '_edit_last', '1'),
(163, 54, '_edit_lock', '1683884140:1'),
(164, 58, '_wp_page_template', 'secteurs-d-activite/negoce-et-sourcing.php'),
(165, 58, '_edit_last', '1'),
(166, 58, '_edit_lock', '1692086208:1'),
(167, 61, '_wp_page_template', 'secteurs-d-activite/services.php'),
(168, 61, '_edit_last', '1'),
(169, 61, '_edit_lock', '1691140148:1'),
(172, 29, '_wp_old_date', '2023-05-11'),
(174, 16, '_wp_old_date', '2023-05-11'),
(175, 18, '_wp_old_date', '2023-05-11'),
(176, 28, '_wp_old_date', '2023-05-11'),
(177, 17, '_wp_old_date', '2023-05-11'),
(178, 63, '_menu_item_type', 'post_type'),
(179, 63, '_menu_item_menu_item_parent', '0'),
(180, 63, '_menu_item_object_id', '27'),
(181, 63, '_menu_item_object', 'page'),
(182, 63, '_menu_item_target', ''),
(183, 63, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(184, 63, '_menu_item_xfn', ''),
(185, 63, '_menu_item_url', ''),
(187, 64, '_menu_item_type', 'post_type'),
(188, 64, '_menu_item_menu_item_parent', '0'),
(189, 64, '_menu_item_object_id', '11'),
(190, 64, '_menu_item_object', 'page'),
(191, 64, '_menu_item_target', ''),
(192, 64, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(193, 64, '_menu_item_xfn', ''),
(194, 64, '_menu_item_url', ''),
(195, 64, '_menu_item_orphaned', '1683885255'),
(196, 65, '_menu_item_type', 'post_type'),
(197, 65, '_menu_item_menu_item_parent', '0'),
(198, 65, '_menu_item_object_id', '42'),
(199, 65, '_menu_item_object', 'page'),
(200, 65, '_menu_item_target', ''),
(201, 65, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(202, 65, '_menu_item_xfn', ''),
(203, 65, '_menu_item_url', ''),
(205, 66, '_menu_item_type', 'post_type'),
(206, 66, '_menu_item_menu_item_parent', '0'),
(207, 66, '_menu_item_object_id', '45'),
(208, 66, '_menu_item_object', 'page'),
(209, 66, '_menu_item_target', ''),
(210, 66, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(211, 66, '_menu_item_xfn', ''),
(212, 66, '_menu_item_url', ''),
(214, 67, '_wp_attached_file', '2023/05/favicon.png'),
(215, 67, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:74;s:6:\"height\";i:74;s:4:\"file\";s:19:\"2023/05/favicon.png\";s:8:\"filesize\";i:375;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(216, 68, '_wp_attached_file', '2023/05/cropped-favicon.png'),
(217, 68, '_wp_attachment_context', 'site-icon'),
(218, 68, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:27:\"2023/05/cropped-favicon.png\";s:8:\"filesize\";i:2528;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:27:\"cropped-favicon-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:31868;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:27:\"cropped-favicon-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:9069;}s:13:\"site_icon-270\";a:5:{s:4:\"file\";s:27:\"cropped-favicon-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:27675;}s:13:\"site_icon-192\";a:5:{s:4:\"file\";s:27:\"cropped-favicon-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:1971;}s:13:\"site_icon-180\";a:5:{s:4:\"file\";s:27:\"cropped-favicon-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:10314;}s:12:\"site_icon-32\";a:5:{s:4:\"file\";s:25:\"cropped-favicon-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:272;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(221, 72, '_edit_lock', '1691058642:1'),
(222, 68, '_oembed_902e395cd8abf78f5fdc7eefd6d6a16d', '{{unknown}}'),
(223, 72, '_edit_last', '1'),
(224, 72, '_wp_trash_meta_status', 'publish'),
(225, 72, '_wp_trash_meta_time', '1691058684'),
(226, 72, '_wp_desired_post_slug', 'test');

-- --------------------------------------------------------

--
-- Structure de la table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2023-04-07 12:27:50', '2023-04-07 12:27:50', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2023-04-07 12:27:50', '2023-04-07 12:27:50', '', 0, 'http://innoventis.local/?p=1', 0, 'post', '', 1),
(8, 1, '2023-05-09 11:37:02', '2023-05-09 11:37:02', '', 'Qui sommes-nous', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2023-05-09 15:03:36', '2023-05-09 12:03:36', '', 0, 'http://innoventis.local/?page_id=8', 0, 'page', '', 0),
(9, 1, '2023-05-09 11:37:02', '2023-05-09 11:37:02', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2023-05-09 11:37:02', '2023-05-09 11:37:02', '', 8, 'http://innoventis.local/?p=9', 0, 'revision', '', 0),
(10, 1, '2023-05-09 15:03:36', '2023-05-09 12:03:36', '', 'Qui sommes-nous', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2023-05-09 15:03:36', '2023-05-09 12:03:36', '', 8, 'http://innoventis.local/?p=10', 0, 'revision', '', 0),
(11, 1, '2023-05-09 15:04:57', '2023-05-09 12:04:57', '', 'Secteurs d\'activité', '', 'publish', 'closed', 'closed', '', 'secteurs-dactivite', '', '', '2023-05-11 18:34:50', '2023-05-11 15:34:50', '', 0, 'http://innoventis.local/?page_id=11', 0, 'page', '', 0),
(12, 1, '2023-05-09 15:04:57', '2023-05-09 12:04:57', '', 'Secteurs d\'activité', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2023-05-09 15:04:57', '2023-05-09 12:04:57', '', 11, 'http://innoventis.local/?p=12', 0, 'revision', '', 0),
(13, 1, '2023-05-09 15:07:50', '2023-05-09 12:07:50', '', 'Nous contacter', '', 'publish', 'closed', 'closed', '', 'nous-contacter', '', '', '2023-05-09 15:21:03', '2023-05-09 12:21:03', '', 0, 'http://innoventis.local/?page_id=13', 0, 'page', '', 0),
(14, 1, '2023-05-09 15:07:50', '2023-05-09 12:07:50', '', 'Nous contacter', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2023-05-09 15:07:50', '2023-05-09 12:07:50', '', 13, 'http://innoventis.local/?p=14', 0, 'revision', '', 0),
(16, 1, '2023-05-12 12:52:02', '2023-05-09 12:34:41', ' ', '', '', 'publish', 'closed', 'closed', '', '16', '', '', '2023-05-12 12:52:02', '2023-05-12 09:52:02', '', 0, 'http://innoventis.local/?p=16', 1, 'nav_menu_item', '', 0),
(17, 1, '2023-05-12 12:52:02', '2023-05-09 12:34:41', ' ', '', '', 'publish', 'closed', 'closed', '', '17', '', '', '2023-05-12 12:52:02', '2023-05-12 09:52:02', '', 0, 'http://innoventis.local/?p=17', 4, 'nav_menu_item', '', 0),
(18, 1, '2023-05-12 12:52:02', '2023-05-09 12:34:41', '', 'Secteurs d’activité', '', 'publish', 'closed', 'closed', '', 'secteurs-dactivite', '', '', '2023-05-12 12:52:02', '2023-05-12 09:52:02', '', 0, 'http://innoventis.local/?p=18', 2, 'nav_menu_item', '', 0),
(19, 1, '2023-05-09 15:53:52', '2023-05-09 12:53:52', '', 'Distribution', '', 'publish', 'closed', 'closed', '', 'distribution', '', '', '2023-08-06 16:19:37', '2023-08-06 13:19:37', '', 11, 'http://innoventis.local/?page_id=19', 0, 'page', '', 0),
(20, 1, '2023-05-09 15:53:52', '2023-05-09 12:53:52', '', 'Importation et distribution', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2023-05-09 15:53:52', '2023-05-09 12:53:52', '', 19, 'http://innoventis.local/?p=20', 0, 'revision', '', 0),
(21, 1, '2023-05-09 15:54:13', '2023-05-09 12:54:13', '', 'Industrie', '', 'publish', 'closed', 'closed', '', 'industrie', '', '', '2023-08-04 19:36:18', '2023-08-04 16:36:18', '', 11, 'http://innoventis.local/?page_id=21', 0, 'page', '', 0),
(22, 1, '2023-05-09 15:54:13', '2023-05-09 12:54:13', '', 'Industrialisation', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2023-05-09 15:54:13', '2023-05-09 12:54:13', '', 21, 'http://innoventis.local/?p=22', 0, 'revision', '', 0),
(25, 1, '2023-05-10 10:43:06', '2023-05-10 07:43:06', '', 'polylang_mo_3', '', 'private', 'closed', 'closed', '', 'polylang_mo_3', '', '', '2023-05-10 10:43:06', '2023-05-10 07:43:06', '', 0, 'http://innoventis.local/?post_type=polylang_mo&p=25', 0, 'polylang_mo', '', 0),
(26, 1, '2023-05-10 10:43:06', '2023-05-10 07:43:06', '', 'polylang_mo_6', '', 'private', 'closed', 'closed', '', 'polylang_mo_6', '', '', '2023-05-10 10:43:06', '2023-05-10 07:43:06', '', 0, 'http://innoventis.local/?post_type=polylang_mo&p=26', 0, 'polylang_mo', '', 0),
(27, 1, '2023-05-10 10:44:30', '2023-05-10 07:44:30', '', 'Qui sommes-nous - English', '', 'publish', 'closed', 'closed', '', 'who-are-we', '', '', '2023-05-12 12:19:50', '2023-05-12 09:19:50', '', 0, 'http://innoventis.local/qui-sommes-nous-english/', 0, 'page', '', 0),
(28, 1, '2023-05-12 12:52:02', '2023-05-10 07:53:59', '', 'Langues', '', 'publish', 'closed', 'closed', '', 'languages', '', '', '2023-05-12 12:52:02', '2023-05-12 09:52:02', '', 0, 'http://innoventis.local/?p=28', 3, 'nav_menu_item', '', 0),
(29, 1, '2023-05-12 12:54:59', '2023-05-10 07:57:35', '', 'Langues', '', 'publish', 'closed', 'closed', '', 'languages-2', '', '', '2023-05-12 12:54:59', '2023-05-12 09:54:59', '', 0, 'http://innoventis.local/?p=29', 3, 'nav_menu_item', '', 0),
(33, 1, '2023-05-11 10:30:46', '2023-05-11 07:30:46', '', 'Qui sommes-nous - English', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2023-05-11 10:30:46', '2023-05-11 07:30:46', '', 27, 'http://innoventis.local/?p=33', 0, 'revision', '', 0),
(34, 1, '2023-05-12 11:25:02', '2023-05-12 08:25:02', '', 'Services', '', 'publish', 'closed', 'closed', '', 'services', '', '', '2023-05-12 11:25:02', '2023-05-12 08:25:02', '', 11, 'http://innoventis.local/?page_id=34', 0, 'page', '', 0),
(35, 1, '2023-05-12 11:25:02', '2023-05-12 08:25:02', '', 'Services', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2023-05-12 11:25:02', '2023-05-12 08:25:02', '', 34, 'http://innoventis.local/?p=35', 0, 'revision', '', 0),
(36, 1, '2023-05-12 11:27:48', '2023-05-12 08:27:48', '', 'Immobilier', '', 'publish', 'closed', 'closed', '', 'immobilier', '', '', '2023-05-12 11:27:48', '2023-05-12 08:27:48', '', 11, 'http://innoventis.local/?page_id=36', 0, 'page', '', 0),
(37, 1, '2023-05-12 11:27:48', '2023-05-12 08:27:48', '', 'Immobilier', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2023-05-12 11:27:48', '2023-05-12 08:27:48', '', 36, 'http://innoventis.local/?p=37', 0, 'revision', '', 0),
(38, 1, '2023-05-12 11:30:25', '2023-05-12 08:30:25', '', 'Negoce et sourcing', '', 'publish', 'closed', 'closed', '', 'negoce-et-sourcing', '', '', '2023-08-15 10:19:50', '2023-08-15 07:19:50', '', 11, 'http://innoventis.local/?page_id=38', 0, 'page', '', 0),
(39, 1, '2023-05-12 11:30:25', '2023-05-12 08:30:25', '', 'Internationalisation', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2023-05-12 11:30:25', '2023-05-12 08:30:25', '', 38, 'http://innoventis.local/?p=39', 0, 'revision', '', 0),
(40, 1, '2023-05-12 12:06:47', '2023-05-12 09:06:47', '', 'Who are we', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2023-05-12 12:06:47', '2023-05-12 09:06:47', '', 27, 'http://innoventis.local/?p=40', 0, 'revision', '', 0),
(41, 1, '2023-05-12 12:07:35', '2023-05-12 09:07:35', '', 'Qui sommes-nous - English', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2023-05-12 12:07:35', '2023-05-12 09:07:35', '', 27, 'http://innoventis.local/?p=41', 0, 'revision', '', 0),
(42, 1, '2023-05-12 12:17:56', '2023-05-12 09:17:56', '', 'Secteurs d\'activité - English', '', 'publish', 'closed', 'closed', '', 'business-clusters', '', '', '2023-05-12 12:26:31', '2023-05-12 09:26:31', '', 0, 'http://innoventis.local/?page_id=42', 0, 'page', '', 0),
(43, 1, '2023-05-12 12:17:56', '2023-05-12 09:17:56', '', 'Sectors', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2023-05-12 12:17:56', '2023-05-12 09:17:56', '', 42, 'http://innoventis.local/?p=43', 0, 'revision', '', 0),
(44, 1, '2023-05-12 12:18:30', '2023-05-12 09:18:30', '', 'Secteurs d\'activité - English', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2023-05-12 12:18:30', '2023-05-12 09:18:30', '', 42, 'http://innoventis.local/?p=44', 0, 'revision', '', 0),
(45, 1, '2023-05-12 12:23:36', '2023-05-12 09:23:36', '', 'Nous contacter - English', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2023-05-12 12:23:52', '2023-05-12 09:23:52', '', 0, 'http://innoventis.local/?page_id=45', 0, 'page', '', 0),
(46, 1, '2023-05-12 12:23:36', '2023-05-12 09:23:36', '', 'Contact us', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2023-05-12 12:23:36', '2023-05-12 09:23:36', '', 45, 'http://innoventis.local/?p=46', 0, 'revision', '', 0),
(47, 1, '2023-05-12 12:23:52', '2023-05-12 09:23:52', '', 'Nous contacter - English', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2023-05-12 12:23:52', '2023-05-12 09:23:52', '', 45, 'http://innoventis.local/?p=47', 0, 'revision', '', 0),
(48, 1, '2023-05-12 12:24:23', '2023-05-12 09:24:23', '', 'Immobilier - English', '', 'publish', 'closed', 'closed', '', 'real-estate', '', '', '2023-05-12 12:24:33', '2023-05-12 09:24:33', '', 42, 'http://innoventis.local/?page_id=48', 0, 'page', '', 0),
(49, 1, '2023-05-12 12:24:23', '2023-05-12 09:24:23', '', 'Real estate', '', 'inherit', 'closed', 'closed', '', '48-revision-v1', '', '', '2023-05-12 12:24:23', '2023-05-12 09:24:23', '', 48, 'http://innoventis.local/?p=49', 0, 'revision', '', 0),
(50, 1, '2023-05-12 12:24:33', '2023-05-12 09:24:33', '', 'Immobilier - English', '', 'inherit', 'closed', 'closed', '', '48-revision-v1', '', '', '2023-05-12 12:24:33', '2023-05-12 09:24:33', '', 48, 'http://innoventis.local/?p=50', 0, 'revision', '', 0),
(51, 1, '2023-05-12 12:25:00', '2023-05-12 09:25:00', '', 'Distribution - English', '', 'publish', 'closed', 'closed', '', 'distribution', '', '', '2023-08-06 16:20:18', '2023-08-06 13:20:18', '', 42, 'http://innoventis.local/?page_id=51', 0, 'page', '', 0),
(52, 1, '2023-05-12 12:25:00', '2023-05-12 09:25:00', '', 'Import and distribution', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2023-05-12 12:25:00', '2023-05-12 09:25:00', '', 51, 'http://innoventis.local/?p=52', 0, 'revision', '', 0),
(53, 1, '2023-05-12 12:25:17', '2023-05-12 09:25:17', '', 'Importation et distribution - English', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2023-05-12 12:25:17', '2023-05-12 09:25:17', '', 51, 'http://innoventis.local/?p=53', 0, 'revision', '', 0),
(54, 1, '2023-05-12 12:25:37', '2023-05-12 09:25:37', '', 'Industrialisation - English', '', 'publish', 'closed', 'closed', '', 'industrialization', '', '', '2023-05-12 12:26:01', '2023-05-12 09:26:01', '', 42, 'http://innoventis.local/?page_id=54', 0, 'page', '', 0),
(55, 1, '2023-05-12 12:25:37', '2023-05-12 09:25:37', '', 'Industrialization', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2023-05-12 12:25:37', '2023-05-12 09:25:37', '', 54, 'http://innoventis.local/?p=55', 0, 'revision', '', 0),
(56, 1, '2023-05-12 12:25:55', '2023-05-12 09:25:55', '', 'Industrialisation-english', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2023-05-12 12:25:55', '2023-05-12 09:25:55', '', 54, 'http://innoventis.local/?p=56', 0, 'revision', '', 0),
(57, 1, '2023-05-12 12:26:01', '2023-05-12 09:26:01', '', 'Industrialisation - English', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2023-05-12 12:26:01', '2023-05-12 09:26:01', '', 54, 'http://innoventis.local/?p=57', 0, 'revision', '', 0),
(58, 1, '2023-05-12 12:27:10', '2023-05-12 09:27:10', '', 'Negoce et sourcing- English', '', 'publish', 'closed', 'closed', '', 'internationalization', '', '', '2023-08-15 10:20:57', '2023-08-15 07:20:57', '', 42, 'http://innoventis.local/?page_id=58', 0, 'page', '', 0),
(59, 1, '2023-05-12 12:27:10', '2023-05-12 09:27:10', '', 'Internationalization', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2023-05-12 12:27:10', '2023-05-12 09:27:10', '', 58, 'http://innoventis.local/?p=59', 0, 'revision', '', 0),
(60, 1, '2023-05-12 12:27:22', '2023-05-12 09:27:22', '', 'Internationalisation - English', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2023-05-12 12:27:22', '2023-05-12 09:27:22', '', 58, 'http://innoventis.local/?p=60', 0, 'revision', '', 0),
(61, 1, '2023-05-12 12:27:39', '2023-05-12 09:27:39', '', 'Services - english', '', 'publish', 'closed', 'closed', '', 'services', '', '', '2023-08-04 12:03:56', '2023-08-04 09:03:56', '', 42, 'http://innoventis.local/?page_id=61', 0, 'page', '', 0),
(62, 1, '2023-05-12 12:27:39', '2023-05-12 09:27:39', '', 'Services', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2023-05-12 12:27:39', '2023-05-12 09:27:39', '', 61, 'http://innoventis.local/?p=62', 0, 'revision', '', 0),
(63, 1, '2023-05-12 12:54:59', '2023-05-12 09:54:59', '', 'Who are we', '', 'publish', 'closed', 'closed', '', 'who-are-we-2', '', '', '2023-05-12 12:54:59', '2023-05-12 09:54:59', '', 0, 'http://innoventis.local/?p=63', 1, 'nav_menu_item', '', 0),
(64, 1, '2023-05-12 12:54:15', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2023-05-12 12:54:15', '0000-00-00 00:00:00', '', 0, 'http://innoventis.local/?p=64', 1, 'nav_menu_item', '', 0),
(65, 1, '2023-05-12 12:54:59', '2023-05-12 09:54:59', '', 'Business clusters', '', 'publish', 'closed', 'closed', '', 'business-clusters', '', '', '2023-05-12 12:54:59', '2023-05-12 09:54:59', '', 0, 'http://innoventis.local/?p=65', 2, 'nav_menu_item', '', 0),
(66, 1, '2023-05-12 12:54:59', '2023-05-12 09:54:59', '', 'Contact us', '', 'publish', 'closed', 'closed', '', 'contact-us-2', '', '', '2023-05-12 12:54:59', '2023-05-12 09:54:59', '', 0, 'http://innoventis.local/?p=66', 4, 'nav_menu_item', '', 0),
(67, 1, '2023-05-12 13:22:04', '2023-05-12 10:22:04', '', 'favicon', '', 'inherit', 'open', 'closed', '', 'favicon', '', '', '2023-05-12 13:22:04', '2023-05-12 10:22:04', '', 0, 'http://innoventis.local/wp-content/uploads/2023/05/favicon.png', 0, 'attachment', 'image/png', 0),
(68, 1, '2023-05-12 13:22:39', '2023-05-12 10:22:39', 'http://innoventis.local/wp-content/uploads/2023/05/cropped-favicon.png', 'cropped-favicon.png', '', 'inherit', 'open', 'closed', '', 'cropped-favicon-png', '', '', '2023-05-12 13:22:39', '2023-05-12 10:22:39', '', 0, 'http://innoventis.local/wp-content/uploads/2023/05/cropped-favicon.png', 0, 'attachment', 'image/png', 0),
(72, 1, '2023-08-03 13:06:08', '2023-08-03 10:06:08', '<!-- wp:group {\"align\":\"full\",\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group alignfull\"><!-- wp:cover {\"url\":\"https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/a017-eberhard-cco-the-after-rain.jpg?w=1200\\u0026amp;h=1200\\u0026amp;fit=clip\\u0026amp;crop=default\\u0026amp;dpr=1\\u0026amp;q=75\\u0026amp;vib=3\\u0026amp;con=3\\u0026amp;usm=15\\u0026amp;cs=srgb\\u0026amp;bg=F4F4F3\\u0026amp;ixlib=js-2.2.1\\u0026amp;s=e7b4ca0a0edcc84ba48c1f7ebf02dd5a\",\"id\":61,\"dimRatio\":50,\"overlayColor\":\"black\",\"focalPoint\":{\"x\":0.5,\"y\":0.5},\"minHeight\":50,\"contentPosition\":\"center center\",\"isDark\":false,\"align\":\"full\",\"style\":{\"spacing\":{\"padding\":{\"top\":\"var:preset|spacing|30\",\"right\":\"var:preset|spacing|30\",\"bottom\":\"var:preset|spacing|30\",\"left\":\"var:preset|spacing|30\"}}}} -->\n<div class=\"wp-block-cover alignfull is-light\" style=\"padding-top:var(--wp--preset--spacing--30);padding-right:var(--wp--preset--spacing--30);padding-bottom:var(--wp--preset--spacing--30);padding-left:var(--wp--preset--spacing--30);min-height:50px\"><span aria-hidden=\"true\" class=\"wp-block-cover__background has-black-background-color has-background-dim\"></span><img class=\"wp-block-cover__image-background wp-image-61\" alt=\"\" src=\"https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/a017-eberhard-cco-the-after-rain.jpg?w=1200&amp;h=1200&amp;fit=clip&amp;crop=default&amp;dpr=1&amp;q=75&amp;vib=3&amp;con=3&amp;usm=15&amp;cs=srgb&amp;bg=F4F4F3&amp;ixlib=js-2.2.1&amp;s=e7b4ca0a0edcc84ba48c1f7ebf02dd5a\" style=\"object-position:50% 50%\" data-object-fit=\"cover\" data-object-position=\"50% 50%\"/><div class=\"wp-block-cover__inner-container\"><!-- wp:group {\"align\":\"wide\",\"style\":{\"elements\":{\"link\":{\"color\":{\"text\":\"var:preset|color|base\"}}},\"spacing\":{\"margin\":{\"top\":\"0\",\"bottom\":\"0\"}}},\"textColor\":\"base\",\"layout\":{\"type\":\"flex\",\"justifyContent\":\"space-between\",\"flexWrap\":\"wrap\"}} -->\n<div class=\"wp-block-group alignwide has-base-color has-text-color has-link-color\" style=\"margin-top:0;margin-bottom:0\"><!-- wp:group {\"layout\":{\"type\":\"flex\"}} -->\n<div class=\"wp-block-group\"><!-- wp:site-logo {\"className\":\"is-style-default\"} /-->\n\n<!-- wp:site-title {\"style\":{\"elements\":{\"link\":{\"color\":{\"text\":\"var:preset|color|background\"}}}},\"textColor\":\"white\",\"fontSize\":\"medium\"} /--></div>\n<!-- /wp:group -->\n\n<!-- wp:navigation {\"ref\":73,\"textColor\":\"white\",\"layout\":{\"type\":\"flex\",\"setCascadingProperties\":true,\"justifyContent\":\"right\"}} /--></div>\n<!-- /wp:group -->\n\n<!-- wp:spacer {\"height\":\"33vw\"} -->\n<div style=\"height:33vw\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div></div>\n<!-- /wp:cover --></div>\n<!-- /wp:group -->', 'test', '', 'trash', 'closed', 'closed', '', 'test__trashed', '', '', '2023-08-03 13:31:24', '2023-08-03 10:31:24', '', 0, 'http://innoventis.local/?page_id=72', 0, 'page', '', 0),
(73, 1, '2023-08-03 13:02:10', '2023-08-03 10:02:10', '<!-- wp:navigation-link {\"label\":\"Who are we\",\"type\":\"page\",\"id\":27,\"url\":\"http://innoventis.local/en/who-are-we/\",\"kind\":\"post-type\",\"isTopLevelLink\":true} /-->\n\n<!-- wp:navigation-link {\"label\":\"Business clusters\",\"type\":\"page\",\"id\":42,\"url\":\"http://innoventis.local/en/business-clusters/\",\"kind\":\"post-type\",\"isTopLevelLink\":true} /-->\n\n<!-- wp:navigation-link {\"label\":\"Langues\",\"type\":\"custom\",\"url\":\"#pll_switcher\",\"kind\":\"custom\",\"isTopLevelLink\":true} /-->\n\n<!-- wp:navigation-link {\"label\":\"Contact us\",\"type\":\"page\",\"id\":45,\"url\":\"http://innoventis.local/en/contact-us/\",\"kind\":\"post-type\",\"isTopLevelLink\":true} /-->', 'Nav-en', '', 'publish', 'closed', 'closed', '', 'nav-en', '', '', '2023-08-03 13:02:10', '2023-08-03 10:02:10', '', 0, 'http://innoventis.local/2023/08/03/nav-en/', 0, 'wp_navigation', '', 0),
(74, 1, '2023-08-03 13:02:50', '2023-08-03 10:02:50', '<!-- wp:group {\"align\":\"full\",\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group alignfull\"><!-- wp:cover {\"url\":\"https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/a017-eberhard-cco-the-after-rain.jpg?w=1200\\u0026amp;h=1200\\u0026amp;fit=clip\\u0026amp;crop=default\\u0026amp;dpr=1\\u0026amp;q=75\\u0026amp;vib=3\\u0026amp;con=3\\u0026amp;usm=15\\u0026amp;cs=srgb\\u0026amp;bg=F4F4F3\\u0026amp;ixlib=js-2.2.1\\u0026amp;s=e7b4ca0a0edcc84ba48c1f7ebf02dd5a\",\"id\":61,\"dimRatio\":50,\"overlayColor\":\"black\",\"focalPoint\":{\"x\":0.5,\"y\":0.5},\"minHeight\":50,\"contentPosition\":\"center center\",\"isDark\":false,\"align\":\"full\",\"style\":{\"spacing\":{\"padding\":{\"top\":\"var:preset|spacing|30\",\"right\":\"var:preset|spacing|30\",\"bottom\":\"var:preset|spacing|30\",\"left\":\"var:preset|spacing|30\"}}}} -->\n<div class=\"wp-block-cover alignfull is-light\" style=\"padding-top:var(--wp--preset--spacing--30);padding-right:var(--wp--preset--spacing--30);padding-bottom:var(--wp--preset--spacing--30);padding-left:var(--wp--preset--spacing--30);min-height:50px\"><span aria-hidden=\"true\" class=\"wp-block-cover__background has-black-background-color has-background-dim\"></span><img class=\"wp-block-cover__image-background wp-image-61\" alt=\"\" src=\"https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/a017-eberhard-cco-the-after-rain.jpg?w=1200&amp;h=1200&amp;fit=clip&amp;crop=default&amp;dpr=1&amp;q=75&amp;vib=3&amp;con=3&amp;usm=15&amp;cs=srgb&amp;bg=F4F4F3&amp;ixlib=js-2.2.1&amp;s=e7b4ca0a0edcc84ba48c1f7ebf02dd5a\" style=\"object-position:50% 50%\" data-object-fit=\"cover\" data-object-position=\"50% 50%\"/><div class=\"wp-block-cover__inner-container\"><!-- wp:group {\"align\":\"wide\",\"style\":{\"elements\":{\"link\":{\"color\":{\"text\":\"var:preset|color|base\"}}},\"spacing\":{\"margin\":{\"top\":\"0\",\"bottom\":\"0\"}}},\"textColor\":\"base\",\"layout\":{\"type\":\"flex\",\"justifyContent\":\"space-between\",\"flexWrap\":\"wrap\"}} -->\n<div class=\"wp-block-group alignwide has-base-color has-text-color has-link-color\" style=\"margin-top:0;margin-bottom:0\"><!-- wp:group {\"layout\":{\"type\":\"flex\"}} -->\n<div class=\"wp-block-group\"><!-- wp:site-logo {\"className\":\"is-style-default\"} /-->\n\n<!-- wp:site-title {\"style\":{\"elements\":{\"link\":{\"color\":{\"text\":\"var:preset|color|background\"}}}},\"textColor\":\"white\",\"fontSize\":\"medium\"} /--></div>\n<!-- /wp:group -->\n\n<!-- wp:navigation {\"ref\":73,\"textColor\":\"white\",\"layout\":{\"type\":\"flex\",\"setCascadingProperties\":true,\"justifyContent\":\"right\"}} /--></div>\n<!-- /wp:group -->\n\n<!-- wp:spacer {\"height\":\"33vw\"} -->\n<div style=\"height:33vw\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div></div>\n<!-- /wp:cover --></div>\n<!-- /wp:group -->', '', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2023-08-03 13:02:50', '2023-08-03 10:02:50', '', 72, 'http://innoventis.local/?p=74', 0, 'revision', '', 0),
(75, 1, '2023-08-03 13:05:57', '2023-08-03 10:05:57', '<!-- wp:group {\"align\":\"full\",\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group alignfull\"><!-- wp:cover {\"url\":\"https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/a017-eberhard-cco-the-after-rain.jpg?w=1200\\u0026amp;h=1200\\u0026amp;fit=clip\\u0026amp;crop=default\\u0026amp;dpr=1\\u0026amp;q=75\\u0026amp;vib=3\\u0026amp;con=3\\u0026amp;usm=15\\u0026amp;cs=srgb\\u0026amp;bg=F4F4F3\\u0026amp;ixlib=js-2.2.1\\u0026amp;s=e7b4ca0a0edcc84ba48c1f7ebf02dd5a\",\"id\":61,\"dimRatio\":50,\"overlayColor\":\"black\",\"focalPoint\":{\"x\":0.5,\"y\":0.5},\"minHeight\":50,\"contentPosition\":\"center center\",\"isDark\":false,\"align\":\"full\",\"style\":{\"spacing\":{\"padding\":{\"top\":\"var:preset|spacing|30\",\"right\":\"var:preset|spacing|30\",\"bottom\":\"var:preset|spacing|30\",\"left\":\"var:preset|spacing|30\"}}}} -->\n<div class=\"wp-block-cover alignfull is-light\" style=\"padding-top:var(--wp--preset--spacing--30);padding-right:var(--wp--preset--spacing--30);padding-bottom:var(--wp--preset--spacing--30);padding-left:var(--wp--preset--spacing--30);min-height:50px\"><span aria-hidden=\"true\" class=\"wp-block-cover__background has-black-background-color has-background-dim\"></span><img class=\"wp-block-cover__image-background wp-image-61\" alt=\"\" src=\"https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/a017-eberhard-cco-the-after-rain.jpg?w=1200&amp;h=1200&amp;fit=clip&amp;crop=default&amp;dpr=1&amp;q=75&amp;vib=3&amp;con=3&amp;usm=15&amp;cs=srgb&amp;bg=F4F4F3&amp;ixlib=js-2.2.1&amp;s=e7b4ca0a0edcc84ba48c1f7ebf02dd5a\" style=\"object-position:50% 50%\" data-object-fit=\"cover\" data-object-position=\"50% 50%\"/><div class=\"wp-block-cover__inner-container\"><!-- wp:group {\"align\":\"wide\",\"style\":{\"elements\":{\"link\":{\"color\":{\"text\":\"var:preset|color|base\"}}},\"spacing\":{\"margin\":{\"top\":\"0\",\"bottom\":\"0\"}}},\"textColor\":\"base\",\"layout\":{\"type\":\"flex\",\"justifyContent\":\"space-between\",\"flexWrap\":\"wrap\"}} -->\n<div class=\"wp-block-group alignwide has-base-color has-text-color has-link-color\" style=\"margin-top:0;margin-bottom:0\"><!-- wp:group {\"layout\":{\"type\":\"flex\"}} -->\n<div class=\"wp-block-group\"><!-- wp:site-logo {\"className\":\"is-style-default\"} /-->\n\n<!-- wp:site-title {\"style\":{\"elements\":{\"link\":{\"color\":{\"text\":\"var:preset|color|background\"}}}},\"textColor\":\"white\",\"fontSize\":\"medium\"} /--></div>\n<!-- /wp:group -->\n\n<!-- wp:navigation {\"ref\":73,\"textColor\":\"white\",\"layout\":{\"type\":\"flex\",\"setCascadingProperties\":true,\"justifyContent\":\"right\"}} /--></div>\n<!-- /wp:group -->\n\n<!-- wp:spacer {\"height\":\"33vw\"} -->\n<div style=\"height:33vw\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div></div>\n<!-- /wp:cover --></div>\n<!-- /wp:group -->', 'test', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2023-08-03 13:05:57', '2023-08-03 10:05:57', '', 72, 'http://innoventis.local/?p=75', 0, 'revision', '', 0),
(76, 1, '2023-08-03 13:10:34', '2023-08-03 10:10:34', '<!-- wp:group {\"align\":\"full\",\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group alignfull\"><!-- wp:cover {\"url\":\"https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/a017-eberhard-cco-the-after-rain.jpg?w=1200\\u0026amp;h=1200\\u0026amp;fit=clip\\u0026amp;crop=default\\u0026amp;dpr=1\\u0026amp;q=75\\u0026amp;vib=3\\u0026amp;con=3\\u0026amp;usm=15\\u0026amp;cs=srgb\\u0026amp;bg=F4F4F3\\u0026amp;ixlib=js-2.2.1\\u0026amp;s=e7b4ca0a0edcc84ba48c1f7ebf02dd5a\",\"id\":61,\"dimRatio\":50,\"overlayColor\":\"black\",\"focalPoint\":{\"x\":0.5,\"y\":0.5},\"minHeight\":50,\"contentPosition\":\"center center\",\"isDark\":false,\"align\":\"full\",\"style\":{\"spacing\":{\"padding\":{\"top\":\"var:preset|spacing|30\",\"right\":\"var:preset|spacing|30\",\"bottom\":\"var:preset|spacing|30\",\"left\":\"var:preset|spacing|30\"}}}} -->\n<div class=\"wp-block-cover alignfull is-light\" style=\"padding-top:var(--wp--preset--spacing--30);padding-right:var(--wp--preset--spacing--30);padding-bottom:var(--wp--preset--spacing--30);padding-left:var(--wp--preset--spacing--30);min-height:50px\"><span aria-hidden=\"true\" class=\"wp-block-cover__background has-black-background-color has-background-dim\"></span><img class=\"wp-block-cover__image-background wp-image-61\" alt=\"\" src=\"https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/a017-eberhard-cco-the-after-rain.jpg?w=1200&amp;h=1200&amp;fit=clip&amp;crop=default&amp;dpr=1&amp;q=75&amp;vib=3&amp;con=3&amp;usm=15&amp;cs=srgb&amp;bg=F4F4F3&amp;ixlib=js-2.2.1&amp;s=e7b4ca0a0edcc84ba48c1f7ebf02dd5a\" style=\"object-position:50% 50%\" data-object-fit=\"cover\" data-object-position=\"50% 50%\"/><div class=\"wp-block-cover__inner-container\"><!-- wp:group {\"align\":\"wide\",\"style\":{\"elements\":{\"link\":{\"color\":{\"text\":\"var:preset|color|base\"}}},\"spacing\":{\"margin\":{\"top\":\"0\",\"bottom\":\"0\"}}},\"textColor\":\"base\",\"layout\":{\"type\":\"flex\",\"justifyContent\":\"space-between\",\"flexWrap\":\"wrap\"}} -->\n<div class=\"wp-block-group alignwide has-base-color has-text-color has-link-color\" style=\"margin-top:0;margin-bottom:0\"><!-- wp:group {\"layout\":{\"type\":\"flex\"}} -->\n<div class=\"wp-block-group\"><!-- wp:site-logo {\"className\":\"is-style-default\"} /-->\n\n<!-- wp:site-title {\"style\":{\"elements\":{\"link\":{\"color\":{\"text\":\"var:preset|color|background\"}}}},\"textColor\":\"white\",\"fontSize\":\"medium\"} /--></div>\n<!-- /wp:group -->\n\n<!-- wp:navigation {\"ref\":73,\"textColor\":\"white\",\"layout\":{\"type\":\"flex\",\"setCascadingProperties\":true,\"justifyContent\":\"right\"}} /--></div>\n<!-- /wp:group -->\n\n<!-- wp:spacer {\"height\":\"33vw\"} -->\n<div style=\"height:33vw\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div></div>\n<!-- /wp:cover --></div>\n<!-- /wp:group -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 't', '', 'inherit', 'closed', 'closed', '', '72-autosave-v1', '', '', '2023-08-03 13:10:34', '2023-08-03 10:10:34', '', 72, 'http://innoventis.local/?p=76', 0, 'revision', '', 0),
(77, 1, '2023-08-04 12:03:56', '2023-08-04 09:03:56', '', 'Services - english', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2023-08-04 12:03:56', '2023-08-04 09:03:56', '', 61, 'http://innoventis.local/?p=77', 0, 'revision', '', 0),
(78, 1, '2023-08-04 18:58:39', '2023-08-04 15:58:39', '', 'Industrie', '', 'inherit', 'closed', 'closed', '', '21-autosave-v1', '', '', '2023-08-04 18:58:39', '2023-08-04 15:58:39', '', 21, 'http://innoventis.local/?p=78', 0, 'revision', '', 0),
(79, 1, '2023-08-04 18:59:53', '2023-08-04 15:59:53', '', 'Industrie', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2023-08-04 18:59:53', '2023-08-04 15:59:53', '', 21, 'http://innoventis.local/?p=79', 0, 'revision', '', 0),
(80, 1, '2023-08-06 16:19:37', '2023-08-06 13:19:37', '', 'Distribution', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2023-08-06 16:19:37', '2023-08-06 13:19:37', '', 19, 'http://innoventis.local/?p=80', 0, 'revision', '', 0),
(81, 1, '2023-08-06 16:20:18', '2023-08-06 13:20:18', '', 'Distribution - English', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2023-08-06 16:20:18', '2023-08-06 13:20:18', '', 51, 'http://innoventis.local/?p=81', 0, 'revision', '', 0),
(82, 1, '2023-08-15 10:18:45', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-08-15 10:18:45', '0000-00-00 00:00:00', '', 0, 'http://innoventis.local/?p=82', 0, 'post', '', 0),
(83, 1, '2023-08-15 10:19:35', '2023-08-15 07:19:35', '', 'Negoce et sourcing', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2023-08-15 10:19:35', '2023-08-15 07:19:35', '', 38, 'http://innoventis.local/?p=83', 0, 'revision', '', 0),
(84, 1, '2023-08-15 10:20:57', '2023-08-15 07:20:57', '', 'Negoce et sourcing- English', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2023-08-15 10:20:57', '2023-08-15 07:20:57', '', 58, 'http://innoventis.local/?p=84', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Nav-fr', 'nav-fr', 0),
(3, 'English', 'en', 0),
(4, 'English', 'pll_en', 0),
(5, 'pll_645b4b0a721c4', 'pll_645b4b0a721c4', 0),
(6, 'Français', 'fr', 1),
(7, 'Français', 'pll_fr', 0),
(8, 'Uncategorized', 'uncategorized-fr', 0),
(10, 'pll_645b4b5ee16bd', 'pll_645b4b5ee16bd', 0),
(11, 'Nav-en', 'nav-en', 0),
(12, 'pll_645e044490cec', 'pll_645e044490cec', 0),
(13, 'pll_645e0598db5a0', 'pll_645e0598db5a0', 0),
(14, 'pll_645e05c773bcf', 'pll_645e05c773bcf', 0),
(15, 'pll_645e05ec6f67d', 'pll_645e05ec6f67d', 0),
(16, 'pll_645e061198af8', 'pll_645e061198af8', 0),
(17, 'pll_645e066e439e3', 'pll_645e066e439e3', 0),
(18, 'pll_645e068b5a404', 'pll_645e068b5a404', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(1, 4, 0),
(1, 5, 0),
(1, 6, 0),
(8, 5, 0),
(8, 6, 0),
(8, 7, 0),
(8, 10, 0),
(11, 6, 0),
(11, 12, 0),
(13, 6, 0),
(13, 13, 0),
(16, 2, 0),
(17, 2, 0),
(18, 2, 0),
(19, 6, 0),
(19, 15, 0),
(21, 6, 0),
(21, 16, 0),
(27, 3, 0),
(27, 10, 0),
(28, 2, 0),
(29, 11, 0),
(34, 6, 0),
(34, 18, 0),
(36, 6, 0),
(36, 14, 0),
(38, 6, 0),
(38, 17, 0),
(42, 3, 0),
(42, 12, 0),
(45, 3, 0),
(45, 13, 0),
(48, 3, 0),
(48, 14, 0),
(51, 3, 0),
(51, 15, 0),
(54, 3, 0),
(54, 16, 0),
(58, 3, 0),
(58, 17, 0),
(61, 3, 0),
(61, 18, 0),
(63, 11, 0),
(65, 11, 0),
(66, 11, 0),
(67, 6, 0),
(68, 6, 0),
(72, 6, 0),
(82, 6, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 4),
(3, 3, 'language', 'a:3:{s:6:\"locale\";s:5:\"en_US\";s:3:\"rtl\";i:0;s:9:\"flag_code\";s:2:\"us\";}', 0, 8),
(4, 4, 'term_language', '', 0, 1),
(5, 5, 'term_translations', 'a:2:{s:2:\"en\";i:1;s:2:\"fr\";i:8;}', 0, 2),
(6, 6, 'language', 'a:3:{s:6:\"locale\";s:5:\"fr_FR\";s:3:\"rtl\";i:0;s:9:\"flag_code\";s:2:\"fr\";}', 0, 9),
(7, 7, 'term_language', '', 0, 1),
(8, 8, 'category', '', 0, 0),
(10, 10, 'post_translations', 'a:2:{s:2:\"fr\";i:8;s:2:\"en\";i:27;}', 0, 2),
(11, 11, 'nav_menu', '', 0, 4),
(12, 12, 'post_translations', 'a:2:{s:2:\"en\";i:42;s:2:\"fr\";i:11;}', 0, 2),
(13, 13, 'post_translations', 'a:2:{s:2:\"en\";i:45;s:2:\"fr\";i:13;}', 0, 2),
(14, 14, 'post_translations', 'a:2:{s:2:\"en\";i:48;s:2:\"fr\";i:36;}', 0, 2),
(15, 15, 'post_translations', 'a:2:{s:2:\"en\";i:51;s:2:\"fr\";i:19;}', 0, 2),
(16, 16, 'post_translations', 'a:2:{s:2:\"en\";i:54;s:2:\"fr\";i:21;}', 0, 2),
(17, 17, 'post_translations', 'a:2:{s:2:\"en\";i:58;s:2:\"fr\";i:38;}', 0, 2),
(18, 18, 'post_translations', 'a:2:{s:2:\"en\";i:61;s:2:\"fr\";i:34;}', 0, 2);

-- --------------------------------------------------------

--
-- Structure de la table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'toky'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'false'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"c42eb6f3c28910725165b191b75ff85e8007420aa048aa47965950260f60f2cf\";a:4:{s:10:\"expiration\";i:1692256721;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36\";s:5:\"login\";i:1692083921;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '82'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'wp_persisted_preferences', 'a:2:{s:14:\"core/edit-post\";a:3:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;s:10:\"openPanels\";a:2:{i:0;s:11:\"post-status\";i:1;s:15:\"page-attributes\";}}s:9:\"_modified\";s:24:\"2023-05-09T12:16:48.282Z\";}'),
(20, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(22, 1, 'nav_menu_recently_edited', '11'),
(23, 1, 'wp_user-settings', 'editor=tinymce&posts_list_mode=list&libraryContent=browse&mfold=o'),
(24, 1, 'wp_user-settings-time', '1691745273'),
(25, 1, 'edit_page_per_page', '20');

-- --------------------------------------------------------

--
-- Structure de la table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'toky', '$P$BNTgX5EpWWb7mVRIWTIQ7l9XeMqfxC0', 'toky', 'tokyrt.pro@gmail.com', 'http://innoventis.local', '2023-04-07 12:27:50', '', 0, 'toky');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Index pour la table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Index pour la table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Index pour la table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Index pour la table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Index pour la table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Index pour la table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Index pour la table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=752;

--
-- AUTO_INCREMENT pour la table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;

--
-- AUTO_INCREMENT pour la table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT pour la table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pour la table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pour la table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT pour la table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
