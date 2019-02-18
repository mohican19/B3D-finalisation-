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
$contactMenu = 'Contact';
 ?>



<header>
<nav id="large-desktop" class="navbar navbar-expand-lg navbar-light bg-light background">
    <a class="navbar-brand" href="./index.php">
      <img src="images/logo_blanc_100.png"/>
    </a>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
      </li>
      <li class="nav-item">
        <a class="nav-link" href="society.php"><?= $societeMenu ;?></a>
      </li>
      <div class="dropdown">
      <li class="nav-item">
        <a class="nav-link" id="open-dropdown" href="produits.php"><?= $produitsMenu; ?><i class="fas fa-caret-down"></i></a>
      </li>
        <div class="dropdown-content">
          <a href="details_produits1.php"><?= $chataignierSsMenu ;?></a>
          <a href="details_produits2.php"><?= $acaciaSsMenu ;?></a>
          <a href="details_produits3.php"><?= $pinSsMenu ;?></a>
        </div>
      </div>
      <li class="nav-item">
        <a class="nav-link disabled" href="contacts.php"><?= $contactMenu ;?></a>
      </li>
    </ul>

    <ul class="nav navbar-nav navbar-right">
    <div class="dropdown-lang">
      <li class="nav-item"><i class="fas fa-globe"></i> <?= $_SESSION['lang'];?> </li>
        <div class="dropdown-content">
          <a href="?lang=french">Français</a>
          <a href="?lang=english">Anglais</a>
          <a href="?lang=spanish">Espagnol</a>
          <a href="?lang=germany">Allemand</a>
        </div>
      </div>
    </ul>
  </div>
</nav>

<!-- menu sur mobile ... -->
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

</header>

<style>
.navbar#large-desktop,
.panel-white .header, h2 {
  font-family: 'Acme', sans-serif;
}

.navbar#large-desktop.background {
  height: 250px;
  background-image: url('images/header_bg.png');
  color: #fff !important;
  padding-bottom: 50px;


}
.navbar#large-desktop .navbar#large-desktop-brand{
  padding-left: 25px;
}
.navbar-light .navbar-nav .nav-link {
  color: #fff !important;
}
.navbar#large-desktop .nav-link a {
  color: #fff !important;
  text-transform: uppercase;
  font-weight: 900;
  transition: all 0.3s ease-in-out;
  position: relative;
}
.navbar#large-desktop .nav-link.active {
  border-top: 1px solid #ae2626;
  margin-top: -1px;
  color: #fff !important;
}
.navbar#large-desktop .nav-link:hover{
  transition: all 0.3s ease-in-out;
  border-top: 1px solid #ae2626;
  margin-top: -1px;
  color: #fff !important;
}
.nav-item.active {
  border-top: 1px solid #ae2626;
}
#arrow {
  padding-left:5px;
}
#mobile-dropdown {
  display: inline-block;

}
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

.dropdown-lang {
  position: relative;
  display: inline-block;
}

.dropdown-lang .dropdown-content {
  display: none;
  color: #444 !important;
  background-color: #fff;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
  position:fixed;
}

.dropdown-lang .dropdown-content a {
  border-top: 1px solid #fff;
}

.dropdown-lang a:hover{
    display: block;
    transition: all 0.3s ease-in-out;
}

.dropdown-lang .dropdown-content a {
  color: #444 !important;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}
.dropdown-lang:hover .dropdown-content {display: block;}

.nav.navbar-nav.navbar-right {
  position: relative;
  right: 100px;
}

</style>

<style type="text/css">
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

.dropdown .dropdown-content {
  display: none;
  position: absolute;
  color: #fff !important;
  background-color: transparent;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
  position:fixed;
}

.dropdown .dropdown-content a {
  border-top: 1px solid #fff;
  margin-top: 2px;
}

.dropdown .dropdown-content a:hover{
    transition: all 0.3s ease-in-out;
    border-top: 2px solid #ae2626 !important;
    margin-top: 0px;
  }

.dropdown .dropdown-content a {
  color: #fff;
  padding: 12px 16px;
  text-decoration: none;
  display: table-cell;
}

.dropdown:hover .dropdown-content {display: block;}
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
