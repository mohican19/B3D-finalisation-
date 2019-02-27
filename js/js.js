//apparition du tableau dans les pages "produit"
$('#show-desc').on('click', function(){
          $("#tableau").slideToggle("hide");
        })

// le scroll de la fléche du bas
$(".scroll-up").click(function() {
  var section = $('#header');
  $("html,body").animate({
  scrollTop: section.offset().top
  }, "slow");
});
