<?php
namespace app\controleur;

use \app\Database;
use \app\vue\Vue;

class Routeur {
    private $ctrlAccueil;
    private $ctrlSociete;
    private $ctrlProduit;
    private $ctrlContact;

    public function __construct() {
        $this->ctrlAccueil = new ControleurAccueil();
        $this->ctrlSociete = new ControleurSociete();
        $this->ctrlProduit = new ControleurProduit();
        $this->ctrlContact = new ControleurContact();
    }

    // Route une requête entrante : exécution l'action associée
    public function requestRouting() {
        try {
            if (isset($_GET['action'])) {
                if ($_GET['action'] == 'societe') {
                    $this->ctrlSociete->societe();
                  }elseif ($_GET['action'] == 'contact') {
                        $this->ctrlContact->contact);
                      }elseif ($_GET['action'] == 'produit') {
                            $idProduit = intval($_GET['id']);
                            if ($idProduit != 0) {
                                $this->ctrlProduit->produit($idProduit);
                  }
                  else {
                        throw new Exception("Identifiant de page non valide");
              }
              else {
                    throw new Exception("Action non valide");
            }
            else {  // aucune action définie : affichage de l'accueil
                $this->ctrlAccueil->accueil();
            }
        }
        catch (Exception $e) {
            $this->erreur($e->getMessage());
        }
    }

    // Affiche une erreur
    private function erreur($msgErreur) {
        $vue = new Vue("Erreur");
        $vue->generer(array('msgErreur' => $msgErreur));
    }
