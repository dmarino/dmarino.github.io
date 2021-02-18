/*!
 * GRT Responsive Menu - jQuery Plugin
 * Version: 1.0
 * Author: GRT107
 *
 * Copyright (c) 2018 GRT107
 * Released under the MIT license
*/

// Create a function for mobile version
(function( $ ){
	$.fn.grtmobile = function () {
		if ($(window).width() < 768) {

			$('.grt-mobile-button').on('click', function(){

				$(this).toggleClass("grt-mobile-button-open");
				$("ul.grt-menu").toggleClass("open-grt-menu ");
        $("html, body").toggleClass("body-overflow");
        
      });
      
			$('li.grt-dropdown').on('click', function(e){
				$(this).toggleClass("active-dropdown");
			});
		}
	}
})( jQuery );

// Initialize and check for mobile
$.fn.grtmobile();

// On resize window check for mobile
var resizeTimer;

$(window).on('resize', function(e) {
  clearTimeout(resizeTimer);
  resizeTimer = setTimeout(function() {
     $.fn.grtmobile();
  }, 250);
})


//for the smooth scroll

var topMenu = $(".grt-menu"),
    topMenuHeight = topMenu.outerHeight()+15,
    // All list items
    menuItems = topMenu.find("a"),
    // Anchors corresponding to menu items
    scrollItems = menuItems.map(function(){
      var item = $($(this).attr("href"));
      if (item.length) { return item; }
});



$(window).scroll(function(e){

  // Add shadow on scroll after 60px
   if ($(this).scrollTop() >60){
       $('header').addClass('scrolled');
   } else {
       $('header').removeClass('scrolled');
   }

   var fromTop = $(this).scrollTop()+topMenuHeight;

   // Get id of current scroll item
   var cur = scrollItems.map(function(){
     if ($(this).offset().top < fromTop)
       return this;
   });
   // Get the id of the current element
   cur = cur[cur.length-1];
   var id = cur && cur.length ? cur[0].id : "";
   // Set/remove active class
   menuItems
     .parent().removeClass("active")
     .end().filter("[href='#"+id+"']").parent().addClass("active");
});

// Prevent a href clicks on dropdown category
$('li.grt-dropdown > a').on('click', function(e){
	e.preventDefault();
});