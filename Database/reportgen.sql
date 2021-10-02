-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 01, 2021 at 01:26 PM
-- Server version: 8.0.21
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `reportgen`
--

-- --------------------------------------------------------

--
-- Table structure for table `order_report`
--

DROP TABLE IF EXISTS `order_report`;
CREATE TABLE IF NOT EXISTS `order_report` (
  `Date` date DEFAULT NULL,
  `Num_of_Orders` int DEFAULT NULL,
  `Cancelled_Orders` int DEFAULT NULL,
  `Pending_Orders` int DEFAULT NULL,
  `Confirmed_Orders` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_report`
--

INSERT INTO `order_report` (`Date`, `Num_of_Orders`, `Cancelled_Orders`, `Pending_Orders`, `Confirmed_Orders`) VALUES
('2020-01-01', 99, 27, 6, 66),
('2020-01-02', 23, 5, 3, 15),
('2020-01-03', 127, 99, 1, 27),
('2020-01-04', 87, 77, 6, 4),
('2020-01-05', 24, 4, 5, 15),
('2020-01-06', 144, 39, 5, 100),
('2020-01-07', 115, 31, 6, 78),
('2020-01-08', 93, 32, 8, 53),
('2020-01-09', 98, 68, 8, 22),
('2020-01-10', 126, 42, 3, 81),
('2020-01-11', 113, 53, 2, 58),
('2020-01-12', 55, 22, 5, 28),
('2020-01-13', 144, 35, 10, 99),
('2020-01-14', 128, 60, 10, 58),
('2020-01-15', 77, 14, 10, 53),
('2020-01-16', 118, 20, 7, 91),
('2020-01-17', 111, 17, 3, 91),
('2020-01-18', 128, 100, 7, 21),
('2020-01-19', 154, 76, 7, 71),
('2020-01-20', 112, 13, 8, 91),
('2020-01-21', 29, 22, 1, 6),
('2020-01-22', 35, 23, 5, 7),
('2020-01-23', 188, 98, 9, 81),
('2020-01-24', 110, 98, 6, 6),
('2020-01-25', 101, 9, 6, 86),
('2020-01-26', 84, 30, 6, 48),
('2020-01-27', 142, 81, 2, 59),
('2020-01-28', 130, 66, 10, 54),
('2020-01-29', 105, 51, 5, 49),
('2020-01-30', 185, 87, 10, 88),
('2020-01-31', 127, 52, 2, 73),
('2020-02-01', 82, 24, 8, 50),
('2020-02-02', 97, 71, 10, 16),
('2020-02-03', 132, 30, 3, 99),
('2020-02-04', 130, 66, 6, 58),
('2020-02-05', 174, 87, 9, 78),
('2020-02-06', 97, 56, 8, 33),
('2020-02-07', 100, 12, 1, 87),
('2020-02-08', 146, 86, 8, 52),
('2020-02-09', 57, 29, 8, 20),
('2020-02-10', 150, 62, 6, 82),
('2020-02-11', 54, 1, 10, 43),
('2020-02-12', 90, 15, 6, 69),
('2020-02-13', 79, 25, 5, 49),
('2020-02-14', 170, 71, 8, 91),
('2020-02-15', 176, 84, 8, 84),
('2020-02-16', 83, 4, 8, 71),
('2020-02-17', 40, 30, 5, 5),
('2020-02-18', 96, 26, 3, 67),
('2020-02-19', 151, 68, 3, 80),
('2020-02-20', 103, 12, 10, 81),
('2020-02-21', 125, 42, 4, 79),
('2020-02-22', 132, 100, 6, 26),
('2020-02-23', 96, 21, 9, 66),
('2020-02-24', 138, 72, 1, 65),
('2020-02-25', 59, 5, 8, 46),
('2020-02-26', 93, 11, 7, 75),
('2020-02-27', 147, 83, 7, 57),
('2020-02-28', 101, 61, 4, 36),
('2020-02-29', 124, 29, 5, 90),
('2020-03-01', 128, 61, 1, 66),
('2020-03-02', 169, 91, 3, 75),
('2020-03-03', 60, 36, 9, 15),
('2020-03-04', 105, 68, 4, 33),
('2020-03-05', 133, 57, 4, 72),
('2020-03-06', 136, 98, 6, 32),
('2020-03-07', 69, 47, 4, 18),
('2020-03-08', 100, 66, 2, 32),
('2020-03-09', 144, 68, 6, 70),
('2020-03-10', 144, 82, 5, 57),
('2020-03-11', 105, 68, 2, 35),
('2020-03-12', 90, 29, 9, 52),
('2020-03-13', 112, 16, 3, 93),
('2020-03-14', 62, 34, 7, 21),
('2020-03-15', 94, 60, 9, 25),
('2020-03-16', 128, 67, 10, 51),
('2020-03-17', 40, 3, 5, 32),
('2020-03-18', 107, 92, 7, 8),
('2020-03-19', 179, 77, 10, 92),
('2020-03-20', 80, 27, 7, 46),
('2020-03-21', 88, 10, 10, 68),
('2020-03-22', 191, 92, 4, 95),
('2020-03-23', 60, 19, 10, 31),
('2020-03-24', 151, 47, 4, 100),
('2020-03-25', 99, 9, 5, 85),
('2020-03-26', 149, 96, 6, 47),
('2020-03-27', 172, 95, 10, 67),
('2020-03-28', 102, 60, 10, 32),
('2020-03-29', 52, 16, 7, 29),
('2020-03-30', 32, 14, 7, 11),
('2020-03-31', 63, 3, 9, 51),
('2020-04-01', 106, 67, 3, 36),
('2020-04-02', 132, 49, 3, 80),
('2020-04-03', 126, 29, 6, 91),
('2020-04-04', 188, 98, 3, 87),
('2020-04-05', 98, 55, 8, 35),
('2020-04-06', 10, 2, 6, 2),
('2020-04-07', 102, 11, 6, 85),
('2020-04-08', 97, 46, 2, 49),
('2020-04-09', 153, 86, 9, 58),
('2020-04-10', 60, 20, 5, 35),
('2020-04-11', 74, 3, 6, 65),
('2020-04-12', 74, 14, 1, 59),
('2020-04-13', 55, 2, 4, 49),
('2020-04-14', 106, 9, 3, 94),
('2020-04-15', 108, 50, 4, 54),
('2020-04-16', 134, 77, 4, 53),
('2020-04-17', 125, 60, 4, 61),
('2020-04-18', 120, 71, 9, 40),
('2020-04-19', 124, 23, 10, 91),
('2020-04-20', 139, 66, 1, 72),
('2020-04-21', 97, 1, 7, 89),
('2020-04-22', 99, 80, 1, 18),
('2020-04-23', 108, 7, 8, 93),
('2020-04-24', 129, 60, 3, 66),
('2020-04-25', 149, 58, 3, 88),
('2020-04-26', 86, 83, 1, 2),
('2020-04-27', 93, 50, 6, 37),
('2020-04-28', 34, 23, 6, 5),
('2020-04-29', 104, 74, 6, 24),
('2020-04-30', 69, 25, 5, 39),
('2020-05-01', 123, 26, 9, 88),
('2020-05-02', 127, 82, 9, 36),
('2020-05-03', 130, 75, 9, 46),
('2020-05-04', 141, 47, 4, 90),
('2020-05-05', 61, 51, 7, 3),
('2020-05-06', 120, 42, 10, 68),
('2020-05-07', 66, 60, 2, 4),
('2020-05-08', 77, 9, 5, 63),
('2020-05-09', 144, 84, 1, 59),
('2020-05-10', 153, 56, 3, 94),
('2020-05-11', 68, 44, 1, 23),
('2020-05-12', 122, 30, 2, 90),
('2020-05-13', 93, 77, 2, 14),
('2020-05-14', 185, 86, 6, 93),
('2020-05-15', 193, 97, 4, 92),
('2020-05-16', 179, 86, 2, 91),
('2020-05-17', 65, 23, 6, 36),
('2020-05-18', 81, 36, 7, 38),
('2020-05-19', 77, 35, 6, 36),
('2020-05-20', 86, 80, 5, 1),
('2020-05-21', 64, 30, 6, 28),
('2020-05-22', 137, 47, 3, 87),
('2020-05-23', 136, 42, 7, 87),
('2020-05-24', 155, 88, 5, 62),
('2020-05-25', 165, 74, 7, 84),
('2020-05-26', 60, 14, 1, 45),
('2020-05-27', 133, 50, 1, 82),
('2020-05-28', 121, 31, 10, 80),
('2020-05-29', 105, 94, 7, 4),
('2020-05-30', 175, 66, 9, 100),
('2020-05-31', 158, 76, 8, 74),
('2020-06-01', 127, 50, 4, 73),
('2020-06-02', 131, 59, 10, 62),
('2020-06-03', 92, 70, 7, 15),
('2020-06-04', 141, 37, 8, 96),
('2020-06-05', 124, 58, 6, 60),
('2020-06-06', 49, 15, 5, 29),
('2020-06-07', 90, 33, 4, 53),
('2020-06-08', 153, 98, 4, 51),
('2020-06-09', 98, 23, 9, 66),
('2020-06-10', 126, 99, 2, 25),
('2020-06-11', 160, 62, 5, 93),
('2020-06-12', 121, 29, 5, 87),
('2020-06-13', 134, 75, 9, 50),
('2020-06-14', 120, 98, 5, 17),
('2020-06-15', 18, 7, 4, 7),
('2020-06-16', 121, 100, 4, 17),
('2020-06-17', 192, 88, 8, 96),
('2020-06-18', 24, 4, 2, 18),
('2020-06-19', 107, 57, 4, 46),
('2020-06-20', 114, 25, 3, 86),
('2020-06-21', 157, 71, 10, 76),
('2020-06-22', 104, 16, 7, 81),
('2020-06-23', 108, 97, 7, 4),
('2020-06-24', 41, 24, 6, 11),
('2020-06-25', 107, 77, 1, 29),
('2020-06-26', 76, 45, 2, 29),
('2020-06-27', 87, 4, 3, 80),
('2020-06-28', 115, 50, 8, 57),
('2020-06-29', 102, 55, 6, 41),
('2020-06-30', 82, 31, 6, 45),
('2020-07-01', 168, 85, 3, 80),
('2020-07-02', 54, 50, 1, 3),
('2020-07-03', 75, 17, 8, 50),
('2020-07-04', 45, 13, 8, 24),
('2020-07-05', 145, 42, 8, 95),
('2020-07-06', 110, 99, 1, 10),
('2020-07-07', 80, 65, 7, 8),
('2020-07-08', 73, 24, 8, 41),
('2020-07-09', 58, 31, 2, 25),
('2020-07-10', 131, 56, 9, 66),
('2020-07-11', 128, 49, 4, 75),
('2020-07-12', 104, 71, 8, 25),
('2020-07-13', 135, 73, 3, 59),
('2020-07-14', 124, 44, 8, 72),
('2020-07-15', 39, 9, 10, 20),
('2020-07-16', 144, 80, 3, 61),
('2020-07-17', 111, 5, 6, 100),
('2020-07-18', 110, 36, 5, 69),
('2020-07-19', 100, 27, 3, 70),
('2020-07-20', 182, 84, 8, 90),
('2020-07-21', 115, 14, 3, 98),
('2020-07-22', 99, 66, 10, 23),
('2020-07-23', 88, 15, 9, 64),
('2020-07-24', 106, 37, 2, 67),
('2020-07-25', 95, 75, 4, 16),
('2020-07-26', 54, 17, 2, 35),
('2020-07-27', 147, 91, 10, 46),
('2020-07-28', 40, 17, 7, 16),
('2020-07-29', 65, 57, 1, 7),
('2020-07-30', 82, 9, 10, 63),
('2020-07-31', 117, 66, 8, 43),
('2020-08-01', 134, 91, 4, 39),
('2020-08-02', 107, 46, 4, 57),
('2020-08-03', 54, 37, 7, 10),
('2020-08-04', 146, 62, 7, 77),
('2020-08-05', 136, 61, 10, 65),
('2020-08-06', 10, 4, 5, 1),
('2020-08-07', 91, 54, 8, 29),
('2020-08-08', 149, 60, 7, 82),
('2020-08-09', 114, 61, 5, 48),
('2020-08-10', 104, 9, 7, 88),
('2020-08-11', 64, 11, 6, 47),
('2020-08-12', 38, 8, 9, 21),
('2020-08-13', 154, 90, 10, 54),
('2020-08-14', 149, 47, 5, 97),
('2020-08-15', 127, 37, 4, 86),
('2020-08-16', 152, 78, 9, 65),
('2020-08-17', 63, 34, 4, 25),
('2020-08-18', 101, 79, 2, 20),
('2020-08-19', 125, 23, 7, 95),
('2020-08-20', 73, 49, 5, 19),
('2020-08-21', 160, 59, 5, 96),
('2020-08-22', 64, 45, 6, 13),
('2020-08-23', 49, 4, 3, 42),
('2020-08-24', 110, 59, 10, 41),
('2020-08-25', 89, 58, 9, 22),
('2020-08-26', 86, 54, 3, 29),
('2020-08-27', 84, 68, 1, 15),
('2020-08-28', 183, 92, 5, 86),
('2020-08-29', 140, 52, 1, 87),
('2020-08-30', 93, 58, 9, 26),
('2020-08-31', 91, 7, 1, 83),
('2020-09-01', 123, 95, 2, 26),
('2020-09-02', 85, 27, 9, 49),
('2020-09-03', 152, 95, 9, 48),
('2020-09-04', 161, 56, 9, 96),
('2020-09-05', 99, 90, 1, 8),
('2020-09-06', 152, 87, 2, 63),
('2020-09-07', 83, 70, 3, 10),
('2020-09-08', 93, 23, 3, 67),
('2020-09-09', 162, 66, 6, 90),
('2020-09-10', 142, 87, 5, 50),
('2020-09-11', 124, 36, 8, 80),
('2020-09-12', 77, 41, 6, 30),
('2020-09-13', 135, 83, 10, 42),
('2020-09-14', 71, 58, 5, 8),
('2020-09-15', 94, 43, 9, 42),
('2020-09-16', 12, 4, 7, 1),
('2020-09-17', 152, 97, 1, 54),
('2020-09-18', 176, 99, 2, 75),
('2020-09-19', 31, 16, 3, 12),
('2020-09-20', 77, 7, 1, 69),
('2020-09-21', 49, 10, 7, 32),
('2020-09-22', 46, 4, 2, 40),
('2020-09-23', 163, 81, 8, 74),
('2020-09-24', 168, 80, 5, 83),
('2020-09-25', 104, 76, 7, 21),
('2020-09-26', 109, 24, 8, 77),
('2020-09-27', 45, 34, 3, 8),
('2020-09-28', 150, 69, 1, 80),
('2020-09-29', 86, 14, 5, 67),
('2020-09-30', 103, 27, 9, 67),
('2020-10-01', 179, 81, 8, 90),
('2020-10-02', 103, 3, 4, 96),
('2020-10-03', 120, 87, 4, 29),
('2020-10-04', 111, 12, 10, 89),
('2020-10-05', 157, 71, 6, 80),
('2020-10-06', 116, 45, 2, 69),
('2020-10-07', 16, 10, 5, 1),
('2020-10-08', 138, 70, 3, 65),
('2020-10-09', 110, 33, 1, 76),
('2020-10-10', 102, 30, 2, 70),
('2020-10-11', 142, 80, 10, 52),
('2020-10-12', 56, 8, 3, 45),
('2020-10-13', 66, 24, 7, 35),
('2020-10-14', 90, 5, 6, 79),
('2020-10-15', 112, 17, 1, 94),
('2020-10-16', 109, 24, 7, 78),
('2020-10-17', 105, 85, 6, 14),
('2020-10-18', 38, 23, 7, 8),
('2020-10-19', 110, 58, 5, 47),
('2020-10-20', 99, 14, 5, 80),
('2020-10-21', 53, 23, 7, 23),
('2020-10-22', 60, 35, 9, 16),
('2020-10-23', 160, 95, 3, 62),
('2020-10-24', 89, 13, 2, 74),
('2020-10-25', 166, 75, 5, 86),
('2020-10-26', 121, 56, 7, 58),
('2020-10-27', 152, 91, 2, 59),
('2020-10-28', 164, 64, 10, 90),
('2020-10-29', 125, 48, 9, 68),
('2020-10-30', 59, 42, 9, 8),
('2020-10-31', 123, 52, 6, 65),
('2020-11-01', 147, 68, 4, 75),
('2020-11-02', 93, 36, 9, 48),
('2020-11-03', 117, 69, 8, 40),
('2020-11-04', 119, 52, 7, 60),
('2020-11-05', 110, 61, 5, 44),
('2020-11-06', 184, 87, 8, 89),
('2020-11-07', 178, 86, 7, 85),
('2020-11-08', 137, 62, 2, 73),
('2020-11-09', 102, 14, 3, 85),
('2020-11-10', 57, 44, 7, 6),
('2020-11-11', 170, 80, 7, 83),
('2020-11-12', 55, 28, 9, 18),
('2020-11-13', 110, 21, 1, 88),
('2020-11-14', 111, 73, 4, 34),
('2020-11-15', 29, 20, 3, 6),
('2020-11-16', 163, 89, 7, 67),
('2020-11-17', 120, 36, 3, 81),
('2020-11-18', 184, 93, 7, 84),
('2020-11-19', 133, 81, 1, 51),
('2020-11-20', 168, 79, 6, 83),
('2020-11-21', 152, 85, 5, 62),
('2020-11-22', 61, 22, 9, 30),
('2020-11-23', 69, 49, 6, 14),
('2020-11-24', 170, 77, 7, 86),
('2020-11-25', 199, 93, 8, 98),
('2020-11-26', 104, 60, 6, 38),
('2020-11-27', 161, 62, 2, 97),
('2020-11-28', 58, 34, 6, 18),
('2020-11-29', 68, 38, 10, 20),
('2020-11-30', 76, 39, 4, 33),
('2020-12-01', 101, 77, 2, 22),
('2020-12-02', 153, 56, 10, 87),
('2020-12-03', 24, 9, 2, 13),
('2020-12-04', 123, 66, 10, 47),
('2020-12-05', 63, 43, 8, 12),
('2020-12-06', 175, 91, 10, 74),
('2020-12-07', 88, 40, 1, 47),
('2020-12-08', 68, 45, 1, 22),
('2020-12-09', 96, 49, 8, 39),
('2020-12-10', 83, 29, 1, 53),
('2020-12-11', 93, 30, 10, 53),
('2020-12-12', 42, 30, 5, 7),
('2020-12-13', 60, 21, 8, 31),
('2020-12-14', 84, 74, 9, 1),
('2020-12-15', 196, 95, 4, 97),
('2020-12-16', 104, 44, 6, 54),
('2020-12-17', 158, 61, 3, 94),
('2020-12-18', 77, 70, 3, 4),
('2020-12-19', 76, 56, 2, 18),
('2020-12-20', 135, 78, 4, 53),
('2020-12-21', 112, 73, 8, 31),
('2020-12-22', 142, 80, 4, 58),
('2020-12-23', 46, 31, 10, 5),
('2020-12-24', 137, 46, 7, 84),
('2020-12-25', 87, 61, 6, 20),
('2020-12-26', 105, 25, 6, 74),
('2020-12-27', 104, 46, 10, 48),
('2020-12-28', 152, 92, 3, 57),
('2020-12-29', 128, 74, 1, 53),
('2020-12-30', 69, 29, 2, 38),
('2020-12-31', 170, 73, 4, 93),
('2021-01-01', 20, 11, 4, 5),
('2021-01-02', 86, 12, 6, 68),
('2021-01-03', 104, 1, 10, 93),
('2021-01-04', 82, 20, 9, 53),
('2021-01-05', 102, 77, 3, 22),
('2021-01-06', 92, 35, 1, 56),
('2021-01-07', 45, 32, 4, 9),
('2021-01-08', 73, 1, 5, 67),
('2021-01-09', 92, 42, 8, 42),
('2021-01-10', 110, 73, 4, 33),
('2021-01-11', 182, 88, 3, 91),
('2021-01-12', 165, 98, 2, 65),
('2021-01-13', 75, 8, 7, 60),
('2021-01-14', 64, 52, 6, 6),
('2021-01-15', 111, 97, 5, 9),
('2021-01-16', 147, 74, 7, 66),
('2021-01-17', 91, 74, 4, 13),
('2021-01-18', 115, 21, 5, 89),
('2021-01-19', 70, 51, 10, 9),
('2021-01-20', 106, 92, 5, 9),
('2021-01-21', 124, 16, 10, 98),
('2021-01-22', 93, 21, 1, 71),
('2021-01-23', 103, 73, 7, 23),
('2021-01-24', 104, 90, 10, 4),
('2021-01-25', 83, 36, 5, 42),
('2021-01-26', 161, 97, 8, 56),
('2021-01-27', 94, 31, 8, 55),
('2021-01-28', 163, 64, 6, 93),
('2021-01-29', 87, 32, 2, 53),
('2021-01-30', 159, 70, 7, 82),
('2021-01-31', 111, 33, 4, 74),
('2021-02-01', 160, 88, 5, 67),
('2021-02-02', 70, 52, 1, 17),
('2021-02-03', 120, 28, 7, 85),
('2021-02-04', 75, 38, 9, 28),
('2021-02-05', 79, 10, 6, 63),
('2021-02-06', 120, 91, 3, 26),
('2021-02-07', 116, 15, 1, 100),
('2021-02-08', 77, 3, 1, 73),
('2021-02-09', 70, 13, 1, 56),
('2021-02-10', 96, 37, 1, 58),
('2021-02-11', 33, 19, 10, 4),
('2021-02-12', 140, 65, 2, 73),
('2021-02-13', 123, 26, 10, 87),
('2021-02-14', 159, 55, 6, 98),
('2021-02-15', 138, 40, 3, 95),
('2021-02-16', 172, 92, 5, 75),
('2021-02-17', 91, 4, 8, 79),
('2021-02-18', 119, 41, 5, 73),
('2021-02-19', 141, 96, 8, 37),
('2021-02-20', 78, 56, 5, 17),
('2021-02-21', 142, 80, 10, 52),
('2021-02-22', 82, 59, 9, 14),
('2021-02-23', 154, 88, 6, 60),
('2021-02-24', 67, 16, 3, 48),
('2021-02-25', 123, 38, 2, 83),
('2021-02-26', 93, 33, 2, 58),
('2021-02-27', 160, 86, 3, 71),
('2021-02-28', 5, 1, 1, 3),
('2021-03-01', 129, 46, 7, 76),
('2021-03-02', 123, 83, 9, 31),
('2021-03-03', 46, 17, 2, 27),
('2021-03-04', 156, 58, 3, 95),
('2021-03-05', 146, 66, 6, 74),
('2021-03-06', 63, 14, 10, 39),
('2021-03-07', 61, 1, 9, 51),
('2021-03-08', 78, 15, 4, 59),
('2021-03-09', 120, 21, 9, 90),
('2021-03-10', 151, 86, 7, 58),
('2021-03-11', 81, 54, 4, 23),
('2021-03-12', 37, 1, 3, 33),
('2021-03-13', 110, 39, 7, 64),
('2021-03-14', 13, 3, 2, 8),
('2021-03-15', 47, 23, 7, 17),
('2021-03-16', 149, 60, 5, 84),
('2021-03-17', 161, 59, 10, 92),
('2021-03-18', 153, 87, 10, 56),
('2021-03-19', 139, 58, 5, 76),
('2021-03-20', 43, 10, 2, 31),
('2021-03-21', 110, 28, 1, 81),
('2021-03-22', 144, 68, 9, 67),
('2021-03-23', 114, 87, 5, 22),
('2021-03-24', 169, 95, 6, 68),
('2021-03-25', 37, 16, 3, 18),
('2021-03-26', 67, 43, 9, 15),
('2021-03-27', 120, 65, 5, 50),
('2021-03-28', 192, 97, 2, 93),
('2021-03-29', 68, 22, 9, 37),
('2021-03-30', 100, 7, 9, 84),
('2021-03-31', 146, 89, 9, 48),
('2021-04-01', 139, 99, 7, 33),
('2021-04-02', 116, 55, 9, 52),
('2021-04-03', 46, 21, 10, 15),
('2021-04-04', 167, 70, 1, 96),
('2021-04-05', 23, 5, 10, 8),
('2021-04-06', 117, 16, 6, 95),
('2021-04-07', 71, 28, 5, 38),
('2021-04-08', 109, 74, 3, 32),
('2021-04-09', 152, 86, 1, 65),
('2021-04-10', 49, 44, 2, 3),
('2021-04-11', 85, 72, 3, 10),
('2021-04-12', 128, 26, 2, 100),
('2021-04-13', 176, 87, 5, 84),
('2021-04-14', 42, 26, 4, 12),
('2021-04-15', 148, 48, 4, 96),
('2021-04-16', 51, 31, 1, 19),
('2021-04-17', 62, 39, 9, 14),
('2021-04-18', 62, 8, 6, 48),
('2021-04-19', 89, 65, 2, 22),
('2021-04-20', 47, 1, 6, 40),
('2021-04-21', 128, 97, 4, 27),
('2021-04-22', 97, 75, 6, 16),
('2021-04-23', 133, 41, 8, 84),
('2021-04-24', 106, 68, 4, 34),
('2021-04-25', 45, 7, 3, 35),
('2021-04-26', 44, 34, 8, 2),
('2021-04-27', 191, 96, 10, 85),
('2021-04-28', 144, 79, 3, 62),
('2021-04-29', 103, 65, 9, 29),
('2021-04-30', 94, 11, 2, 81),
('2021-05-01', 72, 25, 8, 39),
('2021-05-02', 137, 73, 10, 54),
('2021-05-03', 102, 46, 5, 51),
('2021-05-04', 47, 25, 6, 16),
('2021-05-05', 127, 46, 7, 74),
('2021-05-06', 163, 79, 4, 80),
('2021-05-07', 113, 66, 2, 45),
('2021-05-08', 76, 32, 5, 39),
('2021-05-09', 122, 95, 7, 20),
('2021-05-10', 124, 68, 7, 49),
('2021-05-11', 74, 11, 2, 61),
('2021-05-12', 180, 77, 4, 99),
('2021-05-13', 122, 69, 1, 52),
('2021-05-14', 175, 75, 1, 99),
('2021-05-15', 104, 91, 5, 8),
('2021-05-16', 20, 12, 4, 4),
('2021-05-17', 190, 92, 3, 95),
('2021-05-18', 170, 78, 6, 86),
('2021-05-19', 154, 55, 4, 95),
('2021-05-20', 45, 17, 8, 20),
('2021-05-21', 85, 35, 9, 41),
('2021-05-22', 146, 51, 4, 91),
('2021-05-23', 109, 87, 10, 12),
('2021-05-24', 46, 15, 3, 28),
('2021-05-25', 135, 48, 7, 80),
('2021-05-26', 59, 33, 9, 17),
('2021-05-27', 96, 39, 7, 50),
('2021-05-28', 26, 2, 2, 22),
('2021-05-29', 113, 61, 1, 51),
('2021-05-30', 64, 40, 8, 16),
('2021-05-31', 114, 49, 8, 57),
('2021-06-01', 17, 4, 7, 6),
('2021-06-02', 44, 13, 10, 21),
('2021-06-03', 104, 50, 7, 47),
('2021-06-04', 77, 72, 4, 1),
('2021-06-05', 150, 94, 5, 51),
('2021-06-06', 69, 14, 6, 49),
('2021-06-07', 84, 24, 3, 57),
('2021-06-08', 111, 36, 5, 70),
('2021-06-09', 149, 60, 9, 80),
('2021-06-10', 141, 95, 7, 39),
('2021-06-11', 114, 81, 4, 29),
('2021-06-12', 137, 39, 3, 95),
('2021-06-13', 134, 96, 5, 33),
('2021-06-14', 105, 46, 1, 58),
('2021-06-15', 69, 43, 6, 20),
('2021-06-16', 156, 58, 7, 91),
('2021-06-17', 168, 78, 8, 82),
('2021-06-18', 83, 63, 6, 14),
('2021-06-19', 146, 62, 2, 82),
('2021-06-20', 136, 61, 4, 71),
('2021-06-21', 73, 12, 2, 59),
('2021-06-22', 103, 94, 4, 5),
('2021-06-23', 124, 93, 5, 26),
('2021-06-24', 44, 2, 2, 40),
('2021-06-25', 50, 22, 9, 19),
('2021-06-26', 173, 72, 8, 93),
('2021-06-27', 137, 37, 1, 99),
('2021-06-28', 123, 47, 4, 72),
('2021-06-29', 184, 79, 7, 98),
('2021-06-30', 72, 30, 1, 41),
('2021-07-01', 151, 87, 8, 56),
('2021-07-02', 130, 35, 7, 88),
('2021-07-03', 167, 93, 3, 71),
('2021-07-04', 110, 77, 1, 32),
('2021-07-05', 93, 56, 3, 34),
('2021-07-06', 110, 24, 8, 78),
('2021-07-07', 86, 40, 3, 43),
('2021-07-08', 90, 25, 4, 61),
('2021-07-09', 49, 23, 5, 21),
('2021-07-10', 106, 37, 4, 65),
('2021-07-11', 158, 87, 1, 70),
('2021-07-12', 178, 97, 8, 73),
('2021-07-13', 124, 64, 3, 57),
('2021-07-14', 144, 58, 6, 80),
('2021-07-15', 73, 7, 3, 63),
('2021-07-16', 90, 71, 5, 14),
('2021-07-17', 74, 44, 4, 26),
('2021-07-18', 77, 35, 7, 35),
('2021-07-19', 143, 77, 7, 59),
('2021-07-20', 107, 39, 1, 67),
('2021-07-21', 163, 65, 4, 94),
('2021-07-22', 16, 6, 5, 5),
('2021-07-23', 146, 67, 10, 69),
('2021-07-24', 73, 48, 2, 23),
('2021-07-25', 149, 55, 10, 84),
('2021-07-26', 113, 79, 1, 33),
('2021-07-27', 103, 39, 2, 62),
('2021-07-28', 150, 97, 10, 43),
('2021-07-29', 54, 31, 7, 16),
('2021-07-30', 24, 18, 3, 3),
('2021-07-31', 149, 94, 2, 53),
('2021-08-01', 172, 76, 4, 92),
('2021-08-02', 37, 28, 1, 8),
('2021-08-03', 65, 1, 4, 60),
('2021-08-04', 66, 44, 10, 12),
('2021-08-05', 91, 72, 1, 18),
('2021-08-06', 132, 32, 7, 93),
('2021-08-07', 53, 41, 3, 9),
('2021-08-08', 112, 11, 6, 95),
('2021-08-09', 97, 34, 5, 58),
('2021-08-10', 48, 7, 8, 33),
('2021-08-11', 118, 95, 2, 21),
('2021-08-12', 110, 91, 1, 18),
('2021-08-13', 96, 34, 1, 61),
('2021-08-14', 116, 20, 6, 90),
('2021-08-15', 108, 98, 2, 8),
('2021-08-16', 169, 89, 2, 78),
('2021-08-17', 80, 74, 1, 5),
('2021-08-18', 149, 49, 10, 90),
('2021-08-19', 66, 10, 8, 48),
('2021-08-20', 125, 90, 10, 25),
('2021-08-21', 65, 60, 2, 3),
('2021-08-22', 117, 96, 4, 17),
('2021-08-23', 151, 57, 3, 91),
('2021-08-24', 147, 84, 8, 55),
('2021-08-25', 109, 70, 9, 30),
('2021-08-26', 98, 24, 2, 72),
('2021-08-27', 70, 33, 6, 31),
('2021-08-28', 126, 32, 2, 92),
('2021-08-29', 106, 37, 6, 63),
('2021-08-30', 155, 53, 5, 97),
('2021-08-31', 85, 7, 1, 77),
('2021-09-01', 134, 67, 5, 62),
('2021-09-02', 91, 83, 1, 7),
('2021-09-03', 123, 41, 10, 72),
('2021-09-04', 45, 12, 5, 28),
('2021-09-05', 133, 78, 4, 51),
('2021-09-06', 28, 21, 1, 6),
('2021-09-07', 115, 17, 8, 90),
('2021-09-08', 62, 40, 3, 19),
('2021-09-09', 102, 81, 7, 14),
('2021-09-10', 182, 88, 9, 85),
('2021-09-11', 83, 36, 10, 37),
('2021-09-12', 130, 66, 3, 61),
('2021-09-13', 165, 79, 2, 84),
('2021-09-14', 122, 30, 9, 83),
('2021-09-15', 122, 83, 4, 35),
('2021-09-16', 98, 7, 8, 83),
('2021-09-17', 28, 3, 3, 22),
('2021-09-18', 130, 59, 9, 62),
('2021-09-19', 147, 87, 2, 58),
('2021-09-20', 124, 54, 10, 60),
('2021-09-21', 118, 40, 6, 72),
('2021-09-22', 75, 46, 3, 26),
('2021-09-23', 150, 71, 8, 71),
('2021-09-24', 74, 45, 10, 19),
('2021-09-25', 134, 69, 8, 57),
('2021-09-26', 67, 16, 9, 42),
('2021-09-27', 152, 57, 9, 86),
('2021-09-28', 151, 79, 8, 64),
('2021-09-29', 80, 13, 6, 61),
('2021-09-30', 182, 92, 6, 84);

-- --------------------------------------------------------

--
-- Table structure for table `user_login_report`
--

DROP TABLE IF EXISTS `user_login_report`;
CREATE TABLE IF NOT EXISTS `user_login_report` (
  `Date` date DEFAULT NULL,
  `Login_Count` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_login_report`
--

INSERT INTO `user_login_report` (`Date`, `Login_Count`) VALUES
('2020-01-01', 563),
('2020-01-02', 278),
('2020-01-03', 107),
('2020-01-04', 215),
('2020-01-05', 152),
('2020-01-06', 474),
('2020-01-07', 257),
('2020-01-08', 874),
('2020-01-09', 864),
('2020-01-10', 901),
('2020-01-11', 986),
('2020-01-12', 924),
('2020-01-13', 855),
('2020-01-14', 351),
('2020-01-15', 741),
('2020-01-16', 634),
('2020-01-17', 119),
('2020-01-18', 974),
('2020-01-19', 971),
('2020-01-20', 453),
('2020-01-21', 348),
('2020-01-22', 395),
('2020-01-23', 988),
('2020-01-24', 181),
('2020-01-25', 443),
('2020-01-26', 89),
('2020-01-27', 991),
('2020-01-28', 208),
('2020-01-29', 438),
('2020-01-30', 302),
('2020-01-31', 835),
('2020-02-01', 570),
('2020-02-02', 948),
('2020-02-03', 475),
('2020-02-04', 506),
('2020-02-05', 795),
('2020-02-06', 34),
('2020-02-07', 709),
('2020-02-08', 591),
('2020-02-09', 529),
('2020-02-10', 331),
('2020-02-11', 977),
('2020-02-12', 39),
('2020-02-13', 581),
('2020-02-14', 287),
('2020-02-15', 883),
('2020-02-16', 707),
('2020-02-17', 55),
('2020-02-18', 488),
('2020-02-19', 835),
('2020-02-20', 126),
('2020-02-21', 799),
('2020-02-22', 683),
('2020-02-23', 914),
('2020-02-24', 802),
('2020-02-25', 237),
('2020-02-26', 453),
('2020-02-27', 556),
('2020-02-28', 435),
('2020-02-29', 524),
('2020-03-01', 247),
('2020-03-02', 363),
('2020-03-03', 754),
('2020-03-04', 267),
('2020-03-05', 111),
('2020-03-06', 43),
('2020-03-07', 338),
('2020-03-08', 348),
('2020-03-09', 209),
('2020-03-10', 626),
('2020-03-11', 473),
('2020-03-12', 355),
('2020-03-13', 17),
('2020-03-14', 414),
('2020-03-15', 946),
('2020-03-16', 562),
('2020-03-17', 420),
('2020-03-18', 991),
('2020-03-19', 107),
('2020-03-20', 45),
('2020-03-21', 744),
('2020-03-22', 190),
('2020-03-23', 452),
('2020-03-24', 296),
('2020-03-25', 850),
('2020-03-26', 580),
('2020-03-27', 750),
('2020-03-28', 268),
('2020-03-29', 920),
('2020-03-30', 919),
('2020-03-31', 480),
('2020-04-01', 74),
('2020-04-02', 91),
('2020-04-03', 22),
('2020-04-04', 128),
('2020-04-05', 504),
('2020-04-06', 922),
('2020-04-07', 961),
('2020-04-08', 919),
('2020-04-09', 270),
('2020-04-10', 748),
('2020-04-11', 833),
('2020-04-12', 840),
('2020-04-13', 181),
('2020-04-14', 153),
('2020-04-15', 671),
('2020-04-16', 292),
('2020-04-17', 703),
('2020-04-18', 210),
('2020-04-19', 937),
('2020-04-20', 873),
('2020-04-21', 819),
('2020-04-22', 306),
('2020-04-23', 312),
('2020-04-24', 481),
('2020-04-25', 991),
('2020-04-26', 607),
('2020-04-27', 537),
('2020-04-28', 565),
('2020-04-29', 225),
('2020-04-30', 656),
('2020-05-01', 136),
('2020-05-02', 798),
('2020-05-03', 445),
('2020-05-04', 233),
('2020-05-05', 213),
('2020-05-06', 717),
('2020-05-07', 373),
('2020-05-08', 89),
('2020-05-09', 465),
('2020-05-10', 697),
('2020-05-11', 519),
('2020-05-12', 756),
('2020-05-13', 926),
('2020-05-14', 152),
('2020-05-15', 643),
('2020-05-16', 723),
('2020-05-17', 602),
('2020-05-18', 395),
('2020-05-19', 583),
('2020-05-20', 627),
('2020-05-21', 430),
('2020-05-22', 594),
('2020-05-23', 860),
('2020-05-24', 585),
('2020-05-25', 842),
('2020-05-26', 478),
('2020-05-27', 607),
('2020-05-28', 478),
('2020-05-29', 31),
('2020-05-30', 997),
('2020-05-31', 364),
('2020-06-01', 599),
('2020-06-02', 342),
('2020-06-03', 184),
('2020-06-04', 869),
('2020-06-05', 297),
('2020-06-06', 347),
('2020-06-07', 594),
('2020-06-08', 662),
('2020-06-09', 445),
('2020-06-10', 467),
('2020-06-11', 44),
('2020-06-12', 300),
('2020-06-13', 780),
('2020-06-14', 462),
('2020-06-15', 956),
('2020-06-16', 267),
('2020-06-17', 966),
('2020-06-18', 455),
('2020-06-19', 725),
('2020-06-20', 341),
('2020-06-21', 809),
('2020-06-22', 561),
('2020-06-23', 892),
('2020-06-24', 188),
('2020-06-25', 313),
('2020-06-26', 53),
('2020-06-27', 900),
('2020-06-28', 270),
('2020-06-29', 204),
('2020-06-30', 98),
('2020-07-01', 958),
('2020-07-02', 21),
('2020-07-03', 415),
('2020-07-04', 212),
('2020-07-05', 523),
('2020-07-06', 459),
('2020-07-07', 51),
('2020-07-08', 335),
('2020-07-09', 829),
('2020-07-10', 258),
('2020-07-11', 304),
('2020-07-12', 103),
('2020-07-13', 654),
('2020-07-14', 174),
('2020-07-15', 94),
('2020-07-16', 547),
('2020-07-17', 399),
('2020-07-18', 327),
('2020-07-19', 909),
('2020-07-20', 541),
('2020-07-21', 173),
('2020-07-22', 650),
('2020-07-23', 123),
('2020-07-24', 752),
('2020-07-25', 947),
('2020-07-26', 852),
('2020-07-27', 693),
('2020-07-28', 798),
('2020-07-29', 354),
('2020-07-30', 968),
('2020-07-31', 381),
('2020-08-01', 957),
('2020-08-02', 835),
('2020-08-03', 70),
('2020-08-04', 107),
('2020-08-05', 187),
('2020-08-06', 750),
('2020-08-07', 522),
('2020-08-08', 337),
('2020-08-09', 734),
('2020-08-10', 249),
('2020-08-11', 550),
('2020-08-12', 454),
('2020-08-13', 571),
('2020-08-14', 872),
('2020-08-15', 218),
('2020-08-16', 700),
('2020-08-17', 139),
('2020-08-18', 18),
('2020-08-19', 308),
('2020-08-20', 490),
('2020-08-21', 358),
('2020-08-22', 825),
('2020-08-23', 307),
('2020-08-24', 365),
('2020-08-25', 522),
('2020-08-26', 827),
('2020-08-27', 623),
('2020-08-28', 961),
('2020-08-29', 78),
('2020-08-30', 652),
('2020-08-31', 673),
('2020-09-01', 617),
('2020-09-02', 994),
('2020-09-03', 899),
('2020-09-04', 628),
('2020-09-05', 306),
('2020-09-06', 614),
('2020-09-07', 98),
('2020-09-08', 139),
('2020-09-09', 100),
('2020-09-10', 27),
('2020-09-11', 124),
('2020-09-12', 184),
('2020-09-13', 980),
('2020-09-14', 63),
('2020-09-15', 856),
('2020-09-16', 86),
('2020-09-17', 414),
('2020-09-18', 719),
('2020-09-19', 760),
('2020-09-20', 327),
('2020-09-21', 17),
('2020-09-22', 183),
('2020-09-23', 441),
('2020-09-24', 44),
('2020-09-25', 778),
('2020-09-26', 907),
('2020-09-27', 285),
('2020-09-28', 484),
('2020-09-29', 762),
('2020-09-30', 234),
('2020-10-01', 460),
('2020-10-02', 889),
('2020-10-03', 479),
('2020-10-04', 916),
('2020-10-05', 820),
('2020-10-06', 986),
('2020-10-07', 983),
('2020-10-08', 419),
('2020-10-09', 711),
('2020-10-10', 301),
('2020-10-11', 572),
('2020-10-12', 889),
('2020-10-13', 481),
('2020-10-14', 795),
('2020-10-15', 103),
('2020-10-16', 305),
('2020-10-17', 394),
('2020-10-18', 977),
('2020-10-19', 596),
('2020-10-20', 139),
('2020-10-21', 815),
('2020-10-22', 228),
('2020-10-23', 488),
('2020-10-24', 932),
('2020-10-25', 29),
('2020-10-26', 286),
('2020-10-27', 126),
('2020-10-28', 142),
('2020-10-29', 67),
('2020-10-30', 13),
('2020-10-31', 642),
('2020-11-01', 871),
('2020-11-02', 109),
('2020-11-03', 505),
('2020-11-04', 988),
('2020-11-05', 870),
('2020-11-06', 681),
('2020-11-07', 295),
('2020-11-08', 844),
('2020-11-09', 735),
('2020-11-10', 938),
('2020-11-11', 424),
('2020-11-12', 75),
('2020-11-13', 108),
('2020-11-14', 26),
('2020-11-15', 27),
('2020-11-16', 413),
('2020-11-17', 476),
('2020-11-18', 844),
('2020-11-19', 131),
('2020-11-20', 82),
('2020-11-21', 449),
('2020-11-22', 651),
('2020-11-23', 822),
('2020-11-24', 362),
('2020-11-25', 549),
('2020-11-26', 162),
('2020-11-27', 772),
('2020-11-28', 242),
('2020-11-29', 321),
('2020-11-30', 185),
('2020-12-01', 653),
('2020-12-02', 551),
('2020-12-03', 844),
('2020-12-04', 6),
('2020-12-05', 398),
('2020-12-06', 3),
('2020-12-07', 849),
('2020-12-08', 311),
('2020-12-09', 114),
('2020-12-10', 624),
('2020-12-11', 648),
('2020-12-12', 910),
('2020-12-13', 58),
('2020-12-14', 958),
('2020-12-15', 51),
('2020-12-16', 607),
('2020-12-17', 767),
('2020-12-18', 292),
('2020-12-19', 911),
('2020-12-20', 252),
('2020-12-21', 72),
('2020-12-22', 278),
('2020-12-23', 920),
('2020-12-24', 545),
('2020-12-25', 331),
('2020-12-26', 361),
('2020-12-27', 152),
('2020-12-28', 552),
('2020-12-29', 710),
('2020-12-30', 461),
('2020-12-31', 494),
('2021-01-01', 806),
('2021-01-02', 87),
('2021-01-03', 211),
('2021-01-04', 978),
('2021-01-05', 832),
('2021-01-06', 5),
('2021-01-07', 94),
('2021-01-08', 112),
('2021-01-09', 547),
('2021-01-10', 522),
('2021-01-11', 299),
('2021-01-12', 567),
('2021-01-13', 500),
('2021-01-14', 511),
('2021-01-15', 292),
('2021-01-16', 171),
('2021-01-17', 700),
('2021-01-18', 175),
('2021-01-19', 924),
('2021-01-20', 248),
('2021-01-21', 210),
('2021-01-22', 925),
('2021-01-23', 499),
('2021-01-24', 571),
('2021-01-25', 739),
('2021-01-26', 536),
('2021-01-27', 459),
('2021-01-28', 437),
('2021-01-29', 539),
('2021-01-30', 632),
('2021-01-31', 107),
('2021-02-01', 38),
('2021-02-02', 941),
('2021-02-03', 385),
('2021-02-04', 240),
('2021-02-05', 5),
('2021-02-06', 195),
('2021-02-07', 323),
('2021-02-08', 719),
('2021-02-09', 704),
('2021-02-10', 488),
('2021-02-11', 602),
('2021-02-12', 745),
('2021-02-13', 947),
('2021-02-14', 276),
('2021-02-15', 707),
('2021-02-16', 706),
('2021-02-17', 130),
('2021-02-18', 642),
('2021-02-19', 874),
('2021-02-20', 87),
('2021-02-21', 579),
('2021-02-22', 52),
('2021-02-23', 136),
('2021-02-24', 692),
('2021-02-25', 680),
('2021-02-26', 240),
('2021-02-27', 704),
('2021-02-28', 164),
('2021-03-01', 451),
('2021-03-02', 125),
('2021-03-03', 415),
('2021-03-04', 685),
('2021-03-05', 79),
('2021-03-06', 271),
('2021-03-07', 308),
('2021-03-08', 681),
('2021-03-09', 128),
('2021-03-10', 452),
('2021-03-11', 986),
('2021-03-12', 1000),
('2021-03-13', 757),
('2021-03-14', 209),
('2021-03-15', 598),
('2021-03-16', 277),
('2021-03-17', 909),
('2021-03-18', 309),
('2021-03-19', 789),
('2021-03-20', 162),
('2021-03-21', 419),
('2021-03-22', 693),
('2021-03-23', 140),
('2021-03-24', 269),
('2021-03-25', 782),
('2021-03-26', 706),
('2021-03-27', 677),
('2021-03-28', 920),
('2021-03-29', 505),
('2021-03-30', 607),
('2021-03-31', 146),
('2021-04-01', 984),
('2021-04-02', 21),
('2021-04-03', 681),
('2021-04-04', 993),
('2021-04-05', 735),
('2021-04-06', 643),
('2021-04-07', 772),
('2021-04-08', 120),
('2021-04-09', 833),
('2021-04-10', 59),
('2021-04-11', 685),
('2021-04-12', 950),
('2021-04-13', 13),
('2021-04-14', 965),
('2021-04-15', 206),
('2021-04-16', 75),
('2021-04-17', 166),
('2021-04-18', 508),
('2021-04-19', 715),
('2021-04-20', 79),
('2021-04-21', 258),
('2021-04-22', 358),
('2021-04-23', 55),
('2021-04-24', 315),
('2021-04-25', 8),
('2021-04-26', 1000),
('2021-04-27', 681),
('2021-04-28', 850),
('2021-04-29', 774),
('2021-04-30', 672),
('2021-05-01', 372),
('2021-05-02', 254),
('2021-05-03', 801),
('2021-05-04', 14),
('2021-05-05', 724),
('2021-05-06', 564),
('2021-05-07', 360),
('2021-05-08', 106),
('2021-05-09', 837),
('2021-05-10', 243),
('2021-05-11', 937),
('2021-05-12', 984),
('2021-05-13', 702),
('2021-05-14', 876),
('2021-05-15', 200),
('2021-05-16', 805),
('2021-05-17', 221),
('2021-05-18', 324),
('2021-05-19', 417),
('2021-05-20', 107),
('2021-05-21', 752),
('2021-05-22', 905),
('2021-05-23', 322),
('2021-05-24', 44),
('2021-05-25', 607),
('2021-05-26', 656),
('2021-05-27', 212),
('2021-05-28', 814),
('2021-05-29', 598),
('2021-05-30', 23),
('2021-05-31', 780),
('2021-06-01', 412),
('2021-06-02', 747),
('2021-06-03', 383),
('2021-06-04', 643),
('2021-06-05', 730),
('2021-06-06', 634),
('2021-06-07', 40),
('2021-06-08', 266),
('2021-06-09', 778),
('2021-06-10', 861),
('2021-06-11', 846),
('2021-06-12', 365),
('2021-06-13', 632),
('2021-06-14', 90),
('2021-06-15', 679),
('2021-06-16', 765),
('2021-06-17', 65),
('2021-06-18', 618),
('2021-06-19', 888),
('2021-06-20', 395),
('2021-06-21', 231),
('2021-06-22', 182),
('2021-06-23', 968),
('2021-06-24', 574),
('2021-06-25', 333),
('2021-06-26', 579),
('2021-06-27', 887),
('2021-06-28', 33),
('2021-06-29', 436),
('2021-06-30', 442),
('2021-07-01', 340),
('2021-07-02', 380),
('2021-07-03', 131),
('2021-07-04', 522),
('2021-07-05', 534),
('2021-07-06', 707),
('2021-07-07', 527),
('2021-07-08', 599),
('2021-07-09', 184),
('2021-07-10', 575),
('2021-07-11', 647),
('2021-07-12', 861),
('2021-07-13', 762),
('2021-07-14', 24),
('2021-07-15', 823),
('2021-07-16', 493),
('2021-07-17', 797),
('2021-07-18', 897),
('2021-07-19', 12),
('2021-07-20', 690),
('2021-07-21', 446),
('2021-07-22', 782),
('2021-07-23', 52),
('2021-07-24', 984),
('2021-07-25', 650),
('2021-07-26', 260),
('2021-07-27', 136),
('2021-07-28', 954),
('2021-07-29', 637),
('2021-07-30', 340),
('2021-07-31', 369),
('2021-08-01', 406),
('2021-08-02', 545),
('2021-08-03', 390),
('2021-08-04', 944),
('2021-08-05', 89),
('2021-08-06', 407),
('2021-08-07', 151),
('2021-08-08', 93),
('2021-08-09', 724),
('2021-08-10', 134),
('2021-08-11', 931),
('2021-08-12', 821),
('2021-08-13', 32),
('2021-08-14', 173),
('2021-08-15', 491),
('2021-08-16', 215),
('2021-08-17', 205),
('2021-08-18', 936),
('2021-08-19', 249),
('2021-08-20', 999),
('2021-08-21', 199),
('2021-08-22', 931),
('2021-08-23', 144),
('2021-08-24', 100),
('2021-08-25', 859),
('2021-08-26', 225),
('2021-08-27', 860),
('2021-08-28', 656),
('2021-08-29', 956),
('2021-08-30', 124),
('2021-08-31', 694),
('2021-09-01', 918),
('2021-09-02', 377),
('2021-09-03', 901),
('2021-09-04', 31),
('2021-09-05', 207),
('2021-09-06', 402),
('2021-09-07', 153),
('2021-09-08', 392),
('2021-09-09', 748),
('2021-09-10', 566),
('2021-09-11', 775),
('2021-09-12', 715),
('2021-09-13', 883),
('2021-09-14', 615),
('2021-09-15', 706),
('2021-09-16', 896),
('2021-09-17', 262),
('2021-09-18', 252),
('2021-09-19', 736),
('2021-09-20', 197),
('2021-09-21', 119),
('2021-09-22', 46),
('2021-09-23', 206),
('2021-09-24', 870),
('2021-09-25', 313),
('2021-09-26', 174),
('2021-09-27', 175),
('2021-09-28', 295),
('2021-09-29', 551),
('2021-09-30', 901);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
