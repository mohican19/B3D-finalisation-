-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mer. 27 fév. 2019 à 15:39
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
(1, 'Portrait', '', '', '', './images/societe-portrait.jpg', 3),
(2, 'Produit', '', '', '', './images/societe-produit.jpg', 3),
(3, 'Savoir-faire', '', '', '', './images/societe-savoirFaire.jpg', 3);

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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `dwb3d1_blockcontact`
--

INSERT INTO `dwb3d1_blockcontact` (`ID`, `Francais`, `Anglais`, `Espagnol`, `Allemand`) VALUES
(1, 'Contact', '', '', ''),
(2, 'Adresse', '', '', ''),
(3, 'B3D \\\"L\'intendant\\\" <br>47700 Poussignac', '', '', ''),
(4, 'Téléphone', '', '', ''),
(5, '+33 (0)6 74 90 65 96', '', '', ''),
(6, 'Horaires', '', '', ''),
(7, 'Du lundi au vendredi<br>8h - 12h / 14h - 18h<br>Sauf le samedi 9h - 12h', '', '', ''),
(8, 'Email', '', '', ''),
(9, 'julien.procedes@orange.fr', '', '', '');

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `dwb3d1_footer`
--

INSERT INTO `dwb3d1_footer` (`ID`, `Francais`, `Anglais`, `Espagnol`, `Allemand`) VALUES
(1, 'B3D, \". date(\'Y\') .\". Tous droits réservés', '', '', ''),
(2, 'Site développé par : ', '', '', ''),
(3, 'Mentions légales', '', '', ''),
(4, 'images/logo_blanc_100.png', '', '', '');

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
(1, 'Prénom', 'First name', 'Primer nombre', 'Vorname', 'firstName'),
(2, 'Nom', 'Name', 'Apellido', 'Name', 'name'),
(3, 'Téléphone', 'Phone', 'Teléfono', 'Telefon', 'phone'),
(4, 'Message', 'Message', 'mensaje', 'Nachricht', 'msg'),
(5, 'J’ai lu et j\'accepte la politique de confidentialité du site', 'I have read and accept the site\'s privacy policy', 'He leído y acepto la política de privacidad del sitio.', 'Ich habe die Datenschutzbestimmungen der Website gelesen und akzeptiere sie', 'rgpd'),
(6, 'Envoyer', 'Submit', 'Enviar a', 'Senden', 'submit'),
(7, 'Adresse mail', 'Mail address', 'Correo electrónico', 'E-Mail-Adresse', 'email'),
(8, 'B3D | Contact', 'B3D | Contact', 'B3D | Contactar', 'B3D | Kontakt', 'title'),
(20, 'Ces informations sont requises', 'These informations are required', 'Esta informacion es requerida', 'Diese Informationen sind erforderlich', 'requireText'),
(21, 'Votre prénom', 'Your first name', 'Vuestro nombre', 'Dein Vorname', 'firstNameHolder'),
(22, 'Votre Nom', 'Your name', 'Su nombre', 'Dein Name', 'nameHolder'),
(23, 'Votre adresse mail', 'Your Mail adress', 'Su correo electrónico', 'Dein E-Mail-Adresse', 'emailHolder'),
(24, 'Votre téléphone', 'Your phone number', 'Su teléfono', 'Dein telefon', 'phoneHolder'),
(25, 'Votre message', 'Your message', 'Su mensaje', 'Dein nachricht', 'msgHolder');

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `dwb3d1_header`
--

INSERT INTO `dwb3d1_header` (`ID`, `Francais`, `Anglais`, `Espagnol`, `Allemand`) VALUES
(1, 'Société', '', '', ''),
(2, 'Produits', '', '', ''),
(3, 'Chataignier', '', '', ''),
(4, 'Acacia', '', '', ''),
(5, 'Pin', '', '', ''),
(6, 'Bois de Feu', '', '', ''),
(7, 'Contact', '', '', '');

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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `dwb3d1_legal`
--

