<?php
namespace app\modele;

use app\Database;

/**
 *
 */
class Block extends Modele
{
    public function getDonnees($query, $key ='block')
    {
        $array = [];
        $stm = Database::query($query);
        while ($block = $stm->fetch()) {
            $array[$block['Varkey']] = $block[$this->langue];
        }
        return $this->donnees[$key]=$array;
    }
}
