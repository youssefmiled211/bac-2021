-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 14 jan. 2024 à 23:12
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `bd21`
--

-- --------------------------------------------------------

--
-- Structure de la table `mesure`
--

CREATE TABLE `mesure` (
  `IdStation` int(11) NOT NULL,
  `Annee` int(11) NOT NULL,
  `Saison` varchar(9) NOT NULL,
  `Tempurateur` decimal(5,2) NOT NULL,
  `Pluie` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `mesure`
--

INSERT INTO `mesure` (`IdStation`, `Annee`, `Saison`, `Tempurateur`, `Pluie`) VALUES
(60715, 2018, 'Eté', 30.60, 24),
(60715, 2018, 'Hiver', 13.50, 150),
(60715, 2019, 'Printemps', 25.60, 80),
(60731, 2018, 'Eté', 33.60, 10),
(60731, 2018, 'Hiver', 17.60, 100),
(60731, 2019, 'Automne', 30.00, 11),
(60780, 2019, 'Eté', 42.30, 0),
(60780, 2019, 'Hiver', 16.60, 10);

-- --------------------------------------------------------

--
-- Structure de la table `station`
--

CREATE TABLE `station` (
  `IdStation` int(11) NOT NULL,
  `Nom` varchar(30) NOT NULL,
  `Ville` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `station`
--

INSERT INTO `station` (`IdStation`, `Nom`, `Ville`) VALUES
(60715, 'Carthage', 'Tunis'),
(60731, 'Enfidha-Aéroport', 'Sousse'),
(60780, 'El-Borma', 'Tataouine');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `mesure`
--
ALTER TABLE `mesure`
  ADD PRIMARY KEY (`IdStation`,`Annee`,`Saison`);

--
-- Index pour la table `station`
--
ALTER TABLE `station`
  ADD PRIMARY KEY (`IdStation`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `mesure`
--
ALTER TABLE `mesure`
  ADD CONSTRAINT `mesure_ibfk_1` FOREIGN KEY (`IdStation`) REFERENCES `station` (`IdStation`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
