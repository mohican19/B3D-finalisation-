<?php
namespace app\modele;

use app\Database;

/**
 *
 */
class Produit extends Modele
{
    const BDD_OFFSET = 6;
    public $donnees;

    public function getProduit($id)
    {
        $id += self::BDD_OFFSET; //offset de l'id dans la bdd
        $stm = Database::exec('SELECT '.$this->langue.' FROM dwb3d1_produits WHERE Categorie = ?', [$id]);
        $this->donnees['item'] = $stm->fetchAll();
        var_dump($this->donnees['item']);
    }
}
