<!DOCTYPE HTML>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>{#$bigtitle#}</title>
<meta name="keywords" content="电子喜帖,电子请柬,免费电子喜帖,免费电子请柬,挚爱电子喜帖,电子喜帖模板,手机电子喜帖" />
<meta name="robots" content="follow, all" />
<link href="templates/front_templ/wedding_theme_011/css/style.css" rel="stylesheet" type="text/css">
<link href="templates/front_templ/wedding_theme_011/css/prettyPhoto.css" rel="stylesheet" />
<script type="text/javascript" src="templates/front_templ/wedding_theme_011/js/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="templates/front_templ/wedding_theme_011/js/html5.js"></script>
<script type="text/javascript" src="templates/front_templ/wedding_theme_011/js/jquery.animate-colors-min.js"></script>
<script type="text/javascript" src="templates/front_templ/wedding_theme_011/js/jquery.backgroundpos.min.js"></script>
<script type="text/javascript" src="templates/front_templ/wedding_theme_011/js/jquery.easing.js"></script>
<script type="text/javascript" src="templates/front_templ/wedding_theme_011/js/jquery.mousewheel.js"></script>
<script type="text/javascript" src="templates/front_templ/wedding_theme_011/js/superfish.js"></script>
<script type="text/javascript" src="templates/front_templ/wedding_theme_011/js/switcher.js"></script>
<script type="text/javascript" src="templates/front_templ/wedding_theme_011/js/sprites.js"></script>
<script type="text/javascript" src="templates/front_templ/wedding_theme_011/js/MathUtils.js"></script>
<script type="text/javascript" src="templates/front_templ/wedding_theme_011/js/jquery.cycle.all.min.js"></script>
<script type="text/javascript" src="templates/front_templ/wedding_theme_011/js/scripts.js"></script>
<script src="templates/front_templ/wedding_theme_011/js/jquery.prettyPhoto.js"></script>
<!--[if lt IE 9]>
  	<script type="text/javascript" src="templates/front_templ/wedding_theme_011/js/html5.js"></script>
    <link rel="stylesheet" href="templates/front_templ/wedding_theme_011/css/ie.css" type="text/css" media="all">
    <![endif]-->
<!--[if lt IE 8]>
		<div style=' clear: both; text-align:center; position: relative;'>
			<a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode"><img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." /></a>
		</div>
	<![endif]-->
<style type="text/css">
.gallery { list-style: none; padding: 0; margin: 0; }
.gallery:after { clear: both; content: "."; display: block; height: 0; visibility: hidden; }
.gallery li { float: left; width: 33.33333333%; }
.gallery li a { display: block; margin: 5px;  }
.gallery li img { display: block; width: auto; height: 285px;border: 1px solid #3c3c3c; }
</style>	
</head>
<body>
<div id="glob">
  <div class="spinner"></div>
  <!-- HEADER -->
  <header>
    <div class="col1"> 
      <!-- MENU -->
      <nav class="menu">
        <ul id="menu">
          <li><a href="#!/page_home">爱的映像</a><strong></strong></li>
          <li class="with_ul"><a href="#!/page_about">真诚的邀请</a><strong></strong> </li>
          <li><a href="#!/page_works">{#$title#}</a><strong></strong></li>
          <li><a href="#!/page_mail">婚礼地点</a><strong></strong></li>
        </ul>
      </nav>
      <!-- END MENU -->
      
      <h1><a href="#!/page_home" class="logo">挚爱电子喜帖</a></h1>
    </div>
  </header>
  <!-- END HEADER --> 
  <!-- CONTENT -->
  <div id="content">
    <div id="shadow_top1"></div>
    <div id="shadow_top2"></div>
    <div id="shadow_bot1"></div>
    <div id="shadow_bot2"></div>
    <ul>    
      <li id="page_home" class="no_bg">
        <div class="piclist" style="width:830px">
        <p style="margin-top:30px;">
                    </p>
          <ul id="Gallery" class="gallery">
          
          	{#section name=customer loop=$images #}
				<li><a href="http://bcs.duapp.com/marryimg/{#$images[customer]#}" rel="prettyPhoto[gallery1]">
				<img src="http://bcs.duapp.com/marryimg/{#$images[customer]#}" alt="" />
				</a></li>
			{#/section#}
           </ul>
          
        </div>
      </li>
      <li id="page_about">
        <article class="col2 pad1">
          <div class="wrapper">
            <h2>真诚的邀请</h2>
            <img src="templates/front_templ/wedding_theme_011/images/page2_pic1.png" class="fright mar1" alt>
            <div>
            {#if $vip != "none"#}
              <p style="margin:8px 0px;padding:0px"><span style="font-size:18px;font-weight:bold">{#$vip#}</span></p>
            {#/if#}              
            <p>新郎：{#$man#}<br />
新娘：{#$women#}<br />
在这温馨浪漫，喜悦甜蜜的日子里 我俩决定于{#$show_time#} {#$mini_time#}举行结婚典礼，届时敬备酒宴，欢迎您到来分享这份喜悦，您的光临将使我们的婚宴增添万分光彩!<br />
<span>地点： {#$house#}</span><br />
<span>酒店地址： {#$adress#}</span></p>
              <ul>
                <li class="w2 hline" style="line-height:40px; font-size:16px; font-family:'微软雅黑'">{#$man#} &amp; {#$women#} {#$show_time#}&nbsp;{#$mini_time#}</li>
              </ul>
            </div>
          </div>
        </article>
      </li>
      <li id="page_works" class="no_bg">
        <article class="col2 pad1">
          <div class="wrapper">
            <h2>{#$title#}</h2>
            <p>{#$message #}</p>
          </div>
        </article>
      </li>
      <li id="page_mail">
        <article class="col2 pad1">
          <div class="wrapper">
            <div style="margin:5px 0">{#$adress#}</div>
            <figure class="google_map" id="container"></figure>
          </div>
        </article>
        <article class="col2 pad4">
          <div>
            <h2>回执留言</h2>
            <form id="form1">
              <fieldset>
                <label class="name"> <span>姓名:</span>
                  <input type="text" value="" id="guest">
                </label>
                <br>
                <br>
                <label class="phone">
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
                <label class="message"> <span>留言:</span>
                  <textarea id="message"></textarea>
                </label>
                <br class="clear">
                <div class="btns"><span id="bi_msg" style="font-size:12px;margin-top:5px;color:red;line-height:40px"></span><a href="####" class="readMore" id="btn_backinfo">发送</a></div>
              </fieldset>
            </form>
          </div>
        </article>
      </li>
    </ul>
  </div>
  <!-- END CONTENT --> 
  <!-- FOOTER -->
  <footer >

    <p style="line-height:20px">  <span style="display:inline;">
		<object type="application/x-shockwave-flash"
			data="images/dewplayer-mini.swf?mp3=http://bcs.duapp.com/mp3folder/{#$music#}&amp;autostart=1&amp;autoreplay=1" width="19" height="20"
			id="dewplayer-mini">
			<param name="wmode" value="transparent">
			<param name="movie"
				value="images/dewplayer-mini.swf?mp3=http://bcs.duapp.com/mp3folder/{#$music#}&amp;autostart=1&amp;autoreplay=1">
			<embed src="images/dewplayer-mini.swf?mp3=http://bcs.duapp.com/mp3folder/{#$music#}&amp;autostart=1&amp;autoreplay=1" width="20"
				height="20" wmode="transparent"></embed>
		</object>
	</span>
    </p>
    
    <!-- {%FOOTER_LINK} --> 
  </footer>
  <!-- END FOOTER --> 
</div>
<script>
$(function (){
	var biz_name = '';
	var biz_url = '';
	$("a[rel^='prettyPhoto']").prettyPhoto({social_tools:'<a href="' + biz_url + '" target="_blank" style="color:white">' + biz_name + '</a>',animation_speed:'normal',theme:'dark_square',slideshow:5000, autoplay_slideshow: false});
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
	
});
</script>

<script type="text/javascript" src="http://api.map.baidu.com/api?v=1.3"></script>
<script type="text/javascript">
var map = new BMap.Map("container");
map.enableScrollWheelZoom();

var x,y;
var marker = '';

$(function (){
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