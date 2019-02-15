<?php
use \app\Autoload ;
use \app\controleur\Router ;

session_start();

require 'app/Autoload.php';
Autoload::register();
$router = new Router();
$router->requestRouting();
