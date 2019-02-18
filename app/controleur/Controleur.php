<?php
namespace app\controleur;

use \app\vue\Vue;

/**
 *
 */
class Controleur
{
    protected $vue;
    public function __construct($action)
    {
        $this->vue = new Vue($action);
        $this->vue->generer([]);
    }
}
