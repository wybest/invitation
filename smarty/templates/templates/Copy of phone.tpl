
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html namelns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=2.0, user-scalable=no">
<script type="text/javascript">  
var browser={
versions:function(){
var u = navigator.userAgent, app = navigator.appVersion;
return{
trident: u.indexOf('Trident')>-1, 
presto: u.indexOf('Presto')>-1, 
webKit: u.indexOf('AppleWebKit')>-1,  
gecko: u.indexOf('Gecko')>-1&& u.indexOf('KHTML')==-1, 
mobile:!!u.match(/AppleWebKit.*Mobile.*/)||!!u.match(/AppleWebKit/), 
ios:!!u.match(/\(i[^;]+;( U;)? CPU.+Mac OS X/), 
android: u.indexOf('Android')>-1|| u.indexOf('Linux')>-1, 
iPhone: u.indexOf('iPhone')>-1|| u.indexOf('Mac')>-1,  
iPad: u.indexOf('iPad')>-1, 
webApp: u.indexOf('Safari')==-1  
};}()}
if(!browser.versions.ios&&!browser.versions.mobie&&!browser.versions.android&&!browser.versions.iPhon&&!browser.versions.iPad){
	self.location='error.htm'
}
</script><title>{#$bigtitle#}</title>
<link href="style/{#$mould #}/image_files/custom.css" type="text/css" rel="stylesheet">
<link href="style/{#$mould #}/image_files/style.css" type="text/css" rel="stylesheet">
<link href="style/{#$mould #}/image_files/styles.css" type="text/css" rel="stylesheet">
<link href="style/{#$mould #}/image_files/photoswipe.css" type="text/css" rel="stylesheet">
<link class="fontcss" href="style/桃色经典/image_files/getcss" type="text/css" rel="stylesheet">

<style> 
#mydiv{ 
position:absolute; 
left:40%; 
top:40%; 
border:1px solid #000000; 
width:200px; 
background-color:#FFFFFF; 
color:#00FF00; 
font-size:20px; 
font-style:bold; 
font-family:微软雅黑; 
   } 
</style>

<script src="style/桃色经典/image_files/jquery-latest.js"></script>
<script type="text/javascript" src="style/桃色经典/image_files/getscript"></script>
<script type="text/javascript" src="style/桃色经典/image_files/jquery-1.6.4.min.js"></script>
<script type="text/javascript" src="style/桃色经典/image_files/jquery-ui-1.8.18.full.min.js"></script>
<script type="text/javascript" src="style/桃色经典/image_files/klass.min.js"></script>
<script type="text/javascript" src="style/桃色经典/image_files/code.photoswipe.jquery-3.0.5.min.js"></script>
<script type="text/javascript" src="http://api.map.baidu.com/api?v=1.5&ak=16268926682265790cca9062b1be7a79"></script>
<script type="text/javascript">
		(function(window, $, PhotoSwipe){
			$(document).ready(function(){
				var options = {};
				$("#Gallery a").photoSwipe(options);
			});
		}(window, window.jQuery, window.Code.PhotoSwipe));
	</script>
<script type="text/javascript">
var bReloadWebFontOnce = 1;
$(document).ready(function() {
	$("#accordion").accordion({ autoHeight: false },{ collapsible: true,active: false } );
	//$("#accordion").accordion("activate",0);
	//$("#accordion").accordion("activate","#accordion10");
	  
	$("#accordion").bind('accordionchange', function(event, ui) {
         //   ui.newHeader // jQuery object, activated header
         //   ui.oldHeader // jQuery object, previous header
         //   ui.newContent // jQuery object, activated content
         //   ui.oldContent // jQuery object, previous content
	    //console.log(ui);		
       // console.log($("#accordion").accordion( "option", "active" ));    
			if ($(ui.newHeader).offset() != null){
            	$('html, body').animate({scrollTop: $(ui.newHeader).offset().top} );
			}
		
	});

			$("#accordion").bind('accordionchangestart', function(event, ui) {
				if (ui.newContent.attr('id') == 'invite_detail_content7166' && bReloadWebFontOnce==1  )
				{
					//alert("reloadwebfont");
					//$("#invite_detail_editor7166").hide();	
					reloadWebFont();
					bReloadWebFontOnce = 0;
					//$("#invite_detail_editor7166").show();	
				}
			});
			

			$("#accordion").bind('accordionchange', function(event, ui) {
			 // ui.newHeader // jQuery object, activated header
			 // ui.oldHeader // jQuery object, previous header
			 // ui.newContent // jQuery object, activated content
			 // ui.oldContent // jQuery object, previous content
			 //  alert($(ui.newContent).attr("id") + " was opened, " + $(ui.oldContent).attr("id") + " was closed");
			 //   console.log(ui.newHeader.attr('id'));
				if (ui.newContent.attr('id') == 'invite_detail_content7169' && !map7169 && $("#invite_detail_mapimgurl7169").val() == '' )
				{
					//alert("initialize7169");
					initialize7169();
				}
				
				
			});
				
			



});

</script>
<style type="text/css">
.content-wrapper {
width: 95%;
margin: 10px auto;
background: url(main-bg.jpg) !important;
border: 1px solid #fff;
box-shadow: 0px 0px 2px #a8a7a8;
-webkit-box-shadow: 0px 0px 2px #a8a7a8;
-moz-box-shadow: 0px 0px 2px #a8a7a8;
padding: 5px;
position: relative;
z-index: 88;
}
.content {
background: #fff;
padding: 20px 20px 40px 20px;
box-shadow: 0px 0px 2px #cfcecf;
-webkit-box-shadow: 0px 0px 2px #cfcecf;
-moz-box-shadow: 0px 0px 2px #cfcecf;
}
element.style {
}
Matched CSS Rules
.inner-header {
background: url(images/inner-header-bg.jpg) repeat-x bottom;
height: 40px;
margin-bottom: 10px;
}
.content .textbox, .content #message, .sidebar-col .textbox, #renshu {
padding: 8px;
border-radius: 4px;
-webkit-border-radius: 4px;
-moz-border-radius: 4px;
background: #f7f7f7;
border: 1px solid #cecece;
box-shadow: inset 1px 1px 2px #e2d8d7;
-webkit-box-shadow: inset 1px 1px 2px #e2d8d7;
-moz-box-shadow: inset 1px 1px 2px #e2d8d7;
}
.content #message {
width: 90%;
height: 100px;
font-family: Arimo, sans-serif;
font-size: 14px;
font-style: italic;
}
p {
display: block;
-webkit-margin-before: 1em;
-webkit-margin-after: 1em;
-webkit-margin-start: 0px;
-webkit-margin-end: 0px;
}
#submit-button {
background: none repeat scroll 0 0 #DF6296;
padding: 2px;
width: 185px;
margin-top: 20px;
-webkit-transition: background-color 0.3s ease-in-out;
-moz-transition: background-color 0.3s ease-in-out;
-o-transition: background-color 0.3s ease-in-out;
transition: background-color 0.3s ease-in-out;
}
#send_message {
background: none repeat scroll 0 0 #DF6296;
border: 1px solid #eda5c3;
margin: 0px;
box-shadow: none;
-webkit-box-shadow: none;
-moz-box-shadow: none;
color: #FFFFFF;
padding: 4px 20px;
font-family: Oswald, sans-serif;
font-size: 20px;
text-shadow: 1px 1px 1px #4d304e;
width: 185px;
-webkit-transition: background-color 0.3s ease-in-out;
-moz-transition: background-color 0.3s ease-in-out;
-o-transition: background-color 0.3s ease-in-out;
transition: background-color 0.3s ease-in-out;
}
.inner-header h1 {
color: #df6296;
font-size: 22px;
text-transform: none;
line-height: 25px;
font-family: "微软雅黑";
}
</style>
<style>
  #Loading{position:absolute;top:0;left:0;width:100%;height:400%;background:#ffffff;margin:0px 0 0 0px; z-index:200}
  /* #Loading2{position:absolute;top:0;left:0;width:100%;height:100%;background:#F00;margin:0px 0 0 0px; z-index:199}*/
  #heart{position:absolute;left:50%;top:13%;margin:-50px 0 0 -30px;}
  #Waiting{position:absolute; width:100px; text-align:center;left:50%;top:13%;margin:10px 0 0 -45px;}
  #mainbox{margin:0;}
