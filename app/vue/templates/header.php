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

<header id="header">
  <!-- icones choix langue  -->
  <div class="d-flex justify-content-end pt-2 pr-3">
    <div class="">
      <ul class="list-inline">
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
  <nav class="navbar navbar-expand-md">
    <!-- logo -->
    <a class="navbar-brand" href="index.php">
      <img src="images/logo_blanc_100.png" alt="logo">
    </a>
    <!-- Toggler/collapsibe Button -->
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
        <span class="navbar-toggler-icon"></span>
      </button>
    <!-- Liens -->
    <div class="collapse navbar-collapse text-center ml-lg-5" id="collapsibleNavbar">
      <ul class="navbar-nav">
        <!-- Dropdown -->
        <li class="nav-item dropdown d-none d-sm-flex">
          <a class="nav-link dropdown-toggle <?php if (strpos($_SERVER['REQUEST_URI'], 'index.php?action=produits')) {
     echo('active');
 } ?>"  href="index.php?action=produits"><?= $produitsMenu; ?></a>
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
            <li class="nav-item d-block d-sm-none">
              <a class="nav-link <?php if (strpos($_SERVER['REQUEST_URI'], 'index.php?action=societe')) {
     echo('active');
 } ?>" href="index.php?action=societe"><?= $produitsMenu ;?>
              </a>
              <ul class="nav d-flex justify-content-around mb-3">
              <li class="nav-item">
                <a href="index.php?action=produits&id=1"><?= $acaciaSsMenu ?></a>
              </li>
              <li class="nav-item">
                <a href="index.php?action=produits&id=2"><?= $pinSsMenu ?></a>
              </li>
              <li class="nav-item">
                <a href="index.php?action=produits&id=3"><?= $chataignierSsMenu ?></a>
              </li>
              </ul>
            </li>
            <li class="nav-item">
              <a class="nav-link <?php if (strpos($_SERVER['REQUEST_URI'], 'index.php?action=societe')) {
     echo('active');
 } ?>" href="index.php?action=societe"><?= $societeMenu ;?>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link <?php if (strpos($_SERVER['REQUEST_URI'], 'index.php?action=contact')) {
     echo('active');
 } ?>" href="index.php?action=contact"><?= $contactMenu ;?>
              </a>
            </li>
      </ul>
    </div>
  </nav>
</header>
