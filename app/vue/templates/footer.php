<!------------------------------
création du footer,
utilisation via include 'app/vue/templates/footer.php';
--------------------------------->
<footer id="footer" class="container-fluid">

    <div class="bas-de-page row">
      <div class="col-lg-2 col-md-2 m-0 pr-0 d-flex align-items-center">
        <a href="index.php"><img src='<?= $footerImgs[1]['image']; ?>' alt="<?= $footerImgs[1][$langue]; ?>"></a>
      </div>
      <div class="col-lg-3 col-md-3 pt-1 justify-content-start d-flex align-items-center">
        <div class="texte-footer">
            <p><?= 'B3D, '.date('Y').' '.$footer[0][$langue]; ?></p>
            <a href="index.php?action=legales"><?= $footer[2][$langue]; ?></a>
        </div>
      </div>
      <div class="col-lg-2 text-center">

			</div>
      <div class="col-lg-3 col-md-3 justify-content-end d-flex align-items-center">
        <p><?= $footer[1][$langue];?></p>
      </div>
      <div class="col-lg-2 col-md-1 col-sm-1 pl-0 justify-content-start d-flex align-items-center">
        <a href="https://corrtech.fr/"><img src='<?= $footerImgs[0]['image']; ?>' alt="<?= $footerImgs[0][$langue]; ?>" width="60%"></a>
      </div>
    </div>
</footer>
<div>
<a id ="" class="scroll-up" href="#header" ><i class=" far fa-arrow-alt-circle-up fa-2x" ></i>
</div>
<script src="js/js.js"></script>
