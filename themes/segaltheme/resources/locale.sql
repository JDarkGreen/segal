# WordPress MySQL database migration
#
# Generated: Monday 7. November 2016 23:17 UTC
# Hostname: localhost
# Database: `segal`
# --------------------------------------------------------

/*!40101 SET NAMES utf8 */;

SET sql_mode='NO_AUTO_VALUE_ON_ZERO';



#
# Delete any existing table `wp_commentmeta`
#

DROP TABLE IF EXISTS `wp_commentmeta`;


#
# Table structure of table `wp_commentmeta`
#

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_commentmeta`
#

#
# End of data contents of table `wp_commentmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_comments`
#

DROP TABLE IF EXISTS `wp_comments`;


#
# Table structure of table `wp_comments`
#

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_comments`
#
INSERT INTO `wp_comments` ( `comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un comentarista de WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2016-11-07 17:13:52', '2016-11-07 17:13:52', 'Hola, esto es un comentario.\nPara empezar a moderar, editar y borrar comentarios, por favor, visite la pantalla de comentarios en el escritorio.\nLos avatares de los comentaristas provienen de <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0) ;

#
# End of data contents of table `wp_comments`
# --------------------------------------------------------



#
# Delete any existing table `wp_links`
#

DROP TABLE IF EXISTS `wp_links`;


#
# Table structure of table `wp_links`
#

CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_links`
#

#
# End of data contents of table `wp_links`
# --------------------------------------------------------



#
# Delete any existing table `wp_options`
#

DROP TABLE IF EXISTS `wp_options`;


#
# Table structure of table `wp_options`
#

CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=696 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_options`
#
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/segal', 'yes'),
(2, 'home', 'http://localhost/segal', 'yes'),
(3, 'blogname', 'Segal Constructora', 'yes'),
(4, 'blogdescription', 'Otro sitio de WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'jgomez@ingenioart.com', 'yes'),
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
(23, 'date_format', 'j F, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:92:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:54:"wpmf-category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?wpmf-category=$matches[1]&feed=$matches[2]";s:49:"wpmf-category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?wpmf-category=$matches[1]&feed=$matches[2]";s:30:"wpmf-category/([^/]+)/embed/?$";s:46:"index.php?wpmf-category=$matches[1]&embed=true";s:42:"wpmf-category/([^/]+)/page/?([0-9]{1,})/?$";s:53:"index.php?wpmf-category=$matches[1]&paged=$matches[2]";s:24:"wpmf-category/([^/]+)/?$";s:35:"index.php?wpmf-category=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:8:{i:0;s:27:"autoptimize/autoptimize.php";i:1;s:31:"cache-enabler/cache-enabler.php";i:2;s:33:"duplicate-post/duplicate-post.php";i:3;s:37:"error-log-viewer/error-log-viewer.php";i:4;s:31:"live-admin-customzier/index.php";i:5;s:19:"optimus/optimus.php";i:6;s:35:"wp-media-folder/wp-media-folder.php";i:7;s:31:"wp-migrate-db/wp-migrate-db.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'segaltheme', 'yes'),
(41, 'stylesheet', 'segaltheme', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '37965', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:4:{s:27:"autoptimize/autoptimize.php";s:21:"autoptimize_uninstall";s:31:"cache-enabler/cache-enabler.php";a:2:{i:0;s:13:"Cache_Enabler";i:1;s:12:"on_uninstall";}s:37:"error-log-viewer/error-log-viewer.php";s:18:"rrrlgvwr_uninstall";s:19:"optimus/optimus.php";a:2:{i:0;s:7:"Optimus";i:1;s:21:"handle_uninstall_hook";}}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '37965', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:10:"copy_posts";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:35:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:10:"copy_posts";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'WPLANG', 'es_PE', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:18:"orphaned_widgets_1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(101, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'cron', 'a:6:{i:1478582033;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1478582306;a:1:{s:36:"check_plugin_updates-wp-media-folder";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1478625471;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1478625506;a:1:{s:15:"ao_cachechecker";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1478633116;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(119, 'can_compress_scripts', '1', 'no'),
(136, 'recently_activated', 'a:0:{}', 'yes'),
(140, 'autoptimize_version', '2.1.0', 'yes'),
(141, 'cache', 'a:0:{}', 'yes'),
(144, 'wpmf_use_taxonomy', '1', 'yes'),
(145, 'rrrlgvwr_options', 'a:10:{s:21:"plugin_option_version";s:5:"1.0.4";s:21:"php_error_log_visible";i:0;s:11:"lines_count";i:10;s:16:"confirm_filesize";i:0;s:14:"error_log_path";s:0:"";s:17:"count_visible_log";i:0;s:14:"frequency_send";i:1;s:8:"hour_day";i:3600;s:23:"display_settings_notice";i:1;s:22:"suggest_feature_banner";i:1;}', 'yes'),
(149, 'bstwbsftwppdtplgns_options', 'a:1:{s:8:"bws_menu";a:1:{s:7:"version";a:1:{s:37:"error-log-viewer/error-log-viewer.php";s:5:"1.9.0";}}}', 'yes'),
(150, 'duplicate_post_copytitle', '1', 'yes'),
(151, 'duplicate_post_copydate', '1', 'yes'),
(152, 'duplicate_post_copystatus', '1', 'yes'),
(153, 'duplicate_post_copyslug', '1', 'yes'),
(154, 'duplicate_post_copyexcerpt', '1', 'yes'),
(155, 'duplicate_post_copycontent', '1', 'yes'),
(156, 'duplicate_post_copypassword', '', 'yes'),
(157, 'duplicate_post_copyattachments', '1', 'yes'),
(158, 'duplicate_post_copychildren', '1', 'yes'),
(159, 'duplicate_post_copycomments', '', 'yes'),
(160, 'duplicate_post_taxonomies_blacklist', '', 'yes'),
(161, 'duplicate_post_blacklist', '', 'yes'),
(162, 'duplicate_post_types_enabled', 'a:6:{i:0;s:4:"post";i:1;s:4:"page";i:2;s:17:"theme-slider-home";i:3;s:14:"theme-services";i:4;s:20:"theme-gallery-images";i:5;s:20:"theme-gallery-videos";}', 'yes'),
(163, 'duplicate_post_show_row', '1', 'yes'),
(164, 'duplicate_post_show_adminbar', '1', 'yes'),
(165, 'duplicate_post_show_submitbox', '1', 'yes'),
(167, 'wpmf_gallery_image_size_value', '["thumbnail","medium","large","full"]', 'yes'),
(168, 'wpmf_padding_masonry', '5', 'yes'),
(169, 'wpmf_padding_portfolio', '10', 'yes'),
(170, 'wpmf_usegellery', '1', 'yes'),
(171, 'wpmf_useorder', '1', 'yes'),
(172, 'wpmf_folder_option1', '0', 'yes'),
(173, 'wpmf_option_override', '0', 'yes'),
(174, 'wpmf_active_media', '0', 'yes'),
(175, 'wpmf_folder_option2', '1', 'yes'),
(176, 'wpmf_option_searchall', '0', 'yes'),
(177, 'wpmf_usegellery_lightbox', '1', 'yes'),
(178, 'wpmf_media_rename', '0', 'yes'),
(179, 'wpmf_patern_rename', '{sitename} - {foldername} - #', 'yes'),
(180, 'wpmf_rename_number', '0', 'yes'),
(181, 'wpmf_option_media_remove', '0', 'yes'),
(182, 'wpmf_default_dimension', '["400x300","640x480","800x600","1024x768","1600x1200"]', 'yes'),
(183, 'wpmf_selected_dimension', '["400x300","640x480","800x600","1024x768","1600x1200"]', 'yes'),
(184, 'wpmf_weight_default', '[["0-61440","kB"],["61440-122880","kB"],["122880-184320","kB"],["184320-245760","kB"],["245760-307200","kB"]]', 'yes'),
(185, 'wpmf_weight_selected', '[["0-61440","kB"],["61440-122880","kB"],["122880-184320","kB"],["184320-245760","kB"],["245760-307200","kB"]]', 'yes'),
(186, 'wpmf_color_singlefile', '{"bgdownloadlink":"#444444","hvdownloadlink":"#888888","fontdownloadlink":"#ffffff","hoverfontcolor":"#ffffff"}', 'yes'),
(187, 'wpmf_option_singlefile', '0', 'yes'),
(188, 'external_updates-wp-media-folder', 'O:8:"stdClass":3:{s:9:"lastCheck";i:1478557325;s:14:"checkedVersion";s:5:"3.3.3";s:6:"update";O:8:"stdClass":7:{s:2:"id";i:0;s:4:"slug";s:15:"wp-media-folder";s:7:"version";s:5:"3.8.5";s:8:"homepage";s:61:"https://www.joomunited.com/wordpress-products/wp-media-folder";s:12:"download_url";s:120:"https://www.joomunited.com/index.php?option=com_juupdater&task=download.download&extension=wp-media-folder&version=3.8.5";s:14:"upgrade_notice";s:29:"Upgrade to the latest version";s:8:"filename";s:35:"wp-media-folder/wp-media-folder.php";}}', 'no'),
(190, '_wpmf_import_notice_flag', 'no', 'yes'),
(226, 'current_theme', 'Segal Constructora Theme', 'yes'),
(227, 'theme_mods_segaltheme', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:2:{s:9:"left-menu";i:2;s:10:"right-menu";i:3;}}', 'yes'),
(228, 'theme_switched', '', 'yes'),
(256, 'theme_mods_twentysixteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1478539698;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(291, 'theme_settings', 'a:15:{s:20:"theme_social_fb_text";s:39:"https://www.facebook.com/Ingenioartweb/";s:25:"theme_social_twitter_text";s:24:"https://www.twitter.com/";s:25:"theme_social_youtube_text";s:24:"https://www.youtube.com/";s:27:"theme_social_instagram_text";s:0:"";s:26:"theme_social_linkedin_text";s:0:"";s:23:"theme_social_gplus_text";s:0:"";s:27:"theme_social_pinterest_text";s:0:"";s:18:"theme_phone_text_1";s:8:"452 5456";s:18:"theme_phone_text_2";s:8:"452 5456";s:16:"theme_cel_text_1";s:9:"999999999";s:16:"theme_cel_text_2";s:9:"999999999";s:16:"theme_email_text";s:0:"";s:18:"theme_address_text";s:0:"";s:19:"theme_atention_text";s:0:"";s:19:"theme_meta_brochure";s:0:"";}', 'yes'),
(440, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(551, 'duplicate_post_title_prefix', '', 'yes'),
(552, 'duplicate_post_title_suffix', '', 'yes'),
(553, 'duplicate_post_increase_menu_order_by', '', 'yes'),
(554, 'duplicate_post_roles', 'a:2:{i:0;s:13:"administrator";i:1;s:6:"editor";}', 'yes'),
(630, 'wpmf-category_children', 'a:0:{}', 'yes'),
(695, 'duplicate_post_version', '3.0.3', 'no') ;

#
# End of data contents of table `wp_options`
# --------------------------------------------------------



#
# Delete any existing table `wp_postmeta`
#

DROP TABLE IF EXISTS `wp_postmeta`;


#
# Table structure of table `wp_postmeta`
#

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_postmeta`
#
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_edit_last', '1'),
(3, 4, '_edit_lock', '1478546617:1'),
(4, 4, '_wp_page_template', 'default'),
(5, 4, 'mbox_order_post', '1'),
(6, 4, 'mb_featured_banner', ''),
(7, 4, 'mb_image_gallery', ''),
(8, 4, 'theme_featured_item_check', 'off'),
(9, 4, 'mbox_order_post', '1'),
(10, 6, '_edit_last', '1'),
(11, 6, '_wp_page_template', 'default'),
(12, 6, 'mbox_order_post', '2'),
(13, 6, 'mb_featured_banner', ''),
(14, 6, 'mb_image_gallery', ''),
(15, 6, 'theme_featured_item_check', 'off'),
(16, 6, 'mbox_order_post', '2'),
(17, 6, '_edit_lock', '1478546633:1'),
(18, 8, '_edit_last', '1'),
(19, 8, '_edit_lock', '1478546652:1'),
(20, 8, '_wp_page_template', 'default'),
(21, 8, 'mbox_order_post', '3'),
(22, 8, 'mb_featured_banner', ''),
(23, 8, 'mb_image_gallery', ''),
(24, 8, 'theme_featured_item_check', 'off'),
(25, 8, 'mbox_order_post', '3'),
(26, 10, '_edit_last', '1'),
(27, 10, '_edit_lock', '1478546668:1'),
(28, 10, '_wp_page_template', 'default'),
(29, 10, 'mbox_order_post', '4'),
(30, 10, 'mb_featured_banner', ''),
(31, 10, 'mb_image_gallery', ''),
(32, 10, 'theme_featured_item_check', 'off'),
(33, 10, 'mbox_order_post', '4'),
(34, 12, '_edit_last', '1'),
(35, 12, '_wp_page_template', 'default'),
(36, 12, 'mbox_order_post', '5'),
(37, 12, 'mb_featured_banner', ''),
(38, 12, 'mb_image_gallery', ''),
(39, 12, 'theme_featured_item_check', 'off'),
(40, 12, 'mbox_order_post', '5'),
(41, 12, '_edit_lock', '1478546680:1'),
(42, 14, '_edit_last', '1'),
(43, 14, '_edit_lock', '1478546744:1'),
(44, 14, '_wp_page_template', 'default'),
(45, 14, 'mbox_order_post', '6'),
(46, 14, 'mb_featured_banner', ''),
(47, 14, 'mb_image_gallery', ''),
(48, 14, 'theme_featured_item_check', 'off'),
(49, 14, 'mbox_order_post', '6'),
(50, 16, '_menu_item_type', 'post_type'),
(51, 16, '_menu_item_menu_item_parent', '0'),
(52, 16, '_menu_item_object_id', '8'),
(53, 16, '_menu_item_object', 'page'),
(54, 16, '_menu_item_target', ''),
(55, 16, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(56, 16, '_menu_item_xfn', ''),
(57, 16, '_menu_item_url', ''),
(59, 17, '_menu_item_type', 'post_type'),
(60, 17, '_menu_item_menu_item_parent', '0'),
(61, 17, '_menu_item_object_id', '6'),
(62, 17, '_menu_item_object', 'page'),
(63, 17, '_menu_item_target', ''),
(64, 17, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(65, 17, '_menu_item_xfn', ''),
(66, 17, '_menu_item_url', ''),
(68, 18, '_menu_item_type', 'post_type'),
(69, 18, '_menu_item_menu_item_parent', '0'),
(70, 18, '_menu_item_object_id', '4'),
(71, 18, '_menu_item_object', 'page'),
(72, 18, '_menu_item_target', ''),
(73, 18, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(74, 18, '_menu_item_xfn', ''),
(75, 18, '_menu_item_url', ''),
(77, 19, '_menu_item_type', 'post_type'),
(78, 19, '_menu_item_menu_item_parent', '0'),
(79, 19, '_menu_item_object_id', '14'),
(80, 19, '_menu_item_object', 'page'),
(81, 19, '_menu_item_target', ''),
(82, 19, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(83, 19, '_menu_item_xfn', ''),
(84, 19, '_menu_item_url', ''),
(86, 20, '_menu_item_type', 'post_type'),
(87, 20, '_menu_item_menu_item_parent', '0'),
(88, 20, '_menu_item_object_id', '12'),
(89, 20, '_menu_item_object', 'page'),
(90, 20, '_menu_item_target', ''),
(91, 20, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(92, 20, '_menu_item_xfn', ''),
(93, 20, '_menu_item_url', ''),
(95, 21, '_menu_item_type', 'post_type'),
(96, 21, '_menu_item_menu_item_parent', '0'),
(97, 21, '_menu_item_object_id', '10'),
(98, 21, '_menu_item_object', 'page'),
(99, 21, '_menu_item_target', ''),
(100, 21, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(101, 21, '_menu_item_xfn', ''),
(102, 21, '_menu_item_url', ''),
(104, 22, '_edit_last', '1'),
(105, 22, '_edit_lock', '1478557059:1'),
(106, 23, '_wp_attached_file', '2016/11/slider_segal_construccion_1.jpg') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(107, 23, 'wpmf_size', '297124'),
(108, 23, 'wpmf_filetype', 'jpg'),
(109, 23, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1920;s:6:"height";i:650;s:4:"file";s:39:"2016/11/slider_segal_construccion_1.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:39:"slider_segal_construccion_1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:39:"slider_segal_construccion_1-300x102.jpg";s:5:"width";i:300;s:6:"height";i:102;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:39:"slider_segal_construccion_1-768x260.jpg";s:5:"width";i:768;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:40:"slider_segal_construccion_1-1024x347.jpg";s:5:"width";i:1024;s:6:"height";i:347;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:39:"slider_segal_construccion_1-210x210.jpg";s:5:"width";i:210;s:6:"height";i:210;s:9:"mime-type";s:10:"image/jpeg";}s:17:"custom-blog-image";a:4:{s:4:"file";s:39:"slider_segal_construccion_1-784x265.jpg";s:5:"width";i:784;s:6:"height";i:265;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:7:"optimus";a:3:{s:6:"profit";s:1:"6";s:8:"quantity";d:86;s:4:"webp";i:0;}}'),
(110, 22, '_thumbnail_id', '23'),
(111, 22, 'mbox_order_post', '1'),
(112, 22, 'mb_image_gallery', ''),
(113, 22, 'theme_featured_item_check', 'off'),
(114, 22, 'mb_rev_slider_select', 'random-static'),
(115, 24, '_thumbnail_id', '25'),
(116, 24, 'mbox_order_post', '2'),
(117, 24, 'mb_image_gallery', ''),
(118, 24, 'theme_featured_item_check', 'off'),
(119, 24, 'mb_rev_slider_select', 'parallaxtobottom'),
(120, 25, '_wp_attached_file', '2016/11/slider_segal_construccion_1-1.jpg'),
(121, 25, 'wpmf_size', '297124'),
(122, 25, 'wpmf_filetype', 'jpg'),
(123, 25, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1920;s:6:"height";i:650;s:4:"file";s:41:"2016/11/slider_segal_construccion_1-1.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:41:"slider_segal_construccion_1-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:41:"slider_segal_construccion_1-1-300x102.jpg";s:5:"width";i:300;s:6:"height";i:102;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:41:"slider_segal_construccion_1-1-768x260.jpg";s:5:"width";i:768;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:42:"slider_segal_construccion_1-1-1024x347.jpg";s:5:"width";i:1024;s:6:"height";i:347;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:41:"slider_segal_construccion_1-1-210x210.jpg";s:5:"width";i:210;s:6:"height";i:210;s:9:"mime-type";s:10:"image/jpeg";}s:17:"custom-blog-image";a:4:{s:4:"file";s:41:"slider_segal_construccion_1-1-784x265.jpg";s:5:"width";i:784;s:6:"height";i:265;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:7:"optimus";a:3:{s:6:"profit";s:1:"6";s:8:"quantity";d:86;s:4:"webp";i:0;}}'),
(124, 24, '_dp_original', '22'),
(125, 26, '_edit_last', '1'),
(126, 26, '_edit_lock', '1478557357:1'),
(127, 27, '_wp_attached_file', '2016/11/trabajos_segal_construccion_4.jpg'),
(128, 27, 'wpmf_size', '32203'),
(129, 27, 'wpmf_filetype', 'jpg'),
(130, 27, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:350;s:6:"height";i:380;s:4:"file";s:41:"2016/11/trabajos_segal_construccion_4.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:41:"trabajos_segal_construccion_4-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:41:"trabajos_segal_construccion_4-276x300.jpg";s:5:"width";i:276;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:41:"trabajos_segal_construccion_4-210x210.jpg";s:5:"width";i:210;s:6:"height";i:210;s:9:"mime-type";s:10:"image/jpeg";}s:17:"custom-blog-image";a:4:{s:4:"file";s:41:"trabajos_segal_construccion_4-322x350.jpg";s:5:"width";i:322;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:7:"optimus";a:3:{s:6:"profit";s:1:"5";s:8:"quantity";d:100;s:4:"webp";i:0;}}'),
(131, 26, '_thumbnail_id', '27'),
(132, 26, 'mbox_order_post', '1'),
(133, 26, 'mb_image_gallery', ''),
(134, 26, 'theme_featured_item_check', 'off'),
(135, 28, '_thumbnail_id', '29'),
(136, 28, 'mbox_order_post', '1'),
(137, 28, 'mb_image_gallery', ''),
(138, 28, 'theme_featured_item_check', 'off'),
(139, 29, '_wp_attached_file', '2016/11/trabajos_segal_construccion_4-1.jpg'),
(140, 29, 'wpmf_size', '31225'),
(141, 29, 'wpmf_filetype', 'jpg'),
(142, 29, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:350;s:6:"height";i:380;s:4:"file";s:43:"2016/11/trabajos_segal_construccion_4-1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:43:"trabajos_segal_construccion_4-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:43:"trabajos_segal_construccion_4-1-276x300.jpg";s:5:"width";i:276;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:43:"trabajos_segal_construccion_4-1-210x210.jpg";s:5:"width";i:210;s:6:"height";i:210;s:9:"mime-type";s:10:"image/jpeg";}s:17:"custom-blog-image";a:4:{s:4:"file";s:43:"trabajos_segal_construccion_4-1-322x350.jpg";s:5:"width";i:322;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:7:"optimus";a:3:{s:6:"profit";s:1:"5";s:8:"quantity";d:100;s:4:"webp";i:0;}}'),
(143, 28, '_dp_original', '26'),
(144, 26, '_wp_old_slug', 'mantenimiento') ;

#
# End of data contents of table `wp_postmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_posts`
#

DROP TABLE IF EXISTS `wp_posts`;


#
# Table structure of table `wp_posts`
#

CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_posts`
#
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2016-11-07 17:13:52', '2016-11-07 17:13:52', 'Bienvenido a WordPress. Esta es su primera entrada. Edítela o bórrela, y ¡empiece a escribir!', '¡Hola mundo!', '', 'publish', 'open', 'open', '', 'hola-mundo', '', '', '2016-11-07 17:13:52', '2016-11-07 17:13:52', '', 0, 'http://localhost/segal/?p=1', 0, 'post', '', 1),
(2, 1, '2016-11-07 17:13:52', '2016-11-07 17:13:52', 'Esto es una página de ejemplo. Es diferente a una entrada del blog, ya que permanecerá fija en un lugar y se mostrará en la navegación de su sitio (en la mayoría de temas). La mayoría de personas empieza con una página Acerca de, que brinda información a los visitantes de su sitio. Se podría decir algo como esto:\n\n<blockquote>¡Hola! Durante el día soy un mensajero, un aspirante a actor por la noche, y este es mi blog. Vivo en Lima, tengo un enorme perro llamado Pocho, y me gusta el Pisco Sour. (Y caminar bajo la lluvia.)</blockquote>\n\n...o algo como esto:\n\n<blockquote>La compañía XYZ, se fundó en 1971, y ha estado desde entonces, proporcionando artilugios de calidad al público. Está situado en la ciudad de Lima, XYZ emplea a más de 2,000 personas y hace todo tipo de cosas sorprendentes para la comunidad limeña.</blockquote>\n\nComo nuevo usuario de WordPress, usted debe ir a <a href="http://localhost/segal/wp-admin/">su panel</a> para eliminar esta página y crear nuevas para su contenido. ¡Que se divierta!', 'Página de ejemplo', '', 'publish', 'closed', 'open', '', 'pagina-de-ejemplo', '', '', '2016-11-07 17:13:52', '2016-11-07 17:13:52', '', 0, 'http://localhost/segal/?page_id=2', 0, 'page', '', 0),
(3, 1, '2016-11-07 17:14:08', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-11-07 17:14:08', '0000-00-00 00:00:00', '', 0, 'http://localhost/segal/?p=3', 0, 'post', '', 0),
(4, 1, '2016-11-07 19:25:58', '2016-11-07 19:25:58', '', 'Inicio', '', 'publish', 'closed', 'closed', '', 'inicio', '', '', '2016-11-07 19:25:58', '2016-11-07 19:25:58', '', 0, 'http://localhost/segal/?page_id=4', 0, 'page', '', 0),
(5, 1, '2016-11-07 19:25:58', '2016-11-07 19:25:58', '', 'Inicio', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2016-11-07 19:25:58', '2016-11-07 19:25:58', '', 4, 'http://localhost/segal/2016/11/07/4-revision-v1/', 0, 'revision', '', 0),
(6, 1, '2016-11-07 19:26:13', '2016-11-07 19:26:13', '', 'Nosotros', '', 'publish', 'closed', 'closed', '', 'nosotros', '', '', '2016-11-07 19:26:13', '2016-11-07 19:26:13', '', 0, 'http://localhost/segal/?page_id=6', 0, 'page', '', 0),
(7, 1, '2016-11-07 19:26:13', '2016-11-07 19:26:13', '', 'Nosotros', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2016-11-07 19:26:13', '2016-11-07 19:26:13', '', 6, 'http://localhost/segal/2016/11/07/6-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2016-11-07 19:26:28', '2016-11-07 19:26:28', '', 'Servicios', '', 'publish', 'closed', 'closed', '', 'servicios', '', '', '2016-11-07 19:26:28', '2016-11-07 19:26:28', '', 0, 'http://localhost/segal/?page_id=8', 0, 'page', '', 0),
(9, 1, '2016-11-07 19:26:28', '2016-11-07 19:26:28', '', 'Servicios', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2016-11-07 19:26:28', '2016-11-07 19:26:28', '', 8, 'http://localhost/segal/2016/11/07/8-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2016-11-07 19:26:48', '2016-11-07 19:26:48', '', 'Trabajos Realizados', '', 'publish', 'closed', 'closed', '', 'trabajos-realizados', '', '', '2016-11-07 19:26:48', '2016-11-07 19:26:48', '', 0, 'http://localhost/segal/?page_id=10', 0, 'page', '', 0),
(11, 1, '2016-11-07 19:26:48', '2016-11-07 19:26:48', '', 'Trabajos Realizados', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2016-11-07 19:26:48', '2016-11-07 19:26:48', '', 10, 'http://localhost/segal/2016/11/07/10-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2016-11-07 19:26:59', '2016-11-07 19:26:59', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2016-11-07 19:26:59', '2016-11-07 19:26:59', '', 0, 'http://localhost/segal/?page_id=12', 0, 'page', '', 0),
(13, 1, '2016-11-07 19:26:59', '2016-11-07 19:26:59', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2016-11-07 19:26:59', '2016-11-07 19:26:59', '', 12, 'http://localhost/segal/2016/11/07/12-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2016-11-07 19:27:13', '2016-11-07 19:27:13', '', 'Contacto', '', 'publish', 'closed', 'closed', '', 'contacto', '', '', '2016-11-07 19:27:13', '2016-11-07 19:27:13', '', 0, 'http://localhost/segal/?page_id=14', 0, 'page', '', 0),
(15, 1, '2016-11-07 19:27:13', '2016-11-07 19:27:13', '', 'Contacto', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2016-11-07 19:27:13', '2016-11-07 19:27:13', '', 14, 'http://localhost/segal/2016/11/07/14-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2016-11-07 19:28:51', '2016-11-07 19:28:51', ' ', '', '', 'publish', 'closed', 'closed', '', '16', '', '', '2016-11-07 19:28:51', '2016-11-07 19:28:51', '', 0, 'http://localhost/segal/?p=16', 3, 'nav_menu_item', '', 0),
(17, 1, '2016-11-07 19:28:51', '2016-11-07 19:28:51', ' ', '', '', 'publish', 'closed', 'closed', '', '17', '', '', '2016-11-07 19:28:51', '2016-11-07 19:28:51', '', 0, 'http://localhost/segal/?p=17', 2, 'nav_menu_item', '', 0),
(18, 1, '2016-11-07 19:28:50', '2016-11-07 19:28:50', ' ', '', '', 'publish', 'closed', 'closed', '', '18', '', '', '2016-11-07 19:28:50', '2016-11-07 19:28:50', '', 0, 'http://localhost/segal/?p=18', 1, 'nav_menu_item', '', 0),
(19, 1, '2016-11-07 19:29:56', '2016-11-07 19:29:56', ' ', '', '', 'publish', 'closed', 'closed', '', '19', '', '', '2016-11-07 19:29:56', '2016-11-07 19:29:56', '', 0, 'http://localhost/segal/?p=19', 1, 'nav_menu_item', '', 0),
(20, 1, '2016-11-07 19:29:56', '2016-11-07 19:29:56', ' ', '', '', 'publish', 'closed', 'closed', '', '20', '', '', '2016-11-07 19:29:56', '2016-11-07 19:29:56', '', 0, 'http://localhost/segal/?p=20', 2, 'nav_menu_item', '', 0),
(21, 1, '2016-11-07 19:29:56', '2016-11-07 19:29:56', ' ', '', '', 'publish', 'closed', 'closed', '', '21', '', '', '2016-11-07 19:29:56', '2016-11-07 19:29:56', '', 0, 'http://localhost/segal/?p=21', 3, 'nav_menu_item', '', 0),
(22, 1, '2016-11-07 20:00:53', '2016-11-07 20:00:53', '<h2 style="text-align: left;">MÁS INFORMACIÓN:</h2>\r\n<p style="text-align: left;">RPC: 940 170 365</p>\r\n<p style="text-align: left;">RPm: #940 170 365</p>\r\n<p style="text-align: left;">746-2934</p>\r\n<p style="text-align: left;">informes@segalconstruccion.com</p>', 'Primer Slider 2', '', 'publish', 'open', 'closed', '', 'primer-slider', '', '', '2016-11-07 21:52:46', '2016-11-07 21:52:46', '', 0, 'http://localhost/segal/?post_type=theme-slider-home&#038;p=22', 0, 'theme-slider-home', '', 0),
(23, 1, '2016-11-07 20:00:38', '2016-11-07 20:00:38', '', 'slider_segal_construccion_1', '', 'inherit', 'open', 'closed', '', 'slider_segal_construccion_1', '', '', '2016-11-07 20:00:38', '2016-11-07 20:00:38', '', 22, 'http://localhost/segal/wp-content/uploads/2016/11/slider_segal_construccion_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(24, 1, '2016-11-07 20:00:53', '2016-11-07 20:00:53', '<h2 style="text-align: right;">MÁS INFORMACIÓN:</h2>\r\n<p style="text-align: right;">RPC: 940 170 365</p>\r\n<p style="text-align: right;">RPm: #940 170 365</p>\r\n<p style="text-align: right;">746-2934</p>\r\n<p style="text-align: right;">informes@segalconstruccion.com</p>', 'Primer Slider', '', 'publish', 'open', 'closed', '', 'primer-slider-2', '', '', '2016-11-07 20:55:47', '2016-11-07 20:55:47', '', 0, 'http://localhost/segal/theme-slider-home/primer-slider-2/', 0, 'theme-slider-home', '', 0),
(25, 1, '2016-11-07 20:55:47', '2016-11-07 20:55:47', '', 'slider_segal_construccion_1', '', 'inherit', 'open', 'closed', '', '25', '', '', '2016-11-07 20:55:56', '2016-11-07 20:55:56', '', 24, 'http://localhost/segal/wp-content/uploads/2016/11/slider_segal_construccion_1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(26, 1, '2016-11-07 22:21:32', '2016-11-07 22:21:32', '', 'Mantenimiento 2', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ', 'publish', 'open', 'closed', '', 'mantenimiento-2-2', '', '', '2016-11-07 22:22:37', '2016-11-07 22:22:37', '', 0, 'http://localhost/segal/?post_type=theme-services&#038;p=26', 0, 'theme-services', '', 0),
(27, 1, '2016-11-07 22:21:16', '2016-11-07 22:21:16', '', 'trabajos_segal_construccion_4', '', 'inherit', 'open', 'closed', '', 'trabajos_segal_construccion_4', '', '', '2016-11-07 22:21:16', '2016-11-07 22:21:16', '', 26, 'http://localhost/segal/wp-content/uploads/2016/11/trabajos_segal_construccion_4.jpg', 0, 'attachment', 'image/jpeg', 0),
(28, 1, '2016-11-07 22:21:32', '2016-11-07 22:21:32', '', 'Mantenimiento', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ', 'publish', 'open', 'closed', '', 'mantenimiento-2', '', '', '2016-11-07 22:22:23', '2016-11-07 22:22:23', '', 0, 'http://localhost/segal/theme-services/mantenimiento-2/', 0, 'theme-services', '', 0),
(29, 1, '2016-11-07 22:22:23', '2016-11-07 22:22:23', '', 'trabajos_segal_construccion_4', '', 'inherit', 'open', 'closed', '', '29', '', '', '2016-11-07 22:22:29', '2016-11-07 22:22:29', '', 28, 'http://localhost/segal/wp-content/uploads/2016/11/trabajos_segal_construccion_4-1.jpg', 0, 'attachment', 'image/jpeg', 0) ;

#
# End of data contents of table `wp_posts`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_relationships`
#

DROP TABLE IF EXISTS `wp_term_relationships`;


#
# Table structure of table `wp_term_relationships`
#

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_term_relationships`
#
INSERT INTO `wp_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(16, 2, 0),
(17, 2, 0),
(18, 2, 0),
(19, 3, 0),
(20, 3, 0),
(21, 3, 0),
(23, 4, 0),
(25, 4, 0),
(27, 5, 0),
(29, 5, 0) ;

#
# End of data contents of table `wp_term_relationships`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_taxonomy`
#

DROP TABLE IF EXISTS `wp_term_taxonomy`;


#
# Table structure of table `wp_term_taxonomy`
#

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_term_taxonomy`
#
INSERT INTO `wp_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 3),
(3, 3, 'nav_menu', '', 0, 3),
(4, 4, 'wpmf-category', '', 0, 2),
(5, 5, 'wpmf-category', '', 0, 2) ;

#
# End of data contents of table `wp_term_taxonomy`
# --------------------------------------------------------



#
# Delete any existing table `wp_termmeta`
#

DROP TABLE IF EXISTS `wp_termmeta`;


#
# Table structure of table `wp_termmeta`
#

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_termmeta`
#

#
# End of data contents of table `wp_termmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_terms`
#

DROP TABLE IF EXISTS `wp_terms`;


#
# Table structure of table `wp_terms`
#

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_terms`
#
INSERT INTO `wp_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sin categoría', 'sin-categoria', 0),
(2, 'Menú Izquierda', 'menu-izquierda', 0),
(3, 'Menú Derecha', 'menu-derecha', 0),
(4, 'SLIDER HOME', 'slider-home', 1),
(5, 'SERVICIOS', 'servicios', 1) ;

#
# End of data contents of table `wp_terms`
# --------------------------------------------------------



#
# Delete any existing table `wp_usermeta`
#

DROP TABLE IF EXISTS `wp_usermeta`;


#
# Table structure of table `wp_usermeta`
#

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_usermeta`
#
INSERT INTO `wp_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'matt_blue'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', ''),
(13, 1, 'show_welcome_panel', '1'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(17, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(18, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:"add-post_tag";i:1;s:15:"add-post_format";}'),
(19, 1, 'session_tokens', 'a:4:{s:64:"662248b54dfe5947455b63f7981ec81c3520befef222b3561e77b69d9f0c06a4";a:4:{s:10:"expiration";i:1478712410;s:2:"ip";s:3:"::1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.71 Safari/537.36";s:5:"login";i:1478539610;}s:64:"15b9f984ddec1ccde43f74c18a862c56628af40c476e25b0a6a8871d2b6e7888";a:4:{s:10:"expiration";i:1478713066;s:2:"ip";s:3:"::1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.71 Safari/537.36";s:5:"login";i:1478540266;}s:64:"bdf91a4faa8ce0a6dcc1d0d00c14c66a1cfcab1398d497799aeadc4eb22cc758";a:4:{s:10:"expiration";i:1478720908;s:2:"ip";s:3:"::1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.71 Safari/537.36";s:5:"login";i:1478548108;}s:64:"b29740e31e4d631112a53a1956fbadf22617a737830e6cc95c2bb6f6962fc9ec";a:4:{s:10:"expiration";i:1478726551;s:2:"ip";s:3:"::1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.71 Safari/537.36";s:5:"login";i:1478553751;}}'),
(20, 1, 'wp_user-settings', 'libraryContent=browse&hidetb=1'),
(21, 1, 'wp_user-settings-time', '1478550991'),
(22, 1, '_clear_post_cache_on_update', '0') ;

#
# End of data contents of table `wp_usermeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_users`
#

DROP TABLE IF EXISTS `wp_users`;


#
# Table structure of table `wp_users`
#

CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_users`
#
INSERT INTO `wp_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BTo6Dgjf0ZXg5n/yYlEc6VDZjsihQm/', 'admin', 'jgomez@ingenioart.com', '', '2016-11-07 17:13:51', '', 0, 'admin') ;

#
# End of data contents of table `wp_users`
# --------------------------------------------------------

#
# Add constraints back in and apply any alter data queries.
#

