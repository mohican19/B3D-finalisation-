<?php $this->titre = "B3D | Société"; ?>

<section class="container">
  <?php for ($i=0; $i < count($img) ; $i++): ?>
    <?php if ($i === 0): ?>
      <div class="row justify-content-around bloc1">
    <?php else: ?>
      <div class="row justify-content-around mb-5">
    <?php endif; ?>
    <?php if (($i % 2) == 1): ?>
      <div class="col-md-4">
        <img class="img-fluid" alt="<?= $img[$i][$langue] ?>" src="<?= $img[$i]['image'] ?>">
      </div>
    <?php endif; ?>
    <div class="col-md-7 bloc-texte">
      <h3 class="titre-de-bloc"><?= $item[(2*$i)][$langue] ?></h3>
      <p class="contenu-bloc-texte"><?= $item[(2*$i+1)][$langue] ?></p>
    </div>
  <?php if (($i % 2) == 0): ?>
    <div class="col-md-4">
      <img class="img-fluid" alt="<?= $img[$i][$langue] ?>" src="<?= $img[$i]['image'] ?>">
    </div>
  <?php endif; ?>
  </div>
  <?php  endfor; ?>
</section>
