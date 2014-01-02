/*
include('js/jquery.easing.1.3.js');
include('js/jquery-ui-1.8.11.custom.min.js');
include('js/jquery.transform-0.9.3.min.js');
include('js/jquery.animate-colors-min.js');
include('js/jquery.backgroundpos.min.js');
include('js/mathUtils.js');
include('js/superfish.js');
include('js/switcher.js');
include('js/jquery.mousewheel.js');
include('js/sprites.js');
include('js/hoverSprite.js');
include('js/spin.js');
include('js/forms.js');
include('js/googleMap.js');
include('js/tms-0.4.1.js');
include('js/uScroll.js');
*/
function include(url){document.write('<script src="'+ url+'" type="text/javascript"></script>');}
var isSplash=true;var isAnim=true;var isFirst=true;var spinner;var mapSpinner;var MSIE=($.browser.msie)&&($.browser.version<=8)
$(document).ready(function(){if(location.hash.length==0){location.hash="!/"+$('#content > ul > li:first-child').attr('id');}
loaderInit();function loaderInit(){var opts={lines:8,length:0,width:16,radius:17,rotate:0,color:'#e7346f',speed:1.3,trail:60,shadow:false,hwaccel:false,className:'spinner',zIndex:2e9,top:'auto',left:'auto'};var target=$(".page_spinner > span");spinner=new Spinner(opts).spin();target.append(spinner.el)
var opts2={lines:8,length:0,width:8,radius:12,rotate:10,color:'#000',speed:1.3,trail:60,shadow:false,hwaccel:false,className:'spinner',zIndex:2e9,top:'auto',left:'auto'};var target2=$(".google_map > span");mapSpinner=new Spinner(opts2).spin();target2.append(mapSpinner.el)}
$('ul#menu').superfish({delay:500,animation:{opacity:'show'},speed:600,autoArrows:false,dropShadows:false,onInit:function(){$("#menu > li > a").each(function(index){var conText=$(this).find('.mText').text();$(this).append("<div class='_area'></div><div class='mText_over'>"+conText+"</div>");})}});});$(window).load(function(){$(".followHolder > ul > li > a").hoverSprite({onLoadWebSite:true});$("#buttonPrev").hoverSprite({onLoadWebSite:true});$("#buttonNext").hoverSprite({onLoadWebSite:true});$('.more').sprites({method:'gStretch',hover:true})
$('.scroll1').uScroll({mousewheel:true,step:50,axis:'y'})
$('.scroll2').uScroll({mousewheel:true,step:50,axis:'y'})
$('.scroll3').uScroll({mousewheel:true,step:50,axis:'y'})
$('.scroll4').uScroll({mousewheel:true,step:50,axis:'y'})
$('.scroll5').uScroll({mousewheel:true,step:50,axis:'y'})
$('.slider')._TMS({show:0,pauseOnHover:false,duration:1100,preset:'diagonalFade',easing:'easeOutExpo',prevBu:'#buttonPrev',nextBu:'#buttonNext',pagNums:false,slideshow:9999999,numStatus:false,banners:false,overflow:'hidden',waitBannerAnimation:false,progressBar:false});var menuItems=$('#menu >li');var currentIm=0;var lastIm=0;Init();function Init(){}
var navItems=$('.menu > ul >li');$('.menu > ul >li').eq(0).css({'display':'none'});var content=$('#content'),nav=$('.menu');$('#content').tabs({preFu:function(_){_.li.css({top:"-2400px",'visibility':'hidden'});},actFu:function(_){if(_.curr){_.curr.css({'visibility':'visible',top:'-2400px'}).stop().delay(100).animate({top:"0px"},700,'easeOutCubic');cont_resize(_.n);if((_.n==0)&&((_.pren>0)||(_.pren==undefined))){splashMode();}
if(((_.pren==0)||(_.pren==undefined))&&(_.n>0)){contentMode();}}
if(_.prev){_.prev.stop().animate({top:'2400px'},700,'easeInOutCubic',function(){_.prev.css({'visibility':'hidden'});});}}})
function splashMode(){isSplash=true;$("#menu > li").each(function(index){_delay=(index*100);$(this).stop().delay(_delay).animate({top:"-100px"},400,'easeOutCubic');});$('#logo').stop().animate({top:"-700px"},800,'easeInOutCubic')
$('.menuB').stop().delay(200).animate({top:"0px"},600,'easeOutCubic')}
function contentMode(){isSplash=false;$("#menu > li").each(function(index){_delay=(index*100)+200;$(this).stop().delay(_delay).animate({top:"0px"},400,'easeOutCubic');});$('#logo').stop().animate({top:"0px"},800,'easeInOutCubic')
$('.menuB').stop().animate({top:"-100px"},450,'easeInCubic')}
function cont_resize(_page){}
nav.navs({useHash:true,hoverIn:function(li){$(".mText",li).stop(true).animate({top:'100px'},400,'easeOutCubic');$(".mText_over",li).stop(true).delay(50).animate({top:'25px'},400,'easeOutCubic');$("._overPl",li).stop(true).animate({top:'0px'},400,'easeOutCubic');},hoverOut:function(li){if((!li.hasClass('with_ul'))||(!li.hasClass('sfHover'))){$(".mText",li).stop(true).animate({top:'0px'},400,'easeInOutCubic');$(".mText_over",li).stop(true).animate({top:'-100px'},400,'easeInOutCubic');$("._overPl",li).stop(true).animate({top:'-100px'},400,'easeOutCubic');}}}).navs(function(n){$('#content').tabs(n);})
var h_cont;function centrRepos(){h_cont=$('.center').height();$('body').animate({'min-height':h_cont+100+'px'},400)
var h=$(window).height();if(h>(h_cont+40)){m_top=~~(h-h_cont)/2;h_new=h;}else{m_top=20;h_new=h_cont+40;}
$('.center').stop().animate({'margin-top':m_top},600,'easeOutCubic');}
centrRepos();function windowW(){return(($(window).width()>=parseInt($('body').css('minWidth')))?$(window).width():parseInt($('body').css('minWidth')));}
$(window).resize(function(){centrRepos();});})