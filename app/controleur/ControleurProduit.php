<?php
// Espace commun à tous les contrôleurs
namespace app\controleur;

class ControleurProduit extends Controleur
{
    private $produit;
    private $id;

    public function __construct($action, $idProduit ='')
    {
        $action[1] = $this->produit($action[1], $idProduit);
        parent::__construct($action);
    }

    // Affiche le bon produit
    public function produit($action, $id)
    {
        if (is_numeric($id)) {
            $action = 'produit';
        }
        return $action;
    }
}
