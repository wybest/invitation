//----Include-Function----
function include(url){ 
  document.write('<script src="'+ url + '" type="text/javascript" ></script>'); 
}
//--------global-------------
var isSplash = true;
 var MSIE = ($.browser.msie) && ($.browser.version <= 8);
//------DocReady-------------
$(document).ready(function(){ 
    if(location.hash.length == 0){
        location.hash="!/"+$('#content > ul > li:first-child').attr('id');
    }
          
         $('ul#menu2').superfish({
          delay:       800,
          animation:   {height:'show'},
          speed:       200,
          autoArrows:  false,
         dropShadows: false,
         	onInit: function(){
  				$("#menu2 > li > a").each(function(index){
  				//	var conText = $(this).find('.mText').text();
 					//$(this).find('.extraHolder').append("<span class='mTextOver'>"+conText+"</span>")	
  				})
  	 		}
        });
});
  
 //------WinLoad-------------  
$(window).load(function(){  
 ////////////////////////////////////////////////////////////////
 $( "#datepicker1").datepicker({
			showOn: "button",
			buttonImage: "images/extra3.png",
			buttonImageOnly: true
		});
        
  $( "#datepicker2").datepicker({
			showOn: "button",
			buttonImage: "images/extra3.png",
			buttonImageOnly: true
		});       

//$(".nextBtn").hoverSprite({onLoadWebSite: true});
//$(".prevBtn").hoverSprite({onLoadWebSite: true});

 $("#jcarousel_1").jCarouselLite({
        btnNext: ".nextBtn",
        btnPrev: ".prevBtn",
        speed: 800,
        visible: 4
    });

//$('.pic').fancybox({'titlePosition': 'inside', 'overlayColor':'#000'}); 
$('.zoomSp').fadeTo(500, 0)
    $('.zoomSp').hover(function(){ $(this).stop().fadeTo(500, 0.6)	}, function(){$(this).stop().fadeTo(500, 0)})


   
$('#form1').jqTransform({imgPath:'images/'});

 $('.scroll1').cScroll({
		duration:700,
		step:100,
		trackCl:'track',
		shuttleCl:'shuttle',
         hoverIn: function(_shuttle){
              _shuttle.css({'backgroundPosition':'100% 1px'});    
        },
        hoverOut: function (_shuttle){
             _shuttle.css({'backgroundPosition':'0% 1px'}); 
        }
	})


var curAccord = 0;
var oldAccord = 0;

$('._list2').find('._title').animate({height:"18px"},1);
$('._list2').find('p').slideUp(1);
$('._list2').find('.btn').addClass('btnBg1');

setTimeout(function(){
    $('._list2 >li').eq(0).find('.btn').removeClass('btnBg1');
    $('._list2 >li').eq(0).find('.btn').addClass('btnBg2');
    $('._list2 >li').eq(0).find('._title').animate({height:"0px"},300);
    $('._list2 >li').eq(0).find('p').slideDown();
},200)

$('._list2').find('.btn').click(
    function(){
        if(curAccord !== $(this).parent().index()){
        oldAccord = curAccord;
        curAccord = $(this).parent().index(); 
        
        $('._list2 >li').eq(curAccord).find('.btn').removeClass('btnBg1');
        $('._list2 >li').eq(curAccord).find('.btn').addClass('btnBg2');
        $('._list2 >li').eq(curAccord).find('._title').animate({height:"0px"},300);
        $('._list2 >li').eq(curAccord).find('p').slideDown();
        
        $('._list2 >li').eq(oldAccord).find('.btn').removeClass('btnBg2');
        $('._list2 >li').eq(oldAccord).find('.btn').addClass('btnBg1');
        $('._list2 >li').eq(oldAccord).find('._title').animate({height:"18px"},300);
        $('._list2 >li').eq(oldAccord).find('p').slideUp();

        }

    }
)



navInit();
function navInit(){ 

}

///////////////////////////////////////////////
    var navItems = $('.menu > ul >li');
    var _delay;

$('.menu > ul >li').eq(0).css({'display':'none'});  
$('.menu2 > ul >li').eq(0).css({'display':'none'});  
	var content=$('#content'),
	
    	nav=$('.menu'),
		nav2=$('.menu2');

    	$('#content').tabs({
		preFu:function(_){
			_.li.css({left:"1700px"})	
  		
		}
		,actFu:function(_){			
			if(_.curr){
				_.curr.css({left:"1700px"}).stop().delay(400).animate({left:"0px"},800,'easeInOutCubic');

                if ((_.n == 0) && ((_.pren>0) || (_.pren==undefined))){splashMode();}
                if (((_.pren == 0) || (_.pren == undefined)) && (_.n>0) ){contentMode(); }
            }
            
			if(_.prev){
			     _.prev.stop().animate({left:"-1700px"},800,'easeInOutCubic');
             }
   
		}
	})

    function splashMode(){
        isSplash = true;
        navItems.each( function(index){
            _delay = index*50;
                 navItems.eq(index).css({left:"1600px"}).stop().delay(_delay).animate({left:"0px"}, 800, 'easeInOutCubic');
            } );
            
             $(".menuHolder2").stop().animate({left:"1700px"},800,'easeInOutCubic');
             
             $('.splashHolder').css({'z-index':2})
             $('#content > ul').css({'z-index':1})
             $('.menuHolder2').css({'z-index':1})
    }   
    
    function contentMode(){  
        isSplash = false;
         navItems.each( function(index){
            _delay = index*50;
      
                navItems.eq(index).stop().delay(_delay).animate({left:"-1600px"}, 800, 'easeInOutCubic');
            } );
          
           $(".menuHolder2").css({left:"1700px"}).stop().animate({left:"0px"},700,'easeInOutCubic');
           
            $('.splashHolder').css({'z-index':1})
             $('#content > ul').css({'z-index':2})
              $('.menuHolder2').css({'z-index':3})
    }		
    
    
    
    
        nav2.navs({
			useHash:true,
             hoverIn:function(li){
             //if (!li.hasClass('active')){    
                    $(".menuText", li).stop().animate({"padding-top":"80px"}, 400, 'easeOutCubic');
               //     }
             },
                hoverOut:function(li){
                    if ((!li.hasClass('with_ul')) || (!li.hasClass('sfHover'))) {
                        $(".menuText", li).stop().animate({"padding-top":"62px"}, 400, 'easeOutCubic');
                    } 
                } 
		}).navs(function(n){			
			$('#content').tabs(n);
		})
        
    
    
	nav.navs({
			useHash:true,
             hoverIn:function(li){
                     $(".extraHolder", li).stop().animate({top:"356px", height:"230px"}, 300, 'easeOutCubic');
                    
             },
                hoverOut:function(li){
                    if ((!li.hasClass('with_ul')) || (!li.hasClass('sfHover'))) {
                        $(".extraHolder", li).stop().animate({top:"386px", height:"200px"}, 300, 'easeOutCubic');
                       // $(".mText", li).stop().animate({"font-size":"17px"}, 300, 'easeOutCubic');
                    } 
                } 
		}).navs(function(n){			
			$('#content').tabs(n);
		})
        
        
        
 
        
  ///////////Resize////////////////////  
    

//////////////////////////////////////////
   	var h_cont=720;
	function centrRepos() {
		var h=$(window).height();
		if (h>(h_cont+40)) {
			m_top=~~(h-h_cont)/2;
			h_new=h;
		} else {
			m_top=20;
			h_new=h_cont+40;
		}
		$('.center').stop().animate({paddingTop:m_top},800,'easeOutExpo');	
	}
	centrRepos();
    ///////////Window resize///////
	$(window).resize(function(){
                centrRepos()
                
            }
    );

    } //window function
) //window load