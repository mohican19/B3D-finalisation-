<?php
namespace app\controleur;

use \app\vue\Vue;

/**
 *
 */
class Controleur
{
    protected $donnees = [];
    protected $vue;
    public function __construct($action)
    {
        $this->appelVue($action, $this->donnees);
    }
    
    protected function appelVue($action, $donnees = [])
    {
        $this->vue = new Vue($action);
        $this->vue->generer($donnees);
    }
}
