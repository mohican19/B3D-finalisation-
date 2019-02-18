<?php
namespace app\controleur;

  class ControleurSociete extends Controleur {

    public function __construct($action, $donnees=[]){
      parent::__construct($action);
      $this->vue->generer($donnees);
    }

  }