</style>



{#if $font_family  !== '' #}  
    <style type="text/css">
	html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn, em, font, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var, b, u, i, center, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td, article, aside, details, figcaption, figure, footer, header, hgroup, mark, menu, meter, nav, output, progress, section, summary, time {
		font-family: "{#$font_family#}",Helvetica,Arial,sans-serif;
	}
	</style>
{#/if#}

</head>

<body class="">

<div id="Loading">
    <div id="heart">
        <img src="img/12.gif" />
    </div>
    <div id="Waiting">
        <span style="text-align:center; color:#F00">
            加载中...
        </span>
    </div>
</div>
<audio preload="preload" id="audio_play" loop="loop"><source src="http://bcs.duapp.com/mp3folder/{#$music#}" type="audio/mpeg"></audio>
<script language="javascript" type="text/javascript">
var music = document.getElementById("audio_play");
music.pause();
var LoadingDIV = document.getElementById("Loading");
window.onload = function() {
    music.play();
	LoadingDIV.style.display = "none";
	 $(document).ready(function(){    
           if(/i(Phone|P(o|a)d)/.test(navigator.userAgent)){
                $(document).one('touchstart', function (e) {
                var music = document.getElementById("audio_play");
                if (music.paused) { 
                music.play(); 
                } 
                });
            }
        });
}
</script>


<div id="outter">
	<div class="outter-main-tr"><div class="outter-main-tl"><div class="outter-main-tm"></div></div></div>
    <div class="outter-main-mr"><div class="outter-main-ml">

        <div class="ui-widget-header ui-corner-all">
            <div id="inner">
                <div class="inner-main-tr"><div class="inner-main-tl"><div class="inner-main-tm">
                    <div id="main-title">
                        <div class="main-title-tr"><div class="main-title-tl"><div class="main-title-tm">
                        </div></div></div>
                        <div class="main-title-mr"><div class="main-title-ml">
                    
                            <div class="main-title-mm">
                                <div id="maintitlehtml"><span style="text-decoration: none; font-style: normal; font-size: 20px; font-weight: normal; ">{#$bigtitle#}</span></div>
                            </div>
                    
                        </div>
                        </div>
                        <div class="main-title-br"><div class="main-title-bl"><div class="main-title-bm">
                        </div></div></div>
                    </div>
                </div></div></div>
                <div class="inner-main-mr">
                	<div id="img_decoration1"></div>
                    <div id="img_decoration2"></div>
                    <div class="inner-main-ml">
                        <div class="inner-main-mm">
<!-- 大圖 -->  
                            <img id="invite_webimg" src="http://bcs.duapp.com/marryimg/{#$bigimage #}" width="100%" alt="Mobile Wedding Invitations">
                       	  <div id="img_videobutton_placeholder" style="position:relative;"> 
                        	<div id="img_videobutton" style=""></div>
                       		</div>
                        </div>
               	  </div>
                </div>
              <div class="inner-main-br">
                <div id="img_decoration3"></div>
                <div class="inner-main-bl"><div class="inner-main-bm">

                    <div id="sub-title">
                        <div class="sub-title-tr"><div class="sub-title-tl"><div class="sub-title-tm">
                        </div></div></div>
                        <div class="sub-title-mr"><div class="sub-title-ml">
                    
                            <div class="sub-title-mm">
			                    <div id="subtitlehtml" style="text-align:center; margin-top:3px; margin-bottom:3px; "><span style="font-weight: normal; font-size: 18px; ">{#$show_time#}</span>
                            </div></div>
                    
                        </div>
                        </div>
                        <div class="sub-title-br"><div class="sub-title-bl"><div class="sub-title-bm">
                        </div></div></div>
                    </div>


                </div></div></div>
            </div>
        
        </div>

    </div></div>
	<div class="outter-main-br"><div class="outter-main-bl"><div class="outter-main-bm"></div></div></div>
</div>




  

<div id="accordion" class="ui-accordion ui-widget ui-helper-reset ui-accordion-icons" role="tablist"> 




<!--<h3 style="display:" id="invite_detail_title7143" >-->
<h3 style="display:" id="invite_detail_title7092" class="ui-accordion-header ui-helper-reset ui-state-default ui-corner-all" role="tab" aria-expanded="true" aria-selected="true" tabindex="0"><span class="ui-icon ui-icon-triangle-1-e"></span>
    
 		<div name="button1" id="button1" class="button">
            <div class="button-tr"><div class="button-tl"><div class="button-tm"></div></div></div>
            <div class="button-mr">
            <div class="button-ml">
			<div class="button-mm">
    			<a href=""><img class="iconimage" alt="css/5/images/1.png" src="style/桃色经典/image_files/1.png" border="0" align="absmiddle">&nbsp;<span id="invite_detail_name7167">{#if $title1#}{#$title1#}{#else#}爱的邀约{#/if#}</span></a>
            </div>
            </div>
            </div>
            <div class="button-br"><div class="button-bl"><div class="button-bm"></div></div></div>
		</div>
	</h3>
	<div class="accordion ui-accordion-content ui-helper-reset ui-widget-content ui-corner-bottom" id="invite_detail_content7167" role="tabpanel" style="display: none;">
    <div id="detail7167" class="detail">
        <div class="detail-tr"><div class="detail-tl"><div class="detail-tm"></div></div></div>
        <div class="detail-mr">
        <div class="detail-ml">
        <div class="detail-mm">
<!--<div id="slideshow" style="width:300px; height:300px;"></div>-->
 <div class="invitext">
              <p class="ip2"><img src="style/桃色经典/image_files/16052978.png" width="80%" height="30" alt=""> </p>
              {#if $vip != "none"#}
              <p class="ip4">{#$vip#}</p>
              {#/if#}
              <p class="ip3">谨定于公历<span>{#$show_time#}</span></p>
              <p class="ip3">{#if $special_name #}<span>{#$special_name#}</span>{#else#}新郎：<span class="">{#$man#}</span> 新娘：<span>{#$women#}</span> {#/if#}</p>
              <p class="ip4">{#if $extends #}{#$extends#}{#else#}举行结婚典礼 敬备喜宴 {#/if#}</p>
              <p class="ip6">时间：<span>{#$mini_time#}</span></p>
              <p class="ip6">席设：<span>{#$house#}</span></p>
		<p class="ip6">地址：<span>{#$adress#}</span></p><br />
  </div>                             
	</div>
        </div>
        </div>
        </div>
        <div class="detail-br"><div class="detail-bl"><div class="detail-bm"></div></div></div>
    </div>
    



<h3 style="display:" id="invite_detail_title7093" class="ui-accordion-header ui-helper-reset ui-state-default ui-corner-all" role="tab" aria-expanded="true" aria-selected="true" tabindex="0"><span class="ui-icon ui-icon-triangle-1-e"></span>
    
 		<div name="button2" id="button2" class="button">
            <div class="button-tr"><div class="button-tl"><div class="button-tm"></div></div></div>
            <div class="button-mr">
            <div class="button-ml">
			<div class="button-mm">
    			<a href="http://tcfate.com/m/mobile.asp?wedID=style5#"><img class="iconimage" alt="css/5/images/2.png" src="style/桃色经典/image_files/2.png" border="0" align="absmiddle">&nbsp;<span id="invite_detail_name7167">{#if $title2#}{#$title2#}{#else#}婚纱相册{#/if#}</span></a>            </div>
            </div>
            </div>
            <div class="button-br"><div class="button-bl"><div class="button-bm"></div></div></div>
		</div>
	</h3>
	<div class="accordion ui-accordion-content ui-helper-reset ui-widget-content ui-corner-bottom" id="invite_detail_content7168" role="tabpanel" style="display: none;">
    <div id="detail7168" class="detail">
        <div class="detail-tr"><div class="detail-tl"><div class="detail-tm"></div></div></div>
        <div class="detail-mr">
        <div class="detail-ml">
        <div class="detail-mm">
<!--<div id="slideshow" style="width:300px; height:300px;"></div>-->



 <ul id="Gallery" class="gallery" style="width: 100% ">
		


 <!--<li><a href="uploads/image/f0904273C82W2683.jpg" rel="external"><img src="uploads/image/f0904273C82W2683.jpg" alt="" /></a></li>-->
 
{#section name=customer loop=$images #}
	<li><a href="http://bcs.duapp.com/marryimg/{#$images[customer]#}" rel="external"><img src="http://bcs.duapp.com/marryimg/{#$images[customer]#}" alt=" "/></a></li>
{#/section#}

 </ul>
                               
	</div>
        </div>
        </div>
        </div>
        <div class="detail-br"><div class="detail-bl"><div class="detail-bm"></div></div></div>
    </div>
<h3 style="display:" id="invite_detail_title7094" class="ui-accordion-header ui-helper-reset ui-state-default ui-corner-all" role="tab" aria-expanded="true" aria-selected="true" tabindex="0"><span class="ui-icon ui-icon-triangle-1-e"></span>
    
 		<div name="button3" id="button3" class="button">
            <div class="button-tr"><div class="button-tl"><div class="button-tm"></div></div></div>
            <div class="button-mr">
            <div class="button-ml">
			<div class="button-mm">
    			<a href="http://tcfate.com/m/mobile.asp?wedID=style5#"><img class="iconimage" alt="css/5/images/3.png" src="style/桃色经典/image_files/3.png" border="0" align="absmiddle">&nbsp;<span id="invite_detail_name7167">{#if $title3#}{#$title3#}{#else#}婚宴回函{#/if#}</span></a>            </div>
            </div>
            </div>
            <div class="button-br"><div class="button-bl"><div class="button-bm"></div></div></div>

		</div>
	</h3>
	<div class="accordion ui-accordion-content ui-helper-reset ui-widget-content ui-corner-bottom" id="invite_detail_content7168" role="tabpanel" style="display: none;">
    <div id="detail7168" class="detail">
        <div class="detail-tr"><div class="detail-tl"><div class="detail-tm"></div></div></div>
        <div class="detail-mr">
        <div class="detail-ml">
        <div class="detail-mm">
<!--<div id="slideshow" style="width:300px; height:300px;"></div>-->
 <script language="javascript">
 function Check()
 {

 	var guest = $('#guest').val();
 	var zf = $('#message').val();
 	var pnum = $('#pnum').val();
 	if(guest == ''){
 		alert('请填写姓名');
 		return;
 	}
 	if(zf == ''){
 		alert('请填写留言');
 		return;
 	}
 	
 	var username='{#$name#}';

 	$.post('save_shuju.php', {user:username, guest:encodeURIComponent(guest), zf:encodeURIComponent(zf), pnum:encodeURIComponent(pnum)}, function (data){
 		$('#bi_msg').html(unescape(data)).show();
 		setTimeout(function (){
 			$('#bi_msg').fadeOut();
 		}, 3000);
 	});
 	 
 }
</script>

 <div class="content-wrapper">
                        <div class="content">
                            <div class="inner-header">
                                <div class="fl-left">
                                    <h1>
                                        宾客回函
                                    </h1>
                                </div>
                            </div>
                            <div class="cbox">
                      
                                    <div>
                                        <input id="guest" type="text" name="guest" placeholder="姓名" class="textbox">
                                        <br>
                                        <br>
                                        你是否参加:
                                            <select id="pnum" name="pnum">
													                <option value="非常乐意，有1人参加">非常乐意，有1人参加</option>
													                <option value="非常乐意，有2人参加">非常乐意，有2人参加</option>
													                <option value="非常乐意，有3人参加">非常乐意，有3人参加</option>
													                <option value="非常乐意，有4人参加">非常乐意，有4人参加</option>
													                <option value="非常乐意，有5人参加">非常乐意，有5人参加</option>
													                <option value="非常乐意，有6人参加">非常乐意，有6人参加</option>
													                <option value="非常乐意，有7人参加">非常乐意，有7人参加</option>
													                <option value="非常乐意，有8人参加">非常乐意，有8人参加</option>
													                <option value="非常乐意，有9人参加">非常乐意，有9人参加</option>
													                <option value="抱歉，无法参加">抱歉，无法参加</option>
													                </select>
                                        <br>
                                        <br>
                                        <textarea name="message" id="message" placeholder="请输入您的祝福信息" required="" data-minlength="10"></textarea>
                                    </div>
                                    <div class="clear">
                                    </div>
                                    <p id="submit-button">
                                        <input type="button" id="send_message" value="发送祝福" onClick="javascript:return Check();">
                                    </p>
                                    <p id="submit-button" style="padding: 0px;">
                                        <span id="bi_msg"></span>
                                    </p>
                            </div>
                        </div>
                    </div>   
	</div>
        </div>

        </div>
        </div>
        <div class="detail-br"><div class="detail-bl"><div class="detail-bm"></div></div></div>
    </div>
    


<h3 style="display:" id="invite_detail_title7095" class="ui-accordion-header ui-helper-reset ui-state-default ui-corner-all" role="tab" aria-expanded="true" aria-selected="true" tabindex="0"><span class="ui-icon ui-icon-triangle-1-e"></span>
    
 		<div name="button4" id="button4" class="button">
            <div class="button-tr"><div class="button-tl"><div class="button-tm"></div></div></div>
            <div class="button-mr">
            <div class="button-ml">
			<div class="button-mm">
    			<a href="http://tcfate.com/m/mobile.asp?wedID=style5#"><img class="iconimage" alt="css/5/images/4.png" src="style/桃色经典/image_files/4.png" border="0" align="absmiddle">&nbsp;<span id="invite_detail_name7095">{#if $title4#}{#$title4#}{#else#}婚宴地图{#/if#}</span></a>            </div>
            </div>
            </div>
            <div class="button-br"><div class="button-bl"><div class="button-bm"></div></div></div>
		</div>
	</h3>
     
<div class="accordion ui-accordion-content ui-helper-reset ui-widget-content ui-corner-bottom" id="invite_detail_content7095" role="tabpanel" style="display: none;">
    <div id="detail7095" class="detail">
        <div class="detail-tr"><div class="detail-tl"><div class="detail-tm"></div></div></div>
        <div class="detail-mr">
        <div class="detail-ml">
        <div class="detail-mm"> 
       <input type="hidden" name="invite_detail_mapimgurl7095" id="invite_detail_mapimgurl7169" value="" width="100%">
         <img id="invite_detail_mapimg7169" style="width:100%; border:thin; border-style:solid; border-color:#999;" src="" width="100%"/>
	        <div id="map_canvas7169" style="border:thin; text-align:center; border-style:solid; border-color:#999; margin-bottom:5px; width:100%; height:300px;"></div> 
	    <div id="map_desc7169">地址：{#$adress#}<br /> </div>
		</div>
  	 <script language="javascript">
    $(document).ready(function() { 
			//init
		if ($("#invite_detail_mapimgurl7169").val() == '') {
				$("#invite_detail_mapimg7169").hide();
			$("#map_canvas7169").show();
		} else {
			$("#invite_detail_mapimg7169").show();
				$("#map_canvas7169").hide();
		}
	
    });		
	    </script>
	  
<script type="text/javascript">
    var map = new BMap.Map("map_canvas7169");//在指定的容器内创建地图实例
    map.setDefaultCursor("map_canvas7169");//设置地图默认的鼠标指针样式
    map.enableScrollWheelZoom();//启用滚轮放大缩小，默认禁用。
    map.centerAndZoom(new BMap.Point({#$coordinate#}), 15);
    map.addControl(new BMap.NavigationControl({
        anchor: BMAP_ANCHOR_TOP_LEFT, type: BMAP_NAVIGATION_CONTROL_SMALL 
    }));
    map.panBy({#$coordinate#})
	
    var pt = new BMap.Point({#$coordinate#});
    var myIcon = new BMap.Icon("style/桃色经典/image_files/markers.gif", new BMap.Size(25,21));
    var marker2 = new BMap.Marker(pt,{
        icon:myIcon
    });// 创建标注
    map.addOverlay(marker2);// 将标注添加到地图中
	</script>
	        </div>
        </div>
	        </div>
	        <div class="detail-br"><div class="detail-bl"><div class="detail-bm"></div></div></div>
    </div>



  
  
  
    
      
<h3 style="display:" id="invite_detail_title8096" class="ui-accordion-header ui-helper-reset ui-state-default ui-corner-all" role="tab" aria-expanded="false" aria-selected="false" tabindex="-1"><span class="ui-icon ui-icon-triangle-1-e"></span>
    
 		<div name="button5" id="button5" class="button">
            <div class="button-tr"><div class="button-tl"><div class="button-tm"></div></div></div>
            <div class="button-mr">
            <div class="button-ml">
			<div class="button-mm">
    			<a href="http://tcfate.com/m/mobile.asp?wedID=style5#"><img class="iconimage" alt="css/5/images/5.png" src="style/桃色经典/image_files/5.png" border="0" align="absmiddle">&nbsp;<span id="invite_detail_name8167">{#$title#}</span></a>            </div>
            </div>
            </div>
            <div class="button-br"><div class="button-bl"><div class="button-bm"></div></div></div>
		</div>
	</h3>
	<div class="accordion ui-accordion-content ui-helper-reset ui-widget-content ui-corner-bottom" id="invite_detail_content8096" role="tabpanel" style="display: none;">
    <div id="detail8096" class="detail">
        <div class="detail-tr"><div class="detail-tl"><div class="detail-tm"></div></div></div>
        <div class="detail-mr">
        <div class="detail-ml">
        <div class="detail-mm">

<div class="invitext">

<div id="remindtitle"><span><span style="font-size: large; ">{#$message #}</span></span></div>
</div>
       
	</div>
        </div>
        </div>
        </div>
        <div class="detail-br"><div class="detail-bl"><div class="detail-bm"></div></div></div>
    </div>
     
 <h3 style="display:" id="invite_detail_title9097" class="ui-accordion-header ui-helper-reset ui-state-default ui-corner-all" role="tab" aria-expanded="false" aria-selected="false" tabindex="-1"><span class="ui-icon ui-icon-triangle-1-e"></span>
    
 		<div name="button6" id="button6" class="button">
            <div class="button-tr"><div class="button-tl"><div class="button-tm"></div></div></div>
            <div class="button-mr">
            <div class="button-ml">
			<div class="button-mm">
    			<a href="http://tcfate.com/m/mobile.asp?wedID=style5#"><img class="iconimage" alt="css/5/images/6.png" src="style/桃色经典/image_files/6.png" border="0" align="absmiddle">&nbsp;<span id="invite_detail_name7167">{#if $title5#}{#$title5#}{#else#}婚礼提醒{#/if#}</span></a>            </div>
            </div>
            </div>
            <div class="button-br"><div class="button-bl"><div class="button-bm"></div></div></div>
		</div>
	</h3>
    
    
    
    
    
	<div class="accordion ui-accordion-content ui-helper-reset ui-widget-content ui-corner-bottom" id="invite_detail_content7171" role="tabpanel" style="display: none;">
    <div id="detail7171" class="detail">
        <div class="detail-tr"><div class="detail-tl"><div class="detail-tm"></div></div></div>
        <div class="detail-mr">
        <div class="detail-ml">
        <div class="detail-mm">
		
            <style type="text/css">

</style>
<p><span id="_lefttime" style="color:red;font-size:18pt;"></span></p>
<SCRIPT LANGUAGE="JavaScript">
function _fresh()
{
    var endtime=new Date("{#$lasttime#}");
 var nowtime = new Date();
 var leftsecond=parseInt((endtime.getTime()-nowtime.getTime())/1000);
 if(leftsecond<0){leftsecond=0;}
 __d=parseInt(leftsecond/3600/24);
 __h=parseInt((leftsecond/3600)%24);
 __m=parseInt((leftsecond/60)%24);
 __s=parseInt(leftsecond%60);
 __all ="　倒计时还有"+ __d+"天 "+__h+"小时"+__m+"分"+__s+"秒";
 document.getElementById("_lefttime").innerHTML=__all;
}
_fresh()
setInterval(_fresh,1000);
</SCRIPT></font>

	</div>
    
        </div>
        </div>
        </div>
        <div class="detail-br"><div class="detail-bl"><div class="detail-bm"></div></div></div>
    </div>
    
  
  
  
  
  
  
    
</div>

<div id="footer"><div id="copyright">
{#if $is_advert eq "1"#}
<div id="copyright-text">{#if $advert #}{#$advert#}{#else#}本服务由QQ:2378822906提供 {#/if#}</div>
{#/if#}
</div>
</div>

 <script type="text/javascript" src="" templates="" mobi_templ="" vip="" video.js"=""></script>


<script type="text/javascript">
    var share_img_url = "http://bcs.duapp.com/marryimg/{#$bigimage#}";
var share_title = "{#$bigtitle#}";
var share_desc = "{#$bigtitle#}";
var share_link = "";

//内容模型
var contentModel = {
    "img_url": share_img_url, 
    "img_width": "", 
    "img_height": "", 
    "link": share_link, 
    "desc": share_desc, 
    "title": share_title, 
    "src": "{#if $vip != "none"#}{#$vip#},{#/if#} {#if $weixin #}{#$weixin#} {#else#} 诚挚邀请您来参加，点击查看详情。 {#/if#} " 
};
//实验muin
var muinObj = {"allUser":1};

</script>

<script language="JavaScript" src="style/weichat.js" type="text/javascript" charset="utf-8"></script>


</body></html>
