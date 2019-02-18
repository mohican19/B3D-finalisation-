<?php
namespace app\controleur;

use \app\Database;
use \app\vue\Vue;

class Routeur
{
    private $ctrlAccueil;
    private $ctrlSociete;
    private $ctrlProduit;
    private $ctrlContact;
    private $action = 'langues';

    // Route une requête entrante : exécution l'action associée
    public function requestRouting()
    {
        try {
            if (isset($_GET['action'])) {
                if ($_GET['action'] == 'societe') {
                  $this->action = $_GET['action'];
                  $this->ctrlSociete = new ControleurSociete($this->action);
                } elseif ($_GET['action'] == 'contact') {
                  $this->action = $_GET['action'];
                  $this->ctrlContact = new ControleurContact($this->action);
                } elseif ($_GET['action'] == 'produit') {
                    $idProduit = intval($_GET['id']);
                    if ($idProduit != 0) {
                        $this->ctrlProduit = new ControleurProduit($idProduit);
                    } else {
                        throw new \Exception("Identifiant de page non valide");
                    }
                } else {
                    throw new \Exception("Action Invalide");
                }
            } else {
                $this->ctrlAccueil = new Controleur($this->action);
            }
        } catch (Exception $e) {
            $this->erreur($e->getMessage());
        }
    }

    // Affiche une erreur
    private function erreur($msgErreur)
    {
        $vue = new Vue("erreur");
        $vue->generer(array('msgErreur' => $msgErreur));
    }
}
