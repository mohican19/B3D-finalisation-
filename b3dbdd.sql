-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le :  mer. 20 fév. 2019 à 16:32
-- Version du serveur :  5.7.24-0ubuntu0.18.04.1
-- Version de PHP :  7.2.10-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `b3dbdd`
--
CREATE DATABASE IF NOT EXISTS `b3dbdd` DEFAULT CHARACTER SET latin1 COLLATE latin1_general_ci;
USE `b3dbdd`;

-- --------------------------------------------------------

--
-- Structure de la table `dwb3d1_altimages`
--

DROP TABLE IF EXISTS `dwb3d1_altimages`;
CREATE TABLE `dwb3d1_altimages` (
  `ID` smallint(6) NOT NULL,
  `Francais` longtext COLLATE latin1_general_ci NOT NULL,
  `Anglais` longtext COLLATE latin1_general_ci NOT NULL,
  `Espagnol` longtext COLLATE latin1_general_ci NOT NULL,
  `Allemand` longtext COLLATE latin1_general_ci NOT NULL,
  `image` longtext COLLATE latin1_general_ci,
  `Categorie` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `dwb3d1_blockcontact`
--

DROP TABLE IF EXISTS `dwb3d1_blockcontact`;
CREATE TABLE `dwb3d1_blockcontact` (
  `ID` int(11) NOT NULL,
  `Francais` longtext COLLATE latin1_general_ci NOT NULL,
  `Anglais` longtext COLLATE latin1_general_ci NOT NULL,
  `Espagnol` longtext COLLATE latin1_general_ci NOT NULL,
  `Allemand` longtext COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `dwb3d1_categories`
--

DROP TABLE IF EXISTS `dwb3d1_categories`;
CREATE TABLE `dwb3d1_categories` (
  `ID` int(11) NOT NULL,
  `Categorie` varchar(64) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Déchargement des données de la table `dwb3d1_categories`
--

INSERT INTO `dwb3d1_categories` (`ID`, `Categorie`) VALUES
(1, 'header'),
(2, 'footer'),
(3, 'societe'),
(4, 'formcontact'),
(5, 'blockcontact'),
(6, 'rgpd'),
(7, 'accacia'),
(8, 'chataigner'),
(9, 'pin'),
(10, 'bois de chauffe');

-- --------------------------------------------------------

--
-- Structure de la table `dwb3d1_erreurs`
--

DROP TABLE IF EXISTS `dwb3d1_erreurs`;
CREATE TABLE `dwb3d1_erreurs` (
  `ID` int(11) NOT NULL,
  `Categorie` int(11) NOT NULL,
  `Francais` text COLLATE latin1_general_ci NOT NULL,
  `Anglais` text COLLATE latin1_general_ci NOT NULL,
  `Allemand` text COLLATE latin1_general_ci NOT NULL,
  `Espagnol` text COLLATE latin1_general_ci NOT NULL,
  `Varkey` varchar(64) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Déchargement des données de la table `dwb3d1_erreurs`
--

INSERT INTO `dwb3d1_erreurs` (`ID`, `Categorie`, `Francais`, `Anglais`, `Allemand`, `Espagnol`, `Varkey`) VALUES
(1, 4, 'Vous devez indiquer votre nom', '', '', '', 'last-name'),
(2, 4, 'Vous devez indiquer un email valide', '', '', '', 'email'),
(3, 4, 'Vous devez indiquer votre message', '', '', '', 'message'),
(4, 4, 'Vous devez accepter les conditions d\\\'utilisations', '', '', '', 'check-rgpd'),
(5, 4, 'Numéro de téléphone invalide', '', '', '', 'phone'),
(6, 4, 'Erreur à l\\\'envoie du formulaire', '', '', '', ''),
(7, 4, 'Une erreur est survenue lors de l\\\'envois du mail', '', '', '', ''),
(8, 4, 'Merci à vous.', '', '', '', ''),
(9, 4, 'Votre demande nous a bien été envoyé !', '', '', '', ''),
(10, 4, 'Vous devez indiquer votre prénom', '', '', '', 'first-name');

-- --------------------------------------------------------

--
-- Structure de la table `dwb3d1_footer`
--

DROP TABLE IF EXISTS `dwb3d1_footer`;
CREATE TABLE `dwb3d1_footer` (
  `ID` smallint(6) NOT NULL,
  `Francais` longtext COLLATE latin1_general_ci NOT NULL,
  `Anglais` longtext COLLATE latin1_general_ci NOT NULL,
  `Espagnol` longtext COLLATE latin1_general_ci NOT NULL,
  `Allemand` longtext COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `dwb3d1_formcontact`
--

DROP TABLE IF EXISTS `dwb3d1_formcontact`;
CREATE TABLE `dwb3d1_formcontact` (
  `ID` int(11) NOT NULL,
  `Francais` text COLLATE latin1_general_ci NOT NULL,
  `Anglais` text COLLATE latin1_general_ci NOT NULL,
  `Espagnol` text COLLATE latin1_general_ci NOT NULL,
  `Allemand` text COLLATE latin1_general_ci NOT NULL,
  `Varkey` varchar(64) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Déchargement des données de la table `dwb3d1_formcontact`
--

INSERT INTO `dwb3d1_formcontact` (`ID`, `Francais`, `Anglais`, `Espagnol`, `Allemand`, `Varkey`) VALUES
(1, 'Prénom', '', '', '', 'firstName'),
(2, 'Nom', '', '', '', 'name'),
(3, 'Téléphone', '', '', '', 'phone'),
(4, 'Message', '', '', '', 'msg'),
(5, 'J’ai lu et j\'accepte la politique de confidentialité du site', '', '', '', 'rgpd'),
(6, 'Envoyer', 'Submit', '', '', 'submit'),
(7, 'Adresse mail', '', '', '', 'email'),
(8, 'B3D | Contact', '', '', '', 'title'),
(20, 'C\'est informations sont requises', '', '', '', 'requireText'),
(21, 'Votre prénom', '', '', '', 'firstNameHolder'),
(22, 'Votre Nom', '', '', '', 'nameHolder'),
(23, 'Votre adresse mail', '', '', '', 'emailHolder'),
(24, 'Votre téléphone', '', '', '', 'phoneHolder'),
(25, 'Votre message', '', '', '', 'msgHolder');

-- --------------------------------------------------------

--
-- Structure de la table `dwb3d1_header`
--

DROP TABLE IF EXISTS `dwb3d1_header`;
CREATE TABLE `dwb3d1_header` (
  `ID` smallint(6) NOT NULL,
  `Francais` longtext COLLATE latin1_general_ci NOT NULL,
  `Anglais` longtext COLLATE latin1_general_ci NOT NULL,
  `Espagnol` longtext COLLATE latin1_general_ci NOT NULL,
  `Allemand` longtext COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `dwb3d1_legal`
--

DROP TABLE IF EXISTS `dwb3d1_legal`;
CREATE TABLE `dwb3d1_legal` (
  `ID` int(11) NOT NULL,
  `Francais` longtext COLLATE latin1_general_ci NOT NULL,
  `Anglais` longtext COLLATE latin1_general_ci NOT NULL,
  `Espagnol` longtext COLLATE latin1_general_ci NOT NULL,
  `Allemand` longtext COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `dwb3d1_produits`
--

DROP TABLE IF EXISTS `dwb3d1_produits`;
CREATE TABLE `dwb3d1_produits` (
  `ID` int(11) NOT NULL,
  `Francais` longtext COLLATE latin1_general_ci NOT NULL,
  `Anglais` longtext COLLATE latin1_general_ci NOT NULL,
  `Espagnol` longtext COLLATE latin1_general_ci NOT NULL,
  `Allemand` longtext COLLATE latin1_general_ci NOT NULL,
  `Categorie` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `dwb3d1_societe`
--

DROP TABLE IF EXISTS `dwb3d1_societe`;
CREATE TABLE `dwb3d1_societe` (
  `ID` int(11) NOT NULL,
  `Francais` longtext COLLATE latin1_general_ci NOT NULL,
  `Anglais` longtext COLLATE latin1_general_ci NOT NULL,
  `Espagnol` longtext COLLATE latin1_general_ci NOT NULL,
  `Allemand` longtext COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `dwb3d1_altimages`
--
ALTER TABLE `dwb3d1_altimages`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `dwb3d1_blockcontact`
--
ALTER TABLE `dwb3d1_blockcontact`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `dwb3d1_categories`
--
ALTER TABLE `dwb3d1_categories`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `dwb3d1_erreurs`
--
ALTER TABLE `dwb3d1_erreurs`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_categorie_erreurs` (`Categorie`);

--
-- Index pour la table `dwb3d1_footer`
--
ALTER TABLE `dwb3d1_footer`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `dwb3d1_formcontact`
--
ALTER TABLE `dwb3d1_formcontact`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `dwb3d1_header`
--
ALTER TABLE `dwb3d1_header`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `dwb3d1_legal`
--
ALTER TABLE `dwb3d1_legal`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `dwb3d1_produits`
--
ALTER TABLE `dwb3d1_produits`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `dwb3d1_societe`
--
ALTER TABLE `dwb3d1_societe`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `dwb3d1_altimages`
--
ALTER TABLE `dwb3d1_altimages`
  MODIFY `ID` smallint(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `dwb3d1_blockcontact`
--
ALTER TABLE `dwb3d1_blockcontact`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `dwb3d1_categories`
--
ALTER TABLE `dwb3d1_categories`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `dwb3d1_erreurs`
--
ALTER TABLE `dwb3d1_erreurs`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `dwb3d1_footer`
--
ALTER TABLE `dwb3d1_footer`
  MODIFY `ID` smallint(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `dwb3d1_formcontact`
--
ALTER TABLE `dwb3d1_formcontact`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT pour la table `dwb3d1_header`
--
ALTER TABLE `dwb3d1_header`
  MODIFY `ID` smallint(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `dwb3d1_legal`
--
ALTER TABLE `dwb3d1_legal`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `dwb3d1_produits`
--
ALTER TABLE `dwb3d1_produits`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `dwb3d1_societe`
--
ALTER TABLE `dwb3d1_societe`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `dwb3d1_erreurs`
--
ALTER TABLE `dwb3d1_erreurs`
  ADD CONSTRAINT `fk_categorie_erreurs` FOREIGN KEY (`Categorie`) REFERENCES `dwb3d1_categories` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
