<?php
use \app\Autoload ;
use \app\controleur\Routeur ;

session_start();

require 'app/Autoload.php';
Autoload::register();
$routeur = new Routeur();
$routeur->requestRouting();
