<!DOCTYPE html>
<html lang="en">
<head>
<title>{#$bigtitle#}</title>
<meta name="keywords" content="电子喜帖,电子请柬,免费电子喜帖,免费电子请柬,挚爱电子喜帖,电子喜帖模板,手机电子喜帖" />
<meta name="robots" content="follow, all" />
<meta charset="utf-8">
<!--CSS-->
<link rel="stylesheet" href="templates/front_templ/wedding_theme_010/css/reset.css">
<link rel="stylesheet" href="templates/front_templ/wedding_theme_010/css/style.css">
<link rel="stylesheet" href="templates/front_templ/wedding_theme_010/css/layout.css">
<link rel="shortcut icon" href="templates/front_templ/wedding_theme_010/images/favicon.ico">
<link href="templates/front_templ/wedding_theme_010/css/prettyPhoto.css" rel="stylesheet" />
<!--JS-->
<script type="text/javascript" src="templates/front_templ/wedding_theme_010/js/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="templates/front_templ/wedding_theme_010/js/jquery.easing.js"></script>
<script type="text/javascript" src="templates/front_templ/wedding_theme_010/js/switcher.js"></script>
<script type="text/javascript" src="templates/front_templ/wedding_theme_010/js/scripts.js"></script>
<script type="text/javascript" src="templates/front_templ/wedding_theme_010/js/sprites.js"></script>
<script type="text/javascript" src="templates/front_templ/wedding_theme_010/js/jquery.mousewheel.js"></script>
<script type="text/javascript" src="templates/front_templ/wedding_theme_010/js/bgStretch.js"></script>
<script type="text/javascript" src="templates/front_templ/wedding_theme_010/js/jquery.animate-colors-min.js"></script>
<script type="text/javascript" src="templates/front_templ/wedding_theme_010/js/jquery.prettyPhoto.js"></script>
<!--Form & Map-->
<script type="text/javascript" src="templates/front_templ/wedding_theme_010/js/forms.js"></script>
<!--[if lt IE 9]>
  	<script type="text/javascript" src="templates/front_templ/wedding_theme_010/js/html5.js"></script>
    <link rel="stylesheet" href="templates/front_templ/wedding_theme_010/css/ie.css" type="text/css" media="all">
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
  <span class="gall_spinner right"></span>
  <div id="bgStretch"><img src="templates/front_templ/wedding_theme_010/images/bg_pic_1.jpg" alt=""></div>
  <div class="main"> 
    <!--header -->
    <header>
      <h1><a href="#!/page_about" id="logo">{#$show_time#} {#$mini_time#}  {#$bigtitle#}</a></h1>
      <nav class="menu">
        <ul id="menu">
          <li><a href="#!/page_main" class="ex-1"><span class="mText">请柬</span></a></li>
          <li><a href="#!/page_about" class="ex-1"><span class="mText">真诚的邀请</span></a></li>
          <li><a href="#!/page_reservation" class="ex-1"><span class="mText">爱的映像</span></a></li>
          <li><a href="#!/page_menu" class="ex-1"><span class="mText">{#$title#}</span></a></li>
          <li><a href="#!/page_location" class="ex-1"><span class="mText">婚礼地点</span></a></li>
        </ul>
      </nav>
      <div class="clear"></div>
    </header>
    <!--header end-->
    <div class="zigzag"></div>
    <div class="bgSelector right">
      <nav class="bgNav">
        <ul>
          <li class="active"><a href="templates/front_templ/wedding_theme_010/images/bg_pic_1.jpg"><span>1</span></a></li>
        </ul>
      </nav>
    </div>
    <div class="splashPad"> </div>
    <!--content -->
    <article id="content">
      <ul>
        <li id="page_main"> </li>
        <li id="page_about" class="contentPad">
          <div class="wrapper">
            <section class="patternPad">
              <article>
                <h2>真诚的邀请</h2>
                <h3 style="font-size:20px;">{#$show_time#} {#$mini_time#}</h3>
                <figure class="imgIndent fleft"><img src="templates/front_templ/wedding_theme_010/images/page2_pic1.jpg" alt=""></figure>
                <div>
                {#if $vip != "none"#}
		              <p style="margin:8px 0px;padding:0px"><span style="font-size:18px;font-weight:bold">{#$vip#}</span></p>
		            {#/if#}              
                           <p>新郎：{#$man#}<br />
新娘：{#$women#}<br />
在这温馨浪漫，喜悦甜蜜的日子里 我俩决定于{#$show_time#} {#$mini_time#}举行结婚典礼，届时敬备酒宴，欢迎您到来分享这份喜悦，您的光临将使我们的婚宴增添万分光彩!<br />
<span>地点： {#$house#}</span><br />
<span>酒店地址： {#$adress#}</span></p>
                </div>
                <div class="clear"></div>
              </article>
              <div class="zigzagPad"></div>
            </section>
          </div>
        </li>
        <li id="page_reservation" class="contentPad">
          <div class="wrapper">
            <section class="patternPad">
              <article>
                <h2>爱的映像
                                </h2>
                <h3>Love Picture</h3>
              </article>
              <ul class="overview gallery" style="over">
              
              {#section name=customer loop=$images #}
			       <li style="float:left;width:260px;"><a href="http://bcs.duapp.com/marryimg/{#$images[customer]#}" rel="prettyPhoto[gallery1]"><img src="http://bcs.duapp.com/marryimg/{#$images[customer]#}"  style="max-width:248px;max-height:309px" /></a></li>
			  {#/section#}
								              </ul>
              <div class="zigzagPad"></div>
            </section>
          </div>
        </li>
        <li id="page_menu" class="contentPad">
          <div class="wrapper">
            <section class="patternPad">
              <article class="col5">
                <h2>{#$title#}</h2>
                <h3>our story</h3>
                <p>{#$message #}</p>
              </article>
              <div class="zigzagPad"></div>
            </section>
          </div>
        </li>
        <li id="page_location" class="contentPad">
          <div class="wrapper">
            <section class="patternPad">
              <article class="col3">
                <h2>婚礼地点</h2>
                <h3>{#$adress#}</h3>
                <div id="map">
                  <div class="google_map" id="container"></div>
                </div>
              </article>
              <article class="col6">
                <h2>回执留言</h2>
                <h3>Message</h3>
                <form action="#" id="ContactForm">
                  <fieldset class="">
                    <div class="block">
                      <label class="name"> <span class="bg">
                        <input type="text"  placeholder="姓名:" id="guest" class="input marNone">
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
                        <textarea rows="1" cols="2" id="message"  placeholder="留言:"></textarea>
                        </span> </label>
                    </div>
                    <div class="clear"></div>
                    <div class="formBtn"> <a href="####" class="more1" id="btn_backinfo">发送</a> </div>
                    <p id="bi_msg" style="font-size:12px;margin-top:5px;color:red;text-align:right;padding-right:5px"></p>
                  </fieldset>
                </form>
              </article>
              <div class="zigzagPad"></div>
            </section>
          </div>
        </li>
      </ul>
    </article>
    <!--content end--> 
  </div>
</div>
<!--footer -->
<footer>
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
</footer>
<!--footer end--> 

<script>
$(window).load(function() {	
	$('.page_spinner').delay(250).fadeOut(800);
	$('body').css({overflow:'visible'});
	
})
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