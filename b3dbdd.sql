-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mer. 06 mars 2019 à 08:10
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `dwb3d1_altimages`
--

INSERT INTO `dwb3d1_altimages` (`ID`, `Francais`, `Anglais`, `Espagnol`, `Allemand`, `image`, `Categorie`) VALUES
(1, 'Histoire', 'History', 'Historia', 'Geschichte', './images/societe-histoire.jpg', 3),
(2, 'Production', 'Production', 'Producción', 'Produktion', './images/societe-production.jpg', 3),
(3, 'Clientele', 'Customer base', 'Clientes', 'Kundschaft', './images/societe-clientele.jpg', 3),
(4, 'Produits Acacia', 'Acacia products', 'Productos de acacia', 'Akazienprodukte', './images/produits-acacia.jpg', 10),
(5, 'Produits_Pin', 'Pine products', 'Productos de pino', 'Kieferprodukte', './images/produits-pin.jpg', 10),
(6, 'Produits_Chataignier', 'Chestnut products', 'Productos de castaño', 'Kastanienprodukte', './images/produits-chataignier.jpg', 10),
(7, 'Drapeau Francais', 'French flag', 'Bandera francesa', 'französische Flagge', './images/FR.svg', 1),
(8, 'Drapeau anglais', 'English flag', 'Bandera inglesa', 'Englische Flagge', './images/EN.svg', 1),
(9, 'Drapeau espagnol', 'Spanish flag', 'Bandera española', 'Spanische Flagge', './images/ES.svg', 1),
(10, 'Drapeau allemand', 'German flag', 'Bandera alemana', 'Deutsche Flagge', './images/DE.svg', 1),
(11, 'Menu_Acacia', 'Acacia menu', 'menú de acacia', 'Akazienmenü', './images/panel-acacia.jpg', 1),
(12, 'Menu_Pin', 'Pine menu', 'Pin menu', 'Pin-Menü', './images/panel-pin.jpg', 1),
(13, 'Menu_Chataignier', 'Chestnut menu', 'menú de castañas', 'Kastanienmenü', './images/panel-chataignier.jpg', 1),
(14, 'Logo Corrtech', 'Logo Corrtech', 'Logo Corrtech', 'Logo Corrtech', './images/CorrTech_transparence.png', 2),
(15, 'Carrousel_1', '', '', '', './images/caroussel-01.jpg', 10),
(18, 'Caroussel_2', '', '', '', './images/caroussel-02.jpg', 10),
(19, 'Caroussel_3', '', '', '', './images/caroussel-03.jpg', 10),
(20, 'Caroussel_4', '', '', '', './images/caroussel-04.jpg', 10),
(21, 'Caroussel_5', '', '', '', './images/caroussel-05.jpg', 10),
(22, 'Caroussel_6', '', '', '', './images/caroussel-06.jpg', 10),
(23, 'Caroussel_7', '', '', '', './images/caroussel-07.jpg', 10),
(24, 'Caroussel_8', '', '', '', './images/caroussel-08.jpg', 10),
(25, 'Caroussel_9', '', '', '', './images/caroussel-09.jpg', 10),
(26, 'Logo B3D', 'Logo B3D', 'Logo B3D', 'Logo B3D', './images/logo_blanc_100.png', 2);

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
  `Varkey` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `dwb3d1_blockcontact`
--

INSERT INTO `dwb3d1_blockcontact` (`ID`, `Francais`, `Anglais`, `Espagnol`, `Allemand`, `Varkey`) VALUES
(1, 'Contact', '', '', '', 'titre'),
(2, 'Adresse', '', '', '', 'adresse_titre'),
(3, 'B3D \"L\'intendant\" <br>47700 Poussignac', '', '', '', 'adresse'),
(4, 'Téléphone', '', '', '', 'tel_titre'),
(5, '+33 (0)6 95 51 77 05', '', '', '', 'tel'),
(6, 'Horaires', '', '', '', 'horaires_titre'),
(7, 'Du lundi au vendredi<br>8h - 12h / 14h - 18h<br>Sauf le samedi 9h - 12h', '', '', '', 'horaires'),
(8, 'Email', '', '', '', 'mail_titre'),
(9, 'julien.procedes@orange.fr', '', '', '', 'mail');

-- --------------------------------------------------------

--
-- Structure de la table `dwb3d1_categories`
--

