<?php
// On définit un namespace commun à tous les fichiers liés à la vue
  namespace app\vue;

  class Vue
  {
// On stock le chemin des vues dans des constantes
    const VUEPATH = 'app/vue/';
    const VUETEMPLATES = self::VUEPATH . 'templates/' ;
    const VUEERRORS = self::VUEPATH . 'erreurs/';
// On stock le nom du fichier associé à la vue
    private $fichier;
// On stock le titre de la vue (défini dans le fichier vue)
    private $titre;
// Détermination du nom du fichier vue à partir de l'action définie dans le routeur et stockage automatique dans $fichier
    public function __construct($action)
    {
        if ($action === 'errors') {
            $this->fichier = self::VUEERRORS . $action . ".php";
        } else {
            $this->fichier = self::VUETEMPLATES . $action . ".php";
        }
    }
// Génère et affiche la vue grâce aux données extraites dans genererFichier()(les variables $donnees et $vue sont appelées pour affichage dans controleur.php)
    public function generer($donnees)
    {
// Stockage de la partie spécifique de la vue qui s'insère dans le body dans le fichier gabarit.php
        $contenu = $this->genererFichier($this->fichier, $donnees);
// Stockage du gabarit commun utilisant la partie spécifique
        $vue = $this->genererFichier(self::VUEPATH.'gabarit.php', array('titre' => $this->titre, 'contenu' => $contenu));
// Renvoi de la vue complète au navigateur
        echo $vue;
    }

// Génère un fichier vue et renvoie le résultat produit (la fonction permet d'extraire les données présentes dans les fichiers vue et de les stocker dans $donnees)
    private function genererFichier($fichier, $donnees)
    {
        if (file_exists($fichier)) {
// Rend les éléments du tableau $donnees accessibles dans la vue
            extract($donnees);
// Démarrage de la temporisation de sortie
            ob_start();
// Inclut le fichier vue
// Son résultat est placé dans le tampon de sortie
            require $fichier;
// Arrêt de la temporisation et renvoi du tampon de sortie
            return ob_get_clean();
        } else {
            throw new \Exception("Fichier '$fichier' introuvable");
        }
    }
  }
