$(function() {
	window.preloader = new Preloadit({
		images: [
			"#{image_url('logo.png'}",
		], 
		onComplete: function(){
			$("#loader").delay(3200).fadeOut(1000);
		}
	});
});

// $(document).on('ready page:load page:reload', function(){
// 	$("#loader-gif").load().attr("src", "#{image_url('logo-gif.gif'}");
// 	$("#loader").delay(3200).fadeOut(1000);
// });

// $(document).on('page:change', function(){
// 	$("#loader-gif").load().attr("src", "assets/logo-gif.gif");
// 	$("#loader").delay(3200).fadeOut(1000);
// });
