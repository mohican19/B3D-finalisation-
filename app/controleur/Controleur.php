<?php
// Espace commun à tous les contrôleurs
namespace app\controleur;
// On a besoin que de la class Vue, qui est chargée de stocker les données et générer la vue
use \app\vue\Vue;

class Controleur
{
// On stock la vue et les données dans des variables
    protected $donnees = [];
    protected $vue;
// On appelle de façon automatique la fonction de création de la vue ci-dessous
    public function __construct($action)
    {
        $this->appelVue($action, $this->donnees);
    }
// Fonction qui créée un nouvel objet Vue
    protected function appelVue($action, $donnees = [])
    {
        $this->vue = new Vue($action);
        $this->vue->generer($donnees);
    }
}
