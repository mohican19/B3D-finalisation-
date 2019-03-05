<?php $this->titre = 'B3D | Produits'; ?>
<section id="produits" class="container">
<div id="" class="justify-content-around bloc1 bloc-texte pb-2">
    <h3 class="titre-de-bloc"><?= $produits[0][$langue] ?></h3>
    <div class="mx-3">
        <p><?= $produits[1][$langue] ?><p>
    </div>
</div>

<div id="bloc-cards-products" class="container justify-content-around d-flex">
<?php for ($i=0; $i < 3 ; $i++): ?>
    <div id="" class="card bloc-texte col-lg-4 pb-2 m-1">
        <h3 class="titre-de-bloc"><?= $titre[$i][$langue]; ?></h3>
        <img class="card-img-top" src="<?= $imgs[$i]['image'] ?>" alt="<?= $imgs[$i][$langue] ?>">
            <div class="mx-2">
                <p><?= $produits[$i+2][$langue]; ?></p>
                <a href="index.php?action=produits&id=<?= ($i+1) ?>" class="btn btn-block btn-sm btn-outline-danger"><?= end($produits)[$langue] ?></a>
            </div>
    </div>
<?php endfor; ?>
</div>
</section>

<section class="container">
    <div class="my-5 mx-1">
        <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
              <?php for ($i=3; $i < count($imgs) ; $i++):?>
                <div class="carousel-item <?php if ($i===3) {
    echo 'active';
} ?>">
                    <img class="d-block w-100" src="<?= $imgs[$i]['image'] ?>" alt="<?= $imgs[$i][$langue] ?>">
                </div>
              <?php endfor; ?>
            </div>
    <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
        </div>
    </div>
</section>
<?php require('app/modal.php'); ?>
