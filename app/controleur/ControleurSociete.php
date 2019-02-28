<?php
// Espace commun à tous les contrôleurs
namespace app\controleur;

use app\modele\Societe;

class ControleurSociete extends Controleur
{
    public function __construct($action, $langue)
    {
        $this->setLangue($langue);
        $modele = new Societe($this->langue);
        $modele->getDonnees('SELECT ' . $this->langue . ' FROM dwb3d1_societe');
        $modele->getDonnees('SELECT ' . $this->langue . ' , image, Categorie FROM dwb3d1_altimages WHERE Categorie = 3', 'img');
        $this->donnees = $modele->donnees;
        parent::__construct($action);
    }
}
