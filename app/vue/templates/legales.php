

<section id="legales"  class="container container-contact">
	<div class="container-contact bloc1 pb-2">
		<h3 class="titre-de-bloc"><?= $legales[0][$langue] ?></h3>
	</div>
<?php for ($i=1; $i < count($legales); $i+=2): ?>
		<article class="container bloc-texte mb-5">
	    <h3 class="titre-de-bloc"><?= $legales[$i][$langue] ?></h3>
	    <div class="mx-3">
	        <p><?= $legales[$i+1][$langue] ?><p><br>
	    </div>
	</article >
  <?php  endfor; ?>
</section>
