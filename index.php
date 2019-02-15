<?php
use \app\Autoload ;
use \app\controler\Router ;

session_start();

require 'app/Autoload.php';
Autoload::register();
$router = new Router();
$router->requestRouting();