INSERT INTO `dwb3d1_legal` (`ID`, `Francais`, `Anglais`, `Espagnol`, `Allemand`) VALUES
(1, 'Conditions générales d\'utilisation du site B3D', '', '', ''),
(2, 'ARTICLE 1 : Objet', '', '', ''),
(3, 'Les présentes « conditions générales d\'utilisation » ont pour objet l\'encadrement juridique de l’utilisation du site B3D et de ses services.<br>Ce contrat est conclu entre :<br>Le gérant du site internet, ci-après désigné « l’Éditeur »,<br>Toute personne physique ou morale souhaitant accéder au site et à ses services, ci-après appelé « l’Utilisateur ».<br>Les conditions générales d\'utilisation doivent être acceptées par tout Utilisateur, et son accès au site vaut acceptation de ces conditions.', '', '', ''),
(4, 'ARTICLE 2 : Mentions légales', '', '', ''),
(5, 'Pour les personnes morales :<br><br>Le site B3D est édité par la société B3D, SARL à associé unique au capital de 10 000 €, dont le siège social est situé à L\'intendant, 47700 Poussignac.<br>La société est représentée par Mr Procedes Julien, Marc.<br><br>Pour les personnes physiques : <br><br>Le site B3D est édité par la société B3D, SARL à associé unique au capital de 10 000 €, dont le siège social est situé à L\'intendant, 47700 Poussignac.<br>La société est représentée par Mr Procedes Julien, Marc.', '', '', ''),
(6, 'ARTICLE 3 : accès aux services', '', '', ''),
(7, 'Tout Utilisateur ayant accès a internet peut accéder gratuitement et depuis n’importe où au site. Les frais supportés par l’Utilisateur pour y accéder (connexion internet, matériel informatique, etc.) ne sont pas à la charge de l’Éditeur.<br>Le site et ses différents services peuvent être interrompus ou suspendus par l’Éditeur, notamment à l’occasion d’une maintenance, sans obligation de préavis ou de justification.', '', '', ''),
(8, 'ARTICLE 4 : Responsabilité de l’Éditeur', '', '', ''),
(9, 'Tout dysfonctionnement du serveur ou du réseau ne peut engager la responsabilité de l’Éditeur.<br>De même, la responsabilité du site ne peut être engagée en cas de force majeure ou du fait imprévisible et insurmontable d\'un tiers.<br>B3D s\'engage à mettre en œuvre tous les moyens nécessaires pour garantir la sécurité et la confidentialité des données. Toutefois, il n’apporte pas une garantie de sécurité totale.<br>L’Éditeur se réserve la faculté d’une non-garantie de la fiabilité des sources, bien que les informations diffusées su le site soient réputées fiables.', '', '', ''),
(10, 'ARTICLE 5 : Propriété intellectuelle', '', '', ''),
(11, 'Les contenus du site B3D (logos, textes, éléments graphiques, vidéos, etc.) son protégés par le droit d’auteur, en vertu du Code de la propriété intellectuelle.<br>L’Utilisateur devra obtenir l’autorisation de l’éditeur du site avant toute reproduction, copie ou publication de ces différents contenus.<br>Ces derniers peuvent être utilisés par les utilisateurs à des fins privées ; tout usage commercial est interdit.', '', '', ''),
(12, 'ARTICLE 6 : Données personnelles', '', '', ''),
(13, 'L’Utilisateur doit obligatoirement fournir son adresse é-mail pour procéder à une demande de contact ou de renseignements. <br>L’adresse électronique (e-mail) de l’utilisateur pourra notamment être utilisée par le site B3D pour la communication d’informations diverses et la gestion des commandes et des réponses par e-mail.<br>B3D garantie le respect de la vie privée de l’utilisateur, conformément à la loi n°78-17 du 6 janvier 1978 relative à l\'informatique, aux fichiers et aux libertés.<br>Le site est déclaré auprès de la CNIL sous le numéro suivant : XXXX.<br>En vertu des articles 39 et 40 de la loi en date du 6 janvier 1978, l\'Utilisateur dispose d\'un droit d\'accès, de rectification, de suppression et d\'opposition de ses données personnelles. <br>L\'Utilisateur exerce ce droit via :<br>+ Un formulaire de contact<br>+ Par voie postale à l\'adresse :<br>B3D<br>L\'intendant,<br>47700 Poussignac.', '', '', ''),
(14, 'ARTICLE 7 : Liens hypertextes', '', '', ''),
(15, 'Les domaines vers lesquels mènent les liens hypertextes présents sur le site n’engagent pas la responsabilité de l’Éditeur de B3D, qui n’a pas de contrôle sur ces liens.<br>Il est possible pour un tiers de créer un lien vers une page du site B3D sans autorisation expresse de l’éditeur.', '', '', ''),
(16, 'ARTICLE 8 : Évolution des conditions générales d’utilisation', '', '', ''),
(17, 'Le site B3D se réserve le droit de modifier les clauses de ces conditions générales d’utilisation à tout moment et sans justification.', '', '', ''),
(18, 'ARTICLE 9 : Droit applicable et juridiction compétente', '', '', ''),
(19, 'Le présent contrat dépend de la législation française.<br>En cas de litige non résolu à l’amiable entre l’Utilisateur et l’Éditeur, les tribunaux de Cahors sont compétents pour régler le contentieux.', '', '', '');

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
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `dwb3d1_produits`
--

