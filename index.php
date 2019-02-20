<?php
// On utilise use pour charger la class que l'on a besoin directement, grâce à l'utilisation des namespace
use \app\Autoload ;
use \app\controleur\Routeur ;

session_start();

// Class spéciale permettant de charger automatiquement les autres classes sans avoir à toutes les appeler via des require
require 'app/Autoload.php';
Autoload::register();
// On appelle le routeur qui sert d'aiguilleur principal pour le chargement des pages
$routeur = new Routeur();
$routeur->requestRouting();
