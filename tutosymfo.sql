-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 19 juin 2024 à 08:49
-- Version du serveur : 8.3.0
-- Version de PHP : 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `tutosymfo`
--

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20240617122659', '2024-06-19 07:52:47', 15),
('DoctrineMigrations\\Version20240617125817', '2024-06-19 07:52:47', 29);

-- --------------------------------------------------------

--
-- Structure de la table `ingredient`
--

DROP TABLE IF EXISTS `ingredient`;
CREATE TABLE IF NOT EXISTS `ingredient` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ingredient`
--

INSERT INTO `ingredient` (`id`, `name`, `price`, `created_at`) VALUES
(1, 'quidem', 43, '2024-06-19 07:56:11'),
(2, 'unde', 82, '2024-06-19 07:56:11'),
(3, 'repudiandae', 65, '2024-06-19 07:56:11'),
(4, 'ipsa', 9, '2024-06-19 07:56:11'),
(5, 'repudiandae', 84, '2024-06-19 07:56:11'),
(6, 'nobis', 16, '2024-06-19 07:56:11'),
(7, 'vitae', 55, '2024-06-19 07:56:11'),
(8, 'debitis', 34, '2024-06-19 07:56:11'),
(9, 'enim', 9, '2024-06-19 07:56:11'),
(10, 'distinctio', 5, '2024-06-19 07:56:11'),
(11, 'dolores', 14, '2024-06-19 07:56:11'),
(12, 'quos', 68, '2024-06-19 07:56:11'),
(13, 'sint', 15, '2024-06-19 07:56:11'),
(14, 'nihil', 36, '2024-06-19 07:56:11'),
(15, 'hic', 82, '2024-06-19 07:56:11'),
(16, 'fuga', 52, '2024-06-19 07:56:11'),
(17, 'consequatur', 36, '2024-06-19 07:56:11'),
(18, 'facere', 48, '2024-06-19 07:56:11'),
(19, 'suscipit', 15, '2024-06-19 07:56:11'),
(20, 'dolore', 69, '2024-06-19 07:56:11'),
(21, 'animi', 74, '2024-06-19 07:56:11'),
(22, 'eos', 8, '2024-06-19 07:56:11'),
(23, 'ut', 55, '2024-06-19 07:56:11'),
(24, 'fuga', 67, '2024-06-19 07:56:11'),
(25, 'vitae', 57, '2024-06-19 07:56:11'),
(26, 'aut', 79, '2024-06-19 07:56:11'),
(27, 'omnis', 4, '2024-06-19 07:56:11'),
(28, 'est', 62, '2024-06-19 07:56:11'),
(29, 'unde', 19, '2024-06-19 07:56:11'),
(30, 'officia', 82, '2024-06-19 07:56:11'),
(31, 'neque', 46, '2024-06-19 07:56:11'),
(32, 'est', 69, '2024-06-19 07:56:11'),
(33, 'laudantium', 65, '2024-06-19 07:56:11'),
(34, 'rem', 51, '2024-06-19 07:56:11'),
(35, 'enim', 16, '2024-06-19 07:56:11'),
(36, 'ut', 54, '2024-06-19 07:56:11'),
(37, 'atque', 72, '2024-06-19 07:56:11'),
(38, 'omnis', 21, '2024-06-19 07:56:11'),
(39, 'quo', 92, '2024-06-19 07:56:11'),
(40, 'corporis', 36, '2024-06-19 07:56:11'),
(41, 'culpa', 75, '2024-06-19 07:56:11'),
(42, 'rerum', 38, '2024-06-19 07:56:11'),
(43, 'odio', 97, '2024-06-19 07:56:11'),
(44, 'omnis', 24, '2024-06-19 07:56:11'),
(45, 'animi', 60, '2024-06-19 07:56:11'),
(46, 'excepturi', 100, '2024-06-19 07:56:11'),
(47, 'repellendus', 43, '2024-06-19 07:56:11'),
(48, 'et', 52, '2024-06-19 07:56:11'),
(49, 'earum', 54, '2024-06-19 07:56:11'),
(50, 'et', 38, '2024-06-19 07:56:11'),
(51, 'carotte', 2, '2024-06-19 07:57:43');

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

DROP TABLE IF EXISTS `messenger_messages`;
CREATE TABLE IF NOT EXISTS `messenger_messages` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `available_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `delivered_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`id`),
  KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  KEY `IDX_75EA56E016BA31DB` (`delivered_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
