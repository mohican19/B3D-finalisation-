<?php
// Espace commun à tous les contrôleurs
namespace app\controleur;

use app\modele\Produit;

class ControleurProduit extends Controleur
{
    private $produit;
    private $id;
    private $modele;

    public function __construct($action, string $langue, $idProduit ='')
    {
        $this->setLangue($langue);
        $this->modele = new Produit($this->langue);
        $action[1] = $this->produit($action[1], $idProduit);
        // var_dump($this->donnees['titre']);

        parent::__construct($action);
    }

    // Affiche le bon produit
    public function produit($action, $id)
    {
        if (is_numeric($id)) {
            $action = 'produit';
            $this->modele->getProduit($id);
        } else {
            $action = 'produits';
            $query = [
              'produits'=>'SELECT '.$this->langue.' FROM dwb3d1_produits WHERE Categorie = 10',
              'imgs'=>'SELECT '.$this->langue.', image FROM dwb3d1_altimages WHERE Categorie = 10',
              'titre'=>'SELECT '.$this->langue.', Categorie FROM dwb3d1_produits WHERE ID = 1 OR ID = 6 OR ID = 14 ORDER BY Categorie'
            ];
            $this->modele->getDonnees($query);
        }
        $this->donnees = $this->modele->donnees;
        return $action;
    }
}
