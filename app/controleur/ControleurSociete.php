<?php
// Espace commun à tous les contrôleurs
namespace app\controleur;

use app\modele\Societe;
class ControleurSociete extends Controleur
{
    public function __construct($action)
    {
        $modele = new Societe();
        $this->donnees = $modele->donnees;
        $action = ['header','societe','blockContact','footer'];//debug
        parent::__construct($action);
    }
}
