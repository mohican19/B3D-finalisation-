<?php

namespace app\modele;

use app\Database;
class Societe {

public $donnees = [];

  public function __construct(){
    $langue = 'Francais';
    $stm = Database::query('SELECT ' . $langue . ' FROM dwb3d1_societe');
    $this->donnees['item'] = $stm->fetchAll();
    $this->donnees['langue'] = $langue;
    $img = Database::query('SELECT ' . $langue . ' , image, Categorie FROM dwb3d1_altimages WHERE Categorie = 3');
    $this->donnees['img'] = $img->fetchAll();
     }

}
