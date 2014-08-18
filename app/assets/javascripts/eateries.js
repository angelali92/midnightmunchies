$(document).ready(function() {
	// Hearts & Stars Hover on index page.
	$(".tBody").hover(
		function() {
			$(this).find(".glyphicon-star").addClass("glyphicon-star-hover");
			$(this).find(".glyphicon-heart").addClass("glyphicon-heart-hover");
		}, 
		function() {
			$(this).find(".glyphicon-star").removeClass("glyphicon-star-hover");
			$(this).find(".glyphicon-heart").removeClass("glyphicon-heart-hover");
		}
	);
});