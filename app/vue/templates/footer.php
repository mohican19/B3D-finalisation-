
<!------------------------------
création du footer,
utilisation via include 'app/vue/templates/footer.php';
--------------------------------->
<footer class="container-fluid d-flex justify-content-between align-items-center">
  <div class="d-flex align-items-center">
    <a href="index.php"><img src='<?= $footerImgs[1]['image']; ?>' alt="<?= $footerImgs[1][$langue]; ?>"></a>
    <p class="ml-4"><?= 'B3D, '.date('Y').' '.$footer[0][$langue]; ?><br>
      <a href="index.php?action=legales"><?= $footer[2][$langue]; ?></a>
    </p>
  </div>

  <p class="d-none d-sm-flex align-items-center justify-content-end"><?= $footer[1][$langue];?>
    <a class="lien-footer" href="https://corrtech.fr/"><img src='<?= $footerImgs[0]['image']; ?>' alt="<?= $footerImgs[0][$langue]; ?>"width="60%"></a>
  </p>

</footer>
<div>
<a id ="" class="scroll-up" href="#header" ><i class=" far fa-arrow-alt-circle-up fa-2x" ></i>
</div>
<script src="js/js.js"></script>
