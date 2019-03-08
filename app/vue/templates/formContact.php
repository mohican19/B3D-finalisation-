<?php $this->titre = $title;?>

<section id="form-contact" class="container">
		<div class="row justify-content-center bloc-texte bloc1">
      <h3 class="titre-de-bloc">Formulaire de Contact</h3>
			<?= $infoForm; ?>
			<form class="col-lg-8 " method="post" >
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
					<button id="btn-envoi" class="btn btn-primary mt-2 mb-2" type="submit" name="submit" value="envoyer"><?= $submit ?></button>
			</div>

			</form>
			</div>
		</div>
	</section>
