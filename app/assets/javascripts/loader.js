$(function() {
	window.preloader = new Preloadit({
		images: [
			"#{image_url('logo.png'}",
		]
	});
});

$(document).on("ready", function () {
	$l = $('#loader-gif');
	if (!$l.data('original_source')) {
		$l.data('original_source', $l.attr('source'));
	}
	$l.attr('src',$l.attr('src')+"?"+Math.random());
	$("#loader").delay(3200).fadeOut(1000);
});