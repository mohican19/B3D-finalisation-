<?php
namespace app\controleur;

use app\modele\Modele;

/**
 *
 */
class ControleurLegales extends Controleur
{
    public function __construct($action, string $langue)
    {
      $this->setLangue($langue);
        $this->modele = new Modele($this->langue);
        $query = 'SELECT '.$this->langue.' FROM dwb3d1_legal';
        $this->modele->getDonnees($query, 'legales');
        $this->donnees = $this->modele->donnees;
        parent::__construct($action);
    }
}
