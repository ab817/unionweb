-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2025 at 05:34 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

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
(1, 'pbkdf2_sha256$720000$kXffhxgfcmDBO8iUzXfj5p$QA61P4lTwJsvaWGRb2JkDKD3FHdjVsj/gqtV3h/I3uw=', '2025-05-16 05:23:27.342558', 1, 'admin', '', '', 'admin@admin.com', 1, 1, '2025-05-08 09:53:52.246084');

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
(44, '2025-05-11 09:19:15.407755', '4', 'GalleryImage object (4)', 1, '[{\"added\": {}}]', 13, 1),
(45, '2025-05-13 08:03:48.587560', '1', 'WelcomeContent object (1)', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 12, 1),
(46, '2025-05-13 08:06:44.820008', '5', 'WelcomeContent object (5)', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 12, 1),
(47, '2025-05-13 08:07:00.149823', '4', 'WelcomeContent object (4)', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 12, 1),
(48, '2025-05-13 08:07:15.034288', '3', 'WelcomeContent object (3)', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 12, 1),
(49, '2025-05-13 08:07:42.366605', '2', 'WelcomeContent object (2)', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 12, 1),
(50, '2025-05-13 08:25:07.043622', '1', 'सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 16, 1),
(51, '2025-05-13 08:28:37.094947', '6', 'कर्मचारी जागरण अभियान', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 16, 1),
(52, '2025-05-13 08:29:01.736208', '6', 'कर्मचारी जागरण अभियान', 2, '[]', 16, 1),
(53, '2025-05-13 08:30:03.666957', '5', 'कर्मचारी जागरण अभियान', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 16, 1),
(54, '2025-05-13 08:30:16.244154', '4', 'कर्मचारी जागरण अभियान', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 16, 1),
(55, '2025-05-13 08:31:12.472990', '3', 'रक्तदान कार्यक्रम', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 16, 1),
(56, '2025-05-13 08:31:55.328171', '3', 'Event object (3)', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 9, 1),
(57, '2025-05-13 08:32:13.119724', '2', 'Event object (2)', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 9, 1),
(58, '2025-05-13 08:32:41.592800', '1', 'Event object (1)', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 9, 1),
(59, '2025-05-13 08:34:22.678155', '1', 'सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!', 2, '[{\"changed\": {\"fields\": [\"Issue type\"]}}]', 16, 1),
(60, '2025-05-13 08:34:27.872740', '6', 'कर्मचारी जागरण अभियान', 2, '[{\"changed\": {\"fields\": [\"Issue type\"]}}]', 16, 1),
(61, '2025-05-13 08:34:33.569822', '5', 'कर्मचारी जागरण अभियान', 2, '[{\"changed\": {\"fields\": [\"Issue type\"]}}]', 16, 1),
(62, '2025-05-13 08:34:39.406935', '4', 'कर्मचारी जागरण अभियान', 2, '[{\"changed\": {\"fields\": [\"Issue type\"]}}]', 16, 1),
(63, '2025-05-13 08:34:44.799571', '3', 'रक्तदान कार्यक्रम', 2, '[{\"changed\": {\"fields\": [\"Issue type\"]}}]', 16, 1),
(64, '2025-05-13 08:34:50.687354', '2', 'सबैका लागि संघ , सधैको लागि संघ !!', 2, '[{\"changed\": {\"fields\": [\"Issue type\"]}}]', 16, 1),
(65, '2025-05-13 08:34:54.964849', '1', 'सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!', 2, '[]', 16, 1),
(66, '2025-05-13 08:36:24.719395', '1', 'WelcomeContent object (1)', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 12, 1),
(67, '2025-05-13 08:42:21.372437', '1', 'GalleryPost object (1)', 2, '[{\"changed\": {\"fields\": [\"Thumbnail\"]}}]', 14, 1),
(68, '2025-05-13 08:42:33.074493', '2', 'GalleryPost object (2)', 2, '[{\"changed\": {\"fields\": [\"Thumbnail\"]}}]', 14, 1),
(69, '2025-05-13 08:42:56.653994', '3', 'GalleryPost object (3)', 2, '[{\"changed\": {\"fields\": [\"Thumbnail\"]}}]', 14, 1),
(70, '2025-05-13 08:43:09.854499', '6', 'GalleryPost object (6)', 2, '[{\"changed\": {\"fields\": [\"Thumbnail\"]}}]', 14, 1),
(71, '2025-05-13 08:43:22.970468', '5', 'GalleryPost object (5)', 2, '[{\"changed\": {\"fields\": [\"Thumbnail\"]}}]', 14, 1),
(72, '2025-05-13 08:43:27.917848', '3', 'GalleryPost object (3)', 2, '[]', 14, 1),
(73, '2025-05-13 08:43:40.096514', '4', 'GalleryPost object (4)', 2, '[{\"changed\": {\"fields\": [\"Thumbnail\"]}}]', 14, 1),
(74, '2025-05-13 08:43:58.966363', '1', 'GalleryImage object (1)', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 13, 1),
(75, '2025-05-13 08:44:13.845579', '2', 'GalleryImage object (2)', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 13, 1),
(76, '2025-05-13 08:44:27.290926', '3', 'GalleryImage object (3)', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 13, 1),
(77, '2025-05-13 08:44:39.459252', '4', 'GalleryImage object (4)', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 13, 1),
(78, '2025-05-13 08:45:31.286407', '1', 'VideoPost object (1)', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 15, 1),
(79, '2025-05-13 08:45:54.699885', '2', 'VideoPost object (2)', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 15, 1),
(80, '2025-05-13 08:46:37.397152', '3', 'VideoPost object (3)', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 15, 1),
(81, '2025-05-13 08:50:11.568617', '4', 'BlogPost object (4)', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(82, '2025-05-13 08:50:20.601446', '3', 'BlogPost object (3)', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(83, '2025-05-13 08:50:31.781795', '2', 'BlogPost object (2)', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(84, '2025-05-13 08:50:42.647457', '1', 'BlogPost object (1)', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(85, '2025-05-13 10:31:26.808535', '3', 'Event object (3)', 2, '[{\"changed\": {\"fields\": [\"Category\"]}}]', 9, 1),
(86, '2025-05-13 10:31:35.557769', '1', 'Event object (1)', 2, '[{\"changed\": {\"fields\": [\"Category\"]}}]', 9, 1),
(87, '2025-05-13 10:31:42.769597', '6', 'GalleryPost object (6)', 2, '[{\"changed\": {\"fields\": [\"Tag\"]}}]', 14, 1),
(88, '2025-05-13 10:31:45.830028', '5', 'GalleryPost object (5)', 2, '[]', 14, 1),
(89, '2025-05-13 10:31:50.989190', '4', 'GalleryPost object (4)', 2, '[{\"changed\": {\"fields\": [\"Tag\"]}}]', 14, 1),
(90, '2025-05-13 10:31:55.624142', '3', 'GalleryPost object (3)', 2, '[{\"changed\": {\"fields\": [\"Tag\"]}}]', 14, 1),
(91, '2025-05-16 05:38:22.211612', '1', 'WelcomeContent object (1)', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 12, 1),
(92, '2025-05-16 06:22:43.653203', '1', 'SliderImage object (1)', 2, '[]', 11, 1),
(93, '2025-05-16 06:22:46.381987', '2', 'SliderImage object (2)', 2, '[]', 11, 1),
(94, '2025-05-16 06:22:49.030625', '3', 'SliderImage object (3)', 2, '[]', 11, 1),
(95, '2025-05-16 06:23:02.743187', '4', 'SliderImage object (4)', 1, '[{\"added\": {}}]', 11, 1),
(96, '2025-05-16 06:24:53.454800', '4', 'SliderImage object (4)', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 11, 1),
(97, '2025-05-16 07:11:55.808140', '4', 'WelcomeContent object (4)', 2, '[{\"changed\": {\"fields\": [\"Description\", \"Image\"]}}]', 12, 1),
(98, '2025-05-16 07:12:42.317058', '2', 'WelcomeContent object (2)', 2, '[{\"changed\": {\"fields\": [\"Description\", \"Video link\"]}}]', 12, 1),
(99, '2025-05-16 07:12:49.604263', '5', 'WelcomeContent object (5)', 2, '[{\"changed\": {\"fields\": [\"Video link\"]}}]', 12, 1),
(100, '2025-05-16 07:13:20.189911', '1', 'WelcomeContent object (1)', 2, '[{\"changed\": {\"fields\": [\"Video link\"]}}]', 12, 1),
(101, '2025-05-16 07:14:11.178453', '3', 'WelcomeContent object (3)', 2, '[{\"changed\": {\"fields\": [\"Description\", \"Image\", \"Video link\"]}}]', 12, 1),
(102, '2025-05-16 07:15:29.914961', '2', 'Event object (2)', 3, '', 9, 1),
(103, '2025-05-16 07:15:29.918684', '1', 'Event object (1)', 3, '', 9, 1),
(104, '2025-05-16 07:17:37.809781', '3', 'Event object (3)', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Description\", \"Category\", \"Image\"]}}]', 9, 1),
(105, '2025-05-16 07:19:25.973232', '3', 'Event object (3)', 2, '[{\"changed\": {\"fields\": [\"Start datetime\", \"End datetime\"]}}]', 9, 1),
(106, '2025-05-17 12:31:01.759287', '1', 'WelcomeContent object (1)', 2, '[]', 12, 1),
(107, '2025-05-17 13:09:07.766371', '6', 'GalleryPost object (6)', 3, '', 14, 1),
(108, '2025-05-17 13:09:14.133173', '4', 'GalleryPost object (4)', 3, '', 14, 1),
(109, '2025-05-17 13:09:19.451166', '3', 'GalleryPost object (3)', 3, '', 14, 1),
(110, '2025-05-17 13:09:43.165751', '5', 'GalleryPost object (5)', 3, '', 14, 1),
(111, '2025-05-17 13:09:58.032039', '1', 'GalleryPost object (1)', 2, '[{\"changed\": {\"fields\": [\"Thumbnail\"]}}]', 14, 1),
(112, '2025-05-17 13:10:09.742958', '2', 'GalleryPost object (2)', 2, '[{\"changed\": {\"fields\": [\"Thumbnail\"]}}]', 14, 1),
(113, '2025-05-17 13:10:41.080066', '1', 'GalleryImage object (1)', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 13, 1),
(114, '2025-05-17 13:10:58.336980', '2', 'GalleryImage object (2)', 2, '[{\"changed\": {\"fields\": [\"Image title\", \"Image\"]}}]', 13, 1),
(115, '2025-05-17 13:11:09.986109', '3', 'GalleryImage object (3)', 2, '[{\"changed\": {\"fields\": [\"Image title\", \"Image\"]}}]', 13, 1),
(116, '2025-05-17 13:11:28.071233', '5', 'GalleryImage object (5)', 1, '[{\"added\": {}}]', 13, 1),
(117, '2025-05-17 13:11:43.110623', '6', 'GalleryImage object (6)', 1, '[{\"added\": {}}]', 13, 1),
(118, '2025-05-17 13:12:24.026525', '7', 'GalleryImage object (7)', 1, '[{\"added\": {}}]', 13, 1),
(119, '2025-05-17 14:54:50.655947', '1', 'SliderImage object (1)', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 11, 1),
(120, '2025-05-17 14:55:08.267087', '2', 'SliderImage object (2)', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Description\"]}}]', 11, 1),
(121, '2025-05-17 14:55:23.352509', '3', 'SliderImage object (3)', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Description\"]}}]', 11, 1),
(122, '2025-05-17 14:55:43.858565', '4', 'SliderImage object (4)', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Description\"]}}]', 11, 1),
(123, '2025-05-17 14:56:44.068654', '5', 'SliderImage object (5)', 1, '[{\"added\": {}}]', 11, 1),
(124, '2025-05-17 14:57:45.726154', '6', 'SliderImage object (6)', 1, '[{\"added\": {}}]', 11, 1),
(125, '2025-05-17 15:02:19.386951', '2', 'WelcomeContent object (2)', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 12, 1),
(126, '2025-05-17 15:03:23.691580', '2', 'WelcomeContent object (2)', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 12, 1),
(127, '2025-05-17 15:04:10.191796', '1', 'WelcomeContent object (1)', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 12, 1),
(128, '2025-05-17 15:05:52.834597', '3', 'WelcomeContent object (3)', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Slogan\", \"Description\"]}}]', 12, 1),
(129, '2025-05-17 15:06:50.970576', '2', 'WelcomeContent object (2)', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Slogan\", \"Description\"]}}]', 12, 1),
(130, '2025-05-17 15:07:11.809889', '2', 'WelcomeContent object (2)', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 12, 1),
(131, '2025-05-17 15:07:36.639802', '3', 'WelcomeContent object (3)', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 12, 1),
(132, '2025-05-17 15:09:58.198575', '4', 'WelcomeContent object (4)', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Slogan\", \"Description\"]}}]', 12, 1),
(133, '2025-05-17 15:13:59.014537', '5', 'WelcomeContent object (5)', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Slogan\", \"Description\"]}}]', 12, 1),
(134, '2025-05-17 15:17:13.377732', '5', 'WelcomeContent object (5)', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 12, 1),
(135, '2025-05-17 15:20:29.142830', '5', 'WelcomeContent object (5)', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 12, 1),
(136, '2025-05-17 15:21:40.257686', '5', 'WelcomeContent object (5)', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 12, 1),
(137, '2025-05-17 15:23:32.303137', '5', 'WelcomeContent object (5)', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 12, 1),
(138, '2025-05-17 15:24:11.351053', '4', 'WelcomeContent object (4)', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 12, 1),
(139, '2025-05-17 15:27:38.679742', '3', 'WelcomeContent object (3)', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Slogan\", \"Description\"]}}]', 12, 1);

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
(27, 'unionapp', '0009_issueplan', '2025-05-11 06:50:59.723511'),
(28, 'unionapp', '0010_alter_event_category_alter_gallerypost_tag_and_more', '2025-05-17 13:08:22.295302');

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
('gzl5yfcc0c21ywjvszmm737st3mdjiji', '.eJxVjDEOwjAMRe-SGUVNSu2EkZ0zRK5tkQJKpKadEHenlTrA-t97_20SrUtOa9M5TWIuxpnT7zYSP7XsQB5U7tVyLcs8jXZX7EGbvVXR1_Vw_w4ytbzVCnEEz8Ig2kkAF8gjDBo8EPYRowKiV1QGdoEJnTsPMnSR-g1Ebz5f4MY3OQ:1uFnXb:aBlvpMAbjXGH7ADv41cz-ArOMau4lA6PgSV1FF_6STQ', '2025-05-30 05:23:27.351602'),
('iyvnlzu7vpasyf55kby12k0mk5ryt2cm', '.eJxVjDEOwjAMRe-SGUVNSu2EkZ0zRK5tkQJKpKadEHenlTrA-t97_20SrUtOa9M5TWIuxpnT7zYSP7XsQB5U7tVyLcs8jXZX7EGbvVXR1_Vw_w4ytbzVCnEEz8Ig2kkAF8gjDBo8EPYRowKiV1QGdoEJnTsPMnSR-g1Ebz5f4MY3OQ:1uCxzi:HTi-oQr-qEVKs6GfjkuMUbMbQeW0CE-xWIBi5JXegPw', '2025-05-22 09:56:46.268675'),
('t3vjfcfaxk8k8j66kda2dkarhieygpen', '.eJxVjDEOwjAMRe-SGUVNSu2EkZ0zRK5tkQJKpKadEHenlTrA-t97_20SrUtOa9M5TWIuxpnT7zYSP7XsQB5U7tVyLcs8jXZX7EGbvVXR1_Vw_w4ytbzVCnEEz8Ig2kkAF8gjDBo8EPYRowKiV1QGdoEJnTsPMnSR-g1Ebz5f4MY3OQ:1uEkX8:aS-4roVNGoDzihH-zm9bUi8KJC9V5FQloLLqyEM9ND8', '2025-05-27 07:58:38.256767');

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
(1, 'रक्तदान कार्यक्रम', 'this-is-test-blog-title', 'blog_images/blog_3_wrta9OH.png', '<p>कर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियान</p>', '2025-05-08', 'एडमिन', 'published', '2025-05-08 10:02:52.465850', '2025-05-13 08:50:42.647457'),
(2, 'सबैका लागि संघ , सधैको लागि संघ !!', '-3', 'blog_images/blog_1.png', '<p>सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!</p>', '2025-05-11', 'admin', 'published', '2025-05-11 06:12:59.547930', '2025-05-13 08:50:31.776746'),
(3, 'सबैका लागि संघ , सधैको लागि संघ !!', '-1', 'blog_images/blog_2.png', '<p>सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!</p>', '2025-05-11', 'admin2', 'published', '2025-05-11 06:13:34.746495', '2025-05-13 08:50:20.601446'),
(4, 'कर्मचारी जागरण अभियान', '-2', 'blog_images/blog_3.png', '<p>कर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियान</p>', '2025-05-11', 'admin3', 'published', '2025-05-11 06:14:10.952198', '2025-05-13 08:50:11.568617');

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
(3, '१० औं केन्द्रीय परिषद', '<p>१० औं केन्द्रीय परिषद</p>', 'Member Events', 'event_images/welcome_section_1.png', '2025-03-23 18:15:00.000000', '2025-03-24 18:15:00.000000', 'कृषि बिकास बैंक मुख्य कार्यलय , रामशाह पथ', 0, NULL, '', NULL, '2025-05-11 05:47:00.557366', '2025-05-16 07:19:25.973232');

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
(1, 'more', 'gallery_images/gallery_meeting_1.png', '2025-05-11 09:18:26.790463', 1),
(2, 'Meeting', 'gallery_images/gallery_meeting_2.png', '2025-05-11 09:18:46.792043', 1),
(3, 'Meeting', 'gallery_images/gallery_meeting_3.png', '2025-05-11 09:19:00.747303', 1),
(5, 'Events', 'gallery_images/gallery_event_1.png', '2025-05-17 13:11:28.068908', 2),
(6, 'Event', 'gallery_images/gallery_event_2.png', '2025-05-17 13:11:43.099810', 2),
(7, 'Event', 'gallery_images/gallery_event_3.png', '2025-05-17 13:12:24.026525', 2);

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
(1, 'कृषि विकास बैंक कर्मचारी संघमा स्वागत छ।', 'meeting', '2025-05-11 06:02:50.292840', '2025-05-17 13:09:58.032039', 'gallery_thumbnails/gallery_meeting_1.png'),
(2, 'सबैका लागि संघ , सधैको लागि संघ !!', 'event', '2025-05-11 06:03:04.451626', '2025-05-17 13:10:09.742958', 'gallery_thumbnails/gallery_event_1.png');

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
(1, 'सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!', '<p>सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!</p>\r\n\r\n<p>सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!</p>', 'issues/issue_1.png', 'HR Related', 1, '2025-05-11 06:51:59.688089', '2025-05-13 08:34:54.964849'),
(2, 'सबैका लागि संघ , सधैको लागि संघ !!', '<p>सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!</p>', 'issues/issue_01.jpg', 'IT Related', 0, '2025-05-11 06:53:10.649065', '2025-05-13 08:34:50.676704'),
(3, 'रक्तदान कार्यक्रम', '<p>रक्तदान कार्यक्रमरक्तदान कार्यक्रमरक्तदान कार्यक्रमरक्तदान कार्यक्रमरक्तदान कार्यक्रमरक्तदान कार्यक्रमरक्तदान कार्यक्रमरक्तदान कार्यक्रमरक्तदान कार्यक्रम</p>', 'issues/issue_adbl_I4yDUtf.png', 'Operation Related', 0, '2025-05-11 06:53:37.442583', '2025-05-13 08:34:44.797323'),
(4, 'कर्मचारी जागरण अभियान', '<p>कर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियान</p>', 'issues/issue_adbl_8KZM3nH.png', 'IT Related', 0, '2025-05-11 06:54:03.657835', '2025-05-13 08:34:39.389275'),
(5, 'कर्मचारी जागरण अभियान', '<p>कर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियान</p>', 'issues/issue_adbl_3yvXE8D.png', 'Credit Related', 0, '2025-05-11 06:54:21.080155', '2025-05-13 08:34:33.567010'),
(6, 'कर्मचारी जागरण अभियान', '<p>कर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियान</p>', 'issues/issue_adbl.png', 'Operation Related', 0, '2025-05-11 06:54:55.938525', '2025-05-13 08:34:27.870712');

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
(1, 'सबैका लागि संघ , सधैको लागि संघ !!', '', 'slider_images/slide-1.jpg', 1, 1, '2025-05-11 05:13:23.504812', '2025-05-17 14:54:50.654983'),
(2, 'श्रमिक वर्गको रक्षा हाम्रो पहिलो प्राथमिकता  !!', '', 'slider_images/slide-2.jpg', 2, 1, '2025-05-11 05:13:53.671223', '2025-05-17 14:55:08.248058'),
(3, 'हामी बनाउछौं हाम्रो बैंक !!', '', 'slider_images/slide-3.jpg', 3, 1, '2025-05-11 05:14:42.123271', '2025-05-17 14:55:23.340172'),
(4, 'समानता सुरक्षा र न्याय दिगो समृद्धिको आधार !!', '', 'slider_images/1920_1020_slider_4.png', 4, 1, '2025-05-16 06:23:02.743187', '2025-05-17 14:55:43.846470'),
(5, 'सशक्त संघ, समृद् बैंक !!', '', 'slider_images/slide-6.jpg', 5, 1, '2025-05-17 14:56:44.068654', '2025-05-17 14:56:44.068654'),
(6, 'परिवर्तनको पाइला, प्रगतिका खुड्किला !!', '', 'slider_images/slide-5.jpg', 6, 1, '2025-05-17 14:57:45.726154', '2025-05-17 14:57:45.726154');

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
(1, 'कृषि विकास बैंक कर्मचारी संघमा स्वागत छ।', 'कृषि विकास बैंक कर्मचारी संघमा स्वागत छ।कृषि विकास बैंक कर्मचारी संघमा स्वागत छ।कृषि विकास बैंक कर्मचारी संघमा स्वागत छ।कृषि विकास बैंक कर्मचारी संघमा स्वागत छ।कृषि विकास बैंक कर्मचारी संघमा स्वागत छ।कृषि विकास बैंक कर्मचारी संघमा स्वागत छ।', 'mutimedia_images/issue_1.png', 'https://www.youtube.com/watch?v=AL8Ew78yDYA', 1, 1),
(2, 'सबैका लागि संघ , सधैको लागि संघ !!', 'सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!सबैका लागि संघ , सधैको लागि संघ !!', 'mutimedia_images/issue_1_rftzOMf.png', 'https://www.youtube.com/watch?v=AL8Ew78yDYA', 2, 1),
(3, 'कर्मचारी जागरण अभियान', 'कर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियानकर्मचारी जागरण अभियान', 'mutimedia_images/issue_1_so5Ub4f.png', 'https://www.youtube.com/watch?v=AL8Ew78yDYA', 3, 1);

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
(1, 'कृषि विकास बैंक कर्मचारी संघमा स्वागत छ।', 'बिशुद्ध पेशागत हकहितका लागि कर्मचारी एकता , पारदर्शी र गतिशिल ब्यवस्थापन आजकाे आवस्यकता !!', '<div>\r\n<p>कृषि विकास बैंक कर्मचारी संघ, नेपाल २०४६ साल चैत्र ३१ गते उत्तम नारायण श्रेष्ठको संयोजकत्वमा स्थापना भयो, जसको मुख्य उद्देश्य बैंक भित्र रहेका कर्मचारीहरूको हक र अधिकारको संरक्षण गर्नु थियो । संघको पहिलो महाधिवेशन २०४७ साल फागुन २७ देखि २९ गतेसम्म काठमाडौंमा सम्पन्न भई त्यसबाट उत्तम नारायण श्रेष्ठको नेतृत्वमा केन्द्रीय समिति गठन भयो । त्यसपछिको दोस्रो महाधिवेशन २०५२ साल जेठ २६&ndash;२७ र तेस्रो महाधिवेशन २०५४ जेठ २७&ndash;२९ मा काठमाडौंमा सम्पन्न भई अध्यक्षमा भोजराज भट्टराई निर्वाचित हुनुभयाे । चौथो महाधिवेशन २०५६ असार १&ndash;३ मा काठमाडौंमा सम्पन्न भई अध्यक्षमा ताराखर अधिकारी निर्वाचित हुनुभयाे । पाँचौं महाधिवेशन २०५८ बैशाख १२&ndash;१४ मा सिद्धार्थनगरमा सम्पन्न भयो, भने छैठौं महाधिबेशन २०६१ बैशाख ११&ndash;२० र सातौं महाधिबेशन २०६४ बैशाख ५&ndash;७ मा काठमाडौंमा सम्पन्न भई कवि प्रसाद पाठकले तीन कार्यकाल नेतृत्व गर्नुभयाे । आठौं महाधिवेशन २०६६ फागुनमा सम्पन्न भई जिवलाल बस्यालको नेतृत्वमा समिति गठन गरियो । नवौं महाधिवेशन २०६९ फागुनमा सम्पन्न भई अध्यक्षमा योगेन्द्र बहादुर सिंह&nbsp;&nbsp;निर्वाचित हुनुभयाे । त्यसपछि २०७२ माघमा सम्पन्न दशौं महाधिवेशनबाट कुलप्रसाद शर्माको नेतृत्वमा ४७ सदस्यीय केन्द्रीय समिति गठन गरियो । २०७५ कार्तिक १३ गते कृषि विकास बैंक कर्मचारी संघ, नेपाल र नेपाल राष्ट्रिय कर्मचारी संगठनबीच एकीकरण भई मोहिनी खनालको संयोजकत्वमा नयाँ एकीकृत समिति गठन भई संगठनको नाम कृषि विकास बैंक कर्मचारी संगठन, नेपाल रह्यो ।</p>\r\n\r\n<hr />\r\n<p>२०७८ फागुन ४ गते लिला क्षेत्री जिसीको नेतृत्वमा पुनरगठन गरिएको कृषि बिकास बैंक कर्मचारी संघ, नेपालले २०७९ चैत्र १७&ndash;१९ गते भक्तपुर बोडेमा सम्पन्न एघारौं महाधिवेशनबाट लिला जिसीकाे नेतृत्वमा नयाँ केन्द्रीय समिति गठन भयाे । २०७८ साल चैत्र ११&ndash;१३ मा पोखरामा सम्पन्न १० ओै केन्द्रीय&nbsp;&nbsp;केन्द्रीय परिषद् बाट छगेन्द्र आचार्यको नेतृत्वमा संघ अगाडि बढिरहेको छ ।&nbsp;</p>\r\n\r\n<hr />\r\n<p>पछिल्लो समय कर्मचारी संघप्रति कर्मचारी साथीहरूको आकर्षण व्यापक रूपमा बढेको छ । हामीले कर्मचारी हक&ndash;अधिकारको रक्षा, आधिकारिक ट्रेड युनियनको निर्वाचन, सेवा सुरक्षाको प्रत्याभूति, कार्य वातावरणमा सुधार, संस्थाको समग्र विकास तथा संस्थागत सुशासनको पक्षमा निरन्तर आवाज उठाउँदै आएका छौँ । कर्मचारी साथीहरूले गर्नुभएकाे विश्वासलाई केन्द्रमा राखी आगामी दिनमा अझ रचनात्मक र प्रभावकारी रूपमा प्रस्तुत हुने हाम्रो प्रतिवद्धता रहनेछ ।</p>\r\n\r\n<hr />\r\n<p>&nbsp;</p>\r\n</div>', 'welcome_images/primary_welcome_LNUb8XI.png', NULL, 'primary', '2025-05-11 05:26:35.747474', '2025-05-17 15:04:10.190796'),
(2, 'परिचय', 'परिचय', '<hr />\r\n<h3><u><strong>परिचय</strong></u></h3>\r\n\r\n<p>कृषि विकास बैंक कर्मचारी संघ, नेपाल, कृषि विकास बैंक लिमिटेडमा कार्यरत कर्मचारीहरूको हकअधिकार, पेशागतसुरक्षा, सम्मान र समुचित प्रतिनिधित्वका लागि समर्पित, नेपालको श्रम आन्दोलन, संस्थागत उत्तरदायित्व र वित्तीय सेवामार्फत सामाजिक रूपान्तरणमा विश्वास गर्ने एक प्रगतिशिल कर्मचारी संगठन हो । कर्मचारी अधिकार सुनिश्चित गर्ने, &nbsp;श्रमिकको आवाजलाई संस्थागत बनाउने, श्रम&ndash;प्रशासन सम्बन्धलाई सन्तुलनमा ल्याउने र समावेशी संस्थागत विकासमा योगदान दिदै संस्थाको सुधारको साझेदार लक्ष्यका साथ &nbsp;संघको स्थापना गरिएको थियो । वि.सं. २०४६ सालको प्रजातान्त्रिक जनआन्दोलनको परिवेशमा यस बैंकका कर्मचारीहरू पनि संगठित भएर श्रमिक अधिकारका लागि आवाज उठाउन थाले ,सोही प्रक्रियाबाट कृषि विकास बैंक कर्मचारी संघको स्थापना वि.सं. २०४६ साल चैत्र ३१ मा भएको हो । यस संघको इतिहास केवल एक संस्थागत संरचना स्थापना गर्ने बाटो मात्र थिएन &ndash; यो हजारौं कर्मचारीहरूको सपना, संघर्ष, आशा र प्रतिबद्धताको प्रतिफल थियो।</p>\r\n\r\n<hr />\r\n<p>वि.सं. २०७८ चैत्र ४ मा संघमा व्यापक पुनःसंरचना (च्भभलनष्लभभचष्लन) गरिएको थियो, जसले संघलाई नयाँ युगका आवश्यकतासँग मेल खाने गरी अझ प्रभावकारी, उत्तरदायी, समावेशी र गतिशील बनाएको छ । प्रदेश र केन्द्र तहमा विषयगत विभागहरू गठन गरी महिला, युवा र विविध वर्गलाई नेतृत्वमा समेटिएको छ। संघको यो पुनःसंरचना संघको ऐतिहासिक विरासतमा नयाँ ऊर्जा थप्ने र वर्तमान&ndash;भविष्यका चुनौतीलाई सामना गर्न सक्षम बनाउने महत्त्वपूर्ण कदम भएको छ।</p>\r\n\r\n<hr />\r\n<p>संगठित, उत्तरदायी, जवाफदेही र संस्थागत समृद्धिप्रति प्रतिबद्ध बनाएर नीतिगत योगदानलाई थप प्रभावकारी बनाएको छ । सबै तह र वर्गका कर्मचारीलाई संगठित गर्दै, उनीहरूको आवाज नीतिगत तहमा पु&yen;याउने काम गरिरहेको छ । &nbsp;संघको उद्देश्य केवल माग राख्नु मात्र नभई, समस्या समाधानकर्ता, नीति सल्लाहकार, र संस्थागत सुधारको सह&ndash;संरचनाकार, समावेशी विकास, र साझा समृद्धिमा सक्रिय सहकार्य गर्नु पनि हो । संघले कर्मचारीको हक, हित, तालिम, क्षमताविकास, सुरक्षाको सुनिश्चितता, सरकारी रणनीतिहरूसँग सहकार्य, शाखा सुदृढीकरण र संस्थाको कार्यकुशलता वृद्धिमा बराबरी ध्यान दिँदै, श्रम र व्यवस्थापनबीचको सशक्त सेतुको रूपमा कार्य गर्दै आएको छ । हामी संस्थागत स्थायित्व र कर्मचारी सशक्तिकरण मार्फत कर्मचारी र संस्थाको दीर्घकालीन हितलाई एकैसाथ अघि बढाउने मार्गलाई हाम्रो यात्राको मूलधार मान्दछौं। संघले समतामूलक मूल्य, सहभागितामूलक नेतृत्व, र साझा निर्णय प्रक्रिया, पारदर्शी कार्यशैली र जवाफदेही संस्थागत संरचना मार्फत संगठन सञ्चालन गर्दै आएको छ ।</p>', 'welcome_images/primary_welcome_sxNQZCA.png', NULL, 'secondary', '2025-05-11 05:28:08.594192', '2025-05-17 15:07:11.807844'),
(3, 'दृष्टिकोण (Vision), मिशन (Mission)', 'उद्देश्य (Objectives), मूल्य–मान्यता (Core Values)', '<h3><strong><u>दृष्टिकोण (Vision)</u></strong></h3>\r\n\r\n<p><q>&ldquo;सशक्त कर्मचारी, सक्षम संस्था, समृद्ध राष्ट्र&rdquo;</q><br />\r\nकर्मचारीको सम्मान र सशक्तीकरणमार्फत बैंकको कार्यसम्पादन सुधार गर्दै समृद्ध राष्ट्र निर्माणमा योगदान पु&yen;याउने।</p>\r\n\r\n<hr />\r\n<h3><strong><u>मिशन (Mission)</u></strong></h3>\r\n\r\n<p>&nbsp;&nbsp; &nbsp;कर्मचारीको हित सुरक्षित राख्दै, संस्थाको प्रणाली, प्रक्रिया र सेवामा गुणात्मक सुधारका लागि साझेदार भूमिका खेल्ने।<br />\r\n&nbsp;&nbsp; &nbsp;सहकार्य, संवाद र समानतामा आधारित श्रमिक नेतृत्व विकास गर्ने।<br />\r\n&nbsp;&nbsp; &nbsp;बैंक र राष्ट्रको साझा लक्ष्यमा सक्रिय सहयात्रा गर्ने।</p>\r\n\r\n<hr />\r\n<h3><u><strong>उद्देश्य (Objectives)</strong></u></h3>\r\n\r\n<p>संघको मूल उद्देश्य कर्मचारी अधिकार सुनिश्चित गर्दै संस्थागत समृद्धिमा योगदान गर्नु हो ।<br />\r\n&nbsp;&nbsp; &nbsp;कर्मचारीहरूको पेशागत, सामाजिक र आर्थिक अधिकारको संरक्षण।<br />\r\n&nbsp;&nbsp; &nbsp;संस्थाको सेवा सुधार र सुशासनमा रचनात्मक सहयोग पु&yen;याउने।<br />\r\n&nbsp;&nbsp; &nbsp;तालिम, क्षमता अभिवृद्धि, क्षमताविकास र नेतृत्व विकासमा सहकार्य गर्ने।<br />\r\n&nbsp;&nbsp; &nbsp;समावेशी प्रतिनिधित्व र सहभागितामूलक निर्णय प्रणाली लागू गर्ने।<br />\r\n&nbsp;&nbsp; &nbsp;श्रम सम्बन्ध सुधार गर्दै संस्थागत स्थायित्वमा योगदान दिने।<br />\r\n&nbsp;&nbsp; &nbsp;श्रमिक&ndash;प्रशासन सम्बन्धलाई सुदृढ गर्दै श्रम&ndash;मैत्री वातावरण निर्माण गर्ने।<br />\r\n&nbsp;&nbsp; &nbsp;कर्मचारीका माग, सरोकार र सुझावलाई नीति तहमा प्रभावकारी रूपमा प्रस्तुत गर्ने।<br />\r\n&nbsp;&nbsp; &nbsp;बैंकको संस्थागत विकास, सेवा सुधार र प्रणालीगत पारदर्शिता प्रवद्र्धनमा सहकार्य गर्ने।<br />\r\n&nbsp;&nbsp; &nbsp;युवा, महिला र सबै वर्गका कर्मचारीलाई नेतृत्व विकासका अवसर प्रदान गर्दै समावेशी संगठन निर्माण गर्ने।<br />\r\n&nbsp;&nbsp; &nbsp;कर्मचारी आवाजलाई नीतिगत तहमा प्रभावकारी ढंगले प्रस्तुत गर्ने।<br />\r\n&nbsp;&nbsp; &nbsp;समानता, पारदर्शिता र सहभागितामा आधारित नेतृत्वको अभ्यास गर्ने।<br />\r\n&nbsp;&nbsp; &nbsp;सेवा प्रवाहमा गुणस्तर वृद्धि र ग्राहक सन्तुष्टिमा जोड दिने।</p>\r\n\r\n<hr />\r\n<h3><u><strong>मूल्य&ndash;मान्यता (Core Values)</strong></u></h3>\r\n\r\n<p>समानता र समावेशिता<br />\r\nपारदर्शिता र जवाफदेहिता<br />\r\nप्रगतिशील सोच र न्यायपूर्ण दृष्टिकोण<br />\r\nपेशागत निष्ठा र उत्तरदायित्व<br />\r\nसामूहिक निर्णय र सहकार्य<br />\r\nप्रगतिशील र परिवर्तनशील सोच<br />\r\nकर्मचारीको आवाजलाई केन्द्रमा राख्ने नीति<br />\r\nसंस्था&ndash;कर्मचारी&ndash;ग्राहक त्रिसूत्रीय सन्तुलन<br />\r\nसंस्थाको दीर्घकालीन हितको संरक्षण</p>\r\n\r\n<hr />\r\n<p><br />\r\n&nbsp;</p>', 'welcome_images/welcome_section_2.png', NULL, 'secondary', '2025-05-11 05:29:07.370741', '2025-05-17 15:27:38.677744'),
(4, 'संगठनात्मक संरचना ,  हालका प्रमुख कार्यक्रमहरू', 'संगठनात्मक संरचना', '<h3><u><strong>संगठनात्मक संरचना</strong></u></h3>\r\n\r\n<p><br />\r\nसंघको संरचना निम्न अनुसार रहेको छः<br />\r\n&nbsp;&nbsp; &nbsp;जिल्ला समिति (७७ जिल्लामा &nbsp;)<br />\r\n&nbsp;&nbsp; &nbsp;प्रदेश समिति (११ वटा प्रदेश स्तरीय समिती )<br />\r\n&nbsp;&nbsp; &nbsp;केन्द्रीय समिति&nbsp;<br />\r\n&nbsp;&nbsp; &nbsp;विषयगत विभागहरू &ndash; संगठन , प्रशिक्षण , महिला , प्रकाशन आदि<br />\r\n&nbsp;&nbsp; &nbsp;विशेष समिति &ndash; सल्लाहकार समिति, लेखा समिती &nbsp;</p>\r\n\r\n<hr />\r\n<h3><u>हालका प्रमुख कार्यक्रमहरू</u></h3>\r\n\r\n<p>&nbsp;&nbsp; &nbsp;शाखा तथा विभागीय सुझाव संकलन र व्यवस्थापन समक्ष समर्पण<br />\r\n&nbsp;&nbsp; &nbsp;परिषद्, अन्तरक्रिया, गोष्ठी तथा तालिम कार्यक्रम<br />\r\n&nbsp;&nbsp; &nbsp;बैंकमा उत्पन्न हुने मुद्दाहरूमा संवाद तथा समाधान खोज्ने कार्य<br />\r\n&nbsp;&nbsp; &nbsp;कर्मचारी कल्याणकारी कार्यक्रम (सहायता, अवसर विकास)<br />\r\n&nbsp;&nbsp; &nbsp;विविध पर्व तथा सामाजिक गतिविधिमा सहभागीता<br />\r\n&nbsp;&nbsp; &nbsp;कर्मचारी सुझाव संकलन र व्यवस्थापनलाई समर्पण<br />\r\n&nbsp;&nbsp; &nbsp;विद्यमान कानुनी व्यवस्था अन्तर्गत श्रम अधिकारको संरक्षण<br />\r\n&nbsp;&nbsp; &nbsp;महिला, युवा र विविधता प्रतिनिधित्वको प्रवद्र्धन<br />\r\n&nbsp;&nbsp; &nbsp;कर्मचारी तालिम तथा क्षमता विकास कार्यक्रम<br />\r\n&nbsp;&nbsp; &nbsp;सेवा सुधार, सरोकार र सन्तुष्टि सर्वेक्षण<br />\r\n&nbsp;&nbsp; &nbsp;कर्मचारी बीमा, राहत, स्वास्थ्य तथा कल्याण कोष कार्यक्रम<br />\r\n&nbsp;&nbsp; &nbsp;संघ&ndash;व्यवस्थापन समन्वय संवाद कार्यक्रम<br />\r\n&nbsp;&nbsp; &nbsp;सामाजिक उत्तरदायित्व अन्तर्गत विविध गतिविधि (रक्तदान, वृक्षारोपण, आपतकालीन सहयोग)<br />\r\n&nbsp;&nbsp; &nbsp;शाखा तथा विभागीय सुझाव संकलन कार्यक्रम<br />\r\n&nbsp;&nbsp; &nbsp;व्यवस्थापनसँग नीति संवाद र समन्वय<br />\r\n&nbsp;&nbsp; &nbsp;तालिम तथा अभिमुखिकरण कार्यक्रम<br />\r\n&nbsp;&nbsp; &nbsp;कर्मचारी कल्याण, स्वास्थ्य बीमा, सुरक्षा र सुविधा सम्वन्धी पहल<br />\r\n&nbsp;&nbsp; &nbsp;महिला तथा युवा नेतृत्व विकास कार्यक्रम<br />\r\n&nbsp;&nbsp; &nbsp;राष्ट्रिय उद्देश्य &ldquo;समृद्ध नेपाल, सुखी नेपाली&rdquo; सँग सहकार्य गर्दै बैंक सुधारमा योगदान</p>\r\n\r\n<hr />\r\n<p>&nbsp;</p>', 'welcome_images/welcome_section_1.png', 'https://www.youtube.com/watch?v=AL8Ew78yDYA', 'secondary', '2025-05-11 05:29:54.368350', '2025-05-17 15:24:11.351053'),
(5, 'वैचारिक र कार्यगत आधार', 'वैचारिक र कार्यगत आधार', '<h3><u><strong>वैचारिक र कार्यगत आधार&nbsp;</strong></u></h3>\r\n\r\n<p><strong>संघले आफ्नो कामकारवाहीमा निम्न आधारहरूलाई प्राथमिकता दिएको छः</strong><br />\r\n&nbsp;&nbsp; &nbsp;श्रमिकको सामूहिक शक्ति र संस्थाको दिगोपनबीच सन्तुलन<br />\r\n&nbsp;&nbsp; &nbsp;संघ&ndash;व्यवस्थापन संवादसंस्कृति र सहकार्य<br />\r\n&nbsp;&nbsp; &nbsp;सामाजिक न्याय, समान अवसर र समावेशी नेतृत्व<br />\r\n&nbsp;&nbsp; &nbsp;तालिम, नेतृत्व, नीति सुझाव र सुधार कार्यक्रम<br />\r\n&nbsp;&nbsp; &nbsp;संघलाई समस्याको स्रोत होइन, समाधानको सह&ndash;संस्थापकका रूपमा प्रस्तुत गर्ने।</p>\r\n\r\n<hr />\r\n<p><strong>संघको विशेषता (Distinctive Features):</strong><br />\r\n&nbsp;&nbsp; &nbsp;५८ वर्ष पुरानो संस्थामा ३ दशकभन्दा बढीको श्रमिक आन्दोलनको अनुभव।<br />\r\n&nbsp;&nbsp; &nbsp;सबै तहका कर्मचारीलाई समेट्ने समावेशी र समानुपातिक प्रतिनिधित्व।<br />\r\n&nbsp;&nbsp; &nbsp;मुद्दा आधारित र समाधानमुखी नेतृत्व संस्कृति।<br />\r\n&nbsp;&nbsp; &nbsp;कर्मचारीको पेशागत सुरक्षा र बैंकको संस्थागत विकासमा समान योगदान।<br />\r\n&nbsp;&nbsp; &nbsp;शाखादेखि केन्द्रसम्म सशक्त संगठनात्मक उपस्थिति।<br />\r\n&nbsp;&nbsp; &nbsp;राष्ट्रको विकास उद्देश्यसँग समन्वय गर्दै सहकार्य आधारित दृष्टिकोण।</p>\r\n\r\n<hr />\r\n<h3><u><strong>आगामी यात्राको सङ्कल्पः</strong></u></h3>\r\n\r\n<p>संघ आफूलाई आगामी दिनमा कृषि बिकास बैकका सम्पुर्ण कर्मचारीले बिश्वास गर्ने कर्मचारी संगठनको रूपमा रूपान्तरण गर्ने लक्ष्यमा छ, जसलेः<br />\r\n&nbsp;&nbsp; &nbsp;क्र्मचारीहरुको सुनिश्चिता गर्ने ,<br />\r\n&nbsp;&nbsp; &nbsp;तालिम, प्रविधि र उत्पादकत्व सुधारमा संलग्न हुने,<br />\r\n&nbsp;&nbsp; &nbsp;कर्मचारीको आत्मबल, सम्मान र नेतृत्व विकास गर्ने,<br />\r\n&nbsp;&nbsp; &nbsp;बैंकको &ldquo;स्मार्ट&ldquo; रूपान्तरणमा सहकार्य गर्ने,<br />\r\n&nbsp;&nbsp; &nbsp;राष्ट्रको आर्थिक समृद्धिमा वित्तीय प्रणालीमार्फत श्रमको योगदान सुनिश्चित गर्ने।<br />\r\n&nbsp;&nbsp; &nbsp;संस्थाको सुधारको साझेदार,<br />\r\n&nbsp;&nbsp; &nbsp;सेवाको गुणस्तरको निगरानीकर्ता,<br />\r\n&nbsp;&nbsp; &nbsp;नीति निर्माणको सहयात्री,<br />\r\nसंघले कर्मचारी हकहित संरक्षण गर्दै नीति निर्माण र बैंक सुधारमा साझेदारको भूमिका निर्वाह गर्दै आएको छ । डिजिटल सञ्चार र पारदर्शी कार्यशैलीबाट संघलाई दिगो र सशक्त संस्था बनाएको छ। संघले आफ्नो वैचारिक मूल्यमान्यताहरू &ndash; समानता, सामाजिक न्याय, समावेशिता र श्रम&ndash;केन्द्रित नेतृत्व &ndash; लाई अझ स्पष्ट र व्यवहारिक बनाउँदै आएको छ, जसले गर्दा संघले समाजमा सकारात्मक प्रभाव र बैंकमा विश्वासिलो साझेदारको भूमिका निर्वाह गर्न सक्षम भएको छ।</p>\r\n\r\n<p>पुनःसंरचनापछि संघले कर्मचारी हकहितको संरक्षणसँगै बैंकको दीर्घकालीन सुधार, सेवा गुणस्तर वृद्धि र संगठनात्मक क्षमतामा योगदान दिन नयाँ ऊँचाइ हासिल गरेको छ।</p>\r\n\r\n<hr />\r\n<p>&nbsp;</p>', 'welcome_images/sec_welcome3.png', NULL, 'secondary', '2025-05-11 05:30:28.001420', '2025-05-17 15:23:32.301098');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
