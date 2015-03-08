$(function() {
	window.preloader = new Preloadit({
		images: [
			"/assets/logo.png",
		], 
		onComplete: function(){
			$("#loader").delay(3200).fadeOut(1000);
		}
	});
});

$(document).ready(function () {
	$("#loader-gif").load().attr("src", "loader-gif.gif");
});
