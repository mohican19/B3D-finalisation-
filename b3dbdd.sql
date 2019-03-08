-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le :  ven. 08 mars 2019 à 10:30
-- Version du serveur :  5.7.25-0ubuntu0.18.04.2
-- Version de PHP :  7.2.15-0ubuntu0.18.04.1

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
CREATE TABLE `dwb3d1_altimages` (
  `ID` int(11) NOT NULL,
  `Francais` text NOT NULL,
  `Anglais` text NOT NULL,
  `Espagnol` text NOT NULL,
  `Allemand` text NOT NULL,
  `image` text,
  `Categorie` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(15, 'Réserve de bois en tas', 'Reserve of wood in piles', 'Reserva de madera en pilotes.', 'Holzvorrat in Haufen', './images/caroussel-01.jpg', 10),
(18, 'Vue rapprochée d\'acacia', 'Close-up of acacia', 'Primer plano de acacia', 'Nahaufnahme der Akazie', './images/caroussel-02.jpg', 10),
(19, 'Production automatisée', 'Automated production', 'Producción automatizada', 'Automatisierte Produktion', './images/caroussel-03.jpg', 10),
(20, 'Gros plan sur de l\'acacia en production', 'Close up on acacia in production', 'Acercamiento a la acacia en producción', 'Akazie in der Produktion hautnah', './images/caroussel-04.jpg', 10),
(21, 'Colis de rondins en acacia', 'Package of logs in acacia', 'Paquete de troncos en acacia', 'Paket von Protokollen in Akazie', './images/caroussel-05.jpg', 10),
(22, 'Colis de rondins en acacia près à être expédiés', 'Parcel of logs in acacia close to be shipped', 'Paquete de troncos en acacia cerca para ser enviado', 'Paket von Protokollen in Akazien in der Nähe zu versenden', './images/caroussel-06.jpg', 10),
(23, 'Stock de rondins en acacia près à être expédiés', 'Stock of logs in acacia close to be shipped', 'Stock de troncos en acacia cerca para ser enviado', 'Bestände von Protokollen in Akazien in der Nähe zu versenden', './images/caroussel-07.jpg', 10),
(24, 'Piquets arboricoles plantés, prêts à servir', 'Tree stakes planted, ready to serve', 'Estacas de árboles plantadas, listas para servir', 'Baumpfähle gepflanzt, servierfertig', './images/caroussel-08.jpg', 10),
(25, 'Piquets arboricoles prêts à servir', 'Tree stakes ready to serve', 'Estacas de arboles listas para servir', 'Baumpfähle servierfertig', './images/caroussel-09.jpg', 10),
(26, 'Logo B3D', 'Logo B3D', 'Logo B3D', 'Logo B3D', './images/logo_blanc_100.png', 2);

-- --------------------------------------------------------

--
-- Structure de la table `dwb3d1_blockcontact`
--

DROP TABLE IF EXISTS `dwb3d1_blockcontact`;
CREATE TABLE `dwb3d1_blockcontact` (
  `ID` int(11) NOT NULL,
  `Francais` longtext NOT NULL,
  `Anglais` longtext NOT NULL,
  `Espagnol` longtext NOT NULL,
  `Allemand` longtext NOT NULL,
  `Varkey` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `dwb3d1_blockcontact`
--

INSERT INTO `dwb3d1_blockcontact` (`ID`, `Francais`, `Anglais`, `Espagnol`, `Allemand`, `Varkey`) VALUES
(1, 'Contact', 'Contact', 'Contactar', 'Kontakt', 'titre'),
(2, 'Adresse', 'Address', 'Dirección', 'Addresse', 'adresse_titre'),
(3, 'B3D \"L\'intendant\" <br>47700 Poussignac', 'B3D \"L\'intendant\" <br>47700 Poussignac (France)', 'B3D \"L\'intendant\" <br>47700 Poussignac (Francia)', 'B3D \"L\'intendant\" <br>47700 Poussignac (Frankreich)', 'adresse'),
(4, 'Téléphone', 'Phone', 'Teléfono', 'Telefon', 'tel_titre'),
(5, '+33 (0)6 95 51 77 05', '+33 (0)6 95 51 77 05', '+33 (0)6 95 51 77 05', '+33 (0)6 95 51 77 05', 'tel'),
(6, 'Horaires', 'Schedule', 'Horario', 'Zeitplan', 'horaires_titre'),
(7, 'Du lundi au vendredi<br>8h - 12h / 14h - 18h<br>Sauf le samedi 9h - 12h', 'From Monday to Friday<br>8h - 12h / 14h - 18h<br>Saturday 9h - 12h', 'De lunes a viernes<br>8h - 12h / 14h - 18h<br>El sabado 9h - 12h', 'Montag bis Freitag<br>8h - 12h / 14h - 18h<br>Samstag 9h - 12h', 'horaires'),
(8, 'Email', 'E-Mail', 'E-Mail', 'E-Mail', 'mail_titre'),
(9, 'julien.procedes@orange.fr', 'julien.procedes@orange.fr', 'julien.procedes@orange.fr', 'julien.procedes@orange.fr', 'mail');

-- --------------------------------------------------------

--
-- Structure de la table `dwb3d1_categories`
--

DROP TABLE IF EXISTS `dwb3d1_categories`;
CREATE TABLE `dwb3d1_categories` (
  `ID` int(11) NOT NULL,
  `Categorie` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
CREATE TABLE `dwb3d1_erreurs` (
  `ID` int(11) NOT NULL,
  `Categorie` int(11) NOT NULL,
  `Francais` mediumtext NOT NULL,
  `Anglais` mediumtext NOT NULL,
  `Allemand` mediumtext NOT NULL,
  `Espagnol` mediumtext NOT NULL,
  `Varkey` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `dwb3d1_erreurs`
--

INSERT INTO `dwb3d1_erreurs` (`ID`, `Categorie`, `Francais`, `Anglais`, `Allemand`, `Espagnol`, `Varkey`) VALUES
(1, 4, 'Vous devez indiquer votre nom', 'You must indicate your name', 'Sie müssen Ihren Namen angeben', 'Debes indicar tu nombre', 'last-name'),
(2, 4, 'Vous devez indiquer un email valide', 'You must enter a valid email', 'Sie müssen eine gültige E-Mail-Adresse eingeben', 'Debes ingresar un correo electrónico válido', 'email'),
(3, 4, 'Vous devez indiquer votre message', 'You must indicate your message', 'Sie müssen Ihre Nachricht angeben', 'Debes indicar tu mensaje', 'message'),
(4, 4, 'Vous devez accepter les conditions d\\\'utilisations', 'You must accept the terms of use', 'Sie müssen die Nutzungsbedingungen akzeptieren', 'Debes aceptar los términos de uso', 'check-rgpd'),
(5, 4, 'Numéro de téléphone invalide', 'Invalid phone number', 'Ungültige Telefonnummer', 'Número de teléfono no válido', 'phone'),
(6, 4, 'Erreur à l\\\'envoi du formulaire', 'Error sending the form', 'Fehler beim Senden des Formulars', 'Error al enviar el formulario', ''),
(7, 4, 'Une erreur est survenue lors de l\\\'envoi du mail', 'An error occurred while sending the email', 'Beim Senden der E-Mail ist ein Fehler aufgetreten', 'Se ha producido un error al enviar el correo electrónico', ''),
(8, 4, 'Merci à vous !', 'Thank you !', 'Vielen herzlichen Dank!', 'Gracias a usted !', ''),
(9, 4, 'Votre demande nous a bien été envoyée !', 'Your request has been sent to us !', 'Ihre Anfrage wurde an uns gesendet !', 'Su solicitud ha sido enviada a nosotros !', ''),
(10, 4, 'Vous devez indiquer votre prénom', 'You must indicate your first name\r\n', 'Sie müssen ihren vornamen angeben\r\n', 'Debes indicar tu nombre', 'first-name'),
(11, 11, 'Erreur 404', 'Error 404', 'Fehler 404', 'Error 404', NULL),
(12, 11, 'Oups ! Désolé mais la page demandée n\'existe pas !', 'Oops ! Sorry but the requested page does not exist !', 'Hoppla ! Sorry, aber die angeforderte Seite existiert nicht !', 'Ups ! Lo sentimos pero la página solicitada no existe !', NULL),
(13, 11, 'Erreur 403', 'Error 403', 'Fehler 403', 'Error 403', NULL),
(14, 11, 'Vous n\'avez pas la permission d\'accéder à ce contenu !', 'You do not have permission to access this content !', 'Sie haben keine Berechtigung, auf diese Inhalte zuzugreifen !', '¡ No tienes permiso para acceder a este contenido !', NULL),
(15, 11, 'Erreur 503', 'Error 503', 'Fehler 503', 'Error 503', NULL),
(16, 11, 'Service momentanément indisponible, veuillez réessayer ultérieurement.', 'Service temporarily unavailable, please try again later.', 'Der Dienst ist vorübergehend nicht verfügbar. Bitte versuchen Sie es später erneut.', 'Servicio no disponible temporalmente, inténtalo de nuevo más tarde.', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `dwb3d1_footer`
--

DROP TABLE IF EXISTS `dwb3d1_footer`;
CREATE TABLE `dwb3d1_footer` (
  `ID` smallint(6) NOT NULL,
  `Francais` longtext NOT NULL,
  `Anglais` longtext NOT NULL,
  `Espagnol` longtext NOT NULL,
  `Allemand` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
CREATE TABLE `dwb3d1_formcontact` (
  `ID` int(11) NOT NULL,
  `Francais` mediumtext NOT NULL,
  `Anglais` mediumtext NOT NULL,
  `Espagnol` mediumtext NOT NULL,
  `Allemand` mediumtext NOT NULL,
  `Varkey` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
CREATE TABLE `dwb3d1_header` (
  `ID` smallint(6) NOT NULL,
  `Francais` longtext NOT NULL,
  `Anglais` longtext NOT NULL,
  `Espagnol` longtext NOT NULL,
  `Allemand` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `dwb3d1_header`
--

INSERT INTO `dwb3d1_header` (`ID`, `Francais`, `Anglais`, `Espagnol`, `Allemand`) VALUES
(1, 'Société', 'Society', 'Empresa', 'Unternehmen'),
(2, 'Produits', 'Products', 'Productos', 'Produkte'),
(3, 'Chataignier', 'Chestnut', 'Castaña', 'Kastanie'),
(4, 'Acacia', 'Acacia', 'Acacia', 'Akazie'),
(5, 'Pin', 'Pine', 'Pino', 'Kiefer'),
(6, 'Contact', 'Contact', 'Contactar', 'Kontakt');

-- --------------------------------------------------------

--
-- Structure de la table `dwb3d1_legal`
--

DROP TABLE IF EXISTS `dwb3d1_legal`;
CREATE TABLE `dwb3d1_legal` (
  `ID` int(11) NOT NULL,
  `Francais` longtext NOT NULL,
  `Anglais` longtext NOT NULL,
  `Espagnol` longtext NOT NULL,
  `Allemand` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `dwb3d1_legal`
--

INSERT INTO `dwb3d1_legal` (`ID`, `Francais`, `Anglais`, `Espagnol`, `Allemand`) VALUES
(1, 'Conditions générales d\'utilisation', 'General conditions of use', 'Condiciones generales de uso', 'Allgemeine Nutzungsbedingungen'),
(2, 'ARTICLE 1 : Objet', 'ARTICLE 1 : object', 'ARTÍCULO 1 : Propósito', 'ARTIKEL 1 : Zweck'),
(3, 'Les présentes « conditions générales d\'utilisation » ont pour objet l\'encadrement juridique de l’utilisation du site B3D et de ses services.<br>Ce contrat est conclu entre :<br>Le gérant du site internet, ci-après désigné « l’Éditeur »,<br>Toute personne physique ou morale souhaitant accéder au site et à ses services, ci-après appelé « l’Utilisateur ».<br>Les conditions générales d\'utilisation doivent être acceptées par tout Utilisateur, et son accès au site vaut acceptation de ces conditions.', 'The present \"general conditions of use\" aim at the legal framework of the use of the site B3D and its services. <br>This contract is concluded between: The manager of the website, hereinafter designated \"The Publisher\", <br> Any natural or legal person wishing to access the site and its services, hereinafter called \"the User\". <br> The general conditions of use must be accepted by any User, and his access to the site constitutes acceptance of these conditions.', 'Las presentes \"condiciones generales de uso\" apuntan al marco legal del uso del sitio B3D y sus servicios. <br>Este contrato se concluye entre: El administrador del sitio web, en lo sucesivo denominado \"The Publisher\", <br> Cualquier persona física o jurídica que desee acceder al sitio y sus servicios, en lo sucesivo denominado \"el Usuario\". <br> Las condiciones generales de uso deben ser aceptadas por cualquier Usuario, y Su acceso al sitio constituye la aceptación de estas condiciones.', 'Die vorliegenden \"Allgemeinen Nutzungsbedingungen\" beziehen sich auf den rechtlichen Rahmen der Nutzung der Website B3D und ihrer Dienste. <br>Dieser Vertrag wird geschlossen zwischen: dem Betreiber der Website, nachstehend bezeichnet \"Der Herausgeber\", <br> Jede natürliche oder juristische Person, die auf die Website und ihre Dienste zugreifen möchte, im Folgenden \"Nutzer\".<br> Die allgemeinen Nutzungsbedingungen müssen von jedem Nutzer akzeptiert werden, und sein Zugriff auf die Website bedeutet die Annahme dieser Bedingungen.'),
(4, 'ARTICLE 2 : Mentions légales', 'ARTICLE 2 : Legal notice', 'ARTÍCULO 2 : Aviso legal', 'ARTIKEL 2 : Rechtliche Hinweise'),
(5, 'Pour les personnes morales :<br><br>Le site B3D est édité par la société B3D, SARL à associé unique au capital de 10 000 €, dont le siège social est situé à L\'intendant, 47700 Poussignac.<br>La société est représentée par Mr Procedes Julien, Marc.<br><br>Pour les personnes physiques : <br><br>Le site B3D est édité par la société B3D, SARL à associé unique au capital de 10 000 €, dont le siège social est situé à L\'intendant, 47700 Poussignac.<br>La société est représentée par Mr Procedes Julien, Marc.', 'For legal entities: <br> <br> The site B3D is published by the company B3D, limited liability company with a capital of 10 000 €, whose head office is located at L\'intendant, 47700 Poussignac. company is represented by Mr Procedes Julien, Marc. <br> <br> For individuals: <br> <br> The site B3D is published by the company B3D, SARL with a single shareholder capital of 10 000 €, whose head office is located at L\'intendant, 47700 Poussignac. <br> The company is represented by Mr Procedes Julien, Marc.', 'Para entidades legales: <br> <br> El sitio B3D es publicado por la compañía B3D, sociedad de responsabilidad limitada con un capital de 10 000 €, cuya oficina central se encuentra en L\'intendant, 47700 Poussignac. la empresa está representada por el Sr. Procedes Julien, Marc. <br> <br> Para individuos: <br> <br> El sitio B3D está publicado por la compañía B3D, SARL con un capital accionario único de 10 000 €, cuyo la oficina central está ubicada en L\'intendant, 47700 Poussignac. La compañía está representada por el Sr. Procedes Julien, Marc.', 'Für juristische Personen: <br> <br> Die Website B3D wird von der Firma B3D, einer Gesellschaft mit beschränkter Haftung mit einem Kapital von 10 000 €, mit Sitz in L\'intendant, 47700 Poussignac, veröffentlicht. Das Unternehmen wird vertreten durch Herrn Procedes Julien, Marc. <br> <br> Für Privatpersonen: <br> <br> Die Website B3D wird von der Firma B3D, SARL mit einem einzigen Gesellschaftskapital von 10 000 € veröffentlicht, dessen Hauptsitz befindet sich in L\'intendant, 47700 Poussignac. <br> Das Unternehmen wird vertreten durch Herrn Procedes Julien, Marc.'),
(6, 'ARTICLE 3 : accès aux services', 'ARTICLE 3 : Access to services', 'ARTÍCULO 3 : Acceso a servicios.', 'ARTIKEL 3 : Zugang zu Dienstleistungen'),
(7, 'Tout Utilisateur ayant accès a internet peut accéder gratuitement et depuis n’importe où au site. Les frais supportés par l’Utilisateur pour y accéder (connexion internet, matériel informatique, etc.) ne sont pas à la charge de l’Éditeur.<br>Le site et ses différents services peuvent être interrompus ou suspendus par l’Éditeur, notamment à l’occasion d’une maintenance, sans obligation de préavis ou de justification.', 'Any user having access to the internet can access free of charge from anywhere on the site. The costs incurred by the User to access it (internet connection, computer equipment, etc.) are not the responsibility of the Publisher. <br> The site and its various services may be interrupted or suspended by the Publisher, in particular during a maintenance, without obligation of advance notice or justification.', 'Cualquier usuario que tenga acceso a Internet puede acceder de forma gratuita desde cualquier lugar del sitio. Los costos incurridos por el Usuario para acceder a él (conexión a Internet, equipo informático, etc.) no son responsabilidad del Editor. El Sitio y sus diversos servicios pueden ser interrumpidos o suspendidos por el Editor, En particular durante un mantenimiento, sin obligación de previo aviso o justificación.', 'Jeder Benutzer, der Zugang zum Internet hat, kann von überall auf der Website kostenlos zugreifen. Die Kosten, die dem Benutzer für den Zugriff entstehen (Internetverbindung, Computerausrüstung usw.), fallen nicht in den Verantwortungsbereich des Publishers. <br> Die Website und ihre verschiedenen Dienste können vom Publisher unterbrochen oder ausgesetzt werden. insbesondere während einer Wartung, ohne vorherige Ankündigung oder Begründung.'),
(8, 'ARTICLE 4 : Responsabilité de l’Éditeur', 'ARTICLE 4 : Responsibility of the Publisher', 'ARTÍCULO 4 : Responsabilidad de la Editorial', 'ARTIKEL 4 : Verantwortung des Herausgebers'),
(9, 'Tout dysfonctionnement du serveur ou du réseau ne peut engager la responsabilité de l’Éditeur.<br>De même, la responsabilité du site ne peut être engagée en cas de force majeure ou du fait imprévisible et insurmontable d\'un tiers.<br>B3D s\'engage à mettre en œuvre tous les moyens nécessaires pour garantir la sécurité et la confidentialité des données. Toutefois, il n’apporte pas une garantie de sécurité totale.<br>L’Éditeur se réserve la faculté d’une non-garantie de la fiabilité des sources, bien que les informations diffusées su le site soient réputées fiables.', 'Any malfunction of the server or the network can not engage the responsibility of the Editor. <br> Similarly, the responsibility of the site can not be committed in case of force majeure or the unpredictable and insurmountable fact of a third. B3D is committed to implementing all necessary means to ensure the security and confidentiality of data. However, it does not provide a guarantee of total security. <br> The Editor reserves the right of a non-guarantee of the reliability of the sources, although the information diffused on the site is reputed reliable.', 'Cualquier mal funcionamiento del servidor o de la red no puede comprometer la responsabilidad del Editor. <br> Del mismo modo, la responsabilidad del sitio no puede ser cometida en caso de fuerza mayor o el hecho impredecible e insuperable de un tercero. B3D se compromete a implementar todos los medios necesarios para garantizar la seguridad y confidencialidad de los datos. Sin embargo, no ofrece una garantía de seguridad total. El Editor se reserva el derecho de no garantizar la confiabilidad de las fuentes, aunque la información difundida en el sitio es confiable.', 'Für eine Störung des Servers oder des Netzwerks kann nicht die Verantwortung des Herausgebers übernommen werden. <br> Ebenso kann die Verantwortung der Website nicht im Falle höherer Gewalt oder der unvorhersehbaren und unüberwindbaren Tatsache eines Dritten übernommen werden. B3D verpflichtet sich, alle erforderlichen Maßnahmen zu ergreifen, um die Sicherheit und Vertraulichkeit der Daten zu gewährleisten. Sie bietet jedoch keine Garantie für die vollständige Sicherheit. <br> Der Herausgeber behält sich das Recht vor, die Zuverlässigkeit der Quellen nicht zu garantieren, obwohl die auf der Website verbreiteten Informationen als zuverlässig gelten.'),
(10, 'ARTICLE 5 : Propriété intellectuelle', 'ARTICLE 5 : Intellectual Property', 'ARTÍCULO 5 : Propiedad intelectual.', 'ARTIKEL 5 : Geistiges Eigentum'),
(11, 'Les contenus du site B3D (logos, textes, éléments graphiques, vidéos, etc.) son protégés par le droit d’auteur, en vertu du Code de la propriété intellectuelle.<br>L’Utilisateur devra obtenir l’autorisation de l’éditeur du site avant toute reproduction, copie ou publication de ces différents contenus.<br>Ces derniers peuvent être utilisés par les utilisateurs à des fins privées ; tout usage commercial est interdit.', 'The contents of the B3D website (logos, texts, graphic elements, videos, etc.) are protected by copyright, under the Intellectual Property Code. <br> The User must obtain the authorization of the publisher of the site before any reproduction, copy or publication of these different contents. <br> These can be used by users for private purposes; any commercial use is prohibited.', 'Los contenidos del sitio web de B3D (logotipos, textos, elementos gráficos, videos, etc.) están protegidos por derechos de autor, bajo el Código de Propiedad Intelectual. El Usuario debe obtener la autorización de editor del sitio antes de cualquier reproducción, copia o publicación de estos diferentes contenidos. <br> Estos pueden ser utilizados por los usuarios para fines privados; Queda prohibido cualquier uso comercial.', 'Die Inhalte der B3D-Website (Logos, Texte, grafische Elemente, Videos usw.) sind gemäß dem Intellectual Property Code urheberrechtlich geschützt. <br> Der Nutzer muss die Genehmigung der Herausgeber der Site vor jeglicher Vervielfältigung, Kopie oder Veröffentlichung dieser unterschiedlichen Inhalte. <br> Diese können von Benutzern für private Zwecke verwendet werden; Jede kommerzielle Nutzung ist untersagt.'),
(12, 'ARTICLE 6 : Données personnelles', 'ARTICLE 6 : Personal Data', 'ARTÍCULO 6 : Datos personales', 'ARTIKEL 6 : Persönliche Daten'),
(13, 'L’Utilisateur doit obligatoirement fournir son adresse é-mail pour procéder à une demande de contact ou de renseignements. <br>L’adresse électronique (e-mail) de l’utilisateur pourra notamment être utilisée par le site B3D pour la communication d’informations diverses et la gestion des commandes et des réponses par e-mail.<br>B3D garantie le respect de la vie privée de l’utilisateur, conformément à la loi n°78-17 du 6 janvier 1978 relative à l\'informatique, aux fichiers et aux libertés.<br>Le site est déclaré auprès de la CNIL sous le numéro suivant : XXXX.<br>En vertu des articles 39 et 40 de la loi en date du 6 janvier 1978, l\'Utilisateur dispose d\'un droit d\'accès, de rectification, de suppression et d\'opposition de ses données personnelles. <br>L\'Utilisateur exerce ce droit via :<br>+ Un formulaire de contact<br>+ Par voie postale à l\'adresse :<br>B3D<br>L\'intendant,<br>47700 Poussignac.', 'The User must provide his e-mail address to make a request for contact or information. <br> The e-mail address (e-mail) of the user can be used by the B3D site for the communication of various information and the management of orders and responses by e-mail. <br> B3D guarantees the respect for the privacy of the user, in accordance with law n ° 78-17 of January 6, 1978 relating to data, files and freedoms. <br> The site is declared to the CNIL under the following number : XXXX. <br> By virtue of articles 39 and 40 of the law dated January 6, 1978, the User has a right of access, rectification, deletion and opposition of his personal data. <br> The User exercises this right via: <br> + A contact form <br> + By postal mail at: <br> B3D <br> The Intendant, <br> 47700 Poussignac.', 'El usuario debe proporcionar su dirección de correo electrónico para realizar una solicitud de contacto o información. <br> La dirección de correo electrónico (e-mail) del usuario puede ser utilizada por el sitio de B3D para la comunicación de información diversa y la gestión de pedidos y respuestas por correo electrónico. <br> B3D garantiza la Respeto a la privacidad del usuario, de conformidad con la ley n ° 78-17 del 6 de enero de 1978, relativa a los datos, archivos y libertades. El sitio se declara a la CNIL con el siguiente número : XXXX. <br> En virtud de los artículos 39 y 40 de la ley del 6 de enero de 1978, el Usuario tiene el derecho de acceso, rectificación, eliminación y oposición de sus datos personales. <br> El usuario ejerce este derecho a través de: <br> + Un formulario de contacto <br> + Por correo postal en: <br> B3D <br> The Intendant, <br> 47700 Poussignac.', 'Der Benutzer muss seine E-Mail-Adresse angeben, um eine Kontaktanfrage oder Informationen anzufordern. <br> Die E-Mail-Adresse (E-Mail-Adresse) des Benutzers kann von der B3D-Site für die Übermittlung verschiedener Informationen und die Verwaltung von Bestellungen und Antworten per E-Mail verwendet werden. <br> B3D garantiert das Achtung der Privatsphäre des Nutzers gemäß dem Gesetz Nr. 78-17 vom 6. Januar 1978 über Daten, Dateien und Freiheiten. <br> Die Website wird der CNIL unter der folgenden Nummer gemeldet : XXXX. <br> Mit den Artikeln 39 und 40 des Gesetzes vom 6. Januar 1978 hat der Benutzer ein Recht auf Auskunft, Berichtigung, Löschung und Widerspruch seiner personenbezogenen Daten. <br> Der Benutzer übt dieses Recht aus: <br> <br>+ Ein Kontaktformular <br> + Per Post an: <br> B3D <br> The Intendant, <br> 47700 Poussignac.'),
(14, 'ARTICLE 7 : Liens hypertextes', 'ARTICLE 7 : Hypertext links', 'ARTÍCULO 7 : Enlaces de hipertexto', 'ARTIKEL 7 : Hypertext-Links'),
(15, 'Les domaines vers lesquels mènent les liens hypertextes présents sur le site n’engagent pas la responsabilité de l’Éditeur de B3D, qui n’a pas de contrôle sur ces liens.<br>Il est possible pour un tiers de créer un lien vers une page du site B3D sans autorisation expresse de l’éditeur.', 'The domains to which the hypertext links on the site lead do not engage the responsibility of the B3D Editor, who has no control over these links. <br> It is possible for a third party to create a link to a page of the B3D website without the express permission of the publisher.', 'Los dominios a los que conducen los enlaces de hipertexto en el sitio no son responsabilidad del Editor B3D, que no tiene control sobre estos enlaces. Es posible que un tercero cree un enlace para una página del sitio web de B3D sin el permiso expreso del editor.', 'Die Domains, zu denen die Hypertext-Links auf der Website führen, sind nicht für den B3D-Editor verantwortlich, der keine Kontrolle über diese Links hat. <br> Ein Link von Dritten kann erstellt werden eine Seite der B3D-Website ohne die ausdrückliche Genehmigung des Herausgebers.'),
(16, 'ARTICLE 8 : Évolution des conditions générales d’utilisation', 'ARTICLE 8 : Evolution of the general conditions of use', 'ARTÍCULO 8 : Evolución de las condiciones generales de uso.', 'ARTIKEL 8 : Entwicklung der allgemeinen Nutzungsbedingungen'),
(17, 'Le site B3D se réserve le droit de modifier les clauses de ces conditions générales d’utilisation à tout moment et sans justification.', 'The B3D website reserves the right to modify the clauses of these terms of use at any time and without justification.', 'El sitio web de B3D se reserva el derecho de modificar las cláusulas de estos términos de uso en cualquier momento y sin justificación.', 'Die B3D-Website behält sich das Recht vor, die Klauseln dieser Nutzungsbedingungen jederzeit und ohne Begründung zu ändern.'),
(18, 'ARTICLE 9 : Droit applicable et juridiction compétente', 'ARTICLE 9 : Applicable Law and Jurisdiction', 'ARTICULO 9 : Ley aplicable y jurisdiccion', 'ARTIKEL 9 : Anwendbares Recht und Gerichtsstand'),
(19, 'Le présent contrat dépend de la législation française.<br>En cas de litige non résolu à l’amiable entre l’Utilisateur et l’Éditeur, les tribunaux de Cahors sont compétents pour régler le contentieux.', 'This contract is subject to French law. <br> In case of unresolved dispute between the User and the Publisher, the courts of Cahors are competent to settle the dispute.', 'Este contrato está sujeto a la ley francesa. <br> En caso de disputa no resuelta entre el Usuario y el Editor, los tribunales de Cahors son competentes para resolver la disputa.', 'Dieser Vertrag unterliegt französischem Recht. <br> Bei ungelösten Streitigkeiten zwischen dem Nutzer und dem Verlag sind die Gerichte von Cahors für die Beilegung der Streitigkeit zuständig.');

-- --------------------------------------------------------

--
-- Structure de la table `dwb3d1_produits`
--

DROP TABLE IF EXISTS `dwb3d1_produits`;
CREATE TABLE `dwb3d1_produits` (
  `ID` int(11) NOT NULL,
  `Francais` longtext NOT NULL,
  `Anglais` longtext NOT NULL,
  `Espagnol` longtext NOT NULL,
  `Allemand` longtext NOT NULL,
  `Categorie` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `dwb3d1_produits`
--

INSERT INTO `dwb3d1_produits` (`ID`, `Francais`, `Anglais`, `Espagnol`, `Allemand`, `Categorie`) VALUES
(1, 'Châtaignier', 'Chestnut', 'Castaña', 'Kastanie', 9),
(2, 'Description du produit', 'Product Description', 'Descripción de producto', 'Produktbeschreibung', 9),
(3, 'Moins durable dans le temps que l’acacia, le châtaignier en reste néanmoins une essence imputrescible grâce à sa présence d’acide tannique.</br></br>L’ensemble de nos produits châtaignier sont écorcés pour apporter plus d’esthétique et de propreté aux piquets mais surtout pour éviter de transporter des parasites sur le site de la clientèle.</br></br>Nos piquets châtaignier sont fendus ou planés et une pointe carrée d’une surface comprise entre 1 et 1,5 cm² est réalisée gros bout.</br></br>L’opération de fente permet au bois de conserver sa résistance mécanique et limiter les déformations de séchage.\r\n', 'Less durable in time than the acacia, the chestnut remains a non-rotting essence thanks to its presence of tannic acid. </br></br> All of our chestnut products are debarked to bring more aesthetics and cleanliness to the stakes but especially to avoid transporting parasites on the customer site. </br></br> Our chestnut stakes are slit or flat and a square tip with an area between 1 and 1.5 cm² is made of big end. </br></br> The slot operation allows the wood to maintain its mechanical strength and limit drying deformations.', 'Menos duradera en el tiempo que la acacia, la castaña sigue siendo una esencia que no se pudre gracias a su presencia de ácido tánico. </br></br> Todos nuestros productos de castaña están marcados para brindar más estética y limpieza de las estacas, pero especialmente para evitar el transporte de parásitos en el sitio del cliente. </br></br> Nuestras estacas de castaño son hendidas o planas y una punta cuadrada con un área entre 1 y 1.5 cm² está hecho de extremo grande. </br></br> La operación de la ranura permite que la madera mantenga su resistencia mecánica y limite las deformaciones de secado.', 'Weniger langlebig als die Akazie, bleibt die Kastanie dank ihrer Anwesenheit von Gerbsäure eine nicht verrottende Essenz. </br></br> Alle unsere Kastanienprodukte sind gerippt, um mehr Ästhetik zu erzeugen und Sauberkeit für die Pfähle, vor allem aber, um den Transport von Parasiten auf der Kundenseite zu vermeiden. </br></br> Unsere Kastanienpfähle sind geschlitzt oder flach und haben eine quadratische Spitze mit einer Fläche zwischen 1 und 1,5 cm² besteht aus einem großen Ende. </br></br> Durch den Schlitzbetrieb kann das Holz seine mechanische Festigkeit beibehalten und die Trocknungsverformungen begrenzen.', 9),
(4, 'Voir la fiche détaillée', 'See the detailed sheet', 'Vea la hoja detallada', 'Siehe ausführliches Datenblatt', 9),
(5, '<table class=\"table table-bordered text-center\">\r\n  <thead>\r\n    <tr>\r\n     <th scope=\"col\" colspan=\"2\">Longueurs</th>\r\n     <th scope=\"col\">2 m </th>\r\n     <th scope=\"col\">2 m 30</th>\r\n     <th scope=\"col\">2 m 50</th>\r\n    </tr>\r\n   </thead>\r\n   <tbody>\r\n    <tr>\r\n     <td  rowspan=\"2\"> Périmètres fin bout</td>\r\n     <td >24/29 cm</td>\r\n     <td  colspan=\"3\">130 pièces / palette</td>\r\n    </tr>\r\n    <tr>\r\n     <td>28cm et plus</td>\r\n     <td colspan=\"3\">110 pièces / palette</td>\r\n    </tr>\r\n   </tbody>\r\n</table>', '<table class=\"table table-bordered text-center\">\r\n  <thead>\r\n    <tr>\r\n     <th scope=\"col\" colspan=\"2\">Lenghts</th>\r\n     <th scope=\"col\">2 m </th>\r\n     <th scope=\"col\">2 m 30</th>\r\n     <th scope=\"col\">2 m 50</th>\r\n    </tr>\r\n   </thead>\r\n   <tbody>\r\n    <tr>\r\n     <td  rowspan=\"2\">Perimeters late end</td>\r\n     <td >24/29 cm</td>\r\n     <td  colspan=\"3\">130 pieces / pallet</td>\r\n    </tr>\r\n    <tr>\r\n     <td>28cm and more</td>\r\n     <td colspan=\"3\">110 pieces / pallet</td>\r\n    </tr>\r\n   </tbody>\r\n</table>', '<table class=\"table table-bordered text-center\">\r\n  <thead>\r\n    <tr>\r\n     <th scope=\"col\" colspan=\"2\">Longitudes</th>\r\n     <th scope=\"col\">2 m </th>\r\n     <th scope=\"col\">2 m 30</th>\r\n     <th scope=\"col\">2 m 50</th>\r\n    </tr>\r\n   </thead>\r\n   <tbody>\r\n    <tr>\r\n     <td  rowspan=\"2\">Perímetros finales finales</td>\r\n     <td >24/29 cm</td>\r\n     <td  colspan=\"3\">130 piezas / palet</td>\r\n    </tr>\r\n    <tr>\r\n     <td>28cm y más</td>\r\n     <td colspan=\"3\">110 piezas / palet</td>\r\n    </tr>\r\n   </tbody>\r\n</table>', '<table class=\"table table-bordered text-center\">\r\n  <thead>\r\n    <tr>\r\n     <th scope=\"col\" colspan=\"2\">Längen</th>\r\n     <th scope=\"col\">2 m </th>\r\n     <th scope=\"col\">2 m 30</th>\r\n     <th scope=\"col\">2 m 50</th>\r\n    </tr>\r\n   </thead>\r\n   <tbody>\r\n    <tr>\r\n     <td  rowspan=\"2\">Perimeter spätes Ende</td>\r\n     <td >24/29 cm</td>\r\n     <td  colspan=\"3\">130 stücke / palette</td>\r\n    </tr>\r\n    <tr>\r\n     <td>28cm und mehr</td>\r\n     <td colspan=\"3\">110 stücke / palette</td>\r\n    </tr>\r\n   </tbody>\r\n</table>', 9),
(6, 'Acacia', 'Acacia', 'Acacia', 'Akazie', 7),
(7, 'Description du produit', 'Product Description', 'Descripción de producto', 'Produktbeschreibung', 7),
(8, 'L’ensemble de nos produits acacia sont écorcés pour apporter plus d’esthétique et de propreté aux piquets mais surtout pour éviter de transporter des parasites sur le site de la clientèle.</br></br>Nos piquets acacia sont fendus ou planés et une pointe carrée d’une surface comprise entre 1 et 1,5 cm2 est réalisée gros bout.</br></br>L’opération de fente permet au bois de conserver sa résistance mécanique et limiter les déformations de séchage.', 'All of our acacia products are debarked to bring more aesthetics and cleanliness to the stakes but especially to avoid transporting parasites on the customer site. </br></br> Our acacia stakes are split or hovered and a square tip with a surface of between 1 and 1.5 cm 2 is made of coarse grain. </br></br></br> The slot operation allows the wood to maintain its mechanical strength and to limit drying deformations.', 'Todos nuestros productos de acacia están marcados para aportar más estética y limpieza a las estacas, pero especialmente para evitar el transporte de parásitos en el sitio del cliente. </br></br> Nuestras estacas de acacia están divididas o suspendidas. y una punta cuadrada con una superficie de entre 1 y 1,5 cm 2 está hecha de grano grueso. </br></br></br> La operación de la ranura permite que la madera mantenga su resistencia mecánica y limite las deformaciones de secado.', 'Alle unsere Akazienprodukte sind entrindet, um den Pfählen mehr Ästhetik und Sauberkeit zu bieten, vor allem aber den Transport von Parasiten auf der Kundenseite zu vermeiden. </br></br> Unsere Akazienpfähle sind gespalten oder schwebend und eine quadratische Spitze mit einer Oberfläche zwischen 1 und 1,5 cm 2 ist aus grobkörnigem Korn hergestellt. </br></br></br> Durch den Spaltvorgang kann das Holz seine mechanische Festigkeit beibehalten und Trocknungsverformungen begrenzen.', 7),
(9, 'Voir la fiche détaillée', 'See the detailed sheet', 'Vea la hoja detallada', 'Siehe ausführliches Datenblatt', 7),
(10, 'Piquets fendus', 'Split stakes', 'Apuestas divididas', 'Split-Einsätze', 7),
(11, '<table class=\"table table-bordered text-center\">\r\n<thead>\r\n        <tr>\r\n          <th scope=\"col\" colspan=\"2\">Longueurs</th>\r\n          <th scope=\"col\">1m 40</th>\r\n          <th scope=\"col\">1m 80</th>\r\n          <th scope=\"col\">2m 00</th>\r\n          <th scope=\"col\">2m 30</th>\r\n          <th scope=\"col\">2m 50</th>\r\n        </tr>\r\n</thead>\r\n        <tr>\r\n          <td rowspan=\"4\">Périmètres fin bout</td>\r\n          <td>19/23 cm</td>\r\n          <td colspan=\"3\">160 pièces / palette</td>\r\n          <td>-</td>\r\n          <td>-</td>\r\n        </tr>\r\n        <tr>\r\n          <td>23/26 cm</td>\r\n          <td colspan=\"4\">150 pièces / palette</td>\r\n          <td>-</td>\r\n        </tr>\r\n        <tr>\r\n          <td>26/29 cm</td>\r\n          <td colspan=\"5\">130 pièces / palette</td>\r\n        </tr>\r\n        <tr>\r\n          <td>29 cm et plus</td>\r\n          <td>-</td>\r\n          <td colspan=\"4\">110 pièces / palette</td>\r\n        </tr>\r\n      </table>', '<table class=\"table table-bordered text-center\">\r\n<thead>\r\n        <tr>\r\n          <th scope=\"col\" colspan=\"2\">lengths</th>\r\n          <th scope=\"col\">1m 40</th>\r\n          <th scope=\"col\">1m 80</th>\r\n          <th scope=\"col\">2m 00</th>\r\n          <th scope=\"col\">2m 30</th>\r\n          <th scope=\"col\">2m 50</th>\r\n        </tr>\r\n</thead>\r\n        <tr>\r\n          <td rowspan=\"4\">Perimeters late end</td>\r\n          <td>19/23 cm</td>\r\n          <td colspan=\"3\">160 pieces / pallet</td>\r\n          <td>-</td>\r\n          <td>-</td>\r\n        </tr>\r\n        <tr>\r\n          <td>23/26 cm</td>\r\n          <td colspan=\"4\">150 pieces / pallet</td>\r\n          <td>-</td>\r\n        </tr>\r\n        <tr>\r\n          <td>26/29 cm</td>\r\n          <td colspan=\"5\">130 pieces / pallet</td>\r\n        </tr>\r\n        <tr>\r\n          <td>29 cm and more</td>\r\n          <td>-</td>\r\n          <td colspan=\"4\">110 parts / pallet</td>\r\n        </tr>\r\n      </table>', '<table class=\"table table-bordered text-center\">\r\n<thead>\r\n        <tr>\r\n          <th scope=\"col\" colspan=\"2\">Longitudes</th>\r\n          <th scope=\"col\">1m 40</th>\r\n          <th scope=\"col\">1m 80</th>\r\n          <th scope=\"col\">2m 00</th>\r\n          <th scope=\"col\">2m 30</th>\r\n          <th scope=\"col\">2m 50</th>\r\n        </tr>\r\n</thead>\r\n        <tr>\r\n          <td rowspan=\"4\">Perímetros finales finales</td>\r\n          <td>19/23 cm</td>\r\n          <td colspan=\"3\">160 piezas / palet</td>\r\n          <td>-</td>\r\n          <td>-</td>\r\n        </tr>\r\n        <tr>\r\n          <td>23/26 cm</td>\r\n          <td colspan=\"4\">150 piezas / palet</td>\r\n          <td>-</td>\r\n        </tr>\r\n        <tr>\r\n          <td>26/29 cm</td>\r\n          <td colspan=\"5\">130 piezas / palet</td>\r\n        </tr>\r\n        <tr>\r\n          <td>29 cm y más</td>\r\n          <td>-</td>\r\n          <td colspan=\"4\">110 piezas / palet</td>\r\n        </tr>\r\n      </table>', '<table class=\"table table-bordered text-center\">\r\n<thead>\r\n        <tr>\r\n          <th scope=\"col\" colspan=\"2\">Längen</th>\r\n          <th scope=\"col\">1m 40</th>\r\n          <th scope=\"col\">1m 80</th>\r\n          <th scope=\"col\">2m 00</th>\r\n          <th scope=\"col\">2m 30</th>\r\n          <th scope=\"col\">2m 50</th>\r\n        </tr>\r\n</thead>\r\n        <tr>\r\n          <td rowspan=\"4\">Perimeter spätes Ende</td>\r\n          <td>19/23 cm</td>\r\n          <td colspan=\"3\">160 stücke / palette</td>\r\n          <td>-</td>\r\n          <td>-</td>\r\n        </tr>\r\n        <tr>\r\n          <td>23/26 cm</td>\r\n          <td colspan=\"4\">150 stücke / palette</td>\r\n          <td>-</td>\r\n        </tr>\r\n        <tr>\r\n          <td>26/29 cm</td>\r\n          <td colspan=\"5\">130 stücke / palette</td>\r\n        </tr>\r\n        <tr>\r\n          <td>29 cm und mehr</td>\r\n          <td>-</td>\r\n          <td colspan=\"4\">110 stücke / palette</td>\r\n        </tr>\r\n      </table>', 7),
(12, 'Piquets ronds', 'Round stakes', 'Estacas redondas', 'Runde Einsätze', 7),
(13, '<table class=\"table table-bordered text-center\">\r\n<thead>\r\n        <tr>\r\n          <th scope=\"col\" colspan=\"2\">Longueurs</th>\r\n          <th scope=\"col\">1m 80</th>\r\n          <th scope=\"col\">2m 00</th>\r\n          <th scope=\"col\">2m 30</th>\r\n          <th scope=\"col\">2m 50</th>\r\n          <th scope=\"col\">3m 00</th>\r\n          <th scope=\"col\">4m 00</th>\r\n        </tr>\r\n</thead>\r\n        <tr>\r\n          <td rowspan=\"4\">Diamètres fin bout</td>\r\n          <td>6/8 cm</td>\r\n          <td colspan=\"5\">80 pièces / palette</td>\r\n          <td>-</td>\r\n        </tr>\r\n        <tr>\r\n          <td>8/10 cm</td>\r\n          <td colspan=\"5\">71 pièces / palette</td>\r\n          <td>-</td>\r\n        </tr>\r\n        <tr>\r\n          <td>10/12 cm</td>\r\n          <td colspan=\"6\">56 pièces / palette</td>\r\n        </tr>\r\n        <tr>\r\n          <td>12/15 cm</td>\r\n          <td colspan=\"6\">42 pièces / palette</td>\r\n        </tr>\r\n      </table>', '<table class=\"table table-bordered text-center\">\r\n<thead>\r\n        <tr>\r\n          <th scope=\"col\" colspan=\"2\">Lenghts</th>\r\n          <th scope=\"col\">1m 80</th>\r\n          <th scope=\"col\">2m 00</th>\r\n          <th scope=\"col\">2m 30</th>\r\n          <th scope=\"col\">2m 50</th>\r\n          <th scope=\"col\">3m 00</th>\r\n          <th scope=\"col\">4m 00</th>\r\n        </tr>\r\n</thead>\r\n        <tr>\r\n          <td rowspan=\"4\">Diameters fine end</td>\r\n          <td>6/8 cm</td>\r\n          <td colspan=\"5\">80 pieces / pallet</td>\r\n          <td>-</td>\r\n        </tr>\r\n        <tr>\r\n          <td>8/10 cm</td>\r\n          <td colspan=\"5\">71 pieces / pallet</td>\r\n          <td>-</td>\r\n        </tr>\r\n        <tr>\r\n          <td>10/12 cm</td>\r\n          <td colspan=\"6\">56 pieces / pallet</td>\r\n        </tr>\r\n        <tr>\r\n          <td>12/15 cm</td>\r\n          <td colspan=\"6\">42 pieces / pallet</td>\r\n        </tr>\r\n      </table>', '<table class=\"table table-bordered text-center\">\r\n<thead>\r\n        <tr>\r\n          <th scope=\"col\" colspan=\"2\">Longitudes</th>\r\n          <th scope=\"col\">1m 80</th>\r\n          <th scope=\"col\">2m 00</th>\r\n          <th scope=\"col\">2m 30</th>\r\n          <th scope=\"col\">2m 50</th>\r\n          <th scope=\"col\">3m 00</th>\r\n          <th scope=\"col\">4m 00</th>\r\n        </tr>\r\n</thead>\r\n        <tr>\r\n          <td rowspan=\"4\">Diámetros extremo final</td>\r\n          <td>6/8 cm</td>\r\n          <td colspan=\"5\">80 piezas / palet</td>\r\n          <td>-</td>\r\n        </tr>\r\n        <tr>\r\n          <td>8/10 cm</td>\r\n          <td colspan=\"5\">71 piezas / palet</td>\r\n          <td>-</td>\r\n        </tr>\r\n        <tr>\r\n          <td>10/12 cm</td>\r\n          <td colspan=\"6\">56 piezas / palet</td>\r\n        </tr>\r\n        <tr>\r\n          <td>12/15 cm</td>\r\n          <td colspan=\"6\">42 piezas / palet</td>\r\n        </tr>\r\n      </table>', '<table class=\"table table-bordered text-center\">\r\n<thead>\r\n        <tr>\r\n          <th scope=\"col\" colspan=\"2\">Längen</th>\r\n          <th scope=\"col\">1m 80</th>\r\n          <th scope=\"col\">2m 00</th>\r\n          <th scope=\"col\">2m 30</th>\r\n          <th scope=\"col\">2m 50</th>\r\n          <th scope=\"col\">3m 00</th>\r\n          <th scope=\"col\">4m 00</th>\r\n        </tr>\r\n</thead>\r\n        <tr>\r\n          <td rowspan=\"4\">Durchmesser Ende Ende</td>\r\n          <td>6/8 cm</td>\r\n          <td colspan=\"5\">80 stücke / palette</td>\r\n          <td>-</td>\r\n        </tr>\r\n        <tr>\r\n          <td>8/10 cm</td>\r\n          <td colspan=\"5\">71 stücke / palette</td>\r\n          <td>-</td>\r\n        </tr>\r\n        <tr>\r\n          <td>10/12 cm</td>\r\n          <td colspan=\"6\">56 stücke / palette</td>\r\n        </tr>\r\n        <tr>\r\n          <td>12/15 cm</td>\r\n          <td colspan=\"6\">42 stücke / palette</td>\r\n        </tr>\r\n      </table>', 7),
(14, 'Pin', 'Pine', 'Pino', 'Kiefer', 8),
(15, 'Description du produit', 'Product Description', 'Descripción de producto', 'Produktbeschreibung', 8),
(16, 'Nos piquets et poteaux pins sont planés et une pointe carrée d’une surface comprise entre 1 et 1,5 cm2 est réalisée gros bout.</br></br>La qualité de nos bois est conforme aux spécifications de la norme NF B 50-100-3 pour une classe d’emploi classe IV après avoir subi un traitement en autoclave suivant le procédé Bethell vide et pression 12 bars dans une station certifiée CTB B+.</br></br>La proportion de bois de cœur présente dans nos pins est faible ce qui permet une pénétration et une rétention de produit de préservation optimum pour une longévité accrue de nos piquets et poteaux.', 'Our pins and poles pins are flat and a square point of a surface between 1 and 1.5 cm2 is made big end. </br></br> The quality of our woods is in conformity with the specifications of standard NF B 50-100-3 for a Class IV use class after autoclaving using the vacuum Bethell process and 12 bar pressure at a CTB B + certified station. </br></br> The proportion of heartwood present in our pines is low which allows penetration and retention of optimum preservation product for increased longevity of our stakes and poles.', 'Nuestros pines y polos son planos y una punta cuadrada de una superficie entre 1 y 1,5 cm2 se hace de extremo grande. </br></br> La calidad de nuestras maderas cumple con las especificaciones de la norma NF B 50-100-3 para una clase de uso de Clase IV después de la autoclave utilizando el proceso de vacío de Bethell y 12 bar de presión en una estación certificada por CTB B +. </br></br> La proporción de duramen La presencia en nuestros pinos es baja, lo que permite la penetración y retención del producto de conservación óptimo para aumentar la longevidad de nuestras estacas y postes.', 'Unsere Stifte und Stifte sind flach und ein quadratischer Punkt mit einer Oberfläche zwischen 1 und 1,5 cm2 ist ein großes Ende. </br></br> Die Qualität unserer Hölzer entspricht den Spezifikationen der Norm NF B 50-100-3 für eine Nutzungsklasse der Klasse IV nach Autoklavieren im Bethell-Vakuumverfahren und 12 bar Druck an einer CTB B + -zertifizierten Station. </br></br> Der Anteil an Kernholz In unseren Kiefern ist das Vorkommen gering, was das Eindringen und Verbleiben eines optimalen Konservierungsprodukts für eine längere Lebensdauer unserer Pfähle und Stöcke ermöglicht.', 8),
(17, 'Voir la fiche détaillée', 'See the detailed sheet', 'Vea la hoja detallada', 'Siehe ausführliches Datenblatt', 8),
(18, 'Piquets viticoles', 'wine stakes', 'Estacas de vino', 'Weinpfähle', 8),
(19, '<table class=\"table table-bordered text-center\">\r\n      	<tbody>\r\n<thead>\r\n      		<tr>\r\n      			<th scope=\"col\" colspan=\"2\">Longueurs</td>\r\n      			<th scope=\"col\">2m 00</td>\r\n      			<th scope=\"col\">2m 30</td>\r\n      			<th scope=\"col\">2m 50</td>\r\n      		</tr>\r\n</thead>\r\n      		<tr>\r\n      			<td rowspan=\"3\"><span class=\"verticalCells\">Diamètres fin bout</span></td>\r\n      			<td>7/10 cm</td>\r\n      			<td colspan=\"3\">80 pièces / palette</td>\r\n      		</tr>\r\n      		<tr>\r\n      			<td>10/12 cm</td>\r\n      			<td colspan=\"3\">72 pièces / palette</td>\r\n      		</tr>\r\n      		<tr>\r\n      			<td>12/14 cm</td>\r\n      			<td colspan=\"3\">56 pièces / palette</td>\r\n      		</tr>\r\n      	</tbody>\r\n      </table>', '<table class=\"table table-bordered text-center\">\r\n      	<tbody>\r\n<thead>\r\n      		<tr>\r\n      			<th scope=\"col\" colspan=\"2\">lengths</td>\r\n      			<th scope=\"col\">2m 00</td>\r\n      			<th scope=\"col\">2m 30</td>\r\n      			<th scope=\"col\">2m 50</td>\r\n      		</tr>\r\n</thead>\r\n      		<tr>\r\n      			<td rowspan=\"3\"><span class=\"verticalCells\">Diameters fine end</span></td>\r\n      			<td>7/10 cm</td>\r\n      			<td colspan=\"3\">80 pieces / pallet</td>\r\n      		</tr>\r\n      		<tr>\r\n      			<td>10/12 cm</td>\r\n      			<td colspan=\"3\">72 pieces / pallet</td>\r\n      		</tr>\r\n      		<tr>\r\n      			<td>12/14 cm</td>\r\n      			<td colspan=\"3\">56 pieces / pallet</td>\r\n      		</tr>\r\n      	</tbody>\r\n      </table>', '<table class=\"table table-bordered text-center\">\r\n      	<tbody>\r\n<thead>\r\n      		<tr>\r\n      			<th scope=\"col\" colspan=\"2\">longitudes</td>\r\n      			<th scope=\"col\">2m 00</td>\r\n      			<th scope=\"col\">2m 30</td>\r\n      			<th scope=\"col\">2m 50</td>\r\n      		</tr>\r\n</thead>\r\n      		<tr>\r\n      			<td rowspan=\"3\"><span class=\"verticalCells\">Diámetros extremo final</span></td>\r\n      			<td>7/10 cm</td>\r\n      			<td colspan=\"3\">80 piezas / palet</td>\r\n      		</tr>\r\n      		<tr>\r\n      			<td>10/12 cm</td>\r\n      			<td colspan=\"3\">72 piezas / palet</td>\r\n      		</tr>\r\n      		<tr>\r\n      			<td>12/14 cm</td>\r\n      			<td colspan=\"3\">56 piezas / palet</td>\r\n      		</tr>\r\n      	</tbody>\r\n      </table>', '<table class=\"table table-bordered text-center\">\r\n      	<tbody>\r\n<thead>\r\n      		<tr>\r\n      			<th scope=\"col\" colspan=\"2\">Längen</td>\r\n      			<th scope=\"col\">2m 00</td>\r\n      			<th scope=\"col\">2m 30</td>\r\n      			<th scope=\"col\">2m 50</td>\r\n      		</tr>\r\n</thead>\r\n      		<tr>\r\n      			<td rowspan=\"3\"><span class=\"verticalCells\">Durchmesser feines Ende</span></td>\r\n      			<td>7/10 cm</td>\r\n      			<td colspan=\"3\">80 stücke / palette</td>\r\n      		</tr>\r\n      		<tr>\r\n      			<td>10/12 cm</td>\r\n      			<td colspan=\"3\">72 stücke / palette</td>\r\n      		</tr>\r\n      		<tr>\r\n      			<td>12/14 cm</td>\r\n      			<td colspan=\"3\">56 stücke / palette</td>\r\n      		</tr>\r\n      	</tbody>\r\n      </table>', 8),
(20, 'Poteaux arboricoles', 'Tree poles', 'Postes de arbol', 'Baumpfosten', 8),
(21, '<table class=\"table table-bordered text-center\">\r\n      	<tbody>\r\n<thead>\r\n      		<tr>\r\n      			<th scope=\"col\" colspan=\"2\">Longueurs</td>\r\n      			<th scope=\"col\">2m 50</td>\r\n      			<th scope=\"col\">2m 80</td>\r\n      			<th scope=\"col\">3m 00</td>\r\n      			<th scope=\"col\">3m 50</td>\r\n      			<th scope=\"col\">4m 00</td>\r\n      			<th scope=\"col\">4m 50</td>\r\n      			<th scope=\"col\">5m 00</td>\r\n      		</tr>\r\n</thead>\r\n      		<tr>\r\n      			<td rowspan=\"4\"><span class=\"verticalCells\">Diamètres fin bout</span></td>\r\n      			<td>7/10 cm</td>\r\n      			<td colspan=\"3\">80 pièces / palette</td>\r\n      			<td colspan=\"4\">-</td>\r\n      		</tr>\r\n      		<tr>\r\n      			<td>10/12 cm</td>\r\n      			<td colspan=\"4\">72 pièces / palette</td>\r\n      			<td colspan=\"3\">64 pièces / palette</td>\r\n      		</tr>\r\n      		<tr>\r\n            <td>12/14 cm</td>\r\n      			<td colspan=\"4\">56 pièces / palette</td>\r\n      			<td colspan=\"3\">48 pièces / palette</td>\r\n      		</tr>\r\n      		<tr>\r\n            <td>14/16 cm</td>\r\n      			<td colspan=\"4\">42 pièces / palette</td>\r\n      			<td colspan=\"3\">36 pièces / palette</td>\r\n      		</tr>\r\n      	</tbody>\r\n      </table>', '<table class=\"table table-bordered text-center\">\r\n      	<tbody>\r\n<thead>\r\n      		<tr>\r\n      			<th scope=\"col\" colspan=\"2\">Lengths</td>\r\n      			<th scope=\"col\">2m 50</td>\r\n      			<th scope=\"col\">2m 80</td>\r\n      			<th scope=\"col\">3m 00</td>\r\n      			<th scope=\"col\">3m 50</td>\r\n      			<th scope=\"col\">4m 00</td>\r\n      			<th scope=\"col\">4m 50</td>\r\n      			<th scope=\"col\">5m 00</td>\r\n      		</tr>\r\n</thead>\r\n      		<tr>\r\n      			<td rowspan=\"4\"><span class=\"verticalCells\">Diameters fine end</span></td>\r\n      			<td>7/10 cm</td>\r\n      			<td colspan=\"3\">80 pieces / pallet</td>\r\n      			<td colspan=\"4\">-</td>\r\n      		</tr>\r\n      		<tr>\r\n      			<td>10/12 cm</td>\r\n      			<td colspan=\"4\">72 pieces / pallet</td>\r\n      			<td colspan=\"3\">64 pieces / pallet</td>\r\n      		</tr>\r\n      		<tr>\r\n            <td>12/14 cm</td>\r\n      			<td colspan=\"4\">56 pieces / pallet</td>\r\n      			<td colspan=\"3\">48 pieces / pallet</td>\r\n      		</tr>\r\n      		<tr>\r\n            <td>14/16 cm</td>\r\n      			<td colspan=\"4\">42 pieces / palet</td>\r\n      			<td colspan=\"3\">36 pieces / palet</td>\r\n      		</tr>\r\n      	</tbody>\r\n      </table>', '<table class=\"table table-bordered text-center\">\r\n      	<tbody>\r\n<thead>\r\n      		<tr>\r\n      			<th scope=\"col\" colspan=\"2\">Longitudes</td>\r\n      			<th scope=\"col\">2m 50</td>\r\n      			<th scope=\"col\">2m 80</td>\r\n      			<th scope=\"col\">3m 00</td>\r\n      			<th scope=\"col\">3m 50</td>\r\n      			<th scope=\"col\">4m 00</td>\r\n      			<th scope=\"col\">4m 50</td>\r\n      			<th scope=\"col\">5m 00</td>\r\n      		</tr>\r\n</thead>\r\n      		<tr>\r\n      			<td rowspan=\"4\"><span class=\"verticalCells\">Diámetros extremo final</span></td>\r\n      			<td>7/10 cm</td>\r\n      			<td colspan=\"3\">80 piezas / palet</td>\r\n      			<td colspan=\"4\">-</td>\r\n      		</tr>\r\n      		<tr>\r\n      			<td>10/12 cm</td>\r\n      			<td colspan=\"4\">72 piezas / palet</td>\r\n      			<td colspan=\"3\">64 piezas / palet</td>\r\n      		</tr>\r\n      		<tr>\r\n            <td>12/14 cm</td>\r\n      			<td colspan=\"4\">56 piezas / palet</td>\r\n      			<td colspan=\"3\">48 piezas / palet</td>\r\n      		</tr>\r\n      		<tr>\r\n            <td>14/16 cm</td>\r\n      			<td colspan=\"4\">42 piezas / palet</td>\r\n      			<td colspan=\"3\">36 piezas / palet</td>\r\n      		</tr>\r\n      	</tbody>\r\n      </table>', '<table class=\"table table-bordered text-center\">\r\n      	<tbody>\r\n<thead>\r\n      		<tr>\r\n      			<th scope=\"col\" colspan=\"2\">Längen</td>\r\n      			<th scope=\"col\">2m 50</td>\r\n      			<th scope=\"col\">2m 80</td>\r\n      			<th scope=\"col\">3m 00</td>\r\n      			<th scope=\"col\">3m 50</td>\r\n      			<th scope=\"col\">4m 00</td>\r\n      			<th scope=\"col\">4m 50</td>\r\n      			<th scope=\"col\">5m 00</td>\r\n      		</tr>\r\n</thead>\r\n      		<tr>\r\n      			<td rowspan=\"4\"><span class=\"verticalCells\">Durchmesser feines Ende</span></td>\r\n      			<td>7/10 cm</td>\r\n      			<td colspan=\"3\">80 c</td>\r\n      			<td colspan=\"4\">-</td>\r\n      		</tr>\r\n      		<tr>\r\n      			<td>10/12 cm</td>\r\n      			<td colspan=\"4\">72 stücke / Palette</td>\r\n      			<td colspan=\"3\">64 stücke / Palette</td>\r\n      		</tr>\r\n      		<tr>\r\n            <td>12/14 cm</td>\r\n      			<td colspan=\"4\">56 stücke / Palette</td>\r\n      			<td colspan=\"3\">48 stücke / Palette</td>\r\n      		</tr>\r\n      		<tr>\r\n            <td>14/16 cm</td>\r\n      			<td colspan=\"4\">42 stücke / Palette</td>\r\n      			<td colspan=\"3\">36 stücke / Palette</td>\r\n      		</tr>\r\n      	</tbody>\r\n      </table>', 8),
(22, 'Produits', 'Products', 'Productos', 'Produkte', 10),
(23, 'Nos piquets et rondins sont produits à partir de trois essences de grumes exploitées dans un rayon de 70 km.</br></br>\r\nNos grumes de pin proviennent de coupes d’éclaircies plantées après la tempête de 1999.</br>\r\nCes bois juvéniles utilisés généralement pour la mise en place de filets anti-grêle ou le palissage comportent une très faible proportion de bois de cœur leurs donnant une très bonne aptitude au traitement autoclave.</br></br>\r\nNos grumes d’acacia comportent une très faible quantité d’aubier et des cernes d’accroissement serrées conférant au bois une excellente durabilité naturelle et une très bonne résistance mécanique.</br></br>\r\nNos grumes de châtaignier sont sélectionnées pour leur qualité intrinsèque.</br></br>\r\nL’ensemble de nos bois proviennent de coupes gérées durablement et bénéficient généralement de la certification PEFC.\r\n', 'Our stakes and logs are produced from three species of logs operated within a radius of 70 km. </br></br>\r\nOur pine logs come from thinning cups planted after the 1999 storm. </br>\r\nThese juvenile woods generally used for setting anti-hail nets or trellising have a very low proportion of heartwood giving them a very good autoclavability. </br></br>\r\nOur acacia logs have a very small amount of sapwood and tight growth rings giving the wood excellent natural durability and very good mechanical strength. </br></br>\r\nOur chestnut logs are selected for their intrinsic quality. </br></br>\r\nAll of our wood comes from sustainably managed cuts and generally benefits from PEFC certification.', 'Nuestras estacas y troncos se producen a partir de tres especies de troncos operados en un radio de 70 km. </br></br>\r\nNuestros troncos de pino provienen de tazas de adelgazamiento plantadas después de la tormenta de 1999. </br>\r\nEstas maderas juveniles generalmente utilizadas para colocar redes contra el granizo o enrejado tienen una proporción muy baja de duramen, lo que les otorga una muy buena capacidad de autoclavabilidad. </br></br>\r\nNuestros troncos de acacia tienen una cantidad muy pequeña de albura y anillos de crecimiento apretados que le dan a la madera una excelente durabilidad natural y una muy buena resistencia mecánica. </br></br>\r\nNuestros troncos de castaño son seleccionados por su calidad intrínseca. </br></br>\r\nToda nuestra madera proviene de cortes gestionados de forma sostenible y generalmente se beneficia de la certificación PEFC.', 'Unsere Pfähle und Protokolle werden aus drei Holzarten hergestellt, die im Umkreis von 70 km betrieben werden. </br></br>\r\nUnsere Kiefernstämme stammen aus Ausdünnungsbechern, die nach dem Sturm von 1999 gepflanzt wurden. </br>\r\nDiese Jugendhölzer, die im Allgemeinen zum Setzen von Hagelschutznetzen oder zum Trommeln verwendet werden, haben einen sehr geringen Kernholzanteil, wodurch sie eine sehr gute Autoklavierbarkeit besitzen. </br></br>\r\nUnsere Akazienstämme haben eine sehr kleine Menge Splintholz und enge Wachstumsringe, wodurch das Holz eine hervorragende natürliche Haltbarkeit und sehr gute mechanische Festigkeit hat. </br></br>\r\nUnsere Kastanienprotokolle werden aufgrund ihrer Qualität ausgewählt. </br></br>\r\nUnser gesamtes Holz stammt aus nachhaltig bewirtschafteten Schnitten und profitiert im Allgemeinen von der PEFC-Zertifizierung.', 10),
(24, 'Écorcé par mesure phytosanitaire, pour plus d\'esthétisme et de propreté. Découvrez nos produits acacia !', 'Peeled by phytosanitary measure, for more aesthetics and cleanliness. Discover our acacia products !', 'Pelado por medida fitosanitaria, para más estética y limpieza. ¡Descubre nuestros productos de acacia !', 'Durch pflanzengesundheitliche Maßnahmen geschält, für mehr Ästhetik und Sauberkeit. Entdecken Sie unsere Akazienprodukte !', 10),
(25, 'Nos piquets et poteaux pin sont planés et traités suivant le référentiel de la marque de certification CTB B+. Découvrez nos produits!', 'Our pegs and pine posts are planed and treated according to the CTB B + certification mark. Discover our products !', 'Nuestras clavijas y postes de pino se planean y tratan de acuerdo con la marca de certificación CTB B +. ¡ Descubre nuestros productos !', 'Unsere Stifte und Kiefernpfosten werden gemäß dem CTB B + -Zertifizierungszeichen geplant und behandelt. Entdecken Sie unsere Produkte !', 10),
(26, 'Écorcé par mesure phytosanitaire, pour plus d\'esthétisme et de propreté. Découvrez nos produits chataigner !', 'Peeled by phytosanitary measure, for more aesthetics and cleanliness. Discover our products chataigner !', 'Pelado por medida fitosanitaria, para más estética y limpieza. ¡ Descubre nuestros productos chataigner !', 'Durch pflanzengesundheitliche Maßnahmen geschält, für mehr Ästhetik und Sauberkeit. Entdecken Sie unsere Produkte chataigner !', 10),
(27, 'Voir les produits', 'See the products', 'Ver los productos', 'Siehe die Produkte', 10);

-- --------------------------------------------------------

--
-- Structure de la table `dwb3d1_societe`
--

DROP TABLE IF EXISTS `dwb3d1_societe`;
CREATE TABLE `dwb3d1_societe` (
  `ID` int(11) NOT NULL,
  `Francais` text NOT NULL,
  `Anglais` text NOT NULL,
  `Espagnol` text NOT NULL,
  `Allemand` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `dwb3d1_societe`
--

INSERT INTO `dwb3d1_societe` (`ID`, `Francais`, `Anglais`, `Espagnol`, `Allemand`) VALUES
(1, 'Notre histoire\r\n', 'Our history', 'Nuestra historia', 'Unsere geschichte'),
(2, 'Notre société est située à Poussignac dans le Lot-et-Garonne aux portes du massif landais et au plus près de la ressource forestière.</br></br>\r\nDans les années 80, mon père y a construit une scierie de pin maritime fermée en 2015.</br></br>\r\nEn 2018, fort de 20 ans d’expérience dans différents organismes et sociétés de la filière bois, j’ai souhaité revenir sur le site familial pour installer une unité de fabrication de piquets bois.</br></br>\r\nJe me suis spécialisé dans la fabrication de piquets et rondins d’acacia, pins ou châtaignier.', 'Our company is located in Poussignac in the Lot-et-Garonne at the gates of the Landes massif and closer to the forest resource. </br></br>\r\nIn the 1980s, my father built a closed maritime pine sawmill there in 2015. </br> </br>\r\nIn 2018, with 20 years of experience in various organizations and companies in the wood industry, I wanted to return to the family site to install a wood picket manufacturing unit. </br> </br>\r\nI specialized in the manufacture of pickets and logs of acacia, pines or chestnut.', 'Nuestra empresa está ubicada en Poussignac, en Lot-et-Garonne, a las puertas del macizo de las Landas y más cerca del recurso forestal. </br> </br>\r\nEn la década de 1980, mi padre construyó allí un aserradero de pino marítimo cerrado en 2015. </br> </br>\r\nEn 2018, con 20 años de experiencia en varias organizaciones y empresas de la industria de la madera, quise volver al sitio familiar para instalar una unidad de fabricación de piquetes de madera. </br> </br>\r\nMe especialicé en la fabricación de piquetes y troncos de acacia, pinos o castaños.', '\r\nUnser Unternehmen befindet sich in Poussignac in Lot-et-Garonne vor den Toren des Landesmassivs und näher an der Waldressource. </br></br>\r\nIn den 1980er Jahren baute mein Vater dort 2015 ein geschlossenes maritimes Kiefernsägewerk. </br></br>\r\nIm Jahr 2018 wollte ich mit 20 Jahren Erfahrung in verschiedenen Organisationen und Unternehmen der Holzbranche an den Familienstandort zurückkehren, um eine Einheit zur Herstellung von Holzpickets zu installieren. </br></br>\r\nIch habe mich auf die Herstellung von Streikposten und Baumstämmen aus Akazien, Kiefern oder Kastanien spezialisiert.'),
(3, 'Présentation de la production', 'Presentation of the production', 'Presentación de la producción', 'Vorstellung der Produktion'),
(4, 'La présence d’une diversité d’essences de bois locaux a orienté mon choix sur un outil de transformation souple et flexible permettant de produire des piquets acacia, pins et châtaignier de différentes dimensions.</br></br>\r\nSuivant l’essence et le diamètre des bois transformés deux opérations sont réalisées.</br></br> \r\nUne opération de planage permettant d’apporter un état de surface raboté et lisse aux bois ronds ou une opération de fente permettant de suivre le fil du bois et conserver sa résistance mécanique et éviter des déformations de séchage.</br></br> \r\nPar mesure de précaution sanitaire une opération d’écorçage est réalisée sur l’ensemble des grumes. ', 'The presence of a variety of local wood species has guided my choice on a flexible and flexible processing tool to produce acacia, pine and chestnut stakes of different sizes. </br></br>\r\nDepending on the species and the diameter of the processed wood, two operations are carried out. </br></br>\r\nA planing operation to bring a planed and smooth surface to round woods or a slot operation to follow the wood grain and maintain its mechanical strength and prevent drying deformations. </br></br>\r\nAs a sanitary precaution a debarking operation is performed on all logs.', 'La presencia de una variedad de especies de madera locales ha guiado mi elección en una herramienta de procesamiento flexible y flexible para producir estacas de acacia, pino y castaño de diferentes tamaños. </br></br>\r\nDependiendo de la especie y el diámetro de la madera procesada, se realizan dos operaciones. </br></br>\r\nUna operación de cepillado para llevar una superficie plana y lisa a maderas redondas o una operación de ranura para seguir el grano de la madera y mantener su resistencia mecánica y evitar deformaciones por secado. </br></br>\r\nComo precaución sanitaria, se realiza una operación de descortezado en todos los registros.', 'Das Vorhandensein einer Vielzahl lokaler Holzarten hat meine Wahl auf ein flexibles und flexibles Verarbeitungswerkzeug zur Herstellung von Akazien-, Kiefern- und Kastanienpfählen unterschiedlicher Größe gerichtet. </br></br>\r\nAbhängig von der Holzart und dem Durchmesser des verarbeiteten Holzes werden zwei Vorgänge durchgeführt. </br></br>\r\nEine Hobeloperation, um eine ebene und glatte Oberfläche zu runden Hölzern zu bringen, oder eine Schlitzoperation, um der Holzmaserung zu folgen und ihre mechanische Festigkeit beizubehalten und Trocknungsverformungen zu verhindern. </br></br>\r\nAus hygienischen Gründen wird für alle Protokolle ein Entrindungsvorgang durchgeführt.'),
(5, 'Clientèle', 'Customer base', 'Clientes', 'Kundschaft'),
(6, 'Destinés aux vignerons, paysagistes, arboriculteurs, ou tout simplement aux particuliers désireux de créer une clôture ou un aménagement de jardin, les piquets ou rondins B3D sont une valeur sûre.</br></br>\r\nLa satisfaction client est notre objectif premier et un contrôle de la qualité du produit est réalisé à chaque étape de transformation.\r\n', 'Designed for growers, landscapers, arboriculturists, or simply for individuals wanting to create a fence or garden, the stakes or logs B3D are a safe bet. </br></br>\r\nCustomer satisfaction is our primary goal and product quality control is achieved at every stage of processing.', 'Diseñados para cultivadores, jardineros, arboricultores o simplemente para personas que desean crear una cerca o un jardín, las estacas o troncos B3D son una apuesta segura. </br></br>\r\nLa satisfacción del cliente es nuestro objetivo principal y el control de calidad del producto se logra en cada etapa del procesamiento.', 'Entworfen für Züchter, Landschaftsgärtner, Baumzüchter oder einfach für Einzelpersonen, die einen Zaun oder Garten anlegen möchten, sind die Pfähle oder Protokolle B3D eine sichere Wahl\r\nKundenzufriedenheit ist unser oberstes Ziel, und die Produktqualitätskontrolle wird auf jeder Verarbeitungsstufe erreicht.');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `dwb3d1_altimages`
--
ALTER TABLE `dwb3d1_altimages`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_categorie_altimages` (`Categorie`);

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
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_categorie_produits` (`Categorie`);

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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT pour la table `dwb3d1_blockcontact`
--
ALTER TABLE `dwb3d1_blockcontact`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `dwb3d1_categories`
--
ALTER TABLE `dwb3d1_categories`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `dwb3d1_erreurs`
--
ALTER TABLE `dwb3d1_erreurs`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `dwb3d1_footer`
--
ALTER TABLE `dwb3d1_footer`
  MODIFY `ID` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `dwb3d1_formcontact`
--
ALTER TABLE `dwb3d1_formcontact`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT pour la table `dwb3d1_header`
--
ALTER TABLE `dwb3d1_header`
  MODIFY `ID` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `dwb3d1_legal`
--
ALTER TABLE `dwb3d1_legal`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `dwb3d1_produits`
--
ALTER TABLE `dwb3d1_produits`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT pour la table `dwb3d1_societe`
--
ALTER TABLE `dwb3d1_societe`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
