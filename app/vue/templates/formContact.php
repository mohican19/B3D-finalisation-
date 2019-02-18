<?php $this->titre = "B3D | Contact";
$firstName = 'Prénom';
$name = 'Nom';
$email = 'Email';
$phone = "Téléphone";
$msg = 'Message';
$rgpd = 'Conditions générales d\'utilisation';
$submit = 'Envoyer';
 ?>


  <form id="form-contact" method="POST" accept-charset="utf-8" class="row">

    <div class="col-lg-2 input-otst"></div>

    <div class="col-lg-4  input-otst">
      <label for="first-name"><?= $firstName ?> <span class="star">*</span> :</label>
      <div class="input-group">
        <span class="clearable">
          <input type="text" class="form-control" id="first-name" name="first-name" aria-describedby="sizing-addon2"  placeholder="<?= $firstName ?>">
          <i class="clearable-clear"><i class="fas fa-times-circle"></i></i>
        </span>
      </div>
    </div><!--==========-->

    <div class="col-lg-4 input-otst">
      <label for="last-name"><?= $name ?> <span class="star">*</span> :</label>
      <div class="input-group">
        <span class="clearable">
          <input type="text" class="form-control" id="last-name" name="last-name" aria-describedby="sizing-addon2" placeholder="<?= $name ?>">
          <i class="clearable-clear"><i class="fas fa-times-circle"></i></i>
        </span>
      </div>
    </div><!--==========-->

    <div class="col-lg-2"></div>
    <div class="col-lg-2"></div>


    <div class="col-lg-4 input-otst">
      <label for="email"><?= $email ?> <span class="star">*</span> :</label>
      <div class="input-group">
        <span class="clearable">
          <input type="text" class="form-control" id="email" name="email" aria-describedby="sizing-addon2" placeholder="<?= $email ?>">
          <i class="clearable-clear"><i class="fas fa-times-circle"></i></i>
        </span>
      </div>
    </div><!--==========-->

    <div class="col-lg-4 input-otst">
      <label for="phone"><?= $phone ?> :</label>
      <div class="input-group">
        <span class="clearable">
          <input type="text" class="form-control" id="phone" name="phone" aria-describedby="sizing-addon2" placeholder="<?= $phone ?>">
          <i class="clearable-clear"><i class="fas fa-times-circle"></i></i>
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
      <div class="input-otst"><span class="star">*</span><?= $rgpd ?></div>
      <div class="form-group form-check">
        <input type="checkbox" class="form-check-input" id="check-rgpd" name="check-rgpd">
        <label class="form-check-label" for="check-rgpd"><?= $rgpd ?> <span class="star">*</span></label>
      </div>
    </div>

    <div class="col-lg-2"></div>
    <div class="col-lg-2"></div>

    <div class="col-lg-8 input-otst">
      <input type='submit' name='submit' class="btn btn-primary col-sm col-lg-2 bot-envoye" value="<?= $submit ?>"></input>
    </div>

    <div class="col-lg-2"></div>

  </form>
