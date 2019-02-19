<link rel="stylesheet" href="./stylesheet/css/css a trier/blockContact.css">
<link rel="stylesheet" href="./stylesheet/css/css a trier/produits.css">



<?=
$titre = "Contact";
$adresse_titre = "Adresse";
$adresse = "B3D \"L'intendant\" <br>47700 Poussignac";
$tel_titre = "Téléphone";
$tel = "+33 (0)6 74 90 65 96";
$horaires_titre = "Horaires";
$horaires = "Du lundi au vendredi<br>8h - 12h / 14h - 18h<br>Sauf le samedi 9h - 12h";
$mail_titre = "Email";
$mail = "julien.procedes@orange.fr";
?>

<div class="cont1 col-md-12">

          <div class="row col-md-12">
              <div class="container">
              <div class="panel-white">
              <div class="header" id="contact"><i class="far fa-envelope"></i> <?= $titre; ?></div>
              <div class="content">

                 <div class="row wo-marg">
                    <div class="col-md-3 col-sm-6">
                      <div class="contact-cont">
                        <h2><?= $adresse_titre; ?></h2>
                        <div class="contact_text"><?= $adresse; ?></div>
                      </div>

                      <div class="contact-cont">
                        <h2><?= $horaires_titre; ?></h2>
                        <div class="contact_text"><?= $horaires; ?></div>
                      </div>
                    </div>

                    <div class="col-md-3 col-sm-6">
                      <div class="contact-cont">
                        <h2><?= $tel_titre; ?></h2>
                        <div class="contact_text"><?= $tel; ?></div>
                      </div>

                      <div class="contact-cont">
                        <h2><?= $mail_titre; ?></h2>
                        <div class="contact_text"><?= $mail; ?></div>
                      </div>
                    </div>

                    <div class="col-md-6  col-sm-12">
                      <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d5706.59330503512!2d0.07091420449699201!3d44.344956780262315!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x12aa7c208889a78f%3A0x8662b027363dce5a!2sL&#39;Intendant%2C+47700+Poussignac!5e0!3m2!1sfr!2sfr!4v1545297392869" width="100%" height="200" frameborder="0" style="border:1" allowfullscreen></iframe>
                    </div>
                  </div>

              </div>
            </div>
          </div>

  </div>
</div>
