-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 14, 2023 at 10:47 AM
-- Server version: 10.5.19-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u901121957_swiss`
--

-- --------------------------------------------------------

--
-- Table structure for table `action_events`
--

CREATE TABLE `action_events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `batch_id` char(36) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `actionable_type` varchar(255) NOT NULL,
  `actionable_id` bigint(20) UNSIGNED NOT NULL,
  `target_type` varchar(255) NOT NULL,
  `target_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED DEFAULT NULL,
  `fields` text NOT NULL,
  `status` varchar(25) NOT NULL DEFAULT 'running',
  `exception` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `original` mediumtext DEFAULT NULL,
  `changes` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `action_events`
--

INSERT INTO `action_events` (`id`, `batch_id`, `user_id`, `name`, `actionable_type`, `actionable_id`, `target_type`, `target_id`, `model_type`, `model_id`, `fields`, `status`, `exception`, `created_at`, `updated_at`, `original`, `changes`) VALUES
(1, '9791dd21-5415-4ad5-85c4-d774a9ecb2e3', 3, 'Create', 'App\\Models\\blog', 3, 'App\\Models\\blog', 3, 'App\\Models\\blog', 3, '', 'finished', '', '2022-10-23 10:16:00', '2022-10-23 10:16:00', NULL, '{\"title\":\"L\'intelligence artificielle pour en finir avec les embouteillages\",\"company\":\"ITC Intelligence Motion Control\",\"created_at\":\"2022-05-30T00:00:00.000000Z\",\"new\":\"Parmi les entreprises qui \\u00e9taient pr\\u00e9sentes au salon sur la mobilit\\u00e9 intelligente baptis\\u00e9e \\u00abEcoMotion\\u00bb, qui s\\u2019est r\\u00e9cemment tenu \\u00e0 Tel-Aviv, figure ITC (Intelligent traffic control), qui d\\u00e9veloppe un logiciel capable de r\\u00e9colter des donn\\u00e9es en temps r\\u00e9el \\u00e0 partir de cam\\u00e9ras de surveillance le long des routes et de manipuler les feux de signalisation en fonction des flux de circulation. <br> \\u00abITC est parvenue \\u00e0 prouver math\\u00e9matiquement que de nombreux embouteillages peuvent \\u00eatre emp\\u00each\\u00e9s, si on intervient assez t\\u00f4t\\u00bb, explique Dvir Kenig, charg\\u00e9 des technologies de cette entreprise, citant une baisse de 30% de l\\u2019engorgement sur deux carrefours o\\u00f9 le syst\\u00e8me a \\u00e9t\\u00e9 mis en place.\",\"country\":\"Israel\",\"for\":null,\"source\":\"20 minutes\",\"updated_at\":\"2022-10-23T12:15:59.000000Z\",\"id\":3}'),
(2, '9791dee7-0e38-4f47-997c-abbdeeb933bd', 3, 'Update', 'App\\Models\\blog', 3, 'App\\Models\\blog', 3, 'App\\Models\\blog', 3, '', 'finished', '', '2022-10-23 10:20:57', '2022-10-23 10:20:57', '{\"new\":\"Parmi les entreprises qui \\u00e9taient pr\\u00e9sentes au salon sur la mobilit\\u00e9 intelligente baptis\\u00e9e \\u00abEcoMotion\\u00bb, qui s\\u2019est r\\u00e9cemment tenu \\u00e0 Tel-Aviv, figure ITC (Intelligent traffic control), qui d\\u00e9veloppe un logiciel capable de r\\u00e9colter des donn\\u00e9es en temps r\\u00e9el \\u00e0 partir de cam\\u00e9ras de surveillance le long des routes et de manipuler les feux de signalisation en fonction des flux de circulation. <br> \\u00abITC est parvenue \\u00e0 prouver math\\u00e9matiquement que de nombreux embouteillages peuvent \\u00eatre emp\\u00each\\u00e9s, si on intervient assez t\\u00f4t\\u00bb, explique Dvir Kenig, charg\\u00e9 des technologies de cette entreprise, citant une baisse de 30% de l\\u2019engorgement sur deux carrefours o\\u00f9 le syst\\u00e8me a \\u00e9t\\u00e9 mis en place.\"}', '{\"new\":\"Parmi les entreprises qui \\u00e9taient pr\\u00e9sentes au salon sur la mobilit\\u00e9 intelligente baptis\\u00e9e \\u00abEcoMotion\\u00bb, qui s\\u2019est r\\u00e9cemment tenu \\u00e0 Tel-Aviv, figure ITC (Intelligent traffic control), qui d\\u00e9veloppe un logiciel capable de r\\u00e9colter des donn\\u00e9es en temps r\\u00e9el \\u00e0 partir de cam\\u00e9ras de surveillance le long des routes et de manipuler les feux de signalisation en fonction des flux de circulation.\\n\\u00abITC est parvenue \\u00e0 prouver math\\u00e9matiquement que de nombreux embouteillages peuvent \\u00eatre emp\\u00each\\u00e9s, si on intervient assez t\\u00f4t\\u00bb, explique Dvir Kenig, charg\\u00e9 des technologies de cette entreprise, citant une baisse de 30% de l\\u2019engorgement sur deux carrefours o\\u00f9 le syst\\u00e8me a \\u00e9t\\u00e9 mis en place.\"}'),
(3, '9791e0ff-a889-4fb8-9a62-4ce7024a0001', 3, 'Update', 'App\\Models\\blog', 3, 'App\\Models\\blog', 3, 'App\\Models\\blog', 3, '', 'finished', '', '2022-10-23 10:26:49', '2022-10-23 10:26:49', '{\"new\":\"Parmi les entreprises qui \\u00e9taient pr\\u00e9sentes au salon sur la mobilit\\u00e9 intelligente baptis\\u00e9e \\u00abEcoMotion\\u00bb, qui s\\u2019est r\\u00e9cemment tenu \\u00e0 Tel-Aviv, figure ITC (Intelligent traffic control), qui d\\u00e9veloppe un logiciel capable de r\\u00e9colter des donn\\u00e9es en temps r\\u00e9el \\u00e0 partir de cam\\u00e9ras de surveillance le long des routes et de manipuler les feux de signalisation en fonction des flux de circulation.\\n\\u00abITC est parvenue \\u00e0 prouver math\\u00e9matiquement que de nombreux embouteillages peuvent \\u00eatre emp\\u00each\\u00e9s, si on intervient assez t\\u00f4t\\u00bb, explique Dvir Kenig, charg\\u00e9 des technologies de cette entreprise, citant une baisse de 30% de l\\u2019engorgement sur deux carrefours o\\u00f9 le syst\\u00e8me a \\u00e9t\\u00e9 mis en place.\"}', '{\"new\":\"Parmi les entreprises qui \\u00e9taient pr\\u00e9sentes au salon sur la mobilit\\u00e9 intelligente baptis\\u00e9e \\u00abEcoMotion\\u00bb, qui s\\u2019est r\\u00e9cemment tenu \\u00e0 Tel-Aviv, figure ITC (Intelligent traffic control), qui d\\u00e9veloppe un logiciel capable de r\\u00e9colter des donn\\u00e9es en temps r\\u00e9el \\u00e0 partir de cam\\u00e9ras de surveillance le long des routes et de manipuler les feux de signalisation en fonction des flux de circulation.<br>\\u00abITC est parvenue \\u00e0 prouver math\\u00e9matiquement que de nombreux embouteillages peuvent \\u00eatre emp\\u00each\\u00e9s, si on intervient assez t\\u00f4t\\u00bb, explique Dvir Kenig, charg\\u00e9 des technologies de cette entreprise, citant une baisse de 30% de l\\u2019engorgement sur deux carrefours o\\u00f9 le syst\\u00e8me a \\u00e9t\\u00e9 mis en place.\"}'),
(4, '9791e1d7-0b49-4861-89f7-135c52b1d629', 3, 'Update', 'App\\Models\\blog', 3, 'App\\Models\\blog', 3, 'App\\Models\\blog', 3, '', 'finished', '', '2022-10-23 10:29:10', '2022-10-23 10:29:10', '[]', '[]'),
(5, '9791e692-ff4b-4d04-a7f6-6938e1669b64', 3, 'Update', 'App\\Models\\blog', 3, 'App\\Models\\blog', 3, 'App\\Models\\blog', 3, '', 'finished', '', '2022-10-23 10:42:24', '2022-10-23 10:42:24', '{\"new\":\"Parmi les entreprises qui \\u00e9taient pr\\u00e9sentes au salon sur la mobilit\\u00e9 intelligente baptis\\u00e9e \\u00abEcoMotion\\u00bb, qui s\\u2019est r\\u00e9cemment tenu \\u00e0 Tel-Aviv, figure ITC (Intelligent traffic control), qui d\\u00e9veloppe un logiciel capable de r\\u00e9colter des donn\\u00e9es en temps r\\u00e9el \\u00e0 partir de cam\\u00e9ras de surveillance le long des routes et de manipuler les feux de signalisation en fonction des flux de circulation.<br>\\u00abITC est parvenue \\u00e0 prouver math\\u00e9matiquement que de nombreux embouteillages peuvent \\u00eatre emp\\u00each\\u00e9s, si on intervient assez t\\u00f4t\\u00bb, explique Dvir Kenig, charg\\u00e9 des technologies de cette entreprise, citant une baisse de 30% de l\\u2019engorgement sur deux carrefours o\\u00f9 le syst\\u00e8me a \\u00e9t\\u00e9 mis en place.\"}', '{\"new\":\"<p>Parmi les entreprises qui \\u00e9taient pr\\u00e9sentes au salon sur la mobilit\\u00e9 intelligente baptis\\u00e9e \\u00abEcoMotion\\u00bb, qui s\\u2019est r\\u00e9cemment tenu \\u00e0 Tel-Aviv, figure ITC (Intelligent traffic control), qui d\\u00e9veloppe un logiciel capable de r\\u00e9colter des donn\\u00e9es en temps r\\u00e9el \\u00e0 partir de cam\\u00e9ras de surveillance le long des routes et de manipuler les feux de signalisation en fonction des flux de circulation.<.p>\\u00abITC est parvenue \\u00e0 prouver math\\u00e9matiquement que de nombreux embouteillages peuvent \\u00eatre emp\\u00each\\u00e9s, si on intervient assez t\\u00f4t\\u00bb, explique Dvir Kenig, charg\\u00e9 des technologies de cette entreprise, citant une baisse de 30% de l\\u2019engorgement sur deux carrefours o\\u00f9 le syst\\u00e8me a \\u00e9t\\u00e9 mis en place.\"}'),
(6, '9791e6b3-93e0-4f46-ae1d-e270677650ba', 3, 'Update', 'App\\Models\\blog', 3, 'App\\Models\\blog', 3, 'App\\Models\\blog', 3, '', 'finished', '', '2022-10-23 10:42:45', '2022-10-23 10:42:45', '{\"new\":\"<p>Parmi les entreprises qui \\u00e9taient pr\\u00e9sentes au salon sur la mobilit\\u00e9 intelligente baptis\\u00e9e \\u00abEcoMotion\\u00bb, qui s\\u2019est r\\u00e9cemment tenu \\u00e0 Tel-Aviv, figure ITC (Intelligent traffic control), qui d\\u00e9veloppe un logiciel capable de r\\u00e9colter des donn\\u00e9es en temps r\\u00e9el \\u00e0 partir de cam\\u00e9ras de surveillance le long des routes et de manipuler les feux de signalisation en fonction des flux de circulation.<.p>\\u00abITC est parvenue \\u00e0 prouver math\\u00e9matiquement que de nombreux embouteillages peuvent \\u00eatre emp\\u00each\\u00e9s, si on intervient assez t\\u00f4t\\u00bb, explique Dvir Kenig, charg\\u00e9 des technologies de cette entreprise, citant une baisse de 30% de l\\u2019engorgement sur deux carrefours o\\u00f9 le syst\\u00e8me a \\u00e9t\\u00e9 mis en place.\"}', '{\"new\":\"<p>Parmi les entreprises qui \\u00e9taient pr\\u00e9sentes au salon sur la mobilit\\u00e9 intelligente baptis\\u00e9e \\u00abEcoMotion\\u00bb, qui s\\u2019est r\\u00e9cemment tenu \\u00e0 Tel-Aviv, figure ITC (Intelligent traffic control), qui d\\u00e9veloppe un logiciel capable de r\\u00e9colter des donn\\u00e9es en temps r\\u00e9el \\u00e0 partir de cam\\u00e9ras de surveillance le long des routes et de manipuler les feux de signalisation en fonction des flux de circulation.<\\/p>\\u00abITC est parvenue \\u00e0 prouver math\\u00e9matiquement que de nombreux embouteillages peuvent \\u00eatre emp\\u00each\\u00e9s, si on intervient assez t\\u00f4t\\u00bb, explique Dvir Kenig, charg\\u00e9 des technologies de cette entreprise, citant une baisse de 30% de l\\u2019engorgement sur deux carrefours o\\u00f9 le syst\\u00e8me a \\u00e9t\\u00e9 mis en place.\"}'),
(7, '9791e6d1-f9f5-42bc-8ac6-63aa56b14411', 3, 'Update', 'App\\Models\\blog', 3, 'App\\Models\\blog', 3, 'App\\Models\\blog', 3, '', 'finished', '', '2022-10-23 10:43:05', '2022-10-23 10:43:05', '{\"new\":\"<p>Parmi les entreprises qui \\u00e9taient pr\\u00e9sentes au salon sur la mobilit\\u00e9 intelligente baptis\\u00e9e \\u00abEcoMotion\\u00bb, qui s\\u2019est r\\u00e9cemment tenu \\u00e0 Tel-Aviv, figure ITC (Intelligent traffic control), qui d\\u00e9veloppe un logiciel capable de r\\u00e9colter des donn\\u00e9es en temps r\\u00e9el \\u00e0 partir de cam\\u00e9ras de surveillance le long des routes et de manipuler les feux de signalisation en fonction des flux de circulation.<\\/p>\\u00abITC est parvenue \\u00e0 prouver math\\u00e9matiquement que de nombreux embouteillages peuvent \\u00eatre emp\\u00each\\u00e9s, si on intervient assez t\\u00f4t\\u00bb, explique Dvir Kenig, charg\\u00e9 des technologies de cette entreprise, citant une baisse de 30% de l\\u2019engorgement sur deux carrefours o\\u00f9 le syst\\u00e8me a \\u00e9t\\u00e9 mis en place.\"}', '{\"new\":\"<p class = \\\"mb-2\\\">Parmi les entreprises qui \\u00e9taient pr\\u00e9sentes au salon sur la mobilit\\u00e9 intelligente baptis\\u00e9e \\u00abEcoMotion\\u00bb, qui s\\u2019est r\\u00e9cemment tenu \\u00e0 Tel-Aviv, figure ITC (Intelligent traffic control), qui d\\u00e9veloppe un logiciel capable de r\\u00e9colter des donn\\u00e9es en temps r\\u00e9el \\u00e0 partir de cam\\u00e9ras de surveillance le long des routes et de manipuler les feux de signalisation en fonction des flux de circulation.<\\/p>\\u00abITC est parvenue \\u00e0 prouver math\\u00e9matiquement que de nombreux embouteillages peuvent \\u00eatre emp\\u00each\\u00e9s, si on intervient assez t\\u00f4t\\u00bb, explique Dvir Kenig, charg\\u00e9 des technologies de cette entreprise, citant une baisse de 30% de l\\u2019engorgement sur deux carrefours o\\u00f9 le syst\\u00e8me a \\u00e9t\\u00e9 mis en place.\"}'),
(8, '979266f5-56bd-4665-b8f2-5eca3af462b8', 3, 'Update', 'App\\Models\\blog', 1, 'App\\Models\\blog', 1, 'App\\Models\\blog', 1, '', 'finished', '', '2022-10-23 16:41:23', '2022-10-23 16:41:23', '{\"new\":\"<p>Artificial intelligence that could improve the welfare of farmed chickens by eavesdropping on their squawks could become available within five years, researchers say.<\\/p>\\r\\n\\r\\n<p>The technology, which detects and quantifies distress calls made by chickens housed in huge indoor sheds, correctly distinguished distress calls from other barn noises with 97% accuracy, new research suggests. A similar approach could eventually be used to drive up welfare standards in other farmed animals.<\\/p>\\r\\n\\r\\n<p>Each year, about 25 billion chickens are farmed around the world \\u2013 many of them in huge sheds, each housing thousands of birds. One way to assess the welfare of such creatures is to listen to the sounds that they make.<\\/p>\\r\\n\\r\\n<p>\\u201cChickens are very vocal, but the distress call tends to be louder than the others, and is what we would describe as a pure tonal call,\\u201d said Alan McElligott, an associate professor of animal behaviour and welfare at the City University of Hong Kong. \\u201cEven to the untrained ear, it\\u2019s not too difficult to pick them out.\\u201d\\r\\n\\r\\nPersuading farmers to adopt the technology may be relatively easy. Previous research by McElligott found that distress calls made by young chicks could predict the amount of weight gained and the number of deaths in the whole flock during its lifetime.\\r\\n\\r\\n\\u201cAlso, the vocalisation of distress is just one welfare indicator, but there are a number of other physical factors such as lameness and leg burns which farmers should also be looking out for.\\u201d\\r\\n\",\"title\":\"AI could improve welfare of farmed chickens by listening to their squawks\\r\\n\\r\\n<b>The technology correctly distinguished distress calls from other barn noises with 97% accuracy<\\/b>\\r\\n\\r\\n\"}', '{\"new\":\"<p>Artificial intelligence that could improve the welfare of farmed chickens by eavesdropping on their squawks could become available within five years, researchers say.<\\/p>\\r\\n\\r\\n<p>The technology, which detects and quantifies distress calls made by chickens housed in huge indoor sheds, correctly distinguished distress calls from other barn noises with 97% accuracy, new research suggests. A similar approach could eventually be used to drive up welfare standards in other farmed animals.<\\/p>\\r\\n\\r\\n<p>Each year, about 25 billion chickens are farmed around the world \\u2013 many of them in huge sheds, each housing thousands of birds. One way to assess the welfare of such creatures is to listen to the sounds that they make.<\\/p>\\r\\n\\r\\n<p>\\u201cChickens are very vocal, but the distress call tends to be louder than the others, and is what we would describe as a pure tonal call,\\u201d said Alan McElligott, an associate professor of animal behaviour and welfare at the City University of Hong Kong. \\u201cEven to the untrained ear, it\\u2019s not too difficult to pick them out.\\u201d\\r\\n\\r\\nPersuading farmers to adopt the technology may be relatively easy. Previous research by McElligott found that distress calls made by young chicks could predict the amount of weight gained and the number of deaths in the whole flock during its lifetime.\\r\\n\\r\\n\\u201cAlso, the vocalisation of distress is just one welfare indicator, but there are a number of other physical factors such as lameness and leg burns which farmers should also be looking out for.\\u201d\",\"title\":\"AI could improve welfare of farmed chickens by listening to their squawks\\r\\n\\r\\n<b>The technology correctly distinguished distress calls from other barn noises with 97% accuracy<\\/b>\"}'),
(9, '97926795-5ed3-40e6-828f-1dd871076369', 3, 'Update', 'App\\Models\\blog', 1, 'App\\Models\\blog', 1, 'App\\Models\\blog', 1, '', 'finished', '', '2022-10-23 16:43:08', '2022-10-23 16:43:08', '[]', '[]'),
(10, '97926a6b-fa05-46cc-a12d-0ea150911bf3', 3, 'Update', 'App\\Models\\blog', 2, 'App\\Models\\blog', 2, 'App\\Models\\blog', 2, '', 'finished', '', '2022-10-23 16:51:04', '2022-10-23 16:51:04', '{\"created_at\":\"2018-10-16 13:24:27\",\"source\":\"\"}', '{\"created_at\":\"2018-10-16 00:00:00\",\"source\":null}'),
(11, '97929d95-d11d-485d-b23d-ea7de6a82aa9', 3, 'Create', 'App\\Models\\Page', 6, 'App\\Models\\Page', 6, 'App\\Models\\Page', 6, '', 'finished', '', '2022-10-23 19:14:08', '2022-10-23 19:14:08', NULL, '{\"title\":\"Widgets\",\"name\":\"widgets\",\"link\":\"widgets\\/\",\"orderby\":\"8\",\"updated_at\":\"2022-10-23T21:14:08.000000Z\",\"created_at\":\"2022-10-23T21:14:08.000000Z\",\"id\":6}'),
(12, '9797e725-8046-4b26-a60e-5451d41e3f1f', 3, 'Create', 'App\\Models\\Product', 11, 'App\\Models\\Product', 11, 'App\\Models\\Product', 11, '', 'finished', '', '2022-10-26 10:18:58', '2022-10-26 10:18:58', NULL, '{\"name\":\"\\u0447\\u0435\\u043b\\u043e\\u0432\\u0435\\u043a\\u043e\\u043f\\u043e\\u0434\\u043e\\u0431\\u043d\\u044b\\u0439 \\u0440\\u043e\\u0431\\u043e\\u0442 Walker X (UBTECH Robotics, China)\",\"type_id\":\"2\",\"company\":null,\"for\":null,\"country\":null,\"description\":null,\"created_at\":null,\"updated_at\":\"2022-10-26T12:18:58.000000Z\",\"id\":11}'),
(13, '9797e739-8252-416f-a61e-71cdaf8daec3', 3, 'Create', 'App\\Models\\Product', 12, 'App\\Models\\Product', 12, 'App\\Models\\Product', 12, '', 'finished', '', '2022-10-26 10:19:11', '2022-10-26 10:19:11', NULL, '{\"name\":\"\\u0440\\u043e\\u0431\\u043e\\u0442-\\u043c\\u0430\\u043d\\u0438\\u043a\\u044e\\u0440\\u0449\\u0438\\u043a (Nimble Beauty -Israel)\",\"type_id\":\"2\",\"company\":null,\"for\":null,\"country\":null,\"description\":null,\"created_at\":null,\"updated_at\":\"2022-10-26T12:19:11.000000Z\",\"id\":12}'),
(14, '9797e74f-c43d-4f72-8661-e13a8119b5ce', 3, 'Create', 'App\\Models\\Product', 13, 'App\\Models\\Product', 13, 'App\\Models\\Product', 13, '', 'finished', '', '2022-10-26 10:19:26', '2022-10-26 10:19:26', NULL, '{\"name\":\"BeachBot - \\u043f\\u043b\\u044f\\u0436\\u043d\\u044b\\u0439 \\u0431\\u043e\\u0442 \\u0434\\u043b\\u044f \\u0443\\u0431\\u043e\\u0440\\u043a\\u0438 \\u043c\\u0443\\u0441\\u043e\\u0440\\u0430 (TechTics, Netherland)\",\"type_id\":\"2\",\"company\":null,\"for\":null,\"country\":null,\"description\":null,\"created_at\":null,\"updated_at\":\"2022-10-26T12:19:26.000000Z\",\"id\":13}'),
(15, '9797e787-af8a-434b-ba72-e0a5e2650de6', 3, 'Create', 'App\\Models\\Product', 14, 'App\\Models\\Product', 14, 'App\\Models\\Product', 14, '', 'finished', '', '2022-10-26 10:20:02', '2022-10-26 10:20:02', NULL, '{\"name\":\"GOOGLE, amazon, IBM\",\"type_id\":\"3\",\"company\":null,\"for\":null,\"country\":null,\"description\":null,\"created_at\":null,\"updated_at\":\"2022-10-26T12:20:02.000000Z\",\"id\":14}'),
(16, '9797e799-e3a1-41ba-b35b-f30ca043cb72', 3, 'Create', 'App\\Models\\Product', 15, 'App\\Models\\Product', 15, 'App\\Models\\Product', 15, '', 'finished', '', '2022-10-26 10:20:14', '2022-10-26 10:20:14', NULL, '{\"name\":\"Face++ , SenseTime(China) -face recog\",\"type_id\":\"3\",\"company\":null,\"for\":null,\"country\":null,\"description\":null,\"created_at\":null,\"updated_at\":\"2022-10-26T12:20:14.000000Z\",\"id\":15}'),
(17, '9797e7c7-64f6-4f70-a950-9c70ea6e7c7f', 3, 'Create', 'App\\Models\\Product', 16, 'App\\Models\\Product', 16, 'App\\Models\\Product', 16, '', 'finished', '', '2022-10-26 10:20:44', '2022-10-26 10:20:44', NULL, '{\"name\":\"TensorFlow and Caffe (open source, US)\",\"type_id\":\"3\",\"company\":null,\"for\":null,\"country\":null,\"description\":null,\"created_at\":null,\"updated_at\":\"2022-10-26T12:20:44.000000Z\",\"id\":16}'),
(18, '9797e7dc-9520-4a1c-ab5f-a3b6469aa0a1', 3, 'Create', 'App\\Models\\Product', 17, 'App\\Models\\Product', 17, 'App\\Models\\Product', 17, '', 'finished', '', '2022-10-26 10:20:58', '2022-10-26 10:20:58', NULL, '{\"name\":\"PaddlePaddle (open source, china)\",\"type_id\":\"3\",\"company\":null,\"for\":null,\"country\":null,\"description\":null,\"created_at\":null,\"updated_at\":\"2022-10-26T12:20:58.000000Z\",\"id\":17}'),
(19, '9797e7ee-12b3-4131-8fab-376f7876d959', 3, 'Create', 'App\\Models\\Product', 18, 'App\\Models\\Product', 18, 'App\\Models\\Product', 18, '', 'finished', '', '2022-10-26 10:21:09', '2022-10-26 10:21:09', NULL, '{\"name\":\"servall biometrics\\/patronScan (Canada, scan ids)\",\"type_id\":\"3\",\"company\":null,\"for\":null,\"country\":null,\"description\":null,\"created_at\":null,\"updated_at\":\"2022-10-26T12:21:09.000000Z\",\"id\":18}'),
(20, '9797e7fe-4bd7-4da6-8db7-22b4daf7e88d', 3, 'Create', 'App\\Models\\Product', 19, 'App\\Models\\Product', 19, 'App\\Models\\Product', 19, '', 'finished', '', '2022-10-26 10:21:20', '2022-10-26 10:21:20', NULL, '{\"name\":\"airbnb profiling customers (TROOLY startup, us) profiling from fb, insta\",\"type_id\":\"3\",\"company\":null,\"for\":null,\"country\":null,\"description\":null,\"created_at\":null,\"updated_at\":\"2022-10-26T12:21:20.000000Z\",\"id\":19}'),
(21, '9797e813-f598-4f9c-82e2-33af13f51ae7', 3, 'Create', 'App\\Models\\Product', 20, 'App\\Models\\Product', 20, 'App\\Models\\Product', 20, '', 'finished', '', '2022-10-26 10:21:34', '2022-10-26 10:21:34', NULL, '{\"name\":\"uber profiling customers (profiling from fb, insta)\",\"type_id\":\"3\",\"company\":null,\"for\":null,\"country\":null,\"description\":null,\"created_at\":null,\"updated_at\":\"2022-10-26T12:21:34.000000Z\",\"id\":20}'),
(22, '9797e825-298e-4cb9-bada-406c06a352b5', 3, 'Create', 'App\\Models\\Product', 21, 'App\\Models\\Product', 21, 'App\\Models\\Product', 21, '', 'finished', '', '2022-10-26 10:21:46', '2022-10-26 10:21:46', NULL, '{\"name\":\"ONFIDO (UK profiling customers)\",\"type_id\":\"3\",\"company\":null,\"for\":null,\"country\":null,\"description\":null,\"created_at\":null,\"updated_at\":\"2022-10-26T12:21:46.000000Z\",\"id\":21}'),
(23, '9797e834-afb8-4dab-a92c-81d4dd666939', 3, 'Create', 'App\\Models\\Product', 22, 'App\\Models\\Product', 22, 'App\\Models\\Product', 22, '', 'finished', '', '2022-10-26 10:21:56', '2022-10-26 10:21:56', NULL, '{\"name\":\"CHECKR (us profiling customers)\",\"type_id\":\"3\",\"company\":null,\"for\":null,\"country\":null,\"description\":null,\"created_at\":null,\"updated_at\":\"2022-10-26T12:21:56.000000Z\",\"id\":22}'),
(24, '9797e843-8a86-408d-ad27-c1b557b6a9e8', 3, 'Create', 'App\\Models\\Product', 23, 'App\\Models\\Product', 23, 'App\\Models\\Product', 23, '', 'finished', '', '2022-10-26 10:22:05', '2022-10-26 10:22:05', NULL, '{\"name\":\"PREDPOL profiling people (us)\",\"type_id\":\"3\",\"company\":null,\"for\":null,\"country\":null,\"description\":null,\"created_at\":null,\"updated_at\":\"2022-10-26T12:22:05.000000Z\",\"id\":23}'),
(25, '9797e8bb-a87c-46bb-bbad-68834fa1a68e', 3, 'Create', 'App\\Models\\Product', 24, 'App\\Models\\Product', 24, 'App\\Models\\Product', 24, '', 'finished', '', '2022-10-26 10:23:24', '2022-10-26 10:23:24', NULL, '{\"name\":\"Intel, Apple, Google and Advanced Micro Devices\",\"type_id\":\"4\",\"company\":null,\"for\":null,\"country\":null,\"description\":null,\"created_at\":null,\"updated_at\":\"2022-10-26T12:23:24.000000Z\",\"id\":24}'),
(26, '9797e8cb-e978-4575-b67a-a6c029270fc1', 3, 'Create', 'App\\Models\\Product', 25, 'App\\Models\\Product', 25, 'App\\Models\\Product', 25, '', 'finished', '', '2022-10-26 10:23:35', '2022-10-26 10:23:35', NULL, '{\"name\":\"Dojo d1, tesla\",\"type_id\":\"4\",\"company\":null,\"for\":null,\"country\":null,\"description\":null,\"created_at\":null,\"updated_at\":\"2022-10-26T12:23:35.000000Z\",\"id\":25}'),
(27, '9797e901-b398-48ff-b6a2-3fee7f6fd485', 3, 'Create', 'App\\Models\\Product', 26, 'App\\Models\\Product', 26, 'App\\Models\\Product', 26, '', 'finished', '', '2022-10-26 10:24:10', '2022-10-26 10:24:10', NULL, '{\"name\":\"\\u0413\\u0443\\u043c\\u0430\\u043d\\u043e\\u0438\\u0434\\u043d\\u044b\\u0439 \\u0440\\u043e\\u0431\\u043e\\u0442 Atlas (Boston Dynamics, US)\",\"type_id\":\"5\",\"company\":null,\"for\":null,\"country\":null,\"description\":null,\"created_at\":null,\"updated_at\":\"2022-10-26T12:24:10.000000Z\",\"id\":26}'),
(28, '9797e913-95aa-48ed-b7a5-4bea62c6a2c6', 3, 'Create', 'App\\Models\\Product', 27, 'App\\Models\\Product', 27, 'App\\Models\\Product', 27, '', 'finished', '', '2022-10-26 10:24:22', '2022-10-26 10:24:22', NULL, '{\"name\":\"climateAI(us)\",\"type_id\":\"5\",\"company\":null,\"for\":null,\"country\":null,\"description\":null,\"created_at\":null,\"updated_at\":\"2022-10-26T12:24:22.000000Z\",\"id\":27}'),
(29, '9797e924-043d-4918-9d62-e599a6b838dd', 3, 'Create', 'App\\Models\\Product', 28, 'App\\Models\\Product', 28, 'App\\Models\\Product', 28, '', 'finished', '', '2022-10-26 10:24:33', '2022-10-26 10:24:33', NULL, '{\"name\":\"open climate fix (UK)\",\"type_id\":\"5\",\"company\":null,\"for\":null,\"country\":null,\"description\":null,\"created_at\":null,\"updated_at\":\"2022-10-26T12:24:33.000000Z\",\"id\":28}'),
(30, '9797e932-a025-49e1-b36b-e8a2800a97cc', 3, 'Create', 'App\\Models\\Product', 29, 'App\\Models\\Product', 29, 'App\\Models\\Product', 29, '', 'finished', '', '2022-10-26 10:24:42', '2022-10-26 10:24:42', NULL, '{\"name\":\"one concerne (Japan, climate)\",\"type_id\":\"5\",\"company\":null,\"for\":null,\"country\":null,\"description\":null,\"created_at\":null,\"updated_at\":\"2022-10-26T12:24:42.000000Z\",\"id\":29}'),
(31, '9797e941-641f-450c-85da-3299d89badb8', 3, 'Create', 'App\\Models\\Product', 30, 'App\\Models\\Product', 30, 'App\\Models\\Product', 30, '', 'finished', '', '2022-10-26 10:24:52', '2022-10-26 10:24:52', NULL, '{\"name\":\"climavision operating\",\"type_id\":\"5\",\"company\":null,\"for\":null,\"country\":null,\"description\":null,\"created_at\":null,\"updated_at\":\"2022-10-26T12:24:52.000000Z\",\"id\":30}'),
(32, '9797e98e-d439-45d2-93aa-0df86b23800e', 3, 'Create', 'App\\Models\\Product', 31, 'App\\Models\\Product', 31, 'App\\Models\\Product', 31, '', 'finished', '', '2022-10-26 10:25:43', '2022-10-26 10:25:43', NULL, '{\"name\":\"yandex alisa\",\"type_id\":\"8\",\"company\":null,\"for\":null,\"country\":null,\"description\":null,\"created_at\":null,\"updated_at\":\"2022-10-26T12:25:43.000000Z\",\"id\":31}'),
(33, '9797e9a7-2b7f-4325-9269-0d286af21f24', 3, 'Create', 'App\\Models\\Product', 32, 'App\\Models\\Product', 32, 'App\\Models\\Product', 32, '', 'finished', '', '2022-10-26 10:25:59', '2022-10-26 10:25:59', NULL, '{\"name\":\"GOOGLE, amazon, IBM\",\"type_id\":\"8\",\"company\":null,\"for\":null,\"country\":null,\"description\":null,\"created_at\":null,\"updated_at\":\"2022-10-26T12:25:59.000000Z\",\"id\":32}'),
(34, '9797e9c0-3f17-43d1-ab8f-ac9cd899037a', 3, 'Create', 'App\\Models\\Product', 33, 'App\\Models\\Product', 33, 'App\\Models\\Product', 33, '', 'finished', '', '2022-10-26 10:26:15', '2022-10-26 10:26:15', NULL, '{\"name\":\"Baidu, Alibaba, Tencent , iFlytek (CHINA)\",\"type_id\":\"8\",\"company\":null,\"for\":null,\"country\":null,\"description\":null,\"created_at\":null,\"updated_at\":\"2022-10-26T12:26:15.000000Z\",\"id\":33}'),
(35, '9797e9d0-ee8a-4d62-97cc-e5a01fbab76c', 3, 'Create', 'App\\Models\\Product', 34, 'App\\Models\\Product', 34, 'App\\Models\\Product', 34, '', 'finished', '', '2022-10-26 10:26:26', '2022-10-26 10:26:26', NULL, '{\"name\":\"Unisound (china)\",\"type_id\":\"8\",\"company\":null,\"for\":null,\"country\":null,\"description\":null,\"created_at\":null,\"updated_at\":\"2022-10-26T12:26:26.000000Z\",\"id\":34}'),
(36, '9797e9fc-e528-40e8-9755-5845fa97a2cf', 3, 'Create', 'App\\Models\\Product', 35, 'App\\Models\\Product', 35, 'App\\Models\\Product', 35, '', 'finished', '', '2022-10-26 10:26:55', '2022-10-26 10:26:55', NULL, '{\"name\":\"synthesia (\\u0430\\u0432\\u0430\\u0442\\u0430\\u0440\\u044b, us)\",\"type_id\":\"9\",\"company\":null,\"for\":null,\"country\":null,\"description\":null,\"created_at\":null,\"updated_at\":\"2022-10-26T12:26:55.000000Z\",\"id\":35}'),
(37, '9797ea06-71fc-4290-b0c5-77a0e23329ae', 3, 'Create', 'App\\Models\\Product', 36, 'App\\Models\\Product', 36, 'App\\Models\\Product', 36, '', 'finished', '', '2022-10-26 10:27:01', '2022-10-26 10:27:01', NULL, '{\"name\":\"hour one (\\u0430\\u0432\\u0430\\u0442\\u0430\\u0440\\u044b \\u0434 \\u0431\\u0438\\u0437\\u043d\\u0435\\u0441\\u0430, \\u0418\\u0437\\u0440\\u0430\\u0438\\u043b\\u044c)\",\"type_id\":\"9\",\"company\":null,\"for\":null,\"country\":null,\"description\":null,\"created_at\":null,\"updated_at\":\"2022-10-26T12:27:01.000000Z\",\"id\":36}'),
(38, '9797ea1f-c440-4cb2-be54-fedc9eb72c09', 3, 'Create', 'App\\Models\\Product', 37, 'App\\Models\\Product', 37, 'App\\Models\\Product', 37, '', 'finished', '', '2022-10-26 10:27:18', '2022-10-26 10:27:18', NULL, '{\"name\":\"sonatic +voice reproduction, us)\",\"type_id\":\"9\",\"company\":null,\"for\":null,\"country\":null,\"description\":null,\"created_at\":null,\"updated_at\":\"2022-10-26T12:27:18.000000Z\",\"id\":37}'),
(39, '9797ea41-8855-428e-b9a1-2c0a5edb9ae3', 3, 'Create', 'App\\Models\\Product', 38, 'App\\Models\\Product', 38, 'App\\Models\\Product', 38, '', 'finished', '', '2022-10-26 10:27:40', '2022-10-26 10:27:40', NULL, '{\"name\":\"score system (china)\",\"type_id\":\"10\",\"company\":null,\"for\":null,\"country\":null,\"description\":null,\"created_at\":null,\"updated_at\":\"2022-10-26T12:27:40.000000Z\",\"id\":38}'),
(40, '9797ea5b-b211-48fc-b58c-5af5fb42ca9f', 3, 'Create', 'App\\Models\\Product', 39, 'App\\Models\\Product', 39, 'App\\Models\\Product', 39, '', 'finished', '', '2022-10-26 10:27:57', '2022-10-26 10:27:57', NULL, '{\"name\":\"score system (singapour)\",\"type_id\":\"10\",\"company\":null,\"for\":null,\"country\":null,\"description\":null,\"created_at\":null,\"updated_at\":\"2022-10-26T12:27:57.000000Z\",\"id\":39}'),
(41, '9797ea6a-036d-43d9-a524-7cabf8e9e388', 3, 'Create', 'App\\Models\\Product', 40, 'App\\Models\\Product', 40, 'App\\Models\\Product', 40, '', 'finished', '', '2022-10-26 10:28:06', '2022-10-26 10:28:06', NULL, '{\"name\":\"insurance listings (us)\",\"type_id\":\"10\",\"company\":null,\"for\":null,\"country\":null,\"description\":null,\"created_at\":null,\"updated_at\":\"2022-10-26T12:28:06.000000Z\",\"id\":40}'),
(42, '9797ea9c-3a61-423f-b26c-27942e2c2d30', 3, 'Create', 'App\\Models\\Product', 41, 'App\\Models\\Product', 41, 'App\\Models\\Product', 41, '', 'finished', '', '2022-10-26 10:28:39', '2022-10-26 10:28:39', NULL, '{\"name\":\"\\u043f\\u043b\\u0430\\u0442\\u0444\\u043e\\u0440\\u043c\\u0430 \\u043d\\u0442\\u0438 (\\u0440\\u0443) \\u043f\\u0440\\u0438\\u043d\\u044f\\u0442\\u0438\\u0435 \\u043c\\u0435\\u0434 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0439\",\"type_id\":\"11\",\"company\":null,\"for\":null,\"country\":null,\"description\":null,\"created_at\":null,\"updated_at\":\"2022-10-26T12:28:39.000000Z\",\"id\":41}'),
(43, '9797eaac-64ec-498c-9bc7-850c6c1d522a', 3, 'Create', 'App\\Models\\Product', 42, 'App\\Models\\Product', 42, 'App\\Models\\Product', 42, '', 'finished', '', '2022-10-26 10:28:50', '2022-10-26 10:28:50', NULL, '{\"name\":\"think Sono (\\u0434\\u0438\\u0430\\u0433\\u043d\\u043e\\u0441\\u0442\\u0438\\u043a\\u0430 \\u0442\\u0440\\u043e\\u043c\\u0431\\u043e\\u0432 (us)\",\"type_id\":\"5\",\"company\":null,\"for\":null,\"country\":null,\"description\":null,\"created_at\":null,\"updated_at\":\"2022-10-26T12:28:50.000000Z\",\"id\":42}'),
(44, '9797eb8d-1323-43d4-81e5-7b501b3dbc2e', 3, 'Update', 'App\\Models\\Product', 9, 'App\\Models\\Product', 9, 'App\\Models\\Product', 9, '', 'finished', '', '2022-10-26 10:31:17', '2022-10-26 10:31:17', '{\"company\":null,\"for\":null,\"description\":null,\"created_at\":\"2022-10-26 11:03:00\"}', '{\"company\":\"IBM\",\"for\":\"\\u041d\\u0430\\u0446\\u0438\\u043e\\u043d\\u0430\\u043b\\u044c\\u043d\\u043e\\u0439 \\u0430\\u0434\\u043c\\u0438\\u043d\\u0438\\u0441\\u0442\\u0440\\u0430\\u0446\\u0438\\u0438 \\u043f\\u043e \\u044f\\u0434\\u0435\\u0440\\u043d\\u043e\\u0439 \\u0431\\u0435\\u0437\\u043e\\u043f\\u0430\\u0441\\u043d\\u043e\\u0441\\u0442\\u0438\",\"description\":\"Sequoia \\u2014 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442 \\u0441\\u0443\\u043f\\u0435\\u0440\\u043a\\u043e\\u043c\\u043f\\u044c\\u044e\\u0442\\u0435\\u0440\\u0430 \\u043f\\u0435\\u0442\\u0430\\u0444\\u043b\\u043e\\u043f\\u0441\\u043d\\u043e\\u0439 \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0441\\u0442\\u0438, \\u043e\\u0441\\u043d\\u043e\\u0432\\u0430\\u043d\\u043d\\u044b\\u0439 \\u043d\\u0430 \\u0430\\u0440\\u0445\\u0438\\u0442\\u0435\\u043a\\u0442\\u0443\\u0440\\u0435 Blue Gene\\/Q. \\u0420\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u0430\\u043d \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u0435\\u0439 IBM \\u0434\\u043b\\u044f \\u041d\\u0430\\u0446\\u0438\\u043e\\u043d\\u0430\\u043b\\u044c\\u043d\\u043e\\u0439 \\u0430\\u0434\\u043c\\u0438\\u043d\\u0438\\u0441\\u0442\\u0440\\u0430\\u0446\\u0438\\u0438 \\u043f\\u043e \\u044f\\u0434\\u0435\\u0440\\u043d\\u043e\\u0439 \\u0431\\u0435\\u0437\\u043e\\u043f\\u0430\\u0441\\u043d\\u043e\\u0441\\u0442\\u0438 \\u0432 \\u0440\\u0430\\u043c\\u043a\\u0430\\u0445 \\u043f\\u0440\\u043e\\u0433\\u0440\\u0430\\u043c\\u043c\\u044b Advanced Simulation and Computing Program.\",\"created_at\":\"2022-10-26 00:00:00\"}'),
(45, '9797f67b-8f62-42ad-ba97-1c204683aaa4', 3, 'Update', 'App\\Models\\Product', 13, 'App\\Models\\Product', 13, 'App\\Models\\Product', 13, '', 'finished', '', '2022-10-26 11:01:51', '2022-10-26 11:01:51', '{\"company\":null,\"description\":null,\"created_at\":\"2022-10-26 14:19:26\"}', '{\"company\":\"TechTics\",\"description\":\"\\u041a\\u043e\\u043d\\u0441\\u0442\\u0440\\u0443\\u043a\\u0442\\u043e\\u0440\\u044b \\u0433\\u043e\\u043b\\u043b\\u0430\\u043d\\u0434\\u0441\\u043a\\u043e\\u0439 \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u0438 TechTics \\u0440\\u0430\\u0431\\u043e\\u0442\\u0430\\u044e\\u0442 \\u043d\\u0430\\u0434 \\u043e\\u0431\\u0443\\u0447\\u0435\\u043d\\u0438\\u0435\\u043c \\u0431\\u043e\\u0442\\u0430 \\u0441 \\u0418\\u0418, \\u043f\\u0440\\u0435\\u0434\\u043d\\u0430\\u0437\\u043d\\u0430\\u0447\\u0435\\u043d\\u043d\\u043e\\u0433\\u043e \\u0434\\u043b\\u044f \\u0447\\u0438\\u0441\\u0442\\u043a\\u0438 \\u043f\\u043b\\u044f\\u0436\\u0435\\u0439 \\u043e\\u0442 \\u043c\\u0443\\u0441\\u043e\\u0440\\u0430, \\u0432 \\u0447\\u0430\\u0441\\u0442\\u043d\\u043e\\u0441\\u0442\\u0438 \\u043e\\u0442 \\u043e\\u043a\\u0443\\u0440\\u043a\\u043e\\u0432.\",\"created_at\":\"2022-10-26 00:00:00\"}'),
(47, '97980360-b7e2-4221-bd09-606ce3456fbd', 3, 'Update', 'App\\Models\\Product', 20, 'App\\Models\\Product', 20, 'App\\Models\\Product', 20, '', 'finished', '', '2022-10-26 11:37:54', '2022-10-26 11:37:54', '{\"image\":null,\"created_at\":\"2022-10-26 14:21:34\"}', '{\"image\":\"<div><\\/div>\",\"created_at\":\"2022-10-26 00:00:00\"}'),
(48, '97980511-6e85-4310-9eb0-0ae4ed1fbb33', 3, 'Update', 'App\\Models\\Product', 20, 'App\\Models\\Product', 20, 'App\\Models\\Product', 20, '', 'finished', '', '2022-10-26 11:42:38', '2022-10-26 11:42:38', '[]', '[]'),
(58, '97980a3b-3824-437d-868b-07e1695df50a', 3, 'Update', 'App\\Models\\Product', 20, 'App\\Models\\Product', 20, 'App\\Models\\Product', 20, '', 'finished', '', '2022-10-26 11:57:04', '2022-10-26 11:57:04', '{\"image\":\"<div><\\/div>\"}', '{\"image\":\"img\\/ai\\/TLNgPG9sN5GCg2MdNs7zm3TFD79mxe2F1PL8lLLJ.jpg\"}'),
(59, '97980ace-ea24-4132-8f5b-1c16f77cf1d5', 3, 'Update', 'App\\Models\\Product', 20, 'App\\Models\\Product', 20, 'App\\Models\\Product', 20, '', 'finished', '', '2022-10-26 11:58:41', '2022-10-26 11:58:41', '[]', '[]'),
(60, '97980ae2-9ee5-4ba0-9f4f-344e205b01f2', 3, 'Update', 'App\\Models\\Product', 20, 'App\\Models\\Product', 20, 'App\\Models\\Product', 20, '', 'finished', '', '2022-10-26 11:58:54', '2022-10-26 11:58:54', '{\"image\":null}', '{\"image\":\"img\\/ai\\/mM79zJhwyY73kOJuXOGzXNDLBqUDdKuKvy4LHGZ0.svg\"}');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(10) NOT NULL,
  `new` mediumtext DEFAULT NULL,
  `title` varchar(300) DEFAULT NULL,
  `country` varchar(15) DEFAULT NULL,
  `company` varchar(50) DEFAULT NULL,
  `for` varchar(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `source` varchar(50) DEFAULT NULL,
  `image` varchar(300) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `new`, `title`, `country`, `company`, `for`, `created_at`, `source`, `image`, `updated_at`) VALUES
(1, '<i>The technology correctly distinguished distress calls from other barn noises with 97% accuracy</i>\r\n\r\n\r\n<p>Artificial intelligence that could improve the welfare of farmed chickens by eavesdropping on their squawks could become available within five years, researchers say.</p>\r\n\r\n<p>The technology, which detects and quantifies distress calls made by chickens housed in huge indoor sheds, correctly distinguished distress calls from other barn noises with 97% accuracy, new research suggests. A similar approach could eventually be used to drive up welfare standards in other farmed animals.</p>\r\n\r\n<p>Each year, about 25 billion chickens are farmed around the world – many of them in huge sheds, each housing thousands of birds. One way to assess the welfare of such creatures is to listen to the sounds that they make.</p>\r\n\r\n<p>“Chickens are very vocal, but the distress call tends to be louder than the others, and is what we would describe as a pure tonal call,” said Alan McElligott, an associate professor of animal behaviour and welfare at the City University of Hong Kong. “Even to the untrained ear, it’s not too difficult to pick them out.”\r\n\r\nPersuading farmers to adopt the technology may be relatively easy. Previous research by McElligott found that distress calls made by young chicks could predict the amount of weight gained and the number of deaths in the whole flock during its lifetime.\r\n\r\n“Also, the vocalisation of distress is just one welfare indicator, but there are a number of other physical factors such as lameness and leg burns which farmers should also be looking out for.”', 'AI could improve welfare of farmed chickens by listening to their squawks\r\n\r\n', ' Hong Kong', 'City University of Hong Kong', NULL, '2022-06-28 22:00:00', 'The Guardian', 'img/ai/chicken.jpeg', '2022-10-23 16:41:23'),
(2, 'Cayla is able to listen, search anwers on internet and talk back to the child', 'Doll as \"Alexa\"', 'US', 'Nuance Communications by Microsoft', 'Genesis Toys', '2018-10-15 22:00:00', NULL, 'img/ai/cayla.jpeg', '2022-10-23 16:51:04'),
(3, '<p class = \"mb-2\">Parmi les entreprises qui étaient présentes au salon sur la mobilité intelligente baptisée «EcoMotion», qui s’est récemment tenu à Tel-Aviv, figure ITC (Intelligent traffic control), qui développe un logiciel capable de récolter des données en temps réel à partir de caméras de surveillance le long des routes et de manipuler les feux de signalisation en fonction des flux de circulation.</p>«ITC est parvenue à prouver mathématiquement que de nombreux embouteillages peuvent être empêchés, si on intervient assez tôt», explique Dvir Kenig, chargé des technologies de cette entreprise, citant une baisse de 30% de l’engorgement sur deux carrefours où le système a été mis en place.', 'L\'intelligence artificielle pour en finir avec les embouteillages', 'Israel', 'ITC Intelligence Motion Control', NULL, '2022-05-29 22:00:00', '20 minutes', 'img/ai/traffic.jpeg', '2022-10-23 10:43:05');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(4) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `country` text DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `name`, `description`, `country`, `date`, `url`, `created_at`) VALUES
(1, 'EcoMotion', 'smart mobility innovations', 'israel', 'monthly', 'https://www.ecomotion.org.il/', '2022-10-23 19:44:51'),
(2, 'AI for good', 'AI-powered match-making community platform to connect AI innovators with problem owners', 'globally', 'monthly', 'https://aiforgood.itu.int/', '2022-10-24 13:07:11');

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
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `link` varchar(30) DEFAULT NULL,
  `blog` int(5) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(5) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `surname` varchar(20) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `message` mediumtext DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `name`, `surname`, `email`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Submit', 'last namefghj', 'e-mail@sdfg', NULL, '2022-10-25 14:12:22', '2022-10-25 14:12:22'),
(2, 'Submit', 'last namefghj', 'e-mail@sdfg', NULL, '2022-10-25 14:13:28', '2022-10-25 14:13:28'),
(3, 'first namedfgh', 'last namedfh', 'e-mail@sdfg', NULL, '2022-10-25 14:13:35', '2022-10-25 14:13:35'),
(4, 'first nadfhme', 'last ndfghame', 'e-mail@sdfg', NULL, '2022-10-25 14:14:18', '2022-10-25 14:14:18'),
(5, 'first nadfhme', 'last ndfghame', 'e-mail@sdfg', 'dfghyour message', '2022-10-25 14:14:51', '2022-10-25 14:14:51'),
(6, 'first namdfghe', 'last nadfghme', 'e-mail@sdfg', 'your messagedfghdgh', '2022-10-25 14:15:02', '2022-10-25 14:15:02'),
(7, 'first namdfghe', 'last nadfghme', 'e-mail@sdfg', 'your messagedfghdgh', '2022-10-25 14:16:16', '2022-10-25 14:16:16'),
(8, 'first namdfghe', 'last nadfghme', 'e-mail@sdfg', 'your messagedfghdgh', '2022-10-25 14:16:26', '2022-10-25 14:16:26'),
(9, 'first dfghname', 'last nadfghme', 'e-mail@sdfgd', 'dfghyour message', '2022-10-25 14:16:33', '2022-10-25 14:16:33'),
(10, 'first dfghname', 'last nadfghme', 'e-mail@sdfgd', 'dfghyour message', '2022-10-25 14:17:23', '2022-10-25 14:17:23'),
(11, 'first dfghname', 'last nadfghme', 'e-mail@sdfgd', 'dfghyour message', '2022-10-25 14:17:29', '2022-10-25 14:17:29'),
(12, 'first namedfgh', 'last namedfgh', 'e-mail@sdfg', 'dfghyour message', '2022-10-25 14:17:45', '2022-10-25 14:17:45'),
(13, 'first namedfgh', 'last namedfgh', 'e-mail@sdfg', 'dfghyour message', '2022-10-25 14:19:29', '2022-10-25 14:19:29'),
(14, 'first ndfghame', 'last nadfghme', 'e-mail@sdfg', 'dfghyour message', '2022-10-25 14:19:35', '2022-10-25 14:19:35'),
(15, 'first ndfghame', 'last nadfghme', 'e-mail@sdfg', 'dfghyour message', '2022-10-25 14:24:11', '2022-10-25 14:24:11'),
(16, 'first ndfghame', 'last nadfghme', 'e-mail@sdfg', 'dfghyour message', '2022-10-25 14:24:31', '2022-10-25 14:24:31'),
(17, 'first ndfghame', 'last nadfghme', 'e-mail@sdfg', 'dfghyour message', '2022-10-25 14:24:48', '2022-10-25 14:24:48'),
(18, 'first ndfghame', 'last nadfghme', 'e-mail@sdfg', 'dfghyour message', '2022-10-25 14:25:24', '2022-10-25 14:25:24'),
(19, 'first ndfghame', 'last nadfghme', 'e-mail@sdfg', 'dfghyour message', '2022-10-25 14:25:36', '2022-10-25 14:25:36'),
(20, 'first ndfghame', 'last nadfghme', 'e-mail@sdfg', 'dfghyour message', '2022-10-25 14:25:49', '2022-10-25 14:25:49'),
(21, 'first ndfghame', 'last nadfghme', 'e-mail@sdfg', 'dfghyour message', '2022-10-25 14:26:04', '2022-10-25 14:26:04'),
(22, 'first ndfghame', 'last nadfghme', 'e-mail@sdfg', 'dfghyour message', '2022-10-25 14:26:07', '2022-10-25 14:26:07'),
(23, 'first ndfghame', 'last nadfghme', 'e-mail@sdfg', 'dfghyour message', '2022-10-25 14:26:40', '2022-10-25 14:26:40'),
(24, 'first ndfghame', 'last nadfghme', 'e-mail@sdfg', 'dfghyour message', '2022-10-25 14:27:16', '2022-10-25 14:27:16'),
(25, 'first ndfghame', 'last nadfghme', 'e-mail@sdfg', 'dfghyour message', '2022-10-25 14:27:43', '2022-10-25 14:27:43'),
(26, 'first ndfghame', 'last nadfghme', 'e-mail@sdfg', 'dfghyour message', '2022-10-25 14:27:54', '2022-10-25 14:27:54'),
(27, 'first ndfghame', 'last nadfghme', 'e-mail@sdfg', 'dfghyour message', '2022-10-25 14:28:03', '2022-10-25 14:28:03'),
(28, 'first namesdfg', 'last namedsfg', 'e-mail@sdfg', 'sdfgyour message', '2022-10-26 06:36:28', '2022-10-26 06:36:28'),
(29, 'first namesdfg', 'last namedsfg', 'e-mail@sdfg', 'sdfgyour message', '2022-10-26 06:38:19', '2022-10-26 06:38:19'),
(30, 'first namesdfg', 'last namesdfg', 'e-mail@sdfg', 'sdfgyour message', '2022-10-26 06:38:25', '2022-10-26 06:38:25');

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_01_01_000000_create_action_events_table', 1),
(4, '2019_05_10_000000_add_fields_to_action_events_table', 1),
(5, '2019_08_19_000000_create_failed_jobs_table', 1),
(6, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(7, '2022_10_26_133702_create_trix_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `nova_pending_trix_attachments`
--

CREATE TABLE `nova_pending_trix_attachments` (
  `id` int(10) UNSIGNED NOT NULL,
  `draft_id` varchar(255) NOT NULL,
  `attachment` varchar(255) NOT NULL,
  `disk` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nova_pending_trix_attachments`
