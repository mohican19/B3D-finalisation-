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
        $this->modele = new Modele($this->langue);
        $query = 'SELECT '.$this->langue.' FROM dwb3d1_legal ORDER BY id DESC';
        $this->donnees = $this->modele->getDonnees($query, 'legales');
        $this->setLangue($langue);
        parent::__construct($action);
    }
}
