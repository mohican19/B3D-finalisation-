<?php
namespace app\controleur;

use \app\vue\Vue;

/**
 *
 */
abstract class Controler
{
    public function __construct($action)
    {
        $vue = new Vue($action);
        $vue->generate([]);
    }
}
