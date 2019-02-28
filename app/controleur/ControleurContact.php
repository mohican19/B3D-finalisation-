<?php
// Espace commun à tous les contrôleurs
namespace app\controleur;

use app\modele\Mail;

class ControleurContact extends Controleur
{
    private $modeleMail;
    public function __construct($action, $langue)
    {
        $this->setLangue($langue);
        $this->modeleMail = new Mail($this->langue);
        $this->donnees = $this->modeleMail->donnees;
        $action[1] = 'form'.ucfirst($action[1]);
        parent::__construct($action);
    }
}
