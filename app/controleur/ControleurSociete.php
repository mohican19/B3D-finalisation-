<?php
// Espace commun à tous les contrôleurs
namespace app\controleur;

class ControleurSociete extends Controleur
{
    public function __construct($action)
    {
        //appel du modèle ici
        parent::__construct($action);
    }
}
