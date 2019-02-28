<?php

namespace app\modele;

use app\Database;

class Societe extends Modele
{
    public $donnees = [];

    public function __construct($langue)
    {
        $this->donnees['langue'] = $langue;
    }
}