--

INSERT INTO `nova_pending_trix_attachments` (`id`, `draft_id`, `attachment`, `disk`, `created_at`, `updated_at`) VALUES
(1, '1cf5d0b9-6d99-40fd-ace5-8b851de26ca1', 'img/ai//tJmc9u7IOn4Fxq1fHQg6iY1zf9p7untfR6jbPLJi.jpg', 'public', '2022-10-26 11:43:47', '2022-10-26 11:43:47'),
(2, '1cf5d0b9-6d99-40fd-ace5-8b851de26ca1', 'img/ai//brIEdoJFGvcY0A7ZNThgIlt479pMe2IGoAUEHxHM.jpg', 'public', '2022-10-26 11:44:15', '2022-10-26 11:44:15');

-- --------------------------------------------------------

--
-- Table structure for table `nova_trix_attachments`
--

CREATE TABLE `nova_trix_attachments` (
  `id` int(10) UNSIGNED NOT NULL,
  `attachable_type` varchar(255) NOT NULL,
  `attachable_id` int(10) UNSIGNED NOT NULL,
  `attachment` varchar(255) NOT NULL,
  `disk` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(3) NOT NULL,
  `title` varchar(35) DEFAULT NULL,
  `name` varchar(15) DEFAULT NULL,
  `link` varchar(10) DEFAULT NULL,
  `orderby` int(2) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `name`, `link`, `orderby`, `created_at`, `updated_at`) VALUES
