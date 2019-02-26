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



<header class="container-fluid ">
  <div class="en-tete row">
    <div class="col-lg-1 col-md-3 col-sm-10  d-flex  align-items-center">
        <a class="" href="./index.php">
            <img src="images/logo_blanc_100.png" class=""/>
        </a>
    </div>
    <div class="col-lg-8 col-md-8 col-sm-10 justify-content-start d-flex align-items-center">
      <nav id="large-desktop" class="navbar navbar-expand-lg ">
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav mr-auto">

            <li class="nav-item">
              <a class="nav-link <?php if (strpos($_SERVER['REQUEST_URI'], 'index')) {
     echo('active');
 } ?>" href="index.php?action=societe"><?= $societeMenu ;?></a>
            </li>

            <li class="nav-item dropdown">
              <a class="nav-link  dropdown-toggle<?php if (strpos($_SERVER['REQUEST_URI'], 'society')) {
     echo('active');
 } ?>" data-toggle="dropdown" href="index.php?action=produits"><?= $produitsMenu; ?></a>
              <div class="dropdown-menu">

                <div class="nav-panel">
                  <div class="product-area-content text-center">
                        <a class="product-link" href="acacia.php">
                        <img src="images/panel-acacia.jpg" alt="produits B3D - acacia">
                        <?= $acaciaSsMenu ?>
                        </a>

                        <a class="product-link" href="pin.php">
                        <img src="images/panel-pin.jpg"  alt="produits B3D - pin">
                        <?= $pinSsMenu ?>
                        </a>

                        <a class="product-link" href="chataignier.php">
                        <img src="images/panel-chataignier.jpg" alt="produits B3D - chataignier">
                        <?= $chataignierSsMenu ?>
                        </a>

                        <a class="product-link" href="bois-de-chauffe.php">
                        <img src="images/panel-chauffe.jpg" alt="produits B3D - bois de chauffe">
                        <?= $boisFeuSsMenu ?>
                        </a>
                  </div><!-- product-area-content -->
                </div><!-- nav-panel -->


          <!--      <a class="dropdown-item" href="details_produits1.php"><?= $chataignierSsMenu ;?></a>
                <a class="dropdown-item" href="details_produits2.php"><?= $acaciaSsMenu ;?></a>
                <a class="dropdown-item" href="details_produits3.php"><?= $pinSsMenu ;?></a> -->
              </div>
            </li>

            <li class="nav-item">
              <a class="nav-link <?php if (strpos($_SERVER['REQUEST_URI'], 'society')) {
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
							<a href="#"><img src="images/FR.svg" class="drapeau" alt="French Flag" style=""></a>
						</li>
            <li class="list-inline-item">
							<a href="#"><img src="images/DE.svg" class="drapeau" alt="Germen Flag" style=""></a>
						</li>
            <li class="list-inline-item">
							<a  href="#"><img src="images/ES.svg" class="drapeau" alt="Spanish Flag" style=""></a>
						</li>
            <li class="list-inline-item">
							<a  href="#"><img src="images/EN.svg" class="drapeau" alt="English Flag" style=""></a>
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
<style>





<!-- mobile -->
<style type="text/css">

/* menu mobile */
.mobile-dropdown-content {
  display: block;
  position: absolute;
  color: #fff !important;
  background-color: #fff;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
  position:fixed;
}

.mobile-dropdown-content a {
  color: black !important;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

#mobile-dropdown {
  display: inline-block;

}

#arrow {
  padding-left:5px;
}


  #mobile a {
    color: #fff;
    text-decoration: none;
    font-weight: unset;
  }
  .mobile-navbar-content {
    color: #fff !important;
    width: 100vw;
    height: 180px;
    text-align: center;
  }

  .mobile-navbar-content #background {
    width:100%;
    height: 180px;
    position: absolute;
    top: 0;
    left:0;
    z-index: -10;
  }


  }
  .mobile-navbar-content #logo {
    width: 80px;
    margin: 10px 0;
  }
  .mobile-navbar-content .navb {
    display: block;
    width: 100%;
    padding: 0;
    margin: 0;
    text-align: center;
  }

  .mobile-navbar-content .navb .link {
    display: inline-block;
    background-color: #ae2626;
    border-radius: 2px;
    transition: all 0.3s ease-in-out;
    cursor: pointer;
    padding: 10px 20px;
  }
  .mobile-navbar-content .navb .link:hover {
    transition: all 0.3s ease-in-out;
    background-color: #e93535;
  }
  @media (min-width: 900px) {
    #mobile {
      display: none;
    }
  }

  @media (max-width: 900px) {
    #large-desktop {
      display: none;
    }
    .page-content .container{
      position: relative;
      top: 0;
      padding-top:10px;
    }


  }
</style>

<style type="text/css">

.dropdown {
  position: relative;
  display: inline-block;
}

.dropdown .dropdown-menu {
  display: none;
  position: absolute;
  color: #fff !important;
  background-color: transparent;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
  position:fixed;
}

.dropdown .dropdown-menu a {
  border-top: 1px solid #fff;
  margin-top: 2px;
  color: #fff;
  padding: 12px 16px;
  text-decoration: none;
  display: table-cell;
}

.dropdown .dropdown-menu a:hover{
    background-color: transparent;
    transition: all 0.3s ease-in-out;
    border-top: 2px solid #ae2626 !important;
    margin-top: 0px;
  }


.dropdown:hover .dropdown-menu {display: block;}


</style>

<script type="text/javascript">
  var Open = false;
  $('.mobile-dropdown-content').css('display', 'none');

  $('#open-mobile-dropdown').on('click', function(e){
    e.preventDefault();
    if (Open == false) {
      $('.mobile-dropdown-content').css('display', 'block');
      $('#arrow').html('<span id="arrow"><i class="fas fa-caret-up"></i></span>');
      Open = true;
    } else {
      $('.mobile-dropdown-content').css('display', 'none');
      $('#arrow').html('<span id="arrow"><i class="fas fa-caret-down"></i></span>');
      Open = false;
    }
  });
</script>
