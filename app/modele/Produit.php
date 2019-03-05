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
        $id += self::BDD_OFFSET/2;
        $stm = Database::exec('SELECT image, '.$this->langue.' FROM dwb3d1_altimages WHERE ID = ?', [$id]);
        $this->donnees['img'] = $stm->fetch();
        $id += self::BDD_OFFSET/2; //offset de l'id dans la bdd
        $stm = Database::exec('SELECT '.$this->langue.' FROM dwb3d1_produits WHERE Categorie = ?', [$id]);
        $this->donnees['item'] = $stm->fetchAll();
    }
}
