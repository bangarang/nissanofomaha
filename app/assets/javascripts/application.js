// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery.reel
//= require jquery_ujs
//= require jquery-fileupload/basic
//= require jquery-fileupload/vendor/tmpl
//= require angular
//= require angular-animate
//= require_tree .

$(document).ready(function() {
  $(".price-click").click(function() {
	  $(".price").toggleClass("up");
	});
	$(".price p").click(function() {
	  $(".price").toggleClass("up");
	});
  $(".odometer-click").click(function() {
	  $(".odometer").toggleClass("up");
	});
	$(".odometer p").click(function() {
	  $(".odometer").toggleClass("up");
	});
  $(".different-click").click(function() {
	  $(".different").toggleClass("up");
	  return false;
	});

	$("#interior-click").click(function() {
		$(this).addClass("active");
		$("#exterior-click").removeClass("active");

		$('.labels .interior').addClass("active");
		$('.labels .exterior').removeClass("active");

	  $("#interior-reel").removeClass("off");
	  $("#exterior-reel").addClass("off");
	  $(".interior-views").removeClass("off");
	  $(".exterior-views").addClass("off");

	});
	$("#exterior-click").click(function() {
		$(this).addClass("active");
		$("#interior-click").removeClass("active");

		$('.labels .exterior').addClass("active");
		$('.labels .interior').removeClass("active");

	  $("#exterior-reel").removeClass("off");
	  $("#interior-reel").addClass("off");
	  $(".exterior-views").removeClass("off");
	  $(".interior-views").addClass("off");
	});

	var owl = $("#owl-demo");
 
  owl.owlCarousel({
      items : 3, //10 items above 1000px browser width
      itemsTablet: [600,2], //2 items between 600 and 0
      itemsMobile : [400,1] // itemsMobile disabled - inherit from itemsTablet option
  });
 
  // Custom Navigation Events
  $(".next").click(function(){
    owl.trigger('owl.next');
  })
  $(".prev").click(function(){
    owl.trigger('owl.prev');
  })
  $(".play").click(function(){
    owl.trigger('owl.play',1000); //owl.play event accept autoPlay speed as second parameter
  })
  $(".stop").click(function(){
    owl.trigger('owl.stop');
  })
});