<?php
namespace app\controleur;

  class ControleurContact extends Controleur {


    public function __construct($action, $donnees=[]){
      $action = 'form'.ucfirst($action);
      parent::__construct($action);
      $this->vue->generer($donnees);
    }

  }
