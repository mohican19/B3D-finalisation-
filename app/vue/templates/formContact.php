<?php $this->titre = "B3D | Contact";
$firstName = 'Prénom';
$name = 'Nom';
$email = 'Email';
$phone = "Téléphone";
$msg = 'Message';
$rgpd = 'Conditions générales d\'utilisation';
$submit = 'Envoyer';
 ?>


  <form id="form-contact" action="" method="POST" accept-charset="utf-8" class="row">

    <div class="col-lg-2 input_otst"></div>

    <div class="col-lg-4  input_otst">
      <label for="first_name"><?= $firstName ?> <span class="star">*</span> :</label>
      <div class="input-group">
        <span class="clearable">
          <input type="text" class="form-control" id="first_name" name="first_name" aria-describedby="sizing-addon2"  placeholder="<?= $firstName ?>">
          <i class="clearable__clear"><i class="fas fa-times-circle"></i></i>
        </span>
      </div>
    </div><!--==========-->

    <div class="col-lg-4 input_otst">
      <label for="last_name"><?= $name ?> <span class="star">*</span> :</label>
      <div class="input-group">
        <span class="clearable">
          <input type="text" class="form-control" id="last_name" name="last_name" aria-describedby="sizing-addon2" placeholder="<?= $name ?>">
          <i class="clearable__clear"><i class="fas fa-times-circle"></i></i>
        </span>
      </div>
    </div><!--==========-->

    <div class="col-lg-2"></div>
    <div class="col-lg-2"></div>


    <div class="col-lg-4 input_otst">
      <label for="email"><?= $email ?> <span class="star">*</span> :</label>
      <div class="input-group">
        <span class="clearable">
          <input type="text" class="form-control" id="email" name="email" aria-describedby="sizing-addon2" placeholder="<?= $email ?>">
          <i class="clearable__clear"><i class="fas fa-times-circle"></i></i>
        </span>
      </div>
    </div><!--==========-->

    <div class="col-lg-4 input_otst">
      <label for="phone"><?= $phone ?> :</label>
      <div class="input-group">
        <span class="clearable">
          <input type="text" class="form-control" id="phone" name="phone" aria-describedby="sizing-addon2" placeholder="<?= $phone ?>">
          <i class="clearable__clear"><i class="fas fa-times-circle"></i></i>
        </span>
      </div>
    </div><!--==========-->

    <div class="col-lg-2"></div>
    <div class="col-lg-2"></div>

    <div class="col-lg-8 form-group">
      <label for="message"><?= $msg ?> <span class="star">*</span> :</label>
      <textarea class="form-control" id="message" name="message" rows="5" placeholder="<?= $msg ?>"></textarea>
    </div>

    <div class="col-lg-2"></div>
    <div class="col-lg-2"></div>

    <div class="col-lg-8">
      <div class="input_otst"><span class="star">*</span><?= $rgpd ?></div>
      <div class="form-group form-check">
        <input type="checkbox" class="form-check-input" id="check-rgpd" name="check-rgpd">
        <label class="form-check-label" for="check-rgpd"><?= $rgpd ?> <span class="star">*</span></label>
      </div>
    </div>

    <div class="col-lg-2"></div>
    <div class="col-lg-2"></div>

    <div class="col-lg-8 input_otst">
      <input type='submit' name='submit' class="btn btn-primary col-sm col-lg-2 bot_envoye" value="<?= $submit ?>"></input>
    </div>

    <div class="col-lg-2"></div>

  </form>