(1, 'ML', 'ML', 'ml/', 1, '2022-10-23 21:10:48', '2022-10-23 21:10:48'),
(2, 'AI news', 'blogs', 'blogs/', 0, '2022-10-23 21:10:48', '2022-10-23 21:10:48'),
(3, 'Handwriting Recognition', 'HWR', 'hwr', 3, '2022-10-23 21:10:48', '2022-10-23 21:10:48'),
(4, 'Contact', 'contact', 'contact', 10, '2022-10-23 21:10:48', '2022-10-23 21:10:48'),
(5, 'Classification', 'class', 'types', 9, '2022-10-23 21:10:48', '2022-10-23 21:10:48'),
(6, 'Widgets', 'widgets', 'widgets/', 8, '2022-10-23 19:14:08', '2022-10-23 19:14:08');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `for` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `description` varchar(300) DEFAULT NULL,
  `type_id` int(5) DEFAULT NULL,
  `source` varchar(150) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `company`, `for`, `country`, `description`, `type_id`, `source`, `image`, `created_at`, `updated_at`) VALUES
(1, '-инфосистема-джет (сталеварение, ру)', '', '', '', NULL, 6, '', NULL, '2022-10-25 11:04:46', '2022-10-25 11:04:46'),
(2, ' Azure ml/power bi (чугун, ru)', '', '', '', NULL, 6, '', NULL, '2022-10-25 11:04:46', '2022-10-25 11:04:46'),
(3, 'Duke energy ( выпуск метана, us)', '', '', '', NULL, 6, '', NULL, '2022-10-25 11:05:17', '2022-10-25 11:05:17'),
(4, 'мчс, 112(ру)', '', '', '', NULL, 6, '', NULL, '2022-10-25 11:05:17', '2022-10-25 11:05:17'),
(5, ' Stanford (us, molecule structure)', '', '', '', NULL, 6, '', NULL, '2022-10-25 11:05:47', '2022-10-25 11:05:47'),
(6, ' видео-матрикс (комп зрение, произв стали (ру)', '', '', '', NULL, 6, '', NULL, '2022-10-25 11:05:47', '2022-10-25 11:05:47'),
(7, ' RPA, Mmk (ру)', '', '', '', NULL, 6, '', NULL, '2022-10-25 11:06:16', '2022-10-25 11:06:16'),
(8, 'china', NULL, NULL, NULL, NULL, 7, '', NULL, '2022-10-26 09:03:00', '2022-10-26 09:03:00'),
(9, 'IBM Quantum System One, SEQUOIA IBM, US', 'IBM', 'Национальной администрации по ядерной безопасности', NULL, 'Sequoia — проект суперкомпьютера петафлопсной производительности, основанный на архитектуре Blue Gene/Q. Разработан компанией IBM для Национальной администрации по ядерной безопасности в рамках программы Advanced Simulation and Computing Program.', 7, '', NULL, '2022-10-25 22:00:00', '2022-10-26 10:31:17'),
(10, 'uber (US)', NULL, NULL, NULL, NULL, 1, '', NULL, '2022-10-26 09:58:33', '2022-10-26 09:58:33'),
(11, 'человекоподобный робот Walker X (UBTECH Robotics, China)', NULL, NULL, NULL, NULL, 2, '', NULL, '2022-10-26 12:18:58', '2022-10-26 10:18:58'),
(12, 'робот-маникюрщик (Nimble Beauty -Israel)', NULL, NULL, NULL, NULL, 2, '', NULL, '2022-10-26 12:19:11', '2022-10-26 10:19:11'),
(13, 'BeachBot - пляжный бот для уборки мусора (TechTics, Netherland)', 'TechTics', NULL, NULL, 'Конструкторы голландской компании TechTics работают над обучением бота с ИИ, предназначенного для чистки пляжей от мусора, в частности от окурков.', 2, '', NULL, '2022-10-25 22:00:00', '2022-10-26 11:01:51'),
(14, 'GOOGLE, amazon, IBM', NULL, NULL, NULL, NULL, 3, '', NULL, '2022-10-26 12:20:02', '2022-10-26 10:20:02'),
(15, 'Face++ , SenseTime(China) -face recog', NULL, NULL, NULL, NULL, 3, '', NULL, '2022-10-26 12:20:14', '2022-10-26 10:20:14'),
(16, 'TensorFlow and Caffe (open source, US)', NULL, NULL, NULL, NULL, 3, '', NULL, '2022-10-26 12:20:44', '2022-10-26 10:20:44'),
(17, 'PaddlePaddle (open source, china)', NULL, NULL, NULL, NULL, 3, '', NULL, '2022-10-26 12:20:58', '2022-10-26 10:20:58'),
(18, 'servall biometrics/patronScan (Canada, scan ids)', NULL, NULL, NULL, NULL, 3, '', NULL, '2022-10-26 12:21:09', '2022-10-26 10:21:09'),
(19, 'airbnb profiling customers (TROOLY startup, us) profiling from fb, insta', NULL, NULL, NULL, NULL, 3, '', NULL, '2022-10-26 12:21:20', '2022-10-26 10:21:20'),
(20, 'uber profiling customers (profiling from fb, insta)', NULL, NULL, NULL, NULL, 3, '', 'img/ai/mM79zJhwyY73kOJuXOGzXNDLBqUDdKuKvy4LHGZ0.svg', '2022-10-25 22:00:00', '2022-10-26 11:58:54'),
(21, 'ONFIDO (UK profiling customers)', NULL, NULL, NULL, NULL, 3, '', NULL, '2022-10-26 12:21:46', '2022-10-26 10:21:46'),
(22, 'CHECKR (us profiling customers)', NULL, NULL, NULL, NULL, 3, '', NULL, '2022-10-26 12:21:56', '2022-10-26 10:21:56'),
(23, 'PREDPOL profiling people (us)', NULL, NULL, NULL, NULL, 3, '', NULL, '2022-10-26 12:22:05', '2022-10-26 10:22:05'),
(24, 'Intel, Apple, Google and Advanced Micro Devices', NULL, NULL, NULL, NULL, 4, '', NULL, '2022-10-26 12:23:24', '2022-10-26 10:23:24'),
(25, 'Dojo d1, tesla', NULL, NULL, NULL, NULL, 4, '', NULL, '2022-10-26 12:23:35', '2022-10-26 10:23:35'),
(26, 'Гуманоидный робот Atlas (Boston Dynamics, US)', NULL, NULL, NULL, NULL, 5, '', NULL, '2022-10-26 12:24:10', '2022-10-26 10:24:10'),
(27, 'climateAI(us)', NULL, NULL, NULL, NULL, 5, '', NULL, '2022-10-26 12:24:22', '2022-10-26 10:24:22'),
(28, 'open climate fix (UK)', NULL, NULL, NULL, NULL, 5, '', NULL, '2022-10-26 12:24:33', '2022-10-26 10:24:33'),
(29, 'one concerne (Japan, climate)', NULL, NULL, NULL, NULL, 5, '', NULL, '2022-10-26 12:24:42', '2022-10-26 10:24:42'),
(30, 'climavision operating', NULL, NULL, NULL, NULL, 5, '', NULL, '2022-10-26 12:24:52', '2022-10-26 10:24:52'),
(31, 'yandex alisa', NULL, NULL, NULL, NULL, 8, '', NULL, '2022-10-26 12:25:43', '2022-10-26 10:25:43'),
(32, 'GOOGLE, amazon, IBM', NULL, NULL, NULL, NULL, 8, '', NULL, '2022-10-26 12:25:59', '2022-10-26 10:25:59'),
(33, 'Baidu, Alibaba, Tencent , iFlytek (CHINA)', NULL, NULL, NULL, NULL, 8, '', NULL, '2022-10-26 12:26:15', '2022-10-26 10:26:15'),
(34, 'Unisound (china)', NULL, NULL, NULL, NULL, 8, '', NULL, '2022-10-26 12:26:26', '2022-10-26 10:26:26'),
(35, 'synthesia (аватары, us)', NULL, NULL, NULL, NULL, 9, '', NULL, '2022-10-26 12:26:55', '2022-10-26 10:26:55'),
(36, 'hour one (аватары д бизнеса, Израиль)', NULL, NULL, NULL, NULL, 9, '', NULL, '2022-10-26 12:27:01', '2022-10-26 10:27:01'),
(37, 'sonatic +voice reproduction, us)', NULL, NULL, NULL, NULL, 9, '', NULL, '2022-10-26 12:27:18', '2022-10-26 10:27:18'),
(38, 'score system (china)', NULL, NULL, NULL, NULL, 10, '', NULL, '2022-10-26 12:27:40', '2022-10-26 10:27:40'),
(39, 'score system (singapour)', NULL, NULL, NULL, NULL, 10, '', NULL, '2022-10-26 12:27:57', '2022-10-26 10:27:57'),
(40, 'insurance listings (us)', NULL, NULL, NULL, NULL, 10, '', NULL, '2022-10-26 12:28:06', '2022-10-26 10:28:06'),
(41, 'платформа нти (ру) принятие мед решений', NULL, NULL, NULL, NULL, 11, '', NULL, '2022-10-26 12:28:39', '2022-10-26 10:28:39'),
(42, 'think Sono (диагностика тромбов (us)', NULL, NULL, NULL, NULL, 5, '', NULL, '2022-10-26 12:28:50', '2022-10-26 10:28:50');

