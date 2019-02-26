<?php $this->titre = $title;
echo $infoForm ?>

<section id="form-contact" class="container">
		<div class="row justify-content-center bloc-texte bloc1">
      <h3 class="titre-de-bloc">Formulaire de Contact</h3>
			<form class="col-lg-8 " method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>" >
				<div class="row justify-content-center m-0">
					<div class="col-lg-6">
						<div class="form-group>">
							<label for="champPrenom"><?= $firstName ?><span class="etoile-erreur">*</span> :</label>
							<input type="text" class="form-control" id="champPrenom" name="first-name" required placeholder="<?= $firstNameHolder ?>">
						</div>
					</div>
					<div class="col-lg-6">
						<div class="form-group>">
							<label for="champNom"><?= $name ?><span class="etoile-erreur">*</span> :</label>
							<input type="text" class="form-control" id="champNom" name="last-name" required placeholder="<?= $nameHolder ?>">
							</div>
						</div>
				</div>
				<div class="row justify-content-center m-0">
					<div class="col-lg-6">
						<div class="form-group>">
							<label for="champEmail"><?= $email ?><span class="etoile-erreur">*</span> :</label>
							<input type="text" class="form-control" id="champEmail" name="email" required pattern="^[a-zA-Z0-9._-]+@[a-z0-9._-]{2,}\.[a-z]{2,4}$" placeholder="<?= $emailHolder ?>">
						</div>
					</div>
					<div class="col-lg-6">
						<div class="form-group>">
							<label for="champTelephone"><?= $phone ?> :</label>
							<input type="text" class="form-control" id="champTelephone" name="phone" placeholder="<?= $phoneHolder ?>">
						</div>
					</div>
				</div>
				<div class="col-lg-12">
					<div class="form-group>">
						<label for="champMessage"><?= $msg ?><span class="etoile-erreur">*</span> :</label>
						<textarea type="text" class="form-control" id="champMessage" name="message" rows="5" required placeholder="<?= $msgHolder ?>"></textarea>
					</div>
				</div>

				<div class="col-lg-12 mt-3">
				<p><span class="etoile-erreur">*</span> <?= $requireText ?></p>
			</div>
			<div class="col-lg-12">
        <input id="caseConfidentialite" type="checkbox" required class=""><label for="caseConfidentialite"><?= $rgpd ?><span class="etoile-erreur">*</span></label>
			</div>
			<div class="col-lg-12 text-center">
					<button id="btn-envoi" class="btn btn-primary mt-2 mb-2" type="submit" name="btn-envoyer" value="envoyer"><?= $submit ?></button>
			</div>

			</form>
			</div>
		</div>
	</section>



<!--
      <div class="col-lg-4   input-otst">
        <label for="first-name"><?= $firstName ?> <span class="star">*</span> :</label>
        <div class="input-group">
          <span class="clearable">
            <input type="text" class="form-control" id="first-name" name="first-name" aria-describedby="sizing-addon2"  placeholder="<?= $firstNameHolder ?>">
            <i class="clearable-clear"><i class="fas fa-times-circle"></i></i>
          </span>
        </div>
      </div><!--==========-->

<!--      <div class="col-lg-4 input-otst">
        <label for="last-name"><?= $name ?> <span class="star">*</span> :</label>
        <div class="input-group">
          <span class="clearable">
            <input type="text" class="form-control" id="last-name" name="last-name" aria-describedby="sizing-addon2" placeholder="<?= $nameHolder ?>">
            <i class="clearable-clear"><i class="fas fa-times-circle"></i></i>
          </span>
        </div>
      </div> -->
      <!--==========-->

<!--      <div class="col-lg-4 input-otst">
        <label for="email"><?= $email ?> <span class="star">*</span> :</label>
        <div class="input-group">
          <span class="clearable">
            <input type="email" class="form-control" id="email" name="email" aria-describedby="sizing-addon2" placeholder="<?= $emailHolder ?>">
            <i class="clearable-clear"><i class="fas fa-times-circle"></i></i>
          </span>
        </div>
      </div><!--==========-->

<!--      <div class="col-lg-4 input-otst">
        <label for="phone"><?= $phone ?> :</label>
        <div class="input-group">
          <span class="clearable">
            <input type="text" class="form-control" id="phone" name="phone" aria-describedby="sizing-addon2" placeholder="<?= $phoneHolder ?>">
            <i class="clearable-clear"><i class="fas fa-times-circle"></i></i>
          </span>
        </div>
      </div><!--==========-->

<!--      <div class="col-lg-8 form-group">
        <label for="message"><?= $msg ?> <span class="star">*</span> :</label>
        <textarea class="form-control" id="message" name="message" rows="5" placeholder="<?= $msgHolder ?>"></textarea>
      </div>

      <div class="col-lg-8">
        <div class="input-otst"><span class="star">*</span><?= $requireText ?></div>
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
  </div>
</div>
