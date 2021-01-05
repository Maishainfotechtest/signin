-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 30, 2020 at 12:15 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `youturn_genetics`
--

-- --------------------------------------------------------

--
-- Table structure for table `complex_disease_female`
--

CREATE TABLE `complex_disease_female` (
  `id` int(11) NOT NULL,
  `order_id` varchar(225) NOT NULL,
  `token` varchar(225) NOT NULL,
  `com_id` int(11) NOT NULL,
  `yourRisk` varchar(22) NOT NULL,
  `Avg Risk` varchar(11) NOT NULL,
  `CompAvgRisk` varchar(11) NOT NULL,
  `Date` date NOT NULL,
  `time` time NOT NULL,
  `DateTime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `complex_disease_female`
--

INSERT INTO `complex_disease_female` (`id`, `order_id`, `token`, `com_id`, `yourRisk`, `Avg Risk`, `CompAvgRisk`, `Date`, `time`, `DateTime`) VALUES
(1, 'YGK6f0a0e90d95e130d82eb49c1', 'ad23d9218c5a6be3', 1, '0', '0', '1', '2020-12-24', '10:47:57', '2020-12-24 15:17:59'),
(2, 'YGK6f0a0e90d95e130d82eb49c1', 'ad23d9218c5a6be3', 2, '0', '0', '2', '2020-12-24', '10:47:57', '2020-12-24 15:17:59'),
(3, 'YGK6f0a0e90d95e130d82eb49c1', 'ad23d9218c5a6be3', 3, '0', '0', '3', '2020-12-24', '10:47:57', '2020-12-24 15:17:59'),
(4, 'YGK6f0a0e90d95e130d82eb49c1', 'ad23d9218c5a6be3', 4, '0', '0', '4', '2020-12-24', '10:47:57', '2020-12-24 15:17:59'),
(5, 'YGK6f0a0e90d95e130d82eb49c1', 'ad23d9218c5a6be3', 5, '0', '0', '5', '2020-12-24', '10:47:57', '2020-12-24 15:17:59'),
(6, 'YGK6f0a0e90d95e130d82eb49c1', 'ad23d9218c5a6be3', 6, '0', '0', '6', '2020-12-24', '10:47:57', '2020-12-24 15:17:59'),
(7, 'YGK6f0a0e90d95e130d82eb49c1', 'ad23d9218c5a6be3', 7, '0', '0', '7', '2020-12-24', '10:47:57', '2020-12-24 15:17:59'),
(8, 'YGK6f0a0e90d95e130d82eb49c1', 'ad23d9218c5a6be3', 8, '0', '0', '8', '2020-12-24', '10:47:57', '2020-12-24 15:17:59'),
(9, 'YGK6f0a0e90d95e130d82eb49c1', 'ad23d9218c5a6be3', 9, '0', '0', '9', '2020-12-24', '10:47:57', '2020-12-24 15:17:59'),
(10, 'YGK6f0a0e90d95e130d82eb49c1', 'ad23d9218c5a6be3', 10, '0', '0', '02', '2020-12-24', '10:47:57', '2020-12-24 15:17:59'),
(11, 'YGKa4e6936942b58a52f513764f', 'b0323874bf84fa73', 1, '0', '0', '1', '2020-12-28', '13:32:43', '2020-12-28 18:02:44'),
(12, 'YGKa4e6936942b58a52f513764f', 'b0323874bf84fa73', 2, '0', '0', '2', '2020-12-28', '13:32:43', '2020-12-28 18:02:44'),
(13, 'YGKa4e6936942b58a52f513764f', 'b0323874bf84fa73', 3, '0', '0', '3', '2020-12-28', '13:32:43', '2020-12-28 18:02:45'),
(14, 'YGKa4e6936942b58a52f513764f', 'b0323874bf84fa73', 4, '0', '0', '4', '2020-12-28', '13:32:43', '2020-12-28 18:02:45'),
(15, 'YGKa4e6936942b58a52f513764f', 'b0323874bf84fa73', 5, '0', '0', '5', '2020-12-28', '13:32:43', '2020-12-28 18:02:45'),
(16, 'YGK0588c964255775dfc199dcdf', '120b105fd4abebb4', 1, '0', '0', '1', '2020-12-29', '07:45:32', '2020-12-29 12:15:47'),
(17, 'YGK0588c964255775dfc199dcdf', '120b105fd4abebb4', 2, '0', '0', '2', '2020-12-29', '07:45:32', '2020-12-29 12:15:47'),
(18, 'YGK0588c964255775dfc199dcdf', '120b105fd4abebb4', 3, '0', '0', '3', '2020-12-29', '07:45:32', '2020-12-29 12:15:47'),
(19, 'YGK0588c964255775dfc199dcdf', '120b105fd4abebb4', 4, '0', '0', '4', '2020-12-29', '07:45:32', '2020-12-29 12:15:47'),
(20, 'YGK0588c964255775dfc199dcdf', '120b105fd4abebb4', 5, '0', '0', '5', '2020-12-29', '07:45:32', '2020-12-29 12:15:47'),
(21, 'YGKe9076bf4a7ed246439c8d780', '926a64f4e074e14f', 1, '0', '0', '1', '2020-12-29', '07:56:41', '2020-12-29 12:27:03'),
(22, 'YGKe9076bf4a7ed246439c8d780', '926a64f4e074e14f', 2, '0', '0', '2', '2020-12-29', '07:56:41', '2020-12-29 12:27:03'),
(23, 'YGKe9076bf4a7ed246439c8d780', '926a64f4e074e14f', 3, '0', '0', '3', '2020-12-29', '07:56:41', '2020-12-29 12:27:03'),
(24, 'YGKe9076bf4a7ed246439c8d780', '926a64f4e074e14f', 4, '0', '0', '4', '2020-12-29', '07:56:41', '2020-12-29 12:27:03'),
(25, 'YGKe9076bf4a7ed246439c8d780', '926a64f4e074e14f', 5, '0', '0', '5', '2020-12-29', '07:56:41', '2020-12-29 12:27:03'),
(26, 'YGK0213f2657cd977eb0c553e7d', '1b31bae676a73732', 1, '0', '0', '1', '2020-12-29', '08:32:48', '2020-12-29 13:03:06'),
(27, 'YGK0213f2657cd977eb0c553e7d', '1b31bae676a73732', 2, '0', '0', '2', '2020-12-29', '08:32:48', '2020-12-29 13:03:06'),
(28, 'YGK0213f2657cd977eb0c553e7d', '1b31bae676a73732', 3, '0', '0', '6', '2020-12-29', '08:32:48', '2020-12-29 13:03:06');

-- --------------------------------------------------------

--
-- Table structure for table `complex_disease_male`
--

CREATE TABLE `complex_disease_male` (
  `id` int(11) NOT NULL,
  `order_id` varchar(225) NOT NULL,
  `token` varchar(225) NOT NULL,
  `com_id` int(33) NOT NULL,
  `yourRisk` varchar(11) NOT NULL,
  `Avg Risk` varchar(11) NOT NULL,
  `CompAvgRisk` varchar(11) NOT NULL,
  `Date` date NOT NULL,
  `time` time NOT NULL,
  `DateTime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `complex_disease_male`
--

INSERT INTO `complex_disease_male` (`id`, `order_id`, `token`, `com_id`, `yourRisk`, `Avg Risk`, `CompAvgRisk`, `Date`, `time`, `DateTime`) VALUES
(1, 'YGK45fa160a2c2e6e68885e3c09', '23c2bd8f5394808c', 1, '0', '0', '1', '2020-12-29', '06:49:39', '2020-12-29 11:20:19'),
(2, 'YGK45fa160a2c2e6e68885e3c09', '23c2bd8f5394808c', 2, '0', '3%', '2', '2020-12-29', '06:49:39', '2020-12-29 11:20:19'),
(3, 'YGK45fa160a2c2e6e68885e3c09', '23c2bd8f5394808c', 3, '0', '5', '3', '2020-12-29', '06:49:39', '2020-12-29 11:20:19'),
(4, 'YGK45fa160a2c2e6e68885e3c09', '23c2bd8f5394808c', 4, '0', '0', '4%', '2020-12-29', '06:49:39', '2020-12-29 11:20:19'),
(5, 'YGK45fa160a2c2e6e68885e3c09', '23c2bd8f5394808c', 5, '0', '0', '6%', '2020-12-29', '06:49:39', '2020-12-29 11:20:19'),
(6, 'YGK04ad21c89ae99a2cc4b5f8fb', 'a3552659d21909a9', 1, '0', '0', '1', '2020-12-29', '07:02:44', '2020-12-29 11:34:20'),
(7, 'YGK04ad21c89ae99a2cc4b5f8fb', 'a3552659d21909a9', 2, '0', '0', '2', '2020-12-29', '07:02:44', '2020-12-29 11:34:20'),
(8, 'YGK04ad21c89ae99a2cc4b5f8fb', 'a3552659d21909a9', 3, '0', '0', '3', '2020-12-29', '07:02:44', '2020-12-29 11:34:20'),
(9, 'YGK608e3ad67d11d2076a405a45', 'd1838f9ab5a551cd', 1, '0', '0', '1', '2020-12-29', '07:05:53', '2020-12-29 11:36:20'),
(10, 'YGK608e3ad67d11d2076a405a45', 'd1838f9ab5a551cd', 2, '0', '0', '2', '2020-12-29', '07:05:53', '2020-12-29 11:36:20'),
(11, 'YGK608e3ad67d11d2076a405a45', 'd1838f9ab5a551cd', 3, '0', '0', '3', '2020-12-29', '07:05:53', '2020-12-29 11:36:20'),
(12, 'YGKaa175744fb22d2bf259d8181', '42bbd57f3d31c3ae', 1, '0', '0', '1', '2020-12-29', '07:12:57', '2020-12-29 11:43:04'),
(13, 'YGKaa175744fb22d2bf259d8181', '42bbd57f3d31c3ae', 2, '0', '0', '2', '2020-12-29', '07:12:57', '2020-12-29 11:43:04'),
(14, 'YGKaa175744fb22d2bf259d8181', '42bbd57f3d31c3ae', 3, '0', '0', '3', '2020-12-29', '07:12:57', '2020-12-29 11:43:04'),
(15, 'YGK54eb3bdc10f01d5c54d9970c', 'fd91f10e2f7c21e6', 1, '0', '0', '1', '2020-12-29', '08:29:34', '2020-12-29 13:00:01'),
(16, 'YGK54eb3bdc10f01d5c54d9970c', 'fd91f10e2f7c21e6', 2, '0', '0', '2', '2020-12-29', '08:29:34', '2020-12-29 13:00:01'),
(17, 'YGK54eb3bdc10f01d5c54d9970c', 'fd91f10e2f7c21e6', 3, '3%', '5%', '3%', '2020-12-29', '08:29:34', '2020-12-29 13:00:01');

-- --------------------------------------------------------

--
-- Table structure for table `complex_dis_name_female`
--

CREATE TABLE `complex_dis_name_female` (
  `com_id` int(11) NOT NULL,
  `ComDisName` varchar(225) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `Date` date NOT NULL,
  `time` time NOT NULL,
  `DateTime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `complex_dis_name_female`
--

INSERT INTO `complex_dis_name_female` (`com_id`, `ComDisName`, `status`, `Date`, `time`, `DateTime`) VALUES
(1, 'High blood pressure', 1, '2020-12-24', '13:01:04', '2020-12-24 13:02:22'),
(2, 'Asthma', 1, '2020-12-24', '13:01:04', '2020-12-24 13:02:22'),
(3, 'Obesity', 1, '2020-12-24', '13:02:50', '2020-12-24 13:04:11'),
(4, 'Coronary heart disease', 1, '2020-12-24', '13:02:50', '2020-12-24 13:04:11'),
(5, 'Rheumatoid Arthritis', 1, '2020-12-24', '13:04:46', '2020-12-24 13:05:18'),
(6, 'Gout', 1, '2020-12-24', '13:04:46', '2020-12-24 13:05:18'),
(7, 'Lung cancer', 1, '2020-12-24', '13:06:00', '2020-12-24 13:06:46'),
(8, 'Diabetes Mellitus, Type 1', 1, '2020-12-24', '13:06:00', '2020-12-24 13:06:46'),
(9, 'Amyotrophic lateral sclerosis', 1, '2020-12-24', '13:06:58', '2020-12-24 13:07:38'),
(10, 'Primary biliary cirrhosis (PBC) ', 1, '2020-12-24', '13:06:58', '2020-12-24 13:07:38'),
(11, 'Meningioma', 1, '2020-12-28', '10:27:43', '2020-12-28 10:28:30'),
(12, 'Peripheral arterial hypertension \r\ndisease', 1, '2020-12-28', '10:27:43', '2020-12-28 10:28:30'),
(13, 'Vitiligo', 1, '2020-12-28', '10:29:23', '2020-12-28 10:29:58'),
(14, 'Hyperuricemia', 1, '2020-12-28', '10:29:23', '2020-12-28 10:29:58'),
(15, 'Pulmonary Fibrosis', 1, '2020-12-28', '10:30:03', '2020-12-28 10:30:53'),
(16, 'Preeclampsia', 1, '2020-12-28', '10:30:03', '2020-12-28 10:30:53'),
(17, 'Non-alcoholic fatty liver disease  \r\n(NAFLD)', 1, '2020-12-28', '10:31:13', '2020-12-28 10:31:44'),
(18, '', 1, '2020-12-28', '10:31:13', '2020-12-28 10:31:44'),
(19, 'Endometriosis', 1, '2020-12-28', '10:31:53', '2020-12-28 10:32:20'),
(20, 'Essential tremor', 1, '2020-12-28', '10:31:53', '2020-12-28 10:32:20'),
(21, 'Intrahepatic cholestasis of  \r\npregnancy', 1, '2020-12-28', '10:32:32', '2020-12-28 10:33:26'),
(22, 'Diabetes Mellitus, Type 2', 1, '2020-12-28', '10:32:32', '2020-12-28 10:33:26'),
(23, 'Restless leg syndrome', 1, '2020-12-24', '10:33:43', '2020-12-28 10:34:15'),
(24, 'Heart attack', 1, '2020-12-28', '10:33:43', '2020-12-28 10:34:15'),
(25, 'Ankylosing spondylitis (AS)', 1, '2020-12-28', '10:34:30', '2020-12-28 10:35:03'),
(26, 'Schizophrenia', 1, '2020-12-28', '10:34:30', '2020-12-28 10:35:03'),
(27, 'Systemic lupus erythematosus  \r\n(SLE)', 1, '2020-12-28', '10:35:19', '2020-12-28 10:35:57'),
(28, 'Crohn’s disease', 1, '2020-12-28', '10:35:19', '2020-12-28 10:35:57'),
(29, 'Glioma', 1, '2020-12-28', '10:36:17', '2020-12-28 10:36:43'),
(30, 'Melanoma', 1, '2020-12-28', '10:36:17', '2020-12-28 10:36:43'),
(31, 'Bipolar disorder', 1, '2020-12-28', '10:36:49', '2020-12-28 10:37:42'),
(32, 'Macular degeneration, age-related\r\n', 1, '2020-12-28', '10:36:49', '2020-12-28 10:37:42'),
(33, 'Neuroblastoma', 1, '2020-12-28', '10:37:48', '2020-12-28 10:38:22'),
(34, 'Fuch\'s dystrophy', 1, '2020-12-28', '10:37:48', '2020-12-28 10:38:22'),
(35, 'Multiple sclerosis', 1, '2020-12-28', '10:38:31', '2020-12-28 10:39:02'),
(36, 'Thyroid cancer', 1, '2020-12-28', '10:38:31', '2020-12-28 10:39:02'),
(37, 'Cerebrovascular Accident', 1, '2020-12-28', '10:39:10', '2020-12-28 10:39:46'),
(38, 'Gestational diabetes', 1, '2020-12-28', '10:39:10', '2020-12-28 10:39:46'),
(39, 'Myelofibrosis(Myeloproliferative NeoplasmsMPNs)', 1, '2020-12-28', '10:40:03', '2020-12-28 10:41:17'),
(40, 'Periodontitis', 1, '2020-12-28', '10:40:03', '2020-12-28 10:41:17'),
(41, 'Dyslexia', 1, '2020-12-28', '10:41:23', '2020-12-28 10:41:52'),
(42, 'Atrial fibrillation', 1, '2020-12-28', '10:41:23', '2020-12-28 10:41:52'),
(43, 'Sjögren syndrome', 1, '2020-12-28', '10:42:01', '2020-12-28 10:42:33'),
(44, 'Allergic Asthma', 1, '2020-12-28', '10:42:01', '2020-12-28 10:42:33'),
(45, 'Autism', 1, '2020-12-28', '10:42:37', '2020-12-28 10:43:12'),
(46, 'Celiac disease', 1, '2020-12-28', '10:42:37', '2020-12-28 10:43:12'),
(47, 'Esophageal Cancer', 1, '2020-12-28', '10:43:24', '2020-12-28 10:43:52'),
(48, 'Exfoliative glaucoma', 1, '2020-12-28', '10:43:24', '2020-12-28 10:43:52'),
(49, 'Primary open-angle glaucoma', 1, '2020-12-28', '10:43:57', '2020-12-28 10:44:20'),
(50, 'Sudden cardiac arrest ', 1, '2020-12-28', '10:43:57', '2020-12-28 10:44:20'),
(51, 'Hypertriglyceridemia', 1, '2020-12-28', '10:44:39', '2020-12-28 10:45:07'),
(52, 'Chronic kidney disease', 1, '2020-12-28', '10:44:39', '2020-12-28 10:45:07'),
(53, 'Selective deficiency of IgA ', 1, '2020-12-28', '10:45:20', '2020-12-28 10:45:49'),
(54, 'Herniated Disc', 1, '2020-12-28', '10:45:20', '2020-12-28 10:45:49'),
(55, 'Eosinophilic esophagitis (EoE)', 1, '2020-12-28', '10:45:59', '2020-12-28 10:46:24'),
(56, 'Limited cutaneous scleroderma', 1, '2020-12-28', '10:45:59', '2020-12-28 10:46:24'),
(57, 'Oral & Pharynx Cancer (Throat cancer)', 1, '2020-12-28', '10:46:33', '2020-12-28 10:47:26'),
(58, 'Idiopathic membranous \r\nnephropathy', 1, '2020-12-28', '10:46:33', '2020-12-28 10:47:26'),
(59, 'Multiple myeloma', 1, '2020-12-28', '10:47:33', '2020-12-28 10:48:19'),
(60, 'Intracranial aneurysm', 1, '2020-12-28', '10:47:33', '2020-12-28 10:48:19'),
(61, 'Colorectal cancer', 1, '2020-12-28', '10:48:28', '2020-12-28 10:48:54'),
(62, 'Epithelial ovarian cancer', 1, '2020-12-28', '10:48:28', '2020-12-28 10:48:54'),
(63, 'Parkinson’s disease', 1, '2020-12-28', '10:49:13', '2020-12-28 10:49:53'),
(64, 'Psoriasis ', 1, '2020-12-28', '10:49:13', '2020-12-28 10:49:53'),
(65, 'Bladder cancer \r\n', 1, '2020-12-28', '10:50:18', '2020-12-28 10:50:52'),
(66, 'Osteoarthritis of the knee', 1, '2020-12-28', '10:50:18', '2020-12-28 10:50:52'),
(67, 'Osteoporosis', 1, '2020-12-28', '10:51:00', '2020-12-28 10:51:32'),
(68, 'Migraine', 1, '2020-12-28', '10:51:00', '2020-12-28 10:51:32'),
(69, 'Depression', 1, '2020-12-28', '10:51:47', '2020-12-28 10:52:12'),
(70, 'Cataracts', 1, '2020-12-28', '10:51:47', '2020-12-28 10:52:12'),
(71, 'Hypothyroidism', 1, '2020-12-28', '10:52:16', '2020-12-28 10:52:50'),
(72, 'Grave\'s disease', 1, '2020-12-28', '10:52:16', '2020-12-28 10:52:50'),
(73, 'Ulcerative colitis', 1, '2020-12-28', '10:52:55', '2020-12-28 10:53:55'),
(74, 'Craniofacial anomalies (CFA).Cleft lip and/or cleft palate', 1, '2020-12-28', '10:52:55', '2020-12-28 10:53:55'),
(75, 'Narcolepsy', 1, '2020-12-28', '10:54:03', '2020-12-28 10:54:30'),
(76, 'Non-Hodgkin’s lymphoma', 1, '2020-12-28', '10:54:03', '2020-12-28 10:54:30'),
(77, 'Basal cell carcinoma', 1, '2020-12-28', '10:54:39', '2020-12-28 10:55:10'),
(78, 'Deep vein thrombosis', 1, '2020-12-28', '10:54:39', '2020-12-28 10:55:10'),
(79, 'Pancreatic cancer', 1, '2020-12-28', '10:55:31', '2020-12-28 10:56:14'),
(80, 'Chronic lymphocytic leukemia  \r\n', 1, '2020-12-28', '10:55:31', '2020-12-28 10:56:14'),
(81, 'Biliary calculus or gallstones', 1, '2020-12-28', '10:56:21', '2020-12-28 10:56:51'),
(82, 'Atopic Asthma', 1, '2020-12-28', '10:56:21', '2020-12-28 10:56:51'),
(83, 'Seasonal affective disorder', 1, '2020-12-28', '11:00:00', '2020-12-28 10:57:21'),
(84, 'Anorexia nervosa', 1, '2020-12-28', '10:56:57', '2020-12-28 10:57:21'),
(85, 'Cluster headache', 1, '2020-12-28', '10:58:41', '2020-12-28 10:59:44'),
(86, 'Endometrial cancer', 1, '2020-12-28', '10:58:41', '2020-12-28 10:59:44'),
(87, 'Myasthenia gravis', 1, '2020-12-28', '10:59:49', '2020-12-28 11:00:18'),
(88, 'Sarcoidosis', 1, '2020-12-28', '10:59:49', '2020-12-28 11:00:18'),
(89, 'Aperger’s syndrome', 1, '2020-12-28', '11:00:21', '2020-12-28 11:00:44'),
(90, 'Progressive supranuclear palsy', 1, '2020-12-28', '11:02:00', '2020-12-28 11:00:44'),
(91, 'Stomach cancer', 1, '2020-12-28', '11:01:34', '2020-12-28 11:02:04'),
(92, 'Abdominal Aortic Aneurysm ', 1, '2020-12-28', '11:01:34', '2020-12-28 11:02:04'),
(93, 'Atopic dermatitis or eczema', 1, '2020-12-28', '11:02:07', '2020-12-28 11:02:46'),
(94, 'Cannabis-induced psychosis', 1, '2020-12-28', '11:02:07', '2020-12-28 11:02:46'),
(95, 'Glioblastoma', 1, '2020-12-28', '11:02:51', '2020-12-28 11:03:15'),
(96, 'Osteoarthritis of the hip', 1, '2020-12-28', '11:02:51', '2020-12-28 11:03:15');

-- --------------------------------------------------------

--
-- Table structure for table ` complex_dis_name_male`
--

CREATE TABLE ` complex_dis_name_male` (
  `com_id` int(11) NOT NULL,
  `ComDisName` varchar(225) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `Date` date NOT NULL,
  `Time` time NOT NULL,
  `DateTime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table ` complex_dis_name_male`
--

INSERT INTO ` complex_dis_name_male` (`com_id`, `ComDisName`, `status`, `Date`, `Time`, `DateTime`) VALUES
(1, 'Asthma', 1, '2020-12-23', '16:20:53', '2020-12-23 16:22:14'),
(2, 'Coronary heart disease', 1, '2020-12-23', '16:20:53', '2020-12-23 16:22:14'),
(3, 'Schizophrenia', 1, '2020-12-23', '16:24:40', '2020-12-23 16:23:14'),
(4, 'Rheumatoid Arthritis', 1, '2020-12-23', '16:22:41', '2020-12-23 16:23:14'),
(5, 'Melanoma', 1, '2020-12-23', '16:23:59', '2020-12-23 16:24:37'),
(6, 'Bipolar disorder', 1, '2020-12-23', '16:23:59', '2020-12-23 16:24:37'),
(7, 'Bladder cancer', 1, '2020-12-23', '16:25:32', '2020-12-23 16:26:22'),
(8, 'Thyroid cancer', 1, '2020-12-23', '16:25:32', '2020-12-23 16:26:22'),
(9, 'Osteoarthritis of the knee', 1, '2020-12-23', '16:26:30', '2020-12-23 16:27:03'),
(10, 'Atrial fibrillation', 1, '2020-12-23', '16:26:30', '2020-12-23 16:27:03'),
(11, 'Non-alcoholic fatty liver disease 1.79x\r\n(NAFLD)', 1, '2020-12-23', '16:27:31', '2020-12-23 16:27:55'),
(12, 'Herniated Disc', 1, '2020-12-23', '16:27:31', '2020-12-23 16:27:55'),
(13, 'Cannabis-induced psychosis', 1, '2020-12-23', '16:28:29', '2020-12-23 16:29:04'),
(14, 'Sudden cardiac arrest', 1, '2020-12-23', '16:28:29', '2020-12-23 16:29:04'),
(15, 'High blood pressure', 1, '2020-12-23', '16:29:15', '2020-12-23 16:29:51'),
(16, 'Obesity', 1, '2020-12-23', '16:29:15', '2020-12-23 16:29:51'),
(17, 'Heart attack', 1, '2020-12-23', '16:30:17', '2020-12-23 16:30:44'),
(18, 'Restless leg syndrome', 1, '2020-12-23', '16:30:17', '2020-12-23 16:30:44'),
(19, 'Gout', 1, '2020-12-23', '16:31:09', '2020-12-23 16:32:16'),
(20, 'Diabetes Mellitus, Type 2', 1, '2020-12-23', '16:31:09', '2020-12-23 16:32:16'),
(21, 'Glioma', 1, '2020-12-23', '16:32:39', '2020-12-23 16:33:16'),
(22, 'Neuroblastoma', 1, '2020-12-23', '16:32:39', '2020-12-23 16:33:16'),
(23, 'Prostate cance', 1, '2020-12-23', '16:33:40', '2020-12-23 16:34:25'),
(24, 'Amyotrophic lateral sclerosis', 1, '2020-12-23', '16:33:40', '2020-12-23 16:34:25'),
(25, 'Macular degeneration, age-related', 1, '2020-12-23', '16:35:05', '2020-12-23 16:35:44'),
(26, 'Parkinson’s disease', 1, '2020-12-23', '16:35:05', '2020-12-23 16:35:44'),
(27, 'Systemic lupus erythematosus(SLE)', 1, '2020-12-23', '16:36:06', '2020-12-23 16:36:58'),
(28, 'Fuch\'s dystrophy', 1, '2020-12-23', '16:36:06', '2020-12-23 16:36:58'),
(29, 'Meningioma', 1, '2020-12-23', '16:37:17', '2020-12-23 16:37:45'),
(30, 'Multiple sclerosis', 1, '2020-12-23', '16:37:17', '2020-12-23 16:37:45'),
(31, 'Myelofibrosis(Myeloproliferative NeoplasmsMPNs)\r\n', 1, '2020-12-23', '16:38:32', '2020-12-23 16:39:26'),
(32, 'Primary biliary cirrhosis (PBC)', 1, '2020-12-23', '16:38:32', '2020-12-23 16:39:26'),
(33, 'Dyslexia', 1, '2020-12-23', '16:39:37', '2020-12-23 16:40:21'),
(34, 'Chronic obstructive pulmonary disease (COPD)', 1, '2020-12-23', '16:39:37', '2020-12-23 16:40:21'),
(35, 'Hyperuricemia', 1, '2020-12-23', '16:41:35', '2020-12-23 16:42:20'),
(36, 'Sjögren syndrome', 1, '2020-12-23', '16:41:35', '2020-12-23 16:42:20'),
(37, 'Celiac disease', 1, '2020-12-23', '16:42:45', '2020-12-23 16:43:38'),
(38, 'Autism', 1, '2020-12-23', '16:42:45', '2020-12-23 16:43:38'),
(39, 'Vitiligo', 1, '2020-12-23', '16:43:50', '2020-12-23 16:44:34'),
(40, 'Grave\'s disease', 1, '2020-12-23', '16:43:50', '2020-12-23 16:44:34'),
(41, 'Craniofacial anomalies (CFA)', 1, '2020-12-23', '16:45:11', '2020-12-23 16:45:40'),
(42, 'Cleft lip and/or cleft palate', 1, '2020-12-23', '16:45:11', '2020-12-23 16:45:40'),
(43, 'Basal cell carcinoma', 1, '2020-12-23', '16:45:50', '2020-12-23 16:46:27'),
(44, 'Chronic lymphocytic leukemia', 1, '2020-12-23', '16:45:51', '2020-12-23 16:46:27'),
(45, 'Exfoliative glaucoma ', 1, '2020-12-23', '16:47:06', '2020-12-23 16:47:52'),
(46, 'Priapism in Sickle Cell Anemia', 1, '2020-12-15', '16:47:09', '2020-12-23 16:47:52'),
(47, 'Primary open-angle glaucoma', 1, '2020-12-23', '16:48:39', '2020-12-23 16:49:03'),
(48, 'Hypertriglyceridemia ', 1, '2020-12-23', '16:48:39', '2020-12-23 16:49:03'),
(49, 'Selective deficiency of IgA', 1, '2020-12-23', '16:50:13', '2020-12-23 16:50:44'),
(50, 'Eosinophilic esophagitis (EoE)', 1, '2020-12-23', '16:50:13', '2020-12-23 16:50:44'),
(51, 'Limited cutaneous scleroderma', 1, '2020-12-23', '16:51:18', '2020-12-23 16:51:55'),
(52, 'Essential tremor', 1, '2020-12-23', '16:51:18', '2020-12-23 16:51:55'),
(53, 'Idiopathic membranous nephropathy\r\n', 1, '2020-12-23', '16:52:16', '2020-12-23 16:53:26'),
(54, 'Osteoarthritis of the hip', 1, '2020-12-23', '16:52:16', '2020-12-23 16:53:26'),
(55, 'Intracranial aneurysm', 1, '2020-12-23', '16:53:46', '2020-12-23 16:54:54'),
(56, 'Ankylosing spondylitis (AS)', 1, '2020-12-23', '16:53:46', '2020-12-23 16:54:54'),
(57, 'Crohn’s disease', 1, '2020-12-23', '16:54:59', '2020-12-23 16:55:47'),
(58, 'Colorectal cancer', 1, '2020-12-23', '16:54:59', '2020-12-23 16:55:47'),
(59, 'Lung cancer', 1, '2020-12-23', '16:56:03', '2020-12-23 16:56:39'),
(60, 'Testicular cancer', 1, '2020-12-23', '16:56:03', '2020-12-23 16:56:39'),
(61, 'Psoriasis', 1, '2020-12-23', '16:56:55', '2020-12-23 16:57:37'),
(62, 'Peripheral arterial hypertension disease', 1, '2020-12-23', '16:56:55', '2020-12-23 16:57:37'),
(63, 'Periodontitis ', 1, '2020-12-23', '16:58:57', '2020-12-23 16:59:26'),
(64, 'Migraine', 1, '2020-12-23', '16:58:57', '2020-12-23 16:59:26'),
(65, 'Osteoporosis', 1, '2020-12-23', '16:59:41', '2020-12-23 17:00:12'),
(66, 'Depression', 1, '2020-12-23', '16:59:41', '2020-12-23 17:00:12'),
(67, 'Cataracts', 1, '2020-12-23', '17:00:40', '2020-12-23 17:01:20'),
(68, 'Allergic Asthma', 1, '2020-12-23', '17:00:40', '2020-12-23 17:01:20'),
(69, 'Hypothyroidism', 1, '2020-12-23', '17:01:26', '2020-12-23 17:01:58'),
(70, 'Ulcerative colitis', 1, '2020-12-23', '17:01:26', '2020-12-23 17:01:58'),
(71, 'Narcolepsy', 1, '2020-12-23', '17:02:13', '2020-12-23 17:02:42'),
(72, 'Non-Hodgkin’s lymphoma', 1, '2020-12-23', '17:02:13', '2020-12-23 17:02:42'),
(73, 'Deep vein thrombosis', 1, '2020-12-23', '17:02:57', '2020-12-23 17:03:25'),
(74, 'Esophageal Cancer', 1, '2020-12-23', '17:02:58', '2020-12-23 17:03:25'),
(75, 'Pancreatic cancer', 1, '2020-12-23', '17:03:35', '2020-12-23 17:04:09'),
(76, 'Pulmonary Fibrosis', 1, '2020-12-23', '17:03:35', '2020-12-23 17:04:09'),
(77, 'Biliary calculus or gallstones', 1, '2020-12-23', '17:04:22', '2020-12-23 17:05:04'),
(78, 'Atopic Asthma', 1, '2020-12-23', '17:04:21', '2020-12-23 17:05:04'),
(79, 'Seasonal affective disorder', 1, '2020-12-23', '17:05:38', '2020-12-23 17:06:23'),
(80, 'Abdominal Aortic Aneurysm', 1, '2020-12-23', '17:05:38', '2020-12-23 17:06:23'),
(81, 'Chronic kidney disease', 1, '2020-12-23', '17:06:47', '2020-12-23 17:07:21'),
(82, 'Anorexia nervosa', 1, '2020-12-23', '17:06:47', '2020-12-23 17:07:21'),
(83, 'Cluster headache', 1, '2020-12-23', '17:07:36', '2020-12-23 17:08:17'),
(84, 'Oral & Pharynx Cancer (Throat cancer)', 1, '2020-12-23', '17:07:36', '2020-12-23 17:08:17'),
(85, 'Myasthenia gravis', 1, '2020-12-23', '17:08:38', '2020-12-23 17:09:14'),
(86, 'Sarcoidosis', 1, '2020-12-23', '17:08:38', '2020-12-23 17:09:14'),
(87, 'Aperger’s syndrome', 1, '2020-12-23', '17:09:32', '2020-12-23 17:10:01'),
(88, 'Multiple myeloma', 1, '2020-12-23', '17:09:32', '2020-12-23 17:10:01'),
(89, 'Progressive supranuclear palsy', 1, '2020-12-23', '17:10:27', '2020-12-23 17:10:53'),
(90, 'Stomach cancer', 1, '2020-12-23', '17:10:27', '2020-12-23 17:10:53'),
(91, 'Glioblastoma', 1, '2020-12-23', '17:11:13', '2020-12-23 17:11:23');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL,
  `iso3` char(3) DEFAULT NULL,
  `phonecode` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `name`, `iso3`, `phonecode`) VALUES
(1, 'INDIA', 'IND', 91),
(2, 'ALBANIA', 'ALB', 355),
(3, 'ALGERIA', 'DZA', 213),
(4, 'AMERICAN SAMOA', 'ASM', 1684),
(5, 'ANDORRA', 'AND', 376),
(6, 'ANGOLA', 'AGO', 244),
(7, 'ANGUILLA', 'AIA', 1264),
(8, 'ANTARCTICA', NULL, 0),
(9, 'ANTIGUA AND BARBUDA', 'ATG', 1268),
(10, 'ARGENTINA', 'ARG', 54),
(11, 'ARMENIA', 'ARM', 374),
(12, 'ARUBA', 'ABW', 297),
(13, 'AUSTRALIA', 'AUS', 61),
(14, 'AUSTRIA', 'AUT', 43),
(15, 'AZERBAIJAN', 'AZE', 994),
(16, 'BAHAMAS', 'BHS', 1242),
(17, 'BAHRAIN', 'BHR', 973),
(18, 'BANGLADESH', 'BGD', 880),
(19, 'BARBADOS', 'BRB', 1246),
(20, 'BELARUS', 'BLR', 375),
(21, 'BELGIUM', 'BEL', 32),
(22, 'BELIZE', 'BLZ', 501),
(23, 'BENIN', 'BEN', 229),
(24, 'BERMUDA', 'BMU', 1441),
(25, 'BHUTAN', 'BTN', 975),
(26, 'BOLIVIA', 'BOL', 591),
(27, 'BOSNIA AND HERZEGOVINA', 'BIH', 387),
(28, 'BOTSWANA', 'BWA', 267),
(29, 'BOUVET ISLAND', NULL, 0),
(30, 'BRAZIL', 'BRA', 55),
(31, 'BRITISH INDIAN OCEAN TERRITORY', NULL, 246),
(32, 'BRUNEI DARUSSALAM', 'BRN', 673),
(33, 'BULGARIA', 'BGR', 359),
(34, 'BURKINA FASO', 'BFA', 226),
(35, 'BURUNDI', 'BDI', 257),
(36, 'CAMBODIA', 'KHM', 855),
(37, 'CAMEROON', 'CMR', 237),
(38, 'CANADA', 'CAN', 1),
(39, 'CAPE VERDE', 'CPV', 238),
(40, 'CAYMAN ISLANDS', 'CYM', 1345),
(41, 'CENTRAL AFRICAN REPUBLIC', 'CAF', 236),
(42, 'CHAD', 'TCD', 235),
(43, 'CHILE', 'CHL', 56),
(44, 'CHINA', 'CHN', 86),
(45, 'CHRISTMAS ISLAND', NULL, 61),
(46, 'COCOS (KEELING) ISLANDS', NULL, 672),
(47, 'COLOMBIA', 'COL', 57),
(48, 'COMOROS', 'COM', 269),
(49, 'CONGO', 'COG', 242),
(50, 'CONGO, THE DEMOCRATIC REPUBLIC OF THE', 'COD', 242),
(51, 'COOK ISLANDS', 'COK', 682),
(52, 'COSTA RICA', 'CRI', 506),
(53, 'COTE D\'IVOIRE', 'CIV', 225),
(54, 'CROATIA', 'HRV', 385),
(55, 'CUBA', 'CUB', 53),
(56, 'CYPRUS', 'CYP', 357),
(57, 'CZECH REPUBLIC', 'CZE', 420),
(58, 'DENMARK', 'DNK', 45),
(59, 'DJIBOUTI', 'DJI', 253),
(60, 'DOMINICA', 'DMA', 1767),
(61, 'DOMINICAN REPUBLIC', 'DOM', 1809),
(62, 'ECUADOR', 'ECU', 593),
(63, 'EGYPT', 'EGY', 20),
(64, 'EL SALVADOR', 'SLV', 503),
(65, 'EQUATORIAL GUINEA', 'GNQ', 240),
(66, 'ERITREA', 'ERI', 291),
(67, 'ESTONIA', 'EST', 372),
(68, 'ETHIOPIA', 'ETH', 251),
(69, 'FALKLAND ISLANDS (MALVINAS)', 'FLK', 500),
(70, 'FAROE ISLANDS', 'FRO', 298),
(71, 'FIJI', 'FJI', 679),
(72, 'FINLAND', 'FIN', 358),
(73, 'FRANCE', 'FRA', 33),
(74, 'FRENCH GUIANA', 'GUF', 594),
(75, 'FRENCH POLYNESIA', 'PYF', 689),
(76, 'FRENCH SOUTHERN TERRITORIES', NULL, 0),
(77, 'GABON', 'GAB', 241),
(78, 'GAMBIA', 'GMB', 220),
(79, 'GEORGIA', 'GEO', 995),
(80, 'GERMANY', 'DEU', 49),
(81, 'GHANA', 'GHA', 233),
(82, 'GIBRALTAR', 'GIB', 350),
(83, 'GREECE', 'GRC', 30),
(84, 'GREENLAND', 'GRL', 299),
(85, 'GRENADA', 'GRD', 1473),
(86, 'GUADELOUPE', 'GLP', 590),
(87, 'GUAM', 'GUM', 1671),
(88, 'GUATEMALA', 'GTM', 502),
(89, 'GUINEA', 'GIN', 224),
(90, 'GUINEA-BISSAU', 'GNB', 245),
(91, 'GUYANA', 'GUY', 592),
(92, 'HAITI', 'HTI', 509),
(93, 'HEARD ISLAND AND MCDONALD ISLANDS', NULL, 0),
(94, 'HOLY SEE (VATICAN CITY STATE)', 'VAT', 39),
(95, 'HONDURAS', 'HND', 504),
(96, 'HONG KONG', 'HKG', 852),
(97, 'HUNGARY', 'HUN', 36),
(98, 'ICELAND', 'ISL', 354),
(99, 'AFGHANISTAN', 'AFG', 93),
(100, 'INDONESIA', 'IDN', 62),
(101, 'IRAN, ISLAMIC REPUBLIC OF', 'IRN', 98),
(102, 'IRAQ', 'IRQ', 964),
(103, 'IRELAND', 'IRL', 353),
(104, 'ISRAEL', 'ISR', 972),
(105, 'ITALY', 'ITA', 39),
(106, 'JAMAICA', 'JAM', 1876),
(107, 'JAPAN', 'JPN', 81),
(108, 'JORDAN', 'JOR', 962),
(109, 'KAZAKHSTAN', 'KAZ', 7),
(110, 'KENYA', 'KEN', 254),
(111, 'KIRIBATI', 'KIR', 686),
(112, 'KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF', 'PRK', 850),
(113, 'KOREA, REPUBLIC OF', 'KOR', 82),
(114, 'KUWAIT', 'KWT', 965),
(115, 'KYRGYZSTAN', 'KGZ', 996),
(116, 'LAO PEOPLE\'S DEMOCRATIC REPUBLIC', 'LAO', 856),
(117, 'LATVIA', 'LVA', 371),
(118, 'LEBANON', 'LBN', 961),
(119, 'LESOTHO', 'LSO', 266),
(120, 'LIBERIA', 'LBR', 231),
(121, 'LIBYAN ARAB JAMAHIRIYA', 'LBY', 218),
(122, 'LIECHTENSTEIN', 'LIE', 423),
(123, 'LITHUANIA', 'LTU', 370),
(124, 'LUXEMBOURG', 'LUX', 352),
(125, 'MACAO', 'MAC', 853),
(126, 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF', 'MKD', 389),
(127, 'MADAGASCAR', 'MDG', 261),
(128, 'MALAWI', 'MWI', 265),
(129, 'MALAYSIA', 'MYS', 60),
(130, 'MALDIVES', 'MDV', 960),
(131, 'MALI', 'MLI', 223),
(132, 'MALTA', 'MLT', 356),
(133, 'MARSHALL ISLANDS', 'MHL', 692),
(134, 'MARTINIQUE', 'MTQ', 596),
(135, 'MAURITANIA', 'MRT', 222),
(136, 'MAURITIUS', 'MUS', 230),
(137, 'MAYOTTE', NULL, 269),
(138, 'MEXICO', 'MEX', 52),
(139, 'MICRONESIA, FEDERATED STATES OF', 'FSM', 691),
(140, 'MOLDOVA, REPUBLIC OF', 'MDA', 373),
(141, 'MONACO', 'MCO', 377),
(142, 'MONGOLIA', 'MNG', 976),
(143, 'MONTSERRAT', 'MSR', 1664),
(144, 'MOROCCO', 'MAR', 212),
(145, 'MOZAMBIQUE', 'MOZ', 258),
(146, 'MYANMAR', 'MMR', 95),
(147, 'NAMIBIA', 'NAM', 264),
(148, 'NAURU', 'NRU', 674),
(149, 'NEPAL', 'NPL', 977),
(150, 'NETHERLANDS', 'NLD', 31),
(151, 'NETHERLANDS ANTILLES', 'ANT', 599),
(152, 'NEW CALEDONIA', 'NCL', 687),
(153, 'NEW ZEALAND', 'NZL', 64),
(154, 'NICARAGUA', 'NIC', 505),
(155, 'NIGER', 'NER', 227),
(156, 'NIGERIA', 'NGA', 234),
(157, 'NIUE', 'NIU', 683),
(158, 'NORFOLK ISLAND', 'NFK', 672),
(159, 'NORTHERN MARIANA ISLANDS', 'MNP', 1670),
(160, 'NORWAY', 'NOR', 47),
(161, 'OMAN', 'OMN', 968),
(162, 'PAKISTAN', 'PAK', 92),
(163, 'PALAU', 'PLW', 680),
(164, 'PALESTINIAN TERRITORY, OCCUPIED', NULL, 970),
(165, 'PANAMA', 'PAN', 507),
(166, 'PAPUA NEW GUINEA', 'PNG', 675),
(167, 'PARAGUAY', 'PRY', 595),
(168, 'PERU', 'PER', 51),
(169, 'PHILIPPINES', 'PHL', 63),
(170, 'PITCAIRN', 'PCN', 0),
(171, 'POLAND', 'POL', 48),
(172, 'PORTUGAL', 'PRT', 351),
(173, 'PUERTO RICO', 'PRI', 1787),
(174, 'QATAR', 'QAT', 974),
(175, 'REUNION', 'REU', 262),
(176, 'ROMANIA', 'ROM', 40),
(177, 'RUSSIAN FEDERATION', 'RUS', 70),
(178, 'RWANDA', 'RWA', 250),
(179, 'SAINT HELENA', 'SHN', 290),
(180, 'SAINT KITTS AND NEVIS', 'KNA', 1869),
(181, 'SAINT LUCIA', 'LCA', 1758),
(182, 'SAINT PIERRE AND MIQUELON', 'SPM', 508),
(183, 'SAINT VINCENT AND THE GRENADINES', 'VCT', 1784),
(184, 'SAMOA', 'WSM', 684),
(185, 'SAN MARINO', 'SMR', 378),
(186, 'SAO TOME AND PRINCIPE', 'STP', 239),
(187, 'SAUDI ARABIA', 'SAU', 966),
(188, 'SENEGAL', 'SEN', 221),
(189, 'SERBIA AND MONTENEGRO', NULL, 381),
(190, 'SEYCHELLES', 'SYC', 248),
(191, 'SIERRA LEONE', 'SLE', 232),
(192, 'SINGAPORE', 'SGP', 65),
(193, 'SLOVAKIA', 'SVK', 421),
(194, 'SLOVENIA', 'SVN', 386),
(195, 'SOLOMON ISLANDS', 'SLB', 677),
(196, 'SOMALIA', 'SOM', 252),
(197, 'SOUTH AFRICA', 'ZAF', 27),
(198, 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS', NULL, 0),
(199, 'SPAIN', 'ESP', 34),
(200, 'SRI LANKA', 'LKA', 94),
(201, 'SUDAN', 'SDN', 249),
(202, 'SURINAME', 'SUR', 597),
(203, 'SVALBARD AND JAN MAYEN', 'SJM', 47),
(204, 'SWAZILAND', 'SWZ', 268),
(205, 'SWEDEN', 'SWE', 46),
(206, 'SWITZERLAND', 'CHE', 41),
(207, 'SYRIAN ARAB REPUBLIC', 'SYR', 963),
(208, 'TAIWAN, PROVINCE OF CHINA', 'TWN', 886),
(209, 'TAJIKISTAN', 'TJK', 992),
(210, 'TANZANIA, UNITED REPUBLIC OF', 'TZA', 255),
(211, 'THAILAND', 'THA', 66),
(212, 'TIMOR-LESTE', NULL, 670),
(213, 'TOGO', 'TGO', 228),
(214, 'TOKELAU', 'TKL', 690),
(215, 'TONGA', 'TON', 676),
(216, 'TRINIDAD AND TOBAGO', 'TTO', 1868),
(217, 'TUNISIA', 'TUN', 216),
(218, 'TURKEY', 'TUR', 90),
(219, 'TURKMENISTAN', 'TKM', 7370),
(220, 'TURKS AND CAICOS ISLANDS', 'TCA', 1649),
(221, 'TUVALU', 'TUV', 688),
(222, 'UGANDA', 'UGA', 256),
(223, 'UKRAINE', 'UKR', 380),
(224, 'UNITED ARAB EMIRATES', 'ARE', 971),
(225, 'UNITED KINGDOM', 'GBR', 44),
(226, 'UNITED STATES', 'USA', 1),
(227, 'UNITED STATES MINOR OUTLYING ISLANDS', NULL, 1),
(228, 'URUGUAY', 'URY', 598),
(229, 'UZBEKISTAN', 'UZB', 998),
(230, 'VANUATU', 'VUT', 678),
(231, 'VENEZUELA', 'VEN', 58),
(232, 'VIET NAM', 'VNM', 84),
(233, 'VIRGIN ISLANDS, BRITISH', 'VGB', 1284),
(234, 'VIRGIN ISLANDS, U.S.', 'VIR', 1340),
(235, 'WALLIS AND FUTUNA', 'WLF', 681),
(236, 'WESTERN SAHARA', 'ESH', 212),
(237, 'YEMEN', 'YEM', 967),
(238, 'ZAMBIA', 'ZMB', 260),
(239, 'ZIMBABWE', 'ZWE', 263);

-- --------------------------------------------------------

--
-- Table structure for table `disease_female`
--

CREATE TABLE `disease_female` (
  `id` int(11) NOT NULL,
  `order_id` varchar(225) NOT NULL,
  `token` varchar(225) NOT NULL,
  `D_id` int(11) NOT NULL,
  `DiseaseValue` varchar(225) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `disease_female`
--

INSERT INTO `disease_female` (`id`, `order_id`, `token`, `D_id`, `DiseaseValue`, `date`, `time`, `datetime`) VALUES
(1, 'YGK0213f2657cd977eb0c553e7d', '1b31bae676a73732', 1, 'sdsds', '2020-12-29', '08:32:48', '2020-12-29 07:32:48'),
(2, 'YGK0213f2657cd977eb0c553e7d', '1b31bae676a73732', 2, 'addc', '2020-12-29', '08:32:48', '2020-12-29 07:32:48');

-- --------------------------------------------------------

--
-- Table structure for table `disease_input_female`
--

CREATE TABLE `disease_input_female` (
  `id` int(11) NOT NULL,
  `value` varchar(225) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `disease_input_female`
--

INSERT INTO `disease_input_female` (`id`, `value`, `status`, `datetime`) VALUES
(1, 'sdsds', 1, '2020-12-29 13:02:48'),
(2, 'addc', 1, '2020-12-29 13:02:48');

-- --------------------------------------------------------

--
-- Table structure for table `disease_input_male`
--

CREATE TABLE `disease_input_male` (
  `id` int(25) NOT NULL,
  `value` varchar(225) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp(),
  `status` tinyint(4) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `disease_input_male`
--

INSERT INTO `disease_input_male` (`id`, `value`, `datetime`, `status`) VALUES
(1, 'sdsds', '2020-12-29 12:59:34', 1),
(2, 'addc', '2020-12-29 12:59:34', 1),
(3, 'vfsjg', '2020-12-29 12:59:34', 1),
(4, 'sdsds', '2020-12-29 15:09:28', 1),
(5, 'addc', '2020-12-29 15:09:28', 1),
(6, 'vfsjg', '2020-12-29 15:09:28', 1),
(7, '2', '2020-12-29 15:09:36', 1),
(8, '1', '2020-12-29 15:09:36', 1),
(9, '2', '2020-12-29 15:09:36', 1);

-- --------------------------------------------------------

--
-- Table structure for table `disease_male`
--

CREATE TABLE `disease_male` (
  `id` int(11) NOT NULL,
  `order_id` varchar(225) NOT NULL,
  `token` varchar(225) NOT NULL,
  `D_id` int(11) NOT NULL,
  `DiseaseVal` varchar(130) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `disease_male`
--

INSERT INTO `disease_male` (`id`, `order_id`, `token`, `D_id`, `DiseaseVal`, `date`, `time`, `datetime`) VALUES
(1, 'YGK54eb3bdc10f01d5c54d9970c', 'fd91f10e2f7c21e6', 1, 'sdsds', '2020-12-29', '08:29:34', '2020-12-29 12:59:34'),
(2, 'YGK54eb3bdc10f01d5c54d9970c', 'fd91f10e2f7c21e6', 2, 'addc', '2020-12-29', '08:29:34', '2020-12-29 12:59:34'),
(3, 'YGK54eb3bdc10f01d5c54d9970c', 'fd91f10e2f7c21e6', 3, 'vfsjg', '2020-12-29', '08:29:34', '2020-12-29 12:59:34'),
(4, 'YGK9caaa11cb48aea00c797fb57', 'e57ee1a3977bd6c8', 1, 'sdsds', '2020-12-29', '10:39:28', '2020-12-29 15:09:28'),
(5, 'YGK9caaa11cb48aea00c797fb57', 'e57ee1a3977bd6c8', 2, 'addc', '2020-12-29', '10:39:28', '2020-12-29 15:09:28'),
(6, 'YGK9caaa11cb48aea00c797fb57', 'e57ee1a3977bd6c8', 3, 'vfsjg', '2020-12-29', '10:39:28', '2020-12-29 15:09:28'),
(7, 'YGKb71adf86b2340c36f1ef6ce2', '6223f02f96428b7e', 1, '2', '2020-12-29', '10:39:36', '2020-12-29 15:09:36'),
(8, 'YGKb71adf86b2340c36f1ef6ce2', '6223f02f96428b7e', 2, '1', '2020-12-29', '10:39:36', '2020-12-29 15:09:36'),
(9, 'YGKb71adf86b2340c36f1ef6ce2', '6223f02f96428b7e', 3, '2', '2020-12-29', '10:39:36', '2020-12-29 15:09:37');

-- --------------------------------------------------------

--
-- Table structure for table `drugsname_female`
--

CREATE TABLE `drugsname_female` (
  `drg_id` int(11) NOT NULL,
  `Drg_name` varchar(225) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `Date` date NOT NULL,
  `time` time NOT NULL,
  `DateTime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `drugsname_female`
--

INSERT INTO `drugsname_female` (`drg_id`, `Drg_name`, `status`, `Date`, `time`, `DateTime`) VALUES
(1, ' Amitriptyline Metabolization \r\n', 1, '2020-12-24', '15:13:15', '2020-12-24 15:14:44'),
(2, ' Citalopram Metabolization', 1, '2020-12-24', '15:13:15', '2020-12-24 15:14:44'),
(3, ' Clomipramine Metabolization', 1, '2020-12-24', '15:14:59', '2020-12-24 15:15:26'),
(4, ' Clozapine Metabolization', 1, '2020-12-24', '15:14:59', '2020-12-24 15:15:26'),
(5, ' Cyclosporine Metabolization', 1, '2020-12-24', '15:15:33', '2020-12-24 15:15:57'),
(6, ' Diazepam Metabolization', 1, '2020-12-24', '15:15:33', '2020-12-24 15:15:57'),
(7, ' Disulfiram (Antabuse) and alcoholism', 1, '2020-12-24', '15:16:04', '2020-12-24 15:16:31'),
(8, ' Escitalopram Metabolization', 1, '2020-12-24', '15:16:04', '2020-12-24 15:16:31'),
(9, ' Esomeprazole Metabolization', 1, '2020-12-24', '15:16:40', '2020-12-24 15:17:10'),
(10, ' Lansoprazole Metabolization', 1, '2020-12-24', '15:16:40', '2020-12-24 15:17:10'),
(11, 'Metabolization of Clopidogrel ', 1, '2020-12-24', '16:28:01', '2020-12-24 16:28:29'),
(12, 'Metabolization of Prasugrel', 1, '2020-12-24', '16:28:01', '2020-12-24 16:28:29'),
(13, 'Metabolization of Ticagrelor', 1, '2020-12-24', '16:28:33', '2020-12-24 16:29:03'),
(14, 'Methotrexate and side effects in rheumatoid arthritis', 1, '2020-12-24', '16:28:33', '2020-12-24 16:29:03'),
(15, 'Methotrexate response in arthritis', 1, '2020-12-24', '16:29:09', '2020-12-24 16:29:36'),
(16, 'Omeprazole Metabolization', 1, '2020-12-24', '16:29:09', '2020-12-24 16:29:36'),
(17, 'Pantoprazole Metabolization', 1, '2020-12-24', '16:29:52', '2020-12-24 16:30:22'),
(18, 'Rabeprazole Metabolization', 1, '2020-12-24', '16:29:52', '2020-12-24 16:30:22'),
(19, 'Response to Cyclophosphamide (and other chemotherapeutic agents) in breast cancer', 1, '2020-12-24', '16:30:37', '2020-12-24 16:31:02'),
(20, 'Selection of Prasugrel, Ticagrelor and Clopidogrel in Cardiovascular Diseases', 1, '2020-12-24', '16:30:37', '2020-12-24 16:31:02'),
(21, 'Sertraline Metabolization', 1, '2020-12-24', '16:31:11', '2020-12-24 16:31:32'),
(22, 'Statins and myopathy', 1, '2020-12-24', '16:31:11', '2020-12-24 16:31:32'),
(23, 'Voriconazole Metabolization', 1, '2020-12-24', '16:32:05', '2020-12-24 16:32:30'),
(24, 'Abacavir hypersensitivity', 1, '2020-12-24', '16:32:05', '2020-12-24 16:32:30'),
(25, 'Acenocoumarol and Phenprocoumon Metabolization', 1, '2020-12-24', '16:32:34', '2020-12-24 16:33:01'),
(26, 'Acetaldehyde toxicity ', 1, '2020-12-24', '16:32:34', '2020-12-24 16:33:01'),
(27, 'Aripiprazole Metabolization', 1, '2020-12-24', '16:33:42', '2020-12-24 16:34:06'),
(28, 'Brexpiprazole Metabolization', 1, '2020-12-24', '16:33:42', '2020-12-24 16:34:06'),
(29, 'Carbamazepine Metabolization', 1, '2020-12-24', '16:34:10', '2020-12-24 16:34:34'),
(30, 'Cardiovascular diseases and response to pravastatin ', 1, '2020-12-24', '16:34:10', '2020-12-24 16:34:34'),
(31, 'Celecoxib Metabolization', 1, '2020-12-24', '16:34:41', '2020-12-24 16:35:15'),
(32, 'Codeine Metabolization', 1, '2020-12-24', '16:34:41', '2020-12-24 16:35:15'),
(33, 'Desipramine Metabolization', 1, '2020-12-24', '16:35:23', '2020-12-24 16:35:58'),
(34, 'Fluoropyrimidines Metabolization (Fluorouracil, Capecitabine, Tegafur)', 1, '2020-12-24', '16:35:23', '2020-12-24 16:35:58'),
(35, 'Fluorouracil toxicity', 1, '2020-12-24', '16:36:06', '2020-12-24 16:36:32'),
(36, 'Fluoxetine Metabolization', 1, '2020-12-24', '16:36:06', '2020-12-24 16:36:32'),
(37, 'Fluvoxamine Metabolization', 1, '2020-12-24', '16:37:13', '2020-12-24 16:37:47'),
(38, 'Glipizide Metabolization', 1, '2020-12-24', '16:37:13', '2020-12-24 16:37:47'),
(39, 'Haloperidol Metabolization', 1, '2020-12-24', '16:37:53', '2020-12-24 16:38:25'),
(40, 'Hepatitis C response to treatment', 1, '2020-12-24', '16:37:53', '2020-12-24 16:38:25'),
(41, 'Iloperidone Metabolization', 1, '2020-12-24', '16:38:29', '2020-12-24 16:39:03'),
(42, 'Irinotecan and colorectal cancer', 1, '2020-12-24', '16:38:29', '2020-12-24 16:39:03'),
(43, 'Ivacaftor and Cystic Fibrosis', 1, '2020-12-24', '16:39:20', '2020-12-24 16:39:49'),
(44, 'Mercaptopurine Metabolization', 1, '2020-12-24', '16:39:20', '2020-12-24 16:39:49'),
(45, 'Metoprolol Metabolization', 1, '2020-12-24', '16:40:02', '2020-12-24 16:40:28'),
(46, 'Mipomersen and familial hypercholesterolemia', 1, '2020-12-24', '16:40:02', '2020-12-24 16:40:28'),
(47, 'Nortriptyline Metabolization', 1, '2020-12-24', '16:40:40', '2020-12-24 16:41:11'),
(48, 'Paroxetin Metabolization', 1, '2020-12-24', '16:40:40', '2020-12-24 16:41:11'),
(49, 'Perphenazine Metabolization ', 1, '2020-12-24', '16:41:18', '2020-12-24 16:42:00'),
(50, 'Phenytoin Metabolization', 1, '2020-12-24', '16:41:18', '2020-12-24 16:42:00'),
(51, 'Phenytoin sensitivity', 1, '2020-12-24', '16:42:05', '2020-12-24 16:42:38'),
(52, 'Pimozide Metabolization', 1, '2020-12-24', '16:42:05', '2020-12-24 16:42:38'),
(53, 'Propranolol Metabolization', 1, '2020-12-24', '16:42:42', '2020-12-24 16:43:12'),
(54, 'Pseudocholinesterase deficiency', 1, '2020-12-24', '16:42:42', '2020-12-24 16:43:12'),
(55, 'Response to Valproic Acid and adverse effects', 1, '2020-12-24', '16:43:16', '2020-12-24 16:44:49'),
(56, 'Risperidone Metabolization', 1, '2020-12-24', '16:43:16', '2020-12-24 16:44:49'),
(57, 'Sulfonylurea metabolism', 1, '2020-12-24', '16:44:54', '2020-12-24 16:45:50'),
(58, 'Tacrolimus Metabolization in Transplants', 1, '2020-12-24', '16:44:54', '2020-12-24 16:45:50'),
(59, 'Thiopurine methyltransferase enzyme activity', 1, '2020-12-24', '16:45:54', '2020-12-24 16:46:24'),
(60, 'Tramadol Metabolization ', 1, '2020-12-24', '16:45:54', '2020-12-24 16:46:24'),
(61, 'Venlafaxine Metabolization', 1, '2020-12-24', '16:46:33', '2020-12-24 16:47:00'),
(62, 'Warfarin Metabolization', 1, '2020-12-24', '16:46:33', '2020-12-24 16:47:00'),
(63, 'Zuclopenthixol Metabolization', 1, '2020-12-24', '16:47:40', '2020-12-24 16:48:30'),
(64, 'Antidepressants and Blood-Brain Barrier', 1, '2020-12-24', '16:47:40', '2020-12-24 16:48:30'),
(65, 'Antidiabetics Response (sulphonylureas)', 1, '2020-12-24', '16:48:37', '2020-12-24 16:49:03'),
(66, 'Aspirin and asthma', 1, '2020-12-24', '16:48:37', '2020-12-24 16:49:03'),
(67, 'Aspirin and cardiovascular risk', 1, '2020-12-24', '16:49:08', '2020-12-24 16:49:46'),
(68, 'Aspirin and colorectal cancer', 1, '2020-12-24', '16:49:08', '2020-12-24 16:49:46'),
(69, 'Asthma and inhaled corticosteroids', 1, '2020-12-24', '16:50:02', '2020-12-24 16:50:19'),
(70, 'Cabozantinib response and medullary thyroid cancer', 1, '2020-12-24', '16:50:02', '2020-12-24 16:50:19'),
(71, 'Caffeine metabolism', 1, '2020-12-24', '16:51:45', '2020-12-24 16:52:22'),
(72, 'Cisplatine response', 1, '2020-12-24', '16:51:45', '2020-12-24 16:52:22'),
(73, 'Donepezil Metabolization (applicable to Galantamine)', 1, '2020-12-24', '16:52:57', '2020-12-24 16:53:09'),
(74, 'Fentanyl Metabolization', 1, '2020-12-24', '16:52:34', '2020-12-24 16:53:09'),
(75, 'Gemcitabine Response in pancreatic cancer', 1, '2020-12-24', '16:53:13', '2020-12-24 16:53:39'),
(76, 'Glimepiride, Glyburide and Glicazide Metabolization', 1, '2020-12-24', '16:53:13', '2020-12-24 16:53:39'),
(77, 'High blood pressure treatment with common drugs ', 1, '2020-12-24', '16:53:44', '2020-12-24 16:54:22'),
(78, 'Metformin response', 1, '2020-12-24', '16:53:44', '2020-12-24 16:54:22'),
(79, 'Paclitaxel (chemotherapy) and development of neuropathies ', 1, '2020-12-24', '16:54:34', '2020-12-24 16:55:02'),
(80, 'Paclitaxel Metabolization (chemotherapy) and toxicity', 1, '2020-12-24', '16:54:34', '2020-12-24 16:55:02'),
(81, 'Palonosetron Metabolization', 1, '2020-12-24', '16:55:10', '2020-12-24 16:55:36'),
(82, 'Response to Chlorthalidone', 1, '2020-12-24', '16:55:10', '2020-12-24 16:55:36'),
(83, 'Response to olaparib in breast and ovarian cancer', 1, '2020-12-24', '16:56:52', '2020-12-24 16:57:19'),
(84, 'Response to -blockers (Metoprolol, Carvedilol, Propranolol)', 1, '2020-12-24', '16:56:52', '2020-12-24 16:57:19'),
(85, 'Risperidone Response', 1, '2020-12-24', '16:57:35', '2020-12-24 16:58:03'),
(86, 'Tamoxifen Metabolization in Breast Cancer (Prognosis)', 1, '2020-12-24', '16:57:35', '2020-12-24 16:58:03'),
(87, 'Tolbutamide Metabolization', 1, '2020-12-24', '16:58:09', '2020-12-24 16:58:33'),
(88, 'Ziprasidone Response', 1, '2020-12-24', '16:58:08', '2020-12-24 16:58:33'),
(89, 'Acenocoumarol and Phenprocoumon Response', 1, '2020-12-24', '16:58:38', '2020-12-24 16:59:04'),
(90, 'Adjuvant chemotherapy in primary breast cancer. Trastuzumab (Herceptin)', 1, '2020-12-24', '16:58:38', '2020-12-24 16:59:04'),
(91, 'Atenolol Response ', 1, '2020-12-24', '16:59:11', '2020-12-24 16:59:42'),
(92, 'Bevacizumab response in Colorectal Cancer', 1, '2020-12-24', '16:59:11', '2020-12-24 16:59:42'),
(93, 'Carbamazepine and side effects', 1, '2020-12-24', '16:59:48', '2020-12-24 17:00:20'),
(94, 'Carisoprodol Metabolization', 1, '2020-12-24', '16:59:48', '2020-12-24 17:00:20'),
(95, 'Clobazam Metabolization ', 1, '2020-12-24', '17:00:25', '2020-12-24 17:00:59'),
(96, 'Cyclophosphamide Toxicity (and other chemotherapeutic agents)', 1, '2020-12-24', '17:00:25', '2020-12-24 17:00:59'),
(97, 'Duloxetine Response', 1, '2020-12-24', '17:01:03', '2020-12-24 17:01:37'),
(98, 'Floxacillin toxicity', 1, '2020-12-24', '17:01:03', '2020-12-24 17:01:37'),
(99, 'Fluoxetine, Citalopram and Escitalopram Response', 1, '2020-12-24', '17:01:59', '2020-12-24 17:02:24'),
(100, 'Gefitinib and lung cancer', 1, '2020-12-24', '17:01:59', '2020-12-24 17:02:24'),
(101, 'Gemcitabine and pancreatic cancer', 1, '2020-12-24', '17:02:30', '2020-12-24 17:02:51'),
(102, 'Iloperidone and prolongation of the QTc interval', 1, '2020-12-24', '17:02:30', '2020-12-24 17:02:51'),
(103, 'LUM/IVA and Cystic Fibrosis', 1, '2020-12-24', '17:02:56', '2020-12-24 17:03:27'),
(104, 'Methotrexate and response to transplants', 1, '2020-12-24', '17:02:56', '2020-12-24 17:03:27'),
(105, 'Methotrexate and side effects in cancer treatment', 1, '2020-12-24', '17:03:59', '2020-12-24 17:04:35'),
(106, 'Mirtazapine Response', 1, '2020-12-24', '17:03:59', '2020-12-24 17:04:35'),
(107, 'Naltrexone and alcoholism', 1, '2020-12-24', '17:04:45', '2020-12-24 17:05:20'),
(108, 'Nelfinavir Metabolization (HIV)', 1, '2020-12-24', '17:04:45', '2020-12-24 17:05:20'),
(109, 'Olanzapine and weight gain', 1, '2020-12-24', '17:05:35', '2020-12-24 17:06:02'),
(110, 'Opioids Response (Morphine, Oxycodone and Fentanyl) ', 1, '2020-12-24', '17:05:35', '2020-12-24 17:06:02'),
(111, 'Paclitaxel Response (chemotherapy)', 1, '2020-12-24', '17:07:22', '2020-12-24 17:07:53'),
(112, 'Response to Furosemide and Torasemide', 1, '2020-12-24', '17:07:22', '2020-12-24 17:07:53'),
(113, 'Response to Hydrochlorothiazide', 1, '2020-12-24', '17:07:58', '2020-12-24 17:08:26'),
(114, 'Response to Lithium in Bipolar Disorder', 1, '2020-12-24', '17:07:58', '2020-12-24 17:08:26'),
(115, 'Response to imatinib', 1, '2020-12-24', '17:08:37', '2020-12-24 17:09:03'),
(116, 'Risperidone and weight gain ', 1, '2020-12-24', '17:08:37', '2020-12-24 17:09:03'),
(117, 'Rosiglitazone response in diabetics', 1, '2020-12-24', '17:09:24', '2020-12-24 17:09:52'),
(118, 'Sildenafil effect (Viagra®)', 1, '2020-12-24', '17:09:24', '2020-12-24 17:09:52'),
(119, 'Simvastatin Metabolization', 1, '2020-12-24', '17:10:02', '2020-12-24 17:10:24'),
(120, 'Venlafaxine Response', 1, '2020-12-24', '17:10:02', '2020-12-24 17:10:24'),
(121, 'Vincristine Response', 1, '2020-12-24', '17:10:46', '2020-12-24 17:11:19'),
(122, 'Warfarin Response', 1, '2020-12-24', '17:10:46', '2020-12-24 17:11:19'),
(123, 'Alfentanil Response', 1, '2020-12-24', '17:11:25', '2020-12-24 17:12:07'),
(124, 'Antipsychotics and weight gain (amisulpride, aripiprazole, clozapine, olanzapine, \r\nhaloperidol, quetiapine, risperidone, ziprasidone, palperidone)', 1, '2020-12-24', '17:11:25', '2020-12-24 17:12:07'),
(125, 'Aspirin resistance and prothrombotic effect', 1, '2020-12-24', '17:11:26', '2020-12-24 17:12:36'),
(126, 'Bisoprolol Response', 1, '2020-12-24', '17:12:13', '2020-12-24 17:12:36'),
(127, 'Bupropion and Side Effects ', 1, '2020-12-24', '17:13:48', '2020-12-24 17:14:18'),
(128, 'COPD treatment (Combined corticosteroid + B2 agonist treatment) ', 1, '2020-12-24', '17:13:48', '2020-12-24 17:14:18'),
(129, 'Carvedilol Metabolization', 1, '2020-12-24', '17:14:24', '2020-12-24 17:14:49'),
(130, 'Docetaxel and Leukopenia/neutropenia', 1, '2020-12-24', '17:14:24', '2020-12-24 17:14:49'),
(131, 'Gemcitabine Response in breast cancer', 1, '2020-12-24', '17:14:54', '2020-12-24 17:15:07'),
(132, 'Gemcitabine Response in mesothelioma', 1, '2020-12-24', '17:15:03', '2020-12-24 17:15:35'),
(133, 'Gemcitabine Response in non-small cell lung cancer', 1, '2020-12-24', '17:15:11', '2020-12-24 17:15:35'),
(134, 'Gemcitabine Toxicity in pancreatic cancer', 1, '2020-12-24', '17:15:42', '2020-12-24 17:16:13'),
(135, 'Hypersensitivity to Vaccination ', 1, '2020-12-24', '17:15:42', '2020-12-24 17:16:13'),
(136, 'Iloperidone response', 1, '2020-12-24', '17:16:19', '2020-12-24 17:16:52'),
(137, 'Methadone. Heroin addiction', 1, '2020-12-24', '17:16:19', '2020-12-24 17:16:52'),
(138, 'Montelukast metabolization', 1, '2020-12-24', '17:17:00', '2020-12-24 17:17:37'),
(139, 'Montelukast response', 1, '2020-12-24', '17:17:00', '2020-12-24 17:17:37'),
(140, 'Morphine and adverse effects ', 1, '2020-12-24', '17:18:11', '2020-12-24 17:18:43'),
(141, 'Nelfinavir Response (HIV)', 1, '2020-12-24', '17:18:11', '2020-12-24 17:18:43'),
(142, 'Olanzapine and schizophrenia', 1, '2020-12-24', '17:18:52', '2020-12-24 17:19:14'),
(143, 'Paclitaxel (chemotherapy) and development of hematotoxicity', 1, '2020-12-24', '17:18:52', '2020-12-24 17:19:14'),
(144, 'Quetiapine Metabolization', 1, '2020-12-24', '17:19:21', '2020-12-24 17:20:20'),
(145, 'Response to Acetylcholinesterase Inhibitors (ChEIs) in Alzheimer\'s disease \r\n(galantamine, donepezil, rivastigmine)\r\n', 1, '2020-12-24', '17:19:21', '2020-12-24 17:20:20'),
(146, 'Sexual dysfunction in response to SSRIs', 1, '2020-12-24', '17:20:24', '2020-12-24 17:20:56'),
(147, 'Vincristine Metabolization ', 1, '2020-12-24', '17:20:24', '2020-12-24 17:20:56'),
(148, 'Vincristine and adverse effects', 1, '2020-12-24', '17:21:05', '2020-12-24 17:21:29'),
(149, 'Voriconazole and cell transporters', 1, '2020-12-24', '17:21:01', '2020-12-24 17:21:29');

-- --------------------------------------------------------

--
-- Table structure for table `drugsname_male`
--

CREATE TABLE `drugsname_male` (
  `drg_id` int(11) NOT NULL,
  `Drg_name` varchar(225) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `drugsname_male`
--

INSERT INTO `drugsname_male` (`drg_id`, `Drg_name`, `status`, `date`, `time`, `datetime`) VALUES
(1, 'Acenocoumarol and Phenprocoumo', 1, '2020-12-21', '10:10:04', '2020-12-21 04:41:35'),
(2, 'Amitriptyline Metabolization ', 1, '2020-12-21', '10:10:05', '2020-12-21 04:41:35'),
(3, 'Celecoxib Metabolization ', 1, '2020-12-21', '10:11:53', '2020-12-21 04:42:39'),
(4, 'Citalopram Metabolization ', 1, '2020-12-21', '10:11:53', '2020-12-21 04:42:39'),
(5, 'Clomipramine Metabolization ', 1, '2020-12-21', '10:12:54', '2020-12-21 04:43:34'),
(6, 'Clozapine Metabolization ', 1, '2020-12-21', '10:12:54', '2020-12-21 04:43:34'),
(7, 'Cyclosporine Metabolization ', 1, '2020-12-21', '10:13:54', '2020-12-21 04:44:30'),
(8, 'Diazepam Metabolization ', 1, '2020-12-21', '10:13:54', '2020-12-21 04:44:30'),
(9, 'Disulfiram (Antabuse) and alcoholism ', 1, '2020-12-21', '10:14:55', '2020-12-21 04:45:33'),
(10, 'Escitalopram Metabolization ', 1, '2020-12-21', '10:14:55', '2020-12-21 04:45:33'),
(11, 'Esomeprazole Metabolization', 1, '2020-12-23', '13:43:05', '2020-12-23 08:14:32'),
(12, 'Glipizide Metabolization', 1, '2020-12-23', '13:43:05', '2020-12-23 08:14:32'),
(13, '  Lansoprazole Metabolization \r\n', 1, '2020-12-23', '13:54:45', '2020-12-23 08:25:20'),
(14, ' Mercaptopurine Metabolization', 1, '2020-12-23', '13:54:45', '2020-12-23 08:25:20'),
(15, 'Metabolization of Clopidogrel ', 1, '2020-12-23', '13:55:56', '2020-12-23 08:27:19'),
(16, '  Metabolization of Prasugrel', 1, '2020-12-23', '13:55:56', '2020-12-23 08:27:19'),
(17, '  Metabolization of Ticagrelor \r\n', 1, '2020-12-23', '13:58:46', '2020-12-23 08:29:20'),
(18, ' Methotrexate response in arthritis', 1, '2020-12-23', '13:58:46', '2020-12-23 08:29:20'),
(19, 'Omeprazole Metabolization', 1, '2020-12-23', '14:35:10', '2020-12-23 09:06:03'),
(20, 'Pantoprazole Metabolization', 1, '2020-12-23', '14:35:11', '2020-12-23 09:06:03'),
(21, 'Phenytoin Metabolization', 1, '2020-12-23', '14:36:33', '2020-12-23 09:07:41'),
(22, 'Rabeprazole Metabolization', 1, '2020-12-23', '14:36:33', '2020-12-23 09:07:41'),
(23, 'Selection of Prasugrel, Ticagrelor and Clopidogrel in Cardiovascular Diseases ', 1, '2020-12-23', '14:38:01', '2020-12-23 09:08:57'),
(24, 'Sertraline Metabolization ', 1, '2020-12-23', '14:38:01', '2020-12-23 09:08:57'),
(25, 'Thiopurine methyltransferase enzyme activity ', 1, '2020-12-23', '14:39:17', '2020-12-23 09:09:57'),
(26, 'Voriconazole Metabolization ', 1, '2020-12-23', '14:39:17', '2020-12-23 09:09:57'),
(27, 'Warfarin Metabolization ', 1, '2020-12-23', '14:40:23', '2020-12-23 09:11:20'),
(28, 'Abacavir hypersensitivity ', 1, '2020-12-23', '14:40:23', '2020-12-23 09:11:20'),
(29, 'Acetaldehyde toxicity ', 1, '2020-12-23', '14:42:11', '2020-12-23 09:12:51'),
(30, 'Aripiprazole Metabolization ', 1, '2020-12-23', '14:42:11', '2020-12-23 09:12:51'),
(31, 'Brexpiprazole Metabolization ', 1, '2020-12-23', '14:44:49', '2020-12-23 09:16:44'),
(32, 'Carbamazepine Metabolization ', 1, '2020-12-23', '14:44:49', '2020-12-23 09:16:44'),
(33, 'Cardiovascular diseases and response to pravastatin ', 1, '2020-12-23', '14:47:30', '2020-12-23 09:18:36'),
(34, 'Codeine Metabolization ', 1, '2020-12-23', '14:47:30', '2020-12-23 09:18:36'),
(35, 'Desipramine Metabolization ', 1, '2020-12-23', '14:48:53', '2020-12-23 09:19:54'),
(36, 'Fluoropyrimidines Metabolization (Fluorouracil, Capecitabine, Tegafur) ', 1, '2020-12-23', '14:48:53', '2020-12-23 09:19:54'),
(37, 'Fluorouracil toxicity', 1, '2020-12-23', '14:48:54', '2020-12-23 09:21:47'),
(38, 'Fluoxetine Metabolization ', 1, '2020-12-23', '14:50:40', '2020-12-23 09:21:47'),
(39, 'Haloperidol Metabolization ', 1, '2020-12-23', '14:53:44', '2020-12-23 09:25:01'),
(40, 'Hepatitis C response to treatment ', 1, '2020-12-23', '14:53:45', '2020-12-23 09:25:01'),
(41, 'Iloperidone Metabolization ', 1, '2020-12-23', '14:55:20', '2020-12-23 09:26:08'),
(42, 'Irinotecan and colorectal cancer ', 1, '2020-12-23', '14:55:20', '2020-12-23 09:26:08'),
(43, 'Ivacaftor and Cystic Fibrosis ', 1, '2020-12-23', '14:57:12', '2020-12-23 09:27:48'),
(44, 'Methotrexate and side effects in rheumatoid arthritis ', 1, '2020-12-23', '14:57:12', '2020-12-23 09:27:48'),
(45, 'Metoprolol Metabolization ', 1, '2020-12-23', '14:58:29', '2020-12-23 09:29:10'),
(46, 'Mipomersen and familial hypercholesterolemia ', 1, '2020-12-23', '14:58:29', '2020-12-23 09:29:10'),
(47, 'Nortriptyline Metabolization ', 1, '2020-12-23', '14:59:31', '2020-12-23 09:30:03'),
(48, 'Paroxetin Metabolization ', 1, '2020-12-23', '14:59:31', '2020-12-23 09:30:03'),
(49, 'Perphenazine Metabolization ', 1, '2020-12-23', '15:00:30', '2020-12-23 09:31:04'),
(50, 'Phenytoin sensitivity ', 1, '2020-12-23', '15:00:30', '2020-12-23 09:31:04'),
(51, 'Pimozide Metabolization ', 1, '2020-12-23', '15:02:05', '2020-12-23 09:32:57'),
(52, 'Propranolol Metabolization ', 1, '2020-12-23', '15:02:05', '2020-12-23 09:32:57'),
(53, 'Pseudocholinesterase deficiency', 1, '2020-12-23', '15:03:06', '2020-12-23 09:34:25'),
(54, 'Response to Cyclophosphamide (and other chemotherapeutic agents) in breast cancer ', 1, '2020-12-23', '15:03:06', '2020-12-23 09:34:25'),
(55, 'Response to Valproic Acid and adverse effects ', 1, '2020-12-23', '15:05:25', '2020-12-23 09:36:42'),
(56, 'Risperidone Metabolization ', 1, '2020-12-23', '15:05:25', '2020-12-23 09:36:42'),
(57, 'Statins and myopathy ', 1, '2020-12-23', '15:07:00', '2020-12-23 09:37:52'),
(58, 'Sulfonylurea metabolism ', 1, '2020-12-23', '15:07:00', '2020-12-23 09:37:52'),
(59, 'Tacrolimus Metabolization in Transplants ', 1, '2020-12-23', '15:08:01', '2020-12-23 09:39:03'),
(60, 'Tramadol Metabolization ', 1, '2020-12-23', '15:08:01', '2020-12-23 09:39:03'),
(61, 'Venlafaxine Metabolization ', 1, '2020-12-23', '15:09:13', '2020-12-23 09:40:21'),
(62, 'Zuclopenthixol Metabolization ', 1, '2020-12-23', '15:09:13', '2020-12-23 09:40:21'),
(63, 'Antidepressants and Blood-Brain Barrier ', 1, '2020-12-23', '15:10:29', '2020-12-23 09:41:23'),
(64, 'Antidiabetics Response (sulphonylureas) ', 1, '2020-12-23', '15:10:29', '2020-12-23 09:41:23'),
(65, 'Aspirin and asthma ', 1, '2020-12-23', '15:11:28', '2020-12-23 09:42:39'),
(66, 'Aspirin and cardiovascular risk ', 1, '2020-12-23', '15:11:28', '2020-12-23 09:42:39'),
(67, 'Aspirin and colorectal cancer ', 1, '2020-12-23', '15:12:02', '2020-12-23 09:44:52'),
(68, 'Asthma and inhaled corticosteroids ', 1, '2020-12-23', '15:12:59', '2020-12-23 09:44:52'),
(69, 'Cabozantinib response and medullary thyroid cancer ', 1, '2020-12-23', '15:15:18', '2020-12-23 09:45:27'),
(70, 'Caffeine metabolism ', 1, '2020-12-23', '15:15:28', '2020-12-23 09:46:25'),
(71, 'Cisplatine response ', 1, '2020-12-23', '15:15:21', '2020-12-23 09:46:25'),
(72, 'Donepezil Metabolization (applicable to Galantamine) ', 1, '2020-12-23', '15:18:21', '2020-12-23 09:48:10'),
(73, 'Fentanyl Metabolization ', 1, '2020-12-23', '15:18:21', '2020-12-23 09:48:10'),
(74, 'Gemcitabine Response in pancreatic cancer ', 1, '2020-12-23', '15:18:15', '2020-12-23 09:49:22'),
(75, 'Glimepiride, Glyburide and Glicazide Metabolization ', 1, '2020-12-23', '15:18:15', '2020-12-23 09:49:22'),
(76, 'High blood pressure treatment with common drugs ', 1, '2020-12-23', '15:20:31', '2020-12-23 09:50:55'),
(77, 'Metformin response ', 1, '2020-12-23', '15:20:31', '2020-12-23 09:50:55'),
(78, 'Paclitaxel (chemotherapy) and development of neuropathies ', 1, '2020-12-23', '15:23:28', '2020-12-23 09:52:06'),
(79, 'Paclitaxel Metabolization (chemotherapy) and toxicity ', 1, '2020-12-23', '15:21:27', '2020-12-23 09:52:06'),
(80, 'Palonosetron Metabolization ', 1, '2020-12-23', '15:22:27', '2020-12-23 09:53:17'),
(81, 'Post-operative nausea and vomiting ', 1, '2020-12-23', '15:22:27', '2020-12-23 09:53:17'),
(82, 'Response to Chlorthalidone ', 1, '2020-12-23', '15:23:22', '2020-12-23 09:54:31'),
(83, 'Response to olaparib in breast and ovarian cancer ', 1, '2020-12-23', '15:23:22', '2020-12-23 09:54:31'),
(84, 'Response to -blockers (Metoprolol, Carvedilol, Propranolol) ', 1, '2020-12-23', '15:26:35', '2020-12-23 09:55:59'),
(85, 'Risperidone Response ', 1, '2020-12-23', '15:26:35', '2020-12-23 09:55:59'),
(86, 'Tamoxifen Metabolization in Breast Cancer (Prognosis) ', 1, '2020-12-23', '15:26:10', '2020-12-23 09:56:58'),
(87, 'Tolbutamide Metabolization ', 1, '2020-12-23', '15:27:10', '2020-12-23 09:56:58'),
(88, 'Ziprasidone Response ', 1, '2020-12-23', '15:27:08', '2020-12-23 09:57:48'),
(89, 'Acenocoumarol and Phenprocoumon Response ', 1, '2020-12-23', '15:28:08', '2020-12-23 09:57:48'),
(90, 'Adjuvant chemotherapy in primary breast cancer. Trastuzumab (Herceptin) ', 1, '2020-12-23', '15:28:07', '2020-12-23 09:58:34'),
(91, 'Atenolol Response ', 1, '2020-12-23', '15:28:09', '2020-12-23 09:58:34'),
(92, 'Bevacizumab response in Colorectal Cancer ', 1, '2020-12-23', '15:29:08', '2020-12-23 09:59:38'),
(93, 'Bleomycin and Testicular (germ cell ) Cancer ', 1, '2020-12-23', '15:30:08', '2020-12-23 09:59:38'),
(94, 'Bupropion (Zyban) ', 1, '2020-12-23', '15:30:54', '2020-12-23 10:00:27'),
(95, 'Carbamazepine and side effects ', 1, '2020-12-23', '15:31:54', '2020-12-23 10:00:27'),
(96, 'Carisoprodol Metabolization ', 1, '2020-12-23', '15:30:41', '2020-12-23 10:01:17'),
(97, 'Clobazam Metabolization ', 1, '2020-12-23', '15:30:41', '2020-12-23 10:01:17'),
(98, 'Cyclophosphamide Toxicity (and other chemotherapeutic agents) ', 1, '2020-12-23', '15:31:38', '2020-12-23 10:02:05'),
(99, 'Duloxetine Response ', 1, '2020-12-23', '15:31:38', '2020-12-23 10:02:05'),
(100, 'Floxacillin toxicity ', 1, '2020-12-23', '15:33:42', '2020-12-23 10:03:21'),
(101, 'Fluoxetine, Citalopram and Escitalopram Response ', 1, '2020-12-23', '15:32:45', '2020-12-23 10:03:21'),
(102, 'Gefitinib and lung cancer ', 1, '2020-12-23', '13:33:39', '2020-12-23 10:04:23'),
(103, 'Gemcitabine and pancreatic cancer ', 1, '2020-12-23', '15:33:40', '2020-12-23 10:04:23'),
(104, 'Iloperidone and prolongation of the QTc interval ', 1, '2020-12-23', '15:35:33', '2020-12-23 10:05:23'),
(105, 'LUM/IVA and Cystic Fibrosis ', 1, '2020-12-23', '15:34:34', '2020-12-23 10:05:23'),
(106, 'Methotrexate and response to transplants ', 1, '2020-12-23', '15:36:36', '2020-12-23 10:07:25'),
(107, 'Methotrexate and side effects in cancer treatment ', 1, '2020-12-23', '15:36:36', '2020-12-23 10:07:25'),
(108, 'Mirtazapine Response ', 1, '2020-12-23', '15:37:45', '2020-12-23 10:08:11'),
(109, 'Naltrexone and alcoholism ', 1, '2020-12-23', '15:37:45', '2020-12-23 10:08:11'),
(110, 'Nelfinavir Metabolization (HIV) ', 1, '2020-12-23', '15:38:35', '2020-12-23 10:09:21'),
(111, 'Olanzapine and weight gain ', 1, '2020-12-23', '15:38:38', '2020-12-23 10:09:21'),
(112, 'Opioids Response (Morphine, Oxycodone and Fentanyl) ', 1, '2020-12-23', '15:39:25', '2020-12-23 10:10:29'),
(113, 'Paclitaxel Response (chemotherapy)', 1, '2020-12-23', '15:39:25', '2020-12-23 10:10:29'),
(114, 'Response to Furosemide and Torasemide ', 1, '2020-12-23', '15:42:28', '2020-12-23 10:13:13'),
(115, 'Response to Hydrochlorothiazide ', 1, '2020-12-23', '15:42:29', '2020-12-23 10:13:13'),
(116, 'Response to Lithium in Bipolar Disorder ', 1, '2020-12-23', '15:43:46', '2020-12-23 10:13:57'),
(117, 'Response to imatinib ', 1, '2020-12-23', '15:44:02', '2020-12-23 10:14:55'),
(118, 'Risperidone and weight gain ', 1, '2020-12-23', '15:44:03', '2020-12-23 10:14:55'),
(119, 'Rosiglitazone response in diabetics ', 1, '2020-12-23', '15:45:11', '2020-12-23 10:15:55'),
(120, 'Simvastatin Metabolization ', 1, '2020-12-23', '15:45:13', '2020-12-23 10:15:55'),
(121, 'Venlafaxine Response ', 1, '2020-12-23', '15:46:39', '2020-12-23 10:17:16'),
(122, 'Vincristine Response ', 1, '2020-12-23', '15:46:39', '2020-12-23 10:17:16'),
(123, 'Warfarin Response ', 1, '2020-12-23', '15:47:39', '2020-12-23 10:18:12'),
(124, 'Alfentanil Response ', 1, '2020-12-23', '15:47:39', '2020-12-23 10:18:12'),
(125, 'Antipsychotics and weight gain ', 1, '2020-12-23', '15:48:24', '2020-12-23 10:19:59'),
(126, 'Aspirin resistance and prothrombotic effect ', 1, '2020-12-23', '15:48:24', '2020-12-23 10:19:59'),
(127, 'Bisoprolol Response ', 1, '2020-12-23', '15:54:41', '2020-12-23 10:25:21'),
(128, 'Bupropion and Side Effects ', 1, '2020-12-23', '15:54:41', '2020-12-23 10:25:21'),
(129, 'COPD treatment (Combined corticosteroid + B2 agonist treatment)', 1, '2020-12-23', '15:58:08', '2020-12-23 10:29:13'),
(130, 'Carvedilol Metabolization ', 1, '2020-12-23', '15:58:08', '2020-12-23 10:29:13'),
(131, 'Docetaxel and Leukopenia/neutropenia', 1, '2020-12-23', '15:59:43', '2020-12-23 10:30:27'),
(132, 'Gemcitabine Response in breast cancer ', 1, '2020-12-23', '15:59:43', '2020-12-23 10:30:27'),
(133, 'Gemcitabine Response in mesothelioma ', 1, '2020-12-23', '16:01:19', '2020-12-23 10:31:51'),
(134, 'Gemcitabine Response in non-small cell lung cancer ', 1, '2020-12-23', '16:01:19', '2020-12-23 10:31:51'),
(135, 'Gemcitabine Toxicity in pancreatic cancer', 1, '2020-12-23', '16:02:02', '2020-12-23 10:32:41'),
(136, 'Hypersensitivity to Vaccination ', 1, '2020-12-23', '16:02:02', '2020-12-23 10:32:41'),
(137, 'Iloperidone response', 1, '2020-12-23', '16:04:27', '2020-12-23 10:34:59'),
(138, 'Methadone. Heroin addiction', 1, '2020-12-23', '16:04:27', '2020-12-23 10:34:59'),
(139, 'Montelukast metabolization', 1, '2020-12-23', '16:05:35', '2020-12-23 10:36:00'),
(140, 'Montelukast response', 1, '2020-12-23', '16:05:35', '2020-12-23 10:36:00'),
(141, 'Morphine and adverse effects', 1, '2020-12-23', '16:06:18', '2020-12-23 10:36:53'),
(142, 'Nelfinavir Response (HIV)', 1, '2020-12-23', '16:06:18', '2020-12-23 10:36:53'),
(143, 'Olanzapine and schizophrenia', 1, '2020-12-23', '16:06:58', '2020-12-23 10:37:49'),
(144, 'Paclitaxel (chemotherapy) and development of hematotoxicity', 1, '2020-12-23', '16:06:58', '2020-12-23 10:37:49'),
(145, 'Quetiapine Metabolization', 1, '2020-12-23', '16:07:54', '2020-12-23 10:38:39'),
(146, 'Response to Acetylcholinesterase Inhibitors (ChEIs) in Alzheimer\'s disease (galantamine, donepezil, rivastigmine)\r\n', 1, '2020-12-23', '16:07:54', '2020-12-23 10:38:39'),
(147, 'Sexual dysfunction in response to SSRIs', 1, '2020-12-26', '16:08:42', '2020-12-23 10:40:07'),
(148, 'Sildenafil (Viagra) Response', 1, '2020-12-23', '16:08:42', '2020-12-23 10:40:07'),
(149, 'Vincristine Metabolization', 1, '2020-12-23', '16:11:10', '2020-12-23 10:41:33'),
(150, 'Vincristine and adverse effects', 1, '2020-12-23', '16:11:10', '2020-12-23 10:41:33'),
(151, 'Voriconazole and cell transporters ', 1, '2020-12-23', '16:12:04', '2020-12-23 10:42:16');

-- --------------------------------------------------------

--
-- Table structure for table `drugs_female`
--

CREATE TABLE `drugs_female` (
  `id` int(11) NOT NULL,
  `order_id` varchar(225) NOT NULL,
  `token` varchar(225) NOT NULL,
  `drg_id` int(11) NOT NULL,
  `DrugValue` varchar(225) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `drugs_female`
--

INSERT INTO `drugs_female` (`id`, `order_id`, `token`, `drg_id`, `DrugValue`, `date`, `time`, `datetime`) VALUES
(1, 'YGK0213f2657cd977eb0c553e7d', '1b31bae676a73732', 1, 'q', '2020-12-29', '08:32:48', '2020-12-29 13:02:53'),
(2, 'YGK0213f2657cd977eb0c553e7d', '1b31bae676a73732', 2, 'frg', '2020-12-29', '08:32:48', '2020-12-29 13:02:53'),
(3, 'YGK0213f2657cd977eb0c553e7d', '1b31bae676a73732', 3, 'ssdf', '2020-12-29', '08:32:48', '2020-12-29 13:02:53');

-- --------------------------------------------------------

--
-- Table structure for table `drugs_male`
--

CREATE TABLE `drugs_male` (
  `id` int(11) NOT NULL,
  `order_id` varchar(225) NOT NULL,
  `token` varchar(225) NOT NULL,
  `drg_id` int(33) NOT NULL,
  `DrugValue` varchar(225) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `drugs_male`
--

INSERT INTO `drugs_male` (`id`, `order_id`, `token`, `drg_id`, `DrugValue`, `date`, `time`, `datetime`) VALUES
(1, 'YGK54eb3bdc10f01d5c54d9970c', 'fd91f10e2f7c21e6', 1, 'bhui', '2020-12-29', '08:29:34', '2020-12-29 12:59:41'),
(2, 'YGK54eb3bdc10f01d5c54d9970c', 'fd91f10e2f7c21e6', 2, 'frg', '2020-12-29', '08:29:34', '2020-12-29 12:59:41'),
(3, 'YGK54eb3bdc10f01d5c54d9970c', 'fd91f10e2f7c21e6', 3, 'ssdf', '2020-12-29', '08:29:34', '2020-12-29 12:59:41');

-- --------------------------------------------------------

--
-- Table structure for table `drug_input_female`
--

CREATE TABLE `drug_input_female` (
  `id` int(11) NOT NULL,
  `value` varchar(225) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `drug_input_female`
--

INSERT INTO `drug_input_female` (`id`, `value`, `status`, `datetime`) VALUES
(1, 'q', 1, '2020-12-29 13:02:52'),
(2, 'frg', 1, '2020-12-29 13:02:52'),
(3, 'ssdf', 1, '2020-12-29 13:02:52');

-- --------------------------------------------------------

--
-- Table structure for table `drug_input_male`
--

CREATE TABLE `drug_input_male` (
  `id` int(11) NOT NULL,
  `value` varchar(33) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp(),
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `drug_input_male`
--

INSERT INTO `drug_input_male` (`id`, `value`, `datetime`, `status`) VALUES
(1, 'bhui', '2020-12-29 12:59:41', 1),
(2, 'frg', '2020-12-29 12:59:41', 1),
(3, 'ssdf', '2020-12-29 12:59:41', 1);

-- --------------------------------------------------------

--
-- Table structure for table `female_report`
--

CREATE TABLE `female_report` (
  `F_id` int(11) NOT NULL,
  `order_id` varchar(225) NOT NULL,
  `token` varchar(225) NOT NULL,
  `Date` date NOT NULL,
  `time` time NOT NULL,
  `DateTime` datetime NOT NULL DEFAULT current_timestamp(),
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `female_report`
--

INSERT INTO `female_report` (`F_id`, `order_id`, `token`, `Date`, `time`, `DateTime`, `status`) VALUES
(1, 'YGK0213f2657cd977eb0c553e7d', '1b31bae676a73732', '2020-12-29', '08:32:48', '2020-12-29 13:02:48', 0);

-- --------------------------------------------------------

--
-- Table structure for table `female_trait`
--

CREATE TABLE `female_trait` (
  `id` int(11) NOT NULL,
  `order_id` varchar(225) NOT NULL,
  `token` varchar(225) NOT NULL,
  `trait_id` int(11) NOT NULL,
  `trait_value` varchar(225) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `female_trait`
--

INSERT INTO `female_trait` (`id`, `order_id`, `token`, `trait_id`, `trait_value`, `date`, `time`, `datetime`) VALUES
(1, 'YGK0213f2657cd977eb0c553e7d', '1b31bae676a73732', 1, '1', '2020-12-29', '08:32:48', '2020-12-29 13:03:15'),
(2, 'YGK0213f2657cd977eb0c553e7d', '1b31bae676a73732', 2, '2', '2020-12-29', '08:32:48', '2020-12-29 13:03:15'),
(3, 'YGK0213f2657cd977eb0c553e7d', '1b31bae676a73732', 3, 'green', '2020-12-29', '08:32:48', '2020-12-29 13:03:15');

-- --------------------------------------------------------

--
-- Table structure for table `female_trait_input`
--

CREATE TABLE `female_trait_input` (
  `id` int(11) NOT NULL,
  `value` varchar(225) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `female_trait_input`
--

INSERT INTO `female_trait_input` (`id`, `value`, `status`, `datetime`) VALUES
(1, '1', 1, '2020-12-29 13:03:15'),
(2, '2', 1, '2020-12-29 13:03:15'),
(3, 'green', 1, '2020-12-29 13:03:15');

-- --------------------------------------------------------

--
-- Table structure for table `male_report`
--

CREATE TABLE `male_report` (
  `id` int(11) NOT NULL,
  `order_id` varchar(225) NOT NULL,
  `token` varchar(225) NOT NULL,
  `Date` date NOT NULL,
  `time` time NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` tinytext NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `male_report`
--

INSERT INTO `male_report` (`id`, `order_id`, `token`, `Date`, `time`, `datetime`, `status`) VALUES
(1, 'YGK54eb3bdc10f01d5c54d9970c', 'fd91f10e2f7c21e6', '2020-12-29', '08:29:34', '2020-12-29 07:29:34', '0'),
(2, 'YGK9caaa11cb48aea00c797fb57', 'e57ee1a3977bd6c8', '2020-12-29', '10:39:28', '2020-12-29 09:39:28', '0'),
(3, 'YGKb71adf86b2340c36f1ef6ce2', '6223f02f96428b7e', '2020-12-29', '10:39:36', '2020-12-29 09:39:36', '0');

-- --------------------------------------------------------

--
-- Table structure for table `male_trait`
--

CREATE TABLE `male_trait` (
  `id` int(11) NOT NULL,
  `order_id` varchar(225) NOT NULL,
  `token` varchar(225) NOT NULL,
  `trait_id` int(11) NOT NULL,
  `trait_value` varchar(120) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `male_trait`
--

INSERT INTO `male_trait` (`id`, `order_id`, `token`, `trait_id`, `trait_value`, `date`, `time`, `datetime`) VALUES
(1, 'YGK54eb3bdc10f01d5c54d9970c', 'fd91f10e2f7c21e6', 1, 'red', '2020-12-29', '08:29:34', '2020-12-29 13:00:11'),
(2, 'YGK54eb3bdc10f01d5c54d9970c', 'fd91f10e2f7c21e6', 2, 'blue', '2020-12-29', '08:29:34', '2020-12-29 13:00:11'),
(3, 'YGK54eb3bdc10f01d5c54d9970c', 'fd91f10e2f7c21e6', 3, 'green', '2020-12-29', '08:29:34', '2020-12-29 13:00:11');

-- --------------------------------------------------------

--
-- Table structure for table `male_trait_input`
--

CREATE TABLE `male_trait_input` (
  `id` int(11) NOT NULL,
  `value` varchar(225) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `male_trait_input`
--

INSERT INTO `male_trait_input` (`id`, `value`, `status`, `datetime`) VALUES
(1, 'red', 1, '2020-12-29 13:00:11'),
(2, 'blue', 1, '2020-12-29 13:00:11'),
(3, 'green', 1, '2020-12-29 13:00:11');

-- --------------------------------------------------------

--
-- Table structure for table `mon_dis_female`
--

CREATE TABLE `mon_dis_female` (
  `D_id` int(11) NOT NULL,
  `D_Name` varchar(225) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `Date` date NOT NULL,
  `time` time NOT NULL,
  `DateTime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mon_dis_female`
--

INSERT INTO `mon_dis_female` (`D_id`, `D_Name`, `status`, `Date`, `time`, `DateTime`) VALUES
(1, 'Short chain acyl-CoA dehydrogenase deficiency (SCADD)', 1, '2020-12-24', '11:08:46', '2020-12-24 11:10:43'),
(2, 'ARSACS (Autosomal recessive spastic ataxia of Charlevoix-Saguenay)', 1, '2020-12-23', '11:08:46', '2020-12-24 11:10:43'),
(3, '  Acute intermittent porphyria \r\n', 1, '2020-12-24', '11:16:47', '2020-12-24 11:17:55'),
(4, '  Agenesis of the Corpus Callosum with Peripheral Neuropathy (ACCPN) \r\n', 1, '2020-12-24', '11:16:47', '2020-12-24 11:17:55'),
(5, 'Alpha-1 Antitrypsin Deficiency ', 1, '2020-12-24', '11:18:04', '2020-12-24 11:18:32'),
(6, '  Alpha-mannosidosis \r\n', 1, '2020-12-24', '11:18:04', '2020-12-24 11:18:32'),
(7, '  Autosomal recessive polycystic kidney disease \r\n', 1, '2020-12-24', '11:18:44', '2020-12-24 11:19:15'),
(8, '  Beta Thalassemia \r\n', 1, '2020-12-24', '11:18:44', '2020-12-24 11:19:15'),
(9, '  Biotinidase deficiency \r\n', 1, '2020-12-24', '11:19:23', '2020-12-24 11:19:54'),
(10, '  Birt-Hogg-Dube syndrome \r\n', 1, '2020-12-24', '11:19:23', '2020-12-24 11:19:54'),
(11, ' Canavan Disease', 1, '2020-12-24', '15:45:50', '2020-12-24 15:46:36'),
(12, '  Classical homocystinuria due to CBS deficiency \r\n', 1, '2020-12-24', '15:45:50', '2020-12-24 15:46:36'),
(13, '  Congenital disorder of glycosylation type 1a (PMM2-CDG) \r\n', 1, '2020-12-24', '15:46:41', '2020-12-24 15:47:10'),
(14, '  Congenital myasthenic syndrome \r\n', 1, '2020-12-24', '15:46:41', '2020-12-24 15:47:10'),
(15, '  Cystic Fibrosis \r\n', 1, '2020-12-24', '15:47:18', '2020-12-24 15:47:57'),
(16, 'Cystinosis', 1, '2020-12-24', '15:47:18', '2020-12-24 15:47:57'),
(17, '  D-Bifunctional Protein Deficiency \r\n', 1, '2020-12-24', '15:48:11', '2020-12-24 15:48:48'),
(18, '  Diastrophic dysplasia \r\n', 1, '2020-12-24', '15:48:11', '2020-12-24 15:48:48'),
(19, '  Dihydrolipoamide Dehydrogenase Deficiency \r\n', 1, '2020-12-24', '15:48:55', '2020-12-24 15:49:17'),
(20, '  Ehlers-Danlos Syndrome (EDS) \r\n', 1, '2020-12-24', '15:48:55', '2020-12-24 15:49:17'),
(21, '  Familial Advanced/Delayed Sleep-Phase Syndrome \r\n', 1, '2020-12-24', '15:49:25', '2020-12-24 15:49:57'),
(22, '  Familial Hypercholesterolemia \r\n', 1, '2020-12-24', '15:49:25', '2020-12-24 15:49:57'),
(23, '  Familial Hypertrophic Cardiomyopathy (HCM) \r\n', 1, '2020-12-24', '15:50:01', '2020-12-24 15:50:37'),
(24, '  Familial Mediterranean fever \r\n', 1, '2020-12-24', '15:50:01', '2020-12-24 15:50:37'),
(25, '  Familial TTR-related amyloidosis \r\n', 1, '2020-12-24', '15:50:44', '2020-12-24 15:51:14'),
(26, '  Familial Transthyretin Amyloidosis \r\n', 1, '2020-12-24', '15:50:44', '2020-12-24 15:51:14'),
(27, '  Familial adenomatous polyposis      \r\n', 1, '2020-12-24', '15:51:26', '2020-12-24 15:51:50'),
(28, '  Familial dysautonomia (Riley-Day syndrome) \r\n', 1, '2020-12-24', '15:51:26', '2020-12-24 15:51:50'),
(29, '  Fanconi Anemia (FANCC-related) \r\n', 1, '2020-12-24', '15:52:12', '2020-12-24 15:52:56'),
(30, '  GRACILE syndrome \r\n', 1, '2020-12-24', '15:52:12', '2020-12-24 15:52:56'),
(31, '  Gaucher disease \r\n', 1, '2020-12-24', '15:53:21', '2020-12-24 15:54:03'),
(32, '  Glucose-6-phosphate dehydrogenase deficiency(G6PD deficiency) \r\n', 1, '2020-12-24', '15:53:21', '2020-12-24 15:54:03'),
(33, '  Glycogen storage disease type 1A (Von Gierke Disease) \r\n', 1, '2020-12-24', '15:54:11', '2020-12-24 15:54:46'),
(34, '  Glycogen storage disease type 1B \r\n', 1, '2020-12-24', '15:54:11', '2020-12-24 15:54:46'),
(35, '   Glycogen storage disease type 2 or Pompe Disease 1 & 2 \r\n', 1, '2020-12-24', '15:54:58', '2020-12-24 15:55:42'),
(36, '   Glycogen storage disease type 3 \r\n', 1, '2020-12-24', '15:54:58', '2020-12-24 15:55:42'),
(37, '   Glycogen storage disease type 5 \r\n', 1, '2020-12-24', '15:55:49', '2020-12-24 15:56:32'),
(38, '   Hereditary Breast and Ovarian Cancer \r\n', 1, '2020-12-24', '15:55:49', '2020-12-24 15:56:32'),
(39, '   Hereditary fructose intolerance \r\n', 1, '2020-12-24', '15:56:41', '2020-12-24 15:57:07'),
(40, '   Hereditary hemochromatosis associated with HFE \r\n', 1, '2020-12-24', '15:56:41', '2020-12-24 15:57:07'),
(41, '  Hypokalemic Periodic Paralysis \r\n', 1, '2020-12-24', '16:00:48', '2020-12-24 16:01:19'),
(42, '  Hypophosphatasia \r\n', 1, '2020-12-24', '16:00:48', '2020-12-24 16:01:19'),
(43, '  Junctional Epidermolysis Bullosa \r\n', 1, '2020-12-24', '16:01:26', '2020-12-24 16:02:02'),
(44, '  Leigh Syndrome, French-Canadian type (LSFC) \r\n', 1, '2020-12-24', '16:01:26', '2020-12-24 16:02:02'),
(45, '  Leukoencephalopathy with vanishing white matter \r\n', 1, '2020-12-24', '16:02:13', '2020-12-24 16:02:39'),
(46, '  Li-Fraumeni Syndrome \r\n', 1, '2020-12-24', '16:02:13', '2020-12-24 16:02:39'),
(47, '  Limb-girdle muscular dystrophy \r\n', 1, '2020-12-24', '16:03:33', '2020-12-24 16:04:04'),
(48, '  Malignant Hyperthermia \r\n', 1, '2020-12-24', '16:03:33', '2020-12-24 16:04:04'),
(49, '  Maple syrup urine disease type 1B \r\n', 1, '2020-12-24', '16:04:11', '2020-12-24 16:04:37'),
(50, '  Medium-chain acyl-CoA dehydrogenase deficiency (MCADD) \r\n', 1, '2020-12-24', '16:04:11', '2020-12-24 16:04:37'),
(51, '  Metachromatic leukodystrophy \r\n', 1, '2020-12-24', '16:04:41', '2020-12-24 16:05:11'),
(52, '  Methylmalonic aciduria due to methylmalonyl-CoA mutase deficiency \r\n', 1, '2020-12-24', '16:04:41', '2020-12-24 16:05:11'),
(53, '  Mucolipidosis IV \r\n', 1, '2020-12-24', '16:05:58', '2020-12-24 16:05:43'),
(54, '  Mucolipidosis type II \r\n', 1, '2020-12-24', '16:05:20', '2020-12-24 16:05:43'),
(55, '  Multiple endocrine neoplasia 2B       \r\n', 1, '2020-12-24', '16:06:01', '2020-12-24 16:06:28'),
(56, '  Neuronal Ceroid-Lipofuscinoses type 1 (associated to PPT1)  \r\n', 1, '2020-12-24', '16:06:01', '2020-12-24 16:06:28'),
(57, '   Neuronal Ceroid-Lipofuscinoses type 3 (associated to CLN3) \r\n', 1, '2020-12-24', '16:06:44', '2020-12-24 16:07:15'),
(58, '     Neuronal Ceroid-Lipofuscinoses type 5 (associated to CLN5)\r\n', 1, '2020-12-24', '16:06:44', '2020-12-24 16:07:15'),
(59, '        Neuronal Ceroid-Lipofuscinoses type 6 (associated to CLN6) \r\n', 1, '2020-12-24', '16:07:19', '2020-12-24 16:07:55'),
(60, 'Neuronal Ceroid-Lipofuscinoses type 7 (associated to MFSD8)\r\n', 1, '2020-12-24', '16:07:19', '2020-12-24 16:07:55'),
(61, ' Niemann-Pick disease type A \r\n', 1, '2020-12-24', '16:07:59', '2020-12-24 16:08:38'),
(62, ' Non-syndromic mitochondrial hearing loss  \r\n', 1, '2020-12-24', '16:07:59', '2020-12-24 16:08:38'),
(63, 'Pendred syndrome  \r\n', 1, '2020-12-24', '16:08:54', '2020-12-24 16:09:36'),
(64, 'Peters plus syndrome  \r\n', 1, '2020-12-24', '16:08:54', '2020-12-24 16:09:36'),
(65, 'Phenylketonuria', 1, '2020-12-24', '16:09:47', '2020-12-24 16:10:20'),
(66, ' Pontocerebellar hypoplasia \r\n', 1, '2020-12-24', '16:09:47', '2020-12-24 16:10:20'),
(67, 'Primary hyperoxaluria type 1 (PH1)\r\n', 1, '2020-12-24', '16:10:31', '2020-12-24 16:11:05'),
(68, 'Primary hyperoxaluria type 2 (PH2) \r\n', 1, '2020-12-24', '16:10:31', '2020-12-24 16:11:05'),
(69, ' Pyridoxine-dependent epilepsy  \r\n', 1, '2020-12-24', '16:11:17', '2020-12-24 16:12:18'),
(70, ' Refsum disease \r\n', 1, '2020-12-24', '16:11:17', '2020-12-24 16:12:18'),
(71, ' Rhizomelic Chondrodysplasia Punctata Type 1 \r\n', 1, '2020-12-24', '16:11:17', '2020-12-24 16:13:16'),
(72, ' Salla Disease  \r\n', 1, '2020-12-24', '16:12:41', '2020-12-24 16:13:16'),
(73, ' Sjögren-Larsson syndrome  \r\n', 1, '2020-12-24', '16:14:04', '2020-12-24 16:14:42'),
(74, ' Spinal muscular atrophy  \r\n', 1, '2020-12-24', '16:14:04', '2020-12-24 16:14:42'),
(75, 'Tay-Sachs disease \r\n', 1, '2020-12-24', '16:15:19', '2020-12-24 16:15:57'),
(76, ' Tyrosinemia type I  \r\n', 1, '2020-12-24', '16:15:16', '2020-12-24 16:15:57'),
(77, 'Usher syndrome  \r\n', 1, '2020-12-24', '16:16:19', '2020-12-24 16:16:55'),
(78, 'Wilson disease   \r\n', 1, '2020-12-24', '16:16:19', '2020-12-24 16:16:55'),
(79, ' Zellweger syndrome \r\n', 1, '2020-12-24', '16:17:04', '2020-12-24 16:17:18');

-- --------------------------------------------------------

--
-- Table structure for table `mon_dis_male`
--

CREATE TABLE `mon_dis_male` (
  `D_id` int(11) NOT NULL,
  `D_Name` varchar(225) NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT 1,
  `Date` date NOT NULL,
  `Time` time NOT NULL DEFAULT current_timestamp(),
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mon_dis_male`
--

INSERT INTO `mon_dis_male` (`D_id`, `D_Name`, `status`, `Date`, `Time`, `datetime`) VALUES
(1, 'Hereditary hemochromatosis associated with HFE ', 1, '2020-12-23', '12:40:04', '2020-12-23 12:42:53'),
(2, 'ARSACS (Autosomal recessive spastic ataxia of Charlevoix-Saguenay)', 1, '2020-12-23', '12:40:04', '2020-12-23 12:42:53'),
(3, 'Acute intermittent porphyria', 1, '2020-12-23', '12:43:12', '2020-12-23 12:43:48'),
(4, 'Agenesis of the Corpus Callosum with Peripheral Neuropathy (ACCPN)', 1, '2020-12-23', '12:43:12', '2020-12-23 12:43:48'),
(5, ' Alpha-1 Antitrypsin Deficiency ', 1, '2020-12-23', '12:44:39', '2020-12-23 12:45:07'),
(6, 'Alpha-mannosidosis', 1, '2020-12-23', '12:45:12', '2020-12-23 12:45:51'),
(7, ' Autosomal recessive polycystic kidney disease', 1, '2020-12-23', '12:45:12', '2020-12-23 12:45:51'),
(8, 'Beta Thalassemia', 1, '2020-12-23', '12:45:58', '2020-12-23 12:46:43'),
(9, 'Biotinidase deficiency ', 1, '2020-12-23', '12:45:58', '2020-12-23 12:46:43'),
(10, 'Birt-Hogg-Dube syndrome', 1, '2020-12-23', '12:46:48', '2020-12-23 12:47:50'),
(11, ' Canavan Disease', 1, '2020-12-23', '12:46:48', '2020-12-23 12:47:50'),
(12, ' Classical homocystinuria due to CBS deficiency', 1, '2020-12-23', '12:48:05', '2020-12-23 12:48:48'),
(13, ' Congenital disorder of glycosylation type 1a (PMM2-CDG)', 1, '2020-12-23', '12:48:05', '2020-12-23 12:48:48'),
(14, 'Congenital myasthenic syndrome', 1, '2020-12-23', '12:48:55', '2020-12-23 12:49:43'),
(15, 'Cystic Fibrosis', 1, '2020-12-23', '12:48:55', '2020-12-23 12:49:43'),
(16, 'Cystinosis', 1, '2020-12-23', '12:51:46', '2020-12-23 12:52:25'),
(17, 'D-Bifunctional Protein Deficiency', 1, '2020-12-23', '12:51:46', '2020-12-23 12:52:25'),
(18, 'Diastrophic dysplasia', 1, '2020-12-23', '12:52:32', '2020-12-23 12:53:11'),
(19, 'Dihydrolipoamide Dehydrogenase Deficiency', 1, '2020-12-23', '12:52:32', '2020-12-23 12:53:11'),
(20, 'Ehlers-Danlos Syndrome (EDS) ', 1, '2020-12-23', '12:53:24', '2020-12-23 12:53:57'),
(21, 'Familial Advanced/Delayed Sleep-Phase Syndrome', 1, '2020-12-23', '12:53:24', '2020-12-23 12:53:57'),
(22, 'Familial Hypercholesterolemia ', 1, '2020-12-23', '12:54:28', '2020-12-23 12:55:17'),
(23, 'Familial Hypertrophic Cardiomyopathy (HCM)', 1, '2020-12-23', '12:54:28', '2020-12-23 12:55:17'),
(24, 'Familial Mediterranean fever ', 1, '2020-12-23', '12:55:49', '2020-12-23 12:56:27'),
(25, 'Familial TTR-related amyloidosis ', 1, '2020-12-23', '12:55:49', '2020-12-23 12:56:27'),
(26, '  Familial Transthyretin Amyloidosis \r\n', 1, '2020-12-23', '12:57:32', '2020-12-23 12:58:22'),
(27, '  Familial adenomatous polyposis  \r\n', 1, '2020-12-23', '12:57:32', '2020-12-23 12:58:22'),
(28, '  Familial dysautonomia (Riley-Day syndrome)  \r\n', 1, '2020-12-23', '13:00:39', '2020-12-23 13:01:33'),
(29, '  Fanconi Anemia (FANCC-related)  \r\n', 1, '2020-12-23', '13:00:39', '2020-12-23 13:01:33'),
(30, 'GRACILE syndrome ', 1, '2020-12-23', '13:02:40', '2020-12-23 13:03:22'),
(31, '  Gaucher disease  \r\n', 1, '2020-12-23', '13:02:40', '2020-12-23 13:03:22'),
(32, '  Glucose-6-phosphate dehydrogenase deficiency(G6PD deficiency)  \r\n', 1, '2020-12-23', '13:03:27', '2020-12-23 13:04:03'),
(33, '  Glycogen storage disease type 1A (Von Gierke Disease)  \r\n', 1, '2020-12-23', '13:03:27', '2020-12-23 13:04:03'),
(34, '  Glycogen storage disease type 1B  \r\n', 1, '2020-12-23', '13:05:17', '2020-12-23 13:06:22'),
(35, '  Glycogen storage disease type 2 or Pompe Disease 1 & 2  \r\n', 1, '2020-12-23', '13:06:17', '2020-12-23 13:06:22'),
(36, '  Glycogen storage disease type 3  \r\n', 1, '2020-12-23', '13:06:55', '2020-12-23 13:07:41'),
(37, '  Glycogen storage disease type 5  \r\n', 1, '2020-12-23', '13:07:41', '2020-12-23 13:07:41'),
(38, '  Hereditary fructose intolerance  \r\n', 1, '2020-12-23', '13:07:50', '2020-12-23 13:08:37'),
(39, '  Hypokalemic Periodic Paralysis  \r\n', 1, '2020-12-23', '13:07:50', '2020-12-23 13:08:37'),
(40, 'Hypophosphatasia', 1, '2020-12-23', '13:07:11', '2020-12-23 13:09:24'),
(41, '  Junctional Epidermolysis Bullosa  \r\n', 1, '2020-12-23', '13:08:42', '2020-12-23 13:09:24'),
(42, '  Leigh Syndrome, French-Canadian type (LSFC)  \r\n', 1, '2020-12-23', '13:10:28', '2020-12-23 13:11:19'),
(43, '  Leukoencephalopathy with vanishing white matter  \r\n', 1, '2020-12-23', '13:10:28', '2020-12-23 13:11:19'),
(44, '  Li-Fraumeni Syndrome  \r\n', 1, '2020-12-23', '13:11:26', '2020-12-23 13:11:59'),
(45, '  Limb-girdle muscular dystrophy  \r\n', 1, '2020-12-23', '13:11:26', '2020-12-23 13:11:59'),
(46, '  Malignant Hyperthermia  \r\n', 1, '2020-12-23', '13:12:12', '2020-12-23 13:13:10'),
(47, '  Maple syrup urine disease type 1B  \r\n', 1, '2020-12-23', '13:12:12', '2020-12-23 13:13:10'),
(48, '  Medium-chain acyl-CoA dehydrogenase deficiency (MCADD)  \r\n', 1, '2020-12-23', '13:13:13', '2020-12-23 13:14:06'),
(49, '  Metachromatic leukodystrophy  \r\n', 1, '2020-12-23', '13:13:13', '2020-12-23 13:14:06'),
(50, '  Methylmalonic aciduria due to methylmalonyl-CoA mutase deficiency  \r\n', 1, '2020-12-23', '13:14:17', '2020-12-23 13:14:56'),
(51, '  Mucolipidosis IV  \r\n', 1, '2020-12-23', '13:14:17', '2020-12-23 13:14:56'),
(52, '  Mucolipidosis type II  \r\n', 1, '2020-12-23', '13:16:15', '2020-12-23 13:16:51'),
(53, '  Multiple endocrine neoplasia 2B  \r\n', 1, '2020-12-23', '13:16:15', '2020-12-23 13:16:51'),
(54, '  Neuronal Ceroid-Lipofuscinoses type 1 (associated to PPT1)  \r\n', 1, '2020-12-23', '13:17:13', '2020-12-23 13:18:00'),
(55, '  Neuronal Ceroid-Lipofuscinoses type 5 (associated to CLN5)      \r\n', 1, '2020-12-23', '13:17:13', '2020-12-23 13:18:00'),
(56, 'Neuronal Ceroid-Lipofuscinoses type 6 (associated to CLN6)  \r\n', 1, '2020-12-23', '13:18:20', '2020-12-23 13:19:28'),
(57, '  Neuronal Ceroid-Lipofuscinoses type 7 (associated to MFSD8)  \r\n', 1, '2020-12-23', '13:18:20', '2020-12-23 13:19:28'),
(58, '  Niemann-Pick disease type A  \r\n', 1, '2020-12-23', '13:19:36', '2020-12-23 13:20:31'),
(59, '  Non-syndromic mitochondrial hearing loss  \r\n', 1, '2020-12-23', '13:19:36', '2020-12-23 13:20:31'),
(60, '  Pendred syndrome  \r\n', 1, '2020-12-23', '13:20:40', '2020-12-23 13:21:19'),
(61, '  Peters plus syndrome  \r\n', 1, '2020-12-23', '13:20:40', '2020-12-23 13:21:19'),
(62, 'Phenylketonuria', 1, '2020-12-23', '13:21:27', '2020-12-23 13:22:21'),
(63, '  Pontocerebellar hypoplasia  \r\n', 1, '2020-12-23', '13:21:27', '2020-12-23 13:22:21'),
(64, '  Primary hyperoxaluria type 1 (PH1)  \r\n', 1, '2020-12-23', '13:22:27', '2020-12-23 13:23:01'),
(65, '  Primary hyperoxaluria type 2 (PH2)  \r\n', 1, '2020-12-23', '13:22:27', '2020-12-23 13:23:01'),
(66, '  Pyridoxine-dependent epilepsy  \r\n', 1, '2020-12-23', '13:23:08', '2020-12-23 13:23:56'),
(67, '  Refsum disease  \r\n', 1, '2020-12-23', '13:23:08', '2020-12-23 13:23:56'),
(68, '  Rhizomelic Chondrodysplasia Punctata Type 1  \r\n', 1, '2020-12-23', '13:24:03', '2020-12-23 13:24:51'),
(69, '  Salla Disease  \r\n', 1, '2020-12-23', '13:24:03', '2020-12-23 13:24:51'),
(70, 'Short chain acyl-CoA dehydrogenase deficiency (SCADD)  ', 1, '2020-12-23', '13:24:29', '2020-12-23 13:25:35'),
(71, '  Sjögren-Larsson syndrome  \r\n', 1, '2020-12-23', '13:24:54', '2020-12-23 13:25:35'),
(72, '  Spinal muscular atrophy  \r\n', 1, '2020-12-23', '13:27:14', '2020-12-23 13:27:54'),
(73, '  Tay-Sachs disease  \r\n', 1, '2020-12-23', '13:27:13', '2020-12-23 13:27:54'),
(74, '  Tyrosinemia type I  \r\n', 1, '2020-12-23', '13:28:02', '2020-12-23 13:28:29'),
(75, '  Usher syndrome  \r\n', 1, '2020-12-23', '13:28:02', '2020-12-23 13:28:29'),
(76, '  Wilson disease  \r\n', 1, '2020-12-23', '13:28:45', '2020-12-23 13:29:23'),
(77, '  Zellweger syndrome  ', 1, '2020-12-23', '13:28:45', '2020-12-23 13:29:23');

-- --------------------------------------------------------

--
-- Table structure for table `traits_name_female`
--

CREATE TABLE `traits_name_female` (
  `trait_id` int(11) NOT NULL,
  `Trait_Name` varchar(225) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `Date` date NOT NULL,
  `time` time NOT NULL,
  `DateTime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `traits_name_female`
--

INSERT INTO `traits_name_female` (`trait_id`, `Trait_Name`, `status`, `Date`, `time`, `DateTime`) VALUES
(1, 'Ability to eliminate harmful substances', 1, '2020-12-24', '13:28:55', '2020-12-24 13:30:12'),
(2, 'Adipose tissue formation', 1, '2020-12-24', '13:28:55', '2020-12-24 13:30:12'),
(3, 'Alcohol Addiction', 1, '2020-12-24', '13:30:47', '2020-12-24 13:31:24'),
(4, 'Alcohol Flush Reaction', 1, '2020-12-24', '13:30:47', '2020-12-24 13:31:24'),
(5, 'Alimentary Habits In Women', 1, '2020-12-24', '13:31:33', '2020-12-24 13:31:57'),
(6, 'Antioxidant capacity', 1, '2020-12-24', '13:31:33', '2020-12-24 13:31:57'),
(7, 'Biological Ageing', 1, '2020-12-24', '13:32:02', '2020-12-24 13:32:28'),
(8, 'Birth Weigh', 1, '2020-12-24', '13:32:02', '2020-12-24 13:32:28'),
(9, 'Bitter Taste Perception ', 1, '2020-12-24', '13:32:36', '2020-12-24 13:33:00'),
(10, 'Blood Glucose', 1, '2020-12-24', '13:32:36', '2020-12-24 13:33:00'),
(11, 'Blood Glucose In Obese Children', 1, '2020-12-24', '17:24:32', '2020-12-24 17:25:34'),
(12, 'Breast Feeding And Intelligence Coefficient ', 1, '2020-12-24', '17:24:32', '2020-12-24 17:25:34'),
(13, 'C-reactive Protein Levels', 1, '2020-12-24', '17:25:41', '2020-12-24 17:26:02'),
(14, 'Caffeine And Anxiety', 1, '2020-12-24', '17:25:42', '2020-12-24 17:26:02'),
(15, 'Caffeine Consumption', 1, '2020-12-24', '17:26:07', '2020-12-24 17:26:33'),
(16, 'Childhood Obesity Measurements', 1, '2020-12-24', '17:26:07', '2020-12-24 17:26:33'),
(17, 'Diet Response', 1, '2020-12-24', '17:27:00', '2020-12-24 17:27:30'),
(18, 'Drug Abuse', 1, '2020-12-24', '17:27:00', '2020-12-24 17:27:30'),
(19, 'Duffy Antigen (Malaria Resistant)', 1, '2020-12-24', '17:27:36', '2020-12-24 17:28:10'),
(20, 'Exercise-induced muscle damage (initial phase)', 1, '2020-12-24', '17:27:36', '2020-12-24 17:28:10'),
(21, 'Exercise-induced muscle damage (regeneration capacity)', 1, '2020-12-24', '17:28:14', '2020-12-24 17:28:39'),
(22, 'Exercise-induced muscle damage (second phase)', 1, '2020-12-24', '17:28:14', '2020-12-24 17:28:39'),
(23, 'Eye Color ', 1, '2020-12-24', '17:28:46', '2020-12-24 17:29:05'),
(24, 'Freckles', 1, '2020-12-24', '17:28:46', '2020-12-24 17:29:05'),
(25, 'Gambling behaviour', 1, '2020-12-24', '17:29:13', '2020-12-24 17:29:41'),
(26, 'Glucose Tolerance Response With Exercise', 1, '2020-12-24', '17:29:13', '2020-12-24 17:29:41'),
(27, 'HDL Cholesterol Levels', 1, '2020-12-24', '17:30:24', '2020-12-24 17:30:59'),
(28, 'Hair Color: Blond Hair', 1, '2020-12-24', '17:30:24', '2020-12-24 17:30:59'),
(29, 'Hair Color: Red Hair', 1, '2020-12-24', '17:31:07', '2020-12-24 17:31:33'),
(30, 'Hair Texture', 1, '2020-12-24', '17:31:09', '2020-12-24 17:31:33'),
(31, 'Heroin Addiction', 1, '2020-12-24', '17:32:07', '2020-12-24 17:32:29'),
(32, 'Intelligence Measurements', 1, '2020-12-24', '17:32:07', '2020-12-24 17:32:29'),
(33, 'LDL Cholesterol Levels', 1, '2020-12-24', '17:32:33', '2020-12-24 17:33:00'),
(34, 'Lactose Intolerance', 1, '2020-12-24', '17:32:33', '2020-12-24 17:33:00'),
(35, 'Longevity', 1, '2020-12-24', '17:33:05', '2020-12-24 17:33:27'),
(36, 'Malaria Complications', 1, '2020-12-24', '17:33:05', '2020-12-24 17:33:27'),
(37, 'Memory', 1, '2020-12-24', '17:33:32', '2020-12-24 17:34:07'),
(38, 'Menarche', 1, '2020-12-24', '17:33:32', '2020-12-24 17:34:07'),
(39, 'Menopause', 1, '2020-12-24', '17:34:12', '2020-12-24 17:34:41'),
(40, 'Muscle Endurance', 1, '2020-12-24', '17:34:12', '2020-12-24 17:34:41'),
(41, 'Nicotine Addiction', 1, '2020-12-24', '17:34:59', '2020-12-24 17:35:29'),
(42, 'Nicotine Dependence And Adolescence ', 1, '2020-12-24', '17:34:59', '2020-12-24 17:35:29'),
(43, 'Nicotine dependence and pregnancy', 1, '2020-12-24', '17:35:40', '2020-12-24 17:36:07'),
(44, 'Norovirus resistance', 1, '2020-12-24', '17:35:40', '2020-12-24 17:36:07'),
(45, 'Obesity Measurements', 1, '2020-12-24', '17:36:11', '2020-12-24 17:36:33'),
(46, 'Pain Sensitivity', 1, '2020-12-24', '17:36:11', '2020-12-24 17:36:33'),
(47, 'Persistence Of Fetal Hemoglobin', 1, '2020-12-24', '17:36:40', '2020-12-24 17:37:19'),
(48, 'Photic Sneeze Reflex', 1, '2020-12-24', '17:36:40', '2020-12-24 17:37:19'),
(49, 'Pigmented Rings On The Iris', 1, '2020-12-24', '17:37:23', '2020-12-24 17:37:55'),
(50, 'Preference For Sweets', 1, '2020-12-24', '17:37:23', '2020-12-24 17:37:55'),
(51, 'Preterm birth', 1, '2020-12-24', '17:38:00', '2020-12-24 17:38:45'),
(52, 'QT Intervals', 1, '2020-12-24', '17:38:00', '2020-12-24 17:38:45'),
(53, 'Response To Exercise', 1, '2020-12-24', '17:38:49', '2020-12-24 17:39:16'),
(54, 'Sex hormone regulation', 1, '2020-12-24', '17:38:49', '2020-12-24 17:39:16'),
(55, 'Smell, The Sense Of (Olfaction)', 1, '2020-12-24', '17:39:19', '2020-12-24 17:39:57'),
(56, 'Smell, The Sense Of (Olfaction)', 1, '2020-12-24', '17:39:19', '2020-12-24 17:39:57'),
(57, 'Tendinopathies in lower extremities (legs) ', 1, '2020-12-24', '17:40:02', '2020-12-24 17:40:26'),
(58, 'Tendinopathies in upper extremities (arms) ', 1, '2020-12-24', '17:40:06', '2020-12-24 17:40:26'),
(59, 'Vitamin D levels', 1, '2020-12-24', '17:40:34', '2020-12-24 17:40:42');

-- --------------------------------------------------------

--
-- Table structure for table `traits_name_male`
--

CREATE TABLE `traits_name_male` (
  `trait_id` int(11) NOT NULL,
  `Trait_Name` varchar(225) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp(),
  `date` date NOT NULL,
  `time` time NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `traits_name_male`
--

INSERT INTO `traits_name_male` (`trait_id`, `Trait_Name`, `datetime`, `date`, `time`, `status`) VALUES
(1, 'Ability to eliminate harmful substances ', '2020-12-21 16:58:56', '2020-12-21', '16:58:56', 1),
(2, 'Adipose tissue formation ', '2020-12-21 16:58:56', '2020-12-21', '17:58:56', 1),
(3, 'Aggressive Prostate Cancer ', '2020-12-21 17:01:58', '2020-12-21', '17:01:58', 1),
(4, 'Alcohol Addiction ', '2020-12-21 17:01:58', '2020-12-21', '17:01:58', 1),
(5, 'Alcohol Flush Reaction ', '2020-12-21 17:04:02', '2020-12-21', '17:04:02', 1),
(6, 'Antioxidant capacity ', '2020-12-21 17:04:02', '2020-12-21', '17:04:02', 1),
(7, 'Biological Ageing ', '2020-12-21 17:05:08', '2020-12-21', '17:05:08', 1),
(8, 'Birth Weight ', '2020-12-21 17:05:08', '2020-12-21', '17:05:08', 1),
(9, 'Bitter Taste Perception ', '2020-12-21 17:06:31', '2020-12-21', '17:06:31', 1),
(10, 'Blood Glucose ', '2020-12-21 17:06:31', '2020-12-21', '17:06:31', 1),
(11, 'Blood Glucose In Obese Children', '2020-12-23 17:17:14', '2020-12-23', '17:16:09', 1),
(12, 'Caffeine Consumption', '2020-12-23 17:17:14', '2020-12-23', '17:16:09', 1),
(13, 'Childhood Obesity Measurements', '2020-12-23 17:18:17', '2020-12-23', '17:17:38', 1),
(14, 'Diet Response', '2020-12-23 17:18:17', '2020-12-23', '17:17:38', 1),
(15, 'Drug Abuse', '2020-12-23 17:19:07', '2020-12-23', '17:18:29', 1),
(16, 'Duffy Antigen (Malaria Resistant)', '2020-12-23 17:19:07', '2020-12-23', '17:18:29', 1),
(17, 'Error Avoidance Capacity', '2020-12-23 17:19:48', '2020-12-23', '17:19:21', 1),
(18, 'Exercise-induced muscle damage (initial phase)', '2020-12-23 17:19:48', '2020-12-23', '17:19:21', 1),
(19, 'Exercise-induced muscle damage (regeneration capacity)', '2020-12-23 17:21:06', '2020-12-23', '17:20:31', 1),
(20, 'Exercise-induced muscle damage (second phase)', '2020-12-23 17:21:06', '2020-12-23', '17:20:31', 1),
(21, 'Eye Color', '2020-12-23 17:22:40', '2020-12-23', '17:21:26', 1),
(22, 'Freckles', '2020-12-23 17:22:40', '2020-12-23', '17:21:26', 1),
(23, 'Gambling behaviour', '2020-12-23 17:23:27', '2020-12-23', '17:22:59', 1),
(24, 'Glucose Tolerance Response With Exercise', '2020-12-23 17:23:27', '2020-12-23', '17:22:59', 1),
(25, 'HDL Cholesterol Levels', '2020-12-23 17:24:04', '2020-12-23', '17:23:37', 1),
(26, 'Hair Color: Blond Hair', '2020-12-23 17:24:04', '2020-12-23', '17:23:37', 1),
(27, 'Hair Color: Red Hair', '2020-12-23 17:25:13', '2020-12-23', '17:24:40', 1),
(28, 'Hair Texture', '2020-12-23 17:25:13', '2020-12-23', '17:24:40', 1),
(29, 'Heroin Addiction', '2020-12-23 17:25:59', '2020-12-23', '17:25:18', 1),
(30, 'Intelligence Measurements', '2020-12-23 17:25:59', '2020-12-23', '17:25:18', 1),
(31, 'LDL Cholesterol Levels', '2020-12-23 17:26:58', '2020-12-23', '17:26:15', 1),
(32, 'Lactose Intolerance', '2020-12-23 17:26:58', '2020-12-23', '17:26:16', 1),
(33, 'Longevity', '2020-12-23 17:27:57', '2020-12-23', '17:27:12', 1),
(34, 'Malaria Complications', '2020-12-23 17:27:57', '2020-12-23', '17:27:14', 1),
(35, 'Male baldness', '2020-12-23 17:29:13', '2020-12-23', '17:28:11', 1),
(36, 'Memory', '2020-12-23 17:29:13', '2020-12-23', '17:28:11', 1),
(37, 'Muscle Endurance', '2020-12-23 17:30:57', '2020-12-23', '17:29:58', 1),
(38, 'Nicotine Addiction', '2020-12-23 17:30:57', '2020-12-23', '17:29:58', 1),
(39, 'Nicotine Dependence And Adolescence', '2020-12-23 17:31:48', '2020-12-23', '17:31:14', 1),
(40, 'Norovirus resistance', '2020-12-23 17:31:48', '2020-12-23', '17:31:15', 1),
(41, 'Obesity Measurements', '2020-12-23 17:32:42', '2020-12-23', '17:31:59', 1),
(42, 'PSA (Prostate-specific Antigen) Levels', '2020-12-23 17:32:42', '2020-12-23', '17:31:59', 1),
(43, 'Pain Sensitivity', '2020-12-23 17:33:21', '2020-12-23', '17:32:50', 1),
(44, 'Persistence Of Fetal Hemoglobin', '2020-12-23 17:33:21', '2020-12-23', '17:32:50', 1),
(45, 'Photic Sneeze Reflex', '2020-12-23 17:34:01', '2020-12-23', '17:33:27', 1),
(46, 'Pigmented Rings On The Iris', '2020-12-23 17:34:01', '2020-12-23', '17:33:27', 1),
(47, 'Preference For Sweets', '2020-12-23 17:34:58', '2020-12-23', '17:34:22', 1),
(48, 'Preterm birth', '2020-12-23 17:34:58', '2020-12-23', '17:34:22', 1),
(49, 'QT Intervals', '2020-12-23 17:35:58', '2020-12-23', '17:35:11', 1),
(50, 'Response To Exercise', '2020-12-23 17:35:58', '2020-12-23', '17:35:11', 1),
(51, 'Sex hormone regulation', '2020-12-23 17:36:40', '2020-12-23', '17:36:09', 1),
(52, 'Smell, The Sense Of (Olfaction)', '2020-12-23 17:36:40', '2020-12-23', '17:36:05', 1),
(53, 'Stature', '2020-12-23 17:37:30', '2020-12-23', '17:36:51', 1),
(54, 'Tendinopathies in lower extremities (legs) ', '2020-12-23 17:37:30', '2020-12-23', '17:36:51', 1),
(55, 'Tendinopathies in upper extremities (arms)', '2020-12-23 17:38:24', '2020-12-23', '17:37:51', 1),
(56, 'Vitamin D levels', '2020-12-23 17:38:24', '2020-12-23', '17:37:51', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `cid` varchar(100) NOT NULL,
  `f_name` varchar(100) NOT NULL,
  `l_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `email_verify` varchar(100) NOT NULL DEFAULT 'no',
  `countrycode` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `mobile_verify` varchar(100) NOT NULL DEFAULT 'no',
  `DOB` date NOT NULL,
  `password` varchar(100) NOT NULL,
  `joindate` date NOT NULL,
  `jointime` time NOT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `cid`, `f_name`, `l_name`, `email`, `email_verify`, `countrycode`, `mobile`, `mobile_verify`, `DOB`, `password`, `joindate`, `jointime`, `status`) VALUES
(1, 'd95aa07c3797be99 ', 'lokesh', 'garia', 'gauravrai79@gmail.com', 'no', '+355', '8076298443', 'no', '2020-12-10', ' lokesh@1', '2020-12-30', '11:26:09', 'active'),
(2, 'ccf5b3934dc38747 ', 'lokesh', 'garia', 'lokesh@gmail.com', 'no', '+973', '8076298443', 'no', '2020-12-11', ' lokesh1', '2020-12-30', '12:00:18', 'active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `complex_disease_female`
--
ALTER TABLE `complex_disease_female`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complex_disease_male`
--
ALTER TABLE `complex_disease_male`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complex_dis_name_female`
--
ALTER TABLE `complex_dis_name_female`
  ADD PRIMARY KEY (`com_id`);

--
-- Indexes for table ` complex_dis_name_male`
--
ALTER TABLE ` complex_dis_name_male`
  ADD PRIMARY KEY (`com_id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `disease_female`
--
ALTER TABLE `disease_female`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `disease_input_female`
--
ALTER TABLE `disease_input_female`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `disease_input_male`
--
ALTER TABLE `disease_input_male`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `disease_male`
--
ALTER TABLE `disease_male`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drugsname_female`
--
ALTER TABLE `drugsname_female`
  ADD PRIMARY KEY (`drg_id`);

--
-- Indexes for table `drugsname_male`
--
ALTER TABLE `drugsname_male`
  ADD PRIMARY KEY (`drg_id`);

--
-- Indexes for table `drugs_female`
--
ALTER TABLE `drugs_female`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drugs_male`
--
ALTER TABLE `drugs_male`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drug_input_female`
--
ALTER TABLE `drug_input_female`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drug_input_male`
--
ALTER TABLE `drug_input_male`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `female_report`
--
ALTER TABLE `female_report`
  ADD PRIMARY KEY (`F_id`);

--
-- Indexes for table `female_trait`
--
ALTER TABLE `female_trait`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `female_trait_input`
--
ALTER TABLE `female_trait_input`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `male_report`
--
ALTER TABLE `male_report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `male_trait`
--
ALTER TABLE `male_trait`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `male_trait_input`
--
ALTER TABLE `male_trait_input`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mon_dis_female`
--
ALTER TABLE `mon_dis_female`
  ADD PRIMARY KEY (`D_id`);

--
-- Indexes for table `mon_dis_male`
--
ALTER TABLE `mon_dis_male`
  ADD PRIMARY KEY (`D_id`);

--
-- Indexes for table `traits_name_female`
--
ALTER TABLE `traits_name_female`
  ADD PRIMARY KEY (`trait_id`);

--
-- Indexes for table `traits_name_male`
--
ALTER TABLE `traits_name_male`
  ADD PRIMARY KEY (`trait_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `complex_disease_female`
--
ALTER TABLE `complex_disease_female`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `complex_disease_male`
--
ALTER TABLE `complex_disease_male`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `complex_dis_name_female`
--
ALTER TABLE `complex_dis_name_female`
  MODIFY `com_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table ` complex_dis_name_male`
--
ALTER TABLE ` complex_dis_name_male`
  MODIFY `com_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;

--
-- AUTO_INCREMENT for table `disease_female`
--
ALTER TABLE `disease_female`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `disease_input_female`
--
ALTER TABLE `disease_input_female`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `disease_input_male`
--
ALTER TABLE `disease_input_male`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `disease_male`
--
ALTER TABLE `disease_male`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `drugsname_female`
--
ALTER TABLE `drugsname_female`
  MODIFY `drg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT for table `drugsname_male`
--
ALTER TABLE `drugsname_male`
  MODIFY `drg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT for table `drugs_female`
--
ALTER TABLE `drugs_female`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `drugs_male`
--
ALTER TABLE `drugs_male`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `drug_input_female`
--
ALTER TABLE `drug_input_female`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `drug_input_male`
--
ALTER TABLE `drug_input_male`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `female_report`
--
ALTER TABLE `female_report`
  MODIFY `F_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `female_trait`
--
ALTER TABLE `female_trait`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `female_trait_input`
--
ALTER TABLE `female_trait_input`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `male_report`
--
ALTER TABLE `male_report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `male_trait`
--
ALTER TABLE `male_trait`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `male_trait_input`
--
ALTER TABLE `male_trait_input`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mon_dis_female`
--
ALTER TABLE `mon_dis_female`
  MODIFY `D_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `mon_dis_male`
--
ALTER TABLE `mon_dis_male`
  MODIFY `D_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `traits_name_female`
--
ALTER TABLE `traits_name_female`
  MODIFY `trait_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `traits_name_male`
--
ALTER TABLE `traits_name_male`
  MODIFY `trait_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