-- --------------------------------------------------------

--
-- Table structure for table `symbols`
--

CREATE TABLE `symbols` (
  `id` int(3) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `id_blog` int(3) DEFAULT NULL,
  `svg` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `symbols`
--

INSERT INTO `symbols` (`id`, `name`, `id_blog`, `svg`) VALUES
(1, 'computer vision', 2, '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"30\" height=\"30\" fill=\"currentColor\" class=\"bi bi-eye\" viewBox=\"0 0 16 16\">\r\n  <path d=\"M16 8s-3-5.5-8-5.5S0 8 0 8s3 5.5 8 5.5S16 8 16 8zM1.173 8a13.133 13.133 0 0 1 1.66-2.043C4.12 4.668 5.88 3.5 8 3.5c2.12 0 3.879 1.168 5.168 2.457A13.133 13.133 0 0 1 14.828 8c-.058.087-.122.183-.195.288-.335.48-.83 1.12-1.465 1.755C11.879 11.332 10.119 12.5 8 12.5c-2.12 0-3.879-1.168-5.168-2.457A13.134 13.134 0 0 1 1.172 8z\"/>\r\n  <path d=\"M8 5.5a2.5 2.5 0 1 0 0 5 2.5 2.5 0 0 0 0-5zM4.5 8a3.5 3.5 0 1 1 7 0 3.5 3.5 0 0 1-7 0z\"/>\r\n</svg>'),
(2, 'speech recognition', 1, '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"30\" height=\"30\" fill=\"currentColor\" class=\"bi bi-ear\" viewBox=\"0 0 16 16\">\r\n  <path d=\"M8.5 1A4.5 4.5 0 0 0 4 5.5v7.047a2.453 2.453 0 0 0 4.75.861l.512-1.363a5.553 5.553 0 0 1 .816-1.46l2.008-2.581A4.34 4.34 0 0 0 8.66 1H8.5ZM3 5.5A5.5 5.5 0 0 1 8.5 0h.16a5.34 5.34 0 0 1 4.215 8.618l-2.008 2.581a4.555 4.555 0 0 0-.67 1.197l-.51 1.363A3.453 3.453 0 0 1 3 12.547V5.5ZM8.5 4A1.5 1.5 0 0 0 7 5.5v2.695c.112-.06.223-.123.332-.192.327-.208.577-.44.72-.727a.5.5 0 1 1 .895.448c-.256.513-.673.865-1.079 1.123A8.538 8.538 0 0 1 7 9.313V11.5a.5.5 0 0 1-1 0v-6a2.5 2.5 0 0 1 5 0V6a.5.5 0 0 1-1 0v-.5A1.5 1.5 0 0 0 8.5 4Z\"/>\r\n</svg>');

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `id` int(10) NOT NULL,
  `type` varchar(100) DEFAULT NULL,
  `description` varchar(150) DEFAULT NULL,
  `image` varchar(150) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `type`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'networked vehicles', NULL, NULL, '2022-10-25 10:07:44', '0000-00-00 00:00:00'),
