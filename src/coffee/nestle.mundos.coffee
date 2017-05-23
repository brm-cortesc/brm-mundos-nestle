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

	jQuery('.container-carousel')
		.slick(marcas)

	jQuery('.container-slider .slider-categorias')
		.slick(ppal)

	##Hover to show hover ###

	jQuery('.menu a')
		.hover (->
			###enter ###
			categoria = jQuery(@).attr('data-category')
			pos = jQuery(@).parent().index()

			### Pausamos rotador ###
			jQuery('.container-slider .slider-categorias').slick 'slickPause'

			jQuery('.container-slider .slide-intro-txt').addClass 'unactive'
			
			# jQuery('.container-slider .slide-'+categoria).addClass 'active'

			### buscamos slide correspondiente y lo activamos ###
			jQuery('.container-slider .slider-categorias').slick( 'slickGoTo', pos )
			
			setTimeout () ->
				jQuery('.container-slider .slide-'+categoria+ ' .slide-hover').addClass 'active'
				return
			, 500

			return

		), ->
			###out###
			jQuery('.container-slider .slider-categorias').slick 'slickPlay'
			jQuery('.container-slider .slide-hover').removeClass 'active'
			jQuery('.container-slider .slide-intro-txt').removeClass 'unactive'
			return


	# Acá termina el ready
	return