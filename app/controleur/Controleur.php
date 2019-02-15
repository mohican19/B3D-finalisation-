<?php
namespace app\controleur;

use \app\vue\Vue;

/**
 *
 */
class Controleur
{
    public function __construct($action)
    {
        $vue = new Vue($action);
        $vue->generer([]);
    }
}
