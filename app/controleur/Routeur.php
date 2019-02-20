<?php
// Espace commun à tous les controleurs + DB avec ce namespace
namespace app\controleur;
// On appelle le fichier de connexion à la DB et de génération de la vue
use \app\Database;
use \app\vue\Vue;
// Class qui va déterminer la page à afficher selon l'action transmise dans l'URL
class Routeur
{
// Ensemble de variables qui vont stocker les données et la vue de chaque page
    private $ctrlAccueil;
    private $ctrlSociete;
    private $ctrlProduit;
    private $ctrlContact;
    private $action = 'langues';

// Route une requête entrante : exécution de l'action associée avec gestion des erreurs
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
