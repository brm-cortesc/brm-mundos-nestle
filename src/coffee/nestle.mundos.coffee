jQuery(document).ready ->
	console.log 'tones el js'

	### Config del carousel marcas ###
	marcas =
		infinite: true,
		slidesToShow: 11,
		slidesToScroll: 1


	jQuery('.container-carousel')
		.slick marcas

	# Acá termina el ready
	return