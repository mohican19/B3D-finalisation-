<?php
namespace app\modele;

use app\Database;

/**
 *
 */
class Modele
{
    protected $langue;
    public $donnees = [];
    public function __construct($langue)
    {
        $this->langue = $langue;
    }
    public function getDonnees($query, $key='item')
    {
        $stm = Database::query($query);
        $this->donnees[$key] = $stm->fetchAll();
    }
}
