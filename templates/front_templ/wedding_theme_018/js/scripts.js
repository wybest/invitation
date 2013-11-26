//----Include-Function----
function include(url){ 
  document.write('<script src="'+ url + '" type="text/javascript"></script>'); 
}
//--------global-------------
var isSplash = true;
var isIcon = true;
var isOver = false;
var MSIE = ($.browser.msie) && ($.browser.version <= 8)
//------DocReady-------------
$(document).ready(function(){ 
    if(location.hash.length == 0){
        location.hash="!/"+$('#content > ul > li:first-child').attr('id');
    }

     $('ul#menu').superfish({
          delay:       800,
          animation:   {height:'show'},
          speed:       600,
          autoArrows:  false,
         dropShadows: false,
         	onInit: function(){
  				$("#menu > li > a").each(function(index){
  					var conText = $(this).find('.mText').text();
 					$(this).append("<div class='_area'></div><div class='_overPl'></div><div class='mTextOver'>"+conText+"</div>")	
  				})
  	 		}
        });
});
  
 //------WinLoad-------------  
$(window).load(function(){  
     
$(".gallButton > a").hoverSprite({onLoadWebSite: true});

$('.more').sprites({method:'gStretch',hover:true});


$('#bgStretch').bgStretch({
    align:'leftTop',
    navs:$('.navGall').navs()
    }).sImg({
            sleep: 1000,
            spinner:$('<div class="spinner_bg"></div>').css({opacity:1}).stop().hide(1000)
        })    
       
var menuItems = $('#menu >li'); 
var currentIm = 0;
var lastIm = 0;

navInit();
function navInit(){

if(!MSIE){
$('.navGall > ul >li > a .pointNav').fadeTo(0, 0, function(){
    $('.navGall > ul > li').eq(0).find('.pointNav').stop().fadeTo(0, 1);
} );
}else{
    $('.navGall > ul >li > a .pointNav').css({'display':'none'});
    $('.navGall > ul > li').eq(0).find('.pointNav').css({'display':'inline-block'});
}     
    
$('.navGall > ul >li > a').hover(
    function(){
        if ($(this).parent().index() != currentIm) {
            if(!MSIE){
             $(this).find('.pointNav').stop().fadeTo(500, 1);
             }else{
                 $(this).find('.pointNav').css({'display':'inline-block'});
                
             }
        }
    }, function(){
        if ($(this).parent().index() != currentIm) {
             if(!MSIE){
                $(this).find('.pointNav').stop().fadeTo(500, 0);
            }else{
                $(this).find('.pointNav').css({'display':'none'});
                
            }
        }
    }
)


    $('.navGall > ul > li a').bind('click',function(e){
        lastIm = currentIm;
        currentIm = $(this).parent().index(); 
        if(!MSIE){
            $('.navGall > ul > li').eq(lastIm).find('.pointNav').stop().fadeTo(500, 0);
            $('.navGall > ul > li').eq(currentIm).find('.pointNav').stop().fadeTo(500, 1);
        }else{
            $('.navGall > ul > li').eq(lastIm).find('.pointNav').css({'display':'none'});
            $('.navGall > ul > li').eq(currentIm).find('.pointNav').css({'display':'inline-block'});
            
        }
    });
}

///////////////////////////////////////////////
    var navItems = $('.menu > ul >li');

    $('.menu > ul >li').eq(0).css({'display':'none'});
	var content=$('#content'),
		nav=$('.menu');

    	$('#content').tabs({
		preFu:function(_){
			_.li.css({left:"-1700px",'display':'none'});
		}
		,actFu:function(_){			
			if(_.curr){
				_.curr.css({'display':'block',left:"-1700px"}).stop().delay(100).animate({left:"0px"}, 800,'easeOutCirc');
                if ((_.n == 0) && ((_.pren>0) || (_.pren==undefined))){splashMode();}
                if (((_.pren == 0) || (_.pren == undefined)) && (_.n>0) ){contentMode(); }
            }
			if(_.prev){
			     _.prev.stop().animate({left:'1700px'},450,'easeInCubic', function(){_.prev.css({'display':'none'});});
             }
		}
	})
    

    function splashMode(){
        isSplash = true;
       
    }
    
    function contentMode(){  
        isSplash = false;

    }		
    
	nav.navs({
			useHash:true,
             hoverIn:function(li){
                $(".mText", li).stop(true).animate({top:"95px"}, 600, 'easeOutCubic');
                $(".mTextOver", li).stop(true).animate({top:"0px"}, 600, 'easeOutCubic');
                $("._overPl", li).stop(true).animate({top:"0px"}, 600, 'easeOutCubic');
              
                   // if(($.browser.msie) && ($.browser.version <= 8)){}else{}
             },
                hoverOut:function(li){
                    if ((!li.hasClass('with_ul')) || (!li.hasClass('sfHover'))) {
                        $(".mText", li).stop(true).animate({top:"0px"}, 600, 'easeOutBack');
                        $(".mTextOver", li).stop(true).animate({top:"-100px"}, 600, 'easeOutCubic');
                        $("._overPl", li).stop(true).animate({top:"80px"}, 600, 'easeOutCubic');
                    } 
                } 
		})

		.navs(function(n){			
			$('#content').tabs(n);
		})

//////////////////////////////////////////
   	var h_cont=800;
	function centrRepos() {
		var h=$(window).height();
		if (h>(h_cont+40)) {
			m_top=~~(h-h_cont)/2;
			h_new=h;
		} else {
			m_top=20;
			h_new=h_cont+40;
		}
	//	$('.center').stop().animate({paddingTop:m_top},800,'easeOutExpo');
        
     
   
	}
	centrRepos();
    ///////////Window resize///////
    
    function windowW() {
 return (($(window).width()>=parseInt($('body').css('minWidth')))?$(window).width():parseInt($('body').css('minWidth')));
}
    
    
	$(window).resize(function(){
        centrRepos();
         
        }
    );

    } //window function
) //window load