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



<header id="header" class="container-fluid ">
  <div class="en-tete row">
    <div class="col-lg-1 col-md-3 col-sm-10  d-flex  align-items-center">
        <a class="" href="./index.php">
            <img src="images/logo_blanc_100.png" class=""/>
        </a>
    </div>
    <div class="col-lg-8 col-md-8 col-sm-10 justify-content-start d-flex align-items-center">
      <nav id="large-desktop" class="navbar navbar-expand-lg">
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav mr-auto">



            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle <?php if (strpos($_SERVER['REQUEST_URI'], 'index.php?action=produits')) {
     echo('active');
 } ?>"  href="index.php?action=produits"><?= $produitsMenu; ?></a>
              <div class="dropdown-menu">

                <div class="nav-panel">
                  <div class="product-area-content text-center">
                        <a class="product-link" href="index.php?action=produits&id=1">
                        <img src="images/panel-acacia.jpg" alt="produits B3D - acacia">
                        <?= $acaciaSsMenu ?>
                        </a>

                        <a class="product-link" href="index.php?action=produits&id=2">
                        <img src="images/panel-pin.jpg"  alt="produits B3D - pin">
                        <?= $pinSsMenu ?>
                        </a>

                        <a class="product-link" href="index.php?action=produits&id=3">
                        <img src="images/panel-chataignier.jpg" alt="produits B3D - chataignier">
                        <?= $chataignierSsMenu ?>
                        </a>

                    </div><!-- product-area-content -->
                </div><!-- nav-panel -->
              </div>
            </li>

            <li class="nav-item">
              <a class="nav-link <?php if (strpos($_SERVER['REQUEST_URI'], 'index.php?action=societe')) {
     echo('active');
 } ?>" href="index.php?action=societe"><?= $societeMenu ;?></a>
            </li>

            <li class="nav-item">
              <a class="nav-link <?php if (strpos($_SERVER['REQUEST_URI'], 'index.php?action=contact')) {
     echo('active');
 } ?>" href="index.php?action=contact"><?= $contactMenu ;?></a>
            </li>

          </ul>
        </div>
      </nav>
    </div>
    <!-- icones choix langue  -->
    <div class="col-lg-3 col-md-3 col-sm-10 d-flex justify-content-end align-items-start pt-2 pr-5">
      <div class="row">
					<ul class="list-inline">
						<li class="list-inline-item">
							<a href="index.php?action=<?= $_GET['action']?>&langue=fr"><img src="images/FR.svg" class="drapeau" alt="French Flag" style=""></a>
						</li>
            <li class="list-inline-item">
              <a  href="index.php?action=<?= $_GET['action']?>&langue=en"><img src="images/EN.svg" class="drapeau" alt="English Flag" style=""></a>
            </li>
            <li class="list-inline-item">
							<a href="index.php?action=<?= $_GET['action']?>&langue=de"><img src="images/DE.svg" class="drapeau" alt="Germen Flag" style=""></a>
						</li>
            <li class="list-inline-item">
							<a  href="index.php?action=<?= $_GET['action']?>&langue=es"><img src="images/ES.svg" class="drapeau" alt="Spanish Flag" style=""></a>
						</li>
					</ul>
				</div>
    </div>
  </div>
<!-- menu sur mobile ... -->
<!--
<div id="mobile" class="mobile-navbar-content">
  <img id="background" src="images/header_bg.png">
  <img id="logo" style="width: 80px;margin: 10px 0;" src="images/logo_blanc_100.png" />
  <ul class="navb">
    <a href="society.php"><li class="link"><?= $societeMenu ;?></li></a>
      <div id="mobile-dropdown">
        <a href="#" id="open-mobile-dropdown"><li class="link"><?= $produitsMenu;?> <span id="arrow"><i class="fas fa-caret-down"></i></i></span></li></a>
        <div class="mobile-dropdown-content">
          <a href="produits.php">Produits</a>
          <hr />
          <a href="details_produits.php"><?= $chataignierSsMenu;?></a>
          <a href="details_produits.php"><?= $acaciaSsMenu;?></a>
          <a href="details_produits.php"><?= $pinSsMenu;?></a>
        </div>
      </div>


     <a href="contacts.php"><li class="link"><?= $contactMenu;?></li></a>
  </ul>
</div>
-->
</header>
