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

  /*if ( s > 720) {
    $('.scroll-up').css('bottom','200px');
  } else {
    $('.scroll-up').css('bottom','100px');
  }*/
}

StopAnimation=function() {
  $("html, body").bind("scroll mousedown DOMMouseScroll mousewheel keyup", function(){
    $('html, body').stop();
  });
}

$(window).scroll(function() {
  ScrollToTop();
  StopAnimation();
});
