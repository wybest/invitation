<!doctype html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<title>{#$bigtitle#}</title>
<meta name="keywords" content="电子喜帖,电子请柬,免费电子喜帖,免费电子请柬,挚爱电子喜帖,电子喜帖模板,手机电子喜帖" />
<meta name="robots" content="follow, all" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="description" content="Site Template Theme" />
<meta name="keywords"
	content="menus, website, template, your, key, words, here" />
<link rel="Shortcut Icon" type="image/ico" href="favicon.ico" />
<!--
<link href="templates/front_templ/wedding_theme_005/css/all.css"
	rel="stylesheet" type="text/css" />
-->
<link href="templates/front_templ/wedding_theme_005/css/style.css"
	rel="stylesheet" type="text/css" />
<link href="templates/front_templ/wedding_theme_005/css/googleMap.css"
	rel="stylesheet" type="text/css" />	
<link rel="stylesheet"
	href="templates/front_templ/wedding_theme_005/css/prettyPhoto.css"
	type="text/css" media="screen" />
<link rel="stylesheet"
	href="templates/front_templ/wedding_theme_005/css/featured/kwicks.css"
	type="text/css" />

<style type="text/css">  
#ie6-warning{background:#b93a37; border-bottom:3px solid #5f2423; position:absolute;top:0; left:0;font-size:14px; line-height:24px; color:#fff;padding:5px 10px; text-align:center;}  
#ie6-warning img{float:right; cursor:pointer; margin-top:4px;}
#ie6-warning a{ text-decoration:underline; color:#fff;}  
</style>
<noscript>
<link rel="stylesheet"
	href="templates/front_templ/wedding_theme_005/css/noscript.css"
	type="text/css" />
</noscript>
</head><body>
<!-- Page -->
<!--[if lte IE 7]>  <div id="ie6-warning">
<img src="http://dzxt.cn/images/x.gif" width="14" height="14" onclick="closeme();" alt="关闭提示" />您正在使用低版本的IE浏览器，错过了更加精美的页面效果，为更好的浏览本页， <a href="http://dl.client.baidu.com/oi/tuiguang/IE8.exe" target="_blank">建议您将浏览器升级到 IE8</a>  
</div>  <script type="text/javascript">  function closeme() {
   var div = document.getElementById("ie6-warning");
   div.style.display ="none"; } </script>  
<![endif]-->
<div id="fullpage" style="_height:758px; _overflow:hidden;">
  <div class="infobar">
    <div class="logo" style="height: 38px;"> 
      <!-- Logo --> 
    </div>
    <!-- Main Greeting -->
    <div class="greet"> Love without end hath no end<span>情绵绵，爱无边</span> </div>
    <!-- Featured Block -->
    <div class="container">
      <ul class="kwicks horizontal" id="piclist_left">
      
      {#section name=customer loop=$images #}
      
      	{#if $smarty.section.customer.iteration lt 5 #}
			<li id="kwickblock{#$smarty.section.customer.iteration#}">
	          <div>
	            <div class="kwickshadow"></div>
	            <a href="#"><img src="http://bcs.duapp.com/marryimg/{#$images[customer]#}" class="slideimage"
										src2="http://bcs.duapp.com/marryimg/{#$images[customer]#}"
										alt="First Image" / style="max-height:400px;_height:400px;"></a> 
	          </div>
	        </li>		
	    {#/if#} 
      
							
		{#/section#}
                                                                                                      </ul>
    </div>
  </div>
  <!-- Right Side Page -->
  <div class="choicebar">
    <div class="quote"> {#$bigtitle#}
        <span>{#$show_time#} {#$mini_time#}</span> 
        </div>
    <!-- Accodion Menu Folders -->
    <div id="accordion"> 
      <!-- Menu Section One -->
      <div>
        <h3> <a href="#">真诚的邀请</a> </h3>
        <div>
        {#if $vip != "none"#}
		              <p style="margin:8px 0px;padding:0px"><span style="font-size:18px;font-weight:bold">{#$vip#}</span></p>
		            {#/if#}              
                           <p>新郎：{#$man#}<br />
新娘：{#$women#}<br />
{#if $extends #}{#$extends#}{#else#}在这温馨浪漫，喜悦甜蜜的日子里 我俩决定于{#$show_time#} {#$mini_time#}举行结婚典礼，届时敬备酒宴，欢迎您到来分享这份喜悦，您的光临将使我们的婚宴增添万分光彩!{#/if#}<br />
<span>地点： {#$house#}</span><br />
<span>酒店地址： {#$adress#}</span></p>
        </div>
        <!-- Clear -->
        <div class="clear"></div>
      </div>
      <!-- Menu Section Two -->
      <div>
        <h3> <a href="#">{#$title#}</a> </h3>
        <div>
        <div  style="height:200px; OVERFLOW: auto;">
        <p>{#$message #}</p></div>
        </div>
        <!-- Clear -->
        <div class="clear"></div>
      </div>
      <!-- Menu Section Three -->
      <div>
        <h3> <a href="#">爱的映像</a> </h3>
        <ul class="portfoliogrid" id="piclist_right">
        
        
        {#section name=customer loop=$images #}
			<li class="rightspace imageicon"><a rel="prettyPhoto[gallery1]"
							title=""
							href="http://bcs.duapp.com/marryimg/{#$images[customer]#}"> <img class="fadetoicon"
								src2="http://bcs.duapp.com/marryimg/{#$images[customer]#}" src=""/> </a></li>
		{#/section#}
        <li>  </li>
        </ul>
        <!-- Clear -->
        <div class="clear"></div>
      </div>
      <!-- Menu Section Four -->
      <div>
        <h3> <a href="#">婚礼地点</a> </h3>
        
        <div id="map">
                  <div class="google_map" id="container"></div>
            </div>
        <!-- Clear -->
        <div class="clear"></div>
      </div>
      <!-- Menu Section Five -->
      <div>
        <h3> <a href="#">婚礼回函</a> </h3>
        
        <form action="#" id="ContactForm">
                  <fieldset class="">
                    <div class="block">
                      <label class="name"> <span class="bg">
                        <input type="text"  placeholder="姓名:" id="guest" style="border: 1px solid #A92E16;border-radius: 12px;box-shadow: none;margin-bottom: 6px;padding: 11px 0 11px 10px;width: 396px;">
                        </span> </label>
                      <label class="email" style="width:400px; height:50px; line-height:50px; font-size:12px;"> 
                      <select id="pnum" name="pnum" style="border-radius: 12px;">
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
                      </label>
                    </div>
                    <div class="block">
                      <label class="message"> <span class="bg">
                        <textarea rows="1" cols="2" id="message"  placeholder="留言:" style="border: 1px solid #A92E16;border-radius: 12px;height: 110px;margin-bottom: 6px;outline: medium none;overflow: auto;padding: 11px 0 9px 10px;resize: none;width: 396px;"></textarea>
                        </span> </label>
                    </div>
                    <div class="clear"></div>
                    <div class="formBtn"> <a href="####" id="btn_backinfo">发送</a> <p id="bi_msg" style="font-size:12px;margin-top:5px;color:red;text-align:left;"></p></div>
                  </fieldset>
                </form>
        <div class="clear"></div>
      </div>
    </div>
    <div class="clear"></div>
  </div>
  <div class="clear"></div>
  <div class="footerwrap"> 
    <!-- Footer -->
    <div class="footerbar">
      <div class="footer"> 
        <!-- Copyright -->
        <ul>
          <li></li>
        </ul>
      </div>
      <div class="clear"></div>
    </div>
    <!-- End Symbol -->
    <div class="endbar">
      <div class="footer">
        <ul>
          <li><img
							src="templates/front_templ/wedding_theme_005/images/end.png"
							alt="end" /></li>
        </ul>
      </div>
    </div>
    <div class="clear"></div>
  </div>
</div>

  <div class="privacy" style="line-height:20px">	<div style="display:inline;">
		<object type="application/x-shockwave-flash"
			data="images/dewplayer-mini.swf?mp3=http://bcs.duapp.com/mp3folder/{#$music#}&amp;autostart=1&amp;autoreplay=1" width="19" height="20"
			id="dewplayer-mini">
			<param name="wmode" value="transparent">
			<param name="movie"
				value="images/dewplayer-mini.swf?mp3=http://bcs.duapp.com/mp3folder/{#$music#}&amp;autostart=1&amp;autoreplay=1">
			<embed src="images/dewplayer-mini.swf?mp3=http://bcs.duapp.com/mp3folder/{#$music#}&amp;autostart=1&amp;autoreplay=1" width="20"
				height="20" wmode="transparent"></embed>
		</object>
	</div>
	</div>
  <!-- {%FOOTER_LINK} --> 

<!--
<script type="text/javascript"
	src="templates/front_templ/wedding_theme_005/js/jquery-1.4.2.min.js"></script>

<script type="text/javascript"
	src="templates/front_templ/wedding_theme_005/js/all.js"></script>
--> 
<script type="text/javascript"
	src="templates/front_templ/wedding_theme_005/js/jquery-1.4.2.min.js"></script> 
<script type="text/javascript"
	src="templates/front_templ/wedding_theme_005/js/jquery-ui-1.8.6.custom.min.js"></script> 
<script type="text/javascript"
	src="templates/front_templ/wedding_theme_005/js/cufon-yui.js"></script> 
<script type="text/javascript"
	src="templates/front_templ/wedding_theme_005/js/fadeinout.js"></script> 
<script
	src="templates/front_templ/wedding_theme_005/js/jquery.prettyPhoto.js"
	type="text/javascript"></script> 
<script
	src="templates/front_templ/wedding_theme_005/js/kwicks/jquery.kwicks-1.5.1.pack.js"
	type="text/javascript"></script> 
<script type="text/javascript"
	src="templates/front_templ/wedding_theme_005/js/kwicks/kwicks-custom.js"></script> 
<script type="text/javascript"
	src="templates/front_templ/wedding_theme_005/js/main/mainpage-folders.js"></script>

<!-- Cufon Initialize --> 
<script type="text/javascript">
		Cufon.now();
		
		$(function (){
			setTimeout('loadimg()', 1000);
		});
		
		function loadimg(){
			$('#piclist_left img').each(function (){
				var src2 = $(this).attr('src2');
				$(this).attr('src',src2);
			});
			$('#piclist_right img').each(function (){
				var src2 = $(this).attr('src2');
				$(this).attr('src',src2);
			});
			
			var biz_name = '';
			var biz_url = '';
			$("a[rel^='prettyPhoto']").prettyPhoto({social_tools:'<a style="font-size:12px;color:white;" href="' + biz_url + '" target="_blank">' + biz_name + '</a>',animation_speed:'normal',theme:'dark_square',slideshow:5000, autoplay_slideshow: false});

		}
	</script>
    <div style="display:none"> 
  <script type="text/javascript">
var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3F0b49c04696fdc8117195c0732c080ea4' type='text/javascript'%3E%3C/script%3E"));
</script> 
<script type="text/javascript" src="http://api.map.baidu.com/api?v=1.3"></script>
<script type="text/javascript">
var map = new BMap.Map("container");
map.enableScrollWheelZoom();

var x,y;
var marker = '';

$(function (){
		map.centerAndZoom(new BMap.Point({#$coordinate#}), 13);
		map.addControl(new BMap.NavigationControl());  

		map.removeOverlay(marker);
		var pt = new BMap.Point({#$coordinate#});
		marker = new BMap.Marker(pt); 
		map.addOverlay(marker); 
});

</script>

<script>
var user_id = 33;
$(function (){
	$('#btn_backinfo').click(function (){
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
	});
	
	var biz_name = '';
	var biz_url = '';
	$("a[rel^='prettyPhoto']").prettyPhoto({social_tools:'<a href="' + biz_url + '" target="_blank" style="float:left;color:white;font-size:12px;text-decoration:none;margin-top:3px;">' + biz_name + '</a>',animation_speed:'normal',theme:'dark_square',slideshow:5000, autoplay_slideshow: false});

});
</script>

</div>
</body>
</html>