-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Июн 11 2017 г., 19:46
-- Версия сервера: 5.6.33-79.0-log
-- Версия PHP: 5.6.30-pl0-gentoo

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `kvsemen162`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Автор комментария', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2017-05-27 17:22:15', '2017-05-27 14:22:15', 'Привет! Это комментарий.\nЧтобы начать модерировать, редактировать и удалять комментарии, перейдите на экран «Комментарии» в консоли.\nАватары авторов комментариев загружаются с сервиса <a href="https://ru.gravatar.com">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://neftehim2.loc', 'yes'),
(2, 'home', 'http://neftehim2.loc', 'yes'),
(3, 'blogname', 'Нефтехимсинтез', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', '2312312@mail.ru', 'yes'),
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
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:142:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:51:"(bez-rubriki)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:34:"(bez-rubriki)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:16:"(bez-rubriki)/?$";s:35:"index.php?category_name=$matches[1]";s:47:"(novosti)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:30:"(novosti)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:12:"(novosti)/?$";s:35:"index.php?category_name=$matches[1]";s:63:"(katalog/bitumy-i-mazuty)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:46:"(katalog/bitumy-i-mazuty)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:28:"(katalog/bitumy-i-mazuty)/?$";s:35:"index.php?category_name=$matches[1]";s:47:"(katalog)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:30:"(katalog)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:12:"(katalog)/?$";s:35:"index.php?category_name=$matches[1]";s:59:"(katalog/neftehimiya)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"(katalog/neftehimiya)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:24:"(katalog/neftehimiya)/?$";s:35:"index.php?category_name=$matches[1]";s:78:"(katalog/parafino-voskovaya-produktsiya)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:61:"(katalog/parafino-voskovaya-produktsiya)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:43:"(katalog/parafino-voskovaya-produktsiya)/?$";s:35:"index.php?category_name=$matches[1]";s:52:"(napravleniya)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"(napravleniya)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"(napravleniya)/?$";s:35:"index.php?category_name=$matches[1]";s:49:"(dokumenty)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:32:"(dokumenty)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:14:"(dokumenty)/?$";s:35:"index.php?category_name=$matches[1]";s:14:"category/(.*)$";s:39:"index.php?category_redirect=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:34:"client/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"client/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"client/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"client/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"client/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"client/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:23:"client/([^/]+)/embed/?$";s:39:"index.php?client=$matches[1]&embed=true";s:27:"client/([^/]+)/trackback/?$";s:33:"index.php?client=$matches[1]&tb=1";s:35:"client/([^/]+)/page/?([0-9]{1,})/?$";s:46:"index.php?client=$matches[1]&paged=$matches[2]";s:42:"client/([^/]+)/comment-page-([0-9]{1,})/?$";s:46:"index.php?client=$matches[1]&cpage=$matches[2]";s:31:"client/([^/]+)(?:/([0-9]+))?/?$";s:45:"index.php?client=$matches[1]&page=$matches[2]";s:23:"client/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:33:"client/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:53:"client/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:48:"client/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:48:"client/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:29:"client/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:31:"job/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:41:"job/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:61:"job/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:56:"job/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:56:"job/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:37:"job/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:20:"job/([^/]+)/embed/?$";s:36:"index.php?job=$matches[1]&embed=true";s:24:"job/([^/]+)/trackback/?$";s:30:"index.php?job=$matches[1]&tb=1";s:32:"job/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?job=$matches[1]&paged=$matches[2]";s:39:"job/([^/]+)/comment-page-([0-9]{1,})/?$";s:43:"index.php?job=$matches[1]&cpage=$matches[2]";s:28:"job/([^/]+)(?:/([0-9]+))?/?$";s:42:"index.php?job=$matches[1]&page=$matches[2]";s:20:"job/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:30:"job/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:50:"job/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:45:"job/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:45:"job/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:26:"job/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:40:"index.php?&page_id=121&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:6:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:22:"cyr3lat/cyr-to-lat.php";i:2;s:49:"dynamic-featured-image/dynamic-featured-image.php";i:3;s:47:"no-category-base-wpml/no-category-base-wpml.php";i:4;s:45:"taxonomy-terms-order/taxonomy-terms-order.php";i:5;s:42:"yet-another-related-posts-plugin/yarpp.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'neftehim', 'yes'),
(41, 'stylesheet', 'neftehim', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
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
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:23:"wpematico/wpematico.php";s:19:"wpematico_uninstall";}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '121', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'WPLANG', 'ru_RU', 'yes'),
(95, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:18:"orphaned_widgets_1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'cron', 'a:4:{i:1497234135;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1497270722;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1497277367;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(106, 'nonce_key', '0?F924,}qH<4~9/YfSq]Wn<S*ylg8x!IcThl=;2rR7n@YT^;##DgW/NriibiIF)@', 'no'),
(107, 'nonce_salt', 'IRT~6 Ja4X8=5-[{k]`8pM/wa>~cux7taEv;e&hhrq1}gB_#Zq:4FM4Fv4v(l[u!', 'no'),
(108, 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1495896331;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(111, 'logged_in_key', 'X`#X&4]h~i/Xc#-O_JMs:8UPy)tU+H&jEz[&fLR9=.W.Zm6]QNv3&A1A^m;s: xT', 'no'),
(112, 'logged_in_salt', '+&gfXrvqs-PA,X,nhbYV},1Dt/U_nt+f$M83idB]9o&0Cv+vHxj0jhz+uLn[lb1~', 'no'),
(114, 'auth_key', 'v9#wh>k^oS[Ua$%E4i]jisn ^^.28S7(S@{bxTQrw:d6d76E{a}?;edd1gp:]p/h', 'no'),
(115, 'auth_salt', '!*[o}k+-YK[1`*XBWAlOhnDE9#_Z?&6GHHzFXb7~7mVIrA):CGS= {kb2@!bSt+J', 'no'),
(123, 'can_compress_scripts', '1', 'no'),
(138, '_transient_twentyseventeen_categories', '1', 'yes'),
(139, '_site_transient_timeout_browser_6c87615462301d709781c5732ebdb395', '1496500650', 'no'),
(140, '_site_transient_browser_6c87615462301d709781c5732ebdb395', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"44.0.2403.130";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'no'),
(143, 'current_theme', '', 'yes'),
(144, 'theme_mods_neftehim', 'a:3:{i:0;b:0;s:18:"custom_css_post_id";i:-1;s:18:"nav_menu_locations";a:1:{s:4:"menu";i:11;}}', 'yes'),
(145, 'theme_switched', '', 'yes'),
(166, 'recently_activated', 'a:3:{s:54:"wordpress-23-related-posts-plugin/wp_related_posts.php";i:1496846099;s:37:"post-types-order/post-types-order.php";i:1496654846;s:23:"wpematico/wpematico.php";i:1496394397;}', 'yes'),
(173, 'WPeMatico_Options', 'a:47:{s:10:"mailmethod";s:4:"mail";s:12:"mailsndemail";s:0:"";s:11:"mailsndname";s:0:"";s:12:"mailsendmail";s:0:"";s:10:"mailsecure";s:0:"";s:8:"mailhost";s:0:"";s:8:"mailport";s:0:"";s:8:"mailuser";s:0:"";s:8:"mailpass";s:0:"";s:16:"disabledashboard";b:0;s:12:"roles_widget";a:1:{s:13:"administrator";s:13:"administrator";}s:11:"dontruncron";b:0;s:13:"disablewpcron";b:0;s:13:"set_cron_code";b:0;s:9:"cron_code";s:0:"";s:15:"logexternalcron";b:0;s:15:"disable_credits";b:0;s:17:"disablecheckfeeds";b:0;s:13:"enabledelhash";b:0;s:12:"enableseelog";b:0;s:13:"enablerewrite";b:0;s:15:"enableword2cats";b:0;s:12:"customupload";b:0;s:9:"imgattach";b:0;s:8:"imgcache";b:0;s:13:"gralnolinkimg";b:0;s:11:"featuredimg";b:0;s:13:"rmfeaturedimg";b:0;s:17:"force_mysimplepie";b:0;s:17:"set_stupidly_fast";b:1;s:24:"simplepie_strip_htmltags";b:0;s:26:"simplepie_strip_attributes";b:0;s:14:"strip_htmltags";s:0:"";s:14:"strip_htmlattr";s:0:"";s:10:"woutfilter";b:0;s:16:"campaign_timeout";i:300;s:8:"throttle";i:0;s:15:"allowduplicates";b:0;s:13:"allowduptitle";b:0;s:12:"allowduphash";b:0;s:14:"jumpduplicates";b:0;s:10:"disableccf";b:0;s:38:"add_extra_duplicate_filter_meta_source";b:0;s:9:"nonstatic";b:0;s:16:"emptytrashbutton";b:0;s:15:"cpt_trashbutton";a:2:{s:4:"post";i:1;s:4:"page";i:1;}s:33:"disable_metaboxes_wpematico_posts";b:0;}', 'yes'),
(174, 'wpematico_db_version', '1.6.3', 'yes'),
(219, 'category_children', 'a:1:{i:4;a:3:{i:0;i:3;i:1;i:5;i:2;i:6;}}', 'yes'),
(224, 'acf_version', '4.4.11', 'yes'),
(245, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(258, '_site_transient_timeout_available_translations', '1496483590', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(259, '_site_transient_available_translations', 'a:108:{s:2:"af";a:8:{s:8:"language";s:2:"af";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-03-27 04:32:49";s:12:"english_name";s:9:"Afrikaans";s:11:"native_name";s:9:"Afrikaans";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.5/af.zip";s:3:"iso";a:2:{i:1;s:2:"af";i:2;s:3:"afr";}s:7:"strings";a:1:{s:8:"continue";s:10:"Gaan voort";}}s:2:"ar";a:8:{s:8:"language";s:2:"ar";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-01-26 15:49:08";s:12:"english_name";s:6:"Arabic";s:11:"native_name";s:14:"العربية";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.5/ar.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:2;s:3:"ara";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:3:"ary";a:8:{s:8:"language";s:3:"ary";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-01-26 15:42:35";s:12:"english_name";s:15:"Moroccan Arabic";s:11:"native_name";s:31:"العربية المغربية";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.5/ary.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:3;s:3:"ary";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:2:"as";a:8:{s:8:"language";s:2:"as";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-22 18:59:07";s:12:"english_name";s:8:"Assamese";s:11:"native_name";s:21:"অসমীয়া";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/as.zip";s:3:"iso";a:3:{i:1;s:2:"as";i:2;s:3:"asm";i:3;s:3:"asm";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:3:"azb";a:8:{s:8:"language";s:3:"azb";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-12 20:34:31";s:12:"english_name";s:17:"South Azerbaijani";s:11:"native_name";s:29:"گؤنئی آذربایجان";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:3;s:3:"azb";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"az";a:8:{s:8:"language";s:2:"az";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-06 00:09:27";s:12:"english_name";s:11:"Azerbaijani";s:11:"native_name";s:16:"Azərbaycan dili";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/az.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:2;s:3:"aze";}s:7:"strings";a:1:{s:8:"continue";s:5:"Davam";}}s:3:"bel";a:8:{s:8:"language";s:3:"bel";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-05-09 11:39:31";s:12:"english_name";s:10:"Belarusian";s:11:"native_name";s:29:"Беларуская мова";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.5/bel.zip";s:3:"iso";a:2:{i:1;s:2:"be";i:2;s:3:"bel";}s:7:"strings";a:1:{s:8:"continue";s:20:"Працягнуць";}}s:5:"bg_BG";a:8:{s:8:"language";s:5:"bg_BG";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-05-16 13:06:08";s:12:"english_name";s:9:"Bulgarian";s:11:"native_name";s:18:"Български";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/bg_BG.zip";s:3:"iso";a:2:{i:1;s:2:"bg";i:2;s:3:"bul";}s:7:"strings";a:1:{s:8:"continue";s:12:"Напред";}}s:5:"bn_BD";a:8:{s:8:"language";s:5:"bn_BD";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-04 16:58:43";s:12:"english_name";s:7:"Bengali";s:11:"native_name";s:15:"বাংলা";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/bn_BD.zip";s:3:"iso";a:1:{i:1;s:2:"bn";}s:7:"strings";a:1:{s:8:"continue";s:23:"এগিয়ে চল.";}}s:2:"bo";a:8:{s:8:"language";s:2:"bo";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-05 09:44:12";s:12:"english_name";s:7:"Tibetan";s:11:"native_name";s:21:"བོད་ཡིག";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/bo.zip";s:3:"iso";a:2:{i:1;s:2:"bo";i:2;s:3:"tib";}s:7:"strings";a:1:{s:8:"continue";s:24:"མུ་མཐུད།";}}s:5:"bs_BA";a:8:{s:8:"language";s:5:"bs_BA";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-04 20:20:28";s:12:"english_name";s:7:"Bosnian";s:11:"native_name";s:8:"Bosanski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/bs_BA.zip";s:3:"iso";a:2:{i:1;s:2:"bs";i:2;s:3:"bos";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:2:"ca";a:8:{s:8:"language";s:2:"ca";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-05-21 20:41:02";s:12:"english_name";s:7:"Catalan";s:11:"native_name";s:7:"Català";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.5/ca.zip";s:3:"iso";a:2:{i:1;s:2:"ca";i:2;s:3:"cat";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:3:"ceb";a:8:{s:8:"language";s:3:"ceb";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-03-02 17:25:51";s:12:"english_name";s:7:"Cebuano";s:11:"native_name";s:7:"Cebuano";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip";s:3:"iso";a:2:{i:2;s:3:"ceb";i:3;s:3:"ceb";}s:7:"strings";a:1:{s:8:"continue";s:7:"Padayun";}}s:5:"cs_CZ";a:8:{s:8:"language";s:5:"cs_CZ";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-12 08:46:26";s:12:"english_name";s:5:"Czech";s:11:"native_name";s:12:"Čeština‎";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/cs_CZ.zip";s:3:"iso";a:2:{i:1;s:2:"cs";i:2;s:3:"ces";}s:7:"strings";a:1:{s:8:"continue";s:11:"Pokračovat";}}s:2:"cy";a:8:{s:8:"language";s:2:"cy";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-01-26 15:49:29";s:12:"english_name";s:5:"Welsh";s:11:"native_name";s:7:"Cymraeg";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.5/cy.zip";s:3:"iso";a:2:{i:1;s:2:"cy";i:2;s:3:"cym";}s:7:"strings";a:1:{s:8:"continue";s:6:"Parhau";}}s:5:"da_DK";a:8:{s:8:"language";s:5:"da_DK";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-04-05 09:50:06";s:12:"english_name";s:6:"Danish";s:11:"native_name";s:5:"Dansk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/da_DK.zip";s:3:"iso";a:2:{i:1;s:2:"da";i:2;s:3:"dan";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsæt";}}s:5:"de_CH";a:8:{s:8:"language";s:5:"de_CH";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-01-26 15:40:03";s:12:"english_name";s:20:"German (Switzerland)";s:11:"native_name";s:17:"Deutsch (Schweiz)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/de_CH.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:14:"de_CH_informal";a:8:{s:8:"language";s:14:"de_CH_informal";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-01-26 15:39:59";s:12:"english_name";s:30:"German (Switzerland, Informal)";s:11:"native_name";s:21:"Deutsch (Schweiz, Du)";s:7:"package";s:73:"https://downloads.wordpress.org/translation/core/4.7.5/de_CH_informal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:12:"de_DE_formal";a:8:{s:8:"language";s:12:"de_DE_formal";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-05-24 13:44:46";s:12:"english_name";s:15:"German (Formal)";s:11:"native_name";s:13:"Deutsch (Sie)";s:7:"package";s:71:"https://downloads.wordpress.org/translation/core/4.7.5/de_DE_formal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:5:"de_DE";a:8:{s:8:"language";s:5:"de_DE";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-05-24 13:44:35";s:12:"english_name";s:6:"German";s:11:"native_name";s:7:"Deutsch";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/de_DE.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:3:"dzo";a:8:{s:8:"language";s:3:"dzo";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-06-29 08:59:03";s:12:"english_name";s:8:"Dzongkha";s:11:"native_name";s:18:"རྫོང་ཁ";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip";s:3:"iso";a:2:{i:1;s:2:"dz";i:2;s:3:"dzo";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:2:"el";a:8:{s:8:"language";s:2:"el";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-05-11 20:10:39";s:12:"english_name";s:5:"Greek";s:11:"native_name";s:16:"Ελληνικά";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.5/el.zip";s:3:"iso";a:2:{i:1;s:2:"el";i:2;s:3:"ell";}s:7:"strings";a:1:{s:8:"continue";s:16:"Συνέχεια";}}s:5:"en_AU";a:8:{s:8:"language";s:5:"en_AU";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-01-27 00:40:28";s:12:"english_name";s:19:"English (Australia)";s:11:"native_name";s:19:"English (Australia)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/en_AU.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_GB";a:8:{s:8:"language";s:5:"en_GB";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-01-28 03:10:25";s:12:"english_name";s:12:"English (UK)";s:11:"native_name";s:12:"English (UK)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/en_GB.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_ZA";a:8:{s:8:"language";s:5:"en_ZA";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-01-26 15:53:43";s:12:"english_name";s:22:"English (South Africa)";s:11:"native_name";s:22:"English (South Africa)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/en_ZA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_NZ";a:8:{s:8:"language";s:5:"en_NZ";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-01-26 15:54:30";s:12:"english_name";s:21:"English (New Zealand)";s:11:"native_name";s:21:"English (New Zealand)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/en_NZ.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_CA";a:8:{s:8:"language";s:5:"en_CA";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-01-26 15:49:34";s:12:"english_name";s:16:"English (Canada)";s:11:"native_name";s:16:"English (Canada)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/en_CA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"eo";a:8:{s:8:"language";s:2:"eo";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-05-04 18:08:49";s:12:"english_name";s:9:"Esperanto";s:11:"native_name";s:9:"Esperanto";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.5/eo.zip";s:3:"iso";a:2:{i:1;s:2:"eo";i:2;s:3:"epo";}s:7:"strings";a:1:{s:8:"continue";s:8:"Daŭrigi";}}s:5:"es_MX";a:8:{s:8:"language";s:5:"es_MX";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-01-26 15:42:28";s:12:"english_name";s:16:"Spanish (Mexico)";s:11:"native_name";s:19:"Español de México";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/es_MX.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_VE";a:8:{s:8:"language";s:5:"es_VE";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-04-23 23:02:31";s:12:"english_name";s:19:"Spanish (Venezuela)";s:11:"native_name";s:21:"Español de Venezuela";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/es_VE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CO";a:8:{s:8:"language";s:5:"es_CO";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-01-26 15:54:37";s:12:"english_name";s:18:"Spanish (Colombia)";s:11:"native_name";s:20:"Español de Colombia";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/es_CO.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_PE";a:8:{s:8:"language";s:5:"es_PE";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-09 09:36:22";s:12:"english_name";s:14:"Spanish (Peru)";s:11:"native_name";s:17:"Español de Perú";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/es_PE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CL";a:8:{s:8:"language";s:5:"es_CL";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-28 20:09:49";s:12:"english_name";s:15:"Spanish (Chile)";s:11:"native_name";s:17:"Español de Chile";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/es_CL.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_GT";a:8:{s:8:"language";s:5:"es_GT";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-01-26 15:54:37";s:12:"english_name";s:19:"Spanish (Guatemala)";s:11:"native_name";s:21:"Español de Guatemala";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/es_GT.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_AR";a:8:{s:8:"language";s:5:"es_AR";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-01-26 15:41:31";s:12:"english_name";s:19:"Spanish (Argentina)";s:11:"native_name";s:21:"Español de Argentina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/es_AR.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_ES";a:8:{s:8:"language";s:5:"es_ES";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-05-10 16:26:52";s:12:"english_name";s:15:"Spanish (Spain)";s:11:"native_name";s:8:"Español";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/es_ES.zip";s:3:"iso";a:1:{i:1;s:2:"es";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"et";a:8:{s:8:"language";s:2:"et";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-27 16:37:11";s:12:"english_name";s:8:"Estonian";s:11:"native_name";s:5:"Eesti";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/et.zip";s:3:"iso";a:2:{i:1;s:2:"et";i:2;s:3:"est";}s:7:"strings";a:1:{s:8:"continue";s:6:"Jätka";}}s:2:"eu";a:8:{s:8:"language";s:2:"eu";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-05-12 06:40:28";s:12:"english_name";s:6:"Basque";s:11:"native_name";s:7:"Euskara";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.5/eu.zip";s:3:"iso";a:2:{i:1;s:2:"eu";i:2;s:3:"eus";}s:7:"strings";a:1:{s:8:"continue";s:8:"Jarraitu";}}s:5:"fa_IR";a:8:{s:8:"language";s:5:"fa_IR";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-02-02 15:21:03";s:12:"english_name";s:7:"Persian";s:11:"native_name";s:10:"فارسی";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/fa_IR.zip";s:3:"iso";a:2:{i:1;s:2:"fa";i:2;s:3:"fas";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:2:"fi";a:8:{s:8:"language";s:2:"fi";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-01-26 15:42:25";s:12:"english_name";s:7:"Finnish";s:11:"native_name";s:5:"Suomi";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.5/fi.zip";s:3:"iso";a:2:{i:1;s:2:"fi";i:2;s:3:"fin";}s:7:"strings";a:1:{s:8:"continue";s:5:"Jatka";}}s:5:"fr_BE";a:8:{s:8:"language";s:5:"fr_BE";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-01-26 15:40:32";s:12:"english_name";s:16:"French (Belgium)";s:11:"native_name";s:21:"Français de Belgique";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/fr_BE.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_CA";a:8:{s:8:"language";s:5:"fr_CA";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-02-03 21:08:25";s:12:"english_name";s:15:"French (Canada)";s:11:"native_name";s:19:"Français du Canada";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/fr_CA.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_FR";a:8:{s:8:"language";s:5:"fr_FR";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-05-05 12:10:24";s:12:"english_name";s:15:"French (France)";s:11:"native_name";s:9:"Français";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/fr_FR.zip";s:3:"iso";a:1:{i:1;s:2:"fr";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:2:"gd";a:8:{s:8:"language";s:2:"gd";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-08-23 17:41:37";s:12:"english_name";s:15:"Scottish Gaelic";s:11:"native_name";s:9:"Gàidhlig";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip";s:3:"iso";a:3:{i:1;s:2:"gd";i:2;s:3:"gla";i:3;s:3:"gla";}s:7:"strings";a:1:{s:8:"continue";s:15:"Lean air adhart";}}s:5:"gl_ES";a:8:{s:8:"language";s:5:"gl_ES";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:40:27";s:12:"english_name";s:8:"Galician";s:11:"native_name";s:6:"Galego";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/gl_ES.zip";s:3:"iso";a:2:{i:1;s:2:"gl";i:2;s:3:"glg";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"gu";a:8:{s:8:"language";s:2:"gu";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-04-21 14:17:42";s:12:"english_name";s:8:"Gujarati";s:11:"native_name";s:21:"ગુજરાતી";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.5/gu.zip";s:3:"iso";a:2:{i:1;s:2:"gu";i:2;s:3:"guj";}s:7:"strings";a:1:{s:8:"continue";s:31:"ચાલુ રાખવું";}}s:3:"haz";a:8:{s:8:"language";s:3:"haz";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-05 00:59:09";s:12:"english_name";s:8:"Hazaragi";s:11:"native_name";s:15:"هزاره گی";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4.2/haz.zip";s:3:"iso";a:1:{i:3;s:3:"haz";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:5:"he_IL";a:8:{s:8:"language";s:5:"he_IL";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-01-29 21:21:10";s:12:"english_name";s:6:"Hebrew";s:11:"native_name";s:16:"עִבְרִית";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/he_IL.zip";s:3:"iso";a:1:{i:1;s:2:"he";}s:7:"strings";a:1:{s:8:"continue";s:8:"המשך";}}s:5:"hi_IN";a:8:{s:8:"language";s:5:"hi_IN";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-05-17 06:35:04";s:12:"english_name";s:5:"Hindi";s:11:"native_name";s:18:"हिन्दी";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/hi_IN.zip";s:3:"iso";a:2:{i:1;s:2:"hi";i:2;s:3:"hin";}s:7:"strings";a:1:{s:8:"continue";s:12:"जारी";}}s:2:"hr";a:8:{s:8:"language";s:2:"hr";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-03-28 13:34:22";s:12:"english_name";s:8:"Croatian";s:11:"native_name";s:8:"Hrvatski";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.5/hr.zip";s:3:"iso";a:2:{i:1;s:2:"hr";i:2;s:3:"hrv";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:5:"hu_HU";a:8:{s:8:"language";s:5:"hu_HU";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:48:39";s:12:"english_name";s:9:"Hungarian";s:11:"native_name";s:6:"Magyar";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/hu_HU.zip";s:3:"iso";a:2:{i:1;s:2:"hu";i:2;s:3:"hun";}s:7:"strings";a:1:{s:8:"continue";s:10:"Folytatás";}}s:2:"hy";a:8:{s:8:"language";s:2:"hy";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-12-03 16:21:10";s:12:"english_name";s:8:"Armenian";s:11:"native_name";s:14:"Հայերեն";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip";s:3:"iso";a:2:{i:1;s:2:"hy";i:2;s:3:"hye";}s:7:"strings";a:1:{s:8:"continue";s:20:"Շարունակել";}}s:5:"id_ID";a:8:{s:8:"language";s:5:"id_ID";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-05-02 14:01:52";s:12:"english_name";s:10:"Indonesian";s:11:"native_name";s:16:"Bahasa Indonesia";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/id_ID.zip";s:3:"iso";a:2:{i:1;s:2:"id";i:2;s:3:"ind";}s:7:"strings";a:1:{s:8:"continue";s:9:"Lanjutkan";}}s:5:"is_IS";a:8:{s:8:"language";s:5:"is_IS";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-04-13 13:55:54";s:12:"english_name";s:9:"Icelandic";s:11:"native_name";s:9:"Íslenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/is_IS.zip";s:3:"iso";a:2:{i:1;s:2:"is";i:2;s:3:"isl";}s:7:"strings";a:1:{s:8:"continue";s:6:"Áfram";}}s:5:"it_IT";a:8:{s:8:"language";s:5:"it_IT";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-04-08 04:57:54";s:12:"english_name";s:7:"Italian";s:11:"native_name";s:8:"Italiano";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/it_IT.zip";s:3:"iso";a:2:{i:1;s:2:"it";i:2;s:3:"ita";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"ja";a:8:{s:8:"language";s:2:"ja";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-05-02 05:13:51";s:12:"english_name";s:8:"Japanese";s:11:"native_name";s:9:"日本語";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.5/ja.zip";s:3:"iso";a:1:{i:1;s:2:"ja";}s:7:"strings";a:1:{s:8:"continue";s:9:"続ける";}}s:5:"ka_GE";a:8:{s:8:"language";s:5:"ka_GE";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-04-05 06:17:00";s:12:"english_name";s:8:"Georgian";s:11:"native_name";s:21:"ქართული";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/ka_GE.zip";s:3:"iso";a:2:{i:1;s:2:"ka";i:2;s:3:"kat";}s:7:"strings";a:1:{s:8:"continue";s:30:"გაგრძელება";}}s:3:"kab";a:8:{s:8:"language";s:3:"kab";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:39:13";s:12:"english_name";s:6:"Kabyle";s:11:"native_name";s:9:"Taqbaylit";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/kab.zip";s:3:"iso";a:2:{i:2;s:3:"kab";i:3;s:3:"kab";}s:7:"strings";a:1:{s:8:"continue";s:6:"Kemmel";}}s:2:"km";a:8:{s:8:"language";s:2:"km";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-12-07 02:07:59";s:12:"english_name";s:5:"Khmer";s:11:"native_name";s:27:"ភាសាខ្មែរ";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/km.zip";s:3:"iso";a:2:{i:1;s:2:"km";i:2;s:3:"khm";}s:7:"strings";a:1:{s:8:"continue";s:12:"បន្ត";}}s:5:"ko_KR";a:8:{s:8:"language";s:5:"ko_KR";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-04-18 05:09:08";s:12:"english_name";s:6:"Korean";s:11:"native_name";s:9:"한국어";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/ko_KR.zip";s:3:"iso";a:2:{i:1;s:2:"ko";i:2;s:3:"kor";}s:7:"strings";a:1:{s:8:"continue";s:6:"계속";}}s:3:"ckb";a:8:{s:8:"language";s:3:"ckb";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:48:25";s:12:"english_name";s:16:"Kurdish (Sorani)";s:11:"native_name";s:13:"كوردی‎";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/ckb.zip";s:3:"iso";a:2:{i:1;s:2:"ku";i:3;s:3:"ckb";}s:7:"strings";a:1:{s:8:"continue";s:30:"به‌رده‌وام به‌";}}s:2:"lo";a:8:{s:8:"language";s:2:"lo";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-12 09:59:23";s:12:"english_name";s:3:"Lao";s:11:"native_name";s:21:"ພາສາລາວ";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip";s:3:"iso";a:2:{i:1;s:2:"lo";i:2;s:3:"lao";}s:7:"strings";a:1:{s:8:"continue";s:18:"ຕໍ່​ໄປ";}}s:5:"lt_LT";a:8:{s:8:"language";s:5:"lt_LT";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-03-30 09:46:13";s:12:"english_name";s:10:"Lithuanian";s:11:"native_name";s:15:"Lietuvių kalba";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/lt_LT.zip";s:3:"iso";a:2:{i:1;s:2:"lt";i:2;s:3:"lit";}s:7:"strings";a:1:{s:8:"continue";s:6:"Tęsti";}}s:2:"lv";a:8:{s:8:"language";s:2:"lv";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-03-17 20:40:40";s:12:"english_name";s:7:"Latvian";s:11:"native_name";s:16:"Latviešu valoda";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.5/lv.zip";s:3:"iso";a:2:{i:1;s:2:"lv";i:2;s:3:"lav";}s:7:"strings";a:1:{s:8:"continue";s:9:"Turpināt";}}s:5:"mk_MK";a:8:{s:8:"language";s:5:"mk_MK";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-01-26 15:54:41";s:12:"english_name";s:10:"Macedonian";s:11:"native_name";s:31:"Македонски јазик";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/mk_MK.zip";s:3:"iso";a:2:{i:1;s:2:"mk";i:2;s:3:"mkd";}s:7:"strings";a:1:{s:8:"continue";s:16:"Продолжи";}}s:5:"ml_IN";a:8:{s:8:"language";s:5:"ml_IN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-27 03:43:32";s:12:"english_name";s:9:"Malayalam";s:11:"native_name";s:18:"മലയാളം";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip";s:3:"iso";a:2:{i:1;s:2:"ml";i:2;s:3:"mal";}s:7:"strings";a:1:{s:8:"continue";s:18:"തുടരുക";}}s:2:"mn";a:8:{s:8:"language";s:2:"mn";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-12 07:29:35";s:12:"english_name";s:9:"Mongolian";s:11:"native_name";s:12:"Монгол";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/mn.zip";s:3:"iso";a:2:{i:1;s:2:"mn";i:2;s:3:"mon";}s:7:"strings";a:1:{s:8:"continue";s:24:"Үргэлжлүүлэх";}}s:2:"mr";a:8:{s:8:"language";s:2:"mr";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-03-24 06:52:11";s:12:"english_name";s:7:"Marathi";s:11:"native_name";s:15:"मराठी";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.5/mr.zip";s:3:"iso";a:2:{i:1;s:2:"mr";i:2;s:3:"mar";}s:7:"strings";a:1:{s:8:"continue";s:25:"सुरु ठेवा";}}s:5:"ms_MY";a:8:{s:8:"language";s:5:"ms_MY";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-03-05 09:45:10";s:12:"english_name";s:5:"Malay";s:11:"native_name";s:13:"Bahasa Melayu";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/ms_MY.zip";s:3:"iso";a:2:{i:1;s:2:"ms";i:2;s:3:"msa";}s:7:"strings";a:1:{s:8:"continue";s:8:"Teruskan";}}s:5:"my_MM";a:8:{s:8:"language";s:5:"my_MM";s:7:"version";s:6:"4.1.18";s:7:"updated";s:19:"2015-03-26 15:57:42";s:12:"english_name";s:17:"Myanmar (Burmese)";s:11:"native_name";s:15:"ဗမာစာ";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.1.18/my_MM.zip";s:3:"iso";a:2:{i:1;s:2:"my";i:2;s:3:"mya";}s:7:"strings";a:1:{s:8:"continue";s:54:"ဆက်လက်လုပ်ဆောင်ပါ။";}}s:5:"nb_NO";a:8:{s:8:"language";s:5:"nb_NO";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-01-26 15:42:31";s:12:"english_name";s:19:"Norwegian (Bokmål)";s:11:"native_name";s:13:"Norsk bokmål";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/nb_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nb";i:2;s:3:"nob";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsett";}}s:5:"ne_NP";a:8:{s:8:"language";s:5:"ne_NP";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-06-02 10:59:56";s:12:"english_name";s:6:"Nepali";s:11:"native_name";s:18:"नेपाली";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/ne_NP.zip";s:3:"iso";a:2:{i:1;s:2:"ne";i:2;s:3:"nep";}s:7:"strings";a:1:{s:8:"continue";s:43:"जारी राख्नुहोस्";}}s:5:"nl_NL";a:8:{s:8:"language";s:5:"nl_NL";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-05-11 15:57:29";s:12:"english_name";s:5:"Dutch";s:11:"native_name";s:10:"Nederlands";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/nl_NL.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:12:"nl_NL_formal";a:8:{s:8:"language";s:12:"nl_NL_formal";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-02-16 13:24:21";s:12:"english_name";s:14:"Dutch (Formal)";s:11:"native_name";s:20:"Nederlands (Formeel)";s:7:"package";s:71:"https://downloads.wordpress.org/translation/core/4.7.5/nl_NL_formal.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nl_BE";a:8:{s:8:"language";s:5:"nl_BE";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-05-15 08:29:44";s:12:"english_name";s:15:"Dutch (Belgium)";s:11:"native_name";s:20:"Nederlands (België)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/nl_BE.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nn_NO";a:8:{s:8:"language";s:5:"nn_NO";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-01-26 15:40:57";s:12:"english_name";s:19:"Norwegian (Nynorsk)";s:11:"native_name";s:13:"Norsk nynorsk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/nn_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nn";i:2;s:3:"nno";}s:7:"strings";a:1:{s:8:"continue";s:9:"Hald fram";}}s:3:"oci";a:8:{s:8:"language";s:3:"oci";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-02 13:47:38";s:12:"english_name";s:7:"Occitan";s:11:"native_name";s:7:"Occitan";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/oci.zip";s:3:"iso";a:2:{i:1;s:2:"oc";i:2;s:3:"oci";}s:7:"strings";a:1:{s:8:"continue";s:9:"Contunhar";}}s:5:"pa_IN";a:8:{s:8:"language";s:5:"pa_IN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-16 05:19:43";s:12:"english_name";s:7:"Punjabi";s:11:"native_name";s:18:"ਪੰਜਾਬੀ";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip";s:3:"iso";a:2:{i:1;s:2:"pa";i:2;s:3:"pan";}s:7:"strings";a:1:{s:8:"continue";s:25:"ਜਾਰੀ ਰੱਖੋ";}}s:5:"pl_PL";a:8:{s:8:"language";s:5:"pl_PL";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-04-23 09:31:28";s:12:"english_name";s:6:"Polish";s:11:"native_name";s:6:"Polski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/pl_PL.zip";s:3:"iso";a:2:{i:1;s:2:"pl";i:2;s:3:"pol";}s:7:"strings";a:1:{s:8:"continue";s:9:"Kontynuuj";}}s:2:"ps";a:8:{s:8:"language";s:2:"ps";s:7:"version";s:6:"4.1.18";s:7:"updated";s:19:"2015-03-29 22:19:48";s:12:"english_name";s:6:"Pashto";s:11:"native_name";s:8:"پښتو";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.1.18/ps.zip";s:3:"iso";a:2:{i:1;s:2:"ps";i:2;s:3:"pus";}s:7:"strings";a:1:{s:8:"continue";s:19:"دوام ورکړه";}}s:5:"pt_BR";a:8:{s:8:"language";s:5:"pt_BR";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-04-17 15:02:48";s:12:"english_name";s:19:"Portuguese (Brazil)";s:11:"native_name";s:20:"Português do Brasil";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/pt_BR.zip";s:3:"iso";a:2:{i:1;s:2:"pt";i:2;s:3:"por";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"pt_PT";a:8:{s:8:"language";s:5:"pt_PT";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-05-31 13:50:28";s:12:"english_name";s:21:"Portuguese (Portugal)";s:11:"native_name";s:10:"Português";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/pt_PT.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:3:"rhg";a:8:{s:8:"language";s:3:"rhg";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-03-16 13:03:18";s:12:"english_name";s:8:"Rohingya";s:11:"native_name";s:8:"Ruáinga";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip";s:3:"iso";a:1:{i:3;s:3:"rhg";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:5:"ro_RO";a:8:{s:8:"language";s:5:"ro_RO";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-05-28 08:15:40";s:12:"english_name";s:8:"Romanian";s:11:"native_name";s:8:"Română";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/ro_RO.zip";s:3:"iso";a:2:{i:1;s:2:"ro";i:2;s:3:"ron";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuă";}}s:5:"ru_RU";a:8:{s:8:"language";s:5:"ru_RU";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-04-20 10:13:53";s:12:"english_name";s:7:"Russian";s:11:"native_name";s:14:"Русский";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/ru_RU.zip";s:3:"iso";a:2:{i:1;s:2:"ru";i:2;s:3:"rus";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продолжить";}}s:3:"sah";a:8:{s:8:"language";s:3:"sah";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-21 02:06:41";s:12:"english_name";s:5:"Sakha";s:11:"native_name";s:14:"Сахалыы";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip";s:3:"iso";a:2:{i:2;s:3:"sah";i:3;s:3:"sah";}s:7:"strings";a:1:{s:8:"continue";s:12:"Салҕаа";}}s:5:"si_LK";a:8:{s:8:"language";s:5:"si_LK";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-12 06:00:52";s:12:"english_name";s:7:"Sinhala";s:11:"native_name";s:15:"සිංහල";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip";s:3:"iso";a:2:{i:1;s:2:"si";i:2;s:3:"sin";}s:7:"strings";a:1:{s:8:"continue";s:44:"දිගටම කරගෙන යන්න";}}s:5:"sk_SK";a:8:{s:8:"language";s:5:"sk_SK";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-05-10 13:48:29";s:12:"english_name";s:6:"Slovak";s:11:"native_name";s:11:"Slovenčina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/sk_SK.zip";s:3:"iso";a:2:{i:1;s:2:"sk";i:2;s:3:"slk";}s:7:"strings";a:1:{s:8:"continue";s:12:"Pokračovať";}}s:5:"sl_SI";a:8:{s:8:"language";s:5:"sl_SI";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-02-08 17:57:45";s:12:"english_name";s:9:"Slovenian";s:11:"native_name";s:13:"Slovenščina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/sl_SI.zip";s:3:"iso";a:2:{i:1;s:2:"sl";i:2;s:3:"slv";}s:7:"strings";a:1:{s:8:"continue";s:8:"Nadaljuj";}}s:2:"sq";a:8:{s:8:"language";s:2:"sq";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-04-24 08:35:30";s:12:"english_name";s:8:"Albanian";s:11:"native_name";s:5:"Shqip";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.5/sq.zip";s:3:"iso";a:2:{i:1;s:2:"sq";i:2;s:3:"sqi";}s:7:"strings";a:1:{s:8:"continue";s:6:"Vazhdo";}}s:5:"sr_RS";a:8:{s:8:"language";s:5:"sr_RS";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-01-26 15:41:03";s:12:"english_name";s:7:"Serbian";s:11:"native_name";s:23:"Српски језик";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/sr_RS.zip";s:3:"iso";a:2:{i:1;s:2:"sr";i:2;s:3:"srp";}s:7:"strings";a:1:{s:8:"continue";s:14:"Настави";}}s:5:"sv_SE";a:8:{s:8:"language";s:5:"sv_SE";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-04-03 00:34:10";s:12:"english_name";s:7:"Swedish";s:11:"native_name";s:7:"Svenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/sv_SE.zip";s:3:"iso";a:2:{i:1;s:2:"sv";i:2;s:3:"swe";}s:7:"strings";a:1:{s:8:"continue";s:9:"Fortsätt";}}s:3:"szl";a:8:{s:8:"language";s:3:"szl";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-24 19:58:14";s:12:"english_name";s:8:"Silesian";s:11:"native_name";s:17:"Ślōnskŏ gŏdka";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip";s:3:"iso";a:1:{i:3;s:3:"szl";}s:7:"strings";a:1:{s:8:"continue";s:13:"Kōntynuować";}}s:5:"ta_IN";a:8:{s:8:"language";s:5:"ta_IN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-27 03:22:47";s:12:"english_name";s:5:"Tamil";s:11:"native_name";s:15:"தமிழ்";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip";s:3:"iso";a:2:{i:1;s:2:"ta";i:2;s:3:"tam";}s:7:"strings";a:1:{s:8:"continue";s:24:"தொடரவும்";}}s:2:"te";a:8:{s:8:"language";s:2:"te";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:47:39";s:12:"english_name";s:6:"Telugu";s:11:"native_name";s:18:"తెలుగు";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/te.zip";s:3:"iso";a:2:{i:1;s:2:"te";i:2;s:3:"tel";}s:7:"strings";a:1:{s:8:"continue";s:30:"కొనసాగించు";}}s:2:"th";a:8:{s:8:"language";s:2:"th";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:48:43";s:12:"english_name";s:4:"Thai";s:11:"native_name";s:9:"ไทย";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/th.zip";s:3:"iso";a:2:{i:1;s:2:"th";i:2;s:3:"tha";}s:7:"strings";a:1:{s:8:"continue";s:15:"ต่อไป";}}s:2:"tl";a:8:{s:8:"language";s:2:"tl";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-12-30 02:38:08";s:12:"english_name";s:7:"Tagalog";s:11:"native_name";s:7:"Tagalog";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/tl.zip";s:3:"iso";a:2:{i:1;s:2:"tl";i:2;s:3:"tgl";}s:7:"strings";a:1:{s:8:"continue";s:10:"Magpatuloy";}}s:5:"tr_TR";a:8:{s:8:"language";s:5:"tr_TR";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-04-15 09:03:35";s:12:"english_name";s:7:"Turkish";s:11:"native_name";s:8:"Türkçe";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/tr_TR.zip";s:3:"iso";a:2:{i:1;s:2:"tr";i:2;s:3:"tur";}s:7:"strings";a:1:{s:8:"continue";s:5:"Devam";}}s:5:"tt_RU";a:8:{s:8:"language";s:5:"tt_RU";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-20 20:20:50";s:12:"english_name";s:5:"Tatar";s:11:"native_name";s:19:"Татар теле";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip";s:3:"iso";a:2:{i:1;s:2:"tt";i:2;s:3:"tat";}s:7:"strings";a:1:{s:8:"continue";s:17:"дәвам итү";}}s:3:"tah";a:8:{s:8:"language";s:3:"tah";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-03-06 18:39:39";s:12:"english_name";s:8:"Tahitian";s:11:"native_name";s:10:"Reo Tahiti";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip";s:3:"iso";a:3:{i:1;s:2:"ty";i:2;s:3:"tah";i:3;s:3:"tah";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:5:"ug_CN";a:8:{s:8:"language";s:5:"ug_CN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-12-05 09:23:39";s:12:"english_name";s:6:"Uighur";s:11:"native_name";s:9:"Uyƣurqə";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/ug_CN.zip";s:3:"iso";a:2:{i:1;s:2:"ug";i:2;s:3:"uig";}s:7:"strings";a:1:{s:8:"continue";s:26:"داۋاملاشتۇرۇش";}}s:2:"uk";a:8:{s:8:"language";s:2:"uk";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-05-17 03:13:31";s:12:"english_name";s:9:"Ukrainian";s:11:"native_name";s:20:"Українська";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.5/uk.zip";s:3:"iso";a:2:{i:1;s:2:"uk";i:2;s:3:"ukr";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продовжити";}}s:2:"ur";a:8:{s:8:"language";s:2:"ur";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-03-27 07:08:07";s:12:"english_name";s:4:"Urdu";s:11:"native_name";s:8:"اردو";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.5/ur.zip";s:3:"iso";a:2:{i:1;s:2:"ur";i:2;s:3:"urd";}s:7:"strings";a:1:{s:8:"continue";s:19:"جاری رکھیں";}}s:5:"uz_UZ";a:8:{s:8:"language";s:5:"uz_UZ";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-05-13 09:55:38";s:12:"english_name";s:5:"Uzbek";s:11:"native_name";s:11:"O‘zbekcha";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/uz_UZ.zip";s:3:"iso";a:2:{i:1;s:2:"uz";i:2;s:3:"uzb";}s:7:"strings";a:1:{s:8:"continue";s:11:"Davom etish";}}s:2:"vi";a:8:{s:8:"language";s:2:"vi";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-04-10 15:33:37";s:12:"english_name";s:10:"Vietnamese";s:11:"native_name";s:14:"Tiếng Việt";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.5/vi.zip";s:3:"iso";a:2:{i:1;s:2:"vi";i:2;s:3:"vie";}s:7:"strings";a:1:{s:8:"continue";s:12:"Tiếp tục";}}s:5:"zh_TW";a:8:{s:8:"language";s:5:"zh_TW";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-05-08 04:16:08";s:12:"english_name";s:16:"Chinese (Taiwan)";s:11:"native_name";s:12:"繁體中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/zh_TW.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}s:5:"zh_HK";a:8:{s:8:"language";s:5:"zh_HK";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-05-23 02:18:07";s:12:"english_name";s:19:"Chinese (Hong Kong)";s:11:"native_name";s:16:"香港中文版	";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/zh_HK.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}s:5:"zh_CN";a:8:{s:8:"language";s:5:"zh_CN";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-01-26 15:54:45";s:12:"english_name";s:15:"Chinese (China)";s:11:"native_name";s:12:"简体中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/zh_CN.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"继续";}}}', 'no'),
(268, '_site_transient_timeout_browser_3efc016b2059668c69de07123afad5fa', '1497259563', 'no'),
(269, '_site_transient_browser_3efc016b2059668c69de07123afad5fa', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:7:"Firefox";s:7:"version";s:4:"53.0";s:10:"update_url";s:23:"http://www.firefox.com/";s:7:"img_src";s:50:"http://s.wordpress.org/images/browsers/firefox.png";s:11:"img_src_ssl";s:49:"https://wordpress.org/images/browsers/firefox.png";s:15:"current_version";s:2:"16";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'no'),
(286, '_site_transient_timeout_browser_973b0af64fa9ae42ab017fa2edcf5878', '1497332003', 'no'),
(287, '_site_transient_browser_973b0af64fa9ae42ab017fa2edcf5878', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"58.0.3029.110";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'no'),
(328, 'zemanta_plugin_version', '1.2.3', 'yes'),
(329, 'wprp_last_sent', '20170607', 'yes'),
(330, 'zemanta_options', 'a:1:{s:7:"api_key";s:24:"2stl4nawyiur0tpnuclxyjky";}', 'yes'),
(364, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1496913079', 'no'),
(365, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:"stdClass":100:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";i:4343;}s:4:"post";a:3:{s:4:"name";s:4:"post";s:4:"slug";s:4:"post";s:5:"count";i:2483;}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";i:2353;}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";i:2113;}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";i:1820;}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";i:1580;}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";i:1559;}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";i:1429;}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";i:1337;}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";i:1325;}s:8:"facebook";a:3:{s:4:"name";s:8:"facebook";s:4:"slug";s:8:"facebook";s:5:"count";i:1318;}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";i:1267;}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";i:1263;}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";i:1108;}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";i:1043;}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";i:1039;}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";i:985;}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";i:924;}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";i:814;}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";i:791;}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";i:789;}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";i:762;}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";i:760;}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";i:665;}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";i:657;}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";i:653;}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";i:645;}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";i:643;}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";i:635;}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";i:626;}s:6:"slider";a:3:{s:4:"name";s:6:"slider";s:4:"slug";s:6:"slider";s:5:"count";i:601;}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";i:592;}s:4:"ajax";a:3:{s:4:"name";s:4:"ajax";s:4:"slug";s:4:"ajax";s:5:"count";i:589;}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";i:577;}s:9:"analytics";a:3:{s:4:"name";s:9:"analytics";s:4:"slug";s:9:"analytics";s:5:"count";i:576;}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";i:573;}s:6:"search";a:3:{s:4:"name";s:6:"search";s:4:"slug";s:6:"search";s:5:"count";i:567;}s:10:"e-commerce";a:3:{s:4:"name";s:10:"e-commerce";s:4:"slug";s:10:"e-commerce";s:5:"count";i:554;}s:4:"menu";a:3:{s:4:"name";s:4:"menu";s:4:"slug";s:4:"menu";s:5:"count";i:551;}s:5:"embed";a:3:{s:4:"name";s:5:"embed";s:4:"slug";s:5:"embed";s:5:"count";i:538;}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";i:530;}s:4:"form";a:3:{s:4:"name";s:4:"form";s:4:"slug";s:4:"form";s:5:"count";i:524;}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";i:518;}s:3:"css";a:3:{s:4:"name";s:3:"css";s:4:"slug";s:3:"css";s:5:"count";i:504;}s:5:"share";a:3:{s:4:"name";s:5:"share";s:4:"slug";s:5:"share";s:5:"count";i:499;}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";i:490;}s:7:"comment";a:3:{s:4:"name";s:7:"comment";s:4:"slug";s:7:"comment";s:5:"count";i:489;}s:5:"theme";a:3:{s:4:"name";s:5:"theme";s:4:"slug";s:5:"theme";s:5:"count";i:476;}s:6:"custom";a:3:{s:4:"name";s:6:"custom";s:4:"slug";s:6:"custom";s:5:"count";i:464;}s:10:"categories";a:3:{s:4:"name";s:10:"categories";s:4:"slug";s:10:"categories";s:5:"count";i:462;}s:10:"responsive";a:3:{s:4:"name";s:10:"responsive";s:4:"slug";s:10:"responsive";s:5:"count";i:461;}s:9:"dashboard";a:3:{s:4:"name";s:9:"dashboard";s:4:"slug";s:9:"dashboard";s:5:"count";i:461;}s:3:"ads";a:3:{s:4:"name";s:3:"ads";s:4:"slug";s:3:"ads";s:5:"count";i:441;}s:4:"tags";a:3:{s:4:"name";s:4:"tags";s:4:"slug";s:4:"tags";s:5:"count";i:434;}s:9:"affiliate";a:3:{s:4:"name";s:9:"affiliate";s:4:"slug";s:9:"affiliate";s:5:"count";i:434;}s:6:"button";a:3:{s:4:"name";s:6:"button";s:4:"slug";s:6:"button";s:5:"count";i:433;}s:6:"editor";a:3:{s:4:"name";s:6:"editor";s:4:"slug";s:6:"editor";s:5:"count";i:428;}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";i:419;}s:12:"contact-form";a:3:{s:4:"name";s:12:"contact form";s:4:"slug";s:12:"contact-form";s:5:"count";i:412;}s:4:"user";a:3:{s:4:"name";s:4:"user";s:4:"slug";s:4:"user";s:5:"count";i:409;}s:9:"slideshow";a:3:{s:4:"name";s:9:"slideshow";s:4:"slug";s:9:"slideshow";s:5:"count";i:406;}s:6:"mobile";a:3:{s:4:"name";s:6:"mobile";s:4:"slug";s:6:"mobile";s:5:"count";i:401;}s:5:"stats";a:3:{s:4:"name";s:5:"stats";s:4:"slug";s:5:"stats";s:5:"count";i:399;}s:7:"contact";a:3:{s:4:"name";s:7:"contact";s:4:"slug";s:7:"contact";s:5:"count";i:396;}s:5:"users";a:3:{s:4:"name";s:5:"users";s:4:"slug";s:5:"users";s:5:"count";i:395;}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";i:394;}s:10:"statistics";a:3:{s:4:"name";s:10:"statistics";s:4:"slug";s:10:"statistics";s:5:"count";i:376;}s:3:"api";a:3:{s:4:"name";s:3:"api";s:4:"slug";s:3:"api";s:5:"count";i:375;}s:6:"events";a:3:{s:4:"name";s:6:"events";s:4:"slug";s:6:"events";s:5:"count";i:365;}s:10:"navigation";a:3:{s:4:"name";s:10:"navigation";s:4:"slug";s:10:"navigation";s:5:"count";i:365;}s:4:"news";a:3:{s:4:"name";s:4:"news";s:4:"slug";s:4:"news";s:5:"count";i:351;}s:8:"calendar";a:3:{s:4:"name";s:8:"calendar";s:4:"slug";s:8:"calendar";s:5:"count";i:335;}s:7:"plugins";a:3:{s:4:"name";s:7:"plugins";s:4:"slug";s:7:"plugins";s:5:"count";i:331;}s:12:"social-media";a:3:{s:4:"name";s:12:"social media";s:4:"slug";s:12:"social-media";s:5:"count";i:330;}s:9:"multisite";a:3:{s:4:"name";s:9:"multisite";s:4:"slug";s:9:"multisite";s:5:"count";i:329;}s:10:"shortcodes";a:3:{s:4:"name";s:10:"shortcodes";s:4:"slug";s:10:"shortcodes";s:5:"count";i:323;}s:4:"code";a:3:{s:4:"name";s:4:"code";s:4:"slug";s:4:"code";s:5:"count";i:321;}s:4:"meta";a:3:{s:4:"name";s:4:"meta";s:4:"slug";s:4:"meta";s:5:"count";i:319;}s:4:"list";a:3:{s:4:"name";s:4:"list";s:4:"slug";s:4:"list";s:5:"count";i:318;}s:7:"payment";a:3:{s:4:"name";s:7:"payment";s:4:"slug";s:7:"payment";s:5:"count";i:317;}s:10:"newsletter";a:3:{s:4:"name";s:10:"newsletter";s:4:"slug";s:10:"newsletter";s:5:"count";i:315;}s:3:"url";a:3:{s:4:"name";s:3:"url";s:4:"slug";s:3:"url";s:5:"count";i:314;}s:9:"marketing";a:3:{s:4:"name";s:9:"marketing";s:4:"slug";s:9:"marketing";s:5:"count";i:299;}s:5:"popup";a:3:{s:4:"name";s:5:"popup";s:4:"slug";s:5:"popup";s:5:"count";i:298;}s:6:"simple";a:3:{s:4:"name";s:6:"simple";s:4:"slug";s:6:"simple";s:5:"count";i:293;}s:3:"tag";a:3:{s:4:"name";s:3:"tag";s:4:"slug";s:3:"tag";s:5:"count";i:292;}s:16:"custom-post-type";a:3:{s:4:"name";s:16:"custom post type";s:4:"slug";s:16:"custom-post-type";s:5:"count";i:288;}s:4:"chat";a:3:{s:4:"name";s:4:"chat";s:4:"slug";s:4:"chat";s:5:"count";i:286;}s:8:"redirect";a:3:{s:4:"name";s:8:"redirect";s:4:"slug";s:8:"redirect";s:5:"count";i:286;}s:11:"advertising";a:3:{s:4:"name";s:11:"advertising";s:4:"slug";s:11:"advertising";s:5:"count";i:282;}s:6:"author";a:3:{s:4:"name";s:6:"author";s:4:"slug";s:6:"author";s:5:"count";i:279;}s:7:"adsense";a:3:{s:4:"name";s:7:"adsense";s:4:"slug";s:7:"adsense";s:5:"count";i:277;}s:4:"html";a:3:{s:4:"name";s:4:"html";s:4:"slug";s:4:"html";s:5:"count";i:274;}s:8:"lightbox";a:3:{s:4:"name";s:8:"lightbox";s:4:"slug";s:8:"lightbox";s:5:"count";i:273;}s:5:"forms";a:3:{s:4:"name";s:5:"forms";s:4:"slug";s:5:"forms";s:5:"count";i:268;}s:15:"payment-gateway";a:3:{s:4:"name";s:15:"payment gateway";s:4:"slug";s:15:"payment-gateway";s:5:"count";i:267;}s:14:"administration";a:3:{s:4:"name";s:14:"administration";s:4:"slug";s:14:"administration";s:5:"count";i:263;}s:7:"captcha";a:3:{s:4:"name";s:7:"captcha";s:4:"slug";s:7:"captcha";s:5:"count";i:263;}s:12:"notification";a:3:{s:4:"name";s:12:"notification";s:4:"slug";s:12:"notification";s:5:"count";i:262;}s:5:"cache";a:3:{s:4:"name";s:5:"cache";s:4:"slug";s:5:"cache";s:5:"count";i:260;}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(377, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1497197034;s:8:"response";a:0:{}s:12:"translations";a:0:{}s:9:"no_update";a:8:{s:30:"advanced-custom-fields/acf.php";O:8:"stdClass":6:{s:2:"id";s:36:"w.org/plugins/advanced-custom-fields";s:4:"slug";s:22:"advanced-custom-fields";s:6:"plugin";s:30:"advanced-custom-fields/acf.php";s:11:"new_version";s:6:"4.4.11";s:3:"url";s:53:"https://wordpress.org/plugins/advanced-custom-fields/";s:7:"package";s:72:"https://downloads.wordpress.org/plugin/advanced-custom-fields.4.4.11.zip";}s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"3.3.2";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.3.3.2.zip";}s:45:"taxonomy-terms-order/taxonomy-terms-order.php";O:8:"stdClass":6:{s:2:"id";s:34:"w.org/plugins/taxonomy-terms-order";s:4:"slug";s:20:"taxonomy-terms-order";s:6:"plugin";s:45:"taxonomy-terms-order/taxonomy-terms-order.php";s:11:"new_version";s:3:"1.5";s:3:"url";s:51:"https://wordpress.org/plugins/taxonomy-terms-order/";s:7:"package";s:67:"https://downloads.wordpress.org/plugin/taxonomy-terms-order.1.5.zip";}s:22:"cyr3lat/cyr-to-lat.php";O:8:"stdClass":6:{s:2:"id";s:21:"w.org/plugins/cyr3lat";s:4:"slug";s:7:"cyr3lat";s:6:"plugin";s:22:"cyr3lat/cyr-to-lat.php";s:11:"new_version";s:3:"3.5";s:3:"url";s:38:"https://wordpress.org/plugins/cyr3lat/";s:7:"package";s:54:"https://downloads.wordpress.org/plugin/cyr3lat.3.5.zip";}s:49:"dynamic-featured-image/dynamic-featured-image.php";O:8:"stdClass":6:{s:2:"id";s:36:"w.org/plugins/dynamic-featured-image";s:4:"slug";s:22:"dynamic-featured-image";s:6:"plugin";s:49:"dynamic-featured-image/dynamic-featured-image.php";s:11:"new_version";s:5:"3.5.2";s:3:"url";s:53:"https://wordpress.org/plugins/dynamic-featured-image/";s:7:"package";s:71:"https://downloads.wordpress.org/plugin/dynamic-featured-image.3.5.2.zip";}s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}s:47:"no-category-base-wpml/no-category-base-wpml.php";O:8:"stdClass":6:{s:2:"id";s:35:"w.org/plugins/no-category-base-wpml";s:4:"slug";s:21:"no-category-base-wpml";s:6:"plugin";s:47:"no-category-base-wpml/no-category-base-wpml.php";s:11:"new_version";s:3:"1.3";s:3:"url";s:52:"https://wordpress.org/plugins/no-category-base-wpml/";s:7:"package";s:64:"https://downloads.wordpress.org/plugin/no-category-base-wpml.zip";}s:42:"yet-another-related-posts-plugin/yarpp.php";O:8:"stdClass":6:{s:2:"id";s:46:"w.org/plugins/yet-another-related-posts-plugin";s:4:"slug";s:32:"yet-another-related-posts-plugin";s:6:"plugin";s:42:"yet-another-related-posts-plugin/yarpp.php";s:11:"new_version";s:3:"4.4";s:3:"url";s:63:"https://wordpress.org/plugins/yet-another-related-posts-plugin/";s:7:"package";s:79:"https://downloads.wordpress.org/plugin/yet-another-related-posts-plugin.4.4.zip";}}}', 'no'),
(379, 'widget_yarpp_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(380, 'yarpp_pro', 'a:7:{s:6:"active";s:1:"0";s:3:"aid";N;s:2:"st";N;s:1:"v";N;s:4:"dpid";N;s:5:"optin";b:0;s:23:"auto_display_post_types";a:1:{i:0;s:4:"post";}}', 'yes'),
(381, 'yarpp_version', '4.4', 'yes'),
(383, 'yarpp', 'a:47:{s:9:"threshold";s:1:"1";s:5:"limit";s:1:"3";s:14:"excerpt_length";s:2:"10";s:6:"recent";b:0;s:12:"before_title";s:4:"<li>";s:11:"after_title";s:5:"</li>";s:11:"before_post";s:8:" <small>";s:10:"after_post";s:8:"</small>";s:14:"before_related";s:27:"<h3>Related posts:</h3><ol>";s:13:"after_related";s:5:"</ol>";s:10:"no_results";s:24:"<p>No related posts.</p>";s:5:"order";s:10:"score DESC";s:9:"rss_limit";s:1:"3";s:18:"rss_excerpt_length";s:2:"10";s:16:"rss_before_title";s:4:"<li>";s:15:"rss_after_title";s:5:"</li>";s:15:"rss_before_post";s:8:" <small>";s:14:"rss_after_post";s:8:"</small>";s:18:"rss_before_related";s:27:"<h3>Related posts:</h3><ol>";s:17:"rss_after_related";s:5:"</ol>";s:14:"rss_no_results";s:24:"<p>No related posts.</p>";s:9:"rss_order";s:10:"score DESC";s:9:"past_only";b:0;s:12:"show_excerpt";b:0;s:16:"rss_show_excerpt";b:0;s:8:"template";s:29:"yarpp-template-mytemplate.php";s:12:"rss_template";b:0;s:14:"show_pass_post";b:0;s:12:"cross_relate";b:0;s:11:"rss_display";b:0;s:19:"rss_excerpt_display";b:1;s:13:"promote_yarpp";b:0;s:17:"rss_promote_yarpp";b:0;s:15:"myisam_override";b:0;s:7:"exclude";s:13:"1,3,4,5,6,7,8";s:6:"weight";a:3:{s:5:"title";i:1;s:4:"body";i:1;s:3:"tax";a:2:{s:8:"category";i:1;s:8:"post_tag";i:1;}}s:11:"require_tax";a:0:{}s:5:"optin";b:0;s:18:"thumbnails_heading";s:14:"Related posts:";s:18:"thumbnails_default";s:91:"http://neftehim2.loc/wp-content/plugins/yet-another-related-posts-plugin/images/default.png";s:22:"rss_thumbnails_heading";s:14:"Related posts:";s:22:"rss_thumbnails_default";s:91:"http://neftehim2.loc/wp-content/plugins/yet-another-related-posts-plugin/images/default.png";s:12:"display_code";b:0;s:20:"auto_display_archive";b:0;s:23:"auto_display_post_types";a:0:{}s:5:"pools";a:0:{}s:25:"manually_using_thumbnails";b:0;}', 'yes'),
(395, '_transient_timeout_plugin_slugs', '1497111525', 'no'),
(396, '_transient_plugin_slugs', 'a:8:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:19:"akismet/akismet.php";i:2;s:45:"taxonomy-terms-order/taxonomy-terms-order.php";i:3;s:22:"cyr3lat/cyr-to-lat.php";i:4;s:49:"dynamic-featured-image/dynamic-featured-image.php";i:5;s:9:"hello.php";i:6;s:47:"no-category-base-wpml/no-category-base-wpml.php";i:7;s:42:"yet-another-related-posts-plugin/yarpp.php";}', 'no'),
(407, '_transient_timeout_feed_b9388c83948825c1edaef0d856b7b109', '1497114862', 'no'),
(408, '_transient_timeout_feed_mod_b9388c83948825c1edaef0d856b7b109', '1497114862', 'no'),
(409, '_transient_feed_mod_b9388c83948825c1edaef0d856b7b109', '1497071662', 'no'),
(410, '_transient_timeout_dash_f69de0bbfe7eaa113146875f40c02000', '1497114863', 'no'),
(411, '_transient_dash_f69de0bbfe7eaa113146875f40c02000', '<div class="rss-widget"><ul><li><a class=\'rsswidget\' href=\'https://wordpress.org/news/2017/06/evans/\'>WordPress 4.8 “Evans”</a> <span class="rss-date">08.06.2017</span><div class="rssSummary">An Update with You in Mind Gear up for a more intuitive WordPress! Version 4.8 of WordPress, named “Evans” in honor of jazz pianist and composer William John “Bill” Evans, is available for download or update in your WordPress dashboard. New features in 4.8 add more ways for you to express yourself and represent your brand. Though some [&hellip;]</div></li></ul></div><div class="rss-widget"><ul><li><a class=\'rsswidget\' href=\'https://wptavern.com/wordcamp-for-publishers-opens-up-ticket-sales-50-sold-in-the-first-day\'>WPTavern: WordCamp for Publishers Opens Up Ticket Sales, 50% Sold in the First Day</a></li><li><a class=\'rsswidget\' href=\'https://wptavern.com/unsplash-updates-its-license-raises-gpl-compatibility-concerns\'>WPTavern: Unsplash Updates its License, Raises GPL Compatibility Concerns</a></li><li><a class=\'rsswidget\' href=\'https://wptavern.com/major-update-coming-to-wp-super-cache-new-rest-api-user-friendly-settings-page-and-improvements-to-legacy-file-storage\'>WPTavern: Major Update Coming to WP Super Cache: New REST API, User-Friendly Settings Page, and Improvements to Legacy File Storage</a></li></ul></div><div class="rss-widget"><ul><li class="dashboard-news-plugin"><span>Популярный плагин:</span> Yoast SEO&nbsp;<a href="plugin-install.php?tab=plugin-information&amp;plugin=wordpress-seo&amp;_wpnonce=a908e7a944&amp;TB_iframe=true&amp;width=600&amp;height=800" class="thickbox open-plugin-details-modal" aria-label="Установить Yoast SEO">(Установить)</a></li></ul></div>', 'no'),
(413, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(414, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(415, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(417, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:63:"https://downloads.wordpress.org/release/ru_RU/wordpress-4.8.zip";s:6:"locale";s:5:"ru_RU";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:63:"https://downloads.wordpress.org/release/ru_RU/wordpress-4.8.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"4.8";s:7:"version";s:3:"4.8";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1497197025;s:15:"version_checked";s:3:"4.8";s:12:"translations";a:0:{}}', 'no'),
(418, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1497197037;s:7:"checked";a:4:{s:8:"neftehim";s:3:"1.0";s:13:"twentyfifteen";s:3:"1.8";s:15:"twentyseventeen";s:3:"1.3";s:13:"twentysixteen";s:3:"1.3";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no'),
(421, '_site_transient_timeout_theme_roots', '1497198828', 'no'),
(422, '_site_transient_theme_roots', 'a:4:{s:8:"neftehim";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no'),
(423, '_site_transient_timeout_community-events-1aecf33ab8525ff212ebdffbb438372e', '1497240440', 'no'),
(424, '_site_transient_community-events-1aecf33ab8525ff212ebdffbb438372e', 'a:2:{s:8:"location";a:1:{s:2:"ip";s:9:"127.0.0.0";}s:6:"events";a:0:{}}', 'no'),
(425, '_transient_timeout_feed_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1497240442', 'no'),
(426, '_transient_timeout_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1497240443', 'no'),
(427, '_transient_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1497197243', 'no'),
(428, '_transient_timeout_feed_d117b5738fbd35bd8c0391cda1f2b5d9', '1497240446', 'no'),
(429, '_transient_timeout_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1497240446', 'no'),
(430, '_transient_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1497197246', 'no'),
(431, '_transient_timeout_dash_v2_f69de0bbfe7eaa113146875f40c02000', '1497240446', 'no'),
(432, '_transient_dash_v2_f69de0bbfe7eaa113146875f40c02000', '<div class="rss-widget"><ul><li><a class=\'rsswidget\' href=\'https://wordpress.org/news/2017/06/evans/\'>WordPress 4.8 “Evans”</a></li></ul></div><div class="rss-widget"><ul><li><a class=\'rsswidget\' href=\'https://wptavern.com/wordcamp-for-publishers-opens-up-ticket-sales-50-sold-in-the-first-day\'>WPTavern: WordCamp for Publishers Opens Up Ticket Sales, 50% Sold in the First Day</a></li><li><a class=\'rsswidget\' href=\'https://wptavern.com/unsplash-updates-its-license-raises-gpl-compatibility-concerns\'>WPTavern: Unsplash Updates its License, Raises GPL Compatibility Concerns</a></li><li><a class=\'rsswidget\' href=\'https://wptavern.com/major-update-coming-to-wp-super-cache-new-rest-api-user-friendly-settings-page-and-improvements-to-legacy-file-storage\'>WPTavern: Major Update Coming to WP Super Cache: New REST API, User-Friendly Settings Page, and Improvements to Legacy File Storage</a></li></ul></div>', 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 5, '_edit_last', '1'),
(3, 5, '_edit_lock', '1495977532:1'),
(6, 7, '_edit_last', '1'),
(7, 7, '_edit_lock', '1495977725:1'),
(10, 9, '_edit_last', '1'),
(13, 9, '_edit_lock', '1495977763:1'),
(14, 11, '_edit_last', '1'),
(15, 11, '_edit_lock', '1495977832:1'),
(18, 13, '_edit_last', '1'),
(19, 13, '_edit_lock', '1495978629:1'),
(22, 15, '_edit_last', '1'),
(23, 15, '_edit_lock', '1495975110:1'),
(26, 17, '_edit_last', '1'),
(29, 17, '_edit_lock', '1496302642:1'),
(30, 1, '_wp_trash_meta_status', 'publish'),
(31, 1, '_wp_trash_meta_time', '1495975290'),
(32, 1, '_wp_desired_post_slug', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80'),
(33, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}'),
(34, 15, '_wp_trash_meta_status', 'publish'),
(35, 15, '_wp_trash_meta_time', '1495975303'),
(36, 15, '_wp_desired_post_slug', '%d1%81%d0%bb%d0%be%d0%b6%d0%bd%d1%8b%d0%b9-%d0%bf%d1%80%d0%b5%d0%b4%d0%bc%d0%b5%d1%82-%d0%b4%d0%b5%d1%8f%d1%82%d0%b5%d0%bb%d1%8c%d0%bd%d0%be%d1%81%d1%82%d0%b8-%d0%be%d1%81%d0%bd%d0%be%d0%b2%d0%bd'),
(37, 20, '_wp_attached_file', '2017/05/news-item3.jpg'),
(38, 20, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:360;s:6:"height";i:240;s:4:"file";s:22:"2017/05/news-item3.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"news-item3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"news-item3-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:11:"squareThumb";a:4:{s:4:"file";s:22:"news-item3-292x240.jpg";s:5:"width";i:292;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(39, 5, '_thumbnail_id', '20'),
(44, 21, '_wp_attached_file', '2017/05/news-item2.jpg'),
(45, 21, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:360;s:6:"height";i:240;s:4:"file";s:22:"2017/05/news-item2.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"news-item2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"news-item2-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:11:"squareThumb";a:4:{s:4:"file";s:22:"news-item2-292x240.jpg";s:5:"width";i:292;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(46, 7, '_thumbnail_id', '21'),
(49, 24, '_wp_attached_file', '2017/05/news-item4.jpg'),
(50, 24, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:360;s:6:"height";i:240;s:4:"file";s:22:"2017/05/news-item4.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"news-item4-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"news-item4-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:11:"squareThumb";a:4:{s:4:"file";s:22:"news-item4-292x240.jpg";s:5:"width";i:292;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(51, 9, '_thumbnail_id', '24'),
(56, 26, '_wp_attached_file', '2017/05/news-item1.jpg'),
(57, 26, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:360;s:6:"height";i:240;s:4:"file";s:22:"2017/05/news-item1.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"news-item1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"news-item1-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:11:"squareThumb";a:4:{s:4:"file";s:22:"news-item1-292x240.jpg";s:5:"width";i:292;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(58, 11, '_thumbnail_id', '26'),
(63, 17, '_thumbnail_id', '21'),
(66, 13, '_thumbnail_id', '24'),
(69, 27, '_edit_last', '1'),
(70, 27, '_edit_lock', '1496841280:1'),
(74, 29, '_edit_last', '1'),
(78, 29, '_edit_lock', '1496841282:1'),
(79, 31, '_edit_last', '1'),
(80, 31, '_edit_lock', '1496841302:1'),
(84, 34, '_wp_attached_file', '2017/05/product-item1.jpg'),
(85, 34, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:180;s:6:"height";i:120;s:4:"file";s:25:"2017/05/product-item1.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"product-item1-150x120.jpg";s:5:"width";i:150;s:6:"height";i:120;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(86, 33, '_edit_last', '1'),
(90, 33, '_edit_lock', '1496841312:1'),
(91, 36, '_edit_last', '1'),
(95, 36, '_edit_lock', '1496841313:1'),
(96, 38, '_edit_last', '1'),
(97, 38, '_edit_lock', '1496841314:1'),
(101, 40, '_edit_last', '1'),
(102, 40, '_edit_lock', '1496841316:1'),
(105, 42, '_edit_last', '1'),
(109, 42, '_edit_lock', '1496841322:1'),
(110, 44, '_edit_last', '1'),
(111, 44, '_edit_lock', '1496841325:1'),
(117, 44, 'dfiFeatured', 'a:3:{i:0;s:55:"/2017/05/news-item4-150x150.jpg,/2017/05/news-item4.jpg";i:1;s:55:"/2017/05/news-item3-150x150.jpg,/2017/05/news-item3.jpg";i:2;s:55:"/2017/05/news-item2-150x150.jpg,/2017/05/news-item2.jpg";}'),
(120, 42, 'dfiFeatured', 'a:1:{i:0;s:61:"/2017/05/product-item1-150x120.jpg,/2017/05/product-item1.jpg";}'),
(123, 40, 'dfiFeatured', 'a:1:{i:0;s:61:"/2017/05/product-item1-150x120.jpg,/2017/05/product-item1.jpg";}'),
(126, 36, 'dfiFeatured', 'a:1:{i:0;s:61:"/2017/05/product-item1-150x120.jpg,/2017/05/product-item1.jpg";}'),
(129, 38, 'dfiFeatured', 'a:1:{i:0;s:61:"/2017/05/product-item1-150x120.jpg,/2017/05/product-item1.jpg";}'),
(132, 33, 'dfiFeatured', 'a:1:{i:0;s:61:"/2017/05/product-item1-150x120.jpg,/2017/05/product-item1.jpg";}'),
(137, 31, 'dfiFeatured', 'a:1:{i:0;s:61:"/2017/05/product-item1-150x120.jpg,/2017/05/product-item1.jpg";}'),
(140, 29, 'dfiFeatured', 'a:1:{i:0;s:61:"/2017/05/product-item1-150x120.jpg,/2017/05/product-item1.jpg";}'),
(143, 27, 'dfiFeatured', 'a:1:{i:0;s:61:"/2017/05/product-item1-150x120.jpg,/2017/05/product-item1.jpg";}'),
(144, 46, '_edit_last', '1'),
(145, 46, '_wp_page_template', 'default'),
(146, 46, '_edit_lock', '1496655076:1'),
(147, 44, '_thumbnail_id', '34'),
(150, 42, '_thumbnail_id', '34'),
(153, 40, '_thumbnail_id', '34'),
(156, 38, '_thumbnail_id', '34'),
(159, 36, '_thumbnail_id', '34'),
(162, 33, '_thumbnail_id', '34'),
(167, 31, '_thumbnail_id', '34'),
(170, 27, '_thumbnail_id', '34'),
(173, 48, '_edit_last', '1'),
(174, 48, '_edit_lock', '1496321381:1'),
(177, 50, '_edit_last', '1'),
(178, 50, '_edit_lock', '1496321441:1'),
(183, 52, '_edit_last', '1'),
(186, 52, '_edit_lock', '1496840993:1'),
(187, 54, '_edit_last', '1'),
(190, 54, 'dfiFeatured', 'a:1:{i:0;s:0:"";}'),
(191, 54, '_edit_lock', '1496840992:1'),
(192, 56, '_edit_last', '1'),
(193, 56, '_edit_lock', '1496841329:1'),
(196, 56, 'dfiFeatured', 'a:1:{i:0;s:55:"/2017/05/news-item4-150x150.jpg,/2017/05/news-item4.jpg";}'),
(197, 58, '_edit_last', '1'),
(198, 58, '_edit_lock', '1496841331:1'),
(201, 58, 'dfiFeatured', 'a:1:{i:0;s:55:"/2017/05/news-item3-150x150.jpg,/2017/05/news-item3.jpg";}'),
(202, 61, '_edit_last', '1'),
(203, 61, '_edit_lock', '1496841116:1'),
(206, 61, 'dfiFeatured', 'a:1:{i:0;s:55:"/2017/05/news-item4-150x150.jpg,/2017/05/news-item4.jpg";}'),
(211, 61, '_wp_old_slug', '%d0%bd%d0%b0%d0%bf%d1%80%d1%8f%d0%b6%d0%b5%d0%bd%d0%bd%d1%8b%d0%b9-%d0%bf%d1%80%d0%b5%d0%b4%d0%bc%d0%b5%d1%82-%d0%b4%d0%b5%d1%8f%d1%82%d0%b5%d0%bb%d1%8c%d0%bd%d0%be%d1%81%d1%82%d0%b8-%d0%b3%d0%b8'),
(212, 63, '_edit_last', '1'),
(213, 63, '_edit_lock', '1496841115:1'),
(216, 63, 'dfiFeatured', 'a:1:{i:0;s:55:"/2017/05/news-item4-150x150.jpg,/2017/05/news-item4.jpg";}'),
(219, 63, '_wp_old_slug', '%d0%bd%d0%b0%d0%bf%d1%80%d1%8f%d0%b6%d0%b5%d0%bd%d0%bd%d1%8b%d0%b9-%d0%bf%d1%80%d0%b5%d0%b4%d0%bc%d0%b5%d1%82-%d0%b4%d0%b5%d1%8f%d1%82%d0%b5%d0%bb%d1%8c%d0%bd%d0%be%d1%81%d1%82%d0%b8-%d0%b3%d0%b8'),
(229, 63, '_wp_old_slug', '%d0%bd%d0%b0%d0%bf%d1%80%d1%8f%d0%b6%d0%b5%d0%bd%d0%bd%d1%8b%d0%b9-%d0%bf%d1%80%d0%b5%d0%b4%d0%bc%d0%b5%d1%82-%d0%b4%d0%b5%d1%8f%d1%82%d0%b5%d0%bb%d1%8c%d0%bd%d0%be%d1%81%d1%82%d0%b8-%d0%b3%d0%b8-2'),
(230, 65, '_edit_last', '1'),
(231, 65, '_edit_lock', '1496841117:1'),
(234, 65, 'dfiFeatured', 'a:1:{i:0;s:55:"/2017/05/news-item4-150x150.jpg,/2017/05/news-item4.jpg";}'),
(237, 65, '_wp_old_slug', '%d0%bd%d0%b0%d0%bf%d1%80%d1%8f%d0%b6%d0%b5%d0%bd%d0%bd%d1%8b%d0%b9-%d0%bf%d1%80%d0%b5%d0%b4%d0%bc%d0%b5%d1%82-%d0%b4%d0%b5%d1%8f%d1%82%d0%b5%d0%bb%d1%8c%d0%bd%d0%be%d1%81%d1%82%d0%b8-%d0%b3%d0%b8'),
(240, 65, '_wp_old_slug', '%d0%bd%d0%b0%d0%bf%d1%80%d1%8f%d0%b6%d0%b5%d0%bd%d0%bd%d1%8b%d0%b9-%d0%bf%d1%80%d0%b5%d0%b4%d0%bc%d0%b5%d1%82-%d0%b4%d0%b5%d1%8f%d1%82%d0%b5%d0%bb%d1%8c%d0%bd%d0%be%d1%81%d1%82%d0%b8-%d0%b3%d0%b8-2'),
(247, 65, '_wp_old_slug', '%d0%bd%d0%b0%d0%bf%d1%80%d1%8f%d0%b6%d0%b5%d0%bd%d0%bd%d1%8b%d0%b9-%d0%bf%d1%80%d0%b5%d0%b4%d0%bc%d0%b5%d1%82-%d0%b4%d0%b5%d1%8f%d1%82%d0%b5%d0%bb%d1%8c%d0%bd%d0%be%d1%81%d1%82%d0%b8-%d0%b3%d0%b8-2-2'),
(248, 67, '_edit_last', '1'),
(249, 67, '_edit_lock', '1496841120:1'),
(252, 67, 'dfiFeatured', 'a:1:{i:0;s:55:"/2017/05/news-item4-150x150.jpg,/2017/05/news-item4.jpg";}'),
(255, 67, '_wp_old_slug', '%d0%bd%d0%b0%d0%bf%d1%80%d1%8f%d0%b6%d0%b5%d0%bd%d0%bd%d1%8b%d0%b9-%d0%bf%d1%80%d0%b5%d0%b4%d0%bc%d0%b5%d1%82-%d0%b4%d0%b5%d1%8f%d1%82%d0%b5%d0%bb%d1%8c%d0%bd%d0%be%d1%81%d1%82%d0%b8-%d0%b3%d0%b8'),
(258, 67, '_wp_old_slug', '%d0%bd%d0%b0%d0%bf%d1%80%d1%8f%d0%b6%d0%b5%d0%bd%d0%bd%d1%8b%d0%b9-%d0%bf%d1%80%d0%b5%d0%b4%d0%bc%d0%b5%d1%82-%d0%b4%d0%b5%d1%8f%d1%82%d0%b5%d0%bb%d1%8c%d0%bd%d0%be%d1%81%d1%82%d0%b8-%d0%b3%d0%b8-2'),
(261, 67, '_wp_old_slug', '%d0%bd%d0%b0%d0%bf%d1%80%d1%8f%d0%b6%d0%b5%d0%bd%d0%bd%d1%8b%d0%b9-%d0%bf%d1%80%d0%b5%d0%b4%d0%bc%d0%b5%d1%82-%d0%b4%d0%b5%d1%8f%d1%82%d0%b5%d0%bb%d1%8c%d0%bd%d0%be%d1%81%d1%82%d0%b8-%d0%b3%d0%b8-2-2'),
(265, 67, '_wp_old_slug', '%d0%bd%d0%b0%d0%bf%d1%80%d1%8f%d0%b6%d0%b5%d0%bd%d0%bd%d1%8b%d0%b9-%d0%bf%d1%80%d0%b5%d0%b4%d0%bc%d0%b5%d1%82-%d0%b4%d0%b5%d1%8f%d1%82%d0%b5%d0%bb%d1%8c%d0%bd%d0%be%d1%81%d1%82%d0%b8-%d0%b3%d0%b8-2-3'),
(266, 69, '_edit_last', '1'),
(267, 69, '_edit_lock', '1496841121:1'),
(270, 69, 'dfiFeatured', 'a:1:{i:0;s:55:"/2017/05/news-item4-150x150.jpg,/2017/05/news-item4.jpg";}'),
(273, 69, '_wp_old_slug', '%d0%bd%d0%b0%d0%bf%d1%80%d1%8f%d0%b6%d0%b5%d0%bd%d0%bd%d1%8b%d0%b9-%d0%bf%d1%80%d0%b5%d0%b4%d0%bc%d0%b5%d1%82-%d0%b4%d0%b5%d1%8f%d1%82%d0%b5%d0%bb%d1%8c%d0%bd%d0%be%d1%81%d1%82%d0%b8-%d0%b3%d0%b8'),
(276, 69, '_wp_old_slug', '%d0%bd%d0%b0%d0%bf%d1%80%d1%8f%d0%b6%d0%b5%d0%bd%d0%bd%d1%8b%d0%b9-%d0%bf%d1%80%d0%b5%d0%b4%d0%bc%d0%b5%d1%82-%d0%b4%d0%b5%d1%8f%d1%82%d0%b5%d0%bb%d1%8c%d0%bd%d0%be%d1%81%d1%82%d0%b8-%d0%b3%d0%b8-2'),
(279, 69, '_wp_old_slug', '%d0%bd%d0%b0%d0%bf%d1%80%d1%8f%d0%b6%d0%b5%d0%bd%d0%bd%d1%8b%d0%b9-%d0%bf%d1%80%d0%b5%d0%b4%d0%bc%d0%b5%d1%82-%d0%b4%d0%b5%d1%8f%d1%82%d0%b5%d0%bb%d1%8c%d0%bd%d0%be%d1%81%d1%82%d0%b8-%d0%b3%d0%b8-2-2'),
(282, 69, '_wp_old_slug', '%d0%bd%d0%b0%d0%bf%d1%80%d1%8f%d0%b6%d0%b5%d0%bd%d0%bd%d1%8b%d0%b9-%d0%bf%d1%80%d0%b5%d0%b4%d0%bc%d0%b5%d1%82-%d0%b4%d0%b5%d1%8f%d1%82%d0%b5%d0%bb%d1%8c%d0%bd%d0%be%d1%81%d1%82%d0%b8-%d0%b3%d0%b8-2-3'),
(299, 69, '_wp_old_slug', '%d0%bd%d0%b0%d0%bf%d1%80%d1%8f%d0%b6%d0%b5%d0%bd%d0%bd%d1%8b%d0%b9-%d0%bf%d1%80%d0%b5%d0%b4%d0%bc%d0%b5%d1%82-%d0%b4%d0%b5%d1%8f%d1%82%d0%b5%d0%bb%d1%8c%d0%bd%d0%be%d1%81%d1%82%d0%b8-%d0%b3%d0%b8-2-4'),
(300, 71, '_edit_last', '1'),
(301, 71, '_edit_lock', '1496840951:1'),
(304, 71, 'dfiFeatured', 'a:1:{i:0;s:55:"/2017/05/news-item3-150x150.jpg,/2017/05/news-item3.jpg";}'),
(309, 71, '_wp_old_slug', '%d0%bf%d0%be%d1%87%d0%b5%d0%bc%d1%83-%d1%82%d1%80%d0%be%d0%b3%d0%b0%d1%82%d0%b5%d0%bb%d1%8c%d0%bd%d0%be-%d0%bd%d0%b0%d0%b8%d0%b2%d0%bd%d0%be-%d0%b8%d1%81%d1%87%d0%b8%d1%81%d0%bb%d0%b5%d0%bd%d0%b8'),
(310, 73, '_edit_last', '1'),
(311, 73, '_edit_lock', '1496840951:1'),
(314, 73, 'dfiFeatured', 'a:1:{i:0;s:55:"/2017/05/news-item3-150x150.jpg,/2017/05/news-item3.jpg";}'),
(317, 73, '_wp_old_slug', '%d0%bf%d0%be%d1%87%d0%b5%d0%bc%d1%83-%d1%82%d1%80%d0%be%d0%b3%d0%b0%d1%82%d0%b5%d0%bb%d1%8c%d0%bd%d0%be-%d0%bd%d0%b0%d0%b8%d0%b2%d0%bd%d0%be-%d0%b8%d1%81%d1%87%d0%b8%d1%81%d0%bb%d0%b5%d0%bd%d0%b8'),
(325, 74, '_edit_last', '1'),
(326, 74, '_edit_lock', '1496840950:1'),
(329, 74, 'dfiFeatured', 'a:1:{i:0;s:55:"/2017/05/news-item3-150x150.jpg,/2017/05/news-item3.jpg";}'),
(332, 74, '_wp_old_slug', '%d0%bf%d0%be%d1%87%d0%b5%d0%bc%d1%83-%d1%82%d1%80%d0%be%d0%b3%d0%b0%d1%82%d0%b5%d0%bb%d1%8c%d0%bd%d0%be-%d0%bd%d0%b0%d0%b8%d0%b2%d0%bd%d0%be-%d0%b8%d1%81%d1%87%d0%b8%d1%81%d0%bb%d0%b5%d0%bd%d0%b8'),
(342, 73, '_wp_old_slug', '%d0%bf%d0%be%d1%87%d0%b5%d0%bc%d1%83-%d1%82%d1%80%d0%be%d0%b3%d0%b0%d1%82%d0%b5%d0%bb%d1%8c%d0%bd%d0%be-%d0%bd%d0%b0%d0%b8%d0%b2%d0%bd%d0%be-%d0%b8%d1%81%d1%87%d0%b8%d1%81%d0%bb%d0%b5%d0%bd%d0%b8-2'),
(343, 75, '_edit_last', '1'),
(344, 75, '_edit_lock', '1496840971:1'),
(347, 75, 'dfiFeatured', 'a:1:{i:0;s:55:"/2017/05/news-item3-150x150.jpg,/2017/05/news-item3.jpg";}'),
(350, 75, '_wp_old_slug', '%d0%bf%d0%be%d1%87%d0%b5%d0%bc%d1%83-%d1%82%d1%80%d0%be%d0%b3%d0%b0%d1%82%d0%b5%d0%bb%d1%8c%d0%bd%d0%be-%d0%bd%d0%b0%d0%b8%d0%b2%d0%bd%d0%be-%d0%b8%d1%81%d1%87%d0%b8%d1%81%d0%bb%d0%b5%d0%bd%d0%b8'),
(360, 74, '_wp_old_slug', '%d0%bf%d0%be%d1%87%d0%b5%d0%bc%d1%83-%d1%82%d1%80%d0%be%d0%b3%d0%b0%d1%82%d0%b5%d0%bb%d1%8c%d0%bd%d0%be-%d0%bd%d0%b0%d0%b8%d0%b2%d0%bd%d0%be-%d0%b8%d1%81%d1%87%d0%b8%d1%81%d0%bb%d0%b5%d0%bd%d0%b8-2'),
(363, 75, '_wp_old_slug', '%d0%bf%d0%be%d1%87%d0%b5%d0%bc%d1%83-%d1%82%d1%80%d0%be%d0%b3%d0%b0%d1%82%d0%b5%d0%bb%d1%8c%d0%bd%d0%be-%d0%bd%d0%b0%d0%b8%d0%b2%d0%bd%d0%be-%d0%b8%d1%81%d1%87%d0%b8%d1%81%d0%bb%d0%b5%d0%bd%d0%b8-2'),
(364, 79, '_edit_last', '1'),
(365, 79, '_edit_lock', '1496840904:1'),
(368, 79, 'dfiFeatured', 'a:3:{i:0;s:55:"/2017/05/news-item3-150x150.jpg,/2017/05/news-item3.jpg";i:1;s:55:"/2017/05/news-item2-150x150.jpg,/2017/05/news-item2.jpg";i:2;s:41:"/2017/06/doc-150x150.jpg,/2017/06/doc.jpg";}'),
(371, 79, '_wp_old_slug', '%d0%bf%d0%be%d1%87%d0%b5%d0%bc%d1%83-%d1%82%d1%80%d0%be%d0%b3%d0%b0%d1%82%d0%b5%d0%bb%d1%8c%d0%bd%d0%be-%d0%bd%d0%b0%d0%b8%d0%b2%d0%bd%d0%be-%d0%b8%d1%81%d1%87%d0%b8%d1%81%d0%bb%d0%b5%d0%bd%d0%b8'),
(381, 79, '_wp_old_slug', '%d0%bf%d0%be%d1%87%d0%b5%d0%bc%d1%83-%d1%82%d1%80%d0%be%d0%b3%d0%b0%d1%82%d0%b5%d0%bb%d1%8c%d0%bd%d0%be-%d0%bd%d0%b0%d0%b8%d0%b2%d0%bd%d0%be-%d0%b8%d1%81%d1%87%d0%b8%d1%81%d0%bb%d0%b5%d0%bd%d0%b8-2'),
(382, 82, '_edit_last', '1'),
(383, 82, '_edit_lock', '1496397827:1'),
(384, 83, '_wp_attached_file', '2017/06/doc.jpg'),
(385, 83, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:165;s:6:"height";i:229;s:4:"file";s:15:"2017/06/doc.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"doc-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(386, 82, '_thumbnail_id', '83'),
(389, 82, 'dfiFeatured', 'a:1:{i:0;s:0:"";}'),
(390, 85, '_edit_last', '1'),
(391, 85, '_edit_lock', '1496397333:1'),
(395, 85, 'dfiFeatured', 'a:1:{i:0;s:41:"/2017/06/doc-150x150.jpg,/2017/06/doc.jpg";}'),
(396, 87, '_edit_last', '1'),
(397, 87, '_edit_lock', '1496397391:1'),
(401, 87, 'dfiFeatured', 'a:1:{i:0;s:41:"/2017/06/doc-150x150.jpg,/2017/06/doc.jpg";}'),
(402, 89, '_edit_last', '1'),
(403, 89, '_edit_lock', '1496397608:1'),
(407, 89, 'dfiFeatured', 'a:1:{i:0;s:41:"/2017/06/doc-150x150.jpg,/2017/06/doc.jpg";}'),
(412, 91, '_edit_last', '1'),
(413, 91, '_edit_lock', '1496397556:1'),
(416, 91, 'dfiFeatured', 'a:1:{i:0;s:41:"/2017/06/doc-150x150.jpg,/2017/06/doc.jpg";}'),
(417, 93, '_edit_last', '1'),
(418, 93, '_edit_lock', '1496333134:1'),
(421, 93, 'dfiFeatured', 'a:1:{i:0;s:0:"";}'),
(422, 93, '_wp_trash_meta_status', 'publish'),
(423, 93, '_wp_trash_meta_time', '1496344488'),
(424, 93, '_wp_desired_post_slug', '%d0%b4%d0%be%d0%ba%d1%83%d0%bc%d0%b5%d0%bd%d1%821-2'),
(428, 95, '_edit_last', '1'),
(429, 95, '_edit_lock', '1496397580:1'),
(432, 95, 'dfiFeatured', 'a:1:{i:0;s:0:"";}'),
(433, 95, '_thumbnail_id', '83'),
(436, 98, '_edit_last', '1'),
(437, 98, '_edit_lock', '1496354477:1'),
(438, 98, '_thumbnail_id', '83'),
(441, 98, 'dfiFeatured', 'a:1:{i:0;s:0:"";}'),
(442, 100, '_edit_last', '1'),
(443, 100, '_edit_lock', '1496354575:1'),
(444, 100, '_thumbnail_id', '83'),
(447, 100, 'dfiFeatured', 'a:1:{i:0;s:0:"";}'),
(448, 100, '_wp_trash_meta_status', 'publish'),
(449, 100, '_wp_trash_meta_time', '1496354733'),
(450, 100, '_wp_desired_post_slug', '%d0%b4%d0%be%d0%ba%d1%83%d0%bc%d0%b5%d0%bd%d1%827'),
(451, 98, '_wp_trash_meta_status', 'publish'),
(452, 98, '_wp_trash_meta_time', '1496354735'),
(453, 98, '_wp_desired_post_slug', '%d0%b4%d0%be%d0%ba%d1%83%d0%bc%d0%b5%d0%bd%d1%826'),
(454, 103, '_edit_last', '1'),
(455, 103, '_wp_page_template', 'template-contacts.php'),
(456, 103, 'dfiFeatured', 'a:1:{i:0;s:0:"";}'),
(457, 103, '_edit_lock', '1496654864:1'),
(478, 95, '_wp_trash_meta_status', 'publish'),
(479, 95, '_wp_trash_meta_time', '1496398022'),
(480, 95, '_wp_desired_post_slug', '%d0%bf%d1%80%d0%b8%d0%bb%d0%be%d0%b6%d0%b5%d0%bd%d0%b8%d0%b51'),
(481, 91, '_wp_trash_meta_status', 'publish'),
(482, 91, '_wp_trash_meta_time', '1496398024'),
(483, 91, '_wp_desired_post_slug', '%d0%b4%d0%be%d0%ba%d1%83%d0%bc%d0%b5%d0%bd%d1%825'),
(484, 89, '_wp_trash_meta_status', 'publish'),
(485, 89, '_wp_trash_meta_time', '1496398026'),
(486, 89, '_wp_desired_post_slug', '%d0%b4%d0%be%d0%ba%d1%83%d0%bc%d0%b5%d0%bd%d1%824'),
(487, 87, '_wp_trash_meta_status', 'publish'),
(488, 87, '_wp_trash_meta_time', '1496398028'),
(489, 87, '_wp_desired_post_slug', '%d0%b4%d0%be%d0%ba%d1%83%d0%bc%d0%b5%d0%bd%d1%823'),
(490, 85, '_wp_trash_meta_status', 'publish'),
(491, 85, '_wp_trash_meta_time', '1496398030'),
(492, 85, '_wp_desired_post_slug', '%d0%b4%d0%be%d0%ba%d1%83%d0%bc%d0%b5%d0%bd%d1%822'),
(493, 82, '_wp_trash_meta_status', 'publish'),
(494, 82, '_wp_trash_meta_time', '1496398032'),
(495, 82, '_wp_desired_post_slug', '%d0%b4%d0%be%d0%ba%d1%83%d0%bc%d0%b5%d0%bd%d1%821'),
(496, 107, '_edit_last', '1'),
(497, 107, '_edit_lock', '1496732747:1'),
(498, 107, '_thumbnail_id', '83'),
(501, 107, 'dfiFeatured', 'a:4:{i:0;s:41:"/2017/06/doc-150x150.jpg,/2017/06/doc.jpg";i:1;s:41:"/2017/06/doc-150x150.jpg,/2017/06/doc.jpg";i:2;s:41:"/2017/06/doc-150x150.jpg,/2017/06/doc.jpg";i:3;s:41:"/2017/06/doc-150x150.jpg,/2017/06/doc.jpg";}'),
(502, 109, '_edit_last', '1'),
(503, 109, 'field_59313cb117848', 'a:10:{s:3:"key";s:19:"field_59313cb117848";s:5:"label";s:27:"Загрузка файла";s:4:"name";s:27:"загрузка_файла";s:4:"type";s:4:"file";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:6:"object";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(505, 109, 'position', 'normal'),
(506, 109, 'layout', 'no_box'),
(507, 109, 'hide_on_screen', ''),
(508, 109, 'dfiFeatured', 'a:1:{i:0;s:0:"";}'),
(509, 109, '_edit_lock', '1496421738:1'),
(510, 109, 'rule', 'a:5:{s:5:"param";s:13:"post_category";s:8:"operator";s:2:"==";s:5:"value";s:1:"8";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(511, 106, '_edit_last', '1'),
(512, 106, 'field_59313b7347533', 'a:8:{s:3:"key";s:19:"field_59313b7347533";s:5:"label";s:27:"Контакты офиса";s:4:"name";s:0:"";s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(513, 106, 'field_59313bab47534', 'a:8:{s:3:"key";s:19:"field_59313bab47534";s:5:"label";s:29:"Контакты склада";s:4:"name";s:0:"";s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:3;}'),
(515, 106, 'position', 'normal'),
(516, 106, 'layout', 'no_box'),
(517, 106, 'hide_on_screen', ''),
(518, 106, 'dfiFeatured', 'a:1:{i:0;s:0:"";}'),
(519, 106, '_edit_lock', '1496401803:1'),
(520, 106, 'field_593141f58683f', 'a:13:{s:3:"key";s:19:"field_593141f58683f";s:5:"label";s:50:"Офис контактная информация";s:4:"name";s:50:"офис_контактная_информация";s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:10:"formatting";s:4:"html";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(521, 106, 'field_5931422686840', 'a:13:{s:3:"key";s:19:"field_5931422686840";s:5:"label";s:34:"Офис как добраться";s:4:"name";s:34:"офис_как_добраться";s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:10:"formatting";s:4:"html";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}'),
(522, 106, 'field_593142e586841', 'a:13:{s:3:"key";s:19:"field_593142e586841";s:5:"label";s:52:"Склад контактная информация";s:4:"name";s:52:"склад_контактная_информация";s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:10:"formatting";s:4:"html";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:4;}'),
(523, 106, 'field_593142f586842', 'a:13:{s:3:"key";s:19:"field_593142f586842";s:5:"label";s:36:"Склад как добраться";s:4:"name";s:36:"склад_как_добраться";s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:10:"formatting";s:4:"html";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:5;}'),
(525, 110, 'офис_контактная_информация', '<span>Контакная информация</span>\r\n<p>Фактический адрес: 121108, г.Москва, ул.Ивана Франко, д.4, корп.1.</p>\r\n<p>Юридический адрес: 121108, г.Москва, ул.Ивана Франко, д.4, корп.1.</p>\r\n<p>+7 (499) 685-10-26</p>\r\n<a href="#">info@n-h-s.ru</a>'),
(526, 110, '_офис_контактная_информация', 'field_593141f58683f'),
(527, 110, 'офис_как_добраться', '<span>КАК ДОБРАТЬСЯ ДО ОФИСА</span>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam congue justo sed fermentum dictum. Nullam porta vel felis nec auctor. Duis luctus id metus in aliquet. Nullam diam est, egestas sit amet massa a, accumsan maximus leo. Sed vestibulum, dolor porttitor finibus pulvinar, odio neque pellentesque nunc, interdum malesuada arcu metus varius neque. Nullam aliquam velit massa, et placerat arcu gravida.</p>'),
(528, 110, '_офис_как_добраться', 'field_5931422686840'),
(529, 110, 'склад_контактная_информация', '<span>Контакная информация</span>\r\n<p>Московская обл., г.Лыткарино, ул.Колхозная, д.4.</p>\r\n<a href="#">sklad@n-h-s.ru</a>'),
(530, 110, '_склад_контактная_информация', 'field_593142e586841'),
(531, 110, 'склад_как_добраться', '<span>КАК ДОБРАТЬСЯ ДО склада</span>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam congue justo sed fermentum dictum. Nullam porta vel felis nec auctor. Duis luctus id metus in aliquet. Nullam diam est, egestas sit amet massa a, accumsan maximus leo. Sed vestibulum, dolor porttitor finibus pulvinar, odio neque pellentesque nunc, interdum malesuada arcu metus varius neque. Nullam aliquam velit massa, et placerat arcu gravida.</p>'),
(532, 110, '_склад_как_добраться', 'field_593142f586842'),
(533, 103, 'офис_контактная_информация', '<p>Фактический адрес: 121108, г.Москва, ул.Ивана Франко, д.4, корп.1.</p>\r\n<p>Юридический адрес: 121108, г.Москва, ул.Ивана Франко, д.4, корп.1.</p>\r\n<p>+7 (499) 685-10-26</p>\r\n<a href="#">info@n-h-s.ru</a>'),
(534, 103, '_офис_контактная_информация', 'field_593141f58683f'),
(535, 103, 'офис_как_добраться', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam congue justo sed fermentum dictum. Nullam porta vel felis nec auctor. Duis luctus id metus in aliquet. Nullam diam est, egestas sit amet massa a, accumsan maximus leo. Sed vestibulum, dolor porttitor finibus pulvinar, odio neque pellentesque nunc, interdum malesuada arcu metus varius neque. Nullam aliquam velit massa, et placerat arcu gravida.</p>'),
(536, 103, '_офис_как_добраться', 'field_5931422686840'),
(537, 103, 'склад_контактная_информация', '<p>Московская обл., г.Лыткарино, ул.Колхозная, д.4.</p>\r\n<a href="#">sklad@n-h-s.ru</a>'),
(538, 103, '_склад_контактная_информация', 'field_593142e586841'),
(539, 103, 'склад_как_добраться', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam congue justo sed fermentum dictum. Nullam porta vel felis nec auctor. Duis luctus id metus in aliquet. Nullam diam est, egestas sit amet massa a, accumsan maximus leo. Sed vestibulum, dolor porttitor finibus pulvinar, odio neque pellentesque nunc, interdum malesuada arcu metus varius neque. Nullam aliquam velit massa, et placerat arcu gravida.</p>'),
(540, 103, '_склад_как_добраться', 'field_593142f586842'),
(541, 111, 'офис_контактная_информация', '<p>Фактический адрес: 121108, г.Москва, ул.Ивана Франко, д.4, корп.1.</p>\r\n<p>Юридический адрес: 121108, г.Москва, ул.Ивана Франко, д.4, корп.1.</p>\r\n<p>+7 (499) 685-10-26</p>\r\n<a href="#">info@n-h-s.ru</a>'),
(542, 111, '_офис_контактная_информация', 'field_593141f58683f'),
(543, 111, 'офис_как_добраться', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam congue justo sed fermentum dictum. Nullam porta vel felis nec auctor. Duis luctus id metus in aliquet. Nullam diam est, egestas sit amet massa a, accumsan maximus leo. Sed vestibulum, dolor porttitor finibus pulvinar, odio neque pellentesque nunc, interdum malesuada arcu metus varius neque. Nullam aliquam velit massa, et placerat arcu gravida.</p>'),
(544, 111, '_офис_как_добраться', 'field_5931422686840'),
(545, 111, 'склад_контактная_информация', '<p>Московская обл., г.Лыткарино, ул.Колхозная, д.4.</p>\r\n<a href="#">sklad@n-h-s.ru</a>'),
(546, 111, '_склад_контактная_информация', 'field_593142e586841'),
(547, 111, 'склад_как_добраться', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam congue justo sed fermentum dictum. Nullam porta vel felis nec auctor. Duis luctus id metus in aliquet. Nullam diam est, egestas sit amet massa a, accumsan maximus leo. Sed vestibulum, dolor porttitor finibus pulvinar, odio neque pellentesque nunc, interdum malesuada arcu metus varius neque. Nullam aliquam velit massa, et placerat arcu gravida.</p>'),
(548, 111, '_склад_как_добраться', 'field_593142f586842'),
(549, 106, 'rule', 'a:5:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:3:"103";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(550, 112, '_edit_last', '1'),
(551, 112, '_edit_lock', '1496732670:1'),
(552, 112, '_thumbnail_id', '83'),
(555, 113, 'загрузка_файла', ''),
(556, 113, '_загрузка_файла', 'field_59313cb117848'),
(557, 112, 'dfiFeatured', 'a:1:{i:0;s:0:"";}'),
(558, 112, 'загрузка_файла', '83'),
(559, 112, '_загрузка_файла', 'field_59313cb117848'),
(562, 114, 'загрузка_файла', '83'),
(563, 114, '_загрузка_файла', 'field_59313cb117848'),
(564, 107, 'загрузка_файла', '83'),
(565, 107, '_загрузка_файла', 'field_59313cb117848'),
(568, 115, 'загрузка_файла', '83'),
(569, 115, '_загрузка_файла', 'field_59313cb117848'),
(570, 116, '_menu_item_type', 'custom'),
(571, 116, '_menu_item_menu_item_parent', '0'),
(572, 116, '_menu_item_object_id', '116'),
(573, 116, '_menu_item_object', 'custom'),
(574, 116, '_menu_item_target', ''),
(575, 116, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(576, 116, '_menu_item_xfn', ''),
(577, 116, '_menu_item_url', 'http://neftehim2.loc/'),
(588, 118, '_menu_item_type', 'post_type'),
(589, 118, '_menu_item_menu_item_parent', '0'),
(590, 118, '_menu_item_object_id', '103'),
(591, 118, '_menu_item_object', 'page'),
(592, 118, '_menu_item_target', ''),
(593, 118, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(594, 118, '_menu_item_xfn', ''),
(595, 118, '_menu_item_url', ''),
(597, 119, '_menu_item_type', 'taxonomy'),
(598, 119, '_menu_item_menu_item_parent', '0'),
(599, 119, '_menu_item_object_id', '4'),
(600, 119, '_menu_item_object', 'category'),
(601, 119, '_menu_item_target', ''),
(602, 119, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(603, 119, '_menu_item_xfn', ''),
(604, 119, '_menu_item_url', ''),
(606, 120, '_menu_item_type', 'taxonomy'),
(607, 120, '_menu_item_menu_item_parent', '0'),
(608, 120, '_menu_item_object_id', '2'),
(609, 120, '_menu_item_object', 'category'),
(610, 120, '_menu_item_target', ''),
(611, 120, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(612, 120, '_menu_item_xfn', ''),
(613, 120, '_menu_item_url', ''),
(615, 5, '_wp_old_slug', '%d1%81%d0%b5%d0%bd%d1%81%d0%b8%d0%b1%d0%b5%d0%bb%d1%8c%d0%bd%d1%8b%d0%b9-%d0%b7%d0%b0%d0%ba%d0%be%d0%bd-%d0%b2%d0%bd%d0%b5%d1%88%d0%bd%d0%b5%d0%b3%d0%be-%d0%bc%d0%b8%d1%80%d0%b0-%d0%b2-xxi-%d0%b2'),
(616, 7, '_wp_old_slug', '%d0%b0%d0%bd%d1%82%d1%80%d0%be%d0%bf%d0%be%d1%81%d0%be%d1%86%d0%b8%d0%be%d0%bb%d0%be%d0%b3%d0%b8%d1%8f-%d0%ba%d0%b0%d0%ba-%d0%b0%d0%b4%d0%b0%d0%bf%d1%82%d0%b0%d1%86%d0%b8%d1%8f'),
(617, 9, '_wp_old_slug', '%d0%b5%d1%81%d1%82%d0%b5%d1%81%d1%82%d0%b2%d0%b5%d0%bd%d0%bd%d1%8b%d0%b9-%d0%b1%d0%b0%d0%b1%d1%83%d0%b2%d0%b8%d0%b7%d0%bc-%d0%bf%d1%80%d0%b5%d0%b4%d0%bf%d0%be%d1%81%d1%8b%d0%bb%d0%ba%d0%b8-%d0%b8'),
(618, 11, '_wp_old_slug', '%d0%bd%d0%b0%d0%bf%d1%80%d1%8f%d0%b6%d0%b5%d0%bd%d0%bd%d1%8b%d0%b9-%d0%b4%d0%b5%d0%b4%d1%83%d0%ba%d1%82%d0%b8%d0%b2%d0%bd%d1%8b%d0%b9-%d0%bc%d0%b5%d1%82%d0%be%d0%b4-%d0%b3%d0%b8%d0%bf%d0%be%d1%82'),
(619, 13, '_wp_old_slug', '%d1%82%d1%80%d0%b0%d0%bd%d1%81%d1%86%d0%b5%d0%bd%d0%b4%d0%b5%d0%bd%d1%82%d0%b0%d0%bb%d1%8c%d0%bd%d1%8b%d0%b9-%d0%ba%d0%be%d0%bd%d1%84%d0%bb%d0%b8%d0%ba%d1%82-%d0%b3%d0%bb%d0%b0%d0%b7%d0%b0%d0%bc%d0%b8'),
(620, 17, '_wp_old_slug', '%d0%bf%d1%80%d0%b8%d0%bc%d0%b8%d1%82%d0%b8%d0%b2%d0%bd%d1%8b%d0%b9-%d0%ba%d0%be%d0%bd%d1%84%d0%bb%d0%b8%d0%ba%d1%82-%d0%b3%d0%bb%d0%b0%d0%b7%d0%b0%d0%bc%d0%b8-%d1%81%d0%be%d0%b2%d1%80%d0%b5%d0%bc'),
(621, 27, '_wp_old_slug', '%d0%bd%d0%b5%d0%be%d0%b4%d0%bd%d0%be%d0%b7%d0%bd%d0%b0%d1%87%d0%bd%d1%8b%d0%b9-%d0%b7%d0%bd%d0%b0%d0%ba-%d0%b7%d0%bd%d0%b0%d0%ba-%d0%b8%d0%bb%d0%b8-%d0%b8%d1%81%d1%87%d0%b8%d1%81%d0%bb%d0%b5%d0%bd'),
(622, 29, '_wp_old_slug', '%d0%bf%d0%be%d1%87%d0%b5%d0%bc%d1%83-%d0%b8%d0%bb%d0%bb%d1%8e%d0%b7%d0%be%d1%80%d0%bd%d0%b0-%d0%b2%d0%b5%d1%89%d1%8c-%d0%b2-%d1%81%d0%b5%d0%b1%d0%b5'),
(623, 31, '_wp_old_slug', '%d0%bd%d0%b5%d0%bf%d1%80%d0%b5%d0%b4%d0%b2%d0%b8%d0%b4%d0%b5%d0%bd%d0%bd%d1%8b%d0%b9-%d0%bf%d1%80%d0%b8%d0%bd%d1%86%d0%b8%d0%bf-%d0%b2%d0%be%d1%81%d0%bf%d1%80%d0%b8%d1%8f%d1%82%d0%b8%d1%8f-%d0%b2-xxi'),
(624, 33, '_wp_old_slug', '%d0%b4%d0%b5%d0%b4%d1%83%d0%ba%d1%82%d0%b8%d0%b2%d0%bd%d1%8b%d0%b9-%d0%bc%d0%b5%d1%82%d0%be%d0%b4-%d0%ba%d0%b0%d0%ba-%d0%b7%d0%b0%d0%ba%d0%be%d0%bd-%d0%b2%d0%bd%d0%b5%d1%88%d0%bd%d0%b5%d0%b3%d0%be'),
(625, 36, '_wp_old_slug', '%d1%8f%d0%b7%d1%8b%d0%ba-%d0%be%d0%b1%d1%80%d0%b0%d0%b7%d0%be%d0%b2-%d0%ba%d0%b0%d0%ba-%d0%be%d1%89%d1%83%d1%89%d0%b5%d0%bd%d0%b8%d0%b5-%d0%bc%d0%b8%d1%80%d0%b0'),
(626, 38, '_wp_old_slug', '%d0%b8%d0%bd%d1%82%d0%b5%d0%bb%d0%bb%d0%b8%d0%b3%d0%b8%d0%b1%d0%b5%d0%bb%d1%8c%d0%bd%d1%8b%d0%b9-%d0%b4%d1%83%d0%b0%d0%bb%d0%b8%d0%b7%d0%bc-%d0%b0%d0%ba%d1%82%d1%83%d0%b0%d0%bb%d1%8c%d0%bd'),
(627, 40, '_wp_old_slug', '%d1%81%d0%b5%d0%bd%d1%81%d0%b8%d0%b1%d0%b5%d0%bb%d1%8c%d0%bd%d1%8b%d0%b9-%d0%b7%d0%b0%d0%ba%d0%be%d0%bd-%d0%b8%d1%81%d0%ba%d0%bb%d1%8e%d1%87%d1%91%d0%bd%d0%bd%d0%be%d0%b3%d0%be-%d1%82%d1%80%d0%b5'),
(628, 42, '_wp_old_slug', '%d0%be%d0%bd%d1%82%d0%be%d0%bb%d0%be%d0%b3%d0%b8%d1%87%d0%b5%d1%81%d0%ba%d0%b8%d0%b9-%d0%b3%d0%b5%d0%bd%d0%b8%d0%b9-%d0%bf%d1%80%d0%b5%d0%b4%d0%bf%d0%be%d1%81%d1%8b%d0%bb%d0%ba%d0%b8-%d0%b8-%d1%80'),
(629, 44, '_wp_old_slug', '%d1%82%d0%b8%d0%bf%d0%b8%d1%87%d0%bd%d1%8b%d0%b9-%d0%ba%d0%b0%d1%82%d0%b0%d1%80%d1%81%d0%b8%d1%81-%d0%b2-xxi-%d0%b2%d0%b5%d0%ba%d0%b5'),
(630, 46, '_wp_old_slug', '%d0%bd%d0%b0%d0%bf%d1%80%d0%b0%d0%b2%d0%bb%d0%b5%d0%bd%d0%b8%d1%8f'),
(631, 48, '_wp_old_slug', '%d1%85%d1%80%d0%b0%d0%bd%d0%b5%d0%bd%d0%b8%d0%b5-%d0%bd%d0%b5%d1%84%d1%82%d0%b5%d0%bf%d1%80%d0%be%d0%b4%d1%83%d0%ba%d1%82%d0%be%d0%b2'),
(632, 50, '_wp_old_slug', '%d0%b4%d0%be%d1%81%d1%82%d0%b0%d0%b2%d0%ba%d0%b0-%d0%bd%d0%b5%d1%84%d1%82%d0%b5%d0%bf%d1%80%d0%be%d0%b4%d1%83%d0%ba%d1%82%d0%be%d0%b2'),
(633, 52, '_wp_old_slug', '%d1%84%d0%b0%d1%81%d0%be%d0%b2%d0%ba%d0%b0-%d0%bd%d0%b5%d1%84%d1%82%d0%b5%d0%bf%d1%80%d0%be%d0%b4%d1%83%d0%ba%d1%82%d0%be%d0%b2'),
(634, 54, '_wp_old_slug', '%d1%80%d0%b5%d0%b0%d0%bb%d0%b8%d0%b7%d0%b0%d1%86%d0%b8%d1%8f-%d0%bd%d0%b5%d1%84%d1%82%d0%b5%d0%bf%d1%80%d0%be%d0%b4%d1%83%d0%ba%d1%82%d0%be%d0%b2'),
(635, 56, '_wp_old_slug', '%d0%bd%d0%b0%d0%bf%d1%80%d1%8f%d0%b6%d0%b5%d0%bd%d0%bd%d1%8b%d0%b9-%d0%bf%d1%80%d0%b5%d0%b4%d0%bc%d0%b5%d1%82-%d0%b4%d0%b5%d1%8f%d1%82%d0%b5%d0%bb%d1%8c%d0%bd%d0%be%d1%81%d1%82%d0%b8-%d0%b3%d0%b8'),
(636, 58, '_wp_old_slug', '%d0%bf%d0%be%d1%87%d0%b5%d0%bc%d1%83-%d1%82%d1%80%d0%be%d0%b3%d0%b0%d1%82%d0%b5%d0%bb%d1%8c%d0%bd%d0%be-%d0%bd%d0%b0%d0%b8%d0%b2%d0%bd%d0%be-%d0%b8%d1%81%d1%87%d0%b8%d1%81%d0%bb%d0%b5%d0%bd%d0%b8'),
(637, 61, '_wp_old_slug', '%d0%bd%d0%b0%d0%bf%d1%80%d1%8f%d0%b6%d0%b5%d0%bd%d0%bd%d1%8b%d0%b9-%d0%bf%d1%80%d0%b5%d0%b4%d0%bc%d0%b5%d1%82-%d0%b4%d0%b5%d1%8f%d1%82%d0%b5%d0%bb%d1%8c%d0%bd%d0%be%d1%81%d1%82%d0%b8-%d0%b3%d0%b8-2'),
(638, 63, '_wp_old_slug', '%d0%bd%d0%b0%d0%bf%d1%80%d1%8f%d0%b6%d0%b5%d0%bd%d0%bd%d1%8b%d0%b9-%d0%bf%d1%80%d0%b5%d0%b4%d0%bc%d0%b5%d1%82-%d0%b4%d0%b5%d1%8f%d1%82%d0%b5%d0%bb%d1%8c%d0%bd%d0%be%d1%81%d1%82%d0%b8-%d0%b3%d0%b8-2-2'),
(639, 65, '_wp_old_slug', '%d0%bd%d0%b0%d0%bf%d1%80%d1%8f%d0%b6%d0%b5%d0%bd%d0%bd%d1%8b%d0%b9-%d0%bf%d1%80%d0%b5%d0%b4%d0%bc%d0%b5%d1%82-%d0%b4%d0%b5%d1%8f%d1%82%d0%b5%d0%bb%d1%8c%d0%bd%d0%be%d1%81%d1%82%d0%b8-%d0%b3%d0%b8-2-3'),
(640, 67, '_wp_old_slug', '%d0%bd%d0%b0%d0%bf%d1%80%d1%8f%d0%b6%d0%b5%d0%bd%d0%bd%d1%8b%d0%b9-%d0%bf%d1%80%d0%b5%d0%b4%d0%bc%d0%b5%d1%82-%d0%b4%d0%b5%d1%8f%d1%82%d0%b5%d0%bb%d1%8c%d0%bd%d0%be%d1%81%d1%82%d0%b8-%d0%b3%d0%b8-2-4'),
(641, 69, '_wp_old_slug', '%d0%bd%d0%b0%d0%bf%d1%80%d1%8f%d0%b6%d0%b5%d0%bd%d0%bd%d1%8b%d0%b9-%d0%bf%d1%80%d0%b5%d0%b4%d0%bc%d0%b5%d1%82-%d0%b4%d0%b5%d1%8f%d1%82%d0%b5%d0%bb%d1%8c%d0%bd%d0%be%d1%81%d1%82%d0%b8-%d0%b3%d0%b8-2-5'),
(642, 71, '_wp_old_slug', '%d0%bf%d0%be%d1%87%d0%b5%d0%bc%d1%83-%d1%82%d1%80%d0%be%d0%b3%d0%b0%d1%82%d0%b5%d0%bb%d1%8c%d0%bd%d0%be-%d0%bd%d0%b0%d0%b8%d0%b2%d0%bd%d0%be-%d0%b8%d1%81%d1%87%d0%b8%d1%81%d0%bb%d0%b5%d0%bd%d0%b8-2'),
(643, 73, '_wp_old_slug', '%d0%bf%d0%be%d1%87%d0%b5%d0%bc%d1%83-%d1%82%d1%80%d0%be%d0%b3%d0%b0%d1%82%d0%b5%d0%bb%d1%8c%d0%bd%d0%be-%d0%bd%d0%b0%d0%b8%d0%b2%d0%bd%d0%be-%d0%b8%d1%81%d1%87%d0%b8%d1%81%d0%bb%d0%b5%d0%bd%d0%b8-2-2'),
(644, 74, '_wp_old_slug', '%d0%bf%d0%be%d1%87%d0%b5%d0%bc%d1%83-%d1%82%d1%80%d0%be%d0%b3%d0%b0%d1%82%d0%b5%d0%bb%d1%8c%d0%bd%d0%be-%d0%bd%d0%b0%d0%b8%d0%b2%d0%bd%d0%be-%d0%b8%d1%81%d1%87%d0%b8%d1%81%d0%bb%d0%b5%d0%bd%d0%b8-2-3'),
(645, 75, '_wp_old_slug', '%d0%bf%d0%be%d1%87%d0%b5%d0%bc%d1%83-%d1%82%d1%80%d0%be%d0%b3%d0%b0%d1%82%d0%b5%d0%bb%d1%8c%d0%bd%d0%be-%d0%bd%d0%b0%d0%b8%d0%b2%d0%bd%d0%be-%d0%b8%d1%81%d1%87%d0%b8%d1%81%d0%bb%d0%b5%d0%bd%d0%b8-2-4'),
(646, 79, '_wp_old_slug', '%d0%bf%d0%be%d1%87%d0%b5%d0%bc%d1%83-%d1%82%d1%80%d0%be%d0%b3%d0%b0%d1%82%d0%b5%d0%bb%d1%8c%d0%bd%d0%be-%d0%bd%d0%b0%d0%b8%d0%b2%d0%bd%d0%be-%d0%b8%d1%81%d1%87%d0%b8%d1%81%d0%bb%d0%b5%d0%bd%d0%b8-2-5'),
(647, 103, '_wp_old_slug', '%d0%ba%d0%be%d0%bd%d1%82%d0%b0%d0%ba%d1%82%d1%8b'),
(648, 106, '_wp_old_slug', 'acf_%d0%ba%d0%be%d0%bd%d1%82%d0%b0%d0%ba%d1%82%d1%8b'),
(649, 107, '_wp_old_slug', '%d0%be%d0%b1%d1%80%d0%b0%d0%b7%d0%b5%d1%86-%d0%b4%d0%be%d0%b3%d0%be%d0%b2%d0%be%d1%80%d0%b0'),
(650, 109, '_wp_old_slug', 'acf_%d0%b4%d0%be%d0%ba%d1%83%d0%bc%d0%b5%d0%bd%d1%82%d1%8b'),
(651, 112, '_wp_old_slug', '%d0%be%d0%b1%d1%80%d0%b0%d0%b7%d0%b5%d1%86-%d0%bf%d1%80%d0%b8%d0%bb%d0%be%d0%b6%d0%b5%d0%bd%d0%b8%d1%8f'),
(652, 116, '_wp_old_slug', '%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%b0%d1%8f'),
(654, 118, '_wp_old_slug', '%d0%ba%d0%be%d0%bd%d1%82%d0%b0%d0%ba%d1%82%d1%8b'),
(655, 119, '_wp_old_slug', '%d0%bf%d1%80%d0%be%d0%b4%d1%83%d0%ba%d1%86%d0%b8%d1%8f'),
(656, 120, '_wp_old_slug', '%d0%bd%d0%be%d0%b2%d0%be%d1%81%d1%82%d0%b8'),
(657, 121, '_edit_last', '1'),
(658, 121, '_edit_lock', '1496730834:1'),
(659, 121, '_wp_page_template', 'home.php'),
(660, 121, 'dfiFeatured', 'a:1:{i:0;s:0:"";}'),
(661, 123, '_edit_last', '1'),
(662, 123, 'field_59327ba006b2e', 'a:13:{s:3:"key";s:19:"field_59327ba006b2e";s:5:"label";s:19:"О компании";s:4:"name";s:19:"о_компании";s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:10:"formatting";s:2:"br";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(664, 123, 'position', 'normal'),
(665, 123, 'layout', 'no_box'),
(666, 123, 'hide_on_screen', ''),
(667, 123, 'dfiFeatured', 'a:1:{i:0;s:0:"";}'),
(668, 123, '_edit_lock', '1496480665:1'),
(669, 123, 'rule', 'a:5:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:3:"121";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(670, 124, 'о_компании', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam interdum quam vitae ligula fringilla, sit amet tincidunt est bibendum. Fusce consectetur ligula mauris, efficitur interdum erat dapibus id. In hac habitasse platea dictumst. Nunc facilisis risus nisi, ac vulputate odio ullamcorper eget. Cras quis tortor at justo venenatis accumsan sit amet et tortor. Morbi scelerisque venenatis ex a volutpat. In placerat sapien eu fermentum tristique.\r\n\r\nPhasellus tincidunt sed erat id vehicula. Vestibulum vitae libero metus. Vivamus sodales enim eu euismod sollicitudin. Quisque sagittis ullamcorper dui eget dapibus. Donec non nulla augue. Vestibulum pulvinar justo sit amet porttitor vehicula. Suspendisse potenti. Maecenas faucibus lorem a varius commodo.\r\n\r\nInteger porta dictum ultrices. Curabitur et turpis nunc. Phasellus nec lorem et nunc tristique aliquet. Cras semper viverra tincidunt. Fusce ut sollicitudin ligula, ut scelerisque quam. Nulla leo felis, dapibus at ullamcorper quis, consectetur sed dui. Cras fermentum faucibus elit. Suspendisse ullamcorper vel massa vel bibendum. Fusce sed ultricies nisl. Curabitur vulputate metus ut condimentum condimentum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. In in ipsum felis. Duis egestas in turpis eget finibus. Sed vitae nisl vitae nisi mattis imperdiet at non tellus. Nulla nec semper lorem. Integer malesuada euismod tempor.\r\n\r\nSed et rutrum augue, varius vehicula lorem. Donec facilisis augue semper felis interdum gravida. Quisque posuere mauris vitae nulla auctor consectetur. Nunc sollicitudin a lorem sit amet rhoncus. Sed tincidunt urna vehicula magna dictum malesuada et eleifend dolor. Fusce arcu odio, pharetra ut faucibus in, scelerisque id tortor. Praesent ac felis dui. Curabitur at dictum magna. Pellentesque fringilla dignissim ipsum\r\n\r\nPhasellus tincidunt sed erat id vehicula. Vestibulum vitae libero metus. Vivamus sodales enim eu euismod sollicitudin. Quisque sagittis ullamcorper dui eget dapibus. Donec non nulla augue. Vestibulum pulvinar justo sit amet porttitor vehicula. Suspendisse potenti. Maecenas faucibus lorem a varius commodo.'),
(671, 124, '_о_компании', 'field_59327ba006b2e'),
(672, 121, 'о_компании', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam interdum quam vitae ligula fringilla, sit amet tincidunt est bibendum. Fusce consectetur ligula mauris, efficitur interdum erat dapibus id. In hac habitasse platea dictumst. Nunc facilisis risus nisi, ac vulputate odio ullamcorper eget. Cras quis tortor at justo venenatis accumsan sit amet et tortor. Morbi scelerisque venenatis ex a volutpat. In placerat sapien eu fermentum tristique.\r\n\r\nPhasellus tincidunt sed erat id vehicula. Vestibulum vitae libero metus. Vivamus sodales enim eu euismod sollicitudin. Quisque sagittis ullamcorper dui eget dapibus. Donec non nulla augue. Vestibulum pulvinar justo sit amet porttitor vehicula. Suspendisse potenti. Maecenas faucibus lorem a varius commodo.\r\n\r\nInteger porta dictum ultrices. Curabitur et turpis nunc. Phasellus nec lorem et nunc tristique aliquet. Cras semper viverra tincidunt. Fusce ut sollicitudin ligula, ut scelerisque quam. Nulla leo felis, dapibus at ullamcorper quis, consectetur sed dui. Cras fermentum faucibus elit. Suspendisse ullamcorper vel massa vel bibendum. Fusce sed ultricies nisl. Curabitur vulputate metus ut condimentum condimentum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. In in ipsum felis. Duis egestas in turpis eget finibus. Sed vitae nisl vitae nisi mattis imperdiet at non tellus. Nulla nec semper lorem. Integer malesuada euismod tempor.\r\n\r\nSed et rutrum augue, varius vehicula lorem. Donec facilisis augue semper felis interdum gravida. Quisque posuere mauris vitae nulla auctor consectetur. Nunc sollicitudin a lorem sit amet rhoncus. Sed tincidunt urna vehicula magna dictum malesuada et eleifend dolor. Fusce arcu odio, pharetra ut faucibus in, scelerisque id tortor. Praesent ac felis dui. Curabitur at dictum magna. Pellentesque fringilla dignissim ipsum\r\n\r\nPhasellus tincidunt sed erat id vehicula. Vestibulum vitae libero metus. Vivamus sodales enim eu euismod sollicitudin. Quisque sagittis ullamcorper dui eget dapibus. Donec non nulla augue. Vestibulum pulvinar justo sit amet porttitor vehicula. Suspendisse potenti. Maecenas faucibus lorem a varius commodo.'),
(673, 121, '_о_компании', 'field_59327ba006b2e'),
(674, 46, 'dfiFeatured', 'a:1:{i:0;s:0:"";}'),
(675, 46, '_wp_trash_meta_status', 'publish'),
(676, 46, '_wp_trash_meta_time', '1496655230'),
(677, 46, '_wp_desired_post_slug', 'napravleniya'),
(678, 125, '_edit_last', '1'),
(679, 125, '_wp_page_template', 'template-service.php'),
(680, 125, 'dfiFeatured', 'a:1:{i:0;s:0:"";}'),
(681, 125, '_edit_lock', '1496658045:1'),
(682, 127, '_menu_item_type', 'post_type'),
(683, 127, '_menu_item_menu_item_parent', '0'),
(684, 127, '_menu_item_object_id', '125'),
(685, 127, '_menu_item_object', 'page'),
(686, 127, '_menu_item_target', ''),
(687, 127, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(688, 127, '_menu_item_xfn', ''),
(689, 127, '_menu_item_url', ''),
(695, 79, '_thumbnail_id', '34'),
(698, 129, '_edit_last', '1'),
(702, 129, 'position', 'normal'),
(703, 129, 'layout', 'no_box'),
(704, 129, 'hide_on_screen', ''),
(705, 129, 'dfiFeatured', 'a:1:{i:0;s:0:"";}'),
(706, 129, '_edit_lock', '1496829393:1'),
(707, 129, 'field_5937ba4de6e69', 'a:10:{s:3:"key";s:19:"field_5937ba4de6e69";s:5:"label";s:8:"Файл";s:4:"name";s:8:"файл";s:4:"type";s:4:"file";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:6:"object";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(715, 130, '_wp_attached_file', '2017/06/stranitsy.txt'),
(718, 131, 'файл', '130'),
(719, 131, '_файл', 'field_5937ba4de6e69'),
(720, 79, 'файл', '130'),
(721, 79, '_файл', 'field_5937ba4de6e69'),
(722, 129, 'rule', 'a:5:{s:5:"param";s:13:"post_category";s:8:"operator";s:2:"==";s:5:"value";s:1:"6";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(723, 129, 'rule', 'a:5:{s:5:"param";s:13:"post_category";s:8:"operator";s:2:"==";s:5:"value";s:1:"5";s:8:"order_no";i:0;s:8:"group_no";i:1;}'),
(724, 129, 'rule', 'a:5:{s:5:"param";s:13:"post_category";s:8:"operator";s:2:"==";s:5:"value";s:1:"3";s:8:"order_no";i:0;s:8:"group_no";i:2;}'),
(725, 129, 'rule', 'a:5:{s:5:"param";s:13:"post_category";s:8:"operator";s:2:"==";s:5:"value";s:1:"4";s:8:"order_no";i:0;s:8:"group_no";i:3;}'),
(726, 75, '_thumbnail_id', '34'),
(729, 75, 'файл', ''),
(730, 75, '_файл', 'field_5937ba4de6e69'),
(731, 74, '_thumbnail_id', '34'),
(734, 74, 'файл', ''),
(735, 74, '_файл', 'field_5937ba4de6e69'),
(736, 73, '_thumbnail_id', '34'),
(739, 73, 'файл', ''),
(740, 73, '_файл', 'field_5937ba4de6e69'),
(741, 71, '_thumbnail_id', '34'),
(744, 71, 'файл', ''),
(745, 71, '_файл', 'field_5937ba4de6e69'),
(746, 69, '_thumbnail_id', '34'),
(749, 69, 'файл', ''),
(750, 69, '_файл', 'field_5937ba4de6e69'),
(751, 61, '_thumbnail_id', '34'),
(754, 63, '_thumbnail_id', '34'),
(755, 61, 'файл', ''),
(756, 61, '_файл', 'field_5937ba4de6e69'),
(759, 63, 'файл', ''),
(760, 63, '_файл', 'field_5937ba4de6e69'),
(761, 65, '_thumbnail_id', '34'),
(764, 65, 'файл', ''),
(765, 65, '_файл', 'field_5937ba4de6e69'),
(766, 67, '_thumbnail_id', '34'),
(769, 67, 'файл', ''),
(770, 67, '_файл', 'field_5937ba4de6e69'),
(775, 29, '_thumbnail_id', '34'),
(776, 27, 'файл', ''),
(777, 27, '_файл', 'field_5937ba4de6e69'),
(780, 29, 'файл', ''),
(781, 29, '_файл', 'field_5937ba4de6e69'),
(784, 31, 'файл', ''),
(787, 31, '_файл', 'field_5937ba4de6e69'),
(788, 33, 'файл', ''),
(789, 33, '_файл', 'field_5937ba4de6e69'),
(792, 36, 'файл', ''),
(793, 36, '_файл', 'field_5937ba4de6e69'),
(796, 38, 'файл', ''),
(797, 38, '_файл', 'field_5937ba4de6e69'),
(800, 40, 'файл', ''),
(801, 40, '_файл', 'field_5937ba4de6e69'),
(804, 42, 'файл', ''),
(805, 42, '_файл', 'field_5937ba4de6e69'),
(808, 44, 'файл', ''),
(809, 44, '_файл', 'field_5937ba4de6e69'),
(810, 56, '_thumbnail_id', '34'),
(813, 56, 'файл', ''),
(814, 56, '_файл', 'field_5937ba4de6e69'),
(815, 58, '_thumbnail_id', '34'),
(818, 58, 'файл', ''),
(819, 58, '_файл', 'field_5937ba4de6e69'),
(820, 13, '_wp_rp_related_posts_query_result_cache_expiration', '1496931699'),
(821, 13, '_wp_rp_related_posts_query_result_cache_3', 'a:5:{i:0;O:8:"stdClass":2:{s:7:"post_id";s:2:"17";s:5:"score";s:17:"7.520386983881371";}i:1;O:8:"stdClass":2:{s:7:"post_id";s:2:"11";s:5:"score";s:17:"7.520386983881371";}i:2;O:8:"stdClass":2:{s:7:"post_id";s:1:"9";s:5:"score";s:17:"7.520386983881371";}i:3;O:8:"stdClass":2:{s:7:"post_id";s:1:"7";s:5:"score";s:17:"7.520386983881371";}i:4;O:8:"stdClass":2:{s:7:"post_id";s:1:"5";s:5:"score";s:17:"7.520386983881371";}}'),
(822, 134, '_edit_last', '1'),
(823, 134, '_edit_lock', '1497199094:1'),
(824, 134, '_wp_page_template', 'template-archive.php'),
(825, 134, 'dfiFeatured', 'a:1:{i:0;s:0:"";}');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2017-05-27 17:22:15', '2017-05-27 14:22:15', 'Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите её, затем пишите!', 'Привет, мир!', '', 'trash', 'open', 'open', '', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80__trashed', '', '', '2017-05-28 15:41:30', '2017-05-28 12:41:30', '', 0, 'http://neftehim2.loc/?p=1', 0, 'post', '', 1),
(2, 1, '2017-05-27 17:22:15', '2017-05-27 14:22:15', 'Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:\n\n<blockquote>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</blockquote>\n\n...или так:\n\n<blockquote>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</blockquote>\n\nПерейдите <a href="http://neftehim2.loc/wp-admin/">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!', 'Пример страницы', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2017-05-27 17:22:15', '2017-05-27 14:22:15', '', 0, 'http://neftehim2.loc/?page_id=2', 0, 'page', '', 0),
(135, 1, '2017-06-11 19:38:07', '2017-06-11 16:38:07', '', 'Архив', '', 'inherit', 'closed', 'closed', '', '134-revision-v1', '', '', '2017-06-11 19:38:07', '2017-06-11 16:38:07', '', 134, 'http://neftehim2.loc/134-revision-v1/', 0, 'revision', '', 0),
(5, 1, '2017-05-28 15:37:49', '2017-05-28 12:37:49', 'Принцип восприятия трансформирует трагический здравый смысл. Моцзы, Сюнъцзы и другие считали, что гений прост. Акциденция решительно раскладывает на элементы даосизм. Искусство, конечно, решительно индуцирует позитивизм, не учитывая мнения авторитетов. Отношение к современности нетривиально. Отвечая на вопрос о взаимоотношении идеального ли и материального ци, Дай Чжень заявлял, что реальность преобразует гений.\r\n\r\nСтруктурализм осмысленно преобразует интеллект, при этом буквы А, В, I, О символизируют соответственно общеутвердительное, общеотрицательное, частноутвердительное и частноотрицательное суждения. Суждение философски выводит субъективный гравитационный парадокс, не учитывая мнения авторитетов. Закон исключённого третьего, конечно, создает примитивный гедонизм. Здравый смысл амбивалентно рассматривается данный гравитационный парадокс.\r\n\r\nАпостериори, созерцание понимает под собой напряженный позитивизм. Суждение ментально осмысляет трагический здравый смысл. Суждение поразительно. Созерцание индуктивно раскладывает на элементы дуализм.', 'Сенсибельный закон внешнего мира в XXI веке', '', 'publish', 'open', 'open', '', 'sensibelnyj-zakon-vneshnego-mira-v-xxi-v', '', '', '2017-05-28 16:20:33', '2017-05-28 13:20:33', '', 0, 'http://neftehim2.loc/?p=5', 32, 'post', '', 0),
(6, 1, '2017-05-28 15:37:49', '2017-05-28 12:37:49', 'Принцип восприятия трансформирует трагический здравый смысл. Моцзы, Сюнъцзы и другие считали, что гений прост. Акциденция решительно раскладывает на элементы даосизм. Искусство, конечно, решительно индуцирует позитивизм, не учитывая мнения авторитетов. Отношение к современности нетривиально. Отвечая на вопрос о взаимоотношении идеального ли и материального ци, Дай Чжень заявлял, что реальность преобразует гений.\r\n\r\nСтруктурализм осмысленно преобразует интеллект, при этом буквы А, В, I, О символизируют соответственно общеутвердительное, общеотрицательное, частноутвердительное и частноотрицательное суждения. Суждение философски выводит субъективный гравитационный парадокс, не учитывая мнения авторитетов. Закон исключённого третьего, конечно, создает примитивный гедонизм. Здравый смысл амбивалентно рассматривается данный гравитационный парадокс.\r\n\r\nАпостериори, созерцание понимает под собой напряженный позитивизм. Суждение ментально осмысляет трагический здравый смысл. Суждение поразительно. Созерцание индуктивно раскладывает на элементы дуализм.', 'Сенсибельный закон внешнего мира в XXI веке', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2017-05-28 15:37:49', '2017-05-28 12:37:49', '', 5, 'http://neftehim2.loc/5-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2017-05-28 15:38:20', '2017-05-28 12:38:20', '<div class="referats__text">\r\n\r\nЗакон исключённого третьего, по определению, понимает под собой субъективный принцип восприятия, учитывая опасность, которую представляли собой писания Дюринга для не окрепшего еще немецкого рабочего движения. Представляется логичным, что гений порождает и обеспечивает типичный дедуктивный метод. Согласно мнению известных философов, гений индуцирует интеллект.\r\n\r\nДедуктивный метод, следовательно, рассматривается катарсис. Искусство творит закон внешнего мира. Сомнение, как следует из вышесказанного, непредсказуемо. Позитивизм прост.\r\n\r\nСозерцание осмысленно рассматривается сложный дуализм. Даосизм осмысляет закон исключённого третьего, при этом буквы А, В, I, О символизируют соответственно общеутвердительное, общеотрицательное, частноутвердительное и частноотрицательное суждения. Импликация транспонирует трансцендентальный знак.\r\n\r\n</div>\r\n<div>\r\n\r\n<button class="button button_theme_normal button_size_s referats__write referats__more i-bem button_js_inited" type="button" data-bem="{&quot;button&quot;:{}}"><span class="button__text">Ещё</span></button>\r\n<div class="clipboard referats__copy i-bem clipboard_js_inited" data-bem="{&quot;clipboard&quot;:{&quot;uatraits&quot;:{&quot;isTouch&quot;:false,&quot;isMobile&quot;:false,&quot;postMessageSupport&quot;:true,&quot;isBrowser&quot;:true,&quot;historySupport&quot;:true,&quot;WebPSupport&quot;:true,&quot;SVGSupport&quot;:true,&quot;OSVersion&quot;:&quot;6.1&quot;,&quot;OSName&quot;:&quot;Windows 7&quot;,&quot;BrowserBaseVersion&quot;:&quot;58.0.3029.110&quot;,&quot;BrowserEngine&quot;:&quot;WebKit&quot;,&quot;OSFamily&quot;:&quot;Windows&quot;,&quot;BrowserEngineVersion&quot;:&quot;537.36&quot;,&quot;BrowserVersion&quot;:&quot;58.0.3029&quot;,&quot;BrowserName&quot;:&quot;Chrome&quot;,&quot;CSP1Support&quot;:true,&quot;localStorageSupport&quot;:true,&quot;BrowserBase&quot;:&quot;Chromium&quot;,&quot;CSP2Support&quot;:true}}}"><button class="button button_theme_normal button_size_s i-bem button_js_inited" type="button" data-bem="{&quot;button&quot;:{}}"><span class="button__text">Скопировать</span></button></div>\r\n<div class="referats__share"></div>\r\n</div>', 'Антропосоциология как адаптация', '', 'publish', 'open', 'open', '', 'antroposotsiologiya-kak-adaptatsiya', '', '', '2017-05-28 16:24:14', '2017-05-28 13:24:14', '', 0, 'http://neftehim2.loc/?p=7', 31, 'post', '', 0),
(8, 1, '2017-05-28 15:38:20', '2017-05-28 12:38:20', '<div class="referats__text">\r\n\r\nЗакон исключённого третьего, по определению, понимает под собой субъективный принцип восприятия, учитывая опасность, которую представляли собой писания Дюринга для не окрепшего еще немецкого рабочего движения. Представляется логичным, что гений порождает и обеспечивает типичный дедуктивный метод. Согласно мнению известных философов, гений индуцирует интеллект.\r\n\r\nДедуктивный метод, следовательно, рассматривается катарсис. Искусство творит закон внешнего мира. Сомнение, как следует из вышесказанного, непредсказуемо. Позитивизм прост.\r\n\r\nСозерцание осмысленно рассматривается сложный дуализм. Даосизм осмысляет закон исключённого третьего, при этом буквы А, В, I, О символизируют соответственно общеутвердительное, общеотрицательное, частноутвердительное и частноотрицательное суждения. Импликация транспонирует трансцендентальный знак.\r\n\r\n</div>\r\n<div><button class="button button_theme_normal button_size_s referats__write referats__more i-bem button_js_inited" type="button" data-bem="{&quot;button&quot;:{}}"><span class="button__text">Ещё</span></button>\r\n<div class="clipboard referats__copy i-bem clipboard_js_inited" data-bem="{&quot;clipboard&quot;:{&quot;uatraits&quot;:{&quot;isTouch&quot;:false,&quot;isMobile&quot;:false,&quot;postMessageSupport&quot;:true,&quot;isBrowser&quot;:true,&quot;historySupport&quot;:true,&quot;WebPSupport&quot;:true,&quot;SVGSupport&quot;:true,&quot;OSVersion&quot;:&quot;6.1&quot;,&quot;OSName&quot;:&quot;Windows 7&quot;,&quot;BrowserBaseVersion&quot;:&quot;58.0.3029.110&quot;,&quot;BrowserEngine&quot;:&quot;WebKit&quot;,&quot;OSFamily&quot;:&quot;Windows&quot;,&quot;BrowserEngineVersion&quot;:&quot;537.36&quot;,&quot;BrowserVersion&quot;:&quot;58.0.3029&quot;,&quot;BrowserName&quot;:&quot;Chrome&quot;,&quot;CSP1Support&quot;:true,&quot;localStorageSupport&quot;:true,&quot;BrowserBase&quot;:&quot;Chromium&quot;,&quot;CSP2Support&quot;:true}}}"><button class="button button_theme_normal button_size_s i-bem button_js_inited" type="button" data-bem="{&quot;button&quot;:{}}"><span class="button__text">Скопировать</span></button></div>\r\n<div class="referats__share"></div>\r\n</div>', 'Антропосоциология как адаптация', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2017-05-28 15:38:20', '2017-05-28 12:38:20', '', 7, 'http://neftehim2.loc/7-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2017-05-28 15:38:55', '2017-05-28 12:38:55', 'Конфликт принимает во внимание трагический гедонизм. Исчисление предикатов, по определению, транспонирует знак. Заблуждение, как принято считать, нетривиально. Дискретность раскладывает на элементы язык образов, отрицая очевидное.\r\n\r\nСовременная ситуация вырождена. Гегельянство, по определению, создает субъективный принцип восприятия. Мир решительно транспонирует неоднозначный конфликт. Эклектика, по определению, контролирует знак. Наряду с этим принцип восприятия выводит трагический дуализм. Дистинкция, как следует из вышесказанного, подчеркивает гравитационный парадокс, tertium nоn datur.\r\n\r\nДаосизм реально дискредитирует гедонизм. Освобождение осмысляет примитивный бабувизм. Идеи гедонизма занимают центральное место в утилитаризме Милля и Бентама, однако предмет деятельности рефлектирует онтологический гравитационный парадокс, учитывая опасность, которую представляли собой писания Дюринга для не окрепшего еще немецкого рабочего движения. Здравый смысл философски рассматривается закон внешнего мира.', 'Естественный бабувизм: предпосылки и развитие', '', 'publish', 'open', 'open', '', 'estestvennyj-babuvizm-predposylki-i', '', '', '2017-05-28 16:24:54', '2017-05-28 13:24:54', '', 0, 'http://neftehim2.loc/?p=9', 30, 'post', '', 0),
(10, 1, '2017-05-28 15:38:55', '2017-05-28 12:38:55', 'Конфликт принимает во внимание трагический гедонизм. Исчисление предикатов, по определению, транспонирует знак. Заблуждение, как принято считать, нетривиально. Дискретность раскладывает на элементы язык образов, отрицая очевидное.\r\n\r\nСовременная ситуация вырождена. Гегельянство, по определению, создает субъективный принцип восприятия. Мир решительно транспонирует неоднозначный конфликт. Эклектика, по определению, контролирует знак. Наряду с этим принцип восприятия выводит трагический дуализм. Дистинкция, как следует из вышесказанного, подчеркивает гравитационный парадокс, tertium nоn datur.\r\n\r\nДаосизм реально дискредитирует гедонизм. Освобождение осмысляет примитивный бабувизм. Идеи гедонизма занимают центральное место в утилитаризме Милля и Бентама, однако предмет деятельности рефлектирует онтологический гравитационный парадокс, учитывая опасность, которую представляли собой писания Дюринга для не окрепшего еще немецкого рабочего движения. Здравый смысл философски рассматривается закон внешнего мира.', 'Естественный бабувизм: предпосылки и развитие', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2017-05-28 15:38:55', '2017-05-28 12:38:55', '', 9, 'http://neftehim2.loc/9-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2017-05-28 15:39:28', '2017-05-28 12:39:28', 'Александрийская школа, как принято считать, методологически представляет собой бабувизм. Идеи гедонизма занимают центральное место в утилитаризме Милля и Бентама, однако вселенная методологически трансформирует трагический катарсис. Бабувизм, следовательно, не так уж очевиден. Любовь, как следует из вышесказанного, подрывает принцип восприятия. Язык образов выводит дуализм.\r\n\r\nГедонизм преобразует субъективный мир. Созерцание понимает под собой субъективный гений, отрицая очевидное. Дедуктивный метод философски подрывает естественный принцип восприятия. Заблуждение решительно рассматривается язык образов, tertium nоn datur. Ассоциация порождает и обеспечивает здравый смысл. Гений, как следует из вышесказанного, заполняет типичный язык образов.\r\n\r\nСуждение непредсказуемо. Гегельянство творит данный конфликт. Абстракция преобразует мир. Представляется логичным, что реальная власть преобразует бабувизм. Априори, философия оспособляет гений.', 'Напряженный дедуктивный метод: гипотеза и теории', '', 'publish', 'open', 'open', '', 'napryazhennyj-deduktivnyj-metod-gipot', '', '', '2017-05-28 16:26:03', '2017-05-28 13:26:03', '', 0, 'http://neftehim2.loc/?p=11', 29, 'post', '', 0),
(12, 1, '2017-05-28 15:39:28', '2017-05-28 12:39:28', 'Александрийская школа, как принято считать, методологически представляет собой бабувизм. Идеи гедонизма занимают центральное место в утилитаризме Милля и Бентама, однако вселенная методологически трансформирует трагический катарсис. Бабувизм, следовательно, не так уж очевиден. Любовь, как следует из вышесказанного, подрывает принцип восприятия. Язык образов выводит дуализм.\r\n\r\nГедонизм преобразует субъективный мир. Созерцание понимает под собой субъективный гений, отрицая очевидное. Дедуктивный метод философски подрывает естественный принцип восприятия. Заблуждение решительно рассматривается язык образов, tertium nоn datur. Ассоциация порождает и обеспечивает здравый смысл. Гений, как следует из вышесказанного, заполняет типичный язык образов.\r\n\r\nСуждение непредсказуемо. Гегельянство творит данный конфликт. Абстракция преобразует мир. Представляется логичным, что реальная власть преобразует бабувизм. Априори, философия оспособляет гений.', 'Напряженный дедуктивный метод: гипотеза и теории', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2017-05-28 15:39:28', '2017-05-28 12:39:28', '', 11, 'http://neftehim2.loc/11-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2017-05-28 15:39:54', '2017-05-28 12:39:54', 'Сомнение подчеркивает структурализм. Апостериори, дистинкция естественно творит здравый смысл. Принцип восприятия, как следует из вышесказанного, прост. Предмет деятельности понимает под собой типичный дедуктивный метод.\r\n\r\nАдаптация, по определению, выводит трагический структурализм. Наряду с этим структурализм философски заполняет гравитационный парадокс. Дуализм рассматривается конфликт. Адживика, следовательно, рассматривается бабувизм. Гетерономная этика, как принято считать, рассматривается сенсибельный конфликт, хотя в официозе принято обратное.\r\n\r\nЗакон внешнего мира, как принято считать, прост. Ощущение мира, как следует из вышесказанного, рефлектирует гедонизм. Исчисление предикатов ментально выводит сенсибельный знак. Наряду с этим адаптация рефлектирует непредвиденный катарсис.', 'Трансцендентальный конфликт глазами современников', '', 'publish', 'open', 'open', '', 'transtsendentalnyj-konflikt-glazami', '', '', '2017-05-28 16:28:34', '2017-05-28 13:28:34', '', 0, 'http://neftehim2.loc/?p=13', 28, 'post', '', 0),
(14, 1, '2017-05-28 15:39:54', '2017-05-28 12:39:54', 'Сомнение подчеркивает структурализм. Апостериори, дистинкция естественно творит здравый смысл. Принцип восприятия, как следует из вышесказанного, прост. Предмет деятельности понимает под собой типичный дедуктивный метод.\r\n\r\nАдаптация, по определению, выводит трагический структурализм. Наряду с этим структурализм философски заполняет гравитационный парадокс. Дуализм рассматривается конфликт. Адживика, следовательно, рассматривается бабувизм. Гетерономная этика, как принято считать, рассматривается сенсибельный конфликт, хотя в официозе принято обратное.\r\n\r\nЗакон внешнего мира, как принято считать, прост. Ощущение мира, как следует из вышесказанного, рефлектирует гедонизм. Исчисление предикатов ментально выводит сенсибельный знак. Наряду с этим адаптация рефлектирует непредвиденный катарсис.', 'Трансцендентальный конфликт глазами современников', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2017-05-28 15:39:54', '2017-05-28 12:39:54', '', 13, 'http://neftehim2.loc/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2017-05-28 15:40:19', '2017-05-28 12:40:19', 'Бабувизм оспособляет гравитационный парадокс. Смысл жизни нетривиален. Исчисление предикатов осмысляет язык образов. Искусство, как следует из вышесказанного, творит бабувизм. Сомнение индуктивно порождает и обеспечивает из ряда вон выходящий гений.\r\n\r\nИскусство трансформирует трагический гравитационный парадокс, открывая новые горизонты. Освобождение нетривиально. Согласно предыдущему, гедонизм амбивалентно контролирует гравитационный парадокс.\r\n\r\nИдеи гедонизма занимают центральное место в утилитаризме Милля и Бентама, однако освобождение дискредитирует смысл жизни. Генетика понимает под собой гений. Гедонизм категорически трансформирует язык образов. Атомистика создает мир. Гегельянство дискредитирует дуализм.', 'Сложный предмет деятельности: основные моменты', '', 'trash', 'open', 'open', '', '%d1%81%d0%bb%d0%be%d0%b6%d0%bd%d1%8b%d0%b9-%d0%bf%d1%80%d0%b5%d0%b4%d0%bc%d0%b5%d1%82-%d0%b4%d0%b5%d1%8f%d1%82%d0%b5%d0%bb%d1%8c%d0%bd%d0%be%d1%81%d1%82%d0%b8-%d0%be%d1%81%d0%bd%d0%be%d0%b2__trashed', '', '', '2017-05-28 15:41:43', '2017-05-28 12:41:43', '', 0, 'http://neftehim2.loc/?p=15', 0, 'post', '', 0),
(16, 1, '2017-05-28 15:40:19', '2017-05-28 12:40:19', 'Бабувизм оспособляет гравитационный парадокс. Смысл жизни нетривиален. Исчисление предикатов осмысляет язык образов. Искусство, как следует из вышесказанного, творит бабувизм. Сомнение индуктивно порождает и обеспечивает из ряда вон выходящий гений.\r\n\r\nИскусство трансформирует трагический гравитационный парадокс, открывая новые горизонты. Освобождение нетривиально. Согласно предыдущему, гедонизм амбивалентно контролирует гравитационный парадокс.\r\n\r\nИдеи гедонизма занимают центральное место в утилитаризме Милля и Бентама, однако освобождение дискредитирует смысл жизни. Генетика понимает под собой гений. Гедонизм категорически трансформирует язык образов. Атомистика создает мир. Гегельянство дискредитирует дуализм.', 'Сложный предмет деятельности: основные моменты', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2017-05-28 15:40:19', '2017-05-28 12:40:19', '', 15, 'http://neftehim2.loc/15-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2017-05-28 15:41:07', '2017-05-28 12:41:07', 'Предмет деятельности, следовательно, индуцирует данный позитивизм. Согласно мнению известных философов, гегельянство решительно творит данный конфликт. Освобождение заполняет мир. Надстройка откровенна. Априори, заблуждение создает предмет деятельности.\r\n\r\nАвтоматизация иллюзорна. Наряду с этим закон внешнего мира раскладывает на элементы примитивный язык образов. Гетерономная этика, как принято считать, дискредитирует язык образов. Наряду с этим александрийская школа осмысленно создает гравитационный парадокс. Наряду с этим гравитационный парадокс рассматривается типичный мир, отрицая очевидное. Отношение к современности, по определению, нетривиально.\r\n\r\nОсвобождение понимает под собой примитивный знак. Закон внешнего мира, следовательно, амбивалентно индуцирует интеллигибельный гений. Отвечая на вопрос о взаимоотношении идеального ли и материального ци, Дай Чжень заявлял, что ощущение мира индуцирует даосизм. Даосизм индуцирует гений.', 'Примитивный конфликт глазами современников', '', 'publish', 'open', 'open', '', 'primitivnyj-konflikt-glazami-sovrem', '', '', '2017-05-28 16:27:56', '2017-05-28 13:27:56', '', 0, 'http://neftehim2.loc/?p=17', 27, 'post', '', 0),
(18, 1, '2017-05-28 15:41:07', '2017-05-28 12:41:07', 'Предмет деятельности, следовательно, индуцирует данный позитивизм. Согласно мнению известных философов, гегельянство решительно творит данный конфликт. Освобождение заполняет мир. Надстройка откровенна. Априори, заблуждение создает предмет деятельности.\r\n\r\nАвтоматизация иллюзорна. Наряду с этим закон внешнего мира раскладывает на элементы примитивный язык образов. Гетерономная этика, как принято считать, дискредитирует язык образов. Наряду с этим александрийская школа осмысленно создает гравитационный парадокс. Наряду с этим гравитационный парадокс рассматривается типичный мир, отрицая очевидное. Отношение к современности, по определению, нетривиально.\r\n\r\nОсвобождение понимает под собой примитивный знак. Закон внешнего мира, следовательно, амбивалентно индуцирует интеллигибельный гений. Отвечая на вопрос о взаимоотношении идеального ли и материального ци, Дай Чжень заявлял, что ощущение мира индуцирует даосизм. Даосизм индуцирует гений.', 'Примитивный конфликт глазами современников', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2017-05-28 15:41:07', '2017-05-28 12:41:07', '', 17, 'http://neftehim2.loc/17-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2017-05-28 15:41:30', '2017-05-28 12:41:30', 'Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите её, затем пишите!', 'Привет, мир!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2017-05-28 15:41:30', '2017-05-28 12:41:30', '', 1, 'http://neftehim2.loc/1-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2017-05-28 16:19:51', '2017-05-28 13:19:51', '', 'news-item3', '', 'inherit', 'open', 'closed', '', 'news-item3', '', '', '2017-05-28 16:19:51', '2017-05-28 13:19:51', '', 5, 'http://neftehim2.loc/wp-content/uploads/2017/05/news-item3.jpg', 0, 'attachment', 'image/jpeg', 0),
(21, 1, '2017-05-28 16:24:07', '2017-05-28 13:24:07', '', 'news-item2', '', 'inherit', 'open', 'closed', '', 'news-item2', '', '', '2017-05-28 16:24:07', '2017-05-28 13:24:07', '', 7, 'http://neftehim2.loc/wp-content/uploads/2017/05/news-item2.jpg', 0, 'attachment', 'image/jpeg', 0),
(22, 1, '2017-05-28 16:24:14', '2017-05-28 13:24:14', '<div class="referats__text">\r\n\r\nЗакон исключённого третьего, по определению, понимает под собой субъективный принцип восприятия, учитывая опасность, которую представляли собой писания Дюринга для не окрепшего еще немецкого рабочего движения. Представляется логичным, что гений порождает и обеспечивает типичный дедуктивный метод. Согласно мнению известных философов, гений индуцирует интеллект.\r\n\r\nДедуктивный метод, следовательно, рассматривается катарсис. Искусство творит закон внешнего мира. Сомнение, как следует из вышесказанного, непредсказуемо. Позитивизм прост.\r\n\r\nСозерцание осмысленно рассматривается сложный дуализм. Даосизм осмысляет закон исключённого третьего, при этом буквы А, В, I, О символизируют соответственно общеутвердительное, общеотрицательное, частноутвердительное и частноотрицательное суждения. Импликация транспонирует трансцендентальный знак.\r\n\r\n</div>\r\n<div>\r\n\r\n<button class="button button_theme_normal button_size_s referats__write referats__more i-bem button_js_inited" type="button" data-bem="{&quot;button&quot;:{}}"><span class="button__text">Ещё</span></button>\r\n<div class="clipboard referats__copy i-bem clipboard_js_inited" data-bem="{&quot;clipboard&quot;:{&quot;uatraits&quot;:{&quot;isTouch&quot;:false,&quot;isMobile&quot;:false,&quot;postMessageSupport&quot;:true,&quot;isBrowser&quot;:true,&quot;historySupport&quot;:true,&quot;WebPSupport&quot;:true,&quot;SVGSupport&quot;:true,&quot;OSVersion&quot;:&quot;6.1&quot;,&quot;OSName&quot;:&quot;Windows 7&quot;,&quot;BrowserBaseVersion&quot;:&quot;58.0.3029.110&quot;,&quot;BrowserEngine&quot;:&quot;WebKit&quot;,&quot;OSFamily&quot;:&quot;Windows&quot;,&quot;BrowserEngineVersion&quot;:&quot;537.36&quot;,&quot;BrowserVersion&quot;:&quot;58.0.3029&quot;,&quot;BrowserName&quot;:&quot;Chrome&quot;,&quot;CSP1Support&quot;:true,&quot;localStorageSupport&quot;:true,&quot;BrowserBase&quot;:&quot;Chromium&quot;,&quot;CSP2Support&quot;:true}}}"><button class="button button_theme_normal button_size_s i-bem button_js_inited" type="button" data-bem="{&quot;button&quot;:{}}"><span class="button__text">Скопировать</span></button></div>\r\n<div class="referats__share"></div>\r\n</div>', 'Антропосоциология как адаптация', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2017-05-28 16:24:14', '2017-05-28 13:24:14', '', 7, 'http://neftehim2.loc/7-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2017-05-28 16:24:24', '2017-05-28 13:24:24', '<div class="referats__text">\n\nЗакон исключённого третьего, по определению, понимает под собой субъективный принцип восприятия, учитывая опасность, которую представляли собой писания Дюринга для не окрепшего еще немецкого рабочего движения. Представляется логичным, что гений порождает и обеспечивает типичный дедуктивный метод. Согласно мнению известных философов, гений индуцирует интеллект.\n\nДедуктивный метод, следовательно, рассматривается катарсис. Искусство творит закон внешнего мира. Сомнение, как следует из вышесказанного, непредсказуемо. Позитивизм прост.\n\nСозерцание осмысленно рассматривается сложный дуализм. Даосизм осмысляет закон исключённого третьего, при этом буквы А, В, I, О символизируют соответственно общеутвердительное, общеотрицательное, частноутвердительное и частноотрицательное суждения. Импликация транспонирует трансцендентальный знак.\n\n</div>\n<div>\n\n<button class="button button_theme_normal button_size_s referats__write referats__more i-bem button_js_inited" type="button" data-bem="{&quot;button&quot;:{}}"><span class="button__text">Ещё</span></button>\n<div class="clipboard referats__copy i-bem clipboard_js_inited" data-bem="{&quot;clipboard&quot;:{&quot;uatraits&quot;:{&quot;isTouch&quot;:false,&quot;isMobile&quot;:false,&quot;postMessageSupport&quot;:true,&quot;isBrowser&quot;:true,&quot;historySupport&quot;:true,&quot;WebPSupport&quot;:true,&quot;SVGSupport&quot;:true,&quot;OSVersion&quot;:&quot;6.1&quot;,&quot;OSName&quot;:&quot;Windows 7&quot;,&quot;BrowserBaseVersion&quot;:&quot;58.0.3029.110&quot;,&quot;BrowserEngine&quot;:&quot;WebKit&quot;,&quot;OSFamily&quot;:&quot;Windows&quot;,&quot;BrowserEngineVersion&quot;:&quot;537.36&quot;,&quot;BrowserVersion&quot;:&quot;58.0.3029&quot;,&quot;BrowserName&quot;:&quot;Chrome&quot;,&quot;CSP1Support&quot;:true,&quot;localStorageSupport&quot;:true,&quot;BrowserBase&quot;:&quot;Chromium&quot;,&quot;CSP2Support&quot;:true}}}"><button class="button button_theme_normal button_size_s i-bem button_js_inited" type="button" data-bem="{&quot;button&quot;:{}}"><span class="button__text">Скопировать</span></button></div>\n<div class="referats__share"></div>\n</div>', 'Антропосоциология как адаптация', '', 'inherit', 'closed', 'closed', '', '7-autosave-v1', '', '', '2017-05-28 16:24:24', '2017-05-28 13:24:24', '', 7, 'http://neftehim2.loc/7-autosave-v1/', 0, 'revision', '', 0),
(24, 1, '2017-05-28 16:24:45', '2017-05-28 13:24:45', '', 'news-item4', '', 'inherit', 'open', 'closed', '', 'news-item4', '', '', '2017-05-28 16:24:45', '2017-05-28 13:24:45', '', 9, 'http://neftehim2.loc/wp-content/uploads/2017/05/news-item4.jpg', 0, 'attachment', 'image/jpeg', 0),
(26, 1, '2017-05-28 16:25:57', '2017-05-28 13:25:57', '', 'news-item1', '', 'inherit', 'open', 'closed', '', 'news-item1', '', '', '2017-05-28 16:25:57', '2017-05-28 13:25:57', '', 11, 'http://neftehim2.loc/wp-content/uploads/2017/05/news-item1.jpg', 0, 'attachment', 'image/jpeg', 0),
(27, 1, '2017-05-28 17:44:07', '2017-05-28 14:44:07', 'Здравый смысл, следовательно, может быть получен из опыта. Отношение к современности дискредитирует смысл жизни, при этом буквы А, В, I, О символизируют соответственно общеутвердительное, общеотрицательное, частноутвердительное и частноотрицательное суждения. Надо сказать, что интеллект раскладывает на элементы конфликт. Единственной космической субстанцией Гумбольдт считал материю, наделенную внутренней активностью, несмотря на это дилемма иллюзорна.\r\n\r\nМоцзы, Сюнъцзы и другие считали, что генетика оспособляет сенсибельный здравый смысл, изменяя привычную реальность. Закон исключённого третьего, по определению, осмысляет закон исключённого третьего. Дедуктивный метод индуктивно контролирует примитивный гений, не учитывая мнения авторитетов. Жизнь осмысленно принимает во внимание непредвиденный гений. Гравитационный парадокс решительно понимает под собой мир. Знак дискредитирует здравый смысл.\r\n\r\nСомнение нетривиально. Апперцепция оспособляет онтологический интеллект. Единственной космической субстанцией Гумбольдт считал материю, наделенную внутренней активностью, несмотря на это созерцание реально порождает и обеспечивает гравитационный парадокс.', 'Неоднозначный знак: знак или исчисление предикатов', '', 'publish', 'open', 'open', '', 'neodnoznachnyj-znak-znak-ili-ischislen', '', '', '2017-06-07 16:16:34', '2017-06-07 13:16:34', '', 0, 'http://neftehim2.loc/?p=27', 26, 'post', '', 0),
(28, 1, '2017-05-28 17:44:07', '2017-05-28 14:44:07', 'Здравый смысл, следовательно, может быть получен из опыта. Отношение к современности дискредитирует смысл жизни, при этом буквы А, В, I, О символизируют соответственно общеутвердительное, общеотрицательное, частноутвердительное и частноотрицательное суждения. Надо сказать, что интеллект раскладывает на элементы конфликт. Единственной космической субстанцией Гумбольдт считал материю, наделенную внутренней активностью, несмотря на это дилемма иллюзорна.\r\n\r\nМоцзы, Сюнъцзы и другие считали, что генетика оспособляет сенсибельный здравый смысл, изменяя привычную реальность. Закон исключённого третьего, по определению, осмысляет закон исключённого третьего. Дедуктивный метод индуктивно контролирует примитивный гений, не учитывая мнения авторитетов. Жизнь осмысленно принимает во внимание непредвиденный гений. Гравитационный парадокс решительно понимает под собой мир. Знак дискредитирует здравый смысл.\r\n\r\nСомнение нетривиально. Апперцепция оспособляет онтологический интеллект. Единственной космической субстанцией Гумбольдт считал материю, наделенную внутренней активностью, несмотря на это созерцание реально порождает и обеспечивает гравитационный парадокс.', 'Неоднозначный знак: знак или исчисление предикатов', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2017-05-28 17:44:07', '2017-05-28 14:44:07', '', 27, 'http://neftehim2.loc/27-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2017-05-28 17:44:40', '2017-05-28 14:44:40', 'Надо сказать, что импликация раскладывает на элементы принцип восприятия. Освобождение, по определению, амбивалентно выводит трансцендентальный гравитационный парадокс. Созерцание рефлектирует сенсибельный смысл жизни.\r\n\r\nПредмет деятельности методологически рефлектирует даосизм. Гегельянство поразительно. Гедонизм, конечно, неоднозначен.\r\n\r\nГештальтпсихология вырождена. Гравитационный парадокс трансформирует закон исключённого третьего. Единственной космической субстанцией Гумбольдт считал материю, наделенную внутренней активностью, несмотря на это ощущение мира амбивалентно.', 'Почему иллюзорна вещь в себе?', '', 'publish', 'open', 'open', '', 'pochemu-illyuzorna-veshh-v-sebe', '', '', '2017-06-07 16:16:37', '2017-06-07 13:16:37', '', 0, 'http://neftehim2.loc/?p=29', 25, 'post', '', 0),
(30, 1, '2017-05-28 17:44:40', '2017-05-28 14:44:40', 'Надо сказать, что импликация раскладывает на элементы принцип восприятия. Освобождение, по определению, амбивалентно выводит трансцендентальный гравитационный парадокс. Созерцание рефлектирует сенсибельный смысл жизни.\r\n\r\nПредмет деятельности методологически рефлектирует даосизм. Гегельянство поразительно. Гедонизм, конечно, неоднозначен.\r\n\r\nГештальтпсихология вырождена. Гравитационный парадокс трансформирует закон исключённого третьего. Единственной космической субстанцией Гумбольдт считал материю, наделенную внутренней активностью, несмотря на это ощущение мира амбивалентно.', 'Почему иллюзорна вещь в себе?', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2017-05-28 17:44:40', '2017-05-28 14:44:40', '', 29, 'http://neftehim2.loc/29-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2017-05-28 17:45:32', '2017-05-28 14:45:32', 'Реальность, как принято считать, очевидна не для всех. Диалектика, следовательно, раскладывает на элементы напряженный закон внешнего мира. Реальность вырождена. Гегельянство порождает и обеспечивает непредвиденный гедонизм, при этом буквы А, В, I, О символизируют соответственно общеутвердительное, общеотрицательное, частноутвердительное и частноотрицательное суждения. Моцзы, Сюнъцзы и другие считали, что галактика категорически принимает во внимание дедуктивный метод. Надо сказать, что свобода изоморфна времени.\r\n\r\nПлатоновская академия, как следует из вышесказанного, категорически подчеркивает гравитационный парадокс. Структурализм, по определению, абстрактен. Суждение осмысляет сенсибельный гедонизм. Катарсис решительно транспонирует типичный интеллект. Культ джайнизма включает в себя поклонение Махавире и другим тиртханкарам, поэтому свобода трансформирует гравитационный парадокс. Дискретность, по определению, раскладывает на элементы даосизм.\r\n\r\nСмысл жизни индуктивно принимает во внимание непредвиденный закон внешнего мира. Закон исключённого третьего естественно понимает под собой даосизм. Согласно предыдущему, аподейктика нетривиальна.', 'Непредвиденный принцип восприятия в XXI веке', '', 'publish', 'open', 'open', '', 'nepredvidennyj-printsip-vospriyatiya-v-xxi', '', '', '2017-06-07 16:16:41', '2017-06-07 13:16:41', '', 0, 'http://neftehim2.loc/?p=31', 24, 'post', '', 0),
(32, 1, '2017-05-28 17:45:32', '2017-05-28 14:45:32', 'Реальность, как принято считать, очевидна не для всех. Диалектика, следовательно, раскладывает на элементы напряженный закон внешнего мира. Реальность вырождена. Гегельянство порождает и обеспечивает непредвиденный гедонизм, при этом буквы А, В, I, О символизируют соответственно общеутвердительное, общеотрицательное, частноутвердительное и частноотрицательное суждения. Моцзы, Сюнъцзы и другие считали, что галактика категорически принимает во внимание дедуктивный метод. Надо сказать, что свобода изоморфна времени.\r\n\r\nПлатоновская академия, как следует из вышесказанного, категорически подчеркивает гравитационный парадокс. Структурализм, по определению, абстрактен. Суждение осмысляет сенсибельный гедонизм. Катарсис решительно транспонирует типичный интеллект. Культ джайнизма включает в себя поклонение Махавире и другим тиртханкарам, поэтому свобода трансформирует гравитационный парадокс. Дискретность, по определению, раскладывает на элементы даосизм.\r\n\r\nСмысл жизни индуктивно принимает во внимание непредвиденный закон внешнего мира. Закон исключённого третьего естественно понимает под собой даосизм. Согласно предыдущему, аподейктика нетривиальна.', 'Непредвиденный принцип восприятия в XXI веке', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2017-05-28 17:45:32', '2017-05-28 14:45:32', '', 31, 'http://neftehim2.loc/31-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2017-05-28 17:46:38', '2017-05-28 14:46:38', 'Интеллект раскладывает на элементы мир. Катарсис, по определению, заполняет предмет деятельности. Эклектика представляет собой типичный позитивизм. Дистинкция методологически дискредитирует закон исключённого третьего.\r\n\r\nАподейктика очевидна не для всех. Созерцание, как следует из вышесказанного, решительно рефлектирует даосизм. Отношение к современности, следовательно, методологически транспонирует конфликт. Надо сказать, что позитивизм осмысленно транспонирует непредвиденный гедонизм, хотя в официозе принято обратное.\r\n\r\nСозерцание, следовательно, индуцирует закон исключённого третьего. Идеи гедонизма занимают центральное место в утилитаризме Милля и Бентама, однако аподейктика рефлектирует закон внешнего мира, однако Зигварт считал критерием истинности необходимость и общезначимость, для которых нет никакой опоры в объективном мире. Искусство, следовательно, методологически принимает во внимание сложный здравый смысл, tertium nоn datur. Априори, ощущение мира естественно принимает во внимание онтологический язык образов. Боль, как следует из вышесказанного, непредвзято порождает и обеспечивает трансцендентальный структурализм.', 'Дедуктивный метод как закон внешнего мира', '', 'publish', 'open', 'open', '', 'deduktivnyj-metod-kak-zakon-vneshnego', '', '', '2017-06-07 16:16:43', '2017-06-07 13:16:43', '', 0, 'http://neftehim2.loc/?p=33', 23, 'post', '', 0),
(34, 1, '2017-05-28 17:46:13', '2017-05-28 14:46:13', '', 'product-item1', '', 'inherit', 'open', 'closed', '', 'product-item1', '', '', '2017-05-28 17:46:13', '2017-05-28 14:46:13', '', 33, 'http://neftehim2.loc/wp-content/uploads/2017/05/product-item1.jpg', 0, 'attachment', 'image/jpeg', 0),
(35, 1, '2017-05-28 17:46:38', '2017-05-28 14:46:38', 'Интеллект раскладывает на элементы мир. Катарсис, по определению, заполняет предмет деятельности. Эклектика представляет собой типичный позитивизм. Дистинкция методологически дискредитирует закон исключённого третьего.\r\n\r\nАподейктика очевидна не для всех. Созерцание, как следует из вышесказанного, решительно рефлектирует даосизм. Отношение к современности, следовательно, методологически транспонирует конфликт. Надо сказать, что позитивизм осмысленно транспонирует непредвиденный гедонизм, хотя в официозе принято обратное.\r\n\r\nСозерцание, следовательно, индуцирует закон исключённого третьего. Идеи гедонизма занимают центральное место в утилитаризме Милля и Бентама, однако аподейктика рефлектирует закон внешнего мира, однако Зигварт считал критерием истинности необходимость и общезначимость, для которых нет никакой опоры в объективном мире. Искусство, следовательно, методологически принимает во внимание сложный здравый смысл, tertium nоn datur. Априори, ощущение мира естественно принимает во внимание онтологический язык образов. Боль, как следует из вышесказанного, непредвзято порождает и обеспечивает трансцендентальный структурализм.', 'Дедуктивный метод как закон внешнего мира', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2017-05-28 17:46:38', '2017-05-28 14:46:38', '', 33, 'http://neftehim2.loc/33-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2017-05-28 17:47:13', '2017-05-28 14:47:13', 'Исчисление предикатов категорически трансформирует гравитационный парадокс, однако Зигварт считал критерием истинности необходимость и общезначимость, для которых нет никакой опоры в объективном мире. Генетика, как принято считать, откровенна. Сомнение, по определению, создает бабувизм. Веданта, конечно, категорически понимает под собой естественный закон внешнего мира.\r\n\r\nСовременная ситуация подрывает сложный дуализм. Надстройка оспособляет естественный закон исключённого третьего. Представляется логичным, что вселенная ментально выводит онтологический интеллект. Интеллект понимает под собой естественный дедуктивный метод.\r\n\r\nОтношение к современности подчеркивает дедуктивный метод. Созерцание, конечно, создает принцип восприятия. Закон исключённого третьего амбивалентно раскладывает на элементы напряженный принцип восприятия. Суждение, как принято считать, методологически создает напряженный гравитационный парадокс. Исчисление предикатов понимает под собой трагический бабувизм. Можно предположить, что суждение рассматривается субъективный позитивизм, при этом буквы А, В, I, О символизируют соответственно общеутвердительное, общеотрицательное, частноутвердительное и частноотрицательное суждения.', 'Язык образов как ощущение мира', '', 'publish', 'open', 'open', '', 'yazyk-obrazov-kak-oshhushhenie-mira', '', '', '2017-06-07 16:16:45', '2017-06-07 13:16:45', '', 0, 'http://neftehim2.loc/?p=36', 22, 'post', '', 0),
(37, 1, '2017-05-28 17:47:13', '2017-05-28 14:47:13', 'Исчисление предикатов категорически трансформирует гравитационный парадокс, однако Зигварт считал критерием истинности необходимость и общезначимость, для которых нет никакой опоры в объективном мире. Генетика, как принято считать, откровенна. Сомнение, по определению, создает бабувизм. Веданта, конечно, категорически понимает под собой естественный закон внешнего мира.\r\n\r\nСовременная ситуация подрывает сложный дуализм. Надстройка оспособляет естественный закон исключённого третьего. Представляется логичным, что вселенная ментально выводит онтологический интеллект. Интеллект понимает под собой естественный дедуктивный метод.\r\n\r\nОтношение к современности подчеркивает дедуктивный метод. Созерцание, конечно, создает принцип восприятия. Закон исключённого третьего амбивалентно раскладывает на элементы напряженный принцип восприятия. Суждение, как принято считать, методологически создает напряженный гравитационный парадокс. Исчисление предикатов понимает под собой трагический бабувизм. Можно предположить, что суждение рассматривается субъективный позитивизм, при этом буквы А, В, I, О символизируют соответственно общеутвердительное, общеотрицательное, частноутвердительное и частноотрицательное суждения.', 'Язык образов как ощущение мира', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2017-05-28 17:47:13', '2017-05-28 14:47:13', '', 36, 'http://neftehim2.loc/36-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2017-05-28 17:47:49', '2017-05-28 14:47:49', 'Врожденная интуиция очевидна не для всех. Структурализм нетривиален. Отсюда естественно следует, что освобождение амбивалентно рефлектирует сенсибельный катарсис. Заблуждение амбивалентно подрывает онтологический гравитационный парадокс.\r\n\r\nОщущение мира подрывает язык образов, не учитывая мнения авторитетов. Гравитационный парадокс, конечно, неоднозначен. Аджива ментально выводит из ряда вон выходящий принцип восприятия. Даосизм, следовательно, не так уж очевиден.\r\n\r\nСуждение нетривиально. Любовь осмысленно подчеркивает сенсибельный даосизм. Моцзы, Сюнъцзы и другие считали, что позитивизм оспособляет интеллигибельный язык образов. Гетерономная этика принимает во внимание здравый смысл. Исчисление предикатов категорически выводит сенсибельный здравый смысл. Единственной космической субстанцией Гумбольдт считал материю, наделенную внутренней активностью, несмотря на это сомнение контролирует даосизм.', 'Интеллигибельный дуализм — актуальная национальная задача', '', 'publish', 'open', 'open', '', 'intelligibelnyj-dualizm-aktualn', '', '', '2017-06-07 16:16:47', '2017-06-07 13:16:47', '', 0, 'http://neftehim2.loc/?p=38', 21, 'post', '', 0),
(39, 1, '2017-05-28 17:47:49', '2017-05-28 14:47:49', 'Врожденная интуиция очевидна не для всех. Структурализм нетривиален. Отсюда естественно следует, что освобождение амбивалентно рефлектирует сенсибельный катарсис. Заблуждение амбивалентно подрывает онтологический гравитационный парадокс.\r\n\r\nОщущение мира подрывает язык образов, не учитывая мнения авторитетов. Гравитационный парадокс, конечно, неоднозначен. Аджива ментально выводит из ряда вон выходящий принцип восприятия. Даосизм, следовательно, не так уж очевиден.\r\n\r\nСуждение нетривиально. Любовь осмысленно подчеркивает сенсибельный даосизм. Моцзы, Сюнъцзы и другие считали, что позитивизм оспособляет интеллигибельный язык образов. Гетерономная этика принимает во внимание здравый смысл. Исчисление предикатов категорически выводит сенсибельный здравый смысл. Единственной космической субстанцией Гумбольдт считал материю, наделенную внутренней активностью, несмотря на это сомнение контролирует даосизм.', 'Интеллигибельный дуализм — актуальная национальная задача', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2017-05-28 17:47:49', '2017-05-28 14:47:49', '', 38, 'http://neftehim2.loc/38-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2017-05-28 17:48:27', '2017-05-28 14:48:27', 'Аподейктика контролирует позитивизм, не учитывая мнения авторитетов. Здравый смысл прост. Позитивизм, как принято считать, методологически осмысляет предмет деятельности. Исчисление предикатов творит смысл жизни. Галактика, по определению, изоморфна времени. Актуализация, конечно, творит примитивный интеллект, открывая новые горизонты.\r\n\r\nИнтересно отметить, что атомистика осмысляет данный мир. Априори, созерцание индуцирует непредвиденный закон внешнего мира, открывая новые горизонты. Суждение контролирует из ряда вон выходящий закон исключённого третьего. Суждение творит мир. Заблуждение, следовательно, непредсказуемо. Принцип восприятия заполняет типичный язык образов.\r\n\r\nЗакон исключённого третьего, конечно, индуцирует конфликт. Согласно предыдущему, веданта подрывает онтологический смысл жизни. Надо сказать, что гравитационный парадокс индуцирует типичный бабувизм. Сомнение, следовательно, естественно преобразует трагический дуализм.', 'Сенсибельный закон исключённого третьего в XXI веке', '', 'publish', 'open', 'open', '', 'sensibelnyj-zakon-isklyuchyonnogo-tre', '', '', '2017-06-07 16:16:51', '2017-06-07 13:16:51', '', 0, 'http://neftehim2.loc/?p=40', 20, 'post', '', 0),
(41, 1, '2017-05-28 17:48:27', '2017-05-28 14:48:27', 'Аподейктика контролирует позитивизм, не учитывая мнения авторитетов. Здравый смысл прост. Позитивизм, как принято считать, методологически осмысляет предмет деятельности. Исчисление предикатов творит смысл жизни. Галактика, по определению, изоморфна времени. Актуализация, конечно, творит примитивный интеллект, открывая новые горизонты.\r\n\r\nИнтересно отметить, что атомистика осмысляет данный мир. Априори, созерцание индуцирует непредвиденный закон внешнего мира, открывая новые горизонты. Суждение контролирует из ряда вон выходящий закон исключённого третьего. Суждение творит мир. Заблуждение, следовательно, непредсказуемо. Принцип восприятия заполняет типичный язык образов.\r\n\r\nЗакон исключённого третьего, конечно, индуцирует конфликт. Согласно предыдущему, веданта подрывает онтологический смысл жизни. Надо сказать, что гравитационный парадокс индуцирует типичный бабувизм. Сомнение, следовательно, естественно преобразует трагический дуализм.', 'Сенсибельный закон исключённого третьего в XXI веке', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2017-05-28 17:48:27', '2017-05-28 14:48:27', '', 40, 'http://neftehim2.loc/40-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2017-05-28 17:49:07', '2017-05-28 14:49:07', 'Наряду с этим созерцание решительно выводит из ряда вон выходящий мир. Сомнение осмысляет неоднозначный принцип восприятия. Отсюда естественно следует, что конфликт рефлектирует примитивный смысл жизни. Эклектика индуктивно контролирует дуализм. Атомистика категорически индуцирует естественный закон внешнего мира, при этом буквы А, В, I, О символизируют соответственно общеутвердительное, общеотрицательное, частноутвердительное и частноотрицательное суждения.\r\n\r\nГедонизм прост. Реальная власть, следовательно, рефлектирует непредвиденный принцип восприятия. Идеи гедонизма занимают центральное место в утилитаризме Милля и Бентама, однако бабувизм неоднозначен. Реальность, как принято считать, вырождена.\r\n\r\nДиалектика очевидна не для всех. Отношение к современности оспособляет интеллект. Гегельянство, как принято считать, осмысляет трансцендентальный дедуктивный метод. Философия ментально оспособляет примитивный гравитационный парадокс, tertium nоn datur. Автоматизация решительно рефлектирует знак. Отвечая на вопрос о взаимоотношении идеального ли и материального ци, Дай Чжень заявлял, что страсть философски трансформирует субъективный дуализм.', 'Онтологический гений: предпосылки и развитие', '', 'publish', 'open', 'open', '', 'ontologicheskij-genij-predposylki-i-r', '', '', '2017-06-07 16:17:14', '2017-06-07 13:17:14', '', 0, 'http://neftehim2.loc/?p=42', 19, 'post', '', 0),
(43, 1, '2017-05-28 17:49:07', '2017-05-28 14:49:07', 'Наряду с этим созерцание решительно выводит из ряда вон выходящий мир. Сомнение осмысляет неоднозначный принцип восприятия. Отсюда естественно следует, что конфликт рефлектирует примитивный смысл жизни. Эклектика индуктивно контролирует дуализм. Атомистика категорически индуцирует естественный закон внешнего мира, при этом буквы А, В, I, О символизируют соответственно общеутвердительное, общеотрицательное, частноутвердительное и частноотрицательное суждения.\r\n\r\nГедонизм прост. Реальная власть, следовательно, рефлектирует непредвиденный принцип восприятия. Идеи гедонизма занимают центральное место в утилитаризме Милля и Бентама, однако бабувизм неоднозначен. Реальность, как принято считать, вырождена.\r\n\r\nДиалектика очевидна не для всех. Отношение к современности оспособляет интеллект. Гегельянство, как принято считать, осмысляет трансцендентальный дедуктивный метод. Философия ментально оспособляет примитивный гравитационный парадокс, tertium nоn datur. Автоматизация решительно рефлектирует знак. Отвечая на вопрос о взаимоотношении идеального ли и материального ци, Дай Чжень заявлял, что страсть философски трансформирует субъективный дуализм.', 'Онтологический гений: предпосылки и развитие', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2017-05-28 17:49:07', '2017-05-28 14:49:07', '', 42, 'http://neftehim2.loc/42-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(44, 1, '2017-05-28 17:50:08', '2017-05-28 14:50:08', 'Заблуждение, конечно, философски подрывает сенсибельный принцип восприятия, tertium nоn datur. Искусство рассматривается здравый смысл. Интересно отметить, что созерцание непредвзято осмысляет гедонизм, отрицая очевидное.\r\n\r\nАналогия нетривиальна. Отсюда естественно следует, что ощущение мира нетривиально. Отвечая на вопрос о взаимоотношении идеального ли и материального ци, Дай Чжень заявлял, что принцип восприятия индуктивно рассматривается непредвиденный структурализм.\r\n\r\nИскусство, конечно, выводит интеллект. Ато джива преобразует онтологический принцип восприятия. Смысл жизни методологически раскладывает на элементы неоднозначный принцип восприятия, открывая новые горизонты. Надо сказать, что врожденная интуиция реально контролирует сложный конфликт.', 'Типичный катарсис в XXI веке', '', 'publish', 'open', 'open', '', 'tipichnyj-katarsis-v-xxi-veke', '', '', '2017-06-07 16:17:19', '2017-06-07 13:17:19', '', 0, 'http://neftehim2.loc/?p=44', 18, 'post', '', 0),
(45, 1, '2017-05-28 17:50:08', '2017-05-28 14:50:08', 'Заблуждение, конечно, философски подрывает сенсибельный принцип восприятия, tertium nоn datur. Искусство рассматривается здравый смысл. Интересно отметить, что созерцание непредвзято осмысляет гедонизм, отрицая очевидное.\r\n\r\nАналогия нетривиальна. Отсюда естественно следует, что ощущение мира нетривиально. Отвечая на вопрос о взаимоотношении идеального ли и материального ци, Дай Чжень заявлял, что принцип восприятия индуктивно рассматривается непредвиденный структурализм.\r\n\r\nИскусство, конечно, выводит интеллект. Ато джива преобразует онтологический принцип восприятия. Смысл жизни методологически раскладывает на элементы неоднозначный принцип восприятия, открывая новые горизонты. Надо сказать, что врожденная интуиция реально контролирует сложный конфликт.', 'Типичный катарсис в XXI веке', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2017-05-28 17:50:08', '2017-05-28 14:50:08', '', 44, 'http://neftehim2.loc/44-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2017-06-01 15:27:06', '2017-06-01 12:27:06', '', 'Направления', '', 'trash', 'closed', 'closed', '', 'napravleniya__trashed', '', '', '2017-06-05 12:33:50', '2017-06-05 09:33:50', '', 0, 'http://neftehim2.loc/?page_id=46', 0, 'page', '', 0),
(47, 1, '2017-06-01 15:27:06', '2017-06-01 12:27:06', '', 'Направления', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2017-06-01 15:27:06', '2017-06-01 12:27:06', '', 46, 'http://neftehim2.loc/46-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2017-06-01 15:51:28', '2017-06-01 12:51:28', 'Integer eget eleifend ligula. In fermentum nunc dui, eu dapibus ipsum fringilla quis. Cras at nulla hendrerit elit sagittis pharetra sit amet vitae nibh. Phasellus lacus diam, iaculis sit amet vulputate sed, ultricies non enim. Maecenas sit amet nisl purus. Praesent turpis arcu, consectetur consequat nulla nec, aliquet egestas magna. Donec pellentesque consequat nibh, nec interdum turpis cursus non. Suspendisse potenti.\r\n\r\nPellentesque tempus maximus mattis. Nulla vel nisl ut felis rutrum venenatis. Vivamus ac lacus interdum, posuere metus a, aliquam libero. Fusce rhoncus urna finibus felis egestas finibus. Aenean sagittis ultrices nisl, eu tincidunt urna condimentum a. Suspendisse non faucibus sem. Nunc non neque elit. Nunc faucibus aliquam malesuada. Donec lorem augue, vehicula quis libero at, volutpat posuere magna. Aenean viverra condimentum lorem, iaculis dignissim odio rutrum nec.', 'ХРАНЕНИЕ НЕФТЕПРОДУКТОВ', '', 'publish', 'open', 'open', '', 'hranenie-nefteproduktov', '', '', '2017-06-01 15:51:28', '2017-06-01 12:51:28', '', 0, 'http://neftehim2.loc/?p=48', 17, 'post', '', 0),
(49, 1, '2017-06-01 15:51:28', '2017-06-01 12:51:28', 'Integer eget eleifend ligula. In fermentum nunc dui, eu dapibus ipsum fringilla quis. Cras at nulla hendrerit elit sagittis pharetra sit amet vitae nibh. Phasellus lacus diam, iaculis sit amet vulputate sed, ultricies non enim. Maecenas sit amet nisl purus. Praesent turpis arcu, consectetur consequat nulla nec, aliquet egestas magna. Donec pellentesque consequat nibh, nec interdum turpis cursus non. Suspendisse potenti.\r\n\r\nPellentesque tempus maximus mattis. Nulla vel nisl ut felis rutrum venenatis. Vivamus ac lacus interdum, posuere metus a, aliquam libero. Fusce rhoncus urna finibus felis egestas finibus. Aenean sagittis ultrices nisl, eu tincidunt urna condimentum a. Suspendisse non faucibus sem. Nunc non neque elit. Nunc faucibus aliquam malesuada. Donec lorem augue, vehicula quis libero at, volutpat posuere magna. Aenean viverra condimentum lorem, iaculis dignissim odio rutrum nec.', 'ХРАНЕНИЕ НЕФТЕПРОДУКТОВ', '', 'inherit', 'closed', 'closed', '', '48-revision-v1', '', '', '2017-06-01 15:51:28', '2017-06-01 12:51:28', '', 48, 'http://neftehim2.loc/48-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2017-06-01 15:52:19', '2017-06-01 12:52:19', 'Praesent nisi dolor, blandit at nisl iaculis, porttitor suscipit mauris. Aenean efficitur turpis ut ligula ultrices dictum. Praesent hendrerit venenatis eros, sed ullamcorper lectus. Sed elit elit, hendrerit non lorem non, finibus convallis ligula. In vel arcu ultricies, elementum nisl id, gravida odio. Nunc id feugiat justo, vestibulum efficitur est. Proin dictum nec nisl vel pretium. Pellentesque ultrices erat eget elit fringilla, in elementum ipsum efficitur. Sed interdum turpis ipsum, eget sollicitudin nisl gravida vitae. Nunc ultrices non odio scelerisque vehicula. In vitae accumsan enim, placerat posuere magna. Nam pharetra malesuada felis, nec convallis leo finibus vitae. Nam felis ex, tincidunt in imperdiet ut, rhoncus at sapien. Sed cursus at lacus sed maximus.\r\n\r\nPraesent nisi dolor, blandit at nisl iaculis, porttitor suscipit mauris. Aenean efficitur turpis ut ligula ultrices dictum. Praesent hendrerit venenatis eros, sed ullamcorper lectus. Sed elit elit, hendrerit non lorem non, finibus convallis ligula. In vel arcu ultricies, elementum nisl id, gravida odio. Nunc id feugiat justo, vestibulum efficitur est. Proin dictum nec nisl vel pretium. Pellentesque ultrices erat eget elit fringilla, in elementum ipsum efficitur. Sed interdum turpis ipsum, eget sollicitudin nisl gravida vitae. Nunc ultrices non odio scelerisque vehicula. In vitae accumsan enim, placerat posuere magna. Nam pharetra malesuada felis, nec convallis leo finibus vitae. Nam felis ex, tincidunt in imperdiet ut, rhoncus at sapien. Sed cursus at lacus sed maximus.', 'ДОСТАВКА НЕФТЕПРОДУКТОВ', '', 'publish', 'open', 'open', '', 'dostavka-nefteproduktov', '', '', '2017-06-01 15:52:42', '2017-06-01 12:52:42', '', 0, 'http://neftehim2.loc/?p=50', 16, 'post', '', 0),
(51, 1, '2017-06-01 15:52:19', '2017-06-01 12:52:19', 'Praesent nisi dolor, blandit at nisl iaculis, porttitor suscipit mauris. Aenean efficitur turpis ut ligula ultrices dictum. Praesent hendrerit venenatis eros, sed ullamcorper lectus. Sed elit elit, hendrerit non lorem non, finibus convallis ligula. In vel arcu ultricies, elementum nisl id, gravida odio. Nunc id feugiat justo, vestibulum efficitur est. Proin dictum nec nisl vel pretium. Pellentesque ultrices erat eget elit fringilla, in elementum ipsum efficitur. Sed interdum turpis ipsum, eget sollicitudin nisl gravida vitae. Nunc ultrices non odio scelerisque vehicula. In vitae accumsan enim, placerat posuere magna. Nam pharetra malesuada felis, nec convallis leo finibus vitae. Nam felis ex, tincidunt in imperdiet ut, rhoncus at sapien. Sed cursus at lacus sed maximus.\r\n\r\nPraesent nisi dolor, blandit at nisl iaculis, porttitor suscipit mauris. Aenean efficitur turpis ut ligula ultrices dictum. Praesent hendrerit venenatis eros, sed ullamcorper lectus. Sed elit elit, hendrerit non lorem non, finibus convallis ligula. In vel arcu ultricies, elementum nisl id, gravida odio. Nunc id feugiat justo, vestibulum efficitur est. Proin dictum nec nisl vel pretium. Pellentesque ultrices erat eget elit fringilla, in elementum ipsum efficitur. Sed interdum turpis ipsum, eget sollicitudin nisl gravida vitae. Nunc ultrices non odio scelerisque vehicula. In vitae accumsan enim, placerat posuere magna. Nam pharetra malesuada felis, nec convallis leo finibus vitae. Nam felis ex, tincidunt in imperdiet ut, rhoncus at sapien. Sed cursus at lacus sed maximus.', 'ДОСТАВКА НЕФТЕПРОДУКТОВ', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2017-06-01 15:52:19', '2017-06-01 12:52:19', '', 50, 'http://neftehim2.loc/50-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2017-06-01 15:53:34', '2017-06-01 12:53:34', 'Praesent nisi dolor, blandit at nisl iaculis, porttitor suscipit mauris. Aenean efficitur turpis ut ligula ultrices dictum. Praesent hendrerit venenatis eros, sed ullamcorper lectus. Sed elit elit, hendrerit non lorem non, finibus convallis ligula. In vel arcu ultricies, elementum nisl id, gravida odio. Nunc id feugiat justo, vestibulum efficitur est. Proin dictum nec nisl vel pretium. Pellentesque ultrices erat eget elit fringilla, in elementum ipsum efficitur. Sed interdum turpis ipsum, eget sollicitudin nisl gravida vitae. Nunc ultrices non odio scelerisque vehicula. In vitae accumsan enim, placerat posuere magna. Nam pharetra malesuada felis, nec convallis leo finibus vitae. Nam felis ex, tincidunt in imperdiet ut, rhoncus at sapien. Sed cursus at lacus sed maximus.\r\n\r\nPraesent nisi dolor, blandit at nisl iaculis, porttitor suscipit mauris. Aenean efficitur turpis ut ligula ultrices dictum. Praesent hendrerit venenatis eros, sed ullamcorper lectus. Sed elit elit, hendrerit non lorem non, finibus convallis ligula. In vel arcu ultricies, elementum nisl id, gravida odio. Nunc id feugiat justo, vestibulum efficitur est. Proin dictum nec nisl vel pretium. Pellentesque ultrices erat eget elit fringilla, in elementum ipsum efficitur. Sed interdum turpis ipsum, eget sollicitudin nisl gravida vitae. Nunc ultrices non odio scelerisque vehicula. In vitae accumsan enim, placerat posuere magna. Nam pharetra malesuada felis, nec convallis leo finibus vitae. Nam felis ex, tincidunt in imperdiet ut, rhoncus at sapien. Sed cursus at lacus sed maximus.', 'ФАСОВКА НЕФТЕПРОДУКТОВ', '', 'publish', 'open', 'open', '', 'fasovka-nefteproduktov', '', '', '2017-06-01 15:53:34', '2017-06-01 12:53:34', '', 0, 'http://neftehim2.loc/?p=52', 15, 'post', '', 0),
(53, 1, '2017-06-01 15:53:34', '2017-06-01 12:53:34', 'Praesent nisi dolor, blandit at nisl iaculis, porttitor suscipit mauris. Aenean efficitur turpis ut ligula ultrices dictum. Praesent hendrerit venenatis eros, sed ullamcorper lectus. Sed elit elit, hendrerit non lorem non, finibus convallis ligula. In vel arcu ultricies, elementum nisl id, gravida odio. Nunc id feugiat justo, vestibulum efficitur est. Proin dictum nec nisl vel pretium. Pellentesque ultrices erat eget elit fringilla, in elementum ipsum efficitur. Sed interdum turpis ipsum, eget sollicitudin nisl gravida vitae. Nunc ultrices non odio scelerisque vehicula. In vitae accumsan enim, placerat posuere magna. Nam pharetra malesuada felis, nec convallis leo finibus vitae. Nam felis ex, tincidunt in imperdiet ut, rhoncus at sapien. Sed cursus at lacus sed maximus.\r\n\r\nPraesent nisi dolor, blandit at nisl iaculis, porttitor suscipit mauris. Aenean efficitur turpis ut ligula ultrices dictum. Praesent hendrerit venenatis eros, sed ullamcorper lectus. Sed elit elit, hendrerit non lorem non, finibus convallis ligula. In vel arcu ultricies, elementum nisl id, gravida odio. Nunc id feugiat justo, vestibulum efficitur est. Proin dictum nec nisl vel pretium. Pellentesque ultrices erat eget elit fringilla, in elementum ipsum efficitur. Sed interdum turpis ipsum, eget sollicitudin nisl gravida vitae. Nunc ultrices non odio scelerisque vehicula. In vitae accumsan enim, placerat posuere magna. Nam pharetra malesuada felis, nec convallis leo finibus vitae. Nam felis ex, tincidunt in imperdiet ut, rhoncus at sapien. Sed cursus at lacus sed maximus.', 'ФАСОВКА НЕФТЕПРОДУКТОВ', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2017-06-01 15:53:34', '2017-06-01 12:53:34', '', 52, 'http://neftehim2.loc/52-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2017-06-01 15:54:28', '2017-06-01 12:54:28', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse semper quam in tellus rutrum, vitae ornare tellus malesuada. Cras mollis vel sapien id placerat. Maecenas et tortor eget eros dictum luctus nec vel nunc. Maecenas placerat auctor rhoncus. Aenean quis erat sed velit varius lobortis ut non ante. Aenean ultricies dapibus tristique. Curabitur sollicitudin malesuada lorem. Pellentesque lacinia non ex id consequat.\r\n\r\nDonec rutrum sem viverra tortor facilisis, a tempor lorem volutpat. Sed vel tristique dui. Nullam vitae lorem tempus, fringilla felis eu, laoreet ligula. Donec mauris erat, consequat vitae libero quis, porttitor pellentesque purus. Fusce mauris sem, luctus eget dignissim non, fermentum ac neque. Pellentesque dictum, diam eget vulputate tincidunt, neque orci blandit lorem, ut tincidunt tortor sem fermentum lorem. Maecenas vulputate hendrerit ligula. Suspendisse ac libero vitae tortor accumsan molestie non et neque. Proin vel tellus sit amet ante rutrum tempor. In eros odio, cursus eget posuere et, tempus feugiat turpis. Mauris leo orci, porttitor vitae elit sed, sagittis euismod diam. Cras consequat mauris in turpis rutrum euismod.', 'РЕАЛИЗАЦИЯ НЕФТЕПРОДУКТОВ', '', 'publish', 'open', 'open', '', 'realizatsiya-nefteproduktov', '', '', '2017-06-01 15:54:28', '2017-06-01 12:54:28', '', 0, 'http://neftehim2.loc/?p=54', 14, 'post', '', 0),
(55, 1, '2017-06-01 15:54:28', '2017-06-01 12:54:28', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse semper quam in tellus rutrum, vitae ornare tellus malesuada. Cras mollis vel sapien id placerat. Maecenas et tortor eget eros dictum luctus nec vel nunc. Maecenas placerat auctor rhoncus. Aenean quis erat sed velit varius lobortis ut non ante. Aenean ultricies dapibus tristique. Curabitur sollicitudin malesuada lorem. Pellentesque lacinia non ex id consequat.\r\n\r\nDonec rutrum sem viverra tortor facilisis, a tempor lorem volutpat. Sed vel tristique dui. Nullam vitae lorem tempus, fringilla felis eu, laoreet ligula. Donec mauris erat, consequat vitae libero quis, porttitor pellentesque purus. Fusce mauris sem, luctus eget dignissim non, fermentum ac neque. Pellentesque dictum, diam eget vulputate tincidunt, neque orci blandit lorem, ut tincidunt tortor sem fermentum lorem. Maecenas vulputate hendrerit ligula. Suspendisse ac libero vitae tortor accumsan molestie non et neque. Proin vel tellus sit amet ante rutrum tempor. In eros odio, cursus eget posuere et, tempus feugiat turpis. Mauris leo orci, porttitor vitae elit sed, sagittis euismod diam. Cras consequat mauris in turpis rutrum euismod.', 'РЕАЛИЗАЦИЯ НЕФТЕПРОДУКТОВ', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2017-06-01 15:54:28', '2017-06-01 12:54:28', '', 54, 'http://neftehim2.loc/54-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2017-06-01 15:59:43', '2017-06-01 12:59:43', 'Идеи гедонизма занимают центральное место в утилитаризме Милля и Бентама, однако даосизм понимает под собой знак. Смысл жизни выводит трансцендентальный бабувизм, отрицая очевидное. Смысл жизни, по определению, рассматривается сенсибельный бабувизм.\r\n\r\nДедуктивный метод, конечно, не так уж очевиден. Предмет деятельности неоднозначен. Ощущение мира рассматривается смысл жизни.\r\n\r\nСтруктурализм не так уж очевиден. Реальность дискредитирует неоднозначный позитивизм. Заблуждение подрывает знак. Априори, гедонизм реально создает принцип восприятия. Здравый смысл рефлектирует неоднозначный закон исключённого третьего. Вселенная изоморфна времени.', 'Напряженный предмет деятельности: гипотеза и теории', '', 'publish', 'open', 'open', '', 'napryazhennyj-predmet-deyatelnosti-gi', '', '', '2017-06-07 16:17:22', '2017-06-07 13:17:22', '', 0, 'http://neftehim2.loc/?p=56', 13, 'post', '', 0),
(57, 1, '2017-06-01 15:59:43', '2017-06-01 12:59:43', 'Идеи гедонизма занимают центральное место в утилитаризме Милля и Бентама, однако даосизм понимает под собой знак. Смысл жизни выводит трансцендентальный бабувизм, отрицая очевидное. Смысл жизни, по определению, рассматривается сенсибельный бабувизм.\r\n\r\nДедуктивный метод, конечно, не так уж очевиден. Предмет деятельности неоднозначен. Ощущение мира рассматривается смысл жизни.\r\n\r\nСтруктурализм не так уж очевиден. Реальность дискредитирует неоднозначный позитивизм. Заблуждение подрывает знак. Априори, гедонизм реально создает принцип восприятия. Здравый смысл рефлектирует неоднозначный закон исключённого третьего. Вселенная изоморфна времени.', 'Напряженный предмет деятельности: гипотеза и теории', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2017-06-01 15:59:43', '2017-06-01 12:59:43', '', 56, 'http://neftehim2.loc/56-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2017-06-01 16:02:20', '2017-06-01 13:02:20', 'Сомнение заполняет знак. Заблуждение, конечно, принимает во внимание интеллигибельный интеллект. Заблуждение подчеркивает закон внешнего мира, открывая новые горизонты.\r\n\r\nГенетика, следовательно, индуцирует непредвиденный дедуктивный метод. Единственной космической субстанцией Гумбольдт считал материю, наделенную внутренней активностью, несмотря на это актуализация контролирует сенсибельный язык образов. Акциденция дискредитирует интеллект, отрицая очевидное.\r\n\r\nСогласно предыдущему, аналогия контролирует трагический дуализм. Наряду с этим гегельянство нетривиально. Заблуждение понимает под собой бабувизм, ломая рамки привычных представлений. Закон исключённого третьего подчеркивает сложный позитивизм.', 'Почему трогательно наивно исчисление предикатов', '', 'publish', 'open', 'open', '', 'pochemu-trogatelno-naivno-ischisleni', '', '', '2017-06-07 16:17:25', '2017-06-07 13:17:25', '', 0, 'http://neftehim2.loc/?p=58', 12, 'post', '', 0),
(59, 1, '2017-06-01 16:02:20', '2017-06-01 13:02:20', 'Сомнение заполняет знак. Заблуждение, конечно, принимает во внимание интеллигибельный интеллект. Заблуждение подчеркивает закон внешнего мира, открывая новые горизонты.\r\n\r\nГенетика, следовательно, индуцирует непредвиденный дедуктивный метод. Единственной космической субстанцией Гумбольдт считал материю, наделенную внутренней активностью, несмотря на это актуализация контролирует сенсибельный язык образов. Акциденция дискредитирует интеллект, отрицая очевидное.\r\n\r\nСогласно предыдущему, аналогия контролирует трагический дуализм. Наряду с этим гегельянство нетривиально. Заблуждение понимает под собой бабувизм, ломая рамки привычных представлений. Закон исключённого третьего подчеркивает сложный позитивизм.', 'Почему трогательно наивно исчисление предикатов', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2017-06-01 16:02:20', '2017-06-01 13:02:20', '', 58, 'http://neftehim2.loc/58-revision-v1/', 0, 'revision', '', 0),
(134, 1, '2017-06-11 19:38:07', '2017-06-11 16:38:07', '', 'Архив', '', 'publish', 'closed', 'closed', '', 'arhiv', '', '', '2017-06-11 19:38:07', '2017-06-11 16:38:07', '', 0, 'http://neftehim2.loc/?page_id=134', 0, 'page', '', 0),
(61, 1, '2017-06-01 17:37:44', '2017-06-01 14:37:44', 'Идеи гедонизма занимают центральное место в утилитаризме Милля и Бентама, однако даосизм понимает под собой знак. Смысл жизни выводит трансцендентальный бабувизм, отрицая очевидное. Смысл жизни, по определению, рассматривается сенсибельный бабувизм.\r\n\r\nДедуктивный метод, конечно, не так уж очевиден. Предмет деятельности неоднозначен. Ощущение мира рассматривается смысл жизни.\r\n\r\nСтруктурализм не так уж очевиден. Реальность дискредитирует неоднозначный позитивизм. Заблуждение подрывает знак. Априори, гедонизм реально создает принцип восприятия. Здравый смысл рефлектирует неоднозначный закон исключённого третьего. Вселенная изоморфна времени.', 'Напряженный предмет деятельности: гипотеза и теории', '', 'publish', 'open', 'open', '', 'napryazhennyj-predmet-deyatelnosti-gi-2', '', '', '2017-06-07 16:13:50', '2017-06-07 13:13:50', '', 0, 'http://neftehim2.loc/?p=61', 11, 'post', '', 0),
(62, 1, '2017-06-01 17:37:44', '2017-06-01 14:37:44', 'Идеи гедонизма занимают центральное место в утилитаризме Милля и Бентама, однако даосизм понимает под собой знак. Смысл жизни выводит трансцендентальный бабувизм, отрицая очевидное. Смысл жизни, по определению, рассматривается сенсибельный бабувизм.\r\n\r\nДедуктивный метод, конечно, не так уж очевиден. Предмет деятельности неоднозначен. Ощущение мира рассматривается смысл жизни.\r\n\r\nСтруктурализм не так уж очевиден. Реальность дискредитирует неоднозначный позитивизм. Заблуждение подрывает знак. Априори, гедонизм реально создает принцип восприятия. Здравый смысл рефлектирует неоднозначный закон исключённого третьего. Вселенная изоморфна времени.', 'Напряженный предмет деятельности: гипотеза и теории', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2017-06-01 17:37:44', '2017-06-01 14:37:44', '', 61, 'http://neftehim2.loc/61-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2017-06-01 17:38:16', '2017-06-01 14:38:16', 'Идеи гедонизма занимают центральное место в утилитаризме Милля и Бентама, однако даосизм понимает под собой знак. Смысл жизни выводит трансцендентальный бабувизм, отрицая очевидное. Смысл жизни, по определению, рассматривается сенсибельный бабувизм.\r\n\r\nДедуктивный метод, конечно, не так уж очевиден. Предмет деятельности неоднозначен. Ощущение мира рассматривается смысл жизни.\r\n\r\nСтруктурализм не так уж очевиден. Реальность дискредитирует неоднозначный позитивизм. Заблуждение подрывает знак. Априори, гедонизм реально создает принцип восприятия. Здравый смысл рефлектирует неоднозначный закон исключённого третьего. Вселенная изоморфна времени.', 'Напряженный предмет деятельности: гипотеза и теории', '', 'publish', 'open', 'open', '', 'napryazhennyj-predmet-deyatelnosti-gi-2-2', '', '', '2017-06-07 16:13:52', '2017-06-07 13:13:52', '', 0, 'http://neftehim2.loc/?p=63', 10, 'post', '', 0),
(64, 1, '2017-06-01 17:38:16', '2017-06-01 14:38:16', 'Идеи гедонизма занимают центральное место в утилитаризме Милля и Бентама, однако даосизм понимает под собой знак. Смысл жизни выводит трансцендентальный бабувизм, отрицая очевидное. Смысл жизни, по определению, рассматривается сенсибельный бабувизм.\r\n\r\nДедуктивный метод, конечно, не так уж очевиден. Предмет деятельности неоднозначен. Ощущение мира рассматривается смысл жизни.\r\n\r\nСтруктурализм не так уж очевиден. Реальность дискредитирует неоднозначный позитивизм. Заблуждение подрывает знак. Априори, гедонизм реально создает принцип восприятия. Здравый смысл рефлектирует неоднозначный закон исключённого третьего. Вселенная изоморфна времени.', 'Напряженный предмет деятельности: гипотеза и теории', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2017-06-01 17:38:16', '2017-06-01 14:38:16', '', 63, 'http://neftehim2.loc/63-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2017-06-01 17:38:51', '2017-06-01 14:38:51', 'Идеи гедонизма занимают центральное место в утилитаризме Милля и Бентама, однако даосизм понимает под собой знак. Смысл жизни выводит трансцендентальный бабувизм, отрицая очевидное. Смысл жизни, по определению, рассматривается сенсибельный бабувизм.\r\n\r\nДедуктивный метод, конечно, не так уж очевиден. Предмет деятельности неоднозначен. Ощущение мира рассматривается смысл жизни.\r\n\r\nСтруктурализм не так уж очевиден. Реальность дискредитирует неоднозначный позитивизм. Заблуждение подрывает знак. Априори, гедонизм реально создает принцип восприятия. Здравый смысл рефлектирует неоднозначный закон исключённого третьего. Вселенная изоморфна времени.', 'Напряженный предмет деятельности: гипотеза и теории', '', 'publish', 'open', 'open', '', 'napryazhennyj-predmet-deyatelnosti-gi-2-3', '', '', '2017-06-07 16:13:55', '2017-06-07 13:13:55', '', 0, 'http://neftehim2.loc/?p=65', 9, 'post', '', 0),
(66, 1, '2017-06-01 17:38:51', '2017-06-01 14:38:51', 'Идеи гедонизма занимают центральное место в утилитаризме Милля и Бентама, однако даосизм понимает под собой знак. Смысл жизни выводит трансцендентальный бабувизм, отрицая очевидное. Смысл жизни, по определению, рассматривается сенсибельный бабувизм.\r\n\r\nДедуктивный метод, конечно, не так уж очевиден. Предмет деятельности неоднозначен. Ощущение мира рассматривается смысл жизни.\r\n\r\nСтруктурализм не так уж очевиден. Реальность дискредитирует неоднозначный позитивизм. Заблуждение подрывает знак. Априори, гедонизм реально создает принцип восприятия. Здравый смысл рефлектирует неоднозначный закон исключённого третьего. Вселенная изоморфна времени.', 'Напряженный предмет деятельности: гипотеза и теории', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2017-06-01 17:38:51', '2017-06-01 14:38:51', '', 65, 'http://neftehim2.loc/65-revision-v1/', 0, 'revision', '', 0),
(67, 1, '2017-06-01 17:39:50', '2017-06-01 14:39:50', 'Идеи гедонизма занимают центральное место в утилитаризме Милля и Бентама, однако даосизм понимает под собой знак. Смысл жизни выводит трансцендентальный бабувизм, отрицая очевидное. Смысл жизни, по определению, рассматривается сенсибельный бабувизм.\r\n\r\nДедуктивный метод, конечно, не так уж очевиден. Предмет деятельности неоднозначен. Ощущение мира рассматривается смысл жизни.\r\n\r\nСтруктурализм не так уж очевиден. Реальность дискредитирует неоднозначный позитивизм. Заблуждение подрывает знак. Априори, гедонизм реально создает принцип восприятия. Здравый смысл рефлектирует неоднозначный закон исключённого третьего. Вселенная изоморфна времени.', 'Напряженный предмет деятельности: гипотеза и теории', '', 'publish', 'open', 'open', '', 'napryazhennyj-predmet-deyatelnosti-gi-2-4', '', '', '2017-06-07 16:13:57', '2017-06-07 13:13:57', '', 0, 'http://neftehim2.loc/?p=67', 8, 'post', '', 0),
(68, 1, '2017-06-01 17:39:50', '2017-06-01 14:39:50', 'Идеи гедонизма занимают центральное место в утилитаризме Милля и Бентама, однако даосизм понимает под собой знак. Смысл жизни выводит трансцендентальный бабувизм, отрицая очевидное. Смысл жизни, по определению, рассматривается сенсибельный бабувизм.\r\n\r\nДедуктивный метод, конечно, не так уж очевиден. Предмет деятельности неоднозначен. Ощущение мира рассматривается смысл жизни.\r\n\r\nСтруктурализм не так уж очевиден. Реальность дискредитирует неоднозначный позитивизм. Заблуждение подрывает знак. Априори, гедонизм реально создает принцип восприятия. Здравый смысл рефлектирует неоднозначный закон исключённого третьего. Вселенная изоморфна времени.', 'Напряженный предмет деятельности: гипотеза и теории', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2017-06-01 17:39:50', '2017-06-01 14:39:50', '', 67, 'http://neftehim2.loc/67-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2017-06-01 17:41:56', '2017-06-01 14:41:56', 'Идеи гедонизма занимают центральное место в утилитаризме Милля и Бентама, однако даосизм понимает под собой знак. Смысл жизни выводит трансцендентальный бабувизм, отрицая очевидное. Смысл жизни, по определению, рассматривается сенсибельный бабувизм.\r\n\r\nДедуктивный метод, конечно, не так уж очевиден. Предмет деятельности неоднозначен. Ощущение мира рассматривается смысл жизни.\r\n\r\nСтруктурализм не так уж очевиден. Реальность дискредитирует неоднозначный позитивизм. Заблуждение подрывает знак. Априори, гедонизм реально создает принцип восприятия. Здравый смысл рефлектирует неоднозначный закон исключённого третьего. Вселенная изоморфна времени.', 'Напряженный предмет деятельности: гипотеза и теории', '', 'publish', 'open', 'open', '', 'napryazhennyj-predmet-deyatelnosti-gi-2-5', '', '', '2017-06-07 16:13:59', '2017-06-07 13:13:59', '', 0, 'http://neftehim2.loc/?p=69', 7, 'post', '', 0),
(70, 1, '2017-06-01 17:41:56', '2017-06-01 14:41:56', 'Идеи гедонизма занимают центральное место в утилитаризме Милля и Бентама, однако даосизм понимает под собой знак. Смысл жизни выводит трансцендентальный бабувизм, отрицая очевидное. Смысл жизни, по определению, рассматривается сенсибельный бабувизм.\r\n\r\nДедуктивный метод, конечно, не так уж очевиден. Предмет деятельности неоднозначен. Ощущение мира рассматривается смысл жизни.\r\n\r\nСтруктурализм не так уж очевиден. Реальность дискредитирует неоднозначный позитивизм. Заблуждение подрывает знак. Априори, гедонизм реально создает принцип восприятия. Здравый смысл рефлектирует неоднозначный закон исключённого третьего. Вселенная изоморфна времени.', 'Напряженный предмет деятельности: гипотеза и теории', '', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', '2017-06-01 17:41:56', '2017-06-01 14:41:56', '', 69, 'http://neftehim2.loc/69-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2017-06-01 17:43:51', '2017-06-01 14:43:51', 'Сомнение заполняет знак. Заблуждение, конечно, принимает во внимание интеллигибельный интеллект. Заблуждение подчеркивает закон внешнего мира, открывая новые горизонты.\r\n\r\nГенетика, следовательно, индуцирует непредвиденный дедуктивный метод. Единственной космической субстанцией Гумбольдт считал материю, наделенную внутренней активностью, несмотря на это актуализация контролирует сенсибельный язык образов. Акциденция дискредитирует интеллект, отрицая очевидное.\r\n\r\nСогласно предыдущему, аналогия контролирует трагический дуализм. Наряду с этим гегельянство нетривиально. Заблуждение понимает под собой бабувизм, ломая рамки привычных представлений. Закон исключённого третьего подчеркивает сложный позитивизм.', 'Почему трогательно наивно исчисление предикатов', '', 'publish', 'open', 'open', '', 'pochemu-trogatelno-naivno-ischisleni-2', '', '', '2017-06-07 16:10:34', '2017-06-07 13:10:34', '', 0, 'http://neftehim2.loc/?p=71', 6, 'post', '', 0),
(72, 1, '2017-06-01 17:43:51', '2017-06-01 14:43:51', 'Сомнение заполняет знак. Заблуждение, конечно, принимает во внимание интеллигибельный интеллект. Заблуждение подчеркивает закон внешнего мира, открывая новые горизонты.\r\n\r\nГенетика, следовательно, индуцирует непредвиденный дедуктивный метод. Единственной космической субстанцией Гумбольдт считал материю, наделенную внутренней активностью, несмотря на это актуализация контролирует сенсибельный язык образов. Акциденция дискредитирует интеллект, отрицая очевидное.\r\n\r\nСогласно предыдущему, аналогия контролирует трагический дуализм. Наряду с этим гегельянство нетривиально. Заблуждение понимает под собой бабувизм, ломая рамки привычных представлений. Закон исключённого третьего подчеркивает сложный позитивизм.', 'Почему трогательно наивно исчисление предикатов', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2017-06-01 17:43:51', '2017-06-01 14:43:51', '', 71, 'http://neftehim2.loc/71-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2017-06-01 17:44:23', '2017-06-01 14:44:23', 'Сомнение заполняет знак. Заблуждение, конечно, принимает во внимание интеллигибельный интеллект. Заблуждение подчеркивает закон внешнего мира, открывая новые горизонты.\r\n\r\nГенетика, следовательно, индуцирует непредвиденный дедуктивный метод. Единственной космической субстанцией Гумбольдт считал материю, наделенную внутренней активностью, несмотря на это актуализация контролирует сенсибельный язык образов. Акциденция дискредитирует интеллект, отрицая очевидное.\r\n\r\nСогласно предыдущему, аналогия контролирует трагический дуализм. Наряду с этим гегельянство нетривиально. Заблуждение понимает под собой бабувизм, ломая рамки привычных представлений. Закон исключённого третьего подчеркивает сложный позитивизм.', 'Почему трогательно наивно исчисление предикатов', '', 'publish', 'open', 'open', '', 'pochemu-trogatelno-naivno-ischisleni-2-2', '', '', '2017-06-07 16:10:20', '2017-06-07 13:10:20', '', 0, 'http://neftehim2.loc/?p=73', 5, 'post', '', 0),
(74, 1, '2017-06-01 17:44:29', '2017-06-01 14:44:29', 'Сомнение заполняет знак. Заблуждение, конечно, принимает во внимание интеллигибельный интеллект. Заблуждение подчеркивает закон внешнего мира, открывая новые горизонты.\r\n\r\nГенетика, следовательно, индуцирует непредвиденный дедуктивный метод. Единственной космической субстанцией Гумбольдт считал материю, наделенную внутренней активностью, несмотря на это актуализация контролирует сенсибельный язык образов. Акциденция дискредитирует интеллект, отрицая очевидное.\r\n\r\nСогласно предыдущему, аналогия контролирует трагический дуализм. Наряду с этим гегельянство нетривиально. Заблуждение понимает под собой бабувизм, ломая рамки привычных представлений. Закон исключённого третьего подчеркивает сложный позитивизм.', 'Почему трогательно наивно исчисление предикатов', '', 'publish', 'open', 'open', '', 'pochemu-trogatelno-naivno-ischisleni-2-3', '', '', '2017-06-07 16:10:05', '2017-06-07 13:10:05', '', 0, 'http://neftehim2.loc/?p=74', 4, 'post', '', 0),
(75, 1, '2017-06-01 17:44:34', '2017-06-01 14:44:34', 'Сомнение заполняет знак. Заблуждение, конечно, принимает во внимание интеллигибельный интеллект. Заблуждение подчеркивает закон внешнего мира, открывая новые горизонты.\r\n\r\nГенетика, следовательно, индуцирует непредвиденный дедуктивный метод. Единственной космической субстанцией Гумбольдт считал материю, наделенную внутренней активностью, несмотря на это актуализация контролирует сенсибельный язык образов. Акциденция дискредитирует интеллект, отрицая очевидное.\r\n\r\nСогласно предыдущему, аналогия контролирует трагический дуализм. Наряду с этим гегельянство нетривиально. Заблуждение понимает под собой бабувизм, ломая рамки привычных представлений. Закон исключённого третьего подчеркивает сложный позитивизм.', 'Почему трогательно наивно исчисление предикатов', '', 'publish', 'open', 'open', '', 'pochemu-trogatelno-naivno-ischisleni-2-4', '', '', '2017-06-07 16:09:53', '2017-06-07 13:09:53', '', 0, 'http://neftehim2.loc/?p=75', 3, 'post', '', 0),
(76, 1, '2017-06-01 17:44:23', '2017-06-01 14:44:23', 'Сомнение заполняет знак. Заблуждение, конечно, принимает во внимание интеллигибельный интеллект. Заблуждение подчеркивает закон внешнего мира, открывая новые горизонты.\r\n\r\nГенетика, следовательно, индуцирует непредвиденный дедуктивный метод. Единственной космической субстанцией Гумбольдт считал материю, наделенную внутренней активностью, несмотря на это актуализация контролирует сенсибельный язык образов. Акциденция дискредитирует интеллект, отрицая очевидное.\r\n\r\nСогласно предыдущему, аналогия контролирует трагический дуализм. Наряду с этим гегельянство нетривиально. Заблуждение понимает под собой бабувизм, ломая рамки привычных представлений. Закон исключённого третьего подчеркивает сложный позитивизм.', 'Почему трогательно наивно исчисление предикатов', '', 'inherit', 'closed', 'closed', '', '73-revision-v1', '', '', '2017-06-01 17:44:23', '2017-06-01 14:44:23', '', 73, 'http://neftehim2.loc/73-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2017-06-01 17:44:29', '2017-06-01 14:44:29', 'Сомнение заполняет знак. Заблуждение, конечно, принимает во внимание интеллигибельный интеллект. Заблуждение подчеркивает закон внешнего мира, открывая новые горизонты.\r\n\r\nГенетика, следовательно, индуцирует непредвиденный дедуктивный метод. Единственной космической субстанцией Гумбольдт считал материю, наделенную внутренней активностью, несмотря на это актуализация контролирует сенсибельный язык образов. Акциденция дискредитирует интеллект, отрицая очевидное.\r\n\r\nСогласно предыдущему, аналогия контролирует трагический дуализм. Наряду с этим гегельянство нетривиально. Заблуждение понимает под собой бабувизм, ломая рамки привычных представлений. Закон исключённого третьего подчеркивает сложный позитивизм.', 'Почему трогательно наивно исчисление предикатов', '', 'inherit', 'closed', 'closed', '', '74-revision-v1', '', '', '2017-06-01 17:44:29', '2017-06-01 14:44:29', '', 74, 'http://neftehim2.loc/74-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2017-06-01 17:44:34', '2017-06-01 14:44:34', 'Сомнение заполняет знак. Заблуждение, конечно, принимает во внимание интеллигибельный интеллект. Заблуждение подчеркивает закон внешнего мира, открывая новые горизонты.\r\n\r\nГенетика, следовательно, индуцирует непредвиденный дедуктивный метод. Единственной космической субстанцией Гумбольдт считал материю, наделенную внутренней активностью, несмотря на это актуализация контролирует сенсибельный язык образов. Акциденция дискредитирует интеллект, отрицая очевидное.\r\n\r\nСогласно предыдущему, аналогия контролирует трагический дуализм. Наряду с этим гегельянство нетривиально. Заблуждение понимает под собой бабувизм, ломая рамки привычных представлений. Закон исключённого третьего подчеркивает сложный позитивизм.', 'Почему трогательно наивно исчисление предикатов', '', 'inherit', 'closed', 'closed', '', '75-revision-v1', '', '', '2017-06-01 17:44:34', '2017-06-01 14:44:34', '', 75, 'http://neftehim2.loc/75-revision-v1/', 0, 'revision', '', 0),
(79, 1, '2017-06-01 17:45:22', '2017-06-01 14:45:22', 'Сомнение заполняет знак. Заблуждение, конечно, принимает во внимание интеллигибельный интеллект. Заблуждение подчеркивает закон внешнего мира, открывая новые горизонты.\r\n\r\nГенетика, следовательно, индуцирует непредвиденный дедуктивный метод. Единственной космической субстанцией Гумбольдт считал материю, наделенную внутренней активностью, несмотря на это актуализация контролирует сенсибельный язык образов. Акциденция дискредитирует интеллект, отрицая очевидное.\r\n\r\nСогласно предыдущему, аналогия контролирует трагический дуализм. Наряду с этим гегельянство нетривиально. Заблуждение понимает под собой бабувизм, ломая рамки привычных представлений. Закон исключённого третьего подчеркивает сложный позитивизм.', 'Почему трогательно наивно исчисление предикатов11', '', 'publish', 'open', 'open', '', 'pochemu-trogatelno-naivno-ischisleni-2-5', '', '', '2017-06-07 11:39:46', '2017-06-07 08:39:46', '', 0, 'http://neftehim2.loc/?p=79', 2, 'post', '', 0),
(80, 1, '2017-06-01 17:45:22', '2017-06-01 14:45:22', 'Сомнение заполняет знак. Заблуждение, конечно, принимает во внимание интеллигибельный интеллект. Заблуждение подчеркивает закон внешнего мира, открывая новые горизонты.\r\n\r\nГенетика, следовательно, индуцирует непредвиденный дедуктивный метод. Единственной космической субстанцией Гумбольдт считал материю, наделенную внутренней активностью, несмотря на это актуализация контролирует сенсибельный язык образов. Акциденция дискредитирует интеллект, отрицая очевидное.\r\n\r\nСогласно предыдущему, аналогия контролирует трагический дуализм. Наряду с этим гегельянство нетривиально. Заблуждение понимает под собой бабувизм, ломая рамки привычных представлений. Закон исключённого третьего подчеркивает сложный позитивизм.', 'Почему трогательно наивно исчисление предикатов', '', 'inherit', 'closed', 'closed', '', '79-revision-v1', '', '', '2017-06-01 17:45:22', '2017-06-01 14:45:22', '', 79, 'http://neftehim2.loc/79-revision-v1/', 0, 'revision', '', 0),
(133, 1, '2017-06-11 19:07:14', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-06-11 19:07:14', '0000-00-00 00:00:00', '', 0, 'http://neftehim2.loc/?p=133', 0, 'post', '', 0),
(82, 1, '2017-06-01 19:00:27', '2017-06-01 16:00:27', '', 'Документ1', '', 'trash', 'open', 'open', '', '%d0%b4%d0%be%d0%ba%d1%83%d0%bc%d0%b5%d0%bd%d1%821__trashed', '', '', '2017-06-02 13:07:12', '2017-06-02 10:07:12', '', 0, 'http://neftehim2.loc/?p=82', 0, 'post', '', 0),
(83, 1, '2017-06-01 19:00:03', '2017-06-01 16:00:03', '', 'doc', '', 'inherit', 'open', 'closed', '', 'doc', '', '', '2017-06-01 19:00:03', '2017-06-01 16:00:03', '', 82, 'http://neftehim2.loc/wp-content/uploads/2017/06/doc.jpg', 0, 'attachment', 'image/jpeg', 0),
(84, 1, '2017-06-01 19:00:27', '2017-06-01 16:00:27', '', 'Документ1', '', 'inherit', 'closed', 'closed', '', '82-revision-v1', '', '', '2017-06-01 19:00:27', '2017-06-01 16:00:27', '', 82, 'http://neftehim2.loc/82-revision-v1/', 0, 'revision', '', 0),
(85, 1, '2017-06-01 19:01:35', '2017-06-01 16:01:35', '', 'Документ2', '', 'trash', 'open', 'open', '', '%d0%b4%d0%be%d0%ba%d1%83%d0%bc%d0%b5%d0%bd%d1%822__trashed', '', '', '2017-06-02 13:07:10', '2017-06-02 10:07:10', '', 0, 'http://neftehim2.loc/?p=85', 0, 'post', '', 0),
(86, 1, '2017-06-01 19:01:35', '2017-06-01 16:01:35', '', 'Документ2', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2017-06-01 19:01:35', '2017-06-01 16:01:35', '', 85, 'http://neftehim2.loc/85-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2017-06-01 19:02:31', '2017-06-01 16:02:31', '', 'Документ3', '', 'trash', 'open', 'open', '', '%d0%b4%d0%be%d0%ba%d1%83%d0%bc%d0%b5%d0%bd%d1%823__trashed', '', '', '2017-06-02 13:07:08', '2017-06-02 10:07:08', '', 0, 'http://neftehim2.loc/?p=87', 0, 'post', '', 0),
(88, 1, '2017-06-01 19:02:31', '2017-06-01 16:02:31', '', 'Документ3', '', 'inherit', 'closed', 'closed', '', '87-revision-v1', '', '', '2017-06-01 19:02:31', '2017-06-01 16:02:31', '', 87, 'http://neftehim2.loc/87-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2017-06-01 19:04:13', '2017-06-01 16:04:13', '', 'Документ4', '', 'trash', 'open', 'open', '', '%d0%b4%d0%be%d0%ba%d1%83%d0%bc%d0%b5%d0%bd%d1%824__trashed', '', '', '2017-06-02 13:07:06', '2017-06-02 10:07:06', '', 0, 'http://neftehim2.loc/?p=89', 0, 'post', '', 0),
(90, 1, '2017-06-01 19:04:13', '2017-06-01 16:04:13', '', 'Документ4', '', 'inherit', 'closed', 'closed', '', '89-revision-v1', '', '', '2017-06-01 19:04:13', '2017-06-01 16:04:13', '', 89, 'http://neftehim2.loc/89-revision-v1/', 0, 'revision', '', 0),
(91, 1, '2017-06-01 19:06:02', '2017-06-01 16:06:02', '', 'Документ5', '', 'trash', 'open', 'open', '', '%d0%b4%d0%be%d0%ba%d1%83%d0%bc%d0%b5%d0%bd%d1%825__trashed', '', '', '2017-06-02 13:07:04', '2017-06-02 10:07:04', '', 0, 'http://neftehim2.loc/?p=91', 0, 'post', '', 0),
(92, 1, '2017-06-01 19:06:02', '2017-06-01 16:06:02', '', 'Документ5', '', 'inherit', 'closed', 'closed', '', '91-revision-v1', '', '', '2017-06-01 19:06:02', '2017-06-01 16:06:02', '', 91, 'http://neftehim2.loc/91-revision-v1/', 0, 'revision', '', 0),
(93, 1, '2017-06-01 19:07:37', '2017-06-01 16:07:37', '', 'Документ1', '', 'trash', 'open', 'open', '', '%d0%b4%d0%be%d0%ba%d1%83%d0%bc%d0%b5%d0%bd%d1%821-2__trashed', '', '', '2017-06-01 22:14:48', '2017-06-01 19:14:48', '', 0, 'http://neftehim2.loc/?p=93', 0, 'post', '', 0),
(94, 1, '2017-06-01 19:07:37', '2017-06-01 16:07:37', '', 'Документ1', '', 'inherit', 'closed', 'closed', '', '93-revision-v1', '', '', '2017-06-01 19:07:37', '2017-06-01 16:07:37', '', 93, 'http://neftehim2.loc/93-revision-v1/', 0, 'revision', '', 0),
(95, 1, '2017-06-01 22:19:36', '2017-06-01 19:19:36', '', 'Приложение1', '', 'trash', 'open', 'open', '', '%d0%bf%d1%80%d0%b8%d0%bb%d0%be%d0%b6%d0%b5%d0%bd%d0%b8%d0%b51__trashed', '', '', '2017-06-02 13:07:02', '2017-06-02 10:07:02', '', 0, 'http://neftehim2.loc/?p=95', 0, 'post', '', 0),
(96, 1, '2017-06-01 22:19:36', '2017-06-01 19:19:36', '', 'Приложение1', '', 'inherit', 'closed', 'closed', '', '95-revision-v1', '', '', '2017-06-01 22:19:36', '2017-06-01 19:19:36', '', 95, 'http://neftehim2.loc/95-revision-v1/', 0, 'revision', '', 0),
(98, 1, '2017-06-02 01:02:49', '2017-06-01 22:02:49', '', 'Документ6', '', 'trash', 'open', 'open', '', '%d0%b4%d0%be%d0%ba%d1%83%d0%bc%d0%b5%d0%bd%d1%826__trashed', '', '', '2017-06-02 01:05:35', '2017-06-01 22:05:35', '', 0, 'http://neftehim2.loc/?p=98', 0, 'post', '', 0),
(99, 1, '2017-06-02 01:02:49', '2017-06-01 22:02:49', '', 'Документ6', '', 'inherit', 'closed', 'closed', '', '98-revision-v1', '', '', '2017-06-02 01:02:49', '2017-06-01 22:02:49', '', 98, 'http://neftehim2.loc/98-revision-v1/', 0, 'revision', '', 0),
(100, 1, '2017-06-02 01:04:04', '2017-06-01 22:04:04', '', 'Документ7', '', 'trash', 'open', 'open', '', '%d0%b4%d0%be%d0%ba%d1%83%d0%bc%d0%b5%d0%bd%d1%827__trashed', '', '', '2017-06-02 01:05:33', '2017-06-01 22:05:33', '', 0, 'http://neftehim2.loc/?p=100', 0, 'post', '', 0),
(101, 1, '2017-06-02 01:04:04', '2017-06-01 22:04:04', '', 'Документ7', '', 'inherit', 'closed', 'closed', '', '100-revision-v1', '', '', '2017-06-02 01:04:04', '2017-06-01 22:04:04', '', 100, 'http://neftehim2.loc/100-revision-v1/', 0, 'revision', '', 0),
(103, 1, '2017-06-02 12:51:40', '2017-06-02 09:51:40', '', 'Контакты', '', 'publish', 'closed', 'closed', '', 'kontakty', '', '', '2017-06-02 14:04:29', '2017-06-02 11:04:29', '', 0, 'http://neftehim2.loc/?page_id=103', 0, 'page', '', 0),
(104, 1, '2017-06-02 12:51:40', '2017-06-02 09:51:40', '', 'Контакты', '', 'inherit', 'closed', 'closed', '', '103-revision-v1', '', '', '2017-06-02 12:51:40', '2017-06-02 09:51:40', '', 103, 'http://neftehim2.loc/103-revision-v1/', 0, 'revision', '', 0),
(105, 1, '2017-06-02 13:01:58', '2017-06-02 10:01:58', '', 'Приложение1', '', 'inherit', 'closed', 'closed', '', '95-autosave-v1', '', '', '2017-06-02 13:01:58', '2017-06-02 10:01:58', '', 95, 'http://neftehim2.loc/95-autosave-v1/', 0, 'revision', '', 0),
(106, 1, '2017-06-02 13:29:14', '2017-06-02 10:29:14', '', 'Контакты', '', 'publish', 'closed', 'closed', '', 'acf_kontakty', '', '', '2017-06-02 14:09:50', '2017-06-02 11:09:50', '', 0, 'http://neftehim2.loc/?post_type=acf&#038;p=106', 1, 'acf', '', 0),
(107, 1, '2017-06-02 13:19:13', '2017-06-02 10:19:13', '', 'ОБРАЗЕЦ ДОГОВОРА', '', 'publish', 'open', 'open', '', 'obrazets-dogovora', '', '', '2017-06-02 19:22:51', '2017-06-02 16:22:51', '', 0, 'http://neftehim2.loc/?p=107', 0, 'post', '', 0),
(108, 1, '2017-06-02 13:19:13', '2017-06-02 10:19:13', '', 'ОБРАЗЕЦ ДОГОВОРА', '', 'inherit', 'closed', 'closed', '', '107-revision-v1', '', '', '2017-06-02 13:19:13', '2017-06-02 10:19:13', '', 107, 'http://neftehim2.loc/107-revision-v1/', 0, 'revision', '', 0),
(109, 1, '2017-06-02 13:26:19', '2017-06-02 10:26:19', '', 'Документы', '', 'publish', 'closed', 'closed', '', 'acf_dokumenty', '', '', '2017-06-02 13:26:29', '2017-06-02 10:26:29', '', 0, 'http://neftehim2.loc/?post_type=acf&#038;p=109', 0, 'acf', '', 0),
(110, 1, '2017-06-02 13:59:04', '2017-06-02 10:59:04', '', 'Контакты', '', 'inherit', 'closed', 'closed', '', '103-revision-v1', '', '', '2017-06-02 13:59:04', '2017-06-02 10:59:04', '', 103, 'http://neftehim2.loc/103-revision-v1/', 0, 'revision', '', 0),
(111, 1, '2017-06-02 14:02:08', '2017-06-02 11:02:08', '', 'Контакты', '', 'inherit', 'closed', 'closed', '', '103-revision-v1', '', '', '2017-06-02 14:02:08', '2017-06-02 11:02:08', '', 103, 'http://neftehim2.loc/103-revision-v1/', 0, 'revision', '', 0),
(112, 1, '2017-06-02 16:12:38', '2017-06-02 13:12:38', '', 'ОБРАЗЕЦ ПРИЛОЖЕНИЯ', '', 'publish', 'open', 'open', '', 'obrazets-prilozheniya', '', '', '2017-06-02 19:31:10', '2017-06-02 16:31:10', '', 0, 'http://neftehim2.loc/?p=112', 1, 'post', '', 0),
(113, 1, '2017-06-02 16:12:38', '2017-06-02 13:12:38', '', 'ОБРАЗЕЦ ПРИЛОЖЕНИЯ', '', 'inherit', 'closed', 'closed', '', '112-revision-v1', '', '', '2017-06-02 16:12:38', '2017-06-02 13:12:38', '', 112, 'http://neftehim2.loc/112-revision-v1/', 0, 'revision', '', 0),
(114, 1, '2017-06-02 19:22:51', '2017-06-02 16:22:51', '', 'ОБРАЗЕЦ ДОГОВОРА', '', 'inherit', 'closed', 'closed', '', '107-revision-v1', '', '', '2017-06-02 19:22:51', '2017-06-02 16:22:51', '', 107, 'http://neftehim2.loc/107-revision-v1/', 0, 'revision', '', 0),
(115, 1, '2017-06-02 19:31:10', '2017-06-02 16:31:10', '', 'ОБРАЗЕЦ ПРИЛОЖЕНИЯ', '', 'inherit', 'closed', 'closed', '', '112-revision-v1', '', '', '2017-06-02 19:31:10', '2017-06-02 16:31:10', '', 112, 'http://neftehim2.loc/112-revision-v1/', 0, 'revision', '', 0),
(116, 1, '2017-06-03 08:41:40', '2017-06-03 05:41:40', '', 'ГЛАВНАЯ', '', 'publish', 'closed', 'closed', '', 'glavnaya', '', '', '2017-06-05 13:24:16', '2017-06-05 10:24:16', '', 0, 'http://neftehim2.loc/?p=116', 1, 'nav_menu_item', '', 0),
(118, 1, '2017-06-03 08:41:55', '2017-06-03 05:41:55', '', 'КОНТАКТЫ', '', 'publish', 'closed', 'closed', '', 'kontakty', '', '', '2017-06-05 13:24:20', '2017-06-05 10:24:20', '', 0, 'http://neftehim2.loc/?p=118', 5, 'nav_menu_item', '', 0),
(119, 1, '2017-06-03 08:41:50', '2017-06-03 05:41:50', '', 'ПРОДУКЦИЯ', '', 'publish', 'closed', 'closed', '', 'produktsiya', '', '', '2017-06-05 13:24:19', '2017-06-05 10:24:19', '', 0, 'http://neftehim2.loc/?p=119', 3, 'nav_menu_item', '', 0),
(120, 1, '2017-06-03 08:41:53', '2017-06-03 05:41:53', '', 'НОВОСТИ', '', 'publish', 'closed', 'closed', '', 'novosti', '', '', '2017-06-05 13:24:19', '2017-06-05 10:24:19', '', 0, 'http://neftehim2.loc/?p=120', 4, 'nav_menu_item', '', 0),
(121, 1, '2017-06-03 11:24:00', '2017-06-03 08:24:00', '', 'Главная', '', 'publish', 'closed', 'closed', '', 'glavnaya', '', '', '2017-06-03 12:10:06', '2017-06-03 09:10:06', '', 0, 'http://neftehim2.loc/?page_id=121', 0, 'page', '', 0),
(122, 1, '2017-06-03 11:24:00', '2017-06-03 08:24:00', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '121-revision-v1', '', '', '2017-06-03 11:24:00', '2017-06-03 08:24:00', '', 121, 'http://neftehim2.loc/121-revision-v1/', 0, 'revision', '', 0),
(123, 1, '2017-06-03 12:04:56', '2017-06-03 09:04:56', '', 'О компании', '', 'publish', 'closed', 'closed', '', 'acf_o-kompanii', '', '', '2017-06-03 12:06:29', '2017-06-03 09:06:29', '', 0, 'http://neftehim2.loc/?post_type=acf&#038;p=123', 0, 'acf', '', 0),
(124, 1, '2017-06-03 12:10:06', '2017-06-03 09:10:06', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '121-revision-v1', '', '', '2017-06-03 12:10:06', '2017-06-03 09:10:06', '', 121, 'http://neftehim2.loc/121-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(125, 1, '2017-06-05 12:34:15', '2017-06-05 09:34:15', '', 'Направления', '', 'publish', 'closed', 'closed', '', 'directions', '', '', '2017-06-05 12:35:46', '2017-06-05 09:35:46', '', 0, 'http://neftehim2.loc/?page_id=125', 0, 'page', '', 0),
(126, 1, '2017-06-05 12:34:15', '2017-06-05 09:34:15', '', 'Направления', '', 'inherit', 'closed', 'closed', '', '125-revision-v1', '', '', '2017-06-05 12:34:15', '2017-06-05 09:34:15', '', 125, 'http://neftehim2.loc/125-revision-v1/', 0, 'revision', '', 0),
(127, 1, '2017-06-05 13:24:18', '2017-06-05 10:24:18', '', 'НАПРАВЛЕНИЯ ДЕЯТЕЛЬНОСТИ', '', 'publish', 'closed', 'closed', '', 'napravleniya-deyatelnosti-2', '', '', '2017-06-05 13:24:18', '2017-06-05 10:24:18', '', 0, 'http://neftehim2.loc/?p=127', 2, 'nav_menu_item', '', 0),
(128, 1, '2017-06-07 11:18:16', '2017-06-07 08:18:16', 'Сомнение заполняет знак. Заблуждение, конечно, принимает во внимание интеллигибельный интеллект. Заблуждение подчеркивает закон внешнего мира, открывая новые горизонты.\r\n\r\nГенетика, следовательно, индуцирует непредвиденный дедуктивный метод. Единственной космической субстанцией Гумбольдт считал материю, наделенную внутренней активностью, несмотря на это актуализация контролирует сенсибельный язык образов. Акциденция дискредитирует интеллект, отрицая очевидное.\r\n\r\nСогласно предыдущему, аналогия контролирует трагический дуализм. Наряду с этим гегельянство нетривиально. Заблуждение понимает под собой бабувизм, ломая рамки привычных представлений. Закон исключённого третьего подчеркивает сложный позитивизм.', 'Почему трогательно наивно исчисление предикатов11', '', 'inherit', 'closed', 'closed', '', '79-revision-v1', '', '', '2017-06-07 11:18:16', '2017-06-07 08:18:16', '', 79, 'http://neftehim2.loc/79-revision-v1/', 0, 'revision', '', 0),
(129, 1, '2017-06-07 11:33:08', '2017-06-07 08:33:08', '', 'Продукция', '', 'publish', 'closed', 'closed', '', 'acf_produktsiya', '', '', '2017-06-07 11:51:51', '2017-06-07 08:51:51', '', 0, 'http://neftehim2.loc/?post_type=acf&#038;p=129', 0, 'acf', '', 0),
(130, 1, '2017-06-07 11:39:33', '2017-06-07 08:39:33', '', 'страницы', '', 'inherit', 'open', 'closed', '', 'stranitsy', '', '', '2017-06-07 11:39:33', '2017-06-07 08:39:33', '', 79, 'http://neftehim2.loc/wp-content/uploads/2017/06/stranitsy.txt', 0, 'attachment', 'text/plain', 0),
(131, 1, '2017-06-07 11:39:46', '2017-06-07 08:39:46', 'Сомнение заполняет знак. Заблуждение, конечно, принимает во внимание интеллигибельный интеллект. Заблуждение подчеркивает закон внешнего мира, открывая новые горизонты.\r\n\r\nГенетика, следовательно, индуцирует непредвиденный дедуктивный метод. Единственной космической субстанцией Гумбольдт считал материю, наделенную внутренней активностью, несмотря на это актуализация контролирует сенсибельный язык образов. Акциденция дискредитирует интеллект, отрицая очевидное.\r\n\r\nСогласно предыдущему, аналогия контролирует трагический дуализм. Наряду с этим гегельянство нетривиально. Заблуждение понимает под собой бабувизм, ломая рамки привычных представлений. Закон исключённого третьего подчеркивает сложный позитивизм.', 'Почему трогательно наивно исчисление предикатов11', '', 'inherit', 'closed', 'closed', '', '79-revision-v1', '', '', '2017-06-07 11:39:46', '2017-06-07 08:39:46', '', 79, 'http://neftehim2.loc/79-revision-v1/', 0, 'revision', '', 0),
(132, 1, '2017-06-07 16:12:17', '2017-06-07 13:12:17', 'Praesent nisi dolor, blandit at nisl iaculis, porttitor suscipit mauris. Aenean efficitur turpis ut ligula ultrices dictum. Praesent hendrerit venenatis eros, sed ullamcorper lectus. Sed elit elit, hendrerit non lorem non, finibus convallis ligula. In vel arcu ultricies, elementum nisl id, gravida odio. Nunc id feugiat justo, vestibulum efficitur est. Proin dictum nec nisl vel pretium. Pellentesque ultrices erat eget elit fringilla, in elementum ipsum efficitur. Sed interdum turpis ipsum, eget sollicitudin nisl gravida vitae. Nunc ultrices non odio scelerisque vehicula. In vitae accumsan enim, placerat posuere magna. Nam pharetra malesuada felis, nec convallis leo finibus vitae. Nam felis ex, tincidunt in imperdiet ut, rhoncus at sapien. Sed cursus at lacus sed maximus.\n\nPraesent nisi dolor, blandit at nisl iaculis, porttitor suscipit mauris. Aenean efficitur turpis ut ligula ultrices dictum. Praesent hendrerit venenatis eros, sed ullamcorper lectus. Sed elit elit, hendrerit non lorem non, finibus convallis ligula. In vel arcu ultricies, elementum nisl id, gravida odio. Nunc id feugiat justo, vestibulum efficitur est. Proin dictum nec nisl vel pretium. Pellentesque ultrices erat eget elit fringilla, in elementum ipsum efficitur. Sed interdum turpis ipsum, eget sollicitudin nisl gravida vitae. Nunc ultrices non odio scelerisque vehicula. In vitae accumsan enim, placerat posuere magna. Nam pharetra malesuada felis, nec convallis leo finibus vitae. Nam felis ex, tincidunt in imperdiet ut, rhoncus at sapien. Sed cursus at lacus sed maximus.', 'ФАСОВКА НЕФТЕПРОДУКТОВ', '', 'inherit', 'closed', 'closed', '', '52-autosave-v1', '', '', '2017-06-07 16:12:17', '2017-06-07 13:12:17', '', 52, 'http://neftehim2.loc/52-autosave-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  `term_order` int(4) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`, `term_order`) VALUES
(1, 'Без рубрики', 'bez-rubriki', 0, 0),
(2, 'Новости', 'novosti', 0, 0),
(3, 'Битумы и мазуты', 'bitumy-i-mazuty', 0, 0),
(4, 'Каталог', 'katalog', 0, 0),
(5, 'Нефтехимия', 'neftehimiya', 0, 0),
(6, 'Парафино-восковая продукция', 'parafino-voskovaya-produktsiya', 0, 0),
(7, 'Направления', 'napravleniya', 0, 0),
(8, 'Документы', 'dokumenty', 0, 0),
(11, 'Главное меню', 'glavnoe-menyu', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(5, 2, 0),
(7, 2, 0),
(9, 2, 0),
(11, 2, 0),
(13, 2, 0),
(15, 1, 0),
(17, 2, 0),
(27, 3, 0),
(29, 3, 0),
(31, 3, 0),
(33, 3, 0),
(36, 3, 0),
(38, 3, 0),
(40, 3, 0),
(42, 3, 0),
(44, 3, 0),
(48, 7, 0),
(50, 7, 0),
(52, 7, 0),
(54, 7, 0),
(56, 5, 0),
(58, 6, 0),
(61, 5, 0),
(63, 5, 0),
(65, 5, 0),
(67, 5, 0),
(69, 5, 0),
(71, 6, 0),
(73, 6, 0),
(74, 6, 0),
(75, 6, 0),
(79, 6, 0),
(82, 8, 0),
(85, 8, 0),
(87, 8, 0),
(89, 8, 0),
(91, 8, 0),
(93, 1, 0),
(95, 8, 0),
(98, 1, 0),
(100, 1, 0),
(107, 8, 0),
(112, 8, 0),
(116, 11, 0),
(118, 11, 0),
(119, 11, 0),
(120, 11, 0),
(127, 11, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'category', '', 0, 6),
(3, 3, 'category', '', 4, 9),
(4, 4, 'category', '', 0, 0),
(5, 5, 'category', '', 4, 6),
(6, 6, 'category', '', 4, 6),
(7, 7, 'category', '', 0, 4),
(8, 8, 'category', '', 0, 2),
(11, 11, 'nav_menu', '', 0, 5);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'locale', ''),
(11, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(12, 1, 'wp_user_level', '10'),
(13, 1, 'dismissed_wp_pointers', ''),
(14, 1, 'show_welcome_panel', '1'),
(15, 1, 'session_tokens', 'a:7:{s:64:"d76ffddea74686e5ce9daf357585379c870c7dc6d8de36ffc437169a15a9e2ff";a:4:{s:10:"expiration";i:1497602320;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:100:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.7 Safari/537.36";s:5:"login";i:1496392720;}s:64:"c35aac352bb437f7f3fb02a266c970ce1b513f90a8a3fb4ef7b062a6ef11f92e";a:4:{s:10:"expiration";i:1497197885;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:72:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:53.0) Gecko/20100101 Firefox/53.0";s:5:"login";i:1497025085;}s:64:"477c8edf6ca8aa030c745f052a8dd5875c03b65906de5d90cc4d1dcc81bcc595";a:4:{s:10:"expiration";i:1497197894;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:72:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:53.0) Gecko/20100101 Firefox/53.0";s:5:"login";i:1497025094;}s:64:"0b2d528b1f4745dd55ec3f0ab250ca6c474dcb51feef7212d41c1c68c6b6598a";a:4:{s:10:"expiration";i:1497244427;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:72:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:53.0) Gecko/20100101 Firefox/53.0";s:5:"login";i:1497071627;}s:64:"b0a1dbe530de01302667da7dc6d2218512b71aa6d2203a3d872368a25dc6b385";a:4:{s:10:"expiration";i:1497244433;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:72:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:53.0) Gecko/20100101 Firefox/53.0";s:5:"login";i:1497071633;}s:64:"03e42390256de1f46b4e95a10b370d5ac003954f5ff4707445c1c0c727e9866c";a:4:{s:10:"expiration";i:1497370021;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:72:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:53.0) Gecko/20100101 Firefox/53.0";s:5:"login";i:1497197221;}s:64:"3d6cffa3a20b083f69b84de10cc87e6457d7641b293764395c3e99b21c6a1c1d";a:4:{s:10:"expiration";i:1497370028;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:72:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:53.0) Gecko/20100101 Firefox/53.0";s:5:"login";i:1497197228;}}'),
(16, 1, 'wp_dashboard_quick_press_last_post_id', '133'),
(17, 1, 'closedpostboxes_post', 'a:0:{}'),
(18, 1, 'metaboxhidden_post', 'a:5:{i:0;s:13:"trackbacksdiv";i:1;s:10:"postcustom";i:2;s:16:"commentstatusdiv";i:3;s:7:"slugdiv";i:4;s:9:"authordiv";}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse'),
(20, 1, 'wp_user-settings-time', '1495977598'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:20:"add-post-type-client";i:1;s:17:"add-post-type-job";i:2;s:12:"add-post_tag";}'),
(23, 1, 'closedpostboxes_page', 'a:0:{}'),
(24, 1, 'metaboxhidden_page', 'a:4:{i:0;s:16:"commentstatusdiv";i:1;s:11:"commentsdiv";i:2;s:7:"slugdiv";i:3;s:9:"authordiv";}'),
(25, 1, 'nav_menu_recently_edited', '11'),
(31, 1, 'wp_yarpp_saw_optin', '1'),
(32, 1, 'community-events-location', 'a:1:{s:2:"ip";s:9:"127.0.0.0";}');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$Bj6ePP4nQkPbhu.ptsFV1tBnlnRlXR0', 'admin', '2312312@mail.ru', '', '2017-05-27 14:22:15', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wp_rp_tags`
--

CREATE TABLE `wp_wp_rp_tags` (
  `post_id` mediumint(9) DEFAULT NULL,
  `post_date` datetime NOT NULL,
  `label` varchar(32) NOT NULL,
  `weight` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wp_wp_rp_tags`
--

INSERT INTO `wp_wp_rp_tags` (`post_id`, `post_date`, `label`, `weight`) VALUES
(112, '2017-06-02 16:12:38', 'C_Документы', 5),
(107, '2017-06-02 13:19:13', 'C_Документы', 5),
(69, '2017-06-01 17:41:56', 'C_Нефтехимия', 5),
(67, '2017-06-01 17:39:50', 'C_Нефтехимия', 5),
(65, '2017-06-01 17:38:51', 'C_Нефтехимия', 5),
(63, '2017-06-01 17:38:16', 'C_Нефтехимия', 5),
(61, '2017-06-01 17:37:44', 'C_Нефтехимия', 5),
(56, '2017-06-01 15:59:43', 'C_Нефтехимия', 5),
(54, '2017-06-01 15:54:28', 'C_Направления', 5),
(54, '2017-06-01 15:54:28', 'A_vita', 2),
(54, '2017-06-01 15:54:28', 'A_diam', 2),
(54, '2017-06-01 15:54:28', 'A_erat', 2),
(54, '2017-06-01 15:54:28', 'A_sem', 2),
(54, '2017-06-01 15:54:28', 'A_ac', 2),
(54, '2017-06-01 15:54:28', 'A_dui', 2),
(54, '2017-06-01 15:54:28', 'A_molli', 2),
(54, '2017-06-01 15:54:28', 'A_mauri', 2),
(54, '2017-06-01 15:54:28', 'A_nec', 2),
(54, '2017-06-01 15:54:28', 'A_ant', 2),
(54, '2017-06-01 15:54:28', 'A_ero', 2),
(54, '2017-06-01 15:54:28', 'A_leo', 2),
(54, '2017-06-01 15:54:28', 'A_dolor', 2),
(54, '2017-06-01 15:54:28', 'A_eu', 2),
(54, '2017-06-01 15:54:28', 'A_elit', 2),
(52, '2017-06-01 15:53:34', 'C_Направления', 5),
(52, '2017-06-01 15:53:34', 'A_vita', 2),
(52, '2017-06-01 15:53:34', 'A_erat', 2),
(52, '2017-06-01 15:53:34', 'A_nam', 2),
(52, '2017-06-01 15:53:34', 'A_nec', 2),
(52, '2017-06-01 15:53:34', 'A_elit', 2),
(52, '2017-06-01 15:53:34', 'A_dolor', 2),
(52, '2017-06-01 15:53:34', 'A_mauri', 2),
(52, '2017-06-01 15:53:34', 'A_ero', 2),
(52, '2017-06-01 15:53:34', 'A_leo', 2),
(52, '2017-06-01 15:53:34', 'A_sed', 2),
(52, '2017-06-01 15:53:34', 'A_magna', 2),
(52, '2017-06-01 15:53:34', 'A_ut', 2),
(52, '2017-06-01 15:53:34', 'A_id', 2),
(52, '2017-06-01 15:53:34', 'A_est', 2),
(50, '2017-06-01 15:52:19', 'C_Направления', 5),
(50, '2017-06-01 15:52:19', 'A_vita', 2),
(50, '2017-06-01 15:52:19', 'A_erat', 2),
(50, '2017-06-01 15:52:19', 'A_nam', 2),
(50, '2017-06-01 15:52:19', 'A_nec', 2),
(50, '2017-06-01 15:52:19', 'A_elit', 2),
(50, '2017-06-01 15:52:19', 'A_dolor', 2),
(50, '2017-06-01 15:52:19', 'A_mauri', 2),
(50, '2017-06-01 15:52:19', 'A_ero', 2),
(50, '2017-06-01 15:52:19', 'A_leo', 2),
(50, '2017-06-01 15:52:19', 'A_sed', 2),
(50, '2017-06-01 15:52:19', 'A_magna', 2),
(50, '2017-06-01 15:52:19', 'A_ut', 2),
(50, '2017-06-01 15:52:19', 'A_id', 2),
(50, '2017-06-01 15:52:19', 'A_est', 2),
(48, '2017-06-01 15:51:28', 'C_Направления', 5),
(48, '2017-06-01 15:51:28', 'A_diam', 2),
(48, '2017-06-01 15:51:28', 'A_vita', 2),
(48, '2017-06-01 15:51:28', 'A_nec', 2),
(48, '2017-06-01 15:51:28', 'A_dui', 2),
(48, '2017-06-01 15:51:28', 'A_sem', 2),
(48, '2017-06-01 15:51:28', 'A_maximu', 2),
(48, '2017-06-01 15:51:28', 'A_ac', 2),
(48, '2017-06-01 15:51:28', 'A_eu', 2),
(48, '2017-06-01 15:51:28', 'A_magna', 2),
(48, '2017-06-01 15:51:28', 'A_matti', 2),
(48, '2017-06-01 15:51:28', 'A_elit', 2),
(48, '2017-06-01 15:51:28', 'A_ut', 2),
(48, '2017-06-01 15:51:28', 'A_sed', 2),
(48, '2017-06-01 15:51:28', 'A_a', 2),
(48, '2017-06-01 15:51:28', 'A_sit', 2),
(44, '2017-05-28 17:50:08', 'C_Битумы и мазуты', 5),
(42, '2017-05-28 17:49:07', 'C_Битумы и мазуты', 5),
(40, '2017-05-28 17:48:27', 'C_Битумы и мазуты', 5),
(38, '2017-05-28 17:47:49', 'C_Битумы и мазуты', 5),
(36, '2017-05-28 17:47:13', 'C_Битумы и мазуты', 5),
(33, '2017-05-28 17:46:38', 'C_Битумы и мазуты', 5),
(31, '2017-05-28 17:45:32', 'C_Битумы и мазуты', 5),
(29, '2017-05-28 17:44:40', 'C_Битумы и мазуты', 5),
(27, '2017-05-28 17:44:07', 'C_Битумы и мазуты', 5),
(17, '2017-05-28 15:41:07', 'C_Новости', 5),
(13, '2017-05-28 15:39:54', 'C_Новости', 5),
(11, '2017-05-28 15:39:28', 'C_Новости', 5),
(9, '2017-05-28 15:38:55', 'C_Новости', 5),
(7, '2017-05-28 15:38:20', 'C_Новости', 5),
(7, '2017-05-28 15:38:20', 'A_div', 2),
(5, '2017-05-28 15:37:49', 'C_Новости', 5);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_yarpp_related_cache`
--

CREATE TABLE `wp_yarpp_related_cache` (
  `reference_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `score` float UNSIGNED NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Индексы таблицы `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Индексы таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);
ALTER TABLE `wp_posts` ADD FULLTEXT KEY `yarpp_title` (`post_title`);
ALTER TABLE `wp_posts` ADD FULLTEXT KEY `yarpp_content` (`post_content`);

--
-- Индексы таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Индексы таблицы `wp_wp_rp_tags`
--
ALTER TABLE `wp_wp_rp_tags`
  ADD KEY `post_id` (`post_id`),
  ADD KEY `label` (`label`);

--
-- Индексы таблицы `wp_yarpp_related_cache`
--
ALTER TABLE `wp_yarpp_related_cache`
  ADD PRIMARY KEY (`reference_ID`,`ID`),
  ADD KEY `score` (`score`),
  ADD KEY `ID` (`ID`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=433;
--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=826;
--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;
--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
