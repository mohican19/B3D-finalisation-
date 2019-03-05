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
        $this->donnees['langue'] = $this->langue = $langue ;
    }
    public function getDonnees($query, $key='item')
    {
        if (is_array($query)) {
            foreach ($query as $key => $value) {
                $stm = Database::query($value);
                $this->donnees[$key] = $stm->fetchAll();
            }
        } else {
            $stm = Database::query($query);
            $this->donnees[$key] = $stm->fetchAll();
        }
    }
}
