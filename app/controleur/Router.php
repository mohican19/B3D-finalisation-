<?php
namespace app\controleur;

use \app\Database;
use \app\vue\Vue;

/**
 *
 */
class Router
{
    private $action;
    public function __construct()
    {
        if (isset($_GET['action'])) {
            $this->action = $_GET['action'];
        }
    }
    public function requestRouting()
    {
    }
    private function error($error)
    {
    }
}
