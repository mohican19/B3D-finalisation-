<section id="produit" class="container">
  <div id="" class="justify-content-around bloc1 bloc-texte pb-2">
    <h3 class="titre-de-bloc"><?= $item[0][$langue] ?></h3>
    <div class="row p-2">
      <div id="image-produit" class="col-lg-4 d-flex align-items-center">
        <img class="img-fluid" src="<?= $img['image'] ?>" alt="<?= $img[$langue] ?>">
      </div>
      <div class="col-lg-8">
        <h4><?= $item[1][$langue] ?></h4>
        <p class="pt-2"><?= $item[2][$langue] ?></p>
        <p id="show-desc"> <i class="fas fa-info-circle"></i><?= $item[3][$langue] ?></p>
      </div>
    </div>
    <div class="row">
      <div id="tableau" class="col-lg-12 hide pl-5 pr-5" >
        <hr>
      </br>
        <?php for ($i=4; $i < count($item) ; $i++) {
    echo $item[$i][$langue];
} ?>
      </div>
    </div>
  </div>
</section>
<script>

</script>
