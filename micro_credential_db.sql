-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2026 at 10:01 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `micro_credential_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `certificates`
--

CREATE TABLE `certificates` (
  `id` int(11) NOT NULL,
  `certificate_uid` varchar(30) NOT NULL,
  `user_uid` varchar(20) NOT NULL,
  `certificate_title` varchar(150) NOT NULL,
  `certificate_type` enum('academic','professional','skill') NOT NULL,
  `issuing_organization` varchar(150) NOT NULL,
  `issue_date` date NOT NULL,
  `expiry_date` date DEFAULT NULL,
  `credential_id` varchar(100) DEFAULT NULL,
  `certificate_file` varchar(255) NOT NULL,
  `verification_status` enum('pending','verified','rejected') DEFAULT 'pending',
  `issuer_verified` tinyint(1) NOT NULL DEFAULT 1,
  `verified_by` varchar(20) DEFAULT NULL,
  `verified_at` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `source` enum('user','issuer') NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `certificates`
--

INSERT INTO `certificates` (`id`, `certificate_uid`, `user_uid`, `certificate_title`, `certificate_type`, `issuing_organization`, `issue_date`, `expiry_date`, `credential_id`, `certificate_file`, `verification_status`, `issuer_verified`, `verified_by`, `verified_at`, `created_at`, `source`) VALUES
(2, 'CERT1766397714407', 'U202523404', 'Oracle AI Foundations', 'professional', 'Oracle', '2024-08-16', '2026-08-16', 'ORCL-12345', 'certificate_CERT1766397714407.pdf', 'verified', 1, 'U202529235', '2025-12-23 08:24:46', '2025-12-22 10:01:54', 'user'),
(3, 'CERT1766458610905', 'U202523404', 'Oracle AI Foundations', 'professional', 'Oracle', '2024-08-16', '2026-08-20', 'ORCL-12345', 'certificate_CERT1766458610905.pdf', 'verified', 1, 'U202529235', '2025-12-26 12:33:48', '2025-12-23 02:56:50', 'user'),
(4, 'CERT1766464177377', 'U202523404', 'Oracle AI Foundations', 'professional', 'Oracle', '2024-08-16', '2026-08-20', 'ORCL-12345', 'certificate_CERT1766464177377.pdf', 'pending', 1, NULL, NULL, '2025-12-23 04:29:37', 'user'),
(6, 'CERT1766465198141', 'U202523404', 'Oracle AI Foundations', 'professional', 'Oracle', '2024-08-16', '2026-08-20', 'ORCL-12345', 'certificate_CERT1766465198141.pdf', 'pending', 1, NULL, NULL, '2025-12-23 04:46:38', 'user'),
(7, 'CERT1766465419390', 'U202523404', 'Oracle AI Foundations', 'professional', 'Oracle', '2024-08-16', '2026-08-20', 'ORCL-12345', 'certificate_CERT1766465419390.pdf', 'pending', 1, NULL, NULL, '2025-12-23 04:50:19', 'user'),
(8, 'CERT1766732298514', 'U202548341', 'Java Foundations', 'professional', 'Oracle', '2024-08-16', '2026-08-20', 'ORA-JAVA-001', 'certificate_CERT1766732298514.pdf', 'verified', 1, 'U202529235', '2025-12-26 12:37:23', '2025-12-26 06:58:18', 'user'),
(9, 'CERT1766734974820', 'U202523404', 'Java Foundations', 'professional', 'Oracle', '2024-06-01', '2026-06-01', 'ORA001', 'certificate_CERT1766734974820.pdf', 'verified', 1, 'U202564861', '2025-12-26 13:12:54', '2025-12-26 07:42:54', 'issuer'),
(10, 'CERT1766734974508', 'U202540085', 'Java Foundations', 'professional', 'Oracle', '2024-06-01', '2026-06-01', 'ORA002', 'certificate_CERT1766734974508.pdf', 'verified', 1, 'U202564861', '2025-12-26 13:12:54', '2025-12-26 07:42:54', 'issuer'),
(11, 'CERT1766812561676', 'U202529235', 'Java Foundations', 'professional', 'Oracle University', '2024-08-16', '2026-08-20', 'ORA-JAVA-001', 'certificate_CERT1766812561676.pdf', 'pending', 1, NULL, NULL, '2025-12-27 05:16:01', 'user'),
(12, 'CERT1766812642663', 'U202529235', 'Java Foundations', 'professional', 'XYZ Skill Academy', '2024-08-16', '2026-08-20', 'ORA-JAVA-001', 'certificate_CERT1766812642663.pdf', 'pending', 0, NULL, NULL, '2025-12-27 05:17:22', 'user'),
(13, 'CERT1766993364754', 'U202523404', 'Web Development', 'academic', 'Oracle University', '2025-12-01', '2025-12-31', 'ORA', 'certificate_CERT1766993364754.png', 'verified', 1, 'U202529235', '2026-01-03 10:09:56', '2025-12-29 07:29:24', 'user'),
(14, 'CERT1766993397249', 'U202523404', 'Web Development', 'academic', 'Oracle University', '2025-12-01', '2025-12-31', 'ORA', 'certificate_CERT1766993397249.png', 'pending', 1, NULL, NULL, '2025-12-29 07:29:57', 'user'),
(15, 'CERT1766993980369', 'U202523404', 'Web Development', 'academic', 'Oracle University', '2025-12-01', '2025-12-31', 'ORA', 'certificate_CERT1766993980369.jpg', 'pending', 1, NULL, NULL, '2025-12-29 07:39:40', 'user'),
(23, 'CERT1767425586283', 'U202523404', 'java', 'professional', 'Oracle University', '2026-01-01', '2026-01-30', 'ORA', 'certificate_CERT1767425586283.jpg', 'pending', 1, NULL, NULL, '2026-01-03 07:33:06', 'user'),
(24, 'CERT1767425633190', 'U202523404', 'Test1', 'professional', 'Java Foundation', '2026-01-01', '2026-01-31', 'ORA', 'certificate_CERT1767425633190.jpg', 'verified', 1, 'U202529235', '2026-01-03 13:04:46', '2026-01-03 07:33:53', 'user'),
(25, 'CERT1767429058314', 'U202523404', 'Java Foundations', 'professional', 'Oracle', '0000-00-00', '0000-00-00', 'ORA001', 'certificate_CERT1767429058314.pdf', 'verified', 1, 'U202633976', '2026-01-03 14:00:58', '2026-01-03 08:30:58', 'issuer'),
(26, 'CERT1767429058543', 'U202540085', 'Web Development Basics', 'skill', 'Oracle University', '0000-00-00', '0000-00-00', 'ORA002', 'certificate_CERT1767429058543.pdf', 'verified', 1, 'U202633976', '2026-01-03 14:00:58', '2026-01-03 08:30:58', 'issuer'),
(27, 'CERT1767429058335', 'U202548341', 'Python Programming', 'professional', 'Java Foundation', '0000-00-00', '0000-00-00', 'JAVA003', 'certificate_CERT1767429058335.pdf', 'verified', 1, 'U202633976', '2026-01-03 14:00:58', '2026-01-03 08:30:58', 'issuer'),
(28, 'CERT1767429058491', 'U202523404', 'Data Structures', 'academic', 'Oracle University', '0000-00-00', '0000-00-00', 'ORA004', 'certificate_CERT1767429058491.pdf', 'verified', 1, 'U202633976', '2026-01-03 14:00:58', '2026-01-03 08:30:58', 'issuer'),
(29, 'CERT1767429058773', 'U202540085', 'Cloud Computing Essentials', 'professional', 'Oracle', '0000-00-00', '0000-00-00', 'ORA005', 'certificate_CERT1767429058773.pdf', 'verified', 1, 'U202633976', '2026-01-03 14:00:58', '2026-01-03 08:30:58', 'issuer'),
(30, 'CERT1767429531121', 'U202523404', 'Machine Learning Basics', 'professional', 'Oracle', '2023-11-10', '2025-11-10', 'ORA006', 'certificate_CERT1767429531121.pdf', 'verified', 1, 'U202633976', '2026-01-03 14:08:51', '2026-01-03 08:38:51', 'issuer'),
(31, 'CERT1767429531532', 'U202540085', 'Frontend Development', 'skill', 'Oracle University', '2022-09-01', '2024-09-01', 'ORA007', 'certificate_CERT1767429531532.pdf', 'verified', 1, 'U202633976', '2026-01-03 14:08:51', '2026-01-03 08:38:51', 'issuer'),
(32, 'CERT1767429531274', 'U202548341', 'Advanced Java', 'professional', 'Java Foundation', '2024-02-15', '2026-02-15', 'JAVA008', 'certificate_CERT1767429531274.pdf', 'verified', 1, 'U202633976', '2026-01-03 14:08:51', '2026-01-03 08:38:51', 'issuer'),
(33, 'CERT1767429531428', 'U202523404', 'Database Management Systems', 'academic', 'Oracle University', '2021-12-05', '2024-12-05', 'ORA009', 'certificate_CERT1767429531428.pdf', 'verified', 1, 'U202633976', '2026-01-03 14:08:51', '2026-01-03 08:38:51', 'issuer'),
(34, 'CERT1767430565275', 'U202647636', 'Java Foundations', 'professional', 'Oracle University', '2024-06-01', '2026-06-01', 'ORA002', 'certificate_CERT1767430565275.pdf', 'pending', 1, NULL, NULL, '2026-01-03 08:56:05', 'user'),
(35, 'CERT1767431620884', 'U202694283', 'Java Basics', 'professional', 'Oracle', '0000-00-00', '0000-00-00', 'ORA007', 'certificate_CERT1767431620884.pdf', 'verified', 1, 'U202564861', '2026-01-07 10:07:19', '2026-01-07 04:37:19', 'issuer');

-- --------------------------------------------------------

--
-- Table structure for table `certificate_skill_mapping`
--

CREATE TABLE `certificate_skill_mapping` (
  `id` int(11) NOT NULL,
  `issuer` varchar(100) NOT NULL,
  `certificate_title` varchar(150) NOT NULL,
  `skill_id` int(11) NOT NULL,
  `nsqf_level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `certificate_skill_mapping`