DROP TABLE IF EXISTS `dwb3d1_categories`;
CREATE TABLE IF NOT EXISTS `dwb3d1_categories` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Categorie` varchar(64) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

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
(7, 'acacia'),
(8, 'pin'),
(9, 'chataigner'),
(10, 'Produits'),
(11, 'pages_erreurs');

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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `dwb3d1_erreurs`
--

INSERT INTO `dwb3d1_erreurs` (`ID`, `Categorie`, `Francais`, `Anglais`, `Allemand`, `Espagnol`, `Varkey`) VALUES
(1, 4, 'Vous devez indiquer votre nom', '', '', '', 'last-name'),
(2, 4, 'Vous devez indiquer un email valide', '', '', '', 'email'),
(3, 4, 'Vous devez indiquer votre message', '', '', '', 'message'),
(4, 4, 'Vous devez accepter les conditions d\\\'utilisations', '', '', '', 'check-rgpd'),
(5, 4, 'Numéro de téléphone invalide', '', '', '', 'phone'),
(6, 4, 'Erreur à l\\\'envoi du formulaire', '', '', '', ''),
(7, 4, 'Une erreur est survenue lors de l\\\'envoi du mail', '', '', '', ''),
(8, 4, 'Merci à vous !', '', '', '', ''),
(9, 4, 'Votre demande nous a bien été envoyée !', '', '', '', ''),
(10, 4, 'Vous devez indiquer votre prénom', '', '', '', 'first-name'),
(11, 11, 'Erreur 404', '', '', '', NULL),
(12, 11, 'Oups ! Désolé mais la page demandée n\'existe pas !', '', '', '', NULL),
(13, 11, 'Erreur 403', '', '', '', NULL),
(14, 11, 'Vous n\'avez pas la permission d\'accéder à ce contenu !', '', '', '', NULL),
(15, 11, 'Erreur 503', '', '', '', NULL),
(16, 11, 'Service momentanément indisponible, veuillez réessayer ultérieurement.', '', '', '', NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `dwb3d1_footer`
--

INSERT INTO `dwb3d1_footer` (`ID`, `Francais`, `Anglais`, `Espagnol`, `Allemand`) VALUES
(1, 'Tous droits réservés', 'All rights reserved', 'Todos los derechos reservados', 'Alle Rechte vorbehalten'),
(2, 'Site développé par : ', 'Website developed by :', 'Sitio web desarrollado por :', 'Website entwickelt von :'),
(3, 'Mentions légales', 'Legal Notice', 'Notas legales', 'Rechtliche hinweise');

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
(6, 'Contact', '', '', '');

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
  PRIMARY KEY (`ID`),
  KEY `fk_categorie_produits` (`Categorie`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `dwb3d1_produits`
--

INSERT INTO `dwb3d1_produits` (`ID`, `Francais`, `Anglais`, `Espagnol`, `Allemand`, `Categorie`) VALUES
(1, 'Châtaignier', '', '', '', 9),
(2, 'Description du produit', '', '', '', 9),
(3, 'Moins durable dans le temps que l’acacia, le châtaignier en reste néanmoins une essence imputrescible grâce à sa présence d’acide tannique.</br></br>L’ensemble de nos produits châtaignier sont écorcés pour apporter plus d’esthétique et de propreté aux piquets mais surtout pour éviter de transporter des parasites sur le site de la clientèle.</br></br>Nos piquets châtaignier sont fendus ou planés et une pointe carrée d’une surface comprise entre 1 et 1,5 cm² est réalisée gros bout.</br></br>L’opération de fente permet au bois de conserver sa résistance mécanique et limiter les déformations de séchage.\r\n', '', '', '', 9),
(4, 'Voir la fiche détaillée', '', '', '', 9),
(5, '<table class=\"table table-bordered text-center\">\r\n  <thead>\r\n    <tr>\r\n     <th scope=\"col\" colspan=\"2\">Longueurs</th>\r\n     <th scope=\"col\">2 m </th>\r\n     <th scope=\"col\">2 m 30</th>\r\n     <th scope=\"col\">2 m 50</th>\r\n    </tr>\r\n   </thead>\r\n   <tbody>\r\n    <tr>\r\n     <td  rowspan=\"2\"> Périmètres fin bout</td>\r\n     <td >24/29 cm</td>\r\n     <td  colspan=\"3\">130 pièces/palettes</td>\r\n    </tr>\r\n    <tr>\r\n     <td>28cm et +</td>\r\n     <td colspan=\"3\">110 pièces/palettes</td>\r\n    </tr>\r\n   </tbody>\r\n</table>', '', '', '', 9),
(6, 'Acacia', '', '', '', 7),
(7, 'Description du produit', '', '', '', 7),
(8, 'L’ensemble de nos produits acacia sont écorcés pour apporter plus d’esthétique et de propreté aux piquets mais surtout pour éviter de transporter des parasites sur le site de la clientèle.</br></br>Nos piquets acacia sont fendus ou planés et une pointe carrée d’une surface comprise entre 1 et 1,5 cm2 est réalisée gros bout.</br></br>L’opération de fente permet au bois de conserver sa résistance mécanique et limiter les déformations de séchage.', '', '', '', 7),
(9, 'Voir la fiche détaillée', '', '', '', 7),
(10, 'Piquets fendus', '', '', '', 7),
(11, '<table class=\"table table-bordered text-center\">\r\n        <tr>\r\n          <th colspan=\"2\">Longueurs</th>\r\n          <th>1m 40</th>\r\n          <th>1m 80</th>\r\n          <th>2m 00</th>\r\n          <th>2m 30</th>\r\n          <th>2m 50</th>\r\n        </tr>\r\n        <tr>\r\n          <td rowspan=\"4\">Périmètres fin bout</td>\r\n          <td>19/23 cm</td>\r\n          <td colspan=\"3\">160 pièces / palette</td>\r\n          <td>-</td>\r\n          <td>-</td>\r\n        </tr>\r\n        <tr>\r\n          <td>23/26 cm</td>\r\n          <td colspan=\"4\">150 pièces / palette</td>\r\n          <td>-</td>\r\n        </tr>\r\n        <tr>\r\n          <td>26/29 cm</td>\r\n          <td colspan=\"5\">130 pièces / palette</td>\r\n        </tr>\r\n        <tr>\r\n          <td>29 cm et plus</td>\r\n          <td>-</td>\r\n          <td colspan=\"4\">110 pièces / palette</td>\r\n        </tr>\r\n      </table>', '', '', '', 7),
(12, 'Piquets ronds', '', '', '', 7),
(13, '<table class=\"table table-bordered text-center\">\r\n        <tr>\r\n          <th colspan=\"2\">Longueurs</th>\r\n          <th>1m 80</th>\r\n          <th>2m 00</th>\r\n          <th>2m 30</th>\r\n          <th>2m 50</th>\r\n          <th>3m 00</th>\r\n          <th>4m 00</th>\r\n        </tr>\r\n        <tr>\r\n          <td rowspan=\"4\">Diamètres fin bout</td>\r\n          <td>6/8 cm</td>\r\n          <td colspan=\"5\">80 µ / palette</td>\r\n          <td>-</td>\r\n        </tr>\r\n        <tr>\r\n          <td>8/10 cm</td>\r\n          <td colspan=\"5\">71 µ / palette</td>\r\n          <td>-</td>\r\n        </tr>\r\n        <tr>\r\n          <td>10/12 cm</td>\r\n          <td colspan=\"6\">56 µ / palette</td>\r\n        </tr>\r\n        <tr>\r\n          <td>12/15 cm</td>\r\n          <td colspan=\"6\">42 µ / palette</td>\r\n        </tr>\r\n      </table>', '', '', '', 7),
(14, 'Pin', '', '', '', 8),
(15, 'Description du produit', '', '', '', 8),
(16, 'Nos piquets et poteaux pins sont planés et une pointe carrée d’une surface comprise entre 1 et 1,5 cm2 est réalisée gros bout.</br></br>La qualité de nos bois est conforme aux spécifications de la norme NF B 50-100-3 pour une classe d’emploi classe IV après avoir subi un traitement en autoclave suivant le procédé Bethell vide et pression 12 bars dans une station certifiée CTB B+.</br></br>La proportion de bois de cœur présente dans nos pins est faible ce qui permet une pénétration et une rétention de produit de préservation optimum pour une longévité accrue de nos piquets et poteaux.', '', '', '', 8),
(17, 'Voir la fiche détaillée', '', '', '', 8),
(18, 'Piquets viticoles', '', '', '', 8),
(19, '<table class=\"table table-bordered text-center\">\r\n      	<tbody>\r\n      		<tr>\r\n      			<td colspan=\"2\">Longueurs</td>\r\n      			<td>2m 00</td>\r\n      			<td>2m 30</td>\r\n      			<td>2m 50</td>\r\n      		</tr>\r\n      		<tr>\r\n      			<td rowspan=\"3\"><span class=\"verticalCells\">Diamètres fin bout</span></td>\r\n      			<td>7/10 cm</td>\r\n      			<td colspan=\"3\">80 pièces / palettes</td>\r\n      		</tr>\r\n      		<tr>\r\n      			<td>10/12 cm</td>\r\n      			<td colspan=\"3\">72 pièces / palettes</td>\r\n      		</tr>\r\n      		<tr>\r\n      			<td>12/14 cm</td>\r\n      			<td colspan=\"3\">56 pièces / palettes</td>\r\n      		</tr>\r\n      	</tbody>\r\n      </table>', '', '', '', 8),
(20, 'Poteaux arboricoles', '', '', '', 8),
(21, '<table class=\"table table-bordered text-center\">\r\n      	<tbody>\r\n      		<tr>\r\n      			<td colspan=\"2\">Longueurs</td>\r\n      			<td>2m 50</td>\r\n      			<td>2m 80</td>\r\n      			<td>3m 00</td>\r\n      			<td>3m 50</td>\r\n      			<td>4m 00</td>\r\n      			<td>4m 50</td>\r\n      			<td>5m 00</td>\r\n      		</tr>\r\n      		<tr>\r\n      			<td rowspan=\"4\"><span class=\"verticalCells\">Diamètres fin bout</span></td>\r\n      			<td>7/10 cm</td>\r\n      			<td colspan=\"3\">80 pièces / palettes</td>\r\n      			<td colspan=\"4\">-</td>\r\n      		</tr>\r\n      		<tr>\r\n      			<td>10/12 cm</td>\r\n      			<td colspan=\"4\">72 pièces / palettes</td>\r\n      			<td colspan=\"3\">64 pièces / palettes</td>\r\n      		</tr>\r\n      		<tr>\r\n            <td>12/14 cm</td>\r\n      			<td colspan=\"4\">56 pièces / palettes</td>\r\n      			<td colspan=\"3\">48 pièces / palettes</td>\r\n      		</tr>\r\n      		<tr>\r\n            <td>14/16 cm</td>\r\n      			<td colspan=\"4\">42 pièces / palettes</td>\r\n      			<td colspan=\"3\">36 pièces / palettes</td>\r\n      		</tr>\r\n      	</tbody>\r\n      </table>', '', '', '', 8),
(22, 'Produits', '', '', '', 10),
(23, 'Nos piquets et rondins sont produits à partir de trois essences de grumes exploitées dans un rayon de 70 km.</br></br>\r\nNos grumes de pin proviennent de coupes d’éclaircies plantées après la tempête de 1999.</br>\r\nCes bois juvéniles utilisés généralement pour la mise en place de filets anti-grêle ou le palissage comportent une très faible proportion de bois de cœur leurs donnant une très bonne aptitude au traitement autoclave.</br></br>\r\nNos grumes d’acacia comportent une très faible quantité d’aubier et des cernes d’accroissement serrées conférant au bois une excellente durabilité naturelle et une très bonne résistance mécanique.</br></br>\r\nNos grumes de châtaignier sont sélectionnées pour leur qualité intrinsèque.</br></br>\r\nL’ensemble de nos bois proviennent de coupes gérées durablement et bénéficient généralement de la certification PEFC.\r\n', '', '', '', 10),
(24, 'Écorcé par mesure phytosanitaire, pour plus d\'esthétisme et de propreté. Découvrez nos produits acacia!', '', '', '', 10),
(25, 'Nos piquets et poteaux pin sont planés et traités suivant le référentiel de la marque de certification CTB B+. Découvrez nos produits!', '', '', '', 10),
(26, 'Écorcé par mesure phytosanitaire, pour plus d\'esthétisme et de propreté. Découvrez nos produits chataigner!', '', '', '', 10),
(27, 'Voir les produits', '', '', '', 10);

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
(1, 'Notre histoire\r\n', '', '', ''),
(2, 'Notre société est située à Poussignac dans le Lot-et-Garonne aux portes du massif landais et au plus près de la ressource forestière.</br></br>\r\nDans les années 80, mon père y a construit une scierie de pin maritime fermée en 2015.</br></br>\r\nEn 2018, fort de 20 ans d’expérience dans différents organismes et sociétés de la filière bois, j’ai souhaité revenir sur le site familial pour installer une unité de fabrication de piquets bois.</br></br>\r\nJe me suis spécialisé dans la fabrication de piquets et rondins d’acacia, pins ou châtaignier.', '', '', ''),
(3, 'Présentation de la production', '', '', ''),
(4, 'La présence d’une diversité d’essences de bois locaux a orienté mon choix sur un outil de transformation souple et flexible permettant de produire des piquets acacia, pins et châtaignier de différentes dimensions.</br></br>\r\nSuivant l’essence et le diamètre des bois transformés deux opérations sont réalisées.</br></br> \r\nUne opération de planage permettant d’apporter un état de surface raboté et lisse aux bois ronds ou une opération de fente permettant de suivre le fil du bois et conserver sa résistance mécanique et éviter des déformations de séchage.</br></br> \r\nPar mesure de précaution sanitaire une opération d’écorçage est réalisée sur l’ensemble des grumes. ', '', '', ''),
(5, 'Clientèle', '', '', ''),
(6, 'Destinés aux vignerons, paysagistes, arboriculteurs, ou tout simplement aux particuliers désireux de créer une clôture ou un aménagement de jardin, les piquets ou rondins B3D sont une valeur sûre.</br></br>\r\nLa satisfaction client est notre objectif premier et un contrôle de la qualité du produit est réalisé à chaque étape de transformation.\r\n', '', '', '');

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

--
-- Contraintes pour la table `dwb3d1_produits`
--
ALTER TABLE `dwb3d1_produits`
  ADD CONSTRAINT `fk_categorie_produits` FOREIGN KEY (`Categorie`) REFERENCES `dwb3d1_categories` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
