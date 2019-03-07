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
