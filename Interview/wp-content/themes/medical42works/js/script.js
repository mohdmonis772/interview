jQuery(document).ready(function($) {
	document.addEventListener("click", function (e) {
	  // Hamburger menu
	  if (e.target.classList.contains("hamburger-toggle")) {
		e.target.children[0].classList.toggle("active");
	  }
	});
});

jQuery(document).ready(function($) {
  $(".client-slider").slick({
	infinite: false,
	slidesToShow: 3,
	slidesToScroll: 1,
	prevArrow:
	  "<span class='slick-prev slick-arrow '><i class='icofont-long-arrow-left'></i></span>",
	nextArrow:
	  "<span class='slick-next slick-arrow '><i class='icofont-long-arrow-right'></i></span>",

	responsive: [
	  {
		breakpoint: 1200,
		settings: {
		  slidesToShow: 2,
		},
	  },
	  {
		breakpoint: 992,
		settings: {
		  slidesToShow: 2,
		},
	  },
	  {
		breakpoint: 576,
		settings: {
		  slidesToShow: 1,
		},
	  },
	],
  });

  //equalheight Start
  var highestBox = 0;
  jQuery(".client-main p").each(function () {
	if (jQuery(this).height() > highestBox) {
	  highestBox = jQuery(this).height();
	}
  });
  jQuery(".client-main p").height(highestBox);

  var highestBox = 0;
  jQuery(".blog-content h4").each(function () {
	if (jQuery(this).height() > highestBox) {
	  highestBox = jQuery(this).height();
	}
  });
  jQuery(".blog-content h4").height(highestBox);

  // Slick lightbox

  $(".lightbox").slickLightbox({
	itemSelector: "a.open-lightbox",
	navigateByKeyboard: true,
	prevArrow:
	  "<span class='slick-prev slick-arrow '><i class='icofont-long-arrow-left'></i></span>",
	nextArrow:
	  "<span class='slick-next slick-arrow '><i class='icofont-long-arrow-right'></i></span>",
  });

  const slider = $(".arrivals-slider, .designer-slider, client-slider");

  function onSliderAfterChange(event, slick, currentSlide) {
	$(event.target).data("current-slide", currentSlide);
  }

  function onSliderWheel(e) {
	var deltaY = e.originalEvent.deltaY,
	  $currentSlider = $(e.currentTarget),
	  currentSlickIndex = $currentSlider.data("current-slide") || 0;
	if (
	  // check when you scroll up
	  (deltaY < 0 && currentSlickIndex == 0) ||
	  // check when you scroll down
	  (deltaY > 0 &&
		currentSlickIndex == $currentSlider.data("slider-length") - 1)
	) {
	  return;
	}

	e.preventDefault();
	if (e.originalEvent.deltaY < 0) {
	  $currentSlider.slick("slickPrev");
	} else {
	  $currentSlider.slick("slickNext");
	}
  }

  slider
	.each(function (index, element) {
	  var $element = $(element);
	  // set the length of children in each loop
	  // but the better way for performance is to set this data attribute on the div.slider in the markup
	  $element.data("slider-length", $element.children().length);
	})
	.slick({
	  infinite: true,
	  slidesToShow: 1,
	  slidesToScroll: 1,
	  variableWidth: true,
	  prevArrow:
		"<span class='slick-prev slick-arrow '><i class='icofont-long-arrow-left'></i></span>",
	  nextArrow:
		"<span class='slick-next slick-arrow '><i class='icofont-long-arrow-right'></i></span>",
	})
	.on("afterChange", onSliderAfterChange)
	.on("wheel", onSliderWheel);

  // sidemenu
  $(".side-icon").click(function () {
	$(".sidebar-menu").addClass("open");
	$(".sidebar-overlay").addClass("d-block");
  });
  $(".sidebar-close").click(function () {
	$(".sidebar-menu").removeClass("open");
	$(".sidebar-overlay").removeClass("d-block");
  });
  $(".sidebar-overlay").click(function () {
	$(".sidebar-menu").removeClass("open");
	$(this).removeClass("d-block");
  });
});

