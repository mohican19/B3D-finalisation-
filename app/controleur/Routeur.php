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
    private $langue = 'Francais';

    public function __construct()
    {
        if (isset($_GET['action'])) {
            $this->action = $_GET['action'];
        }
        if (isset($_GET['langue'])) {
            $this->choixLangue($_GET['langue']);
            $_SESSION['langue']= $this->langue;
        } elseif (!isset($_SESSION['langue'])) {
            $_SESSION['langue']= $this->langue;
        }
    }

    // Route une requête entrante : exécution de l'action associée avec gestion des erreurs
    public function requestRouting()
    {
        try {
            if ($this->action == 'societe') {
                $this->ctrlSociete = new ControleurSociete($this->action);
            } elseif ($this->action == 'contact') {
                $this->ctrlContact = new ControleurContact($this->action);
            } elseif ($this->action == 'produit' && isset($_GET['id'])) {
                $idProduit = intval($_GET['id']);
                if ($idProduit != 0) {
                    $this->ctrlProduit = new ControleurProduit($this->action);
                } else {
                    throw new \Exception("Identifiant de page non valide");
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

    private function choixLangue($langue)
    {
        switch ($_GET['langue']) {
        case 'en':
          $this->langue = 'Anglais';
        break;
        case 'de':
          $this->langue = 'Allemand';
        break;
        case 'es':
          $this->langue = 'Espagnol';
        break;
        default:
          $this->langue = 'Francais';
        break;
      }
    }
}
