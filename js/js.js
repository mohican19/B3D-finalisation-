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

$(window).scroll(function() {
  var h = window.pageYOffset;
  if (h > 80) {
    $(".scroll-up").fadeIn();
  } else {
    $(".scroll-up").fadeOut();
  }
});

$(window).scroll(function() {
  var hFooter = $('footer').outerHeight();
  var hBody = $('body').outerHeight();
  var hWindow = $(window).outerHeight();
  var limiteY = hBody - hFooter - hWindow + 50;
  var h = window.pageYOffset;

  if ( h >= limiteY ) {
      console.log ("ok");
    $('.scroll-up').css({ bottom: '205px'}).animate();
    /*elt.animate({position: 'sticky', bottom: '205'}, 1);*/
  } else if ( h < limiteY ) {
     console.log ("non");
    $('.scroll-up').css({ bottom: '70px'}).animate();
  }
});

/*$('footer').ready(function() {
  console.log ("footer");
  var h = $(window).scrollTop();
  var hfooter = $('footer').height();
  console.log (hfooter);
  console.log (h);
  if (h > 90) {
    console.log ('ok');
} else { console.log ('non');}
});*/

//Apparition('.scroll-up');
//blocage de la fleche au footer


/*$(window).scroll(function() {
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
}*/

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

/*StopElt('.scroll-up');
function StopElt(element) {
            var elt = $(element);
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

          /*if ( h >= limiteY ) {
              console.log ("ok");
            $('.scroll-up').css({position: 'sticky', bottom: '205', left: '96%', margin: '5px'});
            /*elt.animate({position: 'sticky', bottom: '205'}, 1);
          } else if ( h < limiteY ) {
             console.log ("non");
            elt.css({position: 'fixed', bottom: '70px'});
          }
}*/

StopAnimation=function() {
  $("html, body").bind("scroll mousedown DOMMouseScroll mousewheel keyup", function(){
    $('html, body').stop();
  });
}

/*$(window).scroll(function() {
  ScrollToTop();
  StopAnimation();
  //StopElt();
});*/
