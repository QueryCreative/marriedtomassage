$(function() {
	window.preloader = new Preloadit({
		images: [
			"/images/temp/video-placeholder2.png",
			"/images/building-home.jpg",
			"/images/pano1.jpg",
			"/images/history-wall.jpg",
			"/images/datacenter.jpg",
			"/images/temp/map-img.png"
		], 
		onComplete: function(){
			$("#loader").delay(3200).fadeOut(1000);
		}
	});
});

$(document).ready(function () {
	$("#loader-gif").load().attr("src", "/images/Netrality_2_1_second_delay.gif");
});
