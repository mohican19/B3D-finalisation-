<?php
// Espace commun à tous les contrôleurs
namespace app\controleur;

class ControleurProduit extends Controleur
{
    private $produit;

    public function __construct($action, $idProduit ='')
    {
        //$this->produit = new produit();
        parent::__construct($action);
    }

    // Affiche le bon produit
    public function produit()
    {
        // $produit = $this->produit->getProduit($idProduit);
        // $vue = new Vue("produit");
        // $vue->generer(array('produit' => $produit));
    }
}
