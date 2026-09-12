-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 31, 2026 at 11:39 AM
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
-- Database: `helpdesk`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `log_name` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `subject_type` varchar(255) DEFAULT NULL,
  `event` varchar(255) DEFAULT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `causer_type` varchar(255) DEFAULT NULL,
  `causer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`properties`)),
  `batch_uuid` char(36) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `created_at`, `updated_at`) VALUES
(1, 'default', 'created', 'App\\Models\\Role', 'created', 1, NULL, NULL, '{\"attributes\":{\"id\":1,\"name\":\"Super Admin\",\"guard_name\":\"web\",\"created_at\":\"2026-08-22T08:16:31.000000Z\",\"updated_at\":\"2026-08-22T08:16:31.000000Z\"}}', NULL, '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(2, 'default', 'created', 'App\\Models\\Role', 'created', 2, NULL, NULL, '{\"attributes\":{\"id\":2,\"name\":\"Admin Unit\",\"guard_name\":\"web\",\"created_at\":\"2026-08-22T08:16:31.000000Z\",\"updated_at\":\"2026-08-22T08:16:31.000000Z\"}}', NULL, '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(3, 'default', 'created', 'App\\Models\\Role', 'created', 3, NULL, NULL, '{\"attributes\":{\"id\":3,\"name\":\"Staff Unit\",\"guard_name\":\"web\",\"created_at\":\"2026-08-22T08:16:31.000000Z\",\"updated_at\":\"2026-08-22T08:16:31.000000Z\"}}', NULL, '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(4, 'default', 'created', 'App\\Models\\Role', 'created', 4, NULL, NULL, '{\"attributes\":{\"id\":4,\"name\":\"Global Viewer\",\"guard_name\":\"web\",\"created_at\":\"2026-08-22T08:16:31.000000Z\",\"updated_at\":\"2026-08-22T08:16:31.000000Z\"}}', NULL, '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(5, 'default', 'created', 'App\\Models\\Role', 'created', 5, NULL, NULL, '{\"attributes\":{\"id\":5,\"name\":\"Unit Viewer\",\"guard_name\":\"web\",\"created_at\":\"2026-08-22T08:16:31.000000Z\",\"updated_at\":\"2026-08-22T08:16:31.000000Z\"}}', NULL, '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(6, 'default', 'created', 'App\\Models\\Role', 'created', 6, NULL, NULL, '{\"attributes\":{\"id\":6,\"name\":\"Global Staff\",\"guard_name\":\"web\",\"created_at\":\"2026-08-22T08:16:31.000000Z\",\"updated_at\":\"2026-08-22T08:16:31.000000Z\"}}', NULL, '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(7, 'default', 'created', 'App\\Models\\Unit', 'created', 1, NULL, NULL, '{\"attributes\":{\"id\":1,\"name\":\"Sales Department\",\"created_at\":null,\"updated_at\":null,\"deleted_at\":null}}', NULL, '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(8, 'default', 'created', 'App\\Models\\Unit', 'created', 2, NULL, NULL, '{\"attributes\":{\"id\":2,\"name\":\"Technical Support\",\"created_at\":null,\"updated_at\":null,\"deleted_at\":null}}', NULL, '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(9, 'default', 'created', 'App\\Models\\Unit', 'created', 3, NULL, NULL, '{\"attributes\":{\"id\":3,\"name\":\"Billing Support\",\"created_at\":null,\"updated_at\":null,\"deleted_at\":null}}', NULL, '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(10, 'default', 'created', 'App\\Models\\User', 'created', 1, NULL, NULL, '{\"attributes\":{\"id\":1,\"name\":\"Super Admin\",\"email\":\"superadmin@example.com\",\"email_verified_at\":null,\"password\":\"$2y$10$yLS8mpbCQpNejVP0OR0iweXmBuNUoLx\\/7B1ksPYP98IJnQH2Q5BhG\",\"remember_token\":null,\"created_at\":\"2026-08-22T08:16:31.000000Z\",\"updated_at\":\"2026-08-22T08:16:31.000000Z\",\"unit_id\":null,\"identity\":null,\"phone\":null,\"is_active\":true,\"deleted_at\":null,\"custom_fields\":null,\"avatar_url\":null}}', NULL, '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(11, 'default', 'created', 'App\\Models\\User', 'created', 2, NULL, NULL, '{\"attributes\":{\"id\":2,\"name\":\"Admin Unit\",\"email\":\"adminunit@example.com\",\"email_verified_at\":null,\"password\":\"$2y$10$k7.f84RhtP8ntNFZmG9.3.oOshSU5yOOBwnfRmaS1wfXT8cbgsjqW\",\"remember_token\":null,\"created_at\":\"2026-08-22T08:16:31.000000Z\",\"updated_at\":\"2026-08-22T08:16:31.000000Z\",\"unit_id\":1,\"identity\":null,\"phone\":null,\"is_active\":true,\"deleted_at\":null,\"custom_fields\":null,\"avatar_url\":null}}', NULL, '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(12, 'default', 'created', 'App\\Models\\User', 'created', 3, NULL, NULL, '{\"attributes\":{\"id\":3,\"name\":\"Staff Unit\",\"email\":\"staffunit@example.com\",\"email_verified_at\":null,\"password\":\"$2y$10$7F\\/wtM.rfVQDL97G5q2amO2gfeHDY9UxcRh4mykhy9qqXqzwQetDC\",\"remember_token\":null,\"created_at\":\"2026-08-22T08:16:31.000000Z\",\"updated_at\":\"2026-08-22T08:16:31.000000Z\",\"unit_id\":1,\"identity\":null,\"phone\":null,\"is_active\":true,\"deleted_at\":null,\"custom_fields\":null,\"avatar_url\":null}}', NULL, '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(13, 'default', 'created', 'App\\Models\\User', 'created', 4, NULL, NULL, '{\"attributes\":{\"id\":4,\"name\":\"User\",\"email\":\"user@example.com\",\"email_verified_at\":null,\"password\":\"$2y$10$MgbO9FX7E6skpA5q4rKL7ud7p2zk1P6eM1.V0jbhFtxxSWyonGm7.\",\"remember_token\":null,\"created_at\":\"2026-08-22T08:16:32.000000Z\",\"updated_at\":\"2026-08-22T08:16:32.000000Z\",\"unit_id\":null,\"identity\":null,\"phone\":null,\"is_active\":true,\"deleted_at\":null,\"custom_fields\":null,\"avatar_url\":null}}', NULL, '2026-08-22 02:16:32', '2026-08-22 02:16:32'),
(14, 'default', 'created', 'App\\Models\\Priority', 'created', 1, NULL, NULL, '{\"attributes\":{\"id\":1,\"name\":\"Normal\",\"sla\":2880}}', NULL, '2026-08-22 02:16:32', '2026-08-22 02:16:32'),
(15, 'default', 'created', 'App\\Models\\Priority', 'created', 2, NULL, NULL, '{\"attributes\":{\"id\":2,\"name\":\"Urgent\",\"sla\":1440}}', NULL, '2026-08-22 02:16:32', '2026-08-22 02:16:32'),
(16, 'default', 'created', 'App\\Models\\Priority', 'created', 3, NULL, NULL, '{\"attributes\":{\"id\":3,\"name\":\"Critical\",\"sla\":480}}', NULL, '2026-08-22 02:16:32', '2026-08-22 02:16:32'),
(17, 'default', 'created', 'App\\Models\\TicketStatus', 'created', 1, NULL, NULL, '{\"attributes\":{\"id\":1,\"name\":\"New\",\"color\":null,\"created_at\":null,\"updated_at\":null,\"deleted_at\":null}}', NULL, '2026-08-22 02:16:32', '2026-08-22 02:16:32'),
(18, 'default', 'created', 'App\\Models\\TicketStatus', 'created', 2, NULL, NULL, '{\"attributes\":{\"id\":2,\"name\":\"Open\",\"color\":null,\"created_at\":null,\"updated_at\":null,\"deleted_at\":null}}', NULL, '2026-08-22 02:16:32', '2026-08-22 02:16:32'),
(19, 'default', 'created', 'App\\Models\\TicketStatus', 'created', 3, NULL, NULL, '{\"attributes\":{\"id\":3,\"name\":\"In Progress\",\"color\":null,\"created_at\":null,\"updated_at\":null,\"deleted_at\":null}}', NULL, '2026-08-22 02:16:32', '2026-08-22 02:16:32'),
(20, 'default', 'created', 'App\\Models\\TicketStatus', 'created', 4, NULL, NULL, '{\"attributes\":{\"id\":4,\"name\":\"Pending\",\"color\":null,\"created_at\":null,\"updated_at\":null,\"deleted_at\":null}}', NULL, '2026-08-22 02:16:32', '2026-08-22 02:16:32'),
(21, 'default', 'created', 'App\\Models\\TicketStatus', 'created', 5, NULL, NULL, '{\"attributes\":{\"id\":5,\"name\":\"Resolved\",\"color\":null,\"created_at\":null,\"updated_at\":null,\"deleted_at\":null}}', NULL, '2026-08-22 02:16:32', '2026-08-22 02:16:32'),
(22, 'default', 'created', 'App\\Models\\TicketStatus', 'created', 6, NULL, NULL, '{\"attributes\":{\"id\":6,\"name\":\"Closed\",\"color\":null,\"created_at\":null,\"updated_at\":null,\"deleted_at\":null}}', NULL, '2026-08-22 02:16:32', '2026-08-22 02:16:32'),
(23, 'default', 'created', 'App\\Models\\Category', 'created', 1, NULL, NULL, '{\"attributes\":{\"id\":1,\"unit_id\":1,\"name\":\" One at Sales Department\",\"created_at\":null,\"updated_at\":null,\"deleted_at\":null}}', NULL, '2026-08-22 02:16:32', '2026-08-22 02:16:32'),
(24, 'default', 'created', 'App\\Models\\Category', 'created', 2, NULL, NULL, '{\"attributes\":{\"id\":2,\"unit_id\":1,\"name\":\" Two at Sales Department\",\"created_at\":null,\"updated_at\":null,\"deleted_at\":null}}', NULL, '2026-08-22 02:16:32', '2026-08-22 02:16:32'),
(25, 'default', 'created', 'App\\Models\\Category', 'created', 3, NULL, NULL, '{\"attributes\":{\"id\":3,\"unit_id\":2,\"name\":\" One at Technical Support\",\"created_at\":null,\"updated_at\":null,\"deleted_at\":null}}', NULL, '2026-08-22 02:16:32', '2026-08-22 02:16:32'),
(26, 'default', 'created', 'App\\Models\\Category', 'created', 4, NULL, NULL, '{\"attributes\":{\"id\":4,\"unit_id\":3,\"name\":\" One at Billing Support\",\"created_at\":null,\"updated_at\":null,\"deleted_at\":null}}', NULL, '2026-08-22 02:16:32', '2026-08-22 02:16:32'),
(27, 'default', 'created', 'App\\Models\\Ticket', 'created', 1, NULL, NULL, '{\"attributes\":{\"priority.name\":\"Normal\",\"unit.name\":\"Sales Department\",\"owner.name\":\"Super Admin\",\"responsible.name\":null,\"category.name\":\" One at Sales Department\",\"ticketStatus.name\":\"New\",\"comments\":[],\"id\":1,\"priority_id\":1,\"unit_id\":1,\"owner_id\":1,\"category_id\":1,\"title\":\"This is a sample ticket\",\"description\":\"This is a descriptions\",\"ticket_statuses_id\":1,\"status_updated_at\":\"2026-08-22T08:16:32.000000Z\",\"responsible_id\":null,\"created_at\":\"2026-08-22T08:16:32.000000Z\",\"updated_at\":\"2026-08-22T08:16:32.000000Z\",\"deleted_at\":null}}', NULL, '2026-08-22 02:16:32', '2026-08-22 02:16:32'),
(28, 'default', 'created', 'App\\Models\\Ticket', 'created', 2, 'App\\Models\\User', 1, '{\"attributes\":{\"priority.name\":\"Normal\",\"unit.name\":\"Technical Support\",\"owner.name\":\"Super Admin\",\"responsible.name\":\"Staff Unit\",\"category.name\":\" One at Technical Support\",\"ticketStatus.name\":\"New\",\"comments\":[],\"id\":2,\"priority_id\":1,\"unit_id\":2,\"owner_id\":1,\"category_id\":3,\"title\":\"xyz\",\"description\":\"<p>xyz<\\/p>\",\"ticket_statuses_id\":1,\"status_updated_at\":\"2026-08-24T20:27:35.000000Z\",\"responsible_id\":3,\"created_at\":\"2026-08-24T20:27:35.000000Z\",\"updated_at\":\"2026-08-24T20:27:35.000000Z\",\"deleted_at\":null}}', NULL, '2026-08-24 14:27:35', '2026-08-24 14:27:35'),
(29, 'default', 'deleted', 'App\\Models\\Ticket', 'deleted', 2, 'App\\Models\\User', 1, '{\"old\":{\"priority.name\":\"Normal\",\"unit.name\":\"Technical Support\",\"owner.name\":\"Super Admin\",\"responsible.name\":\"Staff Unit\",\"category.name\":\" One at Technical Support\",\"ticketStatus.name\":\"New\",\"comments\":[],\"id\":2,\"priority_id\":1,\"unit_id\":2,\"owner_id\":1,\"category_id\":3,\"title\":\"xyz\",\"description\":\"<p>xyz<\\/p>\",\"ticket_statuses_id\":1,\"status_updated_at\":\"2026-08-25T02:30:52.000000Z\",\"responsible_id\":3,\"created_at\":\"2026-08-24T20:27:35.000000Z\",\"updated_at\":\"2026-08-24T20:30:52.000000Z\",\"deleted_at\":\"2026-08-24T20:30:52.000000Z\"}}', NULL, '2026-08-24 14:30:52', '2026-08-24 14:30:52'),
(30, 'default', 'created', 'App\\Models\\Ticket', 'created', 3, 'App\\Models\\User', 1, '{\"attributes\":{\"priority.name\":\"Critical\",\"unit.name\":\"Technical Support\",\"owner.name\":\"Super Admin\",\"responsible.name\":\"Staff Unit\",\"category.name\":\" One at Technical Support\",\"ticketStatus.name\":\"New\",\"comments\":[],\"id\":3,\"priority_id\":3,\"unit_id\":2,\"owner_id\":1,\"category_id\":3,\"title\":\"xyz\",\"description\":\"<p>xyz<\\/p>\",\"ticket_statuses_id\":1,\"status_updated_at\":\"2026-08-24T20:31:42.000000Z\",\"responsible_id\":3,\"created_at\":\"2026-08-24T20:31:42.000000Z\",\"updated_at\":\"2026-08-24T20:31:42.000000Z\",\"deleted_at\":null}}', NULL, '2026-08-24 14:31:42', '2026-08-24 14:31:42'),
(31, 'default', 'updated', 'App\\Models\\Ticket', 'updated', 3, 'App\\Models\\User', 1, '{\"attributes\":{\"responsible.name\":\"Admin Unit\",\"status_updated_at\":\"2026-08-25T03:40:59.000000Z\",\"responsible_id\":2,\"updated_at\":\"2026-08-24T21:40:59.000000Z\"},\"old\":{\"responsible.name\":\"Staff Unit\",\"status_updated_at\":\"2026-08-24T20:31:42.000000Z\",\"responsible_id\":3,\"updated_at\":\"2026-08-24T20:31:42.000000Z\"}}', NULL, '2026-08-24 15:40:59', '2026-08-24 15:40:59'),
(32, 'default', 'updated', 'App\\Models\\Ticket', 'updated', 1, 'App\\Models\\User', 1, '{\"attributes\":{\"responsible.name\":\"User\",\"status_updated_at\":\"2026-08-25T03:41:03.000000Z\",\"responsible_id\":4,\"updated_at\":\"2026-08-24T21:41:03.000000Z\"},\"old\":{\"responsible.name\":null,\"status_updated_at\":\"2026-08-22T08:16:32.000000Z\",\"responsible_id\":null,\"updated_at\":\"2026-08-22T08:16:32.000000Z\"}}', NULL, '2026-08-24 15:41:03', '2026-08-24 15:41:03'),
(33, 'default', 'updated', 'App\\Models\\Ticket', 'updated', 1, 'App\\Models\\User', 1, '{\"attributes\":{\"responsible.name\":\"Staff Unit\",\"status_updated_at\":\"2026-08-25T03:41:09.000000Z\",\"responsible_id\":3,\"updated_at\":\"2026-08-24T21:41:09.000000Z\"},\"old\":{\"responsible.name\":\"User\",\"status_updated_at\":\"2026-08-25T03:41:03.000000Z\",\"responsible_id\":4,\"updated_at\":\"2026-08-24T21:41:03.000000Z\"}}', NULL, '2026-08-24 15:41:09', '2026-08-24 15:41:09'),
(34, 'default', 'updated', 'App\\Models\\Ticket', 'updated', 1, 'App\\Models\\User', 1, '{\"attributes\":{\"responsible.name\":\"Admin Unit\",\"status_updated_at\":\"2026-08-25T03:49:38.000000Z\",\"responsible_id\":2,\"updated_at\":\"2026-08-24T21:49:38.000000Z\"},\"old\":{\"responsible.name\":\"Staff Unit\",\"status_updated_at\":\"2026-08-25T03:41:09.000000Z\",\"responsible_id\":3,\"updated_at\":\"2026-08-24T21:41:09.000000Z\"}}', NULL, '2026-08-24 15:49:39', '2026-08-24 15:49:39'),
(35, 'default', 'updated', 'App\\Models\\Ticket', 'updated', 1, 'App\\Models\\User', 1, '{\"attributes\":{\"responsible.name\":\"Staff Unit\",\"status_updated_at\":\"2026-08-25T03:51:04.000000Z\",\"responsible_id\":3,\"updated_at\":\"2026-08-24T21:51:04.000000Z\"},\"old\":{\"responsible.name\":\"Admin Unit\",\"status_updated_at\":\"2026-08-25T03:49:38.000000Z\",\"responsible_id\":2,\"updated_at\":\"2026-08-24T21:49:38.000000Z\"}}', NULL, '2026-08-24 15:51:04', '2026-08-24 15:51:04'),
(36, 'default', 'updated', 'App\\Models\\Ticket', 'updated', 1, 'App\\Models\\User', 1, '{\"attributes\":{\"responsible.name\":\"Admin Unit\",\"status_updated_at\":\"2026-08-25T03:51:10.000000Z\",\"responsible_id\":2,\"updated_at\":\"2026-08-24T21:51:10.000000Z\"},\"old\":{\"responsible.name\":\"Staff Unit\",\"status_updated_at\":\"2026-08-25T03:51:04.000000Z\",\"responsible_id\":3,\"updated_at\":\"2026-08-24T21:51:04.000000Z\"}}', NULL, '2026-08-24 15:51:10', '2026-08-24 15:51:10'),
(37, 'default', 'updated', 'App\\Models\\Ticket', 'updated', 3, 'App\\Models\\User', 1, '{\"attributes\":{\"responsible.name\":\"User\",\"status_updated_at\":\"2026-08-25T03:54:09.000000Z\",\"responsible_id\":4,\"updated_at\":\"2026-08-24T21:54:09.000000Z\"},\"old\":{\"responsible.name\":\"Admin Unit\",\"status_updated_at\":\"2026-08-25T03:40:59.000000Z\",\"responsible_id\":2,\"updated_at\":\"2026-08-24T21:40:59.000000Z\"}}', NULL, '2026-08-24 15:54:09', '2026-08-24 15:54:09'),
(38, 'default', 'updated', 'App\\Models\\Ticket', 'updated', 3, 'App\\Models\\User', 1, '{\"attributes\":{\"responsible.name\":\"Admin Unit\",\"status_updated_at\":\"2026-08-25T03:54:19.000000Z\",\"responsible_id\":2,\"updated_at\":\"2026-08-24T21:54:19.000000Z\"},\"old\":{\"responsible.name\":\"User\",\"status_updated_at\":\"2026-08-25T03:54:09.000000Z\",\"responsible_id\":4,\"updated_at\":\"2026-08-24T21:54:09.000000Z\"}}', NULL, '2026-08-24 15:54:19', '2026-08-24 15:54:19'),
(39, 'default', 'created', 'App\\Models\\Ticket', 'created', 4, 'App\\Models\\User', 1, '{\"attributes\":{\"priority.name\":\"Urgent\",\"unit.name\":\"Technical Support\",\"owner.name\":\"Super Admin\",\"responsible.name\":\"Admin Unit\",\"category.name\":\" One at Technical Support\",\"ticketStatus.name\":\"New\",\"comments\":[],\"id\":4,\"priority_id\":2,\"unit_id\":2,\"owner_id\":1,\"category_id\":3,\"title\":\"abc\",\"description\":\"<p>abc<\\/p>\",\"ticket_statuses_id\":1,\"status_updated_at\":\"2026-08-24T22:22:23.000000Z\",\"responsible_id\":2,\"created_at\":\"2026-08-24T22:22:23.000000Z\",\"updated_at\":\"2026-08-24T22:22:23.000000Z\",\"deleted_at\":null}}', NULL, '2026-08-24 16:22:23', '2026-08-24 16:22:23'),
(40, 'default', 'updated', 'App\\Models\\Category', 'updated', 3, 'App\\Models\\User', 1, '{\"attributes\":{\"name\":\"Packet Loss Issue\"},\"old\":{\"name\":\" One at Technical Support\"}}', NULL, '2026-08-24 17:04:07', '2026-08-24 17:04:07'),
(41, 'default', 'created', 'App\\Models\\Category', 'created', 5, 'App\\Models\\User', 1, '{\"attributes\":{\"id\":5,\"unit_id\":2,\"name\":\"Website Access Issue\",\"created_at\":null,\"updated_at\":null,\"deleted_at\":null}}', NULL, '2026-08-24 17:04:30', '2026-08-24 17:04:30'),
(42, 'default', 'created', 'App\\Models\\Category', 'created', 6, 'App\\Models\\User', 1, '{\"attributes\":{\"id\":6,\"unit_id\":2,\"name\":\"Destination Latency High Issue\",\"created_at\":null,\"updated_at\":null,\"deleted_at\":null}}', NULL, '2026-08-24 17:05:05', '2026-08-24 17:05:05'),
(43, 'default', 'created', 'App\\Models\\Ticket', 'created', 5, 'App\\Models\\User', 1, '{\"attributes\":{\"priority.name\":\"Critical\",\"unit.name\":\"Technical Support\",\"owner.name\":\"Super Admin\",\"responsible.name\":\"Staff Unit\",\"category.name\":\"Website Access Issue\",\"ticketStatus.name\":\"New\",\"comments\":[],\"id\":5,\"priority_id\":3,\"unit_id\":2,\"owner_id\":1,\"category_id\":5,\"title\":\"Super Speed Net\",\"description\":\"<p>facing website access issue<\\/p>\",\"ticket_statuses_id\":1,\"status_updated_at\":\"2026-08-24T23:09:10.000000Z\",\"responsible_id\":3,\"created_at\":\"2026-08-24T23:09:10.000000Z\",\"updated_at\":\"2026-08-24T23:09:10.000000Z\",\"deleted_at\":null}}', NULL, '2026-08-24 17:09:10', '2026-08-24 17:09:10'),
(44, 'default', 'updated', 'App\\Models\\Ticket', 'updated', 5, 'App\\Models\\User', 3, '{\"attributes\":{\"ticketStatus.name\":\"Closed\",\"ticket_statuses_id\":6,\"status_updated_at\":\"2026-08-24T23:11:00.000000Z\",\"updated_at\":\"2026-08-24T23:11:00.000000Z\"},\"old\":{\"ticketStatus.name\":\"New\",\"ticket_statuses_id\":1,\"status_updated_at\":\"2026-08-24T23:09:10.000000Z\",\"updated_at\":\"2026-08-24T23:09:10.000000Z\"}}', NULL, '2026-08-24 17:11:00', '2026-08-24 17:11:00'),
(45, 'default', 'created', 'App\\Models\\Comment', 'created', 1, 'App\\Models\\User', 3, '{\"attributes\":{\"ticket.title\":\"Super Speed Net\",\"id\":1,\"tiket_id\":5,\"user_id\":3,\"comment\":\"<p>client er kasey update neya hoisey.<\\/p>\",\"attachments\":null,\"created_at\":\"2026-08-24T23:12:44.000000Z\",\"updated_at\":\"2026-08-24T23:12:44.000000Z\",\"deleted_at\":null}}', NULL, '2026-08-24 17:12:44', '2026-08-24 17:12:44'),
(46, 'default', 'updated', 'App\\Models\\Ticket', 'updated', 5, 'App\\Models\\User', 3, '{\"attributes\":{\"responsible.name\":\"User\",\"status_updated_at\":\"2026-08-25T05:14:45.000000Z\",\"responsible_id\":4,\"updated_at\":\"2026-08-24T23:14:45.000000Z\"},\"old\":{\"responsible.name\":\"Staff Unit\",\"status_updated_at\":\"2026-08-24T23:11:00.000000Z\",\"responsible_id\":3,\"updated_at\":\"2026-08-24T23:11:00.000000Z\"}}', NULL, '2026-08-24 17:14:45', '2026-08-24 17:14:45'),
(47, 'default', 'updated', 'App\\Models\\Ticket', 'updated', 5, 'App\\Models\\User', 4, '{\"attributes\":{\"responsible.name\":\"Staff Unit\",\"status_updated_at\":\"2026-08-25T05:19:40.000000Z\",\"responsible_id\":3,\"updated_at\":\"2026-08-24T23:19:40.000000Z\"},\"old\":{\"responsible.name\":\"User\",\"status_updated_at\":\"2026-08-25T05:14:45.000000Z\",\"responsible_id\":4,\"updated_at\":\"2026-08-24T23:14:45.000000Z\"}}', NULL, '2026-08-24 17:19:40', '2026-08-24 17:19:40'),
(48, 'default', 'created', 'App\\Models\\User', 'created', 5, 'App\\Models\\User', 1, '{\"attributes\":{\"id\":5,\"name\":\"Amit Das\",\"email\":\"amit.das@gmail.com\",\"email_verified_at\":null,\"password\":\"$2y$10$.XYgcA\\/D4\\/hmvPM91OtvX.BealpwPclJzXIDsXdufghoxX.FmCoAe\",\"remember_token\":null,\"created_at\":\"2026-08-26T17:38:05.000000Z\",\"updated_at\":\"2026-08-26T17:38:05.000000Z\",\"unit_id\":2,\"identity\":null,\"phone\":\"01332825991\",\"is_active\":true,\"deleted_at\":null,\"custom_fields\":null,\"avatar_url\":null}}', NULL, '2026-08-26 11:38:05', '2026-08-26 11:38:05'),
(49, 'default', 'updated', 'App\\Models\\Ticket', 'updated', 5, 'App\\Models\\User', 1, '{\"attributes\":{\"responsible.name\":\"Amit Das\",\"status_updated_at\":\"2026-08-26T23:39:15.000000Z\",\"responsible_id\":5,\"updated_at\":\"2026-08-26T17:39:15.000000Z\"},\"old\":{\"responsible.name\":\"Staff Unit\",\"status_updated_at\":\"2026-08-25T05:19:40.000000Z\",\"responsible_id\":3,\"updated_at\":\"2026-08-24T23:19:40.000000Z\"}}', NULL, '2026-08-26 11:39:15', '2026-08-26 11:39:15'),
(50, 'default', 'deleted', 'App\\Models\\User', 'deleted', 5, 'App\\Models\\User', 1, '{\"old\":{\"id\":5,\"name\":\"Amit Das\",\"email\":\"amit.das@gmail.com\",\"email_verified_at\":\"2026-08-22T14:24:45.000000Z\",\"password\":\"$2y$10$.XYgcA\\/D4\\/hmvPM91OtvX.BealpwPclJzXIDsXdufghoxX.FmCoAe\",\"remember_token\":null,\"created_at\":\"2026-08-26T17:38:05.000000Z\",\"updated_at\":\"2026-08-26T17:47:40.000000Z\",\"unit_id\":2,\"identity\":null,\"phone\":\"01332825991\",\"is_active\":true,\"deleted_at\":\"2026-08-26T17:47:40.000000Z\",\"custom_fields\":null,\"avatar_url\":null}}', NULL, '2026-08-26 11:47:40', '2026-08-26 11:47:40'),
(51, 'default', 'updated', 'App\\Models\\Ticket', 'updated', 5, 'App\\Models\\User', 1, '{\"attributes\":{\"responsible.name\":\"Staff Unit\",\"status_updated_at\":\"2026-08-26T23:48:21.000000Z\",\"responsible_id\":3,\"updated_at\":\"2026-08-26T17:48:21.000000Z\"},\"old\":{\"responsible.name\":null,\"status_updated_at\":\"2026-08-26T23:39:15.000000Z\",\"responsible_id\":5,\"updated_at\":\"2026-08-26T17:39:15.000000Z\"}}', NULL, '2026-08-26 11:48:21', '2026-08-26 11:48:21'),
(52, 'default', 'created', 'App\\Models\\User', 'created', 6, 'App\\Models\\User', 1, '{\"attributes\":{\"id\":6,\"name\":\"Mridul Roy\",\"email\":\"tandonroy840@gmail.com\",\"email_verified_at\":null,\"password\":\"$2y$10$Al3PXqClHNJiEddXtZyiM.odwgASAJnCUg32UzPKTgz9jezXeVEcq\",\"remember_token\":null,\"created_at\":\"2026-08-26T17:56:27.000000Z\",\"updated_at\":\"2026-08-26T17:56:27.000000Z\",\"unit_id\":2,\"identity\":null,\"phone\":\"01332825991\",\"is_active\":false,\"deleted_at\":null,\"custom_fields\":null,\"avatar_url\":null}}', NULL, '2026-08-26 11:56:27', '2026-08-26 11:56:27'),
(53, 'default', 'updated', 'App\\Models\\User', 'updated', 6, 'App\\Models\\User', 1, '{\"attributes\":{\"updated_at\":\"2026-08-26T17:56:59.000000Z\",\"is_active\":true},\"old\":{\"updated_at\":\"2026-08-26T17:56:27.000000Z\",\"is_active\":false}}', NULL, '2026-08-26 11:56:59', '2026-08-26 11:56:59'),
(54, 'default', 'updated', 'App\\Models\\Ticket', 'updated', 5, 'App\\Models\\User', 1, '{\"attributes\":{\"responsible.name\":\"Mridul Roy\",\"status_updated_at\":\"2026-08-26T23:58:53.000000Z\",\"responsible_id\":6,\"updated_at\":\"2026-08-26T17:58:53.000000Z\"},\"old\":{\"responsible.name\":\"Staff Unit\",\"status_updated_at\":\"2026-08-26T23:48:21.000000Z\",\"responsible_id\":3,\"updated_at\":\"2026-08-26T17:48:21.000000Z\"}}', NULL, '2026-08-26 11:58:53', '2026-08-26 11:58:53'),
(55, 'default', 'created', 'App\\Models\\Ticket', 'created', 6, 'App\\Models\\User', 6, '{\"attributes\":{\"priority.name\":\"Critical\",\"unit.name\":\"Technical Support\",\"owner.name\":\"Mridul Roy\",\"responsible.name\":null,\"category.name\":\"Destination Latency High Issue\",\"ticketStatus.name\":\"New\",\"comments\":[],\"id\":6,\"priority_id\":3,\"unit_id\":2,\"owner_id\":6,\"category_id\":6,\"title\":\"Super Speed Net\",\"description\":\"<p>xyz<\\/p>\",\"ticket_statuses_id\":1,\"status_updated_at\":\"2026-08-26T18:56:23.000000Z\",\"responsible_id\":null,\"created_at\":\"2026-08-26T18:56:23.000000Z\",\"updated_at\":\"2026-08-26T18:56:23.000000Z\",\"deleted_at\":null}}', NULL, '2026-08-26 12:56:24', '2026-08-26 12:56:24'),
(56, 'default', 'updated', 'App\\Models\\Ticket', 'updated', 6, 'App\\Models\\User', 6, '{\"attributes\":{\"responsible.name\":\"Mridul Roy\",\"status_updated_at\":\"2026-08-27T00:56:42.000000Z\",\"responsible_id\":6,\"updated_at\":\"2026-08-26T18:56:42.000000Z\"},\"old\":{\"responsible.name\":null,\"status_updated_at\":\"2026-08-26T18:56:23.000000Z\",\"responsible_id\":null,\"updated_at\":\"2026-08-26T18:56:23.000000Z\"}}', NULL, '2026-08-26 12:56:42', '2026-08-26 12:56:42'),
(57, 'default', 'created', 'App\\Models\\User', 'created', 7, 'App\\Models\\User', 1, '{\"attributes\":{\"id\":7,\"name\":\"Dipu Roy\",\"email\":\"dipuroy@example.com\",\"email_verified_at\":null,\"password\":\"$2y$10$DqGLRyS4N4\\/2PrG1A2i9s.N152GzpNsc9H1Jwc\\/Wboa2Bfr9N.vHy\",\"remember_token\":null,\"created_at\":\"2026-08-26T19:36:34.000000Z\",\"updated_at\":\"2026-08-26T19:36:34.000000Z\",\"unit_id\":2,\"identity\":null,\"phone\":null,\"is_active\":true,\"deleted_at\":null,\"custom_fields\":null,\"avatar_url\":null}}', NULL, '2026-08-26 13:36:34', '2026-08-26 13:36:34'),
(58, 'default', 'updated', 'App\\Models\\Ticket', 'updated', 6, 'App\\Models\\User', 1, '{\"attributes\":{\"responsible.name\":\"Dipu Roy\",\"status_updated_at\":\"2026-08-31T15:11:25.000000Z\",\"responsible_id\":7,\"updated_at\":\"2026-08-31T09:11:25.000000Z\"},\"old\":{\"responsible.name\":\"Mridul Roy\",\"status_updated_at\":\"2026-08-27T00:56:42.000000Z\",\"responsible_id\":6,\"updated_at\":\"2026-08-26T18:56:42.000000Z\"}}', NULL, '2026-08-31 03:11:25', '2026-08-31 03:11:25');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `unit_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `unit_id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, ' One at Sales Department', NULL, NULL, NULL),
(2, 1, ' Two at Sales Department', NULL, NULL, NULL),
(3, 2, 'Packet Loss Issue', NULL, NULL, NULL),
(4, 3, ' One at Billing Support', NULL, NULL, NULL),
(5, 2, 'Website Access Issue', NULL, NULL, NULL),
(6, 2, 'Destination Latency High Issue', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tiket_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `comment` text NOT NULL,
  `attachments` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `tiket_id`, `user_id`, `comment`, `attachments`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 5, 3, '<p>client er kasey update neya hoisey.</p>', NULL, '2026-08-24 17:12:44', '2026-08-24 17:12:44', NULL);

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
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(1, 'default', '{\"uuid\":\"6b4b1781-f805-49db-a25d-9a3f946028d6\",\"displayName\":\"Filament\\\\Notifications\\\\Auth\\\\VerifyEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:39:\\\"Filament\\\\Notifications\\\\Auth\\\\VerifyEmail\\\":2:{s:3:\\\"url\\\";s:190:\\\"http:\\/\\/127.0.0.1:8000\\/admin\\/email-verification\\/verify\\/1\\/8ee01ab081338e8f2c5a6e3ac25883eb66dc5dce?expires=1787390322&signature=a1250fc7ce0306fb09503cf45440d8fb88a70ea7a88e56ea889bb36a1fc56a5a\\\";s:2:\\\"id\\\";s:36:\\\"2a5fe5fd-6f26-4ac8-88f8-c3276c41cd46\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"},\"createdAt\":1787386722,\"delay\":null}', 0, NULL, 1787386722, 1787386722),
(2, 'default', '{\"uuid\":\"4fa929d2-c947-4179-8cf6-4dcee4ebd5f4\",\"displayName\":\"App\\\\Notifications\\\\TicketCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:3;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\TicketCreated\\\":2:{s:9:\\\"\\u0000*\\u0000ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:5;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";N;s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"76cc3b6c-877c-4504-b92e-52ad1baf2023\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:10:\\\"connection\\\";s:8:\\\"database\\\";}\"},\"createdAt\":1787612950,\"delay\":null}', 0, NULL, 1787612950, 1787612950),
(3, 'default', '{\"uuid\":\"7c719f6a-68ef-4d79-be5c-7bc870567601\",\"displayName\":\"App\\\\Notifications\\\\TicketStatusUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:37:\\\"App\\\\Notifications\\\\TicketStatusUpdated\\\":2:{s:9:\\\"\\u0000*\\u0000ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:5;s:9:\\\"relations\\\";a:4:{i:0;s:12:\\\"ticketStatus\\\";i:1;s:5:\\\"owner\\\";i:2;s:11:\\\"responsible\\\";i:3;s:8:\\\"comments\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"edf42576-a288-40a4-a08a-b0f11382f638\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:10:\\\"connection\\\";s:8:\\\"database\\\";}\"},\"createdAt\":1787613060,\"delay\":null}', 0, NULL, 1787613060, 1787613060),
(4, 'default', '{\"uuid\":\"d0219f91-eead-4f6d-9bd2-b0998c283789\",\"displayName\":\"App\\\\Notifications\\\\TicketCommentCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:38:\\\"App\\\\Notifications\\\\TicketCommentCreated\\\":2:{s:10:\\\"\\u0000*\\u0000comment\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Comment\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:5:{i:0;s:6:\\\"ticket\\\";i:1;s:12:\\\"ticket.owner\\\";i:2;s:18:\\\"ticket.responsible\\\";i:3;s:15:\\\"ticket.comments\\\";i:4;s:20:\\\"ticket.comments.user\\\";}s:10:\\\"connection\\\";N;s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"73177e36-6ee9-468e-9ec2-c2eeb436e723\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:10:\\\"connection\\\";s:8:\\\"database\\\";}\"},\"createdAt\":1787613164,\"delay\":null}', 0, NULL, 1787613164, 1787613164),
(5, 'default', '{\"uuid\":\"78f015d9-a4bc-447e-a811-3e29ffc1b928\",\"displayName\":\"Filament\\\\Notifications\\\\Auth\\\\VerifyEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:5;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:39:\\\"Filament\\\\Notifications\\\\Auth\\\\VerifyEmail\\\":2:{s:3:\\\"url\\\";s:190:\\\"http:\\/\\/127.0.0.1:8000\\/admin\\/email-verification\\/verify\\/5\\/cbf102f6d3c7bb31461c77f75c130b121dcd20b1?expires=1787769779&signature=7a9020af6b81fd0ade78c9db1a03f307dd11ab093bfa1de593ce18b250a78da7\\\";s:2:\\\"id\\\";s:36:\\\"cc49cd41-19a6-4b3c-8b8f-6e20376e21b0\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"},\"createdAt\":1787766179,\"delay\":null}', 0, NULL, 1787766179, 1787766179),
(6, 'default', '{\"uuid\":\"b63b267f-0745-498e-b1db-e00369934a1a\",\"displayName\":\"Filament\\\\Notifications\\\\Auth\\\\VerifyEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:5;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:39:\\\"Filament\\\\Notifications\\\\Auth\\\\VerifyEmail\\\":2:{s:3:\\\"url\\\";s:190:\\\"http:\\/\\/127.0.0.1:8000\\/admin\\/email-verification\\/verify\\/5\\/cbf102f6d3c7bb31461c77f75c130b121dcd20b1?expires=1787769932&signature=19b909b9ba1e9b5ce26a6e69fe618ecfa491af013a87bfd422999f1280cb8991\\\";s:2:\\\"id\\\";s:36:\\\"c32b4731-36a0-4d84-960f-78f252c8034d\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"},\"createdAt\":1787766332,\"delay\":null}', 0, NULL, 1787766332, 1787766332),
(7, 'default', '{\"uuid\":\"fb32c1c6-2ff6-4c43-a1ab-6a4595bdd115\",\"displayName\":\"App\\\\Notifications\\\\TicketCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:3;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\TicketCreated\\\":2:{s:9:\\\"\\u0000*\\u0000ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:6;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";N;s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"46e91228-52eb-4bff-a71f-75ee25aefa64\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:10:\\\"connection\\\";s:8:\\\"database\\\";}\"},\"createdAt\":1787770584,\"delay\":null}', 0, NULL, 1787770584, 1787770584);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_06_06_082020_create_comments_table', 1),
(6, '2023_06_06_082020_create_priorities_table', 1),
(7, '2023_06_06_082020_create_problem_categories_table', 1),
(8, '2023_06_06_082020_create_ticket_statuses_table', 1),
(9, '2023_06_06_082020_create_tickets_table', 1),
(10, '2023_06_06_082020_create_units_table', 1),
(11, '2023_06_06_082020_update_users_table', 1),
(12, '2023_06_06_082023_add_foreign_keys_to_comments_table', 1),
(13, '2023_06_06_082023_add_foreign_keys_to_problem_categories_table', 1),
(14, '2023_06_06_082023_add_foreign_keys_to_tickets_table', 1),
(15, '2023_06_06_082023_add_foreign_keys_to_users_table', 1),
(16, '2023_06_07_070117_create_permission_tables', 1),
(17, '2023_06_13_041702_create_notifications_table', 1),
(18, '2023_06_14_043122_add_attachment_to_comments_table', 1),
(19, '2023_06_14_070356_create_socialite_users_table', 1),
(20, '2023_06_14_070958_update_users_table_add_nullable_to_password', 1),
(21, '2025_07_17_200129_create_settings_table', 1),
(22, '2025_07_17_202605_create_general_settings', 1),
(23, '2025_07_17_202705_create_account_settings', 1),
(24, '2025_07_18_182746_add_custom_fields_to_users_table', 1),
(25, '2025_07_18_182747_add_avatar_url_to_users_table', 1),
(26, '2025_07_21_102315_rename_problem_categories_table_to_categories_table', 1),
(27, '2025_07_21_103220_update_tickets_table_rename_problem_category_id_to_category_id', 1),
(28, '2025_07_21_104405_update_categories_table_nullable_unit_id', 1),
(29, '2025_07_21_112621_update_priorities_table_add_sla', 1),
(30, '2025_07_21_113245_create_ticket_settings', 1),
(31, '2025_07_21_155510_create_activity_log_table', 1),
(32, '2025_07_21_155511_add_event_column_to_activity_log_table', 1),
(33, '2025_07_21_155512_add_batch_uuid_column_to_activity_log_table', 1),
(34, '2025_07_22_081340_remove_avatar_url_to_users_table', 1),
(35, '2025_07_22_165650_create_general_settings', 1),
(36, '2025_07_23_080150_create_mail_settings', 1),
(37, '2025_07_23_133228_create_jobs_table', 1),
(38, '2025_07_24_161010_update_general_settings', 1),
(39, '2025_07_25_134233_add_color_column_to_ticket_status_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(3, 'App\\Models\\User', 3);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(255) NOT NULL,
  `notifiable_type` varchar(255) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('46e91228-52eb-4bff-a71f-75ee25aefa64', 'App\\Notifications\\TicketCreated', 'App\\Models\\User', 3, '{\"actions\":[{\"name\":\"view\",\"color\":null,\"event\":null,\"eventData\":[],\"dispatchDirection\":false,\"dispatchToComponent\":null,\"extraAttributes\":[],\"icon\":null,\"iconPosition\":\"before\",\"iconSize\":null,\"isOutlined\":false,\"isDisabled\":false,\"label\":\"View\",\"shouldClose\":false,\"shouldMarkAsRead\":false,\"shouldMarkAsUnread\":false,\"shouldOpenUrlInNewTab\":false,\"size\":\"sm\",\"tooltip\":null,\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/tickets\\/6\",\"view\":\"filament-actions::button-action\"}],\"body\":\"Super Speed Net\",\"color\":null,\"duration\":\"persistent\",\"icon\":null,\"iconColor\":null,\"status\":null,\"title\":\"Ticket #6 created\",\"view\":\"filament-notifications::notification\",\"viewData\":[],\"format\":\"filament\"}', NULL, '2026-08-26 12:56:24', '2026-08-26 12:56:24'),
('73177e36-6ee9-468e-9ec2-c2eeb436e723', 'App\\Notifications\\TicketCommentCreated', 'App\\Models\\User', 1, '{\"actions\":[{\"name\":\"view\",\"color\":null,\"event\":null,\"eventData\":[],\"dispatchDirection\":false,\"dispatchToComponent\":null,\"extraAttributes\":[],\"icon\":null,\"iconPosition\":\"before\",\"iconSize\":null,\"isOutlined\":false,\"isDisabled\":false,\"label\":\"View\",\"shouldClose\":false,\"shouldMarkAsRead\":false,\"shouldMarkAsUnread\":false,\"shouldOpenUrlInNewTab\":false,\"size\":\"sm\",\"tooltip\":null,\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/tickets\\/5\",\"view\":\"filament-actions::button-action\"}],\"body\":\"Super Speed Net\",\"color\":null,\"duration\":\"persistent\",\"icon\":null,\"iconColor\":null,\"status\":null,\"title\":\"New comment on ticket #5\",\"view\":\"filament-notifications::notification\",\"viewData\":[],\"format\":\"filament\"}', NULL, '2026-08-24 17:12:44', '2026-08-24 17:12:44'),
('76cc3b6c-877c-4504-b92e-52ad1baf2023', 'App\\Notifications\\TicketCreated', 'App\\Models\\User', 3, '{\"actions\":[{\"name\":\"view\",\"color\":null,\"event\":null,\"eventData\":[],\"dispatchDirection\":false,\"dispatchToComponent\":null,\"extraAttributes\":[],\"icon\":null,\"iconPosition\":\"before\",\"iconSize\":null,\"isOutlined\":false,\"isDisabled\":false,\"label\":\"View\",\"shouldClose\":false,\"shouldMarkAsRead\":false,\"shouldMarkAsUnread\":false,\"shouldOpenUrlInNewTab\":false,\"size\":\"sm\",\"tooltip\":null,\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/tickets\\/5\",\"view\":\"filament-actions::button-action\"}],\"body\":\"Super Speed Net\",\"color\":null,\"duration\":\"persistent\",\"icon\":null,\"iconColor\":null,\"status\":null,\"title\":\"Ticket #5 created\",\"view\":\"filament-notifications::notification\",\"viewData\":[],\"format\":\"filament\"}', '2026-08-24 17:46:11', '2026-08-24 17:09:10', '2026-08-24 17:46:11'),
('edf42576-a288-40a4-a08a-b0f11382f638', 'App\\Notifications\\TicketStatusUpdated', 'App\\Models\\User', 1, '{\"actions\":[{\"name\":\"view\",\"color\":null,\"event\":null,\"eventData\":[],\"dispatchDirection\":false,\"dispatchToComponent\":null,\"extraAttributes\":[],\"icon\":null,\"iconPosition\":\"before\",\"iconSize\":null,\"isOutlined\":false,\"isDisabled\":false,\"label\":\"View\",\"shouldClose\":false,\"shouldMarkAsRead\":false,\"shouldMarkAsUnread\":false,\"shouldOpenUrlInNewTab\":false,\"size\":\"sm\",\"tooltip\":null,\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/tickets\\/5\",\"view\":\"filament-actions::button-action\"}],\"body\":\"Super Speed Net\",\"color\":null,\"duration\":\"persistent\",\"icon\":null,\"iconColor\":null,\"status\":null,\"title\":\"Ticket #5 changed to Closed\",\"view\":\"filament-notifications::notification\",\"viewData\":[],\"format\":\"filament\"}', NULL, '2026-08-24 17:11:00', '2026-08-24 17:11:00');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'view-any Category', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(2, 'view-any Category', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(3, 'view Category', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(4, 'view Category', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(5, 'create Category', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(6, 'create Category', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(7, 'update Category', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(8, 'update Category', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(9, 'delete Category', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(10, 'delete Category', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(11, 'delete-any Category', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(12, 'delete-any Category', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(13, 'replicate Category', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(14, 'replicate Category', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(15, 'restore Category', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(16, 'restore Category', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(17, 'restore-any Category', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(18, 'restore-any Category', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(19, 'reorder Category', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(20, 'reorder Category', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(21, 'force-delete Category', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(22, 'force-delete Category', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(23, 'force-delete-any Category', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(24, 'force-delete-any Category', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(25, 'view-any Comment', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(26, 'view-any Comment', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(27, 'view Comment', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(28, 'view Comment', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(29, 'create Comment', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(30, 'create Comment', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(31, 'update Comment', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(32, 'update Comment', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(33, 'delete Comment', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(34, 'delete Comment', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(35, 'delete-any Comment', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(36, 'delete-any Comment', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(37, 'replicate Comment', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(38, 'replicate Comment', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(39, 'restore Comment', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(40, 'restore Comment', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(41, 'restore-any Comment', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(42, 'restore-any Comment', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(43, 'reorder Comment', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(44, 'reorder Comment', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(45, 'force-delete Comment', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(46, 'force-delete Comment', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(47, 'force-delete-any Comment', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(48, 'force-delete-any Comment', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(49, 'view-any Priority', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(50, 'view-any Priority', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(51, 'view Priority', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(52, 'view Priority', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(53, 'create Priority', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(54, 'create Priority', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(55, 'update Priority', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(56, 'update Priority', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(57, 'delete Priority', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(58, 'delete Priority', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(59, 'delete-any Priority', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(60, 'delete-any Priority', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(61, 'replicate Priority', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(62, 'replicate Priority', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(63, 'restore Priority', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(64, 'restore Priority', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(65, 'restore-any Priority', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(66, 'restore-any Priority', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(67, 'reorder Priority', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(68, 'reorder Priority', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(69, 'force-delete Priority', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(70, 'force-delete Priority', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(71, 'force-delete-any Priority', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(72, 'force-delete-any Priority', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(73, 'view-any Role', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(74, 'view-any Role', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(75, 'view Role', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(76, 'view Role', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(77, 'create Role', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(78, 'create Role', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(79, 'update Role', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(80, 'update Role', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(81, 'delete Role', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(82, 'delete Role', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(83, 'delete-any Role', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(84, 'delete-any Role', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(85, 'replicate Role', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(86, 'replicate Role', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(87, 'restore Role', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(88, 'restore Role', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(89, 'restore-any Role', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(90, 'restore-any Role', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(91, 'reorder Role', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(92, 'reorder Role', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(93, 'force-delete Role', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(94, 'force-delete Role', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(95, 'force-delete-any Role', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(96, 'force-delete-any Role', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(97, 'view-any Setting', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(98, 'view-any Setting', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(99, 'view Setting', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(100, 'view Setting', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(101, 'create Setting', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(102, 'create Setting', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(103, 'update Setting', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(104, 'update Setting', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(105, 'delete Setting', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(106, 'delete Setting', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(107, 'delete-any Setting', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(108, 'delete-any Setting', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(109, 'replicate Setting', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(110, 'replicate Setting', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(111, 'restore Setting', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(112, 'restore Setting', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(113, 'restore-any Setting', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(114, 'restore-any Setting', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(115, 'reorder Setting', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(116, 'reorder Setting', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(117, 'force-delete Setting', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(118, 'force-delete Setting', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(119, 'force-delete-any Setting', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(120, 'force-delete-any Setting', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(121, 'view-any Ticket', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(122, 'view-any Ticket', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(123, 'view Ticket', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(124, 'view Ticket', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(125, 'create Ticket', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(126, 'create Ticket', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(127, 'update Ticket', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(128, 'update Ticket', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(129, 'delete Ticket', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(130, 'delete Ticket', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(131, 'delete-any Ticket', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(132, 'delete-any Ticket', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(133, 'replicate Ticket', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(134, 'replicate Ticket', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(135, 'restore Ticket', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(136, 'restore Ticket', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(137, 'restore-any Ticket', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(138, 'restore-any Ticket', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(139, 'reorder Ticket', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(140, 'reorder Ticket', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(141, 'force-delete Ticket', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(142, 'force-delete Ticket', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(143, 'force-delete-any Ticket', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(144, 'force-delete-any Ticket', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(145, 'view-any TicketStatus', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(146, 'view-any TicketStatus', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(147, 'view TicketStatus', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(148, 'view TicketStatus', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(149, 'create TicketStatus', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(150, 'create TicketStatus', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(151, 'update TicketStatus', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(152, 'update TicketStatus', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(153, 'delete TicketStatus', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(154, 'delete TicketStatus', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(155, 'delete-any TicketStatus', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(156, 'delete-any TicketStatus', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(157, 'replicate TicketStatus', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(158, 'replicate TicketStatus', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(159, 'restore TicketStatus', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(160, 'restore TicketStatus', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(161, 'restore-any TicketStatus', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(162, 'restore-any TicketStatus', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(163, 'reorder TicketStatus', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(164, 'reorder TicketStatus', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(165, 'force-delete TicketStatus', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(166, 'force-delete TicketStatus', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(167, 'force-delete-any TicketStatus', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(168, 'force-delete-any TicketStatus', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(169, 'view-any Unit', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(170, 'view-any Unit', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(171, 'view Unit', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(172, 'view Unit', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(173, 'create Unit', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(174, 'create Unit', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(175, 'update Unit', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(176, 'update Unit', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(177, 'delete Unit', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(178, 'delete Unit', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(179, 'delete-any Unit', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(180, 'delete-any Unit', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(181, 'replicate Unit', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(182, 'replicate Unit', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(183, 'restore Unit', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(184, 'restore Unit', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(185, 'restore-any Unit', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(186, 'restore-any Unit', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(187, 'reorder Unit', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(188, 'reorder Unit', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(189, 'force-delete Unit', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(190, 'force-delete Unit', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(191, 'force-delete-any Unit', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(192, 'force-delete-any Unit', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(193, 'view-any User', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(194, 'view-any User', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(195, 'view User', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(196, 'view User', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(197, 'create User', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(198, 'create User', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(199, 'update User', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(200, 'update User', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(201, 'delete User', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(202, 'delete User', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(203, 'delete-any User', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(204, 'delete-any User', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(205, 'replicate User', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(206, 'replicate User', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(207, 'restore User', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(208, 'restore User', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(209, 'restore-any User', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(210, 'restore-any User', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(211, 'reorder User', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(212, 'reorder User', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(213, 'force-delete User', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(214, 'force-delete User', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(215, 'force-delete-any User', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(216, 'force-delete-any User', 'api', '2026-08-22 02:16:31', '2026-08-22 02:16:31');

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
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `priorities`
--

CREATE TABLE `priorities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `sla` int(11) NOT NULL COMMENT 'SLA Overdue (minutes)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `priorities`
--

