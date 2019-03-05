

<section id="legales">
	<h1><?= $legales[0][$langue] ?></h1><br>
<?php for ($i=1; $i < count($legales); $i+=2): ?>
		<article class="justify-content-around bloc1 bloc-texte pb-2">
	    <h3 class="titre-de-bloc"><?= $legales[$i][$langue] ?></h3>
	    <div class="mx-3">
	        <p><?= $legales[$i+1][$langue] ?><p>
	    </div>
	</article >
  <?php  endfor; ?>
</section>
