$(document).ready(function(){

	$('#about-slider').slick({
		infinite: true,
		arrows: true,
		dots: false,
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
          dots: false,
					infinite: true,
				}
			},
		    {
		    	breakpoint: 880,
		    	settings: {
		    		slidesToShow: 2,
            dots: false,
		    		slidesToScroll: 1
		    	}
			},
			{
		    	breakpoint: 560,
		    	settings: {
		    		slidesToShow: 1,
            dots: false,
		    		slidesToScroll: 1
		   		}
			}
		]
	});

	$('#city-slider').slick({
		infinite: true,
		arrows: true,
    dots: false,
		autoplay: true,
		autoplaySpeed: 4000,
		slide: '.slide',
		responsive: [
			{
				breakpoint: 2560,
				settings: {
					slidesToShow: 3,
					slidesToScroll: 3,
          dots: false,
					infinite: true,
				}
			},
		    {
		    	breakpoint: 880,
		    	settings: {
		    		slidesToShow: 2,
            dots: false,
		    		slidesToScroll: 1
		    	}
			},
			{
		    	breakpoint: 560,
		    	settings: {
		    		slidesToShow: 1,
            dots: false,
		    		slidesToScroll: 1
		   		}
			}
		]
	});

});
