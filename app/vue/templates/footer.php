<!------------------------------
création du footer,
utilisation via include 'app/vue/templates/footer.php';
--------------------------------->

<?php
$textFooter1= "B3D, ". date('Y') .". Tous droits réservés";
$textFooter2 = "Site développé par:";
$textFooter3 = "Mentions légales";
?>

<footer id="footer" class="container-fluid">

    <div class="bas-de-page row">
      <div class="col-lg-1 col-md-1 col-sm-1  m-0 pr-0 d-flex align-items-center">
        <a href="index.php"><img src='images/logo_blanc_100.png'></a>
      </div>
      <div class="col-lg-3 col-md-8 col-sm-11  pt-1 justify-content-start d-flex align-items-center">
        <div class="texte-footer">
            <p><?= $textFooter1 ?></p>
            <a href="index.php"><?= $textFooter3 ?></a>
        </div>
      </div>
      <div class="col-lg-4 text-center">
						<a href="#header" class="scroll-up"><i class="fas fa-angle-up fa-3x" style="color: white"></i></a>
			</div>
      <div class="col-lg-2 col-md-2  col-sm-11 justify-content-end d-flex align-items-center">
        <p><?= $textFooter2;?></p>
      </div>
      <div class="col-lg-2 col-md-1 col-sm-1 pl-0 justify-content-start d-flex align-items-center">
        <a href="https://corrtech.fr/"><img src='images/logoPromo.png' width="100%"></a>
      </div>
    </div>
</footer>
<script src="js/js.js"></script>