--

INSERT INTO `certificate_skill_mapping` (`id`, `issuer`, `certificate_title`, `skill_id`, `nsqf_level`) VALUES
(5, 'Oracle', 'Oracle AI Foundations', 2, 3),
(6, 'Oracle', 'Oracle AI Foundations', 3, 3),
(7, 'AWS', 'Cloud Practitioner', 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `certificate_verification`
--

CREATE TABLE `certificate_verification` (
  `id` int(11) NOT NULL,
  `certificate_uid` varchar(30) NOT NULL,
  `status` enum('pending','verified','rejected') DEFAULT 'pending',
  `verified_by` varchar(20) DEFAULT NULL,
  `verified_at` datetime DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `certificate_verification`
--

INSERT INTO `certificate_verification` (`id`, `certificate_uid`, `status`, `verified_by`, `verified_at`, `remarks`, `created_at`) VALUES
(3, 'CERT1766397714407', '', 'U202529235', '2025-12-23 08:24:46', 'Certificate verified successfully', '2025-12-23 02:54:46'),
(4, 'CERT1766458610905', 'verified', 'U202529235', '2025-12-23 08:28:25', 'Certificate verified successfully', '2025-12-23 02:58:25');

-- --------------------------------------------------------

--
-- Table structure for table `issuers`
--

CREATE TABLE `issuers` (
  `issuer_id` int(11) NOT NULL,
  `user_uid` varchar(20) DEFAULT NULL,
  `issuer_name` varchar(150) DEFAULT NULL,
  `issuer_type` varchar(50) DEFAULT NULL,
  `verified` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `issuers`
--

INSERT INTO `issuers` (`issuer_id`, `user_uid`, `issuer_name`, `issuer_type`, `verified`, `created_at`) VALUES
(1, 'U202564861', 'Oracle University', NULL, 1, '2025-12-26 06:42:52'),
(2, 'U202633976', 'Java Foundation', NULL, 1, '2026-01-03 06:44:35');

-- --------------------------------------------------------

--
-- Table structure for table `login_logs`
--

CREATE TABLE `login_logs` (
  `id` int(11) NOT NULL,
  `user_uid` varchar(20) NOT NULL,
  `login_time` datetime NOT NULL,
  `logout_time` datetime DEFAULT NULL,
  `ip_address` varchar(50) DEFAULT NULL,
  `device_info` varchar(255) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `session_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login_logs`
--

INSERT INTO `login_logs` (`id`, `user_uid`, `login_time`, `logout_time`, `ip_address`, `device_info`, `country`, `city`, `session_token`, `created_at`) VALUES
(1, 'U202523404', '2025-12-19 17:30:19', '2025-12-19 17:53:56', '::1', 'PostmanRuntime/7.49.1', 'Unknown', 'Unknown', 'qfud7rcbnsfer1137bnq7tjbq8', '2025-12-19 12:00:19'),
(2, 'U202523404', '2025-12-19 17:47:56', '2025-12-19 17:53:56', '::1', 'PostmanRuntime/7.49.1', 'Unknown', 'Unknown', 'qfud7rcbnsfer1137bnq7tjbq8', '2025-12-19 12:17:56'),
(3, 'U202523404', '2025-12-19 17:54:09', NULL, '::1', 'PostmanRuntime/7.49.1', 'Unknown', 'Unknown', 'qfud7rcbnsfer1137bnq7tjbq8', '2025-12-19 12:24:09'),
(4, 'U202523404', '2025-12-22 15:24:45', NULL, '::1', 'PostmanRuntime/7.51.0', 'Unknown', 'Unknown', 'r9oa03tnuapgs8j35pu5vntrrp', '2025-12-22 09:54:45'),
(5, 'U202529235', '2025-12-22 15:35:53', '2025-12-22 15:43:17', '::1', 'PostmanRuntime/7.51.0', 'Unknown', 'Unknown', 'r9oa03tnuapgs8j35pu5vntrrp', '2025-12-22 10:05:53'),
(6, 'U202529235', '2025-12-22 15:40:28', '2025-12-22 15:43:17', '::1', 'PostmanRuntime/7.51.0', 'Unknown', 'Unknown', 'r9oa03tnuapgs8j35pu5vntrrp', '2025-12-22 10:10:28'),
(7, 'U202542053', '2025-12-22 15:53:34', NULL, '::1', 'PostmanRuntime/7.51.0', 'Unknown', 'Unknown', 'r9oa03tnuapgs8j35pu5vntrrp', '2025-12-22 10:23:34'),
(8, 'U202542053', '2025-12-23 08:06:11', NULL, '::1', 'PostmanRuntime/7.51.0', 'Unknown', 'Unknown', 'hrdncduuu5n17c72acacv6a83b', '2025-12-23 02:36:11'),
(9, 'U202542053', '2025-12-23 08:09:58', '2025-12-23 08:23:18', '::1', 'PostmanRuntime/7.51.0', 'Unknown', 'Unknown', 'f49ce4sbg7tg1al6rl2d6d3pvo', '2025-12-23 02:39:58'),
(10, 'U202529235', '2025-12-23 08:23:53', '2025-12-23 10:34:13', '::1', 'PostmanRuntime/7.51.0', 'Unknown', 'Unknown', 'f49ce4sbg7tg1al6rl2d6d3pvo', '2025-12-23 02:53:53'),
(11, 'U202523404', '2025-12-23 08:26:20', '2025-12-23 08:27:02', '::1', 'PostmanRuntime/7.51.0', 'Unknown', 'Unknown', 'f49ce4sbg7tg1al6rl2d6d3pvo', '2025-12-23 02:56:20'),
(12, 'U202529235', '2025-12-23 08:27:40', '2025-12-23 10:34:13', '::1', 'PostmanRuntime/7.51.0', 'Unknown', 'Unknown', 'f49ce4sbg7tg1al6rl2d6d3pvo', '2025-12-23 02:57:40'),
(13, 'U202542053', '2025-12-23 08:29:12', NULL, '::1', 'PostmanRuntime/7.51.0', 'Unknown', 'Unknown', 'f49ce4sbg7tg1al6rl2d6d3pvo', '2025-12-23 02:59:12'),
(14, 'U202523404', '2025-12-23 09:59:31', NULL, '::1', 'PostmanRuntime/7.51.0', 'Unknown', 'Unknown', 'f49ce4sbg7tg1al6rl2d6d3pvo', '2025-12-23 04:29:31'),
(15, 'U202529235', '2025-12-23 10:32:17', '2025-12-23 10:34:13', '::1', 'PostmanRuntime/7.51.0', 'Unknown', 'Unknown', 'f49ce4sbg7tg1al6rl2d6d3pvo', '2025-12-23 05:02:17'),
(16, 'U202529235', '2025-12-23 10:34:00', '2025-12-23 10:34:13', '::1', 'PostmanRuntime/7.51.0', 'Unknown', 'Unknown', 'f49ce4sbg7tg1al6rl2d6d3pvo', '2025-12-23 05:04:00'),
(17, 'U202523404', '2025-12-23 10:34:32', NULL, '::1', 'PostmanRuntime/7.51.0', 'Unknown', 'Unknown', 'f49ce4sbg7tg1al6rl2d6d3pvo', '2025-12-23 05:04:32'),
(18, 'U202523404', '2025-12-24 13:11:49', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 12; SM-A217F Build/SP1A.210812.016)', 'Unknown', 'Unknown', 'ciiuuh1gstt9nu0tr9cebu50e9', '2025-12-24 07:41:49'),
(19, 'U202523404', '2025-12-24 13:11:50', NULL, '::1', 'Dalvik/2.1.0 (Linux; U; Android 12; SM-A217F Build/SP1A.210812.016)', 'Unknown', 'Unknown', 'vcetq3ji5to840mmhifuou2qkf', '2025-12-24 07:41:50'),
(20, 'U202523404', '2025-12-24 13:11:50', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 12; SM-A217F Build/SP1A.210812.016)', 'Unknown', 'Unknown', 'iccch4lskd21qej40b5ajvhl7j', '2025-12-24 07:41:50'),
(21, 'U202523404', '2025-12-24 13:11:51', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 12; SM-A217F Build/SP1A.210812.016)', 'Unknown', 'Unknown', 'adl7k821sodimidr8rjnd2jk1s', '2025-12-24 07:41:51'),
(22, 'U202523404', '2025-12-24 13:21:26', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 12; SM-A217F Build/SP1A.210812.016)', 'Unknown', 'Unknown', 'm7un0007skre6689rakjtigesf', '2025-12-24 07:51:26'),
(23, 'U202529235', '2025-12-24 13:21:52', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 12; SM-A217F Build/SP1A.210812.016)', 'Unknown', 'Unknown', 'a64e6rkk9qd7pskf2k5ttqrvtl', '2025-12-24 07:51:52'),
(24, 'U202523404', '2025-12-24 13:22:21', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 12; SM-A217F Build/SP1A.210812.016)', 'Unknown', 'Unknown', 'ge5cbu4t8sl1n86pvghusjodpe', '2025-12-24 07:52:21'),
(25, 'U202542053', '2025-12-24 13:40:37', NULL, '::1', 'PostmanRuntime/7.51.0', 'Unknown', 'Unknown', '88lf902r7j164kmmctbuinb0nm', '2025-12-24 08:10:37'),
(26, 'U202542053', '2025-12-24 13:46:35', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 12; SM-A217F Build/SP1A.210812.016)', 'Unknown', 'Unknown', 'fpp8ngokpl6mkko9u1cnapc4kh', '2025-12-24 08:16:35'),
(27, 'U202542053', '2025-12-24 13:47:44', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 12; SM-A217F Build/SP1A.210812.016)', 'Unknown', 'Unknown', '3uicivmu46fvnkl5s6k8avm0sm', '2025-12-24 08:17:44'),
(28, 'U202529235', '2025-12-24 13:48:34', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 12; SM-A217F Build/SP1A.210812.016)', 'Unknown', 'Unknown', 'p3s8b3fe9do42qeo2a9j1ss0c4', '2025-12-24 08:18:34'),
(29, 'U202523404', '2025-12-24 13:49:28', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 12; SM-A217F Build/SP1A.210812.016)', 'Unknown', 'Unknown', 'j5t4eanretpbpgq9ansq3osohk', '2025-12-24 08:19:28'),
(30, 'U202523404', '2025-12-24 13:51:57', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 16; SM-A736B Build/BP2A.250605.031.A3)', 'Unknown', 'Unknown', 'cq9mh4698kh5fqu0pt2e2ropj5', '2025-12-24 08:21:57'),
(31, 'U202529235', '2025-12-24 13:53:03', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 16; SM-A736B Build/BP2A.250605.031.A3)', 'Unknown', 'Unknown', '13rb1nilnolk49dourm5n46pmk', '2025-12-24 08:23:03'),
(32, 'U202523404', '2025-12-24 13:54:41', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 13; SM-M526B Build/TP1A.220624.014)', 'Unknown', 'Unknown', '7qo2enihb6s2rbe8u89g6qjdpv', '2025-12-24 08:24:41'),
(33, 'U202523404', '2025-12-24 19:19:43', '2025-12-25 22:20:55', '::1', 'PostmanRuntime/7.51.0', 'Unknown', 'Unknown', 'nst90lho1s1s853tltfa01akcg', '2025-12-24 13:49:43'),
(34, 'U202523404', '2025-12-24 19:37:06', NULL, '::1', 'Dalvik/2.1.0 (Linux; U; Android 12; SM-A217F Build/SP1A.210812.016)', 'Unknown', 'Unknown', 'vn8k5bvij5fulbkgq69uj1v5ti', '2025-12-24 14:07:06'),
(35, 'U202523404', '2025-12-25 13:36:40', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 12; SM-A217F Build/SP1A.210812.016)', 'Unknown', 'Unknown', 't033d924skqudpug33ra3v6k2g', '2025-12-25 08:06:40'),
(36, 'U202523404', '2025-12-25 13:36:40', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 12; SM-A217F Build/SP1A.210812.016)', 'Unknown', 'Unknown', 'l01ia9cmapf66kd6rnoj88vd4i', '2025-12-25 08:06:40'),
(37, 'U202523404', '2025-12-25 13:36:45', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 12; SM-A217F Build/SP1A.210812.016)', 'Unknown', 'Unknown', '4apq2ecv42kea25n25988of2dg', '2025-12-25 08:06:45'),
(38, 'U202523404', '2025-12-25 13:36:45', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 12; SM-A217F Build/SP1A.210812.016)', 'Unknown', 'Unknown', '13ir9m8qatrhbqdcm5an084bhc', '2025-12-25 08:06:45'),
(39, 'U202523404', '2025-12-25 13:36:46', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 12; SM-A217F Build/SP1A.210812.016)', 'Unknown', 'Unknown', 'lvdgk7q4a6pi5s20b2aur80d9j', '2025-12-25 08:06:46'),
(40, 'U202523404', '2025-12-25 13:36:46', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 12; SM-A217F Build/SP1A.210812.016)', 'Unknown', 'Unknown', 'e1r4at77o2n1kau4c3aotc0gg2', '2025-12-25 08:06:46'),
(41, 'U202523404', '2025-12-25 13:36:47', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 12; SM-A217F Build/SP1A.210812.016)', 'Unknown', 'Unknown', '1r2blmf4t1rvkiq133uhba561b', '2025-12-25 08:06:47'),
(42, 'U202523404', '2025-12-25 13:36:47', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 12; SM-A217F Build/SP1A.210812.016)', 'Unknown', 'Unknown', '8acouv7v8onnere9l9gs48c449', '2025-12-25 08:06:47'),
(43, 'U202540085', '2025-12-25 13:38:03', NULL, '::1', 'Dalvik/2.1.0 (Linux; U; Android 12; SM-A217F Build/SP1A.210812.016)', 'Unknown', 'Unknown', '9srhpqab9247or14mivmoimvi6', '2025-12-25 08:08:03'),
(44, 'U202523404', '2025-12-25 13:45:54', '2025-12-25 22:20:55', '::1', 'PostmanRuntime/7.51.0', 'Unknown', 'Unknown', 'nst90lho1s1s853tltfa01akcg', '2025-12-25 08:15:54'),
(45, 'U202523404', '2025-12-25 13:46:21', '2025-12-25 22:20:55', '::1', 'PostmanRuntime/7.51.0', 'Unknown', 'Unknown', 'nst90lho1s1s853tltfa01akcg', '2025-12-25 08:16:21'),
(46, 'U202540085', '2025-12-25 13:47:26', NULL, '::1', 'Dalvik/2.1.0 (Linux; U; Android 12; SM-A217F Build/SP1A.210812.016)', 'Unknown', 'Unknown', 'pterntu2n91itmgnmuk6k9775h', '2025-12-25 08:17:26'),
(47, 'U202540085', '2025-12-25 14:06:39', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', 'ddqnh3sirh2e9o9hhsn21mlu5o', '2025-12-25 08:36:39'),
(48, 'U202540085', '2025-12-25 17:21:51', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 12; SM-A217F Build/SP1A.210812.016)', 'Unknown', 'Unknown', 'aoi3upr584nar5dh36lvrfehjh', '2025-12-25 11:51:51'),
(49, 'U202540085', '2025-12-25 17:22:41', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 12; SM-A217F Build/SP1A.210812.016)', 'Unknown', 'Unknown', 'rimp68s7cfpnkps7hsv5m4m1ac', '2025-12-25 11:52:41'),
(50, 'U202540085', '2025-12-25 17:25:16', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 12; SM-A217F Build/SP1A.210812.016)', 'Unknown', 'Unknown', '30tlmgaagqqkmgkifihejfgv4j', '2025-12-25 11:55:16'),
(51, 'U202540085', '2025-12-25 17:31:07', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', 'bt42guia43e61fmhlqgchk6svf', '2025-12-25 12:01:07'),
(52, 'U202523404', '2025-12-25 18:17:52', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', 'gjp625ueuvug6jvgu88jkgs0o0', '2025-12-25 12:47:52'),
(53, 'U202529235', '2025-12-25 18:18:22', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', 'nudk0767627cj9gub02nlsdk64', '2025-12-25 12:48:22'),
(54, 'U202542053', '2025-12-25 18:19:06', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', 'srp8mua8quottnnkf9d5qpv43d', '2025-12-25 12:49:06'),
(55, 'U202542053', '2025-12-25 18:19:07', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', 'morbm9gb494jnpgb6i6e1iq07u', '2025-12-25 12:49:07'),
(56, 'U202542053', '2025-12-25 18:19:08', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', 'lkcu5qaevih3vosc82mtogem4g', '2025-12-25 12:49:08'),
(57, 'U202523404', '2025-12-25 22:17:15', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', 'bb9a69th9efo85mt8v3u50o76j', '2025-12-25 16:47:15'),
(58, 'U202523404', '2025-12-25 22:19:30', '2025-12-25 22:20:55', '::1', 'PostmanRuntime/7.51.0', 'Unknown', 'Unknown', 'nst90lho1s1s853tltfa01akcg', '2025-12-25 16:49:30'),
(59, 'U202529235', '2025-12-25 22:21:09', '2025-12-25 22:21:22', '::1', 'PostmanRuntime/7.51.0', 'Unknown', 'Unknown', 'nst90lho1s1s853tltfa01akcg', '2025-12-25 16:51:09'),
(60, 'U202523404', '2025-12-25 22:35:24', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', 'vqrr82mlr1sh9gigq114t4mle5', '2025-12-25 17:05:24'),
(61, 'U202523404', '2025-12-25 22:36:10', NULL, '::1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', 'apdqtj0ova9ko0u43c2bp5ro5v', '2025-12-25 17:06:10'),
(62, 'U202523404', '2025-12-25 22:36:14', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', '6hqfl1m7shvd5btghdk00jdlr7', '2025-12-25 17:06:14'),
(63, 'U202523404', '2025-12-25 22:36:36', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', 'p0dkrgqo9da21m13v3q05gjeul', '2025-12-25 17:06:36'),
(64, 'U202523404', '2025-12-25 22:52:45', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', '279hcsk6jhvnfi0uvtu6smq3fq', '2025-12-25 17:22:45'),
(65, 'U202529235', '2025-12-25 22:53:27', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', 'enedqhj214f9m78hk7lt5nsfi8', '2025-12-25 17:23:27'),
(66, 'U202542053', '2025-12-25 22:54:00', NULL, '::1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', '7297cmetubpq9ecde7ro03o5uv', '2025-12-25 17:24:00'),
(67, 'U202529235', '2025-12-25 22:55:47', NULL, '::1', 'PostmanRuntime/7.51.0', 'Unknown', 'Unknown', 'nst90lho1s1s853tltfa01akcg', '2025-12-25 17:25:47'),
(68, 'U202529235', '2025-12-25 22:59:02', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', '2ikmmtcfcr2rub3grrdctsh3bp', '2025-12-25 17:29:02'),
(69, 'U202523404', '2025-12-25 22:59:39', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', 'au2ipmrjnko0r2jh67csbq7u8b', '2025-12-25 17:29:39'),
(70, 'U202529235', '2025-12-25 23:12:01', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', 'v2fue8j2t1jnnj2ccub5s580ks', '2025-12-25 17:42:01'),
(71, 'U202542053', '2025-12-25 23:12:32', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', 'pihldk3gb60ogr0rgll8vksu5k', '2025-12-25 17:42:32'),
(72, 'U202523404', '2025-12-25 23:13:06', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', 'vilce3bfm8vf3guvsnpsr9d6k6', '2025-12-25 17:43:06'),
(73, 'U202523404', '2025-12-25 23:14:26', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', 'pul6u63bde2pd2275jkbu4m31e', '2025-12-25 17:44:26'),
(74, 'U202540085', '2025-12-25 23:14:58', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', '2jtlsb11sfjce9u87pbv6q4c5c', '2025-12-25 17:44:58'),
(75, 'U202523404', '2025-12-25 23:16:22', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', 'o6ctpu8pirpjvh0llka6uis353', '2025-12-25 17:46:22'),
(76, 'U202523404', '2025-12-25 23:18:20', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 12; SM-A217F Build/SP1A.210812.016)', 'Unknown', 'Unknown', 'vpvipsn9rrttsvrvhh66cdpomh', '2025-12-25 17:48:20'),
(77, 'U202529235', '2025-12-25 23:19:34', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', 'so25c4rghl6nvhh4sgdnb9l7i1', '2025-12-25 17:49:34'),
(78, 'U202542053', '2025-12-25 23:19:58', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', 'st8h71m97o2nn2l1vmg4o8dr2f', '2025-12-25 17:49:58'),
(79, 'U202523404', '2025-12-25 23:35:10', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', '1ur8bpupj12ni39lqje57g02vs', '2025-12-25 18:05:10'),
(80, 'U202542053', '2025-12-25 23:36:14', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', 'mjqvu8jn4k6k5bv6vei2obrc13', '2025-12-25 18:06:14'),
(81, 'U202529235', '2025-12-25 23:36:53', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', 's326tm2ivclpluef0q76ire8j0', '2025-12-25 18:06:53'),
(82, 'U202542053', '2025-12-25 23:37:16', NULL, '::1', 'PostmanRuntime/7.51.0', 'Unknown', 'Unknown', 'nst90lho1s1s853tltfa01akcg', '2025-12-25 18:07:16'),
(83, 'U202542053', '2025-12-25 23:37:45', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', 'ecqdp6j282bt5qu369g7nt24r7', '2025-12-25 18:07:45'),
(84, 'U202529235', '2025-12-25 23:38:22', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', 'c3hb3uja7fi502civnch38o99m', '2025-12-25 18:08:22'),
(85, 'U202523404', '2025-12-25 23:42:27', '2025-12-25 23:42:58', '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', '6cu18j72uci9sr3g8irbcarqfj', '2025-12-25 18:12:27'),
(86, 'U202542053', '2025-12-25 23:43:56', '2025-12-25 23:44:04', '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', 'q0ncaoi73jh0e2140h5biu2fp4', '2025-12-25 18:13:56'),
(87, 'U202542053', '2025-12-25 23:48:24', '2025-12-25 23:48:29', '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', 'vbp5do9h2aamruhd1so2gjbf4v', '2025-12-25 18:18:24'),
(88, 'U202523404', '2025-12-26 08:13:34', '2025-12-26 08:16:00', '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', 'jgn47ldjpjh2jk9qnvdfjn8nhl', '2025-12-26 02:43:34'),
(89, 'U202523404', '2025-12-26 08:14:58', '2025-12-26 13:35:40', '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 12; SM-A217F Build/SP1A.210812.016)', 'Unknown', 'Unknown', 'etv504k52sjcvit0k2sguplv3e', '2025-12-26 02:44:58'),
(90, 'U202523404', '2025-12-26 08:19:31', NULL, '::1', 'PostmanRuntime/7.51.0', 'Unknown', 'Unknown', 'lonlv343h99risoksg8l7eg9uk', '2025-12-26 02:49:31'),
(91, 'U202548341', '2025-12-26 12:13:22', NULL, '::1', 'PostmanRuntime/7.51.0', 'Unknown', 'Unknown', 'lonlv343h99risoksg8l7eg9uk', '2025-12-26 06:43:22'),
(92, 'U202529235', '2025-12-26 12:33:40', NULL, '::1', 'PostmanRuntime/7.51.0', 'Unknown', 'Unknown', 'lonlv343h99risoksg8l7eg9uk', '2025-12-26 07:03:40'),
(93, 'U202523404', '2025-12-26 12:38:40', NULL, '::1', 'PostmanRuntime/7.51.0', 'Unknown', 'Unknown', 'c34mhdghkvuir3j8f0lsn1rmct', '2025-12-26 07:08:40'),
(94, 'U202564861', '2025-12-26 12:55:26', NULL, '::1', 'PostmanRuntime/7.51.0', 'Unknown', 'Unknown', 'c34mhdghkvuir3j8f0lsn1rmct', '2025-12-26 07:25:26'),
(95, 'U202564861', '2025-12-26 13:25:58', NULL, '::1', 'PostmanRuntime/7.51.0', 'Unknown', 'Unknown', 'c34mhdghkvuir3j8f0lsn1rmct', '2025-12-26 07:55:58'),
(96, 'U202564861', '2025-12-26 13:33:25', '2025-12-26 13:33:42', '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', 'ev8aa9v0arvkm5g414dlgoidgg', '2025-12-26 08:03:25'),
(97, 'U202564861', '2025-12-26 13:36:14', '2025-12-26 13:40:20', '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 12; SM-A217F Build/SP1A.210812.016)', 'Unknown', 'Unknown', 'rpa4a8m610126p47mlt534dob0', '2025-12-26 08:06:14'),
(98, 'U202564861', '2025-12-26 13:37:22', '2025-12-26 13:37:52', '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', '6kb6c6g2l7v6k0e14u65o7is8s', '2025-12-26 08:07:22'),
(99, 'U202564861', '2025-12-26 13:40:56', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 12; SM-A217F Build/SP1A.210812.016)', 'Unknown', 'Unknown', '5nubjrcp5et4mjnsqhdtis51io', '2025-12-26 08:10:56'),
(100, 'U202564861', '2025-12-26 13:40:56', '2025-12-26 13:41:47', '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 12; SM-A217F Build/SP1A.210812.016)', 'Unknown', 'Unknown', 'nc74jokldvddfphphr9upmrkk3', '2025-12-26 08:10:56'),
(101, 'U202523404', '2025-12-26 14:00:31', '2025-12-26 14:35:04', '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', '8230e39u87ud7luei6079hgttd', '2025-12-26 08:30:31'),
(102, 'U202523404', '2025-12-26 14:04:44', '2025-12-26 14:49:51', '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 12; SM-A217F Build/SP1A.210812.016)', 'Unknown', 'Unknown', '1mc516sngijc8ggg4o6mlotfat', '2025-12-26 08:34:44'),
(103, 'U202523404', '2025-12-26 14:35:44', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', '0m316nrv4vd7gqpbqq5fgcqnio', '2025-12-26 09:05:44'),
(104, 'U202523404', '2025-12-26 14:50:04', '2025-12-26 14:50:29', '::1', 'Dalvik/2.1.0 (Linux; U; Android 12; SM-A217F Build/SP1A.210812.016)', 'Unknown', 'Unknown', 'hnc7ug8jmrlep9e0e3i7rf2d68', '2025-12-26 09:20:04'),
(105, 'U202523404', '2025-12-27 08:59:24', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', 'ad4c0s36uo04mbse7p60dgm3ns', '2025-12-27 03:29:24'),
(106, 'U202523404', '2025-12-27 10:06:27', '2025-12-27 10:30:33', '::1', 'PostmanRuntime/7.51.0', 'Unknown', 'Unknown', 'fvkst3q7pm52ni2o0sj5q25ibl', '2025-12-27 04:36:27'),
(107, 'U202529235', '2025-12-27 10:30:45', NULL, '::1', 'PostmanRuntime/7.51.0', 'Unknown', 'Unknown', 'fvkst3q7pm52ni2o0sj5q25ibl', '2025-12-27 05:00:45'),
(108, 'U202523404', '2025-12-27 12:38:31', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 12; SM-A217F Build/SP1A.210812.016)', 'Unknown', 'Unknown', 'qlap29uq0ge41pt8ujnh4ia2uo', '2025-12-27 07:08:31'),
(109, 'U202523404', '2025-12-27 13:02:44', '2025-12-27 13:47:41', '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', 'atb8vskla9f1m132n2cmrfjcv9', '2025-12-27 07:32:44'),
(110, 'U202523404', '2025-12-27 13:48:10', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', 'i1q4musf9kl0f29gknime4o042', '2025-12-27 08:18:10'),
(111, 'U202523404', '2025-12-29 12:32:47', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', 'c59jgbm1l8oo2fcaie36ekna6c', '2025-12-29 07:02:47'),
(112, 'U202523404', '2025-12-29 12:52:06', '2025-12-29 13:09:40', '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 12; SM-A217F Build/SP1A.210812.016)', 'Unknown', 'Unknown', 'o36kf4mf63097mq920h55th8c0', '2025-12-29 07:22:06'),
(113, 'U202523404', '2025-12-29 12:54:30', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', 'ujmh1vokq04phj2kie3i66iplg', '2025-12-29 07:24:30'),
(114, 'U202523404', '2025-12-29 13:11:37', '2025-12-29 15:29:29', '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 12; SM-A217F Build/SP1A.210812.016)', 'Unknown', 'Unknown', 'g4ilad6t0aolauuddo7pv8j7l5', '2025-12-29 07:41:37'),
(115, 'U202523404', '2025-12-29 13:32:47', NULL, '::1', 'PostmanRuntime/7.51.0', 'Unknown', 'Unknown', '3embikr4fldt8qr48e5b3mbrri', '2025-12-29 08:02:47'),
(116, 'U202523404', '2025-12-29 15:29:44', NULL, '::1', 'Dalvik/2.1.0 (Linux; U; Android 12; SM-A217F Build/SP1A.210812.016)', 'Unknown', 'Unknown', '6kbj0arucgs5rk2hq03vcd9tmp', '2025-12-29 09:59:44'),
(117, 'U202523404', '2025-12-29 15:34:33', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', 'vcsjopv642m4s3p1ll951rc0fi', '2025-12-29 10:04:33'),
(118, 'U202523404', '2026-01-02 08:27:09', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', 'gp27pv3hodeh2vilcp23oro5eh', '2026-01-02 02:57:09'),
(119, 'U202523404', '2026-01-02 08:53:46', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', '5jkgpud9t5m0k0qibvkfjbefm1', '2026-01-02 03:23:46'),
(120, 'U202523404', '2026-01-02 09:23:47', NULL, '::1', 'PostmanRuntime/7.51.0', 'Unknown', 'Unknown', 'j31vbgovqv1f0riog0bd9fmruf', '2026-01-02 03:53:47'),
(121, 'U202523404', '2026-01-02 12:59:34', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', 'b3vt899d7dmb25q2ott2bjukl4', '2026-01-02 07:29:34'),
(122, 'U202523404', '2026-01-02 13:47:45', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', 'chq4nen75dk9ov548c2n523kt8', '2026-01-02 08:17:45'),
(123, 'U202523404', '2026-01-02 13:52:08', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', 'haa1fe2arn5ueb0fcql03ikjpu', '2026-01-02 08:22:08'),
(124, 'U202523404', '2026-01-02 13:57:31', '2026-01-02 13:59:50', '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', 'uo8o7fmrcskqkcmmj93e4bkd67', '2026-01-02 08:27:31'),
(125, 'U202523404', '2026-01-02 14:00:21', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', '0df7icl1fudamibflmf3hkjp6a', '2026-01-02 08:30:21'),
(126, 'U202523404', '2026-01-02 14:00:22', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', 'lrquh01l8f15l9bp5j9hu9ggbg', '2026-01-02 08:30:22'),
(127, 'U202523404', '2026-01-02 14:00:22', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', '6fkrngvauie5bd6m881de4df3o', '2026-01-02 08:30:22'),
(128, 'U202523404', '2026-01-02 14:27:19', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 12; SM-A217F Build/SP1A.210812.016)', 'Unknown', 'Unknown', 'tucid157nji67jm0uim325vm8o', '2026-01-02 08:57:19'),
(129, 'U202523404', '2026-01-02 14:29:17', '2026-01-03 08:38:44', '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', 'cqahlapc7qctii4tca178dhlnb', '2026-01-02 08:59:17'),
(130, 'U202523404', '2026-01-02 14:31:02', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 12; SM-A217F Build/SP1A.210812.016)', 'Unknown', 'Unknown', 'njmohokcopnvad65p2mqmg4skc', '2026-01-02 09:01:02'),
(131, 'U202529235', '2026-01-03 08:39:00', '2026-01-03 10:15:06', '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', '7ctjk9ilkkm765cm86ds1m0m39', '2026-01-03 03:09:00'),
(132, 'U202529235', '2026-01-03 08:45:15', '2026-01-03 13:02:32', '::1', 'PostmanRuntime/7.51.0', 'Unknown', 'Unknown', 'g2ko4t5le5j1bb4nvdj42j9mkf', '2026-01-03 03:15:15'),
(133, 'U202523404', '2026-01-03 09:50:14', '2026-01-03 10:13:49', '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 12; SM-A217F Build/SP1A.210812.016)', 'Unknown', 'Unknown', 'sf62oes01ugbbbq42g946f27tn', '2026-01-03 04:20:14'),
(134, 'U202529235', '2026-01-03 10:14:05', '2026-01-03 12:58:14', '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 12; SM-A217F Build/SP1A.210812.016)', 'Unknown', 'Unknown', '6pv5h3hbnkt8284mjh1aiehr45', '2026-01-03 04:44:05'),
(135, 'U202529235', '2026-01-03 10:15:24', '2026-01-03 12:13:48', '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', 'fa3evkv4h42sf4f7rjqo3i9dfc', '2026-01-03 04:45:24'),
(136, 'U202529235', '2026-01-03 12:13:20', '2026-01-03 13:02:32', '::1', 'PostmanRuntime/7.51.0', 'Unknown', 'Unknown', 'g2ko4t5le5j1bb4nvdj42j9mkf', '2026-01-03 06:43:20'),
(137, 'U202529235', '2026-01-03 12:19:30', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', '7qhpcqr2d859rhi8949mmmkg6c', '2026-01-03 06:49:30'),
(138, 'U202529235', '2026-01-03 12:38:06', '2026-01-03 12:51:57', '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', 'elrk88c9mohdsh656ce37eol4t', '2026-01-03 07:08:06'),
(139, 'U202529235', '2026-01-03 12:52:16', '2026-01-03 12:53:07', '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', 'd8nhqbt677u7ilhf21h69kdjoh', '2026-01-03 07:22:16'),
(140, 'U202523404', '2026-01-03 12:53:51', '2026-01-03 13:09:49', '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', 'oo0pm1hasolo1mm5m8e6uk89uh', '2026-01-03 07:23:51'),
(141, 'U202523404', '2026-01-03 12:58:33', '2026-01-03 13:04:22', '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 12; SM-A217F Build/SP1A.210812.016)', 'Unknown', 'Unknown', 'ju7mu1568iecn3o4qn3blu4ia4', '2026-01-03 07:28:33'),
(142, 'U202523404', '2026-01-03 13:02:47', '2026-01-03 13:15:38', '::1', 'PostmanRuntime/7.51.0', 'Unknown', 'Unknown', 'g2ko4t5le5j1bb4nvdj42j9mkf', '2026-01-03 07:32:47'),
(143, 'U202529235', '2026-01-03 13:04:37', '2026-01-03 13:05:37', '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 12; SM-A217F Build/SP1A.210812.016)', 'Unknown', 'Unknown', 'svc65cm9db6dv44u942qlcoc7f', '2026-01-03 07:34:37'),
(144, 'U202529235', '2026-01-03 13:05:54', '2026-01-03 14:01:44', '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 12; SM-A217F Build/SP1A.210812.016)', 'Unknown', 'Unknown', 'kifm7p832va62jqefbh0o36hr7', '2026-01-03 07:35:54'),
(145, 'U202529235', '2026-01-03 13:10:12', '2026-01-03 13:11:39', '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', '9lltj9n2ok4ghpfa02449uojaq', '2026-01-03 07:40:12'),
(146, 'U202633976', '2026-01-03 13:11:58', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', '9m9a435d2mn5v2vq3raapr1mrc', '2026-01-03 07:41:58'),
(147, 'U202633976', '2026-01-03 13:11:58', '2026-01-03 13:13:59', '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', '8uurr40lm957crbkggj5p17dac', '2026-01-03 07:41:58'),
(148, 'U202542053', '2026-01-03 13:14:30', '2026-01-03 13:34:56', '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', 'dvlkhavcvp6k8ej6ehnkm3vbgn', '2026-01-03 07:44:30'),
(149, 'U202542053', '2026-01-03 13:16:36', '2026-01-03 14:41:03', '::1', 'PostmanRuntime/7.51.0', 'Unknown', 'Unknown', 'g2ko4t5le5j1bb4nvdj42j9mkf', '2026-01-03 07:46:36'),
(150, 'U202542053', '2026-01-03 13:35:19', '2026-01-03 13:38:29', '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', 'r7gsvk6heb45e2fcr6365ap10v', '2026-01-03 08:05:19'),
(151, 'U202633976', '2026-01-03 13:39:09', '2026-01-03 14:11:55', '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', 'bi58581f0nc0bgtrjh7vhc2nbj', '2026-01-03 08:09:09'),
(152, 'U202523404', '2026-01-03 14:02:26', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 12; SM-A217F Build/SP1A.210812.016)', 'Unknown', 'Unknown', '817uspn8td4q6uekldms3pbra8', '2026-01-03 08:32:26'),
(153, 'U202692821', '2026-01-03 14:13:34', '2026-01-03 14:18:43', '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', '1e09ul81hhdrqm0deosjsmup75', '2026-01-03 08:43:34'),
(154, 'U202692821', '2026-01-03 14:19:06', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', 'h1jodlfhkl45ul96llsuf0c130', '2026-01-03 08:49:06'),
(155, 'U202647636', '2026-01-03 14:21:24', '2026-01-03 14:29:35', '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', '0pv1dq7tof3f5lkl073b380971', '2026-01-03 08:51:24'),
(156, 'U202564861', '2026-01-03 14:34:31', '2026-01-03 14:44:16', '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', 'seg18a1rnr3cq3aqropbjokts9', '2026-01-03 09:04:31'),
(157, 'U202564861', '2026-01-03 14:41:31', NULL, '::1', 'PostmanRuntime/7.51.0', 'Unknown', 'Unknown', 'g2ko4t5le5j1bb4nvdj42j9mkf', '2026-01-03 09:11:31'),
(158, 'U202694283', '2026-01-03 14:45:43', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', 'c7rmnc34m06sqcdes53am3qdos', '2026-01-03 09:15:43'),
(159, 'U202523404', '2026-01-03 14:46:38', '2026-01-03 14:58:41', '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', 'q1l919k6uv5lpirockeg2sd5uf', '2026-01-03 09:16:38'),
(160, 'U202564861', '2026-01-03 14:59:14', '2026-01-04 19:30:19', '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', 'vgic561ldnhf8l6phj4434kkol', '2026-01-03 09:29:14'),
(161, 'U202523404', '2026-01-04 19:32:07', '2026-01-04 19:54:24', '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', 'j8jckq0sgn59k4ug5m7sssd2te', '2026-01-04 14:02:07'),
(162, 'U202523404', '2026-01-04 19:32:38', NULL, '::1', 'PostmanRuntime/7.51.0', 'Unknown', 'Unknown', 'l4dk3gbuue5nkss6sgkg2i6rdq', '2026-01-04 14:02:38'),
(163, 'U202564861', '2026-01-04 19:54:46', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', 'r5m0k4bt8f07vap8o1jo0qgq9f', '2026-01-04 14:24:46'),
(164, 'U202564861', '2026-01-04 19:55:19', NULL, '::1', 'PostmanRuntime/7.51.0', 'Unknown', 'Unknown', 'l4dk3gbuue5nkss6sgkg2i6rdq', '2026-01-04 14:25:19'),
(165, 'U202529235', '2026-01-04 20:11:12', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', '9hegdiajvqin3tq6oapp852ngm', '2026-01-04 14:41:12'),
(166, 'U202523404', '2026-01-04 20:11:51', '2026-01-04 20:13:31', '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', 'pckmsq6uqm5lt3tvqo36rbbaod', '2026-01-04 14:41:51'),
(167, 'U202523404', '2026-01-04 20:16:22', '2026-01-04 20:18:21', '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', 'ulgm9o1vmin9m43cevav1edetj', '2026-01-04 14:46:22'),
(168, 'U202529235', '2026-01-04 20:18:59', '2026-01-04 20:19:13', '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', 'toa3df4jed18pb7fdv8u2i980t', '2026-01-04 14:48:59'),
(169, 'U202542053', '2026-01-04 20:19:49', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', 'd2hatkqo6rn70fsn2ekj3b689d', '2026-01-04 14:49:49'),
(170, 'U202564861', '2026-01-04 20:20:41', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', 'jjaema53h7qpn03a7e27taltbi', '2026-01-04 14:50:41'),
(171, 'U202523404', '2026-01-04 20:24:00', '2026-01-04 20:24:22', '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', 'r2fgu7f80tm6igognou0270aro', '2026-01-04 14:54:00'),
(172, 'U202529235', '2026-01-04 20:24:40', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', 'gf5oc9gulurm2oc56jsdklfe41', '2026-01-04 14:54:40'),
(173, 'U202523404', '2026-01-04 20:25:08', '2026-01-04 20:28:56', '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', 'lfin0d38smel0eo2e18lk85pbp', '2026-01-04 14:55:08'),
(174, 'U202523404', '2026-01-04 20:29:12', '2026-01-04 20:37:52', '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', '7fm08o5iae3o3jac7crj9e024n', '2026-01-04 14:59:12'),
(175, 'U202523404', '2026-01-04 20:38:13', '2026-01-04 20:38:55', '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', '86v5o7am0a189hbnfitirt5bdg', '2026-01-04 15:08:13'),
(176, 'U202529235', '2026-01-04 20:39:11', '2026-01-04 20:40:39', '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', 'tkv90ijqbutpsfeq8l9chqj6o8', '2026-01-04 15:09:11'),
(177, 'U202523404', '2026-01-04 20:41:06', '2026-01-04 20:41:47', '::1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', 'qfkl19npnbe45reaiivn7trj2g', '2026-01-04 15:11:06'),
(178, 'U202523404', '2026-01-04 20:42:05', '2026-01-04 20:51:56', '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', 'inshvr5e7mieao8dmqlmojdhbl', '2026-01-04 15:12:05'),
(179, 'U202523404', '2026-01-04 20:53:39', '2026-01-04 21:11:47', '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', 'bhkiiuk9b6ikl196n4ofh4ki03', '2026-01-04 15:23:39'),
(180, 'U202523404', '2026-01-04 21:12:39', '2026-01-04 21:14:27', '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', '2su4ks9celbtf34rg2b44qiop5', '2026-01-04 15:42:39'),
(181, 'U202529235', '2026-01-04 21:14:48', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', '4i5v7uq309516ingetsnjojhg0', '2026-01-04 15:44:48'),
(182, 'U202523404', '2026-01-04 21:19:00', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', 'k0kt8914ktap06hngbn7ae22hn', '2026-01-04 15:49:00'),
(183, 'U202529235', '2026-01-04 21:20:07', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', 'hitsdslhef1geor0vfsnkeg920', '2026-01-04 15:50:07'),
(184, 'U202523404', '2026-01-04 21:20:35', '2026-01-04 21:21:39', '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', '88s8otf55m0fhud9c3scoemaso', '2026-01-04 15:50:35'),
(185, 'U202523404', '2026-01-04 21:21:59', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', 'mrb9b5ioapka2rqahjvbhv39cf', '2026-01-04 15:51:59'),
(186, 'U202523404', '2026-01-04 21:40:51', '2026-01-04 21:47:39', '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', '3dgit96lc4p9j980ghrluus6jg', '2026-01-04 16:10:51'),
(187, 'U202529235', '2026-01-04 21:48:14', '2026-01-04 21:48:54', '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', 'u1bnjpnf61ddaqfaedfm6t7hlv', '2026-01-04 16:18:14'),
(188, 'U202542053', '2026-01-04 21:49:58', '2026-01-04 21:50:18', '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', 'tncvsst6n72qs0l78gsup3uisk', '2026-01-04 16:19:58'),
(189, 'U202564861', '2026-01-04 21:51:21', '2026-01-04 21:52:07', '::1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', '2uk3ikl40ln391cqg6rariuar9', '2026-01-04 16:21:21'),
(190, 'U202523404', '2026-01-04 21:52:44', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', '6m726kddb30tlup4fjflhlpmds', '2026-01-04 16:22:44'),
(191, 'U202523404', '2026-01-05 12:44:14', '2026-01-05 14:47:55', '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 12; SM-A217F Build/SP1A.210812.016)', 'Unknown', 'Unknown', 'c5aonutfqrcmo2vv72aje6lhf6', '2026-01-05 07:14:14'),
(192, 'U202529235', '2026-01-05 12:51:30', '2026-01-05 12:51:47', '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', '6b05q9c7nd6uhhlj7l148ch7vt', '2026-01-05 07:21:30'),
(193, 'U202529235', '2026-01-05 12:52:35', '2026-01-07 08:23:22', '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', '02qejhien7qd9mhjhouu509g65', '2026-01-05 07:22:35'),
(194, 'U202529235', '2026-01-05 14:48:15', '2026-01-06 13:48:01', '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 12; SM-A217F Build/SP1A.210812.016)', 'Unknown', 'Unknown', 'si6g0vkc8k6fs5pdculpktklpo', '2026-01-05 09:18:15'),
(195, 'U202542053', '2026-01-07 08:23:41', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', 'poheujb3hjban6a59n88prcbtk', '2026-01-07 02:53:41'),
(196, 'U202620036', '2026-01-07 08:32:15', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', 'ndcnlebkd7jev2uc6e7g1bbcl4', '2026-01-07 03:02:15'),
(197, 'U202620036', '2026-01-07 08:32:17', '2026-01-07 08:32:21', '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', 'lnsnv6h91m4n6dnm28su265t49', '2026-01-07 03:02:17'),
(198, 'U202523404', '2026-01-07 08:37:46', '2026-01-07 08:37:53', '::1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', 'v18khvuh3gi1pr58n92jg8j5o6', '2026-01-07 03:07:46'),
(199, 'U202523404', '2026-01-07 08:38:28', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', 's9ermb56ifr4qrgh8m2josqff5', '2026-01-07 03:08:28'),
(200, 'U202523404', '2026-01-07 08:40:22', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 15; I2305 Build/AP3A.240905.015.A2)', 'Unknown', 'Unknown', '69232e88okunincjso976sievi', '2026-01-07 03:10:22'),
(201, 'U202523404', '2026-01-07 08:45:27', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', 'l6do80haoretqs89q2r2lapeu5', '2026-01-07 03:15:27'),
(202, 'U202523404', '2026-01-07 08:54:39', '2026-01-07 09:07:37', '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', '8ki5jq8cqj7i6bsvmua5asaaf5', '2026-01-07 03:24:39'),
(203, 'U202523404', '2026-01-07 09:12:55', '2026-01-07 09:13:06', '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', 'd8uilknfauqd42ctrb08t7dmgn', '2026-01-07 03:42:55'),
(204, 'U202523404', '2026-01-07 09:21:13', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', 'q6keq9kpm5eqdss6prk76ha543', '2026-01-07 03:51:13'),
(205, 'U202523404', '2026-01-07 09:22:38', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', 'eq3ar7ha3br95fpv5lger2bunv', '2026-01-07 03:52:38'),
(206, 'U202523404', '2026-01-07 09:30:17', '2026-01-07 09:34:08', '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', 'p2b69j84kek8mb64uocuqu1sf4', '2026-01-07 04:00:17'),
(207, 'U202529235', '2026-01-07 09:34:33', '2026-01-07 09:35:04', '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', 'pl7addf3rsgqd05dhiu429k1hj', '2026-01-07 04:04:33'),
(208, 'U202542053', '2026-01-07 09:35:35', '2026-01-07 09:35:57', '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', 't0d8g0r55een2drpo3jfg1nrah', '2026-01-07 04:05:35'),
(209, 'U202523404', '2026-01-07 09:51:10', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', '995m73dbsm20dnvo6m4a94u7hq', '2026-01-07 04:21:10'),
(210, 'U202523404', '2026-01-07 09:51:11', '2026-01-07 09:51:26', '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', 'd9qu0n5k3nd1kr454adlmgp7n3', '2026-01-07 04:21:11'),
(211, 'U202523404', '2026-01-07 10:02:18', '2026-01-07 10:02:40', '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 12; SM-A217F Build/SP1A.210812.016)', 'Unknown', 'Unknown', 'dln1ajuo8afe33vtrrsklcn5k5', '2026-01-07 04:32:18'),
(212, 'U202529235', '2026-01-07 10:03:48', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', 'ho19q7sfdlvjeqoe00qvtru82i', '2026-01-07 04:33:48'),
(213, 'U202523404', '2026-01-07 10:04:15', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', 'r0or2561b952p4ntbf91dfe392', '2026-01-07 04:34:15'),
(214, 'U202694283', '2026-01-07 10:07:10', NULL, '::1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', '25iq14m7tj21327ds0b6fdl1ip', '2026-01-07 04:37:10'),
(215, 'U202633976', '2026-01-07 10:10:15', '2026-01-07 10:44:00', '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', 's3rrsitmfs1fvplkkbmf7sre7o', '2026-01-07 04:40:15'),
(216, 'U202523404', '2026-01-07 10:45:14', '2026-01-07 10:45:51', '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', 'a3rjmku0n21nhprhttedko3ph1', '2026-01-07 05:15:14'),
(217, 'U202523404', '2026-01-07 10:46:53', '2026-01-07 10:50:27', '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', 'rvdpdsumlsmepe2ktkf0i169h4', '2026-01-07 05:16:53'),
(218, 'U202523404', '2026-01-07 10:51:31', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', 'ftrkt6d854j43v17mv7k4tn5se', '2026-01-07 05:21:31'),
(219, 'U202523404', '2026-01-07 11:00:31', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', 'n65h0g9iap6kvi60fpp7s2lfhf', '2026-01-07 05:30:31'),
(220, 'U202523404', '2026-01-07 11:08:21', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', '8l8dspqqf7mjpfu9010i03l8us', '2026-01-07 05:38:21'),
(221, 'U202523404', '2026-01-07 11:11:16', '2026-01-07 11:11:37', '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 12; SM-A217F Build/SP1A.210812.016)', 'Unknown', 'Unknown', '1i3kauqf9u06fc4gsj7p6c7sd4', '2026-01-07 05:41:16'),
(222, 'U202529235', '2026-01-07 11:12:00', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 12; SM-A217F Build/SP1A.210812.016)', 'Unknown', 'Unknown', 'mqq6loi88s25pgqis32fioom8d', '2026-01-07 05:42:00'),
(223, 'U202529235', '2026-01-07 11:12:01', '2026-01-07 11:12:08', '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 12; SM-A217F Build/SP1A.210812.016)', 'Unknown', 'Unknown', 't6btj2jcp4f9lffekila1b5f4o', '2026-01-07 05:42:01'),
(224, 'U202681399', '2026-01-07 11:12:48', '2026-01-07 11:12:59', '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 12; SM-A217F Build/SP1A.210812.016)', 'Unknown', 'Unknown', '3hknrd24mvnlo7cv0f5ut1v6t2', '2026-01-07 05:42:48'),
(225, 'U202680215', '2026-01-07 11:13:38', '2026-01-07 11:13:51', '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 12; SM-A217F Build/SP1A.210812.016)', 'Unknown', 'Unknown', '7rmo6l2cp6p0btl27k9uk01st7', '2026-01-07 05:43:38'),
(226, 'U202680215', '2026-01-07 11:14:03', '2026-01-07 11:14:16', '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 12; SM-A217F Build/SP1A.210812.016)', 'Unknown', 'Unknown', 'vapic7ee3fqvbgprb2go6odlg8', '2026-01-07 05:44:03'),
(227, 'U202523404', '2026-01-07 11:14:30', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 12; SM-A217F Build/SP1A.210812.016)', 'Unknown', 'Unknown', 'bvhrjbof17dp3h32kreaofpqr4', '2026-01-07 05:44:30'),
(228, 'U202523404', '2026-01-07 11:22:38', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 14; sdk_gphone64_x86_64 Build/UE1A.230829.050)', 'Unknown', 'Unknown', 'j7u34qoi02tmd7ar9c5p4ro5b0', '2026-01-07 05:52:38'),
(229, 'U202523404', '2026-01-07 11:51:42', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 12; SM-A217F Build/SP1A.210812.016)', 'Unknown', 'Unknown', '33j45101carkbs2k79eg7l8f6j', '2026-01-07 06:21:42'),
(230, 'U202523404', '2026-01-07 11:51:43', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 12; SM-A217F Build/SP1A.210812.016)', 'Unknown', 'Unknown', 'pknc8reeoaen4ndalhtgls881m', '2026-01-07 06:21:43'),
(231, 'U202633976', '2026-01-07 11:59:24', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 12; SM-A217F Build/SP1A.210812.016)', 'Unknown', 'Unknown', 'aa3f2ka8ov5odph8siktboacap', '2026-01-07 06:29:24'),
(232, 'U202523404', '2026-01-08 09:03:11', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 16; sdk_gphone64_x86_64 Build/BE2A.250530.026.D1)', 'Unknown', 'Unknown', 'm2fcncmspsfoguvmurrrd745m4', '2026-01-08 03:33:11'),
(233, 'U202523404', '2026-01-08 09:03:11', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 16; sdk_gphone64_x86_64 Build/BE2A.250530.026.D1)', 'Unknown', 'Unknown', 'ovgs39m7b09d1oaff4igh5nrk5', '2026-01-08 03:33:11'),
(234, 'U202529235', '2026-01-08 09:05:11', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 16; sdk_gphone64_x86_64 Build/BE2A.250530.026.D1)', 'Unknown', 'Unknown', 'hj5lu2jobrlpejr3n3vcp5vtcm', '2026-01-08 03:35:11'),
(235, 'U202529235', '2026-01-08 09:06:11', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 16; sdk_gphone64_x86_64 Build/BE2A.250530.026.D1)', 'Unknown', 'Unknown', 'uc5rmse1pp6ne54t58id2b6373', '2026-01-08 03:36:11'),
(236, 'U202542053', '2026-01-08 09:09:48', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 16; sdk_gphone64_x86_64 Build/BE2A.250530.026.D1)', 'Unknown', 'Unknown', 'iilts5qjqp8jsdaondq8pmkpnu', '2026-01-08 03:39:48'),
(237, 'U202564861', '2026-01-08 09:11:13', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 16; sdk_gphone64_x86_64 Build/BE2A.250530.026.D1)', 'Unknown', 'Unknown', '87fraanci1g376nlcucdppe0ik', '2026-01-08 03:41:13');
INSERT INTO `login_logs` (`id`, `user_uid`, `login_time`, `logout_time`, `ip_address`, `device_info`, `country`, `city`, `session_token`, `created_at`) VALUES
(238, 'U202523404', '2026-01-08 13:41:01', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 16; sdk_gphone64_x86_64 Build/BE2A.250530.026.D1)', 'Unknown', 'Unknown', '7fp9sjemaruq38vl4j6gcg257q', '2026-01-08 08:11:01'),
(239, 'U202523404', '2026-01-08 13:48:47', '2026-01-08 13:49:00', '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 12; SM-A217F Build/SP1A.210812.016)', 'Unknown', 'Unknown', 'jqi2vrakjmlusbcksd7jihj792', '2026-01-08 08:18:47'),
(240, 'U202523404', '2026-01-08 13:48:47', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 12; SM-A217F Build/SP1A.210812.016)', 'Unknown', 'Unknown', '2aan1efcdc5sn8992kfqhchu28', '2026-01-08 08:18:47'),
(241, 'U202523404', '2026-01-08 14:04:38', '2026-01-08 14:05:02', '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 12; SM-A217F Build/SP1A.210812.016)', 'Unknown', 'Unknown', '79cp37rqncf4so9hk33003br9s', '2026-01-08 08:34:38'),
(242, 'U202523404', '2026-01-08 14:23:34', NULL, '127.0.0.1', 'Dalvik/2.1.0 (Linux; U; Android 16; sdk_gphone64_x86_64 Build/BE2A.250530.026.D1)', 'Unknown', 'Unknown', 'c0sgap84tj28vka1ib78ghkrn3', '2026-01-08 08:53:34');

-- --------------------------------------------------------

--
-- Table structure for table `pending_certificates`
--

CREATE TABLE `pending_certificates` (
  `id` int(11) NOT NULL,
  `email` varchar(150) NOT NULL,
  `certificate_uid` varchar(30) DEFAULT NULL,
  `certificate_title` varchar(150) NOT NULL,
  `certificate_type` enum('academic','professional','skill') NOT NULL,
  `issuing_organization` varchar(150) NOT NULL,
  `issue_date` date NOT NULL,
  `expiry_date` date DEFAULT NULL,
  `credential_id` varchar(100) DEFAULT NULL,
  `certificate_file` varchar(255) NOT NULL,
  `issued_by` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pending_certificates`
--

INSERT INTO `pending_certificates` (`id`, `email`, `certificate_uid`, `certificate_title`, `certificate_type`, `issuing_organization`, `issue_date`, `expiry_date`, `credential_id`, `certificate_file`, `issued_by`, `created_at`) VALUES
(1, 'student1@test.com', 'CERT1766734656604', 'Java Foundations', 'professional', 'Oracle', '2024-06-01', '2026-06-01', 'ORA001', 'certificate_CERT1766734656604.pdf', 'U202564861', '2025-12-26 07:37:36'),
(2, 'student2@test.com', 'CERT1766734656665', 'Java Foundations', 'professional', 'Oracle', '2024-06-01', '2026-06-01', 'ORA002', 'certificate_CERT1766734656665.pdf', 'U202564861', '2025-12-26 07:37:36');

-- --------------------------------------------------------

--
-- Table structure for table `skills_master`
--

CREATE TABLE `skills_master` (
  `skill_id` int(11) NOT NULL,
  `skill_name` varchar(100) NOT NULL,
  `category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `skills_master`
--

INSERT INTO `skills_master` (`skill_id`, `skill_name`, `category`) VALUES
(1, 'Cloud Computing', 'Technology'),
(2, 'Artificial Intelligence', 'Technology'),
(3, 'Machine Learning', 'Technology'),
(4, 'Java Programming', 'Technology');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user_uid` varchar(20) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','user','employer','issuer') NOT NULL DEFAULT 'user',
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `dob` date DEFAULT NULL,
  `gender` enum('male','female','other') DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_uid`, `full_name`, `email`, `password`, `role`, `status`, `dob`, `gender`, `created_at`) VALUES
(1, 'U202523404', 'Charan Gundlapalli', 'charan@test.com', '$2y$10$RN1Nk4eD1rD5Et09smomhuJlrRhvlL66oPVeiR6VtJk27HtEKFc86', 'user', 'active', NULL, NULL, '2025-12-19 11:51:13'),
(2, 'U202529235', 'Charan', 'charan@test1.com', '$2y$10$PALs6GJmfU8TSPE8lyqpAeqzTTtEOw3625Od3MXpeK2qhTJNb7af6', 'admin', 'active', NULL, NULL, '2025-12-22 10:05:32'),
(3, 'U202542053', 'Gundlapalli', 'charan@test2.com', '$2y$10$ffxO5Lc/u5rbbGQV6hkoqu/nT8sz5MTo3tyiz6OYYKLpVv625M3vi', 'employer', 'active', NULL, NULL, '2025-12-22 10:23:14'),
(4, 'U202540085', 'saveetha', 'saveetha@gmail.com', '$2y$10$lQseeFfVSk.tQ2soidb6Gu7d/MHTVLn25hYuZ8G7tQ9gjb5P2s.KK', 'user', 'active', NULL, NULL, '2025-12-25 08:07:12'),
(5, 'U202548341', 'Charan User', 'charan.user@test.com', '$2y$10$tUC7j7PoSRGtNG3hGkjz2.sq2NoezSS1NR6xjzpL8vbqVpcVdu.Tu', 'user', 'active', NULL, NULL, '2025-12-26 06:42:25'),
(6, 'U202564861', 'Oracle University', 'oracle@test.com', '$2y$10$DA7Z5VIc6JSOPLlPpC34xua8bSSfjOmeqD1INmRfG1cuircMU2.bq', 'issuer', 'active', NULL, NULL, '2025-12-26 06:42:52'),
(7, 'U202633976', 'Java Foundation', 'java@foundation.com', '$2y$10$P4pzblu7lh0Dfe7gBF0dF.GanvEAP4U.USkPRPK5uLNTx2SRPpRTm', 'issuer', 'active', NULL, NULL, '2026-01-03 06:44:35'),
(8, 'U202692821', 'cherry', 'charan@test4.com', '$2y$10$4yTv2MIrO1y2dQyXeYMK3.aWH/B2DB3RH3MiKL06vqtDsaUDb/Jua', 'user', 'active', NULL, NULL, '2026-01-03 08:43:06'),
(9, 'U202647636', 'student2', 'student2@test.com', '$2y$10$OR7cr.uYDT17UgFI1YSk1uYDNzMc7ouO2CgHbqLrYxZujG9mw8BPy', 'user', 'active', NULL, NULL, '2026-01-03 08:51:13'),
(10, 'U202694283', 'test5', 'charan@test5.com', '$2y$10$ExksKgUZ5s0I6yQVZvzhAe1rdL6d.lQvu0vvGl8QDHIJzVZfFy3Za', 'user', 'active', NULL, NULL, '2026-01-03 09:15:28'),
(11, 'U202620036', 'Gundlapalli', 'gundlapalli@gmial.com', '$2y$10$iCJGMJC8OgeNXLYmTPZ8qeWqLJiJ/9DUDIQXDRTrFQ1niewL/AuyW', 'user', 'active', NULL, NULL, '2026-01-07 03:01:59'),
(12, 'U202681399', 'user', 'user@test.com', '$2y$10$1DO5Kzy0M.ClfTRqmE5yUejjv9kCqAxFnRoCzH0VpRIB4E5Oocm7y', 'user', 'active', NULL, NULL, '2026-01-07 05:42:36'),
(13, 'U202680215', 'admin', 'admin@test.com', '$2y$10$hskGpU5ktZ7BKukDaJYWje34c3WHZ8AgiwFBXCiTIH2erL/3MbPFK', 'admin', 'active', NULL, NULL, '2026-01-07 05:43:23'),
(14, 'U202657259', 'test', 'test@gmail.com', '$2y$10$kq9Z178R.ObgpaxbyAWvn.ooElzy3jIQX86/EvVFtTEH7F0XQdZIC', 'user', 'active', NULL, NULL, '2026-01-08 08:20:54');

-- --------------------------------------------------------

--
-- Table structure for table `user_skills`
--

CREATE TABLE `user_skills` (
  `id` int(11) NOT NULL,
  `user_uid` varchar(20) NOT NULL,
  `skill_id` int(11) NOT NULL,
  `nsqf_level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_skills`
--

INSERT INTO `user_skills` (`id`, `user_uid`, `skill_id`, `nsqf_level`) VALUES
(1, 'U202523404', 2, 3),
(2, 'U202523404', 3, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `certificates`
--
ALTER TABLE `certificates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `certificate_uid` (`certificate_uid`),
  ADD KEY `user_uid` (`user_uid`);

--
-- Indexes for table `certificate_skill_mapping`
--
ALTER TABLE `certificate_skill_mapping`
  ADD PRIMARY KEY (`id`),
  ADD KEY `skill_id` (`skill_id`);

--
-- Indexes for table `certificate_verification`
--
ALTER TABLE `certificate_verification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `certificate_uid` (`certificate_uid`);

--
-- Indexes for table `issuers`
--
ALTER TABLE `issuers`
  ADD PRIMARY KEY (`issuer_id`),
  ADD UNIQUE KEY `user_uid` (`user_uid`);

--
-- Indexes for table `login_logs`
--
ALTER TABLE `login_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pending_certificates`
--
ALTER TABLE `pending_certificates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `certificate_uid` (`certificate_uid`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `skills_master`
--
ALTER TABLE `skills_master`
  ADD PRIMARY KEY (`skill_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_uid` (`user_uid`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `user_skills`
--
ALTER TABLE `user_skills`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_uid` (`user_uid`,`skill_id`),
  ADD KEY `skill_id` (`skill_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `certificates`
--
ALTER TABLE `certificates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `certificate_skill_mapping`
--
ALTER TABLE `certificate_skill_mapping`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `certificate_verification`
--
ALTER TABLE `certificate_verification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `issuers`
--
ALTER TABLE `issuers`
  MODIFY `issuer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `login_logs`
--
ALTER TABLE `login_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243;

--
-- AUTO_INCREMENT for table `pending_certificates`
--
ALTER TABLE `pending_certificates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `skills_master`
--
ALTER TABLE `skills_master`
  MODIFY `skill_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user_skills`
--
ALTER TABLE `user_skills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `certificates`
--
ALTER TABLE `certificates`
  ADD CONSTRAINT `certificates_ibfk_1` FOREIGN KEY (`user_uid`) REFERENCES `users` (`user_uid`) ON DELETE CASCADE;

--
-- Constraints for table `certificate_skill_mapping`
--
ALTER TABLE `certificate_skill_mapping`
  ADD CONSTRAINT `certificate_skill_mapping_ibfk_1` FOREIGN KEY (`skill_id`) REFERENCES `skills_master` (`skill_id`);

--
-- Constraints for table `certificate_verification`
--
ALTER TABLE `certificate_verification`
  ADD CONSTRAINT `certificate_verification_ibfk_1` FOREIGN KEY (`certificate_uid`) REFERENCES `certificates` (`certificate_uid`) ON DELETE CASCADE;

--
-- Constraints for table `user_skills`
--
ALTER TABLE `user_skills`
  ADD CONSTRAINT `user_skills_ibfk_1` FOREIGN KEY (`skill_id`) REFERENCES `skills_master` (`skill_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
