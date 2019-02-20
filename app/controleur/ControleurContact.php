<?php
// Espace commun à tous les contrôleurs
namespace app\controleur;

use app\modele\Mail;

class ControleurContact extends Controleur
{
    private $modeleMail;
    public function __construct($action)
    {
        // appel modèle
        $this->modeleMail = new Mail();
        $this->donnees = $this->modeleMail->donnees;
        $action = 'form'.ucfirst($action);
        parent::__construct($action);
    }
}
