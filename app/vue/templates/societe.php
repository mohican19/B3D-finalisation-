<?php $this->titre = "B3D | Société"; ?>

<section class="container">
  <?php for ($i=0; $i < count($img) ; $i++): ?>
    <?php if ($i === 0): ?>
      <div class="row justify-content-around bloc1">
    <?php else: ?>
      <div class="row justify-content-around mb-5">
    <?php endif; ?>
    <?php if(($i % 2) == 1): ?>
    <div class="col-md-4">
      <img class="img-fluid" src="<?= $img[$i]['image'] ?>">
    </div>
    <div class="col-md-7 bloc-texte">
      <h3 class="titre-de-bloc"><?= $item[$i-1][$langue] ?></h3>
      <p class="contenu-bloc-texte"><?= $item[$i][$langue] ?></p>
    </div>
  </div>
    <?php else: ?>
      <div class="col-md-7 bloc-texte">
        <h3 class="titre-de-bloc"><?= $item[$i+2][$langue] ?></h3>
        <p class="contenu-bloc-texte"><?= $item[$i+3][$langue] ?></p>
      </div>
      <div class="col-md-4">
        <img class="img-fluid" src="<?= $img[$i]['image'] ?>">
      </div>
    </div>
    <?php endif; ?>
  <?php  endfor; ?>
</section>