INSERT INTO `priorities` (`id`, `name`, `sla`) VALUES
(1, 'Normal', 2880),
(2, 'Urgent', 1440),
(3, 'Critical', 480);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(2, 'Admin Unit', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(3, 'Staff Unit', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(4, 'Global Viewer', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(5, 'Unit Viewer', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31'),
(6, 'Global Staff', 'web', '2026-08-22 02:16:31', '2026-08-22 02:16:31');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `group` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `locked` tinyint(1) NOT NULL DEFAULT 0,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`payload`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `group`, `name`, `locked`, `payload`, `created_at`, `updated_at`) VALUES
(1, 'general', 'site_title', 0, '\"Earth Telecommunication\"', '2026-08-22 02:01:03', '2026-08-26 12:41:24'),
(2, 'general', 'site_url', 0, '\"http:\\/\\/127.0.0.1:8000\"', '2026-08-22 02:01:03', '2026-08-26 12:41:24'),
(3, 'general', 'site_timezone', 0, '\"Asia\\/Dhaka\"', '2026-08-22 02:01:03', '2026-08-26 12:41:24'),
(4, 'general', 'site_locale', 0, '\"en\"', '2026-08-22 02:01:03', '2026-08-26 12:41:24'),
(5, 'account', 'user_registration', 0, 'true', '2026-08-22 02:01:03', '2026-08-22 02:01:03'),
(6, 'account', 'user_email_verification', 0, 'true', '2026-08-22 02:01:03', '2026-08-22 02:01:03'),
(7, 'account', 'user_password_reset', 0, 'true', '2026-08-22 02:01:03', '2026-08-22 02:01:03'),
(8, 'account', 'auth_google_enabled', 0, 'false', '2026-08-22 02:01:03', '2026-08-22 02:01:03'),
(9, 'account', 'auth_google_registration', 0, 'true', '2026-08-22 02:01:03', '2026-08-22 02:01:03'),
(10, 'account', 'auth_google_scopes', 0, '[]', '2026-08-22 02:01:03', '2026-08-22 02:01:03'),
(11, 'account', 'auth_google_stateless', 0, 'false', '2026-08-22 02:01:03', '2026-08-22 02:01:03'),
(12, 'account', 'auth_google_client_id', 0, '\"\"', '2026-08-22 02:01:03', '2026-08-22 02:01:03'),
(13, 'account', 'auth_google_client_secret', 0, '\"\"', '2026-08-22 02:01:03', '2026-08-22 02:01:03'),
(14, 'account', 'auth_oauth0_enabled', 0, 'false', '2026-08-22 02:01:03', '2026-08-22 02:01:03'),
(15, 'account', 'auth_oauth0_registration', 0, 'true', '2026-08-22 02:01:03', '2026-08-22 02:01:03'),
(16, 'account', 'auth_oauth0_title', 0, '\"Auth0\"', '2026-08-22 02:01:03', '2026-08-22 02:01:03'),
(17, 'account', 'auth_oauth0_color', 0, '\"#3097d1\"', '2026-08-22 02:01:03', '2026-08-22 02:01:03'),
(18, 'account', 'auth_oauth0_scopes', 0, '[]', '2026-08-22 02:01:03', '2026-08-22 02:01:03'),
(19, 'account', 'auth_oauth0_extra_parameters', 0, '[]', '2026-08-22 02:01:03', '2026-08-22 02:01:03'),
(20, 'account', 'auth_oauth0_stateless', 0, 'false', '2026-08-22 02:01:03', '2026-08-22 02:01:03'),
(21, 'account', 'auth_oauth0_client_id', 0, '\"\"', '2026-08-22 02:01:03', '2026-08-22 02:01:03'),
(22, 'account', 'auth_oauth0_client_secret', 0, '\"\"', '2026-08-22 02:01:03', '2026-08-22 02:01:03'),
(23, 'account', 'auth_oauth0_base_url', 0, '\"\"', '2026-08-22 02:01:03', '2026-08-22 02:01:03'),
(24, 'account', 'auth_laravelpassport_enabled', 0, 'false', '2026-08-22 02:01:03', '2026-08-22 02:01:03'),
(25, 'account', 'auth_laravelpassport_registration', 0, 'true', '2026-08-22 02:01:03', '2026-08-22 02:01:03'),
(26, 'account', 'auth_laravelpassport_title', 0, '\"Laravel Passport\"', '2026-08-22 02:01:03', '2026-08-22 02:01:03'),
(27, 'account', 'auth_laravelpassport_color', 0, '\"#3097d1\"', '2026-08-22 02:01:03', '2026-08-22 02:01:03'),
(28, 'account', 'auth_laravelpassport_scopes', 0, '[]', '2026-08-22 02:01:03', '2026-08-22 02:01:03'),
(29, 'account', 'auth_laravelpassport_extra_parameters', 0, '[]', '2026-08-22 02:01:03', '2026-08-22 02:01:03'),
(30, 'account', 'auth_laravelpassport_stateless', 0, 'false', '2026-08-22 02:01:03', '2026-08-22 02:01:03'),
(31, 'account', 'auth_laravelpassport_client_id', 0, '\"\"', '2026-08-22 02:01:03', '2026-08-22 02:01:03'),
(32, 'account', 'auth_laravelpassport_client_secret', 0, '\"\"', '2026-08-22 02:01:03', '2026-08-22 02:01:03'),
(33, 'account', 'auth_laravelpassport_host', 0, '\"\"', '2026-08-22 02:01:03', '2026-08-22 02:01:03'),
(34, 'account', 'auth_laravelpassport_authorize_uri', 0, '\"oauth\\/authorize\"', '2026-08-22 02:01:03', '2026-08-22 02:01:03'),
(35, 'account', 'auth_laravelpassport_token_uri', 0, '\"oauth\\/token\"', '2026-08-22 02:01:03', '2026-08-22 02:01:03'),
(36, 'account', 'auth_laravelpassport_userinfo_uri', 0, '\"api\\/user\"', '2026-08-22 02:01:03', '2026-08-22 02:01:03'),
(37, 'ticket', 'default_priority', 0, '1', '2026-08-22 02:01:03', '2026-08-22 02:01:03'),
(38, 'ticket', 'closed_status', 0, '[]', '2026-08-22 02:01:03', '2026-08-22 02:01:03'),
(39, 'general', 'site_logo_image', 0, '\"site-logo\\/01M0V8MBDVWR9ETDM9GYWSKJTX.png\"', '2026-08-22 02:01:04', '2026-08-26 12:41:24'),
(40, 'general', 'site_logo_height', 0, '\"100px\"', '2026-08-22 02:01:04', '2026-08-26 12:41:24'),
(41, 'general', 'site_favicon_image', 0, 'null', '2026-08-22 02:01:04', '2026-08-26 12:41:24'),
(42, 'mail', 'mailer', 0, '\"sendmail\"', '2026-08-22 02:01:04', '2026-08-24 18:29:10'),
(43, 'mail', 'smtp_scheme', 0, '\"\"', '2026-08-22 02:01:04', '2026-08-24 18:29:10'),
(44, 'mail', 'smtp_host', 0, '\"mailpit\"', '2026-08-22 02:01:04', '2026-08-24 18:29:10'),
(45, 'mail', 'smtp_port', 0, '1025', '2026-08-22 02:01:04', '2026-08-24 18:29:10'),
(46, 'mail', 'smtp_username', 0, '\"\"', '2026-08-22 02:01:04', '2026-08-24 18:29:10'),
(47, 'mail', 'smtp_password', 0, '\"\"', '2026-08-22 02:01:04', '2026-08-24 18:29:10'),
(48, 'mail', 'smtp_localdomain', 0, '\"localhost\"', '2026-08-22 02:01:04', '2026-08-24 18:29:10'),
(49, 'mail', 'from_address', 0, '\"tandonroy840@gmail.com\"', '2026-08-22 02:01:04', '2026-08-24 18:29:10'),
(50, 'mail', 'from_name', 0, '\"Laravel\"', '2026-08-22 02:01:04', '2026-08-24 18:29:10'),
(51, 'mail', 'sendmail_path', 0, '\"\\/usr\\/sbin\\/sendmail -bs -i\"', '2026-08-22 02:01:04', '2026-08-24 18:29:10'),
(52, 'general', 'datetime_format', 0, '\"Y-m-d H:i:s\"', '2026-08-22 02:01:04', '2026-08-26 12:41:24');

-- --------------------------------------------------------

--
-- Table structure for table `socialite_users`
--

CREATE TABLE `socialite_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `provider` varchar(255) NOT NULL,
  `provider_id` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `priority_id` bigint(20) UNSIGNED NOT NULL,
  `unit_id` bigint(20) UNSIGNED NOT NULL,
  `owner_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `ticket_statuses_id` bigint(20) UNSIGNED NOT NULL,
  `status_updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `responsible_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `priority_id`, `unit_id`, `owner_id`, `category_id`, `title`, `description`, `ticket_statuses_id`, `status_updated_at`, `responsible_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 1, 1, 'This is a sample ticket', 'This is a descriptions', 1, '2026-08-24 21:51:10', 2, '2026-08-22 02:16:32', '2026-08-24 15:51:10', NULL),
(5, 3, 2, 1, 5, 'Super Speed Net', '<p>facing website access issue</p>', 6, '2026-08-26 17:58:53', 6, '2026-08-24 17:09:10', '2026-08-26 11:58:53', NULL),
(6, 3, 2, 6, 6, 'Super Speed Net', '<p>xyz</p>', 1, '2026-08-31 09:11:25', 7, '2026-08-26 12:56:23', '2026-08-31 03:11:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ticket_statuses`
--

CREATE TABLE `ticket_statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `color` varchar(7) DEFAULT NULL COMMENT 'Status color hex code (e.g.: #7bd158)',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ticket_statuses`
--

INSERT INTO `ticket_statuses` (`id`, `name`, `color`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'New', NULL, NULL, NULL, NULL),
(2, 'Open', NULL, NULL, NULL, NULL),
(3, 'In Progress', NULL, NULL, NULL, NULL),
(4, 'Pending', NULL, NULL, NULL, NULL),
(5, 'Resolved', NULL, NULL, NULL, NULL),
(6, 'Closed', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Sales Department', NULL, NULL, NULL),
(2, 'Technical Support', NULL, NULL, NULL),
(3, 'Billing Support', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `unit_id` bigint(20) UNSIGNED DEFAULT NULL,
  `identity` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `custom_fields` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`custom_fields`)),
  `avatar_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `unit_id`, `identity`, `phone`, `is_active`, `deleted_at`, `custom_fields`, `avatar_url`) VALUES
(1, 'Super Admin', 'superadmin@example.com', '2026-08-22 08:22:46', '$2y$10$yLS8mpbCQpNejVP0OR0iweXmBuNUoLx/7B1ksPYP98IJnQH2Q5BhG', NULL, '2026-08-22 02:16:31', '2026-08-22 02:16:31', NULL, NULL, NULL, 1, NULL, NULL, NULL),
(2, 'Admin Unit', 'adminunit@example.com', '2026-08-22 08:23:58', '$2y$10$k7.f84RhtP8ntNFZmG9.3.oOshSU5yOOBwnfRmaS1wfXT8cbgsjqW', NULL, '2026-08-22 02:16:31', '2026-08-22 02:16:31', NULL, NULL, NULL, 1, NULL, NULL, NULL),
(3, 'Staff Unit', 'staffunit@example.com', '2026-08-22 08:24:22', '$2y$10$7F/wtM.rfVQDL97G5q2amO2gfeHDY9UxcRh4mykhy9qqXqzwQetDC', NULL, '2026-08-22 02:16:31', '2026-08-22 02:16:31', 2, NULL, NULL, 1, NULL, NULL, NULL),
(4, 'User', 'user@example.com', '2026-08-22 08:24:45', '$2y$10$MgbO9FX7E6skpA5q4rKL7ud7p2zk1P6eM1.V0jbhFtxxSWyonGm7.', NULL, '2026-08-22 02:16:32', '2026-08-22 02:16:32', 2, NULL, NULL, 1, NULL, NULL, NULL),
(6, 'Mridul Roy', 'tandonroy840@gmail.com', NULL, '$2y$10$Al3PXqClHNJiEddXtZyiM.odwgASAJnCUg32UzPKTgz9jezXeVEcq', NULL, '2026-08-26 11:56:27', '2026-08-26 11:56:59', 2, NULL, '01332825991', 1, NULL, NULL, NULL),
(7, 'Dipu Roy', 'dipuroy@example.com', NULL, '$2y$10$DqGLRyS4N4/2PrG1A2i9s.N152GzpNsc9H1Jwc/Wboa2Bfr9N.vHy', NULL, '2026-08-26 13:36:34', '2026-08-26 13:36:34', 2, NULL, NULL, 1, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject` (`subject_type`,`subject_id`),
  ADD KEY `causer` (`causer_type`,`causer_id`),
  ADD KEY `activity_log_log_name_index` (`log_name`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `unit_id` (`unit_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tiket_id` (`tiket_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `priorities`
--
ALTER TABLE `priorities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_group_name_unique` (`group`,`name`);

--
-- Indexes for table `socialite_users`
--
ALTER TABLE `socialite_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `socialite_users_provider_provider_id_unique` (`provider`,`provider_id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `priority_id` (`priority_id`),
  ADD KEY `unit_id` (`unit_id`),
  ADD KEY `owner_id` (`owner_id`),
  ADD KEY `problem_category_id` (`category_id`),
  ADD KEY `ticket_statuses_id` (`ticket_statuses_id`),
  ADD KEY `responsible_id` (`responsible_id`);

--
-- Indexes for table `ticket_statuses`
--
ALTER TABLE `ticket_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `unit_id` (`unit_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `priorities`
--
ALTER TABLE `priorities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=218;

--
-- AUTO_INCREMENT for table `socialite_users`
--
ALTER TABLE `socialite_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ticket_statuses`
--
ALTER TABLE `ticket_statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_ibfk_1` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `comments_ibfk_3` FOREIGN KEY (`tiket_id`) REFERENCES `tickets` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `comments_ibfk_4` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `tickets_ibfk_1` FOREIGN KEY (`priority_id`) REFERENCES `priorities` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `tickets_ibfk_2` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `tickets_ibfk_3` FOREIGN KEY (`owner_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `tickets_ibfk_4` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `tickets_ibfk_5` FOREIGN KEY (`responsible_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `tickets_ibfk_6` FOREIGN KEY (`ticket_statuses_id`) REFERENCES `ticket_statuses` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
