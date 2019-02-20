<?php
// Espace commun à tous les contrôleurs
namespace app\controleur;

class ControleurContact extends Controleur
{
    public function __construct($action)
    {
        // appel modèle ici
        $action = 'form'.ucfirst($action);
        parent::__construct($action);
    }
}
