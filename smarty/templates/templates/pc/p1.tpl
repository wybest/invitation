
<!DOCTYPE HTML>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>{#$bigtitle#}</title>
<meta name="keywords" content="电子喜帖,电子请柬,免费电子喜帖,免费电子请柬,挚爱电子喜帖,电子喜帖模板,手机电子喜帖" />
<meta name="robots" content="follow, all" />
<link href="templates/front_templ/default/css/style.css" rel="stylesheet">
<link href="templates/front_templ/default/css/prettyPhoto.css" rel="stylesheet">
<script src="templates/front_templ/default/js/jquery-1.7.2.min.js"></script>
<script src="templates/front_templ/default/js/jquery.backgroundpos.js"></script>
<script src="templates/front_templ/default/js/jquery.easing.js"></script>
<script src="templates/front_templ/default/js/jquery.mousewheel.js"></script>
<script src="templates/front_templ/default/js/superfish.js"></script>
<script src="templates/front_templ/default/js/switcher.js"></script>
<script src="templates/front_templ/default/js/forms.js"></script>
<script src="templates/front_templ/default/js/MathUtils.js"></script>
<script src="templates/front_templ/default/js/jquery.cycle.all.min.js"></script>
<script src="templates/front_templ/default/js/mouseMagnet.js"></script>
<script src="templates/front_templ/default/js/scripts.js"></script>
<script src="templates/front_templ/default/js/jquery.prettyPhoto.js"></script>
<!--[if lt IE 9]>
  	<script src="templates/front_templ/default/js/html5.js"></script>
    <link rel="stylesheet" href="templates/front_templ/default/css/ie.css" media="all">
    <![endif]-->
<!--[if lt IE 8]>
		<div style=' clear: both; text-align:center; position: relative;'>
			<a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode"><img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." /></a>
		</div>
	<![endif]-->
<script id="chromeless" src="wind_chromeless_2.1.js"></script>
<script type="text/javascript">
function openChromeslessWindow(openUrl, winName, wWidth, wHeight, wPosx, wPosy, wTIT,
												windowBORDERCOLOR, windowBORDERCOLORsel, windowTITBGCOLOR, windowTITBGCOLORsel,
													bCenter, sFontFamily, sFontSize, sFontColor){
	
	openchromeless(openUrl,winName, wWidth, wHeight, wPosx, wPosy, wTIT, wTIT ,
							windowBORDERCOLOR, windowBORDERCOLORsel, windowTITBGCOLOR, windowTITBGCOLORsel,
								bCenter, sFontFamily, sFontSize, sFontColor);
}
</script>
</head>
<body>
<div id="glob">
  <div class="spinner"></div>
  <!-- CONTENT -->
  <section id="content"> 
    <!-- HEADER -->
    <header>
      <div class="decor anim"></div>
      <h1><a href="#!/page_splash" class="logo">superman creative web design studio</a></h1>
      <!-- MENU -->
      <nav class="menu">
        <ul id="menu">
          <li class="nodisp"><a href="#!/page_splash"></a></li>
          <li><a href="#!/page_home">喜帖<span>喜帖</span></a></li>
          <li class="with_ul"><a href="#!/page_about">照片<span>照片</span></a></li>
          <li><a href="#!/page_works">故事<span>故事</span></a></li>
          <li><a href="#!/page_blog">地图<span>地图</span></a></li>
          <li class="no_bg"><a  href="#!/page_mail">回执<span>回执</span></a></li>
        </ul>
      </nav>
      <!-- END MENU --> 
    </header>
    <!-- END HEADER -->
    <ul>
      <li id="page_splash" class="no_bg">
        <div class="container">
          <div class="col1">
            <p class="in_block alc"><a href="#" class="logo_big"></a></p>
          </div>
        </div>
      </li>
      <li id="page_home">
        <div class="container2">
          <div class="col2 mar3">
            <div class="col4 bg mar1">
              <div class="wrapper">
                <article class="col7 pad2">
                  <h2>{#$show_time#}</h2>
                  <p class="fontStyle2" style=" font-weight:bold">Love without end hath no end. </p>
                  {#if $vip != "none"#}
		              <p style="margin:8px 0px;padding:0px"><span style="font-size:18px;font-weight:bold">{#$vip#}</span></p>
		            {#/if#}              
                           <p>新郎：{#$man#}<br />
新娘：{#$women#}<br />
在这温馨浪漫，喜悦甜蜜的日子里 我俩决定于{#$show_time#} {#$mini_time#}举行结婚典礼，届时敬备酒宴，欢迎您到来分享这份喜悦，您的光临将使我们的婚宴增添万分光彩!<br />
<span>地点： {#$house#}</span><br />
<span>酒店地址： {#$adress#}</span></p>
                </article>
              </div>
            </div>
            <div class="col14 bg">
              <div class="wrapper">
                <div class="col8 pad2">
                  <h2>情绵绵，爱无边</h2>
                  <ul class="list3">
                    <li><img src="templates/front_templ/default/images/page2_pic1.png" alt></li>
                    <li><img src="templates/front_templ/default/images/page2_pic2.png" alt></li>
                  </ul>
                  <div class="hline"></div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </li>
      <li id="page_about">
        <div class="container2">
          <div class="col2 mar3 bg">
            <div class="col10 pad6">
              <div class="wrapper">
                <h2>爱的映像
                                </h2>
                <div class="slider" id="piclist">
                	 <div>
                	 
                	 {#section name=customer loop=$images #}
					  
					  {#if $smarty.section.customer.iteration mod 7 == 0 #}
					    	 </div>
                		         <div>
					    {#/if#} 
					  
					    <figure>
	                              <a href="http://bcs.duapp.com/marryimg/{#$images[customer]#}" imgname="http://bcs.duapp.com/marryimg/{#$images[customer]#}" rel="prettyPhoto[gallery1]" style="width:145px;display:block;text-align:center;"></a>
	                    </figure>
					  
					  {#/section#}
                		    </div>            		
                		
                		                		
                 </div>
                <div class="btnsHolder"> <a href="#" class="prev"></a><a href="#" class="next"></a> </div>
              </div>
            </div>
          </div>
        </div>
      </li>
      <li id="page_works">
        <div class="container2">
          <div class="col2 mar3">
            <div class="col10 bg pad6">
              <article class="wrapper">
                <h2>{#$title#}</h2>
                <div id="storycontent" style="height:280px; OVERFLOW: auto; border-bottom:0px"><span style="font-size:20px;">{#$message #}</span></div>
                <div class="hline mar4"></div>
              </article>
            </div>
          </div>
        </div>
      </li>
      <li id="page_blog">
        <div class="container2">
          <div class="col2 mar3 bg">
            <div class="col10 pad6">
              <div class="wrapper">
                <h2 style="font-size:30px;">婚礼地点：{#$adress#}&nbsp;&nbsp;
                <a href="http://api.map.baidu.com/marker?location={#$coordinate#}&title=&content=&output=html" target="_blank" style="color:#fff;">
                [查看大图]
                </a>
                </h2>
                <div class="google_map" id="container"></div>
              </div>
            </div>
          </div>
        </div>
      </li>
      <li id="page_mail">
        <div class="container2">
          <div class="col2 mar3">
            <div class="col5 bg mar1">
              <div class="wrapper">
                <article class="col11 pad2">
                  <article class="mar2">
                    <p>
托清风捎去衷心的祝福</p><p>让流云奉上真挚的情意</p>
                    <p >今夕何夕，空气里都充满了醉人的甜蜜</p>
                    <p >谨祝我最亲爱的朋友，从今后，爱河永浴!</p>
                  </article>
                  <div class="hline"></div>
                  <p><a href="####" class="readMore">Sunny</a></p>
                </article>
              </div>
            </div>
            <div class="col3 bg">
              <div>
                <div class="col12 pad2">
                  <h2>回执留言</h2>
                  <form ACTION="<%=MM_editAction%>" METHOD="POST" id="form1" name="form1">
                    <fieldset>
                      <label class="name">
                        <input type="text"  placeholder="姓名:" id="guest" class="input marNone">
                      </label>
                      <div class="email" style="width:600px;line-height:24px;"> <span class="textStyle3" style="border-bottom:1px solid #FFD2D7;padding-bottom:6px;"><strong>到场参加婚礼</strong>
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
                       </div>
                        
                      <br>
                      <label class="message">
                        <textarea name="zf" rows="5" id="message"  placeholder="留言:"></textarea>
                      </label>
                      <br class="clear">
                      <div class="btns">
                        <p><span id="bi_msg" style="font-size:12px;padding-right:5px"></span><a href="####" class="readMore" data-type="submit"  id="btn_backinfo"> 发送回执留言</a></p>
                      </div>
                    </fieldset>
                  </form>

                </div>
              </div>
            </div>
          </div>
        </div>
      </li>
    </ul>
    <!-- FOOTER -->
    <footer>
      <p style="line-height:20px">
  			<span style="display:inline">	
	<object type="application/x-shockwave-flash"		data="images/dewplayer-mini.swf?mp3=http://bcs.duapp.com/mp3folder/{#$music#}&amp;autostart=1&amp;autoreplay=1" width="19" height="20"		id="dewplayer-mini">		<param name="wmode" value="transparent">		<param name="movie"			value="images/dewplayer-mini.swf?mp3=http://bcs.duapp.com/mp3folder/{#$music#}&amp;autostart=1&amp;autoreplay=1">		<embed src="images/dewplayer-mini.swf?mp3=http://bcs.duapp.com/mp3folder/{#$music#}&amp;autostart=1&amp;autoreplay=1" width="20"			height="20" wmode="transparent"></embed>	</object></span>	</p>
      <!-- {%FOOTER_LINK} -->
      <div class="decor anim"></div>
    </footer>
    <!-- END FOOTER --> 
  </section>
  <!-- END CONTENT --> 
</div>
<script>$(function (){	$('#piclist img').each(function (){		var h = $(this).height();		var ph = $(this).parent().height();		var v = (ph - h) / 2;		$(this).css({'margin-top':v+'px'});	});});
var user_id = 33;
$(function (){
	//照片
	$('#piclist figure a').each(function (){
		var href = $(this).attr('imgname');
		$(this).html('<img src="'+href+'" style="max-height:152px;border:solid 5px white;margin-right:5px;">');
	});
	
	
	//留言
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
	$("#piclist a[rel^='prettyPhoto']").prettyPhoto({social_tools:'<a href="' + biz_url + '" target="_blank" style="font-size:12px;color:white">' + biz_name + '</a>',animation_speed:'normal',theme:'dark_square',slideshow:5000, autoplay_slideshow: false});

});
</script>

<script type="text/javascript" src="http://api.map.baidu.com/api?v=1.3"></script>
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

</body>
</html>