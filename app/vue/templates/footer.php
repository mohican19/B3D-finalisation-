
<!------------------------------
création du footer,
utilisation via include 'app/vue/templates/footer.php';
--------------------------------->
<footer id="footer" class="container-fluid">

    <div class="bas-de-page row">
      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 m-0 pr-0 d-flex align-items-center">

            <div class="col-lg-2 col-md-5 col-sm-2 col-xs-3 justify-content-start d-flex align-items-center">
            <a href="index.php"><img src='<?= $footerImgs[1]['image']; ?>' alt="<?= $footerImgs[1][$langue]; ?>" width="85%"></a>
           </div>

            <div class="col-lg-10 col-md-7 col-sm-10 col-xs-9 mx-1 justify-content-start d-flex align-items-center">
                <div class="texte-footer">
                    <p><?= 'B3D, '.date('Y').' '.$footer[0][$langue]; ?>
                    <br>
                    <a href="index.php?action=legales"><?= $footer[2][$langue]; ?></a></p>
                </div>
            </div>

      </div>


      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 m-0 pr-0 justify-content-end d-flex align-items-center">

        <div class="col-lg-8 col-md-7 col-sm-10 col-xs-9 justify-content-end d-flex align-items-center">
          <div class="texte-footer">
            <p><?= $footer[1][$langue];?></p>
          </div>
        </div>

        <div class="col-lg-4 col-md-5 col-sm-2 col-xs-3 justify-content-end d-flex align-items-center">
          <a href="https://corrtech.fr/"><img src='<?= $footerImgs[0]['image']; ?>' alt="<?= $footerImgs[0][$langue]; ?>" width="70%"></a>
        </div>

      </div>
    </div>

</footer>
<div>
<a id ="" class="scroll-up" href="#header" ><i class=" far fa-arrow-alt-circle-up fa-2x" ></i>
</div>
<script src="js/js.js"></script>
