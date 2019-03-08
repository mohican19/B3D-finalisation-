<!------------------------------
création du header,
utilisation via include 'app/vue/templates/header.php';
--------------------------------->
<?php
$societeMenu = 'Société';
$produitsMenu = 'Produits';
$chataignierSsMenu = 'Chataignier';
$acaciaSsMenu = 'Acacia';
$pinSsMenu = 'Pin';
$boisFeuSsMenu = 'Bois de Feu';
$contactMenu = 'Contact';
 ?>



<header id="header" class="container-fluid">
  <div class="en-tete row ">
    <div class="col-lg-1 col-md-2 col-sm-1  d-flex  align-items-center">
        <a class="" href="./index.php">
          <img src="images/logo_blanc_100.png" class=""/>
        </a>
    </div>

    <div class="col-lg-8 col-md-2 d-sm-none justify-content-start d-flex align-items-center">
      <nav id="large-desktop" class="navbar navbar-expand-lg d-none d-lg-block">


        <div class="collapse navbar-collapse" id="">
          <ul class="navbar-nav mr-auto">
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle <?php if (strpos($_SERVER['REQUEST_URI'], 'index.php?action=produits')) {
     echo('active'); } ?>"  href="index.php?action=produits"><?= $produitsMenu; ?></a>
              <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                <div class="nav-panel">
                  <div class="product-area-content text-center">
                        <a class="product-link dropdown-item" href="index.php?action=produits&id=1">
                        <img src="images/panel-acacia.jpg" alt="produits B3D - acacia">
                        <?= $acaciaSsMenu ?>
                        </a>
                        <a class="product-link dropdown-item" href="index.php?action=produits&id=2">
                        <img src="images/panel-pin.jpg"  alt="produits B3D - pin">
                        <?= $pinSsMenu ?>
                        </a>
                        <a class="product-link dropdown-item" href="index.php?action=produits&id=3">
                        <img src="images/panel-chataignier.jpg" alt="produits B3D - chataignier">
                        <?= $chataignierSsMenu ?>
                        </a>
                    </div><!-- product-area-content -->
                  </div><!-- nav-panel -->
                </div>
            </li>
            <li class="nav-item">
              <a class="nav-link <?php if (strpos($_SERVER['REQUEST_URI'], 'index.php?action=societe')) {echo('active');} ?>" href="index.php?action=societe"><?= $societeMenu ;?>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link <?php if (strpos($_SERVER['REQUEST_URI'], 'index.php?action=contact')) {echo('active');} ?>" href="index.php?action=contact"><?= $contactMenu ;?>
              </a>
            </li>
          </ul>
        </div>
      </nav>
    </div>
    <!-- icones choix langue  -->
    <div class="col-lg-3 col-md-8 col-sm-11 d-flex justify-content-end align-items-start pt-2 pr-5">
      <div class="row">
					<ul class="list-inline">
            <li class="list-inline-item">
							<!-- icone menu-responsive -->
							<nav class="d-lg-none d-xl-none"><a class="menu navbar-toggler" href="#" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="" aria-label="Toggle navigation"><i class="fas fa-bars fa-1x" ></i></a></nav>
						</li>
						<li class="list-inline-item">
							<a href="index.php?action=<?= $_GET['action']?>&langue=fr"><img src="images/FR.svg" class="drapeau" alt="Français" style=""></a>
						</li>
            <li class="list-inline-item">
              <a  href="index.php?action=<?= $_GET['action']?>&langue=en"><img src="images/EN.svg" class="drapeau" alt="English" style=""></a>
            </li>
            <li class="list-inline-item">
							<a href="index.php?action=<?= $_GET['action']?>&langue=de"><img src="images/DE.svg" class="drapeau" alt="Deutsch" style=""></a>
						</li>
            <li class="list-inline-item">
							<a  href="index.php?action=<?= $_GET['action']?>&langue=es"><img src="images/ES.svg" class="drapeau" alt="Español" style=""></a>
						</li>
					</ul>
				</div>
    </div>
  </div>

<!-- menu sur mobile ... -->
<div id="navbarSupportedContent" class="d-lg-none">
  <ul id="" class="" >
        <a href="#" id=""><li class="link"><?= $produitsMenu;?> <span id="arrow"><i class="fas fa-caret-down"></i></i></span></li></a>
        <div class="mobile-dropdown-content">
          <a href="details_produits.php"><?= $chataignierSsMenu;?></a>
          <a href="details_produits.php"><?= $acaciaSsMenu;?></a>
          <a href="details_produits.php"><?= $pinSsMenu;?></a>
        </div>
      <a href="society.php"><li class="link"><?= $societeMenu ;?></li></a>
     <a href="contacts.php"><li class="link"><?= $contactMenu;?></li></a>
  </ul>
</div>

</header>
