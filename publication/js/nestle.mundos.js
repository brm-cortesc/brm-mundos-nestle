jQuery(document).ready(function() {

  /* Config del carousel marcas */
  var marcas, ppal;
  marcas = {
    arrows: true,
    infinite: true,
    slidesToShow: 8,
    slidesToScroll: 1
  };
  ppal = {
    arrows: false,
    slidesToScroll: 1,
    autoplay: true,
    fade: true,
    autoplaySpeed: 5000
  };
  jQuery('.container-carousel').slick(marcas);
  jQuery('.container-slider .slider-categorias').slick(ppal);
  jQuery('.menu a').hover((function() {

    /*enter */
    var categoria, pos;
    categoria = jQuery(this).attr('data-category');
    pos = jQuery(this).parent().index();

    /* Pausamos rotador */
    jQuery('.container-slider .slider-categorias').slick('slickPause');
    jQuery('.container-slider .slide-intro-txt').addClass('unactive');

    /* buscamos slide correspondiente y lo activamos */
    jQuery('.container-slider .slider-categorias').slick('slickGoTo', pos);
    setTimeout(function() {
      jQuery('.container-slider .slide-' + categoria + ' .slide-hover').addClass('active');
    }, 500);
  }), function() {

    /*out */
    jQuery('.container-slider .slider-categorias').slick('slickPlay');
    jQuery('.container-slider .slide-hover').removeClass('active');
    jQuery('.container-slider .slide-intro-txt').removeClass('unactive');
  });
});

//# sourceMappingURL=../maps/nestle.mundos.js.map
