$(function() {
	window.preloader = new Preloadit({
		images: [
			"video-placeholder2.png",
			"building-home.jpg",
			"pano1.jpg",
			"history-wall.jpg",
			"datacenter.jpg",
			"map-img.png"
		], 
		onComplete: function(){
			$("#loader").delay(3200).fadeOut(1000);
		}
	});
});

$(document).ready(function () {
	$("#loader-gif").load().attr("src", "Netrality_2_1_second_delay.gif");
});
