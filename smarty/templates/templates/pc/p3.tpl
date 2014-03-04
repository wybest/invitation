<!DOCTYPE html>
<html lang="en">
<head>
<title>{#$bigtitle#}</title>
<meta name="keywords" content="电子喜帖,电子请柬,免费电子喜帖,免费电子请柬,挚爱电子喜帖,电子喜帖模板,手机电子喜帖" />
<meta name="robots" content="follow, all" />
<meta charset="utf-8">
<link rel="stylesheet" href="templates/front_templ/wedding_theme_017/css/style.css" type="text/css" media="screen">
<link type="text/css" href="templates/front_templ/wedding_theme_017/css/jquery-ui-1.8.18.custom.css" rel="stylesheet" />	
<link href="templates/front_templ/wedding_theme_017/css/prettyPhoto.css" rel="stylesheet" />
<script src="templates/front_templ/wedding_theme_017/js/jquery-1.7.1.min.js"></script>
<script src="templates/front_templ/wedding_theme_017/js/superfish.js"></script>
<script src="templates/front_templ/wedding_theme_017/js/jquery-ui-1.8.18.custom.min.js"></script>
<script src="templates/front_templ/wedding_theme_017/js/jquery.scrollorama.js"></script>
<script src="templates/front_templ/wedding_theme_017/js/jquery.easing.1.3.js"></script>
<script src="templates/front_templ/wedding_theme_017/js/tms-0.4.1.js"></script>
<script src="templates/front_templ/wedding_theme_017/js/uCarousel.js"></script>
<script src="templates/front_templ/wedding_theme_017/js/jquery.prettyPhoto.js"></script>
<script>
	$(document).ready(function() {
		$(".sf-menu li a,footer h1 a,.btn_down,.btn_up").click(function () { 
		  elementClick = $(this).attr("href");
		  destination = $(elementClick).offset().top;
		  if($.browser.safari){
			$('body').animate( { scrollTop: destination }, 2000, 'easeInQuad' );
		  }else{
			$('html').animate( { scrollTop: destination }, 2000, 'easeInQuad' );
		  }
		  return false;
		});

		var biz_name = '';
		var biz_url = '';
		$("a[rel^='prettyPhoto']").prettyPhoto({social_tools:'<a href="' + biz_url + '" target="_blank">' + biz_name + '</a>',animation_speed:'normal',theme:'dark_square',slideshow:5000, autoplay_slideshow: false});
	});
</script>
<!--[if lt IE 9]>
	<script src="templates/front_templ/wedding_theme_017/js/html5.js"></script>
	<link rel="stylesheet" href="templates/front_templ/wedding_theme_017/css/ie.css"> 
<![endif]-->
<style type="text/css">
.gallery { list-style: none; padding: 0; margin: auto; }
.gallery:after { clear: both; content: "."; display: block; height: 0; visibility: hidden; }
.gallery li { float: left; width: 33.33333333%; }
.gallery li a { display: block; margin: 5px;  }
.gallery li img { display: block; width: auto; height: 285px;border: 1px solid #3c3c3c; }
</style>

</head>
<body>
<div class="clouds">
	<div class="scrollblock">
		<div class="birds_1"></div>
		<div class="birds_2"></div>
		<div class="birds_3"></div>
		<div class="birds_4"></div>
		<div class="birds_5"></div>
		<div class="birds_6"></div>
		<div class="balloon_1"></div>
		<div class="balloon_2"></div>
		<div class="balloon_3"></div>
		<div class="balloon_4"></div>
		<div class="balloon_5"></div>
		<div class="people1"></div>
		<div class="cloud1"></div>
		<div class="cloud2"></div>
		<div class="cloud3"></div>
		<div class="cloud4"></div>
		<div class="cloud5"></div>
	</div>
	<div class="city-bg">
	<section>
		<div id="page1">
			<header>
				<h1><a href="####">我们结婚了</a></h1>
				<nav class="main-menu">
					<ul class="sf-menu">
						<li><a href="#page2">邀请</a></li>
						<li><a href="#page3">故事</a></li>
						<li class="menu3"><a href="#page4">照片</a></li>
						<li class="last"><a href="#page5">地点</a></li>
					</ul>
					<div class="clear"></div>
				</nav>
			</header>
			<div class="title"></div>
			<div class="title2">{#$show_time#}&nbsp;{#$mini_time#}</div>
			<p class="text1">{#$bigtitle#}</p>
			<a href="#page2" class="btn_down"></a>
		</div>
		<div id="page2">
			<a href="#page1" class="btn_up"></a>
			<h2><span>真诚的邀请</span><img src="templates/front_templ/wedding_theme_017/images/star.png" alt=""></h2>
			<div class=" container_12">
				<div class="wrapper">
					{#if $vip != "none"#}
              <p style="margin:8px 0px;padding:0px"><span style="font-size:18px;font-weight:bold">{#$vip#}</span></p>
            {#/if#} 
					<h3 style="font-family:微软雅黑">{#$man#}  &amp; {#$women#} </h3>
					<p>
{#if $extends #}{#$extends#}{#else#}在这温馨浪漫，喜悦甜蜜的日子里 我们决定于{#$show_time#} {#$mini_time#}举行结婚典礼，届时敬备酒宴，欢迎您到来分享这份喜悦，您的光临将使我们的婚宴增添万分光彩!{#/if#}
<br/>

<span>地点： {#$house#}</span></p>
					
				</div>
			</div>
			<a href="#page3" class="btn_down"></a>
		</div>
		<div id="page3">
			<a href="#page2" class="btn_up"></a>
			<h2><span>{#$title#}</span><img src="templates/front_templ/wedding_theme_017/images/star.png" alt=""></h2>
			<div style="text-align:left; padding:20px;">
			<p>{#$message #}</p>  
			</div>
<a href="#page4" class="btn_down"></a>
		</div>
		<div id="page4">
			<a href="#page3" class="btn_up"></a>
			<h2><span>爱的映像</span><img src="templates/front_templ/wedding_theme_017/images/star.png" alt=""></h2>
						<div >
						  
						  <ul id="Gallery" class="gallery">
          
				          	{#section name=customer loop=$images #}
								<li><a href="marryimg/{#$images[customer]#}" rel="prettyPhoto[gallery1]">
								<img src="marryimg/{#$images[customer]#}" alt="" />
								</a></li>
							{#/section#}
				           </ul>
						
						</div>
			<a href="#page5" class="btn_down"></a>
		</div>
		<div id="bg-page5">
			<div id="page5">
				<a href="#page4" class="btn_up"></a>
				<h2><span>{#$adress#}</span><img src="templates/front_templ/wedding_theme_017/images/star.png" alt=""></h2>
				<div class="wrapper">
					<div class="fleft">
	
						<div id="container" style="width:450px;height:260px;margin:20px;margin-top:40px;border:4px solid #DAD6D1"></div>
					</div>
					<div class="contactform">
						<form id="contact-form">
							
							<fieldset>
								
								<label class="email">
									<input type="text" placeholder="姓名:"  id="guest">
									<span class="clear"></span>
								</label>
								<label class="name">
								<span class="textStyle3" style="line-height:50px;">是否到场参加婚礼：
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
								</span>
									<span class="clear"></span>
									
								</label>
								<label class="message">
									<textarea id="message" placeholder="留言:"></textarea>
									<span class="clear"></span>
								</label>
								<div class="buttons"><span><a class="button" id="btn_backinfo">发送留言</a></span><span id="bi_msg" style="font-size:12px;margin-top:25px;color:red;text-align:right;line-height:40px"></span></div>
							</fieldset>
						</form>
					</div>
				</div>
				<div class="social_pad">
					
				</div>
				<footer style="line-height:20px">
					<h1><a href="#page1">新婚大喜</a></h1>
						
	<div style="display:inline;">
		<object type="application/x-shockwave-flash"
			data="images/dewplayer-mini.swf?mp3=mp3folder/{#$music#}&amp;autostart=1&amp;autoreplay=1" width="19" height="20"
			id="dewplayer-mini">
			<param name="wmode" value="transparent">
			<param name="movie"
				value="images/dewplayer-mini.swf?mp3=mp3folder/{#$music#}&amp;autostart=1&amp;autoreplay=1">
			<embed src="images/dewplayer-mini.swf?mp3=mp3folder/{#$music#}&amp;autostart=1&amp;autoreplay=1" width="20"
				height="20" wmode="transparent"></embed>
		</object>
	</div>
				</footer>
			</div>
		</div>
	</section></div>
</div>

<!-- Coded by Ariadna -->
<script>
var user_id = 33;
$(document).ready(function (){
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
});
</script>

<script type="text/javascript" src="http://api.map.baidu.com/api?v=1.3"></script>
<script type="text/javascript">
$(function (){
	var map = new BMap.Map("container");
	map.enableScrollWheelZoom();

	var x,y;
	var marker = '';
		map.centerAndZoom(new BMap.Point({#$coordinate#}), 13);
		map.addControl(new BMap.NavigationControl());  
		map.removeOverlay(marker);
		var pt = new BMap.Point({#$coordinate#});
		marker = new BMap.Marker(pt); 
		map.addOverlay(marker); 
});

</script>
<div style="display:none"> 
  <script type="text/javascript">
var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3F0b49c04696fdc8117195c0732c080ea4' type='text/javascript'%3E%3C/script%3E"));
</script> 
</div>
</body>
</html>
