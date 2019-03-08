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
          var footer = $('footer');
          var limiteY = $('body').outerHeight() - footer.outerHeight() - $(window).outerHeight() + 50;
          var h = window.pageYOffset;
          var overlap = window.innerHeight - (footer[0].getBoundingClientRect().y - 30);
          if (h > 80) {
            $(".scroll-up").fadeIn(100);
          } else {
            $(".scroll-up").stop(true, true).fadeOut(200);
          }
          if ( h >= limiteY ) {
            $('.scroll-up').css({ bottom: overlap+'px'});
            $('#bubulle').css({ bottom: overlap+'px'});
          } else {
            $('.scroll-up').css({ bottom: '70px'});
            $('#bubulle').css({ bottom: '7vh'});
          }
        });
