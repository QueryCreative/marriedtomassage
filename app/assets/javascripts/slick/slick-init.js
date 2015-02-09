$(document).ready(function(){

	$('#about-slider').slick({
		infinite: true,
		arrows: true,
		dots: true,
		autoplay: true,
		autoplaySpeed: 4000,
		slidesToShow: 3,
		slidesToScroll: 3,
		slide: '.slide',
		responsive: [
			{
				breakpoint: 2560,
				settings: {
					slidesToShow: 3,
					slidesToScroll: 3,
					infinite: true,
					dots: true
				}
			},
		    {
		    	breakpoint: 880,
		    	settings: {
		    		slidesToShow: 2,
		    		slidesToScroll: 1
		    	}
			},
			{
		    	breakpoint: 560,
		    	settings: {
		    		slidesToShow: 1,
		    		slidesToScroll: 1
		   		}
			}
		]
	});

	$('#city-slider').slick({
		infinite: true,
		arrows: true,
		autoplay: true,
		autoplaySpeed: 4000,
		slide: '.slide',
		responsive: [
			{
				breakpoint: 2560,
				settings: {
					slidesToShow: 3,
					slidesToScroll: 3,
					infinite: true,
					dots: true
				}
			},
		    {
		    	breakpoint: 880,
		    	settings: {
		    		slidesToShow: 2,
		    		slidesToScroll: 1
		    	}
			},
			{
		    	breakpoint: 560,
		    	settings: {
		    		slidesToShow: 1,
		    		slidesToScroll: 1
		   		}
			}
		]
	});

	$('#main-slider').slick({
		infinite: true,
		arrows: false,
		dots: true,
		slidesToShow: 1,
		slidesToScroll: 1,
		slide: '.slide'
	});

});