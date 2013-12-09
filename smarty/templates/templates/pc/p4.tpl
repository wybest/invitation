<!DOCTYPE HTML>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>{#$bigtitle#}</title>
<meta name="keywords" content="电子喜帖,电子请柬,免费电子喜帖,免费电子请柬,挚爱电子喜帖,电子喜帖模板,手机电子喜帖" />
<link href="templates/front_templ/wedding_theme_022/css/style.css" rel="stylesheet" type="text/css"/>
<link href="templates/front_templ/wedding_theme_022/css/layout.css" rel="stylesheet" type="text/css"/>
<link rel="icon" href="templates/front_templ/wedding_theme_022/images/favicon.ico" type="image/x-icon">
<link rel="shortcut icon" href="templates/front_templ/wedding_theme_022/images/favicon.ico" type="image/x-icon"/>
<link href="css/prettyPhoto.css" rel="stylesheet" />
<script src="templates/front_templ/wedding_theme_022/js/jquery.min.js" type="text/javascript"></script>
<script src="templates/front_templ/wedding_theme_022/js/scripts.js" type="text/javascript"></script>
<script src="templates/front_templ/wedding_theme_022/js/switcher.js" type="text/javascript"></script>
<script src="scripts/jquery.prettyPhoto.js"></script>
<!--[if lt IE 8]>
  <div class='alc' style=' clear: both; text-align:center; position: relative; z-index:9999;'>
    <a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode">
      <img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." />
   </a>
 </div>
<![endif]-->
<!--[if lt IE 9]><script src="templates/front_templ/wedding_theme_022/js/html5.js" type="text/javascript"></script><![endif]-->
<!--[if IE]><link href="templates/front_templ/wedding_theme_022/css/ie_style.css" rel="stylesheet" type="text/css" /><![endif]-->
<style type="text/css">
.gallery { list-style: none; padding: 0; margin: 0; }
.gallery:after { clear: both; content: "."; display: block; height: 0; visibility: hidden; }
.gallery li { float: left; width: 33.33333333%; }
.gallery li a { display: block; margin: 5px;  }
.gallery li img { display: block; width: auto; height: 285px;border: 1px solid #3c3c3c; }
</style>
</head>
<body>
<div id="gspinner" class="spinner"></div>
<div id="glob">
  <article id="content">
  <div class="inner">
    <h1><a href="#!/splash"><img src="templates/front_templ/wedding_theme_022/images/logo.png" alt=""/></a></h1>
    <nav>
      <ul>
        <li class="li-1"><a href="#!/about_studio">★ 喜帖</a></li>
        <li class="li-2"><a href="#!/our_staff">★ {#$title#}</a></li>
        <li class="li-3"><a href="#!/classes">★ 照片</a></li>
        <li class="li-4"><a href="#!/contacts">★ 地点</a></li>
      </ul>
    </nav>
    <div class="illus"/>
    {#$bigtitle#}</span></div>
  <div class="next-btns">
    <ul class="next-btns">
      <li class="li-1"><a href="#!/about_studio"><img src="templates/front_templ/wedding_theme_022/images/next.png" alt=""/></a></li>
      <li class="li-2"><a href="#!/our_staff"><img src="templates/front_templ/wedding_theme_022/images/next.png" alt=""/></a></li>
      <li class="li-3"><a href="#!/classes"><img src="templates/front_templ/wedding_theme_022/images/next.png" alt=""/></a></li>
      <li class="li-4"><a href="#!/contacts"><img src="templates/front_templ/wedding_theme_022/images/next.png" alt=""/></a></li>
    </ul>
  </div>
  <ul class="pages">
    <li id="splash"></li>
    <li id="about_studio">
      <h2><span><span>1</span></span>真诚的邀请</h2>
      <p class="bold upc p1">{#$man#} & {#$women#} {#$show_time#} {#$mini_time#} </p>
     {#if $vip != "none"#}
              <p style="margin:8px 0px;padding:0px"><span style="font-size:18px;font-weight:bold">{#$vip#}</span></p>
            {#/if#}              
            <p>新郎：{#$man#}<br />
新娘：{#$women#}<br />
{#if $extends #}{#$extends#}{#else#}在这温馨浪漫，喜悦甜蜜的日子里 我俩决定于{#$show_time#} {#$mini_time#}举行结婚典礼，届时敬备酒宴，欢迎您到来分享这份喜悦，您的光临将使我们的婚宴增添万分光彩!{#/if#}<br />
<span>地点： {#$house#}</span><br />
<span>酒店地址： {#$adress#}</span></p>
    </li>
    <li id="our_staff">
      <h2><span><span>2</span></span>{#$title#}</h2>
      <p>{#$message #}</p>
    </li>
    <li id="classes">
      <h2><span><span>3</span></span>幸福定格</h2>
          <ul id="Gallery" class="gallery">
          
          	{#section name=customer loop=$images #}
				<li><a href="http://bcs.duapp.com/marryimg/{#$images[customer]#}" rel="prettyPhoto[gallery1]">
				<img src="http://bcs.duapp.com/marryimg/{#$images[customer]#}" alt="" />
				</a></li>
			{#/section#}
           </ul>
    <li id="contacts">
      <h2><span><span>4</span></span>回执</h2>
      <div>
			 {#$adress#}
      <p style="border:3px solid #fff; width:500px; height:250px; display:block; margin:0 auto;" id="container"></p>
      <form id="form1">
<div style="height:30px;"></div>
<fieldset class="_field_set _left">
<div class="block">
<label class="name" >
<span class="bg"><input type="text"  placeholder="姓名:" id="guest" class="input marNone"></span>
</label>
                      <div class="email" style="line-height:40px; padding-left:10px; text-align:left;"> 
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
</div>
<div class="block">
<label class="message">
<span class="bg"><textarea rows="1" cols="2" id="message" placeholder="留言:"></textarea></span>
</label>
</div>
<div class="formButtons">
<div class="formBtn">
<div class="buttons"><span><a class="button" id="btn_backinfo">发送留言</a></span><span id="bi_msg" style="font-size:12px;margin-top:25px;color:red;text-align:right;line-height:40px"></span></div>
</div>
</div>
</fieldset>
</form>
      </div>
    </li>
  </ul>
</div>
<div class="z1"> <img src="templates/front_templ/wedding_theme_022/images/parts-1.png" alt="" class="parts part-1"/> <img src="templates/front_templ/wedding_theme_022/images/parts-4.png" alt="" class="parts part-4"/> <img src="templates/front_templ/wedding_theme_022/images/parts-8.png" alt="" class="parts part-8"/> <img src="templates/front_templ/wedding_theme_022/images/parts-11.png" alt="" class="parts part-11"/> </div>
<div class="z2"> <img src="templates/front_templ/wedding_theme_022/images/parts-2.png" alt="" class="parts part-2"/> <img src="templates/front_templ/wedding_theme_022/images/parts-5.png" alt="" class="parts part-5"/> <img src="templates/front_templ/wedding_theme_022/images/parts-7.png" alt="" class="parts part-7"/> </div>
<div class="z3"> <img src="templates/front_templ/wedding_theme_022/images/parts-3.png" alt="" class="parts part-3"/> <img src="templates/front_templ/wedding_theme_022/images/parts-6.png" alt="" class="parts part-6"/> <img src="templates/front_templ/wedding_theme_022/images/parts-9.png" alt="" class="parts part-9"/> <img src="templates/front_templ/wedding_theme_022/images/parts-10.png" alt="" class="parts part-10"/> </div>
</article>
<div class="track"> <a href="javascript:void(0)"><img src="templates/front_templ/wedding_theme_022/images/track.png" alt=""/></a> </div>
<footer>
  <p class="privacy und nocolor">
  		<span style="display:inline">	
	<object type="application/x-shockwave-flash"		data="images/dewplayer-mini.swf?mp3=http://bcs.duapp.com/mp3folder/{#$music#}&amp;autostart=1&amp;autoreplay=1" width="19" height="20"		id="dewplayer-mini">		<param name="wmode" value="transparent">		<param name="movie"			value="images/dewplayer-mini.swf?mp3=http://bcs.duapp.com/mp3folder/{#$music#}&amp;autostart=1&amp;autoreplay=1">		<embed src="images/dewplayer-mini.swf?mp3=http://bcs.duapp.com/mp3folder/{#$music#}&amp;autostart=1&amp;autoreplay=1" width="20"			height="20" wmode="transparent"></embed>	</object></span>	
          
  </p>
</footer>
</div>

<script>
$(function (){
	var biz_name = '';
	var biz_url = '';
	$("a[rel^='prettyPhoto']").prettyPhoto({social_tools:'<a href="' + biz_url + '" target="_blank" style="color:white">' + biz_name + '</a>',animation_speed:'normal',theme:'dark_square',slideshow:5000, autoplay_slideshow: false});
})
</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"  />
<!-- link href="css/jquery.alerts.css" rel="stylesheet" />
<script src="scripts/jquery.alerts.js" type="text/javascript"></script-->
<script type="text/javascript">
function str_trim(str){ 
    return str.replace(/(^\s*)|(\s*$)/g, "");
}
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
</script><script type="text/javascript" src="http://api.map.baidu.com/api?v=1.3"></script>
<script type="text/javascript">
var map = new BMap.Map("container");
map.enableScrollWheelZoom();

var x,y;
var marker = '';

$(function (){
		map.centerAndZoom(new BMap.Point({#$coordinate#}), 16);
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
