$(window).load(function(){
	var sliders = $("#_slider>div"),
		slidNumberNew=0,
		slidNumberOld=0,
		slidAll= $("#_slider>div").length,
		autoPlayState = true,
		anomationStop=false,
		MSIE = ($.browser.msie) && ($.browser.version <= 8);
		
	$(window).bind("hashchange", changeSiteHash);
	changeSiteHash()	
	init()
	function init(){

		sliders.css({"position":"absolute"});
		if(!MSIE){
			sliders.not(sliders.eq(slidNumberNew)).find('.text1').animate({"top":'200px'}, 0)
		}else{
			sliders.not(sliders.eq(slidNumberNew)).css({'display':'none'});
		}
        
		anomationStop=true;
		autoPlay();
	}
	function changeSiteHash(){
		if(window.location.hash !="#!/home") {
			autoPlayState=false;
		}
	}
	function autoPlay(){
		setTimeout(temeOut, 3000);
		function temeOut(){
			if(autoPlayState){
				slidNumberOld = slidNumberNew
				slidNumberNew++;
				if(slidNumberNew>slidAll-1){
					slidNumberNew=0;
					autoPlayState = false;
				}
				changeImage();
			}
		}
	}
    ////////////////////////////
   $('.navGall > ul > li > a').click(
    function(){
        if(anomationStop){
            var curIndex; 
            curIndex = $(this) .parent().index();
            slidNumberOld = slidNumberNew;
            slidNumberNew = curIndex;
            changeImage();
        }
    }
)  
    ////////////////////////////
    
	function changeImage(){
		anomationStop=false;
		if(!MSIE){
			sliders.eq(slidNumberOld).find('.text1').css({"background":"none"}).animate({"top":'-200px'}, 600 , 'easeOutCubic')
		
		}else{
			sliders.eq(slidNumberOld).css({'display':'none'});
		}

		if(!MSIE){
			sliders.eq(slidNumberNew).find('.text1').css({"background":"none",'top':'200px'}).animate({"top":'0px'}, 600, 'easeOutCubic', function(){anomationStop=true;})
	   }else{
		  sliders.eq(slidNumberNew).css({'display':'block'});
		//	sliders.eq(slidNumberNew).fadeTo(500,1, function(){anomationStop=true;});
            setTimeout(function(){anomationStop=true;}, 100)
		}
 
	
	
		autoPlay();
	}

	
})