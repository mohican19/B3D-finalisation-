<?php
namespace app\modele;

use app\Database;

/**
 *
 */
class Mail
{
    const EMAIL = 'jarod.midy@gmail.com';
    const OBJET = 'Contact site B3D';
    public $donnees = ['infoForm'=>''];
    private $formData;
    private $mail;
    private $infoForm = '';

    public function __construct()
    {
        if (isset($_POST['submit'])) {
            $this->donnees['infoForm'] = $this->traitementForm($_SESSION['langue']);
        }
        $this->getDonnees($_SESSION['langue']);
    }
    protected function getDonnees($langue)
    {
        $statement = Database::query('SELECT '.$langue.', Varkey FROM `dwb3d1_formcontact`');
        while ($item = $statement->fetch()) {
            $this->donnees[$item['Varkey']] = $item[$langue];
        }
    }

    private function envoyer()
    {
        return mail(self::EMAIL, self::OBJET, $this->mail);
    }

    private function traitementForm($langue) // à factoriser
    {
        $this->formData = new Formcleaning($_POST);
        $this->formData = $this->formData->value;
        foreach ($this->formData as $key => $value) {
            $statement = Database::query('SELECT '.$langue.', Categorie, Varkey FROM dwb3d1_erreurs WHERE Categorie = 4 AND Varkey =\''.$key.'\'');
            if (!$value || ($key === 'phone' && !preg_match("/^[0-9]{9,13}[0-9]$/", $value)) ||($key === 'email' && !filter_var($value, FILTER_VALIDATE_EMAIL))) {
                $item = $statement->fetch();
                $this->infoForm .= '<b>*</b> '.$item[$langue].' <br>';
                $error = true;
            }
        }
        $statement = Database::query('SELECT '.$langue.', Varkey, Categorie FROM dwb3d1_erreurs WHERE Categorie = 4 AND Varkey = \'\'');
        $item = $statement->fetchall();
        if ($error) {
            return $this->infoForm ='<div class="alert alert-danger">
            <h2>'.$item[0][$langue].'</h2>
           <div id="errors">'.$this->infoForm.'</div>
           </div>';
        } else {
            $this->mail = $this->createMail();
            if ($this->envoyer()) {
                return  $this->infoForm =
              '<div class="alert alert-success">
              <h2>'.$item[2][$langue].'</h2>
              <div id="valide">'.$item[3][$langue].'</div>
              </div>';
            } else {
                return  $this->infoForm =
            '<div class="alert alert-danger">
              <h2>'.$item[0][$langue].'</h2>
             <div id="errors">'.$item[1][$langue].'</div>
             </div>';
            }
        }
    }

    private function createMail()
    {
        return $message = 'De : '.$this->donnees->value['last-name'].' '.$this->donnees->value['first-name']."\n email : ".$this->donnees->value['email']."\n Téléphone : ".$this->donnees->value['phone']."\n".$this->donnees->value['message'];
    }
}
