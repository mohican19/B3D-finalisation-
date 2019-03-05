//apparition du tableau dans les pages "produit"
$('#show-desc').on('click', function(){
          $("#tableau").slideToggle("hide");
        })

// le scroll de la fléche du bas
/*$(".scroll-up").click(function() {
  var section = $('#header');
  $("html,body").animate({
  scrollTop: section.offset().top
  }, "slow");
});*/

ScrollToTop=function() {
  var s = $(window).scrollTop();
  if (s > 80) {
    $('.scroll-up').fadeIn();
  } else {
    $('.scroll-up').fadeOut();
  }

  $('.scroll-up').click(function () {
      $("html, body").animate({ scrollTop: 0 }, 500);
      return false;
  });
}

StopElt=function() {
            var elt = $('.scroll-up');
            var hFooter = $('footer').outerHeight();
            var hBody = $('body').outerHeight();
            var hWindow = $(window).outerHeight();
            var limiteY = hBody - hFooter - hWindow + 50;
            var h = window.pageYOffset;
            var dTop = window.innerHeight - document.getElementById('footer').offsetHeight - 50;
            var dBottom = window.innerHeight - 120;

            console.log (hWindow);
            console.log (window.innerHeight);
            /*console.log (limiteY);
            console.log (h);
            console.log (dTop);
            console.log (dBottom);*/

            if ( h >= limiteY ) {
              console.log ("ok");
            $('.scroll-up').css('bottom', '200px').animate('slow');
          } else if ( h < limiteY ) {
             console.log ("non");
            /*$('.scroll-up').css('bottom', '70px').animate('slow');*/
            }

}

StopAnimation=function() {
  $("html, body").bind("scroll mousedown DOMMouseScroll mousewheel keyup", function(){
    $('html, body').stop();
  });
}

$(window).scroll(function() {
  ScrollToTop();
  StopAnimation();
  StopElt();
});
