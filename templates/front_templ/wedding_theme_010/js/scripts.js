    jQuery(document).ready(function() { 
//opasity IE ----------------------------------------------------------------------------------------------------          
    $('.splashPad').css({opacity:0.64});
   }); 
$(window).load(function(){  
        if($.browser.msie && $.browser.version<9){
            $('#menu > li > a').css({'padding-top':'8px'});
            ie = true;
        }
//ieCheck ----------------------------------------------------------------------------------------------------     
    var ie = false;
    var aniButtonDuration = 350;
    
    if($.browser.msie && $.browser.version<9)
    {
        aniButtonDuration = 0;
        ie = true;
    }  
//bgStretch ----------------------------------------------------------------------------------------------------   
	$('#bgStretch')
		.bgStretch({
			align:'leftTop',
			navigs:$('.bgNav').navigs()
		}).sImg({
			spinner:$('.gall_spinner').hide()
		})
        
    /*$('.privacy span a').bind('click',function(){
         $('html,body').stop().animate({scrollTop:'0'}, 500, 'easeInOutCubic');
    });*/
     
     $('.menu > a').find('b').stop().animate({opacity:0}, 0,'easeOutCubic')
     
     $('.menu > a').hover(function()
     {
         $(this).find('b').stop().animate({opacity:1}, aniButtonDuration,'easeOutCubic')					   
     }, function(){
         $(this).find('b').stop().animate({opacity:0}, aniButtonDuration,'easeOutCubic')						   
     })   
//gallery pic hover=========================================== 
    $('.col4 .img_act1').css({opacity:0})
	
    	$('.col4 a').hover(function(){
    		$(this).find('.img_act1').stop().animate({opacity:1})						 
    	}, function(){
    		$(this).find('.img_act1').stop().animate({opacity:0})						 
    	})  
   $('.col4 .img_act2').css({opacity:0})
	
    	$('.col4 a').hover(function(){
    		$(this).find('.img_act2').stop().animate({opacity:1})						 
    	}, function(){
    		$(this).find('.img_act2').stop().animate({opacity:0})						 
    	})     
//Hover a ---------------------------------------------------------------------------------------------------- 
    $('.col1 p a').hover(function(){
        $(this).stop().animate({color:'#37a101'}, 400, "easeOutSine")						 
            }, function(){
        $(this).stop().animate({color:'#606060'}, 300, "easeOutSine")						 
    })
    $('.col2 p a').hover(function(){
        $(this).stop().animate({color:'#37a101'}, 400, "easeOutSine")						 
            }, function(){
        $(this).stop().animate({color:'#606060'}, 300, "easeOutSine")						 
    })
    $('.col5 a').hover(function(){
        $(this).stop().animate({color:'#37a101'}, 400, "easeOutSine")						 
            }, function(){
        $(this).stop().animate({color:'#606060'}, 300, "easeOutSine")						 
    }) 
    $('.read-more-butt').hover(function(){
        $(this).stop().animate({color:'#37a101'}, 400, "easeOutSine")						 
            }, function(){
        $(this).stop().animate({color:'#313131'}, 300, "easeOutSine")						 
    })
    $('.menu-pic1 a, .menu-pic2 a, .menu-pic3 a, .menu-pic4 a').hover(function(){
        $(this).stop().animate({color:'#37a101'}, 400, "easeOutSine")
        $(this).find('span').stop().animate({color:'#6b6b6b'}, 400, "easeOutSine")					 
            }, function(){
        $(this).stop().animate({color:'#6b6b6b'}, 300, "easeOutSine")
        $(this).find('span').stop().animate({color:'#37a101'}, 400, "easeOutSine")						 
    })
    $('.formBtn a').hover(function(){
        $(this).stop().animate({color:'#37a101'}, 400, "easeOutSine")						 
            }, function(){
        $(this).stop().animate({color:'#313131'}, 300, "easeOutSine")						 
    })
    $('.privacy a').hover(function(){
        $(this).stop().animate({color:'#37a101'}, 400, "easeOutSine")						 
            }, function(){
        $(this).stop().animate({color:'#707070'}, 300, "easeOutSine")						 
    }) 
//Button read more-----------------------------------------------------------------------------------
    $('.ex-1').sprites({method:'gStretch',hover:'navs'})
//Content switch----------------------------------------------------------------------------------------------
   var content=$('#content'),
	    nav=$('.menu');
        var firstSpl=true;
    content.tabs({
		actFu:function(_)
        {
			if(_.curr){
			 if(_.n > 0){
                    _.curr.css({left:'1500px'}).stop(true).delay(400).animate({left:"0px"},800,'easeOutExpo');
                    }
            }
			if(_.prev){
			 if(_.n > 0 && firstSpl == false){
				_.prev
					.stop(true).animate({left:"-1750px"},550,'easeInCubic', function(){})
                    firstSpl = true;
                    }
            }
            if(_.n > 0 && firstSpl == true){
		          $('header').stop(true).delay(5).animate({top:'-269px', left:'0px'}, 450, 'easeOutCubic');
                  $('.splashPad').stop(true).animate({height:'143px', top:'24px'}, 450, 'easeOutCubic');
                  $('.zigzag').stop(true).animate({height:'127px', top:'30px'}, 450, 'easeOutCubic');
                  $('.bgSelector').stop(true).hide();
                  firstSpl = false;
                  content.stop().css({display:'block'});
		    }
            if(_.n == 0 && firstSpl == false){
                  $('.gallery').stop(true).animate({left:'1500px'}, 375, 'easeOutSine');
		          $('header').stop(true).delay(255).animate({top:'20px', left:'0px'}, 350, 'easeOutSine').animate({top:'0px', left:'0px'}, 450, 'easeOutSine');
                  $('.splashPad').stop(true).delay(250).animate({height:'161px', top:'290px'}, 500, 'easeOutBack');
                  $('.zigzag').stop(true).delay(250).animate({top:'294px'}, 500, 'easeOutBack');
                  $('.bgSelector').stop(true).show();
                  $('.bgSelector').css({top:'314px', opacity:0}).stop(true).delay(500).animate({top:'420px', opacity:1}, 350, 'easeOutSine').animate({top:'414px', opacity:1}, 300, 'easeOutSine');
                  _.prev.stop().animate({left:"1500px"},250,'easeInSine');
                  content.stop().css({display:'block'});
                  firstSpl = true;
		    }  
		},
		preFu:function(_)
        {
            $('.menu').css({right:'-1500px'}).delay(950).animate({right:'15px'}, 500, 'easeOutExpo').animate({right:'0px'}, 500, 'easeOutSine');
            $('.splashPad').css({height:'0px', top:'367px'}).stop(true).delay(700).animate({height:'161px', top:'290px'}, 500, 'easeOutBack');
            $('.zigzag').css({height:0, top:'280px'}).stop(true).delay(900).animate({height:120, top:'300px'}, 425, 'easeOutSine').animate({height:127, top:'294px'}, 425, 'easeOutSine');
            $('#logo').css({left:'-1500px'}).delay(950).animate({left:'15px'}, 500, 'easeOutExpo').animate({left:'0px'}, 400, 'easeOutSine');
            $('.bgSelector').css({top:'314px', opacity:0}).stop(true).delay(1200).animate({top:'420px', opacity:1}, 350, 'easeOutSine').animate({top:'414px', opacity:1}, 300, 'easeOutSine');
            content.css({display:'block'});	
            _.li.css({left:"2000px"})			
		}
	})
//Main menu---------------------------------------------------------------------------------------------------    
   nav.navs({
		useHash:true,
        hover:'sprites',
        defHash:'#!/page_main',
		hoverIn:function(li){
            $(".mText", li).stop().animate({color:"#fff"},750,'easeOutExpo');
		},
		hoverOut:function(li){
            if ((!li.hasClass('with_ul')) || (!li.hasClass('sfHover'))) {
                        $(".mText", li).stop().animate({color:"#302f2f"},500,'easeOutExpo'); 
                    } 
		}				
    })	  
   nav.navs(function(n, _){
		content.tabs(n);
	})	     
})