INSERT INTO `dwb3d1_produits` (`ID`, `Francais`, `Anglais`, `Espagnol`, `Allemand`, `Categorie`) VALUES
(1, 'Piquets en châtaignier', '', '', '', 8),
(2, 'Description du produit', '', '', '', 8),
(3, 'Moins durable dans le temps que l’acacia, le châtaignier en reste néanmoins une essence imputrescible grâce à sa présence d’acide tanique.</br></br>L’ensemble de nos produits châtaignier sont écorcés pour apporter plus d’esthétique et de propreté aux piquets mais surtout pour éviter de transporter des parasites sur le site de la clientèle. Nos piquets châtaignier sont fendus ou planés et une pointe carrée d’une surface comprise entre 1 et 1,5 cm² est réalisée gros bout.</br></br>L’opération de fente permet au bois de conserver sa résistance mécanique et limiter les déformations de séchage.', '', '', '', 8),
(4, 'Voir la fiche détaillée', '', '', '', 8),
(5, 'Longueurs', '', '', '', 8),
(6, '2 M 00', '', '', '', 8),
(7, '2 M 30', '', '', '', 8),
(8, '2 M 50', '', '', '', 8),
(9, 'Périmètres fin bout', '', '', '', 8),
(10, '24/29 cm', '', '', '', 8),
(11, '130 pièces/palettes', '', '', '', 8),
(12, '28cm et +', '', '', '', 8),
(13, '110 pièces/palettes', '', '', '', 8),
(14, 'Piquets en acacia', '', '', '', 7),
(15, 'Description du produit', '', '', '', 7),
(16, 'L’ensemble de nos produits acacia sont écorcés pour apporter plus d’esthétique et de propreté aux piquets mais surtout pour éviter de transporter des parasites.\r\n\r\nNos piquets acacia sont fendus ou planés et une pointe carrée d’une surface comprise entre 1 et 1,5 cm2 est réalisée gros bout.\r\n\r\nL’opération de fente permet au bois de conserver sa résistance mécanique et limiter les déformations de séchage.', '', '', '', 7),
(17, 'Voir la fiche détaillée', '', '', '', 7),
(18, 'Piquets fendus', '', '', '', 7),
(19, 'Longueurs', '', '', '', 7),
(20, '1 M 40', '', '', '', 7),
(21, '1 M 80', '', '', '', 7),
(22, '2 M 00', '', '', '', 7),
(23, '2 M 30', '', '', '', 7),
(24, '2 M 50', '', '', '', 7),
(25, 'Périmètres bout fin', '', '', '', 7),
(26, '19/23 cm', '', '', '', 7),
(27, '160 pièces / palette', '', '', '', 7),
(28, '23/26 cm', '', '', '', 7),
(29, '150 pièces / palette', '', '', '', 7),
(30, '26/29 cm', '', '', '', 7),
(31, '130 pieces / palette', '', '', '', 7),
(32, '29 cm et plus', '', '', '', 7),
(33, '110 pieces / palette', '', '', '', 7),
(34, 'Piquets ronds', '', '', '', 7),
(35, 'Longueurs', '', '', '', 7),
(36, '1 M 80', '', '', '', 7),
(37, '2 M 00', '', '', '', 7),
(38, '2 M 30', '', '', '', 7),
(39, '2 M 50', '', '', '', 7),
(40, '3 M 00', '', '', '', 7),
(41, '4 M 00', '', '', '', 7),
(42, 'Diamètres bout fin', '', '', '', 7),
(43, '6/8 cm', '', '', '', 7),
(44, '80 pièces / palette', '', '', '', 7),
(45, '8/10 cm', '', '', '', 7),
(46, '71 pièces / palette', '', '', '', 7),
(47, '10/12 cm', '', '', '', 7),
(48, '56 pièces / palette', '', '', '', 7),
(49, '12/15 cm', '', '', '', 7),
(50, '42 pièces / palette', '', '', '', 7),
(51, 'Piquets en pin', '', '', '', 9),
(52, 'Description du produit', '', '', '', 9),
(53, 'Nos piquets et poteaux pins sont planés et une pointe carrée d’une surface comprise entre 1 et 1,5 cm2 est réalisée gros bout.\r\n\r\nLa qualité de nos bois est conforme aux spécifications de la norme NF B 50-100-3 pour une classe d’emploi classe IV après avoir subi un traitement en autoclave suivant le procédé Bethell vide et pression 12 bars dans une station certifiée CTB B+.\r\n\r\nLa proportion de bois de cœur présente dans nos pins est faible ce qui permet une pénétration et une rétention de produit de préservation optimum pour longévité accrue de nos piquets et poteaux.', '', '', '', 9),
(54, 'Voir la fiche détaillée', '', '', '', 9),
(55, 'Piquets viticoles', '', '', '', 9),
(56, 'Longueurs', '', '', '', 9),
(57, '2 M 00', '', '', '', 9),
(58, '2 M 30', '', '', '', 9),
(59, '2 M 50', '', '', '', 9),
(60, 'Diamètres bout fin', '', '', '', 9),
(61, '7/10 cm', '', '', '', 9),
(62, '80 pièces / palette', '', '', '', 9),
(63, '10/12 cm', '', '', '', 9),
(64, '72 pièces / palette', '', '', '', 9),
(65, '12/14 cm', '', '', '', 9),
(66, '56 pièces / palette', '', '', '', 9),
(67, 'Poteaux arboricoles', '', '', '', 9),
(68, 'Longueurs', '', '', '', 9),
(69, '2 M 50', '', '', '', 9),
(70, '2 M 80', '', '', '', 9),
(71, '3 M 00', '', '', '', 9),
(72, '3 M 50', '', '', '', 9),
(73, '4 M 00', '', '', '', 9),
(74, '4 M 50', '', '', '', 9),
(75, '5 M 00', '', '', '', 9),
(76, 'Diamètres bout fin', '', '', '', 9),
(77, '7/10 cm', '', '', '', 9),
(78, '80 pièces / palette', '', '', '', 9),
(79, '10/12 cm', '', '', '', 9),
(80, '72 pièces / palette', '', '', '', 9),
(81, '64 pièces / palette', '', '', '', 9),
(82, '12/14 cm', '', '', '', 9),
(83, '56 pièces / palette', '', '', '', 9),
(84, '48 pièces / palette', '', '', '', 9),
(85, '14/16 cm', '', '', '', 9),
(86, '42 pièces / palette', '', '', '', 9),
(87, '36 pièces / palette', '', '', '', 9),
(88, 'Bois de chauffe', '', '', '', 10),
(89, 'Description du produit', '', '', '', 10),
(90, 'Notre bois de chauffage issu de notre production de piquets acacia est vendu sous forme de fagots de 2 ou 2,5 stères ou de bûches fendues de 30 cm.', '', '', '', 10),
(91, 'Voir la fiche détaillée', '', '', '', 10);

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `dwb3d1_societe`
--

