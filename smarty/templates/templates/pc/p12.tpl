<!DOCTYPE html>
<html lang="en">
<head>
<title>{#$bigtitle#}</title>
<meta name="keywords" content="电子喜帖,电子请柬,免费电子喜帖,免费电子请柬,挚爱电子喜帖,电子喜帖模板,手机电子喜帖" />
<meta name="robots" content="follow, all" />
<meta charset="utf-8">
<link rel="stylesheet" href="templates/front_templ/wedding_theme_012/css/reset.css" type="text/css" media="all">
<link rel="stylesheet" href="templates/front_templ/wedding_theme_012/css/style.css" type="text/css" media="all">
<link rel="stylesheet" href="templates/front_templ/wedding_theme_012/css/layout.css" type="text/css" media="all">
<link rel="stylesheet" href="templates/front_templ/wedding_theme_012/css/googleMap.css" type="text/css">
<link href="templates/front_templ/wedding_theme_012/css/prettyPhoto.css" rel="stylesheet" />
<script type="text/javascript" src="templates/front_templ/wedding_theme_012/js/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="templates/front_templ/wedding_theme_012/js/jquery.easing.js"></script>
<script type="text/javascript" src="templates/front_templ/wedding_theme_012/js/jquery.transform.js"></script>
<script type="text/javascript" src="templates/front_templ/wedding_theme_012/js/jquery-ui-scroll.js"></script>
<script type="text/javascript" src="templates/front_templ/wedding_theme_012/js/jquery.mousewheel.js"></script>
<script type="text/javascript" src="templates/front_templ/wedding_theme_012/js/cScroll.js"></script>
<script type="text/javascript" src="templates/front_templ/wedding_theme_012/js/bgStretch.js"></script>
<script type="text/javascript" src="templates/front_templ/wedding_theme_012/js/script.js"></script>
<script type="text/javascript" src="templates/front_templ/wedding_theme_012/js/content_switch.js"></script>
<script type="text/javascript" src="templates/front_templ/wedding_theme_012/js/sprites.js"></script>
<script type="text/javascript" src="templates/front_templ/wedding_theme_012/js/superfish.js"></script>
<script type="text/javascript" src="templates/front_templ/wedding_theme_012/js/forms.js"></script>
<script type="text/javascript" src="templates/front_templ/wedding_theme_012/js/jquery.prettyPhoto.js"></script>
<!--[if lt IE 9]>
  	<script type="text/javascript" src="templates/front_templ/wedding_theme_012/js/html5.js"></script>
    <link rel="stylesheet" href="templates/front_templ/wedding_theme_012/css/ie.css" type="text/css" media="screen">
  <![endif]-->
<!--[if lt IE 8]>
		<div style=' clear: both; text-align:center; position: relative;'>
			<a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode"><img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." /></a>
		</div>
	<![endif]-->
</head>

<body>
<div class="extra">
	<div class="page_spinner"></div>
	<div id="bgStretch"><img src="templates/front_templ/wedding_theme_012/images/bg_img.jpg" alt=""></div>
	<div class="main"> 
		<!--header -->
		<header>
			<h1><a href="#!/page_about" id="logo">Happy Family</a></h1>
			<nav class="menu">
				<ul id="menu">
					<li id="b1"><a href="#!/page_about"><b><strong></strong><span></span></b></a></li>
					
					<li id="b3"><a href="#!/page_health"><b><strong></strong><span></span></b></a></li>
					<li id="b4"><a href="#!/page_advice"><b><strong></strong><span></span></b></a></li>
					<li id="b5"><a href="#!/page_staff"><b><strong></strong><span></span></b></a></li>
					<li id="b6"><a href="#!/page_contacts"><b><strong></strong><span></span></b></a></li>
				</ul>
			</nav>
		</header>
		<!--header end--> 
		<!--content -->
		<article id="content">
			<ul>
				<li id="page_about">
					<div class="clear contentPad">
						<div class="col1_1"> <span id="picOver1"><a href="#"></a></span> <span id="picOver2"><a href="#"></a></span> <span id="picOver3"><a href="#"></a></span> </div>
						<div class="col1_2">
							<h2>真诚的邀请</h2>
							<div class="scroll_1"> <strong style="font-family:'微软雅黑'; font-size:18px;">{#$man#}与{#$women#} {#$show_time#} {#$mini_time#}</strong>
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
				
				<li id="page_health">
					<div class="wrapper contentPad">
						<div class="col_rm">
							<h2>爱的映像
														</h2>
                           <ul class="overview gallery" style="over">
                           {#section name=customer loop=$images #}
						  	
						    {#if $smarty.section.customer.iteration < 4  #}
						    	<li style="float:left;width:292px;"><a href="marryimg/{#$images[customer]#}" rel="prettyPhoto[gallery1]"><img src="marryimg/{#$images[customer]#}"  style="width:auto;height:300px" /></a></li>
						    {#else#}
						        <li style="float:left;width:292px;display:none;"><a href="marryimg/{#$images[customer]#}" rel="prettyPhoto[gallery1]"><img src="marryimg/{#$images[customer]#}"  style="width:auto;height:300px" /></a></li>
						    {#/if#} 
						  {#/section#}
						   </ul>
						</div>
					</div>
				</li>
				<li id="page_advice">
					<div class="wrapper contentPad">
						<div class="col_rm">
							<h2>{#$title#}</h2>
                            <strong>Our Story.</strong>
                            <p>{#$message #}</p>
						</div>
					</div>
				</li>
				<li id="page_staff">
					<div class="wrapper contentPad">
						<div class="cols">
							<h2 style="line-height:40px; font-size:30px;">婚礼地点：{#$adress#}</h2>
                            <div class="google_map" id="container"></div>
					</div>
				</li>
				<li id="page_contacts">
					<div class="wrapper contentPad">
						<div class="col2_1">
							<h2>回执留言</h2>
							<form id="form1">
								
								<fieldset>
									<label class="name">
										<input type="text"  placeholder="姓名:" id="guest" class="input marNone">
										  </label>
									<br>
									<label class="email" style="line-height:50px; height:50px;">
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
									<br>
									<label class="message">
										<textarea id="message"  placeholder="留言:"></textarea>
										  </label>
									<br class="clear">
									<div class="btns right"><a href="####" class="button" id="btn_backinfo">发送</a></div>
									<p class="right" id="bi_msg" style="margin-top:20px; margin-right:20px"></p>
								</fieldset>
							</form>
						</div>
						<div class="col2_2">
                            <div class="address" style=" padding-top:70px;">
                                <p>托清风捎去衷心的祝福</p>
<p>让流云奉上真挚的情意</p>
<p>今夕何夕，空气里都充满了醉人的甜蜜</p>
<p>谨祝我最亲爱的朋友，从今后，爱河永浴!</p>
                                </p>
                            </div>
						</div>
					</div>
				</li>
                
                
			</ul>
		</article>
		<!--content end--> 
	</div>
	<!--footer -->
	<footer  style="line-height:20px">          <div style="display:inline;">
		<object type="application/x-shockwave-flash"
			data="images/dewplayer-mini.swf?mp3=mp3folder/{#$music#}&amp;autostart=1&amp;autoreplay=1" width="20" height="20"
			id="dewplayer-mini">
			<param name="wmode" value="transparent">
			<param name="movie"
				value="images/dewplayer-mini.swf?mp3=mp3folder/{#$music#}&amp;autostart=1&amp;autoreplay=1">
			<embed src="images/dewplayer-mini.swf?mp3=mp3folder/{#$music#}&amp;autostart=1&amp;autoreplay=1" width="20"
				height="20" wmode="transparent"></embed>
		</object>
	</div>
		<!-- {%FOOTER_LINK} --> 
	</footer>
	<!--footer end--> 
	<script>
    $(window).load(function() {	
    	$('.page_spinner').fadeOut();
    	$('body').css({overflow:'visible'});
    	
    	var biz_name = '';
    	var biz_url = '';
    	$("a[rel^='prettyPhoto']").prettyPhoto({social_tools:'<a href="' + biz_url + '" target="_blank" style="color:white;text-decoration:none">' + biz_name + '</a>',animation_speed:'normal',theme:'dark_square',slideshow:5000, autoplay_slideshow: false});
    })
    </script> 
</div>
<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-7078796-5']);
  _gaq.push(['_trackPageview']);
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
});
</script>

<script type="text/javascript" src="http://api.map.baidu.com/api?v=1.3"></script>
<script type="text/javascript">
$(function (){
	var map = new BMap.Map("container");
	map.enableScrollWheelZoom();

	var x,y;
	var marker = '';
		map.centerAndZoom(new BMap.Point({#$coordinate#}), 15);
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