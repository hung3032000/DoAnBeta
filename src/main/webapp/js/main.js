$(document).ready(function() {
	// hover


	$("#signin").hover(function() {
		if ($("#signin").hasClass("hover")) {
			$("#signin").removeClass("hover");
		} else {
			$("#signin").addClass("hover");
		}
	});
	$(".miniwishlist").hover(function() {
		if ($(".miniwishlist").hasClass("hover")) {
			$(".miniwishlist").removeClass("hover");
		} else {
			$(".miniwishlist").addClass("hover");
		}
	});
	$(".minicart").hover(function() {
		if ($(".minicart").hasClass("hover")) {
			$(".minicart").removeClass("hover");
		} else {
			$(".minicart").addClass("hover");
		}
	});
	// click
	$(".search-link-container").click(function() {
		if ($("#search").hasClass("open")) {
			$("#search").removeClass("open");
		} else {
			$("#search").addClass("open");
		}
	});
	$(".close-search").click(function() {
		$("#search").removeClass("open");
	});


	$(".minicart").click(function(e) {
		$("html").addClass("minicart-active");
		$("#minicart-container").addClass("minicart-active");
		e.stopPropagation();
	});
	$("#add-to-cart").click(function(e) {
		$("html").addClass("minicart-active");
		$("#minicart-container").addClass("minicart-active");
		e.stopPropagation();
	});

	$(".minicart-close").click(function() {
		$("html").removeClass("minicart-active");
		$("#minicart-container").removeClass("minicart-active");
	});
	$("#js-overlay").click(function() {
		$("html").removeClass("minicart-active");
		$("#minicart-container").removeClass("minicart-active");

	});
	$("#more-details").click(function() {
		$(".product-description").addClass("open");
	});
	$("#less-details").click(function() {
		$(".product-description").removeClass("open");
	});
	$("#variation-Size-header").click(function() {
		if ($(".tab-pane").hasClass("active") || $(".tab-header").hasClass("active")) {
			$(".tab-pane").removeClass("active");
			$(".tab-header").removeClass("active");
		}
		else {
			$(".tab-pane").addClass("active");
			$(".tab-header").addClass("active");
		}
	});
	
	// login
	const inputs = document.querySelectorAll(".form-field");
	function addcl() {
		let parent = this.parentNode.parentNode;
		parent.classList.add("focus");
	}
	function remcl() {
		let parent = this.parentNode.parentNode;
		if (this.value == "") {
			parent.classList.remove("focus");
		}
	}
	inputs.forEach((input) => {
		input.addEventListener("focus", addcl);
		input.addEventListener("blur", remcl);
	});




	// scroll
	var position = $(window).scrollTop();
	$(window).scroll(function() {
		var scroll = $(window).scrollTop();
		if (scroll > position) {
			$("html").addClass("sticky-header-hidden");
		} else {
			$("html").removeClass("sticky-header-hidden");
		}
		position = scroll;
	});
});

function newFunction() {

}