INSERT INTO `dwb3d1_societe` (`ID`, `Francais`, `Anglais`, `Espagnol`, `Allemand`) VALUES
(1, 'Nos produits', 'Our products', 'Nuestros productos', 'Unsere produkte'),
(2, 'Nos piquets et rondins sont produits à partir de grumes exploitées dans un rayon de 70 km. Le pin provient de coupes d’éclaircies plantées après la tempête de 1999.<br><br> Ces bois juvéniles utilisés généralement pour la mise en place de filets anti-grêle ou le palissage comportent une très faible proportion de bois de cœur leurs donnant une très bonne aptitude au traitement autoclave.<br><br> Nos grumes d’acacia comportent une très faible quantité d’aubier et des cernes d’accroissement serrées conférant au bois une excellente durabilité naturelle et une très bonne résistance mécanique.<br><br> L’ensemble de nos bois proviennent de coupes gérées durablement et bénéficie généralement de la certification PEFC.', 'Our stakes and logs are produced from logs operated within a radius of 70 km. The pine comes from thinning cuttings planted after the 1999 storm. <br> <br> These juvenile woods commonly used for the establishment of anti-hail nets or trellising have a very low proportion of heartwood giving them very good autoclavability. <br> <br> Our acacia logs have a very small amount of sapwood and tight growth rings giving the wood excellent natural durability and very good mechanical strength.\r\n<br> <br> All of our wood comes from sustainably managed cuts and generally benefits from PEFC certification.', 'Nuestras estacas y troncos se producen a partir de troncos operados en un radio de 70 km. El pino proviene de esquejes de adelgazamiento plantados después de la tormenta de 1999. <br> <br> Estas maderas juveniles comúnmente utilizadas para el establecimiento de redes contra el granizo o enrejado tienen una proporción muy baja de madera dura que les da autoclavabilidad muy buena. <br> <br> Nuestros troncos de acacia tienen una cantidad muy pequeña de albura y anillos de crecimiento apretados que le dan a la madera una excelente durabilidad natural y muy buena resistencia mecánica.\r\n<br> <br> Toda nuestra madera proviene de cortes gestionados de forma sostenible y generalmente se beneficia de la certificación PEFC.', 'Unsere Pfähle und Protokolle werden aus Rundholz hergestellt, das im Umkreis von 70 km betrieben wird. Kiefer stammt von dünner werdenden Stecklingen, die nach dem Sturm von 1999 gepflanzt wurden.<br><br>Diese Jugendhölzer, die im Allgemeinen für die Einrichtung von Hagelschutznetzen oder für das Trellising verwendet werden, haben einen sehr geringen Kernholzanteil, wodurch sie eine sehr gute Autoklavierfähigkeit besitzen.<br><br> Unsere Akazienstämme enthalten nur eine geringe Menge Splintholz und enge Wachstumsringe, was dem Holz eine hervorragende natürliche Haltbarkeit und sehr gute mechanische Festigkeit verleiht.<br><br>Unser gesamtes Holz stammt aus nachhaltig bewirtschafteten Schnitten und profitiert im Allgemeinen von der PEFC-Zertifizierung.'),
(3, 'Notre histoire', 'Our history', 'Nuestra historia', 'Unsere geschichte'),
(4, 'Notre société est située à Poussignac dans le Lot-et-Garonne aux portes du massif landais et au plus prés de la ressource forestière. Dans les années 80, mon père y a construit une scierie de pin maritime fermée en 2015. En 2018, après avoir travaillé dans différents organismes et sociétés de la filière bois, j’ai choisi de revenir sur le site familial pour installer une unité de fabrication de piquets bois.<br> Fort de 20 ans d’expérience dans la ﬁlière bois, j’ai souhaité faire un retour aux sources en m’installant dans l’ancienne scierie familiale située au plus près de la ressource forestière.<br>Je me suis spécialisé dans la fabrication de piquets et rondins d’acacia, pins ou châtaignier.<br> Mon outil de production souple et flexible permet de produire des piquets ou rondins fendus ou ronds de différentes dimensions.<br> Destinés aux vignerons, paysagistes, arboriculteurs, ou tout simplement aux particuliers désireux de créer une clôture ou un aménagement de jardin, les piquets ou rondins B3D sont une valeur sûre.', 'Our company is located in Poussignac in the Lot-et-Garonne at the gates of the Landes massif and closer to the forest resource. In the 80s, my father built a maritime pine sawmill closed in 2015. In 2018, after working in various organizations and companies in the wood industry, I chose to return to the family site to install a plant. wood stakes manufacturing. <br> With 20 years of experience in the wood industry, I wanted to go back to basics by moving into the old family sawmill located closest to the forest resource. <br> I specialized in the manufacture of pickets and logs of acacia, pine or chestnut. <br> My flexible and flexible production tool makes it possible to produce stakes or rounded logs or rounds of different dimensions. to winemakers, landscapers, arboriculturists, or just to individuals wishing to create a fence or a garden, the stakes or logs B3D are a safe bet.', 'Nuestra empresa está ubicada en Poussignac, en Lot-et-Garonne, a las puertas del macizo de las Landas y más cerca del recurso forestal. En los años 80, mi padre construyó un aserradero de pino marítimo cerrado en 2015. En 2018, después de trabajar en varias organizaciones y empresas de la industria de la madera, decidí regresar al sitio familiar para instalar una planta. fabricación de estacas de madera. <br> Con 20 años de experiencia en la industria de la madera, quería volver a lo básico al mudarme al antiguo aserradero familiar ubicado más cerca del recurso forestal. <br> Me especialicé en la fabricación de piquetes y troncos de acacia, pino o castaño. Mi herramienta de producción flexible y flexible permite producir estacas o troncos redondeados o rondas de diferentes dimensiones. Para los enólogos, paisajistas, arboricultores, o simplemente para las personas que desean crear una cerca o un jardín, las apuestas o los troncos B3D son una apuesta segura.', 'Unser Unternehmen befindet sich in Poussignac in Lot-et-Garonne vor den Toren des Landesmassivs und näher an der Waldressource. In den 80er Jahren baute mein Vater ein maritimes Kiefernsägewerk, das 2015 geschlossen wurde. Nachdem ich in verschiedenen Organisationen und Unternehmen der Holzindustrie gearbeitet hatte, entschied ich mich 2018, zum Familienstandort zurückzukehren, um eine Anlage zu installieren. Herstellung von Holzstöcken. <br> Mit 20 Jahren Erfahrung in der Holzindustrie wollte ich zu den Grundlagen zurückkehren, indem ich in das alte Familiensägewerk zog, das am nächsten an der Waldressource liegt. <br> Ich habe mich auf die Herstellung von Streikposten und Stämmen aus Akazien-, Kiefern- oder Kastanienholz spezialisiert. <br> Mit meinem flexiblen und flexiblen Fertigungswerkzeug können Pfähle oder Rundstämme oder Rundungen mit unterschiedlichen Abmessungen hergestellt werden. Für Winzer, Landschaftsgärtner, Baumzüchter oder einfach nur für Einzelpersonen, die einen Zaun oder einen Garten anlegen möchten, sind die Einsätze oder Protokolle B3D eine sichere Wahl.'),
(5, 'Notre savoir-faire', 'Our expertise', 'Nuestro know-how', 'Unser Know-how'),
(6, 'La présence d’une diversité d’essences de bois locaux a orienté mon choix sur un outil de transformation souple et flexible permettant de produire des piquets acacia, pin et châtaignier de différentes dimensions. Suivant l’essence et le diamètre des bois transformés deux opérations sont réalisées. <br><br> Une opération de planage permettant d’apporter un état de surface raboté et lisse aux bois ronds ou une opération de fente permettant de suivre le fil du bois et conserver la résistance mécanique du bois et éviter les déformations de séchage. En mesure de précaution sanitaire une opération d’écorçage est réalisée pour chaque essence de bois. <br><br> Cette opération permet d’éviter de transporter d’éventuels parasites comme des insectes xylophages sur le site de la clientèle. La satisfaction client est notre objectif premier et un contrôle de la qualité du produit est réalisé à chaque étape de transformation.', 'The presence of a variety of local wood species has guided my choice on a flexible and flexible processing tool to produce acacia, pine and chestnut stakes of different sizes. Depending on the species and the diameter of the processed wood, two operations are carried out. <br> <br> A planing operation to bring a planed and smooth surface to round woods or a slot operation to follow the wood grain and maintain the mechanical strength of the wood and prevent drying deformations. As a sanitary precaution a debarking operation is carried out for each species of wood. <br> <br> This operation makes it possible to avoid carrying any parasites such as xylophagous insects on the site of the customers. Customer satisfaction is our primary goal and product quality control is achieved at every stage of processing.', 'La presencia de una variedad de especies de madera locales ha guiado mi elección en una herramienta de procesamiento flexible y flexible para producir estacas de acacia, pino y castaño de diferentes tamaños. Dependiendo de la especie y del diámetro de la madera procesada, se realizan dos operaciones. <br> <br> Una operación de cepillado para llevar una superficie plana y lisa a maderas redondas o una operación de ranura para seguir la veta de la madera y mantener la resistencia mecánica de la madera y evitar las deformaciones por secado. Como medida de precaución sanitaria, se realiza una operación de descortezado para cada especie de madera. <br> <br> Esta operación permite evitar el transporte de parásitos como insectos xilófagos en el sitio de los clientes. La satisfacción del cliente es nuestro objetivo principal y el control de calidad del producto se logra en cada etapa del procesamiento.', 'Das Vorhandensein einer Vielzahl lokaler Holzarten hat meine Wahl auf ein flexibles und flexibles Verarbeitungswerkzeug zur Herstellung von Akazien-, Kiefern- und Kastanienpfählen unterschiedlicher Größe gerichtet. Je nach Holzart und Durchmesser des verarbeiteten Holzes werden zwei Vorgänge durchgeführt. <br> <br> Ein Hobelvorgang, um eine ebene und glatte Oberfläche zu runden Hölzern zu bringen, oder eine Schlitzoperation, um der Holzmaserung zu folgen und die mechanische Festigkeit des Holzes aufrechtzuerhalten und Trocknungsverformungen zu verhindern. Als sanitäre Vorsichtsmaßnahme wird für jede Holzart ein Entrindungsvorgang durchgeführt. <br> <br> Durch diesen Vorgang kann vermieden werden, dass sich Parasiten wie xylophage Insekten auf dem Gelände der Kunden befinden. Kundenzufriedenheit ist unser oberstes Ziel, und die Produktqualitätskontrolle wird auf jeder Verarbeitungsstufe erreicht.');

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
