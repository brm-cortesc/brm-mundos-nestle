jQuery(document).ready ->

	### Config del carousel marcas ###
	marcas =
		arrows: true,
		infinite: true,
		slidesToShow: 8,
		slidesToScroll: 1


	ppal =
		arrows:false,
		slidesToScroll: 1,
		autoplay: true,
		fade: true,
		autoplaySpeed: 5000


	interna =
		arrows:false,
		slidesToScroll: 1,
		fade: true


	if jQuery('.container-carousel .item').length > 4

		jQuery('.container-carousel')
			.slick(marcas)

	jQuery('.container-slider.container-slider-home .slider-categorias')
		.slick(ppal)

	jQuery('.container-slider.container-slider-interna .slider-categorias')
		.slick(interna)
	###to show on hover ###

	jQuery('.menu a')
		.hover (->
			###enter ###
			categoria = jQuery(@).attr('data-category')
			pos = jQuery(@).parent().index()

			### Pausamos rotador ###
			jQuery('.container-slider.container-slider-home .slider-categorias').slick 'slickPause'

			jQuery('.container-slider.container-slider-home .slide-intro-txt').addClass 'unactive'
			

			### buscamos slide correspondiente y lo activamos ###
			jQuery('.container-slider.container-slider-home .slider-categorias').slick( 'slickGoTo', pos )
			
			setTimeout () ->
				jQuery('.container-slider.container-slider-home  .slide-'+categoria+ ' .slide-hover').addClass 'active'
				return
			, 500

			return

		), ->
			###out###
			jQuery('.container-slider.container-slider-home .slider-categorias').slick 'slickPlay'
			jQuery('.container-slider.container-slider-home .slide-hover').removeClass 'active'
			jQuery('.container-slider.container-slider-home .slide-intro-txt').removeClass 'unactive'
			return

	jQuery('.menu-interna a')
		.hover (->
			###enter ###
			categoria = jQuery(@).attr('data-category')
			pos = jQuery(@).parent().index()

			jQuery('.container-slider.container-slider-interna  .slide-intro-txt').addClass 'unactive'
			

			### buscamos slide correspondiente y lo activamos ###
			jQuery('.container-slider.container-slider-interna  .slider-categorias').slick( 'slickGoTo', pos )
			
			setTimeout () ->
				jQuery('.container-slider.container-slider-interna  .slide-'+categoria+ ' .slide-hover').addClass 'active'
				return
			, 500

			return

		), ->
			###out###
			current = jQuery('.menu-interna li.active').index()
			jQuery('.container-slider.container-slider-interna  .slider-categorias').slick( 'slickGoTo', current )
			jQuery('.container-slider.container-slider-interna  .slide-hover').removeClass 'active'
			jQuery('.container-slider.container-slider-interna  .slide-intro-txt').removeClass 'unactive'
			return


	# Acá termina el ready
	return