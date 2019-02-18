<?php
namespace app\controleur;

class ControleurContact extends Controleur
{
    public function __construct($action)
    {
        // appel modèle
        $action = 'form'.ucfirst($action);
        parent::__construct($action);
    }
}
