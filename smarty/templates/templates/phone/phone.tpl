
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html namelns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=2.0, user-scalable=no">

<title>{#$bigtitle#}</title>
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


.huihan_list {
    width: 95%;
    height: auto;
    margin: 5px auto;
    border-bottom: 1px solid #CCC;
    background: #fff;
}

.huihan_top {
    width: 100%;
    height: 40px;
    float: left;
    background-color: lightpink;
}


.huihan_name {
    width: auto;
    height: 20px;
    font-weight: 700;
    float: left;
    font-size: 16px;
    margin: 12px 10px 15px;
}

.huihan_time {
    width: auto;
    height: 20px;
    float: right;
    font-size: 12px;
    color: #999;
    margin: 12px 12px 15px;
}

.huihan_text {
    width: auto;
    height: auto;
    padding: 10px 0px 30px;
    font-size: 16px;
    border-radius: 5px;
    margin: 5px 12px 0px 40px;
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
            幸福加载中...
        </span>
    </div>
</div>



<script language="javascript" type="text/javascript">

var LoadingDIV = document.getElementById("Loading");
window.onload = function() {
    LoadingDIV.style.display = "none";
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
                            <img id="invite_webimg" src="marryimg/{#$bigimage #}" width="100%" alt="Mobile Wedding Invitations">
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
<h3 style="display:{#if $t1 eq "1"#} none {#/if#}" id="invite_detail_title7092" class="ui-accordion-header ui-helper-reset ui-state-default ui-corner-all" role="tab" aria-expanded="true" aria-selected="true" tabindex="0"><span class="ui-icon ui-icon-triangle-1-e"></span>
    
 		<div name="button1" id="button1" class="button">
            <div class="button-tr"><div class="button-tl"><div class="button-tm"></div></div></div>
            <div class="button-mr">
            <div class="button-ml">
			<div class="button-mm">
    			<a href=""><img class="iconimage" alt="css/5/images/1.png" src="style/{#$mould #}/image_files/1.png" border="0" align="absmiddle">&nbsp;<span id="invite_detail_name7167">{#if $title1#}{#$title1#}{#else#}爱的邀约{#/if#}</span></a>
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
        <div class="detail-mm"  style="padding-bottom:20px;">

            <!--<div id="slideshow" style="width:300px; height:300px;"></div>-->
            <!--SPLIT-->
            <style>

                .head h3 { font-size:22px;color:#000;padding-bottom:5px;}
                .line { border-top:1px solid #E5BD82;margin:5px 0;}
                .info { font-size:16px;font-weight:bold;margin-top:20px;}
                #invite .infos{text-align:center;font-weight:bolder;font-size:16px;padding:5px 0 15px 0}
                #invite .infos table{margin:0 auto;}
                #invite .infos h1 {min-height:0;overflow:hidden}
                #invite .infos h1 img{max-width:100%;overflow:hidden;}
                #invite .infos .text { font-size:18px;}
                .ip4{color:#000;font-size:25px; margin:5px 0px;}
                .ip5{color:#000;font-size:24px; margin:5px 0px;}
                .ip6{color:#000;font-size:18px;padding:5px;}
            </style>


            <div id="mask_bg"></div><div class="body" id="invite">
                <table width="100%" class="head">
                    <tr>
                        {#if $special_name #}<td align="center"><h3><span >{#$special_name#}</span></h3></td>
                        {#else#}
                        <td align="right"><h3><span >{#$man#}</span></h3><p>新郎</p></td>
                        <td width="100" align="center"><img src="style/rose.png" alt="rose" /></td>
                        <td align="left"><h3><span >{#$women#}</span></h3><p>新娘</p></td>
                        {#/if#}

                    </tr>
                </table>
                <div class="line" /></div>
            <!--<div style=" padding:2px 20px;"><img src="images/line.png" width="100%" height="auto" /></div>-->
            <div class="infos">
                {#if $vip != "none"#}
                <p class="ip4"><span >{#$vip#}</span></p>
                {#/if#}
                <p class="ip6"><span >{#$show_time#}</span></p>
                <p class="ip5"><span >{#if $extends eq "none" #} {#elseif $extends #}{#$extends#}{#else#}举行结婚典礼 敬备喜宴 {#/if#}</span></p>
                <table class="td" cellspacing="10">
                    <tr>
                        <td class="ip6">时间：<span >{#$mini_time#}</span></td>
                    </tr>
                    <tr>
                        <td class="ip6">地点：<span >{#$house#}</span></td>
                    </tr>
                </table>

            </div>
        </div>


            <!--<div id="slideshow" style="width:300px; height:300px;"></div> <div class="text">您的光临会是我们最大的荣幸</div>
 <div class="invitext">
              <p class="ip2"><img src="style/rose.png"  height="30" alt=""> </p>
              {#if $vip != "none"#}
              <p class="ip4">{#$vip#}</p>
              {#/if#}
              <p class="ip3"><span>{#$show_time#}</span></p>
              <p class="ip3">{#if $special_name #}<span>{#$special_name#}</span>{#else#}新郎：<span class="">{#$man#}</span> 新娘：<span>{#$women#}</span> {#/if#}</p>
              <p class="ip4">{#if $extends eq "none" #} {#elseif $extends #}{#$extends#}{#else#}举行结婚典礼 敬备喜宴 {#/if#}</p>
              <p class="ip3">时间：<span>{#$mini_time#}</span></p>
              <p class="ip3">地点：<span>{#$house#}</span></p><br />
  </div>

-->



	</div>
        </div>
        </div>
        </div>
        <div class="detail-br"><div class="detail-bl"><div class="detail-bm"></div></div></div>
    </div>
    



<h3 style="display:{#if $t2 eq "1"#} none {#/if#}" id="invite_detail_title7093" class="ui-accordion-header ui-helper-reset ui-state-default ui-corner-all" role="tab" aria-expanded="true" aria-selected="true" tabindex="0"><span class="ui-icon ui-icon-triangle-1-e"></span>
    
 		<div name="button2" id="button2" class="button">
            <div class="button-tr"><div class="button-tl"><div class="button-tm"></div></div></div>
            <div class="button-mr">
            <div class="button-ml">
			<div class="button-mm">
    			<a href="#"><img class="iconimage" alt="css/5/images/2.png" src="style/{#$mould #}/image_files/2.png" border="0" align="absmiddle">&nbsp;<span id="invite_detail_name7167">{#if $title2#}{#$title2#}{#else#}婚纱相册{#/if#}</span></a>            </div>
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



<ul id="Gallery" class="gallery" >
		


 <!-- <li><a href="uploads/image/f0904273C82W2683.jpg" rel="external"><img src="uploads/image/f0904273C82W2683.jpg" alt="" /></a></li>
    {#section name=customer loop=$images #}

    <li><a href="marryimg/{#$images[customer]#}" rel="external"><img src="marryimg/{#$images[customer]#}" alt=" "/></a></li>

    {#/section#}
-->
 </ul>
                             
	</div>
        </div>
        </div>
        </div>
        <div class="detail-br"><div class="detail-bl"><div class="detail-bm"></div></div></div>
    </div>
<h3 style="display:{#if $t3 eq "1"#} none {#/if#}" id="invite_detail_title7094" class="ui-accordion-header ui-helper-reset ui-state-default ui-corner-all" role="tab" aria-expanded="true" aria-selected="true" tabindex="0"><span class="ui-icon ui-icon-triangle-1-e"></span>
    
 		<div name="button3" id="button3" class="button">
            <div class="button-tr"><div class="button-tl"><div class="button-tm"></div></div></div>
            <div class="button-mr">
            <div class="button-ml">
			<div class="button-mm">
    			<a href="#"><img class="iconimage" alt="css/5/images/3.png" src="style/{#$mould #}/image_files/3.png" border="0" align="absmiddle">&nbsp;<span id="invite_detail_name7167">{#if $title3#}{#$title3#}{#else#}婚宴签到{#/if#}</span></a>            </div>
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
                                        您是否参加:
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


            {#section name=customer loop=$shuju_array #}
            <div class="huihan_list">
                <div class="huihan_top">
                    <div class="huihan_name">{#$shuju_array[customer]->name#}</div>
                    <div class="huihan_time">{#$shuju_array[customer]->time#}</div>
                </div>
                <div class="huihan_text">{#$shuju_array[customer]->bless#}</div>
            </div>
            {#/section#}


	</div>
        </div>

        </div>
        </div>
        <div class="detail-br"><div class="detail-bl"><div class="detail-bm"></div></div></div>
    </div>
    


<h3 style="display:{#if $t4 eq "1"#} none {#/if#}" id="invite_detail_title7095" class="ui-accordion-header ui-helper-reset ui-state-default ui-corner-all" role="tab" aria-expanded="true" aria-selected="true" tabindex="0"><span class="ui-icon ui-icon-triangle-1-e"></span>
    
 		<div name="button4" id="button4" class="button">
            <div class="button-tr"><div class="button-tl"><div class="button-tm"></div></div></div>
            <div class="button-mr">
            <div class="button-ml">
			<div class="button-mm">
    			<a href="#"><img class="iconimage" alt="css/5/images/4.png" src="style/{#$mould #}/image_files/4.png" border="0" align="absmiddle">&nbsp;<span id="invite_detail_name7095">{#if $title4#}{#$title4#}{#else#}婚宴地图{#/if#}</span></a>            </div>
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
	        <div id="map_canvas7169" style="border:thin; text-align:center; border-style:solid; border-color:#999; margin-bottom:5px; width:100%; height:300px;">百度地图加载中。。。</div>
            <style type="text/css">
                a#guide_bd_btn{display:inline-block;width:150px;height:40px;overflow:hidden;padding-left:50px;background:url('style/style24/guide_bg.gif') no-repeat left #01BD9A;border-radius:2px;-webkit-border-radius:2px;text-align:center;font:bolder 18px/40px '微软雅黑';color:#fff;text-decoration:none;}
            </style>
            <p id="maper"></p>
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
 function initialize(){
     var map = new BMap.Map("map_canvas7169");//在指定的容器内创建地图实例
     map.setDefaultCursor("map_canvas7169");//设置地图默认的鼠标指针样式
     map.enableScrollWheelZoom();//启用滚轮放大缩小，默认禁用。
     map.centerAndZoom(new BMap.Point({#$coordinate#}), 15);
     map.addControl(new BMap.NavigationControl({
         anchor: BMAP_ANCHOR_TOP_LEFT, type: BMAP_NAVIGATION_CONTROL_SMALL
     }));
     map.panBy({#$coordinate#})

     var pt = new BMap.Point({#$coordinate#});
     var myIcon = new BMap.Icon("style/style9/ps/markers.gif", new BMap.Size(25,21));
     var marker2 = new BMap.Marker(pt,{
         icon:myIcon
     });// 创建标注
     map.addOverlay(marker2);// 将标注添加到地图中
 }

	</script>
	        </div>
        </div>
	        </div>
	        <div class="detail-br"><div class="detail-bl"><div class="detail-bm"></div></div></div>
    </div>



  
  
  
    
      
<h3 style="display:{#if $t5 eq "1"#} none {#/if#}" id="invite_detail_title8096" class="ui-accordion-header ui-helper-reset ui-state-default ui-corner-all" role="tab" aria-expanded="false" aria-selected="false" tabindex="-1"><span class="ui-icon ui-icon-triangle-1-e"></span>
    
 		<div name="button5" id="button5" class="button">
            <div class="button-tr"><div class="button-tl"><div class="button-tm"></div></div></div>
            <div class="button-mr">
            <div class="button-ml">
			<div class="button-mm">
    			<a href="#"><img class="iconimage" alt="css/5/images/5.png" src="style/{#$mould #}/image_files/5.png" border="0" align="absmiddle">&nbsp;<span id="invite_detail_name8167">{#$title#}</span></a>            </div>
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
     
 <h3 style="display:{#if $t6 eq "1"#} none {#/if#}" id="invite_detail_title9097" class="ui-accordion-header ui-helper-reset ui-state-default ui-corner-all" role="tab" aria-expanded="false" aria-selected="false" tabindex="-1"><span class="ui-icon ui-icon-triangle-1-e"></span>
    
 		<div name="button6" id="button6" class="button">
            <div class="button-tr"><div class="button-tl"><div class="button-tm"></div></div></div>
            <div class="button-mr">
            <div class="button-ml">
			<div class="button-mm">
    			<a href="#"><img class="iconimage" alt="css/5/images/6.png" src="style/{#$mould #}/image_files/6.png" border="0" align="absmiddle">&nbsp;<span id="invite_detail_name7167">{#if $title5#}{#$title5#}{#else#}婚礼提醒{#/if#}</span></a>            </div>
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
            <div style="margin-top:5px; margin-bottom:15px">
                <div style="font-size:14px; margin-bottom:5px">倒计时还有:</div>
                <div style="width:100%" align="center">
                    <input style="border:1px solid #777; background-color:#FFC; font-size:22px; color:#777;" type="text" id="lefttime"  size="20">
                    <div style="font-size:12px; margin-top:5px"></div>
                </div>
            </div>
            <SCRIPT LANGUAGE="JavaScript">
                function _fresh()
                {
                    var endtime=new Date("{#$lasttime#}");
                    var nowtime = new Date();
                    var leftsecond=parseInt((endtime.getTime()-nowtime.getTime())/1000);
                    if(leftsecond<0){leftsecond=0;}
                    var day1=Math.floor(leftsecond/(60*60*24));
                    var hour=Math.floor((leftsecond-day1*24*60*60)/3600);
                    var minute=Math.floor((leftsecond-day1*24*60*60-hour*3600)/60);
                    var second=Math.floor(leftsecond-day1*24*60*60-hour*3600-minute*60);

                    __all = day1+"天 "+hour+"小时"+minute+"分"+second+"秒";
                    document.getElementById("lefttime").value=__all;
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


document.oncontextmenu = function (event){
    if(window.event){
        event = window.event;
    }try{
        var the = event.srcElement;
        if (!((the.tagName == "INPUT" && the.type.toLowerCase() == "text") || the.tagName == "TEXTAREA")){
            return false;
        }
        return true;
    }catch (e){
        return false;
    }
}
function loadAll(){
    loadImg();
    loadBaiduMap();
    var options = {};
    $("#Gallery a").photoSwipe(options);
}

function loadBaiduMap() {
    var script = document.createElement('script');
    script.type = 'text/javascript';
    script.src = 'http://api.map.baidu.com/api?v=1.5&ak=309d55cca0d6814ffb4668758d817124&callback=initialize';
    document.body.appendChild(script);

    //var script1 = document.createElement('script');
    //script1.type = 'text/javascript';
    //script1.src = 'http://api.map.baidu.com/geocoder/v2/?ak=309d55cca0d6814ffb4668758d817124&callback=renderOption&output=json&address={#$adress#}&city=';
    //document.body.appendChild(script1);
    renderOption(null);
}

function renderOption(response) {
    var html = '';
//
//    if (response.status ) {
//        var text = "无正确的返回结果:\n";
//        document.getElementById('maper').innerHTML = text;
//        return;
//    }
//    var location = response.result.location;

    var location = '{#$coordinate#}';
    //location.lat +','+location.lng
    location.split(",");

    html = '<a href="http://api.map.baidu.com/marker?location='+ location.split(",")[1] +','+location.split(",")[0] +'&title=宴会位置导航&content={#$adress#}&output=html" title="点击一键导航" id="guide_bd_btn">点击一键导航</a>';
    document.getElementById('maper').innerHTML = html;
    return;
}

function loadImg(){
    {#section name=customer loop=$images #}
    $("#Gallery").append('<li><a href="marryimg/{#$images[customer]#}" rel="external"><img src="marryimg/{#$images[customer]#}" alt=" "/></a></li>');
    {#/section#}
}

(function(window, $, PhotoSwipe){
    $(document).ready(function(){
        setTimeout(function(){loadAll()},500);
    });
}(window, window.jQuery, window.Code.PhotoSwipe));

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

</script>
<audio autoplay="autoplay" id="audio_play" loop="loop">
    <source src="{#$music#}" type="audio/mpeg" />
</audio>

<!-- 微信分享 -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script src="style/style14/weixin_share.js"></script>
<script>
    var contentModel = {
        "img_url": "http://www.wndxf.com/invitation/marryimg/{#$bigimage#}",
        "title": "{#$bigtitle#}",
        "src": "{#if $vip != "none"#}{#$vip#},{#/if#} {#if $weixin #}{#$weixin#} {#else#} 诚挚邀请您来参加，点击查看详情。 {#/if#}"
    };
</script>

</body></html>
