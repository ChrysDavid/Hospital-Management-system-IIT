-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 11 mars 2024 à 10:09
-- Version du serveur : 8.2.0
-- Version de PHP : 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `hospital_2`
--

-- --------------------------------------------------------

--
-- Structure de la table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
CREATE TABLE IF NOT EXISTS `appointment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` int NOT NULL,
  `fullName` varchar(255) NOT NULL,
  `gender` varchar(40) NOT NULL,
  `age` varchar(10) NOT NULL,
  `appoinDate` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phNo` varchar(250) NOT NULL,
  `diseases` varchar(255) NOT NULL,
  `doctorId` int NOT NULL,
  `address` varchar(255) NOT NULL,
  `status` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `appointment`
--

INSERT INTO `appointment` (`id`, `userId`, `fullName`, `gender`, `age`, `appoinDate`, `email`, `phNo`, `diseases`, `doctorId`, `address`, `status`) VALUES
(3, 4, 'Allah Boniface', 'male', '24', '2023-11-12', 'boniface@gmail.com', '0123654789', 'Carie', 3, 'Abobo Baoule', 'Pending'),
(4, 4, 'Allah Boniface', 'male', '54', '2023-11-22', 'boniface@gmail.com', '25454546565', 'Tumeur', 7, 'jdqzk', 'Pending'),
(5, 5, 'ALLANI', 'male', '52', '2023-11-23', 'allani@gmail.com', '11111111', 'DIABETE', 8, 'ABIDJAN', 'Pending'),
(6, 6, 'bamba fulgence', 'homme', '23', '2000-12-22', 'bambafulgence622@gmail.com', '0789461799', 'rhume', 3, 'yopougon terminus 40', 'Pending');

-- --------------------------------------------------------

--
-- Structure de la table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
CREATE TABLE IF NOT EXISTS `doctor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fullName` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `qualification` varchar(255) NOT NULL,
  `specialist` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobNo` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `doctor`
--

INSERT INTO `doctor` (`id`, `fullName`, `dob`, `qualification`, `specialist`, `email`, `mobNo`, `password`) VALUES
(3, 'Konan Luc Martial', '2023-11-11', 'Medcin', 'odontologie', 'luc@gmail.com', '55051466', '1234'),
(7, 'Luc', '2023-11-13', 'Medcin', 'chirurgie vasculaire', 'luc1@gmail.com', '0745698712', '1234'),
(8, 'KONAN', '2023-11-16', 'MASTER', 'geriatrie', 'hyacinthekonan2000@yahoo.com', '0142278041', '123');

-- --------------------------------------------------------

--
-- Structure de la table `specialist`
--

DROP TABLE IF EXISTS `specialist`;
CREATE TABLE IF NOT EXISTS `specialist` (
  `id` int NOT NULL AUTO_INCREMENT,
  `spec_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `specialist`
--

INSERT INTO `specialist` (`id`, `spec_name`) VALUES
(1, 'immunologie'),
(2, 'anesthesiologie'),
(3, 'andrologie'),
(4, 'cardiologie'),
(5, 'chirurgie cardiaque'),
(6, 'chirurgie esthetique, plastique et reconstructive'),
(7, 'chirurgie maxillo-faciale'),
(8, 'chirurgie generale'),
(9, 'chirurgie pediatrique'),
(10, 'chirurgie thoracique'),
(11, 'chirurgie vasculaire'),
(12, 'neurochirurgie'),
(13, 'dermatologie'),
(14, 'endocrinologie'),
(15, 'gastro-enterologie'),
(16, 'geriatrie'),
(17, 'gynecologie'),
(18, 'hematologie'),
(19, 'hepatologie'),
(20, 'infectiologie'),
(21, 'medecine aigue'),
(22, 'medecine du travail'),
(23, 'medecine general'),
(24, 'medecine interne'),
(25, 'medecine nucleaire'),
(26, 'medecine palliative'),
(27, 'medecine physique'),
(28, 'medecine preventive'),
(29, 'neonatologie'),
(30, 'odontologie'),
(31, 'neurologie'),
(32, 'oncologie'),
(33, 'obstetrique'),
(34, 'ophtalmologie'),
(35, 'orthopedie'),
(36, 'Oto-rhino-laryngologie'),
(37, 'pediatrie'),
(38, 'pneumologie'),
(39, 'psychiatrie'),
(40, 'radiologie'),
(41, 'radiotherapie'),
(42, 'rhumatologie'),
(43, 'urologie');

-- --------------------------------------------------------

--
-- Structure de la table `user_dtls`
--

DROP TABLE IF EXISTS `user_dtls`;
CREATE TABLE IF NOT EXISTS `user_dtls` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fullName` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `user_dtls`
--

INSERT INTO `user_dtls` (`id`, `fullName`, `email`, `password`) VALUES
(4, 'Allah Boniface', 'boniface@gmail.com', '1234'),
(5, 'ALLANI', 'allani@gmail.com', '123'),
(6, 'bamba fulgence', 'bambafulgence622@gmail.com', '11017762lL'),
(7, 'IBRAHIM DIARRASSOUBA', 'ibradi.dev@gmail.com', 'merci MAMAN56'),
(8, 'KONAN', 'konan@yahoo.com', '123'),
(10, 'Brou', 'brou@gmail.com', '147');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
