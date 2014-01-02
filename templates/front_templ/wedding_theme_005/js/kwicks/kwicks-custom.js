jQuery(function () {

	//Hides the Slide Images and Panel Texts for Preloading
	jQuery('.slideimage').hide();
	
	jQuery('.slide-minicaption').hide();
	jQuery('.slide-minicaptiontitle').hide();
	jQuery('.slidecaption').hide();
	jQuery('.slidecaptiontitle').hide();
	
	var slidenos = jQuery('.slideimage').length;
	
});

var i;

jQuery(window).bind("load", function() {

	//Preload the kwicks
	var slidenos = jQuery('.slideimage').length;

	jQuery('.slideimage:hidden').fadeIn(800);

	jQuery(".kwicks.horizontal li").css('background', '#000');
	
	jQuery('.slide-minicaption').show();
	jQuery('.slide-minicaptiontitle').show();
	jQuery('.slidecaption').show();
	jQuery('.slidecaptiontitle').show();

	jQuery('.kwicks').kwicks({
		max : 430,
		spacing : 0
	});
		

	jQuery(function(){

		//Hide all Captions and show Mini Captions
		jQuery(".slidecaption").fadeTo(1, 0);
		jQuery(".slide-minicaption").fadeTo(1, 0.8);

		//On hover of a Kwick Panel
		jQuery(".kwicks").each(function () {
			jQuery(".kwicks").hover(function() {
			jQuery('.slidecaption').stop().animate({opacity: 0.8, left: '140'}, 800 );
			jQuery(".slide-minicaption").stop().animate({opacity: 0, left: '480'}, 250 );
			},function(){
			jQuery('.slidecaption').stop().animate({opacity: 0, left: '480'}, 250 );	
			jQuery(".slide-minicaption").stop().animate({opacity: 0.8, left: '-20'},1200 );
			});
		});
	});

});