-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mar. 26 fév. 2019 à 12:41
-- Version du serveur :  5.7.24
-- Version de PHP :  7.2.14

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

-- --------------------------------------------------------

--
-- Structure de la table `dwb3d1_altimages`
--

DROP TABLE IF EXISTS `dwb3d1_altimages`;
CREATE TABLE IF NOT EXISTS `dwb3d1_altimages` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Francais` text NOT NULL,
  `Anglais` text NOT NULL,
  `Espagnol` text NOT NULL,
  `Allemand` text NOT NULL,
  `image` text,
  `Categorie` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_categorie_altimages` (`Categorie`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `dwb3d1_altimages`
--

INSERT INTO `dwb3d1_altimages` (`ID`, `Francais`, `Anglais`, `Espagnol`, `Allemand`, `image`, `Categorie`) VALUES
(1, 'Trombine', '', '', '', './images/societe-portrait.jpg', 3),
(2, 'Trombine', '', '', '', './images/societe-produit.jpg', 3),
(3, 'Trombine', '', '', '', './images/societe-savoirFaire.jpg', 3);

-- --------------------------------------------------------

--
-- Structure de la table `dwb3d1_blockcontact`
--

DROP TABLE IF EXISTS `dwb3d1_blockcontact`;
CREATE TABLE IF NOT EXISTS `dwb3d1_blockcontact` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Francais` longtext NOT NULL,
  `Anglais` longtext NOT NULL,
  `Espagnol` longtext NOT NULL,
  `Allemand` longtext NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `dwb3d1_categories`
--

DROP TABLE IF EXISTS `dwb3d1_categories`;
CREATE TABLE IF NOT EXISTS `dwb3d1_categories` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Categorie` varchar(64) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

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
CREATE TABLE IF NOT EXISTS `dwb3d1_erreurs` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Categorie` int(11) NOT NULL,
  `Francais` mediumtext NOT NULL,
  `Anglais` mediumtext NOT NULL,
  `Allemand` mediumtext NOT NULL,
  `Espagnol` mediumtext NOT NULL,
  `Varkey` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_categorie_erreurs` (`Categorie`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

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
CREATE TABLE IF NOT EXISTS `dwb3d1_footer` (
  `ID` smallint(6) NOT NULL AUTO_INCREMENT,
  `Francais` longtext NOT NULL,
  `Anglais` longtext NOT NULL,
  `Espagnol` longtext NOT NULL,
  `Allemand` longtext NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `dwb3d1_formcontact`
--

DROP TABLE IF EXISTS `dwb3d1_formcontact`;
CREATE TABLE IF NOT EXISTS `dwb3d1_formcontact` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Francais` mediumtext NOT NULL,
  `Anglais` mediumtext NOT NULL,
  `Espagnol` mediumtext NOT NULL,
  `Allemand` mediumtext NOT NULL,
  `Varkey` varchar(64) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

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
CREATE TABLE IF NOT EXISTS `dwb3d1_header` (
  `ID` smallint(6) NOT NULL AUTO_INCREMENT,
  `Francais` longtext NOT NULL,
  `Anglais` longtext NOT NULL,
  `Espagnol` longtext NOT NULL,
  `Allemand` longtext NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `dwb3d1_legal`
--

DROP TABLE IF EXISTS `dwb3d1_legal`;
CREATE TABLE IF NOT EXISTS `dwb3d1_legal` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Francais` longtext NOT NULL,
  `Anglais` longtext NOT NULL,
  `Espagnol` longtext NOT NULL,
  `Allemand` longtext NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `dwb3d1_produits`
--

DROP TABLE IF EXISTS `dwb3d1_produits`;
CREATE TABLE IF NOT EXISTS `dwb3d1_produits` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Francais` longtext NOT NULL,
  `Anglais` longtext NOT NULL,
  `Espagnol` longtext NOT NULL,
  `Allemand` longtext NOT NULL,
  `Categorie` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `dwb3d1_societe`
--

DROP TABLE IF EXISTS `dwb3d1_societe`;
CREATE TABLE IF NOT EXISTS `dwb3d1_societe` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Francais` text NOT NULL,
  `Anglais` text NOT NULL,
  `Espagnol` text NOT NULL,
  `Allemand` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `dwb3d1_societe`
--

INSERT INTO `dwb3d1_societe` (`ID`, `Francais`, `Anglais`, `Espagnol`, `Allemand`) VALUES
(1, 'Nos produits', '', '', ''),
(2, 'Nos piquets et rondins sont produits à partir de grumes exploitées dans un rayon de 70 km. Le pin provient de coupes d’éclaircies plantées après la tempête de 1999.<br><br> Ces bois juvéniles utilisés généralement pour la mise en place de filets anti-grêle ou le palissage comportent une très faible proportion de bois de cœur leurs donnant une très bonne aptitude au traitement autoclave.<br><br> Nos grumes d’acacia comportent une très faible quantité d’aubier et des cernes d’accroissement serrées conférant au bois une excellente durabilité naturelle et une très bonne résistance mécanique.<br><br> L’ensemble de nos bois proviennent de coupes gérées durablement et bénéficie généralement de la certification PEFC.', '', '', ''),
(3, 'Notre histoire', '', '', ''),
(4, 'Notre société est située à Poussignac dans le Lot-et-Garonne aux portes du massif landais et au plus prés de la ressource forestière. Dans les années 80, mon père y a construit une scierie de pin maritime fermée en 2015. En 2018, après avoir travaillé dans différents organismes et sociétés de la filière bois, j’ai choisi de revenir sur le site familial pour installer une unité de fabrication de piquets bois.<br> Fort de 20 ans d’expérience dans la ﬁlière bois, j’ai souhaité faire un retour aux sources en m’installant dans l’ancienne scierie familiale située au plus près de la ressource forestière.<br>Je me suis spécialisé dans la fabrication de piquets et rondins d’acacia, pins ou châtaignier.<br> Mon outil de production souple et flexible permet de produire des piquets ou rondins fendus ou ronds de différentes dimensions.<br> Destinés aux vignerons, paysagistes, arboriculteurs, ou tout simplement aux particuliers désireux de créer une clôture ou un aménagement de jardin, les piquets ou rondins B3D sont une valeur sûre.', '', '', ''),
(5, 'Notre savoir-faire', '', '', ''),
(6, 'La présence d’une diversité d’essences de bois locaux a orienté mon choix sur un outil de transformation souple et flexible permettant de produire des piquets acacia, pin et châtaignier de différentes dimensions. Suivant l’essence et le diamètre des bois transformés deux opérations sont réalisées.<br><br> Une opération de planage permettant d’apporter un état de surface raboté et lisse aux bois ronds ou une opération de fente permettant de suivre le fil du bois et conserver la résistance mécanique du bois et éviter les déformations de séchage. En mesure de précaution sanitaire une opération d’écorçage est réalisée pour chaque essence de bois.<br><br> Cette opération permet d’éviter de transporter d’éventuels parasites comme des insectes xylophages sur le site de la clientèle. La satisfaction client est notre objectif premier et un contrôle de la qualité du produit est réalisé à chaque étape de transformation.', '', '', '');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `dwb3d1_altimages`
--
ALTER TABLE `dwb3d1_altimages`
  ADD CONSTRAINT `fk_categorie_altimages` FOREIGN KEY (`Categorie`) REFERENCES `dwb3d1_categories` (`ID`);

--
-- Contraintes pour la table `dwb3d1_erreurs`
--
ALTER TABLE `dwb3d1_erreurs`
  ADD CONSTRAINT `fk_categorie_erreurs` FOREIGN KEY (`Categorie`) REFERENCES `dwb3d1_categories` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
