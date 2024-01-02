-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 28, 2023 at 06:24 PM
-- Server version: 5.6.51
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rolesui`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `log_name` varchar(125) DEFAULT NULL,
  `description` text NOT NULL,
  `subject_type` varchar(125) DEFAULT NULL,
  `event` varchar(125) DEFAULT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `causer_type` varchar(125) DEFAULT NULL,
  `causer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `properties` text,
  `batch_uuid` char(36) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `created_at`, `updated_at`) VALUES
(1, 'default', 'created', 'Modules\\Dengue\\Entities\\SpotedArea', 'created', 2, NULL, NULL, '{\"attributes\": {\"name\": null, \"text\": null}}', NULL, '2023-06-19 08:51:58', '2023-06-19 08:51:58'),
(2, 'default', 'created', 'Modules\\Dengue\\Entities\\SpotedArea', 'created', 3, NULL, NULL, '{\"attributes\": {\"name\": null, \"text\": null}}', NULL, '2023-06-19 09:02:51', '2023-06-19 09:02:51'),
(3, 'default', 'created', 'Modules\\Dengue\\Entities\\SpotedArea', 'created', 4, NULL, NULL, '{\"attributes\": {\"name\": null, \"text\": null}}', NULL, '2023-06-20 06:34:10', '2023-06-20 06:34:10'),
(4, 'default', 'created', 'Modules\\Dengue\\Entities\\SpotedArea', 'created', 5, NULL, NULL, '{\"attributes\": {\"name\": null, \"text\": null}}', NULL, '2023-06-20 06:34:19', '2023-06-20 06:34:19'),
(5, 'default', 'created', 'Modules\\Dengue\\Entities\\SpotedArea', 'created', 6, NULL, NULL, '{\"attributes\": {\"name\": null, \"text\": null}}', NULL, '2023-06-20 06:38:07', '2023-06-20 06:38:07'),
(6, 'default', 'created', 'Modules\\Dengue\\Entities\\SpotedArea', 'created', 7, NULL, NULL, '{\"attributes\": {\"name\": null, \"text\": null}}', NULL, '2023-06-20 06:41:55', '2023-06-20 06:41:55'),
(7, 'default', 'created', 'Modules\\Dengue\\Entities\\SpotedArea', 'created', 8, NULL, NULL, '{\"attributes\": {\"name\": null, \"text\": null}}', NULL, '2023-06-20 06:44:05', '2023-06-20 06:44:05'),
(8, 'default', 'created', 'Modules\\Dengue\\Entities\\SpotedArea', 'created', 9, NULL, NULL, '{\"attributes\": {\"name\": null, \"text\": null}}', NULL, '2023-06-20 06:55:04', '2023-06-20 06:55:04'),
(9, 'default', 'created', 'Modules\\Dengue\\Entities\\SpotedArea', 'created', 10, NULL, NULL, '{\"attributes\": {\"name\": null, \"text\": null}}', NULL, '2023-06-20 06:55:51', '2023-06-20 06:55:51'),
(10, 'default', 'created', 'Modules\\Dengue\\Entities\\SpotedArea', 'created', 11, NULL, NULL, '{\"attributes\": {\"name\": null, \"text\": null}}', NULL, '2023-06-21 08:59:34', '2023-06-21 08:59:34'),
(11, 'default', 'created', 'Modules\\Dengue\\Entities\\SpotedArea', 'created', 12, NULL, NULL, '{\"attributes\": {\"name\": null, \"text\": null}}', NULL, '2023-06-21 09:00:24', '2023-06-21 09:00:24'),
(12, 'default', 'created', 'Modules\\Dengue\\Entities\\SpotedArea', 'created', 13, NULL, NULL, '{\"attributes\": {\"name\": null, \"text\": null}}', NULL, '2023-06-21 09:00:40', '2023-06-21 09:00:40'),
(13, 'default', 'created', 'Modules\\Dengue\\Entities\\SpotedArea', 'created', 14, NULL, NULL, '{\"attributes\": {\"name\": null, \"text\": null}}', NULL, '2023-06-21 09:01:05', '2023-06-21 09:01:05'),
(14, 'default', 'created', 'Modules\\Dengue\\Entities\\SpotedArea', 'created', 15, NULL, NULL, '{\"attributes\": {\"name\": null, \"text\": null}}', NULL, '2023-06-21 09:01:41', '2023-06-21 09:01:41'),
(15, 'default', 'created', 'Modules\\Dengue\\Entities\\Patient', 'created', 2, NULL, NULL, '{\"attributes\": {\"name\": \"Hdhdh\", \"text\": null}}', NULL, '2023-06-21 09:24:45', '2023-06-21 09:24:45'),
(16, 'default', 'created', 'Modules\\Dengue\\Entities\\Patient', 'created', 3, NULL, NULL, '{\"attributes\": {\"name\": \"Hdhdh\", \"text\": null}}', NULL, '2023-06-21 09:25:00', '2023-06-21 09:25:00'),
(17, 'default', 'created', 'Modules\\Dengue\\Entities\\Patient', 'created', 4, NULL, NULL, '{\"attributes\": {\"name\": \"Hdhdh\", \"text\": null}}', NULL, '2023-06-21 09:28:02', '2023-06-21 09:28:02'),
(18, 'default', 'created', 'Modules\\Dengue\\Entities\\Patient', 'created', 5, NULL, NULL, '{\"attributes\": {\"name\": \"Hdhdh\", \"text\": null}}', NULL, '2023-06-21 09:29:54', '2023-06-21 09:29:54'),
(19, 'default', 'created', 'Modules\\Dengue\\Entities\\Patient', 'created', 6, NULL, NULL, '{\"attributes\": {\"name\": \"Hdhdh\", \"text\": null}}', NULL, '2023-06-21 09:31:32', '2023-06-21 09:31:32'),
(20, 'default', 'created', 'Modules\\Dengue\\Entities\\Patient', 'created', 7, NULL, NULL, '{\"attributes\": {\"name\": \"Full name\", \"text\": null}}', NULL, '2023-06-21 09:53:49', '2023-06-21 09:53:49'),
(21, 'default', 'created', 'Modules\\Dengue\\Entities\\Patient', 'created', 8, NULL, NULL, '{\"attributes\": {\"name\": \"Full name\", \"text\": null}}', NULL, '2023-06-21 09:53:50', '2023-06-21 09:53:50'),
(22, 'default', 'created', 'Modules\\Dengue\\Entities\\Patient', 'created', 9, NULL, NULL, '{\"attributes\": {\"name\": \"Full name\", \"text\": null}}', NULL, '2023-06-21 10:02:45', '2023-06-21 10:02:45'),
(23, 'default', 'created', 'Modules\\Dengue\\Entities\\Patient', 'created', 10, NULL, NULL, '{\"attributes\": {\"name\": \"You uwuwuw\", \"text\": null}}', NULL, '2023-06-21 10:16:24', '2023-06-21 10:16:24'),
(24, 'default', 'created', 'Modules\\Dengue\\Entities\\Patient', 'created', 11, NULL, NULL, '{\"attributes\": {\"name\": \"Imran Ali\", \"text\": null}}', NULL, '2023-06-21 10:33:22', '2023-06-21 10:33:22'),
(25, 'default', 'updated', 'Modules\\Dengue\\Entities\\Patient', 'updated', 11, 'App\\Models\\User', 372, '{\"old\": {\"name\": \"Imran Ali\", \"text\": null}, \"attributes\": {\"name\": \"Imran Ali\", \"text\": null}}', NULL, '2023-06-22 04:58:06', '2023-06-22 04:58:06'),
(26, 'default', 'created', 'Modules\\Dengue\\Entities\\Patient', 'created', 12, NULL, NULL, '{\"attributes\": {\"name\": \"Hafeez\", \"text\": null}}', NULL, '2023-06-22 05:11:18', '2023-06-22 05:11:18'),
(27, 'default', 'created', 'Modules\\Dengue\\Entities\\Patient', 'created', 13, NULL, NULL, '{\"attributes\": {\"name\": \"Xyz\", \"text\": null}}', NULL, '2023-06-22 05:11:42', '2023-06-22 05:11:42'),
(28, 'default', 'created', 'Modules\\Dengue\\Entities\\Patient', 'created', 14, NULL, NULL, '{\"attributes\": {\"name\": \"Ali Rehman\", \"text\": null}}', NULL, '2023-06-22 05:17:50', '2023-06-22 05:17:50'),
(29, 'default', 'created', 'Modules\\Dengue\\Entities\\Patient', 'created', 15, NULL, NULL, '{\"attributes\": {\"name\": \"Hafezzxxxxxxxxxxxxzzzzzzzx,zzzzxjfj\", \"text\": null}}', NULL, '2023-06-22 05:29:33', '2023-06-22 05:29:33'),
(30, 'default', 'updated', 'Modules\\Dengue\\Entities\\Patient', 'updated', 15, 'App\\Models\\User', 372, '{\"old\": {\"name\": \"Hafezzxxxxxxxxxxxxzzzzzzzx,zzzzxjfj\", \"text\": null}, \"attributes\": {\"name\": \"Hafezzxxxxxxxxxxxxzzzzzzzx,zzzzxjfj\", \"text\": null}}', NULL, '2023-06-22 05:51:05', '2023-06-22 05:51:05'),
(31, 'default', 'created', 'Modules\\Dengue\\Entities\\SpotedArea', 'created', 16, NULL, NULL, '{\"attributes\": {\"name\": null, \"text\": null}}', NULL, '2023-06-22 06:54:20', '2023-06-22 06:54:20'),
(32, 'default', 'created', 'Modules\\Dengue\\Entities\\SpotedArea', 'created', 17, NULL, NULL, '{\"attributes\": {\"name\": null, \"text\": null}}', NULL, '2023-06-22 06:58:47', '2023-06-22 06:58:47'),
(33, 'default', 'updated', 'Modules\\Dengue\\Entities\\Patient', 'updated', 14, 'App\\Models\\User', 2, '{\"old\": {\"name\": \"Ali Rehman\", \"text\": null}, \"attributes\": {\"name\": \"Ali Rehman\", \"text\": null}}', NULL, '2023-06-22 07:17:26', '2023-06-22 07:17:26'),
(34, 'default', 'updated', 'Modules\\Dengue\\Entities\\Patient', 'updated', 13, 'App\\Models\\User', 372, '{\"old\": {\"name\": \"Xyz\", \"text\": null}, \"attributes\": {\"name\": \"Xyz\", \"text\": null}}', NULL, '2023-06-22 07:27:26', '2023-06-22 07:27:26'),
(35, 'default', 'updated', 'Modules\\Dengue\\Entities\\SpotedArea', 'updated', 17, 'App\\Models\\User', 372, '{\"old\": {\"name\": null, \"text\": null}, \"attributes\": {\"name\": null, \"text\": null}}', NULL, '2023-06-22 07:28:10', '2023-06-22 07:28:10'),
(36, 'default', 'updated', 'Modules\\Dengue\\Entities\\Patient', 'updated', 14, 'App\\Models\\User', 373, '{\"old\": {\"name\": \"Ali Rehman\", \"text\": null}, \"attributes\": {\"name\": \"Ali Rehman\", \"text\": null}}', NULL, '2023-06-22 07:29:59', '2023-06-22 07:29:59'),
(37, 'default', 'created', 'Modules\\Dengue\\Entities\\SpotedArea', 'created', 18, NULL, NULL, '{\"attributes\": {\"name\": null, \"text\": null}}', NULL, '2023-06-22 10:22:24', '2023-06-22 10:22:24'),
(38, 'default', 'created', 'Modules\\Dengue\\Entities\\Patient', 'created', 16, NULL, NULL, '{\"attributes\": {\"name\": \"123\", \"text\": null}}', NULL, '2023-06-23 06:07:45', '2023-06-23 06:07:45'),
(39, 'default', 'created', 'Modules\\Dengue\\Entities\\Patient', 'created', 17, NULL, NULL, '{\"attributes\": {\"name\": \"Sss\", \"text\": null}}', NULL, '2023-06-23 12:07:43', '2023-06-23 12:07:43'),
(40, 'default', 'updated', 'Modules\\Dengue\\Entities\\SpotedArea', 'updated', 2, NULL, NULL, '{\"old\": {\"name\": null, \"text\": null}, \"attributes\": {\"name\": null, \"text\": null}}', NULL, '2023-06-27 10:26:19', '2023-06-27 10:26:19'),
(41, 'default', 'created', 'Modules\\Dengue\\Entities\\SpotedArea', 'created', 19, NULL, NULL, '{\"attributes\": {\"name\": null, \"text\": null}}', NULL, '2023-06-27 10:28:03', '2023-06-27 10:28:03'),
(42, 'default', 'created', 'Modules\\Dengue\\Entities\\SpotedArea', 'created', 20, NULL, NULL, '{\"attributes\": {\"name\": null, \"text\": null}}', NULL, '2023-06-27 10:28:06', '2023-06-27 10:28:06'),
(43, 'default', 'created', 'Modules\\Dengue\\Entities\\SpotedArea', 'created', 21, NULL, NULL, '{\"attributes\": {\"name\": null, \"text\": null}}', NULL, '2023-06-27 10:28:11', '2023-06-27 10:28:11'),
(44, 'default', 'created', 'Modules\\Dengue\\Entities\\SpotedArea', 'created', 22, NULL, NULL, '{\"attributes\": {\"name\": null, \"text\": null}}', NULL, '2023-06-27 10:28:58', '2023-06-27 10:28:58'),
(45, 'default', 'created', 'Modules\\Dengue\\Entities\\SpotedArea', 'created', 23, NULL, NULL, '{\"attributes\": {\"name\": null, \"text\": null}}', NULL, '2023-06-27 10:29:58', '2023-06-27 10:29:58'),
(46, 'default', 'created', 'Modules\\Dengue\\Entities\\SpotedArea', 'created', 24, NULL, NULL, '{\"attributes\": {\"name\": null, \"text\": null}}', NULL, '2023-06-27 10:30:21', '2023-06-27 10:30:21'),
(47, 'default', 'updated', 'Modules\\Dengue\\Entities\\SpotedArea', 'updated', 17, NULL, NULL, '{\"old\": {\"name\": null, \"text\": null}, \"attributes\": {\"name\": null, \"text\": null}}', NULL, '2023-06-27 10:46:25', '2023-06-27 10:46:25'),
(48, 'default', 'updated', 'Modules\\Dengue\\Entities\\Patient', 'updated', 15, NULL, NULL, '{\"old\": {\"name\": \"Hafezzxxxxxxxxxxxxzzzzzzzx,zzzzxjfj\", \"text\": null}, \"attributes\": {\"name\": \"Hafezzxxxxxxxxxxxxzzzzzzzx,zzzzxjfj\", \"text\": null}}', NULL, '2023-06-27 10:52:22', '2023-06-27 10:52:22'),
(49, 'default', 'updated', 'Modules\\Agriculture\\Entities\\Farmers', 'updated', 5, 'App\\Models\\User', 2, '{\"old\": {\"id\": 5, \"step\": 4, \"address\": null, \"entry_by\": 2, \"isFather\": 1, \"gender_id\": 1, \"status_id\": 1, \"tehsil_id\": 4, \"created_at\": \"2023-09-28T06:10:00.000000Z\", \"deleted_at\": null, \"hasAnimals\": 1, \"hasTractor\": 1, \"has_animal\": 0, \"updated_at\": \"2023-10-09T05:26:04.000000Z\", \"cnic_number\": \"17301-1739390-3\", \"district_id\": 1, \"division_id\": null, \"farmer_name\": \"Noor Wali khan\", \"father_name\": \"Muhammad Alikhan\", \"has_tractor\": 0, \"province_id\": 1, \"verified_by\": null, \"education_id\": 3, \"date_of_birth\": \"2023-09-21\", \"khasra_number\": \"272\", \"landOwnership\": \"1000\", \"totalLandArea\": \"1112\", \"uc_vc_list_id\": 1, \"farmer_type_id\": 1, \"relationship_id\": 1, \"alternative_cnic\": \"54545-4545454-5\", \"contact_number_1\": \"3133434571\", \"contact_number_2\": \"3133434571\", \"date_of_interview\": \"2023-10-09\", \"cnic_issuance_date\": \"2023-09-29\", \"ip_address_verify_by\": \"127.0.0.1\", \"irrigation_source_id\": 2, \"registration_end_time\": null, \"registration_start_time\": \"10:24:37\", \"alternative_contact_name\": \"Khan Zaib\", \"alternative_contact_number_1\": \"3133434571\", \"alternative_contact_number_2\": \"3133434571\"}, \"attributes\": {\"id\": 5, \"step\": 2, \"address\": null, \"entry_by\": 2, \"isFather\": 1, \"gender_id\": 1, \"status_id\": 1, \"tehsil_id\": 4, \"created_at\": \"2023-09-28T06:10:00.000000Z\", \"deleted_at\": null, \"hasAnimals\": 1, \"hasTractor\": 1, \"has_animal\": 0, \"updated_at\": \"2023-10-13T10:01:08.000000Z\", \"cnic_number\": \"17301-1739390-3\", \"district_id\": 1, \"division_id\": null, \"farmer_name\": \"Noor Wali khan\", \"father_name\": \"Muhammad Alikhan\", \"has_tractor\": 0, \"province_id\": 1, \"verified_by\": null, \"education_id\": 3, \"date_of_birth\": \"2023-09-21\", \"khasra_number\": \"272\", \"landOwnership\": \"1000\", \"totalLandArea\": \"1112\", \"uc_vc_list_id\": 1, \"farmer_type_id\": 1, \"relationship_id\": 1, \"alternative_cnic\": \"54545-4545454-5\", \"contact_number_1\": \"3133434571\", \"contact_number_2\": \"3133434571\", \"date_of_interview\": \"2023-10-13\", \"cnic_issuance_date\": \"2023-09-29\", \"ip_address_verify_by\": \"210.56.15.222\", \"irrigation_source_id\": 2, \"registration_end_time\": null, \"registration_start_time\": \"15:00:57\", \"alternative_contact_name\": \"Khan Zaib\", \"alternative_contact_number_1\": \"3133434571\", \"alternative_contact_number_2\": \"3133434571\"}}', NULL, '2023-10-13 10:01:08', '2023-10-13 10:01:08'),
(50, 'default', 'created', 'Modules\\Agriculture\\Entities\\Farmers', 'created', 36, 'App\\Models\\User', 2, '{\"attributes\": {\"id\": 36, \"step\": 1, \"address\": null, \"entry_by\": 2, \"isFather\": 1, \"gender_id\": null, \"status_id\": 1, \"tehsil_id\": null, \"created_at\": \"2023-11-07T03:58:52.000000Z\", \"deleted_at\": null, \"hasAnimals\": 0, \"hasTractor\": 0, \"has_animal\": 0, \"updated_at\": \"2023-11-07T03:58:52.000000Z\", \"cnic_number\": \"23232-2233223-2\", \"district_id\": null, \"division_id\": null, \"farmer_name\": null, \"father_name\": null, \"has_tractor\": 0, \"province_id\": 1, \"verified_by\": null, \"education_id\": null, \"date_of_birth\": null, \"khasra_number\": null, \"landOwnership\": null, \"totalLandArea\": null, \"uc_vc_list_id\": null, \"farmer_type_id\": null, \"relationship_id\": null, \"alternative_cnic\": null, \"contact_number_1\": null, \"contact_number_2\": null, \"date_of_interview\": null, \"cnic_issuance_date\": null, \"ip_address_verify_by\": \"61.5.147.92\", \"irrigation_source_id\": null, \"registration_end_time\": null, \"registration_start_time\": null, \"alternative_contact_name\": null, \"alternative_contact_number_1\": null, \"alternative_contact_number_2\": null}}', NULL, '2023-11-07 03:58:52', '2023-11-07 03:58:52'),
(51, 'default', 'created', 'Modules\\Agriculture\\Entities\\Comment', 'created', 26, 'App\\Models\\User', 2, '[]', NULL, '2023-11-07 03:58:52', '2023-11-07 03:58:52'),
(52, 'default', 'created', 'Modules\\Agriculture\\Entities\\Farmer', 'created', 46, 'App\\Models\\User', 2, '{\"attributes\": {\"id\": 46, \"step\": 1, \"address\": null, \"entry_by\": 2, \"isFather\": 1, \"gender_id\": null, \"status_id\": 1, \"tehsil_id\": null, \"created_at\": \"2023-11-22T05:18:50.000000Z\", \"deleted_at\": null, \"hasAnimals\": 0, \"hasTractor\": 0, \"has_animal\": 0, \"updated_at\": \"2023-11-22T05:18:50.000000Z\", \"cnic_number\": \"23222-2323232-2\", \"district_id\": null, \"division_id\": null, \"farmer_name\": null, \"father_name\": null, \"has_tractor\": 0, \"province_id\": 1, \"verified_by\": null, \"education_id\": null, \"date_of_birth\": null, \"khasra_number\": null, \"landOwnership\": null, \"totalLandArea\": null, \"uc_vc_list_id\": null, \"farmer_type_id\": null, \"relationship_id\": null, \"alternative_cnic\": null, \"contact_number_1\": null, \"contact_number_2\": null, \"date_of_interview\": null, \"cnic_issuance_date\": null, \"ip_address_verify_by\": \"127.0.0.1\", \"irrigation_source_id\": null, \"registration_end_time\": null, \"registration_start_time\": null, \"alternative_contact_name\": null, \"alternative_contact_number_1\": null, \"alternative_contact_number_2\": null}}', NULL, '2023-11-22 05:18:51', '2023-11-22 05:18:51'),
(53, 'default', 'created', 'Modules\\Agriculture\\Entities\\Comment', 'created', 53, 'App\\Models\\User', 2, '[]', NULL, '2023-11-22 05:18:51', '2023-11-22 05:18:51'),
(54, 'default', 'updated', 'Modules\\Agriculture\\Entities\\Farmer', 'updated', 46, 'App\\Models\\User', 2, '{\"old\": {\"id\": 46, \"step\": 1, \"address\": null, \"entry_by\": 2, \"isFather\": 1, \"gender_id\": null, \"status_id\": 1, \"tehsil_id\": null, \"created_at\": \"2023-11-22T05:18:50.000000Z\", \"deleted_at\": null, \"hasAnimals\": 0, \"hasTractor\": 0, \"has_animal\": 0, \"updated_at\": \"2023-11-22T05:18:50.000000Z\", \"cnic_number\": \"23222-2323232-2\", \"district_id\": null, \"division_id\": null, \"farmer_name\": null, \"father_name\": null, \"has_tractor\": 0, \"province_id\": 1, \"verified_by\": null, \"education_id\": null, \"date_of_birth\": null, \"khasra_number\": null, \"landOwnership\": null, \"totalLandArea\": null, \"uc_vc_list_id\": null, \"farmer_type_id\": null, \"relationship_id\": null, \"alternative_cnic\": null, \"contact_number_1\": null, \"contact_number_2\": null, \"date_of_interview\": null, \"cnic_issuance_date\": null, \"ip_address_verify_by\": \"127.0.0.1\", \"irrigation_source_id\": null, \"registration_end_time\": null, \"registration_start_time\": null, \"alternative_contact_name\": null, \"alternative_contact_number_1\": null, \"alternative_contact_number_2\": null}, \"attributes\": {\"id\": 46, \"step\": 2, \"address\": null, \"entry_by\": 2, \"isFather\": 1, \"gender_id\": 0, \"status_id\": 1, \"tehsil_id\": 0, \"created_at\": \"2023-11-22T05:18:50.000000Z\", \"deleted_at\": null, \"hasAnimals\": 0, \"hasTractor\": 1, \"has_animal\": 0, \"updated_at\": \"2023-11-22T05:18:58.000000Z\", \"cnic_number\": \"23222-2323232-2\", \"district_id\": 0, \"division_id\": null, \"farmer_name\": null, \"father_name\": null, \"has_tractor\": 0, \"province_id\": 1, \"verified_by\": null, \"education_id\": 0, \"date_of_birth\": null, \"khasra_number\": null, \"landOwnership\": null, \"totalLandArea\": null, \"uc_vc_list_id\": 0, \"farmer_type_id\": 0, \"relationship_id\": 0, \"alternative_cnic\": null, \"contact_number_1\": null, \"contact_number_2\": null, \"date_of_interview\": \"2023-11-22\", \"cnic_issuance_date\": null, \"ip_address_verify_by\": \"127.0.0.1\", \"irrigation_source_id\": null, \"registration_end_time\": null, \"registration_start_time\": \"10:18:45\", \"alternative_contact_name\": null, \"alternative_contact_number_1\": null, \"alternative_contact_number_2\": null}}', NULL, '2023-11-22 05:18:58', '2023-11-22 05:18:58'),
(55, 'default', 'updated', 'Modules\\Agriculture\\Entities\\Farmer', 'updated', 46, 'App\\Models\\User', 2, '{\"old\": {\"id\": 46, \"step\": 2, \"address\": null, \"entry_by\": 2, \"isFather\": 1, \"gender_id\": 0, \"status_id\": 1, \"tehsil_id\": 0, \"created_at\": \"2023-11-22T05:18:50.000000Z\", \"deleted_at\": null, \"hasAnimals\": 0, \"hasTractor\": 1, \"has_animal\": 0, \"updated_at\": \"2023-11-22T05:18:58.000000Z\", \"cnic_number\": \"23222-2323232-2\", \"district_id\": 0, \"division_id\": null, \"farmer_name\": null, \"father_name\": null, \"has_tractor\": 0, \"province_id\": 1, \"verified_by\": null, \"education_id\": 0, \"date_of_birth\": null, \"khasra_number\": null, \"landOwnership\": null, \"totalLandArea\": null, \"uc_vc_list_id\": 0, \"farmer_type_id\": 0, \"relationship_id\": 0, \"alternative_cnic\": null, \"contact_number_1\": null, \"contact_number_2\": null, \"date_of_interview\": \"2023-11-22\", \"cnic_issuance_date\": null, \"ip_address_verify_by\": \"127.0.0.1\", \"irrigation_source_id\": null, \"registration_end_time\": null, \"registration_start_time\": \"10:18:45\", \"alternative_contact_name\": null, \"alternative_contact_number_1\": null, \"alternative_contact_number_2\": null}, \"attributes\": {\"id\": 46, \"step\": 3, \"address\": null, \"entry_by\": 2, \"isFather\": 1, \"gender_id\": 0, \"status_id\": 1, \"tehsil_id\": 0, \"created_at\": \"2023-11-22T05:18:50.000000Z\", \"deleted_at\": null, \"hasAnimals\": 0, \"hasTractor\": 1, \"has_animal\": 0, \"updated_at\": \"2023-11-22T05:19:00.000000Z\", \"cnic_number\": \"23222-2323232-2\", \"district_id\": 0, \"division_id\": null, \"farmer_name\": null, \"father_name\": null, \"has_tractor\": 0, \"province_id\": 1, \"verified_by\": null, \"education_id\": 0, \"date_of_birth\": null, \"khasra_number\": null, \"landOwnership\": null, \"totalLandArea\": null, \"uc_vc_list_id\": 0, \"farmer_type_id\": 0, \"relationship_id\": 0, \"alternative_cnic\": null, \"contact_number_1\": null, \"contact_number_2\": null, \"date_of_interview\": \"2023-11-22\", \"cnic_issuance_date\": null, \"ip_address_verify_by\": \"127.0.0.1\", \"irrigation_source_id\": null, \"registration_end_time\": null, \"registration_start_time\": \"10:18:45\", \"alternative_contact_name\": null, \"alternative_contact_number_1\": null, \"alternative_contact_number_2\": null}}', NULL, '2023-11-22 05:19:00', '2023-11-22 05:19:00'),
(56, 'default', 'updated', 'Modules\\Agriculture\\Entities\\Farmer', 'updated', 46, 'App\\Models\\User', 2, '{\"old\": {\"id\": 46, \"step\": 3, \"address\": null, \"entry_by\": 2, \"isFather\": 1, \"gender_id\": 0, \"status_id\": 1, \"tehsil_id\": 0, \"created_at\": \"2023-11-22T05:18:50.000000Z\", \"deleted_at\": null, \"hasAnimals\": 0, \"hasTractor\": 1, \"has_animal\": 0, \"updated_at\": \"2023-11-22T05:19:00.000000Z\", \"cnic_number\": \"23222-2323232-2\", \"district_id\": 0, \"division_id\": null, \"farmer_name\": null, \"father_name\": null, \"has_tractor\": 0, \"province_id\": 1, \"verified_by\": null, \"education_id\": 0, \"date_of_birth\": null, \"khasra_number\": null, \"landOwnership\": null, \"totalLandArea\": null, \"uc_vc_list_id\": 0, \"farmer_type_id\": 0, \"relationship_id\": 0, \"alternative_cnic\": null, \"contact_number_1\": null, \"contact_number_2\": null, \"date_of_interview\": \"2023-11-22\", \"cnic_issuance_date\": null, \"ip_address_verify_by\": \"127.0.0.1\", \"irrigation_source_id\": null, \"registration_end_time\": null, \"registration_start_time\": \"10:18:45\", \"alternative_contact_name\": null, \"alternative_contact_number_1\": null, \"alternative_contact_number_2\": null}, \"attributes\": {\"id\": 46, \"step\": 4, \"address\": null, \"entry_by\": 2, \"isFather\": 1, \"gender_id\": 0, \"status_id\": 1, \"tehsil_id\": 0, \"created_at\": \"2023-11-22T05:18:50.000000Z\", \"deleted_at\": null, \"hasAnimals\": 0, \"hasTractor\": 1, \"has_animal\": 0, \"updated_at\": \"2023-11-22T05:19:02.000000Z\", \"cnic_number\": \"23222-2323232-2\", \"district_id\": 0, \"division_id\": null, \"farmer_name\": null, \"father_name\": null, \"has_tractor\": 0, \"province_id\": 1, \"verified_by\": null, \"education_id\": 0, \"date_of_birth\": null, \"khasra_number\": null, \"landOwnership\": null, \"totalLandArea\": null, \"uc_vc_list_id\": 0, \"farmer_type_id\": 0, \"relationship_id\": 0, \"alternative_cnic\": null, \"contact_number_1\": null, \"contact_number_2\": null, \"date_of_interview\": \"2023-11-22\", \"cnic_issuance_date\": null, \"ip_address_verify_by\": \"127.0.0.1\", \"irrigation_source_id\": null, \"registration_end_time\": null, \"registration_start_time\": \"10:18:45\", \"alternative_contact_name\": null, \"alternative_contact_number_1\": null, \"alternative_contact_number_2\": null}}', NULL, '2023-11-22 05:19:02', '2023-11-22 05:19:02');

-- --------------------------------------------------------

--
-- Table structure for table `apps`
--

CREATE TABLE `apps` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `app_form` varchar(30) DEFAULT NULL,
  `description` text,
  `icon` varchar(255) DEFAULT NULL,
  `sdp` tinyint(4) DEFAULT '0',
  `app_type` varchar(45) DEFAULT 'CORE_APP',
  `active` int(11) DEFAULT NULL,
  `extra_fields` longtext,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `apps`
--

INSERT INTO `apps` (`id`, `title`, `route`, `app_form`, `description`, `icon`, `sdp`, `app_type`, `active`, `extra_fields`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Settings', 'settings', NULL, NULL, 'bx bx-wrench', 0, 'CORE_APP', 1, NULL, '2022-05-16 17:16:02', '2022-10-05 22:23:28', NULL),
(84, 'FMC', 'fmc', NULL, 'Find My Cell is Application For Police', 'bx bx-devices', 0, 'CORE_APP', NULL, NULL, '2023-10-27 10:53:15', '2023-10-27 15:53:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` int(11) NOT NULL,
  `company_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `company_level_id` bigint(20) UNSIGNED DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `province_id` int(11) DEFAULT NULL,
  `division_id` int(11) DEFAULT NULL,
  `district_id` int(11) DEFAULT NULL,
  `tehsil_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `prefix` varchar(10) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `reference_id` bigint(20) DEFAULT NULL,
  `reference_model` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `company_type_id`, `company_level_id`, `parent_id`, `country_id`, `province_id`, `division_id`, `district_id`, `tehsil_id`, `title`, `description`, `prefix`, `user_id`, `created_at`, `updated_at`, `deleted_at`, `reference_id`, `reference_model`) VALUES
(1, 1, 1, NULL, 1, 1, NULL, NULL, NULL, 'Developers Department', 'Department for developer accounts', NULL, 2, '2022-05-28 18:05:10', '2022-06-23 10:00:33', NULL, NULL, NULL),
(491, 36, 7, 382, NULL, 1, 7, 1, NULL, 'Police Station East Cantt', NULL, NULL, 2, '2023-11-14 02:11:09', '2023-11-14 12:11:29', NULL, NULL, NULL),
(492, 36, 7, 382, NULL, 1, 7, 1, NULL, 'Police Station West Cantt', NULL, NULL, 2, '2023-11-14 02:12:56', '2023-11-14 12:14:39', NULL, NULL, NULL),
(493, 36, 7, 382, NULL, 1, 7, 1, NULL, 'Police Station Michani Gat', NULL, NULL, 2, '2023-11-14 02:16:17', '2023-11-14 12:16:57', NULL, NULL, NULL),
(494, 36, 7, 382, NULL, 1, 7, 1, NULL, 'Police Station Gulberg', NULL, NULL, 2, '2023-11-14 02:19:10', '2023-11-14 12:19:10', NULL, NULL, NULL),
(495, 36, 7, 382, NULL, 1, 7, 1, NULL, 'Police Station Hayatabad', NULL, NULL, 2, '2023-11-14 02:20:25', '2023-11-14 12:20:25', NULL, NULL, NULL),
(496, 36, 7, 382, NULL, 1, 7, 1, NULL, 'Police Station Tatara', NULL, NULL, 2, '2023-11-14 02:24:10', '2023-11-14 12:24:10', NULL, NULL, NULL),
(497, 36, 7, 382, NULL, 1, 7, 1, NULL, 'Police Station Pishtakhara', NULL, NULL, 2, '2023-11-14 02:25:16', '2023-11-14 12:25:16', NULL, NULL, NULL),
(498, 36, 7, 382, NULL, 1, 7, 1, NULL, 'Police Station Town', NULL, NULL, 2, '2023-11-14 02:26:37', '2023-11-14 12:26:37', NULL, NULL, NULL),
(499, 36, 7, 382, NULL, 1, 7, 1, NULL, 'Police Station Tehkal', NULL, NULL, 2, '2023-11-14 02:27:57', '2023-11-14 12:28:14', NULL, NULL, NULL),
(500, 36, 7, 382, NULL, 1, 7, 1, NULL, 'Police Station KRS', NULL, NULL, 2, '2023-11-14 02:29:17', '2023-11-14 12:29:17', NULL, NULL, NULL),
(501, 36, 7, 382, NULL, 1, 7, 1, NULL, 'Police Station Shahqabool', NULL, NULL, 2, '2023-11-14 02:30:35', '2023-11-14 12:30:35', NULL, NULL, NULL),
(502, 36, 7, 382, NULL, 1, 7, 1, NULL, 'Police Station SGH', NULL, NULL, 2, '2023-11-14 02:31:55', '2023-11-14 12:31:55', NULL, NULL, NULL),
(503, 36, 7, 382, NULL, 1, 7, 1, NULL, 'Police Station Kotwali', NULL, NULL, 2, '2023-11-14 02:34:15', '2023-11-14 12:34:15', NULL, NULL, NULL),
(504, 36, 7, 382, NULL, 1, 7, 1, NULL, 'Police Station Faqirabad', NULL, NULL, 2, '2023-11-14 02:36:16', '2023-11-14 12:36:16', NULL, NULL, NULL),
(505, 36, 7, 382, NULL, 1, 7, 1, NULL, 'Police Station Pharipura', NULL, NULL, 2, '2023-11-14 02:38:26', '2023-11-14 12:38:26', NULL, NULL, NULL),
(506, 36, 7, 382, NULL, 1, 7, 1, NULL, 'Police Station AMJ Shah', NULL, NULL, 2, '2023-11-14 02:39:30', '2023-11-14 12:39:30', NULL, NULL, NULL),
(507, 36, 7, 382, NULL, 1, 7, 1, NULL, 'Police Station Bhanamanri', NULL, NULL, 2, '2023-11-14 02:40:33', '2023-11-14 12:40:33', NULL, NULL, NULL),
(508, 36, 7, 382, NULL, 1, 7, 1, NULL, 'Police Station Rehman Baba', NULL, NULL, 2, '2023-11-14 02:41:50', '2023-11-14 12:41:50', NULL, NULL, NULL),
(509, 36, 7, 382, NULL, 1, 7, 1, NULL, 'Police Station Gulbahar', NULL, NULL, 2, '2023-11-14 02:43:05', '2023-11-14 12:43:05', NULL, NULL, NULL),
(510, 36, 7, 382, NULL, 1, 7, 1, NULL, 'Police Station Phandu', NULL, NULL, 2, '2023-11-14 02:44:05', '2023-11-14 12:44:05', NULL, NULL, NULL),
(511, 36, 7, 382, NULL, 1, 7, 1, NULL, 'Police Station Chamkani', NULL, NULL, 2, '2023-11-14 02:45:01', '2023-11-14 12:45:01', NULL, NULL, NULL),
(512, 36, 7, 382, NULL, 1, 7, 1, NULL, 'Police Station Shahpur', NULL, NULL, 2, '2023-11-14 02:46:02', '2023-11-14 12:46:02', NULL, NULL, NULL),
(513, 36, 7, 382, NULL, 1, 7, 1, NULL, 'Police Station Khazana', NULL, NULL, 2, '2023-11-14 02:47:06', '2023-11-14 12:47:06', NULL, NULL, NULL),
(514, 36, 7, 382, NULL, 1, 7, 1, NULL, 'Police Station Daudzai', NULL, NULL, 2, '2023-11-14 02:48:13', '2023-11-14 12:48:13', NULL, NULL, NULL),
(515, 36, 7, 382, NULL, 1, 7, 1, NULL, 'Police Station Mathra', NULL, NULL, 2, '2023-11-14 02:49:03', '2023-11-14 12:49:03', NULL, NULL, NULL),
(516, 36, 7, 382, NULL, 1, 7, 1, NULL, 'Police Station Regi', NULL, NULL, 2, '2023-11-14 02:50:08', '2023-11-14 12:50:08', NULL, NULL, NULL),
(517, 36, 7, 382, NULL, 1, 7, 1, NULL, 'Police Station Nasir Bagh', NULL, NULL, 2, '2023-11-14 02:51:21', '2023-11-14 12:51:21', NULL, NULL, NULL),
(518, 36, 7, 382, NULL, 1, 7, 1, NULL, 'Police Station RMT', NULL, NULL, 2, '2023-11-14 02:52:13', '2023-11-14 12:52:13', NULL, NULL, NULL),
(519, 36, 7, 382, NULL, 1, 7, 1, NULL, 'Police Station Badhber', NULL, NULL, 2, '2023-11-14 02:53:09', '2023-11-14 12:53:09', NULL, NULL, NULL),
(520, 36, 7, 382, NULL, 1, 7, 1, NULL, 'Police Station Inqilab', NULL, NULL, 2, '2023-11-14 02:54:03', '2023-11-14 12:54:03', NULL, NULL, NULL),
(521, 36, 7, 382, NULL, 1, 7, 1, NULL, 'Police Station Sarband', NULL, NULL, 2, '2023-11-14 02:55:01', '2023-11-14 12:55:01', NULL, NULL, NULL),
(522, 36, 7, 382, NULL, 1, 7, 1, NULL, 'Police Station Mattani', NULL, NULL, 2, '2023-11-14 02:56:16', '2023-11-14 12:56:16', NULL, NULL, NULL),
(523, 36, 7, 382, NULL, 1, 7, 1, NULL, 'Police Station Hassan Khel', NULL, NULL, 2, '2023-11-14 02:57:21', '2023-11-14 12:57:21', NULL, NULL, NULL),
(524, 36, 7, 382, NULL, 1, 7, 1, NULL, 'Police Station Urmer', NULL, NULL, 2, '2023-11-14 02:58:20', '2023-11-14 12:58:20', NULL, NULL, NULL),
(525, 36, 7, 382, NULL, 1, 7, 1, NULL, 'Police Station Women Police station', NULL, NULL, 2, '2023-11-14 02:59:14', '2023-11-14 12:59:14', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `company_levels`
--

CREATE TABLE `company_levels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `company_levels`
--

INSERT INTO `company_levels` (`id`, `title`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'National Level', NULL, NULL, NULL, NULL),
(2, 'Provincial Level', NULL, NULL, NULL, NULL),
(3, 'Regional / Divisional Level', NULL, NULL, NULL, NULL),
(4, 'District Level', NULL, NULL, NULL, NULL),
(5, 'Sub Divisional Level', NULL, NULL, NULL, NULL),
(6, 'Tehsil Level', NULL, NULL, NULL, NULL),
(7, 'UC/NC Level', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `company_types`
--

CREATE TABLE `company_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `company_types`
--

INSERT INTO `company_types` (`id`, `title`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Developer', NULL, NULL, NULL, NULL),
(36, 'Police', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `deleted_at` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `title`, `description`, `active`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Pakistan', '', 1, NULL, '2015-01-28 16:12:54', '2022-05-16 13:31:12');

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` int(11) NOT NULL,
  `province_id` int(11) NOT NULL,
  `division_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `short_title` varchar(3) NOT NULL,
  `latitude` varchar(100) DEFAULT NULL,
  `longitude` varchar(100) DEFAULT NULL,
  `description` text,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `district_group_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `check` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `province_id`, `division_id`, `title`, `short_title`, `latitude`, `longitude`, `description`, `active`, `district_group_id`, `deleted_at`, `created_at`, `updated_at`, `check`) VALUES
(1, 1, 7, 'Peshawar', 'pes', '34.014975', '71.580490', NULL, 1, 1, NULL, '2017-02-08 23:09:00', NULL, 0),
(2, 1, 6, 'Mardan', 'mar', '34.200114', '72.050801', '', 1, 1, NULL, '2017-02-08 23:09:00', NULL, 0),
(3, 1, 7, 'Charsadda', 'cha', '34.149433', '71.742781', '', 1, 2, NULL, '2017-02-08 23:09:00', NULL, 0),
(4, 1, 1, 'Bannu', 'ban', '32.989724', '70.603833', '', 1, 1, NULL, '2017-02-08 23:09:00', NULL, 0),
(5, 1, 2, 'Dera Ismail Khan', 'dik', '31.842362', '70.895234', '', 1, 1, NULL, '2017-02-08 23:09:00', NULL, 0),
(6, 1, 5, 'Dir Upper', 'dru', '35.206591', '71.878309', '', 1, 3, NULL, '2017-02-08 23:09:00', NULL, 0),
(7, 1, 5, 'Dir Lower', 'drl', '34.832810', '71.836166', '', 1, 2, NULL, '2017-02-08 23:09:00', NULL, 0),
(8, 1, 3, 'Abbottabad', 'abb', '34.168750', '73.221498', '', 1, 1, NULL, '2017-02-08 23:09:00', NULL, 0),
(9, 1, 3, 'Battagram', 'bat', '34.676658', '73.025769', '', 1, 4, NULL, '2017-02-08 23:09:00', NULL, 0),
(10, 1, 5, 'Buner', 'bun', '34.394322', '72.615117', '', 1, 3, NULL, '2017-02-08 23:09:00', NULL, 0),
(11, 1, 5, 'Chitral Lower', 'cht', '35.852287', '71.787107', '', 1, 3, NULL, '2017-02-08 23:09:00', NULL, 0),
(12, 1, 4, 'Hangu', 'han', '33.528665', '71.067605', '', 1, 3, NULL, '2017-02-08 23:09:00', NULL, 0),
(13, 1, 3, 'Haripur', 'har', '33.995984', '72.936762', '', 1, 2, NULL, '2017-02-08 23:09:00', NULL, 0),
(14, 1, 4, 'Karak', 'kar', '33.110118', '71.091156', '', 1, 3, NULL, '2017-02-08 23:09:00', NULL, 0),
(15, 1, 4, 'Kohat', 'koh', '33.583401', '71.433219', '', 1, 1, NULL, '2017-02-08 23:09:00', NULL, 0),
(16, 1, 3, 'Kohistan Upper', 'kou', '35.261126', '73.276536', '', 1, 4, NULL, '2017-02-08 23:09:00', NULL, 0),
(17, 1, 1, 'Lakki Marwat', 'lak', '32.546259', '70.716847', '', 1, 3, NULL, '2017-02-08 23:09:00', NULL, 0),
(18, 1, 5, 'Malakand', 'mlk', '34.503041', '71.904565', '', 1, 2, NULL, '2017-02-08 23:09:00', NULL, 0),
(19, 1, 3, 'Mansehra', 'man', '34.333882', '73.201062', '', 1, 2, NULL, '2017-02-08 23:09:00', NULL, 0),
(20, 1, 7, 'Nowshera', 'now', '34.015856', '71.975452', '', 1, 2, NULL, '2017-02-08 23:09:00', NULL, 0),
(21, 1, 5, 'Shangla', 'sha', '34.801508', '72.757002', '', 1, 3, NULL, '2017-02-08 23:09:00', NULL, 0),
(22, 1, 6, 'Swabi', 'swb', '34.116416', '72.464278', '', 1, 2, NULL, '2017-02-08 23:09:00', NULL, 0),
(23, 1, 5, 'Swat', 'swt', '34.749212', '72.356271', '', 1, 1, NULL, '2017-02-08 23:09:00', NULL, 0),
(24, 1, 2, 'Tank', 'tan', '32.341693', '70.526493', '', 1, 4, NULL, '2017-02-08 23:09:00', NULL, 0),
(25, 1, 3, 'Tor Ghar', 'tor', '34.6172337', '72.8586485', '', 1, 4, NULL, '2017-02-08 23:09:00', NULL, 0),
(26, 1, 3, 'Kohistan Lower', 'kol', '35.261126', '73.276536', '', 1, 4, NULL, '2017-02-08 23:09:00', NULL, 0),
(138, 1, 5, 'Bajaur', 'baj', '', '', NULL, 1, 5, NULL, '2017-02-08 23:09:00', NULL, 1),
(140, 1, 7, 'Khyber', 'khy', '', '', NULL, 1, 5, NULL, '2017-02-08 23:09:00', NULL, 1),
(141, 1, 4, 'Kurram', 'kur', '', '', NULL, 1, 5, NULL, '2017-02-08 23:09:00', NULL, 1),
(142, 1, 7, 'Mohmand', 'moh', '', '', NULL, 1, 5, NULL, '2017-02-08 23:09:00', NULL, 1),
(143, 1, 1, 'North Waziristan', 'nor', '', '', NULL, 1, 5, NULL, '2017-02-08 23:09:00', NULL, 1),
(144, 1, 4, 'Orakzai', 'ora', '', '', NULL, 1, 5, NULL, '2017-02-08 23:09:00', NULL, 1),
(145, 1, 2, 'South Waziristan (Upper)', 'sou', '', '', NULL, 1, 5, NULL, '2017-02-08 23:09:00', NULL, 1),
(198, 1, 3, 'Kolai Pallas', 'klp', '35.261126', '73.276536', '', 1, 4, NULL, '2017-02-08 23:09:00', NULL, 0),
(199, 4, 24, 'Awaran', 'awa', NULL, NULL, NULL, 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(200, 4, 46, 'Barkhan', 'bar', NULL, NULL, NULL, 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(201, 4, 27, 'Chagai', 'chg', NULL, NULL, NULL, 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(202, 4, 28, 'Dera Bugti', 'dbt', NULL, NULL, NULL, 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(203, 4, 25, 'Gwadar', 'gwa', NULL, NULL, NULL, 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(204, 4, 28, 'Harnai', 'hrn', NULL, NULL, NULL, 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(205, 4, 26, 'Jafarabad', 'jaf', NULL, NULL, NULL, 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(206, 4, 26, 'Jhal Magsi', 'jmg', NULL, NULL, NULL, 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(207, 4, 26, 'Kachhi', 'kac', NULL, NULL, NULL, 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(208, 4, 24, 'Kalat', 'kal', NULL, NULL, NULL, 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(209, 4, 25, 'Kech', 'kec', NULL, NULL, NULL, 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(210, 4, 24, 'Kharan', 'khn', NULL, NULL, NULL, 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(211, 4, 24, 'Khuzdar', 'kzd', NULL, NULL, NULL, 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(212, 4, 27, 'Killa Abdullah', 'kla', NULL, NULL, NULL, 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(213, 4, 29, 'Killa Saifullah', 'kls', NULL, NULL, NULL, 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(214, 4, 28, 'Kohlu', 'klu', NULL, NULL, NULL, 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(215, 4, 24, 'Lasbela', 'las', NULL, NULL, NULL, 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(216, 4, 26, 'Lehri', 'leh', NULL, NULL, NULL, 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(217, 4, 46, 'Loralai', 'lor', NULL, NULL, NULL, 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(218, 4, 24, 'Mastung', 'mas', NULL, NULL, NULL, 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(219, 4, 46, 'Musakhel', 'mus', NULL, NULL, NULL, 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(220, 4, 26, 'Nasirabad', 'nas', NULL, NULL, NULL, 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(221, 4, 27, 'Nushki', 'nus', NULL, NULL, NULL, 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(222, 4, 25, 'Panjgur', 'pan', NULL, NULL, NULL, 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(223, 4, 27, 'Pishin', 'psh', NULL, NULL, NULL, 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(224, 4, 27, 'Quetta', 'que', NULL, NULL, NULL, 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(225, 4, 29, 'Sherani', 'shr', NULL, NULL, NULL, 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(226, 4, 28, 'Sibi', 'sib', NULL, NULL, NULL, 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(227, 4, 26, 'Sohbatpur', 'soh', NULL, NULL, NULL, 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(228, 4, 24, 'Washuk', 'was', NULL, NULL, NULL, 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(229, 4, 29, 'Zhob', 'zho', NULL, NULL, NULL, 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(230, 4, 24, 'Ziarat', 'zia', NULL, NULL, NULL, 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(231, 2, 14, 'Attock', 'att', NULL, NULL, 'n', 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(232, 2, 8, 'Bahawalnagar', 'bap', NULL, NULL, 's', 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(233, 2, 8, 'Bahawalpur', 'bah', NULL, NULL, 's', 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(234, 2, 16, 'Bhakkar', 'bha', NULL, NULL, 'n', 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(235, 2, 14, 'Chakwal', 'chk', NULL, NULL, 'n', 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(236, 2, 10, 'Chiniot', 'chi', NULL, NULL, 'c', 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(237, 2, 9, 'Dera Ghazi Khan', 'der', NULL, NULL, 'n', 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(238, 2, 10, 'Faisalabad', 'fai', NULL, NULL, 'c', 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(239, 2, 11, 'Gujranwala', 'gjw', NULL, NULL, 'c', 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(240, 2, 11, 'Gujrat', 'guj', NULL, NULL, 'n', 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(241, 2, 11, 'Hafizabad', 'haf', NULL, NULL, 'c', 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(242, 2, 10, 'Jhang', 'jha', NULL, NULL, 'c', 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(243, 2, 14, 'Jhelum', 'jhe', NULL, NULL, 'n', 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(244, 2, 12, 'Kasur', 'ksr', NULL, NULL, 'c', 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(245, 2, 13, 'Khanewal', 'knw', NULL, NULL, 'n', 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(246, 2, 16, 'Khushab', 'ksb', NULL, NULL, 'n', 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(247, 2, 12, 'Lahore', 'lah', NULL, NULL, 'c', 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(248, 2, 9, 'Layyah', 'lay', NULL, NULL, 's', 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(249, 2, 13, 'Lodhran', 'lod', NULL, NULL, 's', 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(250, 2, 11, 'Mandi Bahauddin', 'mnb', NULL, NULL, 'n', 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(251, 2, 16, 'Mianwali', 'mia', NULL, NULL, 'n', 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(252, 2, 13, 'Multan', 'mul', NULL, NULL, 's', 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(253, 2, 9, 'Muzaffargarh', 'mzg', NULL, NULL, 's', 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(254, 2, 11, 'Narowal', 'nar', NULL, NULL, 'c', 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(255, 2, 12, 'Nankana Sahib', 'nan', NULL, NULL, 'c', 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(256, 2, 15, 'Okara', 'oka', NULL, NULL, 'c', 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(257, 2, 15, 'Pakpattan', 'pak', NULL, NULL, 'c', 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(258, 2, 8, 'Rahim Yar Khan', 'rah', NULL, NULL, 's', 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(259, 2, 9, 'Rajanpur', 'raj', NULL, NULL, 's', 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(260, 2, 14, 'Rawalpindi', 'raw', NULL, NULL, 'n', 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(261, 2, 15, 'Sahiwal', 'sah', NULL, NULL, 'c', 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(262, 2, 16, 'Sargodha', 'sar', NULL, NULL, 'n', 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(263, 2, 12, 'Sheikhupura', 'she', NULL, NULL, 'c', 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(264, 2, 11, 'Sialkot', 'sia', NULL, NULL, 'c', 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(265, 2, 10, 'Toba Tek Singh', 'tob', NULL, NULL, 'c', 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(266, 2, 13, 'Vehari', 'veh', NULL, NULL, 'c', 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(267, 3, 17, 'Badin', 'bad', NULL, NULL, NULL, 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(268, 3, 18, 'Dadu', 'dad', NULL, NULL, NULL, 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(269, 3, 23, 'Ghotki', 'gho', NULL, NULL, NULL, 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(270, 3, 18, 'Hyderabad', 'hyd', NULL, NULL, NULL, 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(271, 3, 20, 'Jacobabad', 'jac', NULL, NULL, NULL, 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(272, 3, 18, 'Jamshoro', 'jam', NULL, NULL, NULL, 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(273, 3, 19, 'Karachi Central', 'kic', NULL, NULL, NULL, 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(274, 3, 19, 'Karachi East', 'kie', NULL, NULL, NULL, 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(275, 3, 19, 'Karachi South', 'kis', NULL, NULL, NULL, 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(276, 3, 19, 'Karachi West', 'kiw', NULL, NULL, NULL, 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(277, 3, 20, 'Kashmore', 'kas', NULL, NULL, NULL, 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(278, 3, 23, 'Khairpur', 'kha', NULL, NULL, NULL, 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(279, 3, 19, 'Korangi', 'kor', NULL, NULL, NULL, 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(280, 3, 20, 'Larkana', 'lar', NULL, NULL, NULL, 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(281, 3, 19, 'Malir', 'mlr', NULL, NULL, NULL, 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(282, 3, 18, 'Matiari', 'mat', NULL, NULL, NULL, 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(283, 3, 21, 'Mirpur Khas', 'mrk', NULL, NULL, NULL, 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(284, 3, 22, 'Naushahro Feroze', 'nau', NULL, NULL, NULL, 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(285, 3, 20, 'Qambar Shahdadkot', 'qam', NULL, NULL, NULL, 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(286, 3, 21, 'Sanghar', 'sng', NULL, NULL, NULL, 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(287, 3, 22, 'Shaheed Benazir Abad', 'sba', NULL, NULL, NULL, 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(288, 3, 20, 'Shikarpur', 'shi', NULL, NULL, NULL, 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(289, 3, 17, 'Sujawal', 'suj', NULL, NULL, NULL, 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(290, 3, 23, 'Sukkur', 'suk', NULL, NULL, NULL, 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(291, 3, 18, 'Tando Allahyar', 'tna', NULL, NULL, NULL, 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(292, 3, 18, 'Tando Muhammad Khan', 'tmk', NULL, NULL, NULL, 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(293, 3, 21, 'Tharparkar', 'tha', NULL, NULL, NULL, 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(294, 3, 17, 'Thatta', 'tta', NULL, NULL, NULL, 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(295, 3, 21, 'Umerkot', 'ume', NULL, NULL, NULL, 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(296, 7, 30, 'Ghanche', 'gha', NULL, NULL, NULL, 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(297, 7, 30, 'Skardu', 'ska', NULL, NULL, NULL, 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(298, 7, 31, 'Astore', 'ast', NULL, NULL, NULL, 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(299, 7, 31, 'Diamer', 'dia', NULL, NULL, NULL, 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(300, 7, 31, 'Ghizer', 'ghi', NULL, NULL, NULL, 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(301, 7, 31, 'Gilgit', 'gil', NULL, NULL, NULL, 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(302, 7, 31, 'Hunza', 'hun', NULL, NULL, NULL, 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(303, 7, 30, 'Kharmang', 'krm', NULL, NULL, NULL, 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(304, 7, 30, 'Shigar', 'shg', NULL, NULL, NULL, 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(305, 7, 31, 'Nagar', 'nag', NULL, NULL, NULL, 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(306, 8, 33, 'Muzaffarabad', 'mza', NULL, NULL, NULL, 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(307, 8, 33, 'Jhelum valley', 'jhv', NULL, NULL, NULL, 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(308, 8, 33, 'Neelum', 'nee', NULL, NULL, NULL, 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(309, 8, 32, 'Mirpur', 'mir', NULL, NULL, NULL, 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(310, 8, 32, 'Bhimber', 'bhi', NULL, NULL, NULL, 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(311, 8, 32, 'Kotli', 'kot', NULL, NULL, NULL, 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(312, 8, 34, 'Poonch', 'poo', NULL, NULL, NULL, 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(313, 8, 34, 'Bagh', 'bag', NULL, NULL, NULL, 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(314, 8, 34, 'Haveli', 'hav', NULL, NULL, NULL, 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(315, 8, 34, 'Sudhnati', 'sud', NULL, NULL, NULL, 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(326, 6, 39, 'Islamabad ICT', 'isl', NULL, NULL, NULL, 1, NULL, NULL, '2018-10-12 14:04:26', NULL, 0),
(330, 4, 40, 'Kharan', 'kha', '28.6779463', '64.8872649', 'Kharan District', 1, NULL, NULL, '2019-05-28 07:44:41', NULL, 0),
(335, 4, 40, 'Nushki', 'nus', '29.5621042', '65.9406376', 'District Nushki', 1, NULL, NULL, '2019-05-28 07:44:41', NULL, 0),
(340, 4, 40, 'Chaghi', 'cha', '28.8727586', '62.0550821', 'District Chaghi', 1, NULL, NULL, '2019-05-28 07:44:41', NULL, 0),
(345, 4, 40, 'Washuk', 'was', '27.7200153', '64.7790592', 'District Washuk', 1, NULL, NULL, '2019-05-28 07:44:41', NULL, 0),
(346, 4, 24, 'Sikandarabad', 'sik', NULL, NULL, NULL, 1, NULL, NULL, '2019-06-22 10:33:30', NULL, 0),
(351, 1, 5, 'Chitral Upper', 'chu', '35.852287', '71.787107', '', 1, 4, NULL, '2019-10-25 05:41:35', NULL, 0),
(352, 3, 19, 'Keamari', 'kem', NULL, NULL, NULL, 1, NULL, NULL, '2021-06-12 14:04:26', NULL, 0),
(353, 4, 46, 'Duki', 'duk', NULL, NULL, NULL, 1, NULL, NULL, '2021-12-17 06:49:28', NULL, 0),
(354, 4, 27, 'Chaman', 'chm', NULL, NULL, NULL, 1, NULL, NULL, '2021-12-27 07:50:11', NULL, 0),
(355, 2, 47, 'Wazirabad', 'wzb', NULL, NULL, NULL, 1, NULL, NULL, '2022-10-27 07:50:11', NULL, 0),
(356, 4, 26, 'Usta Muhammad', 'ust', NULL, NULL, NULL, 1, NULL, NULL, '2022-12-09 07:50:11', NULL, 0),
(357, 1, 2, 'South Waziristan (Lower)', 'sol', '', '', NULL, 1, 5, NULL, '2017-02-08 23:09:00', NULL, 1),
(358, 2, 14, 'TalaGang', 'tlk', NULL, NULL, 'n', 1, NULL, NULL, '2023-02-01 14:04:26', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `districts_`
--

CREATE TABLE `districts_` (
  `id` int(11) NOT NULL,
  `province_id` int(11) NOT NULL,
  `division_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `urdu_title` text NOT NULL,
  `latitude` varchar(100) DEFAULT NULL,
  `longitude` varchar(100) DEFAULT NULL,
  `description` text,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `deleted_at` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `district_group_id` int(11) DEFAULT NULL,
  `agriculture_district_id` int(11) DEFAULT NULL,
  `epid_district_id` int(11) DEFAULT NULL,
  `sort_id` int(11) DEFAULT NULL,
  `area` varchar(10) DEFAULT NULL,
  `population_17` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `districts_`
--

INSERT INTO `districts_` (`id`, `province_id`, `division_id`, `title`, `urdu_title`, `latitude`, `longitude`, `description`, `active`, `deleted_at`, `created_at`, `updated_at`, `district_group_id`, `agriculture_district_id`, `epid_district_id`, `sort_id`, `area`, `population_17`) VALUES
(1, 1, 7, 'Peshawar', 'پشاور ', '34.014975', '71.580490', 'pesh', 1, NULL, '2017-02-08 23:09:00', NULL, 1, 1, 30, 1, NULL, '4519396'),
(2, 1, 6, 'Mardan', 'مردان', '34.200114', '72.050801', 'mar', 1, NULL, '2017-02-08 23:09:00', NULL, 1, 12, 40, 20, NULL, '2512205'),
(3, 1, 7, 'Charsadda', 'چارسدہ', '34.149433', '71.742781', 'cha', 1, NULL, '2017-02-08 23:09:00', NULL, 2, 11, 31, 10, NULL, '1710963'),
(4, 1, 1, 'Bannu', 'بنوں  ', '32.989724', '70.603833', 'ban', 1, NULL, '2017-02-08 23:09:00', NULL, 1, 8, 61, 100, NULL, '1236371'),
(5, 1, 2, 'Dera Ismail Khan', 'درہ اسماعیل خان', '31.842362', '70.895234', 'dik', 1, NULL, '2017-02-08 23:09:00', NULL, 1, 10, 60, 96, NULL, '1722539'),
(6, 1, 5, 'Dir Upper', ' دیر اپر ', '35.206591', '71.878309', 'dru', 1, NULL, '2017-02-08 23:09:00', NULL, 3, 17, 25, 70, NULL, '1001914'),
(7, 1, 5, 'Dir Lower', 'دیر لوئر', '34.832810', '71.836166', 'drl', 1, NULL, '2017-02-08 23:09:00', NULL, 2, 18, 23, 65, NULL, '1520112'),
(8, 1, 3, 'Abbottabad', 'ابتآباد', '34.168750', '73.221498', 'abt', 1, NULL, '2017-02-08 23:09:00', NULL, 1, 6, 10, 145, '', '1411076'),
(9, 1, 3, 'Battagram', 'بٹگرام   ', '34.676658', '73.025769', 'bat', 1, NULL, '2017-02-08 23:09:00', NULL, 4, 21, 11, 160, NULL, '504558'),
(10, 1, 5, 'Buner', 'بونیر ', '34.394322', '72.615117', 'bnr', 1, NULL, '2017-02-08 23:09:00', NULL, 3, 7, 22, 80, NULL, '949932'),
(11, 1, 5, 'Chitral Lower', 'چترال لوئر   ', '35.852287', '71.787107', 'chi', 1, NULL, '2017-02-08 23:09:00', NULL, 3, 13, 21, 75, NULL, '294552'),
(12, 1, 4, 'Hangu', 'ھنگو ', '33.528665', '71.067605', 'han', 1, NULL, '2017-02-08 23:09:00', NULL, 3, 5, 54, 125, NULL, '549217'),
(13, 1, 3, 'Haripur', 'ہریپور ', '33.995984', '72.936762', 'har', 1, NULL, '2017-02-08 23:09:00', NULL, 2, 23, 12, 140, NULL, '1061843'),
(14, 1, 4, 'Karak', 'کرک ', '33.110118', '71.091156', 'ktk', 1, NULL, '2017-02-08 23:09:00', NULL, 3, 24, 51, 115, NULL, '747712'),
(15, 1, 4, 'Kohat', 'کوہاٹ ', '33.583401', '71.433219', 'kht', 1, NULL, '2017-02-08 23:09:00', NULL, 1, 4, 50, 120, NULL, '1052150'),
(16, 1, 3, 'Kohistan Upper', 'کوہستان اپر ', '35.261126', '73.276536', 'kou', 1, NULL, '2017-02-08 23:09:00', NULL, 4, NULL, 72, 165, NULL, '276907'),
(17, 1, 1, 'Lakki Marwat', 'لکی مروت', '32.546259', '70.716847', 'lak', 1, NULL, '2017-02-08 23:09:00', NULL, 3, 9, 62, 101, NULL, '927557'),
(18, 1, 5, 'Malakand', 'ملاکنڈ  ', '34.503041', '71.904565', 'mal', 1, NULL, '2017-02-08 23:09:00', NULL, 2, 16, 20, 60, NULL, '762529'),
(19, 1, 3, 'Mansehra', 'مانسہرہ ', '34.333882', '73.201062', 'man', 1, NULL, '2017-02-08 23:09:00', NULL, 2, 12, 14, 150, NULL, '1647722'),
(20, 1, 7, 'Nowshera', 'نوشیرہ', '34.015856', '71.975452', 'now', 1, NULL, '2017-02-08 23:09:00', NULL, 2, 2, 32, 5, NULL, '1607580'),
(21, 1, 5, 'Shangla', 'شانگلہ  ', '34.801508', '72.757002', 'sha', 1, NULL, '2017-02-08 23:09:00', NULL, 3, 19, 26, 90, NULL, '802243'),
(22, 1, 6, 'Swabi', 'صوابی ', '34.116416', '72.464278', 'swa', 1, NULL, '2017-02-08 23:09:00', NULL, 2, 15, 41, 30, NULL, '1719875'),
(23, 1, 5, 'Swat', 'سوات ', '34.749212', '72.356271', 'swt', 1, NULL, '2017-02-08 23:09:00', NULL, 1, 20, 24, 85, NULL, '2444991'),
(24, 1, 2, 'Tank', 'ٹانک', '32.341693', '70.526493', 'tnk', 1, NULL, '2017-02-08 23:09:00', NULL, 4, 3, 63, 97, NULL, '414862'),
(25, 1, 3, 'Tor Ghar', 'تورغر', '34.6172337', '72.8586485', 'tgr', 1, NULL, '2017-02-08 23:09:00', NULL, 4, 25, 15, 170, NULL, '181444'),
(26, 1, 3, 'Kohistan Lower', 'کوہستان لوئر   ', '35.261126', '73.276536', 'kol', 1, NULL, '2017-02-08 23:09:00', NULL, 4, 14, 73, 175, NULL, '276907'),
(27, 6, NULL, 'Islamabad', '', '', '', '', 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 7, NULL, 'Ghanche', '', '', '', '', 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 7, NULL, 'Skardu', '', '', '', '', 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 7, NULL, 'Astore', '', '', '', '', 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 7, NULL, 'Diamer', '', '', '', '', 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 7, NULL, 'Ghizer', '', '', '', '', 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 7, NULL, 'Gilgit', '', '', '', '', 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 7, NULL, 'Hunza-Nagar', '', '', '', '', 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 2, NULL, 'Attock', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 2, NULL, 'Bahawalnagar', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 2, NULL, 'Bahawalpur', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 2, NULL, 'Bhakkar', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 2, NULL, 'Chakwal', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 2, NULL, 'Chiniot', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 2, NULL, 'Dera Ghazi Khan', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 2, NULL, 'Faisalabad', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 2, NULL, 'Gujranwala', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, 2, NULL, 'Gujrat', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, 2, NULL, 'Hafizabad', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, 2, NULL, 'Jhang', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, 2, NULL, 'Jhelum', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, 2, NULL, 'Kasur', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, 2, NULL, 'Khanewal', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, 2, NULL, 'Khushab', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, 2, NULL, 'Lahore', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, 2, NULL, 'Layyah', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, 2, NULL, 'Lodhran', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, 2, NULL, 'Mandi Bahauddin', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, 2, NULL, 'Mianwali', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, 2, NULL, 'Multan', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, 2, NULL, 'Muzaffargarh', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, 2, NULL, 'Narowal', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, 2, NULL, 'Nankana Sahib', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, 2, NULL, 'Okara', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, 2, NULL, 'Pakpattan', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, 2, NULL, 'Rahim Yar Khan', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, 2, NULL, 'Rajanpur', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(64, 2, NULL, 'Rawalpindi', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, 2, NULL, 'Sahiwal', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, 2, NULL, 'Sargodha', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(67, 2, NULL, 'Sheikhupura', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(68, 2, NULL, 'Sialkot', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(69, 2, NULL, 'Toba Tek Singh', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(70, 2, NULL, 'Vehari', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(71, 3, NULL, 'Dadu', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(72, 3, NULL, 'Ghotki', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(73, 3, NULL, 'Hyderabad', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(74, 3, NULL, 'Jacobabad', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(75, 3, NULL, 'Jamshoro', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(76, 3, NULL, 'Karachi', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(77, 3, NULL, 'Kashmore', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(78, 3, NULL, 'Khairpur', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(79, 3, NULL, 'Larkana', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(80, 3, NULL, 'Matiari', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(81, 3, NULL, 'Mirpurkhas', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(82, 3, NULL, 'Naushahro Firoze', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(83, 3, NULL, 'Shaheed Benazirabad', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(84, 3, NULL, 'Kambar Shahdadkot', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(85, 3, NULL, 'Sanghar', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(86, 3, NULL, 'Shikarpur', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(87, 3, NULL, 'Sukkur', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(88, 3, NULL, 'Tando Allahyar', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(89, 3, NULL, 'Tando Muhammad Khan', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(90, 3, NULL, 'Tharparkar', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(91, 3, NULL, 'Thatta', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(92, 3, NULL, 'Umerkot', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(93, 3, NULL, 'Sujawal', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(106, 4, NULL, 'Awaran', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(107, 4, NULL, 'Barkhan', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(108, 4, NULL, 'Kachi(Bolan)', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(109, 4, NULL, 'Chagai', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(110, 4, NULL, 'Dera Bugti', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(111, 4, NULL, 'Gwadar', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(112, 4, NULL, 'Harnai', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(113, 4, NULL, 'Jafarabad', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(114, 4, NULL, 'Jhal Magsi', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(115, 4, NULL, 'Kalat', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(116, 4, NULL, 'Kech(Turbat)', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(117, 4, NULL, 'Kharan', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(118, 4, NULL, 'Kohlu', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(119, 4, NULL, 'Khuzdar', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(120, 4, NULL, 'Killa Abdullah', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(121, 4, NULL, 'Killa Saifullah', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(122, 4, NULL, 'Lasbela', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(123, 4, NULL, 'Loralai', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(124, 4, NULL, 'Mastung', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(125, 4, NULL, 'Musakhel', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(126, 4, NULL, 'Nasirabad', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(127, 4, NULL, 'Nushki[9]', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(128, 4, NULL, 'Panjgur', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(129, 4, NULL, 'Pishin', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(130, 4, NULL, 'Quetta', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(131, 4, NULL, 'Sherani', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(132, 4, NULL, 'Sibi', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(133, 4, NULL, 'Washuk', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(134, 4, NULL, 'Zhob', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(135, 4, NULL, 'Ziarat', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(136, 4, NULL, 'Lehri', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(137, 4, NULL, 'Sohbatpur', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(138, 1, 5, 'Bajaur', 'باجوڑ', '34.792033', '71.523887', 'baj', 1, NULL, '2017-02-08 23:09:00', NULL, 5, NULL, 33, 300, NULL, '1147035'),
(139, 5, NULL, 'Khar', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(140, 1, 7, 'Khyber', 'خیبیر', '33.941935', '71.051311', 'khy', 1, NULL, '2017-02-08 23:09:00', NULL, 5, NULL, 34, 300, NULL, '1035118'),
(141, 1, 4, 'Kurram', 'کرّم', '33.5591', '70.2885', 'kurrl', 1, NULL, '2017-02-08 23:09:00', NULL, 5, NULL, 52, 300, NULL, '649775'),
(142, 1, 7, 'Mohmand', 'موھمند ', '34.384416', '71.362127', 'moh', 1, NULL, '2017-02-08 23:09:00', NULL, 5, NULL, 35, 300, NULL, '489763'),
(143, 1, 1, 'North Waziristan', 'شمالی وزیرستان', '32.947397', '70.012855', 'nwd', 1, NULL, '2017-02-08 23:09:00', NULL, 5, NULL, 64, 300, NULL, '569754'),
(144, 1, 4, 'Orakzai', 'اورکزئی', '33.709766', '70.982171', 'ork', 1, NULL, '2017-02-08 23:09:00', NULL, 5, NULL, 53, 300, NULL, '266764'),
(145, 1, 2, 'South Waziristan', 'جنوبی وزیرستان', '32.466357', '69.852206', 'swd', 1, NULL, '2017-02-08 23:09:00', NULL, 5, NULL, 65, 300, NULL, '712316'),
(146, 5, NULL, 'FR Bannu', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(147, 5, NULL, 'FR Dera Ismail Khan', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(148, 5, NULL, 'FR Kohat', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(149, 5, NULL, 'FR Lakki Marwat', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(150, 5, NULL, 'FR Peshawar', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(151, 5, NULL, 'FR Tank', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(152, 8, NULL, 'Muzaffarabad', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(153, 8, NULL, 'Hattian', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(154, 8, NULL, 'Neelum', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(155, 8, NULL, 'Mirpur', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(156, 8, NULL, 'Bhimber', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(157, 8, NULL, 'Kotli', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(158, 8, NULL, 'Poonch', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(159, 8, NULL, 'Bagh', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(160, 8, NULL, 'Haveli', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(161, 8, NULL, 'Sudhnati', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(162, 4, NULL, 'Awaran', '', '', '', '', 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(163, 4, NULL, 'barkhan', '', '', '', '', 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(164, 8, NULL, 'Chagai', '', '', '', '', 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(165, 4, NULL, 'Dera bughti', '', '', '', '', 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(166, 4, NULL, 'Gawadar', '', '', '', '', 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(167, 4, NULL, 'Jaffarabad', '', '', '', '', 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(168, 4, NULL, 'jhal magsi', '', '', '', '', 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(169, 4, NULL, 'kalat', '', '', '', '', 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(170, 4, NULL, 'Turbat', '', '', '', '', 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(171, 4, NULL, 'Kharan', '', '', '', '', 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(172, 4, NULL, 'Khuzdar', '', '', '', '', 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(173, 4, NULL, 'Killa Abdullah', '', '', '', '', 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(174, 4, NULL, 'Kohlu', '', '', '', '', 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(175, 4, NULL, 'Lasbela', '', '', '', '', 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(176, 4, NULL, 'Loralal', '', '', '', '', 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(177, 4, NULL, 'Musakhel', '', '', '', '', 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(178, 4, NULL, 'Mustang', '', '', '', '', 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(179, 4, NULL, 'Nasir abad', '', '', '', '', 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(180, 4, NULL, 'Nushki', '', '', '', '', 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(181, 4, NULL, 'Panjgur', '', '', '', '', 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(182, 4, NULL, 'Pishin', '', '', '', '', 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(183, 4, NULL, 'Quetta', '', '', '', '', 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(184, 4, NULL, 'Sibi', '', '', '', '', 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(185, 4, NULL, 'Zhob', '', '', '', '', 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(186, 4, NULL, 'Ziarat', '', '', '', '', 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(187, 8, NULL, 'DISTRICT MUZAFFAR ABAD', '', '', '', '', 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(188, 8, NULL, ' BAGH', '', '', '', '', 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(189, 8, NULL, 'NEELAM', '', '', '', '', 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(190, 8, NULL, 'MIRPUR', '', '', '', '', 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(191, 8, NULL, 'KOTLI', '', '', '', '', 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(192, 8, NULL, 'BHIMBER', '', '', '', '', 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(193, 8, NULL, 'POONCH', '', '', '', '', 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(194, 8, NULL, 'SUDHNOTI', '', '', '', '', 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(195, 8, NULL, 'HATTIAN BALA', '', '', '', '', 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(196, 8, NULL, 'HAVELI', '', '', '', '', 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(197, 3, NULL, 'Badin', '', '', '', NULL, 1, NULL, '2017-02-08 23:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(198, 1, 3, 'Kolai Pallas', 'کولائی پالس', '35.261126', '73.276536', 'klp', 1, NULL, '2017-02-08 23:09:00', NULL, 4, NULL, 71, 180, NULL, '276907'),
(200, 1, 5, 'Chitral Upper', 'چترال اپر  ', '35.852287', '71.787107', 'chu', 1, NULL, '2017-02-08 23:09:00', NULL, 4, NULL, 21, 185, NULL, '179371');

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` int(11) NOT NULL,
  `province_id` int(11) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `short_title` varchar(3) NOT NULL,
  `description` text,
  `active` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`id`, `province_id`, `title`, `short_title`, `description`, `active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Bannu', 'ban', NULL, 1, '2016-05-03 12:36:39', NULL, NULL),
(2, 1, 'Dera Ismail Khan', 'dik', NULL, 1, '2016-05-03 12:36:58', NULL, NULL),
(3, 1, 'Hazara', 'haz', NULL, 1, '2016-05-03 12:37:12', NULL, NULL),
(4, 1, 'Kohat', 'koh', NULL, 1, '2016-05-03 12:37:29', NULL, NULL),
(5, 1, 'Malakand', 'mal', NULL, 1, '2016-05-03 12:37:43', NULL, NULL),
(6, 1, 'Mardan', 'mar', NULL, 1, '2016-05-03 12:38:00', NULL, NULL),
(7, 1, 'Peshawar', 'pes', NULL, 1, '2016-05-03 12:38:22', NULL, NULL),
(8, 2, 'Bahawalpur', 'bah', NULL, 1, '2018-10-12 14:01:40', NULL, NULL),
(9, 2, 'Dera Ghazi Khan', 'dgk', NULL, 1, '2018-10-12 14:01:40', NULL, NULL),
(10, 2, 'Faisalabad', 'fai', NULL, 1, '2018-10-12 14:01:40', NULL, NULL),
(11, 2, 'Gujranwala', 'guj', NULL, 1, '2018-10-12 14:01:40', NULL, NULL),
(12, 2, 'Lahore', 'lah', NULL, 1, '2018-10-12 14:01:40', NULL, NULL),
(13, 2, 'Multan', 'mul', NULL, 1, '2018-10-12 14:01:40', NULL, NULL),
(14, 2, 'Rawalpindi', 'raw', NULL, 1, '2018-10-12 14:01:40', NULL, NULL),
(15, 2, 'Sahiwal', 'sah', NULL, 1, '2018-10-12 14:01:40', NULL, NULL),
(16, 2, 'Sargodha', 'sar', NULL, 1, '2018-10-12 14:01:40', NULL, NULL),
(17, 3, 'Banbhore', 'bab', NULL, 1, '2018-10-12 14:01:40', NULL, NULL),
(18, 3, 'Hyderabad', 'hyd', NULL, 1, '2018-10-12 14:01:40', NULL, NULL),
(19, 3, 'Karachi', 'kar', NULL, 1, '2018-10-12 14:01:40', NULL, NULL),
(20, 3, 'Larkana', 'lar', NULL, 1, '2018-10-12 14:01:40', NULL, NULL),
(21, 3, 'Mirpur Khas', 'mrk', NULL, 1, '2018-10-12 14:01:40', NULL, NULL),
(22, 3, 'Shaheed Benazir Abad', 'sha', NULL, 1, '2018-10-12 14:01:40', NULL, NULL),
(23, 3, 'Sukkur', 'suk', NULL, 1, '2018-10-12 14:01:40', NULL, NULL),
(24, 4, 'Kalat', 'kal', NULL, 1, '2018-10-12 14:01:40', NULL, NULL),
(25, 4, 'Makran', 'mak', NULL, 1, '2018-10-12 14:01:40', NULL, NULL),
(26, 4, 'Nasirabad', 'nas', NULL, 1, '2018-10-12 14:01:40', NULL, NULL),
(27, 4, 'Quetta', 'que', NULL, 1, '2018-10-12 14:01:40', NULL, NULL),
(28, 4, 'Sibi', 'sib', NULL, 1, '2018-10-12 14:01:40', NULL, NULL),
(29, 4, 'Zhob', 'zho', NULL, 1, '2018-10-12 14:01:40', NULL, NULL),
(30, 7, 'Baltistan', 'bal', NULL, 1, '2018-10-12 14:01:40', NULL, NULL),
(31, 7, 'Gilgit', 'gil', NULL, 1, '2018-10-12 14:01:40', NULL, NULL),
(32, 8, 'Mirpur', 'mir', NULL, 1, '2018-10-12 14:01:40', NULL, NULL),
(33, 8, 'Muzaffarabad', 'muz', NULL, 1, '2018-10-12 14:01:40', NULL, NULL),
(34, 8, 'Poonch', 'poo', NULL, 1, '2018-10-12 14:01:40', NULL, NULL),
(39, 6, 'ICT', 'ict', NULL, 1, '2016-05-03 12:36:39', NULL, NULL),
(40, 4, 'Rakhshan', 'rak', NULL, 1, '2019-05-23 09:27:14', NULL, NULL),
(45, 8, 'Rawalakot', 'rla', NULL, 1, '2019-05-23 09:28:39', NULL, NULL),
(46, 4, 'Loralai', 'lor', NULL, 1, '2021-12-17 06:47:13', NULL, NULL),
(47, 2, 'Gujrat', 'grt', NULL, 1, '2022-10-12 14:01:40', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `divisions_`
--

CREATE TABLE `divisions_` (
  `id` int(11) NOT NULL,
  `province_id` int(11) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `description` text,
  `active` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `divisions_`
--

INSERT INTO `divisions_` (`id`, `province_id`, `title`, `description`, `active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Bannu', 'BN', 1, '2016-05-03 12:36:39', NULL, NULL),
(2, 1, 'Dera Ismail Khan', 'DK', 1, '2016-05-03 12:36:58', NULL, NULL),
(3, 1, 'Hazara', 'HZR', 1, '2016-05-03 12:37:12', NULL, NULL),
(4, 1, 'Kohat', 'KT', 1, '2016-05-03 12:37:29', NULL, NULL),
(5, 1, 'Malakand', 'MK', 1, '2016-05-03 12:37:43', NULL, NULL),
(6, 1, 'Mardan', 'MD', 1, '2016-05-03 12:38:00', NULL, NULL),
(7, 1, 'Peshawar', 'PR', 1, '2016-05-03 12:38:22', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `firebase_notifications`
--

CREATE TABLE `firebase_notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `morphable_type` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `morphable_id` bigint(20) UNSIGNED NOT NULL,
  `app_id` bigint(20) UNSIGNED DEFAULT NULL,
  `module_name` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fcm_token` text COLLATE utf8mb4_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `firebase_notifications`
--

INSERT INTO `firebase_notifications` (`id`, `morphable_type`, `morphable_id`, `app_id`, `module_name`, `app`, `fcm_token`, `deleted_at`, `created_at`, `updated_at`) VALUES
(117, 'App\\Models\\User', 841, 84, 'fmc', NULL, 'dTa6Ll6mSRqoguvC2e7uV-:APA91bGdNURZlU_fnKO0tS1CdZ_V2Wo2hTT1g8wUJSyvpiDZMkUJpwcqy08erV-MwpDDT2zen6yMp4kwayYR2hvd8TNDyRqOBKv-RvSJpPP90PTjn15jwdspIeUb9sOMBPXTKxAa7Gm1', '2023-11-07 11:59:54', '2023-11-07 09:46:59', '2023-11-07 11:59:54'),
(118, 'App\\Models\\User', 837, 84, 'fmc', NULL, 'dTa6Ll6mSRqoguvC2e7uV-:APA91bGdNURZlU_fnKO0tS1CdZ_V2Wo2hTT1g8wUJSyvpiDZMkUJpwcqy08erV-MwpDDT2zen6yMp4kwayYR2hvd8TNDyRqOBKv-RvSJpPP90PTjn15jwdspIeUb9sOMBPXTKxAa7Gm1', '2023-11-07 11:14:33', '2023-11-07 09:52:46', '2023-11-07 11:14:33'),
(119, 'App\\Models\\User', 837, 84, 'fmc', NULL, 'eNpbBoAfRkmoC14IYGsUvE:APA91bFJVN05Boq8XpGvJYQbUoV6vD_3I0I75duGAYD2XD_hN8wL1EMB1gnoIenOmtyIQyEpvJFiIYp240Twu7OltW2FhXFrbu2fdgRzZ9FoQ_tFqumHPat_2WX6el5bQWL4FxjVD1zF', '2023-11-07 11:15:11', '2023-11-07 11:14:33', '2023-11-07 11:15:11'),
(120, 'App\\Models\\User', 837, 84, 'fmc', NULL, 'eNpbBoAfRkmoC14IYGsUvE:APA91bFJVN05Boq8XpGvJYQbUoV6vD_3I0I75duGAYD2XD_hN8wL1EMB1gnoIenOmtyIQyEpvJFiIYp240Twu7OltW2FhXFrbu2fdgRzZ9FoQ_tFqumHPat_2WX6el5bQWL4FxjVD1zF', '2023-11-07 11:15:21', '2023-11-07 11:15:11', '2023-11-07 11:15:21'),
(121, 'App\\Models\\User', 837, 84, 'fmc', NULL, 'eNpbBoAfRkmoC14IYGsUvE:APA91bFJVN05Boq8XpGvJYQbUoV6vD_3I0I75duGAYD2XD_hN8wL1EMB1gnoIenOmtyIQyEpvJFiIYp240Twu7OltW2FhXFrbu2fdgRzZ9FoQ_tFqumHPat_2WX6el5bQWL4FxjVD1zF', '2023-11-07 13:13:56', '2023-11-07 11:15:21', '2023-11-07 13:13:56'),
(122, 'App\\Models\\User', 841, 84, 'fmc', NULL, 'cOtoZAGfRfK2VDFrkxGhBs:APA91bGogbwmrsfF_w-xShTBgKGP-UIyb7N19TumOAThs_q5ulMWDvuU7JNy29sPyLaOJ9udj9dzupQUa-OAiQl73NLvJJOiMwNIPTPWm0kgqgDKv6J8-kL6kFxQalxvSpWz0ksrVVuw', NULL, '2023-11-07 11:59:54', '2023-11-07 11:59:54'),
(123, 'App\\Models\\User', 837, 84, 'fmc', NULL, 'eNpbBoAfRkmoC14IYGsUvE:APA91bFJVN05Boq8XpGvJYQbUoV6vD_3I0I75duGAYD2XD_hN8wL1EMB1gnoIenOmtyIQyEpvJFiIYp240Twu7OltW2FhXFrbu2fdgRzZ9FoQ_tFqumHPat_2WX6el5bQWL4FxjVD1zF', '2023-11-10 04:28:44', '2023-11-07 13:13:56', '2023-11-10 04:28:44'),
(124, 'App\\Models\\User', 837, 84, 'fmc', NULL, 'cSbzZjR3TsumLuSMuxKfNg:APA91bFePYKmjitIvoSrYzQAave9R7gD0_Ro_bscFBSScINabpsd3r93m2Xx7ZSHf6b2xcjDQiqHQMQ3yZJPzaC4CkslnSlkJkxDg3doTKm5jJm3Fzy6uDfoTS789pMZty7T2_OUM8XW', '2023-11-10 07:47:38', '2023-11-10 04:28:44', '2023-11-10 07:47:38'),
(125, 'App\\Models\\User', 842, 84, 'fmc', NULL, 'cSbzZjR3TsumLuSMuxKfNg:APA91bFePYKmjitIvoSrYzQAave9R7gD0_Ro_bscFBSScINabpsd3r93m2Xx7ZSHf6b2xcjDQiqHQMQ3yZJPzaC4CkslnSlkJkxDg3doTKm5jJm3Fzy6uDfoTS789pMZty7T2_OUM8XW', '2023-11-10 07:35:28', '2023-11-10 07:32:36', '2023-11-10 07:35:28'),
(126, 'App\\Models\\User', 842, 84, 'fmc', NULL, 'cSbzZjR3TsumLuSMuxKfNg:APA91bFePYKmjitIvoSrYzQAave9R7gD0_Ro_bscFBSScINabpsd3r93m2Xx7ZSHf6b2xcjDQiqHQMQ3yZJPzaC4CkslnSlkJkxDg3doTKm5jJm3Fzy6uDfoTS789pMZty7T2_OUM8XW', '2023-11-10 07:45:55', '2023-11-10 07:35:28', '2023-11-10 07:45:55'),
(127, 'App\\Models\\User', 842, 84, 'fmc', NULL, 'cSbzZjR3TsumLuSMuxKfNg:APA91bFePYKmjitIvoSrYzQAave9R7gD0_Ro_bscFBSScINabpsd3r93m2Xx7ZSHf6b2xcjDQiqHQMQ3yZJPzaC4CkslnSlkJkxDg3doTKm5jJm3Fzy6uDfoTS789pMZty7T2_OUM8XW', '2023-11-10 10:03:16', '2023-11-10 07:45:55', '2023-11-10 10:03:16'),
(128, 'App\\Models\\User', 837, 84, 'fmc', NULL, 'cSbzZjR3TsumLuSMuxKfNg:APA91bFePYKmjitIvoSrYzQAave9R7gD0_Ro_bscFBSScINabpsd3r93m2Xx7ZSHf6b2xcjDQiqHQMQ3yZJPzaC4CkslnSlkJkxDg3doTKm5jJm3Fzy6uDfoTS789pMZty7T2_OUM8XW', '2023-11-10 09:35:34', '2023-11-10 07:47:38', '2023-11-10 09:35:34'),
(129, 'App\\Models\\User', 837, 84, 'fmc', NULL, 'eNpbBoAfRkmoC14IYGsUvE:APA91bFJVN05Boq8XpGvJYQbUoV6vD_3I0I75duGAYD2XD_hN8wL1EMB1gnoIenOmtyIQyEpvJFiIYp240Twu7OltW2FhXFrbu2fdgRzZ9FoQ_tFqumHPat_2WX6el5bQWL4FxjVD1zF', '2023-11-15 06:32:01', '2023-11-10 09:35:34', '2023-11-15 06:32:01'),
(130, 'App\\Models\\User', 842, 84, 'fmc', NULL, 'cSbzZjR3TsumLuSMuxKfNg:APA91bFePYKmjitIvoSrYzQAave9R7gD0_Ro_bscFBSScINabpsd3r93m2Xx7ZSHf6b2xcjDQiqHQMQ3yZJPzaC4CkslnSlkJkxDg3doTKm5jJm3Fzy6uDfoTS789pMZty7T2_OUM8XW', NULL, '2023-11-10 10:03:16', '2023-11-10 10:03:16'),
(131, 'App\\Models\\User', 837, 84, 'fmc', NULL, 'cSbzZjR3TsumLuSMuxKfNg:APA91bFePYKmjitIvoSrYzQAave9R7gD0_Ro_bscFBSScINabpsd3r93m2Xx7ZSHf6b2xcjDQiqHQMQ3yZJPzaC4CkslnSlkJkxDg3doTKm5jJm3Fzy6uDfoTS789pMZty7T2_OUM8XW', NULL, '2023-11-15 06:32:01', '2023-11-15 06:32:01');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(125) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) DEFAULT NULL,
  `collection_name` varchar(125) NOT NULL,
  `name` varchar(125) NOT NULL,
  `file_name` varchar(125) NOT NULL,
  `mime_type` varchar(125) DEFAULT NULL,
  `disk` varchar(125) NOT NULL,
  `conversions_disk` varchar(125) DEFAULT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `manipulations` text NOT NULL,
  `custom_properties` text NOT NULL,
  `generated_conversions` text NOT NULL,
  `responsive_images` text NOT NULL,
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `custom_properties`, `generated_conversions`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES
(2, 'Modules\\Vms\\Entities\\VisitorRegistration', 261, '9fe4acd4-f351-4f1c-98c9-8e405c8d1dcc', 'user_profile', 'media-librarysaM74U', 'user_proifle_1696918966.png', 'image/png', 'media', 'media', 50867, '[]', '{\"type\": \"image\", \"ratio\": \"1\", \"width\": 150, \"height\": 150, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 1, '2023-10-10 06:22:46', '2023-10-10 06:22:46'),
(3, 'Modules\\Vms\\Entities\\VisitorRegistration', 261, '1b97ebe1-5ecc-4cbb-b831-cbaa70d2fcf0', 'cnic_front', 'media-library3Okc1o', 'cnic_front_1696918966.png', 'image/png', 'media', 'media', 54311, '[]', '{\"type\": \"image\", \"ratio\": \"1\", \"width\": 150, \"height\": 150, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 2, '2023-10-10 06:22:46', '2023-10-10 06:22:46'),
(4, 'Modules\\Vms\\Entities\\VisitorRegistration', 261, '012b256b-6cdd-4f09-b79f-29df48cf7331', 'cnic_back', 'media-libraryCpoNbn', 'cnic_back_1696918966.png', 'image/png', 'media', 'media', 49960, '[]', '{\"type\": \"image\", \"ratio\": \"1\", \"width\": 150, \"height\": 150, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 3, '2023-10-10 06:22:46', '2023-10-10 06:22:46'),
(5, 'Modules\\Vms\\Entities\\VisitorRegistration', 262, '656f3b7c-f90e-426e-9db6-fa064d6850c9', 'user_profile', 'media-libraryoJYHnW', 'user_proifle_1697438998.png', 'image/png', 'media', 'media', 43027, '[]', '{\"type\": \"image\", \"ratio\": \"1\", \"width\": 150, \"height\": 150, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 1, '2023-10-16 06:49:58', '2023-10-16 06:49:58'),
(6, 'Modules\\Vms\\Entities\\VisitorRegistration', 262, '3c120e4a-d13b-4b38-974b-4b212c67cba6', 'cnic_front', 'media-library4x7UcF', 'cnic_front_1697438998.png', 'image/png', 'media', 'media', 54825, '[]', '{\"type\": \"image\", \"ratio\": \"1\", \"width\": 150, \"height\": 150, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 2, '2023-10-16 06:49:58', '2023-10-16 06:49:58'),
(7, 'Modules\\Vms\\Entities\\VisitorRegistration', 262, 'de9c644e-3b1f-4656-ac32-61535a88fc0b', 'cnic_back', 'media-libraryY7fz5h', 'cnic_back_1697438998.png', 'image/png', 'media', 'media', 49079, '[]', '{\"type\": \"image\", \"ratio\": \"1\", \"width\": 150, \"height\": 150, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 3, '2023-10-16 06:49:58', '2023-10-16 06:49:58'),
(8, 'Modules\\Vms\\Entities\\VisitorRegistration', 263, 'ca1fceba-2b3b-4280-bf97-24059b857947', 'user_profile', 'media-librarym3ZD21', 'user_proifle_1697439815.png', 'image/png', 'media', 'media', 43894, '[]', '{\"type\": \"image\", \"ratio\": \"1\", \"width\": 150, \"height\": 150, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 1, '2023-10-16 07:03:35', '2023-10-16 07:03:35'),
(9, 'Modules\\Vms\\Entities\\VisitorRegistration', 263, '79ed27a4-b39f-433d-8760-b4dd4a94a968', 'cnic_front', 'media-libraryoTcnKS', 'cnic_front_1697439815.png', 'image/png', 'media', 'media', 52972, '[]', '{\"type\": \"image\", \"ratio\": \"1\", \"width\": 150, \"height\": 150, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 2, '2023-10-16 07:03:35', '2023-10-16 07:03:35'),
(10, 'Modules\\Vms\\Entities\\VisitorRegistration', 263, 'd21fce9b-4b1d-48fd-bbe7-fb550f97144b', 'cnic_back', 'media-libraryW0wolX', 'cnic_back_1697439815.png', 'image/png', 'media', 'media', 49359, '[]', '{\"type\": \"image\", \"ratio\": \"1\", \"width\": 150, \"height\": 150, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 3, '2023-10-16 07:03:35', '2023-10-16 07:03:35'),
(11, 'Modules\\Vms\\Entities\\VisitorRegistration', 264, '6db58dee-5608-4ae2-93c7-fb0d65752727', 'user_profile', 'media-libraryc1jKsB', 'user_proifle_1697447414.png', 'image/png', 'media', 'media', 39619, '[]', '{\"type\": \"image\", \"ratio\": \"1\", \"width\": 150, \"height\": 150, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 1, '2023-10-16 09:10:14', '2023-10-16 09:10:14'),
(12, 'Modules\\Vms\\Entities\\VisitorRegistration', 265, '11eca653-2eb6-4537-aa07-6fa1fa36f3a5', 'user_profile', 'media-libraryj2wzXd', 'user_proifle_1697449380.png', 'image/png', 'media', 'media', 42027, '[]', '{\"type\": \"image\", \"ratio\": \"1\", \"width\": 150, \"height\": 150, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 1, '2023-10-16 09:43:00', '2023-10-16 09:43:01'),
(13, 'Modules\\Vms\\Entities\\VisitorRegistration', 265, '192c24f2-0f75-47a9-8048-1f69d40c4318', 'cnic_front', 'media-libraryC9LcJ7', 'cnic_front_1697449381.png', 'image/png', 'media', 'media', 51810, '[]', '{\"type\": \"image\", \"ratio\": \"1\", \"width\": 150, \"height\": 150, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 2, '2023-10-16 09:43:01', '2023-10-16 09:43:01'),
(14, 'Modules\\Vms\\Entities\\VisitorRegistration', 265, 'eb7aac47-791a-4ded-921d-52b2c2b181d3', 'cnic_back', 'media-libraryYuRaoA', 'cnic_back_1697449381.png', 'image/png', 'media', 'media', 48339, '[]', '{\"type\": \"image\", \"ratio\": \"1\", \"width\": 150, \"height\": 150, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 3, '2023-10-16 09:43:01', '2023-10-16 09:43:01'),
(15, 'Modules\\Vms\\Entities\\VisitorRegistration', 266, '2e3f15af-2131-4456-92a0-9e422ac4bcf1', 'user_profile', 'media-librarynmeyRH', 'user_proifle_1697610248.png', 'image/png', 'media', 'media', 44368, '[]', '{\"type\": \"image\", \"ratio\": \"1\", \"width\": 150, \"height\": 150, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 1, '2023-10-18 06:24:08', '2023-10-18 06:24:08'),
(16, 'Modules\\Vms\\Entities\\VisitorRegistration', 266, 'a256814f-b16f-404c-9516-5a1ac4f8af3d', 'cnic_front', 'media-libraryN3veX8', 'cnic_front_1697610248.png', 'image/png', 'media', 'media', 50228, '[]', '{\"type\": \"image\", \"ratio\": \"1\", \"width\": 150, \"height\": 150, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 2, '2023-10-18 06:24:08', '2023-10-18 06:24:08'),
(17, 'Modules\\Vms\\Entities\\VisitorRegistration', 266, 'f4061627-d2f0-4172-abda-7ea777540d86', 'cnic_back', 'media-librarytXdjFf', 'cnic_back_1697610248.png', 'image/png', 'media', 'media', 54282, '[]', '{\"type\": \"image\", \"ratio\": \"1\", \"width\": 150, \"height\": 150, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 3, '2023-10-18 06:24:08', '2023-10-18 06:24:08'),
(18, 'Modules\\Vms\\Entities\\VisitorRegistration', 267, 'b1965011-993d-4f05-a66e-ee8627d88e8c', 'user_profile', 'media-librarynkkFlO', 'user_proifle_1697697740.png', 'image/png', 'media', 'media', 49248, '[]', '{\"type\": \"image\", \"ratio\": \"1\", \"width\": 150, \"height\": 150, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 1, '2023-10-19 06:42:20', '2023-10-19 06:42:20'),
(19, 'Modules\\Vms\\Entities\\VisitorRegistration', 267, 'f9a1411d-94ab-4a6a-a486-c0aea562f1b2', 'cnic_front', 'media-libraryvpjrPy', 'cnic_front_1697697740.png', 'image/png', 'media', 'media', 50405, '[]', '{\"type\": \"image\", \"ratio\": \"1\", \"width\": 150, \"height\": 150, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 2, '2023-10-19 06:42:20', '2023-10-19 06:42:20'),
(20, 'Modules\\Vms\\Entities\\VisitorRegistration', 267, 'f28d9fe2-3ef2-446b-9448-869626e16ec4', 'cnic_back', 'media-library3XVETm', 'cnic_back_1697697740.png', 'image/png', 'media', 'media', 53725, '[]', '{\"type\": \"image\", \"ratio\": \"1\", \"width\": 150, \"height\": 150, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 3, '2023-10-19 06:42:20', '2023-10-19 06:42:20'),
(21, 'Modules\\Vms\\Entities\\VisitorRegistration', 268, '8fb504c1-96dd-4058-b2e6-7c0a4d8734a2', 'user_profile', 'media-libraryJCZmCg', 'user_proifle_1698040212.png', 'image/png', 'media', 'media', 50902, '[]', '{\"type\": \"image\", \"ratio\": \"1\", \"width\": 150, \"height\": 150, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 1, '2023-10-23 05:50:12', '2023-10-23 05:50:12'),
(22, 'Modules\\Vms\\Entities\\VisitorRegistration', 268, '924a6478-a888-4d43-8cb7-4548b7a357de', 'cnic_front', 'media-librarytdHK3s', 'cnic_front_1698040212.png', 'image/png', 'media', 'media', 57680, '[]', '{\"type\": \"image\", \"ratio\": \"1\", \"width\": 150, \"height\": 150, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 2, '2023-10-23 05:50:12', '2023-10-23 05:50:12'),
(23, 'Modules\\Vms\\Entities\\VisitorRegistration', 268, '61b08d34-c5b1-46de-bce2-dd9278806864', 'cnic_back', 'media-library2MA56j', 'cnic_back_1698040212.png', 'image/png', 'media', 'media', 57419, '[]', '{\"type\": \"image\", \"ratio\": \"1\", \"width\": 150, \"height\": 150, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 3, '2023-10-23 05:50:12', '2023-10-23 05:50:12'),
(24, 'Modules\\Vms\\Entities\\VisitorRegistration', 269, 'd2cbc044-91bf-4222-9f5e-29b7f4700eb2', 'user_profile', 'media-libraryb92kYr', 'user_proifle_1698044420.png', 'image/png', 'media', 'media', 52085, '[]', '{\"type\": \"image\", \"ratio\": \"1\", \"width\": 150, \"height\": 150, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 1, '2023-10-23 07:00:20', '2023-10-23 07:00:20'),
(25, 'Modules\\Vms\\Entities\\VisitorRegistration', 269, 'f8bf18b9-c939-4253-887d-5051a6543586', 'cnic_front', 'media-libraryrbpTue', 'cnic_front_1698044420.png', 'image/png', 'media', 'media', 50810, '[]', '{\"type\": \"image\", \"ratio\": \"1\", \"width\": 150, \"height\": 150, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 2, '2023-10-23 07:00:20', '2023-10-23 07:00:20'),
(26, 'Modules\\Vms\\Entities\\VisitorRegistration', 269, 'e9c3ca3d-5d22-4212-83dc-7cc991f1f043', 'cnic_back', 'media-libraryqt18ZA', 'cnic_back_1698044420.png', 'image/png', 'media', 'media', 49102, '[]', '{\"type\": \"image\", \"ratio\": \"1\", \"width\": 150, \"height\": 150, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 3, '2023-10-23 07:00:20', '2023-10-23 07:00:20'),
(29, 'Modules\\Vms\\Entities\\VisitorRegistration', 276, 'bfdcdc0c-ee8e-491b-aaeb-0f9294bbc86a', 'user_profile', 'media-libraryhVnzXh', 'user_proifle_1698208978.png', 'image/png', 'media', 'media', 45075, '[]', '{\"type\": \"image\", \"ratio\": \"1\", \"width\": 150, \"height\": 150, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 1, '2023-10-25 04:42:58', '2023-10-25 04:42:58'),
(30, 'Modules\\Vms\\Entities\\VisitorRegistration', 276, '92eb363a-e1c1-40a7-a0f3-478622a6cd4e', 'cnic_front', 'media-libraryuRPhag', 'cnic_front_1698208978.png', 'image/png', 'media', 'media', 51606, '[]', '{\"type\": \"image\", \"ratio\": \"1\", \"width\": 150, \"height\": 150, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 2, '2023-10-25 04:42:58', '2023-10-25 04:42:58'),
(31, 'Modules\\Vms\\Entities\\VisitorRegistration', 276, 'b9239fdb-20e5-46f9-a963-4013a34adbed', 'cnic_back', 'media-libraryxJzIPh', 'cnic_back_1698208978.png', 'image/png', 'media', 'media', 49732, '[]', '{\"type\": \"image\", \"ratio\": \"1\", \"width\": 150, \"height\": 150, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 3, '2023-10-25 04:42:58', '2023-10-25 04:42:58'),
(32, 'Modules\\Vms\\Entities\\VisitorRegistration', 277, '8d938a51-80ad-491d-8ae4-326a57f8dfb5', 'user_profile', 'media-librarynlt1UT', 'user_proifle_1698217942.png', 'image/png', 'media', 'media', 44222, '[]', '{\"type\": \"image\", \"ratio\": \"1\", \"width\": 150, \"height\": 150, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 1, '2023-10-25 07:12:22', '2023-10-25 07:12:22'),
(33, 'Modules\\Vms\\Entities\\VisitorRegistration', 277, '63d44e17-7d98-4007-93c1-c8ab44a62b50', 'cnic_front', 'media-libraryDwjNa0', 'cnic_front_1698217942.png', 'image/png', 'media', 'media', 51520, '[]', '{\"type\": \"image\", \"ratio\": \"1\", \"width\": 150, \"height\": 150, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 2, '2023-10-25 07:12:22', '2023-10-25 07:12:22'),
(34, 'Modules\\Vms\\Entities\\VisitorRegistration', 277, '3a73f78f-6408-4ff9-9934-c18b7d615d67', 'cnic_back', 'media-librarygAkjmb', 'cnic_back_1698217942.png', 'image/png', 'media', 'media', 48091, '[]', '{\"type\": \"image\", \"ratio\": \"1\", \"width\": 150, \"height\": 150, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 3, '2023-10-25 07:12:22', '2023-10-25 07:12:22'),
(35, 'Modules\\Vms\\Entities\\VisitorRegistration', 280, 'd09d755b-fa70-460c-96b1-105f31cbde1d', 'user_profile', 'media-libraryJV2EaW', 'user_proifle_1698305892.png', 'image/png', 'media', 'media', 49910, '[]', '{\"type\": \"image\", \"ratio\": \"1\", \"width\": 150, \"height\": 150, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 1, '2023-10-26 07:38:12', '2023-10-26 07:38:12'),
(36, 'Modules\\Vms\\Entities\\VisitorRegistration', 280, '3d6940d5-7ab7-46ca-a04f-d70b5c04756a', 'cnic_front', 'media-libraryIodeYe', 'cnic_front_1698305892.png', 'image/png', 'media', 'media', 53456, '[]', '{\"type\": \"image\", \"ratio\": \"1\", \"width\": 150, \"height\": 150, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 2, '2023-10-26 07:38:12', '2023-10-26 07:38:12'),
(37, 'Modules\\Vms\\Entities\\VisitorRegistration', 280, 'ac47b0bd-f02d-4ecb-9495-28ea92882aba', 'cnic_back', 'media-library2WZVgJ', 'cnic_back_1698305892.png', 'image/png', 'media', 'media', 48165, '[]', '{\"type\": \"image\", \"ratio\": \"1\", \"width\": 150, \"height\": 150, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 3, '2023-10-26 07:38:12', '2023-10-26 07:38:12'),
(38, 'Modules\\CommerceChamber\\Entities\\Activity', 15, 'aa505d51-dd6d-4a42-9af3-3f5e1cb8d48d', 'complaint_attachments', 'media-librarycdrLcH', '1698404709.png', 'image/png', 'media', 'media', 175132, '[]', '{\"type\": \"image\", \"ratio\": \"1.788\", \"width\": 540, \"height\": 302, \"status\": \"processing\", \"progress\": 100}', '{\"large\": true, \"small\": true, \"thumb\": true, \"medium\": true}', '[]', 1, '2023-10-27 11:05:09', '2023-10-27 11:05:20'),
(49, 'Modules\\CommerceChamber\\Entities\\Activity', 14, '0b7ef349-5771-4c93-9d19-7dc8e036b89f', 'activity_attachments', 'media-libraryVDHa5N', '1698659275.png', 'image/png', 'media', 'media', 547413, '[]', '{\"type\": \"image\", \"ratio\": \"0.789\", \"width\": 631, \"height\": 800, \"status\": \"processing\", \"progress\": 100}', '{\"large\": true, \"small\": true, \"thumb\": true, \"medium\": true}', '[]', 1, '2023-10-30 09:47:55', '2023-10-30 09:48:04'),
(50, 'Modules\\CommerceChamber\\Entities\\Activity', 14, '448d8264-8986-419a-b04a-9d50171a161f', 'activity_attachments', 'media-libraryYSSiGn', '1698659345.png', 'image/png', 'media', 'media', 547413, '[]', '{\"type\": \"image\", \"ratio\": \"0.789\", \"width\": 631, \"height\": 800, \"status\": \"processing\", \"progress\": 100}', '{\"large\": true, \"small\": true, \"thumb\": true, \"medium\": true}', '[]', 1, '2023-10-30 09:49:05', '2023-10-30 09:49:22'),
(51, 'Modules\\CommerceChamber\\Entities\\Activity', 14, 'ea983f40-dd6d-4df1-a07b-d23d8cd2f31f', 'activity_attachments', 'media-libraryS9iX2q', '1698659429.png', 'image/png', 'media', 'media', 547413, '[]', '{\"type\": \"image\", \"ratio\": \"0.789\", \"width\": 631, \"height\": 800, \"status\": \"processing\", \"progress\": 100}', '{\"large\": true, \"small\": true, \"thumb\": true, \"medium\": true}', '[]', 1, '2023-10-30 09:50:29', '2023-10-30 09:50:32'),
(52, 'Modules\\CommerceChamber\\Entities\\Activity', 2, 'fec1faaf-1f7e-4ab2-a706-02c8ea075d1a', 'activity_comments_attachments', 'media-libraryctvjiq', '1698732271.png', 'image/png', 'media', 'media', 175132, '[]', '{\"type\": \"image\", \"ratio\": \"1.788\", \"width\": 540, \"height\": 302, \"status\": \"processing\", \"progress\": 100}', '{\"large\": true, \"small\": true, \"thumb\": true, \"medium\": true}', '[]', 1, '2023-10-31 06:04:31', '2023-10-31 06:04:34'),
(53, 'Modules\\CommerceChamber\\Entities\\Activity', 1, 'd0f2aae4-7c13-48b2-aab4-298839beb52b', 'activity_attachments', 'media-libraryIFDqZG', '1698732300.png', 'image/png', 'media', 'media', 175132, '[]', '{\"type\": \"image\", \"ratio\": \"1.788\", \"width\": 540, \"height\": 302, \"status\": \"processing\", \"progress\": 100}', '{\"large\": true, \"small\": true, \"thumb\": true, \"medium\": true}', '[]', 1, '2023-10-31 06:05:00', '2023-10-31 06:05:03'),
(54, 'Modules\\CommerceChamber\\Entities\\Activity', 1, '4d9bab71-6d87-4456-9628-d2e950ba5291', 'activity_attachments', 'media-library4Lop0b', '1698732351.png', 'image/png', 'media', 'media', 175132, '[]', '{\"type\": \"image\", \"ratio\": \"1.788\", \"width\": 540, \"height\": 302, \"status\": \"processing\", \"progress\": 100}', '{\"large\": true, \"small\": true, \"thumb\": true, \"medium\": true}', '[]', 1, '2023-10-31 06:05:51', '2023-10-31 06:06:05'),
(55, 'Modules\\CommerceChamber\\Entities\\Activity', 8, 'ba9ed57b-2a43-40f3-a472-ba58d061ea42', 'activity_attachments', 'media-libraryH8bT4V', '1698732405.png', 'image/png', 'media', 'media', 175132, '[]', '{\"type\": \"image\", \"ratio\": \"1.788\", \"width\": 540, \"height\": 302, \"status\": \"processing\", \"progress\": 100}', '{\"large\": true, \"small\": true, \"thumb\": true, \"medium\": true}', '[]', 1, '2023-10-31 06:06:45', '2023-10-31 06:06:48'),
(56, 'Modules\\CommerceChamber\\Entities\\Activity', 14, 'ff272dc0-6de3-4422-b666-f60bf1f1f076', 'activity_attachments', 'media-librarygvkh7a', '1698737542.png', 'image/png', 'media', 'media', 547413, '[]', '{\"type\": \"image\", \"ratio\": \"0.789\", \"width\": 631, \"height\": 800, \"status\": \"processing\", \"progress\": 100}', '{\"large\": true, \"small\": true, \"thumb\": true, \"medium\": true}', '[]', 1, '2023-10-31 07:32:22', '2023-10-31 07:32:25'),
(57, 'Modules\\CommerceChamber\\Entities\\Activity', 14, '36fe326c-e96f-4141-80a6-31d225814303', 'activity_attachments', 'media-librarygoY9D0', '1698738384.png', 'image/png', 'media', 'media', 547413, '[]', '{\"type\": \"image\", \"ratio\": \"0.789\", \"width\": 631, \"height\": 800, \"status\": \"processing\", \"progress\": 100}', '{\"large\": true, \"small\": true, \"thumb\": true, \"medium\": true}', '[]', 1, '2023-10-31 07:46:24', '2023-10-31 07:46:50'),
(58, 'AhmedAliraqi\\LaravelMediaUploader\\Entities\\TemporaryFile', 29, '26bb8560-ce3c-43f4-b7db-f08aabc243e8', 'activity_attachments', 'media-libraryfIfNew', '1698738503.png', 'image/png', 'media', 'media', 547413, '[]', '{\"type\": \"image\", \"ratio\": \"0.789\", \"width\": 631, \"height\": 800, \"status\": \"processing\", \"progress\": 100}', '{\"large\": true, \"small\": true, \"thumb\": true, \"medium\": true}', '[]', 1, '2023-10-31 07:48:23', '2023-10-31 07:48:23'),
(59, 'Modules\\CommerceChamber\\Entities\\Activity', 14, '70a323db-7e83-4031-b0b0-139793d38229', 'activity_attachments', 'media-libraryLI7bFd', '1698738515.png', 'image/png', 'media', 'media', 547413, '[]', '{\"type\": \"image\", \"ratio\": \"0.789\", \"width\": 631, \"height\": 800, \"status\": \"processing\", \"progress\": 100}', '{\"large\": true, \"small\": true, \"thumb\": true, \"medium\": true}', '[]', 1, '2023-10-31 07:48:35', '2023-10-31 07:48:37'),
(60, 'Modules\\CommerceChamber\\Entities\\Activity', 14, '19bbfb90-c842-4ada-a0e1-7feea94b634c', 'activity_attachments', 'media-librarywhziN7', '1698738592.png', 'image/png', 'media', 'media', 547413, '[]', '{\"type\": \"image\", \"ratio\": \"0.789\", \"width\": 631, \"height\": 800, \"status\": \"processing\", \"progress\": 100}', '{\"large\": true, \"small\": true, \"thumb\": true, \"medium\": true}', '[]', 1, '2023-10-31 07:49:52', '2023-10-31 07:49:55'),
(61, 'AhmedAliraqi\\LaravelMediaUploader\\Entities\\TemporaryFile', 32, 'bb43160a-9330-4e36-86ab-5c877115f11b', 'activity_attachments', 'media-libraryVE1WgH', '1698738629.png', 'image/png', 'media', 'media', 547413, '[]', '{\"type\": \"image\", \"ratio\": \"0.789\", \"width\": 631, \"height\": 800, \"status\": \"processing\", \"progress\": 100}', '{\"large\": true, \"small\": true, \"thumb\": true, \"medium\": true}', '[]', 1, '2023-10-31 07:50:29', '2023-10-31 07:50:30'),
(62, 'Modules\\CommerceChamber\\Entities\\Activity', 14, '537c085b-7c19-4654-8a56-b533eca84fe2', 'activity_attachments', 'media-libraryxobxI3', '1698738851.png', 'image/png', 'media', 'media', 547413, '[]', '{\"type\": \"image\", \"ratio\": \"0.789\", \"width\": 631, \"height\": 800, \"status\": \"processing\", \"progress\": 100}', '{\"large\": true, \"small\": true, \"thumb\": true, \"medium\": true}', '[]', 1, '2023-10-31 07:54:11', '2023-10-31 07:54:25'),
(63, 'Modules\\CommerceChamber\\Entities\\Activity', 14, '35b792ab-5a1a-41d3-b4d4-816f291072ab', 'activity_attachments', 'media-library1rveP6', '1698741866.png', 'image/png', 'media', 'media', 547413, '[]', '{\"type\": \"image\", \"ratio\": \"0.789\", \"width\": 631, \"height\": 800, \"status\": \"processing\", \"progress\": 100}', '{\"large\": true, \"small\": true, \"thumb\": true, \"medium\": true}', '[]', 1, '2023-10-31 08:44:26', '2023-10-31 08:44:28'),
(64, 'Modules\\Fmc\\Entities\\Seller', 21, '3886cbbf-d0e8-42e5-b375-b8d2eccdc908', 'seller_image', 'media-libraryAuGLis', 'media-libraryAuGLis', 'image/jpeg', 'media', 'media', 5129440, '[]', '{\"type\": \"image\", \"ratio\": \"0.75\", \"width\": 3468, \"height\": 4624, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 1, '2023-10-31 10:14:29', '2023-10-31 10:14:30'),
(65, 'Modules\\CommerceChamber\\Entities\\Activity', 14, '2a179c6d-925c-4c2b-b13d-7d10190718ad', 'activity_attachments', 'media-libraryBdMc44', '1698753025.png', 'image/png', 'media', 'media', 547413, '[]', '{\"type\": \"image\", \"ratio\": \"0.789\", \"width\": 631, \"height\": 800, \"status\": \"processing\", \"progress\": 100}', '{\"large\": true, \"small\": true, \"thumb\": true, \"medium\": true}', '[]', 1, '2023-10-31 11:50:25', '2023-10-31 11:50:27'),
(66, 'Modules\\Fmc\\Entities\\Seller', 22, 'f0256bad-4292-4ea8-a480-074c7c248a15', 'seller_image', 'media-librarySPJluO', 'media-librarySPJluO', 'image/jpeg', 'media', 'media', 3803752, '[]', '{\"type\": \"image\", \"ratio\": \"0.75\", \"width\": 3468, \"height\": 4624, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 1, '2023-10-31 12:15:44', '2023-10-31 12:15:44'),
(67, 'Modules\\Fmc\\Entities\\Seller', 23, '19a8b59b-dd4d-4929-95c2-01232dbd6b31', 'seller_image', 'media-libraryQMsZAG', 'media-libraryQMsZAG', 'image/jpeg', 'media', 'media', 3803752, '[]', '{\"type\": \"image\", \"ratio\": \"0.75\", \"width\": 3468, \"height\": 4624, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 1, '2023-10-31 12:16:25', '2023-10-31 12:16:25'),
(68, 'Modules\\Fmc\\Entities\\Seller', 24, '148bd490-453f-4eca-971f-98e8700fbd52', 'seller_image', 'media-libraryNSuZkq', 'media-libraryNSuZkq', 'image/jpeg', 'media', 'media', 3803752, '[]', '{\"type\": \"image\", \"ratio\": \"0.75\", \"width\": 3468, \"height\": 4624, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 1, '2023-10-31 12:17:38', '2023-10-31 12:17:38'),
(69, 'Modules\\Fmc\\Entities\\Seller', 25, '90cadb32-7c97-4bc7-a873-7c5b357de668', 'seller_image', 'media-libraryYCXN5M', 'media-libraryYCXN5M', 'image/jpeg', 'media', 'media', 3803752, '[]', '{\"type\": \"image\", \"ratio\": \"0.75\", \"width\": 3468, \"height\": 4624, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 1, '2023-10-31 12:23:04', '2023-10-31 12:23:04'),
(70, 'Modules\\Fmc\\Entities\\Seller', 26, '95eeafa5-16a7-4f03-8925-9e5d13e6ddcc', 'seller_image', 'media-library1Hz1xE', 'media-library1Hz1xE', 'image/jpeg', 'media', 'media', 4881653, '[]', '{\"type\": \"image\", \"ratio\": \"0.75\", \"width\": 3468, \"height\": 4624, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 1, '2023-10-31 13:14:38', '2023-10-31 13:14:39'),
(71, 'Modules\\Fmc\\Entities\\Seller', 27, '0df21653-f8b7-4eb4-ad31-28a310a9bcff', 'seller_image', 'media-libraryUdUa95', 'media-libraryUdUa95', 'image/jpeg', 'media', 'media', 4881653, '[]', '{\"type\": \"image\", \"ratio\": \"0.75\", \"width\": 3468, \"height\": 4624, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 1, '2023-10-31 13:15:21', '2023-10-31 13:15:21'),
(72, 'Modules\\Fmc\\Entities\\Seller', 28, '45776eaf-f24c-4bd8-b9bc-5d0115dd162b', 'seller_image', 'media-libraryphmrIE', 'media-libraryphmrIE', 'image/jpeg', 'media', 'media', 4881653, '[]', '{\"type\": \"image\", \"ratio\": \"0.75\", \"width\": 3468, \"height\": 4624, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 1, '2023-10-31 13:15:38', '2023-10-31 13:15:39'),
(73, 'Modules\\Fmc\\Entities\\Seller', 29, '6c3ea1a2-ac86-4568-b473-733c2152de5f', 'seller_image', 'media-libraryW1k00e', 'media-libraryW1k00e', 'image/jpeg', 'media', 'media', 4881653, '[]', '{\"type\": \"image\", \"ratio\": \"0.75\", \"width\": 3468, \"height\": 4624, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 1, '2023-10-31 13:15:54', '2023-10-31 13:15:55'),
(74, 'Modules\\Fmc\\Entities\\Seller', 30, '3d4d9911-8d0f-4036-a52b-7a4159af6914', 'seller_image', 'media-libraryYa8bmn', 'media-libraryYa8bmn', 'image/jpeg', 'media', 'media', 4881653, '[]', '{\"type\": \"image\", \"ratio\": \"0.75\", \"width\": 3468, \"height\": 4624, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 1, '2023-10-31 13:17:26', '2023-10-31 13:17:27'),
(75, 'Modules\\Fmc\\Entities\\Seller', 31, '17127a18-ebfc-43bb-af84-b2ce2a6dd005', 'seller_image', 'media-libraryEY7LVm', 'media-libraryEY7LVm', 'image/jpeg', 'media', 'media', 4881653, '[]', '{\"type\": \"image\", \"ratio\": \"0.75\", \"width\": 3468, \"height\": 4624, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 1, '2023-10-31 13:17:37', '2023-10-31 13:17:38'),
(76, 'Modules\\Fmc\\Entities\\Seller', 32, '1d4169ad-a014-4203-bc8d-a9bbc82ff368', 'seller_image', 'media-libraryzHC3Mc', 'media-libraryzHC3Mc', 'image/jpeg', 'media', 'media', 4881653, '[]', '{\"type\": \"image\", \"ratio\": \"0.75\", \"width\": 3468, \"height\": 4624, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 1, '2023-10-31 13:18:21', '2023-10-31 13:18:22'),
(77, 'Modules\\Fmc\\Entities\\Seller', 33, 'bbe8164e-6033-4e6d-8084-3b2cd3dfd355', 'seller_image', 'media-library6Ux8Zj', 'media-library6Ux8Zj', 'image/jpeg', 'media', 'media', 4881653, '[]', '{\"type\": \"image\", \"ratio\": \"0.75\", \"width\": 3468, \"height\": 4624, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 1, '2023-10-31 13:19:23', '2023-10-31 13:19:23'),
(78, 'Modules\\Fmc\\Entities\\Seller', 34, '8fa5753a-6041-4da7-a2b9-5cb247d471e4', 'seller_image', 'media-libraryp6leEY', 'media-libraryp6leEY', 'image/jpeg', 'media', 'media', 4881653, '[]', '{\"type\": \"image\", \"ratio\": \"0.75\", \"width\": 3468, \"height\": 4624, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 1, '2023-10-31 13:19:38', '2023-10-31 13:19:38'),
(79, 'Modules\\Fmc\\Entities\\Seller', 35, 'f3e7f6b5-371a-41bf-82fd-d79b2bc2825c', 'seller_image', 'media-library4FwalR', 'media-library4FwalR', 'image/jpeg', 'media', 'media', 4881653, '[]', '{\"type\": \"image\", \"ratio\": \"0.75\", \"width\": 3468, \"height\": 4624, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 1, '2023-10-31 13:19:55', '2023-10-31 13:19:55'),
(80, 'Modules\\Fmc\\Entities\\Seller', 36, '43c26499-8e70-478e-9538-c9fbc1583c1b', 'seller_image', 'media-libraryOvGFRQ', 'media-libraryOvGFRQ', 'image/jpeg', 'media', 'media', 4881653, '[]', '{\"type\": \"image\", \"ratio\": \"0.75\", \"width\": 3468, \"height\": 4624, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 1, '2023-10-31 13:20:14', '2023-10-31 13:20:15'),
(81, 'Modules\\Fmc\\Entities\\Seller', 37, '21261e6e-fed3-4437-a65a-5f7f37f3e3eb', 'seller_image', 'media-libraryGzzdYq', 'media-libraryGzzdYq', 'image/jpeg', 'media', 'media', 4881653, '[]', '{\"type\": \"image\", \"ratio\": \"0.75\", \"width\": 3468, \"height\": 4624, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 1, '2023-10-31 13:19:36', '2023-10-31 13:19:36'),
(82, 'Modules\\Fmc\\Entities\\Seller', 38, '04f2d0d3-f1cf-47d6-9df5-38cc87e966a2', 'seller_image', 'media-libraryYebUab', 'media-libraryYebUab', 'image/jpeg', 'media', 'media', 4881653, '[]', '{\"type\": \"image\", \"ratio\": \"0.75\", \"width\": 3468, \"height\": 4624, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 1, '2023-10-31 13:39:29', '2023-10-31 13:39:29'),
(83, 'Modules\\CommerceChamber\\Entities\\Activity', 14, 'e34769d9-ab7e-4703-8fea-84087b1e0c79', 'activity_attachments', 'media-librarybOVDGp', '1698764811.png', 'image/png', 'media', 'media', 547413, '[]', '{\"type\": \"image\", \"ratio\": \"0.789\", \"width\": 631, \"height\": 800, \"status\": \"processing\", \"progress\": 100}', '{\"large\": true, \"small\": true, \"thumb\": true, \"medium\": true}', '[]', 1, '2023-10-31 15:06:51', '2023-10-31 15:07:03'),
(84, 'Modules\\Fmc\\Entities\\Seller', 39, '731e2bee-35e8-466b-8088-f528001a9d9a', 'seller_image', 'media-libraryjMfJSL', 'media-libraryjMfJSL', 'image/jpeg', 'media', 'media', 2650798, '[]', '{\"type\": \"image\", \"ratio\": \"0.75\", \"width\": 3000, \"height\": 4000, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 1, '2023-11-01 07:30:37', '2023-11-01 07:30:37'),
(85, 'Modules\\Fmc\\Entities\\Seller', 40, 'c72cecfa-6fbe-4b04-a85e-1e214f959b5b', 'seller_image', 'media-libraryq9YIdH', 'media-libraryq9YIdH', 'image/jpeg', 'media', 'media', 2650798, '[]', '{\"type\": \"image\", \"ratio\": \"0.75\", \"width\": 3000, \"height\": 4000, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 1, '2023-11-01 07:31:55', '2023-11-01 07:31:56'),
(86, 'Modules\\Fmc\\Entities\\Seller', 41, '24fe30a3-affa-49cc-ac0e-83ab3d9e4075', 'seller_image', 'media-libraryir81re', 'media-libraryir81re', 'image/jpeg', 'media', 'media', 3442285, '[]', '{\"type\": \"image\", \"ratio\": \"0.563\", \"width\": 2296, \"height\": 4080, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 1, '2023-11-01 08:51:03', '2023-11-01 08:51:03'),
(87, 'Modules\\Fmc\\Entities\\Seller', 42, '693b3d28-17cf-4a19-8d38-466b475cc436', 'seller_image', 'media-libraryfRS9Tt', 'media-libraryfRS9Tt', 'image/jpeg', 'media', 'media', 2650798, '[]', '{\"type\": \"image\", \"ratio\": \"0.75\", \"width\": 3000, \"height\": 4000, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 1, '2023-11-01 09:01:36', '2023-11-01 09:01:36'),
(88, 'Modules\\Fmc\\Entities\\Seller', 43, '86eb8fe2-3481-430e-926f-c9ce8d67363a', 'seller_image', 'media-libraryT1ek9B', 'media-libraryT1ek9B', 'image/jpeg', 'media', 'media', 3975593, '[]', '{\"type\": \"image\", \"ratio\": \"0.563\", \"width\": 2296, \"height\": 4080, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 1, '2023-11-01 09:02:36', '2023-11-01 09:02:36'),
(89, 'Modules\\Fmc\\Entities\\Seller', 44, '50fe41fa-b7ae-455b-bbfe-77b3159c83d2', 'seller_image', 'media-librarySPldzW', 'media-librarySPldzW', 'image/jpeg', 'media', 'media', 4085932, '[]', '{\"type\": \"image\", \"ratio\": \"0.75\", \"width\": 3468, \"height\": 4624, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 1, '2023-11-01 09:26:12', '2023-11-01 09:26:13'),
(90, 'Modules\\Fmc\\Entities\\Seller', 45, '2378bac2-35d6-44e7-822f-c1268d3ec438', 'seller_image', 'media-libraryXd44Ij', 'media-libraryXd44Ij', 'image/jpeg', 'media', 'media', 4482403, '[]', '{\"type\": \"image\", \"ratio\": \"0.75\", \"width\": 3468, \"height\": 4624, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 1, '2023-11-01 09:29:44', '2023-11-01 09:29:44'),
(91, 'Modules\\CommerceChamber\\Entities\\Activity', 14, 'bd69e8d3-5b90-4f87-8684-09b42ecf37ad', 'activity_attachments', 'media-libraryj5FU8k', '1698906393.png', 'image/png', 'media', 'media', 547413, '[]', '{\"type\": \"image\", \"ratio\": \"0.789\", \"width\": 631, \"height\": 800, \"status\": \"processing\", \"progress\": 100}', '{\"large\": true, \"small\": true, \"thumb\": true, \"medium\": true}', '[]', 1, '2023-11-02 06:26:33', '2023-11-02 06:26:36'),
(92, 'Modules\\Vms\\Entities\\VisitorRegistration', 283, '36a020c3-80fb-4e2c-b97c-6e7547307f08', 'user_profile', 'media-library6z57Lr', 'user_proifle_1698915373.png', 'image/png', 'media', 'media', 44012, '[]', '{\"type\": \"image\", \"ratio\": \"1\", \"width\": 150, \"height\": 150, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 1, '2023-11-02 08:56:13', '2023-11-02 08:56:13'),
(93, 'Modules\\Vms\\Entities\\VisitorRegistration', 283, 'e68f0258-945b-4164-bf74-e659077bc68e', 'cnic_front', 'media-libraryI6nKe7', 'cnic_front_1698915373.png', 'image/png', 'media', 'media', 49100, '[]', '{\"type\": \"image\", \"ratio\": \"1\", \"width\": 150, \"height\": 150, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 2, '2023-11-02 08:56:13', '2023-11-02 08:56:13'),
(94, 'Modules\\Vms\\Entities\\VisitorRegistration', 283, 'e4094587-024c-4318-aae4-91e8b0ea2869', 'cnic_back', 'media-libraryO0ZzKh', 'cnic_back_1698915373.png', 'image/png', 'media', 'media', 47677, '[]', '{\"type\": \"image\", \"ratio\": \"1\", \"width\": 150, \"height\": 150, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 3, '2023-11-02 08:56:13', '2023-11-02 08:56:13'),
(95, 'Modules\\Vms\\Entities\\VisitorRegistration', 284, 'e4c0f968-adf4-44e9-90bf-feba3c445202', 'user_profile', 'media-library0c7XLd', 'user_proifle_1698917887.png', 'image/png', 'media', 'media', 35871, '[]', '{\"type\": \"image\", \"ratio\": \"1\", \"width\": 150, \"height\": 150, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 1, '2023-11-02 09:38:07', '2023-11-02 09:38:07'),
(96, 'Modules\\Vms\\Entities\\VisitorRegistration', 284, '083f11f6-2e1a-433e-a1fc-a07498f605d3', 'cnic_front', 'media-libraryM0E9sJ', 'cnic_front_1698917887.png', 'image/png', 'media', 'media', 47412, '[]', '{\"type\": \"image\", \"ratio\": \"1\", \"width\": 150, \"height\": 150, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 2, '2023-11-02 09:38:07', '2023-11-02 09:38:08'),
(97, 'Modules\\Vms\\Entities\\VisitorRegistration', 284, '38f1d948-0ae9-4e0b-933f-a2d6f7894812', 'cnic_back', 'media-librarymL9t1y', 'cnic_back_1698917888.png', 'image/png', 'media', 'media', 50713, '[]', '{\"type\": \"image\", \"ratio\": \"1\", \"width\": 150, \"height\": 150, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 3, '2023-11-02 09:38:08', '2023-11-02 09:38:08'),
(98, 'Modules\\CommerceChamber\\Entities\\Activity', 14, '5fd040cb-aafe-49cb-8119-764afe18bdb1', 'activity_attachments', 'media-libraryBLnHtE', '1698919474.png', 'image/png', 'media', 'media', 547413, '[]', '{\"type\": \"image\", \"ratio\": \"0.789\", \"width\": 631, \"height\": 800, \"status\": \"processing\", \"progress\": 100}', '{\"large\": true, \"small\": true, \"thumb\": true, \"medium\": true}', '[]', 1, '2023-11-02 10:04:34', '2023-11-02 10:04:53'),
(99, 'Modules\\Vms\\Entities\\VisitorRegistration', 285, '3103a404-ec83-4eda-a8fc-a57253450c2d', 'user_profile', 'media-libraryF0gOWo', 'user_proifle_1698920636.png', 'image/png', 'media', 'media', 43729, '[]', '{\"type\": \"image\", \"ratio\": \"1\", \"width\": 150, \"height\": 150, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 1, '2023-11-02 10:23:56', '2023-11-02 10:23:56'),
(100, 'Modules\\Vms\\Entities\\VisitorRegistration', 285, '29f81e21-4b2f-4ca5-8f86-3c30fb573dd1', 'cnic_front', 'media-libraryRJSTa4', 'cnic_front_1698920636.png', 'image/png', 'media', 'media', 52751, '[]', '{\"type\": \"image\", \"ratio\": \"1\", \"width\": 150, \"height\": 150, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 2, '2023-11-02 10:23:56', '2023-11-02 10:23:56'),
(101, 'Modules\\Vms\\Entities\\VisitorRegistration', 285, '1c9555d6-1222-4187-8f13-469e2bf1cd31', 'cnic_back', 'media-library6jclxG', 'cnic_back_1698920636.png', 'image/png', 'media', 'media', 46083, '[]', '{\"type\": \"image\", \"ratio\": \"1\", \"width\": 150, \"height\": 150, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 3, '2023-11-02 10:23:56', '2023-11-02 10:23:56'),
(102, 'Modules\\Vms\\Entities\\VisitorRegistration', 286, '69393b96-fdbc-4151-9385-45c32137bca8', 'user_profile', 'media-library6qz4PI', 'user_proifle_1698996625.png', 'image/png', 'media', 'media', 50044, '[]', '{\"type\": \"image\", \"ratio\": \"1\", \"width\": 150, \"height\": 150, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 1, '2023-11-03 07:30:25', '2023-11-03 07:30:25'),
(103, 'Modules\\Vms\\Entities\\VisitorRegistration', 286, '9645b8c0-3502-4128-8c54-d26665149923', 'cnic_front', 'media-library8zSp6x', 'cnic_front_1698996625.png', 'image/png', 'media', 'media', 50245, '[]', '{\"type\": \"image\", \"ratio\": \"1\", \"width\": 150, \"height\": 150, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 2, '2023-11-03 07:30:25', '2023-11-03 07:30:25'),
(104, 'Modules\\Vms\\Entities\\VisitorRegistration', 286, 'ec2e3c05-3901-4d4a-bf73-41774f049ff1', 'cnic_back', 'media-libraryKYbQMa', 'cnic_back_1698996625.png', 'image/png', 'media', 'media', 53885, '[]', '{\"type\": \"image\", \"ratio\": \"1\", \"width\": 150, \"height\": 150, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 3, '2023-11-03 07:30:25', '2023-11-03 07:30:25'),
(105, 'Modules\\CommerceChamber\\Entities\\Activity', 14, 'f39384a5-9c9a-4440-abf4-eb1ffc101d7e', 'activity_attachments', 'media-libraryaqeqLw', '1699250356.png', 'image/png', 'media', 'media', 547413, '[]', '{\"type\": \"image\", \"ratio\": \"0.789\", \"width\": 631, \"height\": 800, \"status\": \"processing\", \"progress\": 100}', '{\"large\": true, \"small\": true, \"thumb\": true, \"medium\": true}', '[]', 1, '2023-11-06 05:59:16', '2023-11-06 05:59:19'),
(106, 'Modules\\Vms\\Entities\\VisitorRegistration', 288, '961f4f83-b1eb-430c-88e2-b1c0bb5be339', 'user_profile', 'media-library7czNvr', 'user_proifle_1699250687.png', 'image/png', 'media', 'media', 45512, '[]', '{\"type\": \"image\", \"ratio\": \"1\", \"width\": 150, \"height\": 150, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 1, '2023-11-06 06:04:47', '2023-11-06 06:04:47'),
(107, 'Modules\\Vms\\Entities\\VisitorRegistration', 288, '65330d3d-341e-4787-bfc1-e551c33f140c', 'cnic_front', 'media-librarydQH6Af', 'cnic_front_1699250687.png', 'image/png', 'media', 'media', 54634, '[]', '{\"type\": \"image\", \"ratio\": \"1\", \"width\": 150, \"height\": 150, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 2, '2023-11-06 06:04:47', '2023-11-06 06:04:47'),
(108, 'Modules\\Vms\\Entities\\VisitorRegistration', 288, 'a1e56cf2-ff59-4d7f-8a50-69e5c3756304', 'cnic_back', 'media-libraryRkYNzD', 'cnic_back_1699250687.png', 'image/png', 'media', 'media', 52571, '[]', '{\"type\": \"image\", \"ratio\": \"1\", \"width\": 150, \"height\": 150, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 3, '2023-11-06 06:04:47', '2023-11-06 06:04:48'),
(109, 'Modules\\Fmc\\Entities\\Seller', 46, '9e71b7d5-51fc-4355-851d-fd512a3a9a81', 'seller_image', 'media-libraryzORUjw', 'media-libraryzORUjw', 'image/jpeg', 'media', 'media', 4682178, '[]', '{\"type\": \"image\", \"ratio\": \"0.75\", \"width\": 3468, \"height\": 4624, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 1, '2023-11-06 11:19:58', '2023-11-06 11:19:59'),
(110, 'Modules\\Fmc\\Entities\\Seller', 51, 'b0b1feb6-40e9-44b4-8c71-37813c687da2', 'seller_image', 'media-libraryd56hpn', 'media-libraryd56hpn', 'image/jpeg', 'media', 'media', 5368357, '[]', '{\"type\": \"image\", \"ratio\": \"0.75\", \"width\": 3468, \"height\": 4624, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 1, '2023-11-06 12:56:47', '2023-11-06 12:56:48'),
(111, 'Modules\\Fmc\\Entities\\Seller', 52, '5dafa3c5-4fa8-422f-9ed7-4fb503a85e52', 'seller_image', 'media-libraryFzwevP', 'media-libraryFzwevP', 'image/jpeg', 'media', 'media', 4318041, '[]', '{\"type\": \"image\", \"ratio\": \"0.75\", \"width\": 3468, \"height\": 4624, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 1, '2023-11-06 15:07:26', '2023-11-06 15:07:27'),
(112, 'Modules\\Fmc\\Entities\\Seller', 53, 'f88b9701-df28-4604-a2fa-2dbefe9f0a35', 'seller_image', 'media-libraryq0NvmW', 'media-libraryq0NvmW', 'image/jpeg', 'media', 'media', 4350577, '[]', '{\"type\": \"image\", \"ratio\": \"0.75\", \"width\": 3468, \"height\": 4624, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 1, '2023-11-06 15:19:26', '2023-11-06 15:19:26'),
(113, 'Modules\\Fmc\\Entities\\Seller', 54, '088a59ac-1c51-4a52-b750-86b6937165f7', 'seller_image', 'media-libraryHJaqsK', 'media-libraryHJaqsK', 'image/jpeg', 'media', 'media', 1531597, '[]', '{\"type\": \"image\", \"ratio\": \"0.563\", \"width\": 2296, \"height\": 4080, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 1, '2023-11-06 15:48:28', '2023-11-06 15:48:28'),
(114, 'Modules\\Fmc\\Entities\\Seller', 55, '6608c0a3-43fb-43fe-877d-0b7a08c5992e', 'seller_image', 'media-library49D0Fv', 'media-library49D0Fv', 'image/jpeg', 'media', 'media', 2311239, '[]', '{\"type\": \"image\", \"ratio\": \"0.75\", \"width\": 3468, \"height\": 4624, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 1, '2023-11-06 15:51:22', '2023-11-06 15:51:22'),
(115, 'Modules\\Fmc\\Entities\\Seller', 56, 'fb036d19-1918-44e7-a4bf-90753aaabafc', 'seller_image', 'media-library4yLGuW', 'media-library4yLGuW', 'image/jpeg', 'media', 'media', 3621841, '[]', '{\"type\": \"image\", \"ratio\": \"0.563\", \"width\": 2296, \"height\": 4080, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 1, '2023-11-07 06:06:53', '2023-11-07 06:06:53'),
(116, 'Modules\\Fmc\\Entities\\Seller', 57, 'c484644f-adfa-4654-858f-82a13824d121', 'seller_image', 'media-librarynabq3L', 'media-librarynabq3L', 'image/jpeg', 'media', 'media', 4794591, '[]', '{\"type\": \"image\", \"ratio\": \"0.75\", \"width\": 3468, \"height\": 4624, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 1, '2023-11-07 06:34:06', '2023-11-07 06:34:06'),
(117, 'Modules\\Fmc\\Entities\\Seller', 58, 'd7a412ee-1a5b-4b7e-889a-7507034a0f82', 'seller_image', 'media-library2lbIW5', 'media-library2lbIW5', 'image/jpeg', 'media', 'media', 4290429, '[]', '{\"type\": \"image\", \"ratio\": \"0.75\", \"width\": 3468, \"height\": 4624, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 1, '2023-11-07 06:35:29', '2023-11-07 06:35:30'),
(118, 'Modules\\Fmc\\Entities\\Seller', 59, '881a98a7-b560-44db-b94e-1209c1436962', 'seller_image', 'media-library7xUtJq', 'media-library7xUtJq', 'image/jpeg', 'media', 'media', 5622155, '[]', '{\"type\": \"image\", \"ratio\": \"0.75\", \"width\": 3468, \"height\": 4624, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 1, '2023-11-07 06:37:00', '2023-11-07 06:37:01'),
(119, 'Modules\\Fmc\\Entities\\Seller', 63, 'f24e40bd-4620-44d0-8cfe-2775adb4a6b4', 'seller_image', 'media-library6MMH5s', 'media-library6MMH5s', 'image/jpeg', 'media', 'media', 4893191, '[]', '{\"type\": \"image\", \"ratio\": \"0.563\", \"width\": 2296, \"height\": 4080, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 1, '2023-11-07 06:41:37', '2023-11-07 06:41:37'),
(120, 'Modules\\Fmc\\Entities\\Seller', 65, 'bb7db450-6a2e-4257-9e22-97258bd5c30d', 'seller_image', 'media-librarynLZgBS', 'media-librarynLZgBS', 'image/jpeg', 'media', 'media', 1648831, '[]', '{\"type\": \"image\", \"ratio\": \"0.473\", \"width\": 1908, \"height\": 4032, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 1, '2023-11-07 06:46:25', '2023-11-07 06:46:25'),
(121, 'Modules\\Fmc\\Entities\\Seller', 66, '5aeedc81-bf35-4be2-9445-ae3eca204933', 'seller_image', 'media-libraryaORFFW', 'media-libraryaORFFW', 'image/jpeg', 'media', 'media', 1648831, '[]', '{\"type\": \"image\", \"ratio\": \"0.473\", \"width\": 1908, \"height\": 4032, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 1, '2023-11-07 06:47:00', '2023-11-07 06:47:01'),
(122, 'Modules\\Fmc\\Entities\\Seller', 67, '362d7a31-6c9a-4b0d-a9b1-6a8fca0f3b1c', 'seller_image', 'media-libraryOrO0rB', 'media-libraryOrO0rB', 'image/jpeg', 'media', 'media', 1699805, '[]', '{\"type\": \"image\", \"ratio\": \"0.563\", \"width\": 2296, \"height\": 4080, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 1, '2023-11-07 06:52:16', '2023-11-07 06:52:16'),
(123, 'Modules\\Fmc\\Entities\\Seller', 68, '99cf775c-f111-4a15-bf93-97c39eab06a2', 'seller_image', 'media-libraryUqCwJ9', 'media-libraryUqCwJ9', 'image/jpeg', 'media', 'media', 4560079, '[]', '{\"type\": \"image\", \"ratio\": \"0.75\", \"width\": 3024, \"height\": 4032, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 1, '2023-11-07 07:02:14', '2023-11-07 07:02:15'),
(124, 'Modules\\Fmc\\Entities\\Seller', 69, 'b095e86e-8a92-4641-8a06-7377066c10ad', 'seller_image', 'media-librarykFGs4T', 'media-librarykFGs4T', 'image/jpeg', 'media', 'media', 3411877, '[]', '{\"type\": \"image\", \"ratio\": \"0.75\", \"width\": 3468, \"height\": 4624, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 1, '2023-11-07 07:19:56', '2023-11-07 07:19:57'),
(125, 'Modules\\Fmc\\Entities\\Seller', 70, 'a901f429-bc21-423a-8b6b-89a39392d95b', 'seller_image', 'media-librarycOl2r8', 'media-librarycOl2r8', 'image/jpeg', 'media', 'media', 3443861, '[]', '{\"type\": \"image\", \"ratio\": \"0.75\", \"width\": 3024, \"height\": 4032, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 1, '2023-11-07 07:26:02', '2023-11-07 07:26:02'),
(126, 'Modules\\Fmc\\Entities\\Seller', 71, 'd9cd7d79-7686-4a37-a1ea-bee43b336981', 'seller_image', 'media-libraryeTXhEm', 'media-libraryeTXhEm', 'image/jpeg', 'media', 'media', 3242272, '[]', '{\"type\": \"image\", \"ratio\": \"0.75\", \"width\": 3024, \"height\": 4032, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 1, '2023-11-07 07:28:48', '2023-11-07 07:28:49'),
(127, 'Modules\\Fmc\\Entities\\Seller', 72, 'b469951f-0058-4611-bac5-3f48640dc4d9', 'seller_image', 'media-libraryp93rB9', 'media-libraryp93rB9', 'image/jpeg', 'media', 'media', 3701055, '[]', '{\"type\": \"image\", \"ratio\": \"0.563\", \"width\": 2296, \"height\": 4080, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 1, '2023-11-07 07:30:00', '2023-11-07 07:30:00'),
(128, 'Modules\\Fmc\\Entities\\Seller', 74, 'a5dda2d0-2781-4d7b-8ff7-65787d1820cb', 'seller_image', 'media-librarytqmAeT', 'media-librarytqmAeT', 'image/jpeg', 'media', 'media', 3304779, '[]', '{\"type\": \"image\", \"ratio\": \"0.563\", \"width\": 2296, \"height\": 4080, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 1, '2023-11-07 08:56:05', '2023-11-07 08:56:05'),
(129, 'Modules\\Fmc\\Entities\\Seller', 75, '41a2d7f5-0055-428e-b00a-9f55ea93b119', 'seller_image', 'media-libraryGa49hS', 'media-libraryGa49hS', 'image/jpeg', 'media', 'media', 4467987, '[]', '{\"type\": \"image\", \"ratio\": \"1.777\", \"width\": 4080, \"height\": 2296, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 1, '2023-11-07 09:00:32', '2023-11-07 09:00:32'),
(130, 'Modules\\Fmc\\Entities\\Seller', 76, 'd50dd36c-8e94-4bde-ac0a-38e5b67485c7', 'seller_image', 'media-libraryAAHmZP', 'media-libraryAAHmZP', 'image/jpeg', 'media', 'media', 3943355, '[]', '{\"type\": \"image\", \"ratio\": \"0.563\", \"width\": 2296, \"height\": 4080, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 1, '2023-11-07 09:05:12', '2023-11-07 09:05:13'),
(131, 'Modules\\Fmc\\Entities\\Seller', 77, 'd033d9c8-d420-48c5-b6df-bc99335c50d0', 'seller_image', 'media-librarynyXUJn', 'media-librarynyXUJn', 'image/jpeg', 'media', 'media', 4479354, '[]', '{\"type\": \"image\", \"ratio\": \"0.563\", \"width\": 2296, \"height\": 4080, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 1, '2023-11-07 09:08:36', '2023-11-07 09:08:36'),
(132, 'Modules\\Fmc\\Entities\\Seller', 78, '5034e501-47fa-4ea0-a5f2-1bb73fbcdf8f', 'seller_image', 'media-libraryo75VD5', 'media-libraryo75VD5', 'image/jpeg', 'media', 'media', 4529848, '[]', '{\"type\": \"image\", \"ratio\": \"0.563\", \"width\": 2296, \"height\": 4080, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 1, '2023-11-07 09:32:09', '2023-11-07 09:32:09'),
(133, 'Modules\\Fmc\\Entities\\Seller', 79, '126cd605-173e-4734-9d3d-de926cdd9572', 'seller_image', 'media-libraryHPLKZ4', 'media-libraryHPLKZ4', 'image/jpeg', 'media', 'media', 3787766, '[]', '{\"type\": \"image\", \"ratio\": \"0.563\", \"width\": 2296, \"height\": 4080, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 1, '2023-11-07 09:33:37', '2023-11-07 09:33:38'),
(134, 'Modules\\Fmc\\Entities\\Seller', 80, '44a69fbe-ac6e-4e68-8466-411b44eb5c12', 'seller_image', 'media-libraryxey0Rb', 'media-libraryxey0Rb', 'image/jpeg', 'media', 'media', 4474620, '[]', '{\"type\": \"image\", \"ratio\": \"0.563\", \"width\": 2296, \"height\": 4080, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 1, '2023-11-07 09:35:52', '2023-11-07 09:35:52'),
(135, 'Modules\\Fmc\\Entities\\Seller', 81, 'abf92e9c-1da4-474d-8977-d7134cb4abad', 'seller_image', 'media-libraryAz4BwX', 'media-libraryAz4BwX', 'image/jpeg', 'media', 'media', 3121322, '[]', '{\"type\": \"image\", \"ratio\": \"0.563\", \"width\": 2296, \"height\": 4080, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 1, '2023-11-07 09:39:31', '2023-11-07 09:39:32'),
(136, 'Modules\\Fmc\\Entities\\Seller', 82, '870e7e18-e46c-422a-a0a8-8892c961d02d', 'seller_image', 'media-libraryrjQ5kE', 'media-libraryrjQ5kE', 'image/jpeg', 'media', 'media', 4929468, '[]', '{\"type\": \"image\", \"ratio\": \"0.75\", \"width\": 3468, \"height\": 4624, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 1, '2023-11-07 09:45:22', '2023-11-07 09:45:22'),
(137, 'Modules\\Fmc\\Entities\\Seller', 83, 'ce041077-5a8f-4f54-a296-bf42c9c9f4a1', 'seller_image', 'media-libraryPEavGd', 'media-libraryPEavGd', 'image/jpeg', 'media', 'media', 4898427, '[]', '{\"type\": \"image\", \"ratio\": \"0.563\", \"width\": 2296, \"height\": 4080, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 1, '2023-11-07 09:48:04', '2023-11-07 09:48:04');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `custom_properties`, `generated_conversions`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES
(138, 'Modules\\Fmc\\Entities\\Seller', 84, '4076b926-dadc-4501-a041-79a0832ebe9c', 'seller_image', 'media-libraryM03XC7', 'media-libraryM03XC7', 'image/jpeg', 'media', 'media', 3864885, '[]', '{\"type\": \"image\", \"ratio\": \"0.563\", \"width\": 2296, \"height\": 4080, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 1, '2023-11-07 09:53:53', '2023-11-07 09:53:54'),
(139, 'Modules\\Fmc\\Entities\\Seller', 85, '8c3047a7-58c5-4ea4-90ab-55b2e46f571e', 'seller_image', 'media-libraryUdHwV5', 'media-libraryUdHwV5', 'image/jpeg', 'media', 'media', 3978220, '[]', '{\"type\": \"image\", \"ratio\": \"0.563\", \"width\": 2296, \"height\": 4080, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 1, '2023-11-07 11:18:12', '2023-11-07 11:18:13'),
(140, 'Modules\\Vms\\Entities\\VisitorRegistration', 289, 'b2872229-ad1e-4ad5-9fd2-7f11e06d3b93', 'user_profile', 'media-library5jNfso', 'user_proifle_1699435793.png', 'image/png', 'media', 'media', 49491, '[]', '{\"type\": \"image\", \"ratio\": \"1\", \"width\": 150, \"height\": 150, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 1, '2023-11-08 09:29:53', '2023-11-08 09:29:53'),
(141, 'Modules\\Vms\\Entities\\VisitorRegistration', 289, '8e042f32-4b17-4c97-84bc-8eba74a8163e', 'cnic_front', 'media-library3NlB7d', 'cnic_front_1699435793.png', 'image/png', 'media', 'media', 50141, '[]', '{\"type\": \"image\", \"ratio\": \"1\", \"width\": 150, \"height\": 150, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 2, '2023-11-08 09:29:53', '2023-11-08 09:29:53'),
(142, 'Modules\\Vms\\Entities\\VisitorRegistration', 289, 'b64dce84-ad16-4168-8646-a33652481a33', 'cnic_back', 'media-libraryhjnkbA', 'cnic_back_1699435793.png', 'image/png', 'media', 'media', 45692, '[]', '{\"type\": \"image\", \"ratio\": \"1\", \"width\": 150, \"height\": 150, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 3, '2023-11-08 09:29:53', '2023-11-08 09:29:53'),
(143, 'Modules\\Fmc\\Entities\\Seller', 11, 'b3dc551b-787d-4bd6-8cbc-12e27f59a395', 'seller_image', 'med1098', 'med1098.tmp', 'image/png', 'media', 'media', 965, '[]', '{\"type\": \"image\", \"ratio\": \"1\", \"width\": 24, \"height\": 24, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 1, '2023-11-21 11:02:52', '2023-11-21 11:02:54'),
(144, 'Modules\\Fmc\\Entities\\Seller', 12, '99490167-77ef-4cf1-ba4f-bbbda9db5589', 'seller_image', 'med3F64', 'med3F64.tmp', 'image/png', 'media', 'media', 965, '[]', '{\"type\": \"image\", \"ratio\": \"1\", \"width\": 24, \"height\": 24, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 1, '2023-11-21 11:04:09', '2023-11-21 11:04:09'),
(145, 'Modules\\Fmc\\Entities\\Seller', 13, '1332acd1-853d-4737-b08f-c5da963a33b8', 'seller_image', 'medB36C', 'medB36C.tmp', 'image/png', 'media', 'media', 965, '[]', '{\"type\": \"image\", \"ratio\": \"1\", \"width\": 24, \"height\": 24, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 1, '2023-11-21 11:04:38', '2023-11-21 11:04:38'),
(146, 'Modules\\Fmc\\Entities\\Seller', 14, '2cb01284-c52f-47a7-a259-2abbb169376b', 'seller_image', 'med5ED0', 'med5ED0.tmp', 'image/png', 'media', 'media', 965, '[]', '{\"type\": \"image\", \"ratio\": \"1\", \"width\": 24, \"height\": 24, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 1, '2023-11-21 11:05:22', '2023-11-21 11:05:22'),
(147, 'Modules\\Fmc\\Entities\\Seller', 15, '6593be1c-2dd9-4b64-8090-dbcf858a75c0', 'seller_image', 'medD50B', 'medD50B.tmp', 'image/png', 'media', 'media', 965, '[]', '{\"type\": \"image\", \"ratio\": \"1\", \"width\": 24, \"height\": 24, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 1, '2023-11-21 11:05:52', '2023-11-21 11:05:53'),
(148, 'Modules\\Fmc\\Entities\\Seller', 16, '58deb82b-fbb5-4951-8302-0c7d68be03d5', 'seller_image', 'medFDE1', 'medFDE1.tmp', 'image/png', 'media', 'media', 965, '[]', '{\"type\": \"image\", \"ratio\": \"1\", \"width\": 24, \"height\": 24, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 1, '2023-11-21 11:06:03', '2023-11-21 11:06:03'),
(149, 'Modules\\Fmc\\Entities\\Seller', 17, 'ccdf5920-978b-4635-b1e6-5517ab512cba', 'seller_image', 'medA44F', 'medA44F.tmp', 'image/png', 'media', 'media', 965, '[]', '{\"type\": \"image\", \"ratio\": \"1\", \"width\": 24, \"height\": 24, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 1, '2023-11-21 11:07:51', '2023-11-21 11:07:51'),
(150, 'Modules\\Fmc\\Entities\\Seller', 18, 'f12a402b-f1c0-4d33-982f-4203b32b0671', 'seller_image', 'med52D0', 'med52D0.tmp', 'image/png', 'media', 'media', 965, '[]', '{\"type\": \"image\", \"ratio\": \"1\", \"width\": 24, \"height\": 24, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 1, '2023-11-21 11:08:36', '2023-11-21 11:08:36'),
(151, 'Modules\\Fmc\\Entities\\Seller', 19, '33c76da2-067d-4f1e-9ce3-de6f8ae4c623', 'seller_image', 'medA1FA', 'medA1FA.tmp', 'image/png', 'media', 'media', 965, '[]', '{\"type\": \"image\", \"ratio\": \"1\", \"width\": 24, \"height\": 24, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 1, '2023-11-21 11:08:56', '2023-11-21 11:08:56'),
(152, 'Modules\\Fmc\\Entities\\Seller', 20, 'a8659ffa-5994-4156-bbd7-2378d7e8172e', 'seller_image', 'medF7CC', 'medF7CC.tmp', 'image/png', 'media', 'media', 965, '[]', '{\"type\": \"image\", \"ratio\": \"1\", \"width\": 24, \"height\": 24, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 1, '2023-11-21 11:09:18', '2023-11-21 11:09:18'),
(153, 'Modules\\Fmc\\Entities\\Seller', 21, '9fed05c9-e051-4f92-8987-7a69c21cdf82', 'seller_image', 'med940D', 'med940D.tmp', 'image/png', 'media', 'media', 965, '[]', '{\"type\": \"image\", \"ratio\": \"1\", \"width\": 24, \"height\": 24, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 2, '2023-11-21 11:09:58', '2023-11-21 11:09:58'),
(154, 'Modules\\Fmc\\Entities\\Seller', 22, '06d65617-e345-4292-ae89-7b64586ad981', 'seller_image', 'medDCFE', 'medDCFE.tmp', 'image/png', 'media', 'media', 965, '[]', '{\"type\": \"image\", \"ratio\": \"1\", \"width\": 24, \"height\": 24, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 2, '2023-11-21 11:10:17', '2023-11-21 11:10:17'),
(155, 'Modules\\Fmc\\Entities\\Seller', 23, '28af723e-277a-47a6-ac22-a7e74c26f662', 'seller_image', 'med3763', 'med3763.tmp', 'image/png', 'media', 'media', 965, '[]', '{\"type\": \"image\", \"ratio\": \"1\", \"width\": 24, \"height\": 24, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 2, '2023-11-21 11:10:40', '2023-11-21 11:10:40'),
(156, 'Modules\\Fmc\\Entities\\Seller', 24, '5f87f3f3-8385-4f47-b26c-8055109ecbff', 'seller_image', 'medF399', 'medF399.tmp', 'image/png', 'media', 'media', 965, '[]', '{\"type\": \"image\", \"ratio\": \"1\", \"width\": 24, \"height\": 24, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 2, '2023-11-21 11:31:08', '2023-11-21 11:31:08'),
(157, 'Modules\\Fmc\\Entities\\Seller', 25, '3973b436-c195-4ebd-9ac8-df5f16c3b13f', 'seller_image', 'med43DC', 'med43DC.tmp', 'image/png', 'media', 'media', 965, '[]', '{\"type\": \"image\", \"ratio\": \"1\", \"width\": 24, \"height\": 24, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 2, '2023-11-21 11:31:28', '2023-11-21 11:31:28'),
(158, 'Modules\\Fmc\\Entities\\Seller', 26, 'f58dc8fb-4ae8-4dab-94f1-293f5739c9f7', 'seller_image', 'med1CB5', 'med1CB5.tmp', 'image/png', 'media', 'media', 965, '[]', '{\"type\": \"image\", \"ratio\": \"1\", \"width\": 24, \"height\": 24, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 2, '2023-11-22 09:56:36', '2023-11-22 09:56:37'),
(159, 'Modules\\Fmc\\Entities\\Seller', 27, 'c4cdf306-3b6c-4473-98b0-d8dffaa0be7f', 'seller_image', 'med2E9F', 'med2E9F.tmp', 'image/png', 'media', 'media', 965, '[]', '{\"type\": \"image\", \"ratio\": \"1\", \"width\": 24, \"height\": 24, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 2, '2023-11-22 11:28:24', '2023-11-22 11:28:24'),
(160, 'Modules\\Fmc\\Entities\\Seller', 28, '7402bcc0-e512-4e0a-979f-4b363532d520', 'seller_image', 'med4FF3', 'med4FF3.tmp', 'image/png', 'media', 'media', 965, '[]', '{\"type\": \"image\", \"ratio\": \"1\", \"width\": 24, \"height\": 24, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 2, '2023-11-22 11:28:33', '2023-11-22 11:28:33'),
(161, 'Modules\\Fmc\\Entities\\Seller', 29, 'c462855d-0624-44cb-b2e4-bbafeac31199', 'seller_image', 'medAF7A', 'medAF7A.tmp', 'image/png', 'media', 'media', 965, '[]', '{\"type\": \"image\", \"ratio\": \"1\", \"width\": 24, \"height\": 24, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 2, '2023-11-22 11:28:57', '2023-11-22 11:28:57'),
(162, 'Modules\\Fmc\\Entities\\Seller', 30, '1fa03273-c131-4d2a-8692-36ddccddd939', 'seller_image', 'medAF85', 'medAF85.tmp', 'image/png', 'media', 'media', 965, '[]', '{\"type\": \"image\", \"ratio\": \"1\", \"width\": 24, \"height\": 24, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 2, '2023-11-22 11:30:03', '2023-11-22 11:30:03'),
(163, 'Modules\\Fmc\\Entities\\Seller', 31, 'f8b1750d-ec88-4ea6-a0c7-6947aa188259', 'seller_image', 'med1CD8', 'med1CD8.tmp', 'image/png', 'media', 'media', 965, '[]', '{\"type\": \"image\", \"ratio\": \"1\", \"width\": 24, \"height\": 24, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 2, '2023-11-22 11:33:47', '2023-11-22 11:33:47'),
(164, 'Modules\\Fmc\\Entities\\Seller', 32, 'c3dc3af4-e663-454b-b5cc-ae84e47fd6bd', 'seller_image', 'medB0CA', 'medB0CA.tmp', 'image/png', 'media', 'media', 965, '[]', '{\"type\": \"image\", \"ratio\": \"1\", \"width\": 24, \"height\": 24, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 2, '2023-11-22 11:42:04', '2023-11-22 11:42:04'),
(165, 'Modules\\Fmc\\Entities\\Seller', 33, 'b6e1ed21-bf1e-4b0c-8bd5-b099aa7ab8cc', 'seller_image', 'med3B77', 'med3B77.tmp', 'image/png', 'media', 'media', 965, '[]', '{\"type\": \"image\", \"ratio\": \"1\", \"width\": 24, \"height\": 24, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 2, '2023-11-22 11:42:39', '2023-11-22 11:42:39'),
(166, 'Modules\\Fmc\\Entities\\Seller', 34, '9eb10e3c-b8cd-43cf-a2bb-5d0aa2ab6242', 'seller_image', 'med9D5F', 'med9D5F.tmp', 'image/png', 'media', 'media', 965, '[]', '{\"type\": \"image\", \"ratio\": \"1\", \"width\": 24, \"height\": 24, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 2, '2023-11-22 11:43:05', '2023-11-22 11:43:05'),
(167, 'Modules\\Fmc\\Entities\\Seller', 35, 'd324b765-419b-4bc8-a520-d4e4cc3b5a1e', 'seller_image', 'medF8A0', 'medF8A0.tmp', 'image/png', 'media', 'media', 965, '[]', '{\"type\": \"image\", \"ratio\": \"1\", \"width\": 24, \"height\": 24, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 2, '2023-11-22 11:57:40', '2023-11-22 11:57:40'),
(168, 'Modules\\Fmc\\Entities\\Seller', 36, '1cd58dfa-0f13-4cba-b28b-5ef565405876', 'seller_image', 'medF23E', 'medF23E.tmp', 'image/png', 'media', 'media', 965, '[]', '{\"type\": \"image\", \"ratio\": \"1\", \"width\": 24, \"height\": 24, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 2, '2023-11-22 12:10:45', '2023-11-22 12:10:45'),
(169, 'Modules\\Fmc\\Entities\\Seller', 37, 'e75a32d2-6732-402b-8dbe-24e450dc7c96', 'seller_image', 'medADEB', 'medADEB.tmp', 'image/png', 'media', 'media', 965, '[]', '{\"type\": \"image\", \"ratio\": \"1\", \"width\": 24, \"height\": 24, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 2, '2023-11-22 12:30:07', '2023-11-22 12:30:07'),
(170, 'Modules\\Fmc\\Entities\\Seller', 38, '1731bb4f-f87d-438e-b4ad-b30ad458d3b8', 'seller_image', 'med71', 'med71.tmp', 'image/png', 'media', 'media', 965, '[]', '{\"type\": \"image\", \"ratio\": \"1\", \"width\": 24, \"height\": 24, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 2, '2023-11-22 12:30:28', '2023-11-22 12:30:28'),
(171, 'Modules\\Fmc\\Entities\\Seller', 39, 'f37b48c4-5bb6-4df2-9a4d-693fbf64c7ad', 'seller_image', 'medCD86', 'medCD86.tmp', 'image/png', 'media', 'media', 965, '[]', '{\"type\": \"image\", \"ratio\": \"1\", \"width\": 24, \"height\": 24, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 2, '2023-11-22 12:31:20', '2023-11-22 12:31:20'),
(172, 'Modules\\Fmc\\Entities\\Seller', 40, '6d2247a7-e4a7-4c0d-9e90-ad106c5a9613', 'seller_image', 'med4A77', 'med4A77.tmp', 'image/png', 'media', 'media', 965, '[]', '{\"type\": \"image\", \"ratio\": \"1\", \"width\": 24, \"height\": 24, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 2, '2023-11-22 12:31:52', '2023-11-22 12:31:52'),
(173, 'Modules\\Fmc\\Entities\\Seller', 41, '50bfaa4a-b0ed-4cbf-9cac-bec19393aec2', 'seller_image', 'medBA3B', 'medBA3B.tmp', 'image/png', 'media', 'media', 965, '[]', '{\"type\": \"image\", \"ratio\": \"1\", \"width\": 24, \"height\": 24, \"status\": \"processing\", \"progress\": 100}', '[]', '[]', 2, '2023-11-22 12:35:38', '2023-11-22 12:35:38');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(11) NOT NULL,
  `app_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `icon` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `is_collapsible` varchar(125) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `app_id`, `parent_id`, `title`, `description`, `icon`, `created_at`, `updated_at`, `deleted_at`, `order`, `is_collapsible`) VALUES
(1, 1, NULL, 'Apps', NULL, 'bx bx-grid-alt', '2022-05-17 07:31:57', '2022-05-18 05:20:20', NULL, NULL, NULL),
(2, 1, NULL, 'Menus', NULL, 'bx bx-list-ol', '2022-05-18 05:20:38', '2022-05-20 06:23:15', NULL, NULL, NULL),
(3, 1, NULL, 'Permissions', NULL, 'bx bx-lock-open', '2022-05-18 05:20:59', '2022-05-20 06:23:33', NULL, NULL, NULL),
(4, 1, NULL, 'Roles', NULL, 'bx bx-shield-x', '2022-05-20 06:24:57', '2022-05-20 06:24:57', NULL, NULL, NULL),
(5, 1, NULL, 'Organizations', NULL, 'bx bx-building-house', '2022-05-20 06:25:17', '2022-05-20 06:25:17', NULL, NULL, NULL),
(7, 1, NULL, 'Units', NULL, 'bx bx-store', '2022-05-20 06:25:17', '2022-05-20 06:25:17', NULL, NULL, NULL),
(8, 1, NULL, 'Users', NULL, 'bx bx-user-pin', '2022-05-28 13:10:31', '2022-05-28 13:48:00', NULL, NULL, NULL),
(9, 1, NULL, 'Organization Types', NULL, 'bx bx-category-alt', '2022-06-23 15:51:11', '2022-06-23 15:51:11', NULL, NULL, NULL),
(209, 84, NULL, 'Complaints', NULL, 'bx bx-devices', '2023-10-27 10:57:22', '2023-10-27 16:18:56', NULL, 1, 'yes'),
(210, 84, NULL, 'Crime', NULL, 'bx bx-crosshair', '2023-10-27 10:57:46', '2023-10-27 16:18:51', NULL, 3, 'yes'),
(211, 84, NULL, 'Seller', NULL, 'bx bx-package', '2023-10-27 10:58:15', '2023-10-27 16:18:54', NULL, 2, 'yes'),
(212, 84, NULL, 'Mobile Shop', NULL, 'bx bx-store-alt', '2023-11-06 11:43:15', '2023-11-16 09:01:41', NULL, 3, 'yes'),
(213, 84, NULL, 'Users', NULL, 'bx bx-user-pin', '2023-11-15 07:30:28', '2023-11-15 12:30:28', NULL, 5, 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(12, '2022_06_12_145156_create_company_types_table', 1),
(13, '2022_06_12_145506_add_company_type_id_to_companies_table', 1),
(14, '2023_06_13_152802_create_media_table', 2),
(15, '2023_06_13_153907_create_temporary_files_table', 3),
(16, '2023_06_07_093715_create_uc_vc_lists_table', 4),
(17, '2023_06_16_113448_create_activity_log_table', 4),
(18, '2023_06_16_113449_add_event_column_to_activity_log_table', 4),
(19, '2023_06_16_113450_add_batch_uuid_column_to_activity_log_table', 4),
(20, '2023_06_16_153707_change_spotted_status_attr', 5),
(21, '2023_06_16_153328_change_patient_status_attr', 6),
(22, '2023_06_20_145217_add_col_to_patient', 7),
(23, '2023_06_16_110952_create_statuses_table', 8),
(24, '2023_06_16_105013_create_report_statuses_table', 9),
(25, '2023_06_15_125114_add_team_id_to_patients', 10),
(26, '2023_06_15_125114_add_team_id_to_spoted_areas', 11),
(27, '2023_07_17_110233_create_companies_table', 12),
(28, '2023_07_18_101744_create_office_positions_table', 12),
(29, '2023_07_18_110540_create_employee_infos_table', 12),
(30, '2023_06_20_145217_add_col_to_menu', 13),
(31, '2023_06_20_145217_add_col_to_menu-iscollapsible', 13),
(32, '2023_07_19_102037_add_password_to_company', 14),
(33, '2023_10_27_154251_add_fcm_token_to_users', 15),
(34, '2023_11_15_141859_add_company_id_to_mobile_shops', 16),
(35, '2023_11_17_141859_add_imei_3_to_complaints', 17),
(36, '2023_11_17_141959_add_imei_3_to_sellers', 18),
(37, '2023_11_20_094546_add_status_into_users', 19),
(38, '2023_11_20_145548_add_report_type_into_complaint', 20),
(39, '2023_11_20_191914_add_status_into_notifications', 21),
(40, '2023_11_21_132419_add_recover_by_into_complaints', 22),
(41, '2023_11_22_160949_add_lat_long_sellers', 23);

-- --------------------------------------------------------

--
-- Table structure for table `mouzas`
--

CREATE TABLE `mouzas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `district_id` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text,
  `model` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `app_id` int(11) DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL,
  `show_in_menu` enum('yes','no') DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `slug`, `description`, `model`, `created_at`, `updated_at`, `deleted_at`, `app_id`, `menu_id`, `show_in_menu`) VALUES
(35, 'Can view apps', 'apps.view', NULL, 'Permission', '2022-05-28 13:11:30', '2022-05-28 13:11:30', NULL, 1, 1, 'yes'),
(36, 'Can create apps', 'apps.create', NULL, 'Permission', '2022-05-28 13:12:03', '2022-05-28 13:12:03', NULL, 1, 1, 'yes'),
(37, 'Can edit apps', 'apps.edit', NULL, 'Permission', '2022-05-28 13:13:16', '2022-05-28 13:13:16', NULL, 1, 1, 'no'),
(38, 'Can delete apps', 'apps.delete', NULL, 'Permission', '2022-05-28 13:13:52', '2022-05-28 13:13:52', NULL, 1, 1, 'no'),
(39, 'Can view menus', 'menus.view', NULL, 'Permission', '2022-05-28 13:16:44', '2022-05-28 13:16:44', NULL, 1, 2, 'yes'),
(40, 'Can create menus', 'menus.create', NULL, 'Permission', '2022-05-28 13:17:23', '2022-05-28 13:17:23', NULL, 1, 2, 'yes'),
(41, 'Can edit menus', 'menus.edit', NULL, 'Permission', '2022-05-28 13:18:03', '2022-05-28 13:18:03', NULL, 1, 2, 'no'),
(42, 'Can delete menus', 'menus.delete', NULL, 'Permission', '2022-05-28 13:18:40', '2022-05-28 13:18:40', NULL, 1, 2, 'no'),
(43, 'Can view permissions', 'permissions.view', NULL, 'Permission', '2022-05-28 13:20:20', '2022-05-28 13:20:20', NULL, 1, 3, 'yes'),
(44, 'Can create permissions', 'permissions.create', NULL, 'Permission', '2022-05-28 13:22:20', '2022-05-28 13:22:20', NULL, 1, 3, 'yes'),
(45, 'Can edit permissions', 'permissions.edit', NULL, 'Permission', '2022-05-28 13:23:11', '2022-05-28 13:23:11', NULL, 1, 3, 'no'),
(46, 'Can delete permissions', 'permission.delete', NULL, 'Permission', '2022-05-28 13:25:19', '2022-05-28 13:25:19', NULL, 1, 3, 'no'),
(47, 'Can view roles', 'roles.view', NULL, 'Permission', '2022-05-28 13:26:44', '2022-05-28 13:26:44', NULL, 1, 4, 'yes'),
(48, 'Can create roles', 'roles.create', NULL, 'Permission', '2022-05-28 13:27:21', '2022-05-28 13:27:21', NULL, 1, 4, 'yes'),
(49, 'Can edit roles', 'roles.edit', NULL, 'Permission', '2022-05-28 13:28:08', '2022-05-28 13:28:08', NULL, 1, 4, 'no'),
(50, 'Can delete roles', 'roles.delete', NULL, 'Permission', '2022-05-28 13:28:39', '2022-05-28 13:28:39', NULL, 1, 4, 'no'),
(51, 'Can assign permissions to roles', 'roles.assign.permissions', NULL, 'Permission', '2022-05-28 13:31:16', '2022-05-28 13:31:16', NULL, 1, 4, 'no'),
(52, 'Can view organizations', 'organizations.view', NULL, 'Permission', '2022-05-28 13:33:46', '2022-05-28 13:33:46', NULL, 1, 5, 'yes'),
(53, 'Can create organizations', 'organizations.create', NULL, 'Permission', '2022-05-28 13:34:53', '2022-05-28 13:34:53', NULL, 1, 5, 'yes'),
(54, 'Can edit organization', 'organizations.edit', NULL, 'Permission', '2022-05-28 13:35:48', '2022-05-28 13:35:48', NULL, 1, 5, 'no'),
(55, 'Can delete organizations', 'organizations.delete', NULL, 'Permission', '2022-05-28 13:36:35', '2022-05-28 13:36:35', NULL, 1, 5, 'no'),
(56, 'Can view units', 'sections.view', NULL, 'Permission', '2022-05-28 13:37:17', '2022-05-28 13:37:17', NULL, 1, 7, 'yes'),
(57, 'Can create units', 'sections.create', NULL, 'Permission', '2022-05-28 13:37:50', '2022-05-28 13:37:50', NULL, 1, 7, 'yes'),
(58, 'Can edit units', 'sections.edit', NULL, 'Permission', '2022-05-28 13:38:10', '2022-05-28 13:38:10', NULL, 1, 7, 'no'),
(59, 'Can delete units', 'sections.delete', NULL, 'Permission', '2022-05-28 13:38:55', '2022-05-28 13:38:55', NULL, 1, 7, 'no'),
(60, 'Can view users', 'users.mgt.list', NULL, 'Permission', '2022-05-28 13:41:06', '2022-05-28 13:41:06', NULL, 1, 8, 'yes'),
(61, 'Can create users', 'users.mgt.create', NULL, 'Permission', '2022-05-28 13:42:09', '2022-05-28 13:42:09', NULL, 1, 8, 'yes'),
(62, 'Can edit users', 'users.mgt.edit', NULL, 'Permission', '2022-05-28 13:42:58', '2022-05-28 13:42:58', NULL, 1, 8, 'no'),
(63, 'Can delete users', 'users.mgt.delete', NULL, 'Permission', '2022-05-28 13:43:34', '2022-05-28 13:43:34', NULL, 1, 8, 'no'),
(64, 'Can assign permissions to users', 'users.mgt.assign.permissions', NULL, 'Permission', '2022-05-28 13:45:02', '2022-05-28 13:45:02', NULL, 1, 8, 'no'),
(65, 'Can view organization types', 'organization.types.view', NULL, 'Permission', '2022-06-23 15:53:11', '2022-06-23 15:53:11', NULL, 1, 9, 'yes'),
(66, 'Can create organization type', 'organization.types.create', NULL, 'Permission', '2022-06-23 15:54:45', '2022-06-23 15:54:45', NULL, 1, 9, 'yes'),
(67, 'Can edit organization type', 'organization.type.edit', NULL, 'Permission', '2022-06-23 15:56:02', '2022-06-23 15:56:02', NULL, 1, 9, 'no'),
(68, 'Can delete organization types', 'organization.type.delete', NULL, 'Permission', '2022-06-23 15:56:36', '2022-06-23 15:56:36', NULL, 1, 9, 'no'),
(189, 'Crime list', 'fmc.crimes.index', NULL, 'Permission', '2023-10-27 10:58:58', '2023-10-27 10:58:58', NULL, 84, 210, 'yes'),
(190, 'Can create Crime', 'fmc.crimes.create', NULL, 'Permission', '2023-10-27 10:59:55', '2023-10-27 10:59:55', NULL, 84, 210, 'yes'),
(191, 'Can edit Crime', 'fmc.crimes.edit', NULL, 'Permission', '2023-10-27 11:00:42', '2023-10-27 11:00:42', NULL, 84, 210, 'no'),
(192, 'Can view seller listings', 'fmc.sellers.index', NULL, 'Permission', '2023-10-27 11:02:00', '2023-10-27 11:02:00', NULL, 84, 211, 'yes'),
(193, 'Can create seller', 'fmc.sellers.create', NULL, 'Permission', '2023-10-27 11:02:55', '2023-10-27 11:02:55', NULL, 84, 211, 'yes'),
(194, 'Can edit Seller', 'fmc.sellers.edit', NULL, 'Permission', '2023-10-27 11:03:43', '2023-10-27 11:03:43', NULL, 84, 211, 'no'),
(196, 'Can create complaint', 'fmc.complaints.create', NULL, 'Permission', '2023-10-27 11:05:31', '2023-10-27 11:05:31', NULL, 84, 209, 'yes'),
(197, 'Can edit complaint', 'fmc.complaints.edit', NULL, 'Permission', '2023-10-27 11:06:16', '2023-10-27 11:06:16', NULL, 84, 209, 'no'),
(201, 'Can view mobile shop listing', 'fmc.shop.index', NULL, 'Permission', '2023-11-06 11:43:51', '2023-11-06 11:43:51', NULL, 84, 212, 'yes'),
(202, 'Can create mobile shop', 'fmc.shop.create', NULL, 'Permission', '2023-11-06 11:45:30', '2023-11-06 11:45:30', NULL, 84, 212, 'yes'),
(203, 'Can edit mobile shop', 'fmc.shop.edit', NULL, 'Permission', '2023-11-06 11:46:08', '2023-11-06 11:46:08', NULL, 84, 212, 'no'),
(204, 'Can view users', 'fmc.users.mgt.list', NULL, 'Permission', '2023-11-15 07:31:39', '2023-11-15 07:31:39', NULL, 84, 213, 'yes'),
(205, 'Can view users', 'fmc.users.mgt.create', NULL, 'Permission', '2023-11-15 07:34:52', '2023-11-15 07:34:52', NULL, 84, 213, 'yes'),
(206, 'Can edit users', 'fmc.users.mgt.edit', NULL, 'Permission', '2023-11-15 08:22:16', '2023-11-15 08:22:16', NULL, 84, 213, 'no'),
(207, 'Can view complaints Listings', 'fmc.complaints.index', NULL, 'Permission', '2023-11-28 12:57:41', '2023-11-28 12:57:41', NULL, 84, 209, 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`id`, `permission_id`, `role_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(81, 43, 4, '2022-05-28 13:46:14', '2022-05-28 13:46:14', NULL),
(82, 44, 4, '2022-05-28 13:46:14', '2022-05-28 13:46:14', NULL),
(83, 45, 4, '2022-05-28 13:46:14', '2022-05-28 13:46:14', NULL),
(84, 46, 4, '2022-05-28 13:46:14', '2022-05-28 13:46:14', NULL),
(85, 47, 4, '2022-05-28 13:46:14', '2022-05-28 13:46:14', NULL),
(86, 48, 4, '2022-05-28 13:46:14', '2022-05-28 13:46:14', NULL),
(87, 49, 4, '2022-05-28 13:46:14', '2022-05-28 13:46:14', NULL),
(88, 50, 4, '2022-05-28 13:46:14', '2022-05-28 13:46:14', NULL),
(89, 51, 4, '2022-05-28 13:46:14', '2022-05-28 13:46:14', NULL),
(90, 52, 4, '2022-05-28 13:46:14', '2022-05-28 13:46:14', NULL),
(91, 53, 4, '2022-05-28 13:46:14', '2022-05-28 13:46:14', NULL),
(92, 54, 4, '2022-05-28 13:46:14', '2022-05-28 13:46:14', NULL),
(93, 55, 4, '2022-05-28 13:46:14', '2022-05-28 13:46:14', NULL),
(94, 56, 4, '2022-05-28 13:46:14', '2022-05-28 13:46:14', NULL),
(95, 57, 4, '2022-05-28 13:46:14', '2022-05-28 13:46:14', NULL),
(96, 58, 4, '2022-05-28 13:46:14', '2022-05-28 13:46:14', NULL),
(97, 59, 4, '2022-05-28 13:46:14', '2022-05-28 13:46:14', NULL),
(98, 60, 4, '2022-05-28 13:46:14', '2022-05-28 13:46:14', NULL),
(99, 61, 4, '2022-05-28 13:46:14', '2022-05-28 13:46:14', NULL),
(100, 62, 4, '2022-05-28 13:46:14', '2022-05-28 13:46:14', NULL),
(101, 63, 4, '2022-05-28 13:46:14', '2022-05-28 13:46:14', NULL),
(102, 64, 4, '2022-05-28 13:46:14', '2022-05-28 13:46:14', NULL),
(107, 35, 4, '2022-05-30 08:26:21', '2022-05-30 08:26:21', NULL),
(108, 39, 4, '2022-05-30 08:26:21', '2022-05-30 08:26:21', NULL),
(109, 36, 4, '2022-06-12 14:33:44', '2022-06-12 14:33:44', NULL),
(110, 37, 4, '2022-06-12 14:33:44', '2022-06-12 14:33:44', NULL),
(111, 38, 4, '2022-06-12 14:33:44', '2022-06-12 14:33:44', NULL),
(112, 40, 4, '2022-06-12 14:33:44', '2022-06-12 14:33:44', NULL),
(113, 41, 4, '2022-06-12 14:33:44', '2022-06-12 14:33:44', NULL),
(114, 42, 4, '2022-06-12 14:33:44', '2022-06-12 14:33:44', NULL),
(115, 65, 4, '2022-06-23 15:57:23', '2022-06-23 15:57:23', NULL),
(116, 66, 4, '2022-06-23 15:57:23', '2022-06-23 15:57:23', NULL),
(117, 67, 4, '2022-06-23 15:57:23', '2022-06-23 15:57:23', NULL),
(118, 68, 4, '2022-06-23 15:57:23', '2022-06-23 15:57:23', NULL),
(326, 196, 4, '2023-11-28 13:00:27', '2023-11-28 13:00:27', NULL),
(327, 197, 4, '2023-11-28 13:00:27', '2023-11-28 13:00:27', NULL),
(328, 207, 4, '2023-11-28 13:00:27', '2023-11-28 13:00:27', NULL),
(329, 189, 4, '2023-11-28 13:00:27', '2023-11-28 13:00:27', NULL),
(330, 190, 4, '2023-11-28 13:00:27', '2023-11-28 13:00:27', NULL),
(331, 191, 4, '2023-11-28 13:00:27', '2023-11-28 13:00:27', NULL),
(332, 192, 4, '2023-11-28 13:00:27', '2023-11-28 13:00:27', NULL),
(333, 193, 4, '2023-11-28 13:00:27', '2023-11-28 13:00:27', NULL),
(334, 194, 4, '2023-11-28 13:00:27', '2023-11-28 13:00:27', NULL),
(335, 201, 4, '2023-11-28 13:00:27', '2023-11-28 13:00:27', NULL),
(336, 202, 4, '2023-11-28 13:00:27', '2023-11-28 13:00:27', NULL),
(337, 203, 4, '2023-11-28 13:00:27', '2023-11-28 13:00:27', NULL),
(338, 204, 4, '2023-11-28 13:00:27', '2023-11-28 13:00:27', NULL),
(339, 205, 4, '2023-11-28 13:00:27', '2023-11-28 13:00:27', NULL),
(340, 206, 4, '2023-11-28 13:00:27', '2023-11-28 13:00:27', NULL),
(341, 196, 49, '2023-11-28 13:15:23', '2023-11-28 13:15:23', NULL),
(342, 197, 49, '2023-11-28 13:15:23', '2023-11-28 13:15:23', NULL),
(343, 207, 49, '2023-11-28 13:15:23', '2023-11-28 13:15:23', NULL),
(344, 196, 50, '2023-11-28 13:15:58', '2023-11-28 13:15:58', NULL),
(345, 197, 50, '2023-11-28 13:15:58', '2023-11-28 13:15:58', NULL),
(346, 207, 50, '2023-11-28 13:15:58', '2023-11-28 13:15:58', NULL),
(347, 189, 50, '2023-11-28 13:15:58', '2023-11-28 13:15:58', NULL),
(348, 190, 50, '2023-11-28 13:15:58', '2023-11-28 13:15:58', NULL),
(349, 191, 50, '2023-11-28 13:15:58', '2023-11-28 13:15:58', NULL),
(350, 192, 50, '2023-11-28 13:15:58', '2023-11-28 13:15:58', NULL),
(351, 193, 50, '2023-11-28 13:15:58', '2023-11-28 13:15:58', NULL),
(352, 194, 50, '2023-11-28 13:15:58', '2023-11-28 13:15:58', NULL),
(353, 201, 50, '2023-11-28 13:15:58', '2023-11-28 13:15:58', NULL),
(354, 202, 50, '2023-11-28 13:15:58', '2023-11-28 13:15:58', NULL),
(355, 203, 50, '2023-11-28 13:15:58', '2023-11-28 13:15:58', NULL),
(356, 204, 50, '2023-11-28 13:15:58', '2023-11-28 13:15:58', NULL),
(357, 205, 50, '2023-11-28 13:15:58', '2023-11-28 13:15:58', NULL),
(358, 206, 50, '2023-11-28 13:15:58', '2023-11-28 13:15:58', NULL),
(359, 196, 53, '2023-11-28 13:16:21', '2023-11-28 13:16:21', NULL),
(360, 197, 53, '2023-11-28 13:16:21', '2023-11-28 13:16:21', NULL),
(361, 207, 53, '2023-11-28 13:16:21', '2023-11-28 13:16:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_routes`
--

CREATE TABLE `permission_routes` (
  `is_default` enum('yes','no') DEFAULT 'no',
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `route` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `app_id` int(11) DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL,
  `permission_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `permission_routes`
--

INSERT INTO `permission_routes` (`is_default`, `title`, `description`, `route`, `created_at`, `updated_at`, `deleted_at`, `app_id`, `menu_id`, `permission_id`) VALUES
('yes', 'All apps', NULL, 'settings.my-apps.list', '2022-05-28 18:11:30', NULL, NULL, 1, 1, 35),
('yes', 'Edit app', NULL, 'settings.my-apps.edit', '2022-05-28 18:13:16', NULL, NULL, 1, 1, 37),
('no', 'Update app', NULL, 'settings.my-apps.update', '2022-05-28 18:13:16', NULL, NULL, 1, 1, 37),
('yes', 'Delete app', NULL, 'settings.my-apps.delete', '2022-05-28 18:13:52', NULL, NULL, 1, 1, 38),
('yes', 'New app', NULL, 'settings.my-apps.create', '2022-05-28 18:15:49', NULL, NULL, 1, 1, 36),
('no', 'Store app', NULL, 'settings.my-apps.store', '2022-05-28 18:15:49', NULL, NULL, 1, 1, 36),
('yes', 'All menus', NULL, 'settings.menus.list', '2022-05-28 18:16:44', NULL, NULL, 1, 2, 39),
('yes', 'New menu', NULL, 'settings.menus.create', '2022-05-28 18:17:23', NULL, NULL, 1, 2, 40),
('no', 'Store menu', NULL, 'settings.menus.store', '2022-05-28 18:17:23', NULL, NULL, 1, 2, 40),
('yes', 'Edit menu', NULL, 'settings.menus.edit', '2022-05-28 18:18:03', NULL, NULL, 1, 2, 41),
('no', 'Update menu', NULL, 'settings.menus.update', '2022-05-28 18:18:03', NULL, NULL, 1, 2, 41),
('yes', 'Delete menu', NULL, 'settings.menus.delete', '2022-05-28 18:18:40', NULL, NULL, 1, 2, 42),
('yes', 'All Permissions', NULL, 'settings.my-permissions.list', '2022-05-28 18:20:20', NULL, NULL, 1, 3, 43),
('yes', 'Edit permission', NULL, 'settings.my-permissions.edit', '2022-05-28 18:23:11', NULL, NULL, 1, 3, 45),
('no', 'Store permission', NULL, 'settings.my-permissions.update', '2022-05-28 18:23:11', NULL, NULL, 1, 3, 45),
('yes', 'New Permission', NULL, 'settings.my-permissions.create', '2022-05-28 18:24:46', NULL, NULL, 1, 3, 44),
('no', 'New Permission', NULL, 'settings.my-permissions.store', '2022-05-28 18:24:46', NULL, NULL, 1, 3, 44),
('yes', 'Delete permission', NULL, 'settings.my-permissions.delete', '2022-05-28 18:25:19', NULL, NULL, 1, 3, 46),
('yes', 'All roles', NULL, 'settings.my-roles.list', '2022-05-28 18:26:44', NULL, NULL, 1, 4, 47),
('yes', 'New role', NULL, 'settings.my-roles.create', '2022-05-28 18:27:21', NULL, NULL, 1, 4, 48),
('no', 'Store role', NULL, 'settings.my-roles.store', '2022-05-28 18:27:21', NULL, NULL, 1, 4, 48),
('yes', 'Edit role', NULL, 'settings.my-roles.edit', '2022-05-28 18:28:08', NULL, NULL, 1, 4, 49),
('no', 'Update role', NULL, 'settings.my-roles.update', '2022-05-28 18:28:08', NULL, NULL, 1, 4, 49),
('yes', 'Delete role', NULL, 'settings.my-roles.delete', '2022-05-28 18:28:39', NULL, NULL, 1, 4, 50),
('yes', 'Role permissions', NULL, 'settings.my-roles.show', '2022-05-28 18:31:16', NULL, NULL, 1, 4, 51),
('no', 'Role permissions save', NULL, 'settings.my-roles.role-permissions-save', '2022-05-28 18:31:16', NULL, NULL, 1, 4, 51),
('yes', 'All Organizations', NULL, 'settings.companies.list', '2022-05-28 18:33:46', NULL, NULL, 1, 5, 52),
('yes', 'New organization', NULL, 'settings.companies.create', '2022-05-28 18:34:53', NULL, NULL, 1, 5, 53),
('no', 'Store organization', NULL, 'settings.companies.store', '2022-05-28 18:34:53', NULL, NULL, 1, 5, 53),
('yes', 'Edit organization', NULL, 'settings.companies.edit', '2022-05-28 18:35:48', NULL, NULL, 1, 5, 54),
('no', 'Update organization', NULL, 'settings.companies.update', '2022-05-28 18:35:48', NULL, NULL, 1, 5, 54),
('yes', 'Delete organization', NULL, 'settings.companies.delete', '2022-05-28 18:36:35', NULL, NULL, 1, 5, 55),
('yes', 'All units', NULL, 'settings.sections.list', '2022-05-28 18:37:17', NULL, NULL, 1, 7, 56),
('yes', 'New unit', NULL, 'settings.sections.create', '2022-05-28 18:37:50', NULL, NULL, 1, 7, 57),
('no', 'Store unit', NULL, 'settings.sections.store', '2022-05-28 18:37:50', NULL, NULL, 1, 7, 57),
('yes', 'Edit unit', NULL, 'settings.sections.edit', '2022-05-28 18:38:10', NULL, NULL, 1, 7, 58),
('no', 'Update unit', NULL, 'settings.sections.udpate', '2022-05-28 18:38:10', NULL, NULL, 1, 7, 58),
('yes', 'Delete unit', NULL, 'settings.sections.delete', '2022-05-28 18:38:55', NULL, NULL, 1, 7, 59),
('yes', 'All users', NULL, 'settings.users-mgt.list', '2022-05-28 18:41:06', NULL, NULL, 1, 8, 60),
('yes', 'New user', NULL, 'settings.users-mgt.create', '2022-05-28 18:42:09', NULL, NULL, 1, 8, 61),
('no', 'Store user', NULL, 'settings.users-mgt.store', '2022-05-28 18:42:09', NULL, NULL, 1, 8, 61),
('yes', 'Edit user', NULL, 'settings.users-mgt.edit', '2022-05-28 18:42:58', NULL, NULL, 1, 8, 62),
('no', 'Update user', NULL, 'settings.users-mgt.update', '2022-05-28 18:42:58', NULL, NULL, 1, 8, 62),
('yes', 'Delete user', NULL, 'settings.users-mgt.delete', '2022-05-28 18:43:34', NULL, NULL, 1, 8, 63),
('yes', 'User permissions', NULL, 'settings.users-mgt.show', '2022-05-28 18:45:02', NULL, NULL, 1, 8, 64),
('no', 'User permissions save', NULL, 'settings.user-mgt.user-permissions-save', '2022-05-28 18:45:02', NULL, NULL, 1, 8, 64),
('yes', 'Organization Types', NULL, 'settings.company-types.list', '2022-06-23 20:53:11', NULL, NULL, 1, 9, 65),
('yes', 'New Type', NULL, 'settings.company-types.create', '2022-06-23 20:54:45', NULL, NULL, 1, 9, 66),
('no', 'Store type', NULL, 'settings.company-types.store', '2022-06-23 20:54:45', NULL, NULL, 1, 9, 66),
('yes', 'Edit organization type', NULL, 'settings.company-types.edit', '2022-06-23 20:56:02', NULL, NULL, 1, 9, 67),
('no', 'Update organization type', NULL, 'settings.company-types.update', '2022-06-23 20:56:02', NULL, NULL, 1, 9, 67),
('yes', 'Delete organization type', NULL, 'settings.company-types.delete', '2022-06-23 20:56:36', NULL, NULL, 1, 9, 68),
('yes', 'Employee Listings', NULL, 'eidentity.employee.list', '2023-02-19 20:19:56', NULL, NULL, 11, 15, 89),
('yes', 'can delete employee', NULL, 'eidentity.employee.delete', '2023-02-19 20:24:20', NULL, NULL, 11, 15, 92),
('yes', 'employee edit', NULL, 'eidentity.employee.edit', '2023-02-19 20:24:30', NULL, NULL, 11, 15, 91),
('no', 'employee edit update', NULL, 'eidentity.employee.update', '2023-02-19 20:24:30', NULL, NULL, 11, 15, 91),
('yes', 'Add New Employee', NULL, 'eidentity.employee.create', '2023-02-19 20:31:32', NULL, NULL, 11, 15, 90),
('no', 'store new employee', NULL, 'eidentity.employee.store', '2023-02-19 20:31:32', NULL, NULL, 11, 15, 90),
('yes', 'Department Wise', NULL, 'eidentity.employee.report-departmentwise', '2023-02-22 19:13:37', NULL, NULL, 11, 16, 93),
('yes', 'Visitors List', NULL, 'visitors.index', '2023-03-07 07:07:32', NULL, NULL, 12, 17, 94),
('yes', 'ePass', NULL, 'visitor.epass', '2023-03-07 07:23:18', NULL, NULL, 12, 17, 95),
('yes', 'Report', NULL, 'reports.visitors', '2023-03-07 07:34:04', NULL, NULL, 12, 18, 96),
('yes', 'Create Visitor', NULL, 'visitors.create', '2023-03-16 10:01:22', NULL, NULL, 12, 17, 97),
('yes', 'Training Visitor', NULL, 'training.visitors.create', '2023-05-24 11:33:43', NULL, NULL, 12, 17, 98),
('no', NULL, NULL, NULL, '2023-06-21 05:11:16', NULL, NULL, 13, 19, 104),
('no', 'Delete Reported Cases', NULL, 'dengue.patients.delete', '2023-06-21 05:13:29', NULL, NULL, 13, 19, 103),
('yes', 'Potential Breeding Site', NULL, 'spotted.index', '2023-06-21 05:16:46', NULL, NULL, 13, 20, 105),
('yes', 'New spotted', NULL, 'spotted.create', '2023-06-21 05:54:29', NULL, NULL, 13, 20, 106),
('no', 'Store spotted', NULL, 'spotted.store', '2023-06-21 05:54:29', NULL, NULL, 13, 20, 106),
('no', 'Edit spotted', NULL, 'spotted.edit', '2023-06-21 05:56:51', NULL, NULL, 13, 20, 107),
('no', NULL, NULL, NULL, '2023-06-21 05:57:40', NULL, NULL, 13, 20, 108),
('yes', 'Hospitals List', NULL, 'hospital.index', '2023-06-21 06:03:35', NULL, NULL, 13, 21, 109),
('yes', 'New hospital', NULL, 'hospital.create', '2023-06-21 06:05:39', NULL, NULL, 13, 21, 110),
('no', 'Store hospital', NULL, 'hospital.store', '2023-06-21 06:05:39', NULL, NULL, 13, 21, 110),
('no', 'Delete team', NULL, 'teams.delete', '2023-06-22 02:00:20', NULL, NULL, 13, 22, 114),
('no', 'Edit team', NULL, 'teams.edit', '2023-06-22 02:00:27', NULL, NULL, 13, 22, 113),
('no', 'Update team', NULL, 'teams.update', '2023-06-22 02:00:27', NULL, NULL, 13, 22, 113),
('yes', 'New team', NULL, 'teams.create', '2023-06-22 02:00:37', NULL, NULL, 13, 22, 112),
('no', 'Store team', NULL, 'teams.create', '2023-06-22 02:00:37', NULL, NULL, 13, 22, 112),
('yes', 'Teams', NULL, 'teams.index', '2023-06-22 02:00:46', NULL, NULL, 13, 22, 111),
('yes', 'List of UC\'s / NC\'s', NULL, 'Vc.index', '2023-06-22 02:02:48', NULL, NULL, 13, 23, 115),
('yes', 'Add New UC\'s / NC\'s', NULL, 'Vc.create', '2023-06-22 02:04:21', NULL, NULL, 13, 23, 116),
('no', 'Store uc/vc', NULL, 'Vc.store', '2023-06-22 02:04:21', NULL, NULL, 13, 23, 116),
('no', 'Edit uc/vc', NULL, 'Vc.edit', '2023-06-22 02:06:26', NULL, NULL, 13, 23, 117),
('no', 'Update uc/vc', NULL, 'Vc.update', '2023-06-22 02:06:26', NULL, NULL, 13, 23, 117),
('no', 'Delete uc/nc', NULL, 'Vc.delete', '2023-06-22 02:08:48', NULL, NULL, 13, 23, 118),
('yes', 'Spotted Category', NULL, 'category.index', '2023-06-22 02:11:40', NULL, NULL, 13, 23, 119),
('yes', 'Create Category', NULL, 'category.create', '2023-06-22 02:13:01', NULL, NULL, 13, 23, 120),
('no', 'Store Category', NULL, 'category.store', '2023-06-22 02:13:01', NULL, NULL, 13, 23, 120),
('no', 'Edit category', NULL, 'category.edit', '2023-06-22 02:14:03', NULL, NULL, 13, 23, 121),
('no', 'Update category', NULL, 'category.update', '2023-06-22 02:14:03', NULL, NULL, 13, 23, 121),
('no', 'Delete category', NULL, 'category.delete', '2023-06-22 02:14:49', NULL, NULL, 13, 23, 122),
('yes', 'Reported Cases List', NULL, 'dengue.patients.index', '2023-06-22 06:27:31', NULL, NULL, 13, 19, 101),
('yes', 'New Patient Report', NULL, 'dengue.patients.create', '2023-06-22 06:28:39', NULL, NULL, 13, 19, 102),
('no', 'Store patient', NULL, 'dengue.patients.store', '2023-06-22 06:28:39', NULL, NULL, 13, 19, 102),
('no', 'Forwarding Patient Case', NULL, 'dengue.patients.forward_patient', '2023-06-22 07:00:25', NULL, NULL, 13, 19, 123),
('no', 'Can Recover Patient', NULL, 'dengue.patients.recover_patient', '2023-06-22 07:01:40', NULL, NULL, 13, 19, 124),
('no', 'Can Forward Spotted', NULL, 'dengue.spotted.forward_spotted_area', '2023-06-22 07:04:13', NULL, NULL, 13, 20, 125),
('no', 'Can Complete The Spotted Area case', NULL, 'dengue.spotted.complete_spotted_area', '2023-06-22 07:05:27', NULL, NULL, 13, 19, 126),
('no', 'Can Complete The Spotted Area case', NULL, 'dengue.spotted.complete_spotted_area', '2023-06-22 07:15:55', NULL, NULL, 13, 20, 127),
('no', 'Dashbaord', NULL, 'home', '2023-08-08 06:57:20', NULL, NULL, 14, 24, 128),
('yes', 'Office Locations', NULL, 'businessportal.office.position.index', '2023-08-08 06:58:43', NULL, NULL, 14, 25, 129),
('yes', 'Create New Office/Position', NULL, 'businessportal.office.position.create', '2023-08-08 06:59:42', NULL, NULL, 14, 25, 130),
('no', 'Store New Office/Position', NULL, 'businessportal.office.position.store', '2023-08-08 06:59:42', NULL, NULL, 14, 25, 130),
('no', 'Edit office/location', NULL, 'businessportal.office.position.edit', '2023-08-08 07:00:43', NULL, NULL, 14, 25, 131),
('no', 'Update office/location', NULL, 'businessportal.office.position.update', '2023-08-08 07:00:43', NULL, NULL, 14, 25, 131),
('no', 'Can delete office/location', NULL, 'businessportal.office.position.destroy', '2023-08-08 07:02:23', NULL, NULL, 14, 25, 132),
('yes', 'Listings Organizations', NULL, 'companies.index', '2023-08-08 07:03:39', NULL, NULL, 14, 26, 133),
('yes', 'Create New Organization', NULL, 'companies.create', '2023-08-08 07:04:27', NULL, NULL, 14, 26, 134),
('no', 'Store New Organization', NULL, 'companies.store', '2023-08-08 07:04:27', NULL, NULL, 14, 26, 134),
('no', 'Edit Organization', NULL, 'businessportal.companies.edit', '2023-08-08 07:05:48', NULL, NULL, 14, 26, 135),
('no', 'Update Edit Organization', NULL, 'businessportal.companies.update', '2023-08-08 07:05:48', NULL, NULL, 14, 26, 135),
('no', 'Delete Organization', NULL, 'businessportal.companies.delete', '2023-08-08 07:06:32', NULL, NULL, 14, 26, 136),
('yes', 'Employee Listings', NULL, 'businessportal.employees.index', '2023-08-09 06:11:00', NULL, NULL, 14, 27, 137),
('yes', 'Happening Listings', NULL, 'businessportal.happenings.index', '2023-08-09 06:11:41', NULL, NULL, 14, 28, 138),
('yes', 'New RNI', NULL, 'eo.rni.create', '2023-08-18 13:00:19', NULL, NULL, 10, 30, 143),
('no', 'store', NULL, 'eo.rni.store', '2023-08-18 13:00:19', NULL, NULL, 10, 30, 143),
('yes', 'RNI List', NULL, 'eo.rni.list', '2023-08-18 13:01:26', NULL, NULL, 10, 30, 142),
('no', 'Update', NULL, 'eo.rni.update', '2023-08-18 13:01:26', NULL, NULL, 10, 30, 142),
('no', 'edit', NULL, 'eo.rni.edit', '2023-08-18 13:01:26', NULL, NULL, 10, 30, 142),
('yes', 'e-Letter List', NULL, 'eo.e_letters.index', '2023-08-18 13:10:55', NULL, NULL, 10, 31, 144),
('yes', 'New e-Letter', NULL, 'eo.e_letters.form', '2023-08-18 13:15:19', NULL, NULL, 10, 31, 145),
('yes', 'e-Noting List', NULL, 'eo.noting.list', '2023-08-18 13:27:04', NULL, NULL, 10, 32, 146),
('no', NULL, NULL, NULL, '2023-08-18 13:27:04', NULL, NULL, 10, 32, 146),
('no', 'track', NULL, 'eo.noting.track', '2023-08-18 13:27:04', NULL, NULL, 10, 32, 146),
('no', 'update', NULL, 'eo.noting.update', '2023-08-18 13:27:04', NULL, NULL, 10, 32, 146),
('no', 'edit', NULL, 'eo.noting.edit', '2023-08-18 13:27:04', NULL, NULL, 10, 32, 146),
('no', 'show', NULL, 'eo.noting.show', '2023-08-18 13:27:04', NULL, NULL, 10, 32, 146),
('yes', 'New e-Noting', NULL, 'eo.noting.create', '2023-08-18 13:37:07', NULL, NULL, 10, 32, 147),
('yes', 'User Configuration', NULL, 'eo.userconfigs.form', '2023-08-18 13:41:22', NULL, NULL, 10, 33, 148),
('no', 'update', NULL, 'eo.userconfigs.update', '2023-08-18 13:41:22', NULL, NULL, 10, 33, 148),
('no', 'edit', NULL, 'eo.userconfigs.edit', '2023-08-18 13:41:22', NULL, NULL, 10, 33, 148),
('no', 'store', NULL, 'eo.userconfigs.store', '2023-08-18 13:41:22', NULL, NULL, 10, 33, 148),
('yes', 'e-Noting', NULL, 'eo.noting.inbox', '2023-09-15 14:34:57', NULL, NULL, 10, 29, 141),
('yes', 'RNI', NULL, 'eo.rni.inbox', '2023-09-15 14:35:15', NULL, NULL, 10, 29, 139),
('yes', 'e-Letter', NULL, 'eo.e_letters.inbox', '2023-09-15 14:35:30', NULL, NULL, 10, 29, 140),
('yes', 'Draft List', NULL, 'armslicense.application.list', '2023-09-16 13:16:25', NULL, NULL, 82, 198, 150),
('yes', 'Nadra Verification', NULL, 'armslicense.application.nadra-list', '2023-09-16 13:16:44', NULL, NULL, 82, 198, 151),
('yes', 'Police Verification', NULL, 'armslicense.application.police-list', '2023-09-16 13:17:47', NULL, NULL, 82, 198, 155),
('yes', 'Provisional List', NULL, 'armslicense.application.provisional-list', '2023-09-16 13:17:59', NULL, NULL, 82, 198, 156),
('yes', 'Search', NULL, 'armslicense.application.search', '2023-09-16 13:18:08', NULL, NULL, 82, 198, 157),
('yes', 'Rejected List', NULL, 'armslicense.application.rejected-list', '2023-09-16 13:18:18', NULL, NULL, 82, 198, 158),
('yes', 'Approved List', NULL, 'armslicense.application.approved-list', '2023-09-16 13:18:26', NULL, NULL, 82, 198, 159),
('yes', 'Bores List', NULL, 'armslicense.bores.index', '2023-09-16 13:18:37', NULL, NULL, 82, 199, 160),
('yes', 'Quota\'s Lists', NULL, 'armslicense.quotas.index', '2023-09-16 13:19:00', NULL, NULL, 82, 200, 161),
('yes', 'Weapon Types Lists', NULL, 'armslicense.weapontypes.index', '2023-09-16 13:19:08', NULL, NULL, 82, 201, 162),
('yes', 'Dealer Listing', NULL, 'armslicense.dealer.dealer-listing', '2023-09-25 05:20:14', NULL, NULL, 82, 202, 164),
('no', 'Dealer Registration', NULL, 'armslicense.dealer.dealer-registration', '2023-09-25 05:20:14', NULL, NULL, 82, 202, 164),
('no', 'Dealer Registration Save', NULL, 'armslicense.dealer.save-dealer', '2023-09-25 05:20:14', NULL, NULL, 82, 202, 164),
('yes', 'Dealer Report-DisttWise', NULL, 'armslicense.dealer-weapon-report', '2023-09-25 05:30:48', NULL, NULL, 82, 202, 165),
('yes', 'Dealers Directory Analystics', NULL, 'armslicense.dealer-wise-report', '2023-09-25 05:42:04', NULL, NULL, 82, 202, 169),
('yes', 'DC Verification', NULL, 'armslicense.application.dc-list', '2023-09-16 13:17:47', NULL, NULL, 82, 198, 171),
('yes', 'SO Verification', NULL, 'armslicense.application.so-list', '2023-09-16 13:17:47', NULL, NULL, 82, 198, 172),
('yes', 'Farmer Listings', NULL, 'agriculture.farmers.index', '2023-10-13 09:37:29', NULL, NULL, 83, 203, 173),
('yes', 'Register New Farmer', NULL, 'agriculture.farmers.create', '2023-10-13 09:38:21', NULL, NULL, 83, 203, 174),
('no', 'Store New Farmer', NULL, 'agriculture.farmers.store', '2023-10-13 09:38:21', NULL, NULL, 83, 203, 174),
('no', 'Perfume Action', NULL, 'agriculture.farmer.action', '2023-10-13 09:39:23', NULL, NULL, 83, 203, 175),
('yes', 'New Activity / Proposal', NULL, 'commercechamber.activity.create', '2023-10-19 16:16:40', NULL, NULL, 16, 206, 177),
('no', 'action', NULL, 'commercechamber.activity.action', '2023-10-19 16:18:29', NULL, NULL, 16, 206, 178),
('yes', 'Draft Applications', NULL, 'armslicense.listingsv2.draft', '2023-10-25 05:55:27', NULL, NULL, 82, 208, 181),
('no', 'Draft Application DT', NULL, 'armslicense.listingsv2.draft-dt', '2023-10-25 05:55:27', NULL, NULL, 82, 208, 181),
('yes', 'Pending NADRA Verification', NULL, 'armslicense.listingsv2.pending-nadra-verification', '2023-10-25 08:31:19', NULL, NULL, 82, 208, 182),
('no', 'Pending NADRA Verification DT', NULL, 'armslicense.listingsv2.pending-nadra-verification-dt', '2023-10-25 08:31:19', NULL, NULL, 82, 208, 182),
('yes', 'Pending Police Verification', NULL, 'armslicense.listingsv2.pending-police-verification', '2023-10-25 08:40:52', NULL, NULL, 82, 208, 183),
('no', 'Pending Police Verification DT', NULL, 'armslicense.listingsv2.pending-police-verification-dt', '2023-10-25 08:40:52', NULL, NULL, 82, 208, 183),
('yes', 'Rejected List', NULL, 'armslicense.listingsv2.rejected-list', '2023-10-25 12:43:11', NULL, NULL, 82, 208, 184),
('no', 'Rejected List DT', NULL, 'armslicense.listingsv2.rejected-list-dt', '2023-10-25 12:43:11', NULL, NULL, 82, 208, 184),
('yes', 'Completed Police Verif.', NULL, 'armslicense.listingsv2.completed-police-verification', '2023-10-25 18:00:18', NULL, NULL, 82, 208, 185),
('no', 'Completed Police Verif. DT', NULL, 'armslicense.listingsv2.completed-police-verification-dt', '2023-10-25 18:00:18', NULL, NULL, 82, 208, 185),
('yes', 'Pending DC Approval', NULL, 'armslicense.listingsv2.pending-dc-approval-list', '2023-10-25 18:11:15', NULL, NULL, 82, 208, 186),
('no', 'Pending DC Approval DT', NULL, 'armslicense.listingsv2.pending-dc-approval-list-dt', '2023-10-25 18:11:15', NULL, NULL, 82, 208, 186),
('yes', 'Search Application', NULL, 'armslicense.listingsv2.search-application-v2', '2023-10-26 05:23:58', NULL, NULL, 82, 208, 187),
('no', 'Search Application DT', NULL, 'armslicense.listingsv2.search-application-v2-dt', '2023-10-26 05:23:58', NULL, NULL, 82, 208, 187),
('yes', 'New License', NULL, 'armslicense.license.wizard.step1', '2023-10-26 05:30:40', NULL, NULL, 82, 208, 149),
('no', 'New License Step1 Save', NULL, 'armslicense.license.wizard.step1-save', '2023-10-26 05:30:40', NULL, NULL, 82, 208, 149),
('no', 'New License Step2', NULL, 'armslicense.license.wizard.step2', '2023-10-26 05:30:40', NULL, NULL, 82, 208, 149),
('no', 'New License Step2 Save', NULL, 'armslicense.license.wizard.step2-save', '2023-10-26 05:30:40', NULL, NULL, 82, 208, 149),
('no', 'New License Step3', NULL, 'armslicense.license.wizard.step3', '2023-10-26 05:30:40', NULL, NULL, 82, 208, 149),
('no', 'New License Step3 Save', NULL, 'armslicense.license.wizard.step3-save', '2023-10-26 05:30:40', NULL, NULL, 82, 208, 149),
('no', 'New License Step4', NULL, 'armslicense.license.wizard.step4', '2023-10-26 05:30:40', NULL, NULL, 82, 208, 149),
('no', 'New License Step4 Save', NULL, 'armslicense.license.wizard.step4-save', '2023-10-26 05:30:40', NULL, NULL, 82, 208, 149),
('no', 'New License Step5', NULL, 'armslicense.license.wizard.step5', '2023-10-26 05:30:40', NULL, NULL, 82, 208, 149),
('no', 'New License Step5 Save', NULL, 'armslicense.license.wizard.step5-save', '2023-10-26 05:30:40', NULL, NULL, 82, 208, 149),
('no', 'New License Step6', NULL, 'armslicense.license.wizard.step6', '2023-10-26 05:30:40', NULL, NULL, 82, 208, 149),
('no', 'New License Step6 Submit Application', NULL, 'armslicense.license.submit-application', '2023-10-26 05:30:40', NULL, NULL, 82, 208, 149),
('yes', 'All Submitted Applications', NULL, 'armslicense.listingsv2.submitted-list', '2023-10-26 06:30:45', NULL, NULL, 82, 208, 188),
('no', 'All Submitted Applications DT', NULL, 'armslicense.listingsv2.submitted-list-dt', '2023-10-26 06:30:45', NULL, NULL, 82, 208, 188),
('yes', 'Activity /proposals Listing', NULL, 'commercechamber.activity.index', '2023-10-27 07:19:15', NULL, NULL, 16, 206, 176),
('yes', 'New Complaint /Requests', NULL, 'commercechamber.complaint.create', '2023-10-27 07:26:50', NULL, NULL, 16, 204, 179),
('yes', 'Complaints/Requests Listing', NULL, 'commercechamber.complaint.index', '2023-10-27 07:27:33', NULL, NULL, 16, 204, 180),
('yes', 'Crime Listing', NULL, 'fmc.crimes.index', '2023-10-27 10:58:58', NULL, NULL, 84, 210, 189),
('yes', 'Crime Create', NULL, 'fmc.crimes.create', '2023-10-27 10:59:55', NULL, NULL, 84, 210, 190),
('no', 'Store Crime', NULL, 'fmc.crimes.store', '2023-10-27 10:59:55', NULL, NULL, 84, 210, 190),
('no', 'Edit Crime', NULL, 'fmc.crimes.edit', '2023-10-27 11:00:42', NULL, NULL, 84, 210, 191),
('no', 'Update Crime', NULL, 'fmc.crimes.update', '2023-10-27 11:00:42', NULL, NULL, 84, 210, 191),
('yes', 'Create Seller', NULL, 'fmc.sellers.create', '2023-10-27 11:02:55', NULL, NULL, 84, 211, 193),
('no', 'Store Seller', NULL, 'fmc.sellers.store', '2023-10-27 11:02:55', NULL, NULL, 84, 211, 193),
('no', 'Sellers Edit', NULL, 'fmc.sellers.edit', '2023-10-27 11:03:43', NULL, NULL, 84, 211, 194),
('no', 'Sellers Update', NULL, 'fmc.sellers.update', '2023-10-27 11:03:43', NULL, NULL, 84, 211, 194),
('yes', 'New Complaint', NULL, 'fmc.complaints.create', '2023-10-27 11:05:31', NULL, NULL, 84, 209, 196),
('no', 'Store Complaint', NULL, 'fmc.complaints.store', '2023-10-27 11:05:31', NULL, NULL, 84, 209, 196),
('no', 'Edit Complaint', NULL, 'fmc.complaints.edit', '2023-10-27 11:06:16', NULL, NULL, 84, 209, 197),
('no', 'Update Complaint', NULL, 'fmc.complaints.update', '2023-10-27 11:06:16', NULL, NULL, 84, 209, 197),
('yes', 'Pending SO Approval List', NULL, 'armslicense.listingsv2.pending-so-approval-list', '2023-10-28 14:41:21', NULL, NULL, 82, 208, 198),
('no', 'Pending SO Approval List DT', NULL, 'armslicense.listingsv2.pending-so-approval-list-dt', '2023-10-28 14:41:21', NULL, NULL, 82, 208, 198),
('yes', 'Provisional List', NULL, 'armslicense.listingsv2.provisional-list', '2023-10-28 15:04:46', NULL, NULL, 82, 208, 199),
('no', 'Provisional List DT', NULL, 'armslicense.listingsv2.provisional-list-dt', '2023-10-28 15:04:46', NULL, NULL, 82, 208, 199),
('yes', 'Approved List', NULL, 'armslicense.listingsv2.approved-list', '2023-10-28 15:17:30', NULL, NULL, 82, 208, 200),
('no', 'Approved List DT', NULL, 'armslicense.listingsv2.approved-list', '2023-10-28 15:17:30', NULL, NULL, 82, 208, 200),
('yes', 'Complaint Listings', NULL, 'fmc.complaints.index', '2023-10-31 07:04:00', NULL, NULL, 84, 209, 195),
('yes', 'Match Listings', NULL, 'fmc.complaints.match', '2023-10-31 07:04:00', NULL, NULL, 84, 209, 195),
('yes', 'Mobile Shop Listings', NULL, 'fmc.shop.index', '2023-11-06 11:43:51', NULL, NULL, 84, 212, 201),
('no', 'Edit Complaint', NULL, 'fmc.shop.edit', '2023-11-06 11:47:19', NULL, NULL, 84, 212, 203),
('no', 'Update Complaint', NULL, 'fmc.shop.update', '2023-11-06 11:47:19', NULL, NULL, 84, 212, 203),
('yes', 'Seller Listing', NULL, 'fmc.sellers.index', '2023-11-07 10:05:58', NULL, NULL, 84, 211, 192),
('yes', 'All users', NULL, 'fmc.users.mgt.list', '2023-11-15 07:31:39', NULL, NULL, 84, 213, 204),
('yes', 'New user', NULL, 'fmc.users.mgt.create', '2023-11-15 07:34:52', NULL, NULL, 84, 213, 205),
('no', 'Store user', NULL, 'fmc.users-mgt.store', '2023-11-15 07:34:52', NULL, NULL, 84, 213, 205),
('no', 'Fmc User Edit', NULL, 'fmc.users-mgt.edit', '2023-11-15 08:22:16', NULL, NULL, 84, 213, 206),
('no', 'Fmc User Edit', NULL, 'fmc.users-mgt.update', '2023-11-15 08:22:16', NULL, NULL, 84, 213, 206),
('yes', 'New Mobile Shop', NULL, 'fmc.shop.create', '2023-11-16 04:02:49', NULL, NULL, 84, 212, 202),
('no', 'Store Mobile Shop', NULL, 'fmc.shop.store', '2023-11-16 04:02:49', NULL, NULL, 84, 212, 202),
('yes', 'Complaint Listings', NULL, 'fmc.complaints.index', '2023-11-28 12:58:05', NULL, NULL, 84, 209, 207),
('yes', 'Complaint Listings', NULL, 'fmc.complaints.match', '2023-11-28 12:58:05', NULL, NULL, 84, 209, 207),
('yes', 'Recovered Listings', NULL, 'fmc.complaints.recoverd', '2023-11-28 12:58:05', NULL, NULL, 84, 209, 207);

-- --------------------------------------------------------

--
-- Table structure for table `permission_user`
--

CREATE TABLE `permission_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `permission_user`
--

INSERT INTO `permission_user` (`id`, `permission_id`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(403, 196, 2, '2023-10-27 11:06:38', '2023-10-27 11:06:38', NULL),
(404, 197, 2, '2023-10-27 11:06:38', '2023-10-27 11:06:38', NULL),
(405, 189, 2, '2023-10-27 11:06:38', '2023-10-27 11:06:38', NULL),
(406, 190, 2, '2023-10-27 11:06:38', '2023-10-27 11:06:38', NULL),
(407, 191, 2, '2023-10-27 11:06:38', '2023-10-27 11:06:38', NULL),
(408, 192, 2, '2023-10-27 11:06:38', '2023-10-27 11:06:38', NULL),
(409, 193, 2, '2023-10-27 11:06:38', '2023-10-27 11:06:38', NULL),
(410, 194, 2, '2023-10-27 11:06:38', '2023-10-27 11:06:38', NULL),
(432, 201, 2, '2023-11-06 11:46:34', '2023-11-06 11:46:34', NULL),
(433, 202, 2, '2023-11-06 11:46:34', '2023-11-06 11:46:34', NULL),
(434, 203, 2, '2023-11-06 11:46:34', '2023-11-06 11:46:34', NULL),
(435, 204, 2, '2023-11-15 07:32:08', '2023-11-15 07:32:08', NULL),
(436, 205, 2, '2023-11-15 07:35:14', '2023-11-15 07:35:14', NULL),
(440, 206, 2, '2023-11-15 08:32:07', '2023-11-15 08:32:07', NULL),
(441, 35, 2, '2023-11-28 13:13:54', '2023-11-28 13:13:54', NULL),
(442, 36, 2, '2023-11-28 13:13:54', '2023-11-28 13:13:54', NULL),
(443, 37, 2, '2023-11-28 13:13:54', '2023-11-28 13:13:54', NULL),
(444, 38, 2, '2023-11-28 13:13:54', '2023-11-28 13:13:54', NULL),
(445, 39, 2, '2023-11-28 13:13:54', '2023-11-28 13:13:54', NULL),
(446, 40, 2, '2023-11-28 13:13:54', '2023-11-28 13:13:54', NULL),
(447, 41, 2, '2023-11-28 13:13:54', '2023-11-28 13:13:54', NULL),
(448, 42, 2, '2023-11-28 13:13:54', '2023-11-28 13:13:54', NULL),
(449, 43, 2, '2023-11-28 13:13:54', '2023-11-28 13:13:54', NULL),
(450, 44, 2, '2023-11-28 13:13:54', '2023-11-28 13:13:54', NULL),
(451, 45, 2, '2023-11-28 13:13:54', '2023-11-28 13:13:54', NULL),
(452, 46, 2, '2023-11-28 13:13:54', '2023-11-28 13:13:54', NULL),
(453, 47, 2, '2023-11-28 13:13:54', '2023-11-28 13:13:54', NULL),
(454, 48, 2, '2023-11-28 13:13:54', '2023-11-28 13:13:54', NULL),
(455, 49, 2, '2023-11-28 13:13:54', '2023-11-28 13:13:54', NULL),
(456, 50, 2, '2023-11-28 13:13:54', '2023-11-28 13:13:54', NULL),
(457, 51, 2, '2023-11-28 13:13:54', '2023-11-28 13:13:54', NULL),
(458, 52, 2, '2023-11-28 13:13:54', '2023-11-28 13:13:54', NULL),
(459, 53, 2, '2023-11-28 13:13:54', '2023-11-28 13:13:54', NULL),
(460, 54, 2, '2023-11-28 13:13:54', '2023-11-28 13:13:54', NULL),
(461, 55, 2, '2023-11-28 13:13:54', '2023-11-28 13:13:54', NULL),
(462, 56, 2, '2023-11-28 13:13:54', '2023-11-28 13:13:54', NULL),
(463, 57, 2, '2023-11-28 13:13:54', '2023-11-28 13:13:54', NULL),
(464, 58, 2, '2023-11-28 13:13:54', '2023-11-28 13:13:54', NULL),
(465, 59, 2, '2023-11-28 13:13:54', '2023-11-28 13:13:54', NULL),
(466, 60, 2, '2023-11-28 13:13:54', '2023-11-28 13:13:54', NULL),
(467, 61, 2, '2023-11-28 13:13:54', '2023-11-28 13:13:54', NULL),
(468, 62, 2, '2023-11-28 13:13:54', '2023-11-28 13:13:54', NULL),
(469, 63, 2, '2023-11-28 13:13:54', '2023-11-28 13:13:54', NULL),
(470, 64, 2, '2023-11-28 13:13:54', '2023-11-28 13:13:54', NULL),
(471, 65, 2, '2023-11-28 13:13:54', '2023-11-28 13:13:54', NULL),
(472, 66, 2, '2023-11-28 13:13:54', '2023-11-28 13:13:54', NULL),
(473, 67, 2, '2023-11-28 13:13:54', '2023-11-28 13:13:54', NULL),
(474, 68, 2, '2023-11-28 13:13:54', '2023-11-28 13:13:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 2, 'itboard_agriculture', '08fcd8e7cd99bc64d4843c1ffd93e501b93d569e0ea4ca356947e85e0baeef96', '[\"*\"]', NULL, NULL, '2023-10-19 07:25:48', '2023-10-19 07:25:48'),
(2, 'App\\Models\\User', 2, 'itboard_agriculture', 'a4184222c309a96cfec7558f85ff833852c19ad7ea175aa8491dcaf88767832c', '[\"*\"]', NULL, NULL, '2023-10-19 08:16:30', '2023-10-19 08:16:30'),
(3, 'App\\Models\\User', 2, 'itboard_agriculture', '338b08be3da8fc4a7404733a308cdd12f303e1c7102a9f7b3d803ccbd7064b97', '[\"*\"]', '2023-10-19 10:12:48', NULL, '2023-10-19 10:12:35', '2023-10-19 10:12:48'),
(4, 'App\\Models\\User', 2, 'fcm_module', '86179d9a16a37b856f81807a929a9a76f33376e5821a10f6b4490abc07c97f75', '[\"*\"]', NULL, NULL, '2023-10-27 11:20:32', '2023-10-27 11:20:32'),
(5, 'App\\Models\\User', 2, 'fcm_module', 'e15f6495b0d2a590009f3b13f527c1c1a6a3843dc5eb0bb3be0e42916049bce7', '[\"*\"]', '2023-10-27 11:22:05', NULL, '2023-10-27 11:21:32', '2023-10-27 11:22:05'),
(6, 'App\\Models\\User', 2, 'fcm_module', 'dfce4c8a89d643cb3beff1f005d1f8f51145bbec96ac4b9ce8ccff392ee18527', '[\"*\"]', '2023-10-28 05:06:32', NULL, '2023-10-28 05:06:11', '2023-10-28 05:06:32'),
(7, 'App\\Models\\User', 2, 'fcm_module', 'c7b80c82c9a7d05632f732a04a52078fc685dab188d770d9c3e8fdd594863e15', '[\"*\"]', NULL, NULL, '2023-10-28 08:43:35', '2023-10-28 08:43:35'),
(8, 'App\\Models\\User', 2, 'fcm_module', '89f646cdb2e08a281f2e721d80318653d48453bfc8858e909cc1abc267269fb3', '[\"*\"]', '2023-10-28 09:04:10', NULL, '2023-10-28 08:58:50', '2023-10-28 09:04:10'),
(9, 'App\\Models\\User', 2, 'fcm_module', '5ff99cab5b743ff29f1cfec57537c3bf09260a3e21925159000ee008cee05cb6', '[\"*\"]', NULL, NULL, '2023-10-28 09:18:15', '2023-10-28 09:18:15'),
(10, 'App\\Models\\User', 2, 'fcm_module', '30c82c7c554122688f52ce057a571734d7198d7f1938658b973b25f20a83761b', '[\"*\"]', NULL, NULL, '2023-10-28 09:18:50', '2023-10-28 09:18:50'),
(11, 'App\\Models\\User', 2, 'fcm_module', 'b25e1972ee24b774f0f02ee4ca7502b4d56bb5c010b17fcdc2b5f5c6d65e8e01', '[\"*\"]', NULL, NULL, '2023-10-28 10:40:40', '2023-10-28 10:40:40'),
(12, 'App\\Models\\User', 2, 'fcm_module', '5d2a61de30fcaab4ee306a0fbd21926a1d28576a7e809d3da0268ee2e49c248b', '[\"*\"]', NULL, NULL, '2023-10-28 10:50:39', '2023-10-28 10:50:39'),
(13, 'App\\Models\\User', 2, 'fcm_module', 'b0f890c7bf700c965488a0883abf45b5430bc5050d44bb21f3188c6c19bf7538', '[\"*\"]', NULL, NULL, '2023-10-28 10:51:35', '2023-10-28 10:51:35'),
(14, 'App\\Models\\User', 2, 'fcm_module', '06b794d8f6319646cad8b78f312fd665fbbf52883b7f9bb69e235be9104f56a1', '[\"*\"]', NULL, NULL, '2023-10-28 10:52:16', '2023-10-28 10:52:16'),
(15, 'App\\Models\\User', 2, 'fcm_module', 'e65808e4b5c90acbec89ffb3aa07a6795ef0dd2cc6845eb7b1afeb1b8a14ce6e', '[\"*\"]', NULL, NULL, '2023-10-28 10:56:29', '2023-10-28 10:56:29'),
(16, 'App\\Models\\User', 2, 'fcm_module', '9f276ef0950cf234c95610e244ddbf8ee5689bb547296398da222d93d944f681', '[\"*\"]', NULL, NULL, '2023-10-28 10:59:42', '2023-10-28 10:59:42'),
(17, 'App\\Models\\User', 2, 'fcm_module', '3229e3cc1dd24a33547b45acc49557a84f3cdb8d62a5476c7df8c1125da570cf', '[\"*\"]', NULL, NULL, '2023-10-28 12:34:31', '2023-10-28 12:34:31'),
(18, 'App\\Models\\User', 2, 'fcm_module', '5a7980627082efd37f0eb3f4a98d027ae04f3dfb5f31b66c56b321a5c05477c4', '[\"*\"]', '2023-10-28 12:42:32', NULL, '2023-10-28 12:41:24', '2023-10-28 12:42:32'),
(19, 'App\\Models\\User', 2, 'fcm_module', 'bb4c29d5d5f5c5c9e297fa701b7ae7e8b2531e39e0ce38029c27b896428734db', '[\"*\"]', NULL, NULL, '2023-10-28 12:44:36', '2023-10-28 12:44:36'),
(20, 'App\\Models\\User', 2, 'fcm_module', 'af09713a416c850e28bcbc091e62310e69fe5cbd32b0465db08a78c159c00e31', '[\"*\"]', NULL, NULL, '2023-10-29 06:55:04', '2023-10-29 06:55:04'),
(21, 'App\\Models\\User', 2, 'fcm_module', '9979c8881327e9bb319c6110ddb8dbffb22f84ea62e49fd29f52cb3ec3da95cd', '[\"*\"]', '2023-10-29 07:26:20', NULL, '2023-10-29 07:24:51', '2023-10-29 07:26:20'),
(22, 'App\\Models\\User', 2, 'fcm_module', '1385b577841c0d3cc0f4af3ea62331648ff66d083faf4e8cf9a97f874f817ac7', '[\"*\"]', '2023-10-29 09:10:04', NULL, '2023-10-29 07:31:54', '2023-10-29 09:10:04'),
(23, 'App\\Models\\User', 2, 'fcm_module', '9380afd3dff64de88a653ae39ff58c9f9e8c449b50f5de72e56d96fa0ebb58b9', '[\"*\"]', '2023-10-29 08:19:13', NULL, '2023-10-29 08:19:08', '2023-10-29 08:19:13'),
(24, 'App\\Models\\User', 2, 'fcm_module', '00b1f551b7cd0d35ee0283790f103f9020e3b2a622e19b8ef629d9eeb55b2e69', '[\"*\"]', '2023-10-29 08:33:26', NULL, '2023-10-29 08:22:02', '2023-10-29 08:33:26'),
(25, 'App\\Models\\User', 2, 'fcm_module', 'ae54a7d4c1fc99b5771614a018a272be15e11d1e5a6a434fe369b6de77727e27', '[\"*\"]', '2023-10-29 09:09:21', NULL, '2023-10-29 09:06:27', '2023-10-29 09:09:21'),
(26, 'App\\Models\\User', 2, 'fcm_module', '9854860120a370689fd2fd56850055c74eee82d0af6d3f6011b9cbca6da88acd', '[\"*\"]', '2023-10-29 14:51:00', NULL, '2023-10-29 14:50:09', '2023-10-29 14:51:00'),
(27, 'App\\Models\\User', 2, 'fcm_module', '66fba2c37e3e2c5527d0a2276cdd2a39546d6d02e13eab0da1526b096b412e3d', '[\"*\"]', '2023-10-29 15:05:04', NULL, '2023-10-29 15:05:03', '2023-10-29 15:05:04'),
(28, 'App\\Models\\User', 2, 'fcm_module', 'ec1e7b53dd0f25d35817d12421619e5f9d6674a7d913a8e74bf530c0b2cdfc44', '[\"*\"]', '2023-10-29 15:37:46', NULL, '2023-10-29 15:36:29', '2023-10-29 15:37:46'),
(29, 'App\\Models\\User', 2, 'fcm_module', 'cefb1ab9f6d3c351b1ce658fb1adc6442faf02f78fdd1df2a21a070b9c00cf86', '[\"*\"]', NULL, NULL, '2023-10-30 01:47:28', '2023-10-30 01:47:28'),
(30, 'App\\Models\\User', 2, 'fcm_module', 'd22ee1e0385f48c1d1c89262e12b0c616989500c6b4b66750b7a891d1b02bb07', '[\"*\"]', '2023-10-30 04:54:27', NULL, '2023-10-30 04:50:33', '2023-10-30 04:54:27'),
(31, 'App\\Models\\User', 2, 'fcm_module', '373748f2cee333b3812c1f0965b0a484ecedd6bdc7a895cea994f0d22971fd20', '[\"*\"]', '2023-10-30 08:55:57', NULL, '2023-10-30 06:16:33', '2023-10-30 08:55:57'),
(32, 'App\\Models\\User', 2, 'fcm_module', '9d9c69c2f5a80f0c4d92676128fe1d1ad3e555ab12b1621c5e5e1602ab105bef', '[\"*\"]', '2023-10-30 08:56:55', NULL, '2023-10-30 07:31:51', '2023-10-30 08:56:55'),
(33, 'App\\Models\\User', 2, 'fcm_module', '6965759e5eb96d0f9084727a353d2769f8faec75c5405a8d14fd301e8a3c7898', '[\"*\"]', '2023-10-30 09:03:05', NULL, '2023-10-30 08:57:34', '2023-10-30 09:03:05'),
(34, 'App\\Models\\User', 2, 'fcm_module', '389ec059e0cb31040b4252d37c32905876fc99eacad7e6fd6610439f4d748f59', '[\"*\"]', '2023-10-31 09:51:16', NULL, '2023-10-30 09:06:33', '2023-10-31 09:51:16'),
(35, 'App\\Models\\User', 2, 'fcm_module', '6e75c5b4ef356164d4b5a60570747a110565216dc073b8badf417f40d2c6009c', '[\"*\"]', '2023-10-30 10:43:49', NULL, '2023-10-30 09:59:58', '2023-10-30 10:43:49'),
(36, 'App\\Models\\User', 2, 'fcm_module', 'f5b0605aabdd70eeaf5586325cc4d57d8b9eaef00042f78375ae1c5628958bf9', '[\"*\"]', '2023-10-30 16:51:23', NULL, '2023-10-30 11:09:25', '2023-10-30 16:51:23'),
(37, 'App\\Models\\User', 2, 'fcm_module', 'aff5b6b5616246f579b6bcce38684370c5ad9370652508e9997559602952fe6f', '[\"*\"]', '2023-10-30 17:55:08', NULL, '2023-10-30 17:53:00', '2023-10-30 17:55:08'),
(38, 'App\\Models\\User', 2, 'fcm_module', 'c867712efbf83c524f900d6e21022da291622b28ab0d8dca593abf5d4ca08594', '[\"*\"]', '2023-10-31 05:49:52', NULL, '2023-10-31 05:40:32', '2023-10-31 05:49:52'),
(39, 'App\\Models\\User', 2, 'fcm_module', '2e45b29ad7346f0c7fc6cef0918a5a4ce3998a74f6f10bc1ef21a8437a30d1b6', '[\"*\"]', '2023-10-31 08:16:22', NULL, '2023-10-31 06:37:42', '2023-10-31 08:16:22'),
(40, 'App\\Models\\User', 2, 'fcm_module', 'a244f7dd5e1f826dc59d184512190e8ff1065262fd20873a2cbf756827ad4a70', '[\"*\"]', '2023-10-31 06:50:21', NULL, '2023-10-31 06:50:04', '2023-10-31 06:50:21'),
(41, 'App\\Models\\User', 2, 'fcm_module', '0f42e52212d047f334a9b8465751e3cd8272f33bf37050a88f6dc8b4360690c0', '[\"*\"]', '2023-10-31 08:04:14', NULL, '2023-10-31 07:59:58', '2023-10-31 08:04:14'),
(42, 'App\\Models\\User', 2, 'fcm_module', '74c67bbabe51ab0d746bdd7570da6d1dad475238b09304f7ad3de644c837b563', '[\"*\"]', '2023-10-31 09:50:45', NULL, '2023-10-31 09:48:54', '2023-10-31 09:50:45'),
(43, 'App\\Models\\User', 2, 'fcm_module', '9456f87de00b133794c32b16a0e22f1ffc9e3811ff2cf7c19e2e2e7460c143d7', '[\"*\"]', '2023-10-31 13:10:01', NULL, '2023-10-31 12:15:08', '2023-10-31 13:10:01'),
(44, 'App\\Models\\User', 2, 'fcm_module', '8b7d220be2f5eddb6fed8effc08105b74be7f551f447d5dd9206abe53fbc2dfe', '[\"*\"]', NULL, NULL, '2023-10-31 13:14:36', '2023-10-31 13:14:36'),
(45, 'App\\Models\\User', 2, 'fcm_module', 'dbf1fec824ba15ff9cf9fc84b4b2c5ea9daa8c322755f54820dd4efef4c464b6', '[\"*\"]', '2023-10-31 13:16:21', NULL, '2023-10-31 13:15:02', '2023-10-31 13:16:21'),
(46, 'App\\Models\\User', 2, 'fcm_module', '74e35af163ec3a9cc607dd46c026a79666e9ffc02f6e37eb75962ce3531482c4', '[\"*\"]', '2023-10-31 13:18:18', NULL, '2023-10-31 13:18:05', '2023-10-31 13:18:18'),
(47, 'App\\Models\\User', 2, 'fcm_module', '0ec772b4af4b06eb97d792040cb88a19469f387252da24557781252c97f8451a', '[\"*\"]', '2023-10-31 13:19:13', NULL, '2023-10-31 13:19:07', '2023-10-31 13:19:13'),
(48, 'App\\Models\\User', 2, 'fcm_module', 'f68070239143f3c8cf03e496693f1ced8716ba6f74eb5f0782b5dfd3dd02b7c2', '[\"*\"]', '2023-10-31 17:05:56', NULL, '2023-10-31 13:19:19', '2023-10-31 17:05:56'),
(49, 'App\\Models\\User', 2, 'fcm_module', 'cd53bc4be8a46df86ec4f4496c98239d7c1c3aafd88d21a2715d27ddaeb5b68b', '[\"*\"]', '2023-11-01 09:17:24', NULL, '2023-10-31 13:48:26', '2023-11-01 09:17:24'),
(50, 'App\\Models\\User', 2, 'fcm_module', '8748b3c2f7acbbd7640a372fb1463353a9fb28316f7921b78157283466dc5b5e', '[\"*\"]', '2023-11-06 10:32:17', NULL, '2023-10-31 13:58:22', '2023-11-06 10:32:17'),
(51, 'App\\Models\\User', 2, 'fcm_module', '6ee7fae9c49c56540a4bd97493c42f5f4314418fd4e58fbdb64c0234e6192b96', '[\"*\"]', NULL, NULL, '2023-11-01 08:49:14', '2023-11-01 08:49:14'),
(52, 'App\\Models\\User', 2, 'fcm_module', '6e43d169e81e3789fe155cbb69f75e0d0a3a556d3ccb3099bc10c4f22965164e', '[\"*\"]', NULL, NULL, '2023-11-01 09:14:08', '2023-11-01 09:14:08'),
(53, 'App\\Models\\User', 2, 'fcm_module', 'f6a0d02e228c9c6d42d05492bb0f368f6ae0f834e5ab740bfd5dd98dc19ad06e', '[\"*\"]', '2023-11-01 09:21:10', NULL, '2023-11-01 09:20:57', '2023-11-01 09:21:10'),
(54, 'App\\Models\\User', 2, 'fcm_module', 'da7dcc41d952841c7ad81ace197d30f57ec1edeec37401834b13734c9718112d', '[\"*\"]', '2023-11-06 11:28:19', NULL, '2023-11-01 09:21:18', '2023-11-06 11:28:19'),
(55, 'App\\Models\\User', 2, 'fcm_module', '7a9b900707d35c59116126e7c38b2fe65d59560ca03ca01f4d17fc2e071ab4ff', '[\"*\"]', '2023-11-01 09:28:28', NULL, '2023-11-01 09:26:53', '2023-11-01 09:28:28'),
(56, 'App\\Models\\User', 2, 'fcm_module', '60c4a4e262fb6ea02d5576abd77e26b69d740031e21e1f6a00eebcef2db559e5', '[\"*\"]', '2023-11-06 09:15:01', NULL, '2023-11-06 07:21:41', '2023-11-06 09:15:01'),
(57, 'App\\Models\\User', 2, 'fcm_module', '4e2e0feb0b97bd1d521d81731edfc1b7c25e8a367b572d3a0433a54ab3e8147f', '[\"*\"]', '2023-11-06 09:21:22', NULL, '2023-11-06 09:21:18', '2023-11-06 09:21:22'),
(58, 'App\\Models\\User', 2, 'fcm_module', '74c976d8b2300a8428e097708ff9b872a1aeb725a2f8d1dd5e8fcd664ddb4e6b', '[\"*\"]', '2023-11-06 10:56:48', NULL, '2023-11-06 10:12:53', '2023-11-06 10:56:48'),
(59, 'App\\Models\\User', 2, 'fcm_module', '3c1ecb242070d9c9ce747969433349ff781f2925795289e686393268e5481dd5', '[\"*\"]', '2023-11-06 12:43:29', NULL, '2023-11-06 11:20:15', '2023-11-06 12:43:29'),
(60, 'App\\Models\\User', 837, 'fcm_module', '48400bb24032b8beb01960dedfe12c0b50a72753270556e113903592fc902dcb', '[\"*\"]', '2023-11-06 11:31:56', NULL, '2023-11-06 11:31:56', '2023-11-06 11:31:56'),
(61, 'App\\Models\\User', 837, 'fcm_module', 'ca54c2a5b71f675f742646e561321d5b271605b45248e5778048b084b5f21624', '[\"*\"]', '2023-11-06 11:52:19', NULL, '2023-11-06 11:43:04', '2023-11-06 11:52:19'),
(62, 'App\\Models\\User', 837, 'fcm_module', 'e63c098d9201b5173a09ba9d49126d28fa0ec0ad43960be5e0add75ee43931a6', '[\"*\"]', '2023-11-06 11:58:05', NULL, '2023-11-06 11:54:53', '2023-11-06 11:58:05'),
(63, 'App\\Models\\User', 837, 'fcm_module', '1fa274304bf3e66d5973dec60418a042de8a56df2e95e2e513fef485ae08c855', '[\"*\"]', '2023-11-07 06:45:47', NULL, '2023-11-06 12:16:50', '2023-11-07 06:45:47'),
(64, 'App\\Models\\User', 2, 'fcm_module', 'f478e500278faff5fc430755248d1e82c912bd866897f32b5ce8d064a08c2b84', '[\"*\"]', '2023-11-06 15:18:01', NULL, '2023-11-06 15:15:53', '2023-11-06 15:18:01'),
(65, 'App\\Models\\User', 2, 'fcm_module', 'bc66d210169e663466f37f1ce57b0ea44ce30d0fbbc4d27e7c0916117e9ad8ac', '[\"*\"]', '2023-11-06 15:24:19', NULL, '2023-11-06 15:19:53', '2023-11-06 15:24:19'),
(66, 'App\\Models\\User', 838, 'fcm_module', 'ab1a755a82a7ce6f0346f71f4a9e0a37867e622fa8474d408d1abdd94955f103', '[\"*\"]', '2023-11-06 15:24:48', NULL, '2023-11-06 15:24:45', '2023-11-06 15:24:48'),
(67, 'App\\Models\\User', 837, 'fcm_module', '089430077ae846ea01ab128656efc9642a33a842d544e3180f8803814f9307b1', '[\"*\"]', '2023-11-07 05:54:44', NULL, '2023-11-07 01:26:11', '2023-11-07 05:54:44'),
(68, 'App\\Models\\User', 837, 'fcm_module', '93a4061ebe4653ed10a99f6dd5eddfdf4b690e88d568c6064131992bf9a8f579', '[\"*\"]', '2023-11-07 06:44:15', NULL, '2023-11-07 05:34:18', '2023-11-07 06:44:15'),
(69, 'App\\Models\\User', 837, 'fcm_module', 'd72fe3c05f51f16c7eec957e5a4c35f1b6b991cc416a36702bdf8ab8b1645098', '[\"*\"]', '2023-11-07 06:09:14', NULL, '2023-11-07 06:03:38', '2023-11-07 06:09:14'),
(70, 'App\\Models\\User', 837, 'fcm_module', '66b5fe21af291a0b703fb3face7340f19e380e53e5c64f806c8ff22ebeeaa605', '[\"*\"]', '2023-11-07 06:29:33', NULL, '2023-11-07 06:29:32', '2023-11-07 06:29:33'),
(71, 'App\\Models\\User', 837, 'fcm_module', '9836e758fee66681971588fdaa7b1cb51b0c31f60de81d68b018e492a832481d', '[\"*\"]', '2023-11-07 06:34:38', NULL, '2023-11-07 06:31:18', '2023-11-07 06:34:38'),
(72, 'App\\Models\\User', 2, 'fcm_module', '22e62d3c53f2d70bedacf1c6ddf549aac7302e55d37b36f56c2a895b0316251c', '[\"*\"]', '2023-11-07 06:41:20', NULL, '2023-11-07 06:37:16', '2023-11-07 06:41:20'),
(73, 'App\\Models\\User', 2, 'fcm_module', 'ebd12d372bb98dfe848c2a18a6a4579eab9b4941eb3ff285acd9dc95cabff346', '[\"*\"]', '2023-11-07 07:08:47', NULL, '2023-11-07 06:43:49', '2023-11-07 07:08:47'),
(74, 'App\\Models\\User', 837, 'fcm_module', 'd49bb932d44f0df30542e9df2945af213905e8686c5eed296edcfcf3a86d8e60', '[\"*\"]', '2023-11-07 06:52:51', NULL, '2023-11-07 06:49:57', '2023-11-07 06:52:51'),
(75, 'App\\Models\\User', 837, 'fcm_module', 'fc5cad9e31fcf14ce83730b32cf1faf1996127bdf316d86f37dad29aeb6f8b0d', '[\"*\"]', '2023-11-07 06:54:56', NULL, '2023-11-07 06:53:58', '2023-11-07 06:54:56'),
(76, 'App\\Models\\User', 837, 'fcm_module', '9a058ad7ca4cb4561e14bff26651440ecc2cc2815079fcada87979a5e434e30b', '[\"*\"]', '2023-11-07 08:01:52', NULL, '2023-11-07 06:55:56', '2023-11-07 08:01:52'),
(77, 'App\\Models\\User', 837, 'fcm_module', '96950d7b5c4085b86022e1c81f41c3e735ca17eeb39fd32da00862a9a20d3911', '[\"*\"]', '2023-11-07 07:17:51', NULL, '2023-11-07 07:05:26', '2023-11-07 07:17:51'),
(78, 'App\\Models\\User', 837, 'fcm_module', '25b77c3a23c7a1a8d7d43daf48cb5027d847e828d621a24bbd5a4b94539aa855', '[\"*\"]', '2023-11-07 07:18:58', NULL, '2023-11-07 07:09:40', '2023-11-07 07:18:58'),
(79, 'App\\Models\\User', 837, 'fcm_module', '833f1593e71cd0807d3d40defb4fdb602767d857fb6151e5c61d0cd84242fb70', '[\"*\"]', '2023-11-07 07:27:29', NULL, '2023-11-07 07:24:42', '2023-11-07 07:27:29'),
(80, 'App\\Models\\User', 837, 'fcm_module', '61f063b2b3a1feca6483c296520cd803882763abdac67c50c6b3a98741a876e9', '[\"*\"]', '2023-11-07 07:31:04', NULL, '2023-11-07 07:31:03', '2023-11-07 07:31:04'),
(81, 'App\\Models\\User', 837, 'fcm_module', '1520294dd50cddf05cdd8bce7520d86ffb98d386b4a45cf46fb8d826ef02e9f3', '[\"*\"]', '2023-11-07 08:13:05', NULL, '2023-11-07 08:13:05', '2023-11-07 08:13:05'),
(82, 'App\\Models\\User', 837, 'fcm_module', '4f827952e31fee70bb88d80b6683ecf54416545ff4b933dc66de094b11017f3b', '[\"*\"]', '2023-11-07 08:31:09', NULL, '2023-11-07 08:23:16', '2023-11-07 08:31:09'),
(83, 'App\\Models\\User', 837, 'fcm_module', '23016d87c1f55dcd85a0a9a9d0d46e7a50cb7837930a9c3e9fb45a23befd87eb', '[\"*\"]', '2023-11-07 08:55:10', NULL, '2023-11-07 08:53:11', '2023-11-07 08:55:10'),
(84, 'App\\Models\\User', 837, 'fcm_module', '575e0e2052a8ebadbbf95bde1da189b8774fa2c963286bc5f889e1323713859a', '[\"*\"]', '2023-11-07 09:37:42', NULL, '2023-11-07 09:04:09', '2023-11-07 09:37:42'),
(85, 'App\\Models\\User', 837, 'fcm_module', 'd19079b5ee77168a3d9886d4629f4519ffa764c83d29b222ee9d03b3cc84316f', '[\"*\"]', '2023-11-07 09:07:53', NULL, '2023-11-07 09:07:41', '2023-11-07 09:07:53'),
(86, 'App\\Models\\User', 453, 'fcm_module', 'cf44a19729469ca8346347f49f5aedf09e6a2cf04744a9e51a512dee62d5c277', '[\"*\"]', '2023-11-07 09:08:24', NULL, '2023-11-07 09:08:23', '2023-11-07 09:08:24'),
(87, 'App\\Models\\User', 841, 'fcm_module', 'd8c0009b4ce8ceb9bb3b6c3a2b32c3d6271ec0351428a992915fa38def45bd91', '[\"*\"]', '2023-11-07 09:33:35', NULL, '2023-11-07 09:30:40', '2023-11-07 09:33:35'),
(88, 'App\\Models\\User', 841, 'fcm_module', '1f9c520cc5a9ea32c090a85e353e9149ccaff081cf9bccdd0c4e6a2697a60576', '[\"*\"]', '2023-11-07 11:59:54', NULL, '2023-11-07 09:35:06', '2023-11-07 11:59:54'),
(89, 'App\\Models\\User', 453, 'fcm_module', '1ac9e9184d66ae4741b4d4a8dea84e3ba9116353937f986c8a43b35cd7505af3', '[\"*\"]', '2023-11-07 09:35:15', NULL, '2023-11-07 09:35:14', '2023-11-07 09:35:15'),
(90, 'App\\Models\\User', 841, 'fcm_module', '698d164428597d92c0a9d5a9210ee0835b40e406781731d4cede7579ceef9aa3', '[\"*\"]', '2023-11-07 09:48:38', NULL, '2023-11-07 09:38:07', '2023-11-07 09:48:38'),
(91, 'App\\Models\\User', 837, 'fcm_module', 'e4c7e36130613bd2342edcae6333da4f29ad9da3804e1d689034761595ef79a1', '[\"*\"]', '2023-11-07 09:53:13', NULL, '2023-11-07 09:52:36', '2023-11-07 09:53:13'),
(92, 'App\\Models\\User', 837, 'fcm_module', '836834d64935d3cca68aa5dffc2cdf82c36af5e0a205b068de0ac32ed3f9018d', '[\"*\"]', '2023-11-07 11:16:37', NULL, '2023-11-07 11:14:11', '2023-11-07 11:16:37'),
(93, 'App\\Models\\User', 837, 'fcm_module', '12e0d4e3186263b997aa133939fd81b8268964e9745c3f34892f3804ceb35c35', '[\"*\"]', '2023-11-10 09:35:34', NULL, '2023-11-07 11:20:18', '2023-11-10 09:35:34'),
(94, 'App\\Models\\User', 842, 'fcm_module', '12297cdc09e76b4a7c4076cd587982b66eff91103fdb7f076fe0c4456a7c326b', '[\"*\"]', '2023-11-15 14:23:01', NULL, '2023-11-09 06:04:40', '2023-11-15 14:23:01'),
(95, 'App\\Models\\User', 842, 'fcm_module', 'ceb432306eb783aad220dd49369f2f2d8d52ea80a2fa74b64b0eec1f08efcac2', '[\"*\"]', '2023-11-10 04:10:44', NULL, '2023-11-10 04:06:40', '2023-11-10 04:10:44'),
(96, 'App\\Models\\User', 842, 'fcm_module', 'e08603aa2ed94a31e1df7b89295e2f8c86ca9e328bf3d705bb00947d23fbd8b5', '[\"*\"]', '2023-11-10 04:25:57', NULL, '2023-11-10 04:24:49', '2023-11-10 04:25:57'),
(97, 'App\\Models\\User', 837, 'fcm_module', '900ce20767b4b0ca6f9bfe09976286034064f5c8833f75bba26e98d4cab184ce', '[\"*\"]', '2023-11-10 04:29:16', NULL, '2023-11-10 04:28:41', '2023-11-10 04:29:16'),
(98, 'App\\Models\\User', 842, 'fcm_module', '49040160c9bf4c97c8806dbb09810796ed1fd9f4157ef731a647d81194e7f9cf', '[\"*\"]', '2023-11-10 05:47:18', NULL, '2023-11-10 04:30:08', '2023-11-10 05:47:18'),
(99, 'App\\Models\\User', 837, 'fcm_module', '034ba8488046b3a730dbc9a6d941d4cc400a68f7656d8bd715cf2d7ce2e0cc65', '[\"*\"]', '2023-11-10 06:46:57', NULL, '2023-11-10 06:38:44', '2023-11-10 06:46:57'),
(100, 'App\\Models\\User', 842, 'fcm_module', 'ea70cb51182d7359dba862964205198dcd4faadf9f22d1525fc89068f3f69b80', '[\"*\"]', '2023-11-10 06:49:23', NULL, '2023-11-10 06:48:57', '2023-11-10 06:49:23'),
(101, 'App\\Models\\User', 842, 'fcm_module', '68ed8701e530435e27191cadfb72726c3827fcefe135a7da6f31cec32510c817', '[\"*\"]', '2023-11-10 07:17:23', NULL, '2023-11-10 06:56:37', '2023-11-10 07:17:23'),
(102, 'App\\Models\\User', 842, 'fcm_module', '9b5be95faac9f14da180ae80ab9b0e6347ff21ba2f5ea90d5d84dea48e2d1c92', '[\"*\"]', '2023-11-10 07:45:55', NULL, '2023-11-10 07:04:49', '2023-11-10 07:45:55'),
(103, 'App\\Models\\User', 842, 'fcm_module', '827bf2c34e7d2d922264298afe06a48c334307865976c5f795035043d047767a', '[\"*\"]', '2023-11-10 07:18:40', NULL, '2023-11-10 07:17:42', '2023-11-10 07:18:40'),
(104, 'App\\Models\\User', 837, 'fcm_module', '09fbedd59adfe70b299e8c1cc76560f7523776b42ebadf37e76a9a8636367ba5', '[\"*\"]', '2023-11-10 09:55:24', NULL, '2023-11-10 07:47:21', '2023-11-10 09:55:24'),
(105, 'App\\Models\\User', 842, 'fcm_module', 'd01014bd659c9d700c487a111c8995bab91edc95d03c2e8d227ed3e8b6867d46', '[\"*\"]', '2023-11-10 10:03:16', NULL, '2023-11-10 10:02:13', '2023-11-10 10:03:16'),
(106, 'App\\Models\\User', 837, 'fcm_module', 'a3c9169651ca201f036a9d7b19edcdfc7842a2e9592c7d99b2936bd6993b2a09', '[\"*\"]', '2023-11-15 06:32:01', NULL, '2023-11-10 10:16:20', '2023-11-15 06:32:01'),
(107, 'App\\Models\\User', 2, 'itboard_agriculture', '0a57d63c1686315402c740221e5eb47960f0d79f8ae7ff4eeb6db9dd90d397c4', '[\"*\"]', NULL, NULL, '2023-11-15 06:08:28', '2023-11-15 06:08:28'),
(108, 'App\\Models\\User', 2, 'fcm_module', 'd4b274c751b21963792301e0f5644bc3534cd397af5a690c6cd4480bad773525', '[\"*\"]', NULL, NULL, '2023-11-17 07:12:26', '2023-11-17 07:12:26'),
(109, 'App\\Models\\User', 837, 'fcm_module', '83519511d8850d0831a5078b0378347575f61aae508a6cdb77056abbf55590a6', '[\"*\"]', '2023-11-17 07:15:18', NULL, '2023-11-17 07:15:11', '2023-11-17 07:15:18'),
(110, 'App\\Models\\User', 842, 'fcm_module', '599c47c17945eccb5bc4645b41061f8e6be568b9db7850844536c6b25b92e04f', '[\"*\"]', '2023-11-18 03:31:59', NULL, '2023-11-18 03:25:05', '2023-11-18 03:31:59'),
(111, 'App\\Models\\User', 837, 'fcm_module', '7352fa5e1e1b14252cc65073c6681030105df952810bb2063753e71ff8a27e14', '[\"*\"]', '2023-11-22 11:27:39', NULL, '2023-11-22 10:29:06', '2023-11-22 11:27:39'),
(112, 'App\\Models\\User', 837, 'fcm_module', '286410e0e6c033e480807b11faa109f502c7624ff84a58186ef8470fcb8112d8', '[\"*\"]', '2023-11-23 07:18:39', NULL, '2023-11-23 06:30:41', '2023-11-23 07:18:39');

-- --------------------------------------------------------

--
-- Table structure for table `provinces`
--

CREATE TABLE `provinces` (
  `id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `abbreviation` varchar(10) NOT NULL,
  `description` text,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `deleted_at` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` datetime DEFAULT NULL,
  `image_path` varchar(1000) DEFAULT NULL,
  `govt_name` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `provinces`
--

INSERT INTO `provinces` (`id`, `country_id`, `title`, `abbreviation`, `description`, `active`, `deleted_at`, `created_at`, `update_at`, `image_path`, `govt_name`) VALUES
(1, 1, 'Khyber Pakhtunkhwa', 'KP', NULL, 1, NULL, '2015-02-06 11:44:31', '2015-02-06 00:00:00', 'https://api.pmdu.gov.pk/assets/provinces/test1-05.png', 'Govt. Of Khyber Pakhtunkhwa /  حکومتِ خیبر پختونخوا'),
(2, 1, 'Punjab', 'PU', '', 1, NULL, '2015-02-06 14:43:48', '2015-02-06 19:43:48', 'https://api.pmdu.gov.pk/assets/provinces/test1-05.png', 'Govt. Of  Punjab /  حکومتِ پنجاب'),
(3, 1, 'Sindh', 'SD', '', 1, NULL, '2015-02-06 14:44:01', '2015-02-06 19:44:01', 'https://api.pmdu.gov.pk/assets/provinces/test1-05.png', 'Govt. Of  Sindh / حکومت سندھ'),
(4, 1, 'Balochistan', 'BL', '', 1, NULL, '2015-02-06 14:44:11', '2015-02-06 19:44:11', 'https://api.pmdu.gov.pk/assets/provinces/test1-05.png', 'Govt. Of  Baluchistan / حکومتِ بلوچستان'),
(6, 1, 'Federal Govt', 'IS', '', 1, NULL, '2015-05-03 13:03:14', NULL, 'https://api.pmdu.gov.pk/assets/provinces/test1-05.png', 'Federal Govt.  / وفاقی حکومت'),
(7, 1, 'Gilgit-Baltistan', 'GB', '', 1, NULL, '2015-05-11 06:09:18', NULL, 'https://api.pmdu.gov.pk/assets/provinces/test1-05.png', 'Govt. Of  Gilgit Baltistan / حکومتِ گلگت بلتستان'),
(8, 1, 'Azad Jammu and Kashmir', 'AK', '', 1, NULL, '2015-05-12 07:42:39', NULL, 'https://api.pmdu.gov.pk/assets/provinces/test1-05.png', 'Govt. Of  Azad Kashmir / حکومت آزاد کشمیر');

-- --------------------------------------------------------

--
-- Table structure for table `provinces_`
--

CREATE TABLE `provinces_` (
  `id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `deleted_at` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `provinces_`
--

INSERT INTO `provinces_` (`id`, `country_id`, `title`, `description`, `active`, `deleted_at`, `created_at`, `update_at`) VALUES
(1, 1, 'Khyber Pakhtunkhwa', 'KP', 1, NULL, '2015-02-06 16:44:31', '2015-02-06 00:00:00'),
(2, 1, 'Punjab', 'PB', 1, NULL, '2015-02-06 19:43:48', '2015-02-06 19:43:48'),
(3, 1, 'Sindh', 'SD', 1, NULL, '2015-02-06 19:44:01', '2015-02-06 19:44:01'),
(4, 1, 'Balochistan', 'BN', 1, NULL, '2015-02-06 19:44:11', '2015-02-06 19:44:11'),
(5, 1, 'FATA', 'FT', 1, NULL, '2015-04-22 09:45:37', NULL),
(6, 1, 'Islamabad (Capital Area)', 'ID', 1, NULL, '2015-05-03 18:03:14', NULL),
(7, 1, 'Gilgit & Biltestan', 'GB', 1, NULL, '2015-05-11 11:09:18', NULL),
(8, 1, 'Azad Jammu and Kashmir', 'AJ', 1, NULL, '2015-05-12 12:42:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `level` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `description`, `level`, `created_at`, `updated_at`, `deleted_at`) VALUES
(4, 'Developer', 'developer', 'Developer role for system settings', 1, '2022-05-13 07:15:04', '2022-05-28 12:59:16', NULL),
(49, 'FMC PS USER', 'fmc.focal', 'fmc.focal', 1, '2023-10-31 06:55:59', '2023-11-28 12:53:40', NULL),
(50, 'Admin FMC', 'fmc.admin', NULL, 1, '2023-10-31 09:57:41', '2023-10-31 09:57:41', NULL),
(53, 'Fmc Field Official', 'fmc.fieldinspection', NULL, 3, '2023-11-09 06:02:58', '2023-11-28 12:53:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(13, 4, 2, '2022-05-26 06:45:29', '2022-05-26 06:45:29', NULL),
(854, 50, 846, '2023-11-28 13:17:51', '2023-11-28 13:17:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `parent_id`, `company_id`, `title`, `description`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, NULL, 1, 'Developers Unit', NULL, 2, '2022-05-28 13:08:29', '2022-05-28 13:08:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tehsils`
--

CREATE TABLE `tehsils` (
  `id` int(11) NOT NULL,
  `district_id` int(11) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `short_title` varchar(6) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tehsils`
--

INSERT INTO `tehsils` (`id`, `district_id`, `title`, `short_title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 313, 'Bagh', 'bag62', '2018-10-17 13:29:41', NULL, NULL),
(2, 313, 'Dheerkot', 'dhe66', '2018-10-17 13:29:41', NULL, NULL),
(3, 310, 'Barnala', 'bar43', '2018-10-17 13:29:41', NULL, NULL),
(4, 310, 'Bhimber', 'bhi16', '2018-10-17 13:29:41', NULL, NULL),
(5, 310, 'Samahni', 'sam53', '2018-10-17 13:29:41', NULL, NULL),
(6, 314, 'Haveli', 'hav17', '2018-10-17 13:29:41', NULL, NULL),
(7, 311, 'Kotli', 'kot27', '2018-10-17 13:29:41', NULL, NULL),
(8, 311, 'Nakial', 'nak85', '2018-10-17 13:29:41', NULL, NULL),
(9, 311, 'Sehnsa', 'seh42', '2018-10-17 13:29:41', NULL, NULL),
(10, 309, 'Dudyal', 'dud55', '2018-10-17 13:29:41', NULL, NULL),
(11, 309, 'Mirpur', 'mir47', '2018-10-17 13:29:41', NULL, NULL),
(12, 306, 'Muzaffarabad', 'muz73', '2018-10-17 13:29:41', NULL, NULL),
(13, 308, 'Athumqam', 'ath24', '2018-10-17 13:29:41', NULL, NULL),
(14, 312, 'Abbaspur', 'abb26', '2018-10-17 13:29:41', NULL, NULL),
(15, 312, 'Hajeera', 'haj36', '2018-10-17 13:29:41', NULL, NULL),
(16, 312, 'Rawalakot', 'raw74', '2018-10-17 13:29:41', NULL, NULL),
(17, 315, 'Pallandari', 'pal63', '2018-10-17 13:29:41', NULL, NULL),
(18, 199, 'Awaran', 'awa91', '2018-10-17 13:29:41', NULL, NULL),
(19, 199, 'Gishkore Sub', 'gis66', '2018-10-17 13:29:41', NULL, NULL),
(20, 199, 'Jhal Jhao', 'jha57', '2018-10-17 13:29:41', NULL, NULL),
(21, 199, 'Jhal Jhao Sub', 'jha86', '2018-10-17 13:29:41', NULL, NULL),
(22, 199, 'Mashkai', 'mas61', '2018-10-17 13:29:41', NULL, NULL),
(23, 200, 'Barkhan', 'bar47', '2018-10-17 13:29:41', NULL, NULL),
(24, 201, 'Chagai Sub', 'cha54', '2018-10-17 13:29:41', NULL, NULL),
(25, 201, 'Dalbadin', 'dal25', '2018-10-17 13:29:41', NULL, NULL),
(26, 201, 'Naukandi', 'nau66', '2018-10-17 13:29:41', NULL, NULL),
(27, 201, 'Taftan', 'taf56', '2018-10-17 13:29:41', NULL, NULL),
(28, 202, 'Bekerh', 'bek81', '2018-10-17 13:29:41', NULL, NULL),
(29, 202, 'Dera Bughti', 'der38', '2018-10-17 13:29:41', NULL, NULL),
(30, 202, 'Loti Sub', 'lot47', '2018-10-17 13:29:41', NULL, NULL),
(31, 202, 'Malum', 'mal19', '2018-10-17 13:29:41', NULL, NULL),
(32, 202, 'Phelawagh', 'phe56', '2018-10-17 13:29:41', NULL, NULL),
(33, 202, 'Pir Koh', 'pir23', '2018-10-17 13:29:41', NULL, NULL),
(34, 202, 'Sangsilla', 'san48', '2018-10-17 13:29:41', NULL, NULL),
(35, 202, 'Sui', 'sui71', '2018-10-17 13:29:41', NULL, NULL),
(36, 203, 'Gwadar', 'gwa10', '2018-10-17 13:29:41', NULL, NULL),
(37, 203, 'Jiwani', 'jiw36', '2018-10-17 13:29:41', NULL, NULL),
(38, 203, 'Ormara', 'orm49', '2018-10-17 13:29:41', NULL, NULL),
(39, 203, 'Pasni', 'pas38', '2018-10-17 13:29:41', NULL, NULL),
(40, 203, 'Sunstar Sub', 'sun45', '2018-10-17 13:29:41', NULL, NULL),
(41, 204, 'Harnai', 'har98', '2018-10-17 13:29:41', NULL, NULL),
(42, 204, 'Khost', 'kho93', '2018-10-17 13:29:41', NULL, NULL),
(43, 204, 'Shahrig', 'sha19', '2018-10-17 13:29:41', NULL, NULL),
(44, 205, 'Ghandakha', 'gha69', '2018-10-17 13:29:41', NULL, NULL),
(45, 205, 'Jhat Pat', 'jha89', '2018-10-17 13:29:41', NULL, NULL),
(46, 205, 'Sohbatpur', 'soh36', '2018-10-17 13:29:41', NULL, NULL),
(47, 356, 'Usta Muhammad', 'ust12', '2018-10-17 13:29:41', NULL, NULL),
(48, 206, 'Gandawa', 'gan53', '2018-10-17 13:29:41', NULL, NULL),
(49, 206, 'Jhal Magsi', 'jha31', '2018-10-17 13:29:41', NULL, NULL),
(50, 206, 'Mirpur Sub', 'mir93', '2018-10-17 13:29:41', NULL, NULL),
(51, 216, 'Bhag', 'bha75', '2018-10-17 13:29:41', NULL, NULL),
(52, 207, 'Balanari Sub', 'bal95', '2018-10-17 13:29:41', NULL, NULL),
(53, 207, 'Dhadar', 'dha50', '2018-10-17 13:29:41', NULL, NULL),
(54, 207, 'Khattan Sub', 'khatt', '2018-10-17 13:29:41', NULL, NULL),
(55, 207, 'Mach Sub', 'mac77', '2018-10-17 13:29:41', NULL, NULL),
(56, 207, 'Sanni Sub', 'san89', '2018-10-17 13:29:41', NULL, NULL),
(57, 208, 'Gazg', 'gaz13', '2018-10-17 13:29:41', NULL, NULL),
(58, 208, 'Johan', 'joh98', '2018-10-17 13:29:41', NULL, NULL),
(59, 208, 'Kalat', 'kal52', '2018-10-17 13:29:41', NULL, NULL),
(60, 208, 'Mango Char', 'man67', '2018-10-17 13:29:41', NULL, NULL),
(61, 208, 'Surab', 'sur78', '2018-10-17 13:29:41', NULL, NULL),
(62, 209, 'Balnigor', 'bal88', '2018-10-17 13:29:41', NULL, NULL),
(63, 209, 'Buleda', 'bul810', '2018-10-17 13:29:41', NULL, NULL),
(64, 209, 'Dasht', 'das74', '2018-10-17 13:29:41', NULL, NULL),
(65, 209, 'Hoshab', 'hos47', '2018-10-17 13:29:41', NULL, NULL),
(66, 209, 'Kech', 'kec14', '2018-10-17 13:29:41', NULL, NULL),
(67, 209, 'Mand', 'man30', '2018-10-17 13:29:41', NULL, NULL),
(68, 209, 'Tump', 'tum51', '2018-10-17 13:29:41', NULL, NULL),
(69, 209, 'Zamuran', 'zam36', '2018-10-17 13:29:41', NULL, NULL),
(70, 210, 'Kharan', 'kha90', '2018-10-17 13:29:41', NULL, NULL),
(71, 211, 'Aranji Sub', 'ara22', '2018-10-17 13:29:41', NULL, NULL),
(72, 211, 'Karkah Sub', 'kar10', '2018-10-17 13:29:41', NULL, NULL),
(73, 211, 'Khuzdar', 'khu85', '2018-10-17 13:29:41', NULL, NULL),
(74, 211, 'Moola Sub', 'moo96', '2018-10-17 13:29:41', NULL, NULL),
(75, 211, 'Nal Sub', 'nal25', '2018-10-17 13:29:41', NULL, NULL),
(76, 211, 'Ornach Sub', 'orn37', '2018-10-17 13:29:41', NULL, NULL),
(77, 211, 'Saroona Sub', 'sar87', '2018-10-17 13:29:41', NULL, NULL),
(78, 211, 'Wadh Sub', 'wad30', '2018-10-17 13:29:41', NULL, NULL),
(79, 211, 'Zehri', 'zeh25', '2018-10-17 13:29:41', NULL, NULL),
(80, 212, 'Chaman', 'cha34', '2018-10-17 13:29:41', NULL, NULL),
(81, 212, 'Dobandi Sub-', 'dob95', '2018-10-17 13:29:41', NULL, NULL),
(82, 212, 'Gulistan', 'gul75', '2018-10-17 13:29:41', NULL, NULL),
(83, 212, 'Killa Abdullah', 'kil88', '2018-10-17 13:29:41', NULL, NULL),
(84, 213, 'Badini', 'bad16', '2018-10-17 13:29:41', NULL, NULL),
(85, 213, 'Kan Mehtarzai', 'kan15', '2018-10-17 13:29:41', NULL, NULL),
(86, 213, 'Killa Saifullah', 'kil26', '2018-10-17 13:29:41', NULL, NULL),
(87, 213, 'Loi Band', 'loi85', '2018-10-17 13:29:41', NULL, NULL),
(88, 213, 'Muslim Bagh', 'mus47', '2018-10-17 13:29:41', NULL, NULL),
(89, 213, 'Shinkai', 'shi79', '2018-10-17 13:29:41', NULL, NULL),
(90, 214, 'Girsani Sub', 'gir53', '2018-10-17 13:29:41', NULL, NULL),
(91, 214, 'Kahan', 'kah31', '2018-10-17 13:29:41', NULL, NULL),
(92, 214, 'Kohlu', 'koh97', '2018-10-17 13:29:41', NULL, NULL),
(93, 214, 'Mawand', 'maw88', '2018-10-17 13:29:41', NULL, NULL),
(94, 215, 'Bela', 'bel53', '2018-10-17 13:29:41', NULL, NULL),
(95, 215, 'Durji', 'dur99', '2018-10-17 13:29:41', NULL, NULL),
(96, 215, 'Gaddani', 'gad36', '2018-10-17 13:29:41', NULL, NULL),
(97, 215, 'Hub', 'hub84', '2018-10-17 13:29:41', NULL, NULL),
(98, 215, 'Kanraj', 'kan13', '2018-10-17 13:29:41', NULL, NULL),
(99, 215, 'Lakhra', 'lak11', '2018-10-17 13:29:41', NULL, NULL),
(100, 215, 'Liari', 'lia17', '2018-10-17 13:29:41', NULL, NULL),
(101, 215, 'Sonmiani', 'son51', '2018-10-17 13:29:41', NULL, NULL),
(102, 215, 'Uthal', 'uth50', '2018-10-17 13:29:41', NULL, NULL),
(103, 217, 'Duki', 'duk70', '2018-10-17 13:29:41', NULL, NULL),
(104, 217, 'Loralai', 'lor34', '2018-10-17 13:29:41', NULL, NULL),
(105, 217, 'Mekhtar', 'mek62', '2018-10-17 13:29:41', NULL, NULL),
(106, 218, 'Dasht', 'das910', '2018-10-17 13:29:41', NULL, NULL),
(107, 218, 'Khad Kocha Sub-', 'kha58', '2018-10-17 13:29:41', NULL, NULL),
(108, 218, 'Kirdgap Sub-', 'kir61', '2018-10-17 13:29:41', NULL, NULL),
(109, 218, 'Mastung', 'mas34', '2018-10-17 13:29:41', NULL, NULL),
(110, 219, 'Drug Sub', 'dru86', '2018-10-17 13:29:41', NULL, NULL),
(111, 219, 'Kingri', 'kin28', '2018-10-17 13:29:41', NULL, NULL),
(112, 219, 'Musa Khel', 'mus83', '2018-10-17 13:29:41', NULL, NULL),
(113, 220, 'Baba Kot', 'bab31', '2018-10-17 13:29:41', NULL, NULL),
(114, 220, 'Chattar', 'cha410', '2018-10-17 13:29:41', NULL, NULL),
(115, 220, 'Dera Murad Jamali', 'der30', '2018-10-17 13:29:41', NULL, NULL),
(116, 220, 'Tamboo', 'tam36', '2018-10-17 13:29:41', NULL, NULL),
(117, 221, 'Dak ', 'dak89', '2018-10-17 13:29:41', NULL, NULL),
(118, 221, 'Nushki ', 'nus38', '2018-10-17 13:29:41', NULL, NULL),
(119, 222, 'Gichk', 'gic23', '2018-10-17 13:29:41', NULL, NULL),
(120, 222, 'Gowargo', 'gow28', '2018-10-17 13:29:41', NULL, NULL),
(121, 222, 'Panjgur', 'pan40', '2018-10-17 13:29:41', NULL, NULL),
(122, 222, 'Parome', 'par94', '2018-10-17 13:29:41', NULL, NULL),
(123, 223, 'Barshore', 'bar48', '2018-10-17 13:29:41', NULL, NULL),
(124, 223, 'Huramzai', 'hur60', '2018-10-17 13:29:41', NULL, NULL),
(125, 223, 'Karezat', 'kar57', '2018-10-17 13:29:41', NULL, NULL),
(126, 223, 'Pishin', 'pis63', '2018-10-17 13:29:41', NULL, NULL),
(127, 223, 'Saranan', 'sar56', '2018-10-17 13:29:41', NULL, NULL),
(128, 224, 'Panj Pai Sub', 'pan63', '2018-10-17 13:29:41', NULL, NULL),
(129, 224, 'Quetta City', 'que48', '2018-10-17 13:29:41', NULL, NULL),
(130, 224, 'Quetta Saddar', 'que51', '2018-10-17 13:29:41', NULL, NULL),
(131, 225, 'Sheerani', 'she910', '2018-10-17 13:29:41', NULL, NULL),
(132, 226, 'Kut Mandai', 'kut93', '2018-10-17 13:29:41', NULL, NULL),
(133, 216, 'Lehri', 'leh38', '2018-10-17 13:29:41', NULL, NULL),
(134, 226, 'Sangan', 'san13', '2018-10-17 13:29:41', NULL, NULL),
(135, 226, 'Sibi', 'sib50', '2018-10-17 13:29:41', NULL, NULL),
(136, 228, 'Besima', 'bes90', '2018-10-17 13:29:41', NULL, NULL),
(137, 228, 'Mashkhel', 'mas98', '2018-10-17 13:29:41', NULL, NULL),
(138, 228, 'Nag', 'nag62', '2018-10-17 13:29:41', NULL, NULL),
(139, 228, 'Shahdo Garhi Sub', 'sha16', '2018-10-17 13:29:41', NULL, NULL),
(140, 228, 'Washuk', 'was95', '2018-10-17 13:29:41', NULL, NULL),
(141, 229, 'Ashwat Sub-', 'ash26', '2018-10-17 13:29:41', NULL, NULL),
(142, 229, 'Kashatoo Sub-', 'kas46', '2018-10-17 13:29:41', NULL, NULL),
(143, 229, 'Qamar Din Karez', 'qam51', '2018-10-17 13:29:41', NULL, NULL),
(144, 229, 'Sambaza Sub', 'sam18', '2018-10-17 13:29:41', NULL, NULL),
(145, 229, 'Zhob', 'zho34', '2018-10-17 13:29:41', NULL, NULL),
(146, 230, 'Sinjawi Sub', 'sin19', '2018-10-17 13:29:41', NULL, NULL),
(147, 230, 'Ziarat Sub Division', 'zia93', '2018-10-17 13:29:41', NULL, NULL),
(148, 138, 'Bar Chamarkand', 'bar81', '2018-10-17 13:29:41', NULL, NULL),
(149, 138, 'Barang', 'bar62', '2018-10-17 13:29:41', NULL, NULL),
(150, 138, 'Khar', 'kha87', '2018-10-17 13:29:41', NULL, NULL),
(151, 138, 'Mamund', 'mam48', '2018-10-17 13:29:41', NULL, NULL),
(152, 138, 'Nawagai', 'naw78', '2018-10-17 13:29:41', NULL, NULL),
(153, 138, 'Salarzai', 'sal45', '2018-10-17 13:29:41', NULL, NULL),
(154, 138, 'Utman Khel', 'utm90', '2018-10-17 13:29:41', NULL, NULL),
(155, 140, 'Bara', 'bar16', '2018-10-17 13:29:41', NULL, NULL),
(156, 140, 'Jamrud', 'jam12', '2018-10-17 13:29:41', NULL, NULL),
(157, 140, 'Landi Kotal', 'lan13', '2018-10-17 13:29:41', NULL, NULL),
(158, 140, 'Central Kurram', 'cen26', '2018-10-17 13:29:41', NULL, NULL),
(159, 140, 'Lower Kurram', 'low90', '2018-10-17 13:29:41', NULL, NULL),
(160, 140, 'Upper Kurram', 'upp75', '2018-10-17 13:29:41', NULL, NULL),
(161, 142, 'Ambar Utman Khel', 'amb24', '2018-10-17 13:29:41', NULL, NULL),
(162, 142, 'Halimzai', 'hal88', '2018-10-17 13:29:41', NULL, NULL),
(163, 142, 'Pindiali', 'pin31', '2018-10-17 13:29:41', NULL, NULL),
(164, 142, 'Prang Ghar', 'pra92', '2018-10-17 13:29:41', NULL, NULL),
(165, 142, 'Safi', 'saf66', '2018-10-17 13:29:41', NULL, NULL),
(166, 142, 'Upper Momand', 'upp55', '2018-10-17 13:29:41', NULL, NULL),
(167, 142, 'Yaka Ghund', 'yak76', '2018-10-17 13:29:41', NULL, NULL),
(168, 143, 'Data Khel', 'dat16', '2018-10-17 13:29:41', NULL, NULL),
(169, 143, 'Dossali', 'dos53', '2018-10-17 13:29:41', NULL, NULL),
(170, 143, 'Garyum', 'gar15', '2018-10-17 13:29:41', NULL, NULL),
(171, 143, 'Ghulam Khan', 'ghu15', '2018-10-17 13:29:41', NULL, NULL),
(172, 143, 'Mir Ali', 'mir32', '2018-10-17 13:29:41', NULL, NULL),
(173, 143, 'Miran Shah', 'mir14', '2018-10-17 13:29:41', NULL, NULL),
(174, 143, 'Razmak', 'raz76', '2018-10-17 13:29:41', NULL, NULL),
(175, 143, 'Shewa', 'she37', '2018-10-17 13:29:41', NULL, NULL),
(176, 143, 'Spinwam', 'spi58', '2018-10-17 13:29:41', NULL, NULL),
(177, 144, 'Central Orakzai', 'cen77', '2018-10-17 13:29:41', NULL, NULL),
(178, 144, 'Ismailzai', 'ism14', '2018-10-17 13:29:41', NULL, NULL),
(179, 144, 'Lower Orakzai', 'low36', '2018-10-17 13:29:41', NULL, NULL),
(180, 144, 'Upper Orakzai', 'upp40', '2018-10-17 13:29:41', NULL, NULL),
(181, 145, 'Birmal', 'bir91', '2018-10-17 13:29:41', NULL, NULL),
(182, 145, 'Ladha', 'lad33', '2018-10-17 13:29:41', NULL, NULL),
(183, 145, 'Makin', 'mak94', '2018-10-17 13:29:41', NULL, NULL),
(184, 145, 'Saraogha', 'sar72', '2018-10-17 13:29:41', NULL, NULL),
(185, 145, 'Serwekai', 'ser78', '2018-10-17 13:29:41', NULL, NULL),
(186, 145, 'Tiarza', 'tia74', '2018-10-17 13:29:41', NULL, NULL),
(187, 145, 'Toi Khulla', 'toi36', '2018-10-17 13:29:41', NULL, NULL),
(188, 357, 'Wana', 'wan56', '2018-10-17 13:29:41', NULL, NULL),
(189, 326, 'Islamabad', 'isl75', '2018-10-17 13:29:41', NULL, NULL),
(190, 298, 'Astore', 'ast76', '2018-10-17 13:29:41', NULL, NULL),
(191, 299, 'Chilas', 'chi89', '2018-10-17 13:29:41', NULL, NULL),
(192, 299, 'Darel', 'dar20', '2018-10-17 13:29:41', NULL, NULL),
(193, 296, 'Khaplu', 'kha74', '2018-10-17 13:29:41', NULL, NULL),
(194, 296, 'Mashabrum', 'mas12', '2018-10-17 13:29:41', NULL, NULL),
(195, 300, 'Gupis', 'gup38', '2018-10-17 13:29:41', NULL, NULL),
(196, 300, 'Ishkomen', 'ish55', '2018-10-17 13:29:41', NULL, NULL),
(197, 300, 'Punial', 'pun59', '2018-10-17 13:29:41', NULL, NULL),
(198, 300, 'Yasin', 'yas29', '2018-10-17 13:29:41', NULL, NULL),
(199, 301, 'Gilgit', 'gil68', '2018-10-17 13:29:41', NULL, NULL),
(200, 302, 'Aliabad', 'ali53', '2018-10-17 13:29:41', NULL, NULL),
(201, 302, 'Gojal', 'goj62', '2018-10-17 13:29:41', NULL, NULL),
(202, 302, 'Nagar-I', 'nag53', '2018-10-17 13:29:41', NULL, NULL),
(203, 302, 'Nagar-Ii', 'nag76', '2018-10-17 13:29:41', NULL, NULL),
(204, 297, 'Gultari', 'gul21', '2018-10-17 13:29:41', NULL, NULL),
(205, 297, 'Kharmang', 'kha78', '2018-10-17 13:29:41', NULL, NULL),
(206, 297, 'Rondu', 'ron28', '2018-10-17 13:29:41', NULL, NULL),
(207, 297, 'Shigar', 'shi68', '2018-10-17 13:29:41', NULL, NULL),
(208, 297, 'Skardu', 'ska47', '2018-10-17 13:29:41', NULL, NULL),
(209, 8, 'Abbottabad', 'abb16', '2018-10-17 13:29:41', NULL, NULL),
(210, 8, 'Havelian', 'hav40', '2018-10-17 13:29:41', NULL, NULL),
(211, 4, 'Bannu', 'ban52', '2018-10-17 13:29:41', NULL, NULL),
(212, 4, 'Domel', 'dom40', '2018-10-17 13:29:41', NULL, NULL),
(213, 9, 'Alai', 'ala42', '2018-10-17 13:29:41', NULL, NULL),
(214, 9, 'Batagram', 'bat91', '2018-10-17 13:29:41', NULL, NULL),
(215, 10, 'Daggar', 'dag29', '2018-10-17 13:29:41', NULL, NULL),
(216, 10, 'Gagra', 'gag70', '2018-10-17 13:29:41', NULL, NULL),
(217, 10, 'Khado Khel', 'khakh', '2018-10-17 13:29:41', NULL, NULL),
(218, 3, 'Charsadda', 'cha21', '2018-10-17 13:29:41', NULL, NULL),
(219, 3, 'Shabqadar', 'sha31', '2018-10-17 13:29:41', NULL, NULL),
(220, 3, 'Tangi', 'tan56', '2018-10-17 13:29:41', NULL, NULL),
(221, 11, 'Chitral', 'chi68', '2018-10-17 13:29:41', NULL, NULL),
(222, 11, 'Mastuj', 'mas73', '2018-10-17 13:29:41', NULL, NULL),
(223, 5, 'D.I.Khan', 'd.i62', '2018-10-17 13:29:41', NULL, NULL),
(224, 5, 'Daraban', 'dar88', '2018-10-17 13:29:41', NULL, NULL),
(225, 5, 'Kulachi', 'kul56', '2018-10-17 13:29:41', NULL, NULL),
(226, 5, 'Paharpur', 'pah18', '2018-10-17 13:29:41', NULL, NULL),
(227, 5, 'Paroa', 'par19', '2018-10-17 13:29:41', NULL, NULL),
(228, 12, 'Hangu', 'han41', '2018-10-17 13:29:41', NULL, NULL),
(229, 12, 'Tall', 'tal51', '2018-10-17 13:29:41', NULL, NULL),
(230, 13, 'Ghazi', 'gha29', '2018-10-17 13:29:41', NULL, NULL),
(231, 13, 'Haripur', 'har93', '2018-10-17 13:29:41', NULL, NULL),
(232, 14, 'Banda Daud Shah', 'ban76', '2018-10-17 13:29:41', NULL, NULL),
(233, 14, 'Karak', 'kar30', '2018-10-17 13:29:41', NULL, NULL),
(234, 14, 'Takht E Nasrati', 'tak85', '2018-10-17 13:29:41', NULL, NULL),
(235, 15, 'Kohat', 'koh17', '2018-10-17 13:29:41', NULL, NULL),
(236, 15, 'Lachi', 'lac30', '2018-10-17 13:29:41', NULL, NULL),
(237, 16, 'Dassu', 'das97', '2018-10-17 13:29:41', NULL, NULL),
(238, 16, 'Kandia', 'kan98', '2018-10-17 13:29:41', NULL, NULL),
(239, 198, 'Palas', 'pal96', '2018-10-17 13:29:41', NULL, NULL),
(240, 26, 'Pattan', 'pat88', '2018-10-17 13:29:41', NULL, NULL),
(241, 17, 'Lakki Marwat', 'lak51', '2018-10-17 13:29:41', NULL, NULL),
(242, 17, 'Naurang', 'nau93', '2018-10-17 13:29:41', NULL, NULL),
(243, 7, 'Adenzai', 'ade12', '2018-10-17 13:29:41', NULL, NULL),
(244, 7, 'Lalqilla', 'lal81', '2018-10-17 13:29:41', NULL, NULL),
(245, 7, 'Munda', 'mun70', '2018-10-17 13:29:41', NULL, NULL),
(246, 7, 'Samarbagh (Barwa)', 'sam69', '2018-10-17 13:29:41', NULL, NULL),
(247, 7, 'Temergara', 'tem22', '2018-10-17 13:29:41', NULL, NULL),
(248, 18, 'Sam Ranizai', 'sam89', '2018-10-17 13:29:41', NULL, NULL),
(249, 18, 'Swat Ranizai', 'swa81', '2018-10-17 13:29:41', NULL, NULL),
(250, 19, 'Balakot', 'bal39', '2018-10-17 13:29:41', NULL, NULL),
(251, 19, 'Mansehra', 'man50', '2018-10-17 13:29:41', NULL, NULL),
(252, 19, 'Oghi', 'ogh34', '2018-10-17 13:29:41', NULL, NULL),
(253, 2, 'Katlang', 'kat18', '2018-10-17 13:29:41', NULL, NULL),
(254, 2, 'Mardan', 'mar91', '2018-10-17 13:29:41', NULL, NULL),
(255, 2, 'Takht Bhai', 'tak98', '2018-10-17 13:29:41', NULL, NULL),
(256, 20, 'Nowshera', 'now17', '2018-10-17 13:29:41', NULL, NULL),
(257, 20, 'Pabbi', 'pab90', '2018-10-17 13:29:41', NULL, NULL),
(258, 21, 'Alpuri', 'alp06', '2018-10-17 13:29:41', NULL, NULL),
(259, 21, 'Bisham', 'bis31', '2018-10-17 13:29:41', NULL, NULL),
(260, 21, 'Chiksar', 'chi55', '2018-10-17 13:29:41', NULL, NULL),
(261, 21, 'Martung', 'mar82', '2018-10-17 13:29:41', NULL, NULL),
(262, 21, 'Puran', 'pur43', '2018-10-17 13:29:41', NULL, NULL),
(263, 22, 'Lahor', 'lah69', '2018-10-17 13:29:41', NULL, NULL),
(264, 22, 'Razar', 'raz18', '2018-10-17 13:29:41', NULL, NULL),
(265, 22, 'Swabi', 'swa83', '2018-10-17 13:29:41', NULL, NULL),
(266, 22, 'Topi', 'top62', '2018-10-17 13:29:41', NULL, NULL),
(267, 23, 'Babuzai', 'bab60', '2018-10-17 13:29:41', NULL, NULL),
(268, 23, 'Bahrain', 'bah14', '2018-10-17 13:29:41', NULL, NULL),
(269, 23, 'Barikot', 'bar88', '2018-10-17 13:29:41', NULL, NULL),
(270, 23, 'Charbagh', 'cha77', '2018-10-17 13:29:41', NULL, NULL),
(271, 23, 'Kabal', 'kab42', '2018-10-17 13:29:41', NULL, NULL),
(272, 23, 'Khawaza Khela', 'kha46', '2018-10-17 13:29:41', NULL, NULL),
(273, 23, 'Matta', 'mat96', '2018-10-17 13:29:41', NULL, NULL),
(274, 24, 'Tank', 'tan69', '2018-10-17 13:29:41', NULL, NULL),
(275, 25, 'Torghar', 'tor55', '2018-10-17 13:29:41', NULL, NULL),
(276, 6, 'Dir', 'dir70', '2018-10-17 13:29:41', NULL, NULL),
(277, 6, 'Sharingal', 'sha86', '2018-10-17 13:29:41', NULL, NULL),
(278, 6, 'Wari', 'war18', '2018-10-17 13:29:41', NULL, NULL),
(279, 1, 'Badahber', 'pes01', '2018-10-17 13:29:41', NULL, NULL),
(280, 1, 'Chamkani', 'pes02', '2018-10-17 13:29:41', NULL, NULL),
(281, 1, 'City', 'pes03', '2018-10-17 13:29:41', NULL, NULL),
(282, 1, 'Hassan Khel', 'pes04', '2018-10-17 13:29:41', NULL, NULL),
(283, 1, 'Mathra', 'pcantt', '2018-10-17 13:29:41', NULL, NULL),
(284, 231, 'Pindi Gheb', 'pin78', '2018-10-17 13:29:41', NULL, NULL),
(285, 232, 'Bahawalnagar', 'bah76', '2018-10-17 13:29:41', NULL, NULL),
(286, 232, 'Chishtian', 'chi47', '2018-10-17 13:29:41', NULL, NULL),
(287, 232, 'Fort Abbas', 'for57', '2018-10-17 13:29:41', NULL, NULL),
(288, 232, 'Haroonabad', 'har84', '2018-10-17 13:29:41', NULL, NULL),
(289, 232, 'Minchinabad', 'min510', '2018-10-17 13:29:41', NULL, NULL),
(290, 233, 'Ahmadpur East', 'ahm73', '2018-10-17 13:29:41', NULL, NULL),
(291, 233, 'Bahawalpur', 'bah51', '2018-10-17 13:29:41', NULL, NULL),
(292, 233, 'Bahawalpur City', 'bah37', '2018-10-17 13:29:41', NULL, NULL),
(293, 233, 'Hasilpur', 'has30', '2018-10-17 13:29:41', NULL, NULL),
(294, 233, 'Khairpur Tamewali', 'kha38', '2018-10-17 13:29:41', NULL, NULL),
(295, 233, 'Yazman', 'yaz27', '2018-10-17 13:29:41', NULL, NULL),
(296, 234, 'Bhakkar', 'bha94', '2018-10-17 13:29:41', NULL, NULL),
(297, 234, 'Darya Khan', 'dar66', '2018-10-17 13:29:41', NULL, NULL),
(298, 234, 'Kalur Kot', 'kal47', '2018-10-17 13:29:41', NULL, NULL),
(299, 234, 'Mankera', 'man38', '2018-10-17 13:29:41', NULL, NULL),
(300, 235, 'Chakwal', 'cha49', '2018-10-17 13:29:41', NULL, NULL),
(301, 235, 'Choa Saidan Shah', 'cho32', '2018-10-17 13:29:41', NULL, NULL),
(302, 235, 'Kallar Kahar', 'kal13', '2018-10-17 13:29:41', NULL, NULL),
(303, 358, 'Tala Gang', 'tal69', '2018-10-17 13:29:41', NULL, NULL),
(304, 236, 'Bhawana', 'bha56', '2018-10-17 13:29:41', NULL, NULL),
(305, 236, 'Chiniot', 'chi20', '2018-10-17 13:29:41', NULL, NULL),
(306, 236, 'Lalian', 'lal84', '2018-10-17 13:29:41', NULL, NULL),
(307, 237, 'De-Excluded Area D.G.Khan', 'de-61', '2018-10-17 13:29:41', NULL, NULL),
(308, 237, 'Dera Ghazi Khan', 'der52', '2018-10-17 13:29:41', NULL, NULL),
(309, 237, 'Taunsa', 'tau75', '2018-10-17 13:29:41', NULL, NULL),
(310, 238, 'Chak Jhumra', 'cha22', '2018-10-17 13:29:41', NULL, NULL),
(311, 238, 'Faisalabad City', 'fai86', '2018-10-17 13:29:41', NULL, NULL),
(312, 238, 'Faisalabad Saddar', 'fai62', '2018-10-17 13:29:41', NULL, NULL),
(313, 238, 'Jaranwala', 'jar54', '2018-10-17 13:29:41', NULL, NULL),
(314, 238, 'Samundari', 'sam81', '2018-10-17 13:29:41', NULL, NULL),
(315, 238, 'Tandlianwala', 'tan45', '2018-10-17 13:29:41', NULL, NULL),
(316, 239, 'Gujranwala', 'guj84', '2018-10-17 13:29:41', NULL, NULL),
(317, 239, 'Gujranwala City', 'guj81', '2018-10-17 13:29:41', NULL, NULL),
(318, 239, 'Kamoke', 'kam56', '2018-10-17 13:29:41', NULL, NULL),
(319, 239, 'Nowshera Virkhan', 'now34', '2018-10-17 13:29:41', NULL, NULL),
(320, 239, 'Wazirabad', 'waz510', '2018-10-17 13:29:41', NULL, NULL),
(321, 240, 'Gujrat', 'guj24', '2018-10-17 13:29:41', NULL, NULL),
(322, 240, 'Kharian', 'kha20', '2018-10-17 13:29:41', NULL, NULL),
(323, 240, 'Sarai Alamgir', 'sar41', '2018-10-17 13:29:41', NULL, NULL),
(324, 241, 'Hafizabad', 'haf97', '2018-10-17 13:29:41', NULL, NULL),
(325, 241, 'Pindi Bhattian', 'pin61', '2018-10-17 13:29:41', NULL, NULL),
(326, 242, '18-Hazari', 'hazari', '2018-10-17 13:29:41', NULL, NULL),
(327, 242, 'Ahmedpur Sial', 'ahm87', '2018-10-17 13:29:41', NULL, NULL),
(328, 242, 'Jhang', 'jha94', '2018-10-17 13:29:41', NULL, NULL),
(329, 242, 'Shorkot', 'sho93', '2018-10-17 13:29:41', NULL, NULL),
(330, 243, 'Dina', 'din61', '2018-10-17 13:29:41', NULL, NULL),
(331, 243, 'Jhelum', 'jhe78', '2018-10-17 13:29:41', NULL, NULL),
(332, 243, 'Pind Dadan Khan', 'pin72', '2018-10-17 13:29:41', NULL, NULL),
(333, 243, 'Sohawa', 'soh13', '2018-10-17 13:29:41', NULL, NULL),
(334, 244, 'Chunian', 'chu85', '2018-10-17 13:29:41', NULL, NULL),
(335, 244, 'Kasur', 'kas21', '2018-10-17 13:29:41', NULL, NULL),
(336, 244, 'Kot Radha Kishan', 'kot52', '2018-10-17 13:29:41', NULL, NULL),
(337, 244, 'Pattoki', 'pat95', '2018-10-17 13:29:41', NULL, NULL),
(338, 245, 'Jahanian', 'jah21', '2018-10-17 13:29:41', NULL, NULL),
(339, 245, 'Kabirwala', 'kab19', '2018-10-17 13:29:41', NULL, NULL),
(340, 245, 'Khanewal', 'kha32', '2018-10-17 13:29:41', NULL, NULL),
(341, 246, 'Khushab', 'khu59', '2018-10-17 13:29:41', NULL, NULL),
(342, 246, 'Noorpur', 'noo26', '2018-10-17 13:29:41', NULL, NULL),
(343, 246, 'Qaidabad', 'qai17', '2018-10-17 13:29:41', NULL, NULL),
(344, 247, 'Lahore Cantt', 'lcant', '2018-10-17 13:29:41', NULL, NULL),
(345, 247, 'Lahore City', 'lcity', '2018-10-17 13:29:41', NULL, NULL),
(346, 248, 'Chaubara', 'cha01', '2018-10-17 13:29:41', NULL, NULL),
(347, 248, 'Karor Lal Esan', 'kar96', '2018-10-17 13:29:41', NULL, NULL),
(348, 248, 'Layyah', 'lay45', '2018-10-17 13:29:41', NULL, NULL),
(349, 249, 'Dunya Pur', 'dun37', '2018-10-17 13:29:41', NULL, NULL),
(350, 249, 'Karorpacca', 'kar49', '2018-10-17 13:29:41', NULL, NULL),
(351, 249, 'Lodhran', 'lod34', '2018-10-17 13:29:41', NULL, NULL),
(352, 250, 'Malakwal', 'mal25', '2018-10-17 13:29:41', NULL, NULL),
(353, 250, 'Mandi Bahauddin', 'man21', '2018-10-17 13:29:41', NULL, NULL),
(354, 250, 'Phalia', 'pha30', '2018-10-17 13:29:41', NULL, NULL),
(355, 251, 'Isakhel', 'isa86', '2018-10-17 13:29:41', NULL, NULL),
(356, 251, 'Mianwali', 'mia41', '2018-10-17 13:29:41', NULL, NULL),
(357, 251, 'Piplan', 'pip49', '2018-10-17 13:29:41', NULL, NULL),
(358, 252, 'Jalalpur Pirwala', 'jal19', '2018-10-17 13:29:41', NULL, NULL),
(359, 252, 'Multan City', 'mul51', '2018-10-17 13:29:41', NULL, NULL),
(360, 252, 'Multan Saddar', 'mul97', '2018-10-17 13:29:41', NULL, NULL),
(361, 252, 'Shujabad', 'shu33', '2018-10-17 13:29:41', NULL, NULL),
(362, 253, 'Alipur', 'ali73', '2018-10-17 13:29:41', NULL, NULL),
(363, 253, 'Jatoi', 'jat67', '2018-10-17 13:29:41', NULL, NULL),
(364, 253, 'Kot Addu', 'kot14', '2018-10-17 13:29:41', NULL, NULL),
(365, 253, 'Muzaffargarh', 'muz70', '2018-10-17 13:29:41', NULL, NULL),
(366, 255, 'Nankana Sahab', 'nan88', '2018-10-17 13:29:41', NULL, NULL),
(367, 263, 'Safdarabad', 'saf28', '2018-10-17 13:29:41', NULL, NULL),
(368, 255, 'Shah Kot', 'sha17', '2018-10-17 13:29:41', NULL, NULL),
(369, 255, 'Shangla Hill', 'sha55', '2018-10-17 13:29:41', NULL, NULL),
(370, 254, 'Narowal', 'nar59', '2018-10-17 13:29:41', NULL, NULL),
(371, 254, 'Shakargarh', 'sha87', '2018-10-17 13:29:41', NULL, NULL),
(372, 254, 'Zafarwal', 'zaf61', '2018-10-17 13:29:41', NULL, NULL),
(373, 256, 'Depalpur', 'dep41', '2018-10-17 13:29:41', NULL, NULL),
(374, 256, 'Okara', 'oka23', '2018-10-17 13:29:41', NULL, NULL),
(375, 256, 'Renala Khurd', 'ren91', '2018-10-17 13:29:41', NULL, NULL),
(376, 257, 'Arifwala', 'ari85', '2018-10-17 13:29:41', NULL, NULL),
(377, 257, 'Pak Pattan', 'pak54', '2018-10-17 13:29:41', NULL, NULL),
(378, 258, 'Khan Pur', 'kha16', '2018-10-17 13:29:41', NULL, NULL),
(379, 258, 'Liaqat Pur', 'lia15', '2018-10-17 13:29:41', NULL, NULL),
(380, 258, 'Rahim Yar Khan', 'rah28', '2018-10-17 13:29:41', NULL, NULL),
(381, 258, 'Sadiqabad', 'sad97', '2018-10-17 13:29:41', NULL, NULL),
(382, 259, 'De-Excluded Area Rajanpur', 'de-99', '2018-10-17 13:29:41', NULL, NULL),
(383, 259, 'Jampur', 'jam69', '2018-10-17 13:29:41', NULL, NULL),
(384, 259, 'Rajanpur', 'raj32', '2018-10-17 13:29:41', NULL, NULL),
(385, 259, 'Rojhan', 'roj44', '2018-10-17 13:29:41', NULL, NULL),
(386, 260, 'Gujar Khan', 'guj21', '2018-10-17 13:29:41', NULL, NULL),
(387, 260, 'Kahuta', 'kah73', '2018-10-17 13:29:41', NULL, NULL),
(388, 260, 'Kallar Sayyedan', 'kal410', '2018-10-17 13:29:41', NULL, NULL),
(389, 260, 'Kotli Sattian', 'kot02', '2018-10-17 13:29:41', NULL, NULL),
(390, 260, 'Murree', 'mur88', '2018-10-17 13:29:41', NULL, NULL),
(391, 260, 'Rawalpindi', 'raw41', '2018-10-17 13:29:41', NULL, NULL),
(392, 260, 'Taxila', 'tax41', '2018-10-17 13:29:41', NULL, NULL),
(393, 261, 'Chichawatni', 'chi84', '2018-10-17 13:29:41', NULL, NULL),
(394, 261, 'Sahiwal', 'sah93', '2018-10-17 13:29:41', NULL, NULL),
(395, 262, 'Bhalwal', 'bha17', '2018-10-17 13:29:41', NULL, NULL),
(396, 262, 'Kot Momin', 'kot31', '2018-10-17 13:29:41', NULL, NULL),
(397, 262, 'Sahiwal', 'sah66', '2018-10-17 13:29:41', NULL, NULL),
(398, 262, 'Sargodha', 'sar20', '2018-10-17 13:29:41', NULL, NULL),
(399, 262, 'Shahpur', 'sha10', '2018-10-17 13:29:41', NULL, NULL),
(400, 262, 'Sillanwali', 'sil52', '2018-10-17 13:29:41', NULL, NULL),
(401, 263, 'Ferozewala', 'fer00', '2018-10-17 13:29:41', NULL, NULL),
(402, 263, 'Muridke', 'mur21', '2018-10-17 13:29:41', NULL, NULL),
(403, 263, 'Sharak Pur', 'sha56', '2018-10-17 13:29:41', NULL, NULL),
(404, 263, 'Sheikhupura', 'she73', '2018-10-17 13:29:41', NULL, NULL),
(405, 264, 'Daska', 'das98', '2018-10-17 13:29:41', NULL, NULL),
(406, 264, 'Pasrur', 'pas71', '2018-10-17 13:29:41', NULL, NULL),
(407, 264, 'Sambrial', 'sam61', '2018-10-17 13:29:41', NULL, NULL),
(408, 264, 'Sialkot', 'sia91', '2018-10-17 13:29:41', NULL, NULL),
(409, 265, 'Gojra', 'goj74', '2018-10-17 13:29:41', NULL, NULL),
(410, 265, 'Toba Tek Singh', 'tob95', '2018-10-17 13:29:41', NULL, NULL),
(411, 266, 'Burewala', 'bur54', '2018-10-17 13:29:41', NULL, NULL),
(412, 266, 'Mailsi', 'mai84', '2018-10-17 13:29:41', NULL, NULL),
(413, 266, 'Vehari', 'veh59', '2018-10-17 13:29:41', NULL, NULL),
(414, 267, 'Badin', 'bad43', '2018-10-17 13:29:41', NULL, NULL),
(415, 267, 'Matli', 'mat38', '2018-10-17 13:29:41', NULL, NULL),
(416, 267, 'Shaheed Fazal Rahu', 'sha59', '2018-10-17 13:29:41', NULL, NULL),
(417, 267, 'Talhar', 'tal82', '2018-10-17 13:29:41', NULL, NULL),
(418, 267, 'Tando Bago', 'tan31', '2018-10-17 13:29:41', NULL, NULL),
(419, 268, 'Dadu', 'dad11', '2018-10-17 13:29:41', NULL, NULL),
(420, 268, 'Johi', 'joh63', '2018-10-17 13:29:41', NULL, NULL),
(421, 268, 'Khairpur Nathan Shah', 'kha79', '2018-10-17 13:29:41', NULL, NULL),
(422, 268, 'Mehar', 'meh99', '2018-10-17 13:29:41', NULL, NULL),
(423, 269, 'Daharki', 'dah72', '2018-10-17 13:29:41', NULL, NULL),
(424, 269, 'Ghotki', 'gho94', '2018-10-17 13:29:41', NULL, NULL),
(425, 269, 'Khangarh', 'kha24', '2018-10-17 13:29:41', NULL, NULL),
(426, 269, 'Mirpur Mathelo', 'mir91', '2018-10-17 13:29:41', NULL, NULL),
(427, 269, 'Ubauro', 'uba85', '2018-10-17 13:29:41', NULL, NULL),
(428, 270, 'Hyderabad', 'hyd52', '2018-10-17 13:29:41', NULL, NULL),
(429, 270, 'Latifabad', 'lat21', '2018-10-17 13:29:41', NULL, NULL),
(430, 270, 'Qasimabad', 'qas58', '2018-10-17 13:29:41', NULL, NULL),
(431, 271, 'Garhi Khairo', 'gar81', '2018-10-17 13:29:41', NULL, NULL),
(432, 271, 'Jacobabad', 'jac31', '2018-10-17 13:29:41', NULL, NULL),
(433, 271, 'Thul', 'thu15', '2018-10-17 13:29:41', NULL, NULL),
(434, 272, 'Kotri', 'kot79', '2018-10-17 13:29:41', NULL, NULL),
(435, 272, 'Manjand', 'man49', '2018-10-17 13:29:41', NULL, NULL),
(436, 272, 'Sehwan', 'seh11', '2018-10-17 13:29:41', NULL, NULL),
(437, 272, 'Thano Bula Khan', 'tha80', '2018-10-17 13:29:41', NULL, NULL),
(438, 277, 'Kandhkot', 'kan40', '2018-10-17 13:29:41', NULL, NULL),
(439, 277, 'Kashmore', 'kas98', '2018-10-17 13:29:41', NULL, NULL),
(440, 277, 'Tangwani', 'tan09', '2018-10-17 13:29:41', NULL, NULL),
(441, 278, 'Faiz Ganj', 'fai91', '2018-10-17 13:29:41', NULL, NULL),
(442, 278, 'Gambat', 'gam26', '2018-10-17 13:29:41', NULL, NULL),
(443, 278, 'Khairpur', 'kha56', '2018-10-17 13:29:41', NULL, NULL),
(444, 278, 'Kingri', 'kin01', '2018-10-17 13:29:41', NULL, NULL),
(445, 278, 'Kot Diji', 'kot33', '2018-10-17 13:29:41', NULL, NULL),
(446, 278, 'Mirwah', 'mir67', '2018-10-17 13:29:41', NULL, NULL),
(447, 278, 'Nara', 'nar36', '2018-10-17 13:29:41', NULL, NULL),
(448, 278, 'Sobho Dero', 'sob78', '2018-10-17 13:29:41', NULL, NULL),
(449, 280, 'Bakrani Taluks', 'bak81', '2018-10-17 13:29:41', NULL, NULL),
(450, 280, 'Dokri', 'dok70', '2018-10-17 13:29:41', NULL, NULL),
(451, 280, 'Larkana', 'lar88', '2018-10-17 13:29:41', NULL, NULL),
(452, 280, 'Ratodero', 'rat32', '2018-10-17 13:29:41', NULL, NULL),
(453, 282, 'Hala', 'hal34', '2018-10-17 13:29:41', NULL, NULL),
(454, 282, 'Matiari', 'mat77', '2018-10-17 13:29:41', NULL, NULL),
(455, 282, 'Saeedabad', 'sae80', '2018-10-17 13:29:41', NULL, NULL),
(456, 283, 'Digri', 'dig68', '2018-10-17 13:29:41', NULL, NULL),
(457, 283, 'Hussain Bux Mari', 'hus34', '2018-10-17 13:29:41', NULL, NULL),
(458, 283, 'Jhudo', 'jhu98', '2018-10-17 13:29:41', NULL, NULL),
(459, 283, 'Kot Ghulam Muhammad', 'kot38', '2018-10-17 13:29:41', NULL, NULL),
(460, 283, 'Mirpurkhas', 'mir64', '2018-10-17 13:29:41', NULL, NULL),
(461, 283, 'Sindhri', 'sin38', '2018-10-17 13:29:41', NULL, NULL),
(462, 284, 'Bhiria', 'bhi24', '2018-10-17 13:29:41', NULL, NULL),
(463, 284, 'Kandiaro', 'kan10', '2018-10-17 13:29:41', NULL, NULL),
(464, 284, 'Mehrabpur', 'meh79', '2018-10-17 13:29:41', NULL, NULL),
(465, 284, 'Moro', 'mor63', '2018-10-17 13:29:41', NULL, NULL),
(466, 284, 'Naushahro Feroze', 'nau81', '2018-10-17 13:29:41', NULL, NULL),
(467, 286, 'Jam Nawaz Ali', 'jam13', '2018-10-17 13:29:41', NULL, NULL),
(468, 286, 'Khipro', 'khi23', '2018-10-17 13:29:41', NULL, NULL),
(469, 286, 'Sanghar', 'san76', '2018-10-17 13:29:41', NULL, NULL),
(470, 286, 'Shahdadpur', 'sha99', '2018-10-17 13:29:41', NULL, NULL),
(471, 286, 'Sinjhoro', 'sin21', '2018-10-17 13:29:41', NULL, NULL),
(472, 286, 'Tando Adam', 'tan77', '2018-10-17 13:29:41', NULL, NULL),
(473, 287, 'Daur', 'dau22', '2018-10-17 13:29:41', NULL, NULL),
(474, 287, 'Kazi Ahmed', 'kaz81', '2018-10-17 13:29:41', NULL, NULL),
(475, 287, 'Nawabshah', 'naw36', '2018-10-17 13:29:41', NULL, NULL),
(476, 287, 'Sakrand', 'sak36', '2018-10-17 13:29:41', NULL, NULL),
(477, 288, 'Garhi Yasin', 'gar73', '2018-10-17 13:29:41', NULL, NULL),
(478, 288, 'Khanpur', 'kha59', '2018-10-17 13:29:41', NULL, NULL),
(479, 288, 'Lakhi', 'lak75', '2018-10-17 13:29:41', NULL, NULL),
(480, 288, 'Shikarpur', 'shi97', '2018-10-17 13:29:41', NULL, NULL),
(481, 290, 'New Sukkur', 'new60', '2018-10-17 13:29:41', NULL, NULL),
(482, 290, 'Pano Aqil', 'pan94', '2018-10-17 13:29:41', NULL, NULL),
(483, 290, 'Rohri', 'roh67', '2018-10-17 13:29:41', NULL, NULL),
(484, 290, 'Salehpat', 'sal88', '2018-10-17 13:29:41', NULL, NULL),
(485, 290, 'Sukkur', 'suk39', '2018-10-17 13:29:41', NULL, NULL),
(486, 291, 'Chamber', 'cha70', '2018-10-17 13:29:41', NULL, NULL),
(487, 291, 'Jhando Mari', 'jha35', '2018-10-17 13:29:41', NULL, NULL),
(488, 291, 'Tando Allah Yar', 'tan65', '2018-10-17 13:29:41', NULL, NULL),
(489, 292, 'Bulri Shah Karim', 'bul19', '2018-10-17 13:29:41', NULL, NULL),
(490, 292, 'Tando Gulam Hyder', 'tan98', '2018-10-17 13:29:41', NULL, NULL),
(491, 292, 'Tando Muhammad Khan', 'tan36', '2018-10-17 13:29:41', NULL, NULL),
(492, 293, 'Chachro', 'cha86', '2018-10-17 13:29:41', NULL, NULL),
(493, 293, 'Diplo', 'dip22', '2018-10-17 13:29:41', NULL, NULL),
(494, 293, 'Mithi', 'mit53', '2018-10-17 13:29:41', NULL, NULL),
(495, 293, 'Nagar Parkar', 'nag99', '2018-10-17 13:29:41', NULL, NULL),
(496, 294, 'Ghorabari', 'gho35', '2018-10-17 13:29:41', NULL, NULL),
(497, 289, 'Jati', 'jat79', '2018-10-17 13:29:41', NULL, NULL),
(498, 294, 'Keti Bunder', 'ket88', '2018-10-17 13:29:41', NULL, NULL),
(499, 289, 'Kharo Chan', 'kha69', '2018-10-17 13:29:41', NULL, NULL),
(500, 289, 'Mirpur Bathoro', 'mir65', '2018-10-17 13:29:41', NULL, NULL),
(501, 294, 'Mirpur Sakro', 'mir50', '2018-10-17 13:29:41', NULL, NULL),
(502, 289, 'Shah Bunder', 'sha32', '2018-10-17 13:29:41', NULL, NULL),
(503, 289, 'Sujawal', 'suj44', '2018-10-17 13:29:41', NULL, NULL),
(504, 294, 'Thatta', 'tha24', '2018-10-17 13:29:41', NULL, NULL),
(505, 295, 'Kunri', 'kun87', '2018-10-17 13:29:41', NULL, NULL),
(506, 295, 'Pithoro', 'pit66', '2018-10-17 13:29:41', NULL, NULL),
(507, 295, 'Samaro', 'sam66', '2018-10-17 13:29:41', NULL, NULL),
(508, 295, 'Umer Kot', 'ume31', '2018-10-17 13:29:41', NULL, NULL),
(514, 265, 'Kamalia', 'kam11', '2018-10-17 13:29:41', NULL, NULL),
(515, 245, 'Mian Channu', 'mia42', '2018-10-17 13:29:41', NULL, NULL),
(516, 273, 'Gulberg Town', 'gul78', '2018-10-17 13:29:41', NULL, NULL),
(517, 273, 'Liaquatabad Town', 'lia63', '2018-10-17 13:29:41', NULL, NULL),
(518, 273, 'New Karachi Town', 'new81', '2018-10-17 13:29:41', NULL, NULL),
(519, 273, 'North Nazimabad Town', 'nor18', '2018-10-17 13:29:41', NULL, NULL),
(520, 273, 'Nazimabad', 'naz47', '2018-10-17 13:29:41', NULL, NULL),
(521, 274, 'Gulshan Town', 'gul80', '2018-10-17 13:29:41', NULL, NULL),
(522, 274, 'Jamshed Town', 'jam58', '2018-10-17 13:29:41', NULL, NULL),
(523, 274, 'Ferozabad', 'fer51', '2018-10-17 13:29:41', NULL, NULL),
(524, 274, 'Gulshan-E-Iqbal', 'gul79', '2018-10-17 13:29:41', NULL, NULL),
(525, 274, 'Gulzar-E-Hijri', 'gul45', '2018-10-17 13:29:41', NULL, NULL),
(526, 275, 'Lyari Town', 'lya87', '2018-10-17 13:29:41', NULL, NULL),
(527, 275, 'Saddar Town', 'sad03', '2018-10-17 13:29:41', NULL, NULL),
(528, 275, 'Aram Bahg', 'ara41', '2018-10-17 13:29:41', NULL, NULL),
(529, 275, 'Civil Line', 'civ15', '2018-10-17 13:29:41', NULL, NULL),
(530, 275, 'Garden', 'gar86', '2018-10-17 13:29:41', NULL, NULL),
(531, 352, 'Baldia Town', 'bal24', '2018-10-17 13:29:41', NULL, NULL),
(532, 276, 'Kiamari Town', 'kia64', '2018-10-17 13:29:41', NULL, NULL),
(533, 352, 'S.I.T.E. Town', 's.i47', '2018-10-17 13:29:41', NULL, NULL),
(534, 276, 'Orangi Town', 'ora44', '2018-10-17 13:29:41', NULL, NULL),
(535, 276, 'Harbour', 'har77', '2018-10-17 13:29:41', NULL, NULL),
(536, 276, 'Manghopir', 'man53', '2018-10-17 13:29:41', NULL, NULL),
(537, 276, 'Maripur', 'mar34', '2018-10-17 13:29:41', NULL, NULL),
(538, 276, 'Mominabad', 'mom12', '2018-10-17 13:29:41', NULL, NULL),
(541, 20, 'Jehangira', 'jeh20', '2018-11-30 10:17:49', NULL, NULL),
(544, 11, 'Drosh', 'dro10', '2018-12-03 08:23:46', NULL, NULL),
(548, 7, 'Balambat', 'bal99', '2018-12-05 10:10:31', NULL, NULL),
(553, 7, 'Khall', 'kha99', '2018-12-05 10:10:31', NULL, NULL),
(555, 5, 'Darazinda', 'dar10', '2018-12-12 03:38:09', NULL, NULL),
(560, 13, 'Khanpur', 'khn11', '2019-01-02 10:26:24', NULL, NULL),
(563, 6, 'Barawal', 'bar11', '2019-01-14 08:27:32', NULL, NULL),
(565, 4, 'Kakki', 'kak10', '2019-01-17 06:24:46', NULL, NULL),
(570, 4, 'Baka Khel', 'bkk11', '2019-01-17 06:26:37', NULL, NULL),
(577, 10, 'Mandanr', 'man10', '2019-01-24 10:46:53', NULL, NULL),
(582, 2, 'Rustam', 'rus10', '2018-10-17 13:29:41', NULL, NULL),
(584, 231, 'Fateh Jang', 'fathj', '2019-04-03 07:47:55', NULL, NULL),
(589, 231, 'Jand', 'jand', '2019-04-03 07:49:30', NULL, NULL),
(594, 231, 'Hassan Abdal', 'hsnabd', '2019-04-03 07:50:11', NULL, NULL),
(599, 231, 'Hazro', 'hazro', '2019-04-03 07:50:44', NULL, NULL),
(601, 143, 'Shawal', 'shawal', '2019-04-20 16:51:03', NULL, NULL),
(605, 330, 'Kharan', 'kha1', '2019-05-28 07:46:39', NULL, NULL),
(610, 330, 'Ser Kharan', 'kha2', '2019-05-28 07:46:39', NULL, NULL),
(615, 335, 'Nushki', 'nus1', '2019-05-28 07:46:39', NULL, NULL),
(620, 335, 'Ahmed Wall', 'nus2', '2019-05-28 07:46:39', NULL, NULL),
(625, 340, 'Dalbandin', 'cha1', '2019-05-28 07:46:39', NULL, NULL),
(630, 340, 'Chagi', 'cha2', '2019-05-28 07:46:39', NULL, NULL),
(635, 340, 'Naukundi', 'cha3', '2019-05-28 07:46:39', NULL, NULL),
(640, 340, 'Taftan', 'cha4', '2019-05-28 07:46:39', NULL, NULL),
(645, 345, 'Washuk', 'was1', '2019-05-28 07:46:39', NULL, NULL),
(650, 345, 'Basima', 'was2', '2019-05-28 07:46:39', NULL, NULL),
(655, 345, 'Maskel', 'was2', '2019-05-28 07:46:39', NULL, NULL),
(658, 265, 'Pir Mahal', 'pirm', '2019-09-03 18:13:18', NULL, NULL),
(663, 24, 'Jandola', 'jand', '2020-01-03 05:41:44', NULL, NULL),
(668, 231, 'Attock', 'att', '2020-02-07 07:16:05', NULL, NULL),
(673, 0, 'Tehsil Missing', 'TM', '2020-04-14 07:16:05', NULL, NULL),
(675, 262, 'Bhera', 'bher', '2020-05-08 13:29:41', NULL, NULL),
(682, 142, 'Lower Mohmand', 'lwmh', '2020-05-11 13:29:41', NULL, NULL),
(683, 358, 'Lawa', 'law', '2020-05-13 13:29:41', NULL, NULL),
(690, 142, 'Baizai', 'bazupp', '2020-05-14 13:29:41', NULL, NULL),
(703, 299, 'Tangir', 'tan20', '2020-06-19 13:29:41', NULL, NULL),
(704, 219, 'Toi Sar', 'toi219', '2020-12-28 12:22:23', NULL, NULL),
(705, 4, 'Miryan', 'mir111', '2021-01-28 08:16:15', NULL, NULL),
(706, 279, 'Korangi', 'kor279', '2021-04-07 08:00:00', NULL, NULL),
(707, 352, 'Mauripur', 'mau52', '2021-06-28 07:48:08', NULL, NULL),
(708, 352, 'Keamari', 'ke52', '2021-06-28 07:48:46', NULL, NULL),
(709, 8, 'Lower Tanawal', 'lt8', '2021-10-11 07:46:00', NULL, NULL),
(710, 8, 'Lora', 'lr8', '2021-10-11 07:46:19', NULL, NULL),
(711, 1, 'Pishtakhara', 'pisht', '2022-01-21 09:04:38', NULL, NULL),
(712, 1, 'Shah Alam', 'shalam', '2022-01-21 09:04:59', NULL, NULL),
(713, 253, 'Chowk Sarwar Shaheed', 'css', '2022-06-13 09:04:59', NULL, NULL),
(714, 356, 'Gandakha', 'gan12', '2022-12-07 13:29:41', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `temporary_files`
--

CREATE TABLE `temporary_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `token` varchar(125) NOT NULL,
  `collection` varchar(125) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `temporary_files`
--

INSERT INTO `temporary_files` (`id`, `token`, `collection`, `created_at`, `updated_at`) VALUES
(7, 'UfIOMTNtOnibhymby8PEqAXTeeJVnwP40AFJEqch9f5JIKX75RphH26nXJU6', 'attachments', '2023-06-22 08:59:57', '2023-06-22 08:59:57'),
(8, 'dC5jX1VSDdekR4pFIpnkWPAKVMurSW8pS1qcPjvVyxGMT1gdtz0MmC2voMUv', 'complaint_attachments', '2023-10-24 19:20:14', '2023-10-24 19:20:14'),
(10, 'yKXk0LuxFQ9hgpFwiXOfzxlLs85DaLT0UrfyiEQzYfbAyjO2ik3iFMyf7HE5', 'complaint_attachments', '2023-10-27 11:05:17', '2023-10-27 11:05:17'),
(11, 'BWOpzhZiVAQx1UociKpZMMdmdpDT3QIGEjstZYTg1Az9W2pOqB9cionp8Mom', 'activity_attachments', '2023-10-29 11:17:40', '2023-10-29 11:17:40'),
(12, '5F0ALELei2E2dj873NR57A71NI7pCcTZPN65TS1m92Np65qzzsQm7XEwjBtl', 'activity_attachments', '2023-10-29 11:19:17', '2023-10-29 11:19:17'),
(13, 'JTOWEMNrtCchYfS3MCzdWivP6djDzVrp8b83yZq7xQGBkN0A2BWybohbwYni', 'activity_attachments', '2023-10-29 11:21:01', '2023-10-29 11:21:01'),
(14, 'YpQGYpqInKyJEPwPjXa1a130imOUWXoI7oEWzdHOzoN2gwfpy0QxV6YcpwFU', 'activity_attachments', '2023-10-29 11:21:19', '2023-10-29 11:21:19'),
(15, 'osyifFdtXyiYVdqiOh3C1W4M8GnRH8LSQhN7tguOFXvcHYVpfq1U6k0DM7Rw', 'activity_attachments', '2023-10-29 11:27:12', '2023-10-29 11:27:12'),
(16, 'cnEWsYSU4MZswYgeN8JqwpBzriX6yRHdIyLn30befzUWfH98qvGv5p7cJM44', 'activity_attachments', '2023-10-29 11:51:49', '2023-10-29 11:51:49'),
(17, 'TxC8pC9O3uTkCkCkKnUQ9OHHWsDmmf8I567w8YkcyDRHbwZO4L90JuDIKk94', 'activity_attachments', '2023-10-29 11:51:57', '2023-10-29 11:51:57'),
(18, 'DgJXJGL9oNcsoX31D5hw4iDBfOwsAst5CoYTmk9kMU7byIqMl9n4J0sY6neL', 'complaint_attachments', '2023-10-30 05:26:18', '2023-10-30 05:26:18'),
(19, 'xV91gBqFmVcL4HBqt95OXRu9SsfsZVT55VB8P1ta1yDgwLVRAUSv4cUndrRh', 'complaint_attachments', '2023-10-30 05:27:01', '2023-10-30 05:27:01'),
(29, '6N04bNcBe7CHFlfxEFCjFSdhjeZ22MduZM9UV2fVXQY1cP4doPZhwILqeJaU', 'activity_attachments', '2023-10-31 07:48:23', '2023-10-31 07:48:23'),
(32, '5ItWoKUexMJvJkONUPYNbyGUjNs5pU3yisUFUSTrblCyZ4AKv52TDnmd1xZk', 'activity_attachments', '2023-10-31 07:50:29', '2023-10-31 07:50:29');

-- --------------------------------------------------------

--
-- Table structure for table `uc_vc_lists`
--

CREATE TABLE `uc_vc_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(125) NOT NULL,
  `type` enum('UC','VC','NC') NOT NULL DEFAULT 'UC',
  `district_id` int(11) NOT NULL,
  `tehsil_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `uc_vc_lists`
--

INSERT INTO `uc_vc_lists` (`id`, `name`, `type`, `district_id`, `tehsil_id`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'UC-01', 'UC', 1, 4, 1, NULL, '2023-06-19 11:03:11', '2023-06-19 11:03:11'),
(2, 'ANDERSHEHER', 'UC', 1, 63, 1, NULL, '2023-06-20 05:08:15', '2023-06-20 05:08:15'),
(3, 'ASIA DABGARI', 'UC', 1, 63, 1, NULL, '2023-06-20 05:09:41', '2023-06-20 05:09:41'),
(4, 'CANTT WARD 1', 'UC', 1, 63, 1, NULL, '2023-06-20 05:24:25', '2023-06-20 05:24:25'),
(5, 'CANTT WARD 2', 'UC', 1, 63, 1, NULL, '2023-06-20 05:25:38', '2023-06-20 05:25:38'),
(6, 'CANTT WARD 3', 'UC', 1, 63, 1, NULL, '2023-06-20 05:30:51', '2023-06-20 05:30:51'),
(7, 'CANTT WARD 4', 'UC', 1, 63, 1, NULL, '2023-06-20 05:31:37', '2023-06-20 05:31:37'),
(8, 'FAQIR ABAD', 'UC', 1, 63, 1, NULL, '2023-06-20 05:32:11', '2023-06-20 05:32:11'),
(9, 'GULBAHAR', 'UC', 1, 63, 1, NULL, '2023-06-20 05:35:40', '2023-06-20 05:35:40'),
(10, 'GULBAHAR', 'UC', 1, 63, 1, NULL, '2023-06-20 05:35:51', '2023-06-20 05:35:51'),
(11, 'GUNJ', 'UC', 1, 63, 1, NULL, '2023-06-20 05:36:47', '2023-06-20 05:36:47'),
(12, 'HASAN GARHI 1', 'UC', 1, 63, 1, NULL, '2023-06-20 05:37:17', '2023-06-20 05:37:17'),
(13, 'HASAN GARHI 2', 'UC', 1, 63, 1, NULL, '2023-06-20 05:38:04', '2023-06-20 05:38:04'),
(14, 'HAYAT ABAD 1', 'UC', 1, 63, 1, NULL, '2023-06-20 05:38:46', '2023-06-20 05:38:46'),
(15, 'HAYAT ABAD 2', 'UC', 1, 63, 1, NULL, '2023-06-20 05:40:03', '2023-06-20 05:40:03'),
(16, 'JEHANGIR PURA', 'UC', 1, 63, 1, NULL, '2023-06-20 05:42:04', '2023-06-20 05:42:04'),
(17, 'KAKSHAL', 'UC', 1, 63, 1, NULL, '2023-06-20 05:42:24', '2023-06-20 05:42:24'),
(18, 'KARIM PURA', 'UC', 1, 63, 1, NULL, '2023-06-20 05:44:56', '2023-06-20 05:44:56'),
(19, 'KHALSA 1', 'UC', 1, 63, 1, NULL, '2023-06-20 05:45:29', '2023-06-20 05:45:29'),
(20, 'KHALSA 2', 'UC', 1, 63, 1, NULL, '2023-06-20 05:46:05', '2023-06-20 05:46:05'),
(21, 'LAHORI', 'UC', 1, 63, 1, NULL, '2023-06-20 05:46:45', '2023-06-20 05:46:45'),
(22, 'MALAKANDHER', 'UC', 1, 63, 1, NULL, '2023-06-20 05:47:11', '2023-06-20 05:47:11'),
(23, 'MEHAL TERAI 1', 'UC', 1, 63, 1, NULL, '2023-06-20 05:47:52', '2023-06-20 05:47:52'),
(24, 'MEHAL TERAI 2', 'UC', 1, 63, 1, NULL, '2023-06-20 05:48:21', '2023-06-20 05:48:21'),
(25, 'PALOSI', 'UC', 1, 63, 1, NULL, '2023-06-20 05:49:12', '2023-06-20 05:49:12'),
(26, 'PAWAKA', 'UC', 1, 63, 1, NULL, '2023-06-20 05:50:04', '2023-06-20 05:50:04'),
(27, 'REGI', 'UC', 1, 63, 1, NULL, '2023-06-20 05:50:40', '2023-06-20 05:50:40'),
(28, 'SHAHEEN TOWN', 'UC', 1, 63, 1, NULL, '2023-06-20 05:51:06', '2023-06-20 05:51:06'),
(29, 'SHAHI BAGH', 'UC', 1, 63, 1, NULL, '2023-06-20 05:51:29', '2023-06-20 05:51:29'),
(30, 'SIKANDAR TOWN', 'UC', 1, 63, 1, NULL, '2023-06-20 05:51:55', '2023-06-20 05:51:55'),
(31, 'SUFAID DHERI', 'UC', 1, 63, 1, NULL, '2023-06-20 05:52:54', '2023-06-20 05:52:54'),
(32, 'TEHKAL BALA', 'UC', 1, 63, 1, NULL, '2023-06-20 05:53:48', '2023-06-20 05:53:48'),
(33, 'TEHKAL PAYAN', 'UC', 1, 63, 1, NULL, '2023-06-20 05:54:18', '2023-06-20 05:54:18'),
(34, 'TEHKAL PAYAN 2 IRRIG', 'UC', 1, 63, 1, NULL, '2023-06-20 05:54:45', '2023-06-20 05:54:45'),
(35, 'UNIVERSITY TOWN', 'UC', 1, 63, 1, NULL, '2023-06-20 05:57:54', '2023-06-20 05:57:54'),
(36, 'BARKI', 'UC', 1, 1226, 1, NULL, '2023-06-20 05:58:42', '2023-06-20 05:58:42'),
(37, 'BORA', 'UC', 1, 1226, 1, NULL, '2023-06-20 05:59:08', '2023-06-20 05:59:08'),
(38, 'FARIDI', 'UC', 1, 1226, 1, NULL, '2023-06-20 06:00:01', '2023-06-20 06:00:01'),
(39, 'HASSAN KHEL', 'UC', 1, 1226, 1, NULL, '2023-06-20 06:00:44', '2023-06-20 06:00:44'),
(40, 'KOHI', 'UC', 1, 1226, 1, NULL, '2023-06-20 06:01:08', '2023-06-20 06:01:08'),
(41, 'MANDAI', 'UC', 1, 1226, 1, NULL, '2023-06-20 06:01:33', '2023-06-20 06:01:33'),
(42, 'ACHINI', 'UC', 1, 1243, 1, NULL, '2023-06-20 06:02:04', '2023-06-20 06:02:04'),
(43, 'BAZID KHEL', 'UC', 1, 1243, 1, NULL, '2023-06-20 06:02:35', '2023-06-20 06:02:35'),
(44, 'MASHOGAGAR', 'UC', 1, 1243, 1, NULL, '2023-06-20 06:02:58', '2023-06-20 06:02:58'),
(45, 'MATTANI', 'UC', 1, 1243, 1, NULL, '2023-06-20 06:04:31', '2023-06-20 06:04:31'),
(46, 'PISHTAKHARA', 'UC', 1, 1243, 1, NULL, '2023-06-20 06:04:56', '2023-06-20 06:04:56'),
(47, 'SARBAND', 'UC', 1, 1243, 1, NULL, '2023-06-20 06:05:32', '2023-06-20 06:05:32'),
(48, 'SHEIKH MOHAMMADI', 'UC', 1, 1243, 1, NULL, '2023-06-20 06:05:57', '2023-06-20 06:05:57'),
(49, 'SHEIKHAN', 'UC', 1, 1243, 1, NULL, '2023-06-20 06:06:34', '2023-06-20 06:06:34'),
(50, 'SULEMAN KHEIL', 'UC', 1, 1243, 1, NULL, '2023-06-20 06:07:18', '2023-06-20 06:07:18'),
(51, 'ADEZAI', 'UC', 1, 1242, 1, NULL, '2023-06-20 06:07:44', '2023-06-20 06:07:44'),
(52, 'AZAKHEL TELABAND', 'UC', 1, 1242, 1, NULL, '2023-06-20 06:08:10', '2023-06-20 06:08:10'),
(53, 'BADABER HUREZAI', 'UC', 1, 1242, 1, NULL, '2023-06-20 06:08:42', '2023-06-20 06:08:42'),
(54, 'BADABER MARYAMZAI', 'UC', 1, 1242, 1, NULL, '2023-06-20 06:09:55', '2023-06-20 06:09:55'),
(55, 'CHAMKANI', 'UC', 1, 1242, 1, NULL, '2023-06-20 06:10:42', '2023-06-20 06:10:42'),
(56, 'MARYAM ZAI', 'UC', 1, 1242, 1, NULL, '2023-06-20 06:11:09', '2023-06-20 06:11:09'),
(57, 'MERA KACHORI', 'UC', 1, 1242, 1, NULL, '2023-06-20 06:11:36', '2023-06-20 06:11:36'),
(58, 'MERA SUREZAI PAYAN', 'UC', 1, 1242, 1, NULL, '2023-06-20 06:12:07', '2023-06-20 06:12:07'),
(59, 'MUSAZAI', 'UC', 1, 1242, 1, NULL, '2023-06-20 06:12:38', '2023-06-20 06:12:38'),
(60, 'SHERAKERA', 'UC', 1, 1242, 1, NULL, '2023-06-20 06:13:07', '2023-06-20 06:13:07'),
(61, 'SUREZAI BALA', 'UC', 1, 1242, 1, NULL, '2023-06-20 06:13:38', '2023-06-20 06:13:38'),
(62, 'SUREZAI PAYAN', 'UC', 1, 1242, 1, NULL, '2023-06-20 06:14:14', '2023-06-20 06:14:14'),
(63, 'URMAR BALA', 'UC', 1, 1242, 1, NULL, '2023-06-20 06:14:52', '2023-06-20 06:14:52'),
(64, 'URMAR MIANA', 'UC', 1, 1242, 1, NULL, '2023-06-20 06:15:28', '2023-06-20 06:15:28'),
(65, 'URMAR PAYAN', 'UC', 1, 1242, 1, NULL, '2023-06-20 06:16:12', '2023-06-20 06:16:12'),
(66, 'BUDHNI', 'UC', 1, 1241, 1, NULL, '2023-06-20 06:16:43', '2023-06-20 06:16:43'),
(67, 'CHAGARMATI', 'UC', 1, 1241, 1, NULL, '2023-06-20 06:17:07', '2023-06-20 06:17:07'),
(68, 'DAG', 'UC', 1, 1241, 1, NULL, '2023-06-20 06:17:30', '2023-06-20 06:17:30'),
(69, 'GARHI SHER DAD', 'UC', 1, 1241, 1, NULL, '2023-06-20 06:18:53', '2023-06-20 06:18:53'),
(70, 'GULBELA', 'UC', 1, 1241, 1, NULL, '2023-06-20 06:19:42', '2023-06-20 06:19:42'),
(71, 'HARYANA PAYAN', 'UC', 1, 1241, 1, NULL, '2023-06-20 06:20:28', '2023-06-20 06:20:28'),
(72, 'JOGANI', 'UC', 1, 1241, 1, NULL, '2023-06-20 06:20:57', '2023-06-20 06:20:57'),
(73, 'KAFOOR DHERI', 'UC', 1, 1241, 1, NULL, '2023-06-20 06:21:41', '2023-06-20 06:21:41'),
(74, 'KANIZA', 'UC', 1, 1241, 1, NULL, '2023-06-20 06:22:19', '2023-06-20 06:22:19'),
(75, 'KANKOLA', 'UC', 1, 1241, 1, NULL, '2023-06-20 06:22:44', '2023-06-20 06:22:44'),
(76, 'KHAZANA', 'UC', 1, 1241, 1, NULL, '2023-06-20 06:23:31', '2023-06-20 06:23:31'),
(77, 'LALA KALAY', 'UC', 1, 1241, 1, NULL, '2023-06-20 06:24:10', '2023-06-20 06:24:10'),
(78, 'LARAMA', 'UC', 1, 1241, 1, NULL, '2023-06-20 06:24:41', '2023-06-20 06:24:41'),
(79, 'MATHRA', 'UC', 1, 1241, 1, NULL, '2023-06-20 06:25:18', '2023-06-20 06:25:18'),
(80, 'NAHAQI', 'UC', 1, 1241, 1, NULL, '2023-06-20 06:25:54', '2023-06-20 06:25:54'),
(81, 'PAJAGI', 'UC', 1, 1241, 1, NULL, '2023-06-20 06:27:05', '2023-06-20 06:27:05'),
(82, 'PAKHA GHULAM', 'UC', 1, 1241, 1, NULL, '2023-06-20 06:27:39', '2023-06-20 06:27:39'),
(83, 'PANAM DHERI', 'UC', 1, 1241, 1, NULL, '2023-06-20 06:28:35', '2023-06-20 06:28:35'),
(84, 'SAEEDABAD', 'UC', 1, 1241, 1, NULL, '2023-06-20 06:29:38', '2023-06-20 06:29:38'),
(85, 'SHAHI BALA', 'UC', 1, 1241, 1, NULL, '2023-06-20 06:30:51', '2023-06-20 06:30:51'),
(86, 'TUKHTABAD', 'UC', 1, 1241, 1, NULL, '2023-06-20 06:31:39', '2023-06-20 06:31:39'),
(87, 'WADPAGA', 'UC', 1, 1241, 1, NULL, '2023-06-20 06:32:10', '2023-06-20 06:32:10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `description` text,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `username`, `company_id`, `section_id`, `parent_id`, `status`, `description`, `deleted_at`) VALUES
(2, 'Super Admin', 'admin@gmail.com', NULL, '$2y$10$t3dC2FiNquH8vnxOCQUqeOWVjeru5a1vGTL3PUZvG4TzU5Ui5ttHG', NULL, '2022-05-13 07:15:04', '2023-11-28 13:14:26', 'admin', 1, NULL, NULL, 1, NULL, NULL),
(846, 'admin_fmc', 'admin_fmc@gmail.com', NULL, '$2y$10$r/xBfa4mNzRKqPPT2V9nVOlruCloHezyToG7QM09ZjNG27njqolG6', NULL, '2023-11-28 13:17:51', '2023-11-28 13:17:51', 'admin_fmc', 491, NULL, NULL, 1, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `subject` (`subject_type`,`subject_id`) USING BTREE,
  ADD KEY `causer` (`causer_type`,`causer_id`) USING BTREE,
  ADD KEY `activity_log_log_name_index` (`log_name`) USING BTREE;

--
-- Indexes for table `apps`
--
ALTER TABLE `apps`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `company_levels`
--
ALTER TABLE `company_levels`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `company_types`
--
ALTER TABLE `company_types`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `province_id` (`province_id`) USING BTREE,
  ADD KEY `division_id` (`division_id`) USING BTREE;

--
-- Indexes for table `districts_`
--
ALTER TABLE `districts_`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `province_id` (`province_id`) USING BTREE,
  ADD KEY `division_id` (`division_id`) USING BTREE;

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `province_id` (`province_id`) USING BTREE;

--
-- Indexes for table `divisions_`
--
ALTER TABLE `divisions_`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `province_id` (`province_id`) USING BTREE;

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`) USING BTREE;

--
-- Indexes for table `firebase_notifications`
--
ALTER TABLE `firebase_notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `firebase_notifications_morphable_type_morphable_id_index` (`morphable_type`,`morphable_id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `media_uuid_unique` (`uuid`) USING BTREE,
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`) USING BTREE,
  ADD KEY `media_order_column_index` (`order_column`) USING BTREE;

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `mouzas`
--
ALTER TABLE `mouzas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`) USING BTREE;

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `permissions_slug_unique` (`slug`) USING BTREE;

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `permission_role_permission_id_index` (`permission_id`) USING BTREE,
  ADD KEY `permission_role_role_id_index` (`role_id`) USING BTREE;

--
-- Indexes for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `permission_user_permission_id_index` (`permission_id`) USING BTREE,
  ADD KEY `permission_user_user_id_index` (`user_id`) USING BTREE;

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`) USING BTREE,
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`) USING BTREE;

--
-- Indexes for table `provinces`
--
ALTER TABLE `provinces`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `provinces_`
--
ALTER TABLE `provinces_`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `roles_slug_unique` (`slug`) USING BTREE;

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `role_user_role_id_index` (`role_id`) USING BTREE,
  ADD KEY `role_user_user_id_index` (`user_id`) USING BTREE;

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tehsils`
--
ALTER TABLE `tehsils`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `district_id` (`district_id`) USING BTREE;

--
-- Indexes for table `temporary_files`
--
ALTER TABLE `temporary_files`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `uc_vc_lists`
--
ALTER TABLE `uc_vc_lists`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `uc_vc_lists_district_id_foreign` (`district_id`) USING BTREE,
  ADD KEY `uc_vc_lists_tehsil_id_foreign` (`tehsil_id`) USING BTREE;

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `users_email_unique` (`email`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `apps`
--
ALTER TABLE `apps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=526;

--
-- AUTO_INCREMENT for table `company_levels`
--
ALTER TABLE `company_levels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `company_types`
--
ALTER TABLE `company_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=359;

--
-- AUTO_INCREMENT for table `districts_`
--
ALTER TABLE `districts_`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `divisions`
--
ALTER TABLE `divisions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `divisions_`
--
ALTER TABLE `divisions_`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `firebase_notifications`
--
ALTER TABLE `firebase_notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=174;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=214;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `mouzas`
--
ALTER TABLE `mouzas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=208;

--
-- AUTO_INCREMENT for table `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=362;

--
-- AUTO_INCREMENT for table `permission_user`
--
ALTER TABLE `permission_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=475;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `provinces`
--
ALTER TABLE `provinces`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `provinces_`
--
ALTER TABLE `provinces_`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=855;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tehsils`
--
ALTER TABLE `tehsils`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=715;

--
-- AUTO_INCREMENT for table `temporary_files`
--
ALTER TABLE `temporary_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `uc_vc_lists`
--
ALTER TABLE `uc_vc_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=847;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
