<?php
// Espace commun à tous les contrôleurs
namespace app\controleur;

// On a besoin que de la class Vue, qui est chargée de stocker les données et générer la vue
use app\vue\Vue;
use app\modele\Modele;
use app\modele\Block;

class Controleur
{
    // On stock la vue et les données dans des variables
    protected $donnees = [];
    protected $vue;
    protected $langue;
    // On appelle de façon automatique la fonction de création de la vue ci-dessous
    public function __construct($action)
    {
        if (isset($this->langue)) {
            $this->getBasiqueDonnees();
        }
        $this->appelVue($action, $this->donnees);
    }

    private function appelVue($action, $donnees = [])
    {
        $this->vue = new Vue($action);
        $this->vue->generer($donnees);
    }
    protected function setLangue($langue)
    {
        $this->langue = $langue ;
    }
    protected function getBasiqueDonnees()
    {
        $header = new Modele($this->langue);
        $footer = new Modele($this->langue);
        $key = 'block';
        $query = 'SELECT Varkey, '.$this->langue.' FROM dwb3d1_blockcontact';
        $block = new Block($this->langue, $key);
        $this->donnees[$key] = $block->getDonnees($query, $key);
    }
}
