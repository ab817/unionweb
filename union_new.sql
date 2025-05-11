-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2025 at 01:11 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `union_new`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add blog post', 7, 'add_blogpost'),
(26, 'Can change blog post', 7, 'change_blogpost'),
(27, 'Can delete blog post', 7, 'delete_blogpost'),
(28, 'Can view blog post', 7, 'view_blogpost'),
(29, 'Can add contact', 8, 'add_contact'),
(30, 'Can change contact', 8, 'change_contact'),
(31, 'Can delete contact', 8, 'delete_contact'),
(32, 'Can view contact', 8, 'view_contact'),
(33, 'Can add event', 9, 'add_event'),
(34, 'Can change event', 9, 'change_event'),
(35, 'Can delete event', 9, 'delete_event'),
(36, 'Can view event', 9, 'view_event'),
(37, 'Can add learning material', 10, 'add_learningmaterial'),
(38, 'Can change learning material', 10, 'change_learningmaterial'),
(39, 'Can delete learning material', 10, 'delete_learningmaterial'),
(40, 'Can view learning material', 10, 'view_learningmaterial'),
(41, 'Can add slider image', 11, 'add_sliderimage'),
(42, 'Can change slider image', 11, 'change_sliderimage'),
(43, 'Can delete slider image', 11, 'delete_sliderimage'),
(44, 'Can view slider image', 11, 'view_sliderimage'),
(45, 'Can add welcome content', 12, 'add_welcomecontent'),
(46, 'Can change welcome content', 12, 'change_welcomecontent'),
(47, 'Can delete welcome content', 12, 'delete_welcomecontent'),
(48, 'Can view welcome content', 12, 'view_welcomecontent'),
(49, 'Can add gallery image', 13, 'add_galleryimage'),
(50, 'Can change gallery image', 13, 'change_galleryimage'),
(51, 'Can delete gallery image', 13, 'delete_galleryimage'),
(52, 'Can view gallery image', 13, 'view_galleryimage'),
(53, 'Can add gallery post', 14, 'add_gallerypost'),
(54, 'Can change gallery post', 14, 'change_gallerypost'),
(55, 'Can delete gallery post', 14, 'delete_gallerypost'),
(56, 'Can view gallery post', 14, 'view_gallerypost'),
(57, 'Can add video post', 15, 'add_videopost'),
(58, 'Can change video post', 15, 'change_videopost'),
(59, 'Can delete video post', 15, 'delete_videopost'),
(60, 'Can view video post', 15, 'view_videopost'),
(61, 'Can add issue plan', 16, 'add_issueplan'),
(62, 'Can change issue plan', 16, 'change_issueplan'),
(63, 'Can delete issue plan', 16, 'delete_issueplan'),
(64, 'Can view issue plan', 16, 'view_issueplan');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$720000$kXffhxgfcmDBO8iUzXfj5p$QA61P4lTwJsvaWGRb2JkDKD3FHdjVsj/gqtV3h/I3uw=', '2025-05-08 09:56:46.265760', 1, 'admin', '', '', 'admin@admin.com', 1, 1, '2025-05-08 09:53:52.246084');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2025-05-08 10:02:52.465850', '1', 'BlogPost object (1)', 1, '[{\"added\": {}}]', 7, 1),
(2, '2025-05-08 10:08:18.143040', '1', 'Contact object (1)', 1, '[{\"added\": {}}]', 8, 1),
(3, '2025-05-11 05:13:23.520449', '1', 'SliderImage object (1)', 1, '[{\"added\": {}}]', 11, 1),
(4, '2025-05-11 05:13:53.671223', '2', 'SliderImage object (2)', 1, '[{\"added\": {}}]', 11, 1),
(5, '2025-05-11 05:14:42.138955', '3', 'SliderImage object (3)', 1, '[{\"added\": {}}]', 11, 1),
(6, '2025-05-11 05:26:35.764934', '1', 'WelcomeContent object (1)', 1, '[{\"added\": {}}]', 12, 1),
(7, '2025-05-11 05:28:08.594192', '2', 'WelcomeContent object (2)', 1, '[{\"added\": {}}]', 12, 1),
(8, '2025-05-11 05:29:07.373739', '3', 'WelcomeContent object (3)', 1, '[{\"added\": {}}]', 12, 1),
(9, '2025-05-11 05:29:54.370350', '4', 'WelcomeContent object (4)', 1, '[{\"added\": {}}]', 12, 1),
(10, '2025-05-11 05:30:28.002428', '5', 'WelcomeContent object (5)', 1, '[{\"added\": {}}]', 12, 1),
(11, '2025-05-11 05:43:43.858201', '1', 'Event object (1)', 1, '[{\"added\": {}}]', 9, 1),
(12, '2025-05-11 05:45:59.031313', '2', 'Event object (2)', 1, '[{\"added\": {}}]', 9, 1),
(13, '2025-05-11 05:47:00.557366', '3', 'Event object (3)', 1, '[{\"added\": {}}]', 9, 1),
(14, '2025-05-11 06:02:50.308465', '1', 'GalleryPost object (1)', 1, '[{\"added\": {}}]', 14, 1),
(15, '2025-05-11 06:03:04.451626', '2', 'GalleryPost object (2)', 1, '[{\"added\": {}}]', 14, 1),
(16, '2025-05-11 06:03:19.316278', '3', 'GalleryPost object (3)', 1, '[{\"added\": {}}]', 14, 1),
(17, '2025-05-11 06:03:35.439515', '4', 'GalleryPost object (4)', 1, '[{\"added\": {}}]', 14, 1),
(18, '2025-05-11 06:03:49.336744', '5', 'GalleryPost object (5)', 1, '[{\"added\": {}}]', 14, 1),
(19, '2025-05-11 06:04:02.264527', '6', 'GalleryPost object (6)', 1, '[{\"added\": {}}]', 14, 1),
(20, '2025-05-11 06:10:39.294901', '1', 'VideoPost object (1)', 1, '[{\"added\": {}}]', 15, 1),
(21, '2025-05-11 06:11:12.043270', '2', 'VideoPost object (2)', 1, '[{\"added\": {}}]', 15, 1),
(22, '2025-05-11 06:11:44.817307', '3', 'VideoPost object (3)', 1, '[{\"added\": {}}]', 15, 1),
(23, '2025-05-11 06:12:59.563557', '2', 'BlogPost object (2)', 1, '[{\"added\": {}}]', 7, 1),
(24, '2025-05-11 06:13:34.746495', '3', 'BlogPost object (3)', 1, '[{\"added\": {}}]', 7, 1),
(25, '2025-05-11 06:14:10.952198', '4', 'BlogPost object (4)', 1, '[{\"added\": {}}]', 7, 1),
(26, '2025-05-11 06:15:42.274417', '1', 'BlogPost object (1)', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Image\", \"Description\", \"Author\"]}}]', 7, 1),
(27, '2025-05-11 06:34:19.313956', '5', 'WelcomeContent object (5)', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 12, 1),
(28, '2025-05-11 06:35:02.104256', '1', 'WelcomeContent object (1)', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 12, 1),
(29, '2025-05-11 06:51:59.688089', '1', 'सबैका लागि संघ , सधैको लागि संघ !!', 1, '[{\"added\": {}}]', 16, 1),
(30, '2025-05-11 06:53:10.664705', '2', 'सबैका लागि संघ , सधैको लागि संघ !!', 1, '[{\"added\": {}}]', 16, 1),
(31, '2025-05-11 06:53:37.458232', '3', 'रक्तदान कार्यक्रम', 1, '[{\"added\": {}}]', 16, 1),
(32, '2025-05-11 06:54:03.657835', '4', 'कर्मचारी जागरण अभियान', 1, '[{\"added\": {}}]', 16, 1),
(33, '2025-05-11 06:54:21.080155', '5', 'कर्मचारी जागरण अभियान', 1, '[{\"added\": {}}]', 16, 1),
(34, '2025-05-11 06:54:55.938525', '6', 'कर्मचारी जागरण अभियान', 1, '[{\"added\": {}}]', 16, 1),
(35, '2025-05-11 06:55:28.631446', '1', 'सबैका लागि संघ , सधैको लागि संघ !!', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 16, 1),
(36, '2025-05-11 06:56:13.413696', '1', 'सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 16, 1),
(37, '2025-05-11 07:06:25.632786', '3', 'Event object (3)', 2, '[{\"changed\": {\"fields\": [\"Category\"]}}]', 9, 1),
(38, '2025-05-11 07:06:39.500332', '2', 'Event object (2)', 2, '[{\"changed\": {\"fields\": [\"Category\"]}}]', 9, 1),
(39, '2025-05-11 07:06:55.500974', '1', 'Event object (1)', 2, '[{\"changed\": {\"fields\": [\"Category\"]}}]', 9, 1),
(40, '2025-05-11 07:14:30.647931', '6', 'GalleryPost object (6)', 2, '[{\"changed\": {\"fields\": [\"Tag\"]}}]', 14, 1),
(41, '2025-05-11 09:18:26.806087', '1', 'GalleryImage object (1)', 1, '[{\"added\": {}}]', 13, 1),
(42, '2025-05-11 09:18:46.792043', '2', 'GalleryImage object (2)', 1, '[{\"added\": {}}]', 13, 1),
(43, '2025-05-11 09:19:00.747303', '3', 'GalleryImage object (3)', 1, '[{\"added\": {}}]', 13, 1),
(44, '2025-05-11 09:19:15.407755', '4', 'GalleryImage object (4)', 1, '[{\"added\": {}}]', 13, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'unionapp', 'blogpost'),
(8, 'unionapp', 'contact'),
(9, 'unionapp', 'event'),
(13, 'unionapp', 'galleryimage'),
(14, 'unionapp', 'gallerypost'),
(16, 'unionapp', 'issueplan'),
(10, 'unionapp', 'learningmaterial'),
(11, 'unionapp', 'sliderimage'),
(15, 'unionapp', 'videopost'),
(12, 'unionapp', 'welcomecontent');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2025-05-05 07:31:59.424018'),
(2, 'auth', '0001_initial', '2025-05-05 07:31:59.982540'),
(3, 'admin', '0001_initial', '2025-05-05 07:32:00.125849'),
(4, 'admin', '0002_logentry_remove_auto_add', '2025-05-05 07:32:00.140852'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2025-05-05 07:32:00.156656'),
(6, 'contenttypes', '0002_remove_content_type_name', '2025-05-05 07:32:00.239656'),
(7, 'auth', '0002_alter_permission_name_max_length', '2025-05-05 07:32:00.333479'),
(8, 'auth', '0003_alter_user_email_max_length', '2025-05-05 07:32:00.366830'),
(9, 'auth', '0004_alter_user_username_opts', '2025-05-05 07:32:00.385829'),
(10, 'auth', '0005_alter_user_last_login_null', '2025-05-05 07:32:00.461387'),
(11, 'auth', '0006_require_contenttypes_0002', '2025-05-05 07:32:00.464389'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2025-05-05 07:32:00.476399'),
(13, 'auth', '0008_alter_user_username_max_length', '2025-05-05 07:32:00.501385'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2025-05-05 07:32:00.522388'),
(15, 'auth', '0010_alter_group_name_max_length', '2025-05-05 07:32:00.549850'),
(16, 'auth', '0011_update_proxy_permissions', '2025-05-05 07:32:00.563846'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2025-05-05 07:32:00.583849'),
(18, 'sessions', '0001_initial', '2025-05-05 07:32:00.639846'),
(19, 'unionapp', '0001_initial', '2025-05-08 09:53:29.458349'),
(20, 'unionapp', '0002_alter_blogpost_slug', '2025-05-08 10:00:08.428031'),
(21, 'unionapp', '0003_alter_blogpost_slug', '2025-05-08 10:01:58.469962'),
(22, 'unionapp', '0004_alter_event_category_alter_gallerypost_tag_and_more', '2025-05-08 10:17:56.838269'),
(23, 'unionapp', '0005_gallerypost_thumbnail', '2025-05-08 10:22:09.263299'),
(24, 'unionapp', '0006_alter_event_is_virtual', '2025-05-11 05:38:46.300158'),
(25, 'unionapp', '0007_alter_event_is_virtual', '2025-05-11 05:42:32.073156'),
(26, 'unionapp', '0008_videopost', '2025-05-11 06:09:59.004964'),
(27, 'unionapp', '0009_issueplan', '2025-05-11 06:50:59.723511');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('iyvnlzu7vpasyf55kby12k0mk5ryt2cm', '.eJxVjDEOwjAMRe-SGUVNSu2EkZ0zRK5tkQJKpKadEHenlTrA-t97_20SrUtOa9M5TWIuxpnT7zYSP7XsQB5U7tVyLcs8jXZX7EGbvVXR1_Vw_w4ytbzVCnEEz8Ig2kkAF8gjDBo8EPYRowKiV1QGdoEJnTsPMnSR-g1Ebz5f4MY3OQ:1uCxzi:HTi-oQr-qEVKs6GfjkuMUbMbQeW0CE-xWIBi5JXegPw', '2025-05-22 09:56:46.268675');

-- --------------------------------------------------------

--
-- Table structure for table `unionapp_blogpost`
--

CREATE TABLE `unionapp_blogpost` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `date` date NOT NULL,
  `author` varchar(255) NOT NULL,
  `status` varchar(15) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `unionapp_blogpost`
--

INSERT INTO `unionapp_blogpost` (`id`, `title`, `slug`, `image`, `description`, `date`, `author`, `status`, `created_at`, `updated_at`) VALUES
(1, 'रक्तदान कार्यक्रम', 'this-is-test-blog-title', 'blog_images/politic_06_mSnNwHv.jpg', '<p>कर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियान</p>', '2025-05-08', 'एडमिन', 'published', '2025-05-08 10:02:52.465850', '2025-05-11 06:15:42.264407'),
(2, 'सबैका लागि संघ , सधैको लागि संघ !!', '', 'blog_images/politic_04.jpg', '<p>सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!</p>', '2025-05-11', 'admin', 'published', '2025-05-11 06:12:59.547930', '2025-05-11 06:12:59.547930'),
(3, 'सबैका लागि संघ , सधैको लागि संघ !!', '-1', 'blog_images/politic_05.jpg', '<p>सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!</p>', '2025-05-11', 'admin2', 'published', '2025-05-11 06:13:34.746495', '2025-05-11 06:13:34.746495'),
(4, 'कर्मचारी जागरण अभियान', '-2', 'blog_images/politic_06.jpg', '<p>कर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियान</p>', '2025-05-11', 'admin3', 'published', '2025-05-11 06:14:10.952198', '2025-05-11 06:14:10.952198');

-- --------------------------------------------------------

--
-- Table structure for table `unionapp_contact`
--

CREATE TABLE `unionapp_contact` (
  `id` bigint(20) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email_id` varchar(254) NOT NULL,
  `mobile_number` varchar(20) NOT NULL,
  `message_subject` varchar(255) NOT NULL,
  `feedback` longtext NOT NULL,
  `submitted_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `unionapp_contact`
--

INSERT INTO `unionapp_contact` (`id`, `first_name`, `last_name`, `email_id`, `mobile_number`, `message_subject`, `feedback`, `submitted_at`) VALUES
(1, 'Bom Bahadur', 'BK', 'bomncit@gmail.com', '9849861528', 'this is alert', 'do fast', '2025-05-08 10:08:18.143040'),
(2, 'Bom bahadur', 'BK', 'bomncit@gmail.com', '984986152', 'know how', 'How to register on system', '2025-05-11 08:17:07.730156');

-- --------------------------------------------------------

--
-- Table structure for table `unionapp_event`
--

CREATE TABLE `unionapp_event` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `category` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `start_datetime` datetime(6) NOT NULL,
  `end_datetime` datetime(6) NOT NULL,
  `location` varchar(255) NOT NULL,
  `is_virtual` tinyint(1) NOT NULL,
  `video_link` varchar(200) DEFAULT NULL,
  `document_link` varchar(100) DEFAULT NULL,
  `registration_link` varchar(200) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `unionapp_event`
--

INSERT INTO `unionapp_event` (`id`, `title`, `description`, `category`, `image`, `start_datetime`, `end_datetime`, `location`, `is_virtual`, `video_link`, `document_link`, `registration_link`, `created_at`, `updated_at`) VALUES
(1, 'कर्मचारी जागरण अभियान', '<p>कर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियान</p>', 'Industry-Specific', 'event_images/politic_04.jpg', '2025-05-08 05:43:06.000000', '2025-05-08 05:43:12.000000', 'पोखरा,कास्की नेपाल', 0, 'https://www.youtube.com/watch?v=qCzY5826Blo&t=225s', 'event_documnents/Web_Hosting_Quotation.pdf', 'http://www.facebook.com', '2025-05-11 05:43:43.842561', '2025-05-11 07:06:55.489961'),
(2, 'रक्तदान कार्यक्रम', '<p>रक्तदान कार्यक्रमरक्तदान कार्यक्रमरक्तदान कार्यक्रमरक्तदान कार्यक्रमरक्तदान कार्यक्रमरक्तदान कार्यक्रमरक्तदान कार्यक्रमरक्तदान कार्यक्रमरक्तदान कार्यक्रम</p>', 'Professional Development', 'event_images/politic_05.jpg', '2025-05-11 05:44:24.000000', '2025-05-11 05:44:26.000000', 'कृषि बिकास बैंक मुख्य कार्यलय , रामशाह पथ', 0, NULL, '', 'http://docs.google.com', '2025-05-11 05:45:59.031313', '2025-05-11 07:06:39.500332'),
(3, 'स्वागत तथा सम्मान कार्यक्रम', '<p>स्वागत तथा सम्मान कार्यक्रमस्वागत तथा सम्मान कार्यक्रमस्वागत तथा सम्मान कार्यक्रमस्वागत तथा सम्मान कार्यक्रमस्वागत तथा सम्मान कार्यक्रमस्वागत तथा सम्मान कार्यक्रमस्वागत तथा सम्मान कार्यक्रम</p>', 'Member Events', 'event_images/politic_06.jpg', '2025-05-11 05:46:49.000000', '2025-05-11 05:46:51.000000', 'कृषि बिकास बैंक मुख्य कार्यलय , रामशाह पथ', 0, NULL, '', NULL, '2025-05-11 05:47:00.557366', '2025-05-11 07:06:25.632786');

-- --------------------------------------------------------

--
-- Table structure for table `unionapp_galleryimage`
--

CREATE TABLE `unionapp_galleryimage` (
  `id` bigint(20) NOT NULL,
  `image_title` varchar(255) NOT NULL,
  `image` varchar(100) NOT NULL,
  `uploaded_at` datetime(6) NOT NULL,
  `gallery_post_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `unionapp_galleryimage`
--

INSERT INTO `unionapp_galleryimage` (`id`, `image_title`, `image`, `uploaded_at`, `gallery_post_id`) VALUES
(1, 'more', 'gallery_images/gallery_img-04.jpg', '2025-05-11 09:18:26.790463', 1),
(2, 'test', 'gallery_images/gallery_img-02.jpg', '2025-05-11 09:18:46.792043', 1),
(3, 'testsdf', 'gallery_images/gallery_img-02_2DrNuc0.jpg', '2025-05-11 09:19:00.747303', 1),
(4, 'test', 'gallery_images/gallery_img-05.jpg', '2025-05-11 09:19:15.407755', 3);

-- --------------------------------------------------------

--
-- Table structure for table `unionapp_gallerypost`
--

CREATE TABLE `unionapp_gallerypost` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `tag` varchar(100) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `thumbnail` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `unionapp_gallerypost`
--

INSERT INTO `unionapp_gallerypost` (`id`, `title`, `tag`, `created_at`, `updated_at`, `thumbnail`) VALUES
(1, 'कृषि विकास बैंक कर्मचारी संघमा स्वागत छ।', 'meeting', '2025-05-11 06:02:50.292840', '2025-05-11 06:02:50.292840', 'gallery_thumbnails/gallery_img-01.jpg'),
(2, 'सबैका लागि संघ , सधैको लागि संघ !!', 'event', '2025-05-11 06:03:04.451626', '2025-05-11 06:03:04.451626', 'gallery_thumbnails/gallery_img-02.jpg'),
(3, 'कर्मचारी जागरण अभियान', 'economic', '2025-05-11 06:03:19.316278', '2025-05-11 06:03:19.316278', 'gallery_thumbnails/gallery_img-03.jpg'),
(4, 'कर्मचारी जागरण अभियान', 'education', '2025-05-11 06:03:35.439515', '2025-05-11 06:03:35.439515', 'gallery_thumbnails/gallery_img-04.jpg'),
(5, 'सबैका लागि संघ , सधैको लागि संघ !!', 'event', '2025-05-11 06:03:49.336744', '2025-05-11 06:03:49.336744', 'gallery_thumbnails/gallery_img-05.jpg'),
(6, 'कृषि विकास बैंक कर्मचारी संघमा स्वागत छ।', 'education', '2025-05-11 06:04:02.264527', '2025-05-11 07:14:30.647931', 'gallery_thumbnails/gallery_img-06.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `unionapp_issueplan`
--

CREATE TABLE `unionapp_issueplan` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `issue_type` varchar(50) NOT NULL,
  `is_featured` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `unionapp_issueplan`
--

INSERT INTO `unionapp_issueplan` (`id`, `title`, `description`, `image`, `issue_type`, `is_featured`, `created_at`, `updated_at`) VALUES
(1, 'सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!', '<p>सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!</p>\r\n\r\n<p>सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!</p>', 'issues/about_04.jpg', 'climate', 1, '2025-05-11 06:51:59.688089', '2025-05-11 06:56:13.398076'),
(2, 'सबैका लागि संघ , सधैको लागि संघ !!', '<p>सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!</p>', 'issues/issue_01.jpg', 'climate', 0, '2025-05-11 06:53:10.649065', '2025-05-11 06:53:10.649065'),
(3, 'रक्तदान कार्यक्रम', '<p>रक्तदान कार्यक्रमरक्तदान कार्यक्रमरक्तदान कार्यक्रमरक्तदान कार्यक्रमरक्तदान कार्यक्रमरक्तदान कार्यक्रमरक्तदान कार्यक्रमरक्तदान कार्यक्रमरक्तदान कार्यक्रम</p>', 'issues/issue_02.jpg', 'immigration', 0, '2025-05-11 06:53:37.442583', '2025-05-11 06:53:37.442583'),
(4, 'कर्मचारी जागरण अभियान', '<p>कर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियान</p>', 'issues/issue_03.jpg', 'economic', 0, '2025-05-11 06:54:03.657835', '2025-05-11 06:54:03.657835'),
(5, 'कर्मचारी जागरण अभियान', '<p>कर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियान</p>', 'issues/issue_04.jpg', 'health', 0, '2025-05-11 06:54:21.080155', '2025-05-11 06:54:21.080155'),
(6, 'कर्मचारी जागरण अभियान', '<p>कर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियान</p>', 'issues/issue_02_B6TFjwL.jpg', 'immigration', 0, '2025-05-11 06:54:55.938525', '2025-05-11 06:54:55.938525');

-- --------------------------------------------------------

--
-- Table structure for table `unionapp_learningmaterial`
--

CREATE TABLE `unionapp_learningmaterial` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `thumbnail` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `tutor` varchar(255) NOT NULL,
  `video_link` varchar(200) DEFAULT NULL,
  `document_link` varchar(100) DEFAULT NULL,
  `duration` varchar(50) NOT NULL,
  `tags` varchar(100) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `unionapp_sliderimage`
--

CREATE TABLE `unionapp_sliderimage` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext DEFAULT NULL,
  `image` varchar(100) NOT NULL,
  `position` int(10) UNSIGNED NOT NULL CHECK (`position` >= 0),
  `is_active` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `unionapp_sliderimage`
--

INSERT INTO `unionapp_sliderimage` (`id`, `title`, `description`, `image`, `position`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'सबैका लागि संघ , सधैको लागि संघ !!', 'सबैका लागि संघ , सधैको लागि संघ !!', 'slider_images/slide-1.jpg', 1, 1, '2025-05-11 05:13:23.504812', '2025-05-11 05:13:23.504812'),
(2, 'सबैका लागि संघ , सधैको लागि संघ !!', 'सबैका लागि संघ , सधैको लागि संघ !!', 'slider_images/slide-2.jpg', 2, 1, '2025-05-11 05:13:53.671223', '2025-05-11 05:13:53.671223'),
(3, 'सबैका लागि संघ , सधैको लागि संघ !!', 'सबैका लागि संघ , सधैको लागि संघ !!', 'slider_images/slide-3.jpg', 3, 1, '2025-05-11 05:14:42.123271', '2025-05-11 05:14:42.123271');

-- --------------------------------------------------------

--
-- Table structure for table `unionapp_videopost`
--

CREATE TABLE `unionapp_videopost` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext DEFAULT NULL,
  `image` varchar(100) NOT NULL,
  `video_link` varchar(200) DEFAULT NULL,
  `position` int(10) UNSIGNED NOT NULL CHECK (`position` >= 0),
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `unionapp_videopost`
--

INSERT INTO `unionapp_videopost` (`id`, `title`, `description`, `image`, `video_link`, `position`, `is_active`) VALUES
(1, 'कृषि विकास बैंक कर्मचारी संघमा स्वागत छ।', 'कृषि विकास बैंक कर्मचारी संघमा स्वागत छ।कृषि विकास बैंक कर्मचारी संघमा स्वागत छ।कृषि विकास बैंक कर्मचारी संघमा स्वागत छ।कृषि विकास बैंक कर्मचारी संघमा स्वागत छ।कृषि विकास बैंक कर्मचारी संघमा स्वागत छ।कृषि विकास बैंक कर्मचारी संघमा स्वागत छ।', 'mutimedia_images/news_01.jpg', 'https://www.youtube.com/watch?v=AL8Ew78yDYA', 1, 1),
(2, 'सबैका लागि संघ , सधैको लागि संघ !!', 'सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!', 'mutimedia_images/news_02.jpg', 'https://www.youtube.com/watch?v=AL8Ew78yDYA', 2, 1),
(3, 'कर्मचारी जागरण अभियान', 'कर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियान', 'mutimedia_images/news_03.jpg', 'https://www.youtube.com/watch?v=AL8Ew78yDYA', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `unionapp_welcomecontent`
--

CREATE TABLE `unionapp_welcomecontent` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slogan` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `video_link` varchar(200) DEFAULT NULL,
  `tag` varchar(100) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `unionapp_welcomecontent`
--

INSERT INTO `unionapp_welcomecontent` (`id`, `title`, `slogan`, `description`, `image`, `video_link`, `tag`, `created_at`, `updated_at`) VALUES
(1, 'कृषि विकास बैंक कर्मचारी संघमा स्वागत छ।', 'बिशुद्ध पेशागत हकहितका लागि कर्मचारी एकता , पारदर्शी र गतिशिल ब्यवस्थापन आजकाे आवस्यकता !!', '<div>\r\n<p>बिशुद्ध पेशागत हकहितका लागि कर्मचारी एकता , पारदर्शी र गतिशिल ब्यवस्थापन आजकाे आवस्यकता !बिशुद्ध पेशागत हकहितका लागि कर्मचारी एकता , पारदर्शी र गतिशिल ब्यवस्थापन आजकाे आवस्यकता !बिशुद्ध पेशागत हकहितका लागि कर्मचारी एकता , पारदर्शी र गतिशिल ब्यवस्थापन आजकाे आवस्यकता !बिशुद्ध पेशागत हकहितका लागि कर्मचारी एकता , पारदर्शी र गतिशिल ब्यवस्थापन आजकाे आवस्यकता !!बिशुद्ध पेशागत हकहितका लागि कर्मचारी एकता , पारदर्शी र गतिशिल ब्यवस्थापन आजकाे आवस्यकता !!</p>\r\n</div>', 'welcome_images/about_04.png', 'https://www.youtube.com/watch?v=AL8Ew78yDYA', 'primary', '2025-05-11 05:26:35.747474', '2025-05-11 06:35:02.098782'),
(2, 'कृषि विकास बैंक कर्मचारी संघमा स्वागत छ।', 'बिशुद्ध पेशागत हकहितका लागि कर्मचारी एकता , पारदर्शी र गतिशिल ब्यवस्थापन आजकाे आवस्यकता !!', '<p>बिशुद्ध पेशागत हकहितका लागि कर्मचारी एकता , पारदर्शी र गतिशिल ब्यवस्थापन आजकाे आवस्यकता !!बिशुद्ध पेशागत हकहितका लागि कर्मचारी एकता , पारदर्शी र गतिशिल ब्यवस्थापन आजकाे आवस्यकता !!बिशुद्ध पेशागत हकहितका लागि कर्मचारी एकता , पारदर्शी र गतिशिल ब्यवस्थापन आजकाे आवस्यकता !!बिशुद्ध पेशागत हकहितका लागि कर्मचारी एकता , पारदर्शी र गतिशिल ब्यवस्थापन आजकाे आवस्यकता !!बिशुद्ध पेशागत हकहितका लागि कर्मचारी एकता , पारदर्शी र गतिशिल ब्यवस्थापन आजकाे आवस्यकता !!बिशुद्ध पेशागत हकहितका लागि कर्मचारी एकता , पारदर्शी र गतिशिल ब्यवस्थापन आजकाे आवस्यकता !!</p>', 'welcome_images/politic_01.jpg', 'https://www.youtube.com/watch?v=AL8Ew78yDYA', 'secondary', '2025-05-11 05:28:08.594192', '2025-05-11 05:28:08.594192'),
(3, 'सबैका लागि संघ , सधैको लागि संघ !!', 'बिशुद्ध पेशागत हकहितका लागि कर्मचारी एकता , पारदर्शी र गतिशिल ब्यवस्थापन आजकाे आवस्यकता !!', '<p>बिशुद्ध पेशागत हकहितका लागि कर्मचारी एकता , पारदर्शी र गतिशिल ब्यवस्थापन आजकाे आवस्यकता !!बिशुद्ध पेशागत हकहितका लागि कर्मचारी एकता , पारदर्शी र गतिशिल ब्यवस्थापन आजकाे आवस्यकता !!बिशुद्ध पेशागत हकहितका लागि कर्मचारी एकता , पारदर्शी र गतिशिल ब्यवस्थापन आजकाे आवस्यकता !!बिशुद्ध पेशागत हकहितका लागि कर्मचारी एकता , पारदर्शी र गतिशिल ब्यवस्थापन आजकाे आवस्यकता !!</p>', 'welcome_images/politic_02.jpg', 'https://www.youtube.com/watch?v=AL8Ew78yDYA', 'secondary', '2025-05-11 05:29:07.370741', '2025-05-11 05:29:07.370741'),
(4, 'कृषि विकास बैंक कर्मचारी संघमा स्वागत छ।', 'बिशुद्ध पेशागत हकहितका लागि कर्मचारी एकता , पारदर्शी र गतिशिल ब्यवस्थापन आजकाे आवस्यकता !!', '<p>बिशुद्ध पेशागत हकहितका लागि कर्मचारी एकता , पारदर्शी र गतिशिल ब्यवस्थापन आजकाे आवस्यकता !!बिशुद्ध पेशागत हकहितका लागि कर्मचारी एकता , पारदर्शी र गतिशिल ब्यवस्थापन आजकाे आवस्यकता !!बिशुद्ध पेशागत हकहितका लागि कर्मचारी एकता , पारदर्शी र गतिशिल ब्यवस्थापन आजकाे आवस्यकता !!बिशुद्ध पेशागत हकहितका लागि कर्मचारी एकता , पारदर्शी र गतिशिल ब्यवस्थापन आजकाे आवस्यकता !!बिशुद्ध पेशागत हकहितका लागि कर्मचारी एकता , पारदर्शी र गतिशिल ब्यवस्थापन आजकाे आवस्यकता !!</p>', 'welcome_images/politic_03.jpg', 'https://www.youtube.com/watch?v=AL8Ew78yDYA', 'secondary', '2025-05-11 05:29:54.368350', '2025-05-11 05:29:54.368350'),
(5, 'कृषि विकास बैंक कर्मचारी संघमा स्वागत छ।', 'बिशुद्ध पेशागत हकहितका लागि कर्मचारी एकता , पारदर्शी र गतिशिल ब्यवस्थापन आजकाे आवस्यकता !!', '<p>बिशुद्ध पेशागत हकहितका लागि कर्मचारी एकता , पारदर्शी र गतिशिल ब्यवस्थापन आजकाे आवस्यकता !!बिशुद्ध पेशागत हकहितका लागि कर्मचारी एकता , पारदर्शी र गतिशिल ब्यवस्थापन आजकाे आवस्यकता !!बिशुद्ध पेशागत हकहितका लागि कर्मचारी एकता , पारदर्शी र गतिशिल ब्यवस्थापन आजकाे आवस्यकता !!बिशुद्ध पेशागत हकहितका लागि कर्मचारी एकता , पारदर्शी र गतिशिल ब्यवस्थापन आजकाे आवस्यकता !!बिशुद्ध पेशागत हकहितका लागि कर्मचारी एकता , पारदर्शी र गतिशिल ब्यवस्थापन आजकाे आवस्यकता !!</p>', 'welcome_images/politic_02_ZmJVtim.jpg', 'https://www.youtube.com/watch?v=AL8Ew78yDYA', 'secondary', '2025-05-11 05:30:28.001420', '2025-05-11 06:34:19.304381');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `unionapp_blogpost`
--
ALTER TABLE `unionapp_blogpost`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `unionapp_contact`
--
ALTER TABLE `unionapp_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unionapp_event`
--
ALTER TABLE `unionapp_event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unionapp_galleryimage`
--
ALTER TABLE `unionapp_galleryimage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `unionapp_galleryimag_gallery_post_id_49fd7392_fk_unionapp_` (`gallery_post_id`);

--
-- Indexes for table `unionapp_gallerypost`
--
ALTER TABLE `unionapp_gallerypost`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unionapp_issueplan`
--
ALTER TABLE `unionapp_issueplan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unionapp_learningmaterial`
--
ALTER TABLE `unionapp_learningmaterial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unionapp_sliderimage`
--
ALTER TABLE `unionapp_sliderimage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unionapp_videopost`
--
ALTER TABLE `unionapp_videopost`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unionapp_welcomecontent`
--
ALTER TABLE `unionapp_welcomecontent`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `unionapp_blogpost`
--
ALTER TABLE `unionapp_blogpost`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `unionapp_contact`
--
ALTER TABLE `unionapp_contact`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `unionapp_event`
--
ALTER TABLE `unionapp_event`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `unionapp_galleryimage`
--
ALTER TABLE `unionapp_galleryimage`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `unionapp_gallerypost`
--
ALTER TABLE `unionapp_gallerypost`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `unionapp_issueplan`
--
ALTER TABLE `unionapp_issueplan`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `unionapp_learningmaterial`
--
ALTER TABLE `unionapp_learningmaterial`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `unionapp_sliderimage`
--
ALTER TABLE `unionapp_sliderimage`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `unionapp_videopost`
--
ALTER TABLE `unionapp_videopost`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `unionapp_welcomecontent`
--
ALTER TABLE `unionapp_welcomecontent`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `unionapp_galleryimage`
--
ALTER TABLE `unionapp_galleryimage`
  ADD CONSTRAINT `unionapp_galleryimag_gallery_post_id_49fd7392_fk_unionapp_` FOREIGN KEY (`gallery_post_id`) REFERENCES `unionapp_gallerypost` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
