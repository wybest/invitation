<!DOCTYPE HTML>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>{#$bigtitle#}</title>
<meta name="keywords" content="电子喜帖,电子请柬,免费电子喜帖,免费电子请柬,挚爱电子喜帖,电子喜帖模板,手机电子喜帖" />
<meta charset="utf-8">
<link href="templates/front_templ/wedding_theme_023/css/style.css" rel="stylesheet" type="text/css"/>
<link href="templates/front_templ/wedding_theme_023/css/grid.css" rel="stylesheet" type="text/css"/>
<link rel="icon" href="templates/front_templ/wedding_theme_023/images/favicon.ico" type="image/x-icon">
<link rel="shortcut icon" href="templates/front_templ/wedding_theme_023/images/favicon.ico" type="image/x-icon"/>
<link href="css/prettyPhoto.css" rel="stylesheet" />
<script src="templates/front_templ/wedding_theme_023/js/jquery.min.js" type="text/javascript"></script>
<script src="templates/front_templ/wedding_theme_023/js/scripts.js" type="text/javascript"></script>
<script src="templates/front_templ/wedding_theme_023/js/switcher.js" type="text/javascript"></script>
<script src="templates/front_templ/wedding_theme_023/js/forms.js" type="text/javascript"></script>
<script src="templates/front_templ/wedding_theme_023/js/uCarousel.js" type="text/javascript"></script>
<script src="templates/front_templ/wedding_theme_023/js/sImg.js" type="text/javascript"></script>
<script src="scripts/jquery.prettyPhoto.js"></script>
<!--[if lt IE 9]>
  <div class='alc' style=' clear: both; text-align:center; position: relative; z-index:9999;'>
    <a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode">
      <img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." />
   </a>
 </div>
<![endif]-->
<!--[if lt IE 9]><script src="templates/front_templ/wedding_theme_023/js/html5.js" type="text/javascript"></script><![endif]-->
<!--[if IE]><link href="templates/front_templ/wedding_theme_023/css/ie_style.css" rel="stylesheet" type="text/css" /><![endif]-->
</head>
<body>
<div id="gspinner" class="spinner"></div>
<div id="glob">
  <header>
    <h1><a href="#!/home"><img src="templates/front_templ/wedding_theme_023/images/logo.png" alt=""/></a><span class="slogan"><strong>{#$bigtitle#}</strong> </h1>
  </header>
  <nav class="splash">
    <ul>
      <li class="li1"><a href="#!/home"><span>爱的导航</span><img src="templates/front_templ/wedding_theme_023/images/nav-li-1.png" alt=""/></a></li>
      <li class="li2"><a href="#!/about"><span>婚宴邀约</span><img src="templates/front_templ/wedding_theme_023/images/nav-li-2.png" alt=""/></a></li>
      <li class="li3"><a href="#!/services"><span>爱的映像</span><img src="templates/front_templ/wedding_theme_023/images/nav-li-3.png" alt=""/></a></li>
      <li class="li4"><a href="#!/works"><span>{#$title#}</span><img src="templates/front_templ/wedding_theme_023/images/nav-li-4.png" alt=""/></a></li>
      <li class="li5"><a href="#!/clients"><span>婚礼地点</span><img src="templates/front_templ/wedding_theme_023/images/nav-li-5.png" alt=""/></a></li>
      <li class="last li6"><a href="#!/contacts"><span>祝福留言</span><img src="templates/front_templ/wedding_theme_023/images/nav-li-6.png" alt=""/></a></li>
    </ul>
  </nav>
  <article id="content" class="container_12">
    <ul>
      <li id="about">
        <div class="address">婚宴邀约</div>
        <div class="grid_12 alpha omega">
          <h2>Wedding Invitation</h2>
          <div class="grid_4 alpha "><img src="templates/front_templ/wedding_theme_023/images/miz.jpg" alt=""/></div>
          <div class="grid_8 omega">
            <h3>{#$show_time#} {#$mini_time#}</h3>
           {#if $vip != "none"#}
		              <p style="margin:8px 0px;padding:0px"><span style="font-size:18px;font-weight:bold">{#$vip#}</span></p>
		            {#/if#}              
                           <p>新郎：{#$man#}<br />
新娘：{#$women#}<br />
在这温馨浪漫，喜悦甜蜜的日子里 我俩决定于{#$show_time#} {#$mini_time#}举行结婚典礼，届时敬备酒宴，欢迎您到来分享这份喜悦，您的光临将使我们的婚宴增添万分光彩!<br />
<span>地点： {#$house#}</span><br />
<span>酒店地址： {#$adress#}</span></p>
          </div>
        </div>
      </li>
      <li id="services">
        <div class="address">爱的映像
        	        </div>
        <div class="gallery" id="piclist">
          <h2>Wedding Photo</h2>
          
          {#section name=customer loop=$images #}
		  
		  	<div class="grid_3 grid_3_1">
            			<a href="http://bcs.duapp.com/marryimg/{#$images[customer]#}" rel="prettyPhoto[gallery1]">
			<img src="http://bcs.duapp.com/marryimg/{#$images[customer]#}" style="margin:5px;height:240px;"/>
			</a>
						</div>
						
			{#if $smarty.section.customer.iteration mod 3 == 0 #}
		    	</div>
				<div>
		    {#/if#}			
		  {#/section#}
          
			
		          </div>
      </li>
      <li id="works">
        <div class="address">{#$title#}</div>
        <div class="grid_12 alpha omega">
         <h2>Our Story</h2>
        <p>{#$message #}</p>
        </div>
      </li>
      <li id="clients">
        <div class="address">婚礼地点</div>
        <div class="grid_12">
          <h2>
          <a href="http://api.map.baidu.com/marker?location={#$coordinate#}&title=典礼地点&content={#$adress#}&output=html" target="_blank"> 
			{#$adress#}
		  </a>
          </h2>
          <div id="container" style="height:350px;border:2px solid white"></div>
        </div>
      </li>
      <li id="contacts">
        <div class="address">祝福留言</div>
        <div class="grid_6 omega">
         <h2>Message</h2>
		<form id="form1">
		<fieldset class="_field_set _left">
		<table>
		<tr>
		<td>
		<label class="name" >
		<span class="bg"><input type="text"  placeholder="姓名:" id="guest" class="input marNone"></span>
		</label>
		</td>
		</tr>
		<tr>
		<td>
			<table>
	        <tr><td>到场参加婚礼</td>
            <td><select id="pnum" name="pnum" style="border-radius: 12px;">
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
													                </select></td>
            </tr>
            </table>
		</td></tr>
		<tr>
		<td>
		<label class="message">
		<span class="bg"><textarea rows="1" cols="2" id="message"  placeholder="留言:"></textarea></span>
		</label>
		</td></tr>
		<tr>
		<td>
		<div  class="btns">
		<a href="#" data-type="submit"  class="btn" id="btn_backinfo">发送</a>
		</div>
		<p id="bi_msg" style="font-size:12px;margin-top:5px;color:red;text-align:right;padding-right:5px"></p>
		</td></tr>
		</table>
		</fieldset>
		</form>
        </div>
      </li>
    </ul>
  </article>
  <footer>
    <div class="inner">

      <nav>

        <ul>
          <li><a href="#!/home">爱的导航</a></li>
          <li><a href="#!/about">婚宴邀约</a></li>
          <li><a href="#!/services">爱的映像</a></li>
          <li><a href="#!/works">{#$title#}</a></li>
          <li><a href="#!/clients">婚礼地点</a></li>
          <li class="last"><a href="#!/contacts">祝福留言</a></li>
          <li>
  			<span style="display:inline">	
	<object type="application/x-shockwave-flash"		data="images/dewplayer-mini.swf?mp3=http://bcs.duapp.com/mp3folder/{#$music#}&amp;autostart=1&amp;autoreplay=1" width="19" height="20"		id="dewplayer-mini">		<param name="wmode" value="transparent">		<param name="movie"			value="images/dewplayer-mini.swf?mp3=http://bcs.duapp.com/mp3folder/{#$music#}&amp;autostart=1&amp;autoreplay=1">		<embed src="images/dewplayer-mini.swf?mp3=http://bcs.duapp.com/mp3folder/{#$music#}&amp;autostart=1&amp;autoreplay=1" width="20"			height="20" wmode="transparent"></embed>	</object></span>	
          </li>
        </ul>
      </nav>
    </div>
  </footer>
</div>
<script>
var user_id = 33;
$(function (){
	var biz_name = '';
	var biz_url = '';
	$("#piclist a[rel^='prettyPhoto']").prettyPhoto({social_tools:'<a href="' + biz_url + '" target="_blank" style="font-size:12px;color:white">' + biz_name + '</a>',animation_speed:'normal',theme:'dark_square',slideshow:5000, autoplay_slideshow: false});

});
</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"  />
<!-- link href="css/jquery.alerts.css" rel="stylesheet" />
<script src="scripts/jquery.alerts.js" type="text/javascript"></script-->
<script type="text/javascript">
function str_trim(str){ 
    return str.replace(/(^\s*)|(\s*$)/g, "");
}
$(function (){
	$('#bi_name').focus(function (){
		$(this).val('');
	});
	$('#bi_info').focus(function (){
		$(this).val('');
	});
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