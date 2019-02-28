<?php
// Espace commun à tous les contrôleurs
namespace app\controleur;

use app\modele\Produit;

class ControleurProduit extends Controleur
{
    private $produit;
    private $id;
    private $modele;

    public function __construct($action, $langue, $idProduit ='')
    {
        $this->setLangue($langue);
        $this->modele = new Produit($this->langue);
        $action[1] = $this->produit($action[1], $idProduit);
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
            $this->modele->getDonnees('SELECT '.$this->langue.', Categorie FROM dwb3d1_produits');
        }
        return $action;
    }
}
