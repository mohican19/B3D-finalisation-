<!------------------------------
création du footer,
utilisation via include 'app/vue/templates/footer.php';
--------------------------------->

<?php
$textFooter1= "B3D, ". date('Y') .". Tous droits réservés.<br> Copies des documents uniquement s'il existe un lien indexé vers la source.";
$textFooter2 = "Site développé par:";
?>

<footer id="footer" class="container-fluid">
  <div class="container copyright_cont">
    <div class="row">
      <div class="col-md-1 col-sm-1 col-1">
        <a href="#"><img src='images/logo_blanc_100.png'></a>
      </div>
      <div class="col-md-7 col-sm-11 col-11 cr_text">
        <p><?= $textFooter1 ?></p>
            </div>
      <div class="col-md-3  col-sm-11 site_dev_par">
        <p><?= $textFooter2;?></p>
      </div>
      <div class="col-md-1 col-sm-1 site_dev_par2">
        <a href="https://corrtech.fr/"><img src='images/corrd3v.png'></a>
        <div class="corr3dv">coяr<span class="green">d3v</span></div>
      </div>
    </div>
  </div>
</footer>

<style>

p {
  color: white;
  line-height: ;
}

footer {
  background-image: url('images/footer_bg.png');
  background-position: bottom;
  background-size: cover;
  background-repeat: no-repeat;
  border-top: 3px solid #ae2626;
}
.copyright_cont{
  padding-top: 120px;
  color: #fff;
  font-size: 0.8em;
  padding-bottom: 20px;
}

.cr_text{
  align-items: center;
  display: flex;
  justify-content: flex-start;

}



.corr3dv{
    text-transform: uppercase;
}
.green{
  color: #7CFC00;
}

.site_dev_par{
  text-align: right;
  align-items: center;
  display: flex;
  justify-content: flex-end;
}
@media (max-width: 768px){
    .cr_text{padding-left: 50px;
    }
}

 @media (min-width: 576px && max-width: 768px) {
    .cr_text{padding-left: 50px;}

}

@media (max-width: 768px){
  .site_dev_par{display: none;}
  .site_dev_par2{display: none;}
  .cr_text{padding-left: 50px;}

}

@media (max-width: 576px) {
.cr_text{padding-left: 50px;}

}

</style>
