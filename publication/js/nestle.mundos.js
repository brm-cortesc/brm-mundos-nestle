jQuery(document).ready(function() {

  /* Config del carousel marcas */
  var interna, marcas, ppal;
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
  interna = {
    arrows: false,
    slidesToScroll: 1,
    fade: true
  };
  if (jQuery('.container-carousel .item').length > 4) {
    jQuery('.container-carousel').slick(marcas);
  }
  jQuery('.container-slider.container-slider-home .slider-categorias').slick(ppal);
  jQuery('.container-slider.container-slider-interna .slider-categorias').slick(interna);

  /*to show on hover */
  jQuery('.menu a').hover((function() {

    /*enter */
    var categoria, pos;
    categoria = jQuery(this).attr('data-category');
    pos = jQuery(this).parent().index();

    /* Pausamos rotador */
    jQuery('.container-slider.container-slider-home .slider-categorias').slick('slickPause');
    jQuery('.container-slider.container-slider-home .slide-intro-txt').addClass('unactive');

    /* buscamos slide correspondiente y lo activamos */
    jQuery('.container-slider.container-slider-home .slider-categorias').slick('slickGoTo', pos);
    setTimeout(function() {
      jQuery('.container-slider.container-slider-home  .slide-' + categoria + ' .slide-hover').addClass('active');
    }, 500);
  }), function() {

    /*out */
    jQuery('.container-slider.container-slider-home .slider-categorias').slick('slickPlay');
    jQuery('.container-slider.container-slider-home .slide-hover').removeClass('active');
    jQuery('.container-slider.container-slider-home .slide-intro-txt').removeClass('unactive');
  });
  jQuery('.menu-interna a').hover((function() {

    /*enter */
    var categoria, pos;
    categoria = jQuery(this).attr('data-category');
    pos = jQuery(this).parent().index();
    jQuery('.container-slider.container-slider-interna  .slide-intro-txt').addClass('unactive');

    /* buscamos slide correspondiente y lo activamos */
    jQuery('.container-slider.container-slider-interna  .slider-categorias').slick('slickGoTo', pos);
    setTimeout(function() {
      jQuery('.container-slider.container-slider-interna  .slide-' + categoria + ' .slide-hover').addClass('active');
    }, 500);
  }), function() {

    /*out */
    var current;
    current = jQuery('.menu-interna li.active').index();
    jQuery('.container-slider.container-slider-interna  .slider-categorias').slick('slickGoTo', current);
    jQuery('.container-slider.container-slider-interna  .slide-hover').removeClass('active');
    jQuery('.container-slider.container-slider-interna  .slide-intro-txt').removeClass('unactive');
  });
});

//# sourceMappingURL=../maps/nestle.mundos.js.map
