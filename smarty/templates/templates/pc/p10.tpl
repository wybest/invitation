<!DOCTYPE html>
<html lang="en">
<head>
  <title>{#$bigtitle#}</title>
<meta name="keywords" content="电子喜帖,电子请柬,免费电子喜帖,免费电子请柬,挚爱电子喜帖,电子喜帖模板,手机电子喜帖" />
<meta name="robots" content="follow, all" />
  <meta charset="utf-8">
  <link rel="stylesheet" href="templates/front_templ/wedding_theme_014/css/reset.css" type="text/css" media="all">
  <link rel="stylesheet" href="templates/front_templ/wedding_theme_014/css/layout.css" type="text/css" media="all">
  <link rel="stylesheet" href="templates/front_templ/wedding_theme_014/css/style.css" type="text/css" media="all">
  <link rel="shortcut icon" href="templates/front_templ/wedding_theme_014/images/favicon.ico" type="image/x-icon" />
  <script type="text/javascript" src="templates/front_templ/wedding_theme_014/js/jquery-1.6.1.min.js" ></script>
  <script type="text/javascript" src="templates/front_templ/wedding_theme_014/js/script.js"></script>
  <script type="text/javascript" src="templates/front_templ/wedding_theme_014/js/content_switch.js"></script>
  <script type="text/javascript" src="templates/front_templ/wedding_theme_014/js/jquery.easing.1.3.js"></script>
  <script type="text/javascript" src="templates/front_templ/wedding_theme_014/js/superfish.js"></script>
  <script type="text/javascript" src="templates/front_templ/wedding_theme_014/js/jquery.mousewheel.js"></script>
  <script type="text/javascript" src="templates/front_templ/wedding_theme_014/js/jquery-ui.js"></script>
  <script type="text/javascript" src="templates/front_templ/wedding_theme_014/js/cScroll.js"></script>
  <script type="text/javascript" src="templates/front_templ/wedding_theme_014/js/jquery.color.js"></script>
  <script type="text/javascript" src="templates/front_templ/wedding_theme_014/js/jcarousellite.js"></script>
 
  <!--[if lt IE 9]>
  	<script type="text/javascript" src="templates/front_templ/wedding_theme_014/js/html5.js"></script>
    <link rel="stylesheet" href="templates/front_templ/wedding_theme_014/css/ie.css" type="text/css" media="all">
  <![endif]-->
	<!--[if lt IE 8]>
		<div style=' clear: both; text-align:center; position: relative;'>
			<a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode"><img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." /></a>
		</div>
	<![endif]-->
</head>

<body>
<div class="page_spinner"><div></div></div>
<div class="over">
	<div class="splash_bg"></div>
	<div class="left_shadow"></div>
	<div class="right_shadow"></div>
	<div class="bg1">
		<div class="main">
			<!--header -->
			<header>
				<nav class="menu">
					<ul id="menu">
						<li><span class="nav5"></span><a href="#!/page_About">爱的邀请</a></li>
						<li><span class="nav5"></span><a href="#!/page_Gallery">爱的映像</a></li>
                        <li><span class="nav5"></span><a href="#!/page_Events">{#$title#}</a></li>
						<li><span class="nav5"></span><a href="#!/page_Contacts">婚礼地点</a></li>
					</ul>
				</nav>
			</header>
			<!--header end-->
		</div>
	</div>
		<div class="main">
			<!--content -->
			<article id="content">
				<ul>
					<li id="page_About">
						<div class="left_box">
							<img src="templates/front_templ/wedding_theme_014/images/page1_img1.png" alt="">
							<img src="templates/front_templ/wedding_theme_014/images/shadow1.png" alt="" class="shadow_1">
						</div>
						<div class="right_box">
							<img src="templates/front_templ/wedding_theme_014/images/shadow2.png" alt="" class="shadow_2">
							<div class="block">
								<h2>{#$show_time#} {#$mini_time#}</h2>
								<div class="scroll">
									{#if $vip != "none"#}
		              <p style="margin:8px 0px;padding:0px"><span style="font-size:18px;font-weight:bold">{#$vip#}</span></p>
		            {#/if#}              
                           <p>新郎：{#$man#}<br />
新娘：{#$women#}<br />
{#if $extends #}{#$extends#}{#else#}在这温馨浪漫，喜悦甜蜜的日子里 我们决定于{#$show_time#} {#$mini_time#}举行结婚典礼，届时敬备酒宴，欢迎您到来分享这份喜悦，您的光临将使我们的婚宴增添万分光彩!{#/if#}<br />
<span>地点： {#$house#}</span><br />
<span>酒店地址： {#$adress#}</span></p>
								</div>
							</div>
						</div>
					</li>
					<li id="page_Gallery">
						<div class="left_box">
							<img src="templates/front_templ/wedding_theme_014/images/shadow1.png" alt="" class="shadow_1">
							<div class="gallery_big_img">
							
							{#section name=customer loop=$images #}
									<img src="marryimg/{#$images[customer]#}"  class="img{#$smarty.section.customer.iteration#}" style="max-width:466px;max-height:670px;" />
							 {#/section#}
																                                <p style="position:absolute; top:460px;">
			                						                		</p>
							</div>
						</div>
						<div class="right_box">
							<img src="templates/front_templ/wedding_theme_014/images/shadow2.png" alt="" class="shadow_2">
							<div class="block">
								<h2 style="text-indent:-999em;padding-top:58px">爱的映像</h2>
								<div class="scroll">
											<div class="wrapper">															
									{#section name=customer loop=$images #}
									 
									      {#if $smarty.section.customer.iteration mod 2 == 0 #}
										    	<div class="col1">
													<figure class="gallery_img" style="padding-top:0px;"><a href="#img{#$smarty.section.customer.iteration#}"><img src="marryimg/{#$images[customer]#}" alt="" style="width:155px;height:220px"><span></span></a></figure>
												</div>
												</div>
			                					                		 
			                																				<div class="wrapper">
											{#else#}	
											<div class="col1 marg_right1">
												<figure class="gallery_img" style="padding-top:0px;"><a href="#img{#$smarty.section.customer.iteration#}"><img src="marryimg/{#$images[customer]#}" alt="" style="max-width:155px;max-height:220px"><span></span></a></figure>
											</div>
										    {#/if#}
									 
									 {#/section#}																	
												</div>														
			                					                		
								</div>
							</div>
						</div>
					</li>
					
					<li id="page_Events">
						<div class="left_box">
							<img src="templates/front_templ/wedding_theme_014/images/shadow1.png" alt="" class="shadow_1">
							<div class="block">
								<h2>愛情就是兩個人的世界，無視路人</h2>
								<div class="col1">
									<figure class="pad_bot1"><img src="templates/front_templ/wedding_theme_014/images/page4_img1.png" alt=""></figure>
                                <p class="font1" style="font-size:12px;">托清风捎去衷心的祝福，让流云奉上真挚的情意，今夕何夕，空气里都充满了醉人的甜蜜，从今后，我们爱河永浴!</p>
									
									
								</div>
							</div>
						</div>
						<div class="right_box">
							<img src="templates/front_templ/wedding_theme_014/images/shadow2.png" alt="" class="shadow_2">
							<div class="block">
								<h2>{#$title#}</h2>
								<div class="scroll">
									<div class="wrapper pad_bot2">
									<p>{#$message #}</p>
									</div>		
								</div>
							</div>
						</div>
					</li>
					<li id="page_Contacts">
						<div class="left_box">
							<img src="templates/front_templ/wedding_theme_014/images/shadow1.png" alt="" class="shadow_1">
							<figure class="google_map" id="container"></figure>
							<img src="templates/front_templ/wedding_theme_014/images/shadow1.png" alt="" class="shadow1">
							<img src="templates/front_templ/wedding_theme_014/images/angle_bot_left.png" alt="" class="angle_bot">
							<img src="templates/front_templ/wedding_theme_014/images/angle_top_left.png" alt="" class="angle_top">
						</div>
						<div class="right_box">
							<img src="templates/front_templ/wedding_theme_014/images/shadow2.png" alt="" class="shadow_2">
							<div class="block">
								
								<h2>回执留言</h2>
	
								<form action="#" id="ContactForm">

									<fieldset>
										<div class="wrapper">
											<label class="name">
												<span class="bg"><input type="text"  placeholder="姓名:" id="guest" class="input marNone"></span>

											</label>
										</div>
										<div class="wrapper">
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
										</div>
										<div class="wrapper">
											<label class="message">
												<span class="bg"><textarea rows="1" cols="1" id="message"  placeholder="留言:"></textarea></span>
												
											</label>
										</div>
										<div class="btns"><a href="#" class="button1" id="btn_backinfo"><span>发送</span></a><span id="bi_msg"></span></div>
									</fieldset>
								</form>
								<p style="margin-top:30px;">婚礼地点：{#$adress#}</p>
							</div>
						</div>
					</li>
					
					
				</ul>
				<h1><a href="#!/page_About" id="logo">{#$bigtitle#} </a></h1>
			</article>
			<!--content end-->
		</div>
	<div class="bg2">
		<div class="main">
			<!--footer -->
			<footer style="line-height:20px">
				<div style="display:inline;">
		<object type="application/x-shockwave-flash"
			data="images/dewplayer-mini.swf?mp3={#$music#}&amp;autostart=1&amp;autoreplay=1" width="19" height="20"
			id="dewplayer-mini">
			<param name="wmode" value="transparent">
			<param name="movie"
				value="images/dewplayer-mini.swf?mp3={#$music#}&amp;autostart=1&amp;autoreplay=1">
			<embed src="images/dewplayer-mini.swf?mp3={#$music#}&amp;autostart=1&amp;autoreplay=1" width="20"
				height="20" wmode="transparent"></embed>
		</object>
	</div>
				<!-- {%FOOTER_LINK} -->
			</footer>
			<!--footer end-->
		</div>
	</div>
</div>
<script>
$(window).load(function() {	
	$('.page_spinner').fadeOut();
	$('body').css({overflow:'visible'});
	
	$('.gallery_img a').click(function (){
		//alert(3);		
	});
})
</script>
<!--coded by koma-->
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
});
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
<div style="display:none"> 
  <script type="text/javascript">
var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3F0b49c04696fdc8117195c0732c080ea4' type='text/javascript'%3E%3C/script%3E"));
</script> 
</div>
</body>
</html>