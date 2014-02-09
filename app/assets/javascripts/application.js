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
//= require tinymce
//= require_tree .

$(document).ready(function() {
  $(".price-click").click(function() {
	  $(".price").toggleClass("up");
	});
	$(".price li").click(function() {
	  $(".price").toggleClass("up");
	  $(".price li").removeClass('selected');
	  $(this).addClass('selected');
	});
  $(".odometer-click").click(function() {
	  $(".odometer").toggleClass("up");
	});
	$(".odometer li").click(function() {
	  $(".odometer").toggleClass("up");
	  $(".odometer li").removeClass('selected');
	  $(this).addClass('selected');
	});
	$(".make-click").click(function() {
	  $(".make").toggleClass("up");
	});
	$(".make li").click(function() {
	  $(".make").toggleClass("up");
	  $(".make li").removeClass('selected');
	  ident = $(this).attr('id');
	  $('ul.model li').removeClass('current');
	  $(this).addClass('selected');

	  $('ul.model li#'+ident).addClass('current');
	});
	$(".model-click").click(function() {
	  $(".model").toggleClass("up");
	});
	$(".model li ul li").click(function() {
	  $(".model").toggleClass("up");
	  $(".model li").removeClass('selected');
	  $(this).addClass('selected');
	});
  $(".different-click").click(function() {
	  $(".different").toggleClass("up");
	  return false;
	});

	$(".new-dropdown-click").click(function() {
	  $(".new-dropdown").toggleClass("up");
	  return false;
	});
	$(".new-dropdown a").click(function() {
	  $(".new-dropdown").toggleClass("up");
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
      items : 4, //10 items above 1000px browser width
      itemsDesktop : [1000,3], //5 items between 1000px and 901px
      itemsDesktopSmall : [900,2], // betweem 900px and 601px
      itemsTablet: [600,2], //2 items between 600 and 0
      itemsMobile : [400,1],
      pagination: false // itemsMobile disabled - inherit from itemsTablet option
  });
 
  // Custom Navigation Events
  $(".next").click(function(){
    owl.trigger('owl.next');
  });
  $(".prev").click(function(){
    owl.trigger('owl.prev');
  });
  $(".play").click(function(){
    owl.trigger('owl.play',1000); //owl.play event accept autoPlay speed as second parameter
  });
  $(".stop").click(function(){
    owl.trigger('owl.stop');
  });

	$(".lines-button").click(function() {
		$(this).toggleClass("x close");
		$('ul.mobile-menu').toggleClass("up");
	});

  $(".mobile-different-click").click(function() {
	  $(".mobile-different").toggleClass("up");
	  return false;
	});

	$(".joint-click").click(function() {
	  $(".joint").toggleClass("up");
	});

	// $(".vehicles li .vehicle .bottom p.ma.ng-binding").hover(function() {
	//   $(".bottom_comments .ma").addClass("up");
	// });

	$('ul.vehicles').on("mouseenter mouseleave", ".bottom .chips p.ma", function(e){
    $(this).parent().parent().find('.comments p.ma').toggleClass("up");
	}); 
	$('ul.vehicles').on("mouseenter mouseleave", ".bottom .chips p.mpg", function(e){
    $(this).parent().parent().find('.comments p.mpg').toggleClass("up");
	}); 
	$('ul.vehicles').on("mouseenter mouseleave", ".bottom .chips p.mileage", function(e){
    $(this).parent().parent().find('.comments p.mileage').toggleClass("up");
	});    

});