(2, 'intelligent service robots', NULL, NULL, '2022-10-25 10:08:16', '0000-00-00 00:00:00'),
(3, 'video image identification systems/ BACKGROUND check', NULL, NULL, '2022-10-25 10:08:16', '0000-00-00 00:00:00'),
(4, 'neural network chips', NULL, NULL, '2022-10-25 10:33:20', '0000-00-00 00:00:00'),
(5, 'military', NULL, NULL, '2022-10-25 10:33:20', '0000-00-00 00:00:00'),
(6, 'intelligent manufacturing', NULL, NULL, '2022-10-25 10:33:41', '0000-00-00 00:00:00'),
(7, 'AGI AI Super computers', NULL, NULL, '2022-10-25 10:44:42', '0000-00-00 00:00:00'),
(8, 'Speech recognition', NULL, NULL, '2022-10-25 10:44:20', '0000-00-00 00:00:00'),
(9, 'intelligent next-generation internet', NULL, NULL, '2022-10-25 10:34:18', '0000-00-00 00:00:00'),
(10, 'social credit system', NULL, NULL, '2022-10-25 10:34:44', '0000-00-00 00:00:00'),
(11, 'medical', NULL, NULL, '2022-10-25 10:34:44', '0000-00-00 00:00:00');

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'katia', 'lif.rochel@gmail.com', NULL, '$2y$10$x6btNI/UygfTXypuBfngceuy70F5HO.U1ZYCDDG37b1hANN.knBEO', 'fqoTHJScqPVaMbpSibmZzAL2sTwUWaNHnQgxUy7AvMSrEferFxjwmJP9tydU', '2022-10-23 09:58:55', '2022-10-23 09:58:55'),
(4, 'num2937573krya', 'tysltjvb@gmailler.cf', NULL, '$2y$10$/tBTpCy7IZFjq4EUCapwvuyXqsiW6fqAy.p0Xcp7SK.mWTamrMluC', NULL, '2023-02-06 14:52:44', '2023-02-06 14:52:44'),
(5, 'Mefijwdihwdjwsjdhwjqsqodkwfk fjebfhjhdjwshfewifejqwwqfewjfewhgewu kfwejfwefhewgeuwh:jfefehfejfjehfie//NJjdshdjwfhwu оаипруафравгпшцурафцоварквшпругвыовапцушгысвыарршрпшц jcsafsafhawfjewoifhe ufhdfwjdhewifgewiufhjadwfewi swisstechglobal.com', 'al.b.ert.han.s.h.in.49@gmail.com', NULL, '$2y$10$2Uyedda2B8UimJ6YUki47eyg28YHySzpsw6mxMSAPd4Hx1qanfLLu', NULL, '2023-03-07 16:34:51', '2023-03-07 16:34:51'),
(6, 'Opfkeodjwihefjwdwhf ifefkqwjioehfuewfwejfksfhweo ifoejkfdpwjfweoihfiewfowfowejfi fjewifjweighjvmhfewifjoepfjpwijgiowrh feiqjfweijfoiwhguhfwkdwjewfgeruhgrujfweij hfiohewifohwuighewuh swisstechglobal.com', 'a.lb.ert.han.s.h.i.n.4.9@gmail.com', NULL, '$2y$10$jf8Saul2zhyHx5uKlPFNXuxMacpfO37IWtO899jtO4HGCoovu80zy', NULL, '2023-04-21 14:54:21', '2023-04-21 14:54:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `action_events`
--
ALTER TABLE `action_events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `action_events_actionable_type_actionable_id_index` (`actionable_type`,`actionable_id`),
  ADD KEY `action_events_batch_id_model_type_model_id_index` (`batch_id`,`model_type`,`model_id`),
  ADD KEY `action_events_user_id_index` (`user_id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nova_pending_trix_attachments`
--
ALTER TABLE `nova_pending_trix_attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nova_pending_trix_attachments_draft_id_index` (`draft_id`);

--
-- Indexes for table `nova_trix_attachments`
--
ALTER TABLE `nova_trix_attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nova_trix_attachments_attachable_type_attachable_id_index` (`attachable_type`,`attachable_id`),
  ADD KEY `nova_trix_attachments_url_index` (`url`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `symbols`
--
ALTER TABLE `symbols`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `action_events`
--
ALTER TABLE `action_events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `nova_pending_trix_attachments`
--
ALTER TABLE `nova_pending_trix_attachments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `nova_trix_attachments`
--
ALTER TABLE `nova_trix_attachments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `symbols`
--
ALTER TABLE `symbols`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
