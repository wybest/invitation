function include(url) {
    document.write('<script type="text/javascript" src="' + url + '"></script>');
}
var MSIE = false;
var content;

function addAllListeners() {
	/*
    $('.piclist li>a').prepend('<span class="sitem_over"><strong></strong></span>')
    .hover(
        function(){
            if (!MSIE){
                $(this).children('.sitem_over').css({display:'block',opacity:'0'}).stop().animate({'opacity':1});  
                $(this).find('strong').css({'opacity':0}).stop().animate({'opacity':1},350,'easeInOutExpo');
            } else { 
                $(this).children('.sitem_over').stop().show();
                $(this).find('strong').stop().show();
            }
        },
        function(){
            if (!MSIE){
                $(this).children('.sitem_over').stop().animate({'opacity':0},1000,'easeOutQuad',function(){$(this).children('.sitem_over').css({display:'none'})});  
                $(this).find('strong').stop().animate({'opacity':0},1000,'easeOutQuad');  
            } else {
                $(this).children('.sitem_over').stop().hide();
                $(this).find('strong').stop().hide();
            }            
        }
    );  
    */
    var defColor = $('header>div>ul>li>a>span').css('color');
    $('header>div>ul>li>a').hover(
        function(){
        	$(this).children('img').stop().animate({top:0},400,'easeOutExpo');
            if (!MSIE){
                $(this).children('span').stop().animate({'color':'#86c456'},400,'easeOutExpo');
            } else {
                $(this).children('span').css({'color':'#86c456'});
            }
        },
        function(){
            $(this).children('img').stop().animate({top:-18},400,'easeOutExpo');  
            if (!MSIE){
                $(this).children('span').stop().animate({'color':defColor},400,'easeOutExpo');
            } else {
                $(this).children('span').css({'color':defColor});
            }
        }
    ); 
    $('.list1 a').hover(
        function(){
        	$(this).children('img').stop().animate({'marginTop':'-5px'},400,'easeOutExpo');  
        },
        function(){
            $(this).children('img').stop().animate({'marginTop':'0'},400,'easeOutExpo');  
        }
    );  
    $('.prev,.next').hover(
        function(){
            if (!MSIE){ 
                $(this).children('span').eq(1).css({opacity:'0',display:'block'}).stop().animate({opacity:'1'});  
            } else {
                $(this).children('span').eq(1).stop().show();
            }  
        },
        function(){
            if (!MSIE){
                $(this).children('span').eq(1).stop().animate({opacity:'0'},function(){$(this).css({display:'none'});});  
            }else {
                 $(this).children('span').eq(1).stop().hide();
            }
        }
    );  
}

$(document).ready(function() {
    /*SUPERFISH MENU*/   
    $('.menu #menu').superfish({
	   delay: 800,
	   animation: {
	       height: 'show'
	   },
       speed: 'slow',
       autoArrows: false,
       dropShadows: false
    });
});

function ON_LOAD(){
    MSIE = ($.browser.msie) && ($.browser.version <= 8);
    $('.spinner').fadeOut(); 
    /*
    $('.gallery a').fancybox({
        'centerOnScroll': true,
        'overlayColor': '#000'
    });    
    */
    if ($(".pic_slider").length) {
        $('.pic_slider').cycle({
            fx: 'scrollHorz',
            speed: 600,
    		timeout: 0,
            next: '.next',
    		prev: '.prev',                
    		easing: 'easeInOutExpo',
    		cleartypeNoBg: true ,
            rev:0,
            startingSlide: 0,
            wrap: true
  		})
    };
    $('#menu>li>a').sprites({
		method:'gStretch',
        hover: 'navs'
	});
    $('.readMore').sprites({
		method:'gStretch',
        hover: true
	});
    //content switch
    content = $('#content');
    content.tabs({
        show:0,
        preFu:function(_){
    	   _.li.css({'display':'none'})			
        },
        actFu:function(_){            
            if(_.curr){
                _.curr
                    .css({'top':'-664px'}).stop(true).show().animate({'top':'0px'},{duration:600,easing:'easeInOutExpo'});
            }   
    		if(_.prev){
  		        _.prev
                    .show().stop(true).animate({'top':'664px'},{duration:600,easing:'easeInOutExpo',complete:function(){
                            if (_.prev){
                                _.prev.css({'display':'none'});
                            }
                        }
		              });
            }            
  		}
    });
    var defColor = $('#menu>li>a').eq(0).css('color'); 
    var nav = $('.menu');
    nav.navs({
		useHash:true,
        defHash: '#!/page_home',
        hover:'sprites'
    })
    .navs(function(n){
   	    $('#content').tabs(n);
   	});
    setTimeout(function(){  $('body').css({'overflow':'visible'}); },300);    
    addAllListeners();    
    $(window).trigger('resize');
}

$(window).resize(function(){
    if (content) {
        content.stop().animate({'top': ((windowH() - content.height())*.5+40)},700,'easeOutExpo');
    }
});

function listen(evnt, elem, func) {
    if (elem.addEventListener)  // W3C DOM
        elem.addEventListener(evnt,func,false);
    else if (elem.attachEvent) { // IE DOM
        var r = elem.attachEvent("on"+evnt, func);
    return r;
    }
}
listen("load", window, ON_LOAD);