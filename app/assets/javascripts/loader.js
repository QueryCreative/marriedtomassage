$(function() {
	window.preloader = new Preloadit({
		images: [
			"/assets/video-placeholder2.png",
			"/assets/building-home.jpg",
			"/assets/pano1.jpg",
			"/assets/history-wall.jpg",
			"/assets/datacenter.jpg",
			"/assets/map-img.png"
		], 
		onComplete: function(){
			$("#loader").delay(3200).fadeOut(1000);
		}
	});
});

$(document).ready(function () {
	$("#loader-gif").load().attr("src", "Netrality_2_1_second_delay.gif");
});
